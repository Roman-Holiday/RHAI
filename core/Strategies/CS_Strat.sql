
-- Author RomanHoliday
-- City State Strat


REPLACE INTO AiListTypes (ListType) VALUES
('MinorUnits'),
('MinorYields'),

('MinorBuildings'),
('MinorProjects');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('MinorUnits', 'MINOR_CIV_DEFAULT_TRAIT', 'Units'),
('MinorYields', 'MINOR_CIV_DEFAULT_TRAIT', 'Yields'),

('MinorBuildings', 'MINOR_CIV_DEFAULT_TRAIT', 'Buildings'),
('MinorProjects', 'MINOR_CIV_DEFAULT_TRAIT', 'Projects');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MinorBuildings', 'BUILDING_WALLS', 1, 900), 
('MinorBuildings', 'BUILDING_CASTLE', 1, 900),
('MinorBuildings', 'BUILDING_STAR_FORT', 1, 900),

('MinorBuildings', 'BUILDING_GRANARY', 1, 900), -- Not Building at All
('MinorBuildings', 'BUILDING_WATER_MILL', 1, 900),

('MinorYields', 'YIELD_FOOD', 1, 200), -- pvs 75

('MinorYields', 'YIELD_PRODUCTION', 1, 100),
('MinorYields', 'YIELD_SCIENCE', 1, 100),
('MinorYields', 'YIELD_FAITH', 	 1, 100),
('MinorYields', 'YIELD_CULTURE', 1, 100),
('MinorYields', 'YIELD_GOLD', 	1, 100),

('MinorYields', 'YIELD_RH_UNDER_ATTACK', 1, 250),

('MinorYields', 'YIELD_RH_CITY_CENTRE', 1, 200),

--('MinorYields', 'YIELD_RH_CITY_STATE', 	1, 950),

