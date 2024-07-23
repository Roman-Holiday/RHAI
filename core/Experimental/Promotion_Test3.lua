-- Full Credit for this -- WILDW
-- Massive Thanks Especially for writing the inital PlayerTurnStarted Function


include("Civ6Common")

-- ===========================================================================
--  Initial Utility Function to Determine the Available Promotions
-- ===========================================================================


-- Checks if the unit has a promotion
function UnitHasPromotion(unit, promotionType)
    local unitExperience = unit:GetExperience()
    return unitExperience:HasPromotion(GameInfo.UnitPromotions[promotionType].Index)
end

-- Gathers a list of available promotions for the unit based on its promotion class
function GetAvailablePromotions(unit)
    local unitExperience = unit:GetExperience()
    local currentPromotions = unitExperience:GetPromotions()
    local promotionClass = GameInfo.Units[unit:GetUnitType()].PromotionClass -- Get Unit Promotion Class
    local promotionCandidates = {}
    local availablePromotions = {}

    -- Gather all promotions that are available for the Unit Promotion Class
    for row in GameInfo.UnitPromotions() do
        if row.PromotionClass == promotionClass then
            promotionCandidates[row.UnitPromotionType] = row
        end
    end

    -- Filter out already owned promotions and check if prerequisites are met
    for promotionType, promotion in pairs(promotionCandidates) do
        local hasPromotion = false
        for _, currentPromotion in ipairs(currentPromotions) do
            if currentPromotion == promotion.Index then
                hasPromotion = true
                break
            end
        end

        if not hasPromotion then
            local prereqsMet = true
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
                table.insert(availablePromotions, promotion)
            end
        end
    end

    return availablePromotions
end


-- ===========================================================================
-- Returns the first available promotion for a unit
-- ===========================================================================



function GetNextPromotionIndex(unit)
    local availablePromotions = GetAvailablePromotions(unit)
    if #availablePromotions > 0 then
        return availablePromotions[1].Index
    end
    return nil
end




-- ===========================================================================
--	Main Script to Automatically Promote AI Units
-- ===========================================================================
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






-- ===========================================================================
--	Special GDR Civ Royale Promotion
-- ===========================================================================

--[[
function IsActionLimited(actionType : string, pUnit : table)
	local localPlayerCivType = PlayerConfigurations[Game.GetLocalPlayer()]:GetCivilizationTypeName();
	if(actionType == "WMD_HAIL_MARY") then
		if(localPlayerCivType == g_CivTypeNames.Jocks)then
			return false;
		else
			return true;
		end
	elseif(actionType == "WMD_NUCLEAR_DEVICE" or actionType == "WMD_THERMONUCLEAR_DEVICE")then
		return true;
	elseif(actionType == "UNITOPERATION_HEAL")then
		if(localPlayerCivType == g_CivTypeNames.Zombies and pUnit:GetType() == GameInfo.Units["UNIT_WARRIOR"].Index)then
			return true;
		elseif(pUnit:GetType() == GameInfo.Units["UNIT_CRIPPLED_GDR"].Index)then
			local pUnitExp : table = pUnit:GetExperience();
			local requiredPromotion = GameInfo.UnitPromotions["PROMOTION_GDR_LIMITED_HEAL"];
			if(not pUnitExp:HasPromotion(requiredPromotion.Index))then
				return true;
			end
		end
	end
	return false;
end

]]
