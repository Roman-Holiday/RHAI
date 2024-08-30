
-- AUTHOR: ROMANHOLIDAY

--------------------------------------------------------------------------------------------------------------------------
-- Ops 4 -- Simple Attack Force, Defence -- Special Thanks - Infixo
--------------------------------------------------------------------------------------------------------------------------

-- SIMPLE EARLY ATTACK FORCE

UPDATE AiOperationTeams SET InitialStrengthAdvantage = 0, OngoingStrengthAdvantage = 0.5 WHERE TeamName = 'Simple Early Attack Force';

UPDATE OpTeamRequirements SET MinNumber = 1, MaxNumber = 7 WHERE TeamName = 'Simple Early Attack Force' AND AiType = 'UNITAI_COMBAT'; -- MinNumber=1
UPDATE OpTeamRequirements SET MaxNumber = 3 WHERE TeamName = 'Simple Early Attack Force' AND AiType = 'UNITTYPE_RANGED'; -- Max Def 3, pvs 4 (Min 0)

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinPercentage, MaxPercentage) VALUES
('Simple Early Attack Force', 'UNITTYPE_CIVILIAN_LEADER',  0, 0.34); 




-- SIMPLE CITY ATTACK FORCE (NO WALLS)

UPDATE AiOperationTeams SET InitialStrengthAdvantage = 0.4, OngoingStrengthAdvantage = 0.7 WHERE TeamName = 'Simple City Attack Force' AND OperationName = 'Attack Enemy City'; -- int pvs 0.8
UPDATE AiOperationTeams SET InitialStrengthAdvantage = -1, OngoingStrengthAdvantage = 0.5 WHERE TeamName = 'Simple City Attack Force' AND OperationName = 'Wartime Attack Enemy City';

UPDATE OpTeamRequirements SET MinNumber = 5, MaxNumber = 12 WHERE TeamName = 'Simple City Attack Force' AND AiType = 'UNITAI_COMBAT'; -- Def 5, 16, increasing min from 4 to 5
UPDATE OpTeamRequirements SET MinNumber = 2, MaxNumber = 8 WHERE TeamName = 'Simple City Attack Force' AND AiType = 'UNITTYPE_MELEE'; -- Def 2, no max -- pvs 2-4
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 6 WHERE TeamName = 'Simple City Attack Force' AND AiType = 'UNITTYPE_RANGED'; -- Def 3

--UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 0 WHERE TeamName = 'Simple City Attack Force' AND AiType = 'UNITTYPE_CIVILIAN'; -- Already set
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 2 WHERE TeamName = 'Simple City Attack Force' AND AiType = 'UNITTYPE_CIVILIAN_LEADER'; -- Already set -- def max 1

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
('Simple City Attack Force', 'UNITAI_SETTLE',        0, 0),
('Simple City Attack Force', 'UNITTYPE_CAVALRY',        0, 7), -- max 4, 5
('Simple City Attack Force', 'UNITTYPE_SIEGE_ALL',        0, 4); -- Siege (not Siege all) def 3 --


INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinPercentage, MaxPercentage) VALUES
('Simple City Attack Force', 'UNITTYPE_CIVILIAN_LEADER',  0, 0.25); 


-- CITY DEFENCE

UPDATE AiOperationDefs SET OperationType = 'OP_DEFENSE' WHERE OperationName = 'City Defense'; 

UPDATE AiOperationDefs SET MinOddsOfSuccess = 0, MustHaveUnits = 2 WHERE OperationName = 'City Defense'; -- 0%, -1 -- pvs 3 (and 0.01)

UPDATE OpTeamRequirements SET MinNumber = 2, MaxNumber = 8 WHERE TeamName = 'City Defense' AND AiType = 'UNITAI_COMBAT'; --testing 6, 7
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 0 WHERE TeamName = 'City Defense' AND AiType = 'UNITAI_EXPLORE'; -- def min 0, no max lol, pvs max 0 -- pvs 1
--UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 1, MaxPercentage = 0.25 WHERE TeamName = 'City Defense' AND AiType = 'UNITTYPE_NAVAL_RANGED'; 

UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 3 WHERE TeamName = 'City Defense' AND AiType = 'UNITTYPE_AIR'; -- def max 0, pvs 4, 2, 3
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 0 WHERE TeamName = 'City Defense' AND AiType = 'UNITTYPE_AIR_SIEGE'; -- def max 0 -- reduced now to 0 to give more bombers to nuclear op, back to 1

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber, MinPercentage, MaxPercentage) VALUES
('City Defense', 'UNITTYPE_MELEE',  0, 5, 0, 1); -- (can be 2 as long as there are 4 units)

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
('City Defense', 'UNITTYPE_RANGED', 							  1, 7), 
('City Defense', 'UNITTYPE_NUCLEAR', 							  0, 0),
('City Defense', 'UNITTYPE_ANTIAIR_SUPPORT', 					  0, 1), -- test 0
('City Defense', 'UNITTYPE_SIEGE',  						      0, 1),
('City Defense', 'UNITTYPE_SIEGE_ALL',  						  0, 1), -- testing
('City Defense', 'UNITTYPE_NAVAL_MELEE',						  0, 0),
('City Defense', 'UNITTYPE_NAVAL_RANGED',						  0, 1), -- Doesn't exist?
('City Defense', 'UNITTYPE_CAVALRY',							  0, 3);


INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinPercentage, MaxPercentage) VALUES
('City Defense', 'UNITTYPE_ANTIAIR_SUPPORT', 	0, 0.3),
('City Defense', 'UNITTYPE_NAVAL_MELEE', 		0, 0),
('City Defense', 'UNITTYPE_NAVAL', 				0, 0.3),
('City Defense', 'UNITTYPE_CIVILIAN_LEADER',	 0, 0.25);


/*
    <Row TeamName="City Defense" AiType="UNITTYPE_CIVILIAN" MaxNumber="0" />
    <Row TeamName="City Defense" AiType="UNITTYPE_CIVILIAN_LEADER" MaxNumber="1" />
    <Row TeamName="City Defense" AiType="UNITTYPE_NAVAL" MaxNumber="0" />
    <Row TeamName="City Defense" AiType="UNITAI_COMBAT" MinNumber="0" />
    <Row TeamName="City Defense" AiType="UNITAI_EXPLORE" MinNumber="0" />
    <Row TeamName="City Defense" AiType="UNITTYPE_AIR" MaxNumber="0" />
    <Row TeamName="City Defense" AiType="UNITTYPE_AIR_SIEGE" MaxNumber="0" />
*/

-- CITY NAVAL DEFENCE


-- City Naval Defense

UPDATE AiOperationTeams SET InitialStrengthAdvantage = -7 WHERE TeamName = 'City Naval Defense' AND OperationName = 'City Defense'; -- def -5

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
('City Naval Defense', 'UNITTYPE_NAVAL',  			1, 8);

UPDATE OpTeamRequirements SET MinPercentage = 0.5 WHERE TeamName = 'City Naval Defense' AND AiType = 'UNITTYPE_NAVAL'; -- For planes / siege unit, pvs 0.75

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
('City Naval Defense', 'UNITAI_COMBAT',   							2, 11),
('City Naval Defense', 'UNITTYPE_NUCLEAR',   						0, 0), -- pvs 2, testing 0
('City Naval Defense', 'UNITTYPE_SIEGE',  							 0, 1),
('City Naval Defense', 'UNITTYPE_ANTIAIR_SUPPORT', 					  0, 0),
('City Naval Defense', 'UNITTYPE_AIR',     							0, 2),
('City Naval Defense', 'UNITTYPE_AIR_SIEGE',    					0, 0);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinPercentage, MaxPercentage) VALUES
('City Naval Defense', 'UNITTYPE_ANTIAIR_SUPPORT', 	0, 0),
('City Naval Defense', 'UNITTYPE_CIVILIAN_LEADER',	 0, 0.25);


UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 7 WHERE TeamName = 'City Naval Defense' AND AiType = 'UNITTYPE_MELEE'; 


/*
    <Row TeamName="City Naval Defense" AiType="UNITTYPE_NAVAL" MinPercentage="1" />
    <Row TeamName="City Naval Defense" AiType="UNITTYPE_MELEE" MinNumber="0" />
    <Row TeamName="City Naval Defense" AiType="UNITTYPE_RANGED" MinNumber="0" />
    <Row TeamName="City Naval Defense" AiType="UNITTYPE_CIVILIAN_LEADER" MaxNumber="1" />
*/


-- Settle City Team

UPDATE AiOperationTeams SET InitialStrengthAdvantage = -1, OngoingStrengthAdvantage = 0.1 WHERE TeamName = 'Settle City Team' AND OperationName = 'Settle New City';



-- NAVAL SUPERIORITY

UPDATE AiOperationTeams SET InitialStrengthAdvantage = -2, OngoingStrengthAdvantage = 0.6 WHERE TeamName = 'Naval Superiority Force' AND OperationName = 'Naval Superiority';

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES 
('Naval Superiority Force', 'UNITTYPE_LAND_COMBAT', 0, 0), 
('Naval Superiority Force', 'UNITTYPE_AIR',         0, 0), 
('Naval Superiority Force', 'UNITTYPE_NUCLEAR',   0, 0),
('Naval Superiority Force', 'UNITTYPE_AIR_SIEGE',   0, 0); 

