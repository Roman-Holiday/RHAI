include("ResearchChooser_Expansion1");

function GetData()                -- override
	local kData			:table  = {};
	local ePlayer		:number = Game.GetLocalPlayer();
	local pPlayer		:table  = Players[ePlayer];
	local pPlayerTechs	:table	= pPlayer:GetTechs();
	local pResearchQueue:table	= {};

	-- Get recommendations
	local techRecommendations:table = {};
	local pGrandAI:table = pPlayer:GetGrandStrategicAI();
	if pGrandAI then
		techRecommendations = pGrandAI:GetTechRecommendations();
	end

	pResearchQueue = pPlayerTechs:GetResearchQueue(pResearchQueue);

	-- Fill in the "other" (not-current) items
	print('RH_AI dummy techchooser skipper loaded: -------------------------------------------------------------------');
	for kTech in GameInfo.Technologies() do
		local iTech	:number = kTech.Index;
		local found, _ = string.find(kTech.TechnologyType, '_RH_')  -- maybe performance issues as this runs every time
		if	iTech == m_currentID or                                 -- the chooser is opened, whereas the tech tree is
			iTech == m_lastCompletedID or                           -- only once at game opening. if we had a sql table, could do GameInfo.RH_Technologies()[kTech.TechnologyType] which would return nil if not existing
			(iTech ~= m_currentID and pPlayerTechs:CanResearch(iTech) and not found) then

			local kResearchData :table = GetResearchData( ePlayer, pPlayerTechs, kTech );
			kResearchData.IsCurrent			= (iTech == m_currentID);
			kResearchData.IsLastCompleted	= (iTech == m_lastCompletedID);
			kResearchData.ResearchQueuePosition = -1;
			for i, techNum in pairs(pResearchQueue) do
				if techNum == iTech then
					kResearchData.ResearchQueuePosition = i;
				end
			end

			-- Determine if this tech is recommended
			kResearchData.IsRecommended = false;
			if techRecommendations ~= nil then
				for i,recommendation in pairs(techRecommendations) do
					if kResearchData.Hash == recommendation.TechHash then
						 kResearchData.IsRecommended = true;
						 kResearchData.AdvisorType = kTech.AdvisorType;
					end
				end
			end

			table.insert( kData, kResearchData );
		end
	end

	return kData;
end
