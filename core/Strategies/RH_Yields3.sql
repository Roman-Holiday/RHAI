
-- RH YIELDS 3
-- Author: RomanHoliday
-- DateCreated: 1/19/2024 22:36:04 PM
-- Copyright 2024,© RomanHoliday, All rights reserved

-- RH Happiness Buildings Yield


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_HAPPINESS_BUILDING_MOD',					'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_BUILDING_MOD_XS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_BUILDING_MOD_XXS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		('RH_HAPPINESS_BUILDING_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_BUILDING_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_BUILDING_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_BUILDING_MOD_MINUS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_BUILDING_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_HAPPINESS_BUILDING_MOD_XL',		'YieldType', 	'YIELD_RH_HAPPINESS_BUILDING'),
		('RH_HAPPINESS_BUILDING_MOD_XL',						'Amount'   , 975), -- pvs 110, 250, 900

		('RH_HAPPINESS_BUILDING_MOD_MXL',		'YieldType', 	'YIELD_RH_HAPPINESS_BUILDING'),
		('RH_HAPPINESS_BUILDING_MOD_MXL',						'Amount'   , 100), -- pvs 35

		('RH_HAPPINESS_BUILDING_MOD_L',		'YieldType', 		'YIELD_RH_HAPPINESS_BUILDING'),
		('RH_HAPPINESS_BUILDING_MOD_L',							'Amount'   , 125), -- pvs 25, 75, 95

		('RH_HAPPINESS_BUILDING_MOD_S',		'YieldType', 		'YIELD_RH_HAPPINESS_BUILDING'),
		('RH_HAPPINESS_BUILDING_MOD_S',							'Amount'   , 24), -- pvs 6

		('RH_HAPPINESS_BUILDING_MOD_XS',		'YieldType', 		'YIELD_RH_HAPPINESS_BUILDING'),
		('RH_HAPPINESS_BUILDING_MOD_XS',							'Amount'   , 4), -- pvs 2

		('RH_HAPPINESS_BUILDING_MOD_XXS',		'YieldType', 		'YIELD_RH_HAPPINESS_BUILDING'),
		('RH_HAPPINESS_BUILDING_MOD_XXS',							'Amount'   , 2), 

		('RH_HAPPINESS_BUILDING_MOD_MINUS',		'YieldType', 		'YIELD_RH_HAPPINESS_BUILDING'),
		('RH_HAPPINESS_BUILDING_MOD_MINUS',							'Amount'   , '-90'),

		('RH_HAPPINESS_BUILDING_MOD',			'YieldType', 		'YIELD_RH_HAPPINESS_BUILDING'),
		('RH_HAPPINESS_BUILDING_MOD',								'Amount'   , 50);

-- Test
INSERT OR IGNORE INTO ImprovementModifiers (ImprovementType, ModifierId) VALUES
('IMPROVEMENT_SKI_RESORT',			 'RH_HAPPINESS_BUILDING_MOD_MXL'),
('IMPROVEMENT_MOUNTAIN_TUNNEL',		 'RH_HAPPINESS_BUILDING_MOD_MINUS');


INSERT OR IGNORE INTO ImprovementModifiers (ImprovementType, ModifierId)
SELECT 'IMPROVEMENT_GOLF_COURSE', 'RH_HAPPINESS_BUILDING_MOD_L'
WHERE EXISTS (SELECT * FROM Improvements WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE');  -- Rise fall





INSERT OR IGNORE INTO DistrictModifiers (DistrictType, ModifierId) VALUES
('DISTRICT_HIPPODROME',			 'RH_HAPPINESS_BUILDING_MOD_MXL');


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_COLOSSEUM',		 'RH_HAPPINESS_BUILDING_MOD_XL'),
('BUILDING_HANGING_GARDENS', 'RH_HAPPINESS_BUILDING_MOD_S'),

('BUILDING_ARENA', 			 'RH_HAPPINESS_BUILDING_MOD_L'),

('BUILDING_ZOO', 		'RH_HAPPINESS_BUILDING_MOD_S'),
('BUILDING_THERMAL_BATH', 	'RH_HAPPINESS_BUILDING_MOD_MXL'), -- Replaces Zoo

('BUILDING_STADIUM', 		'RH_HAPPINESS_BUILDING_MOD_S'),
('BUILDING_SHOPPING_MALL', 		'RH_HAPPINESS_BUILDING_MOD_S'), -- +1, +2 When Powered

('BUILDING_ESTADIO_DO_MARACANA', 		'RH_HAPPINESS_BUILDING_MOD_L'),

('BUILDING_FLOOD_BARRIER', 		'RH_HAPPINESS_BUILDING_MOD_MXL'),

--('BUILDING_GRANARY', 			 	'RH_HAPPINESS_BUILDING_MOD_XS'),
('BUILDING_SEWER', 			 	'RH_HAPPINESS_BUILDING_MOD_XS'),
('BUILDING_GOV_TALL', 			 'RH_HAPPINESS_BUILDING_MOD_XS'),

('BUILDING_FERRIS_WHEEL', 			'RH_HAPPINESS_BUILDING_MOD_S'),
('BUILDING_AQUARIUM', 				'RH_HAPPINESS_BUILDING_MOD_S'),
('BUILDING_AQUATICS_CENTER', 		'RH_HAPPINESS_BUILDING_MOD_S');


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId)
SELECT 'BUILDING_TEMPLE_ARTEMIS', 'RH_HAPPINESS_BUILDING_MOD'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TEMPLE_ARTEMIS');  -- Rise fall

