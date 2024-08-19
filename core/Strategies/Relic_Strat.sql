
-- AUTHOR: ROMANHOLIDAY


/*
-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types     (Type,		Kind)    VALUES	
		('PSEUDOYIELD_GPP_RH_RELICMAN',							'KIND_PSEUDOYIELD'),
		('UNIT_RH_RELICMAN',									'KIND_UNIT'),
		('GREAT_PERSON_CLASS_RH_RELICMAN',						'KIND_GREAT_PERSON_CLASS'),
		('GREAT_PERSON_INDIVIDUAL_RH_RELICMAN',				'KIND_GREAT_PERSON_INDIVIDUAL');



INSERT OR REPLACE INTO PseudoYields
		(PseudoYieldType,					DefaultValue)
VALUES	('PSEUDOYIELD_GPP_RH_RELICMAN',	0.1);

--------------------------------------------------------------
-- Great Person Class Defintion


INSERT OR REPLACE INTO GreatPersonClasses (GreatPersonClassType, Name, UnitType, DistrictType, PseudoYieldType, IconString, ActionIcon) VALUES
('GREAT_PERSON_CLASS_RH_RELICMAN', 'LOC_GREAT_PERSON_CLASS_RELICMAN', 'UNIT_RH_RELICMAN', 'DISTRICT_HOLY_SITE', 'PSEUDOYIELD_GPP_RH_RELICMAN', '[ICON_GreatArtist]', 'ICON_UNITOPERATION_ARTIST_ACTION');



--------------------------------------------------------------
-- Unit Definition
INSERT OR IGNORE INTO Units
		(UnitType,  			Name, 								Description, 					Cost, BaseMoves, BaseSightRange, ZoneOfControl, Domain, 		FormationClass, 		CanCapture, CanRetreatWhenCaptured, CanTrain) VALUES (
		'UNIT_RH_RELICMAN', 'LOC_UNIT_UNIT_RH_RELICMAN_NAME', 'LOC_UNIT_UNIT_RH_RELICMAN_DESCRIPTION', 1,      4,			2,			0,		'DOMAIN_LAND','FORMATION_CLASS_CIVILIAN',		0,				1,					0);

INSERT OR IGNORE INTO Units_XP2
		(UnitType,					CanEarnExperience,	CanFormMilitaryFormation)
VALUES	('UNIT_RH_RELICMAN',	0,					0);


INSERT OR IGNORE INTO UnitAiInfos
		(UnitType,					AiType)   VALUES	
		('UNIT_RH_RELICMAN',	'UNITTYPE_CIVILIAN'),
		('UNIT_RH_RELICMAN',	'UNITTYPE_NAVAL'),
		('UNIT_RH_RELICMAN',	'UNITAI_EXPLORE');


-- The Relic Man (Single GP)

INSERT OR IGNORE INTO GreatPersonIndividuals
		(GreatPersonIndividualType,								Name,														GreatPersonClassType,				EraType,			Gender,	ActionCharges,	ActionRequiresOwnedTile,	ActionRequiresOnOrAdjacentFeatureType,	ActionEffectTextOverride)
VALUES	('GREAT_PERSON_INDIVIDUAL_RH_RELICMAN',				'LOC_GREAT_PERSON_INDIVIDUAL_RH_RELIC_MAN_NAME',				'GREAT_PERSON_CLASS_RH_RELICMAN',	'ERA_ATOMIC',		'M',	1,				1,									 		NULL,			'LOC_GREATPERSON_RH_RELIC_ACTIVE');

--UPDATE GreatPersonIndividuals SET ActionRequiresCompletedDistrictType='DISTRICT_THEATER'								WHERE GreatPersonIndividualType='GREAT_PERSON_INDIVIDUAL_RH_RELIC_MAN';

*/

/*
ALTER TABLE GreatPersonClasses 
ADD column_b VARCHAR(20) NULL, column_c INT NULL ;
*/

-- 		FOREIGN KEY (PseudoYieldType) REFERENCES PseudoYields(PseudoYieldType) ON DELETE CASCADE ON UPDATE CASCADE,



