
-- AUTHOR: ROMANHOLIDAY

-- Deity++ Antiair




-- Requirements Definition
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('REQUIRES_PLAYER_DEITY_PLUSPLUS', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0);

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_DEITY_PLUSPLUS', 									'Handicap', 				'DIFFICULTY_DEITY_PLUSPLUS');


-- Deity++ Antiair


--INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
--('BUILDING_AIRPORT', 						'RH_AI_ANTIAIR_SATELLITES_DEITY_PLUS'),
--BUILDING_HANGAR', 						'RH_AI_ANTIAIR_GUIDANCE_SYSTEMS');

--INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
--('BUILDING_RESEARCH_LAB', 						'RH_AI_ANTIAIR_GUIDANCE_SYSTEMS');



--INSERT OR IGNORE INTO TraitModifiers
--		(TraitType,						ModifierId) VALUES	
		--
--		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_ANTIAIR_SATELLITES_DEITY_PLUS'),
--		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_ANTIAIR_GUIDANCE_SYSTEMS');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_AI_ANTIAIR_SATELLITES_DEITY_PLUS',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',		'RH_AI_HAS_ADVANCED_BALLISTICS_DEITY_PLUS'),
		('RH_AI_ANTIAIR_GUIDANCE_SYSTEMS',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',			'RH_AI_HAS_GUIDANCE_SYSTEMS_DEITY_PLUS');
		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_AI_ANTIAIR_SATELLITES_DEITY_PLUS',								'UnitType',					'UNIT_ANTIAIR_GUN'),
		('RH_AI_ANTIAIR_SATELLITES_DEITY_PLUS',								'Amount',					1),
		('RH_AI_ANTIAIR_SATELLITES_DEITY_PLUS',								'AllowUniqueOverride',		0),
		('RH_AI_ANTIAIR_GUIDANCE_SYSTEMS',								'UnitType',					'UNIT_MOBILE_SAM'),
		('RH_AI_ANTIAIR_GUIDANCE_SYSTEMS',								'Amount',					1),
		('RH_AI_ANTIAIR_GUIDANCE_SYSTEMS',								'AllowUniqueOverride',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_DEITY_PLUS',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_DEITY_PLUS',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_DEITY_PLUS',							'RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS'),
		('RH_AI_HAS_ADVANCED_BALLISTICS_DEITY_PLUS',							'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_ADVANCED_BALLISTICS_DEITY_PLUS',							'REQUIRES_PLAYER_DEITY_PLUS_AI'),
		--
		('RH_AI_HAS_GUIDANCE_SYSTEMS_DEITY_PLUS',						'RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_DEITY_PLUS',						'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_GUIDANCE_SYSTEMS_DEITY_PLUS',						'REQUIRES_PLAYER_DEITY_PLUS_AI');
		--
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS',							'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('REQUIRES_PLAYER_DEITY_PLUS_AI', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0);

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_DEITY_PLUS_AI', 									'Handicap', 				'DIFFICULTY_DEITY_PLUS'),
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',						'TechnologyType',			'TECH_ADVANCED_BALLISTICS'),
		('RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS',							'TechnologyType',			'TECH_GUIDANCE_SYSTEMS');
	



INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
('RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO Modifiers(ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_IRON', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_HORSES', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_NITER', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_COAL', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_OIL', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_ALUMINUM', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_URANIUM', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S');
--('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_STOCKPILE', 'MODIFIER_PLAYER_ADJUST_RESOURCE_STOCKPILE_CAP','RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S');

INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_IRON'),
('TRAIT_LEADER_MAJOR_CIV', 'DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_HORSES'),
('TRAIT_LEADER_MAJOR_CIV', 'DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_NITER'),
('TRAIT_LEADER_MAJOR_CIV', 'DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_COAL'),
('TRAIT_LEADER_MAJOR_CIV', 'DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_OIL'),
('TRAIT_LEADER_MAJOR_CIV', 'DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_ALUMINUM'),
('TRAIT_LEADER_MAJOR_CIV', 'DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_URANIUM');
--('TRAIT_LEADER_MAJOR_CIV', 'DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_STOCKPILE');


INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_IRON', 'ResourceType', 'RESOURCE_IRON'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_IRON', 'Amount', '1'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_HORSES', 'ResourceType', 'RESOURCE_HORSES'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_HORSES', 'Amount', '1'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_NITER', 'ResourceType', 'RESOURCE_NITER'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_NITER', 'Amount', '4'), 
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_COAL', 'ResourceType', 'RESOURCE_COAL'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_COAL', 'Amount', '2'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_OIL', 'ResourceType', 'RESOURCE_OIL'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_OIL', 'Amount', '7'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_ALUMINUM', 'ResourceType', 'RESOURCE_ALUMINUM'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_ALUMINUM', 'Amount', '6'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_URANIUM', 'ResourceType', 'RESOURCE_URANIUM'),
('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_URANIUM', 'Amount', '5');
--('DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_STOCKPILE', 'Amount', '10'); 


INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('PLAYER_AT_CLASSICAL_ERA_EXTRA_RESOURCES', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('REQUIRES_DEITY_PLUSPLUS_EXTRA_RESOURCES', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0);

INSERT OR IGNORE INTO RequirementArguments (RequirementId, Name, Value) VALUES
('PLAYER_AT_CLASSICAL_ERA_EXTRA_RESOURCES', 'EraType', 'ERA_CLASSICAL'),
('REQUIRES_DEITY_PLUSPLUS_EXTRA_RESOURCES', 'Handicap', 'DIFFICULTY_DEITY_PLUSPLUS');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
('RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S', 'PLAYER_AT_CLASSICAL_ERA_EXTRA_RESOURCES'),
('RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S', 'REQUIRES_PLAYER_IS_AI'),
('RH_DEITY_PLUSPLUS_AND_CLASSICAL_AI_EXTRA_RESOURCES_REQ_S', 'REQUIRES_DEITY_PLUSPLUS_EXTRA_RESOURCES');



-- Deity++ Future Era Tourism Finisher (4% at future civic, 2% enviro)

INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', '5_PERCENT_TOURISM_FUTURE_CIVIC_DEITY_PLUSPLUS');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('5_PERCENT_TOURISM_FUTURE_CIVIC_DEITY_PLUSPLUS', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'D_PP_AI_FUTURE_CIVIC');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('5_PERCENT_TOURISM_FUTURE_CIVIC_DEITY_PLUSPLUS', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 5);


INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', '1_PERCENT_TOURISM_HEGEMONY_CIVIC_DEITY_PLUSPLUS');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('1_PERCENT_TOURISM_HEGEMONY_CIVIC_DEITY_PLUSPLUS', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'D_PP_AI_HEGEMONY_CIVIC');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('1_PERCENT_TOURISM_HEGEMONY_CIVIC_DEITY_PLUSPLUS', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1);


INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', '2_PERCENT_TOURISM_ENVIRONMENTALISM_DEITY_PLUSPLUS');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('2_PERCENT_TOURISM_ENVIRONMENTALISM_DEITY_PLUSPLUS', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'D_PP_AI_ENVIRO_CIVIC');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('2_PERCENT_TOURISM_ENVIRONMENTALISM_DEITY_PLUSPLUS', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 2);



INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('D_PP_AI_ENVIRO_CIVIC', 			'REQUIREMENTSET_TEST_ALL'),
		('D_PP_AI_HEGEMONY_CIVIC', 			'REQUIREMENTSET_TEST_ALL'),
		('D_PP_AI_FUTURE_CIVIC', 			'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES	
		('D_PP_AI_ENVIRO_CIVIC', 			'REQUIRES_RH_HAS_CIVIC_ENVIRO'),
		('D_PP_AI_ENVIRO_CIVIC', 			'REQUIRES_PLAYER_DEITY_PLUSPLUS'),
		('D_PP_AI_ENVIRO_CIVIC', 			'REQUIRES_PLAYER_IS_AI'),
		
		('D_PP_AI_HEGEMONY_CIVIC', 			'REQUIRES_RH_HAS_CIVIC_HEGEMONY'),
		('D_PP_AI_HEGEMONY_CIVIC', 			'REQUIRES_PLAYER_DEITY_PLUSPLUS'),
		('D_PP_AI_HEGEMONY_CIVIC', 			'REQUIRES_PLAYER_IS_AI'),
		
		('D_PP_AI_FUTURE_CIVIC', 			'REQUIRES_RH_HAS_CIVIC_FUTURE'),
		('D_PP_AI_FUTURE_CIVIC', 			'REQUIRES_PLAYER_DEITY_PLUSPLUS'),
		('D_PP_AI_FUTURE_CIVIC', 			'REQUIRES_PLAYER_IS_AI');
		
INSERT INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_ENVIRO', 				'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_HEGEMONY', 				'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('REQUIRES_RH_HAS_CIVIC_FUTURE', 				'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_ENVIRO',					'CivicType',	'CIVIC_SOCIAL_MEDIA'),
		('REQUIRES_RH_HAS_CIVIC_HEGEMONY',					'CivicType',	'CIVIC_CULTURAL_HEGEMONY'),
		('REQUIRES_RH_HAS_CIVIC_FUTURE',					'CivicType',	'CIVIC_FUTURE_CIVIC');

-- To make sure Langrange Laser is completed

INSERT OR IGNORE INTO	TraitModifiers	(TraitType,		ModifierId) VALUES	
	('TRAIT_LEADER_MAJOR_CIV',		'AI_GET_URANIUM_RESOURCE_FUTURE_DEITY_PLUSPLUS'),
	('TRAIT_LEADER_MAJOR_CIV',		'AI_GET_ALUMINUM_RESOURCE_FUTURE_DEITY_PLUSPLUS');

INSERT OR IGNORE INTO Modifiers	(ModifierId, ModifierType, SubjectRequirementSetId)  VALUES	
		('AI_GET_URANIUM_RESOURCE_FUTURE_DEITY_PLUSPLUS',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'PLAYER_IS_DEITY_PLUSPLUS_AI_LATE_TECH'),
		('AI_GET_ALUMINUM_RESOURCE_FUTURE_DEITY_PLUSPLUS',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'PLAYER_IS_DEITY_PLUSPLUS_AI_FUTURE_TECH');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value)  VALUES
		('AI_GET_URANIUM_RESOURCE_FUTURE_DEITY_PLUSPLUS',	'ResourceType',	'RESOURCE_URANIUM'),
		('AI_GET_URANIUM_RESOURCE_FUTURE_DEITY_PLUSPLUS',	'Amount',		4),

		('AI_GET_ALUMINUM_RESOURCE_FUTURE_DEITY_PLUSPLUS',	'ResourceType',	'RESOURCE_ALUMINUM'),
		('AI_GET_ALUMINUM_RESOURCE_FUTURE_DEITY_PLUSPLUS',	'Amount',		7);

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('PLAYER_IS_DEITY_PLUSPLUS_AI_LATE_TECH', 'REQUIREMENTSET_TEST_ALL'),
		('PLAYER_IS_DEITY_PLUSPLUS_AI_FUTURE_TECH', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES

		('PLAYER_IS_DEITY_PLUSPLUS_AI_LATE_TECH', 'REQUIRES_AI_GET_TECH_LATE_TECH'),
		('PLAYER_IS_DEITY_PLUSPLUS_AI_LATE_TECH', 'REQUIRES_PLAYER_DEITY_PLUSPLUS'),
		('PLAYER_IS_DEITY_PLUSPLUS_AI_LATE_TECH', 'REQUIRES_PLAYER_IS_AI'),

		('PLAYER_IS_DEITY_PLUSPLUS_AI_FUTURE_TECH', 'REQUIRES_AI_GET_TECH_FUTURE_TECH'),
		('PLAYER_IS_DEITY_PLUSPLUS_AI_FUTURE_TECH', 'REQUIRES_PLAYER_DEITY_PLUSPLUS'),
		('PLAYER_IS_DEITY_PLUSPLUS_AI_FUTURE_TECH', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO Requirements  (RequirementId, RequirementType)  VALUES
		('REQUIRES_AI_GET_TECH_LATE_TECH', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('REQUIRES_AI_GET_TECH_FUTURE_TECH', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value)  VALUES
		('REQUIRES_AI_GET_TECH_LATE_TECH','TechnologyType', 'TECH_SMART_MATERIALS'),
		('REQUIRES_AI_GET_TECH_FUTURE_TECH','TechnologyType', 'TECH_FUTURE_TECH');


/*
INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
	--	('REQUIRES_PLAYER_HIGH_DIFF_AI', 									'Handicap', 				'DIFFICULTY_DEITY'),
		('RH_REQUIRES_HAS_TECH_ROBOTICS',								'TechnologyType',			'TECH_ROBOTICS'),
		('RH_REQUIRES_HAS_TECH_NUCLEAR_FUSION',							'TechnologyType',			'TECH_NUCLEAR_FUSION');
*/	

INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_SATYAGRAHA',	'G_GAMES_REC');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('G_GAMES_REC',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 'AI_GET_CIVIC_GAMES_REC');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
			('G_GAMES_REC',				'YieldType',		    'YIELD_FOOD'),
			('G_GAMES_REC',				'Amount',			    1);

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('AI_GET_CIVIC_GAMES_REC', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('AI_GET_CIVIC_GAMES_REC', 'REQUIRES_RH_HAS_CIVIC_GAMES_RECREATION'),
		('AI_GET_CIVIC_GAMES_REC', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_GAMES_RECREATION', 'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_GAMES_RECREATION',		'CivicType',	'CIVIC_GAMES_RECREATION');
	


INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_AI_BEL_BOOST_DEITY_PLUS', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements   (RequirementSetId,		RequirementId) VALUES	
		('RH_AI_BEL_BOOST_DEITY_PLUS',						'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_BEL_BOOST_DEITY_PLUS',						'REQUIRES_PLAYER_DEITY_PLUS_AI');


INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
			('BELIEF_JUST_WAR',				'AI_BEL_BOOST_EX_DEITY_PP');
--			('BELIEF_JUST_WAR',				'AI_BEL_BOOST_3');

INSERT OR IGNORE INTO Modifiers    (ModifierId,			ModifierType,							SubjectRequirementSetId) VALUES 		

			('AI_BEL_BOOST_EX_DEITY_PP',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'RH_AI_BEL_BOOST_DEITY_PLUS');
	--		('AI_BEL_BOOST_3',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE', 	'RH_AI_BEL_BOOST_DEITY_PLUS');
	

INSERT OR IGNORE INTO ModifierArguments      (ModifierId, 		Name, 					Value)  VALUES 	

		('AI_BEL_BOOST_EX_DEITY_PP',					'YieldType', 'YIELD_SCIENCE'),
		('AI_BEL_BOOST_EX_DEITY_PP',					'Amount'   , 1);



REPLACE INTO TraitModifiers (TraitType, ModifierId)  VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'AI_FOOD_ERA_MODERN');

REPLACE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId)  VALUES
		('AI_FOOD_ERA_MODERN', 					'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',	'REQUIRES_AI_POPULATION_10'),
		('AI_FOOD_ERA_MODERN_MODIFIER', 		'MODIFIER_BUILDING_YIELD_CHANGE', 			'AI_NEED_CIVIC_COLD_WAR');


REPLACE INTO ModifierArguments  (ModifierId, Name, Value) VALUES
		('AI_FOOD_ERA_MODERN' , 'ModifierId' , 	 'AI_FOOD_ERA_MODERN_MODIFIER'),
		('AI_FOOD_ERA_MODERN_MODIFIER' , 'BuildingType' , 'BUILDING_GRANARY'),
		('AI_FOOD_ERA_MODERN_MODIFIER' , 'YieldType'    , 'YIELD_FOOD'),
		('AI_FOOD_ERA_MODERN_MODIFIER' , 'Amount'       , 1);
		

REPLACE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('REQUIRES_AI_POPULATION_10', 	'REQUIREMENTSET_TEST_ALL'),
		('AI_NEED_CIVIC_COLD_WAR', 		'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements (RequirementSetId, RequirementId)  VALUES
		('REQUIRES_AI_POPULATION_10', 	'REQUIRES_CITY_HAS_LESS_POPULATION_10'),
		('REQUIRES_AI_POPULATION_10', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_POPULATION_10', 	'CITY_IS_ORIGINAL_OWNER_REQUIREMENTS'),
		('AI_NEED_CIVIC_COLD_WAR',		'RH_AI_HAS_CIVIC_HIGH_DIFF_CIVIC_COLD_WAR'),
		('AI_NEED_CIVIC_COLD_WAR',		'REQUIRES_PLAYER_IS_AI'),
		('AI_NEED_CIVIC_COLD_WAR',		'CITY_IS_ORIGINAL_OWNER_REQUIREMENTS');


REPLACE INTO Requirements  (RequirementId, RequirementType, Inverse) VALUES
		('REQUIRES_CITY_HAS_LESS_POPULATION_10','REQUIREMENT_CITY_HAS_X_POPULATION', 1);
		

REPLACE INTO Requirements (RequirementId, RequirementType)  VALUES
		('RH_AI_HAS_CIVIC_HIGH_DIFF_CIVIC_COLD_WAR',									'REQUIREMENT_PLAYER_HAS_CIVIC'),
		('RH_AI_HAS_CIVIC_HIGH_DIFF_CIVIC_COLD_WAR',									'REQUIRES_PLAYER_DEITY_PLUSPLUS');
		
REPLACE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_CITY_HAS_LESS_POPULATION_10','Amount', 12),
		
		('RH_AI_HAS_CIVIC_HIGH_DIFF_CIVIC_COLD_WAR',	'CivicType', 'CIVIC_URBANIZATION');


--INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
--VALUES ('UNIT_BUILDER', 'ERA_ANCIENT', 1, 'DISTRICT_NEIGHBORHOOD', 1, 0, 1,  'DIFFICULTY_DEITY_PLUS', 0.5);


INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_IMPROVEMENT1_DEITY_PLUS'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_IMPROVEMENT2_DEITY_PLUS');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_AI_IMPROVEMENT1_DEITY_PLUS',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',		'RH_AI_HAS_APPRENTICESHIP_REQ_S'),
		('RH_AI_IMPROVEMENT2_DEITY_PLUS',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',			'RH_AI_HAS_MILT_ENGINEERING_REQ_S');
		


INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_AI_IMPROVEMENT1_DEITY_PLUS',								'UnitType',					'UNIT_BUILDER'),
		('RH_AI_IMPROVEMENT1_DEITY_PLUS',								'Amount',					1),
		('RH_AI_IMPROVEMENT1_DEITY_PLUS',								'AllowUniqueOverride',		0),
		('RH_AI_IMPROVEMENT2_DEITY_PLUS',								'UnitType',					'UNIT_BUILDER'),
		('RH_AI_IMPROVEMENT2_DEITY_PLUS',								'Amount',					1),
		('RH_AI_IMPROVEMENT2_DEITY_PLUS',								'AllowUniqueOverride',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_APPRENTICESHIP_REQ_S',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_MILT_ENGINEERING_REQ_S',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_APPRENTICESHIP_REQ_S',							'RH_REQUIRES_HAS_TECH_APPRENTICESHIP'),
		('RH_AI_HAS_APPRENTICESHIP_REQ_S',							'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_APPRENTICESHIP_REQ_S',							'REQUIRES_PLAYER_DEITY_PLUS_AI'),
		--
		('RH_AI_HAS_MILT_ENGINEERING_REQ_S',						'RH_REQUIRES_HAS_TECH_MILT_ENGINEERING'),
		('RH_AI_HAS_MILT_ENGINEERING_REQ_S',						'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_MILT_ENGINEERING_REQ_S',						'REQUIRES_PLAYER_DEITY_PLUS_AI');
		--
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_APPRENTICESHIP',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_MILT_ENGINEERING',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
('REQUIRES_PLAYER_DEITY_PLUS_AI', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_DEITY_PLUS_AI', 									'Handicap', 				'DIFFICULTY_DEITY_PLUS'),
		('RH_REQUIRES_HAS_TECH_APPRENTICESHIP',						'TechnologyType',			'TECH_APPRENTICESHIP'),
		('RH_REQUIRES_HAS_TECH_MILT_ENGINEERING',							'TechnologyType',	'TECH_MILITARY_ENGINEERING');
	





--INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
--		('PROJECT_LAUNCH_MARS_BASE',	'MODIFIER_RH_AI_EXT_DIPLO_SPY_XL_DIFF');

-- PROJECT_LAUNCH_MOON_LANDING

--INSERT INTO Modifiers
--		(ModifierId,					ModifierType,					OwnerRequirementSetId) VALUES	
--('MODIFIER_RH_AI_EXT_DIPLO_SPY_XL_DIFF',				'MODIFIER_PLAYER_ADD_DIPLO_VISIBILITY',		'PLAYER_IS_AI');


--INSERT INTO ModifierArguments
--		(ModifierId,									Name,						Value) VALUES	
	--	('MODIFIER_RH_AI_EXT_DIPLO_SPY_XL_DIFF',								'Amount',				1),
	--	('MODIFIER_RH_AI_EXT_DIPLO_SPY_XL_DIFF',								'Source',			'SOURCE_SPY');
	

/*
--Not in Use:
INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_LATE_CIVIC_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_LATE_CIVIC_REQ_S', 'REQUIRES_RH_HAS_CIVIC_SCORCHED_EARTH'),
		('RH_LATE_CIVIC_REQ_S', 'REQUIRES_PLAYER_IS_AI');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_SCORCHED_EARTH', 		'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_SCORCHED_EARTH',			'CivicType',	'CIVIC_SCORCHED_EARTH');
*/


-- Support Units (not in use)


/*
INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);



INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_OBSERVATION_BALLOON', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);
*/

/*
INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_HIGH_DIFF_PLUS_LATE_GAME_GW_THEME_FIX');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_HIGH_DIFF_PLUS_LATE_GAME_GW_THEME_FIX',						'MODIFIER_PLAYER_ADJUST_AUTO_THEME_BUILDINGS_WITH_X_SLOTS',		'RH_AI_HAS_NATURAL_HISTORY_DEITY_PLUS');
		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,																		Name,						Value) 	VALUES	
		--
		('RH_HIGH_DIFF_PLUS_LATE_GAME_GW_THEME_FIX',								'Amount',					3),
		('RH_HIGH_DIFF_PLUS_LATE_GAME_GW_THEME_FIX',								'IsWonder',					true);
		
	--('AUTO_THEME_AT_LEAST_3_SLOTS',														'AllowUniqueOverride',		0),

INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_NATURAL_HISTORY_DEITY_PLUS',							'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_NATURAL_HISTORY_DEITY_PLUS',							'RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY'),
		('RH_AI_HAS_NATURAL_HISTORY_DEITY_PLUS',							'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_NATURAL_HISTORY_DEITY_PLUS',							'REQUIRES_PLAYER_DEITY_PLUS_AI');

		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',					'REQUIREMENT_PLAYER_HAS_CIVIC');


INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('REQUIRES_PLAYER_DEITY_PLUS_AI', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0);


INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_DEITY_PLUS_AI', 									'Handicap', 				'DIFFICULTY_DEITY_PLUSPLUS'),
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',						'CivicType',					'CIVIC_NATURAL_HISTORY');
*/

-- RH_AI_HAS_NATURAL_HISTORY_DEITY_PLUS


-- Higher on Deity ++

UPDATE DiplomaticActions_XP2 SET GrievancesForRefusal=30 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_SPY';
UPDATE DiplomaticActions_XP2 SET GrievancesPerIncursion=35 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_SPY';
--DIPLOACTION_KEEP_PROMISE_DONT_CONVERT 
UPDATE DiplomaticActions_XP2 SET GrievancesForRefusal=30 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_CONVERT';
UPDATE DiplomaticActions_XP2 SET GrievancesPerIncursion=35 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_CONVERT';
--DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS 
UPDATE DiplomaticActions_XP2 SET GrievancesForRefusal=35 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS';
UPDATE DiplomaticActions_XP2 SET GrievancesPerIncursion=35 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS';
--DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR
UPDATE DiplomaticActions_XP2 SET GrievancesForRefusal=35 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR';
UPDATE DiplomaticActions_XP2 SET GrievancesPerIncursion=35 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR';