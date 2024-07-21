

-- RH Internal Strat Part 4
-- Author: RomanHoliday
-- DateCreated: 15/05/2024 22:34:51 PM
-- Copyright 2024,© RomanHoliday, All rights reserved



		
	
INSERT INTO Types				(Type,	Kind)  VALUES	

-- Tier 1
		('TECHNOLOGY_RH_HAS_OLIGARCHY',				'KIND_TECH'),
		('TECHNOLOGY_RH_HAS_CLASSICAL',				'KIND_TECH'),

-- Tier 2
		('TECHNOLOGY_RH_HAS_MONARCHY',				'KIND_TECH'),
		('TECHNOLOGY_RH_HAS_THEOCRACY',				'KIND_TECH'), 
		('TECHNOLOGY_RH_HAS_MERCHANT',				'KIND_TECH'), --  +10% Gold in all cities with an established Governor.

-- Tier 3		
		('TECHNOLOGY_RH_HAS_FASCISM',				'KIND_TECH'),
		('TECHNOLOGY_RH_HAS_COMMUNISM',				'KIND_TECH'),	--  +0.6 Production per Citizen in cities with Governors.
		('TECHNOLOGY_RH_HAS_DEMOCRACY',				'KIND_TECH');


INSERT INTO Types				(Type,	Kind)  VALUES	

-- Tier 1
		('TECHNOLOGY_RH_UNLOCK_OLIGARCHY',				'KIND_TECH'),
		('TECHNOLOGY_RH_UNLOCK_CLASSICAL',				'KIND_TECH'),

-- Tier 2
		('TECHNOLOGY_RH_UNLOCK_MONARCHY',				'KIND_TECH'),
		('TECHNOLOGY_RH_UNLOCK_THEOCRACY',				'KIND_TECH'), 
		('TECHNOLOGY_RH_UNLOCK_MERCHANT',				'KIND_TECH'), --  +10% Gold in all cities with an established Governor.

-- Tier 3		
		('TECHNOLOGY_RH_UNLOCK_FASCISM',				'KIND_TECH'),
		('TECHNOLOGY_RH_UNLOCK_COMMUNISM',				'KIND_TECH'),	--  +0.6 Production per Citizen in cities with Governors.
		('TECHNOLOGY_RH_UNLOCK_DEMOCRACY',				'KIND_TECH');



		
		
INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3 
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_HAS_OLIGARCHY');	

INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3 
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_UNLOCK_OLIGARCHY');	


INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_HAS_CLASSICAL');	
		
INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_UNLOCK_CLASSICAL');	
		


INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_HAS_MONARCHY');	


INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_UNLOCK_MONARCHY');	



INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_HAS_THEOCRACY');	

INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_UNLOCK_THEOCRACY');	



INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_HAS_MERCHANT');	

INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_UNLOCK_MERCHANT');	




INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_HAS_FASCISM');	

INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_UNLOCK_FASCISM');	


INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_HAS_COMMUNISM');	


INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_UNLOCK_COMMUNISM');	


INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_HAS_DEMOCRACY');	

INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_UNLOCK_DEMOCRACY');	



/*
-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,								Kind)  VALUES	
		('POLICY_RH_AI_OLIGARCHY',			'KIND_POLICY'),
		('POLICY_RH_AI_CLASSICAL',			'KIND_POLICY'),
-- Tier 2		
		('POLICY_RH_AI_MONARCHY',			'KIND_POLICY'),
		('POLICY_RH_AI_THEOCRACY',			'KIND_POLICY'),
		('POLICY_RH_AI_MERCHANT',			'KIND_POLICY'),
-- Tier 3		
			
		('POLICY_RH_AI_FASCISM',			'KIND_POLICY'),
		('POLICY_RH_AI_COMMUNISM',			'KIND_POLICY'),
		('POLICY_RH_AI_DEMOCRACY',			'KIND_POLICY');
		
--------------------------------------------------------------
*/

-- LOC_POLICY_DIPLOMATIC_LEAGUE_DESCRIPTION
-- LOC_POLICY_DIPLOMATIC_LEAGUE_NAME

