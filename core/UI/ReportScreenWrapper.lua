include('ReportScreen')
rhai_tags = GameInfo.RHAITags
function GetWorkedTileYieldData( pCity, pCulture )

	-- Loop through all the plots for a given city; tallying the resource amount.
	local kYields  = {
		YIELD_PRODUCTION= 0,
		YIELD_FOOD		= 0,
		YIELD_GOLD		= 0,
		YIELD_FAITH		= 0,
		YIELD_SCIENCE	= 0,
		YIELD_CULTURE	= 0,
		TOURISM			= 0,
	};
	local cityPlots  = Map.GetCityPlots():GetPurchasedPlots(pCity);
	local pCitizens	 = pCity:GetCitizens();
	print('Getting plot worked yields')
	for _, plotID in ipairs(cityPlots) do
		local plot	 = Map.GetPlotByIndex(plotID);
		local x		 = plot:GetX();
		local y		 = plot:GetY();
		isPlotWorked = pCitizens:IsPlotWorked(x,y);
		if isPlotWorked then
			for row in GameInfo.Yields() do
				if not rhai_tags[row.Name] then
					kYields[row.YieldType] = kYields[row.YieldType] + plot:GetYield(row.Index);
				end
			end
		end

		-- Support tourism.
		-- Not a common yield, and only exposure from game core is based off
		-- of the plot so the sum is easily shown, but it's not possible to
		-- show how individual buildings contribute... yet.
		kYields["TOURISM"] = kYields["TOURISM"] + pCulture:GetTourismAt( plotID );
	end
	return kYields;
end