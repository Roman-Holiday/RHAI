

--------------------------------------------------------------

include("SupportFunctions");
include("InstanceManager");

-- data is stored in the following fashion:

local context_store = nil;
local button_instance_manager = nil;


function Init()
	print("load completed start initizialization");


	--Controls.info_button:RegisterCallback(Mouse.eLClick, ShowInfoPanel)
	--Controls.smooth_button:RegisterCallback(Mouse.eLClick, ToggleSmooth)


	--context_store:SetHide(true)
	
	--local top_panel_control = ContextPtr:LookUpControl("/InGame/TopPanel/RHVersionBtn")
	--top_panel_control:RegisterCallback(Mouse.eLClick, OpenPanel)

	-- Create button and inject into toppanel
	print("Creating Version and inserting into TopPane.RightContents");
	local toppanel_rightcontents = ContextPtr:LookUpControl("/InGame/TopPanel/RightContents");
	button_instance_manager = InstanceManager:new("RHVersionInst", "RHVersionBtn", toppanel_rightcontents);
	local button_instance = button_instance_manager:GetInstance();
	button_instance.RHVersionBtn:RegisterCallback(Mouse.eLClick, OpenPanel);
	button_instance.RHVersionBtn:SetHide(false);
	print("Insertion Complete");
end


-- Test
--function SmallText()

	--local strRhText;
	

	--Controls.Time:SetText( strRhText );
	--local d = Locale.Lookup("{1_Time : datetime full}", os.time());
--Controls.Time:SetToolTipString(d);
--end


-- Set proper events and functions
Events.LoadGameViewStateDone.Add(Init);
Events.TurnEnd.Add(StoreAllData); -- TODO should be moved to init