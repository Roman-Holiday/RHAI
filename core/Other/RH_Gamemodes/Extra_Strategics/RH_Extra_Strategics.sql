
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