-- LOC_POLICY_OLIGARCHY_NAME
-- LOC_POLICY_CLASSICAL_REPUBLIC_NAME

-- LOC_GOVT_INHERENT_BONUS_OLIGARCHY_XP1
-- LOC_GOVT_INHERENT_BONUS_CLASSREP_XP1

-- Policies
--------------------------------------------------------------

/*
INSERT OR IGNORE INTO Policies
		(PolicyType,						GovernmentSlotType,		PrereqTech,						Name,										Description) VALUES	
		('POLICY_RH_AI_OLIGARCHY',		'SLOT_GREAT_PERSON',		'TECHNOLOGY_RH_UNLOCK_OLIGARCHY',		'LOC_POLICY_RH_AI_OLIGARCHY_NAME',				'LOC_POLICY_RH_AI_OLIGARCHY_DESCRIPTION'),	
		('POLICY_RH_AI_CLASSICAL',		'SLOT_WILDCARD',		'TECHNOLOGY_RH_UNLOCK_CLASSICAL',		'LOC_POLICY_RH_AI_CLASSICAL_NAME',				'LOC_POLICY_RH_AI_CLASSICAL_DESCRIPTION'),
		
		('POLICY_RH_AI_MONARCHY',		'SLOT_WILDCARD',		'TECHNOLOGY_RH_UNLOCK_MONARCHY',		'LOC_POLICY_MONARCHY_NAME',					'LOC_GOVT_INHERENT_BONUS_MONARCHY_XP1'),
		('POLICY_RH_AI_THEOCRACY',		'SLOT_WILDCARD',		'TECHNOLOGY_RH_UNLOCK_THEOCRACY',		'LOC_POLICY_THEOCRACY_NAME',				'LOC_GOVT_INHERENT_BONUS_THEOCRACY_XP1'),
		('POLICY_RH_AI_MERCHANT',		'SLOT_WILDCARD',		'TECHNOLOGY_RH_UNLOCK_MERCHANT',		'LOC_POLICY_MERCHANT_REPUBLIC_NAME',		'LOC_GOVT_INHERENT_BONUS_MERCHREP_XP1'),
		
		('POLICY_RH_AI_FASCISM',		'SLOT_WILDCARD',		'TECHNOLOGY_RH_UNLOCK_FASCISM',			'LOC_POLICY_FASCISM_NAME',					'LOC_GOVT_INHERENT_BONUS_FASCISM_XP1'),
		('POLICY_RH_AI_COMMUNISM',		'SLOT_WILDCARD',		'TECHNOLOGY_RH_UNLOCK_COMMUNISM',		'LOC_POLICY_COMMUNISM_NAME',				'LOC_GOVT_INHERENT_BONUS_COMMUNISM_XP1'),
		('POLICY_RH_AI_DEMOCRACY',		'SLOT_WILDCARD',		'TECHNOLOGY_RH_UNLOCK_DEMOCRACY',		'LOC_POLICY_DEMOCRACY_NAME',				'LOC_GOVT_INHERENT_BONUS_DEMOCRACY_XP2');



INSERT OR IGNORE INTO Modifiers    (ModifierId,			ModifierType,							SubjectRequirementSetId) VALUES 		
			('AI_HIPPO',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_AI_ANCIENT_ONLY_REQ_S');
			
INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES
			('AI_HIPPO',	'Amount'       , 10);
*/

