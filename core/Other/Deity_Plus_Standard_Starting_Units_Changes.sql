

-- Diety ++ readding units after deletion in main file (for standard setting)

-- Already Deleted starting military units and spread them over the first era

/*
INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_WARRIOR', 'ERA_ANCIENT', 1, 'DISTRICT_CITY_CENTER', 1, 0, 1,  'DIFFICULTY_DEITY_PLUS', 0.5);
*/

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_WARRIOR', 'ERA_ANCIENT', 1, 'DISTRICT_CITY_CENTER', 1, 0, 1,  'DIFFICULTY_DEITY_PLUS', 0.5);

--INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
--VALUES ('UNIT_SLINGER', 'ERA_ANCIENT', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_DEITY_PLUS', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SLINGER', 'ERA_ANCIENT', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);

-- 1 Builder at Harbour to make up for deleted or delayed Warriors, helps AI improved a few tiles it normally leaves

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_BUILDER', 'ERA_ANCIENT', 1, 'DISTRICT_HARBOR', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);

--INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, --MinDifficulty, DifficultyDelta)
--VALUES ('UNIT_BUILDER', 'ERA_ANCIENT', 1, 'DISTRICT_DAM', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_BUILDER', 'ERA_ANCIENT', 1, 'DISTRICT_COMMERCIAL_HUB', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);




INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SETTLER', 'ERA_RENAISSANCE', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SETTLER', 'ERA_INDUSTRIAL', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SETTLER', 'ERA_MODERN', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SETTLER', 'ERA_ATOMIC', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SETTLER', 'ERA_INFORMATION', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_DEITY_PLUSPLUS', 0.5);



-- Defs Deity++ 7 Warriors, 4 Settlers, 3 Builders
-- Defs Deity+ 6 Warriors, 3 Settlers, 3 Builders
-- Defs Deity 5 Warriors, 3 Settlers, 2 Builders
-- Defs Immortal 4 Warriors, 2 Settlers, 2 Builders


