-- ===========================================================================
--	Plot information 
--	Handles: plot purchasing, resources, etc...
-- ===========================================================================
include("PlotInfo");

tRHTags = {LOC_YIELD_RH_AI=1, LOC_YIELD_PLACEMENT_RH_AI=1}

local YIELD_VARIATION_MAP		= {
	YIELD_FOOD			= "Yield_Food_",
	YIELD_PRODUCTION	= "Yield_Production_",
	YIELD_GOLD			= "Yield_Gold_",
	YIELD_SCIENCE		= "Yield_Science_",
	YIELD_CULTURE		= "Yield_Culture_",
	YIELD_FAITH			= "Yield_Faith_",
};
local YIELD_NUMBER_VARIATION	= "Yield_Variation_";
local YIELD_VARIATION_MANY		= "Yield_Variation_Many";

local m_YieldIcons  = UILens.CreateLensLayerHash("Yield_Icons");
local m_CityYields  = UILens.CreateLensLayerHash("City_Yields");

local KEY_PLOT_PURCHASE			 = "PLOT_PURCHASE";
local KEY_CITIZEN_MANAGEMENT	 = "CITIZEN_MANAGEMENT";
local KEY_DISTRICT_PLACEMENT	 = "DISTRICT_PLACEMENT";
local KEY_SWAP_TILE_OWNER		 = "SWAP_TILE_OWNER";
local KEY_PLOT_CITY				 = "PLOT_CITY";
local KEY_PLOT_EMPIRE			 = "PLOT_EMPIRE";
local CITY_CENTER_DISTRICT_INDEX = GameInfo.Districts["DISTRICT_CITY_CENTER"].Index;


function GetPlotYields(plotId, yields)

	local plot= Map.GetPlotByIndex(plotId);
	-- Do not show plot yields for districts
	local districtType = plot:GetDistrictType();
	if districtType ~= -1 and districtType ~= CITY_CENTER_DISTRICT_INDEX then
		return;
	end

	for row in GameInfo.Yields() do
		if not tRHTags[row.Name] then
			local yieldAmt= plot:GetYield(row.Index);
			if yieldAmt > 0 then
				local clampedYieldAmount= yieldAmt > 5 and 5 or yieldAmt;
				local yieldType= YIELD_VARIATION_MAP[row.YieldType] .. clampedYieldAmount;
				local plots= yields[yieldType];
				if plots == nil then
					plots = { data = {}, variations = {}, yieldType=row.YieldType };
					yields[yieldType] = plots;
				end
				table.insert(plots.data, plotId);

				-- Variations are used to overlay a number from 6 - 12 on top of largest yield icon (5)
				if yieldAmt > 5 then
					if yieldAmt > 11 then
						table.insert(plots.variations, { YIELD_VARIATION_MANY, plotId });
					else
						table.insert(plots.variations, { YIELD_NUMBER_VARIATION .. yieldAmt, plotId });
					end
				end
			end
		end
	end
end

-- ===========================================================================
function UpdateYieldIcons(yields)

	-- Events are sent per yield type, not per hex
	for row in GameInfo.Yields() do
		if not tRHTags[row.Name] then
			for key, plots in pairs(yields) do
				if plots.yieldType == row.YieldType then
					-- When using the WorldBuilder playerID is -1 so pass in 0 as a valid playerID
					if GameConfiguration.IsWorldBuilderEditor() then
						UILens.SetLayerHexesArea(m_YieldIcons, 0, plots.data, plots.variations, key);
					else
						UILens.SetLayerHexesArea(m_YieldIcons, Game.GetLocalPlayer(), plots.data, plots.variations, key);
					end
				end
			end
		end
	end
end


-- ===========================================================================
function ShowCityYields()

	local yields= {};
	local plots= AggregateLensHexes({ KEY_PLOT_PURCHASE, KEY_CITIZEN_MANAGEMENT, KEY_DISTRICT_PLACEMENT, KEY_SWAP_TILE_OWNER, KEY_PLOT_CITY, KEY_PLOT_EMPIRE });

	for _, plotId in ipairs(plots) do
		local plot= Map.GetPlotByIndex(plotId);
		for row in GameInfo.Yields() do
			if not tRHTags[row.Name] then
				local yieldAmt= plot:GetYield(row.Index);
				if yieldAmt > 0 then
					table.insert(yields, plotId);
				end
			end
		end
	end

	UILens.SetLayerHexesArea(m_CityYields, Game.GetLocalPlayer(), yields);
end
