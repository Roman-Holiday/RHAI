

include("SupportFunctions.lua")

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
    local unitExperience = unit:GetExperience() -- Current Unit Experience

    
    local currentPromotions = ExposedMembers.GetPromotions(playerId, unitId) -- Current Unit Promotions

	--		local promotionList :table = unitExperience:GetPromotions();

    local promotionClass = GameInfo.Units[unit:GetUnitType()].PromotionClass -- Get Unit Promotion Class Type 
    local promotionCandidates = {}
    local availablePromotions = {}

    -- Identify all potential promotions that are available for the Unit Promotion Class
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
    if Players[playerId]:IsHuman () then return end

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



-- ===========================================================================
--	Game UI Unit Flag Update Promotions
-- ===========================================================================


function UnitFlag.UpdatePromotions( self )
	self.m_Instance.Promotion_Flag:SetHide(true);
	local pUnit : table = self:GetUnit();
	if pUnit ~= nil then
		-- If this unit is levied (ie. from a city-state), showing that takes precedence
		local iLevyTurnsRemaining = GetLevyTurnsRemaining(pUnit);
		if (iLevyTurnsRemaining >= 0) then
			self.m_Instance.UnitNumPromotions:SetText("[ICON_Turn]");
			self.m_Instance.Promotion_Flag:SetHide(false);
		-- Otherwise, show the experience level
		else
			local unitExperience = pUnit:GetExperience();
			if (unitExperience ~= nil) then
				local promotionList :table = unitExperience:GetPromotions();
				if (#promotionList > 0) then
]]

					--[[ Commented by Default
					local tooltipString :string = "";
					for i, promotion in ipairs(promotionList) do
						tooltipString = tooltipString .. Locale.Lookup(GameInfo.UnitPromotions[promotion].Name);
						if (i < #promotionList) then
							tooltipString = tooltipString .. "[NEWLINE]";
						end
					end
					self.m_Instance.Promotion_Flag:SetToolTipString(tooltipString);
					--]]

--[[                  
					self.m_Instance.UnitNumPromotions:SetText(#promotionList);
					self.m_Instance.Promotion_Flag:SetHide(false);
				end
			end
		end
	end
end

]]
