

-- RH Starting Scaling Adjustments
-- AUTHOR: ROMANHOLIDAY

-- RH Reduced Starting Units Option


DELETE FROM MajorStartingUnits
WHERE Unit = 'UNIT_WARRIOR' and AiOnly = 1;
-- Deleted starting military units and spread them over the first era

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_WARRIOR', 'ERA_ANCIENT', 1, null, 1, 0, 1,  'DIFFICULTY_EMPEROR', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SCOUT', 'ERA_ANCIENT', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_WARRIOR', 'ERA_ANCIENT', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_WARRIOR', 'ERA_ANCIENT', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_DEITY', 1);


-- Immortal Builder at Campus to make up for deleted or delayed Warriors

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_BUILDER', 'ERA_ANCIENT', 1, 'DISTRICT_CAMPUS', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);


-- Defs:

-- Defs Deity 5 Warriors, 3 Settlers, 2 Builders
-- Defs Immortal 4 Warriors, 2 Settlers, 2 Builders


/*
INSERT OR IGNORE INTO MajorStartingUnits
			(Era, Unit, Aionly, MinDifficulty, DifficultyDelta, OnDistrictCreated)
VALUES('ERA_ANCIENT','UNIT_TRADER',1,'DIFFICULTY_DEITY',30,1);
*/


--UPDATE MajorStartingUnits SET MinDifficulty='DIFFICULTY_DEITY', DifficultyDelta=0.5
--	WHERE Unit='UNIT_BUILDER' AND AiOnly=1;
--



