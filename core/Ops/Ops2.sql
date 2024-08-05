
-- AUTHOR: ROMANHOLIDAY

-----------------------------------------------
-- Additional Ops Changes 2
-----------------------------------------------

UPDATE OpTeamRequirements SET MinNumber = '1', MaxNumber = '7' WHERE TeamName = 'Nuclear Attack' AND AiType = 'UNITTYPE_NUCLEAR'; -- MinNumber=1	MaxNumber= -- pvs 5 , UNIT_BOMBER, UNIT_BOMBER, UNIT_JET_BOMBER, UNIT_NUCLEAR_SUBMARINE
UPDATE OpTeamRequirements SET MinNumber = '0', MaxNumber = '6' WHERE TeamName = 'Nuclear Attack' AND AiType = 'UNITTYPE_NUCLEAR_ESCORT'; -- MinNumber=0	MaxNumber= -- pvs 6 -- Units for this not even defined (in base game file)
--UPDATE OpTeamRequirements SET MinNumber = '0', MaxNumber = '2' WHERE TeamName = 'Nuclear Attack' AND AiType = 'UNITTYPE_AIR_SIEGE'; -- Test


INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
--('Nuclear Attack', 'UNITAI_SETTLE',        0, 0),  -- Please don't try to recruit settlers for nuclear attack lol
('Nuclear Attack', 'UNITTYPE_AIR_SIEGE',        0, 5), 
('Nuclear Attack', 'UNITTYPE_CIVILIAN',        0, 0); 

--UPDATE OpTeamRequirements SET MinNumber = '0', MaxNumber = '2' WHERE TeamName = 'Nuclear Attack' AND AiType = 'UNITTYPE_AIR';

--UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = -1, MaxTargetDistInArea = 11, MaxTargetDistInWorld = 15, MinOddsOfSuccess = 0.4, MustHaveUnits = 5 WHERE OperationName = 'Attack Enemy City'; -- early, no walls 50%, 5
--UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = -1, MaxTargetDistInArea = 11, MaxTargetDistInWorld = 16, MinOddsOfSuccess = 0.24, MustHaveUnits = 3 WHERE OperationName = 'Wartime Attack Enemy City'; -- early no walls 25%, 3

--UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion =  -1, MaxTargetDistInArea =  11, MaxTargetDistInWorld = 16, MinOddsOfSuccess = 0.48, MustHaveUnits = 7 WHERE OperationName = 'Attack Walled City'; -- 60%, 10
--UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion =  -1, MaxTargetDistInArea =  11, MaxTargetDistInWorld = 16, MinOddsOfSuccess = 0.3, MustHaveUnits = 6 WHERE OperationName = 'Wartime Attack Walled City'; -- 40%, 6

UPDATE AiOperationDefs SET Priority = '4', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '10', MaxTargetDistInWorld = '10', MinOddsOfSuccess = '0.4', MustHaveUnits = '5' WHERE OperationName = 'Attack Enemy City' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT';
UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '10', MaxTargetDistInWorld = '12', MinOddsOfSuccess = '0.2', MustHaveUnits = '4' WHERE OperationName = 'Wartime Attack Enemy City' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; 
UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '14', MaxTargetDistInWorld = '15', MinOddsOfSuccess = '0.4', MustHaveUnits = '8' WHERE OperationName = 'Attack Walled City' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- pvs 0.5 -- def must have units is 10 -- testing 8 from 7 for possibly larger attacks
UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '14', MaxTargetDistInWorld = '15', MinOddsOfSuccess = '0.2', MustHaveUnits = '5' WHERE OperationName = 'Wartime Attack Walled City' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- min units pvs 6, 5 -- Testing increasing back to 6 to see effect on attacks


UPDATE AiOperationDefs SET Priority = '4', MinOddsOfSuccess = '0.33', MaxTargetDistInArea ='22' WHERE OperationName = 'Attack Barb Camp' AND TargetType = 'TARGET_BARBARIAN_CAMP';



