
-- AUTHOR: ROMANHOLIDAY


UPDATE AiOperationDefs SET Priority = '4', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '17', MaxTargetDistInWorld = '17',  MinOddsOfSuccess = '0', MustHaveUnits = '-1' WHERE OperationName = 'Nuclear Assault' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT';

-- pvs -1, 25, 25
-- JB 15 Tile Range

UPDATE AiOperationDefs SET MustBeAtWar=0 WHERE OperationName = 'Nuclear Assault' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT';


-- Test

-- Bring Back Again, UI Bug

/*
INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES

('Nuclear Attack', 'UNITTYPE_NAVAL',     0, 0,				0, 0); 
*/

-- CLASS_NAVAL_RAIDER

-- RH Basil Attack Op Test

INSERT OR REPLACE INTO AiOperationTypes (OperationType, Value)
SELECT 'OP_RH_BASIL_ATTACK', MAX(Value)+1
FROM AiOperationTypes;


INSERT OR IGNORE INTO AiOperationDefs (OperationName, SelfStart, EnemyType, TargetType,TargetParameter, MinOddsOfSuccess,		BehaviorTree,		Priority,	MaxTargetDistInRegion,MaxTargetDistInArea,MaxTargetDistInWorld,MustHaveUnits,OperationType) VALUES 
		('RH Basil Attack OP',	1,	'WAR',		'TARGET_ENEMY_COMBAT_DISTRICT',				1, 				0,		'Siege City Assault',					3,							13,					10,					13,						4,'OP_RH_BASIL_ATTACK'); 

INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'RH Basil Attack OP');

-- Early City Assault slightly more useful -- Todo custom tree



INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('RH Basil Attack Team');
INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('RH Basil Attack Team','RH Basil Attack OP',		-50,	-50);



INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
('RH Basil Attack Team', 'UNITAI_COMBAT',           4, 11); 

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('RH Basil Attack Team', 'UNITTYPE_SIEGE',      	 0, 5, 0, 1),
('RH Basil Attack Team', 'UNITTYPE_SIEGE_ALL',       0, 5, 0, 1);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES

('RH Basil Attack Team', 'UNITTYPE_LAND_COMBAT',     0, 10,				0, 1), 
('RH Basil Attack Team', 'UNITTYPE_CIVILIAN',		   0, 0,				 0, 0), 
('RH Basil Attack Team', 'UNITAI_SETTLE',		   0, 0,				 0, 0), 

('RH Basil Attack Team', 'UNITTYPE_CIVILIAN_LEADER', 0, 2, 				0, 0.3), -- def doesn't exist



('RH Basil Attack Team', 'UNITTYPE_MELEE',           2, 10, 				0, 1),

('RH Basil Attack Team', 'UNITTYPE_CAVALRY',          3, 10, 				0, 1), -- pvs min 2

('RH Basil Attack Team', 'UNITTYPE_RANGED',          0, 4, 					0, 0.55),


('RH Basil Attack Team', 'UNITTYPE_AIR',             0, 3, 				0, 1),
--('RH Basil Attack Team', 'UNITTYPE_NUCLEAR',         0, 1, 			0, 0.25),
('RH Basil Attack Team', 'UNITTYPE_AIR_SIEGE',       0, 3, 				0, 1),

('RH Basil Attack Team', 'UNITTYPE_SIEGE_SUPPORT',   0, 2, 				0, 0.25);



