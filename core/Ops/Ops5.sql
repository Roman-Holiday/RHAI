
-- AUTHOR: ROMANHOLIDAY


-- Ops 5. Walled City / Naval Attack Force

-- CITY ATTACK FORCE (WALLED)

UPDATE AiOperationTeams SET InitialStrengthAdvantage = 0.9, OngoingStrengthAdvantage = 1.3 WHERE TeamName = 'City Attack Force' AND OperationName = 'Attack Walled City'; -- int pvs 0.9, ongoing now 1.5 instead of 1.6 -- int 0.8 too low

-- pvs 0.9, 1.5

-- def 2, 4
UPDATE AiOperationTeams SET InitialStrengthAdvantage = 0.1, OngoingStrengthAdvantage = 0.1 WHERE TeamName = 'City Attack Force' AND OperationName = 'Wartime Attack Walled City'; -- pvs 0.3, 0.5
-- def 1, 6

-- pvs 0.3, 0.8

UPDATE OpTeamRequirements SET MinNumber = 5, MaxNumber = 12 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITAI_COMBAT'; -- Def MinNumber=5 MaxNumber=16, increasing from 14 to 15 -- back to 6
UPDATE OpTeamRequirements SET MinNumber = 3, MaxNumber = 8 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_MELEE'; -- pvs 5, 6, 5, min 2
UPDATE OpTeamRequirements SET MinNumber = 1, MaxNumber = 7 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_RANGED'; -- pvs 6 --def min 1
--UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 4 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_CAVALRY';
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 4 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_AIR'; -- pvs max 5
UPDATE OpTeamRequirements SET MinNumber = 3, MaxNumber = 5 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_SIEGE'; -- Max back to 4, now 5 again (reduced to 1 as the AI will have multiple ops running at the same time) -- testing min 3
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 0 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_CIVILIAN';
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 2 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_CIVILIAN_LEADER'; -- testing 2
--UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 0 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITAI_SETTLE'; -- Is unitai correct? Could be be just UNIT_SETTLER
UPDATE OpTeamRequirements SET MinNumber = 2, MaxNumber = 6 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_SIEGE_ALL'; -- def max 1 lol -- pvs 4 -- testing 2-6 (needs min 2 to build 2)
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 3 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_AIR_SIEGE'; -- def min 0, max 1
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 2 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_SIEGE_SUPPORT'; -- def 0-2, pvs 4 (too much)

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
('City Attack Force', 'UNITTYPE_ANTIAIR_SUPPORT',      0, 0); -- only antiair guns
--('City Attack Force', 'UNITAI_SETTLE',        0, 0),
--('City Attack Force', 'UNITTYPE_NUCLEAR',      0, 0);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinPercentage, MaxPercentage) VALUES
('City Attack Force', 'UNITTYPE_CIVILIAN_LEADER', 0, 0.25),
('City Attack Force', 'UNITTYPE_CIVILIAN', 0, 0.3),
('City Attack Force', 'UNITTYPE_SIEGE_ALL', 0, 1), -- Includes GDR's
--('City Attack Force', 'UNITTYPE_RANGED', 0, 0.75), -- May break GDR's?
('City Attack Force', 'UNITTYPE_SIEGE_SUPPORT', 0, 0.25);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber, MinPercentage, MaxPercentage) VALUES
('City Attack Force', 'UNITTYPE_BOMBARD_SUPPORT',  0, 2, 0, 0.25);


-- NAVAL CITY ATTACK FORCE (UNWALLED)

