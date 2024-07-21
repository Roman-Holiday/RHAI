-- AUTHOR: ROMANHOLIDAY

-- Ops 7


INSERT OR IGNORE INTO AiFavoredItems(ListType, Item, Value) VALUES
('BaseOperationsLimits',   'OP_PILLAGE', 1),
('PerWarOperationsLimits', 'OP_PILLAGE', 1);



--INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
--('BaseOperationsLimits',   'OP_BLITZ', 1); -- Temp Disable for more Bomber Availiity 

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('DarwinistEnjoysWarOperations');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('DarwinistEnjoysWarOperations', 		'TRAIT_AGENDA_ENJOYS_WAR', 			'AiOperationTypes');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DarwinistEnjoysWarOperations', 'OP_BLITZ', 1, 1);

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AirPowerOperations');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('AirPowerOperations', 		'TRAIT_AGENDA_PREFER_AIRPOWER', 			'AiOperationTypes');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AirPowerOperations', 'OP_BLITZ', 1, 2); -- pvs 1


-- GDR Assault



INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'RH GDR ATTACK');

INSERT OR IGNORE INTO AiOperationDefs (OperationName,TargetType,TargetParameter, MinOddsOfSuccess, EnemyType,  SelfStart, 	BehaviorTree,		Priority,	MaxTargetDistInRegion,MaxTargetDistInArea,MaxTargetDistInWorld,MustHaveUnits,OperationType) VALUES 
('RH GDR ATTACK',				'TARGET_ENEMY_COMBAT_DISTRICT',				1,	     0, 			'WAR',		1, 			'Siege City Assault',	4,		26,						26,					25,						1,'OP_RH_GDR_ASSAULT');

INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('RH GDR Team');
INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('RH GDR Team',				'RH GDR ATTACK',			-10,-10);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
--('RH GDR Team', 'UNITTYPE_CIVILIAN', 0, 0),
--('RH GDR Team', 'UNITTYPE_LAND_COMBAT', 0, 0),
--('RH GDR Team', 'UNITTYPE_NAVAL', 0, 0),
--('RH GDR Team', 'UNITAI_COMBAT', 0, 5),
('RH GDR Team', 'UNITTYPE_AIR_SIEGE', 0, 0),
('RH GDR Team', 'UNITTYPE_RH_GDR',  1, 5), 
('RH GDR Team', 'UNITTYPE_AIR', 0, 0);


REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('BaseOperationsLimits',   'OP_RH_GDR_ASSAULT', 2),
('PerWarOperationsLimits', 'OP_RH_GDR_ASSAULT', 1);



-- Aggressive City Assault

INSERT OR REPLACE INTO AiOperationTypes (OperationType, Value)
SELECT 'OP_RH_AGR_ATTACK', MAX(Value)+1
FROM AiOperationTypes;

--REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
--('BaseOperationsLimits',   'OP_RH_AGR_ATTACK', 1),
--('PerWarOperationsLimits', 'OP_RH_AGR_ATTACK', 1);

INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'RH AGR ATTACK');

INSERT OR IGNORE INTO AiOperationDefs (OperationName,TargetType,TargetParameter, MinOddsOfSuccess, EnemyType, SelfStart, 	BehaviorTree,		Priority,	MaxTargetDistInRegion,MaxTargetDistInArea,MaxTargetDistInWorld,MustHaveUnits,OperationType) VALUES 
('RH AGR ATTACK',		'TARGET_ENEMY_COMBAT_DISTRICT',					1,				0.2, 		'WAR',		 1, 	'Siege City Assault',		4,			-1,						13,					13,						5,'OP_RH_AGR_ATTACK');

INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('RH AGR Team');
INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('RH AGR Team',				'RH AGR ATTACK',			-5,-5);


INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
('RH AGR Team', 'UNITAI_COMBAT',           5, 11); -- pvs min 7

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
--('RH AGR Team', 'UNITTYPE_NAVAL',           3, 10, 				0.55, 1), 
--('RH AGR Team', 'UNITTYPE_NAVAL_MELEE',     0, 3, 				0, 1), 
--('RH AGR Team', 'UNITTYPE_NAVAL_SIEGE',     1, 6,				 0, 1), 
('RH AGR Team', 'UNITTYPE_LAND_COMBAT',     0, 10,				0, 1), -- Was 0.5 Bruh
('RH AGR Team', 'UNITTYPE_CIVILIAN',		0, 0,				0, 0), 
('RH AGR Team', 'UNITTYPE_CIVILIAN_LEADER', 0, 2, 				0, 0.25), 
('RH AGR Team', 'UNITTYPE_SIEGE_ALL',    	2, 6, 				0, 1), 
('RH AGR Team', 'UNITTYPE_SIEGE',    		2, 6, 				0, 1), 
('RH AGR Team', 'UNITTYPE_MELEE',           2, 6, 				0, 1),
('RH AGR Team', 'UNITTYPE_AIR',             0, 3, 				0, 1),
('RH AGR Team', 'UNITTYPE_NUCLEAR',         0, 1, 				0, 0.25),
('RH AGR Team', 'UNITTYPE_AIR_SIEGE',       0, 2, 				0, 1), -- pvs 1
('RH AGR Team', 'UNITTYPE_RANGED',          1, 9, 				0, 0.75),
('RH AGR Team', 'UNITTYPE_SIEGE_SUPPORT',   0, 2, 				0, 0.25);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('RH AGR Team', 'UNITAI_SETTLE',           0, 0, 0, 0); -- no settlers game







-- Nuclear Test

/*
INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AtomicCityBuilds');
INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('AtomicCityBuilds', 'CityEvents');
INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_ATOMIC_CHANGES', 'AtomicCityBuilds');
*/

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, StringVal) VALUES
('AtomicCityBuilds', 'CITY_UNDER_THREAT', 'Nuclear Assault');


--CITY_EVENT_DEFAULT, CITY_UNDER_THREAT

/*
INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('InfoCityBuilds');
INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('InfoCityBuilds', 'CityEvents');
INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_INFORMATION_CHANGES', 'InfoCityBuilds');
*/

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, StringVal) VALUES
('InfoCityBuilds', 'CITY_EVENT_DEFAULT', 'Nuclear Assault');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, StringVal) VALUES
('InfoCityBuilds', 'CITY_UNDER_THREAT', 'Nuclear Assault');