-- Test
UPDATE TriggeredBehaviorTrees SET Priority = '4' WHERE TriggerType = 'TRIGGER_TECH_UPGRADE' AND TreeName = 'Upgrade Units';
UPDATE TriggeredBehaviorTrees SET Priority = '4' WHERE TriggerType = 'TRIGGER_CIVIC_UPGRADE' AND TreeName = 'Upgrade Units';

UPDATE TriggeredBehaviorTrees SET Priority = 4 WHERE TriggerType = 'TRIGGER_RAILROAD' AND TreeName ='Build Railroad'; -- Def 2, pvs 3, testing 4


--TriggeredBehaviorTrees
	--	<Row TriggerType="TRIGGER_TECH_UPGRADE" TreeName="Upgrade Units" AIEvent="AI_EVENT_GAIN_TECH" Priority="3"/>
	--	<Row TriggerType="TRIGGER_CIVIC_UPGRADE" TreeName="Upgrade Units" AIEvent="AI_EVENT_GAIN_CIVIC" Priority="3"/>

/*

 <AiOperationTeams>
    <Row TeamName="City Naval Attack Force" OperationName="Wartime Attack Enemy City" InitialStrengthAdvantage="-5" OngoingStrengthAdvantage="2" Condition="IsCoastalTarget" />
    <Row TeamName="City Attack Force" OperationName="Attack Walled City" InitialStrengthAdvantage="2" OngoingStrengthAdvantage="4" />
    <Row TeamName="City Naval Attack Force" OperationName="Attack Walled City" InitialStrengthAdvantage="-5" OngoingStrengthAdvantage="3" Condition="IsCoastalTarget" />
    <Row TeamName="City Attack Force" OperationName="Wartime Attack Walled City" InitialStrengthAdvantage="1" OngoingStrengthAdvantage="6" />
    <Row TeamName="City Naval Attack Force" OperationName="Wartime Attack Walled City" InitialStrengthAdvantage="-5" OngoingStrengthAdvantage="3" Condition="IsCoastalTarget" />
*/



-- 4 area pvs 15, world 18, now 17
-- 4 testing 0.31 instead of 0.3

UPDATE OpTeamRequirements SET MinNumber = '1', MaxNumber = '1' WHERE TeamName = 'Settle City Team' AND AiType = 'UNITAI_SETTLE'; -- MinNumber=1	MaxNumber=1
UPDATE OpTeamRequirements SET MinNumber = '1', MaxNumber = '3' WHERE TeamName = 'Settle City Team' AND AiType = 'UNITAI_COMBAT'; -- MinNumber=1	MaxNumber=, max pvs 3, 2

INSERT INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
('Settle City Team', 'UNITTYPE_SIEGE_ALL', 					 0, 0), 
('Settle City Team', 'UNITTYPE_SIEGE', 					 0, 0);


UPDATE AiOperationDefs SET Priority = '4', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '45' WHERE OperationName = 'Aid Ally' AND TargetType = 'TARGET_ALLY_SUPPORT'; -- Priority = 3	MaxTargetDistInRegion = -1	MaxTargetDistInArea = 45	MinOddsOfSuccess = 0	MustHaveUnits = -1

--UPDATE AiOperationDefs SET Priority = '2' WHERE OperationName = 'Barb Camp Tech Boost' AND TargetType = 'TARGET_BARBARIAN_CAMP'; -- Priority = 3	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1

UPDATE AiOperationDefs SET Priority = '2', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '30', MinOddsOfSuccess = '0', MustHaveUnits = '-1' WHERE OperationName = 'Barbarian Builder Capture' AND TargetType = 'TARGET_BARBARIAN_CAMP'; -- Priority = 3	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1