/*
INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
--('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_CLASSICAL'),
--('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_MEDIEVAL'),
--('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_RENAISSANCE'),
--('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_INDUSTRIAL'),
--('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_MODERN'),
--('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_ATOMIC'),
--('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_INFO'),
--('TRAIT_LEADER_MAJOR_CIV', 'TOURISM_SCALING_FUTURE');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
--('TOURISM_SCALING_CLASSICAL', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'HIGH_DIFFICULTY_AI_CLASSICAL'),
--('TOURISM_SCALING_MEDIEVAL', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'HIGH_DIFFICULTY_AI_MEDIEVAL'),
--('TOURISM_SCALING_RENAISSANCE', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'HIGH_DIFFICULTY_AI_RENAISSANCE'),
--('TOURISM_SCALING_INDUSTRIAL', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'HIGH_DIFFICULTY_AI_INDUSTRIAL'),
--('TOURISM_SCALING_MODERN', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'HIGH_DIFFICULTY_AI_MODERN'),
--('TOURISM_SCALING_ATOMIC', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'HIGH_DIFFICULTY_AI_ATOMIC'),
--('TOURISM_SCALING_INFO', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'HIGH_DIFFICULTY_AI_INFO'),
--('TOURISM_SCALING_FUTURE', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'HIGH_DIFFICULTY_AI_FUTURE');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
--('TOURISM_SCALING_CLASSICAL', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
--('TOURISM_SCALING_MEDIEVAL', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
--('TOURISM_SCALING_RENAISSANCE', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
--('TOURISM_SCALING_INDUSTRIAL', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
--('TOURISM_SCALING_MODERN', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
--('TOURISM_SCALING_ATOMIC', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
--('TOURISM_SCALING_INFO', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 1),
--('TOURISM_SCALING_FUTURE', 'Amount', 'LinearScaleFromDefaultHandicap', 0, 2);

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
--('HIGH_DIFFICULTY_AI_CLASSICAL', 'REQUIREMENTSET_TEST_ALL'),
--('HIGH_DIFFICULTY_AI_MEDIEVAL', 'REQUIREMENTSET_TEST_ALL'),
--('HIGH_DIFFICULTY_AI_RENAISSANCE', 'REQUIREMENTSET_TEST_ALL'),
--('HIGH_DIFFICULTY_AI_INDUSTRIAL', 'REQUIREMENTSET_TEST_ALL'),
--('HIGH_DIFFICULTY_AI_MODERN', 'REQUIREMENTSET_TEST_ALL'),
--('HIGH_DIFFICULTY_AI_ATOMIC', 'REQUIREMENTSET_TEST_ALL'),
--('HIGH_DIFFICULTY_AI_INFO', 'REQUIREMENTSET_TEST_ALL'),
--('HIGH_DIFFICULTY_AI_FUTURE', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
--('HIGH_DIFFICULTY_AI_CLASSICAL', 'REQUIRES_PLAYER_IS_AI'),
--('HIGH_DIFFICULTY_AI_MEDIEVAL', 'REQUIRES_PLAYER_IS_AI'),
--('HIGH_DIFFICULTY_AI_RENAISSANCE', 'REQUIRES_PLAYER_IS_AI'),
--('HIGH_DIFFICULTY_AI_INDUSTRIAL', 'REQUIRES_PLAYER_IS_AI'),
--('HIGH_DIFFICULTY_AI_MODERN', 'REQUIRES_PLAYER_IS_AI'),
--('HIGH_DIFFICULTY_AI_ATOMIC', 'REQUIRES_PLAYER_IS_AI'),
--('HIGH_DIFFICULTY_AI_INFO', 'REQUIRES_PLAYER_IS_AI'),
--('HIGH_DIFFICULTY_AI_FUTURE', 'REQUIRES_PLAYER_IS_AI'),
--('HIGH_DIFFICULTY_AI_CLASSICAL', 'REQUIRES_HIGH_DIFFICULTY'),
--('HIGH_DIFFICULTY_AI_MEDIEVAL', 'REQUIRES_HIGH_DIFFICULTY'),
--('HIGH_DIFFICULTY_AI_RENAISSANCE', 'REQUIRES_HIGH_DIFFICULTY'),
--('HIGH_DIFFICULTY_AI_INDUSTRIAL', 'REQUIRES_HIGH_DIFFICULTY'),
--('HIGH_DIFFICULTY_AI_MODERN', 'REQUIRES_HIGH_DIFFICULTY'),
--('HIGH_DIFFICULTY_AI_ATOMIC', 'REQUIRES_HIGH_DIFFICULTY'),
--('HIGH_DIFFICULTY_AI_INFO', 'REQUIRES_HIGH_DIFFICULTY'),
--('HIGH_DIFFICULTY_AI_FUTURE', 'REQUIRES_HIGH_DIFFICULTY'),
--('HIGH_DIFFICULTY_AI_CLASSICAL', 'RH_PLAYER_AT_CLASSICAL_ERA'),
--('HIGH_DIFFICULTY_AI_MEDIEVAL', 'RH_PLAYER_AT_MEDIEVAL_ERA'),
--('HIGH_DIFFICULTY_AI_RENAISSANCE', 'RH_PLAYER_AT_RENAISSANCE_ERA'),
--('HIGH_DIFFICULTY_AI_INDUSTRIAL', 'RH_PLAYER_AT_INDUSTRIAL_ERA'),
--('HIGH_DIFFICULTY_AI_MODERN', 'RH_PLAYER_AT_MODERN_ERA'),
--('HIGH_DIFFICULTY_AI_ATOMIC', 'RH_PLAYER_AT_ATOMIC_ERA'),
--('HIGH_DIFFICULTY_AI_INFO', 'PLAYER_AT_INFO_ERA'),
--('HIGH_DIFFICULTY_AI_FUTURE', 'PLAYER_AT_FUTURE_ERA');

*/



-- 3 Very Delayed Builders on Deity / Immortal to make up for Deleted Warriors on this Gamemode / Builders not Recieving Charges from Public Works Bug

INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_IMPROVEMENT_DELETED_WAR1_DEITY'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_IMPROVEMENT_DELETED_WAR3_DEITY'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_IMPROVEMENT_DELETED_WAR2_DEITY');


