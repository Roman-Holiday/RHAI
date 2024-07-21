


-- Long Range City Assault


INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'RH LR ATTACK');


INSERT OR IGNORE INTO AiOperationDefs (OperationName,TargetType,TargetParameter, MinOddsOfSuccess, EnemyType, SelfStart, 	BehaviorTree,		Priority,	MaxTargetDistInRegion,MaxTargetDistInArea,MaxTargetDistInWorld,MustHaveUnits, OperationType) VALUES 
('RH LR ATTACK',						'TARGET_ENEMY_COMBAT_DISTRICT',		1,			0.6, 		'WAR', 		1, 			'Siege City Assault',		4,			-1,						21,					-1,						6, 'OP_RH_LONG_RANGE_ATTACK');

INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('RH LONG_RANGE Team');
INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('RH LONG_RANGE Team',				'RH LR ATTACK',			0,  1);


INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
('RH LONG_RANGE Team', 'UNITAI_COMBAT',           6, 11); 

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
--('RH LONG_RANGE Team', 'UNITTYPE_NAVAL',           3, 10, 				0.55, 1), 
--('RH LONG_RANGE Team', 'UNITTYPE_NAVAL_MELEE',     0, 3, 				0, 1), 
--('RH LONG_RANGE Team', 'UNITTYPE_NAVAL_SIEGE',     1, 6,				 0, 1), 
('RH LONG_RANGE Team', 'UNITTYPE_LAND_COMBAT',     0, 10,				0, 1), -- Was 0.5 Bruh
('RH LONG_RANGE Team', 'UNITTYPE_CIVILIAN',		0, 0,				0, 0), 
('RH LONG_RANGE Team', 'UNITTYPE_CIVILIAN_LEADER', 0, 2, 				0, 0.25), 
('RH LONG_RANGE Team', 'UNITTYPE_SIEGE_ALL',    	1, 6, 				0, 1), 
('RH LONG_RANGE Team', 'UNITTYPE_SIEGE',    		1, 6, 				0, 1), 
('RH LONG_RANGE Team', 'UNITTYPE_MELEE',           2, 6, 				0, 1),
('RH LONG_RANGE Team', 'UNITTYPE_AIR',             0, 0, 				0, 0.5), -- No Air Long Distance
('RH LONG_RANGE Team', 'UNITTYPE_NUCLEAR',         0, 1, 				0, 0.25),
('RH LONG_RANGE Team', 'UNITTYPE_AIR_SIEGE',       0, 1, 				0, 0.5), -- No Air Long Distance
('RH LONG_RANGE Team', 'UNITTYPE_RANGED',          1, 9, 				0, 0.75),
('RH LONG_RANGE Team', 'UNITTYPE_SIEGE_SUPPORT',   0, 2, 				0, 0.25);



INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('RH LONG_RANGE Team', 'UNITAI_SETTLE',           0, 0, 0, 0); -- no settlers game





