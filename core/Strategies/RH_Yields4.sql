
-- RH YIELDS 4
-- Author: RomanHoliday
-- DateCreated: 1/19/2024 22:36:04 PM
-- Copyright 2024,© RomanHoliday, All rights reserved

-- NUCLEAR

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_NUCLEAR_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_NUCLEAR_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_NUCLEAR_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_NUCLEAR_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_NUCLEAR_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_NUCLEAR_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_NUCLEAR_MOD_XL',		'YieldType', 		'YIELD_RH_NUCLEAR'),
		('RH_NUCLEAR_MOD_XL',							'Amount'   , 850), -- pvs 175, 500, 750

		('RH_NUCLEAR_MOD_MXL',		'YieldType', 	'YIELD_RH_NUCLEAR'),
		('RH_NUCLEAR_MOD_MXL',						'Amount'   , 300), -- pvs 125, 200

		('RH_NUCLEAR_MOD_L',		'YieldType', 		'YIELD_RH_NUCLEAR'),
		('RH_NUCLEAR_MOD_L',							'Amount'   , 90),

		('RH_NUCLEAR_MOD_S',		'YieldType', 		'YIELD_RH_NUCLEAR'),
		('RH_NUCLEAR_MOD_S',							'Amount'   , 45),

		('RH_NUCLEAR_MOD_M',		'YieldType', 		'YIELD_RH_NUCLEAR'),
		('RH_NUCLEAR_MOD_M',							'Amount'   , 50), 

		('RH_NUCLEAR_MOD',		'YieldType', 		'YIELD_RH_NUCLEAR'),
		('RH_NUCLEAR_MOD',							'Amount'   , 65); -- pvs 70


--INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES		
--			('CIVIC_CIVIL_ENGINEERING', 			'RH_NUCLEAR_MOD_MXL'),	  	
--			('CIVIC_GLOBAL_WARMING_MITIGATION', 	'RH_NUCLEAR_MOD_L');		

INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES	
		('TECH_STEALTH_TECHNOLOGY', 					'RH_NUCLEAR_MOD_MXL'), -- pvs M
		('TECH_ADVANCED_FLIGHT', 						'RH_NUCLEAR_MOD_MXL'),
		
		('TECH_ADVANCED_BALLISTICS', 					'RH_NUCLEAR_MOD_MXL'), -- New
		
		
		('TECH_STEEL', 								'RH_NUCLEAR_MOD_S'), -- New		
		('TECH_COMBUSTION', 						'RH_NUCLEAR_MOD_S'), -- New		
		('TECH_REFINING', 							'RH_NUCLEAR_MOD_S'), -- New
		('TECH_PLASTICS', 							'RH_NUCLEAR_MOD_S'), -- New, for Jet Bombers
		('TECH_SYNTHETIC_MATERIALS', 				'RH_NUCLEAR_MOD_S'), -- New, for Jet Bombers		
				
			
		('TECH_NUCLEAR_FUSION', 					'RH_NUCLEAR_MOD_L'),
		('TECH_NUCLEAR_FISSION', 					'RH_NUCLEAR_MOD_MXL'),	-- pvs L
		('TECH_COMBINED_ARMS', 						'RH_NUCLEAR_MOD_MXL');	-- Uranium
		
--INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
	--	('GOVERNMENT_MONARCHY', 			'RH_NUCLEAR_MOD');
-- Synthetic Technocracy?


UPDATE ModifierArguments 
SET Value = 110 
WHERE ModifierId = 'RH_NUCLEAR_MOD_M' AND Name ='Amount';

UPDATE ModifierArguments 
SET Value = 150 
WHERE ModifierId = 'RH_NUCLEAR_MOD' AND Name ='Amount'; 
 

INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_MANHATTAN_PROJECT',				'RH_NUCLEAR_MOD_XL'),  
		('PROJECT_OPERATION_IVY',					'RH_NUCLEAR_MOD_MXL'), 
		('PROJECT_BUILD_NUCLEAR_DEVICE',			'RH_NUCLEAR_MOD_M'), -- pvs 14, 30
		('PROJECT_BUILD_THERMONUCLEAR_DEVICE',		'RH_NUCLEAR_MOD'); 







			
