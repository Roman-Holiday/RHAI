

UPDATE PseudoYields   SET DefaultValue =  0.8 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MERCHANT'; -- def 0.75
UPDATE AiFavoredItems SET Value = 14 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_GOLD'; -- def 12

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureVictoryYields', 'YIELD_GOLD', 		1, 7); -- Def 0

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureVictoryWonders', 'BUILDING_BANK', 					1, 50),
('CultureVictoryWonders', 'BUILDING_STOCK_EXCHANGE', 		1, 100);

UPDATE AiFavoredItems SET Value = 40 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- def 35
UPDATE AiFavoredItems SET Value = 40 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_RESOURCE_LUXURY'; -- def 15


REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('CultureVictorySettlement', 'New Resources',         0, 5,                   NULL), -- base 4
('CultureVictorySettlement', 'Resource Class',        0, 14, 'RESOURCECLASS_LUXURY'); -- base 2



-- Todo encourage these improvements further

/*
		<Row>
			<ImprovementType>IMPROVEMENT_INDUSTRY</ImprovementType>
			<ModifierId>INDUSTRY_GREAT_MERCHANT_POINTS</ModifierId>
		</Row>
		<!--Corporations-->
		<Row>
			<ImprovementType>IMPROVEMENT_CORPORATION</ImprovementType>
			<ModifierId>CORPORATION_CITY_GROWTH</ModifierId>
*/


INSERT OR REPLACE INTO UnitAiInfos (UnitType, AiType) VALUES
('UNIT_GREAT_MERCHANT', 'UNITAI_BUILD'); -- Corporations?






-- Test, Experimental

INSERT OR IGNORE INTO Types
		(Type,					Kind)  VALUES	
		('UNIT_RH_SPECIALIST_MERCHANT',	'KIND_UNIT');

INSERT OR IGNORE INTO Units
		(UnitType,				
		Name,		
		Description,	
		BaseSightRange,			
		BaseMoves,
		Combat,
		RangedCombat,
		Range,
		Bombard,
		Domain,
		FormationClass,
		Cost,
		BuildCharges,
		CanCapture,
		CanRetreatWhenCaptured,
		CostProgressionModel,
		CostProgressionParam1,
		PrereqTech,
		CanTrain,
		PurchaseYield,
		MustPurchase,
		Maintenance,
		PseudoYieldType,
		AdvisorType)
		/*--------------------------INVESTOR------------------------------*/
VALUES	/*UnitType*/				('UNIT_RH_SPECIALIST_MERCHANT',
		/*Name*/					'LOC_UNIT_RH_SPECIALIST_MERCHANT_NAME',
		/*Description*/				'LOC_UNIT_RH_SPECIALIST_MERCHANT_DESCRIPTION',
		/*BaseSightRange*/			2,			
		/*BaseMoves*/				4,
		/*Combat*/					0,
		/*RangedCombat*/			0,
		/*Range*/					0,
		/*Bombard*/					0,
		/*Domain*/					'DOMAIN_LAND',
		/*FormationClass*/			'FORMATION_CLASS_CIVILIAN',
		/*Cost*/					400,
		/*BuildCharges*/			1,
		/*CanCapture*/				1,
		/*CanRetreatWhenCaptured*/	1,
		/*CostProgressionModel*/	'COST_PROGRESSION_PREVIOUS_COPIES',
		/*CostProgressionParam1*/	50,
		/*PrereqTech*/				'TECH_FUTURE_TECH',
		/*CanTrain*/				1,
		/*PurchaseYield*/			'YIELD_GOLD',
		/*MustPurchase*/			1,
		/*Maintenance*/				0,
		/*PseudoYieldType*/			'PSEUDOYIELD_RESOURCE_LUXURY',
		/*AdvisorType*/				'ADVISOR_GENERIC');


INSERT OR IGNORE INTO Improvement_ValidBuildUnits
		(ImprovementType,				UnitType,				ConsumesCharge)  VALUES
		('IMPROVEMENT_CORPORATION',		'UNIT_RH_SPECIALIST_MERCHANT',	1);

INSERT OR IGNORE INTO Unit_BuildingPrereqs
		(Unit,				PrereqBuilding)