/*
INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'RH FIGHTER ATTACK');


-- TARGET_HIGH_PRIORITY_UNIT, TARGET_AIR_UNIT

INSERT OR IGNORE INTO AiOperationDefs (OperationName,TargetType, 	TargetParameter, 	MinOddsOfSuccess, EnemyType, SelfStart, 	BehaviorTree,				Priority,	MaxTargetDistInRegion,MaxTargetDistInArea,MaxTargetDistInWorld,MustHaveUnits, OperationType) VALUES 
('RH FIGHTER ATTACK',						'TARGET_FRIENDLY_CITY',			1, 		0, 		'WAR', 		1, 			'Simple City Defense',		2,			-1,						7,					7,						1, 'OP_RH_FIGHTER_ATTACK');

INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('RH FIGHTER Team');
INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('RH FIGHTER Team',				'RH FIGHTER ATTACK',			-3,  0.5);


--INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
--('RH FIGHTER Team', 'UNITAI_COMBAT',           1, 2); 

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('RH FIGHTER Team', 'UNITTYPE_NAVAL',           0, 0, 				0, 0), 
('RH FIGHTER Team', 'UNITTYPE_LAND_COMBAT',     0, 0,				0, 0),
('RH FIGHTER Team', 'UNITTYPE_CIVILIAN',		0, 0,				0, 0), 
('RH FIGHTER Team', 'UNITTYPE_CIVILIAN_LEADER', 0, 0, 				0, 0), 
('RH FIGHTER Team', 'UNITAI_SETTLE',            0, 0, 				0, 0), 

('RH FIGHTER Team', 'UNITTYPE_SIEGE_ALL',    	0, 0, 				0, 0), 
('RH FIGHTER Team', 'UNITTYPE_SIEGE',    		0, 0, 				0, 0), 

('RH FIGHTER Team', 'UNITTYPE_AIR',             1, 2, 				0, 1), 

('RH FIGHTER Team', 'UNITTYPE_NUCLEAR',         0, 0, 				0, 0),
('RH FIGHTER Team', 'UNITTYPE_AIR_SIEGE',       0, 1, 				0, 1);


*/

--REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
--('BaseOperationsLimits',   'OP_RH_FIGHTER_ATTACK', 1);

--('PerWarOperationsLimits', 'OP_RH_GDR_ASSAULT', 1);



-- Nuclear Sub Test -- Temp Disabled


/*
INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'RH NS STEALTH');

INSERT OR IGNORE INTO AiOperationDefs (OperationName,TargetType, 		MinOddsOfSuccess, EnemyType, SelfStart, 	BehaviorTree,				Priority,	MaxTargetDistInRegion,MaxTargetDistInArea,MaxTargetDistInWorld,MustHaveUnits, OperationType) VALUES 
('RH NS STEALTH',						'TARGET_ENEMY_COMBAT_DISTRICT',		0, 		'WAR', 		1, 			'Nuclear Assault',		4,			-1,						25,					25,						1, 'OP_RH_NS_STEALTH');

INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('RH NS STEALTH Team');
INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('RH NS STEALTH Team',				'RH NS STEALTH',			-500,  -500);


INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
('RH NS STEALTH Team', 'UNITAI_COMBAT',           1, 6); 

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('RH NS STEALTH Team', 'UNITTYPE_NAVAL',           1, 6, 				1, 1), 

('RH NS STEALTH Team', 'UNITTYPE_LAND_COMBAT',     0, 0,				0, 0),
('RH NS STEALTH Team', 'UNITTYPE_CIVILIAN',			0, 0,				0, 0), 
('RH NS STEALTH Team', 'UNITTYPE_CIVILIAN_LEADER', 0, 0, 				0, 0), 
('RH NS STEALTH Team', 'UNITAI_SETTLE',            0, 0, 				0, 0), 

('RH NS STEALTH Team', 'UNITTYPE_SIEGE_ALL',    	0, 0, 				0, 0), 
('RH NS STEALTH Team', 'UNITTYPE_SIEGE',    		0, 0, 				0, 0), 

('RH NS STEALTH Team', 'UNITTYPE_AIR',             0, 0, 				0, 0), 

('RH NS STEALTH Team', 'UNITTYPE_NUCLEAR',         1, 6, 				1, 1),
('RH NS STEALTH Team', 'UNITTYPE_AIR_SIEGE',       0, 0, 				0, 0);



REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('BaseOperationsLimits',   'OP_RH_NS_STEALTH', 1);

*/




-- Early Settle