-- Wonder Yield		
			
			
INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_WONDER_MOD_XXS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WONDER_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WONDER_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WONDER_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WONDER_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WONDER_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_WONDER_MOD_XXS',		'YieldType', 		'YIELD_RH_WONDER'),
		('RH_WONDER_MOD_XXS',							'Amount'   , 3),

		('RH_WONDER_MOD_XS',		'YieldType', 		'YIELD_RH_WONDER'),
		('RH_WONDER_MOD_XS',							'Amount'   , 4),

		('RH_WONDER_MOD_S',		'YieldType', 		'YIELD_RH_WONDER'),
		('RH_WONDER_MOD_S',							'Amount'   , 10),

		('RH_WONDER_MOD_L',		'YieldType', 		'YIELD_RH_WONDER'),
		('RH_WONDER_MOD_L',							'Amount'   , 100),

		('RH_WONDER_MOD_XL',		'YieldType', 		'YIELD_RH_WONDER'),
		('RH_WONDER_MOD_XL',							'Amount'   , 400),

		('RH_WONDER_MOD',		'YieldType', 		'YIELD_RH_WONDER'),
		('RH_WONDER_MOD',							'Amount'   , 22);


INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_MONUMENT', 'RH_WONDER_MOD_XS');

INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
('BELIEF_MONUMENT_TO_THE_GODS',		'RH_WONDER_MOD_XXS'), -- 15% Production Ancient and Classical Pantheon

('BELIEF_SACRED_PLACES',		'RH_WONDER_MOD_S'), -- +2 Science, Culture, Gold, and Faith for each city following this Religion that has a Wonder.
('BELIEF_DIVINE_INSPIRATION',	'RH_WONDER_MOD_S'); -- +4 Faith Per Wonder


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_GOTHIC_ARCHITECTURE', 		  'RH_WONDER_MOD_XS'), -- 15% Ancient, Classical, Med and Ren
		('POLICY_CORVEE', 		 			  'RH_WONDER_MOD_XS'), -- 15% Ancient and Classical
		('POLICY_SKYSCRAPERS', 		 		  'RH_WONDER_MOD_S'); -- 15% All


INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers  (GreatPersonIndividualType, ModifierId, AttachmentTargetType)  VALUES	
		('GREAT_PERSON_INDIVIDUAL_ISIDORE_OF_MILETUS', 		  'RH_WONDER_MOD_L', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_WONDER_IN_TILE'); -- Test -- Grants 215 Production towards wonder construction at standard speed. (2 charges)

INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers  (GreatPersonIndividualType, ModifierId, AttachmentTargetType)  VALUES	
		('GREAT_PERSON_INDIVIDUAL_IMHOTEP', 		  'RH_WONDER_MOD_XL', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_WONDER_IN_TILE'); -- Test

INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers  (GreatPersonIndividualType, ModifierId, AttachmentTargetType)  VALUES	
		('GREAT_PERSON_INDIVIDUAL_FILIPPO_BRUNELLESCHI', 		  'RH_WONDER_MOD_L', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_WONDER_IN_TILE'); -- Test -- Grants 315 Production towards wonder construction. Ren Era


-- Test


INSERT OR IGNORE INTO TraitModifiers  (TraitType, ModifierId)  VALUES	
		('MINOR_CIV_BRUSSELS_TRAIT', 		 		  'RH_WONDER_MOD_L'); -- Test -- 15% Towards Wonders


-- Temp, not DLC Compatible
INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_APADANA', 				'RH_WONDER_MOD_L'), -- pvs Normal
('BUILDING_TEMPLE_ARTEMIS', 		'RH_WONDER_MOD'),
('BUILDING_KILWA_KISIWANI', 		'RH_WONDER_MOD'),
('BUILDING_HALICARNASSUS_MAUSOLEUM', 'RH_WONDER_MOD'),

('BUILDING_GREAT_LIGHTHOUSE', 	'RH_WONDER_MOD_XS'),
('BUILDING_COLOSSUS', 			'RH_WONDER_MOD_XXS'),

('BUILDING_COLOSSEUM', 		'RH_WONDER_MOD_XL'),

('BUILDING_TERRACOTTA_ARMY', 	'RH_WONDER_MOD_S'),
('BUILDING_HANGING_GARDENS', 	'RH_WONDER_MOD_S'),
('BUILDING_BIG_BEN', 			'RH_WONDER_MOD_S'),
('BUILDING_RUHR_VALLEY', 		'RH_WONDER_MOD'),

('BUILDING_BOLSHOI_THEATRE', 		'RH_WONDER_MOD'), -- 2 Free Civics

('BUILDING_ESTADIO_DO_MARACANA', 		'RH_WONDER_MOD_S'),

('BUILDING_TAJ_MAHAL', 				'RH_WONDER_MOD');


INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId) -- Persia Macedon dlc wonder
SELECT 'BUILDING_STATUE_OF_ZEUS', 'RH_WONDER_MOD_XS'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_STATUE_OF_ZEUS'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId) 
SELECT 'BUILDING_JEBEL_BARKAL', 'RH_WONDER_MOD_XXS'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_JEBEL_BARKAL'); 






/*
INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
SELECT  'BUILDING_APADANA', 'RH_WONDER_MOD_L'
FROM Types WHERE Type = 'BUILDING_APADANA';

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
SELECT  'BUILDING_TEMPLE_ARTEMIS', 'RH_WONDER_MOD'
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
SELECT  'BUILDING_KILWA_KISIWANI', 'RH_WONDER_MOD'
FROM Types WHERE Type = 'BUILDING_KILWA_KISIWANI';

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
SELECT  'BUILDING_HALICARNASSUS_MAUSOLEUM', 'RH_WONDER_MOD'
FROM Types WHERE Type = 'BUILDING_HALICARNASSUS_MAUSOLEUM';

INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
SELECT  'BUILDING_TAJ_MAHAL', 'RH_WONDER_MOD'
FROM Types WHERE Type = 'BUILDING_TAJ_MAHAL';
*/


-- Cav Yield

-- Cav Wonders

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_CAV_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_CAV_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_CAV_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_CAV_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_CAV_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_CAV_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_CAV_MOD_XL',		'YieldType', 		'YIELD_RH_CAV'),
		('RH_CAV_MOD_XL',							'Amount'   , 175),

		('RH_CAV_MOD_MXL',		'YieldType', 	'YIELD_RH_CAV'),
		('RH_CAV_MOD_MXL',						'Amount'   , 80),

		('RH_CAV_MOD_L',		'YieldType', 		'YIELD_RH_CAV'),
		('RH_CAV_MOD_L',							'Amount'   , 50),

		('RH_CAV_MOD_S',		'YieldType', 		'YIELD_RH_CAV'),
		('RH_CAV_MOD_S',							'Amount'   , 8),

		('RH_CAV_MOD_M',		'YieldType', 		'YIELD_RH_CAV'),
		('RH_CAV_MOD_M',							'Amount'   , 15), -- pvs 9

		('RH_CAV_MOD',		'YieldType', 		'YIELD_RH_CAV'),
		('RH_CAV_MOD',							'Amount'   , 40); -- pvs 20


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_STABLE', 				'RH_CAV_MOD_S'),
('BUILDING_ARMORY', 				'RH_CAV_MOD_S'),

('BUILDING_ORDU', 					'RH_CAV_MOD_S');


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_MANEUVER', 		  		    'RH_CAV_MOD'), -- +50% Production towards all Ancient and Classical era light and heavy cavalry units.
		('POLICY_CHIVALRY', 		    		'RH_CAV_MOD'), -- +50% Production toward Industrial era and earlier light and heavy cavalry units.
		('POLICY_LIGHTNING_WARFARE', 		    'RH_CAV_MOD'); -- All Cav
		
		
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES	
			('CIVIC_MILITARY_TRADITION', 			'RH_CAV_MOD_M'), -- Maneuver
			('CIVIC_RECORDED_HISTORY', 				'RH_CAV_MOD_M'),  -- Leads to CIVIC_DIVINE_RIGHT
			('CIVIC_THEOLOGY', 						'RH_CAV_MOD_M'), -- Leads to CIVIC_DIVINE_RIGHT
			('CIVIC_CIVIL_SERVICE', 				'RH_CAV_MOD'),
			('CIVIC_DIVINE_RIGHT', 					'RH_CAV_MOD'), -- CHIVALRY
			('CIVIC_TOTALITARIANISM', 				'RH_CAV_MOD'); -- POLICY_LIGHTNING_WARFARE


INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES	
		('TECH_ANIMAL_HUSBANDRY', 						'RH_CAV_MOD_M'),
		('TECH_HORSEBACK_RIDING', 						'RH_CAV_MOD'),
		('TECH_ARCHERY', 								'RH_CAV_MOD'), -- Leads to TECH_HORSEBACK_RIDING from Animal Husbandry

		('TECH_MILITARY_SCIENCE', 						'RH_CAV_MOD_L'), -- CAV
		('TECH_COMBUSTION', 							'RH_CAV_MOD_L'), -- Tanks
		('TECH_STIRRUPS', 								'RH_CAV_MOD_MXL'), -- Knight
		('TECH_BALLISTICS', 							'RH_CAV_MOD_MXL'), -- Cuirassier (Heavy Cav)
		
		('TECH_REFINING', 								'RH_CAV_MOD_L'); -- Oil



--INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
--		('GOVERNMENT_MONARCHY', 			'RH_CAV_MOD');


-- MILITARY ADV Yield


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MILITARY_ADV_MOD',					'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADV_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADV_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADV_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADV_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADV_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MILITARY_ADV_MOD_XL',		'YieldType', 		'YIELD_RH_MILITARY_ADV'),
		('RH_MILITARY_ADV_MOD_XL',							'Amount'   , 250),

		('RH_MILITARY_ADV_MOD_MXL',		'YieldType', 		'YIELD_RH_MILITARY_ADV'),
		('RH_MILITARY_ADV_MOD_MXL',							'Amount'   , 110),

		('RH_MILITARY_ADV_MOD_L',		'YieldType', 		'YIELD_RH_MILITARY_ADV'),
		('RH_MILITARY_ADV_MOD_L',							'Amount'   , 50),

		('RH_MILITARY_ADV_MOD_S',		'YieldType', 		'YIELD_RH_MILITARY_ADV'),
		('RH_MILITARY_ADV_MOD_S',							'Amount'   , 8),

		('RH_MILITARY_ADV_MOD_M',		'YieldType', 		'YIELD_RH_MILITARY_ADV'),
		('RH_MILITARY_ADV_MOD_M',							'Amount'   , 15), -- pvs 9

		('RH_MILITARY_ADV_MOD',			'YieldType', 		'YIELD_RH_MILITARY_ADV'),
		('RH_MILITARY_ADV_MOD',								'Amount'   , 40); -- pvs 20


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_MILITARY_ACADEMY', 				'RH_MILITARY_ADV_MOD_S'), -- Can Make Corps

('BUILDING_SEAPORT', 						'RH_MILITARY_ADV_MOD_M'),
('BUILDING_ALHAMBRA', 						'RH_MILITARY_ADV_MOD_M'), -- Policy Sloy and Great General Points / Amenities
('BUILDING_VENETIAN_ARSENAL', 				'RH_MILITARY_ADV_MOD_M'),


('BUILDING_TERRACOTTA_ARMY', 				'RH_MILITARY_ADV_MOD_L');


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId) VALUES
('GOVERNMENT_OLIGARCHY', 				'RH_MILITARY_ADV_MOD_S'); -- Early Boost Temp


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(174, 'WC_RES_MERCENARY_COMPANIES', 1, 			'RH_MILITARY_ADV_MOD_MXL'); -- Nerf Unit Production test


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(66, 'WC_RES_ARMS_CONTROL', 2, 			'RH_MILITARY_ADV_MOD_XL'); -- Nerf Unit Production test


/*
INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_MANEUVER', 		  		    'RH_MILITARY_ADV_MOD'),
		('POLICY_CHIVALRY', 		    		'RH_MILITARY_ADV_MOD'), 
		('POLICY_LIGHTNING_WARFARE', 		    'RH_MILITARY_ADV_MOD'); 
*/	

		
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES	
			('CIVIC_MILITARY_TRADITION', 			'RH_MILITARY_ADV_MOD_M'),
			('CIVIC_RAPID_DEPLOYMENT', 				'RH_MILITARY_ADV_MOD_S'),

			('CIVIC_NATIONALISM', 					'RH_MILITARY_ADV_MOD'),
			('CIVIC_MOBILIZATION', 					'RH_MILITARY_ADV_MOD');


INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES	
		('TECH_ADVANCED_FLIGHT', 						'RH_MILITARY_ADV_MOD_L'),
		('TECH_NUCLEAR_FISSION', 						'RH_MILITARY_ADV_MOD_L');