VALUES	('UNIT_RH_SPECIALIST_MERCHANT',	'BUILDING_STOCK_EXCHANGE');

INSERT OR IGNORE INTO Unit_BuildingPrereqs
		(Unit,				PrereqBuilding)
SELECT 'UNIT_RH_SPECIALIST_MERCHANT',	CivUniqueBuildingType
FROM BuildingReplaces WHERE ReplacesBuildingType = 'BUILDING_STOCK_EXCHANGE';



----------------------------------------------------------------------------------------------------------------------------------------------	

-- Free Merchant Replacement
	
INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId)   VALUES	
	--	('TRAIT_LEADER_MAJOR_CIV',		'RH_CORPORATION_MERCHANT_ECONOMICS'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_CORPORATION_MERCHANT_REPLACEABLE_PARTS'),
		('TRAIT_LEADER_MAJOR_CIV',		'RH_CORPORATION_MERCHANT_COMPUTERS');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId)  VALUES	
	--	('RH_CORPORATION_MERCHANT_ECONOMICS',				'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',	'RH_REQ_S_ECONOMICS'),
		('RH_CORPORATION_MERCHANT_REPLACEABLE_PARTS',		'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',	'RH_REQ_S_REPLACEABLE_PARTS'),
		('RH_CORPORATION_MERCHANT_COMPUTERS',				'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',	'RH_REQ_S_COMPUTERS');
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
	--	('RH_CORPORATION_MERCHANT_ECONOMICS',				'UnitType',					'UNIT_RH_SPECIALIST_MERCHANT'),
	--	('RH_CORPORATION_MERCHANT_ECONOMICS',				'Amount',					1),
	--	('RH_CORPORATION_MERCHANT_ECONOMICS',				'AllowUniqueOverride',		0),
		('RH_CORPORATION_MERCHANT_REPLACEABLE_PARTS',		'UnitType',					'UNIT_RH_SPECIALIST_MERCHANT'),
		('RH_CORPORATION_MERCHANT_REPLACEABLE_PARTS',		'Amount',					1),
		('RH_CORPORATION_MERCHANT_REPLACEABLE_PARTS',		'AllowUniqueOverride',		0),
		('RH_CORPORATION_MERCHANT_COMPUTERS',				'UnitType',					'UNIT_RH_SPECIALIST_MERCHANT'),
		('RH_CORPORATION_MERCHANT_COMPUTERS',				'Amount',					1),
		('RH_CORPORATION_MERCHANT_COMPUTERS',				'AllowUniqueOverride',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('RH_REQ_S_ECONOMICS',						'REQUIREMENTSET_TEST_ALL'),
		('RH_REQ_S_REPLACEABLE_PARTS',				'REQUIREMENTSET_TEST_ALL'),
		('RH_REQ_S_COMPUTERS',						'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)  VALUES	
		('RH_REQ_S_ECONOMICS',						'RH_REQUIRES_HAS_TECH_ECONOMICS'),
		('RH_REQ_S_ECONOMICS',						'REQUIRES_PLAYER_IS_AI'),
		('RH_REQ_S_ECONOMICS',						'REQ_RH_AI_STOCK_EXCHANGE'),
		--
		('RH_REQ_S_REPLACEABLE_PARTS',				'RH_REQUIRES_HAS_TECH_REPLACEABLE_PARTS'),
		('RH_REQ_S_REPLACEABLE_PARTS',				'REQUIRES_PLAYER_IS_AI'),
		('RH_REQ_S_REPLACEABLE_PARTS',				'REQ_RH_AI_STOCK_EXCHANGE'),
		--
		('RH_REQ_S_COMPUTERS',						'RH_REQUIRES_HAS_TECH_COMPUTERS'),
		('RH_REQ_S_COMPUTERS',						'REQUIRES_PLAYER_IS_AI'),
		('RH_REQ_S_COMPUTERS',						'REQ_RH_AI_STOCK_EXCHANGE');
		--
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('RH_REQUIRES_HAS_TECH_ECONOMICS',				'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_REPLACEABLE_PARTS',		'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('RH_REQUIRES_HAS_TECH_COMPUTERS',				'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value)
VALUES	('RH_REQUIRES_HAS_TECH_ECONOMICS',				'TechnologyType',			'TECH_ECONOMICS'),
		('RH_REQUIRES_HAS_TECH_REPLACEABLE_PARTS',		'TechnologyType',			'TECH_REPLACEABLE_PARTS'),
		('RH_REQUIRES_HAS_TECH_COMPUTERS',				'TechnologyType',			'TECH_COMPUTERS');


INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
		('REQ_RH_AI_STOCK_EXCHANGE', 		'REQUIREMENT_CITY_HAS_BUILDING');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('REQ_RH_AI_STOCK_EXCHANGE', 'BuildingType', 'BUILDING_STOCK_EXCHANGE');



/*
INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
		('RH_AI_HIGH_COMM_ADJ_2', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_COMM_ADJ_2', 'DistrictType', 'DISTRICT_COMMERICAL_HUB'),
('RH_AI_HIGH_COMM_ADJ_2', 'YieldType', 'YIELD_GOLD'),
('RH_AI_HIGH_COMM_ADJ_2', 'Amount', '2');
*/



------------------

INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,							AiType)
VALUES	('UNIT_RH_SPECIALIST_MERCHANT',				'UNITAI_BUILD');

INSERT OR IGNORE INTO Tags
		(Tag,								Vocabulary)
VALUES	('CLASS_MONOPOLY_UNIT',				'ABILITY_CLASS'),
		('CLASS_INVESTOR',					'ABILITY_CLASS');

INSERT OR IGNORE INTO TypeTags
		(Type,								Tag)
VALUES	('UNIT_RH_SPECIALIST_MERCHANT',				'CLASS_LANDCIVILIAN'),
		('UNIT_RH_SPECIALIST_MERCHANT',				'CLASS_MONOPOLY_UNIT'),
		('UNIT_RH_SPECIALIST_MERCHANT',				'CLASS_INVESTOR');

INSERT OR IGNORE INTO TypeProperties
		(Type,						Name,							Value,			PropertyType)
VALUES	('UNIT_RH_SPECIALIST_MERCHANT',		'CAN_TELEPORT_TO_CITY',			1,				'PROPERTYTYPE_IDENTITY'),
		('UNIT_RH_SPECIALIST_MERCHANT',		'LIFESPAN',						40,				'PROPERTYTYPE_IDENTITY');
			

-- TREE PLANTING FORBIDDING
INSERT OR REPLACE INTO Types
		(Type,													Kind)
VALUES	('MODIFIER_RH_CHANGE_UNIT_OPERATION_AVAILABILITY',		'KIND_MODIFIER'),
		('ABILITY_RH_NO_BUILDER_OPERATIONS',			'KIND_ABILITY'),
		('ABILITY_RH_NO_INVESTOR_LOCAL_IMPROVEMENTS',	'KIND_ABILITY');

INSERT OR REPLACE INTO DynamicModifiers
		(ModifierType,										CollectionType,		EffectType)
VALUES	('MODIFIER_RH_CHANGE_UNIT_OPERATION_AVAILABILITY',	'COLLECTION_OWNER',	'EFFECT_CHANGE_UNIT_OPERATION_AVAILABILITY');
		-- Args: Available (Bool), OperationType

INSERT OR REPLACE INTO UnitAbilities
		(UnitAbilityType)
VALUES	('ABILITY_RH_NO_BUILDER_OPERATIONS'),
		('ABILITY_RH_NO_INVESTOR_LOCAL_IMPROVEMENTS');

INSERT OR IGNORE INTO TypeTags
		(Type,												Tag)
VALUES	('ABILITY_RH_NO_BUILDER_OPERATIONS',				'CLASS_MONOPOLY_UNIT'),
		('ABILITY_RH_NO_INVESTOR_LOCAL_IMPROVEMENTS',		'CLASS_INVESTOR');

INSERT OR REPLACE INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('ABILITY_RH_NO_BUILDER_OPERATIONS',			'RH_DISABLE_PLANT_FOREST'),
		('ABILITY_RH_NO_BUILDER_OPERATIONS',			'RH_DISABLE_CLEAR_CONTAMINATION'),
		('ABILITY_RH_NO_BUILDER_OPERATIONS',			'RH_DISABLE_HARVEST_RESOURCE'),
		('ABILITY_RH_NO_BUILDER_OPERATIONS',			'RH_DISABLE_REMOVE_FEATURE'),
		('ABILITY_RH_NO_INVESTOR_LOCAL_IMPROVEMENTS',	'RH_BUILD_ONLY_CORPORATION');

INSERT OR REPLACE INTO Modifiers
		(ModifierId,							ModifierType)
VALUES	('RH_DISABLE_PLANT_FOREST',			'MODIFIER_RH_CHANGE_UNIT_OPERATION_AVAILABILITY'),
		('RH_DISABLE_CLEAR_CONTAMINATION',		'MODIFIER_RH_CHANGE_UNIT_OPERATION_AVAILABILITY'),
		('RH_DISABLE_HARVEST_RESOURCE',		'MODIFIER_RH_CHANGE_UNIT_OPERATION_AVAILABILITY'),
		('RH_DISABLE_REMOVE_FEATURE',		'MODIFIER_RH_CHANGE_UNIT_OPERATION_AVAILABILITY'),
		('RH_DISABLE_REMOVE_IMPROVEMENT',	'MODIFIER_RH_CHANGE_UNIT_OPERATION_AVAILABILITY');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,							ModifierType,											SubjectRequirementSetId)
