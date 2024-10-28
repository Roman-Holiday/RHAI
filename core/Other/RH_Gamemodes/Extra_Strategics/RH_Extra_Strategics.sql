
-- RH Extra Strategics Mode
-- 10 Free Aluminium, 10 Oil at Combined Arms, 10 Uranium at Nuclear Fission


REPLACE INTO	TraitModifiers	
			(TraitType,						ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',		'AI_GET_ALUMINUM_RESOURCE_FISSION');

REPLACE INTO Modifiers	
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('AI_GET_ALUMINUM_RESOURCE_FISSION',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'REQ_S_ADVANCED_FLIGHT_AI');

REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('AI_GET_ALUMINUM_RESOURCE_FISSION',	'ResourceType',	'RESOURCE_ALUMINUM'),
		('AI_GET_ALUMINUM_RESOURCE_FISSION',	'Amount',		10); 

REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('REQ_S_ADVANCED_FLIGHT_AI', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('REQ_S_ADVANCED_FLIGHT_AI', 'REQUIRES_RH_ADVANCED_FLIGHT'),
		('REQ_S_ADVANCED_FLIGHT_AI', 'REQUIRES_PLAYER_IS_AI');
		
REPLACE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('REQUIRES_RH_ADVANCED_FLIGHT', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

REPLACE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('REQUIRES_RH_ADVANCED_FLIGHT','TechnologyType', 'TECH_ADVANCED_FLIGHT');


-- Uranium

REPLACE INTO	TraitModifiers	
			(TraitType,						ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',		'AI_GET_URANIUM_RESOURCE_FISSION');

REPLACE INTO Modifiers	
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('AI_GET_URANIUM_RESOURCE_FISSION',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'REQ_S_NUCLEAR_FISSION_AI');

REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('AI_GET_URANIUM_RESOURCE_FISSION',	'ResourceType',	'RESOURCE_URANIUM'),
		('AI_GET_URANIUM_RESOURCE_FISSION',	'Amount',		10); 

REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('REQ_S_NUCLEAR_FISSION_AI', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('REQ_S_NUCLEAR_FISSION_AI', 'REQUIRES_RH_NUCLEAR_FISSION'),
		('REQ_S_NUCLEAR_FISSION_AI', 'REQUIRES_PLAYER_IS_AI');
		
REPLACE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('REQUIRES_RH_NUCLEAR_FISSION', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

REPLACE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('REQUIRES_RH_NUCLEAR_FISSION','TechnologyType', 'TECH_NUCLEAR_FISSION');


-- Oil

REPLACE INTO	TraitModifiers	
			(TraitType,						ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',		'AI_GET_OIL_RESOURCE_FISSION');

REPLACE INTO Modifiers	
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('AI_GET_OIL_RESOURCE_FISSION',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'REQ_S_COMBINED_ARMS_AI');

REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('AI_GET_OIL_RESOURCE_FISSION',	'ResourceType',	'RESOURCE_OIL'),
		('AI_GET_OIL_RESOURCE_FISSION',	'Amount',		10); 




REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('REQ_S_COMBINED_ARMS_AI', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('REQ_S_COMBINED_ARMS_AI', 'REQUIRES_RH_COMBINED_ARMS'),
		('REQ_S_COMBINED_ARMS_AI', 'REQUIRES_PLAYER_IS_AI');
		
REPLACE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('REQUIRES_RH_COMBINED_ARMS', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

REPLACE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('REQUIRES_RH_COMBINED_ARMS','TechnologyType', 'TECH_COMBINED_ARMS');




----------------------------------------------------------------------------------

-- Biplane Test




INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_HANGAR', 				'RH_FREE_AI_BIPLANE_FLIGHT_HIGH_DIFF'),

('BUILDING_HANGAR', 				'RH_AI_GOLD_SIM_BIPLANE_FLIGHT');



-- Gold Deduction at Flight

-- Step 1: Insert the modifier to deduct gold when Flight is researched
INSERT OR IGNORE INTO Modifiers
    (ModifierId,                                ModifierType,        RunOnce, Permanent,                         OwnerRequirementSetId) VALUES    
    ('RH_AI_GOLD_SIM_BIPLANE_FLIGHT',     'MODIFIER_PLAYER_MULTIPLY_TREASURY', 1, 1,      'RH_AI_HAS_FLIGHT_HIGH_DIFF');

-- Step 2: Define the amount to deduct (-50 gold)
INSERT OR IGNORE INTO ModifierArguments
    (ModifierId,                                Name,                         Value) VALUES    
    -- Deduct 50 gold
    ('RH_AI_GOLD_SIM_BIPLANE_FLIGHT',    'Amount',                     -90); 





-- Inserting the Modifier to grant a Biplane at Flight technology
INSERT OR IGNORE INTO Modifiers
    (ModifierId,                                ModifierType,                             OwnerRequirementSetId) VALUES    
    ('RH_FREE_AI_BIPLANE_FLIGHT_HIGH_DIFF',            'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',        'RH_AI_HAS_FLIGHT_HIGH_DIFF');
    
-- Defining the unit and amount for the Biplane
INSERT OR IGNORE INTO ModifierArguments
    (ModifierId,                                Name,                         Value) VALUES    
    -- Grant 1 Biplane
    ('RH_FREE_AI_BIPLANE_FLIGHT_HIGH_DIFF',            'UnitType',                 'UNIT_BIPLANE'),
    ('RH_FREE_AI_BIPLANE_FLIGHT_HIGH_DIFF',            'Amount',                   1),
    ('RH_FREE_AI_BIPLANE_FLIGHT_HIGH_DIFF',            'AllowUniqueOverride',       0),
    ('RH_FREE_AI_BIPLANE_FLIGHT_HIGH_DIFF',            'RunOnce',                   1); -- True

-- Step 3: Define the requirements for TECH_FLIGHT
INSERT OR IGNORE INTO RequirementSets
    (RequirementSetId,                                RequirementSetType) VALUES    
    -- Requirements for granting Biplanes after Flight is researched
    ('RH_AI_HAS_FLIGHT_HIGH_DIFF',              'REQUIREMENTSET_TEST_ALL');
    
INSERT OR IGNORE INTO RequirementSetRequirements
    (RequirementSetId,                                RequirementId) VALUES    
    -- Ensuring the city is owned, player has the tech, is AI, and on high difficulty
    ('RH_AI_HAS_FLIGHT_HIGH_DIFF',              'RH_REQUIRES_OWN_CITY'),
    ('RH_AI_HAS_FLIGHT_HIGH_DIFF',              'RH_REQUIRES_HAS_TECH_FLIGHT'),
    ('RH_AI_HAS_FLIGHT_HIGH_DIFF',              'RH_REQUIRES_NO_ADVANCED_FLIGHT'),	
	
    ('RH_AI_HAS_FLIGHT_HIGH_DIFF',              'REQUIRES_PLAYER_IS_AI'),
    ('RH_AI_HAS_FLIGHT_HIGH_DIFF',              'REQUIRES_PLAYER_EMPEROR_RH');


INSERT OR IGNORE INTO Requirements
    (RequirementId,                                RequirementType) VALUES    
    -- Require the player to have researched Flight
    ('RH_REQUIRES_HAS_TECH_FLIGHT',            'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO RequirementArguments
    (RequirementId,                                Name,                        Value) VALUES    
    ('RH_REQUIRES_HAS_TECH_FLIGHT',            'TechnologyType',           'TECH_FLIGHT');



INSERT OR IGNORE INTO Requirements
    (RequirementId,                                RequirementType, Inverse) VALUES    
    -- Require the player to have researched Flight
    ('RH_REQUIRES_NO_ADVANCED_FLIGHT',            'REQUIREMENT_PLAYER_HAS_TECHNOLOGY', 1);

INSERT OR IGNORE INTO RequirementArguments
    (RequirementId,                                Name,                        Value) VALUES    
    ('RH_REQUIRES_NO_ADVANCED_FLIGHT',            'TechnologyType',           'TECH_ADVANCED_FLIGHT');