/*
INSERT OR IGNORE INTO AllowedOperations (ListType, OperationDef) VALUES
('Default_List', 'RH Early Settle');

INSERT OR IGNORE INTO AiOperationDefs (OperationName,TargetType, 		MinOddsOfSuccess,  	BehaviorTree,				Priority,	MaxTargetDistInRegion,MaxTargetDistInArea,MaxTargetDistInWorld,MustHaveUnits, OperationType) VALUES 
('RH Early Settle',						'TARGET_SETTLE_LOCATION',		0, 	 		'Settle City Op',		4,			-1,						25,					25,						1, 'OP_RH_EARLY_SETTLE');

INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('RH Early Settle Team');
INSERT OR IGNORE INTO AiOperationTeams (TeamName,OperationName,InitialStrengthAdvantage,OngoingStrengthAdvantage) VALUES
('RH Early Settle Team',				'RH Early Settle',			-500,  -500);


INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
('RH Early Settle Team', 'UNITAI_COMBAT',           1, 3); 

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('RH Early Settle Team', 'UNITTYPE_NAVAL',           0, 0, 				0, 0), 

('RH Early Settle Team', 'UNITTYPE_LAND_COMBAT',     0, 0,				0, 1),
('RH Early Settle Team', 'UNITTYPE_CIVILIAN',			0, 0,				0, 0), 
('RH Early Settle Team', 'UNITTYPE_CIVILIAN_LEADER', 0, 0, 				0, 0), 
('RH Early Settle Team', 'UNITAI_SETTLE',            0, 1, 				0, 1), 

('RH Early Settle Team', 'UNITTYPE_SIEGE_ALL',    	0, 0, 				0, 0), 
('RH Early Settle Team', 'UNITTYPE_SIEGE',    		0, 0, 				0, 0), 

('RH Early Settle Team', 'UNITTYPE_AIR',             0, 0, 				0, 0), 

('RH Early Settle Team', 'UNITTYPE_NUCLEAR',         1, 6, 				1, 1),
('RH Early Settle Team', 'UNITTYPE_AIR_SIEGE',       0, 0, 				0, 0);



REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('BaseOperationsLimits',   'OP_RH_EARLY_SETTLE', 1);


*/