-- [4135084.225] [Gameplay] ERROR: near "SELECT": syntax error

-- BUILDING_TLACHTLI in Own File




-- RH Happiness Comprehensive Yield


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_HAPPINESS_COMP_MOD',					'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_COMP_MOD_XS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_COMP_MOD_XXS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		('RH_HAPPINESS_COMP_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_COMP_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_COMP_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HAPPINESS_COMP_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_HAPPINESS_COMP_MOD_XL',		'YieldType', 	'YIELD_RH_HAPPINESS_COMP'),
		('RH_HAPPINESS_COMP_MOD_XL',						'Amount'   , 400),

		('RH_HAPPINESS_COMP_MOD_MXL',		'YieldType', 	'YIELD_RH_HAPPINESS_COMP'),
		('RH_HAPPINESS_COMP_MOD_MXL',						'Amount'   , 130),

		('RH_HAPPINESS_COMP_MOD_L',		'YieldType', 		'YIELD_RH_HAPPINESS_COMP'),
		('RH_HAPPINESS_COMP_MOD_L',							'Amount'   , 100),

		('RH_HAPPINESS_COMP_MOD_S',		'YieldType', 		'YIELD_RH_HAPPINESS_COMP'),
		('RH_HAPPINESS_COMP_MOD_S',							'Amount'   , 25),

		('RH_HAPPINESS_COMP_MOD_XS',		'YieldType', 		'YIELD_RH_HAPPINESS_COMP'),
		('RH_HAPPINESS_COMP_MOD_XS',							'Amount'   , 12),
		
		('RH_HAPPINESS_COMP_MOD_XXS',		'YieldType', 		'YIELD_RH_HAPPINESS_COMP'),
		('RH_HAPPINESS_COMP_MOD_XXS',							'Amount'   , 1), -- pvs 2		

		('RH_HAPPINESS_COMP_MOD',			'YieldType', 		'YIELD_RH_HAPPINESS_COMP'),
		('RH_HAPPINESS_COMP_MOD',								'Amount'   , 30);



INSERT OR IGNORE INTO ProjectCompletionModifiers    (ProjectType,		ModifierId)  VALUES	
		('PROJECT_CARNIVAL',					'RH_HAPPINESS_COMP_MOD_XXS');  



INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
		('GOVERNMENT_CLASSICAL_REPUBLIC', 			'RH_HAPPINESS_COMP_MOD_XS'), -- pvs 30
		('GOVERNMENT_DEMOCRACY', 					'RH_HAPPINESS_COMP_MOD_S'),
		('GOVERNMENT_DIGITAL_DEMOCRACY', 			'RH_HAPPINESS_COMP_MOD_XL');

INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES		
		('CIVIC_DIGITAL_DEMOCRACY', 			'RH_HAPPINESS_COMP_MOD_XL');


INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, ModifierId, AttachmentTargetType)
SELECT 'GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN', 'RH_HAPPINESS_COMP_MOD_XL', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'
WHERE EXISTS (SELECT * FROM GreatPersonIndividuals WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN'); -- Extra Happiness Modifiers



INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES

('BELIEF_STUPA',								'RH_HAPPINESS_COMP_MOD_XXS');



-- Duplicate Luxuries

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(12, 'WC_RES_LUXURY', 1, 'RH_HAPPINESS_COMP_MOD_MXL');




INSERT OR IGNORE INTO PolicyModifiers (PolicyType, ModifierId)  VALUES		
		('POLICY_LIBERALISM', 				'RH_HAPPINESS_COMP_MOD'), -- 2 Districts
		('POLICY_SPORTS_MEDIA', 			'RH_HAPPINESS_COMP_MOD_XS'), -- Stadiums +1 Amenity, Double Theater Square Adj
		
		('POLICY_CIVIL_PRESTIGE', 			'RH_HAPPINESS_COMP_MOD_XS'); -- 2 Promotion Gov
		
		

-- RH GW Slot Yield


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_GW_SLOT_MOD',					'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',		'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GW_SLOT_MOD_XS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GW_SLOT_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GW_SLOT_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GW_SLOT_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GW_SLOT_MOD_MINUS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GW_SLOT_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_GW_SLOT_MOD_XL',		'YieldType', 	'YIELD_RH_GW_SLOT'),
		('RH_GW_SLOT_MOD_XL',						'Amount'   , 60),

		('RH_GW_SLOT_MOD_MXL',		'YieldType', 	'YIELD_RH_GW_SLOT'),
		('RH_GW_SLOT_MOD_MXL',						'Amount'   , 35),

		('RH_GW_SLOT_MOD_L',		'YieldType', 		'YIELD_RH_GW_SLOT'),
		('RH_GW_SLOT_MOD_L',							'Amount'   , 25),

		('RH_GW_SLOT_MOD_S',		'YieldType', 		'YIELD_RH_GW_SLOT'),
		('RH_GW_SLOT_MOD_S',							'Amount'   , 6),

		('RH_GW_SLOT_MOD_XS',		'YieldType', 		'YIELD_RH_GW_SLOT'),
		('RH_GW_SLOT_MOD_XS',							'Amount'   , 2),

		('RH_GW_SLOT_MOD_MINUS',		'YieldType', 		'YIELD_RH_GW_SLOT'),
		('RH_GW_SLOT_MOD_MINUS',							'Amount'   , '-50'),

		('RH_GW_SLOT_MOD',			'YieldType', 		'YIELD_RH_GW_SLOT'),
		('RH_GW_SLOT_MOD',								'Amount'   , 10);


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_APADANA',		 'RH_GW_SLOT_MOD_XL'), -- 2 Any

('BUILDING_CATHEDRAL',		 'RH_GW_SLOT_MOD_MXL'), -- 1 Religious Art

('BUILDING_AMPHITHEATER',		 'RH_GW_SLOT_MOD'), -- 2 Writing

('BUILDING_BOLSHOI_THEATRE',		 'RH_GW_SLOT_MOD'), -- 1 writing, 1 music

('BUILDING_BROADCAST_CENTER',		 'RH_GW_SLOT_MOD'), -- 1 Music
('BUILDING_FILM_STUDIO',		 'RH_GW_SLOT_MOD'), --  -- 1 Music

('BUILDING_BROADWAY',			 'RH_GW_SLOT_MOD'), -- 2 Music, 1 Writing

('BUILDING_GREAT_LIBRARY',		 'RH_GW_SLOT_MOD'), -- 2 Writing

('BUILDING_HERMITAGE',		 'RH_GW_SLOT_MOD_XL'), -- 4 Art

('BUILDING_GOV_CULTURE',		 'RH_GW_SLOT_MOD_MXL'), -- 4 Great Works, any type -- National History Museum

('BUILDING_QUEENS_BIBLIOTHEQUE',		 'RH_GW_SLOT_MOD_XL'), -- Tier 2 Gov

('BUILDING_OXFORD_UNIVERSITY',		 'RH_GW_SLOT_MOD_L'), -- 2 Writing

('BUILDING_SYDNEY_OPERA_HOUSE',		 'RH_GW_SLOT_MOD_L'); -- 3 Great Works of Music




-- MILITARY_PRODUCTION Melee, Ranged, Anti-Cav, Air Yield


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MILITARY_PRODUCTION_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_PRODUCTION_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_PRODUCTION_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_PRODUCTION_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_PRODUCTION_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_PRODUCTION_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MILITARY_PRODUCTION_MOD_XL',		'YieldType', 		'YIELD_RH_MILITARY_PRODUCTION'),
		('RH_MILITARY_PRODUCTION_MOD_XL',							'Amount'   , 950), -- pvs 175

		('RH_MILITARY_PRODUCTION_MOD_MXL',		'YieldType', 		'YIELD_RH_MILITARY_PRODUCTION'),
		('RH_MILITARY_PRODUCTION_MOD_MXL',							'Amount'   , 80),

		('RH_MILITARY_PRODUCTION_MOD_L',		'YieldType', 		'YIELD_RH_MILITARY_PRODUCTION'),
		('RH_MILITARY_PRODUCTION_MOD_L',							'Amount'   , 50),

		('RH_MILITARY_PRODUCTION_MOD_S',		'YieldType', 		'YIELD_RH_MILITARY_PRODUCTION'),
		('RH_MILITARY_PRODUCTION_MOD_S',							'Amount'   , 5), -- pvs 3

		('RH_MILITARY_PRODUCTION_MOD_M',		'YieldType', 		'YIELD_RH_MILITARY_PRODUCTION'),
		('RH_MILITARY_PRODUCTION_MOD_M',							'Amount'   , 25), -- pvs 9

		('RH_MILITARY_PRODUCTION_MOD',		'YieldType', 		'YIELD_RH_MILITARY_PRODUCTION'),
		('RH_MILITARY_PRODUCTION_MOD',							'Amount'   , 40); -- pvs 20


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(380, 'WC_RES_MERCENARY_COMPANIES', 2, 'RH_MILITARY_PRODUCTION_MOD'); -- 50% Decrease


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_BARRACKS', 				'RH_MILITARY_PRODUCTION_MOD_M'), -- pvs 5
('BUILDING_STABLE', 				'RH_MILITARY_PRODUCTION_MOD_M');


-- Unique Encampment Replacements
INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_BASILIKOI_PAIDES', 'RH_MILITARY_PRODUCTION_MOD_XL'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_BASILIKOI_PAIDES'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_ORDU', 'RH_MILITARY_PRODUCTION_MOD_XL'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ORDU'); 