--INSERT OR REPLACE INTO GreatPersonClasses (GreatPersonClassType, Name, UnitType, DistrictType, IconString, ActionIcon) VALUES
--('GREAT_PERSON_CLASS_RH_RELICMAN', 'LOC_GREAT_PERSON_CLASS_RELICMAN', 'UNIT_RH_RELICMAN', 'DISTRICT_THEATER', '[ICON_GreatArtist]', 'ICON_UNITOPERATION_ARTIST_ACTION');


--UPDATE GreatPersonClasses SET PseudoYieldType='PSEUDOYIELD_GPP_RH_RELICMAN' WHERE GreatPersonClassType ='GREAT_PERSON_CLASS_RH_RELICMAN'







INSERT OR IGNORE INTO Types     (Type,		Kind)    VALUES	
		('YIELD_RH_RELIC',								'KIND_YIELD'),
		
		('YIELD_RH_JUST_WAR',							'KIND_YIELD'),
		('YIELD_RH_SPREAD_RELIGION',					'KIND_YIELD'),
		
		('YIELD_RH_DIPLO',								'KIND_YIELD'),
		('YIELD_RH_LOYALTY',							'KIND_YIELD'),
		
		-- Govs

		('YIELD_RH_DEMOCRACY',							'KIND_YIELD'),
		('YIELD_RH_COMMUNISM',							'KIND_YIELD'),
		('YIELD_RH_FASCISM',							'KIND_YIELD'),
		('YIELD_RH_SYNTHETIC_TECHNOCRACY',				'KIND_YIELD'),
		
		('YIELD_RH_CLASSICAL_REPUBLIC',					'KIND_YIELD'),		
		('YIELD_RH_MERCHANT_REPUBLIC',					'KIND_YIELD'),
		('YIELD_RH_MONARCHY',							'KIND_YIELD'),
		('YIELD_RH_OLIGARCHY',							'KIND_YIELD'),	
		
		
		
		-- Governors
		('YIELD_RH_MAGNUS',								'KIND_YIELD'),
		
		-- Utility
		('YIELD_RH_LAGS_TECH',							'KIND_YIELD'),
		('YIELD_RH_SPY',								'KIND_YIELD'),
		('YIELD_RH_FOOD_EXT',							'KIND_YIELD'),
	
		('YIELD_RH_NAVAL',								'KIND_YIELD'),
		
		('YIELD_RH_ANCIENT',							'KIND_YIELD'),
		('YIELD_RH_PLACEMENT',							'KIND_YIELD'),
		('YIELD_RH_FAITH',								'KIND_YIELD'),	
		('YIELD_RH_END_OF_TECH',						'KIND_YIELD'),

		('YIELD_RH_TRADE',								'KIND_YIELD'),
		('YIELD_RH_MAYHEM',								'KIND_YIELD'),	
	
		('YIELD_RH_SCIENCE_VICTORY_BASE',								'KIND_YIELD'),	
	
		-- Civic
		
		('YIELD_RH_NUCLEAR_PROGRAM',								'KIND_YIELD'),
		
		-- District


		-- Religion
		
		('YIELD_RH_R_GODDESS',								'KIND_YIELD'),
		('YIELD_RH_SCRIPTURE',							'KIND_YIELD'),

		
		-- Card Slots

		('YIELD_RV_BASE',					'KIND_YIELD'),		
		
		-- Policies
		
		('YIELD_RH_EXPANSION',					'KIND_YIELD'),

		-- Buildings
		('YIELD_RH_WONDER',								'KIND_YIELD'),
		('YIELD_RH_HAPPINESS_BUILDING',					'KIND_YIELD'),
		('YIELD_RH_HAPPINESS_COMP',						'KIND_YIELD'),
		('YIELD_RH_GW_SLOT',							'KIND_YIELD'),
		
		('YIELD_RH_CULTURE_VICTORY_BASE',				'KIND_YIELD'),
		('YIELD_RH_STATUE_LIBERTY',						'KIND_YIELD'),	
		
		('YIELD_RH_CAMPUS',								'KIND_YIELD'),		
		
		
		
		
		
		
		('YIELD_RH_MAUS_H',								'KIND_YIELD'),	

		('YIELD_RH_CITY_CENTRE',						'KIND_YIELD'),	

	
		-- Individual CASE
		
		('YIELD_RH_GORGO',								'KIND_YIELD'),		
		
		-- WC

