

-- RH Internal Strat Part 2
-- Author: RomanHoliday
-- DateCreated: 1/12/2023 22:34:51 PM
-- Copyright 2024,© RomanHoliday, All rights reserved



-- Spy Inactivity Compensation (until / if I can fix inactive spys 30-40% of the time)
			
INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_LEADER_MAJOR_CIV',		'RH_SPY_INACTIVITY_COMPENSATION');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_SPY_INACTIVITY_COMPENSATION',					'MODIFIER_PLAYER_GRANT_SPY',	'RH_REQ_S_THE_ENLIGHTENMENT'); -- Capacity Only

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_SPY_INACTIVITY_COMPENSATION',					'Amount', '1');


INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_REQ_S_THE_ENLIGHTENMENT', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_REQ_S_THE_ENLIGHTENMENT', 'RH_R_THE_ENLIGHTENMENT'),
		('RH_REQ_S_THE_ENLIGHTENMENT', 'REQUIRES_PLAYER_IS_AI');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('RH_R_THE_ENLIGHTENMENT', 		'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('RH_R_THE_ENLIGHTENMENT',			'CivicType',	'CIVIC_THE_ENLIGHTENMENT');


INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_LEADER_MAJOR_CIV',		'RH_SPY_INACTIVITY_COMPENSATION_2');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_SPY_INACTIVITY_COMPENSATION_2',					'MODIFIER_PLAYER_GRANT_SPY',	'RH_REQ_S_THE_URBANIZATION'); -- Capacity Only

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_SPY_INACTIVITY_COMPENSATION_2',					'Amount', '1');


INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_REQ_S_THE_URBANIZATION', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_REQ_S_THE_URBANIZATION', 'RH_R_THE_URBANIZATION'),
		('RH_REQ_S_THE_URBANIZATION', 'REQUIRES_PLAYER_IS_AI');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('RH_R_THE_URBANIZATION', 		'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('RH_R_THE_URBANIZATION',			'CivicType',	'CIVIC_URBANIZATION');



--INSERT INTO TraitModifiers
--		(TraitType,						ModifierId) VALUES	
--		('TRAIT_LEADER_MAJOR_CIV',		'MODIFIER_RH_AI_EXT_DIPLO_SPY');

-- PROMOTION_SPY_ACE_DRIVER
-- PROMOTION_SPY_GUERILLA_LEADER


/*
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


INSERT INTO Modifiers
		(ModifierId,					ModifierType,					SubjectRequirementSetId, RunOnce, Permanent) VALUES	
		('MODIFIER_RH_AI_EXT_DIPLO_SPY',				'MODIFIER_PLAYER_ADD_DIPLO_VISIBILITY',		'PLAYER_IS_AI', 1, 1);


INSERT INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		('MODIFIER_RH_AI_EXT_DIPLO_SPY',								'Amount',				1),
		('MODIFIER_RH_AI_EXT_DIPLO_SPY',								'Source',			'SOURCE_SPY');   -- pvs SOURCE_SPY

-- SOURCE_SPY in Diplovisbility Sources
	--	('MODIFIER_RH_AI_EXT_DIPLO_SPY',								'SourceType',		'DIPLO_SOURCE_ALL_NAMES'); -- Not always defined -- Not needed



INSERT INTO UnitPromotionModifiers (UnitPromotionType, ModifierId) VALUES
--('PROMOTION_SPY_SATCHEL_CHARGES', 	'MODIFIER_RH_AI_EXT_DIPLO_SPY'), -- Test
('PROMOTION_SPY_GUERILLA_LEADER', 	'MODIFIER_RH_AI_EXT_DIPLO_SPY'), -- Test

('PROMOTION_SPY_LINGUIST', 			'MODIFIER_RH_AI_EXT_DIPLO_SPY'), -- 25%
('PROMOTION_SPY_DISGUISE', 			'MODIFIER_RH_AI_EXT_DIPLO_SPY'); -- No Time to Estabish



/*
			<ModifierId>GREATPERSON_DIPLO_VISIBILITY</ModifierId>
			<Name>Source</Name>
			<Value>SOURCE_GREAT_PERSON_JOURNALISM</Value>
		</Row>
		<Row>
			<ModifierId>GREATPERSON_DIPLO_VISIBILITY</ModifierId>
			<Name>SourceType</Name>
			<Value>DIPLO_SOURCE_ALL_NAMES</Value>
		</Row>
*/


-- Diplomatic Service -- When Spys are First Unlocked



-- Spy Operation Modifier Changes (not possible)

-- Todo disable Neutralise Governer Expect for Elenour of Aquitane


-- Building Changes


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF',				'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF',		'YieldType'    , 'YIELD_RH_UNDER_ATTACK'),
		('RH_DEF',						'Amount'   , 500); -- pvs 2 Culture lol, 5, 9, 30, 20, 30, 38

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_WALLS', 'RH_DEF');

/*
Maybe too Many Modifiers at Once?
INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_F',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_F',		'YieldType'    , 'YIELD_FAITH'),
		('RH_DEF_F',						'Amount'   , 2);

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_WALLS', 'RH_DEF_F');


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_G',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_G',		'YieldType'    , 'YIELD_GOLD'),
		('RH_DEF_G',						'Amount'   , 1);

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_WALLS', 'RH_DEF_G');
*/



INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_W',				'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	'RH_AI_ANCIENT_WAR_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_W',	'YieldType'    , 'YIELD_RH_UNDER_ATTACK'),
		('RH_DEF_W',						'Amount'   , 50);

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_CASTLE', 'RH_DEF_W');


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_LATE',				'MODIFIER_SINGLE_CITY_ADJUST_CITY_YIELD_PER_POPULATION',	'RH_AI_ANCIENT_WAR_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_LATE',	'YieldType'    , 'YIELD_RH_UNDER_ATTACK'),
		('RH_DEF_LATE',						'Amount'   , 75);

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_STAR_FORT', 'RH_DEF_LATE');



INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_ENT_NEGATIVE',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_ENT_NEGATIVE',			'YieldType'    , 'YIELD_RH_EXPANSION'),
		('RH_DEF_ENT_NEGATIVE',						'Amount'   , -125); -- pvs -30, -50, -100

INSERT INTO DistrictModifiers (DistrictType, ModifierId) VALUES
('DISTRICT_ENTERTAINMENT_COMPLEX', 		'RH_DEF_ENT_NEGATIVE');






/*

PLAYER_HAS_SMALL_MILITARY could be used for an AI Strategy?? -- Need to test if it is detected by internal AI
		<Row>
			<ModifierId>MINOR_CIV_PRODUCTION_MILITARY</ModifierId>
			<ModifierType>MODIFIER_PLAYER_CITIES_ADJUST_MILITARY_UNITS_PRODUCTION</ModifierType>
			<SubjectRequirementSetId>PLAYER_HAS_SMALL_MILITARY</SubjectRequirementSetId>
		</Row>
*/




