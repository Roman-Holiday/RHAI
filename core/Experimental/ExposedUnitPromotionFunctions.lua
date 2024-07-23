

-- More ExposedMembers bindings for functions unavailable in gameplay scripts


function ExposedMembers.GetPromotions(playerId, unitId)
    return UnitManager.GetUnit(playerId, unitId):GetExperience():GetPromotions()
end