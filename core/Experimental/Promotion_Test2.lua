



include("Civ6Common")

-- ===========================================================================
--	Initial Utility Function to Determine the Next Available Promotion Index for a Unit, Current Just the First Available
-- ===========================================================================


function GetNextPromotionIndex(unit)
    local unitExp = unit:GetExperience()
    local currentPromotions = unitExp:GetPromotions()
    local promotionClass = GameInfo.Units[unit:GetUnitType()].PromotionClass
    local promotionCandidates = {}

    -- Gather all promotions that match the unit's promotion class, Typically Max 7
    for row in GameInfo.UnitPromotions() do
        if row.PromotionClass == promotionClass then
            promotionCandidates[row.UnitPromotionType] = row
        end
    end

    -- Find the first available promotion that the unit doesn't already have, for now, will do improved logic later
    for promotionType, promotion in pairs(promotionCandidates) do
        local hasPromotion = false
        for _, currentPromotion in ipairs(currentPromotions) do
            if currentPromotion == promotion.Index then
                hasPromotion = true
                break
            end
        end

        if not hasPromotion then
            local prereqsMet = true -- True if Zero Promotions
			
            -- Check promotion prerequisites to see what promotions are Available
			
            for prereqRow in GameInfo.UnitPromotionPrereqs() do
                if prereqRow.UnitPromotion == promotionType then
                    local prereqHasPromotion = false
                    for _, currentPromotion in ipairs(currentPromotions) do
                        if GameInfo.UnitPromotions[currentPromotion].UnitPromotionType == prereqRow.PrereqUnitPromotion then
                            prereqHasPromotion = true
                            break
                        end
                    end
                    if not prereqHasPromotion then
                        prereqsMet = false
                        break
                    end
                end
            end

            if prereqsMet then
                return promotion.Index
            end
        end
    end

    return nil -- Return nil if no valid promotion is found
end

-- ===========================================================================
--	Main Script to Automatically Promote AI Units
-- ===========================================================================
GameEvents.PlayerTurnStarted.Add(function (playerId)
    if not Players[playerId]:IsAI() then return end

    for _, unit in Players[playerId]:GetUnits():Members() do
        local unitExp = unit:GetExperience()
        if unitExp:GetExperiencePoints() >= unitExp:GetExperienceForNextLevel() then
            local promotionIndex = GetNextPromotionIndex(unit) -- Import PromotionIndex
            if promotionIndex then
                unitExp:SetPromotion(promotionIndex, true)
                unit:ChangeMovesRemaining(-unit:GetMovesRemaining())
            end
        end
    end
end)



	








--[[

-- Promotions Code from Unit Debug File

      <OnSelection>function(selection)

end
</OnSelection>
      <Sorted>false</Sorted>
    </SelectionListData>
    <SelectionListData>
      <Location>
        <X>20</X>
        <Y>414</Y>
      </Location>
      <Size>
        <Width>434</Width>
        <Height>329</Height>
      </Size>
      <Name>Type:30;Ability:320;Count</Name>
      <PopulateList>function()
	local listItems = {};
	local z = 1;
	local unit = GetSelectedUnit();
	if (unit == nil) then return; end
	local unitAbilities = unit:GetAbility();
	if unitAbilities == nil then return; end
	local onlyActive = true;
	if g_ShowAllUnitAbilities ~= nil and g_ShowAllUnitAbilities == true then
		onlyActive = false;
	end
	
	local ID = 0;
	for abilityDef in GameInfo.UnitAbilities() do
		if abilityDef ~= nil then
			local count = unitAbilities:GetAbilityCount(ID);
			if onlyActive == false or count ~= 0 then
				local str = tostring(ID) .. ";" .. abilityDef.UnitAbilityType .. ";" .. tostring(count);
				listItems[z] = str;
				z = z + 1;
			end
			ID = ID + 1;
		end
	end

	return listItems;
end</PopulateList>
      <OnSelection>function(selection)
	local str1 = string.match(selection, "%d+");
	
	g_SelectedUnitAbility = tonumber(str1);
end</OnSelection>
      <Sorted>false</Sorted>
    </SelectionListData>
  </SelectionLists>
  <MultiselectLists>
    <MultiselectListData>
      <Location>
        <X>560</X>
        <Y>434</Y>
      </Location>
      <Size>
        <Width>236</Width>
        <Height>136</Height>
      </Size>
      <Name>Promotion</Name>
      <PopulateList>function()
	local listItems = {};
	local unit = GetSelectedUnit();
	if (unit == nil) then return; end
	local unitExperience = unit:GetExperience();
	if unitExperience == nil then return; end
	
	local ID = 0;
	for promotion in GameInfo.UnitPromotions() do
		if (GameInfo.Units[unit:GetType()].PromotionClass == promotion.PromotionClass) then	
			local item = {};
			item["Text"] = string.gsub( promotion.UnitPromotionType, "PROMOTION_", "" );
			if(unitExperience:HasPromotion(promotion.Index) ) then
				item["Selected"] = true;
			else
				item["Selected"] = false;
			end
			listItems[ID] = item;
		end
		ID = ID + 1;
	end

	return listItems;
end</PopulateList>
      <OnSelected>function(selection)
	local unit = GetSelectedUnit();
		if (unit == nil) then return; end
	local unitExperience = unit:GetExperience();	
	
	if unitExperience == nil then return; end
	
	local promotionType = "PROMOTION_" .. tostring(selection);
	local promotion = GameInfo.UnitPromotions[promotionType];
	if (promotion ~= nil) then
		unitExperience:SetPromotion(promotion.Index);
	end
end

]]