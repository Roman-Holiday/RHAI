
-- Monopolies++ Basic Support
-- I had to make this entire file twice after renaming the folder deleted it :(

INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('UnitPriorityBoosts', 'UNIT_LEU_INVESTOR', 50), 
('UnitPriorityBoosts', 'UNIT_LEU_TYCOON',   30); 


DELETE FROM AiFavoredItems WHERE ListType = 'CultureVictorySavings';

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('CultureVictorySavings', 'SAVING_UNITS', 										 1),
--('CultureVictorySavings', 'SAVING_SLUSH_FUND', 								 	-1); 
--('CultureVictorySavings', 'SAVING_GREAT_PEOPLE', 								 0), 
--('CultureVictorySavings', 'SAVING_PLOTS', 									1), 

-- 1, 3, 3, 3

/*
UPDATE PseudoYields   SET DefaultValue =  0.85 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MERCHANT';
UPDATE AiFavoredItems SET Value = 15 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_GOLD';


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('CultureVictoryYields', 'YIELD_GOLD', 		1, 10), 
('CultureVictoryYields', 'YIELD_PRODUCTION', 1, 10);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('CultureVictoryWonders', 'BUILDING_BANK', 		1, 30), -- UNIT_LEU_TYCOON
('CultureVictoryWonders', 'BUILDING_WORKSHOP', 1, 30);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('CultureVictoryPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 50),
('CultureVictoryPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 50);
*/

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('CultureVictoryUnits', 'UNIT_LEU_TYCOON', 1, 40),
('CultureVictoryUnits', 'UNIT_LEU_INVESTOR', 1, 100);

/*
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('CultureVictorySettlement', 'New Resources',         0, 5,                   NULL), -- base 4
('CultureVictorySettlement', 'Resource Class',        0, 14, 'RESOURCECLASS_LUXURY'); -- base 2
*/


INSERT OR IGNORE INTO TraitModifiers
		(TraitTYpe,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'LEU_FREE_AI_TYCOON_STEEL_HIGH_DIFF'),
		('TRAIT_LEADER_MAJOR_CIV',		'LEU_FREE_AI_TYCOON_COMBUSTION_HIGH_DIFF');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('LEU_FREE_AI_TYCOON_STEEL_HIGH_DIFF',					'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',	'LEU_AI_HAS_STEEL_HIGH_DIFF'),
		('LEU_FREE_AI_TYCOON_COMBUSTION_HIGH_DIFF',				'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',	'LEU_AI_HAS_COMBUSTION_HIGH_DIFF');
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('LEU_FREE_AI_TYCOON_STEEL_HIGH_DIFF',					'UnitType',					'UNIT_LEU_TYCOON'),
		('LEU_FREE_AI_TYCOON_STEEL_HIGH_DIFF',					'Amount',					1),
		('LEU_FREE_AI_TYCOON_STEEL_HIGH_DIFF',					'AllowUniqueOverride',		0),
		('LEU_FREE_AI_TYCOON_COMBUSTION_HIGH_DIFF',				'UnitType',					'UNIT_LEU_TYCOON'),
		('LEU_FREE_AI_TYCOON_COMBUSTION_HIGH_DIFF',				'Amount',					1),
		('LEU_FREE_AI_TYCOON_COMBUSTION_HIGH_DIFF',				'AllowUniqueOverride',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('LEU_AI_HAS_STEEL_HIGH_DIFF',							'REQUIREMENTSET_TEST_ALL'),
		('LEU_AI_HAS_COMBUSTION_HIGH_DIFF',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('LEU_AI_HAS_STEEL_HIGH_DIFF',							'LEU_REQUIRES_HAS_TECH_STEEL'),
		('LEU_AI_HAS_STEEL_HIGH_DIFF',							'REQUIRES_PLAYER_IS_AI'),
		('LEU_AI_HAS_STEEL_HIGH_DIFF',							'REQUIRES_PLAYER_HIGH_DIFF_AI'),
		--
		('LEU_AI_HAS_COMBUSTION_HIGH_DIFF',						'LEU_REQUIRES_HAS_TECH_COMBUSTION'),
		('LEU_AI_HAS_COMBUSTION_HIGH_DIFF',						'REQUIRES_PLAYER_IS_AI'),
		('LEU_AI_HAS_COMBUSTION_HIGH_DIFF',						'REQUIRES_PLAYER_HIGH_DIFF_AI');
		--
		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('LEU_REQUIRES_HAS_TECH_STEEL',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('LEU_REQUIRES_HAS_TECH_COMBUSTION',			'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('REQUIRES_PLAYER_HIGH_DIFF_AI', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0);


INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_HIGH_DIFF_AI', 				'Handicap', 				'DIFFICULTY_DEITY'),
		('LEU_REQUIRES_HAS_TECH_MASS_PRODUCTION',		'TechnologyType',			'TECH_MASS_PRODUCTION'),
		('LEU_REQUIRES_HAS_TECH_STEAM_POWER',			'TechnologyType',			'TECH_STEAM_POWER'),
		('LEU_REQUIRES_HAS_TECH_STEEL',					'TechnologyType',			'TECH_STEEL'),
		('LEU_REQUIRES_HAS_TECH_COMBUSTION',			'TechnologyType',			'TECH_COMBUSTION');
	
	
	