-- Wonders
INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId) -- Persia Macedon dlc wonder
SELECT 'BUILDING_STATUE_OF_ZEUS', 'RH_MILITARY_PRODUCTION_MOD_MXL'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_STATUE_OF_ZEUS'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId) 
SELECT 'BUILDING_JEBEL_BARKAL', 'RH_MILITARY_PRODUCTION_MOD_M'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_JEBEL_BARKAL'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId) 
SELECT 'BUILDING_TERRACOTTA_ARMY', 'RH_MILITARY_PRODUCTION_MOD_MXL'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TERRACOTTA_ARMY'); 




INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
-- Units
		('POLICY_AGOGE', 		 	 		 'RH_MILITARY_PRODUCTION_MOD'),
		('POLICY_FEUDAL_CONTRACT', 		 	 'RH_MILITARY_PRODUCTION_MOD'),
		('POLICY_GRANDE_ARMEE', 		 	 'RH_MILITARY_PRODUCTION_MOD'),
		('POLICY_MILITARY_FIRST', 		 	 'RH_MILITARY_PRODUCTION_MOD'),
			
		('POLICY_STRATEGIC_AIR_FORCE', 		 'RH_MILITARY_PRODUCTION_MOD');	-- +50% Production toward all air units and toward Carriers.


INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES	
			('CIVIC_MILITARY_TRADITION', 			'RH_MILITARY_PRODUCTION_MOD_MXL'), -- Maneuver
			
			('CIVIC_MOBILIZATION', 					'RH_MILITARY_PRODUCTION_MOD_MXL'), 			
			('CIVIC_NATIONALISM', 					'RH_MILITARY_PRODUCTION_MOD_XL'), 	-- Grand Armee			
		
			('CIVIC_TOTALITARIANISM', 				'RH_MILITARY_PRODUCTION_MOD_MXL'); -- POLICY_LIGHTNING_WARFARE


INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES	
		('TECH_ANIMAL_HUSBANDRY', 						'RH_MILITARY_PRODUCTION_MOD_M'),
		('TECH_MINING', 								'RH_MILITARY_PRODUCTION_MOD_S'),
		('TECH_WRITING', 								'RH_MILITARY_PRODUCTION_MOD'),
		
		('TECH_ARCHERY', 								'RH_MILITARY_PRODUCTION_MOD_XL'), -- Leads to TECH_HORSEBACK_RIDING from Animal Husbandry
		('TECH_BRONZE_WORKING', 						'RH_MILITARY_PRODUCTION_MOD'),
		('TECH_IRON_WORKING', 							'RH_MILITARY_PRODUCTION_MOD_MXL'), 
		('TECH_ENGINEERING', 							'RH_MILITARY_PRODUCTION_MOD_L'), 
		
		('TECH_APPRENTICESHIP', 						'RH_MILITARY_PRODUCTION_MOD_L'),  -- Man at Arms!
		('TECH_MILITARY_ENGINEERING', 					'RH_MILITARY_PRODUCTION_MOD_L'),  -- armoury / niter
		
		('TECH_STIRRUPS', 								'RH_MILITARY_PRODUCTION_MOD_MXL'), -- Knight
		('TECH_GUNPOWDER', 								'RH_MILITARY_PRODUCTION_MOD_MXL'),
		('TECH_PRINTING', 								'RH_MILITARY_PRODUCTION_MOD'),
		
		('TECH_METAL_CASTING', 							'RH_MILITARY_PRODUCTION_MOD_MXL'), -- Bombard
		
		-- Flight Rush
		
		('TECH_SCIENTIFIC_THEORY', 						'RH_MILITARY_PRODUCTION_MOD'), -- For Industrialization
		('TECH_STEAM_POWER', 							'RH_MILITARY_PRODUCTION_MOD_MXL'),
		('TECH_INDUSTRIALIZATION', 						'RH_MILITARY_PRODUCTION_MOD_MXL'),

		('TECH_FLIGHT', 								'RH_MILITARY_PRODUCTION_MOD_MXL'),
		('TECH_RADIO', 								    'RH_MILITARY_PRODUCTION_MOD_MXL'),
		('TECH_ADVANCED_FLIGHT', 						'RH_MILITARY_PRODUCTION_MOD_XL'),

		-- Late Game Units
		('TECH_REFINING', 								'RH_MILITARY_PRODUCTION_MOD_L'), -- Oil

		('TECH_COMBUSTION', 							'RH_MILITARY_PRODUCTION_MOD_L'), -- Tanks
		('TECH_COMBINED_ARMS', 							'RH_MILITARY_PRODUCTION_MOD_L'), -- Uran
		('TECH_REFINING', 								'RH_MILITARY_PRODUCTION_MOD_L'), -- Oil
								
		('TECH_STEALTH_TECHNOLOGY', 					'RH_MILITARY_PRODUCTION_MOD_XL'), 
		('TECH_NUCLEAR_FISSION', 						'RH_MILITARY_PRODUCTION_MOD_L'), 
		('TECH_NUCLEAR_FUSION', 						'RH_MILITARY_PRODUCTION_MOD_L');







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



-- Spy Yield


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_SPY_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPY_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPY_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPY_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPY_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SPY_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_SPY_MOD_XL',		'YieldType', 		'YIELD_RH_SPY'),
		('RH_SPY_MOD_XL',							'Amount'   , 175),

		('RH_SPY_MOD_MXL',		'YieldType', 	'YIELD_RH_SPY'),
		('RH_SPY_MOD_MXL',						'Amount'   , 80),

		('RH_SPY_MOD_L',		'YieldType', 		'YIELD_RH_SPY'),
		('RH_SPY_MOD_L',							'Amount'   , 50),

		('RH_SPY_MOD_S',		'YieldType', 		'YIELD_RH_SPY'),
		('RH_SPY_MOD_S',							'Amount'   , 8),

		('RH_SPY_MOD_M',		'YieldType', 		'YIELD_RH_SPY'),
		('RH_SPY_MOD_M',							'Amount'   , 15), -- pvs 9

		('RH_SPY_MOD',		'YieldType', 		'YIELD_RH_SPY'),
		('RH_SPY_MOD',							'Amount'   , 40); -- pvs 20


--INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
--('BUILDING_STABLE', 				'RH_SPY_MOD_S');


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(292, 'WC_RES_ESPIONAGE_PACT', 1, 'RH_SPY_MOD_XL'); -- Double


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_TERRACOTTA_ARMY', 				'RH_SPY_MOD_L'); -- Level Up Spies



--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_MANEUVER', 		  		    'RH_SPY_MOD'); -- +50% Production towards all Ancient and Classical era light and heavy SPYalry units. -- lol

INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_MACHIAVELLIANISM', 		  		      'RH_SPY_MOD'),	-- 50 Production , 25% less time
		('POLICY_CRYPTOGRAPHY', 		  		  		  'RH_SPY_MOD_L'),	-- Enemy Spy level reduced by 2 in your lands. Your Spy level is increased by 1 for offensive operations.		
		('POLICY_NUCLEAR_ESPIONAGE', 		  		  	  'RH_SPY_MOD');


INSERT OR IGNORE INTO CivicModifiers  (CivicType, ModifierId)  VALUES	
		('CIVIC_NUCLEAR_PROGRAM', 		  		      'RH_SPY_MOD_L');


	
-- Todo Non-State Actors GS-Only	
		
		
		