/*		
		('YIELD_RH_PATRONAGE_DOUBLE',						'KIND_YIELD'),		
		('YIELD_RH_PATRONAGE_BAN',							'KIND_YIELD'),		
		
		('YIELD_RH_HERITAGE_ORG_DOUBLE',					'KIND_YIELD'),		
		('YIELD_RH_HERITAGE_ORG_BAN',						'KIND_YIELD'),				
		
		('YIELD_RH_MERCENARY_COMPANIES_DOUBLE',				'KIND_YIELD'),		
		('YIELD_RH_MERCENARY_COMPANIES_BUFF',				'KIND_YIELD'),	
		
		('YIELD_RH_MILITARY_ADVISORY_BUFF',					'KIND_YIELD'),		
		('YIELD_RH_MILITARY_ADVISORY_DEBUFF',				'KIND_YIELD'),	

		('YIELD_RH_PUBLIC_RELATIONS_BUFF',					'KIND_YIELD'),		
		('YIELD_RH_PUBLIC_RELATIONS_DEBUFF',				'KIND_YIELD'),	

		('YIELD_RH_ESPIONAGE_PACT_DOUBLE',					'KIND_YIELD'),		
		('YIELD_RH_ESPIONAGE_PACT_BAN',						'KIND_YIELD'),	

		('YIELD_RH_MIGRATION_TREATY_BUFF',					'KIND_YIELD'),		
		('YIELD_RH_MIGRATION_TREATY_DEBUFF',				'KIND_YIELD'),	

		('YIELD_RH_SOVEREIGNTY_DOUBLE',						'KIND_YIELD'),		
		('YIELD_RH_SOVEREIGNTY_BAN',						'KIND_YIELD'),	

		('YIELD_RH_PUBLIC_WORKS_DOUBLE',					'KIND_YIELD'),		
		('YIELD_RH_PUBLIC_WORKS_BUFF',						'KIND_YIELD'),	

		('YIELD_RH_DIPLOVICTORY_BUFF',						'KIND_YIELD'),		
		('YIELD_RH_DIPLOVICTORY_DEBUFF',					'KIND_YIELD'),	

		('YIELD_RH_ARMS_CONTROL_DUPLICATE',					'KIND_YIELD'),		
		('YIELD_RH_ARMS_CONTROL_BAN',						'KIND_YIELD'),	

		('YIELD_RH_WORLD_RELIGION_BUFF',					'KIND_YIELD'),		
		('YIELD_RH_WORLD_RELIGION_CONDEM',					'KIND_YIELD'),	

		('YIELD_RH_BORDER_CONTROL_CB',						'KIND_YIELD'),		
		('YIELD_RH_BORDER_CONTROL_C_BAN',					'KIND_YIELD'),	

		('YIELD_RH_GE_BUILDING_PRODUCTION_BAN',				'KIND_YIELD'),		
		('YIELD_RH_GE_BUILDING_PRODUCTION_BUFF',			'KIND_YIELD'),	

		('YIELD_RH_TRADE_TREATY_BUFF',						'KIND_YIELD'),		
		('YIELD_RH_TRADE_TREATY_BAN',						'KIND_YIELD'),	
*/





		-- Military
		
		('YIELD_RH_CHARIOT',							'KIND_YIELD'),		
		('YIELD_RH_MILITARY_PRODUCTION',				'KIND_YIELD'),
		('YIELD_RH_MILITARY_ADV',						'KIND_YIELD'),
		('YIELD_RH_CAV',								'KIND_YIELD'),
		('YIELD_RH_NUCLEAR',							'KIND_YIELD'),
		('YIELD_RH_UNDER_ATTACK',						'KIND_YIELD'),
		('YIELD_RH_AT_WAR',								'KIND_YIELD'),
		('YIELD_RH_PRODUCTION',							'KIND_YIELD');		
		
		
		
