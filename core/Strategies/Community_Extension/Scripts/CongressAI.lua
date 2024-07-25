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
local g_scoredLuxuries: table

local g_buildingPrereqs: table
local g_luxuryResources: table

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

local function getLuxuryResources()
    local luxuries = {}
    for row in GameInfo.Resources() do
        if row.ResourceClassType == "RESOURCECLASS_LUXURY" then
            luxuries[#luxuries + 1] = row.Index
        end
    end
end

-- Returns a table with keys that often start at 0, so operate on with pairs, not ipairs ...
-- ... Is what you WOULD think, but this is havokscript! ipairs will start at 0 or 1 in havokscript.
-- But there's ANOTHER consideration: If you assume that minor teams will only come after major teams, then
-- you're neglecting to consider the odd mod that might come out that screws around with how
-- teams work that could move players between them during a game or create teams that have city states as well as players in them.
--
-- So in the end, use pairs.
local function getMajorTeams()
    local majorTeams = {}

    for _, player in ipairs(PlayerManager.GetAliveMajors()) do
        local playerId = player:GetID()
        local teamId = player:GetTeam()

        if not majorTeams[teamId] then
            majorTeams[teamId] = {}
        end
        majorTeams[teamId][#majorTeams[teamId] + 1] = playerId
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

    for teamId, team in pairs(majorTeams) do
        if not areAllHuman(team) then
            local protoScore = {}

            for _, playerId in ipairs(team) do
                for districtIndex in ipairs(g_buildingPrereqs) do
                    protoScore[districtIndex] = 0
                end
                for _, city in Players[playerId]:GetCities():Members() do
                    for districtIndex in ipairs(g_buildingPrereqs) do
                        for _, buildingHash in ipairs(g_buildingPrereqs[districtIndex]) do
                            if ExposedMembers.CanProduce(playerId, city:GetID(), buildingHash) then
                                protoScore[districtIndex] = protoScore[districtIndex] + 1 * #majorTeams
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
                                                protoScore[districtIndex] = protoScore[districtIndex] - 1
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
                scoredDistricts.best[teamId] = { districtIndex = 0, score = protoScore[0] }
                scoredDistricts.worst[teamId] = { districtIndex = 0, score = protoScore[0] }

                -- Here is where things are confusing.
                -- You'd THINK that # means the length of the array, accounting for it being 0-based, but you're WRONG!
                -- Havokscript changes how ipairs works, but it DOES NOT change how # works, so # will
                -- return a value 1 less than the actual length of the array if it's indexed from 0.
                -- So instead of `#g_buildingPrereqs - 1`, we just use `#g_buildingPrereqs`.
                if g_buildingPrereqs[1] ~= nil then
                    for districtIndex = 1, #g_buildingPrereqs do
                        if protoScore[districtIndex] > scoredDistricts.best[teamId].score then
                            scoredDistricts.best[teamId].score = protoScore[districtIndex]
                            scoredDistricts.best[teamId].districtIndex = districtIndex
                        elseif protoScore[districtIndex] < scoredDistricts.worst[teamId].score then
                            scoredDistricts.worst[teamId].score = protoScore[districtIndex]
                            scoredDistricts.worst[teamId].districtIndex = districtIndex
                        end
                    end
                end
            end
        end
    end

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

    if info.OutcomeType == OutcomeTypes.A or info.OutcomeType == OutcomeTypes.B then
        if g_scoredDistricts == nil then
            g_scoredDistricts = getScoredDistricts(getMajorTeams())
            Events.TurnEnd.Add(flushScoredDistricts)
        end

        -- Ternary
        info.DistrictIndex = (info.OutcomeType == OutcomeTypes.A)
            and g_scoredDistricts.best[player:GetTeam()].districtIndex
            or g_scoredDistricts.worst[player:GetTeam()].districtIndex

        return true
    end

    return false
end

local function getScoredLuxuries(majorTeams: table)
    if majorTeams == nil then
        error("Unexpected: Major teams list is nil.")
    end

    local scoredResources = {
        best = {},
        worst = {}
    }

    for teamId, team in pairs(majorTeams) do
        if not areAllHuman(team) then
            local protoScore = {}

            for _, playerId in ipairs(team) do
                for _, index in ipairs(g_luxuryResources) do
                    protoScore[index] = Players[playerId]:GetResources():GetResourceCount(index)
                end
            end

            for otherTeamId, otherTeam in pairs(majorTeams) do
                -- Check if anyone on this team has met anyone on the other team
                if teamId ~= otherTeamId and Players[team[1]]:GetDiplomacy():HasMet(otherTeam[1]) then
                    for _, otherPlayerId in ipairs(otherTeam) do
                        for _, index in ipairs(g_luxuryResources) do
                            protoScore[index] =
                                protoScore[index] - Players[otherPlayerId]:GetResources():GetResourceCount(index)
                        end
                    end
                end
            end

            scoredResources.best[teamId] = { resourceIndex = 0, score = protoScore[0] }
            scoredResources.worst[teamId] = { resourceIndex = 0, score = protoScore[0] }

            for resourceIndex = 1, #g_buildingPrereqs do
                if protoScore[resourceIndex] > scoredResources.best[teamId].score then
                    scoredResources.best[teamId].score = protoScore[resourceIndex]
                    scoredResources.best[teamId].resourceIndex = resourceIndex
                elseif protoScore[resourceIndex] < scoredResources.worst[teamId].score then
                    scoredResources.worst[teamId].score = protoScore[resourceIndex]
                    scoredResources.worst[teamId].resourceIndex = resourceIndex
                end
            end
        end
    end

    return scoredResources
end

local function flushScoredLuxuries()
    g_scoredLuxuries = nil
    Events.TurnEnd.Remove(flushScoredLuxuries)
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

    if info.OutcomeType == OutcomeTypes.A or info.OutcomeType == OutcomeTypes.B then
        if g_scoredLuxuries == nil then
            g_scoredLuxuries = getScoredLuxuries(getMajorTeams())
            Events.TurnEnd.Add(flushScoredLuxuries)
        end

        -- Ternary
        info.ResourceIndex = (info.OutcomeType == OutcomeTypes.A)
            and g_scoredLuxuries.best[player:GetTeam()].resourceIndex
            or g_scoredLuxuries.worst[player:GetTeam()].resourceIndex

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
    RegisterProcessor("MostCommonLuxuryTargetChooser", MostCommonLuxuryTargetChooser)

    g_buildingPrereqs = getBuildingPrereqs()
    g_luxuryResources = getLuxuryResources()
end

Init()
