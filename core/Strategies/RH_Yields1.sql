

-- RH YIELDS 1
-- Author: RomanHoliday
-- DateCreated: 1/19/2024 22:36:04 PM
-- Copyright 2024,© RomanHoliday, All rights reserved



-- Relic 


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_RELIC_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_RELIC_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_RELIC_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_RELIC_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_RELIC_MOD_XS',		'YieldType', 		'YIELD_RH_RELIC'),
		('RH_RELIC_MOD_XS',							'Amount'   , 4),

		('RH_RELIC_MOD_S',		'YieldType', 		'YIELD_RH_RELIC'),
		('RH_RELIC_MOD_S',							'Amount'   , 10),

		('RH_RELIC_MOD_L',		'YieldType', 		'YIELD_RH_RELIC'),
		('RH_RELIC_MOD_L',							'Amount'   , 50),

		('RH_RELIC_MOD',		'YieldType', 		'YIELD_RH_RELIC'),
		('RH_RELIC_MOD',							'Amount'   , 30);


INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_ST_BASILS_CATHEDRAL', 'RH_RELIC_MOD'), -- new -- +3 Relic slots +100% Religious Tourism from this city.

('BUILDING_MONT_ST_MICHEL',		 'RH_RELIC_MOD'); -- pvs 20, 22






--INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
--			('GOVERNOR_PROMOTION_VOIDSINGERS_1',									'RH_RELIC_MOD'),	
--			('GOVERNOR_PROMOTION_VOIDSINGERS_2',									'RH_RELIC_MOD'),
--			('GOVERNOR_PROMOTION_VOIDSINGERS_3',									'RH_RELIC_MOD'),
--			('GOVERNOR_PROMOTION_VOIDSINGERS_4',									'RH_RELIC_MOD');


/*
INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_VOIDSINGERS_1', 'RH_RELIC_MOD'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_VOIDSINGERS_1';

INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_VOIDSINGERS_2', 'RH_RELIC_MOD'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_VOIDSINGERS_2';

INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_VOIDSINGERS_3', 'RH_RELIC_MOD'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_VOIDSINGERS_3';

INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_VOIDSINGERS_4', 'RH_RELIC_MOD'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_VOIDSINGERS_4';
*/


-- Buildings
-- Spread Religion

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_SPREAD_RELIGION_MOD_XXS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPREAD_RELIGION_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPREAD_RELIGION_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPREAD_RELIGION_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPREAD_RELIGION_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPREAD_RELIGION_MOD_XXL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		
		('RH_SPREAD_RELIGION_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_SPREAD_RELIGION_MOD_XXS',		'YieldType', 		'YIELD_RH_SPREAD_RELIGION'),
		('RH_SPREAD_RELIGION_MOD_XXS',							'Amount'   , 1), 

		('RH_SPREAD_RELIGION_MOD_XS',		'YieldType', 		'YIELD_RH_SPREAD_RELIGION'),
		('RH_SPREAD_RELIGION_MOD_XS',							'Amount'   , 5), -- pvs 4

		('RH_SPREAD_RELIGION_MOD_S',		'YieldType', 		'YIELD_RH_SPREAD_RELIGION'),
		('RH_SPREAD_RELIGION_MOD_S',							'Amount'   , 12),

		('RH_SPREAD_RELIGION_MOD_L',		'YieldType', 		'YIELD_RH_SPREAD_RELIGION'),
		('RH_SPREAD_RELIGION_MOD_L',							'Amount'   , 35), -- pvs 50, 60, 50

		('RH_SPREAD_RELIGION_MOD_XL',		'YieldType', 		'YIELD_RH_SPREAD_RELIGION'),
		('RH_SPREAD_RELIGION_MOD_XL',							'Amount'   , 120), -- pvs 110

		('RH_SPREAD_RELIGION_MOD_XXL',		'YieldType', 		'YIELD_RH_SPREAD_RELIGION'),
		('RH_SPREAD_RELIGION_MOD_XXL',							'Amount'   , 350), -- pvs 110

		('RH_SPREAD_RELIGION_MOD',		'YieldType', 			'YIELD_RH_SPREAD_RELIGION'),
		('RH_SPREAD_RELIGION_MOD',								'Amount'   , 28); -- pvs 25



INSERT OR IGNORE INTO DistrictModifiers (DistrictType, ModifierId) VALUES
('DISTRICT_HOLY_SITE',			 	 'RH_SPREAD_RELIGION_MOD_XL');


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_HAGIA_SOPHIA', 				'RH_SPREAD_RELIGION_MOD_XL'),

('BUILDING_STONEHENGE', 				'RH_SPREAD_RELIGION_MOD'),

('BUILDING_MOSQUE', 					'RH_SPREAD_RELIGION_MOD_L'), -- pvs XS
('BUILDING_SHRINE', 					'RH_SPREAD_RELIGION_MOD_XS'),
('BUILDING_TEMPLE', 					'RH_SPREAD_RELIGION_MOD_L'); -- pvs S


INSERT INTO UnitPromotionModifiers (UnitPromotionType, ModifierId) VALUES
('PROMOTION_RELIGIOUS_ROCK', 		'RH_SPREAD_RELIGION_MOD_XL'); -- Wipes Out Religion

-- Todo Negative for Many Promotions

INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_FUTURE_VICTORY_CULTURE', 		  'RH_SPREAD_RELIGION_MOD_L'); -- Rock Band Promotions


INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES		
			('TECH_BUTTRESS', 				'RH_SPREAD_RELIGION_MOD_XL'), -- BUILDING_HAGIA_SOPHIA
			('TECH_ASTROLOGY', 				'RH_SPREAD_RELIGION_MOD_XXL'); -- pvs S, 28
			

INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
('GOVERNMENT_THEOCRACY', 			'RH_SPREAD_RELIGION_MOD_XL');

INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
('BELIEF_MOSQUE',				'RH_SPREAD_RELIGION_MOD'), -- +1 Spread
('BELIEF_HOLY_ORDER',			'RH_SPREAD_RELIGION_MOD_L'), -- 30% Lower Cost

('BELIEF_JUST_WAR',				'RH_SPREAD_RELIGION_MOD_XXS'), -- +2 Faith for Each City
('BELIEF_PILGRIMAGE',			'RH_SPREAD_RELIGION_MOD_XS'), -- +2 Faith for Each City
('BELIEF_MISSIONARY_ZEAL',		'RH_SPREAD_RELIGION_MOD_XS');


INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
			('GOVERNOR_PROMOTION_CARDINAL_BISHOP',									'RH_SPREAD_RELIGION_MOD_S'),	
			('GOVERNOR_PROMOTION_CARDINAL_LAYING_ON_OF_HANDS',						'RH_SPREAD_RELIGION_MOD_S'),
			('GOVERNOR_PROMOTION_CARDINAL_CITADEL_OF_GOD',							'RH_SPREAD_RELIGION_MOD_S'),
			('GOVERNOR_PROMOTION_CARDINAL_PATRON_SAINT',							'RH_SPREAD_RELIGION_MOD_S');


INSERT INTO UnitPromotionModifiers (UnitPromotionType, ModifierId) VALUES
('PROMOTION_MARTYR', 			'RH_SPREAD_RELIGION_MOD_S'),

('PROMOTION_ORATOR', 			'RH_SPREAD_RELIGION_MOD_L'), -- 2 Spreads

('PROMOTION_DEBATER', 			'RH_SPREAD_RELIGION_MOD_L'), 
('PROMOTION_TRANSLATOR', 		'RH_SPREAD_RELIGION_MOD_L'), -- Triple Strength
('PROMOTION_PROSELYTIZER', 		'RH_SPREAD_RELIGION_MOD_L'); -- 75 Religion Removal -- Testing






INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(104, 'WC_RES_URBAN_DEVELOPMENT', 1, 'RH_SPREAD_RELIGION_MOD_L'); -- Dont ban Holy site buildings?


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(33, 'WC_RES_WORLD_RELIGION', 1, 'RH_SPREAD_RELIGION_MOD_XL');


/*
INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_VOIDSINGERS_1', 'RH_SPREAD_RELIGION_MOD_L'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_VOIDSINGERS_1';

INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_VOIDSINGERS_2', 'RH_SPREAD_RELIGION_MOD_L'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_VOIDSINGERS_2';

INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_VOIDSINGERS_3', 'RH_SPREAD_RELIGION_MOD_L'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_VOIDSINGERS_3';

INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_VOIDSINGERS_4', 'RH_SPREAD_RELIGION_MOD_L'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_VOIDSINGERS_4';
	*/	
		

-- Void Singers
-- Moksha + Promotions



-- Diplo

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DIPLO_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLO_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLO_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLO_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLO_MOD_ML',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),	
		
		('RH_DIPLO_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLO_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLO_MOD_XXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');		
		

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	

		('RH_DIPLO_MOD_XXL',		'YieldType', 	'YIELD_RH_DIPLO'),
		('RH_DIPLO_MOD_XXL',						'Amount'   , 1800), 

		('RH_DIPLO_MOD_XL',		'YieldType', 		'YIELD_RH_DIPLO'),
		('RH_DIPLO_MOD_XL',							'Amount'   , 600), -- pvd 80, 75, 175, 250

		('RH_DIPLO_MOD_MXL',		'YieldType', 	'YIELD_RH_DIPLO'),
		('RH_DIPLO_MOD_MXL',						'Amount'   , 300),

		('RH_DIPLO_MOD_L',		'YieldType', 		'YIELD_RH_DIPLO'),
		('RH_DIPLO_MOD_L',							'Amount'   , 200),

		('RH_DIPLO_MOD_ML',		'YieldType', 		'YIELD_RH_DIPLO'),
		('RH_DIPLO_MOD_ML',							'Amount'   , 70),

		('RH_DIPLO_MOD_S',		'YieldType', 		'YIELD_RH_DIPLO'),
		('RH_DIPLO_MOD_S',							'Amount'   , 9),  -- pvs 6

		('RH_DIPLO_MOD_M',		'YieldType', 		'YIELD_RH_DIPLO'),
		('RH_DIPLO_MOD_M',							'Amount'   , 8), -- pvs 10, 9, 10

		('RH_DIPLO_MOD',		'YieldType', 		'YIELD_RH_DIPLO'),
		('RH_DIPLO_MOD',							'Amount'   , 27); -- pvs 20


INSERT OR REPLACE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_MAHABODHI_TEMPLE', 				'RH_DIPLO_MOD_XL'),
('BUILDING_STATUE_LIBERTY', 				'RH_DIPLO_MOD_XXL'),

('BUILDING_CHANCERY', 						'RH_DIPLO_MOD_ML'),
('BUILDING_CONSULATE', 						'RH_DIPLO_MOD'),

('BUILDING_POTALA_PALACE', 					'RH_DIPLO_MOD_MXL'),

('BUILDING_LIGHTHOUSE', 					'RH_DIPLO_MOD_ML'), -- Statue Liberty

('BUILDING_WALLS', 							'RH_DIPLO_MOD_MXL'), -- pvs 10
('BUILDING_CASTLE', 						'RH_DIPLO_MOD_MXL'), -- pvs 10
('BUILDING_STAR_FORT', 						'RH_DIPLO_MOD_MXL'), -- pvs 70
('BUILDING_ORSZAGHAZ', 						'RH_DIPLO_MOD'),
('BUILDING_KILWA_KISIWANI', 				'RH_DIPLO_MOD'),
('BUILDING_PAGODA', 						'RH_DIPLO_MOD_MXL'), -- Test 300 instead of 100 to build Holy Sites if possible

('BUILDING_GOV_CITYSTATES', 				'RH_DIPLO_MOD');



INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId) -- Todo Alt Harold Only
SELECT 'BUILDING_STAVE_CHURCH', 'RH_DIPLO_MOD_ML' 
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_STAVE_CHURCH'); 




INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	

		('POLICY_LIMES', 		 	 				 'RH_DIPLO_MOD_ML'), -- Ren Walls
		('POLICY_CIVIL_PRESTIGE', 		 	 		 'RH_DIPLO_MOD_XL'); -- All Eras, 1 Amenity, 2 Housing for City with Governor, temp gov effect


INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES		
			('CIVIC_CIVIL_ENGINEERING', 			'RH_DIPLO_MOD_XL'),	  -- Statue of Liberty 	
			('CIVIC_GLOBAL_WARMING_MITIGATION', 	'RH_DIPLO_MOD_L');	-- +1 DV point	

INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES		
			('TECH_SIEGE_TACTICS', 					'RH_DIPLO_MOD_L'),
			('TECH_CASTLES', 						'RH_DIPLO_MOD_L'),
	
			('TECH_SEASTEADS', 						'RH_DIPLO_MOD_L');	-- +1 DV point	


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
		('GOVERNMENT_MONARCHY', 			'RH_DIPLO_MOD_L');

INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_CARBON_RECAPTURE',	'RH_DIPLO_MOD_S'),  -- Reduces CO2 to potentially 0 and earns 30 diplo favor
		('PROJECT_SEND_AID',			'RH_DIPLO_MOD_M'), -- +2 for winning -- pvs 10
		('PROJECT_TRAIN_ATHLETES',		'RH_DIPLO_MOD');  -- +1 dp for gold tier (highest score)


INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
('BELIEF_PAGODA',				'RH_DIPLO_MOD_XL'); -- +1 DF


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(3, 'WC_RES_DIPLOVICTORY', 1, 'RH_DIPLO_MOD_XXL');



/*
INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_1', 'RH_DIPLO_MOD'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_1';

INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_2', 'RH_DIPLO_MOD'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_2';

INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_3', 'RH_DIPLO_MOD'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_3';

INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
SELECT 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_4', 'RH_DIPLO_MOD'
FROM Types WHERE Type = 'GOVERNOR_PROMOTION_OWLS_OF_MINERVA_4';
*/


-- Spy CS Influence Behaviour
-- Aramni Promotions?






-- Loyalty


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_LOYALTY_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_LOYALTY_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_LOYALTY_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_LOYALTY_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_LOYALTY_MOD_XL',		'YieldType', 		'YIELD_RH_LOYALTY'),
		('RH_LOYALTY_MOD_XL',							'Amount'   , 200),

		('RH_LOYALTY_MOD_L',		'YieldType', 		'YIELD_RH_LOYALTY'),
		('RH_LOYALTY_MOD_L',							'Amount'   , 50),

		('RH_LOYALTY_MOD_S',		'YieldType', 		'YIELD_RH_LOYALTY'),
		('RH_LOYALTY_MOD_S',							'Amount'   , 4),

		('RH_LOYALTY_MOD',		'YieldType', 		'YIELD_RH_LOYALTY'),
		('RH_LOYALTY_MOD',							'Amount'   , 20);


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(163, 'WC_RES_MIGRATION_TREATY', 1, 'RH_LOYALTY_MOD_L');


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_TAJ_MAHAL', 				'RH_LOYALTY_MOD_L');


INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_BREAD_AND_CIRCUSES',					'RH_LOYALTY_MOD_S'),  
		('PROJECT_WATER_BREAD_AND_CIRCUSES',			'RH_LOYALTY_MOD_S');


INSERT INTO UnitPromotionModifiers (UnitPromotionType, ModifierId) VALUES
('PROMOTION_INDIE', 		'RH_LOYALTY_MOD_XL'); -- Reduces Loyalty by 40

-- Todo Negative for Many Promotions

INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_FUTURE_VICTORY_CULTURE', 		  'RH_LOYALTY_MOD_XL'); -- Rock Band Promotions


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_COLOSSEUM',		 'RH_LOYALTY_MOD_S'),
('BUILDING_HANGING_GARDENS', 'RH_LOYALTY_MOD_S'),
('BUILDING_ARENA', 			 'RH_LOYALTY_MOD_S'),

('BUILDING_SEWER', 			 	'RH_LOYALTY_MOD_S'),
('BUILDING_GOV_TALL', 			 'RH_LOYALTY_MOD_S'),

('BUILDING_FERRIS_WHEEL', 			'RH_LOYALTY_MOD_S'),
('BUILDING_AQUARIUM', 				'RH_LOYALTY_MOD_S'),
('BUILDING_AQUATICS_CENTER', 		'RH_LOYALTY_MOD_S');


/*
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'EleanorWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 900 -- Growth / Happiness
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'EleanorWonders', 'BUILDING_ANGKOR_WAT', 1, 500 -- Loyalty
FROM Types WHERE Type = 'BUILDING_ANGKOR_WAT';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'EleanorWonders', 'BUILDING_TAJ_MAHAL', 1, 1000 -- +2 Each Time a City Flips (and good for golden ages)
FROM Types WHERE Type = 'BUILDING_TAJ_MAHAL';
*/


-- Dark Summoning Project