-- Magnus Yield


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MAGNUS_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MAGNUS_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MAGNUS_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MAGNUS_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MAGNUS_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MAGNUS_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MAGNUS_MOD_XL',		'YieldType', 		'YIELD_RH_MAGNUS'),
		('RH_MAGNUS_MOD_XL',							'Amount'   , 175),

		('RH_MAGNUS_MOD_MXL',		'YieldType', 	'YIELD_RH_MAGNUS'),
		('RH_MAGNUS_MOD_MXL',						'Amount'   , 80),

		('RH_MAGNUS_MOD_L',		'YieldType', 		'YIELD_RH_MAGNUS'),
		('RH_MAGNUS_MOD_L',							'Amount'   , 50),

		('RH_MAGNUS_MOD_S',		'YieldType', 		'YIELD_RH_MAGNUS'),
		('RH_MAGNUS_MOD_S',							'Amount'   , 8),

		('RH_MAGNUS_MOD_M',		'YieldType', 		'YIELD_RH_MAGNUS'),
		('RH_MAGNUS_MOD_M',							'Amount'   , 15), -- pvs 9

		('RH_MAGNUS_MOD',		'YieldType', 		'YIELD_RH_MAGNUS'),
		('RH_MAGNUS_MOD',							'Amount'   , 40); -- pvs 20


INSERT INTO GovernorPromotionModifiers     (GovernorPromotionType,			ModifierId)   VALUES	
			('GOVERNOR_PROMOTION_RESOURCE_MANAGER_GROUNDBREAKER',		'RH_MAGNUS_MOD'),
			('GOVERNOR_PROMOTION_RESOURCE_MANAGER_SURPLUS_LOGISTICS',	'RH_MAGNUS_MOD_L'), -- Trade
			('GOVERNOR_PROMOTION_RESOURCE_MANAGER_EXPEDITION',			'RH_MAGNUS_MOD_L'), -- Settlers 0 Pop
			
			('GOVERNOR_PROMOTION_RESOURCE_MANAGER_VERTICAL_INTEGRATION','RH_MAGNUS_MOD_L');	
			


-- RH Trade


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_TRADE_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_MOD_XXS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		
		('RH_TRADE_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_MOD_MXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_TRADE_MOD_XL',		'YieldType', 		'YIELD_RH_TRADE'),
		('RH_TRADE_MOD_XL',							'Amount'   , 175),

		('RH_TRADE_MOD_MXL',		'YieldType', 	'YIELD_RH_TRADE'),
		('RH_TRADE_MOD_MXL',						'Amount'   , 80),

		('RH_TRADE_MOD_L',		'YieldType', 		'YIELD_RH_TRADE'),
		('RH_TRADE_MOD_L',							'Amount'   , 50),

		('RH_TRADE_MOD_S',		'YieldType', 		'YIELD_RH_TRADE'),
		('RH_TRADE_MOD_S',							'Amount'   , 8),

		('RH_TRADE_MOD_XXS',		'YieldType', 		'YIELD_RH_TRADE'),
		('RH_TRADE_MOD_XXS',							'Amount'   , 1),

		('RH_TRADE_MOD_M',		'YieldType', 		'YIELD_RH_TRADE'),
		('RH_TRADE_MOD_M',							'Amount'   , 25), 

		('RH_TRADE_MOD',		'YieldType', 		'YIELD_RH_TRADE'),
		('RH_TRADE_MOD',							'Amount'   , 40); 


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_MARKET', 				'RH_TRADE_MOD'),
('BUILDING_LIGHTHOUSE', 			'RH_TRADE_MOD'),

('BUILDING_COLOSSUS', 				'RH_TRADE_MOD_S');


INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
('BELIEF_RELIGIOUS_COMMUNITY',				'RH_TRADE_MOD_XXS');


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	

		('POLICY_LAISSEZ_FAIRE', 		 		 'RH_TRADE_MOD'), -- Great Merchant and Admiral, Bank and Stock Exchange -- Todo Requires Stock Exchanges

		('POLICY_COLLECTIVIZATION', 		  	'RH_TRADE_MOD_L'); 
		
INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES

			('CIVIC_CAPITALISM', 				'RH_TRADE_MOD_MXL'),
	
			('CIVIC_FOREIGN_TRADE', 			'RH_TRADE_MOD'),
			('CIVIC_EXPLORATION', 				'RH_TRADE_MOD_XL'),
			('CIVIC_GUILDS', 					'RH_TRADE_MOD_S');

INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES
		('GOVERNMENT_COMMUNISM', 					'RH_TRADE_MOD_MXL'),
		('GOVERNMENT_DEMOCRACY', 					'RH_TRADE_MOD_MXL'),