-- Ludwig: test
/*
		<Row>
			<ModifierId>TRAIT_ANTIQUES_AND_PARKS_SCIENCE_NATIONAL_WONDERS_OR_MOUNTAINS</ModifierId>
			<ModifierType>MODIFIER_PLAYER_ADJUST_PLOT_YIELD</ModifierType>
			<SubjectRequirementSetId>REQUIREMENTS_PLOT_ADJACENT_NATURAL_WONDERS_OR_MOUNTAINS_BREATHTAKING</SubjectRequirementSetId>
		</Row>
		
		
		<Row>
			<RequirementSetId>REQUIREMENTS_PLOT_ADJACENT_NATURAL_WONDERS_OR_MOUNTAINS</RequirementSetId>
			<RequirementId>REQUIRES_PLOT_ADJACENT_TO_NATURAL_WONDER</RequirementId>
		</Row>
		<Row>
			<RequirementSetId>REQUIREMENTS_PLOT_ADJACENT_NATURAL_WONDERS_OR_MOUNTAINS</RequirementSetId>
			<RequirementId>REQUIRES_PLOT_ADJACENT_TO_MOUNTAIN</RequirementId>
		</Row>
*/



-- WC




-- Ban WC_RES_WMD_BAN



INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(68, 'WC_RES_ARMS_CONTROL', 2, 'WC_RES_RH_WMD_BAN_2');


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_WMD_BAN_2',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_WMD_BAN_2',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_ENGINEER'),	
			('WC_RES_RH_WMD_BAN_2',				'Amount',					9000); -- pvs 20, 40 musician, 300 general



-- Not trade APPLY_INTERNATIONAL_MAJOR_TRADE_ROUTES_DISABLED


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(28, 'WC_RES_TRADE_TREATY', 2, 'WC_RES_RH_TRADE_BAN_2');


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_TRADE_BAN_2',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_TRADE_BAN_2',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_GENERAL'),	
			('WC_RES_RH_TRADE_BAN_2',				'Amount',					30); -- pvs 12, 17, 25, 40



-- Urban Development 


-- A

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_URBAN_DEVELOPMENT_HALF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	

		('RH_URBAN_DEVELOPMENT_HALF_MOD',		'YieldType', 			'YIELD_RH_CITY_CENTRE'),
		('RH_URBAN_DEVELOPMENT_HALF_MOD',								'Amount'   , 12); -- pvs 3, 4, 10, 12, 15


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_URBAN_DEVELOPEMENT_INDUSTRIAL',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_URBAN_DEVELOPEMENT_INDUSTRIAL',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_ENGINEER'),	
			('WC_RES_RH_URBAN_DEVELOPEMENT_INDUSTRIAL',				'Amount',					6); -- pvs 2, 4, 5


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(208, 'WC_RES_URBAN_DEVELOPMENT', 1, 'RH_URBAN_DEVELOPMENT_HALF_MOD'),

(210, 'WC_RES_URBAN_DEVELOPMENT', 1, 'WC_RES_RH_URBAN_DEVELOPEMENT_INDUSTRIAL'); -- Often votes for Industrial Zone Building



-- B

INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_URBAN_DEVELOPEMENT_FAITH_AGENDA',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_URBAN_DEVELOPEMENT_FAITH_AGENDA',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_PROPHET'),	
			('WC_RES_RH_URBAN_DEVELOPEMENT_FAITH_AGENDA',				'Amount',					2); 


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_DISTRICT_BUILDING_BAN_NOT_SCIENCE',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_DISTRICT_BUILDING_BAN_NOT_SCIENCE',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_SCIENTIST'),	
			('WC_RES_RH_DISTRICT_BUILDING_BAN_NOT_SCIENCE',				'Amount',					6); -- pvs 12, 10 Engineer, 5


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(108, 'WC_RES_URBAN_DEVELOPMENT', 2, 'WC_RES_RH_DISTRICT_BUILDING_BAN_NOT_SCIENCE');


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(209, 'WC_RES_URBAN_DEVELOPMENT', 2, 'WC_RES_RH_URBAN_DEVELOPEMENT_FAITH_AGENDA');
-- Testing try not to get religious building banned



-- Ban Border Expansion APPLY_NO_CULTURE_BORDER_EXPANSION_TO_PLAYER


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(88, 'WC_RES_BORDER_CONTROL', 2, 'WC_RES_RH_CULTURE_BORDER_EXPANSION_BAN_2');


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_CULTURE_BORDER_EXPANSION_BAN_2',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_CULTURE_BORDER_EXPANSION_BAN_2',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_ADMIRAL'),	
			('WC_RES_RH_CULTURE_BORDER_EXPANSION_BAN_2',				'Amount',					2); -- 15 too high, 7, 3


	



-- Deforest Treaty


-- A

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEFORESTATION_TREATY_HALF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	

		('RH_DEFORESTATION_TREATY_HALF_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_DEFORESTATION_TREATY_HALF_MOD',								'Amount'   , 4); 


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_DEFORESTATION_TREATY_MUSIC',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_DEFORESTATION_TREATY_MUSIC',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_MUSICIAN'),	
			('WC_RES_RH_DEFORESTATION_TREATY_MUSIC',				'Amount',					16); 


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(508, 'WC_RES_DEFORESTATION_TREATY', 1, 'RH_DEFORESTATION_TREATY_HALF_MOD'),

(509, 'WC_RES_DEFORESTATION_TREATY', 1, 'WC_RES_RH_DEFORESTATION_TREATY_MUSIC'); -- Often votes for Industrial Zone Building



-- B

INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_DEFORESTATION_TREATY_FAITH_AGENDA',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_DEFORESTATION_TREATY_FAITH_AGENDA',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_ENGINEER'),	
			('WC_RES_RH_DEFORESTATION_TREATY_FAITH_AGENDA',				'Amount',					9); -- pvs 2, 3, 5


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_DISTRICT_BUILDING_BAN_NOT_SCIENCE',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_DISTRICT_BUILDING_BAN_NOT_SCIENCE',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_SCIENTIST'),	
			('WC_RES_RH_DISTRICT_BUILDING_BAN_NOT_SCIENCE',				'Amount',					11); -- pvs 7, 10


INSERT INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(512, 'WC_RES_DEFORESTATION_TREATY', 2, 'WC_RES_RH_DISTRICT_BUILDING_BAN_NOT_SCIENCE');


INSERT INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(513, 'WC_RES_DEFORESTATION_TREATY', 2, 'WC_RES_RH_DEFORESTATION_TREATY_FAITH_AGENDA');
-- Testing try not to get religious building banned


-- Todo Based on Sum of Features


--		<Row ResolutionEffectId="50" ResolutionType="WC_RES_DEFORESTATION_TREATY" WhichEffect="1" ModifierId="WC_RES_DEFORESTATION_BAN"/>
--		<Row ResolutionEffectId="55" ResolutionType="WC_RES_DEFORESTATION_TREATY" WhichEffect="2" ModifierId="WC_RES_DEFORESTATION_GOLD"/>
	
	
	
	
	
-- Projects Test


INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_TERRESTRIAL_LASER',	'RH_SNCV_FINISH'),
		('PROJECT_ORBITAL_LASER',		'RH_SNCV_FINISH');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_SNCV_FINISH',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_SNCV_FINISH',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_ENGINEER'),	
			('RH_SNCV_FINISH',				'Amount',					300); -- pvs 100


INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_TERRESTRIAL_LASER',	'RH_SNCV_FINISH_2'),
		('PROJECT_ORBITAL_LASER',		'RH_SNCV_FINISH_3');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
		('RH_SNCV_FINISH_2',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SNCV_FINISH_3',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
		('RH_SNCV_FINISH_2',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_SCIENTIST'),	
		('RH_SNCV_FINISH_2',				'Amount',					500), -- pvs 3, 250
		('RH_SNCV_FINISH_3',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_SCIENTIST'),
		('RH_SNCV_FINISH_3',				'Amount',					950); -- pvs 5, 750
	
	
--INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
--		('PROJECT_TERRESTRIAL_LASER',	'RH_GRANT_ONE_INFLUENCE'),
--		('PROJECT_ORBITAL_LASER',		'RH_GRANT_ONE_INFLUENCE');

	




INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_COURT_FESTIVAL',	'RH_CF_TEMP');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_CF_TEMP',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_CF_TEMP',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_ARTIST'),	
			('RH_CF_TEMP',				'Amount',					25); -- pvs 50




-- Bread and Circuses Test
	
	
--	PLAYER_HAS_HIGH_POPULATION
	
	
INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			OwnerRequirementSetId, SubjectRequirementSetId) VALUES		
			('RH_AI_LOYALTY_TEST',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE', 'RH_AI_HIGH_POP',  'RH_AI_ADJ_PLAYER_LOW_POP');


INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
			('RH_AI_LOYALTY_TEST',				'YieldType',				'YIELD_FOOD'),
			('RH_AI_LOYALTY_TEST',				'Amount',					2); 

INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_BREAD_AND_CIRCUSES',				'RH_AI_LOYALTY_TEST'),
		('PROJECT_WATER_BREAD_AND_CIRCUSES',		'RH_AI_LOYALTY_TEST');

/*
Potential Modifier Settings:
      <RunOnce>true</RunOnce>
      <Permanent>true</Permanent>
*/

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_HIGH_POP', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES		
		('RH_AI_HIGH_POP', 'REQUIRES_HAS_HIGH_POPULATION'),
		('RH_AI_HIGH_POP', 'REQUIRES_PLAYER_IS_AI');
		
-- REQUIRES_PLAYER_AT_PEACE
		

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_ADJ_PLAYER_LOW_POP', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES		
		('RH_AI_ADJ_PLAYER_LOW_POP', 'REQUIRES_HAS_LOW_POPULATION'),
		('RH_AI_ADJ_PLAYER_LOW_POP', 'REQUIRES_PLAYER_NEAR_CULTURE_BORDER'),
		('RH_AI_ADJ_PLAYER_LOW_POP', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('RH_AI_ADJ_PLAYER_LOW_POP', 'REQUIRES_PLAYER_NOT_ALLY'),
		('RH_AI_ADJ_PLAYER_LOW_POP', 'REQUIRES_PLAYER_IS_AI');
		
		
		
		
INSERT INTO Types				(Type,	Kind)  VALUES	
		('TECHNOLOGY_RH_AI_RIV_GODDESS',		'KIND_TECH'),
		('TECHNOLOGY_RH_AI_MH',					'KIND_TECH'),


		('TECHNOLOGY_RH_AI_MAIN',				'KIND_TECH'),
		('TECHNOLOGY_RH_AI_HUNGARY_ADJ',		'KIND_TECH'),
		('TECHNOLOGY_RH_AI_THEODORA_ADJ',		'KIND_TECH'),
		('TECHNOLOGY_RH_AI_LUDWIG_ADJ',			'KIND_TECH'),	
		('TECHNOLOGY_RH_AI_GERMANY_ADJ',		'KIND_TECH'),			
		('TECHNOLOGY_RH_AI_KHMER',				'KIND_TECH');			
		
INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	25,		'LOC_' || Type || '_NAME', -3 
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_AI_MAIN');	
		-- Testing 4 UI
INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	25,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_AI_THEODORA_ADJ');	
		

INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	25,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_AI_LUDWIG_ADJ');	


INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	25,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_AI_GERMANY_ADJ');	


INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	25,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_AI_HUNGARY_ADJ');	

INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	25,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_AI_RIV_GODDESS');	

INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	25,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_AI_MH');	


INSERT OR IGNORE INTO Technologies
		(TechnologyType,	EraType,		Cost,			Name, 		UITreeRow)
SELECT	Type,		'ERA_ANCIENT',	25,		'LOC_' || Type || '_NAME', -3
FROM	Types
WHERE	Type IN (
				'TECHNOLOGY_RH_AI_KHMER');	





--INSERT OR IGNORE INTO Technologies    (TechnologyType,	EraType,		Cost,	Name) VALUES
--	('TECHNOLOGY_RH_AI_MAIN',					'ERA_ANCIENT',  100000, LOC_ ),
--	('TECHNOLOGY_RH_AI_LUDWIG_ADJ',				'');


	



--TECHNOLOGY_CODE_OF_LAWS

INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_LEADER_MAJOR_CIV',		'RH_START_WITH_RH_AI_MAIN_TECHNOLOGY');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_START_WITH_RH_AI_MAIN_TECHNOLOGY',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI'); 

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_START_WITH_RH_AI_MAIN_TECHNOLOGY',					'TechType', 'TECHNOLOGY_RH_AI_MAIN');






INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('RH_AI_RIV_GODDESS_MOD_ATTACHMENT2',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',          'CITY_FOLLOWS_PANTHEON_REQUIREMENTS');


INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('RH_AI_RIV_GODDESS_MOD_ATTACHMENT2', 'ModifierId', 'RH_AI_RIV_GODDESS_TECHNOLOGY');



/*
INSERT OR IGNORE INTO DynamicModifiers 							 (ModifierType, CollectionType, EffectType) VALUES		
		('MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY_RIV_GODDESS',					'COLLECTION_OWNER',	'EFFECT_GRANT_PLAYER_SPECIFIC_TECHNOLOGY');
*/


--INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
--('BELIEF_RIVER_GODDESS',				'RH_AI_RIV_GODDESS_TECHNOLOGY'); -- +2/2

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent) VALUES		
		('RH_AI_RIV_GODDESS_TECHNOLOGY',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI', 1, 1); 

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_AI_RIV_GODDESS_TECHNOLOGY',					'TechType', 'TECHNOLOGY_RH_AI_RIV_GODDESS');

INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
('BELIEF_RIVER_GODDESS',				'RH_AI_RIV_GODDESS_MOD_ATTACHMENT2'); 




INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent) VALUES		
		('RH_AI_MH_TECHNOLOGY',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI', 1, 1); 


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_AI_MH_TECHNOLOGY',					'TechType', 'TECHNOLOGY_RH_AI_MH');



INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES

('BUILDING_HALICARNASSUS_MAUSOLEUM', 'RH_AI_MH_TECHNOLOGY');


-- Project Type
INSERT OR IGNORE INTO Types   (Type,									Kind)  VALUES	

		('PROJECT_RH_AI_MH_REPLACEMENT',	'KIND_PROJECT');


-- Projects
--------------------------------------------------------------
INSERT OR IGNORE INTO Projects
		(ProjectType,							Cost,	CostProgressionModel,						CostProgressionParam1,	PrereqDistrict,		AdvisorType,		Name,											ShortName,												Description, PrereqTech) VALUES	

		('PROJECT_RH_AI_MH_REPLACEMENT',	25,	'COST_PROGRESSION_GAME_PROGRESS',						1500,						'DISTRICT_INDUSTRIAL_ZONE',		'ADVISOR_GENERIC',	'LOC_PROJECT_ENHANCE_DISTRICT_INDUSTRIAL_ZONE_NAME',	'LOC_PROJECT_ENHANCE_DISTRICT_INDUSTRIAL_ZONE_SHORT_NAME',		'LOC_PROJECT_ENHANCE_DISTRICT_INDUSTRIAL_ZONE_DESCRIPTION', 'TECHNOLOGY_RH_AI_MH');


-- Project_GreatPersonPoints

INSERT OR IGNORE INTO Project_GreatPersonPoints
		(ProjectType,						GreatPersonClassType,			Points, PointProgressionModel, PointProgressionParam1)  VALUES	
		('PROJECT_RH_AI_MH_REPLACEMENT',	'GREAT_PERSON_CLASS_ENGINEER',	10, 'COST_PROGRESSION_GAME_PROGRESS', 800);


-- Project_YieldConversions

INSERT OR IGNORE INTO Project_YieldConversions
		(ProjectType,						YieldType,			PercentOfProductionRate)  VALUES	
		('PROJECT_RH_AI_MH_REPLACEMENT',	'YIELD_GOLD',	15);




INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_MH_EXT',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_MH_EXT',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_ENGINEER'),	
			('RH_MH_EXT',				'Amount',					75); 

INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_RH_AI_MH_REPLACEMENT',	'RH_MH_EXT');




INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('RH_MH_BUILDING_PRODUCTION',          'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',                     'PLAYER_IS_AI'),
('RH_MH_BUILDING_PRODUCTION_MODIFIER', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE_ETHIOPIA', 'RH_WORKSHOP_REQ_S'); -- used by Industrial CSs


-- Normally  MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_CHANGE

INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('RH_MH_BUILDING_PRODUCTION',          'ModifierId', 'RH_MH_BUILDING_PRODUCTION_MODIFIER'),
('RH_MH_BUILDING_PRODUCTION_MODIFIER', 'Amount',     '10');

INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)		VALUES ('RH_WORKSHOP_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('RH_WORKSHOP_REQ_S', 'RH_PLAYER_AT_ANCIENT_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('RH_WORKSHOP_REQ_S', 'RH_PLAYER_NOT_CLASSICAL_ERA');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('RH_WORKSHOP_REQ_S', 'REQUIRES_PLAYER_IS_AI');
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('RH_WORKSHOP_REQ_S', 'REQUIRES_RH_HAS_CIVIC_DEFENSE');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES ('RH_WORKSHOP_REQ_S', 'REQUIRES_CITY_HAS_WORKSHOP_ETHIOPIA');


INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES
			('TECHNOLOGY_RH_AI_MH', 					'RH_MH_BUILDING_PRODUCTION'); 


-- REQUIRES_CITY_HAS_FACTORY_ETHIOPIA
-- REQUIRES_CITY_HAS_POWER_PLANT_ETHIOPIA








-- Adjacencies

INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	
 -- Ludwig
('DISTRICT_CAMPUS', 						'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_THEATER', 						'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_ENTERTAINMENT_COMPLEX', 			'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 	'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_HANSA', 							'Rh_Ludwig_District_to_Wonder_Culture_Lower'),
('DISTRICT_COMMERCIAL_HUB', 				'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_HOLY_SITE', 						'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_SPACEPORT', 						'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_NEIGHBORHOOD', 					'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_ENCAMPMENT', 					'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_HARBOR', 						'Rh_Ludwig_District_to_Wonder_Culture'),
('DISTRICT_AERODROME', 						'Rh_Ludwig_District_to_Wonder_Culture'),

('DISTRICT_WONDER', 						'Rh_Ludwig_Wonder_to_District_Culture'),


-- Germany
('DISTRICT_COMMERCIAL_HUB', 				'Rh_Germany_Commerical_Hub_Adj'),
('DISTRICT_COMMERCIAL_HUB', 				'Rh_Germany_Commerical_Hub_Green_AQUEDUCT'),
('DISTRICT_COMMERCIAL_HUB', 				'Rh_Germany_Commerical_Hub_Green_DAM'),

-- All Civs
('DISTRICT_ENTERTAINMENT_COMPLEX', 			'Rh_District_Entertainment_Theater'), -- 8
('DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 	'Rh_District_Entertainment_Theater'),

('DISTRICT_ENTERTAINMENT_COMPLEX', 			'Rh_District_Entertainment_Wonder'), -- 2

('DISTRICT_HIPPODROME', 					'Rh_District_Entertainment_Theater'),
('DISTRICT_AQUEDUCT', 				'Rh_Aqe_Industrial_Zone'),
('DISTRICT_BATH', 					'Rh_Aqe_Industrial_Zone'),
('DISTRICT_DAM', 					'Rh_Dam_Industrial_Zone'),
('DISTRICT_CANAL', 					'Rh_Canal_Industrial_Zone'),

('DISTRICT_HARBOR', 				'Rh_Harbour_City_Centre'),

-- Campus Temp

('DISTRICT_CAMPUS', 					'Rh_Campus_Grass_Mountain'),
('DISTRICT_CAMPUS', 					'Rh_Campus_Plains_Mountain'),
('DISTRICT_CAMPUS', 					'Rh_Campus_Tundra_Mountain'),
('DISTRICT_CAMPUS', 					'Rh_Campus_Desert_Mountain'),

('DISTRICT_HOLY_SITE', 					'Rh_Holy_Site_Grass_Mountain'),
('DISTRICT_HOLY_SITE', 					'Rh_Holy_Site_Plains_Mountain'),
('DISTRICT_HOLY_SITE', 					'Rh_Holy_Site_Tundra_Mountain'),
('DISTRICT_HOLY_SITE', 					'Rh_Holy_Site_Desert_Mountain'),



--('DISTRICT_CAMPUS', 					'Rh_Campus_Jungle'),

-- DISTRICT_INDUSTRIAL_ZONE
 
--('DISTRICT_INDUSTRIAL_ZONE', 		'Rh_Industrial_Zone_City_Centre_Negative'),
('DISTRICT_INDUSTRIAL_ZONE', 		'Rh_Industrial_Zone_River'),

('DISTRICT_INDUSTRIAL_ZONE', 		'Def_Industrial_Green_AQUEDUCT'),
('DISTRICT_INDUSTRIAL_ZONE', 		'Def_Industrial_Green_DAM'),

('DISTRICT_HANSA', 					'Rh_Industrial_Zone_City_Centre_Negative'),
('DISTRICT_HANSA', 					'Rh_Industrial_Zone_River');



-- Ban Natural Wonder Yield Crush

INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId)	
SELECT DistrictType, 						'Rh_All_District_Natural_Wonder_Dis'
FROM Districts
WHERE DistrictType LIKE 'DISTRICT_%'; 

-- Ban Volcano Placement

INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId)	
SELECT DistrictType, 							'Rh_All_District_Volcano_Dis'
FROM Districts
WHERE DistrictType LIKE 'DISTRICT_%'; 


INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId)	
SELECT DistrictType, 							'Rh_All_District_TORRES_DEL_PAINE_Dis'
FROM Districts
WHERE DistrictType LIKE 'DISTRICT_%'; 

INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId)	
SELECT DistrictType, 							'Rh_All_District_IKKIL_pref'
FROM Districts
WHERE DistrictType LIKE 'DISTRICT_%'; 




INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	
 -- PAMUKKALE Placement
 
('DISTRICT_CAMPUS', 						'Rh_All_District_PAMUKKALE_pref'),
('DISTRICT_THEATER', 						'Rh_All_District_PAMUKKALE_pref'),
('DISTRICT_ENTERTAINMENT_COMPLEX', 			'Rh_All_District_PAMUKKALE_pref'),

('DISTRICT_COMMERCIAL_HUB', 				'Rh_All_District_PAMUKKALE_pref'),

('DISTRICT_HOLY_SITE', 						'Rh_All_District_PAMUKKALE_pref');





/*
INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	

('DISTRICT_CAMPUS', 						'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_THEATER', 						'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_ENTERTAINMENT_COMPLEX', 			'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 	'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_HANSA', 							'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_COMMERCIAL_HUB', 				'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_HOLY_SITE', 						'Rh_All_District_Natural_Wonder_Dis_Minor'),
('DISTRICT_SPACEPORT', 						'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_NEIGHBORHOOD', 					'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_ENCAMPMENT', 					'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_HARBOR', 						'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_AERODROME', 						'Rh_All_District_Natural_Wonder_Dis'),

('DISTRICT_WONDER', 						'Rh_All_District_Natural_Wonder_Dis'),

('DISTRICT_DIPLOMATIC_QUARTER', 			'Rh_All_District_Natural_Wonder_Dis'),
('DISTRICT_GOVERNMENT', 					'Rh_All_District_Natural_Wonder_Dis'),


('DISTRICT_CAMPUS', 						'Rh_All_District_Volcano_Dis'),
('DISTRICT_THEATER', 						'Rh_All_District_Volcano_Dis'),
('DISTRICT_ENTERTAINMENT_COMPLEX', 			'Rh_All_District_Volcano_Dis'),
('DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 	'Rh_All_District_Volcano_Dis'),
('DISTRICT_HANSA', 							'Rh_All_District_Volcano_Dis'),
('DISTRICT_COMMERCIAL_HUB', 				'Rh_All_District_Volcano_Dis'),
('DISTRICT_HOLY_SITE', 						'Rh_All_District_Volcano_Dis'),
('DISTRICT_SPACEPORT', 						'Rh_All_District_Volcano_Dis'),
('DISTRICT_NEIGHBORHOOD', 					'Rh_All_District_Volcano_Dis'),
('DISTRICT_ENCAMPMENT', 					'Rh_All_District_Volcano_Dis'),
('DISTRICT_HARBOR', 						'Rh_All_District_Volcano_Dis'),
('DISTRICT_AERODROME', 						'Rh_All_District_Volcano_Dis'),

('DISTRICT_WONDER', 						'Rh_All_District_Volcano_Dis'),


('DISTRICT_DIPLOMATIC_QUARTER', 			'Rh_All_District_Volcano_Dis'),
('DISTRICT_GOVERNMENT', 					'Rh_All_District_Volcano_Dis');
*/

-- Main

INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	

-- Govs
('DISTRICT_DIPLOMATIC_QUARTER', 	'Rh_Diplo_City_Centre'),
('DISTRICT_DIPLOMATIC_QUARTER', 	'Rh_Diplo_Campus'),
('DISTRICT_DIPLOMATIC_QUARTER', 	'Rh_Diplo_Theater'),
('DISTRICT_DIPLOMATIC_QUARTER', 	'Rh_Diplo_Industrial'),

('DISTRICT_GOVERNMENT', 			'Rh_Gov_City_Centre'),
('DISTRICT_GOVERNMENT', 			'Rh_Gov_Campus'),

-- Coast
('DISTRICT_DIPLOMATIC_QUARTER', 	'Rh_Gov_Coast'),
('DISTRICT_GOVERNMENT', 			'Rh_Gov_Coast'),

-- Mountains
('DISTRICT_DIPLOMATIC_QUARTER', 	'Rh_Gov_Grass_Mountain'),
('DISTRICT_DIPLOMATIC_QUARTER', 	'Rh_Gov_Plains_Mountain'),
('DISTRICT_DIPLOMATIC_QUARTER', 	'Rh_Gov_Tundra_Mountain'),
('DISTRICT_DIPLOMATIC_QUARTER', 	'Rh_Gov_Desert_Mountain'),

('DISTRICT_GOVERNMENT', 			'Rh_Gov_Grass_Mountain'),
('DISTRICT_GOVERNMENT', 			'Rh_Gov_Plains_Mountain'),
('DISTRICT_GOVERNMENT', 			'Rh_Gov_Tundra_Mountain'),
('DISTRICT_GOVERNMENT', 			'Rh_Gov_Desert_Mountain'),

-- Other

('DISTRICT_AERODROME', 				'Rh_Gov_Coast'), -- -2 For Being by Coast as Can be Pillaged
('DISTRICT_AERODROME', 				'Rh_Spaceport_Encampment'),
('DISTRICT_AERODROME', 				'Rh_Aero_City_Centre'),

('DISTRICT_SPACEPORT', 				'Rh_Gov_Coast'), -- -2 For Being by Coast as Can be Pillaged
('DISTRICT_SPACEPORT', 				'Rh_Spaceport_Diplo'),
('DISTRICT_SPACEPORT', 				'Rh_Spaceport_Encampment'),
('DISTRICT_SPACEPORT', 				'Rh_Spaceport_City_Centre'),
('DISTRICT_NEIGHBORHOOD', 			'Rh_Neighborhood_Diplo');

-- Riv Goddess

INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	
('DISTRICT_HOLY_SITE', 						'Rh_District_Riv_Goddess'),
('DISTRICT_LAVRA', 							'Rh_District_Riv_Goddess');


-- Preserve

INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	
('DISTRICT_PRESERVE', 						'Rh_Preserve_FEATURE_CHOCOLATEHILLS'),
('DISTRICT_PRESERVE', 						'Rh_Preserve_FEATURE_PANTANAL'),
('DISTRICT_PRESERVE', 						'Rh_Preserve_FEATURE_WHITEDESERT'),
('DISTRICT_PRESERVE', 						'Rh_Preserve_FEATURE_GOBUSTAN'),
('DISTRICT_PRESERVE', 						'Rh_Preserve_FEATURE_EYE_OF_THE_SAHARA'),

('DISTRICT_PRESERVE', 						'Rh_Preserve_FEATURE_CLIFFS_DOVER');


INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentDistrict, AdjacentWonder) VALUES		
('Rh_Ludwig_District_to_Wonder_Culture', 					'LOC_DISTRICT_WONDER_CULTURE', 'YIELD_RH_PLACEMENT', 18, 1, 'TECHNOLOGY_RH_AI_LUDWIG_ADJ', null, 1), -- pvs 3
('Rh_Ludwig_District_to_Wonder_Culture_Lower', 				'LOC_DISTRICT_WONDER_CULTURE', 'YIELD_RH_PLACEMENT', 2, 1, 'TECHNOLOGY_RH_AI_LUDWIG_ADJ', null, 1); -- pvs 1

INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentDistrict, AdjacentWonder) VALUES		
('Rh_District_Entertainment_Wonder', 					'LOC_DISTRICT_ENT_WONDER', 'YIELD_RH_PLACEMENT', 2, 1, 'TECHNOLOGY_RH_AI_MAIN', null, 1);



INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentDistrict, OtherDistrictAdjacent) VALUES		
('Rh_Ludwig_Wonder_to_District_Culture', 				'LOC_DISTRICT_WONDER_CULTURE', 'YIELD_RH_PLACEMENT', 20, 1, 'TECHNOLOGY_RH_AI_LUDWIG_ADJ', null, 1),
('Rh_Negative_District', 				'LOC_DISTRICT_RH_ADJ_NEGATIVE', 'YIELD_RH_PLACEMENT', -1, 2, 'TECHNOLOGY_RH_AI_MAIN', null, 1); 


INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentDistrict) VALUES	
-- Germany
('Rh_Germany_Commerical_Hub_Adj', 		 'LOC_DISTRICT_RH_AI_COMMERCIAL_HUB', 'YIELD_RH_PLACEMENT', 120, 1, 			'TECHNOLOGY_RH_AI_GERMANY_ADJ', 'DISTRICT_HANSA'), -- pvs 3, 4, 7, 11
('Rh_Germany_Commerical_Hub_Green_AQUEDUCT', 		 'LOC_DISTRICT_RH_AI_COMMERCIAL_HUB', 'YIELD_RH_PLACEMENT', 12, 1, 'TECHNOLOGY_RH_AI_GERMANY_ADJ', 'DISTRICT_AQUEDUCT'), 
('Rh_Germany_Commerical_Hub_Green_DAM', 		 'LOC_DISTRICT_RH_AI_COMMERCIAL_HUB', 'YIELD_RH_PLACEMENT', 5, 1, 	'TECHNOLOGY_RH_AI_GERMANY_ADJ', 		'DISTRICT_DAM'), 

('Def_Industrial_Green_AQUEDUCT', 		 'LOC_DISTRICT_RH_AI_COMMERCIAL_HUB', 'YIELD_RH_PLACEMENT', 3, 1, 	'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_AQUEDUCT'), -- Encourage placement
('Def_Industrial_Green_DAM', 		 'LOC_DISTRICT_RH_AI_COMMERCIAL_HUB', 'YIELD_RH_PLACEMENT', 	3, 1, 	'TECHNOLOGY_RH_AI_MAIN', 		'DISTRICT_DAM'),   -- Encourage placement

