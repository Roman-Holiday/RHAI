-- ===========================================================================
--	Civilopedia - District Page Layout
-- ===========================================================================

PageLayouts["District" ] = function(page)
	local sectionId = page.SectionId;
	local pageId = page.PageId;

	SetPageHeader(page.Title);
	SetPageSubHeader(page.Subtitle);

	local district = GameInfo.Districts[pageId];
	if(district == nil) then
		return;
	end
	local districtType = district.DistrictType;

	local originTradeChanges = {};
	local domesticTradeChanges = {};
	local internationalTradeChanges = {};

	-- Gather all of the yields.
	for row in GameInfo.District_TradeRouteYields() do
		if(row.DistrictType == districtType) then

			local yieldType = row.YieldType;

			if(tonumber(row.YieldChangeAsOrigin ~= 0)) then
				table.insert(originTradeChanges, {yieldType, tonumber(row.YieldChangeAsOrigin)});
			end

			if(tonumber(row.YieldChangeAsDomesticDestination) ~= 0) then
				table.insert(domesticTradeChanges, {yieldType, tonumber(row.YieldChangeAsDomesticDestination)});
			end

			if(tonumber(row.YieldChangeAsInternationalDestination) ~= 0) then
				table.insert(internationalTradeChanges, {yieldType, tonumber(row.YieldChangeAsInternationalDestination)});
			end
		end
	end

	-- Reduce/Accumulate trade yields then convert to string.
	function PrintTradeYields(yields)
		if(#yields > 0) then
			local reduced = {};
			for i,v in ipairs(yields) do
				local y = reduced[v[1]];
				if(y == nil) then
					y = v[2];
				else
					y = y + v[2];
				end

				reduced[v[1]] = y;
			end

			-- This is primarily to establish a consistent order.
			local scratch = {};
			for row in GameInfo.Yields() do
				local c = reduced[row.YieldType];
				if(c) then
					local s = Locale.Lookup("{1: number +#;-#} {2_Icon} {3_Name}",c, row.IconString, row.Name);
					table.insert(scratch, s);
				end
			end

			local comma_separator = Locale.Lookup("LOC_GRAMMAR_COMMA_SEPARATOR");
			return table.concat(scratch, comma_separator);

		else
			return nil;
		end
	end

	originTradeChanges = PrintTradeYields(originTradeChanges);
	domesticTradeChanges = PrintTradeYields(domesticTradeChanges);
	internationalTradeChanges = PrintTradeYields(internationalTradeChanges);

	-- placement requirements
	local requires_coast = district.Coast == 1 or district.Coast == true;
	local requires_no_adjacent_city = district.NoAdjacentCity == 1 or district.NoAdjacentCity == true;
	local requires_adjacent_city = district.Aqueduct == 1 or district.Aqueduct == true;
	local placement_requirements = {};
	for row in GameInfo.District_RequiredFeatures() do
		if(row.DistrictType == districtType) then
			local feature = GameInfo.Features[row.FeatureType];
			if(feature ~= nil) then
				table.insert(placement_requirements, {Locale.Lookup(feature.Name), feature.FeatureType});
			end
		end
	end

	for row in GameInfo.District_ValidTerrains() do
		if(row.DistrictType == districtType) then
			local terrain = GameInfo.Terrains[row.TerrainType];
			if(terrain ~= nil) then
				table.insert(placement_requirements, {Locale.Lookup(terrain.Name), terrain.TerrainType});
			end
		end
	end
	table.sort(placement_requirements, function(a,b) return Locale.Compare(a[1],b[1]) == -1 end);

	local replacesDistrict;
	local replacedByDistricts = {};
	for row in GameInfo.DistrictReplaces() do
		if(row.CivUniqueDistrictType == districtType) then
			replacesDistrict = GameInfo.Districts[row.ReplacesDistrictType];
		end

		if(row.ReplacesDistrictType == districtType) then
			local d = GameInfo.Districts[row.CivUniqueDistrictType];
			if(d) then
				table.insert(replacedByDistricts, d);
			end
		end
	end

	-- Index city-states
	-- City states are always referenced by their civilization type and not leader type
	-- despite game data referencing it that way.
	local city_state_civilizations = {};
	local city_state_leaders = {};
	for row in GameInfo.Civilizations() do
		if(row.StartingCivilizationLevelType == "CIVILIZATION_LEVEL_CITY_STATE") then
			city_state_civilizations[row.CivilizationType] = true;
		end
	end

	for row in GameInfo.CivilizationLeaders() do
		if(city_state_civilizations[row.CivilizationType]) then
			city_state_leaders[row.LeaderType] = row.CivilizationType;
		end
	end

	local unique_to = {};
	if(district.TraitType) then
		local traitType = district.TraitType;
		for row in GameInfo.LeaderTraits() do
			if(row.TraitType == traitType) then
				local leader = GameInfo.Leaders[row.LeaderType];
				if(leader) then
						-- If this is a city state, use the civilization type.
					local city_state_civilization = city_state_leaders[row.LeaderType];
					if(city_state_civilization) then
						local civ = GameInfo.Civilizations[city_state_civilization];
						if(civ) then
							table.insert(unique_to, {"ICON_" .. civ.CivilizationType, civ.Name, civ.CivilizationType});
						end
					else
						table.insert(unique_to, {"ICON_" .. row.LeaderType, leader.Name, row.LeaderType});
					end
				end
			end
		end

		for row in GameInfo.CivilizationTraits() do
			if(row.TraitType == traitType) then
				local civ = GameInfo.Civilizations[row.CivilizationType];
				if(civ) then
					table.insert(unique_to, {"ICON_" .. row.CivilizationType, civ.Name, row.CivilizationType});
				end
			end
		end
	end

	local match_district = {};
	match_district[districtType] = true;

	for row in GameInfo.DistrictReplaces() do
		if(row.CivUniqueDistrictType == districtType) then
			match_district[row.ReplacesDistrictType] = true;
		end
	end

	local buildings = {};
	for row in GameInfo.Buildings() do
		if(row.InternalOnly ~= true and match_district[row.PrereqDistrict]) then

			-- If this district is unique_to a civ or leader, then check if the building is unique to a different civ or leader.
			if(#unique_to > 0 and row.TraitType ~= nil) then
				local building_unique_to = {};

				-- Determine who the building is unique to.
				local traitType = row.TraitType;
				for leader_trait in GameInfo.LeaderTraits() do
					if(leader_trait.TraitType == traitType) then
						local leader = GameInfo.Leaders[leader_trait.LeaderType];
						if(leader) then
							building_unique_to[leader_trait.LeaderType] = true;
						end
					end
				end

				for civ_trait in GameInfo.CivilizationTraits() do
					if(civ_trait.TraitType == traitType) then
						local civ = GameInfo.Civilizations[civ_trait.CivilizationType];
						if(civ) then
							building_unique_to[civ_trait.CivilizationType] = true;
						end
					end
				end

				for i, v in ipairs(unique_to) do
					if(building_unique_to[v[3]]) then
						table.insert(buildings, {"ICON_" .. row.BuildingType, row.Name, row.BuildingType});
						break;
					end
				end
			else
				table.insert(buildings, {"ICON_" .. row.BuildingType, row.Name, row.BuildingType});
			end
		end
	end
	table.sort(buildings, function(a, b)
		return Locale.Compare(a[2], b[2]) == -1;
	end);

	local units = {};
	for row in GameInfo.Units() do
		if(match_district[row.PrereqDistrict]) then
			table.insert(units, {"ICON_" .. row.UnitType, row.Name, row.UnitType});
		end
	end
	table.sort(units, function(a, b)
		return Locale.Compare(a[2], b[2]) == -1;
	end);


	local stats = {};


	-- Generate list of adjacency bonuses.
	local yield_changes = {};
	local has_bonus = {};
	for row in GameInfo.District_Adjacencies() do
		if(row.DistrictType == districtType) then
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
				elseif(row.AdjacentResourceClass == "RESOURCECLASS_LEY_LINE") then
					object = "LOC_TOOLTIP_LEY_LINE_RESOURCE";
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

			if(object and yield and not(GameInfo.RHAITags[yield.Name])) then

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
						value = value .. text;
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
						value = value .. text;
					end
				end

				table.insert(yield_changes, value);
			end
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

	local gp_changes = {};
		for row in GameInfo.District_GreatPersonPoints() do
		if(row.DistrictType == districtType) then
			local change = gp_changes[row.GreatPersonClassType] or 0;
			gp_changes[row.GreatPersonClassType] = change + row.PointsPerTurn;
		end
	end

	for row in GameInfo.GreatPersonClasses() do
		local change = gp_changes[row.GreatPersonClassType];
		if(change) then
			table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_GREAT_PERSON_POINTS", change, row.IconString, row.Name));
		end
	end

	-- KLUDGY KLUDGY
	if(district.DistrictType == "DISTRICT_MBANZA") then
		for row in GameInfo.ModifierArguments() do
			if(row.ModifierId == "MBANZA_FOOD" and row.Name == "Amount") then
				local food = GameInfo.Yields["YIELD_FOOD"];
				if(food) then
					table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_YIELD", tonumber(row.Value), food.IconString, food.Name));
				end
			elseif(row.ModifierId== "MBANZA_GOLD" and row.Name == "Amount") then
				local gold = GameInfo.Yields["YIELD_GOLD"];
				if(gold) then
					table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_YIELD", tonumber(row.Value), gold.IconString, gold.Name));
				end
			end
		end
	end

	if(district.Housing ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_HOUSING", district.Housing));
	end

	if(district.Entertainment ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_AMENITY_ENTERTAINMENT", district.Entertainment));
	end

	local citizens = tonumber(district.CitizenSlots) or 0;
	if(citizens ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_CITIZENS", citizens));
	end

	local airSlots = tonumber(district.AirSlots) or 0;
	if(airSlots ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_AIRSLOTS", airSlots));
	end

	local appeal = tonumber(district.Appeal) or 0;
	if(appeal ~= 0) then
		table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_APPEAL", appeal));
	end

	local pillageAwards = district.PlunderType or NO_PLUNDER;
	if(pillageAwards ~= nil and  pillageAwards ~= "NO_PLUNDER") then
		if(pillageAwards == "PLUNDER_CULTURE") then
			local culture = GameInfo.Yields["YIELD_CULTURE"];
			table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_PILLAGE_AWARD", culture.IconString, culture.Name));
		elseif (pillageAwards == "PLUNDER_SCIENCE") then
			local science = GameInfo.Yields["YIELD_SCIENCE"];
			table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_PILLAGE_AWARD", science.IconString, science.Name));
		elseif (pillageAwards == "PLUNDER_FAITH") then
			local faith = GameInfo.Yields["YIELD_FAITH"];
			table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_PILLAGE_AWARD", faith.IconString, faith.Name));
		elseif (pillageAwards == "PLUNDER_GOLD") then
			local gold = GameInfo.Yields["YIELD_GOLD"];
			table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_PILLAGE_AWARD", gold.IconString, gold.Name));
		elseif (pillageAwards == "PLUNDER_HEAL") then
			local faith = GameInfo.Yields["YIELD_FAITH"];
			table.insert(stats, Locale.Lookup("LOC_TYPE_TRAIT_PILLAGE_AWARD_NO_ICON", "LOC_TYPE_TRAIT_PILLAGE_AWARD_HEALING"));
		end
	end

	local maintenance = district.Maintenance;

	-- Right Column
	AddPortrait("ICON_" .. districtType);

	AddRightColumnStatBox("LOC_UI_PEDIA_TRAITS", function(s)
		s:AddSeparator();

		if(#unique_to > 0) then
			s:AddHeader("LOC_UI_PEDIA_UNIQUE_TO");
			for _, icon in ipairs(unique_to) do
				s:AddIconLabel(icon, icon[2]);
			end
			s:AddSeparator();
		end

		if(replacesDistrict) then
			s:AddHeader("LOC_UI_PEDIA_REPLACES");
			s:AddIconLabel({"ICON_" .. replacesDistrict.DistrictType, replacesDistrict.Name, replacesDistrict.DistrictType}, replacesDistrict.Name);
		end

		if(#replacedByDistricts > 0) then
			s:AddHeader("LOC_UI_PEDIA_REPLACED_BY");
			for _, item in ipairs(replacedByDistricts) do
				s:AddIconLabel({"ICON_" .. item.DistrictType, item.Name, item.DistrictType}, item.Name);
			end
		end

		if(replacesDistrict or #replacedByDistricts > 0) then
			s:AddSeparator();
		end

		if(#stats > 0) then
			for i,v in ipairs(stats) do
				s:AddLabel(v);
			end
			s:AddSeparator();
		end

		if(#yield_changes > 0) then
			s:AddHeader("LOC_UI_PEDIA_ADJACENCY_BONUS");
			for i,v in ipairs(yield_changes) do
				s:AddLabel(v);
			end
			s:AddSeparator();
		end

		if(#citizen_yields > 0) then
			s:AddHeader("LOC_UI_PEDIA_CITIZEN_YIELDS");
			for i,v in ipairs(citizen_yields) do
				s:AddLabel(v);
			end
			s:AddSeparator();
		end

		if(originTradeChanges or domesticTradeChanges or internationalTradeChanges) then
			s:AddHeader("LOC_UI_PEDIA_TRADE_YIELDS");
			if(originTradeChanges) then
				s:AddLabel("LOC_UI_PEDIA_TRADE_ORIGIN");
				s:AddLabel(originTradeChanges);
			end

			if(domesticTradeChanges) then
				s:AddLabel("LOC_UI_PEDIA_TRADE_DOMESTIC_DESTINATION");
				s:AddLabel(domesticTradeChanges);
			end

			if(internationalTradeChanges) then
				s:AddLabel("LOC_UI_PEDIA_TRADE_INTERNATIONAL_DESTINATION");
				s:AddLabel(internationalTradeChanges);
			end
			s:AddSeparator();
		end
	end);

	AddRightColumnStatBox("LOC_UI_PEDIA_REQUIREMENTS", function(s)
		s:AddSeparator();

		if(district.PrereqTech or district.PrereqCivic) then
			if(district.PrereqCivic ~= nil) then
				local civic = GameInfo.Civics[district.PrereqCivic];
				if(civic) then
					s:AddHeader("LOC_CIVIC_NAME");
					s:AddIconLabel({"ICON_" .. civic.CivicType, civic.Name, civic.CivicType}, civic.Name);
				end
			end

			if(district.PrereqTech ~= nil) then
				local technology = GameInfo.Technologies[district.PrereqTech];
				if(technology) then
					s:AddHeader("LOC_TECHNOLOGY_NAME");
					s:AddIconLabel({"ICON_" .. technology.TechnologyType, technology.Name, technology.TechnologyType}, technology.Name);
				end
			end
			s:AddSeparator();
		end

		if(requires_coast or requires_adjacent_city or requires_no_adjacent_city or #placement_requirements > 0) then
			s:AddHeader("LOC_UI_PEDIA_PLACEMENT");

			if(requires_coast) then
				s:AddLabel("[ICON_Bullet] " .. Locale.Lookup("LOC_UI_PEDIA_PLACEMENT_ADJ_TO_COAST"));
			end

			if(requires_adjacent_city) then
				s:AddLabel("LOC_UI_PEDIA_PLACEMENT_ADJ_TO_CITY");
			end

			if(requires_no_adjacent_city) then
				s:AddLabel("[ICON_Bullet] " .. Locale.Lookup("LOC_UI_PEDIA_PLACEMENT_NOT_ADJ_TO_CITY"));
			end

			for i, v in ipairs(placement_requirements) do
				local t = type(v);
				if(t == "table") then
					local tName = v[1];
					local tType = v[2];
					s:AddIconLabel({"ICON_" .. tType, tName, tType}, tName);

				elseif(t == "string") then
					s:AddLabel("[ICON_Bullet] " .. v);
				end
			end

			s:AddSeparator();
		end

		local yield = GameInfo.Yields["YIELD_PRODUCTION"];
		if(yield) then
			s:AddHeader("LOC_UI_PEDIA_PRODUCTION_COST");
			local t = Locale.Lookup("LOC_UI_PEDIA_BASE_COST", tonumber(district.Cost), yield.IconString, yield.Name);
			s:AddLabel(t);
			s:AddSeparator();
		end

		if(maintenance ~= 0) then
			local yield = GameInfo.Yields["YIELD_GOLD"];
			if(yield) then
				s:AddHeader("LOC_UI_PEDIA_MAITENANCE_COST");
				local t = Locale.Lookup("LOC_UI_PEDIA_BASE_COST", maintenance, yield.IconString, yield.Name );
				s:AddLabel(t);
			end
		end

	end);

	AddRightColumnStatBox("LOC_UI_PEDIA_USAGE", function(s)
		s:AddSeparator();

		if(#buildings > 0) then
			s:AddHeader("LOC_UI_PEDIA_USAGE_UNLOCKS_BUILDINGS");
			for _, icon in ipairs(buildings) do
				s:AddIconLabel(icon, icon[2]);
			end

			s:AddSeparator();
		end

		if(#units > 0) then
			s:AddHeader("LOC_UI_PEDIA_USAGE_UNLOCKS_UNITS");
			for _, icon in ipairs(units) do
				s:AddIconLabel(icon, icon[2]);
			end

			s:AddSeparator();
		end
	end);

	-- Left Column
	AddChapter("LOC_UI_PEDIA_DESCRIPTION", district.Description);

	local chapters = GetPageChapters(page.PageLayoutId);
	for i, chapter in ipairs(chapters) do
		local chapterId = chapter.ChapterId;
		local chapter_header = GetChapterHeader(sectionId, pageId, chapterId);
		local chapter_body = GetChapterBody(sectionId, pageId, chapterId);

		AddChapter(chapter_header, chapter_body);
	end

end