UPDATE OpTeamRequirements SET MinNumber = 3, MaxNumber = 9 WHERE TeamName = 'Naval Superiority Force' AND AiType = 'UNITTYPE_NAVAL'; 
UPDATE OpTeamRequirements SET MinNumber = 1, MaxNumber = 5 WHERE TeamName = 'Naval Superiority Force' AND AiType = 'UNITTYPE_MELEE';
UPDATE OpTeamRequirements SET MinNumber = 1, MaxNumber = 6 WHERE TeamName = 'Naval Superiority Force' AND AiType = 'UNITTYPE_RANGED';
--UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 1 WHERE TeamName = 'Naval Superiority Force' AND AiType = 'UNITTYPE_CIVILIAN_LEADER';

UPDATE AiOperationDefs SET MinOddsOfSuccess = 0.25, MustHaveUnits = 3, EnemyType = 'WAR' WHERE OperationName = 'Naval Superiority';


/*
    <Row TeamName="Naval Superiority Force" AiType="UNITTYPE_NAVAL" MinPercentage="1" />
    <Row TeamName="Naval Superiority Force" AiType="UNITTYPE_MELEE" MinNumber="1" />
    <Row TeamName="Naval Superiority Force" AiType="UNITTYPE_RANGED" MinNumber="0" />
    <Row TeamName="Naval Superiority Force" AiType="UNITTYPE_CIVILIAN_LEADER" MaxNumber="1" />
*/


-- Naval Sup Melee Force - used for new Naval Sup Melee

INSERT OR IGNORE INTO AiOperationDefs (OperationName,           TargetType, TargetParameter, EnemyType,             BehaviorTree, Priority, MaxTargetDistInRegion, MaxTargetDistInArea, MaxTargetDistInWorld, MinOddsOfSuccess, SelfStart, MustHaveUnits,    OperationType)
VALUES                      ('Naval Sup Melee', 'TARGET_NAVAL_SUPERIORITY',               0,     'WAR', 'Naval Superiority Tree',        2,                    -1,                  -1,                   -1,              0.33,         1,             3, 'NAVAL_SUP_MELEE');

INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'Naval Sup Melee');

INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('Naval Sup Melee Force');

INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('Naval Sup Melee Force', 'Naval Sup Melee', -0.7, 0.8); 

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
('Naval Sup Melee Force', 'UNITTYPE_NAVAL',       3, 7),
('Naval Sup Melee Force', 'UNITTYPE_NAVAL_MELEE',       2, 6),
('Naval Sup Melee Force', 'UNITTYPE_RANGED',      0, 4),
('Naval Sup Melee Force', 'UNITTYPE_CIVILIAN_LEADER',  0, 1),
('Naval Sup Melee Force', 'UNITTYPE_NUCLEAR',  0, 0),
('Naval Sup Melee Force', 'UNITTYPE_AIR',         0, 0), 
('Naval Sup Melee Force', 'UNITTYPE_AIR_SIEGE',   0, 0),
('Naval Sup Melee Force', 'UNITTYPE_LAND_COMBAT', 0, 0); 


--UPDATE OpTeamRequirements SET MinPercentage = 0.7, MaxPercentage = 1 WHERE TeamName = 'Naval Sup Melee Force' AND AiType = 'UNITTYPE_NAVAL'; -- In order to bring great admiral



INSERT OR REPLACE INTO AiOperationTypes (OperationType, Value)
SELECT 'OP_AIR_DEFENSE', MAX(Value)+1
FROM AiOperationTypes;
REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('BaseOperationsLimits',   'OP_AIR_DEFENSE', 20); -- pvs 10, 7
--('PerWarOperationsLimits', 'OP_AIR_DEFENSE', 1);

-- Pillage OP - CREDIT Delnar and Infixo 
INSERT OR REPLACE INTO AiOperationTypes (OperationType, Value)
SELECT 'OP_PILLAGE', MAX(Value)+1
FROM AiOperationTypes;



-- RH AIR CITY DEFENCE OP

-- TriggeredBehaviorTrees -- AI Events
INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('ModernCityBuilds');
INSERT OR REPLACE INTO AiLists (ListType, System) VALUES
('ModernCityBuilds', 'CityEvents');
INSERT OR REPLACE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_MODERN_CHANGES', 'ModernCityBuilds');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, StringVal) VALUES
('ModernCityBuilds', 'CITY_EVENT_DEFAULT', 'Air City Defense OP');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('AtomicCityBuilds');
INSERT OR REPLACE INTO AiLists (ListType, System) VALUES
('AtomicCityBuilds', 'CityEvents');
INSERT OR REPLACE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_ATOMIC_CHANGES', 'AtomicCityBuilds');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, StringVal) VALUES
('AtomicCityBuilds', 'CITY_EVENT_DEFAULT', 'Air City Defense OP');

