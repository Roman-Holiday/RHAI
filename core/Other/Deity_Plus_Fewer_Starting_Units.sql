

-- Diety ++ fewer starting units


DELETE FROM MajorStartingUnits
WHERE Unit = 'UNIT_WARRIOR' and AiOnly = 1;

DELETE FROM MajorStartingUnits
WHERE Unit = 'UNIT_SCOUT' and AiOnly = 1;

DELETE FROM MajorStartingUnits
WHERE Unit = 'UNIT_SLINGER' and AiOnly = 1;

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_WARRIOR', 'ERA_ANCIENT', 1, 'DISTRICT_CITY_CENTER', 2, 0, 1,  'DIFFICULTY_DEITY_PLUS', 0.5);

--INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
--VALUES ('UNIT_WARRIOR', 'ERA_ANCIENT', 1, 'DISTRICT_CITY_CENTER', 1, 0, 1,  'DIFFICULTY_DEITY_PLUS', 0.5);

--INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
--VALUES ('UNIT_SLINGER', 'ERA_ANCIENT', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_DEITY_PLUS', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SLINGER', 'ERA_ANCIENT', 1, 'DISTRICT_HARBOR', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);

-- Builder at Harbour to make up for deleted or delayed Warriors

--INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
--VALUES ('UNIT_BUILDER', 'ERA_ANCIENT', 1, 'DISTRICT_HARBOR', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);



-- Deity++ Fewer -- 4 Warriors (3 extra), 3 Settlers, 2 Builders




-- Defs Deity++ 7 Warriors, 4 Settlers, 3 Builders
-- Defs Deity+ 6 Warriors, 3 Settlers, 3 Builders
-- Defs Deity 5 Warriors, 3 Settlers, 2 Builders
-- Defs Immortal 4 Warriors, 2 Settlers, 2 Builders