/*
Decode Trigger
    <Row DefnId="0" NodeId="1" TreeName="Settle City Op" Tag="Settler" />
    <Row DefnId="1" NodeId="1" TreeName="Settle City Op" />
    <Row DefnId="2" NodeId="1" TreeName="Settle City Op" />
    <Row DefnId="3" NodeId="1" TreeName="Settle City Op" />
    <Row DefnId="4" NodeId="1" TreeName="Settle City Op" />
    <Row DefnId="5" NodeId="1" TreeName="Settle City Op" />
    <Row DefnId="6" NodeId="1" TreeName="Settle City Op" />
    <Row DefnId="7" NodeId="1" TreeName="Settle City Op" />
    <Row DefnId="8" NodeId="1" TreeName="Settle City Op" Tag="Settler Worth" />
	
	Operation Change Target
    <Row DefnId="0" NodeId="4" TreeName="Settle City Op" DefaultData="-1.5" />
    <Row DefnId="1" NodeId="4" TreeName="Settle City Op" DefaultData="-3" />
	
	
    <Row DefnId="0" NodeId="7" TreeName="Settle City Op" Tag="SettlerUnitList" />
    <Row DefnId="2" NodeId="7" TreeName="Settle City Op" Tag="Settler" />
    <Row DefnId="3" NodeId="7" TreeName="Settle City Op" />
    <Row DefnId="4" NodeId="7" TreeName="Settle City Op" DefaultData="UNIT_SETTLER" />
	
	
	Contract Manager Decorator
    <Row DefnId="0" NodeId="9" TreeName="Settle City Op" Tag="Settler Build Contract" />
    <Row DefnId="1" NodeId="9" TreeName="Settle City Op" />
    <Row DefnId="2" NodeId="9" TreeName="Settle City Op" DefaultData="10" />
    <Row DefnId="3" NodeId="9" TreeName="Settle City Op" DefaultData="1" />
	
	
    <Row DefnId="0" NodeId="10" TreeName="Settle City Op" Tag="SettlerUnitList" />
    <Row DefnId="1" NodeId="10" TreeName="Settle City Op" />
    <Row DefnId="3" NodeId="10" TreeName="Settle City Op" DefaultData="0" />
    <Row DefnId="4" NodeId="10" TreeName="Settle City Op" Tag="Settler Build Contract" />
    <Row DefnId="6" NodeId="10" TreeName="Settle City Op" />
    <Row DefnId="8" NodeId="10" TreeName="Settle City Op" Tag="Settler Worth" />
    <Row DefnId="0" NodeId="11" TreeName="Settle City Op" Tag="Settler Build Contract" />
    <Row DefnId="1" NodeId="11" TreeName="Settle City Op" />
    <Row DefnId="2" NodeId="11" TreeName="Settle City Op" DefaultData="-1" />
    <Row DefnId="3" NodeId="11" TreeName="Settle City Op" DefaultData="false" />
    <Row DefnId="4" NodeId="11" TreeName="Settle City Op" DefaultData="5" />
    <Row DefnId="0" NodeId="12" TreeName="Settle City Op" DefaultData="2" />
    <Row DefnId="0" NodeId="13" TreeName="Settle City Op" DefaultData="0" />
    <Row DefnId="3" NodeId="13" TreeName="Settle City Op" DefaultData="false" />
    <Row DefnId="4" NodeId="13" TreeName="Settle City Op" Tag="Settler Worth" />
    <Row DefnId="0" NodeId="14" TreeName="Settle City Op" DefaultData="0" />
    <Row DefnId="1" NodeId="14" TreeName="Settle City Op" DefaultData="2" />
    <Row DefnId="2" NodeId="14" TreeName="Settle City Op" DefaultData="true" />
    <Row DefnId="3" NodeId="14" TreeName="Settle City Op" DefaultData="2" />
    <Row DefnId="0" NodeId="15" TreeName="Settle City Op" DefaultData="true" />
	
	-- Recruit Units
	
    <Row DefnId="0" NodeId="17" TreeName="Settle City Op" DefaultData="true" />
    <Row DefnId="3" NodeId="17" TreeName="Settle City Op" DefaultData="false" /> -- Creation
    <Row DefnId="4" NodeId="17" TreeName="Settle City Op" Tag="Settler Worth" />
	
	
    <Row DefnId="1" NodeId="18" TreeName="Settle City Op" DefaultData="UNITAI_COMBAT" />
    <Row DefnId="2" NodeId="18" TreeName="Settle City Op" DefaultData="UNITAI_SETTLE" />
    <Row DefnId="3" NodeId="18" TreeName="Settle City Op" />
    <Row DefnId="4" NodeId="18" TreeName="Settle City Op" />
    <Row DefnId="0" NodeId="19" TreeName="Settle City Op" DefaultData="true" />
    <Row DefnId="1" NodeId="19" TreeName="Settle City Op" DefaultData="false" />
    <Row DefnId="2" NodeId="19" TreeName="Settle City Op" DefaultData="false" />
    <Row DefnId="0" NodeId="20" TreeName="Settle City Op" DefaultData="0" />
    <Row DefnId="1" NodeId="20" TreeName="Settle City Op" DefaultData="2" />
    <Row DefnId="2" NodeId="20" TreeName="Settle City Op" DefaultData="false" />
    <Row DefnId="3" NodeId="20" TreeName="Settle City Op" DefaultData="1" />
    <Row DefnId="4" NodeId="20" TreeName="Settle City Op" DefaultData="UNITAI_SETTLE" />
    <Row DefnId="0" NodeId="22" TreeName="Settle City Op" DefaultData="0.5" />
    <Row DefnId="1" NodeId="22" TreeName="Settle City Op" DefaultData="-2" />
    <Row DefnId="2" NodeId="22" TreeName="Settle City Op" DefaultData="False" />
    <Row DefnId="3" NodeId="22" TreeName="Settle City Op" DefaultData="UNITAI_SETTLE" />
    <Row DefnId="0" NodeId="23" TreeName="Settle City Op" DefaultData="1" />
    <Row DefnId="4" NodeId="23" TreeName="Settle City Op" Tag="Settler Worth" />
    <Row DefnId="0" NodeId="24" TreeName="Settle City Op" DefaultData="true" />
    <Row DefnId="1" NodeId="24" TreeName="Settle City Op" DefaultData="false" />
    <Row DefnId="0" NodeId="25" TreeName="Settle City Op" DefaultData="1" />
    <Row DefnId="0" NodeId="26" TreeName="Settle City Op" DefaultData="1" />
    <Row DefnId="1" NodeId="26" TreeName="Settle City Op" DefaultData="0" />
    <Row DefnId="2" NodeId="26" TreeName="Settle City Op" DefaultData="false" />
    <Row DefnId="3" NodeId="26" TreeName="Settle City Op" DefaultData="-2" />
    <Row DefnId="4" NodeId="26" TreeName="Settle City Op" DefaultData="UNITAI_SETTLE" />
	
	
	    <Row NodeType="Concurrent" NodeId="0" TreeName="Settle City Op" JumpTo="28" />
    <Row NodeType="Decode Trigger" NodeId="1" TreeName="Settle City Op" />
    <Row NodeType="Operation Defend Units" NodeId="2" TreeName="Settle City Op" />
    <Row NodeType="Sequence" NodeId="3" TreeName="Settle City Op" JumpTo="28" />
    <Row NodeType="Operation Change Target" NodeId="4" TreeName="Settle City Op" />
    <Row NodeType="Concurrent" NodeId="5" TreeName="Settle City Op" JumpTo="15" />
    <Row NodeType="Priority" NodeId="6" TreeName="Settle City Op" JumpTo="15" />
    <Row NodeType="Find Available Unit" NodeId="7" TreeName="Settle City Op" />
    <Row NodeType="Concurrent" NodeId="8" TreeName="Settle City Op" JumpTo="15" />
    <Row NodeType="Contract Manager Decorator" NodeId="9" TreeName="Settle City Op" JumpTo="11" />
    <Row NodeType="Build Unit" NodeId="10" TreeName="Settle City Op" />
    <Row NodeType="Contract Manager Decorator" NodeId="11" TreeName="Settle City Op" JumpTo="15" />
    <Row NodeType="Concurrent" NodeId="12" TreeName="Settle City Op" JumpTo="15" />
    <Row NodeType="Recruit Units" NodeId="13" TreeName="Settle City Op" />
    <Row NodeType="Operation Move" NodeId="14" TreeName="Settle City Op" />
    <Row NodeType="Lock Units" NodeId="15" TreeName="Settle City Op" />
    <Row NodeType="Concurrent" NodeId="16" TreeName="Settle City Op" JumpTo="21" />
    <Row NodeType="Recruit Units" NodeId="17" TreeName="Settle City Op" />
    <Row NodeType="Make Formation" NodeId="18" TreeName="Settle City Op" />
    <Row NodeType="Operation Attack Units" NodeId="19" TreeName="Settle City Op" />
    <Row NodeType="Operation Move" NodeId="20" TreeName="Settle City Op" />
    <Row NodeType="Concurrent" NodeId="21" TreeName="Settle City Op" JumpTo="27" />
    <Row NodeType="Operation Change Target" NodeId="22" TreeName="Settle City Op" />
    <Row NodeType="Recruit Units" NodeId="23" TreeName="Settle City Op" />
    <Row NodeType="Operation Attack Units" NodeId="24" TreeName="Settle City Op" />
    <Row NodeType="Operation Naval Escort" NodeId="25" TreeName="Settle City Op" />
    <Row NodeType="Operation Move" NodeId="26" TreeName="Settle City Op" />
    <Row NodeType="Settle" NodeId="27" TreeName="Settle City Op" />
*/