include('PlotToolTip_Expansion2')

function FetchAdditionalData( pPlot, kPlotData )

	if pPlot:IsNationalPark() then
		kPlotData.NationalPark = pPlot:GetNationalParkName();
	else
		kPlotData.NationalPark = "";
	end

	local plotId = pPlot:GetIndex();

	if (kPlotData.OwnerCity) then
		kPlotData.OwningCityName = kPlotData.OwnerCity:GetName();

		local eDistrictType = pPlot:GetDistrictType();
		if (eDistrictType) then
			local cityDistricts = kPlotData.OwnerCity:GetDistricts();
			if (cityDistricts) then
				if (cityDistricts:IsPillaged(eDistrictType, plotId)) then
					kPlotData.DistrictPillaged = true;
				end
				if (cityDistricts:IsComplete(eDistrictType, plotId)) then
					kPlotData.DistrictComplete = true;
				end
			end
		end

		local cityBuildings = kPlotData.OwnerCity:GetBuildings();
		if (cityBuildings) then
			local buildingTypes = cityBuildings:GetBuildingsAtLocation(plotId);
			for _, type in ipairs(buildingTypes) do
				local building = GameInfo.Buildings[type];
				table.insert(kPlotData.BuildingTypes, type);
				local name = building.Name;
				if (cityBuildings.GetBuildingNameOverride ~= nil) then
					local overrideName = cityBuildings:GetBuildingNameOverride(building.Index)
					name = overrideName or name;
				end
				table.insert(kPlotData.BuildingNames, name);
				local bPillaged = cityBuildings:IsPillaged(type);
				table.insert(kPlotData.BuildingsPillaged, bPillaged);
			end
			if (cityBuildings:HasBuilding(pPlot:GetWonderType())) then
				kPlotData.WonderComplete = true;
			end
		end

		local cityBuildQueue = kPlotData.OwnerCity:GetBuildQueue();
		if (cityBuildQueue) then
			local constructionTypes = cityBuildQueue:GetConstructionsAtLocation(plotID);
			for _, type in ipairs(constructionTypes) do
				local construction = GameInfo.Buildings[type];
				local name = GameInfo.Buildings[construction.BuildingType].Name;
				table.insert(kPlotData.Constructions, name);
			end
		end
	end

	-- Plot yields
	if GameCapabilities.HasCapability("CAPABILITY_DISPLAY_PLOT_YIELDS") then
		if (kPlotData.IsCity == true or kPlotData.DistrictID == -1) then
			for row in GameInfo.Yields() do
				if not GameInfo.RHAITags[row.Name] then
					local yield = pPlot:GetYield(row.Index);
					if (yield > 0) then
						kPlotData.Yields[row.YieldType] = yield;
					end
				end
			end
		else
			local plotOwner = pPlot:GetOwner();
			local plotPlayer = Players[plotOwner];
			local district = plotPlayer:GetDistricts():FindID(kPlotData.DistrictID);
			if district ~= nil then
				for row in GameInfo.Yields() do
					if not GameInfo.RHAITags[row.Name] then
						local yield = pPlot:GetYield(row.Index);
						local workers = pPlot:GetWorkerCount();
						if (yield > 0 and workers > 0) then
							yield = yield * workers;
							kPlotData.Yields[row.YieldType] = yield;
						end

						local districtYield = district:GetYield(row.Index);
						if (districtYield > 0) then
							kPlotData.DistrictYields[row.YieldType] = districtYield;
						end
					end
				end
			end
		end
	end
end