-- Barbs
--UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = '10', MaxTargetDistInArea = '5' WHERE OperationName = 'Barbarian Attack' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- Priority = 3	MaxTargetDistInRegion = 10	MaxTargetDistInArea = 5	MinOddsOfSuccess = 0	MustHaveUnits = -1
--UPDATE AiOperationDefs SET Priority = '4', MaxTargetDistInRegion = '10', MaxTargetDistInArea = '5' WHERE OperationName = 'Barbarian City Assault' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- Priority = 4	MaxTargetDistInRegion = 10	MaxTargetDistInArea = 5	MinOddsOfSuccess = 0	MustHaveUnits = -1

--UPDATE AiOperationDefs SET Priority = '4', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '-1', MinOddsOfSuccess = '0', MustHaveUnits = '-1' WHERE OperationName = 'Nuclear Assault' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- Priority = 3	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1
--UPDATE AiOperationDefs SET Priority = '1', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '-1', MinOddsOfSuccess = '0', MustHaveUnits = '-1' WHERE OperationName = 'Civilian Builder Capture' AND TargetType = 'TARGET_FRIENDLY_CITY'; -- Priority = 1	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1

-- City Defence
UPDATE AiOperationDefs SET Priority = '3' WHERE OperationName = 'City Defense' AND TargetType = 'TARGET_FRIENDLY_CITY'; -- Priority = 4	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1

--UPDATE AiOperationDefs SET Priority = '2' WHERE OperationName = 'City Defense' AND TeamName= 'City Defense'; -- Priority = 4	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1

--UPDATE AiOperationDefs SET Priority = '2' WHERE OperationName = 'City Defense' AND TeamName= 'City Defense'; error: -no such column: TeamName
--UPDATE AiOperationDefs SET Priority = '2' WHERE OperationName = 'City Defense' AND TeamName= 'City Naval Defense';


UPDATE AiOperationDefs SET Priority = '2', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '-1', MinOddsOfSuccess = '0.29', MustHaveUnits = '3' WHERE OperationName = 'Naval Superiority' AND TargetType = 'TARGET_NAVAL_SUPERIORITY'; -- Priority = 2	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1

-- Settle
--UPDATE AiOperationDefs SET Priority = '4', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '-1', MinOddsOfSuccess = '0', MustHaveUnits = '-1' WHERE OperationName = 'Settle New City' AND TargetType = 'TARGET_SETTLE_LOCATION'; -- Priority = 4	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1



-- Unused


--UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '30', MinOddsOfSuccess = '0.85', MustHaveUnits = '5' WHERE OperationName = 'Attack Enemy City' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- Priority = 3	MaxTargetDistInRegion = -1	MaxTargetDistInArea = 30	MinOddsOfSuccess = 0.5	MustHaveUnits = 5
--UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '45', MinOddsOfSuccess = '0.50', MustHaveUnits = '3' WHERE OperationName = 'Wartime Attack Enemy City' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- Priority = 3	MaxTargetDistInRegion = -1	MaxTargetDistInArea = 45	MinOddsOfSuccess = 0.25	MustHaveUnits = 3
--UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '30', MinOddsOfSuccess = '0.75', MustHaveUnits = '10' WHERE OperationName = 'Attack Walled City' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- Priority = 3	MaxTargetDistInRegion = -1	MaxTargetDistInArea = 30	MinOddsOfSuccess = 0.6	MustHaveUnits = 10
--UPDATE AiOperationDefs SET Priority = '3', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '45', MinOddsOfSuccess = '0.6', MustHaveUnits = '6' WHERE OperationName = 'Wartime Attack Walled City' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- Priority = 3	MaxTargetDistInRegion = -1	MaxTargetDistInArea = 45	MinOddsOfSuccess = 0.4	MustHaveUnits = 6

--UPDATE AiOperationDefs SET Priority = '2', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '-1', MinOddsOfSuccess = '0', MustHaveUnits = '-1' WHERE OperationName = 'Naval Superiority' AND TargetType = 'TARGET_NAVAL_SUPERIORITY'; -- Priority = 2	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1



