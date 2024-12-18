
-- RH Extended Wonder Strat
-- Author: RomanHoliday
-- DateCreated: 1/19/2024 22:36:04 PM
-- Copyright 2024,© RomanHoliday, All rights reserved


-- Temple ARTEMIS

INSERT INTO Tags (Tag, Vocabulary) VALUES
('CLASS_TEMPLE_ARTEMIS', 'RESOURCE_CLASS');

INSERT INTO TypeTags (Type, Tag) SELECT ResourceType, 'CLASS_TEMPLE_ARTEMIS' FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_CAMP'; 
INSERT INTO TypeTags (Type, Tag) SELECT ResourceType, 'CLASS_TEMPLE_ARTEMIS' FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_PASTURE';
INSERT INTO TypeTags (Type, Tag) SELECT ResourceType, 'CLASS_TEMPLE_ARTEMIS' FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_PLANTATION';




-- Todo, Select Statement

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_TEMPLE_ARTEMIS', 'TEMPLE_ARTEMIS_RESOURCES_PRODUCTION_AI'); -- pvs 20


INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES

('TEMPLE_ARTEMIS_RESOURCES_PRODUCTION_AI',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',          'RH_AI_ANCIENT_ONLY_REQ_S'),
('TEMPLE_ARTEMIS_RESOURCES_PRODUCTION_AI_MODIFIER', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',  'REQUIREMENTS_TEMPLE_ARTEMIS_RESOURCES');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('TEMPLE_ARTEMIS_RESOURCES_PRODUCTION_AI', 'ModifierId', 'TEMPLE_ARTEMIS_RESOURCES_PRODUCTION_AI_MODIFIER'),
('TEMPLE_ARTEMIS_RESOURCES_PRODUCTION_AI_MODIFIER', 'YieldType', 'YIELD_FOOD'),
('TEMPLE_ARTEMIS_RESOURCES_PRODUCTION_AI_MODIFIER', 'Amount',    '5');

-- Could be amenity?

-- Requirement: plot has a resource with a specific tag
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)		 VALUES ('REQUIREMENTS_TEMPLE_ARTEMIS_RESOURCES', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_TEMPLE_ARTEMIS_RESOURCES', 'RH_PLAYER_AT_ANCIENT_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_TEMPLE_ARTEMIS_RESOURCES', 'RH_PLAYER_NOT_MEDIEVAL_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_TEMPLE_ARTEMIS_RESOURCES', 'REQUIRES_RH_HAS_CIVIC_DEFENSE');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_TEMPLE_ARTEMIS_RESOURCES', 'REQUIRES_PLOT_HAS_TAG_TEMPLE_ARTEMIS');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_TEMPLE_ARTEMIS_RESOURCES', 'REQUIRES_PLAYER_IS_AI');

INSERT INTO Requirements (RequirementId, RequirementType)				 VALUES ('REQUIRES_PLOT_HAS_TAG_TEMPLE_ARTEMIS',  'REQUIREMENT_PLOT_RESOURCE_TAG_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)			 VALUES ('REQUIRES_PLOT_HAS_TAG_TEMPLE_ARTEMIS',  'Tag', 'CLASS_TEMPLE_ARTEMIS');




-- BUILDING_RUHR_VALLEY



INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_RUHR_VALLEY', 'RUHR_VALLEY_RESOURCES_PRODUCTION_AI'); -- pvs 20


INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES

('RUHR_VALLEY_RESOURCES_PRODUCTION_AI',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',          'RH_AI_ANCIENT_ONLY_REQ_S'),
('RUHR_VALLEY_RESOURCES_PRODUCTION_AI_MODIFIER', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',  'REQUIREMENTS_RUHR_VALLEY_RESOURCES');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('RUHR_VALLEY_RESOURCES_PRODUCTION_AI', 'ModifierId', 'RUHR_VALLEY_RESOURCES_PRODUCTION_AI_MODIFIER'),
('RUHR_VALLEY_RESOURCES_PRODUCTION_AI_MODIFIER', 'YieldType', 'YIELD_PRODUCTION'),
('RUHR_VALLEY_RESOURCES_PRODUCTION_AI_MODIFIER', 'Amount',    '3');

-- Requirement: plot has a resource with a specific tag
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)		 VALUES ('REQUIREMENTS_RUHR_VALLEY_RESOURCES', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_RUHR_VALLEY_RESOURCES', 'RH_PLAYER_AT_ANCIENT_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_RUHR_VALLEY_RESOURCES', 'RH_PLAYER_NOT_MEDIEVAL_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_RUHR_VALLEY_RESOURCES', 'REQUIRES_RH_HAS_CIVIC_DEFENSE');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_RUHR_VALLEY_RESOURCES', 'RH_REQUIRES_PLOT_MINE');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_RUHR_VALLEY_RESOURCES', 'REQUIRES_PLAYER_IS_AI');
-- Could Test Within 7 tiles?


INSERT INTO Requirements (RequirementId, RequirementType)				 VALUES ('RH_REQUIRES_PLOT_MINE',  'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)			 VALUES ('RH_REQUIRES_PLOT_MINE',  'ImprovementType', 'IMPROVEMENT_MINE'); 



-- Torre de Belém -- Requires not on Home Continent?




-- Biosphère -- +200% Power for all Offshore Wind Farms, Solar Farms, Wind Farms, Geothermal Plants, and Hydroelectric Dams. This building and these improvements provide Tourism equal to their Power.
-- +1 Appeal to tiles adjacent to Rainforest and Marsh in your empire.


-- Wind Farm

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_BIOSPHERE', 'BIOSPHERE_RH_IMPROVEMENT_WF'); -- pvs 20


INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('BIOSPHERE_RH_IMPROVEMENT_WF',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',          'RH_AI_ANCIENT_ONLY_REQ_S'),
('BIOSPHERE_RH_IMPROVEMENT_WF_MODIFIER', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',  'REQUIREMENTS_WIND_FARM_RESOURCES');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('BIOSPHERE_RH_IMPROVEMENT_WF', 'ModifierId', 'BIOSPHERE_RH_IMPROVEMENT_WF_MODIFIER'),
('BIOSPHERE_RH_IMPROVEMENT_WF_MODIFIER', 'YieldType', 'YIELD_CULTURE'), -- Todo Culture Victory Yield
('BIOSPHERE_RH_IMPROVEMENT_WF_MODIFIER', 'Amount',    '8');


-- Requirements
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)		 VALUES ('REQUIREMENTS_WIND_FARM_RESOURCES', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_WIND_FARM_RESOURCES', 'RH_PLAYER_AT_ANCIENT_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_WIND_FARM_RESOURCES', 'RH_PLAYER_NOT_MEDIEVAL_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_WIND_FARM_RESOURCES', 'REQUIRES_RH_HAS_CIVIC_DEFENSE');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_WIND_FARM_RESOURCES', 'RH_REQUIRES_PLOT_WIND_FARM');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_WIND_FARM_RESOURCES', 'REQUIRES_PLAYER_IS_AI');


-- New Argument
INSERT INTO Requirements (RequirementId, RequirementType)				 VALUES ('RH_REQUIRES_PLOT_WIND_FARM',  'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)			 VALUES ('RH_REQUIRES_PLOT_WIND_FARM',  'ImprovementType', 'IMPROVEMENT_WIND_FARM'); -- pvs CLASS_BIOSPHERE



-- IMPROVEMENT_OFFSHORE_WIND_FARM

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_BIOSPHERE', 'BIOSPHERE_RH_IMPROVEMENT_OFFSHORE_WIND_FARM'); -- pvs 20


INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('BIOSPHERE_RH_IMPROVEMENT_OFFSHORE_WIND_FARM',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',          'RH_AI_ANCIENT_ONLY_REQ_S'),
('BIOSPHERE_RH_IMPROVEMENT_OFFSHORE_WIND_FARM_MODIFIER', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',  'REQUIREMENTS_OFFSHORE_WIND_FARM_IMPROVEMENT');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('BIOSPHERE_RH_IMPROVEMENT_OFFSHORE_WIND_FARM', 'ModifierId', 'BIOSPHERE_RH_IMPROVEMENT_OFFSHORE_WIND_FARM_MODIFIER'),
('BIOSPHERE_RH_IMPROVEMENT_OFFSHORE_WIND_FARM_MODIFIER', 'YieldType', 'YIELD_CULTURE'), -- Todo Culture Victory Yield
('BIOSPHERE_RH_IMPROVEMENT_OFFSHORE_WIND_FARM_MODIFIER', 'Amount',    '8');


-- Requirements
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)		 VALUES ('REQUIREMENTS_OFFSHORE_WIND_FARM_IMPROVEMENT', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_OFFSHORE_WIND_FARM_IMPROVEMENT', 'RH_PLAYER_AT_ANCIENT_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_OFFSHORE_WIND_FARM_IMPROVEMENT', 'RH_PLAYER_NOT_CLASSICAL_ERA');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_OFFSHORE_WIND_FARM_IMPROVEMENT', 'RH_REQUIRES_PLOT_IMPROVEMENT_OFFSHORE_WIND_FARM');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_OFFSHORE_WIND_FARM_IMPROVEMENT', 'REQUIRES_PLAYER_IS_AI');

-- New Argument
INSERT INTO Requirements (RequirementId, RequirementType)				 VALUES ('RH_REQUIRES_PLOT_IMPROVEMENT_OFFSHORE_WIND_FARM',  'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)			 VALUES ('RH_REQUIRES_PLOT_IMPROVEMENT_OFFSHORE_WIND_FARM',  'ImprovementType', 'IMPROVEMENT_OFFSHORE_WIND_FARM');




-- Geothermal

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_BIOSPHERE', 'BIOSPHERE_RH_IMPROVEMENT_GEOTHERMAL_PLANT'); -- pvs 20


INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('BIOSPHERE_RH_IMPROVEMENT_GEOTHERMAL_PLANT',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',          'RH_AI_ANCIENT_ONLY_REQ_S'),
('BIOSPHERE_RH_IMPROVEMENT_GEOTHERMAL_PLANT_MODIFIER', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',  'REQUIREMENTS_GEOTHERMAL_PLANT_IMPROVEMENT');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('BIOSPHERE_RH_IMPROVEMENT_GEOTHERMAL_PLANT', 'ModifierId', 'BIOSPHERE_RH_IMPROVEMENT_GEOTHERMAL_PLANT_MODIFIER'),
('BIOSPHERE_RH_IMPROVEMENT_GEOTHERMAL_PLANT_MODIFIER', 'YieldType', 'YIELD_CULTURE'), -- Todo Culture Victory Yield
('BIOSPHERE_RH_IMPROVEMENT_GEOTHERMAL_PLANT_MODIFIER', 'Amount',    '8');


-- Requirements
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)		 VALUES ('REQUIREMENTS_GEOTHERMAL_PLANT_IMPROVEMENT', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_GEOTHERMAL_PLANT_IMPROVEMENT', 'RH_PLAYER_AT_ANCIENT_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_GEOTHERMAL_PLANT_IMPROVEMENT', 'RH_PLAYER_NOT_CLASSICAL_ERA');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_GEOTHERMAL_PLANT_IMPROVEMENT', 'RH_REQUIRES_PLOT_IMPROVEMENT_GEOTHERMAL_PLANT');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_GEOTHERMAL_PLANT_IMPROVEMENT', 'REQUIRES_PLAYER_IS_AI');

-- New Argument
INSERT INTO Requirements (RequirementId, RequirementType)				 VALUES ('RH_REQUIRES_PLOT_IMPROVEMENT_GEOTHERMAL_PLANT',  'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)			 VALUES ('RH_REQUIRES_PLOT_IMPROVEMENT_GEOTHERMAL_PLANT',  'ImprovementType', 'IMPROVEMENT_GEOTHERMAL_PLANT');



-- Solar Farm

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_BIOSPHERE', 'BIOSPHERE_RH_IMPROVEMENT_SOLAR_FARM'); -- pvs 20


INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('BIOSPHERE_RH_IMPROVEMENT_SOLAR_FARM',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',          'RH_AI_ANCIENT_ONLY_REQ_S'),
('BIOSPHERE_RH_IMPROVEMENT_SOLAR_FARM_MODIFIER', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',  'REQUIREMENTS_SOLAR_FARM_IMPROVEMENT');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('BIOSPHERE_RH_IMPROVEMENT_SOLAR_FARM', 'ModifierId', 'BIOSPHERE_RH_IMPROVEMENT_SOLAR_FARM_MODIFIER'),
('BIOSPHERE_RH_IMPROVEMENT_SOLAR_FARM_MODIFIER', 'YieldType', 'YIELD_CULTURE'), -- Todo Culture Victory Yield
('BIOSPHERE_RH_IMPROVEMENT_SOLAR_FARM_MODIFIER', 'Amount',    '8');


-- Requirements
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)		 VALUES ('REQUIREMENTS_SOLAR_FARM_IMPROVEMENT', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_SOLAR_FARM_IMPROVEMENT', 'RH_PLAYER_AT_ANCIENT_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_SOLAR_FARM_IMPROVEMENT', 'RH_PLAYER_NOT_CLASSICAL_ERA');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_SOLAR_FARM_IMPROVEMENT', 'RH_REQUIRES_PLOT_IMPROVEMENT_SOLAR_FARM');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('REQUIREMENTS_SOLAR_FARM_IMPROVEMENT', 'REQUIRES_PLAYER_IS_AI');

-- New Argument
INSERT INTO Requirements (RequirementId, RequirementType)				 VALUES ('RH_REQUIRES_PLOT_IMPROVEMENT_SOLAR_FARM',  'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');
INSERT INTO RequirementArguments (RequirementId, Name, Value)			 VALUES ('RH_REQUIRES_PLOT_IMPROVEMENT_SOLAR_FARM',  'ImprovementType', 'IMPROVEMENT_SOLAR_FARM');










-- Elec Strat

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_BIOSPHERE', 'RH_BIO_SOLAR_PLAINS'),
('BUILDING_BIOSPHERE', 'RH_BIO_SOLAR_GRASS'),

--('BUILDING_BIOSPHERE', 'RH_BIO_SOLAR_PLAINS_HILLS'), -- Higher Production
('BUILDING_BIOSPHERE', 'RH_BIO_SOLAR_GRASS_HILLS');


INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,								ModifierType,												SubjectRequirementSetId) VALUES		
			('RH_BIO_SOLAR_PLAINS',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_AI'),
			('RH_BIO_SOLAR_GRASS',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_AI'),
			
			('RH_BIO_SOLAR_PLAINS_HILLS',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_AI'),
			('RH_BIO_SOLAR_GRASS_HILLS',	'MODIFIER_PLAYER_CITIES_ADJUST_IMPROVEMENT_VALID_TERRAIN', 'PLAYER_IS_AI');

INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId,								Name,			Value)  VALUES		
			('RH_BIO_SOLAR_PLAINS',	'TerrainType',		'TERRAIN_PLAINS'),
			('RH_BIO_SOLAR_PLAINS',	'ImprovementType',	'IMPROVEMENT_SOLAR_FARM'),
			('RH_BIO_SOLAR_GRASS',	'TerrainType',		'TERRAIN_GRASS'),
			('RH_BIO_SOLAR_GRASS',	'ImprovementType',	'IMPROVEMENT_SOLAR_FARM'),
			
			('RH_BIO_SOLAR_PLAINS_HILLS',	'TerrainType',		'TERRAIN_PLAINS_HILLS'),
			('RH_BIO_SOLAR_PLAINS_HILLS',	'ImprovementType',	'IMPROVEMENT_WIND_FARM'),
			('RH_BIO_SOLAR_GRASS_HILLS',	'TerrainType',		'TERRAIN_GRASS_HILLS'),
			('RH_BIO_SOLAR_GRASS_HILLS',	'ImprovementType',	'IMPROVEMENT_WIND_FARM');
			
			



-- TODO ST BASILS

-- Petra

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_PETRA_INITAL_NEGATIVE',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_PETRA_INITAL_NEGATIVE',		'YieldType', 		'YIELD_RH_PLACEMENT'),
		('RH_PETRA_INITAL_NEGATIVE',							'Amount'   , -5);

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_PETRA',		 'RH_PETRA_INITAL_NEGATIVE');



INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_PETRA',		 'RH_PETRA_PETRA_FAITH');

INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('RH_PETRA_PETRA_FAITH',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',         'RH_AI_ANCIENT_ONLY_REQ_S'),
('RH_PETRA_PETRA_FAITH_MODIFIER', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 'REQUIREMENTS_RH_PETRA_TILES_REQ_S');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('RH_PETRA_PETRA_FAITH',          'ModifierId', 'RH_PETRA_PETRA_FAITH_MODIFIER'),
('RH_PETRA_PETRA_FAITH_MODIFIER', 'YieldType',  'YIELD_RH_PLACEMENT'),
('RH_PETRA_PETRA_FAITH_MODIFIER', 'Amount',     '3');

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
('REQUIREMENTS_RH_PETRA_TILES_REQ_S', 'REQUIREMENTSET_TEST_ANY');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
('REQUIREMENTS_RH_PETRA_TILES_REQ_S', 'REQUIRES_PLAYER_IS_AI'),
('REQUIREMENTS_RH_PETRA_TILES_REQ_S', 'REQUIRES_PLOT_HAS_DESERT'),
('REQUIREMENTS_RH_PETRA_TILES_REQ_S', 'REQUIRES_PLOT_HAS_DESERT_HILLS');




-- Tundra


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_ST_BASILS_INITAL_NEGATIVE',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_ST_BASILS_INITAL_NEGATIVE',		'YieldType', 		'YIELD_RH_FAITH'),
		('RH_ST_BASILS_INITAL_NEGATIVE',							'Amount'   , -5);

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_ST_BASILS_CATHEDRAL',		 'RH_ST_BASILS_INITAL_NEGATIVE');



INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_ST_BASILS_CATHEDRAL', 'DANCE_OF_THE_AURORA_BASILS_FAITH');

INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('DANCE_OF_THE_AURORA_BASILS_FAITH',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',         'RH_AI_ANCIENT_ONLY_REQ_S'),
('DANCE_OF_THE_AURORA_BASILS_FAITH_MODIFIER', 'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD', 'REQUIREMENTS_RH_DANCE_OF_THE_AURORA_BASILS_REQ_S');

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('DANCE_OF_THE_AURORA_BASILS_FAITH',          'ModifierId', 'DANCE_OF_THE_AURORA_BASILS_FAITH_MODIFIER'),
('DANCE_OF_THE_AURORA_BASILS_FAITH_MODIFIER', 'YieldType',  'YIELD_RH_FAITH'),
('DANCE_OF_THE_AURORA_BASILS_FAITH_MODIFIER', 'Amount',     '3');

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
('REQUIREMENTS_RH_DANCE_OF_THE_AURORA_BASILS_REQ_S', 'REQUIREMENTSET_TEST_ANY');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
('REQUIREMENTS_RH_DANCE_OF_THE_AURORA_BASILS_REQ_S', 'REQUIRES_PLAYER_IS_AI'),
('REQUIREMENTS_RH_DANCE_OF_THE_AURORA_BASILS_REQ_S', 'REQUIRES_PLOT_HAS_TUNDRA'),
('REQUIREMENTS_RH_DANCE_OF_THE_AURORA_BASILS_REQ_S', 'REQUIRES_PLOT_HAS_TUNDRA_HILLS');




-- Chicken Itza



-- Oracle