-- At War


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_AT_WAR_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_AT_WAR_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_AT_WAR_MOD_SM',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_AT_WAR_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		
		('RH_AT_WAR_MOD_20',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),			
		
		('RH_AT_WAR_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		
		('RH_AT_WAR_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),	
		('RH_AT_WAR_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_AT_WAR_MOD_XL',		'YieldType', 		'YIELD_RH_AT_WAR'),
		('RH_AT_WAR_MOD_XL',							'Amount'   , 850), -- pvs 220, 500

		('RH_AT_WAR_MOD_MXL',		'YieldType', 		'YIELD_RH_AT_WAR'),
		('RH_AT_WAR_MOD_MXL',							'Amount'   , 450), -- pvs 220

		('RH_AT_WAR_MOD_L',		'YieldType', 		'YIELD_RH_AT_WAR'),
		('RH_AT_WAR_MOD_L',							'Amount'   , 350), -- pvs 70, 140

		('RH_AT_WAR_MOD_S',		'YieldType', 		'YIELD_RH_AT_WAR'),
		('RH_AT_WAR_MOD_S',							'Amount'   , 4),

		('RH_AT_WAR_MOD_20',		'YieldType', 		'YIELD_RH_AT_WAR'),
		('RH_AT_WAR_MOD_20',							'Amount'   , 20),

		('RH_AT_WAR_MOD_SM',		'YieldType', 		'YIELD_RH_AT_WAR'),
		('RH_AT_WAR_MOD_SM',							'Amount'   , 30), -- pvs 20

		('RH_AT_WAR_MOD_M',		'YieldType', 		'YIELD_RH_AT_WAR'),
		('RH_AT_WAR_MOD_M',							'Amount'   , 125), -- pvs 75

		('RH_AT_WAR_MOD',		'YieldType', 		'YIELD_RH_AT_WAR'),
		('RH_AT_WAR_MOD',							'Amount'   , 35);
		


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(278, 'WC_RES_MERCENARY_COMPANIES', 2, 'RH_AT_WAR_MOD'); -- 50% Decrease


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(732, 'WC_RES_WORLD_RELIGION', 1, 'RH_AT_WAR_MOD_M'); -- +10 Strength




INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_TERRACOTTA_ARMY', 				'RH_AT_WAR_MOD'); -- Level Up Units


INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_ENHANCE_DISTRICT_ENCAMPMENT',				'RH_AT_WAR_MOD_S'),
		('PROJECT_REPAIR_OUTER_DEFENSES',					'RH_AT_WAR_MOD_S');
		

--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
-- New
--		('POLICY_RH_AI_OLIGARCHY', 		 	 'RH_AT_WAR_MOD_L'),
--		('POLICY_RH_AI_FASCISM', 		 	 'RH_AT_WAR_MOD_L'),
		
	--	('POLICY_RH_AI_COMMUNISM', 		 	 'RH_AT_WAR_MOD');		
		


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
-- Units
		('POLICY_AGOGE', 		 	 		 'RH_AT_WAR_MOD_XL'),
		('POLICY_FEUDAL_CONTRACT', 		 	 'RH_AT_WAR_MOD_MXL'),
		('POLICY_GRANDE_ARMEE', 		 	 'RH_AT_WAR_MOD_MXL'),
		('POLICY_MILITARY_FIRST', 		 	 'RH_AT_WAR_MOD_MXL'),	
		
		('POLICY_STRATEGIC_AIR_FORCE', 		 'RH_AT_WAR_MOD'),	-- +50% Production toward all air units and toward Carriers.

-- Special
		('POLICY_WARS_OF_RELIGION', 		  'RH_AT_WAR_MOD_MXL'), -- +4 Strength against civs that follow other relgions
		('POLICY_ELITE_FORCES',      		  'RH_AT_WAR_MOD_L'), -- 100% unit experience, but 2 Maintenance for every unit (dark age)
		('POLICY_CYBER_WARFARE', 			  'RH_AT_WAR_MOD_XL'); -- +10 against units from info and future eras


-- Deleted During Dark Age Gamemode
INSERT OR IGNORE INTO PolicyModifiers (PolicyType,			ModifierId)
SELECT 'POLICY_TWILIGHT_VALOR', 'RH_AT_WAR_MOD_MXL'
WHERE EXISTS (SELECT * FROM Policies WHERE PolicyType = 'POLICY_TWILIGHT_VALOR');


INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES

('BELIEF_DEFENDER_OF_FAITH',				'RH_AT_WAR_MOD');



INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES	
			('TECH_MINING', 				'RH_AT_WAR_MOD_M'),
			
			('TECH_BRONZE_WORKING', 		'RH_AT_WAR_MOD'),
			('TECH_THE_WHEEL', 				'RH_AT_WAR_MOD'),
			
			('TECH_MASONRY', 				'RH_AT_WAR_MOD_M'),			
			
			('TECH_IRON_WORKING', 			'RH_AT_WAR_MOD_M'),
			('TECH_ENGINEERING', 			'RH_AT_WAR_MOD_M'),
			('TECH_APPRENTICESHIP', 		'RH_AT_WAR_MOD_SM'),
			('TECH_MACHINERY', 				'RH_AT_WAR_MOD_L'),
			
			('TECH_HORSEBACK_RIDING', 		'RH_AT_WAR_MOD_SM'),
			
			('TECH_STIRRUPS', 				'RH_AT_WAR_MOD_M'), -- Knights
			('TECH_MILITARY_ENGINEERING', 	'RH_AT_WAR_MOD'), -- Trebuchet
			
			('TECH_GUNPOWDER', 				'RH_AT_WAR_MOD'),			
			('TECH_METAL_CASTING', 			'RH_AT_WAR_MOD_M'),			
			('TECH_PRINTING', 				'RH_AT_WAR_MOD'),

			('TECH_MILITARY_SCIENCE', 				'RH_AT_WAR_MOD'), -- Line infantry, Cav

			('TECH_INDUSTRIALIZATION', 				'RH_AT_WAR_MOD_SM'),
			
			('TECH_REPLACEABLE_PARTS', 				'RH_AT_WAR_MOD_20'),
			('TECH_BALLISTICS', 					'RH_AT_WAR_MOD_20'),

			('TECH_COMBUSTION', 					'RH_AT_WAR_MOD_M'),
			('TECH_COMBINED_ARMS', 					'RH_AT_WAR_MOD'),
			('TECH_ADVANCED_FLIGHT', 				'RH_AT_WAR_MOD_XL'),	

			('TECH_RIFLING', 						'RH_AT_WAR_MOD_SM'), -- Leads to TECH_REFINING and Steel
			('TECH_STEEL', 							'RH_AT_WAR_MOD'),
			
			('TECH_REFINING', 						'RH_AT_WAR_MOD_M'),-- Oil
			('TECH_RADIO', 							'RH_AT_WAR_MOD_M'),	-- Aluminium		
			('TECH_STEALTH_TECHNOLOGY', 			'RH_AT_WAR_MOD'),

			('TECH_NUCLEAR_FISSION', 				'RH_AT_WAR_MOD_L'),			
			('TECH_NUCLEAR_FUSION', 				'RH_AT_WAR_MOD');


		

/*
('AggressiveTechs', 'TECH_WRITING', 							1, 0),
('AggressiveTechs', 'TECH_MINING', 								1, 900), -- New
('AggressiveTechs', 'TECH_BRONZE_WORKING', 						1, 0), 
('AggressiveTechs', 'TECH_IRON_WORKING', 						1, 0), -- Swordsmen
('AggressiveTechs', 'TECH_ENGINEERING', 						1, 90), -- Catapult
('AggressiveTechs', 'TECH_MACHINERY', 							1, 0), -- Crossbowmen

('AggressiveTechs', 'TECH_APPRENTICESHIP', 						1, 0), -- Man at Arms!

('AggressiveTechs', 'TECH_MILITARY_ENGINEERING', 				1, 0),  -- armoury / niter
('AggressiveTechs', 'TECH_STIRRUPS', 							1, 0), -- Knight
('AggressiveTechs', 'TECH_GUNPOWDER', 							1, 0),

('AggressiveTechs', 'TECH_PRINTING', 							1, 0), -- +3 Combat strength

('AggressiveTechs', 'TECH_METAL_CASTING', 						1, 0), -- Bombard

('AggressiveTechs', 'TECH_BALLISTICS',     						1, 0),
('AggressiveTechs', 'TECH_MILITARY_SCIENCE', 					1, 0), -- cav / military academy / line infantry
('AggressiveTechs', 'TECH_COMBUSTION', 							1, 0), -- Tanks
('AggressiveTechs', 'TECH_COMBINED_ARMS', 						1, 0), -- Uranium 

('AggressiveTechs', 'TECH_INDUSTRIALIZATION', 					1, 500),
('AggressiveTechs', 'TECH_STEAM_POWER', 						1, 0),
('AggressiveTechs', 'TECH_FLIGHT', 								1, 0),
('AggressiveTechs', 'TECH_ADVANCED_FLIGHT', 					1, 0), -- Important
('AggressiveTechs', 'TECH_RADIO', 								1, 0), -- Aluminium
('AggressiveTechs', 'TECH_REFINING', 							1, 0), -- Oil
('AggressiveTechs', 'TECH_RIFLING', 							1, 0), -- Leads to TECH_REFINING and Steel

('AggressiveTechs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0), -- adv bombers
('AggressiveTechs', 'TECH_NUCLEAR_FISSION', 					1, 0), 
('AggressiveTechs', 'TECH_NUCLEAR_FUSION', 						1, 0), 
('AggressiveTechs', 'TECH_SMART_MATERIALS', 					1, 0);
*/




-- Under Attack 



INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_UNDER_ATTACK_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_UNDER_ATTACK_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_UNDER_ATTACK_MOD_XS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		
		('RH_UNDER_ATTACK_MOD_ML',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		('RH_UNDER_ATTACK_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_UNDER_ATTACK_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_UNDER_ATTACK_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_UNDER_ATTACK_MOD_NEGATIVE1',		'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_UNDER_ATTACK_MOD_XL',		'YieldType', 		'YIELD_RH_UNDER_ATTACK'),
		('RH_UNDER_ATTACK_MOD_XL',							'Amount'   , 950), -- pvs 350, 500, 800

		('RH_UNDER_ATTACK_MOD_MXL',		'YieldType', 		'YIELD_RH_UNDER_ATTACK'),
		('RH_UNDER_ATTACK_MOD_MXL',							'Amount'   , 220), -- pvs 125, 190

		('RH_UNDER_ATTACK_MOD_ML',		'YieldType', 		'YIELD_RH_UNDER_ATTACK'),
		('RH_UNDER_ATTACK_MOD_ML',							'Amount'   , 140), 

		('RH_UNDER_ATTACK_MOD_L',		'YieldType', 		'YIELD_RH_UNDER_ATTACK'),
		('RH_UNDER_ATTACK_MOD_L',							'Amount'   , 80), -- pvs 60

		('RH_UNDER_ATTACK_MOD_S',		'YieldType', 		'YIELD_RH_UNDER_ATTACK'),
		('RH_UNDER_ATTACK_MOD_S',							'Amount'   , 20), -- pvs 6, 9

		('RH_UNDER_ATTACK_MOD_XS',		'YieldType', 		'YIELD_RH_UNDER_ATTACK'),
		('RH_UNDER_ATTACK_MOD_XS',							'Amount'   , 12),

		('RH_UNDER_ATTACK_MOD',		'YieldType', 			'YIELD_RH_UNDER_ATTACK'),
		('RH_UNDER_ATTACK_MOD',								'Amount'   , 55), -- pvs 22, 32
		
		('RH_UNDER_ATTACK_MOD_NEGATIVE1',		'YieldType', 	'YIELD_RH_UNDER_ATTACK'),
		('RH_UNDER_ATTACK_MOD_NEGATIVE1',					'Amount'   , -25);





INSERT INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES		
			('TECH_BANKING', 				'RH_UNDER_ATTACK_MOD_NEGATIVE1'),
			('TECH_COMPUTERS', 				'RH_UNDER_ATTACK_MOD_NEGATIVE1'),
			('TECH_ECONOMICS', 				'RH_UNDER_ATTACK_MOD_NEGATIVE1'),
			('TECH_ELECTRICITY', 			'RH_UNDER_ATTACK_MOD_NEGATIVE1'),
			('TECH_ASTROLOGY', 				'RH_UNDER_ATTACK_MOD_NEGATIVE1'),
			('TECH_BUTTRESS', 				'RH_UNDER_ATTACK_MOD_NEGATIVE1'),
			('TECH_FLIGHT', 				'RH_UNDER_ATTACK_MOD_NEGATIVE1'),
			('TECH_SANITATION', 			'RH_UNDER_ATTACK_MOD_NEGATIVE1'),
			('TECH_MATHEMATICS', 			'RH_UNDER_ATTACK_MOD_NEGATIVE1'),
			('TECH_TELECOMMUNICATIONS', 	'RH_UNDER_ATTACK_MOD_NEGATIVE1');


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(279, 'WC_RES_MERCENARY_COMPANIES', 2, 'RH_UNDER_ATTACK_MOD_MXL'); -- 50% Decrease


INSERT INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES		
			('TECH_MASONRY', 				'RH_UNDER_ATTACK_MOD_XL'),
			('TECH_CASTLES', 				'RH_UNDER_ATTACK_MOD'),
			
			('TECH_ANIMAL_HUSBANDRY', 		'RH_UNDER_ATTACK_MOD_XL'),	-- For Archery	
			('TECH_ARCHERY', 				'RH_UNDER_ATTACK_MOD_XL'),
			
			('TECH_MINING', 				'RH_UNDER_ATTACK_MOD_S'), -- For Machinery
			('TECH_IRON_WORKING', 			'RH_UNDER_ATTACK_MOD_MXL'), -- For Machinery
			('TECH_THE_WHEEL', 				'RH_UNDER_ATTACK_MOD'), -- For Machinery
			('TECH_BRONZE_WORKING', 		'RH_UNDER_ATTACK_MOD'), -- For Machinery
			('TECH_ENGINEERING', 			'RH_UNDER_ATTACK_MOD'), -- For Machinery, pvs M, S
			
			('TECH_MACHINERY', 				'RH_UNDER_ATTACK_MOD_XL'), -- pvs MXL
			
			('TECH_APPRENTICESHIP', 		'RH_UNDER_ATTACK_MOD_MXL'), -- Man at Arms
			('TECH_STIRRUPS', 				'RH_UNDER_ATTACK_MOD_MXL'), -- Knights
			
			('TECH_SIEGE_TACTICS', 			'RH_UNDER_ATTACK_MOD'), -- Ren Walls
			('TECH_PRINTING', 				'RH_UNDER_ATTACK_MOD'), 

			('TECH_GUNPOWDER', 				'RH_UNDER_ATTACK_MOD_MXL'), -- Musketmen
			('TECH_METAL_CASTING', 			'RH_UNDER_ATTACK_MOD_MXL'), -- For Ballistics
			
			('TECH_BALLISTICS', 			'RH_UNDER_ATTACK_MOD_XL'), --  Field Cannon Cuirassier
			
			('TECH_RIFLING', 				'RH_UNDER_ATTACK_MOD_L'), -- Leads to Steel and Refining
			('TECH_STEEL', 					'RH_UNDER_ATTACK_MOD_XL'),
			
			('TECH_MILITARY_SCIENCE', 		'RH_UNDER_ATTACK_MOD_MXL'), -- Line Infantry, Cav
			
			('TECH_REFINING', 				'RH_UNDER_ATTACK_MOD_MXL'), -- Oil, Battleships
			('TECH_COMBUSTION', 			'RH_UNDER_ATTACK_MOD_MXL'), -- Tanks
			
			('TECH_ADVANCED_BALLISTICS', 	'RH_UNDER_ATTACK_MOD_MXL');	-- Machine Gun and Anti-Air
						

INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES
		('GOVERNMENT_OLIGARCHY', 					'RH_UNDER_ATTACK_MOD_L');


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_GOV_MILITARY',					 'RH_UNDER_ATTACK_MOD_MXL');
			
			
INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_REPAIR_OUTER_DEFENSES',					'RH_UNDER_ATTACK_MOD');
		
	
--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
-- New
--		('POLICY_RH_AI_OLIGARCHY', 		 	 'RH_UNDER_ATTACK_MOD_XL'),
--		('POLICY_RH_AI_FASCISM', 		 	 'RH_UNDER_ATTACK_MOD_XL'),
		
	--	('POLICY_RH_AI_COMMUNISM', 		 	 'RH_UNDER_ATTACK_MOD_S'),
	--	('POLICY_RH_AI_MONARCHY', 		 	 'RH_UNDER_ATTACK_MOD_S');	


INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES	
			('CIVIC_MILITARY_TRADITION', 			'RH_UNDER_ATTACK_MOD_L'), --POLICY_STRATEGOS, Flanking
			('CIVIC_DEFENSIVE_TACTICS', 			'RH_UNDER_ATTACK_MOD_MXL'),
	--		('CIVIC_NAVAL_TRADITION', 				'RH_UNDER_ATTACK_MOD'),
			('CIVIC_MILITARY_TRAINING', 			'RH_UNDER_ATTACK_MOD'),
			
			('CIVIC_NATIONALISM', 					'RH_UNDER_ATTACK_MOD_MXL'),
			('CIVIC_MOBILIZATION', 					'RH_UNDER_ATTACK_MOD_MXL'),
			('CIVIC_TOTALITARIANISM', 				'RH_UNDER_ATTACK_MOD_L');


	
INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
-- Units
		('POLICY_AGOGE', 		 	 		 'RH_UNDER_ATTACK_MOD_XL'), -- pvs L
		('POLICY_FEUDAL_CONTRACT', 		 	 'RH_UNDER_ATTACK_MOD_MXL'),
		('POLICY_GRANDE_ARMEE', 		 	 'RH_UNDER_ATTACK_MOD_MXL'), -- pvs S
		('POLICY_MILITARY_FIRST', 		 	 'RH_UNDER_ATTACK_MOD_MXL'),		

-- Cav / Naval

		('POLICY_MANEUVER', 		  		    'RH_UNDER_ATTACK_MOD_L'), -- +50% Production towards all Ancient and Classical era light and heavy cavalry units.
		('POLICY_CHIVALRY', 		    		'RH_UNDER_ATTACK_MOD_L'), -- +50% Production toward Industrial era and earlier light and heavy cavalry units.
		('POLICY_LIGHTNING_WARFARE', 		    'RH_UNDER_ATTACK_MOD_L'),
		
-- Walls
		('POLICY_LIMES', 		 	 'RH_UNDER_ATTACK_MOD_XL'), -- Critical
		('POLICY_BASTIONS', 		  'RH_UNDER_ATTACK_MOD_XS'); -- Small Boost, pvs 20


INSERT OR IGNORE INTO PolicyModifiers (PolicyType,			ModifierId)
SELECT 'POLICY_TWILIGHT_VALOR', 'RH_UNDER_ATTACK_MOD_XL'
WHERE EXISTS (SELECT * FROM Policies WHERE PolicyType = 'POLICY_TWILIGHT_VALOR');


-- 184 Already used by Lags Tech (180 by res)

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(182, 'WC_RES_PUBLIC_RELATIONS', 1, 'RH_UNDER_ATTACK_MOD_XL'); -- 100% Grievances		

-- 158 Used
INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(159, 'WC_RES_SOVEREIGNTY', 2, 		'RH_UNDER_ATTACK_MOD_L');	-- Ban City State Bonus

-- 163 Used			
-- Negative Loyalty for Attacker
INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(164, 'WC_RES_MIGRATION_TREATY', 1, 'RH_UNDER_ATTACK_MOD_ML');

-- 104 Used
INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(102, 'WC_RES_URBAN_DEVELOPMENT', 1, 'RH_UNDER_ATTACK_MOD_XL'); -- Walls Double Production

-- Embargo
INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(827, 'WC_RES_TRADE_TREATY', 2, 'RH_UNDER_ATTACK_MOD_XL'); -- Ban International Routes





-- Rh production


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_PRODUCTION_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PRODUCTION_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PRODUCTION_MOD_XS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		('RH_PRODUCTION_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PRODUCTION_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		('RH_PRODUCTION_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_PRODUCTION_MOD_XL',		'YieldType', 		'YIELD_RH_PRODUCTION'),
		('RH_PRODUCTION_MOD_XL',							'Amount'   , 250), -- pvs 75, 140

		('RH_PRODUCTION_MOD_MXL',		'YieldType', 		'YIELD_RH_PRODUCTION'),
		('RH_PRODUCTION_MOD_MXL',							'Amount'   , 60),

		('RH_PRODUCTION_MOD_L',		'YieldType', 		'YIELD_RH_PRODUCTION'),
		('RH_PRODUCTION_MOD_L',							'Amount'   , 40),

		('RH_PRODUCTION_MOD_S',		'YieldType', 		'YIELD_RH_PRODUCTION'),
		('RH_PRODUCTION_MOD_S',							'Amount'   , 4),

		('RH_PRODUCTION_MOD_XS',		'YieldType', 		'YIELD_RH_PRODUCTION'),
		('RH_PRODUCTION_MOD_XS',							'Amount'   , 2),

		('RH_PRODUCTION_MOD',		'YieldType', 		'YIELD_RH_PRODUCTION'),
		('RH_PRODUCTION_MOD',							'Amount'   , 15); -- pvs 12


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(148, 'WC_RES_GLOBAL_ENERGY_TREATY', 1, 'RH_PRODUCTION_MOD_L');


INSERT OR IGNORE INTO DistrictModifiers (DistrictType, ModifierId) VALUES
('DISTRICT_CANAL',			 	 'RH_PRODUCTION_MOD_MXL'),
('DISTRICT_DAM',				 'RH_PRODUCTION_MOD'),
('DISTRICT_AQUEDUCT',			 'RH_PRODUCTION_MOD');


INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES		
			('TECH_APPRENTICESHIP', 				'RH_PRODUCTION_MOD_L'),
			('TECH_INDUSTRIALIZATION', 				'RH_PRODUCTION_MOD_L'),
			('TECH_ELECTRICITY', 					'RH_PRODUCTION_MOD');


INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_RH_AI_MH_REPLACEMENT',	'RH_PRODUCTION_MOD_XS'); -- Encourage Projects after MH


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_INVENTION', 		  'RH_PRODUCTION_MOD_S'); -- +2 GP Engineer Points for Every Workshop


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_WORKSHOP',					 'RH_PRODUCTION_MOD'),
('BUILDING_FACTORY', 					'RH_PRODUCTION_MOD'),
('BUILDING_COAL_POWER_PLANT', 			 'RH_PRODUCTION_MOD'),
('BUILDING_FOSSIL_FUEL_POWER_PLANT', 	'RH_PRODUCTION_MOD'),

('BUILDING_HALICARNASSUS_MAUSOLEUM', 	'RH_PRODUCTION_MOD_XL'),

('BUILDING_RUHR_VALLEY', 			 'RH_PRODUCTION_MOD_L');



-- Rh DEMOCRACY


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEMOCRACY_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DEMOCRACY_MOD_NEG',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DEMOCRACY_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DEMOCRACY_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DEMOCRACY_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEMOCRACY_MOD_XL',		'YieldType', 		'YIELD_RH_DEMOCRACY'),
		('RH_DEMOCRACY_MOD_XL',							'Amount'   , 800), -- pvs 220, 350, 55, 550, 850

		('RH_DEMOCRACY_MOD_L',		'YieldType', 		'YIELD_RH_DEMOCRACY'),
		('RH_DEMOCRACY_MOD_L',							'Amount'   , 220), -- pvs 160

		('RH_DEMOCRACY_MOD_S',		'YieldType', 		'YIELD_RH_DEMOCRACY'),
		('RH_DEMOCRACY_MOD_S',							'Amount'   , 4),

		('RH_DEMOCRACY_MOD_NEG',		'YieldType', 		'YIELD_RH_DEMOCRACY'),
		('RH_DEMOCRACY_MOD_NEG',							'Amount'   , -50),

		('RH_DEMOCRACY_MOD',		'YieldType', 		'YIELD_RH_DEMOCRACY'),
		('RH_DEMOCRACY_MOD',							'Amount'   , 65); -- pvs 80


--INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
--(148, 'WC_RES_GLOBAL_ENERGY_TREATY', 1, 'RH_DEMOCRACY_MOD_L');


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_NEW_DEAL', 		  'RH_DEMOCRACY_MOD'); -- +2 Amenties and 4 Housing


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES	
			('GOVERNMENT_SYNTHETIC_TECHNOCRACY', 			'RH_DEMOCRACY_MOD_NEG'),
			('GOVERNMENT_DEMOCRACY', 						'RH_DEMOCRACY_MOD'),
			('GOVERNMENT_DIGITAL_DEMOCRACY', 				'RH_DEMOCRACY_MOD_XL');
			
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES	
			('CIVIC_DIGITAL_DEMOCRACY', 			'RH_DEMOCRACY_MOD_XL'),
			('CIVIC_SUFFRAGE', 						'RH_DEMOCRACY_MOD_L');			




-- RH COMMUNISM


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_COMMUNISM_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_COMMUNISM_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_COMMUNISM_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_COMMUNISM_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_COMMUNISM_MOD_XL',		'YieldType', 		'YIELD_RH_COMMUNISM'),
		('RH_COMMUNISM_MOD_XL',							'Amount'   , 350),

		('RH_COMMUNISM_MOD_L',		'YieldType', 		'YIELD_RH_COMMUNISM'),
		('RH_COMMUNISM_MOD_L',							'Amount'   , 105),

		('RH_COMMUNISM_MOD_S',		'YieldType', 		'YIELD_RH_COMMUNISM'),
		('RH_COMMUNISM_MOD_S',							'Amount'   , 20),

		('RH_COMMUNISM_MOD',		'YieldType', 		'YIELD_RH_COMMUNISM'),
		('RH_COMMUNISM_MOD',							'Amount'   , 55); -- pvs 30, 50


--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_NEW_DEAL', 		  'RH_COMMUNISM_MOD_L'); 


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES	
			('GOVERNMENT_SYNTHETIC_TECHNOCRACY', 		'RH_COMMUNISM_MOD_S'),
	
			('GOVERNMENT_COMMUNISM', 			'RH_COMMUNISM_MOD');
			
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES		
			('CIVIC_CLASS_STRUGGLE', 			'RH_COMMUNISM_MOD_XL');			


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_GOV_MILITARY', 				'RH_COMMUNISM_MOD_L');			


-- RH FASCISM


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_FASCISM_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_FASCISM_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_FASCISM_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_FASCISM_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FASCISM_MOD_XL',		'YieldType', 		'YIELD_RH_FASCISM'),
		('RH_FASCISM_MOD_XL',							'Amount'   , 500),

		('RH_FASCISM_MOD_L',		'YieldType', 		'YIELD_RH_FASCISM'),
		('RH_FASCISM_MOD_L',							'Amount'   , 115),

		('RH_FASCISM_MOD_S',		'YieldType', 		'YIELD_RH_FASCISM'),
		('RH_FASCISM_MOD_S',							'Amount'   , 8), -- pvs 30

		('RH_FASCISM_MOD',		'YieldType', 		'YIELD_RH_FASCISM'),
		('RH_FASCISM_MOD',							'Amount'   , 65); -- pvs 55



INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_GOV_MILITARY', 				'RH_FASCISM_MOD_L');


--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_NEW_DEAL', 		  'RH_FASCISM_MOD_L'); 


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES	
			('GOVERNMENT_CORPORATE_LIBERTARIANISM', 	'RH_FASCISM_MOD'),
			('GOVERNMENT_SYNTHETIC_TECHNOCRACY', 		'RH_FASCISM_MOD_S'), -- More communism
	
			('GOVERNMENT_FASCISM', 						'RH_FASCISM_MOD');
			
			
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES		
			('CIVIC_TOTALITARIANISM', 			'RH_FASCISM_MOD_XL');			
			
			
			

-- RH SYNTHETIC_TECHNOCRACY


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_SYNTHETIC_TECHNOCRACY_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SYNTHETIC_TECHNOCRACY_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SYNTHETIC_TECHNOCRACY_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SYNTHETIC_TECHNOCRACY_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_SYNTHETIC_TECHNOCRACY_MOD_XL',		'YieldType', 		'YIELD_RH_SYNTHETIC_TECHNOCRACY'),
		('RH_SYNTHETIC_TECHNOCRACY_MOD_XL',							'Amount'   , 220),

		('RH_SYNTHETIC_TECHNOCRACY_MOD_L',		'YieldType', 		'YIELD_RH_SYNTHETIC_TECHNOCRACY'),
		('RH_SYNTHETIC_TECHNOCRACY_MOD_L',							'Amount'   , 120),

		('RH_SYNTHETIC_TECHNOCRACY_MOD_S',		'YieldType', 		'YIELD_RH_SYNTHETIC_TECHNOCRACY'),
		('RH_SYNTHETIC_TECHNOCRACY_MOD_S',							'Amount'   , 30),

		('RH_SYNTHETIC_TECHNOCRACY_MOD',		'YieldType', 		'YIELD_RH_SYNTHETIC_TECHNOCRACY'),
		('RH_SYNTHETIC_TECHNOCRACY_MOD',							'Amount'   , 40);


--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_NEW_DEAL', 		  'RH_SYNTHETIC_TECHNOCRACY_MOD_L'); 


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES	
			('GOVERNMENT_SYNTHETIC_TECHNOCRACY', 						'RH_SYNTHETIC_TECHNOCRACY_MOD_L');
			
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES		
			('CIVIC_SYNTHETIC_TECHNOCRACY', 			'RH_SYNTHETIC_TECHNOCRACY_MOD_L');			
					
			
			
			

-- RH MERCHANT_REPUBLIC


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MERCHANT_REPUBLIC_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCHANT_REPUBLIC_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCHANT_REPUBLIC_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCHANT_REPUBLIC_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MERCHANT_REPUBLIC_MOD_XL',		'YieldType', 		'YIELD_RH_MERCHANT_REPUBLIC'),
		('RH_MERCHANT_REPUBLIC_MOD_XL',							'Amount'   , 100),

		('RH_MERCHANT_REPUBLIC_MOD_L',		'YieldType', 		'YIELD_RH_MERCHANT_REPUBLIC'),
		('RH_MERCHANT_REPUBLIC_MOD_L',							'Amount'   , 100),

		('RH_MERCHANT_REPUBLIC_MOD_S',		'YieldType', 		'YIELD_RH_MERCHANT_REPUBLIC'),
		('RH_MERCHANT_REPUBLIC_MOD_S',							'Amount'   , 4),

		('RH_MERCHANT_REPUBLIC_MOD',		'YieldType', 		'YIELD_RH_MERCHANT_REPUBLIC'),
		('RH_MERCHANT_REPUBLIC_MOD',							'Amount'   , 35);


--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_NEW_DEAL', 		  'RH_MERCHANT_REPUBLIC_MOD_L'); 


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
			('GOVERNMENT_MERCHANT_REPUBLIC', 			'RH_MERCHANT_REPUBLIC_MOD');
			
			
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES		
			('CIVIC_EXPLORATION', 			'RH_MERCHANT_REPUBLIC_MOD_L');	
			
			




-- RH MONARCHY


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MONARCHY_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MONARCHY_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MONARCHY_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MONARCHY_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MONARCHY_MOD_XL',		'YieldType', 		'YIELD_RH_MONARCHY'),
		('RH_MONARCHY_MOD_XL',							'Amount'   , 125), -- pvs 100

		('RH_MONARCHY_MOD_L',		'YieldType', 		'YIELD_RH_MONARCHY'),
		('RH_MONARCHY_MOD_L',							'Amount'   , 60),

		('RH_MONARCHY_MOD_S',		'YieldType', 		'YIELD_RH_MONARCHY'),
		('RH_MONARCHY_MOD_S',							'Amount'   , 40),

		('RH_MONARCHY_MOD',		'YieldType', 			'YIELD_RH_MONARCHY'),
		('RH_MONARCHY_MOD',								'Amount'   , 65); -- pvs 22, 35, 45


--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_NEW_DEAL', 		  'RH_MONARCHY_MOD_L'); 


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
			('GOVERNMENT_MONARCHY', 			'RH_MONARCHY_MOD');
			
			
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES	

			('CIVIC_CIVIL_SERVICE', 		'RH_MONARCHY_MOD_S'),	
			('CIVIC_THEOLOGY', 				'RH_MONARCHY_MOD_L'),		
			('CIVIC_DIVINE_RIGHT', 			'RH_MONARCHY_MOD_XL');	
			
			

-- RH OLIGARCHY


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_OLIGARCHY_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_OLIGARCHY_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_OLIGARCHY_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_OLIGARCHY_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_OLIGARCHY_MOD_XL',		'YieldType', 		'YIELD_RH_OLIGARCHY'),
		('RH_OLIGARCHY_MOD_XL',							'Amount'   , 100),

		('RH_OLIGARCHY_MOD_L',		'YieldType', 		'YIELD_RH_OLIGARCHY'),
		('RH_OLIGARCHY_MOD_L',							'Amount'   , 120),

		('RH_OLIGARCHY_MOD_S',		'YieldType', 		'YIELD_RH_OLIGARCHY'),
		('RH_OLIGARCHY_MOD_S',							'Amount'   , 8),

		('RH_OLIGARCHY_MOD',		'YieldType', 			'YIELD_RH_OLIGARCHY'),
		('RH_OLIGARCHY_MOD',								'Amount'   , 140); -- pvs 65, 85, 105, 125


--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_NEW_DEAL', 		  'RH_OLIGARCHY_MOD_L'); 


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
			('GOVERNMENT_OLIGARCHY', 			'RH_OLIGARCHY_MOD');
			
			
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES	

			('CIVIC_STATE_WORKFORCE', 				'RH_OLIGARCHY_MOD'),		
			('CIVIC_EARLY_EMPIRE', 					'RH_OLIGARCHY_MOD'),		
	
			('CIVIC_POLITICAL_PHILOSOPHY', 			'RH_OLIGARCHY_MOD_L');	-- To priotise at war
			
			
-- RH CLASSICAL_REPUBLIC


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_CLASSICAL_REPUBLIC_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_CLASSICAL_REPUBLIC_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_CLASSICAL_REPUBLIC_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_CLASSICAL_REPUBLIC_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_CLASSICAL_REPUBLIC_MOD_XL',		'YieldType', 		'YIELD_RH_CLASSICAL_REPUBLIC'),
		('RH_CLASSICAL_REPUBLIC_MOD_XL',							'Amount'   , 100),

		('RH_CLASSICAL_REPUBLIC_MOD_L',		'YieldType', 		'YIELD_RH_CLASSICAL_REPUBLIC'),
		('RH_CLASSICAL_REPUBLIC_MOD_L',							'Amount'   , 100),

		('RH_CLASSICAL_REPUBLIC_MOD_S',		'YieldType', 		'YIELD_RH_CLASSICAL_REPUBLIC'),
		('RH_CLASSICAL_REPUBLIC_MOD_S',							'Amount'   , 4),

		('RH_CLASSICAL_REPUBLIC_MOD',		'YieldType', 		'YIELD_RH_CLASSICAL_REPUBLIC'),
		('RH_CLASSICAL_REPUBLIC_MOD',							'Amount'   , 40); -- pvs 35 (caused too much autocracy)


--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_NEW_DEAL', 		  'RH_CLASSICAL_REPUBLIC_MOD_L'); 


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
			('GOVERNMENT_CLASSICAL_REPUBLIC', 			'RH_CLASSICAL_REPUBLIC_MOD');
			

INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES	

			('CIVIC_STATE_WORKFORCE', 				'RH_CLASSICAL_REPUBLIC_MOD'),		
			('CIVIC_EARLY_EMPIRE', 					'RH_CLASSICAL_REPUBLIC_MOD'),		
	
			('CIVIC_POLITICAL_PHILOSOPHY', 			'RH_CLASSICAL_REPUBLIC_MOD');	


			
		