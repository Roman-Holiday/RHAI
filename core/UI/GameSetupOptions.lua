

-------------------------------------------------
-- Game Setup Logic
-------------------------------------------------
include( "InstanceManager" );
include ("SetupParameters");

-- Instance managers for dynamic game options (parent is set dynamically).
g_BooleanParameterManager	= InstanceManager:new("BooleanParameterInstance",	"CheckBox");
g_PullDownParameterManager	= InstanceManager:new("PullDownParameterInstance",	"Root");
g_SliderParameterManager	= InstanceManager:new("SliderParameterInstance",	"Root");
g_StringParameterManager	= InstanceManager:new("StringParameterInstance",	"StringRoot");
g_ButtonParameterManager	= InstanceManager:new("ButtonParameterInstance",	"ButtonRoot");

g_ParameterFactories = {};

-- This is a mapping of instanced controls to their parameters.
-- It's used to cross reference the parameter from the control
-- in order to sort that control.
g_SortingMap = {};

-------------------------------------------------------------------------------
-- Determine which UI stack the parameters should be placed in.
-------------------------------------------------------------------------------
function GetControlStack(group)
	
	local gameModeParametersStack = Controls.GameModeParameterStack;
	if(gameModeParametersStack == nil) then
		gameModeParametersStack = Controls.PrimaryParametersStack;
	end

	local triage = {

		["BasicGameOptions"] = Controls.PrimaryParametersStack,
		["GameOptions"] = Controls.PrimaryParametersStack,
		["BasicMapOptions"] = Controls.PrimaryParametersStack,
		["MapOptions"] = Controls.PrimaryParametersStack,
		["GameModes"] = gameModeParametersStack;
		["Victories"] = Controls.VictoryParameterStack,
		--["BanOptions"] = Controls.BanParametersStack,
		--["BanPoolOptions"] = Controls.BanPoolParametersStack,
		["TournamentOptions"] = Controls.TournamentParametersStack,
		["TradingOptions"] = Controls.TradingParametersStack,
		["AdvancedOptions"] = Controls.SecondaryParametersStack,
	};

	-- Triage or default to advanced.
	return triage[group];
end




function GameParameters_UI_DefaultCreateParameterDriver(o, parameter, parent)

	if(parent == nil) then
		parent = GetControlStack(parameter.GroupId);
	end

	local control;