--		('GOVERNMENT_DIGITAL_DEMOCRACY', 			'RH_TRADE_MOD_MXL'),
		
		('GOVERNMENT_CLASSICAL_REPUBLIC', 			'RH_TRADE_MOD_S'),
		
		('GOVERNMENT_MERCHANT_REPUBLIC', 			'RH_TRADE_MOD');

INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES	

		('TECH_ASTROLOGY', 						'RH_TRADE_MOD_M'), -- For Celestial Navigation
		('TECH_POTTERY', 						'RH_TRADE_MOD_M'),
		('TECH_CURRENCY', 						'RH_TRADE_MOD_MXL'),
		('TECH_WRITING', 						'RH_TRADE_MOD_M'),
		('TECH_CELESTIAL_NAVIGATION', 			'RH_TRADE_MOD_MXL');
		
		
		
		
		
-- Food EXT


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_FOOD_EXT_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_FOOD_EXT_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_FOOD_EXT_MOD_XS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		('RH_FOOD_EXT_MOD_XXS',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),			
		
		('RH_FOOD_EXT_MOD_M',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		
		('RH_FOOD_EXT_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		
		('RH_FOOD_EXT_MOD_XXL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),		
		('RH_FOOD_EXT_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	

		('RH_FOOD_EXT_MOD_XXL',		'YieldType', 		'YIELD_RH_FOOD_EXT'),
		('RH_FOOD_EXT_MOD_XXL',							'Amount'   , 550),

		('RH_FOOD_EXT_MOD_XL',		'YieldType', 		'YIELD_RH_FOOD_EXT'),
		('RH_FOOD_EXT_MOD_XL',							'Amount'   , 200), -- pvs 150

		('RH_FOOD_EXT_MOD_L',		'YieldType', 		'YIELD_RH_FOOD_EXT'),
		('RH_FOOD_EXT_MOD_L',							'Amount'   , 80),

		('RH_FOOD_EXT_MOD_S',		'YieldType', 		'YIELD_RH_FOOD_EXT'),
		('RH_FOOD_EXT_MOD_S',							'Amount'   , 10),

		('RH_FOOD_EXT_MOD_XS',		'YieldType', 		'YIELD_RH_FOOD_EXT'),
		('RH_FOOD_EXT_MOD_XS',							'Amount'   , 4),

		('RH_FOOD_EXT_MOD_XXS',		'YieldType', 		'YIELD_RH_FOOD_EXT'),
		('RH_FOOD_EXT_MOD_XXS',							'Amount'   , 1),

		('RH_FOOD_EXT_MOD_M',		'YieldType', 		'YIELD_RH_FOOD_EXT'),
		('RH_FOOD_EXT_MOD_M',							'Amount'   , 40),


		('RH_FOOD_EXT_MOD',		'YieldType', 			'YIELD_RH_FOOD_EXT'),
		('RH_FOOD_EXT_MOD',								'Amount'   , 20);


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	

		('POLICY_CIVIL_PRESTIGE', 		 	 		 'RH_FOOD_EXT_MOD_XL'), -- All Eras, 1 Amenity, 2 Housing for City with Governor
		('POLICY_MEDINA_QUARTER', 		 	 		 'RH_FOOD_EXT_MOD_L'), -- +2 Housing in all cities with at least 3 specialty districts.
		
		('POLICY_INSULAE', 		 	 		 		'RH_FOOD_EXT_MOD_S'), -- +1 Housing in all cities with at least 2 specialty districts.
		
		('POLICY_NEW_DEAL', 		 	 			 'RH_FOOD_EXT_MOD_XXL');


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES
		('GOVERNMENT_DEMOCRACY', 					'RH_FOOD_EXT_MOD_XL');


INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
('BELIEF_FEED_THE_WORLD',				'RH_FOOD_EXT_MOD'),
('BELIEF_GURDWARA',						'RH_FOOD_EXT_MOD'),

('BELIEF_ZEN_MEDITATION',				'RH_FOOD_EXT_MOD_XXS'),
('BELIEF_STUPA',						'RH_FOOD_EXT_MOD_XS'), -- +1 Amenity

('BELIEF_CHORAL_MUSIC',					'RH_FOOD_EXT_MOD_XXS'); -- pvs 5, 10, 5

-- Pantheons
--('BELIEF_RIVER_GODDESS',				'RH_FOOD_EXT_MOD_XXS');


INSERT OR IGNORE INTO TechnologyModifiers (TechnologyType, ModifierId)  VALUES	

		('TECH_REPLACEABLE_PARTS', 				'RH_FOOD_EXT_MOD_XL'), -- Farm Improvement ADJ Buff, Food Market

		('TECH_ASTROLOGY', 						'RH_FOOD_EXT_MOD_XL');



INSERT OR IGNORE INTO DistrictModifiers (DistrictType, ModifierId) VALUES
('DISTRICT_HOLY_SITE',			 'RH_FOOD_EXT_MOD_L');



INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES

('BUILDING_STONEHENGE',		 'RH_FOOD_EXT_MOD_XXL'),

('BUILDING_SHRINE',			 'RH_FOOD_EXT_MOD_M'), -- Temp
('BUILDING_TEMPLE',			 'RH_FOOD_EXT_MOD_XL'), -- Temp

('BUILDING_MEETING_HOUSE', 			'RH_FOOD_EXT_MOD_L'), 
('BUILDING_GURDWARA', 				'RH_FOOD_EXT_MOD_XL'), 
('BUILDING_STUPA', 					'RH_FOOD_EXT_MOD_XL'), 

--('BUILDING_RH_TEMPLE',		 'RH_FOOD_EXT_MOD_XXL'),

('BUILDING_COLOSSEUM',		 'RH_FOOD_EXT_MOD_XXL'),
('BUILDING_HANGING_GARDENS', 'RH_FOOD_EXT_MOD_XL'),

('BUILDING_ARENA', 			 'RH_FOOD_EXT_MOD_S'),
('BUILDING_PYRAMIDS', 		 'RH_FOOD_EXT_MOD_XL'),
('BUILDING_FOOD_MARKET', 	 'RH_FOOD_EXT_MOD'),

('BUILDING_LIGHTHOUSE', 	 'RH_FOOD_EXT_MOD'),

('BUILDING_WATER_MILL', 		'RH_FOOD_EXT_MOD_XXS'),

('BUILDING_CASTLE', 			 'RH_FOOD_EXT_MOD'),
('BUILDING_STAR_FORT', 			 'RH_FOOD_EXT_MOD_M'),

('BUILDING_GRANARY', 			 'RH_FOOD_EXT_MOD_XXS'),
('BUILDING_SEWER', 			 	'RH_FOOD_EXT_MOD');


INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_TEMPLE_ARTEMIS', 'RH_FOOD_EXT_MOD_XXL'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TEMPLE_ARTEMIS'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_GREAT_BATH', 'RH_FOOD_EXT_MOD_M'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_GREAT_BATH'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_ANGKOR_WAT', 'RH_FOOD_EXT_MOD_XXL'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_ANGKOR_WAT'); 


--INSERT OR IGNORE INTO ProjectCompletionModifiers (ProjectType,			ModifierId)
--SELECT 'PROJECT_LIJIA_FOOD', 'RH_FOOD_EXT_MOD_S'
--WHERE EXISTS (SELECT * FROM Projects WHERE ProjectType = 'PROJECT_LIJIA_FOOD'); 

-- Todo Second Project for the Ai that actually finishes lol


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(294, 'WC_RES_MIGRATION_TREATY', 1, 'RH_FOOD_EXT_MOD_L'); -- Growth Bonus, Loyalty Penalty



INSERT OR IGNORE INTO ImprovementModifiers (ImprovementType, ModifierId) VALUES
('IMPROVEMENT_SKI_RESORT',			 'RH_FOOD_EXT_MOD_M'),

('IMPROVEMENT_FISHING_BOATS',		 'RH_FOOD_EXT_MOD_S'),
('IMPROVEMENT_CITY_PARK',			 'RH_FOOD_EXT_MOD'),
('IMPROVEMENT_SEASTEAD',			 'RH_FOOD_EXT_MOD_L'),

('IMPROVEMENT_FARM',		 		'RH_FOOD_EXT_MOD');




INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES	

			('CIVIC_FEUDALISM', 					'RH_FOOD_EXT_MOD_L'),
			
			('CIVIC_MEDIEVAL_FAIRES', 				'RH_FOOD_EXT_MOD_S'), -- Angkor Wat, must be built adj to an Aqueduct
			('CIVIC_GAMES_RECREATION', 				'RH_FOOD_EXT_MOD_M'),
	
			('CIVIC_SUFFRAGE', 						'RH_FOOD_EXT_MOD_L'),	
	
			('CIVIC_PROFESSIONAL_SPORTS', 			'RH_FOOD_EXT_MOD_S');		