('MinorCivUnitBuilds', 'PROMOTION_CLASS_AIR_FIGHTER', 1, 80), -- pvs 12
('MinorCivUnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 1, 40), -- pvs 0

('MinorCivUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 1, 12),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 1, 5),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 1, -9),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 15), -- pvs 16, 17
--('MinorCivUnitBuilds', 'PROMOTION_CLASS_MELEE', 1, 2),
('MinorCivUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, -34), -- pvs -40, -35, -32
('MinorCivUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 1, -62), -- pvs -50, -75
('MinorCivPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, 5),
('MinorCivPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 5),
('MinorCivPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, 10),
('MinorCivPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 100), -- pvs 25, 30
('MinorCivPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 0, -75), -- No production bonus, pvs -70
('MinorCivPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON',   0, -95), -- May as well build nuclear subs
('MinorCivPseudoYields', 'PSEUDOYIELD_HAPPINESS',   1, 15),
('MinorCivPseudoYields', 'PSEUDOYIELD_ENVIRONMENT',   1, 10),
('MinorCivPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',   1, 50), -- pvs 15, 0

('MinorCivPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   0, -20),
('MinorCivPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 5),
('MinorCivPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL',   1, 10),
('MinorCivPseudoYields', 'PSEUDOYIELD_GPP_GENERAL',   1, 20), -- Encampment Buildings, pvs 20

('MinorCivPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',   0, -20),
('MinorCivPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',   0, -10),

('MinorCivPseudoYields', 'PSEUDOYIELD_DISTRICT',   1, 40), -- builds nothing at -50, pvs -40, -45 (now combat higher, however better to build district than nothing), pvs -40, -15 didn't build enough districts

('MinorCivPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 50), -- pvs 20
('MinorCivPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 50), -- pvs 12, 18, 35
('MinorCivPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 15), -- pvs -5, 5
('MinorCivPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 200); -- pvs 17, 19, 21, 23, 36, 40

INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Favored, Value) VALUES
('MinorUnits', 'UNIT_BUILDER', 1, 30),
('MinorUnits', 'UNIT_ARCHER', 1, 60),
('MinorUnits', 'UNIT_CROSSBOWMAN', 1, 50), -- test
('MinorUnits', 'UNIT_KNIGHT', 1, 40),
('MinorUnits', 'UNIT_MUSKETMAN', 1, 40),

('MinorUnits', 'UNIT_FIELD_CANNON', 1, 70),
('MinorUnits', 'UNIT_MACHINE_GUN', 1, 70),

('MinorUnits', 'UNIT_BIPLANE', 1, 90),
('MinorUnits', 'UNIT_FIGHTER', 1, 90),
('MinorUnits', 'UNIT_BOMBER', 1, 90),
('MinorUnits', 'UNIT_JET_FIGHTER', 1, 100),
('MinorUnits', 'UNIT_JET_BOMBER', 1, 90),

('MinorUnits', 'UNIT_ANTIAIR_GUN', 1, 90), -- pvs 8, 16, 33, 65, 80
('MinorUnits', 'UNIT_MOBILE_SAM', 1, 90); -- pvs 65, 80


INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Favored, Value) VALUES
('MinorProjects', 'PROJECT_REPAIR_OUTER_DEFENSES', 1, 0), -- Already doing but adding anyway
('MinorProjects', 'PROJECT_MANHATTAN_PROJECT', 0, -100),
('MinorProjects', 'PROJECT_OPERATION_IVY',		0, -100);

-- Test
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'MinorProjects', ProjectType, 0, -100
FROM Projects
WHERE ProjectType LIKE 'PROJECT_ENHANCE_%'; -- All Enchancement Projects


-- Districts
DELETE FROM AiFavoredItems WHERE ListType = 'MinorCivDistricts' AND Item IN ('DISTRICT_AQUEDUCT', 'DISTRICT_ENTERTAINMENT_COMPLEX');
UPDATE AiFavoredItems SET Favored = 1 WHERE ListType = 'MinorCivDistricts' AND Item IN ('DISTRICT_AERODROME'); -- , 'DISTRICT_ENCAMPMENT'



-- Credit Thecrazyscotsman
-- Fixes no free Ancient Walls Bug on Deity in Multiplayer (City States get Walls at Classical Era)

INSERT INTO Types (Type, Kind)  VALUES
		('RH_MINOR_CIV_GRANT_WALLS_IN_CITY_IGNORE', 'KIND_MODIFIER');

INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType)  VALUES
		('RH_MINOR_CIV_GRANT_WALLS_IN_CITY_IGNORE', 'COLLECTION_PLAYER_CITIES', 'EFFECT_GRANT_BUILDING_IN_CITY_IGNORE');
	
	
-- Modifier


INSERT INTO TraitModifiers (TraitType, ModifierId)  VALUES
		('MINOR_CIV_DEFAULT_TRAIT', 'RH_MINOR_CIV_FREE_ANCIENT_WALLS');

INSERT INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId)	  VALUES
		('RH_MINOR_CIV_FREE_ANCIENT_WALLS', 'RH_MINOR_CIV_GRANT_WALLS_IN_CITY_IGNORE', 'RH_MINOR_CIV_IN_CLASSICAL_ERA_REQ_S', NULL);

INSERT INTO ModifierArguments (ModifierId, Name, Value)   VALUES
		('RH_MINOR_CIV_FREE_ANCIENT_WALLS', 'BuildingType', 'BUILDING_WALLS');


-- Requirements Set

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_MINOR_CIV_IN_CLASSICAL_ERA_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)  VALUES
		('RH_MINOR_CIV_IN_CLASSICAL_ERA_REQ_S', 'RH_MINOR_CIV_IN_CLASSICAL_ERA_REQ');


-- Requirements
INSERT INTO Requirements (RequirementId, RequirementType)  VALUES
		('RH_MINOR_CIV_IN_CLASSICAL_ERA_REQ', 'REQUIREMENT_PLAYER_ERA_AT_LEAST');

INSERT INTO RequirementArguments (RequirementId, Name, Value)  VALUES
		('RH_MINOR_CIV_IN_CLASSICAL_ERA_REQ', 'EraType', 'ERA_CLASSICAL');