/*
INSERT OR IGNORE INTO PolicyModifiers
		(PolicyType,										ModifierId)  VALUES	
		('POLICY_RH_AI_OLIGARCHY',						'OLIGARCHY_LEGACY_MELEE'), -- WARS_OF_RELIGION_COMBAT, OLIGARCHY_LEGACY_MELEE
		('POLICY_RH_AI_CLASSICAL',						'CLASSICAL_REPUBLIC_AMENITY'), -- CLASSICAL_REPUBLIC_AMENITY
		('POLICY_RH_AI_CLASSICAL',						'CLASSICAL_REPUBLIC_HOUSING'), -- CLASSICAL_REPUBLIC_HOUSING

		('POLICY_RH_AI_OLIGARCHY',						'AI_HIPPO'),
		('POLICY_RH_AI_CLASSICAL',						'AI_HIPPO'),

-- Tier 2
		('POLICY_RH_AI_MONARCHY',						'MONARCHY_CASTLE_HOUSING'),
		('POLICY_RH_AI_MONARCHY',						'MONARCHY_WALLS_HOUSING'),
		('POLICY_RH_AI_MONARCHY',						'MONARCHY_STARFORT_HOUSING'),
		('POLICY_RH_AI_MONARCHY',						'MONARCHY_STARFORT_FAVOR'),

		('POLICY_RH_AI_THEOCRACY',						'THEOCRACY_LEGACY_RELIGIOUS'),
		('POLICY_RH_AI_THEOCRACY',						'THEOCRACY_RELIGIOUS_PEOPLE'),
		
		('POLICY_RH_AI_MERCHANT',						'MERCHANT_REPUBLIC_GOLD_MODIFIER'),

-- Tier 3

		('POLICY_RH_AI_FASCISM',						'FASCISM_LEGACY_ATTACK'),
		('POLICY_RH_AI_FASCISM',						'FASCISM_WAR_WEARINESS'),
		
		('POLICY_RH_AI_COMMUNISM',						'COMMUNISM_PRODUCTIVE_PEOPLE'),

		('POLICY_RH_AI_DEMOCRACY',						'DEMOCRACY_TRADEROUTEFOODTOALLY'),
		('POLICY_RH_AI_DEMOCRACY',						'DEMOCRACY_TRADEROUTEPRODUCTIONTOALLY'),
		('POLICY_RH_AI_DEMOCRACY',						'DEMOCRACY_TRADEROUTEFOODFROMALLY'),
		('POLICY_RH_AI_DEMOCRACY',						'DEMOCRACY_TRADEROUTEPRODUCTIONFROMALLY'),
		('POLICY_RH_AI_DEMOCRACY',						'DEMOCRACY_TRADEROUTEFOODTOSUZERAIN'),
		('POLICY_RH_AI_DEMOCRACY',						'DEMOCRACY_TRADEROUTEPRODUCTIONTOSUZERAIN'),
		('POLICY_RH_AI_DEMOCRACY',						'DEMOCRACY_TRADEROUTEFOODFROMSUZERAIN'),
		('POLICY_RH_AI_DEMOCRACY',						'DEMOCRACY_TRADEROUTEPRODUCTIONFROMSUZERAIN'),
		('POLICY_RH_AI_DEMOCRACY',						'DEMOCRACY_ALLIANCEPOINTS');
		
*/		
		
		
		

		
			
-- Gov Has Mods

INSERT INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES
		('GOVERNMENT_OLIGARCHY', 					'TECHNOLOGY_RH_HAS_OLIGARCHY_GRANT'),
		('GOVERNMENT_CLASSICAL_REPUBLIC', 			'TECHNOLOGY_RH_HAS_CLASSICAL_GRANT'),

		('GOVERNMENT_MONARCHY', 					'TECHNOLOGY_RH_HAS_MONARCHY_GRANT'),
		('GOVERNMENT_THEOCRACY', 					'TECHNOLOGY_RH_HAS_THEOCRACY_GRANT'),
		('GOVERNMENT_MERCHANT_REPUBLIC', 			'TECHNOLOGY_RH_HAS_MERCHANT_GRANT'),

		('GOVERNMENT_FASCISM', 						'TECHNOLOGY_RH_HAS_FASCISM_GRANT'),
		('GOVERNMENT_COMMUNISM', 					'TECHNOLOGY_RH_HAS_COMMUNISM_GRANT'),
		('GOVERNMENT_DEMOCRACY', 					'TECHNOLOGY_RH_HAS_DEMOCRACY_GRANT'),


		('GOVERNMENT_CORPORATE_LIBERTARIANISM', 	'TECHNOLOGY_RH_UNLOCK_FASCISM_GRANT'),
		('GOVERNMENT_DIGITAL_DEMOCRACY', 			'TECHNOLOGY_RH_UNLOCK_FASCISM_GRANT'),
		('GOVERNMENT_SYNTHETIC_TECHNOCRACY', 		'TECHNOLOGY_RH_UNLOCK_FASCISM_GRANT');