-- Todo SPY -- Nuclear Espionage, Cryptography, Non-State Actors, Machiavellianism


INSERT OR IGNORE INTO Yields     (YieldType, Name, IconString, OccupiedCityChange)    VALUES
('YIELD_RH_RELIC', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_JUST_WAR', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),

('YIELD_RH_SPREAD_RELIGION', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_DIPLO', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_LOYALTY', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),



('YIELD_RH_MAGNUS', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),

-- Utility

('YIELD_RH_LAGS_TECH', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_SPY', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),

('YIELD_RH_NAVAL', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_ANCIENT', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_PLACEMENT', 'LOC_YIELD_PLACEMENT_RH_AI', '[ICON_GOLD]', '0'), -- 'LOC_YIELD_PLACEMENT_RH_AI'
('YIELD_RH_FAITH', 'LOC_YIELD_PLACEMENT_RH_AI', '[ICON_GOLD]', '0'), --20

('YIELD_RH_END_OF_TECH', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),

('YIELD_RH_TRADE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_MAYHEM', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),


	


-- Civic

('YIELD_RH_NUCLEAR_PROGRAM', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),

-- Building

('YIELD_RH_WONDER', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),




('YIELD_RH_MAUS_H', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	

	-- WC

/*		
('YIELD_RH_PATRONAGE_DOUBLE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_PATRONAGE_BAN', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_HERITAGE_ORG_DOUBLE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_HERITAGE_ORG_BAN', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),		
			

('YIELD_RH_MILITARY_ADVISORY_BUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_MILITARY_ADVISORY_DEBUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	

('YIELD_RH_PUBLIC_RELATIONS_BUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_PUBLIC_RELATIONS_DEBUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	

('YIELD_RH_ESPIONAGE_PACT_DOUBLE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_ESPIONAGE_PACT_BAN', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	

('YIELD_RH_MIGRATION_TREATY_BUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_MIGRATION_TREATY_DEBUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	



('YIELD_RH_PUBLIC_WORKS_DOUBLE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_PUBLIC_WORKS_BUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	


('YIELD_RH_DIPLOVICTORY_BUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_DIPLOVICTORY_DEBUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	

('YIELD_RH_ARMS_CONTROL_DUPLICATE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_ARMS_CONTROL_BAN', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	

('YIELD_RH_WORLD_RELIGION_BUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_WORLD_RELIGION_CONDEM', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	

('YIELD_RH_BORDER_CONTROL_CB', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_BORDER_CONTROL_C_BAN', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	

('YIELD_RH_GE_BUILDING_PRODUCTION_BAN', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_GE_BUILDING_PRODUCTION_BUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	

('YIELD_RH_TRADE_TREATY_BUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_TRADE_TREATY_BAN', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
*/


	-- District


-- Military

('YIELD_RH_CHARIOT', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_MILITARY_PRODUCTION', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_MILITARY_ADV', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),	
('YIELD_RH_NUCLEAR', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_UNDER_ATTACK', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'), --40
('YIELD_RH_AT_WAR', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0'),
('YIELD_RH_PRODUCTION', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0');



INSERT OR IGNORE INTO Yields     (YieldType, Name, IconString, OccupiedCityChange, DefaultValue)    VALUES



-- Individual CASE

('YIELD_RH_GORGO', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', 						'0',			    0.3),	

('YIELD_RH_SCIENCE_VICTORY_BASE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', 					'0',			   		1),	

-- WC

/*
('YIELD_RH_SOVEREIGNTY_DOUBLE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  	    1.2),	
('YIELD_RH_SOVEREIGNTY_BAN', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 					    1.2),	
		
('YIELD_RH_MERCENARY_COMPANIES_DOUBLE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 			    95), -- pvs 8, 52
('YIELD_RH_MERCENARY_COMPANIES_BUFF', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 			    80), -- pvs 1.2, 25
*/

-- Religion
('YIELD_RH_SCRIPTURE', 	'LOC_YIELD_RH_AI', '[ICON_GOLD]', 			'0', 			    0.5),	

('YIELD_RH_R_GODDESS', 	'LOC_YIELD_RH_AI', '[ICON_GOLD]', 			'0', 			    0.6),	

-- Victories

('YIELD_RH_CULTURE_VICTORY_BASE', 	'LOC_YIELD_RH_AI', '[ICON_GOLD]', 			'0', 			    0.5),	

-- Happiness

('YIELD_RH_HAPPINESS_BUILDING', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  	  0.15),
('YIELD_RH_HAPPINESS_COMP', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  	 	   0.7),		
	
	
('YIELD_RH_FOOD_EXT', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  			  0.9),
	

('YIELD_RH_GW_SLOT', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  	  0.8),	

('YIELD_RH_STATUE_LIBERTY', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  	  0.8),		
--('YIELD_RH_CAMPUS', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  	  0.15),	


('YIELD_RH_CITY_CENTRE', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  	  0.5),	-- pvs 0.8, 0.65	

-- Military

('YIELD_RH_CAV', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  			  0.7),

-- Govs

('YIELD_RH_DEMOCRACY', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  			  1.5),
('YIELD_RH_COMMUNISM', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  			  1.5),
('YIELD_RH_FASCISM', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  			  1.5),
('YIELD_RH_SYNTHETIC_TECHNOCRACY', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  1.2), 

('YIELD_RH_CLASSICAL_REPUBLIC', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  			  1.2),
('YIELD_RH_OLIGARCHY', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', 		'0',							  1.2),

('YIELD_RH_MERCHANT_REPUBLIC', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  			    1.5),
('YIELD_RH_MONARCHY', 'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				  			  			1.5),


-- Policy Card

('YIELD_RH_EXPANSION', 	'LOC_YIELD_RH_AI', '[ICON_GOLD]', 			'0', 			    0.3),	
('YIELD_RV_BASE', 				'LOC_YIELD_RH_AI', '[ICON_GOLD]', '0', 				0.3);	


UPDATE Yields SET DefaultValue = 2 WHERE YieldType = 'YIELD_PRODUCTION'; -- pvs 1.65
UPDATE Yields SET DefaultValue = 2.4 WHERE YieldType = 'YIELD_SCIENCE'; 
UPDATE Yields SET DefaultValue = 2.4 WHERE YieldType = 'YIELD_CULTURE'; -- pvs 1.35, 1.7
UPDATE Yields SET DefaultValue = 0.7 WHERE YieldType = 'YIELD_GOLD'; -- pvs 0.75
UPDATE Yields SET DefaultValue = 2.0 WHERE YieldType = 'YIELD_FAITH'; -- pvs 1.25, 1.6
UPDATE Yields SET DefaultValue = 1.7 WHERE YieldType = 'YIELD_FOOD'; 

UPDATE Yields SET DefaultValue = 1.4 WHERE YieldType = 'YIELD_RH_UNDER_ATTACK'; 
UPDATE Yields SET DefaultValue = 1.2 WHERE YieldType = 'YIELD_RV_BASE'; 



INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefaultYieldBias', 'YIELD_RH_JUST_WAR', 				0, -950), -- pvs -150, -120, -250, -160
('DefaultYieldBias', 'YIELD_RH_RELIC', 					0, -750),

('DefaultYieldBias', 'YIELD_RH_SPREAD_RELIGION', 		0, -750), -- pvs -95, -150
('DefaultYieldBias', 'YIELD_RH_DIPLO', 					0, -750),
('DefaultYieldBias', 'YIELD_RH_LOYALTY', 				0, -750), -- pvs -190
('DefaultYieldBias', 'YIELD_RH_EXPANSION', 				0, -250), 

('DefaultYieldBias', 'YIELD_RH_MAGNUS', 				0, -220),

('DefaultYieldBias', 'YIELD_RH_DEMOCRACY', 				1, 200), -- pvs 120
('DefaultYieldBias', 'YIELD_RH_COMMUNISM', 				1, 120), -- pvs 90
('DefaultYieldBias', 'YIELD_RH_FASCISM', 				1, 230), -- pvs 140
('DefaultYieldBias', 'YIELD_RH_SYNTHETIC_TECHNOCRACY', 	0, 50),
('DefaultYieldBias', 'YIELD_RH_MERCHANT_REPUBLIC', 		0, -25), -- pvs -75

('DefaultYieldBias', 'YIELD_RH_CLASSICAL_REPUBLIC', 	1, 30),
('DefaultYieldBias', 'YIELD_RH_MONARCHY', 				1, 175), -- Pvs -50, 20
('DefaultYieldBias', 'YIELD_RH_OLIGARCHY', 				1, -33); -- Pvs -50


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefaultYieldBias', 'YIELD_RH_GORGO', 								0, -950),
('DefaultYieldBias', 'YIELD_RV_BASE', 					0, -950);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefaultYieldBias', 'YIELD_RH_CHARIOT', 					0, -900),
('DefaultYieldBias', 'YIELD_RH_UNDER_ATTACK', 				0, -350), -- pvs -250, -450, 410
('DefaultYieldBias', 'YIELD_RH_AT_WAR', 					0, -650),
('DefaultYieldBias', 'YIELD_RH_NUCLEAR', 					1, 	5), -- pvs -50, -70
('DefaultYieldBias', 'YIELD_RH_CAV', 						0, -650),
('DefaultYieldBias', 'YIELD_RH_MILITARY_ADV', 				0, -750),
('DefaultYieldBias', 'YIELD_RH_MILITARY_PRODUCTION', 		0, -750),

-- Utility
('DefaultYieldBias', 'YIELD_RH_SPY', 						0, -300),
('DefaultYieldBias', 'YIELD_RH_LAGS_TECH', 					0, -750),
('DefaultYieldBias', 'YIELD_RH_FOOD_EXT', 					0, -300), -- pvs -95

('DefaultYieldBias', 'YIELD_RH_TRADE', 						0, -275),
('DefaultYieldBias', 'YIELD_RH_MAYHEM', 					0, -750),

('DefaultYieldBias', 'YIELD_RH_NAVAL', 						0, -250),

-- Religion

('DefaultYieldBias', 'YIELD_RH_R_GODDESS', 				0, -99), -- pvs 10
('DefaultYieldBias', 'YIELD_RH_SCRIPTURE', 				0, -75),

('DefaultYieldBias', 'YIELD_RH_CULTURE_VICTORY_BASE', 		0, -95),
('DefaultYieldBias', 'YIELD_RH_STATUE_LIBERTY', 			0, -85),

('DefaultYieldBias', 'YIELD_RH_WONDER', 					0, -200),
('DefaultYieldBias', 'YIELD_RH_HAPPINESS_BUILDING', 		0, -750), -- pvs -95, -250, -400
('DefaultYieldBias', 'YIELD_RH_HAPPINESS_COMP', 			0, -750), -- pvs -400
('DefaultYieldBias', 'YIELD_RH_GW_SLOT', 					0, -750),

('DefaultYieldBias', 'YIELD_RH_PRODUCTION', 				0, -90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES

('DefaultYieldBias', 'YIELD_RH_ANCIENT', 					 -650),
('DefaultYieldBias', 'YIELD_RH_PLACEMENT', 					 25), -- pvs 25
('DefaultYieldBias', 'YIELD_RH_FAITH', 						 5), -- pvs 5
('DefaultYieldBias', 'YIELD_RH_END_OF_TECH', 				 30), -- pvs 75

-- Civic

('DefaultYieldBias', 'YIELD_RH_NUCLEAR_PROGRAM', 			 50),

-- District

('DefaultYieldBias', 'YIELD_RH_SCIENCE_VICTORY_BASE', 						 -750),

-- WC

/*
('DefaultYieldBias', 'YIELD_RH_PATRONAGE_DOUBLE', 			    1, 90), -- Typically higher preference for ban
('DefaultYieldBias', 'YIELD_RH_PATRONAGE_BAN', 					1, 5),
('DefaultYieldBias', 'YIELD_RH_HERITAGE_ORG_DOUBLE', 			1, 10), 
('DefaultYieldBias', 'YIELD_RH_HERITAGE_ORG_BAN', 				1, 45),

('DefaultYieldBias', 'YIELD_RH_MERCENARY_COMPANIES_DOUBLE', 			1, 950), 
('DefaultYieldBias', 'YIELD_RH_MERCENARY_COMPANIES_BUFF', 				1, 10),

('DefaultYieldBias', 'YIELD_RH_MILITARY_ADVISORY_BUFF', 				1, 30), 
('DefaultYieldBias', 'YIELD_RH_MILITARY_ADVISORY_DEBUFF', 				1, 40),

('DefaultYieldBias', 'YIELD_RH_PUBLIC_RELATIONS_BUFF', 					1, 45), 
('DefaultYieldBias', 'YIELD_RH_PUBLIC_RELATIONS_DEBUFF', 				1, 20),

('DefaultYieldBias', 'YIELD_RH_ESPIONAGE_PACT_DOUBLE', 					1, 150), -- pvs 50
('DefaultYieldBias', 'YIELD_RH_ESPIONAGE_PACT_BAN', 					1, 40),

('DefaultYieldBias', 'YIELD_RH_MIGRATION_TREATY_BUFF', 					1, 50), 
('DefaultYieldBias', 'YIELD_RH_MIGRATION_TREATY_DEBUFF', 				1, 50),

('DefaultYieldBias', 'YIELD_RH_SOVEREIGNTY_DOUBLE', 					1, 135), -- pvs 80
('DefaultYieldBias', 'YIELD_RH_SOVEREIGNTY_BAN',						1, 140), -- pvs 150

('DefaultYieldBias', 'YIELD_RH_PUBLIC_WORKS_DOUBLE', 					1, 75), 
('DefaultYieldBias', 'YIELD_RH_PUBLIC_WORKS_BUFF', 						1, 20),

('DefaultYieldBias', 'YIELD_RH_DIPLOVICTORY_BUFF', 						1, 120), 
('DefaultYieldBias', 'YIELD_RH_DIPLOVICTORY_DEBUFF', 					1, 90),

('DefaultYieldBias', 'YIELD_RH_ARMS_CONTROL_DUPLICATE', 				1, 75), 
('DefaultYieldBias', 'YIELD_RH_ARMS_CONTROL_BAN', 						1, 120),

('DefaultYieldBias', 'YIELD_RH_WORLD_RELIGION_BUFF', 					1, 75), 
('DefaultYieldBias', 'YIELD_RH_WORLD_RELIGION_CONDEM', 					1, 75),

('DefaultYieldBias', 'YIELD_RH_BORDER_CONTROL_CB', 						1, 50), 
('DefaultYieldBias', 'YIELD_RH_BORDER_CONTROL_C_BAN', 					1, 50),

('DefaultYieldBias', 'YIELD_RH_GE_BUILDING_PRODUCTION_BAN', 			1, 50), 
('DefaultYieldBias', 'YIELD_RH_GE_BUILDING_PRODUCTION_BUFF', 			1, 50),

('DefaultYieldBias', 'YIELD_RH_TRADE_TREATY_BUFF', 						1, 45), 
('DefaultYieldBias', 'YIELD_RH_TRADE_TREATY_BAN', 						1, 50),
*/

-- Buildings / Infrastrucutre

--('DefaultYieldBias', 'YIELD_RH_CAMPUS', 						1, 5),
('DefaultYieldBias', 'YIELD_RH_MAUS_H', 					 -5),

('DefaultYieldBias', 'YIELD_RH_CITY_CENTRE', 				 -150);




-- Pillage Yield


-- Great Work Slots Russia - Cathedral