UPDATE AiOperationTeams SET InitialStrengthAdvantage = -7, OngoingStrengthAdvantage = 1.4 WHERE TeamName = 'City Naval Attack Force' AND OperationName = 'Attack Enemy City'; 
-- def -5, 2
UPDATE AiOperationTeams SET InitialStrengthAdvantage = -10, OngoingStrengthAdvantage = 0.2 WHERE TeamName = 'City Naval Attack Force' AND OperationName = 'Wartime Attack Enemy City';
-- def -5, 2

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber, MinPercentage, MaxPercentage) VALUES
('City Naval Attack Force', 'UNITTYPE_LAND_COMBAT',  0, 4, 0, 0.4);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinNumber, MaxNumber) VALUES
('City Naval Attack Force', 'UNITAI_COMBAT',  				6, 14), -- testing min 6
('City Naval Attack Force', 'UNITAI_SETTLE',  				0, 0),
('City Naval Attack Force', 'UNITTYPE_NUCLEAR', 			 0, 0), -- testing 2 (todo new unit type nuclear sub)
('City Naval Attack Force', 'UNITTYPE_AIR_SIEGE', 			 0, 2),
('City Naval Attack Force', 'UNITTYPE_CIVILIAN',  			0, 0),
('City Naval Attack Force', 'UNITTYPE_SIEGE_ALL', 			0, 3); -- Should include bombers -- testing max 3


INSERT OR IGNORE INTO OpTeamRequirements (TeamName, AiType, MinPercentage, MaxPercentage) VALUES
('City Naval Attack Force', 'UNITTYPE_CIVILIAN_LEADER', 0, 0.25),
--('City Naval Attack Force', 'UNITTYPE_CIVILIAN', 0, 0.35),
('City Naval Attack Force', 'UNITTYPE_SIEGE_ALL', 0, 0.55),
('City Naval Attack Force', 'UNITTYPE_RANGED', 0, 0.75),
('City Naval Attack Force', 'UNITTYPE_SIEGE_SUPPORT', 0, 0.25);


UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 2 WHERE TeamName = 'City Naval Attack Force' AND AiType = 'UNITTYPE_CIVILIAN_LEADER'; -- Already set -- def max 1
UPDATE OpTeamRequirements SET MinNumber = 3, MaxNumber = 12, MinPercentage = 0.6, MaxPercentage = 1  WHERE TeamName = 'City Naval Attack Force' AND AiType = 'UNITTYPE_NAVAL'; 
UPDATE OpTeamRequirements SET MinNumber = 2, MaxNumber = 7                      WHERE TeamName = 'City Naval Attack Force' AND AiType = 'UNITTYPE_MELEE'; -- pvs max 6
UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 7                      WHERE TeamName = 'City Naval Attack Force' AND AiType = 'UNITTYPE_RANGED'; -- unwalled so 0


/*
    <Row TeamName="City Naval Attack Force" AiType="UNITTYPE_NAVAL" MinPercentage="1" />
    <Row TeamName="City Naval Attack Force" AiType="UNITTYPE_MELEE" MinNumber="0" />
    <Row TeamName="City Naval Attack Force" AiType="UNITTYPE_RANGED" MinNumber="0" />
    <Row TeamName="City Naval Attack Force" AiType="UNITTYPE_CIVILIAN_LEADER" MaxNumber="1" />
*/


-- NAVAL CITY ATTACK FORCE (WALLED)

INSERT OR IGNORE INTO AiTeams (TeamName) VALUES
('Walled City Naval Attack Force');

UPDATE  AiOperationTeams SET TeamName = 'Walled City Naval Attack Force', InitialStrengthAdvantage = -5, OngoingStrengthAdvantage = 1.5 WHERE OperationName = 'Attack Walled City'         AND Condition = 'IsCoastalTarget'; -- pvs -5, 1.6
UPDATE  AiOperationTeams SET TeamName = 'Walled City Naval Attack Force', InitialStrengthAdvantage = -7, OngoingStrengthAdvantage = 0.5 WHERE OperationName = 'Wartime Attack Walled City' AND Condition = 'IsCoastalTarget'; -- pvs -6, 1.2
-- def -5, 3
-- bugged with same name by default


INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
('Walled City Naval Attack Force', 'UNITAI_COMBAT',           6, 12); -- pvs min 7, max 15

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('Walled City Naval Attack Force', 'UNITTYPE_SIEGE_ALL',       0, 5, 0, 1);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('Walled City Naval Attack Force', 'UNITTYPE_NAVAL',           3, 10, 				0.55, 1), -- min 3 ships, pvs 2
('Walled City Naval Attack Force', 'UNITTYPE_NAVAL_MELEE',     0, 3, 				0, 1), 
('Walled City Naval Attack Force', 'UNITTYPE_NAVAL_SIEGE',     1, 6,				 0, 1), 
('Walled City Naval Attack Force', 'UNITTYPE_LAND_COMBAT',     0, 6,				0, 0.45), 
('Walled City Naval Attack Force', 'UNITTYPE_CIVILIAN',		   0, 0,				 0, 0), 
('Walled City Naval Attack Force', 'UNITTYPE_CIVILIAN_LEADER', 0, 2, 				0, 0.3), -- def doesn't exist
--('Walled City Naval Attack Force', 'UNITTYPE_SIEGE_ALL',     0, 4, 				0, 1), -- already above
('Walled City Naval Attack Force', 'UNITTYPE_MELEE',           2, 6, 				0, 1),
('Walled City Naval Attack Force', 'UNITTYPE_AIR',             0, 3, 				0, 1),
('Walled City Naval Attack Force', 'UNITTYPE_NUCLEAR',         0, 3, 				0, 0.5),
('Walled City Naval Attack Force', 'UNITTYPE_AIR_SIEGE',       0, 3, 				0, 1),
('Walled City Naval Attack Force', 'UNITTYPE_RANGED',          2, 9, 				0, 0.75),
('Walled City Naval Attack Force', 'UNITTYPE_SIEGE_SUPPORT',   0, 2, 				0, 0.25);

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('Walled City Naval Attack Force', 'UNITAI_SETTLE',           0, 0, 0, 0); -- no settlers game


-- AID ALLY ATTACK FORCE

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('Aid Ally Attack Force', 'UNITTYPE_NUCLEAR',           0, 0, 0, 0); -- no nuclear -- unittype air is set to 0 already

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber) VALUES
('Aid Ally Attack Force', 'UNITAI_COMBAT',       			 1, 14), -- def doesn't exist
('Aid Ally Attack Force', 'UNITTYPE_SIEGE_SUPPORT',      	  0, 2), -- def 0
('Aid Ally Attack Force', 'UNITTYPE_CIVILIAN_LEADER',     	   0, 2); -- Def 0

INSERT OR IGNORE INTO OpTeamRequirements (TeamName,AiType,MinNumber,MaxNumber,MinPercentage,MaxPercentage) VALUES
('Aid Ally Attack Force', 'UNITTYPE_SIEGE_ALL',           1, 4, 0, 0.5); 

UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 4 WHERE TeamName = 'Aid Ally Attack Force' AND AiType = 'UNITTYPE_SIEGE'; -- Def max 2

UPDATE OpTeamRequirements SET MinNumber = 1, MaxNumber = 10 WHERE TeamName = 'Aid Ally Attack Force' AND AiType = 'UNITTYPE_MELEE'; -- def min 0, max -, pvs min 0

/*
Defs:
    <Row TeamName="Aid Ally Attack Force" AiType="UNITTYPE_MELEE" MinNumber="0" />
    <Row TeamName="Aid Ally Attack Force" AiType="UNITTYPE_RANGED" MinNumber="0" />
    <Row TeamName="Aid Ally Attack Force" AiType="UNITTYPE_CIVILIAN" MaxNumber="0" />
    <Row TeamName="Aid Ally Attack Force" AiType="UNITTYPE_SIEGE" MaxNumber="2" />
    <Row TeamName="Aid Ally Attack Force" AiType="UNITTYPE_AIR" MaxNumber="0" />
	
	--
*/



