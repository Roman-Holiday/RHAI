-------------------------------------------------------------------------------
-- ToolTipHelper
-- Contains logic for generating a tooltip for a specific type.
-- NOTE:
--	Currently, all information gathering is performed by these functions.
--	In the future, for extensibility, this function will enumerate several
--	functions which will return different bits of information that can be
--  formatted or filtered in different ways.
--	This will allow modders to come in and adjust what information they want
--  shown to the user without taking ownership over the entire tooltip.
-------------------------------------------------------------------------------
include("TechAndCivicUnlockables")

ToolTipHelper = {};

-- Utility function for presenting adjacency bonuses.
-- Returns a table of bonuses.
ToolTipHelper.GetAdjacencyBonuses = function(t, field, key)

	local bonuses = {};
	local has_bonus = {};
	for row in t() do
		if(row[field] == key) then
			has_bonus[row.YieldChangeId] = true;
		end
	end

	for row in GameInfo.Adjacency_YieldChanges() do
		if(has_bonus[row.ID]) then

			local object;
			if(row.OtherDistrictAdjacent) then
				object = "LOC_TYPE_TRAIT_ADJACENT_OBJECT_DISTRICT";
			elseif(row.AdjacentResource) then
				object = "LOC_TYPE_TRAIT_ADJACENT_OBJECT_RESOURCE";
			elseif(row.AdjacentSeaResource) then
				object = "LOC_TYPE_TRAIT_ADJACENT_OBJECT_SEA_RESOURCE";
			elseif(row.AdjacentResourceClass ~= "NO_RESOURCECLASS") then
				if(row.AdjacentResourceClass == "RESOURCECLASS_BONUS") then
					object = "LOC_TOOLTIP_BONUS_RESOURCE";
				elseif(row.AdjacentResourceClass == "RESOURCECLASS_LUXURY") then
					object = "LOC_TOOLTIP_LUXURY_RESOURCE";
				elseif(row.AdjacentResourceClass == "RESOURCECLASS_STRATEGIC") then
					object = "LOC_TOOLTIP_BONUS_STRATEGIC";
				else
					object = "LOC_TYPE_TRAIT_ADJACENT_OBJECT_RESOURCE_CLASS";
				end
			elseif(row.AdjacentRiver) then
				object = "LOC_TYPE_TRAIT_ADJACENT_OBJECT_RIVER";
			elseif(row.AdjacentWonder) then
				object = "LOC_TYPE_TRAIT_ADJACENT_OBJECT_WONDER";
			elseif(row.AdjacentNaturalWonder) then
				object = "LOC_TYPE_TRAIT_ADJACENT_OBJECT_NATURAL_WONDER";
			elseif(row.AdjacentTerrain) then
				local terrain = GameInfo.Terrains[row.AdjacentTerrain];
				if(terrain) then
					object = terrain.Name;
				end
			elseif(row.AdjacentFeature) then
				local feature = GameInfo.Features[row.AdjacentFeature];
				if(feature) then
					object = feature.Name;
				end
			elseif(row.AdjacentImprovement) then
				local improvement = GameInfo.Improvements[row.AdjacentImprovement];
				if(improvement) then
					object = improvement.Name;
				end
			elseif(row.AdjacentDistrict) then
				local district = GameInfo.Districts[row.AdjacentDistrict];
				if(district) then
					object = district.Name;
				end
			end

			local yield = GameInfo.Yields[row.YieldType];

			if(object and yield) then

				local key = (row.TilesRequired > 1) and "LOC_TYPE_TRAIT_ADJACENT_BONUS_PER" or "LOC_TYPE_TRAIT_ADJACENT_BONUS";

				-- Exception - Adjacent river gold bonuses can only be gained once
				if row.AdjacentRiver == true then
					key = "LOC_TYPE_TRAIT_ADJACENT_BONUS_ONCE";
				end

				local value = Locale.Lookup(key, row.YieldChange, yield.IconString, yield.Name, row.TilesRequired, object);

				if(row.PrereqCivic or row.PrereqTech) then
					local item;
					if(row.PrereqCivic) then
						item = GameInfo.Civics[row.PrereqCivic];
					else
						item = GameInfo.Technologies[row.PrereqTech];
					end

					if(item) then
						local text = Locale.Lookup("LOC_TYPE_TRAIT_ADJACENT_BONUS_REQUIRES_TECH_OR_CIVIC", item.Name);
						value = value .. "  " .. text;
					end
				end

				if(row.ObsoleteCivic or row.ObsoleteTech) then
					local item;
					if(row.ObsoleteCivic) then
						item = GameInfo.Civics[row.ObsoleteCivic];
					else
						item = GameInfo.Technologies[row.ObsoleteTech];
					end

					if(item) then
						local text = Locale.Lookup("LOC_TYPE_TRAIT_ADJACENT_BONUS_OBSOLETE_WITH_TECH_OR_CIVIC", item.Name);
						value = value .. "  " .. text;
					end
				end

				table.insert(bonuses, value);
			end
		end
	end

	return bonuses;
end


-------------------------------------------------------------------------------
ToolTipHelper.GetBuildingToolTip = function(buildingHash, playerId, city)

	-- ToolTip Format
	-- <Name>
	-- <Static Description>
	-- <Great Person Points>
	-- <RequiredDistrict>
	-- <RequiredAdjacentDistrict>
	local building = GameInfo.Buildings[buildingHash];


	local buildingType:string = "";
	if (building ~= nil) then
		buildingType = building.BuildingType;
	end

	local name = building.Name;
	local description = building.Description;

	local district = nil;
	if city ~= nil then
		district = city:GetDistricts():GetDistrict(building.PrereqDistrict);
	end

	-- Build ze tip!
	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));

	local replaces_building;
	local replaces = GameInfo.BuildingReplaces[buildingType];
	if(replaces) then
		replaces_building = GameInfo.Buildings[replaces.ReplacesBuildingType];
	end

	if(building.MaxWorldInstances ~= -1) then
		if(replaces_building) then
			table.insert(toolTipLines, Locale.Lookup("LOC_WONDER_NAME_REPLACES", replaces_building.Name));
		else
			table.insert(toolTipLines, Locale.Lookup("LOC_WONDER_NAME"));
		end
	else
		if(replaces_building) then
			table.insert(toolTipLines, Locale.Lookup("LOC_BUILDING_NAME_REPLACES", replaces_building.Name));
		else
			table.insert(toolTipLines, Locale.Lookup("LOC_BUILDING_NAME"));
		end
	end

	local stats = {};

	AddBuildingYieldTooltip(buildingHash, city, stats);

	for row in GameInfo.Building_YieldDistrictCopies() do
		if(row.BuildingType == buildingType) then
			local from = GameInfo.Yields[row.OldYieldType];
			local to = GameInfo.Yields[row.NewYieldType];

			table.insert(stats, Locale.Lookup("LOC_TOOLTIP_BUILDING_DISTRICT_COPY", to.IconString, to.Name, from.IconString, from.Name));
		end
	end

	local housing = building.Housing or 0;
	if(housing ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_HOUSING", housing));
	end

	AddBuildingEntertainmentTooltip(buildingHash, city, district, stats);

	local citizens = building.CitizenSlots or 0;
	if(citizens ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_CITIZENS", citizens));
	end

	local defense = building.OuterDefenseHitPoints or 0;
	if(defense ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_OUTER_DEFENSE", defense));
	end

	for row in GameInfo.Building_GreatPersonPoints() do
		if(row.BuildingType == buildingType) then
			local gpClass = GameInfo.GreatPersonClasses[row.GreatPersonClassType];
			if(gpClass) then
				local greatPersonClassName = gpClass.Name;
				local greatPersonClassIconString = gpClass.IconString;
				table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_GREAT_PERSON_POINTS", row.PointsPerTurn, greatPersonClassIconString, greatPersonClassName));
			end
		end
	end

	local slotStrings = {
		["GREATWORKSLOT_PALACE"] = "LOC_TYPE_TRAIT_GREAT_WORKS_PALACE_SLOTS";
		["GREATWORKSLOT_ART"] = "LOC_TYPE_TRAIT_GREAT_WORKS_ART_SLOTS";
		["GREATWORKSLOT_WRITING"] = "LOC_TYPE_TRAIT_GREAT_WORKS_WRITING_SLOTS";
		["GREATWORKSLOT_MUSIC"] = "LOC_TYPE_TRAIT_GREAT_WORKS_MUSIC_SLOTS";
		["GREATWORKSLOT_RELIC"] = "LOC_TYPE_TRAIT_GREAT_WORKS_RELIC_SLOTS";
		["GREATWORKSLOT_ARTIFACT"] = "LOC_TYPE_TRAIT_GREAT_WORKS_ARTIFACT_SLOTS";
		["GREATWORKSLOT_CATHEDRAL"] = "LOC_TYPE_TRAIT_GREAT_WORKS_CATHEDRAL_SLOTS";
		["GREATWORKSLOT_PRODUCT"] = "LOC_TYPE_TRAIT_GREAT_WORKS_PRODUCT_SLOTS";
	};

	for row in GameInfo.Building_GreatWorks() do
		if(row.BuildingType == buildingType) then
			local slotType = row.GreatWorkSlotType;
			local key = slotStrings[slotType];
			if(key) then
				table.insert(stats, Locale.Lookup(key, row.NumSlots));
			end
		end
	end

	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end

	if playerId ~= nil and playerId ~= -1 then
		local kPlayerCulture:table = Players[playerId]:GetCulture();
		-- Determine the unlocked Policy, if any
		if building.UnlocksGovernmentPolicy == true then
			local slottounlock :number = kPlayerCulture:GetPolicyToUnlock(building.Index);
			if (slottounlock ~= -1) then
				local newpolicy = GameInfo.Policies[slottounlock];
				if newpolicy ~= nil then
					table.insert(toolTipLines, Locale.Lookup("LOC_TOOLTIP_UNLOCKS_POLICY_CARD", newpolicy.Name))
				end
			end
		end
	end

	if district ~= nil and building.RegionalRange ~= 0 then
		local extraRange = district:GetExtraRegionalRange();
		if extraRange ~= 0 then
			table.insert(toolTipLines, Locale.Lookup("LOC_TOOLTIP_EXTRA_REGIONAL_RANGE", extraRange));
		end
	end

	for i,v in ipairs(stats) do
		if(i == 1) then
			table.insert(toolTipLines, "[NEWLINE]" .. v);
		else
			table.insert(toolTipLines, v);
		end
	end

	local citizen_yields = {};
	for row in GameInfo.Building_CitizenYieldChanges() do
		if(row.BuildingType == buildingType) then
			local yield = GameInfo.Yields[row.YieldType];
			if(yield) then
				table.insert(citizen_yields, "[ICON_Bullet] " .. Locale.Lookup("LOC_TYPE_TRAIT_YIELD", row.YieldChange, yield.IconString, yield.Name));
			end
		end
	end
	for i,v in ipairs(citizen_yields) do
		if(i == 1) then
			table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_BUILDING_CITIZEN_YIELDS_HEADER"));
			table.insert(toolTipLines, v);
		else
			table.insert(toolTipLines, v);
		end
	end

	local reqLines = {};

	if(building.RequiresReligion) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_PLACEMENT_REQUIRES_RELIGION"));
	end

	for row in GameInfo.MutuallyExclusiveBuildings() do
		if(row.Building == buildingType) then
			local exBuilding = GameInfo.Buildings[row.MutuallyExclusiveBuilding];
			if(exBuilding) then
				table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_BUILDING_MUTUALLY_EXCLUSIVE_WITH", exBuilding.Name));
			end
		end
	end

	local required_buildings = {};
	for row in GameInfo.BuildingPrereqs() do
		if(row.Building == buildingType) then
			local required_building = GameInfo.Buildings[row.PrereqBuilding];
			if(required_building) then
				local district = GameInfo.Districts[required_building.PrereqDistrict];
				if(district and district.DistrictType ~= "DISTRICT_CITY_CENTER" and district.DistrictType ~=  building.PrereqDistrict) then
					table.insert(required_buildings, Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES_BUILDING_WITH_DISTRICT", required_building.Name, district.Name));
				else
					table.insert(required_buildings, Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES_BUILDING", required_building.Name));
				end
			end
		end
	end

	-- Required Buildings is an OR relationship.
	-- If there are 3 or more, show as bullet list.
	local required_buildings_count = #required_buildings;
	if(required_buildings_count > 2) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES_ONE_OF_FOLLOWING"));
		for i,v in ipairs(required_buildings) do
			table.insert(toolTipLines, "[ICON_Bullet] " .. v);
		end
	end

	if(required_buildings_count == 2) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES_BUILDING_OR", required_buildings[1], required_buildings[2]));
	end

	if(required_buildings_count == 1) then
		-- Insert in front.
		table.insert(reqLines, required_buildings[1]);
	end

	local preReqDistrict = GameInfo.Districts[building.PrereqDistrict];
	if(preReqDistrict and preReqDistrict.DistrictType ~= "DISTRICT_CITY_CENTER") then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES_DISTRICT", preReqDistrict.Name));
	end

	local adjDistrict = GameInfo.Districts[building.AdjacentDistrict];
	if(adjDistrict) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES_ADJACENT_DISTRICT", adjDistrict.Name));
	end

	local adjImprovement = GameInfo.Improvements[building.AdjacentImprovement];
	if(adjImprovement) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES_ADJACENT_DISTRICT", adjImprovement.Name));
	end

	local adjResource = GameInfo.Resources[building.AdjacentResource];
	if(adjResource) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES_ADJACENT_RESOURCE", adjResource.Name));
	end

	if(building.RequiresRiver or building.RequiresAdjacentRiver) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_PLACEMENT_REQUIRES_ADJACENT_RIVER"));
	end

	if(building.MustBeLake) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_PLACEMENT_REQUIRES_LAKE"));
	end

	if(building.MustNotBeLake) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_PLACEMENT_REQUIRES_NOT_LAKE"));
	end

	if(building.AdjacentToMountain == true) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_PLACEMENT_REQUIRES_ADJACENT_MOUNTAIN"));
	end
	if(building.Coast or building.MustBeAdjacentLand) then
		table.insert(reqLines, Locale.Lookup("LOC_TOOLTIP_PLACEMENT_REQUIRES_COAST"));
	end

	if(#reqLines > 0) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES"));
		for i,v in ipairs(reqLines) do
			table.insert(toolTipLines, "[ICON_Bullet] " .. v);
		end
	end

	-- Return the composite tooltip!
	return table.concat(toolTipLines, "[NEWLINE]");

end
-------------------------------------------------------------------------------
function AddBuildingExtraCostTooltip(buildingHash)
	return "";
end
-------------------------------------------------------------------------------
function AddBuildingYieldTooltip(buildingHash, city, tooltipLines)
	local buildingReference:table = GameInfo.Buildings[buildingHash];
	if (buildingReference ~= nil) then
		local buildingType:string = buildingReference.BuildingType;
		if (city == nil) then
			for row in GameInfo.Building_YieldChanges() do
				if(row.BuildingType == buildingType) then
					local yield = GameInfo.Yields[row.YieldType];
					if(yield) then
						table.insert(tooltipLines, Locale.Lookup("LOC_TYPE_TRAIT_YIELD", row.YieldChange, yield.IconString, yield.Name));
					end
				end
			end
		else
			for yield in GameInfo.Yields() do
				local yieldChange = city:GetBuildingPotentialYield(buildingHash, yield.YieldType);
				if yieldChange ~= 0 then
					table.insert(tooltipLines, Locale.Lookup("LOC_TYPE_TRAIT_YIELD", yieldChange, yield.IconString, yield.Name));
				end
			end
		end
	end
end
-------------------------------------------------------------------------------
function AddBuildingEntertainmentTooltip(buildingHash, city, district, tooltipLines)
	local buildingReference:table = GameInfo.Buildings[buildingHash];
	if (buildingReference ~= nil) then
		local entertainment:number = buildingReference.Entertainment or 0;
		if (entertainment ~= 0) then
			if district ~= nil and buildingReference.RegionalRange ~= 0 then
				entertainment = entertainment + district:GetExtraRegionalEntertainment();
			end
			table.insert(tooltipLines, Locale.Lookup("LOC_TYPE_TRAIT_AMENITY_ENTERTAINMENT", entertainment));
		end
	end
end
-------------------------------------------------------------------------------
ToolTipHelper.GetCivicToolTip = function(civicType, playerId)

	-- ToolTip Format
	-- <Name> <Cost>
	-- <Static Description>
	-- <Unlocks>
	-- 	<UnlocksBuildings>
	-- 	<UnlocksImprovements>
	-- 	<UnlocksUnits>
	-- </Unlocks>

	-- Gather up all the information
	local civic = GameInfo.Civics[civicType];
	if(civic == nil) then
		return;
	end

	local name = civic.Name;
	local description = civic.Description;
	local cost = civic.Cost;

	local unlock_text;
	local unlockables = GetUnlockablesForCivic_Cached(civicType, playerId);

	if(playerId) then
		local player = Players[playerId];
		if(player) then
			local playerCulture = player:GetCulture();
			if(playerCulture) then
				cost = playerCulture:GetCultureCost(civic.Index);
			end
		end
	end

	if(unlockables and #unlockables > 0) then
		local unlock_lookup_text = {
			KIND_BUILDING = "LOC_TOOLTIP_UNLOCKS_BUILDING",
			KIND_DIPLOMATIC_ACTION = "LOC_TOOLTIP_UNLOCKS_DIPLOMACY",
			KIND_DISTRICT = "LOC_TOOLTIP_UNLOCKS_DISTRICT",
			KIND_GOVERNMENT = "LOC_TOOLTIP_UNLOCKS_GOVERNMENT",
			KIND_IMPROVEMENT = "LOC_TOOLTIP_UNLOCKS_IMPROVEMENT",
			KIND_POLICY = "LOC_TOOLTIP_UNLOCKS_POLICY",
			KIND_PROJECT = "LOC_TOOLTIP_UNLOCKS_PROJECT",
			KIND_UNIT = "LOC_TOOLTIP_UNLOCKS_UNIT",
		};

		function GetUnlockText(typeName, name)
			local t = GameInfo.Types[typeName];
			if(t) then
				local text = unlock_lookup_text[t.Kind];
				if(text) then
					return Locale.Lookup(text, name)
				else
					return Locale.Lookup(name);
				end
			end
		end

		unlock_text = {};
		for i,v in ipairs(unlockables) do
			local text = GetUnlockText(v[1], v[2]);
			if(text) then
				table.insert(unlock_text, GetUnlockText(v[1], v[2]));
			end
		end
		table.sort(unlock_text, function(a,b) return Locale.Compare(a,b) == -1; end);
	end

	local obsolete = {};
	if(unlockables) then
		local unlockable_index = {};
		for i,v in ipairs(unlockables) do
			unlockable_index[v[1]] = true;
		end

		for row in GameInfo.ObsoletePolicies() do
			if(unlockable_index[row.ObsoletePolicy]) then
				local policy = GameInfo.Policies[row.PolicyType];
				if(policy) then
					table.insert(obsolete, Locale.Lookup("LOC_TOOLTIP_UNLOCKS_POLICY", policy.Name));
				end
			end
		end
	end
	table.sort(obsolete, function(a,b) return Locale.Compare(a,b) == -1; end);

	local yield_icon;
	local yield_name;
	local yield = GameInfo.Yields["YIELD_CULTURE"];
	if(yield) then
		yield_name = yield.Name;
		yield_icon = yield.IconString;
	end

	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));
	table.insert(toolTipLines, Locale.Lookup("{1_Cost} {2_Icon} {3_Name}", cost, yield_icon, yield_name));

	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end

	if(unlock_text and #unlock_text > 0) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_UNLOCKS"));
		for i,v in ipairs(unlock_text) do
			table.insert(toolTipLines, "[ICON_Bullet]" .. v);
		end
	end

	if(obsolete and #obsolete > 0) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_MAKES_OBSOLETE"));
		for i,v in ipairs(obsolete) do
			table.insert(toolTipLines, "[ICON_Bullet]" .. v);
		end
	end

	return table.concat(toolTipLines, "[NEWLINE]");
end

-------------------------------------------------------------------------------
-- Get the tooltip for a given unit.  Formation and build queue are both required if you want to get
-- the formation version of the tooltip.
ToolTipHelper.GetUnitToolTip = function(unitType, formationType, pBuildQueue)

	-- ToolTip Format
	-- <Name>
	-- <Promotion Class>
	-- <Combat>
	-- <Ranged Combat / Range>
	-- <Bombard Combat / Range>
	-- <Moves>
	-- <Static Description>
	local unitReference = GameInfo.Units[unitType];
	local promotionClassReference = GameInfo.UnitPromotionClasses[unitReference.PromotionClass];

	local nameLoc = Locale.ToUpper(unitReference.Name); --TODO: Replace with GameCore Query since Units can have custom names.
	local promotionClass = "";
	if (promotionClassReference ~= nil) then
		promotionClass = promotionClassReference.Name;
	end
	local baseCombat = unitReference.Combat;
	local baseRangedCombat = unitReference.RangedCombat;
	local baseRange = unitReference.Range;
	local baseBombard = unitReference.Bombard;
	local baseMoves = unitReference.BaseMoves;
	local description = unitReference.Description;
	local cost = unitReference.Cost or 0;
	local baseLifespan = UnitManager.GetUnitTypeBaseLifespan(unitReference.Index);

	--If this is a specific military formation we need build queue to get correct production costs.
	--The rest of this logic is copied from Unit_Instance:GetCombat functions because it is not exposed to the lua.
	if( formationType ~= nil and pBuildQueue ~= nil ) then

		local strengthMod = 0;
		if formationType == MilitaryFormationTypes.CORPS_MILITARY_FORMATION then
			strengthMod = GlobalParameters.COMBAT_CORPS_STRENGTH_MODIFIER;

			if unitReference.Domain == "DOMAIN_SEA" then
				nameLoc = nameLoc .. " " .. Locale.Lookup("LOC_UNITFLAG_FLEET_SUFFIX");
			else
				nameLoc = nameLoc .. " " .. Locale.Lookup("LOC_UNITFLAG_CORPS_SUFFIX");
			end
		elseif formationType == MilitaryFormationTypes.ARMY_MILITARY_FORMATION then
			strengthMod = GlobalParameters.COMBAT_ARMY_STRENGTH_MODIFIER;

			if unitReference.Domain == "DOMAIN_SEA" then
				nameLoc = nameLoc .. " " .. Locale.Lookup("LOC_UNITFLAG_ARMADA_SUFFIX");
			else
				nameLoc = nameLoc .. " " .. Locale.Lookup("LOC_UNITFLAG_ARMY_SUFFIX");
			end
		end

		if baseCombat > 0 then
			baseCombat = baseCombat + strengthMod;
		end
		if baseRangedCombat > 0 then
			baseRangedCombat = baseRangedCombat + strengthMod;
		end
		if baseBombard > 0 then
			baseBombard = baseBombard + strengthMod;
		end
	end

	-- Build ze tip!
	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, nameLoc);

	local replaces_unit;
	local replaces = GameInfo.UnitReplaces[unitType];
	if(replaces) then
		replaces_unit = GameInfo.Units[replaces.ReplacesUnitType];
	end

	if(replaces_unit) then
		table.insert(toolTipLines, Locale.Lookup("LOC_UNIT_NAME_REPLACES", replaces_unit.Name));
	else
		table.insert(toolTipLines, Locale.Lookup("LOC_UNIT_NAME"));
	end

	if(not Locale.IsNilOrWhitespace(promotionClass)) then
		if (unitReference.UnitType == nil or string.find(unitReference.UnitType, "UNIT_HERO") == nil) then
			table.insert(toolTipLines, Locale.Lookup("LOC_UNIT_PROMOTION_CLASS", promotionClass));
		end
	end

	if(not Locale.IsNilOrWhitespace(description)) then
		description = "[NEWLINE]" .. Locale.Lookup(description);
		table.insert(toolTipLines, description);
	end

	local statLines = {};

	if(baseCombat ~= nil and baseCombat > 0) then
		table.insert(statLines, Locale.Lookup("LOC_UNIT_COMBAT_STRENGTH", baseCombat));
	end
	if(baseRangedCombat ~= nil and baseRangedCombat > 0 and baseRange ~= nil and baseRange > 0) then
		table.insert(statLines, Locale.Lookup("LOC_UNIT_RANGED_STRENGTH", baseRangedCombat, baseRange));
	end
	if(baseBombard ~= nil and baseBombard > 0 and baseRange ~= nil and baseRange > 0) then
		table.insert(statLines, Locale.Lookup("LOC_UNIT_BOMBARD_STRENGTH", baseBombard, baseRange));
	end

	if(baseLifespan ~= nil and baseLifespan > 0) then
		table.insert(statLines, Locale.Lookup("LOC_UNIT_LIFESPAN", baseLifespan));
	end

	if(baseMoves ~= nil and baseMoves > 0) then
		if (not unitReference.IgnoreMoves or unitReference.Domain == "DOMAIN_AIR") then
			table.insert(statLines, Locale.Lookup("LOC_UNIT_MOVEMENT", baseMoves));
		end
	end

	local airSlots = unitReference.AirSlots or 0;
	if(airSlots ~= 0) then
		table.insert(statLines, Locale.Lookup("LOC_TYPE_TRAIT_AIRSLOTS", airSlots));
	end

	if(#statLines > 0) then
		local firstLine = statLines[1];
		statLines[1] = "[NEWLINE]" .. firstLine;

		for i, v in ipairs(statLines) do
			table.insert(toolTipLines, v);
		end
	end

	local costLines= {};
	--If formation type or buildqueue is supplied, show the in-game values, otherwise just display the base values
	if( formationType ~= nil and pBuildQueue ~= nil ) then
		local nProductionCost		:number = pBuildQueue:GetUnitCost( unitReference.Index );
		if (formationType == MilitaryFormationTypes.CORPS_MILITARY_FORMATION) then
			nProductionCost	= pBuildQueue:GetUnitCorpsCost( unitReference.Index );
		elseif (formationType == MilitaryFormationTypes.ARMY_MILITARY_FORMATION) then
			nProductionCost	= pBuildQueue:GetUnitArmyCost( unitReference.Index );
		end

		if (nProductionCost ~= 0) then
			local costString		:string = tostring(nProductionCost);
			local nProductionProgress	:number = pBuildQueue:GetUnitProgress( unitReference.Index );
			if (nProductionProgress > 0) then -- Only show fraction if build progress has been made.
				costString = tostring(nProductionProgress) .. "/" .. costString;
			end
			local prodCosts = Locale.Lookup("LOC_HUD_PRODUCTION_COST") .. ": " .. costString .. " [ICON_Production] " .. Locale.Lookup("LOC_HUD_PRODUCTION");
			if(not Locale.IsNilOrWhitespace(prodCosts)) then
				table.insert(costLines, prodCosts);
			end
		end

		local strategicCosts = AddUnitStrategicResourceTooltip(unitReference, formationType, pBuildQueue);
		if(not Locale.IsNilOrWhitespace(strategicCosts)) then
			table.insert(costLines, strategicCosts);
		end

		local nMaintenanceCost		:number = UnitManager.GetUnitMaintenance(unitReference.Hash) or 0;
		if (nMaintenanceCost ~= nil and nMaintenanceCost > 0) then
			local yield = GameInfo.Yields["YIELD_GOLD"];
			if(yield) then
				table.insert(costLines, Locale.Lookup("LOC_TOOLTIP_MAINTENANCE", nMaintenanceCost, yield.IconString, yield.Name));
			end
		end

		local resourceMaintenance = AddUnitResourceMaintenanceTooltip(unitReference, formationType);
		if(not Locale.IsNilOrWhitespace(resourceMaintenance)) then
			table.insert(costLines, resourceMaintenance);
		end

	else
		if(cost ~= 0 and unitReference.MustPurchase == false and unitReference.CanTrain) then
			local yield = GameInfo.Yields["YIELD_PRODUCTION"];
			if(yield) then
				table.insert(costLines, Locale.Lookup("LOC_TOOLTIP_BASE_COST", cost, yield.IconString, yield.Name));
			end
		end

		if(unitReference.StrategicResource) then
			-- the base version of AddUnitStrategicResourceTooltip takes a table reference and inserts two lines and returns nil.
			-- the XP2 version doesn't take the table reference and returns a string to insert.
			-- this papers over the differences.
			local strategicResourceTooltip : string = AddUnitStrategicResourceTooltip(unitReference, formationType, pBuildQueue, costLines);
			if(not Locale.IsNilOrWhitespace(strategicResourceTooltip)) then
				table.insert(costLines, strategicResourceTooltip);
			end
		end

		local maintenance = unitReference.Maintenance or 0;
		if(maintenance ~= 0) then
			local yield = GameInfo.Yields["YIELD_GOLD"];
			if(yield) then
				table.insert(costLines, Locale.Lookup("LOC_TOOLTIP_MAINTENANCE", maintenance, yield.IconString, yield.Name));
			end
		end

		local resourceMaintenance = AddUnitResourceMaintenanceTooltip(unitReference, formationType);
		if(not Locale.IsNilOrWhitespace(resourceMaintenance)) then
			table.insert(costLines, resourceMaintenance);
		end;
	end

	if(#costLines > 0) then
		local firstEntry = costLines[1];
		costLines[1] = "[NEWLINE]" .. firstEntry;

		for i, v in ipairs(costLines) do
			table.insert(toolTipLines, v);
		end
	end

	-- return the composite tooltip
	return table.concat(toolTipLines, "[NEWLINE]");

end

------------------------------------------------------------------------------
function AddUnitStrategicResourceTooltip(unitReference, formationType, pBuildQueue)
	local resource = GameInfo.Resources[unitReference.StrategicResource];
	local resourceString :string ="";
	if(resource) then
		resourceString = resourceString .. "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_BUILDING_REQUIRES");
		resourceString = resourceString .. "[NEWLINE][ICON_BULLET] " .. "[ICON_" .. resource.ResourceType .. "]" .. Locale.Lookup(resource.Name);
	end
	return resourceString;
end

-------------------------------------------------------------------------------
function AddUnitResourceMaintenanceTooltip(unitReference, formationType)
	return "";
end

-------------------------------------------------------------------------------
function AddProjectStrategicResourceTooltip(projectReference, toolTip)
end

-------------------------------------------------------------------------------
function AddReactorProjectData(projectReference, toolTipLines)
end

-------------------------------------------------------------------------------
ToolTipHelper.GetDistrictToolTip = function(districtType)

	-- ToolTip Format
	-- <Name>
	-- <Static Description>
	-- <Great Person Points>
	local district = GameInfo.Districts[districtType];

	local name = district.Name;
	local description = district.Description;

	local replaces_district;
	local replaces = GameInfo.DistrictReplaces[districtType];
	if(replaces) then
		replaces_district = GameInfo.Districts[replaces.ReplacesDistrictType];
	end

	-- Build ze tip!
	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));

	if(replaces_district) then
		table.insert(toolTipLines, Locale.Lookup("LOC_DISTRICT_NAME_REPLACES", replaces_district.Name));
	else
		table.insert(toolTipLines, Locale.Lookup("LOC_DISTRICT_NAME"));
	end

	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end

	local stats = {};
	for row in GameInfo.District_GreatPersonPoints() do
		if(row.DistrictType== districtType) then
			local gpClass = GameInfo.GreatPersonClasses[row.GreatPersonClassType];
			if(gpClass) then
				table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_GREAT_PERSON_POINTS", row.PointsPerTurn, gpClass.IconString, gpClass.Name));
			end
		end
	end

	if(district.Housing ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_HOUSING", district.Housing));
	end

	if(district.Entertainment ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_AMENITY_ENTERTAINMENT", district.Entertainment));
	end

	local airSlots = district.AirSlots or 0;
	if(airSlots ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_AIRSLOTS", airSlots));
	end

	local citizens = tonumber(district.CitizenSlots) or 0;
	if(citizens ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_CITIZENSLOTS", citizens));
	end

	local adjacency_yields = ToolTipHelper.GetAdjacencyBonuses(GameInfo.District_Adjacencies, "DistrictType", districtType)
	if(adjacency_yields) then
		for i,v in ipairs(adjacency_yields) do
			table.insert(stats, v);
		end
	end

	local citizen_yields = {};
	for row in GameInfo.District_CitizenYieldChanges() do
		if(row.DistrictType == districtType) then
			local yield = GameInfo.Yields[row.YieldType];
			if(yield) then
				table.insert(citizen_yields, "[ICON_Bullet] " .. Locale.Lookup("LOC_TYPE_TRAIT_YIELD", row.YieldChange, yield.IconString, yield.Name));
			end
		end
	end

	for i,v in ipairs(stats) do
		if(i == 1) then
			table.insert(toolTipLines, "[NEWLINE]" .. v);
		else
			table.insert(toolTipLines, v);
		end
	end

	for i,v in ipairs(citizen_yields) do
		if(i == 1) then
			table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_DISTRICT_CITIZEN_YIELDS_HEADER"));
			table.insert(toolTipLines, v);
		else
			table.insert(toolTipLines, v);
		end
	end


	if (district.NoAdjacentCity) then
		table.insert(toolTipLines, Locale.Lookup("LOC_DISTRICT_REQUIRE_NOT_ADJACENT_TO_CITY"));
	end
	-- Return the composite tooltip!
	return table.concat(toolTipLines, "[NEWLINE]");

end
-------------------------------------------------------------------------------
ToolTipHelper.GetProjectToolTip = function(projectType)

	-- ToolTip Format
	-- <Name>
	-- <Static Description>
	-- <Amenities While Active>
	-- <Yield Conversions>
	-- <Great Person Points>
	local projectReference = GameInfo.Projects[projectType];

	local name = projectReference.Name;
	local description = projectReference.Description;
	local amenitiesWhileActive = projectReference.AmenitiesWhileActive;

	-- Build ze tip!
	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));
	table.insert(toolTipLines, Locale.Lookup("LOC_PROJECT_NAME"));

	AddProjectStrategicResourceTooltip(projectReference, toolTipLines);

	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines,  "[NEWLINE]" .. Locale.Lookup(description));
	end

	AddReactorProjectData(projectReference, toolTipLines);

	if (amenitiesWhileActive ~= nil and amenitiesWhileActive > 0) then
		table.insert(toolTipLines, Locale.Lookup("LOC_PROJECT_AMENITIES_WHILE_ACTIVE", amenitiesWhileActive));
	end

	for row in GameInfo.Project_YieldConversions() do
		if(row.ProjectType == projectType) then
			local yield = GameInfo.Yields[row.YieldType];
			if(yield) then
				local yieldIcon = yield.IconString;
				local yieldName = yield.Name;
				local percent = row.PercentOfProductionRate; --TODO: Include player bonuses, like those from government
				table.insert(toolTipLines, Locale.Lookup("LOC_PROJECT_YIELD_CONVERSIONS", yieldIcon, yieldName, percent));
			end
		end
	end

	for row in GameInfo.Project_GreatPersonPoints() do
		if(row.ProjectType == projectType) then
			local greatPersonClass = GameInfo.GreatPersonClasses[row.GreatPersonClassType];
			if(greatPersonClass) then
				local greatPersonClassName = greatPersonClass.Name;
				local greatPersonClassIconString = greatPersonClass.IconString;
				table.insert(toolTipLines, Locale.Lookup("LOC_PROJECT_GREAT_PERSON_POINTS", greatPersonClassIconString, greatPersonClassName));
			end
		end
	end

	-- Return the composite tooltip!
	return table.concat(toolTipLines, "[NEWLINE]");
end
-------------------------------------------------------------------------------
ToolTipHelper.GetImprovementToolTip = function(improvementType)

	-- ToolTip Format
	-- <Name>
	-- <Static Description>
	local improvement = GameInfo.Improvements[improvementType];

	local name = improvement.Name;
	local description = improvement.Description;

	-- Build ze tip!
	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));
	table.insert(toolTipLines, Locale.Lookup("LOC_IMPROVEMENT_NAME"));


	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end

	local stats = {};

	for row in GameInfo.Improvement_YieldChanges() do
		if(row.ImprovementType == improvementType and row.YieldChange ~= 0) then
			local yield = GameInfo.Yields[row.YieldType];
			if(yield) then
				table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_YIELD",row.YieldChange, yield.IconString, yield.Name));
			end
		end
	end

	local housing = 0;

	if(tonumber(improvement.TilesRequired) > 0) then
		housing = tonumber(improvement.Housing)/tonumber(improvement.TilesRequired);
	end

	if(housing ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_HOUSING", housing));
	end

	local airSlots = improvement.AirSlots or 0;
	if(airSlots ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_AIRSLOTS", airSlots));
	end

	local citizenSlots = improvement.CitizenSlots or 0;
	if(citizenSlots ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_CITIZENSLOTS", citizenSlots));
	end

	local weaponSlots = improvement.WeaponSlots or 0;
	if(weaponSlots ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_WEAPONSLOTS", weaponSlots));
	end

	for row in GameInfo.Improvement_BonusYieldChanges() do
		if(row.ImprovementType == improvementType and row.BonusYieldChange ~= 0) then
			local yield = GameInfo.Yields[row.YieldType];
			if(yield) then

				local item;
				if(row.PrereqCivic) then
					item = GameInfo.Civics[row.PrereqCivic];
				else
					item = GameInfo.Technologies[row.PrereqTech];
				end

				if(item) then
					table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_BONUS_YIELD", row.BonusYieldChange, yield.IconString, yield.Name, item.Name));
				end
			end
		end
	end

	local adjacency_yields = ToolTipHelper.GetAdjacencyBonuses(GameInfo.Improvement_Adjacencies, "ImprovementType", improvementType)
	if(adjacency_yields) then
		for i,v in ipairs(adjacency_yields) do
			table.insert(stats, v);
		end
	end

	for i,v in ipairs(stats) do
		if(i == 1) then
			table.insert(toolTipLines, "[NEWLINE]" .. v);
		else
			table.insert(toolTipLines, v);
		end
	end

	-- Return the composite tooltip!
	return table.concat(toolTipLines, "[NEWLINE]");
end
-------------------------------------------------------------------------------
ToolTipHelper.GetRouteToolTip = function(routeType)

	-- ToolTip Format
	-- <Name>
	-- <Movement Cost>
	-- <Supports Bridges>
	-- <Static Description>
	local routeReference = GameInfo.Routes[routeType];

	local name = routeReference.Name;
	local movementCost : number = routeReference.MovementCost;
	local supportsBridges : boolean = routeReference.SupportsBridges;
	local description = routeReference.Description;

	-- Build ze tip!
	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));
	table.insert(toolTipLines, Locale.Lookup("LOC_ROUTE_NAME"));

	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end

	local statLines = {};

	if(movementCost ~= nil) then
		table.insert(statLines, Locale.Lookup("LOC_ROUTE_MOVEMENT_COST", movementCost));
	end
	if(supportsBridges ~= nil and supportsBridges) then
		table.insert(statLines, Locale.Lookup("LOC_ROUTE_SUPPORTS_BRIDGES"));
	end

	if(#statLines > 0) then
		local firstLine = statLines[1];
		statLines[1] = "[NEWLINE]" .. firstLine;

		for i,v in ipairs(statLines) do
			table.insert(toolTipLines, v);
		end
	end


	-- Return the composite tooltip!
	return table.concat(toolTipLines, "[NEWLINE]");
end
-------------------------------------------------------------------------------
ToolTipHelper.GetPolicyToolTip = function(policyType)

	-- ToolTip Format
	-- <Name>
	-- <Slot Type>
	-- <Static Description>
	-- (<Required Goverment>)
	local policyReference = GameInfo.Policies[policyType];

	local name = policyReference.Name;
	local slotReference = GameInfo.GovernmentSlots[policyReference.GovernmentSlotType];
	local description = policyReference.Description;

	-- Build ze tip!
	-- Build the tool tip line by line.
	local toolTipLines = {};
	if(slotReference ~= nil and slotReference.Name ~= nil) then
		table.insert(toolTipLines, Locale.Lookup("{1 : upper} ({2})", name, slotReference.Name));
	else
		table.insert(toolTipLines, Locale.ToUpper(name));
	end
	table.insert(toolTipLines, Locale.Lookup("LOC_POLICY_NAME"));

	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end

	-- If policy only works for certain government(s), add a "Required" section.
	local requiredGovernments={};
	if GameInfo.Policy_GovernmentExclusives_XP2 ~= nil then
		for row in GameInfo.Policy_GovernmentExclusives_XP2() do
			if(row.PolicyType == policyType) then
				table.insert(requiredGovernments, row.GovernmentType);
			end
		end
	end
	local numGovernments = table.count(requiredGovernments);
	if numGovernments > 0 then
		table.insert(toolTipLines, "[NEWLINE] " .. Locale.Lookup("LOC_TOOLTIP_POLICY_REQUIRES_GOVERNMENT",numGovernments));
		for i,governmentType in ipairs(requiredGovernments) do
			local governmentName = GameInfo.Governments[governmentType].Name;
			table.insert(toolTipLines, "[ICON_Bullet] " .. Locale.Lookup(governmentName));
		end
	end



	-- Return the composite tooltip!
	return table.concat(toolTipLines, "[NEWLINE]");
end
-------------------------------------------------------------------------------
ToolTipHelper.GetGovernmentToolTip = function(governmentType)

	-- ToolTip Format
	-- <Name>
	-- <Inherent Bonus Description>
	-- <Accumulated Bonus Description>
	-- <Influence Point Bonus Description>
	local governmentReference = GameInfo.Governments[governmentType];

	local name = governmentReference.Name;
	local inherentBonusDescription = governmentReference.InherentBonusDesc;
	local accumulatedBonusDescription = governmentReference.AccumulatedBonusDesc;
	local influencePointBonusDescription = Locale.Lookup("LOC_GOVT_INFLUENCE_POINTS_TOWARDS_ENVOYS", governmentReference.InfluencePointsPerTurn, governmentReference.InfluencePointsThreshold, governmentReference.InfluenceTokensPerThreshold);

	-- Build ze tip!
	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));
	table.insert(toolTipLines, Locale.Lookup("LOC_GOVERNMENT_NAME") .. "[NEWLINE]");
	if(not Locale.IsNilOrWhitespace(inherentBonusDescription)) then
		table.insert(toolTipLines, Locale.Lookup("{LOC_GOVERNMENT_INHERENT_BONUS}: {1}", inherentBonusDescription));
	end
	if(not Locale.IsNilOrWhitespace(accumulatedBonusDescription)) then
		table.insert(toolTipLines, Locale.Lookup("{LOC_GOVERNMENT_ACCUMULATED_BONUS}: {1}", accumulatedBonusDescription));
	end
	if(not Locale.IsNilOrWhitespace(influencePointBonusDescription)) then
		table.insert(toolTipLines, Locale.Lookup("{LOC_GOVERNMENT_INFLUENCE_BONUS}: {1}", influencePointBonusDescription));
	end

	AddGovernmentExtraInfoTooltip(governmentReference, toolTipLines);

	-- Return the composite tooltip!
	return table.concat(toolTipLines, "[NEWLINE]");
end
-------------------------------------------------------------------------------
function AddGovernmentExtraInfoTooltip(governmentReference, toolTipLines)
end

-------------------------------------------------------------------------------
ToolTipHelper.GetResourceToolTip = function(resourceType)
	-- Gather up all the information
	local resource = GameInfo.Resources[resourceType];
	if(resource == nil) then
		return;
	end

	local name = resource.Name;
	local description = resource.Description;

	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));
	table.insert(toolTipLines, Locale.Lookup("LOC_RESOURCE_NAME"));
	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end

	return table.concat(toolTipLines, "[NEWLINE]");
end
-------------------------------------------------------------------------------
ToolTipHelper.GetDiplomaticActionToolTip = function(diplomaticActionType)
	local action = GameInfo.DiplomaticActions[diplomaticActionType];

	local name = action.Name;
	local description = action.Description

	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));

	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end

	return table.concat(toolTipLines, "[NEWLINE]");
end
-------------------------------------------------------------------------------
ToolTipHelper.GetTechnologyToolTip = function(techType, playerId)
	-- ToolTip Format
	-- <Name> <Cost>
	-- <Static Description>
	-- <Unlocks>
	-- 	<UnlocksBuildings>
	-- 	<UnlocksImprovements>
	-- 	<UnlocksUnits>
	-- </Unlocks>

	-- Gather up all the information
	local tech = GameInfo.Technologies[techType];
	if(tech == nil) then
		return;
	end

	local name = tech.Name;
	local cost = tech.Cost;
	local description = tech.Description;

	if(playerId) then
		local player = Players[playerId];
		if(player) then
			local playerTechs = player:GetTechs();
			if(playerTechs) then
				cost = playerTechs:GetResearchCost(tech.Index);
			end
		end
	end

	local unlock_text;
	local unlockables = GetUnlockablesForTech_Cached( techType, playerId );

	if(unlockables and #unlockables > 0) then
		local unlock_lookup_text = {
			KIND_BUILDING = "LOC_TOOLTIP_UNLOCKS_BUILDING",
			KIND_DIPLOMATIC_ACTION = "LOC_TOOLTIP_UNLOCKS_DIPLOMACY",
			KIND_DISTRICT = "LOC_TOOLTIP_UNLOCKS_DISTRICT",
			KIND_IMPROVEMENT = "LOC_TOOLTIP_UNLOCKS_IMPROVEMENT",
			KIND_PROJECT = "LOC_TOOLTIP_UNLOCKS_PROJECT",
			KIND_RESOURCE = "LOC_TOOLTIP_UNLOCKS_RESOURCE",
			KIND_ROUTE = "LOC_TOOLTIP_UNLOCKS_ROUTE",
			KIND_UNIT = "LOC_TOOLTIP_UNLOCKS_UNIT",
		};

		function GetUnlockText(typeName, name)
			local t = GameInfo.Types[typeName];
			if(t) then
				local text = unlock_lookup_text[t.Kind];
				if(text) then
					return Locale.Lookup(text, name)
				else
					return Locale.Lookup(name);
				end
			end
		end

		unlock_text = {};
		for i,v in ipairs(unlockables) do
			local text = GetUnlockText(v[1], v[2]);
			if(text) then
				table.insert(unlock_text, text);
			end
		end
		table.sort(unlock_text, function(a,b) return Locale.Compare(a,b) == -1; end);
	end

	local yield_icon;
	local yield_name;
	local yield = GameInfo.Yields["YIELD_SCIENCE"];
	if(yield) then
		yield_name = yield.Name;
		yield_icon = yield.IconString;
	end

	-- Build the tool tip line by line.
	local toolTipLines = {};
	table.insert(toolTipLines, Locale.ToUpper(name));
	table.insert(toolTipLines, Locale.Lookup("{1_Cost} {2_Icon} {3_Name}", cost, yield_icon, yield_name));

	if(not Locale.IsNilOrWhitespace(description)) then
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup(description));
	end

	if(unlock_text and #unlock_text > 0) then
		--table.insert(toolTipLines, "");
		table.insert(toolTipLines, "[NEWLINE]" .. Locale.Lookup("LOC_TOOLTIP_UNLOCKS"));
		for i,v in ipairs(unlock_text) do
			table.insert(toolTipLines, "[ICON_Bullet]" .. v);
		end
	end

	return table.concat(toolTipLines, "[NEWLINE]");
end
-------------------------------------------------------------------------------
-- Generalized method for generating ToolTips.
-- This method uses g_ToolTipGenerators to discover which function to use
-- when generating the tooltip.  It can be specialized by modder/scenario
-- scripts to a specific kind or type.
-------------------------------------------------------------------------------

-- The primary table containing tool tip generation methods.
g_ToolTipGenerators = {
	KIND_BUILDING = ToolTipHelper.GetBuildingToolTip,
	KIND_CIVIC = ToolTipHelper.GetCivicToolTip,
	KIND_UNIT = ToolTipHelper.GetUnitToolTip,
	KIND_DISTRICT = ToolTipHelper.GetDistrictToolTip,
	KIND_PROJECT = ToolTipHelper.GetProjectToolTip,
	KIND_IMPROVEMENT = ToolTipHelper.GetImprovementToolTip,
	KIND_ROUTE = ToolTipHelper.GetRouteToolTip,
	KIND_POLICY = ToolTipHelper.GetPolicyToolTip,
	KIND_GOVERNMENT = ToolTipHelper.GetGovernmentToolTip,
	KIND_RESOURCE = ToolTipHelper.GetResourceToolTip,
	KIND_TECH = ToolTipHelper.GetTechnologyToolTip,
	KIND_DIPLOMATIC_ACTION = ToolTipHelper.GetDiplomaticActionToolTip,
};

-------------------------------------------------------------------------------
-- Load all lua scripts prefixed with ToolTipLoader_
-- so that they can hook into tooltip creation
-------------------------------------------------------------------------------
include ("ToolTipLoader_", true);

ToolTipHelper.GetToolTip = function(typeName, playerId, bBaseValues)
	local handler = g_ToolTipGenerators[typeName];
	if(handler == nil) then
		local t = GameInfo.Types[typeName];
		if(t) then
			handler = g_ToolTipGenerators[t.Kind];
		else
			handler = g_ToolTipGenerators["DEFAULT"];
		end
	end

	if(handler) then
		return handler(typeName, playerId, bBaseValues);
	end
end
