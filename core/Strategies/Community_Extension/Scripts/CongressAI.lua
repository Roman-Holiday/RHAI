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

function contains(tb: table, val)
    for _, v in pairs(tb) do
        if v == val then
            return true
        end
    end
    return false
end

-- Diplomatic victory point resolution
function PlayerOrDiploLeaderTargetChooser(info: table)
    if info == nil then
        print("PlayerOrDiploLeaderTargetChooser called, but received no arguments!")
        return false
    end

    local player = Players[info.PlayerId]
    if player:IsHuman() or not player:IsMajor() then return false end

    -- If on a team, vote for the player with the most points on the team, otherwise, vote for themself.
    if info.OutcomeType == OutcomeTypes.A then
        local highestPoints: number = ExposedMembers.GetDiplomaticVictoryPoints(info.PlayerId)
        local highestPointsId: number = info.PlayerId

        for _, otherId in ipairs(Teams[player:GetTeam()]) do
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
            if Teams[player:GetTeam()][otherId] == nil and player:GetDiplomacy():HasMet(otherId) then
                local newHighestPoints: number = ExposedMembers.GetDiplomaticVictoryPoints(otherId)
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

-- Returns a table with keys that often start at 0 and have gaps, so operate on with pairs, not ipairs ...
-- ... Is what you WOULD think, but this is havokscript! ipairs will start at 0 or 1 in havokscript.
-- And since excludePlayerId is optional here, you can use ipairs if you do not specify it ...
-- ... but then there's ANOTHER consideration: If you assume that minor teams will only come after major teams, then
-- you're neglecting to consider the odd mod that might come out that screws around with how
-- teams work that could move players between them during a game or create teams that have city states as well as players in them.
--
-- So in the end, use pairs.
local function getMajorTeams(excludePlayerId: number)
    local majorTeams = {}
    local excludeTeam = -1

    for _, player in ipairs(PlayerManager.GetAliveMajors()) do
        local playerId = player:GetID()
        local teamId = player:GetTeam()
        if playerId == excludePlayerId then
            excludeTeam = teamId
        else
            if not majorTeams[teamId] then
                majorTeams[teamId] = {}
            end
            majorTeams[teamId][#majorTeams[teamId] + 1] = playerId
        end
    end

    majorTeams[excludeTeam] = nil
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
    for teamId, team in pairs(majorTeams) do
        if not areAllHuman(team) then
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

            for otherTeamId, otherTeam in pairs(majorTeams) do
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

            -- g_buildingPrereqs is 0-based because its index is districtIndex
            if g_buildingPrereqs[0] ~= nil then
                scoredDistricts.best[teamId] = { districtIndex = 0, score = protoScores[teamId][0] }
                scoredDistricts.worst[teamId] = { districtIndex = 0, score = protoScores[teamId][0] }

                -- Here is where things are confusing.
                -- You'd THINK that # means the length of the array, accounting for it being 0-based, but you're WRONG!
                -- Havokscript changes how ipairs works, but it DOES NOT change how # works, so # will
                -- return a value 1 less than the actual length of the array if it's indexed from 0.
                -- So instead of `#g_buildingPrereqs - 1`, we just use `#g_buildingPrereqs`.
                if g_buildingPrereqs[1] ~= nil then
                    for districtIndex = 1, #g_buildingPrereqs do
                        if protoScores[teamId][districtIndex] > scoredDistricts.best[teamId].score then
                            scoredDistricts.best[teamId].score = protoScores[teamId][districtIndex]
                            scoredDistricts.best[teamId].districtIndex = districtIndex
                        elseif protoScores[teamId][districtIndex] < scoredDistricts.worst[teamId].score then
                            scoredDistricts.worst[teamId].score = protoScores[teamId][districtIndex]
                            scoredDistricts.worst[teamId].districtIndex = districtIndex
                        end
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

    if info.OutcomeType == OutcomeTypes.A then
        if g_scoredDistricts == nil then
            g_scoredDistricts = getScoredDistricts(getMajorTeams())
        end

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

local function getScoredLuxuries(majorTeams: table)
    if majorTeams == nil then
        error("Unexpected: Major teams list is nil.")
    end

    
end

function MostCommonLuxuryTargetChooser(info: table)
    if info == nil then
        print("MostCommonLuxuryTargetChooser called, but received no arguments!")
        return false
    end

    local player = Players[info.PlayerId]
    if player:IsHuman() or not player:IsMajor() then
        return false
    end

    if info.OutcomeType == OutcomeTypes.A then
        local bestResourceIndex = -1
        local bestResourceCount = -1

        for row in GameInfo.Resources() do
            if row.ResourceClassType == "RESOURCECLASS_LUXURY" then
                local count = 0
                for _, otherId in ipairs(Teams[player:GetTeam()]) do
                    count = count + Players[otherId]:GetResources():GetResourceAmount(row.Index)
                end
                if count > bestResourceCount then
                    bestResourceIndex = row.Index
                    bestResourceCount = count
                end
            end
        end

        if bestResourceIndex ~= -1 then
            info.ResourceIndex = bestResourceIndex
            return true
        end
    elseif info.OutcomeType == OutcomeTypes.B then
        local bestResourceIndex = -1
        local bestResourceCount = -1

        for teamId, team in pairs(getMajorTeams(info.PlayerId)) do
            local teamBestResourceIndex = -1
            local teamBestResourceCount = -1

            for row in GameInfo.Resources() do
                local count = 0
                for _, otherId in ipairs(team) do
                    count = count + Players[otherId]:GetResources():GetResourceAmount(row.Index)
                end
                if count > bestResourceCount then
                    teamBestResourceIndex = row.Index
                    teamBestResourceCount = count
                end
            end
        end

        if bestResourceIndex ~= -1 then
            info.ResourceIndex = bestResourceIndex
            return true
        end
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
    RegisterProcessor("MostCommonLuxuryTargetChooser", MostCommonLuxuryTargetChooser)

    g_buildingPrereqs = getBuildingPrereqs()
end

Init()
