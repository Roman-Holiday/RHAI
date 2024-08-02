-- ExposedMembers bindings for functions unavailable in gameplay scripts

function ExposedMembers.GetDiplomaticVictoryPoints(playerId: number)
    return Players[playerId]:GetStats():GetDiplomaticVictoryPoints()
end

function ExposedMembers.CanProduce(playerId: number, cityId: number, hash: number)
    return CityManager.GetCity(playerId, cityId):GetBuildQueue():CanProduce(hash, true)
end
