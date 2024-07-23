--   _____                                               _____ 
--  / ____|                                        /\   |_   _|
-- | |     ___  _ __   __ _ _ __ ___  ___ ___     /  \    | |  
-- | |    / _ \| '_ \ / _` | '__/ _ \/ __/ __|   / /\ \   | |  
-- | |___| (_) | | | | (_| | | |  __/\__ \__ \  / ____ \ _| |_ 
--  \_____\___/|_| |_|\__, |_|  \___||___/___/ /_/    \_\_____|
--                     __/ |                                   
--                    |___/                                    
-- Authors: WildW
-- Depends on: Community Extension

local g_scoredDistricts: table
local g_buildingPrereqs: table

-- Debug
function rPrint(s, l, i) -- recursive Print (structure, limit, indent)
    l = (l) or 100; i = i or "";    -- default item limit, indent string
    if (l<1) then print "ERROR: Item limit reached."; return l-1 end;
    local ts = type(s);
    if (ts ~= "table") then print (i,ts,s); return l-1 end
    print (i,ts);           -- print "table"
    for k,v in pairs(s) do  -- print "[KEY] VALUE"
        l = rPrint(v, l, i.."\t["..tostring(k).."]");
        if (l < 0) then break end
    end
    return l
end

-- Diplomatic victory point resolution
function PlayerOrDiploLeaderTargetChooser(info: table)
    if info == nil then
        print("PlayerOrDiploLeaderTargetChooser called, but received no arguments!")
        return false
    end

    rPrint(info)

    -- If on a team, vote for the player with the most points on the team, otherwise, vote for themself.
    if info.OutcomeType == OutcomeTypes.A then
        local highestPoints: number = ExposedMembers.GetDiplomaticVictoryPoints(info.PlayerId)
        local highestPointsId: number = info.PlayerId

        for _, otherId in ipairs(Teams[info.PlayerId]) do
            local newHighestPoints: number = ExposedMembers.GetDiplomaticVictoryPoints(info.PlayerId)
            if newHighestPoints > highestPoints then
                highestPoints = newHighestPoints
                highestPointsId = otherId
            end
        end

        info.TargetPlayerId = highestPointsId
        return true
    end

    -- Vote for the player with the most points that isn't on their team.
    if info.OutcomeType == OutcomeTypes.B then
        local highestPoints: number = -1
        local highestPointsId: number = -1

        for _, otherPlayer in ipairs(PlayerManager.GetAliveMajors()) do
            local otherId: number = otherPlayer:GetID()
            if Teams[info.PlayerId][otherId] == nil and Players[info.PlayerId]:GetDiplomacy():HasMet(otherId) then
                local newHighestPoints: number = Players[otherId]:GetStats():GetDiplomaticVictoryPoints()
                if newHighestPoints > highestPoints then
                    highestPoints = newHighestPoints
                    highestPointsId = otherId
                end
            end
        end

        if highestPointsId ~= -1 then
            info.TargetPlayerId = highestPointsId
            return true
        end
    end

    return false -- If all else fails, pass to another target chooser
end

local function getBuildingPrereqs()
    local buildingPrereqs = {}
    for row in GameInfo.Districts() do
        buildingPrereqs[row.Index] = {}
    end
    for row in GameInfo.Buildings() do
        if GameInfo.Districts[row.PrereqDistrict] ~= nil then
            table.insert(buildingPrereqs[GameInfo.Districts[row.PrereqDistrict].Index], row.Hash)
        end
    end
    return buildingPrereqs
end

local function getMajorTeams()
    local majorTeams = {}
    for _, player in ipairs(PlayerManager.GetAliveMajors()) do
        local teamId = player:GetTeam()
        majorTeams[teamId] = majorTeams[teamId] or {}
        table.insert(majorTeams[teamId], player:GetID())
    end
    return majorTeams
end

local function areAllHuman(team: table)
    for _, playerId in ipairs(team) do
        if not Players[playerId]:IsHuman() then
            return false
        end
    end

    return true
end

local function flushScoredDistricts()
    g_scoredDistricts = nil
    rPrint(g_scoredDistricts, 1000)
    Events.TurnEnd.Remove(flushScoredDistricts)
end

local function getScoredDistricts(majorTeams: table)
    if majorTeams == nil then
        error("Unexpected: Major teams list is nil.")
    end

    if g_buildingPrereqs == nil then
        error("Unexpected: Building prereqs list is nil.")
    end

    local scoredDistricts = {
        best = {},
        worst = {}
    }

    local protoScores = {}
    for teamId, team in ipairs(majorTeams) do
        if not areAllHuman(team) then
            scoredDistricts.best[teamId] = {
                districtIndex = 0,
                score = -math.huge
            }
            scoredDistricts.worst[teamId] = {
                districtIndex = 0,
                score = math.huge
            }

            protoScores[teamId] = {}
            for _, playerId in ipairs(team) do
                for districtIndex in ipairs(g_buildingPrereqs) do
                    protoScores[teamId][districtIndex] = 0
                end
                for _, city in Players[playerId]:GetCities():Members() do
                    for districtIndex in ipairs(g_buildingPrereqs) do
                        for _, buildingHash in ipairs(g_buildingPrereqs[districtIndex]) do
                            if ExposedMembers.CanProduce(playerId, city:GetID(), buildingHash) then
                                protoScores[teamId][districtIndex] = protoScores[teamId][districtIndex] + 1 * #majorTeams
                            end
                        end
                    end
                end
            end

            for otherTeamId, otherTeam in ipairs(majorTeams) do
                -- Check if anyone on this team has met anyone on the other team
                if teamId ~= otherTeamId and Players[team[1]]:GetDiplomacy():HasMet(otherTeam[1]) then
                    for _, otherPlayerId in ipairs(otherTeam) do
                        for _, otherCity in Players[otherPlayerId]:GetCities():Members() do
                            for districtIndex in ipairs(g_buildingPrereqs) do
                                local otherDistrict = otherCity:GetDistricts():GetDistrict(districtIndex)
                                if otherDistrict ~= nil then
                                    -- Only take buildings that are visible into account
                                    if PlayersVisibility[team[1]]:IsVisible(otherDistrict:GetX(), otherDistrict:GetY()) then
                                        for _, buildingHash in ipairs(g_buildingPrereqs[districtIndex]) do
                                            if ExposedMembers.CanProduce(otherPlayerId, otherCity:GetID(), buildingHash) then
                                                protoScores[teamId][districtIndex] = protoScores[teamId][districtIndex] - 1
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end

            for _, scores in ipairs(protoScores) do
                for districtIndex in ipairs(g_buildingPrereqs) do
                    if scores[districtIndex] > scoredDistricts.best[teamId].score then
                        scoredDistricts.best[teamId].score = scores[districtIndex]
                        scoredDistricts.best[teamId].districtIndex = districtIndex
                    elseif scores[districtIndex] < scoredDistricts.worst[teamId].score then
                        scoredDistricts.worst[teamId].score = scores[districtIndex]
                        scoredDistricts.worst[teamId].districtIndex = districtIndex
                    end
                end
            end
        end
    end

    Events.TurnEnd.Add(flushScoredDistricts)
    return scoredDistricts
end

-- Urban development resolution
function DistrictTargetChooser(info: table)
    if info == nil then
        print("DistrictTargetChooser called, but received no arguments!")
        return false
    end

    local player = Players[info.PlayerId]
    if player:IsHuman() or not player:IsMajor() then
        return false
    end

    rPrint(info)

    if info.OutcomeType == OutcomeTypes.A then
        if g_scoredDistricts == nil then
            g_scoredDistricts = getScoredDistricts(getMajorTeams())
        end
        rPrint(g_scoredDistricts)
        info.DistrictIndex = g_scoredDistricts.best[player:GetTeam()].districtIndex
        return true
    end

    if info.OutcomeType == OutcomeTypes.B then
        if g_scoredDistricts == nil then
            g_scoredDistricts = getScoredDistricts(getMajorTeams())
        end

        info.DistrictIndex = g_scoredDistricts.worst[player:GetTeam()].districtIndex
        return true
    end

    return false
end

function Init()
    print("--------------------")
    print("Loading Congress AI!")
    print("Author: WildW")
    print("--------------------")

    RegisterProcessor("PlayerOrDiploLeaderTargetChooser", PlayerOrDiploLeaderTargetChooser)
    RegisterProcessor("DistrictTargetChooser", DistrictTargetChooser)

    g_buildingPrereqs = getBuildingPrereqs()
end

Init()