('Rh_District_Hungary_City_Centre', 		 'LOC_DISTRICT_RH_AI_HUNGARY_CITY_CENTER', 'YIELD_RH_PLACEMENT', 3, 1, 'TECHNOLOGY_RH_AI_HUNGARY_ADJ', 'DISTRICT_CITY_CENTER'), -- pvs 2

-- Main Bonus
('Rh_District_Entertainment_Theater', 		 'LOC_DISTRICT_RH_AI_ENTERTAINMENT_THEATER', 'YIELD_RH_PLACEMENT', 9, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_THEATER'), -- pvs 2, 7, 8
('Rh_Aqe_Industrial_Zone',					 'LOC_DISTRICT_RH_AI_AQE_INDUSTRIAL_ZONE', 'YIELD_RH_PLACEMENT', 28, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_INDUSTRIAL_ZONE'), -- pvs 12, 18
('Rh_Dam_Industrial_Zone', 					 'LOC_DISTRICT_RH_AI_DAM_INDUSTRIAL_ZONE', 'YIELD_RH_PLACEMENT', 32, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_INDUSTRIAL_ZONE'), -- pvs 17
('Rh_Canal_Industrial_Zone', 				 'LOC_DISTRICT_RH_AI_DAM_INDUSTRIAL_ZONE', 'YIELD_RH_PLACEMENT', 110, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_INDUSTRIAL_ZONE'), -- pvs 17

('Rh_Industrial_Zone_City_Centre_Negative',	 'LOC_DISTRICT_RH_AI_CITY_CENTRE', 'YIELD_RH_PLACEMENT', -1, 2, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_CITY_CENTER'), -- Now per 2
('Rh_Seowon_City_Centre_Negative',	 		'LOC_DISTRICT_RH_AI_CITY_CENTRE_SEOWON', 'YIELD_RH_PLACEMENT', -2, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_CITY_CENTER'),
('Rh_Harbour_City_Centre',	 				'LOC_DISTRICT_RH_AI_CITY_CENTRE', 'YIELD_RH_PLACEMENT',  		120, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_CITY_CENTER'), -- pvs 11, 14, 21, 33, 42

--('Rh_All_District_No_Adj_Seowon',	 		'LOC_DISTRICT_RH_AI_CITY_CENTRE_SEOWON', 'YIELD_RH_PLACEMENT', -2, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_CITY_CENTER'), -- Already Exists

('Rh_Diplo_City_Centre', 					 'LOC_DISTRICT_RH_AI_DIPLO_CITY_CENTER_GOLD', 'YIELD_RH_PLACEMENT', 12, 1,'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_CITY_CENTER'), -- total 2
('Rh_Diplo_Campus', 						 'LOC_DISTRICT_RH_AI_DIPLO_CITY_CENTER_GOLD', 'YIELD_RH_PLACEMENT', 25, 1,'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_CAMPUS'), -- pvs 4
('Rh_Diplo_Theater', 						 'LOC_DISTRICT_RH_AI_DIPLO_CITY_CENTER_GOLD', 'YIELD_RH_PLACEMENT', 8, 1,'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_THEATER'), -- pvs 1
('Rh_Diplo_Industrial', 						 'LOC_DISTRICT_RH_AI_DIPLO_CITY_CENTER_GOLD', 'YIELD_RH_PLACEMENT', 10, 1,'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_INDUSTRIAL_ZONE'),

('Rh_Gov_City_Centre',						 'LOC_DISTRICT_RH_AI_GOV_CITY_CENTER_GOLD', 'YIELD_RH_PLACEMENT', 4, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_CITY_CENTER'),
('Rh_Gov_Campus',							 'LOC_DISTRICT_RH_AI_GOV_CITY_CENTER_GOLD', 'YIELD_RH_PLACEMENT', 2, 1, 'TECHNOLOGY_RH_AI_MAIN', 	'DISTRICT_CAMPUS'),

('Rh_Aero_City_Centre',						'LOC_DISTRICT_RH_AI_AERODROME_CITYCENTRE', 'YIELD_RH_PLACEMENT', 31, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_CITY_CENTER'), -- pvs 19
('Rh_Spaceport_City_Centre',				'LOC_DISTRICT_RH_AI_SPACEPORT_CITYCENTRE', 'YIELD_RH_PLACEMENT', 55, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_CITY_CENTER'), -- pvs 1, 2, 9, 25
('Rh_Spaceport_Encampment',					'LOC_DISTRICT_RH_AI_SPACEPORT_ENCAMPMENT', 'YIELD_RH_PLACEMENT', 3, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_ENCAMPMENT'), -- pvs 1
('Rh_Spaceport_Diplo',				 		 'LOC_DISTRICT_RH_AI_SPACEPORT_DIPLOQ', 'YIELD_RH_PLACEMENT',   26, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_DIPLOMATIC_QUARTER'), -- pvs 5, 15
('Rh_Neighborhood_Diplo',				     'LOC_DISTRICT_RH_AI_NEIGHBORHOOD_DIPLOQ', 'YIELD_RH_PLACEMENT', 4, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_DIPLOMATIC_QUARTER');


-- Todo All Wonders +1 Theater



INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentTerrain) VALUES
-- Korea	
('Rh_Seowon_Plains_Hills',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 1, 1, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_PLAINS_HILLS'),
('Rh_Seowon_Plains',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 1, 1, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_PLAINS'),
('Rh_Seowon_Grass_Hills',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 1, 1, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_GRASS_HILLS'),
('Rh_Seowon_Grass',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 1, 1, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_GRASS'),
('Rh_Seowon_Coast',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', -1, 1, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_COAST'),


('Rh_Theodora_Plains',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 1, 1, 'TECHNOLOGY_RH_AI_THEODORA_ADJ', 'TERRAIN_PLAINS'),
('Rh_Theodora_Grass',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 1, 1, 'TECHNOLOGY_RH_AI_THEODORA_ADJ', 'TERRAIN_GRASS'),
('Rh_Theodora_Coast',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', -1, 1, 'TECHNOLOGY_RH_AI_THEODORA_ADJ', 'TERRAIN_COAST'),


-- Govs 
('Rh_Gov_Coast',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', -1, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_COAST'),
('Rh_Gov_Grass_Mountain',				 		 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', -1, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_GRASS_MOUNTAIN'),
('Rh_Gov_Plains_Mountain',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', -1, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_PLAINS_MOUNTAIN'),
('Rh_Gov_Tundra_Mountain',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', -1, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_TUNDRA_MOUNTAIN'),
('Rh_Gov_Desert_Mountain',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', -1, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_DESERT_MOUNTAIN'),

-- Campus Temp
('Rh_Campus_Grass_Mountain',				 		 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 160, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_GRASS_MOUNTAIN'), -- Temp
('Rh_Campus_Plains_Mountain',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 160, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_PLAINS_MOUNTAIN'),
('Rh_Campus_Tundra_Mountain',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 120, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_TUNDRA_MOUNTAIN'),
('Rh_Campus_Desert_Mountain',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 120, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_DESERT_MOUNTAIN'),


('Rh_Holy_Site_Grass_Mountain',				 			 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_ANCIENT', 60, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_GRASS_MOUNTAIN'), -- Temp
('Rh_Holy_Site_Plains_Mountain',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_ANCIENT', 60, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_PLAINS_MOUNTAIN'),
('Rh_Holy_Site_Tundra_Mountain',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_ANCIENT', 60, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_TUNDRA_MOUNTAIN'),
('Rh_Holy_Site_Desert_Mountain',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_ANCIENT', 60, 2, 'TECHNOLOGY_RH_AI_MAIN', 'TERRAIN_DESERT_MOUNTAIN');




INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentFeature) VALUES
('Rh_Campus_Jungle',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_ANCIENT', 5, 3, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_JUNGLE');






-- Mayan

INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentResource) VALUES
-- Mayan	
('Rh_Mayan_Resource',						 'LOC_DISTRICT_RH_AI_GOV_CITY_ADJ_TERRAIN', 'YIELD_RH_PLACEMENT', 1, 1, 'TECHNOLOGY_RH_AI_MAIN', 1);





-- All District Natural Wonder Dis Preference

INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentNaturalWonder) VALUES

('Rh_All_District_Natural_Wonder_Dis',						 'LOC_DISTRICT_RH_AI_DIS_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', -2, 1, 'TECHNOLOGY_RH_AI_MAIN', 1),
('Rh_All_District_Natural_Wonder_Dis_Minor',				 'LOC_DISTRICT_RH_AI_DIS_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', -1, 1, 'TECHNOLOGY_RH_AI_MAIN', 1);



-- All District Yield Buff Wonder Super Dis

INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentFeature) VALUES
('Rh_All_District_TORRES_DEL_PAINE_Dis',						 'LOC_DISTRICT_RH_AI_DIS_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', -7, 1, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_TORRES_DEL_PAINE'); -- Double Yields


-- All District Yield Buff Wonder Super Dis

INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentFeature) VALUES
('Rh_All_District_IKKIL_pref',						 'LOC_DISTRICT_RH_AI_DIS_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', 150, 1, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_IKKIL'); -- 50% Production



INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentFeature) VALUES
('Rh_All_District_PAMUKKALE_pref',						 'LOC_DISTRICT_RH_AI_DIS_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', 25, 1, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_PAMUKKALE'); -- 50% Production


-- Preserve Strat 1


INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentFeature) VALUES
('Rh_Preserve_FEATURE_CHOCOLATEHILLS',						 'LOC_DISTRICT_RH_AI_PRES_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', 765, 2, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_CHOCOLATEHILLS'),
('Rh_Preserve_FEATURE_PANTANAL',						 'LOC_DISTRICT_RH_AI_PRES_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', 745, 2, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_PANTANAL'), 
('Rh_Preserve_FEATURE_WHITEDESERT',						 'LOC_DISTRICT_RH_AI_PRES_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', 505, 2, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_WHITEDESERT'),

('Rh_Preserve_FEATURE_GOBUSTAN',						 'LOC_DISTRICT_RH_AI_PRES_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', 505, 2, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_GOBUSTAN'), -- 1 Production, 3 Culture

('Rh_Preserve_FEATURE_EYE_OF_THE_SAHARA',				'LOC_DISTRICT_RH_AI_PRES_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', 425, 2, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_EYE_OF_THE_SAHARA'), -- 2 Production, 1 Science

('Rh_Preserve_FEATURE_CLIFFS_DOVER',						 'LOC_DISTRICT_RH_AI_PRES_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', 475, 2, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_CLIFFS_DOVER'); 



/*
	<Feature_AdjacentYields>
		<Row FeatureType="FEATURE_EVEREST" YieldType="YIELD_FAITH" YieldChange="1"/>
		<Row FeatureType="FEATURE_GALAPAGOS" YieldType="YIELD_SCIENCE" YieldChange="2"/>
		<Row FeatureType="FEATURE_KILIMANJARO" YieldType="YIELD_FOOD" YieldChange="2"/>
		<Row FeatureType="FEATURE_TSINGY" YieldType="YIELD_CULTURE" YieldChange="1"/>
		<Row FeatureType="FEATURE_TSINGY" YieldType="YIELD_SCIENCE" YieldChange="1"/>
		<Row FeatureType="FEATURE_PIOPIOTAHI" YieldType="YIELD_CULTURE" YieldChange="1"/>
		<Row FeatureType="FEATURE_PIOPIOTAHI" YieldType="YIELD_GOLD" YieldChange="1"/>
		<Row FeatureType="FEATURE_YOSEMITE" YieldType="YIELD_GOLD" YieldChange="1"/>
		<Row FeatureType="FEATURE_YOSEMITE" YieldType="YIELD_SCIENCE" YieldChange="1"/>
	</Feature_AdjacentYields>
*/



-- All District Volcano Dis Preference 

INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentFeature) VALUES
('Rh_All_District_Volcano_Dis',						 'LOC_DISTRICT_RH_AI_DIS_NATURAL_WONDER', 'YIELD_RH_PLACEMENT', -5, 1, 'TECHNOLOGY_RH_AI_MAIN', 'FEATURE_VOLCANO');




-- Industrial Zones by Rivers?


INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentRiver) VALUES	

-- Riv Goddess
('Rh_District_Riv_Goddess',					 'LOC_DISTRICT_RH_AI_RIV_GODDESS', 		'YIELD_RH_R_GODDESS', 50, 1, 'TECHNOLOGY_RH_AI_RIV_GODDESS', 1), -- pvs 6, 16, 18 placement

('Rh_District_Hungary_Rivers',					 'LOC_DISTRICT_RH_AI_HUNGARY_MAIN_RIVER', 'YIELD_RH_PLACEMENT', 3, 1, 'TECHNOLOGY_RH_AI_HUNGARY_ADJ', 1),

('Rh_Aqueduct_Hungary_Rivers',					 'LOC_DISTRICT_RH_AI_HUNGARY_AQUE_RIVER', 'YIELD_RH_PLACEMENT', -5, 1, 'TECHNOLOGY_RH_AI_HUNGARY_ADJ', 1),

('Rh_Industrial_Zone_River',					 'LOC_DISTRICT_RH_AI_INDUSTRIAL_ZONE_RIVER', 'YIELD_RH_PLACEMENT', 1, 1, 'TECHNOLOGY_RH_AI_MAIN', 1);












-- Apadana Kilwa

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_KILWA_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_APADANA_KILWA_REQ_S'),
		('RH_KILWA_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_APADANA_KILWA_REQ_S');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_KILWA_MOD_S',		'YieldType', 		'YIELD_RH_KILWA'),
		('RH_KILWA_MOD_S',							'Amount'   , 10),

		('RH_KILWA_MOD_L',		'YieldType', 		'YIELD_RH_KILWA'),
		('RH_KILWA_MOD_L',							'Amount'   , 500);





INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('RH_AI_APADANA_MOD_ATTACHMENT',          'MODIFIER_ALL_CITIES_ATTACH_MODIFIER',          'PLAYER_IS_AI');


INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('RH_AI_APADANA_MOD_ATTACHMENT', 'ModifierId', 'RH_KILWA_MOD_L');




INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_APADANA_KILWA_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_APADANA_KILWA_REQ_S', 'RH_LOCAL_CITY_APADANA'),

		('RH_APADANA_KILWA_REQ_S', 'REQUIRES_PLAYER_IS_AI');



INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
	('RH_LOCAL_CITY_APADANA', 'REQUIREMENT_CITY_HAS_BUILDING');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES	
('RH_LOCAL_CITY_APADANA', 'BuildingType', 'BUILDING_APADANA');




INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES

('BUILDING_HANGING_GARDENS', 'RH_AI_APADANA_MOD_ATTACHMENT'), 
('BUILDING_BIG_BEN', 'RH_AI_APADANA_MOD_ATTACHMENT'), 

('BUILDING_OXFORD_UNIVERSITY', 'RH_AI_APADANA_MOD_ATTACHMENT'), 
('BUILDING_RUHR_VALLEY', 'RH_AI_APADANA_MOD_ATTACHMENT'), 
('BUILDING_TEMPLE_ARTEMIS', 'RH_AI_APADANA_MOD_ATTACHMENT'), 

('BUILDING_KILWA_KISIWANI', 'RH_AI_APADANA_MOD_ATTACHMENT'); 



-------------------------------------------------------------------------------
-- RH Train Temp


INSERT INTO Types (Type, Kind) VALUES
('MODIFIER_RH_ALLOW_PROJECT_ENCAMPMENT_SINGLE_TEMP', 'KIND_MODIFIER'); 


INSERT INTO DynamicModifiers (ModifierType, CollectionType, EffectType) VALUES
('MODIFIER_RH_ALLOW_PROJECT_ENCAMPMENT_SINGLE_TEMP', 'COLLECTION_OWNER', 'EFFECT_ADD_PLAYER_PROJECT_AVAILABILITY'); 


INSERT INTO Modifiers(ModifierId, ModifierType, SubjectRequirementSetId) VALUES
('RH_AI_ALLOW_ENCAMPMENT_TEMP',          'MODIFIER_RH_ALLOW_PROJECT_ENCAMPMENT_SINGLE_TEMP',          'PLAYER_IS_AI');


INSERT INTO ModifierArguments (ModifierId, Name, Value) VALUES
('RH_AI_ALLOW_ENCAMPMENT_TEMP', 'ProjectType', 'PROJECT_RH_AI_ENCAMPMENT_TEMP');



-- Project Type
INSERT OR IGNORE INTO Types   (Type,									Kind)  VALUES	
		('PROJECT_RH_AI_ENCAMPMENT_TEMP',	'KIND_PROJECT');


INSERT OR IGNORE INTO Projects
    (ProjectType, 					Cost, 			CostProgressionModel, CostProgressionParam1, PrereqDistrict, AdvisorType, Name, ShortName, Description, PrereqTech, MaxPlayerInstances) 
VALUES 
    ('PROJECT_RH_AI_ENCAMPMENT_TEMP', 25, 'COST_PROGRESSION_GAME_PROGRESS', 1500, 'DISTRICT_ENCAMPMENT', 'ADVISOR_CONQUEST', 'RH_ENCAMPMENT_TEST_NAME', 'RH_ENCAMPMENT_TEST_SHORT', 'RH_ENCAMPMENT_TEST_DESC', NULL, 2);


-- Project_GreatPersonPoints
INSERT OR IGNORE INTO Project_GreatPersonPoints
    (ProjectType, GreatPersonClassType, Points, PointProgressionModel, PointProgressionParam1) 
VALUES 
    ('PROJECT_RH_AI_ENCAMPMENT_TEMP', 'GREAT_PERSON_CLASS_GENERAL', 10, 'COST_PROGRESSION_GAME_PROGRESS', 800);


-- Project_YieldConversions
INSERT OR IGNORE INTO Project_YieldConversions
    (ProjectType, YieldType, PercentOfProductionRate) 
VALUES 
    ('PROJECT_RH_AI_ENCAMPMENT_TEMP', 'YIELD_GOLD', 15);



INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_ENCAMP_TRAIN',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S'),
			('RH_ENCAMP_TRAIN_L',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_ENCAMP_TRAIN',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_GENERAL'),	
			('RH_ENCAMP_TRAIN',				'Amount',					650), -- pvs 650

			('RH_ENCAMP_TRAIN_L',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_GENERAL'),	
			('RH_ENCAMP_TRAIN_L',				'Amount',					1400); -- pvs 650



INSERT OR IGNORE INTO ProjectCompletionModifiers  (ProjectType, ModifierId)  VALUES	

		('PROJECT_RH_AI_ENCAMPMENT_TEMP', 		 'RH_ENCAMP_TRAIN');


INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_LEADER_MAJOR_CIV',		'RH_AI_ALLOW_ENCAMPMENT_TEMP');

--INSERT OR IGNORE INTO DistrictModifiers (DistrictType, ModifierId) VALUES
--('DISTRICT_ENCAMPMENT',			 'RH_AI_ALLOW_ENCAMPMENT_TEMP');


INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers  (GreatPersonIndividualType, ModifierId, AttachmentTargetType)  VALUES	
		('GREAT_PERSON_INDIVIDUAL_SUN_TZU', 		  'RH_ENCAMP_TRAIN_L', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),
		('GREAT_PERSON_INDIVIDUAL_BOUDICA', 		  'RH_ENCAMP_TRAIN_L', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),
		('GREAT_PERSON_INDIVIDUAL_HANNIBAL_BARCA', 	  'RH_ENCAMP_TRAIN_L', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),
		('GREAT_PERSON_INDIVIDUAL_TRUNG_TRAC', 		  'RH_ENCAMP_TRAIN_L', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER');
-- Classical


--		<Row GreatPersonIndividualType="GREAT_PERSON_INDIVIDUAL_ABDUS_SALAM" ModifierId="GREATPERSON_ALLINFORMATIONTECHBOOSTS" AttachmentTargetType="GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE"/>
--		<Row GreatPersonIndividualType="GREAT_PERSON_INDIVIDUAL_CARL_SAGAN" ModifierId="GREATPERSON_GRANT_PRODUCTION_IN_CITY_LATE_SPACE_RACE" AttachmentTargetType="GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE"/>
--		<Row GreatPersonIndividualType="GREAT_PERSON_INDIVIDUAL_STEPHANIE_KWOLEK" ModifierId="GREATPERSON_SPACE_RACE_PRODUCTION_RATE_LARGE" AttachmentTargetType="GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE"/>