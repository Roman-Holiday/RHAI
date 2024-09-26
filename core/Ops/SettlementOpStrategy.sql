


-- Update TraitModifiers table
INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType, ModifierId) 
VALUES
			('TRAIT_LEADER_MAJOR_CIV', 'RH_NO_SETTLERS_WAR');

-- Update Modifiers table
INSERT OR IGNORE INTO	Modifiers	
			(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES		
			('RH_NO_SETTLERS_WAR', 'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'RH_AT_WAR_CLASSICAL_REQ_S');

-- Update ModifierArguments table
INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId, Name, Value)
VALUES		
			('RH_NO_SETTLERS_WAR', 'UnitType', 'UNIT_SETTLER');




------------------------------------------------------
-- Scout Strat

-- Update RequirementSets table
INSERT OR IGNORE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('RH_AT_WAR_CLASSICAL_REQ_S', 'REQUIREMENTSET_TEST_ALL');

-- Update RequirementSetRequirements table
INSERT OR IGNORE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('RH_AT_WAR_CLASSICAL_REQ_S', 'REQUIRES_PLAYER_IS_AT_WAR'),
		('RH_AT_WAR_CLASSICAL_REQ_S', 'REQUIRES_PLAYER_IS_AI'),

		('RH_AT_WAR_CLASSICAL_REQ_S', 'RH_NO_CARTOGRAPHY_REQ');



-- Requirements table for Archery
INSERT OR IGNORE INTO Requirements
		(RequirementId, RequirementType, Inverse)
VALUES
		('RH_NO_CARTOGRAPHY_REQ', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY', 1);

-- RequirementArguments table to specify Archery technology
INSERT OR IGNORE INTO RequirementArguments
		(RequirementId, Name, Value)
VALUES
		('RH_NO_CARTOGRAPHY_REQ', 'TechnologyType', 'TECH_CARTOGRAPHY');




-- Useful Reqs to test


/*

REQUIREMENT_PLAYER_IS_ATTACKING -- For promotions


REQUIREMENT_PLAYER_HAS_AT_LEAST_NUMBER_CITIES !
REQUIREMENT_PLAYER_HAS_AT_LEAST_NUM_MILITARY_UNITS

REQUIREMENT_PLAYER_HAS_COMPLETED_PROJECT

REQUIREMENT_PLAYER_HAS_CIVILIZATION_OR_LEADER_TRAIT !! - Used in exp Emergencies to add Sweden nobel prize

REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES


REQUIREMENT_PLAYER_MILITARY_STRENGTH_LEAD !

REQUIREMENT_PLAYER_PEACEFUL_ON_CONTINENT
REQUIREMENT_PLAYER_IS_RELIGION_FOUNDER
REQUIREMENT_PLAYER_POPULATION_LEAD!
REQUIREMENT_PLAYER_TOURISM_LEAD

REQUIREMENT_OPPONENT_IS_STRONGER

REQUIREMENT_PLOT_ADJACENT_TO_LAKE -- Huey test?

REQUIREMENT_PLOT_DISTRICT_IS_DEFENDED

*/




-- Yield Insertion Test

INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
VALUES 
    ('RESOURCE_ALUMINUM', 'YIELD_RH_END_OF_TECH', 	35),
    ('RESOURCE_COAL', 'YIELD_RH_END_OF_TECH', 	  	10),
    ('RESOURCE_HORSES', 'YIELD_RH_END_OF_TECH',     4),

    ('RESOURCE_IRON', 'YIELD_RH_END_OF_TECH', 		 6),

    ('RESOURCE_NITER', 'YIELD_RH_END_OF_TECH',		 10),
    ('RESOURCE_OIL', 'YIELD_RH_END_OF_TECH', 		 20),
    ('RESOURCE_URANIUM', 'YIELD_RH_END_OF_TECH',     35);



INSERT INTO Resource_YieldChanges (ResourceType, YieldType, YieldChange)
SELECT ResourceType, 'YIELD_RH_END_OF_TECH', 8
FROM Resources
WHERE ResourceClassType = 'RESOURCECLASS_LUXURY';