INSERT OR IGNORE INTO DistrictModifiers (DistrictType, ModifierId) VALUES
('DISTRICT_INDUSTRIAL_ZONE',			 'RH_AI_IMPROVEMENT_DELETED_WAR2_DEITY');

		
INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_AI_IMPROVEMENT_DELETED_WAR1_DEITY',								'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',		'RH_AI_HAS_CURRENCY_REQ_S_DEITY'), -- pvs MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY
		('RH_AI_IMPROVEMENT_DELETED_WAR3_DEITY',								'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',		'RH_AI_HAS_SHIPBUILDING_REQ_S_DEITY'),
		('RH_AI_IMPROVEMENT_DELETED_WAR2_DEITY',								'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY',			'RH_AI_HAS_MACHINERY_REQ_S_DEITY');
		

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_AI_IMPROVEMENT_DELETED_WAR1_DEITY',								'UnitType',					'UNIT_BUILDER'),
		('RH_AI_IMPROVEMENT_DELETED_WAR1_DEITY',								'Amount',					1),
		('RH_AI_IMPROVEMENT_DELETED_WAR1_DEITY',								'AllowUniqueOverride',		0),
		
		('RH_AI_IMPROVEMENT_DELETED_WAR3_DEITY',								'UnitType',					'UNIT_BUILDER'),
		('RH_AI_IMPROVEMENT_DELETED_WAR3_DEITY',								'Amount',					1),
		('RH_AI_IMPROVEMENT_DELETED_WAR3_DEITY',								'AllowUniqueOverride',		0),
		
		('RH_AI_IMPROVEMENT_DELETED_WAR2_DEITY',								'UnitType',					'UNIT_BUILDER'),
		('RH_AI_IMPROVEMENT_DELETED_WAR2_DEITY',								'Amount',					1),
		('RH_AI_IMPROVEMENT_DELETED_WAR2_DEITY',								'AllowUniqueOverride',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_CURRENCY_REQ_S_DEITY',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_SHIPBUILDING_REQ_S_DEITY',							'REQUIREMENTSET_TEST_ALL'),
		('RH_AI_HAS_MACHINERY_REQ_S_DEITY',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		
		
		('RH_AI_HAS_CURRENCY_REQ_S_DEITY',									'RH_REQUIRES_OWN_CITY'),		
		('RH_AI_HAS_CURRENCY_REQ_S_DEITY',									'RH_REQUIRES_HAS_TECH_CURRENCY'),
		('RH_AI_HAS_CURRENCY_REQ_S_DEITY',									'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_CURRENCY_REQ_S_DEITY',									'REQUIRES_PLAYER_IMMORTAL_RH'),
		--
		
		('RH_AI_HAS_SHIPBUILDING_REQ_S_DEITY',								'RH_REQUIRES_OWN_CITY'),		
		('RH_AI_HAS_SHIPBUILDING_REQ_S_DEITY',								'RH_REQUIRES_HAS_TECH_SHIPBUILDING'),
		('RH_AI_HAS_SHIPBUILDING_REQ_S_DEITY',								'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_SHIPBUILDING_REQ_S_DEITY',								'REQUIRES_PLAYER_IMMORTAL_RH'),
		
		
		('RH_AI_HAS_MACHINERY_REQ_S_DEITY',									'RH_REQUIRES_OWN_CITY'),		
		('RH_AI_HAS_MACHINERY_REQ_S_DEITY',									'RH_REQUIRES_HAS_TECH_MACHINERY'),
		('RH_AI_HAS_MACHINERY_REQ_S_DEITY',									'REQUIRES_PLAYER_IS_AI'),
		('RH_AI_HAS_MACHINERY_REQ_S_DEITY',									'REQUIRES_PLAYER_IMMORTAL_RH');
		--
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_CURRENCY',						'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_SHIPBUILDING',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_MACHINERY',						'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
('REQUIRES_PLAYER_IMMORTAL_RH', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_IMMORTAL_RH', 						'Handicap', 				'DIFFICULTY_IMMORTAL'),
		('RH_REQUIRES_HAS_TECH_CURRENCY',						'TechnologyType',			'TECH_CURRENCY'),
		('RH_REQUIRES_HAS_TECH_SHIPBUILDING',					'TechnologyType',			'TECH_SHIPBUILDING'),
		('RH_REQUIRES_HAS_TECH_MACHINERY',						'TechnologyType',			'TECH_MACHINERY');