--CITY_EVENT_DEFAULT, CITY_UNDER_THREAT

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('InfoCityBuilds');
INSERT OR REPLACE INTO AiLists (ListType, System) VALUES
('InfoCityBuilds', 'CityEvents');
INSERT OR REPLACE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_INFORMATION_CHANGES', 'InfoCityBuilds');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, StringVal) VALUES
('InfoCityBuilds', 'CITY_EVENT_DEFAULT', 'Air City Defense OP');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, StringVal) VALUES
('InfoCityBuilds', 'CITY_UNDER_THREAT', 'Air City Defense OP');





-- RH AA DEFINITION

INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'Air City Defense OP');
INSERT OR IGNORE INTO AiOperationDefs (OperationName,TargetType,TargetParameter, MinOddsOfSuccess,		BehaviorTree,		Priority,	MaxTargetDistInRegion,MaxTargetDistInArea,MaxTargetDistInWorld,MustHaveUnits,OperationType) VALUES 
		('Air City Defense OP',				'TARGET_FRIENDLY_CITY',				1, 0,		'RH City Air Defense Tree',	4,		-1,						-1,					0,						1,'OP_AIR_DEFENSE');

INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('Air City Defense Team');
INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('Air City Defense Team','Air City Defense OP',-1,-1);
INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
--('Air City Defense Team', 'UNITTYPE_CIVILIAN', 0, 0),
--('Air City Defense Team', 'UNITTYPE_LAND_COMBAT', 0, 0),
--('Air City Defense Team', 'UNITTYPE_NAVAL', 0, 0),
--('Air City Defense Team', 'UNITAI_COMBAT', 0, 5),
('Air City Defense Team', 'UNITTYPE_AIR_SIEGE', 0, 0),
('Air City Defense Team', 'UNITTYPE_SIEGE', 0, 0), -- No GDR's
('Air City Defense Team', 'UNITTYPE_NUCLEAR',  0, 0), -- Just to make sure lol
('Air City Defense Team', 'UNITTYPE_AIR', 0, 0), -- pvs max 2
('Air City Defense Team', 'UNITTYPE_ANTIAIR', 1, 1); -- GDR's are allowed / ships pvs 2 (now disabled)




-- RH Def Test

INSERT OR REPLACE INTO AiOperationTypes (OperationType, Value)
SELECT 'OP_RH_DEFENSE_HP', MAX(Value)+1
FROM AiOperationTypes;


INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'RH HP DEFENCE OP');
INSERT OR IGNORE INTO AiOperationDefs (OperationName,TargetType,TargetParameter, MinOddsOfSuccess,		BehaviorTree,		Priority,	MaxTargetDistInRegion,MaxTargetDistInArea,MaxTargetDistInWorld,MustHaveUnits,OperationType) VALUES 
		('RH HP DEFENCE OP',				'TARGET_FRIENDLY_CITY',				1, 0,		'Simple City Defense',	4,		-1,						-1,					0,						1,'OP_RH_DEFENSE_HP'); 


INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('RH HP Defence Team');
INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('RH HP Defence Team','RH HP DEFENCE OP',-1,-1);
INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
('RH HP Defence Team', 'UNITAI_COMBAT', 							  1, 8), 

('RH HP Defence Team', 'UNITTYPE_NAVAL', 						0, 2),

--('RH HP Defence Team', 'UNITTYPE_SIEGE', 0, 0), -- No GDR's

--('RH HP Defence Team', 'UNITTYPE_NUCLEAR',  0, 0),

('RH HP Defence Team', 'UNITTYPE_AIR', 0, 3), -- pvs max 2
('RH HP Defence Team', 'UNITTYPE_AIR_SIEGE', 0, 0),

('RH HP Defence Team', 'UNITTYPE_ANTIAIR', 1, 1); -- GDR's are allowed / ships pvs 2 (now disabled)


INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
('RH HP Defence Team', 'UNITTYPE_RANGED', 							  0, 7), 

('RH HP Defence Team', 'UNITTYPE_SIEGE',  						      0, 1),
('RH HP Defence Team', 'UNITTYPE_SIEGE_ALL',  						  0, 1), -- testing
('RH HP Defence Team', 'UNITTYPE_NAVAL_MELEE',						  0, 0),
('RH HP Defence Team', 'UNITTYPE_NAVAL_RANGED',						  0, 1), -- Doesn't exist?
('RH HP Defence Team', 'UNITTYPE_CAVALRY',							  0, 3);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinPercentage, MaxPercentage) VALUES
('RH HP Defence Team', 'UNITTYPE_ANTIAIR_SUPPORT', 	0, 0.45),
('RH HP Defence Team', 'UNITTYPE_NAVAL_MELEE', 		0, 0),
('RH HP Defence Team', 'UNITTYPE_NAVAL', 				0, 0.3),
('RH HP Defence Team', 'UNITTYPE_CIVILIAN_LEADER',	 0, 0.25);