VALUES	('RH_BUILD_ONLY_CORPORATION',			'MODIFIER_RH_CHANGE_UNIT_OPERATION_AVAILABILITY',		'INVESTOR_IS_OWNED_UNIMPROVED');		

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,							Name,				Value)
VALUES	('RH_DISABLE_PLANT_FOREST',			'OperationType',	'UNITOPERATION_PLANT_FOREST'),
		('RH_DISABLE_PLANT_FOREST',			'Available',		0),
		--
		('RH_DISABLE_CLEAR_CONTAMINATION',		'OperationType',	'UNITOPERATION_CLEAR_CONTAMINATION'),
		('RH_DISABLE_CLEAR_CONTAMINATION',		'Available',		0),
		--
		('RH_DISABLE_HARVEST_RESOURCE',	'OperationType',	'UNITOPERATION_HARVEST_RESOURCE'),
		('RH_DISABLE_HARVEST_RESOURCE',	'Available',		0),
		--
		('RH_DISABLE_REMOVE_FEATURE',	'OperationType',	'UNITOPERATION_REMOVE_FEATURE'),
		('RH_DISABLE_REMOVE_FEATURE',	'Available',		0),
		--
		('RH_DISABLE_REMOVE_IMPROVEMENT',	'OperationType',	'UNITOPERATION_REMOVE_IMPROVEMENT'),
		('RH_DISABLE_REMOVE_IMPROVEMENT',			'Available',		0),
		--
		('RH_BUILD_ONLY_CORPORATION',		'OperationType',	'UNITOPERATION_BUILD_IMPROVEMENT'),
		('RH_BUILD_ONLY_CORPORATION',		'Available',		0);


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('INVESTOR_IS_OWNED_UNIMPROVED',		'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('INVESTOR_IS_OWNED_UNIMPROVED',		'UNIT_IN_OWNER_TERRITORY_REQUIREMENT'),
		('INVESTOR_IS_OWNED_UNIMPROVED',		'REQUIRES_PLOT_HAS_NO_IMPROVEMENT'),
		('INVESTOR_IS_OWNED_UNIMPROVED',		'PLOT_HAS_RESOURCE_REQUIREMENTS');



INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,						RequirementSetType) VALUES	
		('RH_SPECIALIST_MERCHANT_BUILD_DISABLED',		'REQUIREMENTSET_TEST_ALL');



INSERT OR IGNORE INTO	TraitModifiers	 (TraitType,					ModifierId)   VALUES			
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_SPECIALIST_MERCHANT');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,		ModifierType,			SubjectRequirementSetId)  VALUES			
			('RH_AI_SPECIALIST_MERCHANT',				'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'RH_SPECIALIST_MERCHANT_BUILD_DISABLED');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,		Name,			Value)   VALUES			
			('RH_AI_SPECIALIST_MERCHANT',				'UnitType',		'UNIT_RH_SPECIALIST_MERCHANT');