INSERT INTO BuildingModifiers (BuildingType, ModifierId)  VALUES


		('BUILDING_GOV_CITYSTATES', 					'TECHNOLOGY_RH_UNLOCK_OLIGARCHY_GRANT'),
		('BUILDING_GOV_CITYSTATES', 					'TECHNOLOGY_RH_UNLOCK_CLASSICAL_GRANT'),				
		
		('BUILDING_GOV_SPIES', 							'TECHNOLOGY_RH_UNLOCK_OLIGARCHY_GRANT'),
		('BUILDING_GOV_SPIES', 							'TECHNOLOGY_RH_UNLOCK_CLASSICAL_GRANT'),			
		
		('BUILDING_GOV_FAITH', 							'TECHNOLOGY_RH_UNLOCK_OLIGARCHY_GRANT'),
		('BUILDING_GOV_FAITH', 							'TECHNOLOGY_RH_UNLOCK_CLASSICAL_GRANT'),

		('BUILDING_GOV_MILITARY', 						'TECHNOLOGY_RH_UNLOCK_MONARCHY_GRANT'),
		('BUILDING_GOV_MILITARY', 						'TECHNOLOGY_RH_UNLOCK_THEOCRACY_GRANT'),		
		('BUILDING_GOV_MILITARY', 						'TECHNOLOGY_RH_UNLOCK_MERCHANT_GRANT'),		
		
		('BUILDING_GOV_CULTURE', 						'TECHNOLOGY_RH_UNLOCK_MONARCHY_GRANT'),
		('BUILDING_GOV_CULTURE', 						'TECHNOLOGY_RH_UNLOCK_THEOCRACY_GRANT'),		
		('BUILDING_GOV_CULTURE', 						'TECHNOLOGY_RH_UNLOCK_MERCHANT_GRANT'),		
		
		('BUILDING_GOV_SCIENCE', 						'TECHNOLOGY_RH_UNLOCK_MONARCHY_GRANT'),
		('BUILDING_GOV_SCIENCE', 						'TECHNOLOGY_RH_UNLOCK_THEOCRACY_GRANT'),		
		('BUILDING_GOV_SCIENCE', 						'TECHNOLOGY_RH_UNLOCK_MERCHANT_GRANT');		
		

-- Todo Tier 4 Govs

-- Has

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent) VALUES		
		('TECHNOLOGY_RH_HAS_OLIGARCHY_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI', 1, 1), 
		('TECHNOLOGY_RH_HAS_CLASSICAL_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI', 1, 1), 
		
		('TECHNOLOGY_RH_HAS_MONARCHY_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI', 1, 1), 		
		('TECHNOLOGY_RH_HAS_THEOCRACY_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI', 1, 1), 
		('TECHNOLOGY_RH_HAS_MERCHANT_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI', 1, 1),

		('TECHNOLOGY_RH_HAS_FASCISM_GRANT',						'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI', 1, 1); 




INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('TECHNOLOGY_RH_HAS_OLIGARCHY_GRANT',				'TechType', 		 'TECHNOLOGY_RH_HAS_OLIGARCHY'),
		('TECHNOLOGY_RH_HAS_CLASSICAL_GRANT',				'TechType', 		 'TECHNOLOGY_RH_HAS_CLASSICAL'),
		
		('TECHNOLOGY_RH_HAS_MONARCHY_GRANT',				'TechType',			 'TECHNOLOGY_RH_HAS_MONARCHY'),
		('TECHNOLOGY_RH_HAS_THEOCRACY_GRANT',				'TechType', 		 'TECHNOLOGY_RH_HAS_THEOCRACY'),
		('TECHNOLOGY_RH_HAS_MERCHANT_GRANT',				'TechType', 		 'TECHNOLOGY_RH_HAS_MERCHANT'),

		('TECHNOLOGY_RH_HAS_FASCISM_GRANT',					'TechType', 		 'TECHNOLOGY_RH_HAS_FASCISM');



-- Grant


INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_REQ_S_OLIGARCHY', 'REQUIREMENTSET_TEST_ALL'),
		('RH_REQ_S_CLASSICAL', 'REQUIREMENTSET_TEST_ALL'),
		
		('RH_REQ_S_MONARCHY', 'REQUIREMENTSET_TEST_ALL'),		
		('RH_REQ_S_THEOCRACY', 'REQUIREMENTSET_TEST_ALL'),
		('RH_REQ_S_MERCHANT', 'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_REQ_S_OLIGARCHY', 'RH_REQ_OLIGARCHY'),
		('RH_REQ_S_OLIGARCHY', 'REQUIRES_PLAYER_IS_AI'),
		
		('RH_REQ_S_CLASSICAL', 'RH_REQ_CLASSICAL'),
		('RH_REQ_S_CLASSICAL', 'REQUIRES_PLAYER_IS_AI'),		

		('RH_REQ_S_MONARCHY', 'RH_REQ_MONARCHY'),
		('RH_REQ_S_MONARCHY', 'REQUIRES_PLAYER_IS_AI'),		

		('RH_REQ_S_THEOCRACY', 'RH_REQ_THEOCRACY'),
		('RH_REQ_S_THEOCRACY', 'REQUIRES_PLAYER_IS_AI'),		

		('RH_REQ_S_MERCHANT', 'RH_REQ_MERCHANT'),
		('RH_REQ_S_MERCHANT', 'REQUIRES_PLAYER_IS_AI');
		
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('RH_REQ_OLIGARCHY', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQ_CLASSICAL', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),

		('RH_REQ_MONARCHY', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQ_THEOCRACY', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQ_MERCHANT', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');


INSERT OR IGNORE INTO RequirementArguments (RequirementId,	Name, Value) VALUES
		('RH_REQ_OLIGARCHY','TechnologyType', 'TECHNOLOGY_RH_HAS_OLIGARCHY'),
		('RH_REQ_CLASSICAL','TechnologyType', 'TECHNOLOGY_RH_HAS_CLASSICAL'),
		
		('RH_REQ_MONARCHY','TechnologyType', 'TECHNOLOGY_RH_HAS_MONARCHY'),
		('RH_REQ_THEOCRACY','TechnologyType', 'TECHNOLOGY_RH_HAS_THEOCRACY'),
		('RH_REQ_MERCHANT','TechnologyType', 'TECHNOLOGY_RH_HAS_MERCHANT');		





INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent) VALUES		
		('TECHNOLOGY_RH_UNLOCK_OLIGARCHY_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'RH_REQ_S_OLIGARCHY', 1, 1), 
		('TECHNOLOGY_RH_UNLOCK_CLASSICAL_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'RH_REQ_S_CLASSICAL', 1, 1), 
		
		('TECHNOLOGY_RH_UNLOCK_MONARCHY_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',		'RH_REQ_S_MONARCHY', 1, 1), 		
		('TECHNOLOGY_RH_UNLOCK_THEOCRACY_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'RH_REQ_S_THEOCRACY', 1, 1), 
		('TECHNOLOGY_RH_UNLOCK_MERCHANT_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',		'RH_REQ_S_MERCHANT', 1, 1); 


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('TECHNOLOGY_RH_UNLOCK_OLIGARCHY_GRANT',				'TechType', 		 'TECHNOLOGY_RH_UNLOCK_OLIGARCHY'),
		('TECHNOLOGY_RH_UNLOCK_CLASSICAL_GRANT',				'TechType', 		 'TECHNOLOGY_RH_UNLOCK_CLASSICAL'),
		
		('TECHNOLOGY_RH_UNLOCK_MONARCHY_GRANT',					'TechType',			 'TECHNOLOGY_RH_UNLOCK_MONARCHY'),
		('TECHNOLOGY_RH_UNLOCK_THEOCRACY_GRANT',				'TechType', 		 'TECHNOLOGY_RH_UNLOCK_THEOCRACY'),
		('TECHNOLOGY_RH_UNLOCK_MERCHANT_GRANT',					'TechType', 		 'TECHNOLOGY_RH_UNLOCK_MERCHANT');



-- Todo -- Attach to Existing Policies

/*
INSERT OR IGNORE INTO TechnologyModifiers
		(TechnologyType,										ModifierId)  VALUES	
		('TECHNOLOGY_RH_UNLOCK_OLIGARCHY',						'OLIGARCHY_LEGACY_MELEE'); -- WARS_OF_RELIGION_COMBAT, OLIGARCHY_LEGACY_MELEE
*/		
		
/*		
		('POLICY_RH_AI_CLASSICAL',						'CLASSICAL_REPUBLIC_AMENITY'), -- CLASSICAL_REPUBLIC_AMENITY
		('POLICY_RH_AI_CLASSICAL',						'CLASSICAL_REPUBLIC_HOUSING'), -- CLASSICAL_REPUBLIC_HOUSING

		('POLICY_RH_AI_OLIGARCHY',						'AI_HIPPO'),
		('POLICY_RH_AI_CLASSICAL',						'AI_HIPPO'),
*/


-- RH_REQ_S_OLIGARCHY_UNLOCKED

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_REQ_S_OLIGARCHY_UNLOCKED', 'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_REQ_S_OLIGARCHY_UNLOCKED', 'RH_REQ_OLIGARCHY_UNLOCKED'),
		('RH_REQ_S_OLIGARCHY_UNLOCKED', 'REQUIRES_PLAYER_IS_AI');
		
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('RH_REQ_OLIGARCHY_UNLOCKED', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');


INSERT OR IGNORE INTO RequirementArguments (RequirementId,	Name, Value) VALUES
		('RH_REQ_OLIGARCHY_UNLOCKED','TechnologyType', 'TECHNOLOGY_RH_UNLOCK_OLIGARCHY');



-- RH_REQ_S_FASCISM_UNLOCKED

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_REQ_S_FASCISM_UNLOCKED', 'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_REQ_S_FASCISM_UNLOCKED', 'RH_REQ_FASCISM_UNLOCKED'),
		('RH_REQ_S_FASCISM_UNLOCKED', 'RH_REQ_HAS_FASCISM'),		
		
		('RH_REQ_S_FASCISM_UNLOCKED', 'REQUIRES_PLAYER_IS_AI');
		
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('RH_REQ_FASCISM_UNLOCKED', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQ_HAS_FASCISM',	 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');


INSERT OR IGNORE INTO RequirementArguments (RequirementId,	Name, Value) VALUES
		('RH_REQ_FASCISM_UNLOCKED','TechnologyType', 'TECHNOLOGY_RH_UNLOCK_FASCISM'),
		('RH_REQ_HAS_FASCISM',		'TechnologyType', 'TECHNOLOGY_RH_HAS_FASCISM');







INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_OLIGARCHY_ABILITY_ATTACHEMENT',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',	'RH_REQ_S_OLIGARCHY_UNLOCKED');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_OLIGARCHY_ABILITY_ATTACHEMENT',				'AbilityType', 		 'ABILITY_OLIGARCHY_LEGACY_MELEE_BUFF');



INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_FASCISM_ABILITY_ATTACHEMENT',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',	'RH_REQ_S_FASCISM_UNLOCKED');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FASCISM_ABILITY_ATTACHEMENT',				'AbilityType', 		 'FASCISM_LEGACY_ATTACK');





-- Monarchy Recreation


-- Legacy Card Unlocked
INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_REQ_S_MONARCHY_UNLOCKED_WALLS', 'REQUIREMENTSET_TEST_ALL'),
		('RH_REQ_S_MONARCHY_UNLOCKED_CASTLE', 'REQUIREMENTSET_TEST_ALL'),
		('RH_REQ_S_MONARCHY_UNLOCKED_STAR_FORT', 'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_REQ_S_MONARCHY_UNLOCKED_WALLS', 'RH_REQ_MONARCHY_UNLOCKED'),
		('RH_REQ_S_MONARCHY_UNLOCKED_WALLS', 'REQUIRES_PLAYER_IS_AI'),
		('RH_REQ_S_MONARCHY_UNLOCKED_WALLS', 'REQUIRES_CITY_HAS_ANCIENT_WALLS'),

		('RH_REQ_S_MONARCHY_UNLOCKED_CASTLE', 'RH_REQ_MONARCHY_UNLOCKED'),
		('RH_REQ_S_MONARCHY_UNLOCKED_CASTLE', 'REQUIRES_PLAYER_IS_AI'),
		('RH_REQ_S_MONARCHY_UNLOCKED_CASTLE', 'REQUIRES_CITY_HAS_MEDIEVAL_WALLS'),		
		
		('RH_REQ_S_MONARCHY_UNLOCKED_STAR_FORT', 'RH_REQ_MONARCHY_UNLOCKED'),
		('RH_REQ_S_MONARCHY_UNLOCKED_STAR_FORT', 'REQUIRES_PLAYER_IS_AI'),
		('RH_REQ_S_MONARCHY_UNLOCKED_STAR_FORT', 'REQUIRES_CITY_HAS_RENAISSANCE_WALLS');		
		
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('RH_REQ_MONARCHY_UNLOCKED', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO RequirementArguments (RequirementId,	Name, Value) VALUES
		('RH_REQ_MONARCHY_UNLOCKED','TechnologyType', 'TECHNOLOGY_RH_UNLOCK_MONARCHY');



-- Modifier

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MONARCHY_WALLS',						'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING',	'RH_REQ_S_MONARCHY_UNLOCKED_WALLS'),
		('RH_MONARCHY_CASTLE',						'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING',	'RH_REQ_S_MONARCHY_UNLOCKED_CASTLE'),
		('RH_MONARCHY_STAR_FORT',					'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING',	'RH_REQ_S_MONARCHY_UNLOCKED_STAR_FORT'),		
		('RH_MONARCHY_FAVOR',					'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_FAVOR_PER_TURN',	'RH_REQ_S_MONARCHY_UNLOCKED_STAR_FORT');			
	
	
		
INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MONARCHY_WALLS',				'Amount', 		 1),
		('RH_MONARCHY_CASTLE',				'Amount', 		 1),
		('RH_MONARCHY_STAR_FORT',			'Amount', 		 1),
		('RH_MONARCHY_FAVOR',				'Amount', 		 2);





/*
		<Row>
			<ModifierId>OLIGARCHY_LEGACY_MELEE</ModifierId>
			<ModifierType>MODIFIER_PLAYER_UNITS_GRANT_ABILITY</ModifierType>
		</Row>
		<Row>
			<ModifierId>OLIGARCHY_LEGACY_MELEE</ModifierId>
			<Name>AbilityType</Name>
			<Value>ABILITY_OLIGARCHY_LEGACY_MELEE_BUFF</Value>
		</Row>
*/



-- Link to Melee / Anti Cav Cards


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	

-- Units
		('POLICY_AGOGE', 		 	 		 'RH_OLIGARCHY_ABILITY_ATTACHEMENT'),
		('POLICY_FEUDAL_CONTRACT', 		 	 'RH_OLIGARCHY_ABILITY_ATTACHEMENT'),
		('POLICY_GRANDE_ARMEE', 		 	 'RH_OLIGARCHY_ABILITY_ATTACHEMENT'),
		('POLICY_MILITARY_FIRST', 		 	 'RH_OLIGARCHY_ABILITY_ATTACHEMENT');



INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	

		('POLICY_MILITARY_FIRST', 		 	 'RH_FASCISM_ABILITY_ATTACHEMENT');



INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	

-- All Eras, 1 Amenity, 2 Housing for City with Governor
		('POLICY_CIVIL_PRESTIGE', 		 	 		 'RH_MONARCHY_WALLS'),
		('POLICY_CIVIL_PRESTIGE', 		 	 		 'RH_MONARCHY_CASTLE'),
		('POLICY_CIVIL_PRESTIGE', 		 	 		 'RH_MONARCHY_STAR_FORT'),
		('POLICY_CIVIL_PRESTIGE', 		 	 		 'RH_MONARCHY_FAVOR');
		
	

	
----------
	
-- Feed Strat		
		
INSERT INTO Types				(Type,	Kind)  VALUES	
		('TECHNOLOGY_RH_FEED',			'KIND_TECH');	
		
		
INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	80,		'LOC_' || Type || '_NAME', -3 
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_FEED');	



/*
INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_FEED_TECH_GRANT',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI'); 

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FEED_TECH_GRANT',					'TechType', 'TECHNOLOGY_RH_FEED');


INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
('BELIEF_FEED_THE_WORLD',				'RH_FEED_TECH_GRANT');
*/




	
INSERT INTO Types				(Type,	Kind)  VALUES	
		('BUILDING_RH_TEMPLE',		'KIND_BUILDING');

		
INSERT OR IGNORE INTO Buildings  (BuildingType, Name,    		Description, 	EnabledByReligion, PrereqDistrict, PurchaseYield, Cost, AdvisorType, Maintenance, CitizenSlots)  VALUES	

	('BUILDING_RH_TEMPLE', 		 'LOC_BUILDING_RH_FEED_STRAT_NAME', 'LOC_BUILDING_RH_FEED_STRAT_DESCRIPTION', 1,  'DISTRICT_HOLY_SITE', 'YIELD_GOLD', 1, 'ADVISOR_RELIGIOUS', 0, 0);

-- Temp
INSERT OR IGNORE INTO BuildingPrereqs  (Building, PrereqBuilding)  VALUES	
	('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_TEMPLE');


--  PrereqTech, 'TECHNOLOGY_RH_FEED',
		
--INSERT OR IGNORE INTO BuildingReplaces  (CivUniqueBuildingType, ReplacesBuildingType)  VALUES	
--		('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_TEMPLE');
	
/*	
INSERT OR IGNORE INTO Unit_BuildingPrereqs  (Unit, PrereqBuilding)  VALUES	

		('UNIT_APOSTLE', 		 	 			 'BUILDING_RH_TEMPLE'),
		('UNIT_INQUISITOR', 		 	 		 'BUILDING_RH_TEMPLE'),
		('UNIT_WARRIOR_MONK', 		 	 		 'BUILDING_RH_TEMPLE'),
		('UNIT_GURU', 		 	 		 		 'BUILDING_RH_TEMPLE');
*/				
		
--INSERT OR IGNORE INTO Building_YieldChanges  (BuildingType, YieldType, YieldChange)  VALUES	
--		('BUILDING_RH_TEMPLE', 		 	 		 'YIELD_FAITH', 4);
		
		
--INSERT OR IGNORE INTO Building_GreatPersonPoints  (BuildingType, GreatPersonClassType, PointsPerTurn)  VALUES	
--		('BUILDING_RH_TEMPLE', 		 	 		 'GREAT_PERSON_CLASS_PROPHET', 1);

		
--INSERT OR IGNORE INTO Building_GreatWorks  (BuildingType, GreatWorkSlotType, NumSlots)  VALUES	
--		('BUILDING_RH_TEMPLE', 		 	 		 'GREATWORKSLOT_RELIC', 1);


/*
INSERT OR IGNORE INTO BuildingPrereqs  (Building, PrereqBuilding)  VALUES	
		('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_CATHEDRAL'),
	--	('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_TEMPLE'),
		('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_MEETING_HOUSE'),
		('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_MOSQUE'),
		('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_SYNAGOGUE'),
		('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_WAT'),
		('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_STUPA'),
		('BUILDING_RH_TEMPLE', 		 	 		 'BUILDING_DAR_E_MEHR');
*/


/*
('',					 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),

('', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('', 					 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('', 					 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('', 			 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),


*/


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_FEED_MOD',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FEED_MOD',		'YieldType', 		'YIELD_FOOD'),
		('RH_FEED_MOD',							'Amount'   , 9500); -- pvs 75, 3000, 9000, 950
		
			
INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('RH_FEED_MOD2',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FEED_MOD2',	'Amount'       , 300);
		
INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_FEED_MOD3',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FEED_MOD3',		'YieldType', 		'YIELD_RH_FOOD_EXT'),
		('RH_FEED_MOD3',							'Amount'   , 9500); 
					
	
INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_RH_TEMPLE', 				'RH_FEED_MOD'),
('BUILDING_RH_TEMPLE', 				'RH_FEED_MOD2'),
('BUILDING_RH_TEMPLE', 				'RH_FEED_MOD3');





INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_FEED_TECH_GRANT',					'MODIFIER_PLAYER_RELIGION_ADD_RELIGIOUS_BUILDING',	'PLAYER_IS_AI'); 

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FEED_TECH_GRANT',					'BuildingType', 'BUILDING_RH_TEMPLE');



INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
('BELIEF_FEED_THE_WORLD',				'RH_FEED_TECH_GRANT');


