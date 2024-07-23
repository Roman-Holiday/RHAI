




--[[
GameEvents.PlayerTurnStarted.Add(function (playerId)
    if not Players[playerId]:IsAI() then return end
    for _, unit in Players[playerId]:GetUnits:Members() do
        local unitExp = unit:GetExperience()
        if unitExp:GetExperiencePoints() >= unitExp:GetExperienceForNextLevel() then
            unitExp:SetPromotion(promotionIndex--[[would need logic to figure out which promotion to give]],

--[[			true)
            unit:ChangeMovesRemaining(-unit:GetMovesRemaining())
        end
    end
end)
]]





-- Define a function to get the appropriate promotion index for a unit
function GetNextPromotionIndex(unit)
    local unitExp = unit:GetExperience()
    local currentPromotions = unitExp:GetPromotions()
	local promotionClass = GameInfo.Units[pUnit:GetUnitType()].PromotionClass;

    for row in GameInfo.UnitPromotions() do
        local hasPromotion = false
        for _, promotion in pairs(currentPromotions) do
            if row == GameInfo.UnitPromotions[promotion] then
                hasPromotion = true
                break
            end
        end

        if row.PromotionClass == promotionClass and not hasPromotion then
            return row.Index -- Return the promotion index
        end
    end

    return nil -- Return nil if no valid promotion is found
end

-- Modified main script to use the GetNextPromotionIndex function
GameEvents.PlayerTurnStarted.Add(function (playerId)
    if not Players[playerId]:IsAI() then return end
    for _, unit in Players[playerId]:GetUnits():Members() do
        local unitExp = unit:GetExperience()
        if unitExp:GetExperiencePoints() >= unitExp:GetExperienceForNextLevel() then
            local promotionIndex = GetNextPromotionIndex(unit)
            if promotionIndex then
                unitExp:SetPromotion(promotionIndex, true)
                unit:ChangeMovesRemaining(-unit:GetMovesRemaining())
            end
        end
    end
end)
















--------------------------------------------------------------------------------
-- Selected Promotion was clicked.
--------------------------------------------------------------------------------
--[[
function OnPromoteUnit(ePromotion)
	if (g_isOkayToProcess) then
		local pSelectedUnit = UI.GetHeadSelectedUnit();
		if (pSelectedUnit ~= nil) then
			local tParameters = {};
			tParameters[UnitCommandTypes.PARAM_PROMOTION_TYPE] = ePromotion;
			UnitManager.RequestCommand( pSelectedUnit, UnitCommandTypes.PROMOTE, tParameters );
		end
	end
end
]]