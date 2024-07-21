
-- RH Base Asia
-- Author: ROMANHOLIDAY

-- HOJO / JAPAN
	
	
/*
		<Row AgendaOne="AGENDA_BUSHIDO" AgendaTwo="AGENDA_CULTURED"/>
		<Row AgendaOne="AGENDA_BUSHIDO" AgendaTwo="AGENDA_STANDING_ARMY"/>
		<Row AgendaOne="AGENDA_BUSHIDO" AgendaTwo="AGENDA_DEVOUT"/>
		<Row AgendaOne="AGENDA_BUSHIDO" AgendaTwo="AGENDA_PARANOID"/>
		
		INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
	('LEADER_HOJO',				'AGENDA_CULTURED',						15),
	('LEADER_HOJO',				'AGENDA_DEVOUT',						10);
*/

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_HOJO', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV');
	
REPLACE INTO AiListTypes (ListType) VALUES
('HoJoSettlement'),
('HoJoYields'),
('HoJoDistricts'),
('HoJoPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('HoJoSettlement', 'TRAIT_LEADER_DIVINE_WIND', 'PlotEvaluations'),
('HoJoDistricts', 'TRAIT_LEADER_DIVINE_WIND', 'Districts'), -- HOJO ONLY BONUS
('HoJoYields', 'TRAIT_LEADER_DIVINE_WIND', 'Yields'),
('HoJoPseudoYields', 'TRAIT_LEADER_DIVINE_WIND', 'PseudoYields');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HoJoDistricts', 'DISTRICT_THEATER', 				1, 0), -- half price
('HoJoDistricts', 'DISTRICT_HOLY_SITE', 			1, 0), -- half price
('HoJoTechs', 'TECH_APPRENTICESHIP', 				1, 0), 
('HoJoTechs', 'TECH_INDUSTRIALIZATION', 			1, 0), 
('HoJoYields', 'YIELD_FOOD',       					1, 9), -- More districts
('HoJoYields', 'YIELD_FAITH',      					1, 10), -- Base -20, pvs 9
('HoJoYields', 'YIELD_CULTURE',    					1, 10),
('HoJoYields', 'YIELD_PRODUCTION', 					1, 20), -- Electronics Factory
('HoJoYields', 'YIELD_GOLD',       					1,-12), -- Base 11
--('HoJoYields', 'YIELD_SCIENCE',    				1, 2), -- pvs 5
('HoJoPseudoYields', 'PSEUDOYIELD_DISTRICT', 		1, 20), -- Double adj / half production on some
('HoJoPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 	1, 20), -- Electronics Factory
('HoJoPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 		1, 10), -- Half production towards Theater Squares
('HoJoPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 	1, 40), -- Half production
('HoJoPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 	1, 20), -- Half production
('HoJoPseudoYields', 'PSEUDOYIELD_TOURISM', 		1, 19), -- base 0.82
('HoJoPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 8),
('HoJoPseudoYields', 'PSEUDOYIELD_NAVAL_COMBAT', 	1, 15), -- +5 st
('HoJoPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 	1, 10);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HoJoSettlement', 'Foreign Continent', 0, -8),
('HoJoSettlement', 'Nearest Friendly City', 0, -3), -- pvs -2
('HoJoSettlement', 'Coastal', 0, 19);

-- CHINA Base

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('ChinaImprovements'),
('ChinaTechs'),
('ChinaCivics'),
('ChinaWonders'),
('ChinaYields'),
('ChinaSavings'),

('ChinaPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('ChinaImprovements', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'Improvements'),
('ChinaTechs', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'Technologies'),
('ChinaCivics', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'Civics'),
('ChinaWonders', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'Buildings'),
('ChinaYields', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'Yields'),
('ChinaSavings', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'SavingTypes'),

('ChinaPseudoYields', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'PseudoYields');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('ChinaSavings', 'SAVING_GREAT_PEOPLE', 								 0), 
--('ChinaSavings', 'SAVING_UNITS', 										 -1),
('ChinaSavings', 'SAVING_PLOTS', 										1); -- GW
--('ChinaSavings', 'SAVING_SLUSH_FUND', 								 0); 


INSERT INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ChinaCivics', 	'CIVIC_RECORDED_HISTORY',   1, 0), --GL
('ChinaCivics', 	'CIVIC_DRAMA_POETRY',   	1, 0), --GL

('ChinaTechs', 		'TECH_MINING', 				1, 90), -- GW
('ChinaTechs', 		'TECH_MASONARY', 			1, 0), -- GW
('ChinaImprovements', 'IMPROVEMENT_GREAT_WALL', 1, 90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ChinaWonders', 'BUILDING_MONUMENT', 		1, 90), --GL
('ChinaWonders', 'BUILDING_GREAT_LIBRARY', 1, 90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ChinaYields', 'YIELD_RH_COMMUNISM', 	1, 410),
('ChinaYields', 'YIELD_RH_WONDER',	  	  1, 150),

('ChinaYields', 'YIELD_RH_NUCLEAR_PROGRAM',	  	  1, 250), -- Double Tech Boost

('ChinaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 20),
('ChinaPseudoYields', 'PSEUDOYIELD_WONDER',      1, 130), -- Completing a Wonder grants a Eureka and Inspiration Inspiration from that Wonder's era. -- pvs 75, 105
('ChinaPseudoYields', 'PSEUDOYIELD_TOURISM',     1, 12);

-- todo great LIBRARY if it does not already exist

-- Normal Qin -- has CULTURAL_MAJOR_CIV

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_QIN', 'TRAIT_LEADER_EXPANSIONIST');

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
---	('LEADER_QIN',				'AGENDA_WONDER_ADVOCATE',				15),
--	('LEADER_QIN',				'AGENDA_IDEOLOGUE',						25); -- Late Eras only



-- Qin has trait wonder obsessed

REPLACE INTO AiListTypes (ListType) VALUES
('QinPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('QinPseudoYields', 'FIRST_EMPEROR_TRAIT', 'PseudoYields');
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('QinPseudoYields', 'PSEUDOYIELD_WONDER', 1, 70), -- pvs 45 (now more for base China trait), 20, 60
('QinPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 15), -- builder charges
('QinPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 10);

-- Unlocks Canals Early -- todo Canals preference







-- India General

-- IndiaUnitBuilds transfer
UPDATE AiListTypes    SET ListType = 'IndiaUnitBuilds' WHERE ListType = 'GandhiUnitBuilds'; -- def only for Gandhi even though both have religion bonus
UPDATE AiLists        SET LeaderType = 'TRAIT_CIVILIZATION_DHARMA' WHERE ListType = 'IndiaUnitBuilds';

UPDATE AiFavoredItems SET Value = -100 WHERE ListType = 'IndiaUnitBuilds' AND Item = 'PROMOTION_CLASS_INQUISITOR'; -- def -1

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('IndiaTechs'),
('IndiaYields'),
('IndiaPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('IndiaTechs', 'TRAIT_CIVILIZATION_IMPROVEMENT_STEPWELL', 'Technologies'),
('IndiaYields', 'TRAIT_CIVILIZATION_IMPROVEMENT_STEPWELL', 'Yields'),
('IndiaPseudoYields', 'TRAIT_CIVILIZATION_IMPROVEMENT_STEPWELL', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('IndiaTechs', 'TECH_IRRIGATION', 				1, 0), 
('IndiaYields', 'YIELD_FOOD',  					1, 20),
('IndiaYields', 'YIELD_FAITH', 					1, 6), -- pvs 11
('IndiaYields', 'YIELD_GOLD',  					1,-15),
('IndiaYields', 'YIELD_PRODUCTION', 			1, -9),

('IndiaYields', 'YIELD_RH_CHARIOT', 1, 1500), -- War Elephant

('IndiaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 10), -- holy sites -- pvs 15
('IndiaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 18); -- stepwell -- pvs 12

DELETE FROM AiFavoredItems WHERE ListType = 'GandhiTechs'   AND Item = 'TECH_IRRIGATION'; -- this is India now

--UPDATE AiFavoredItems SET Value = -30 WHERE ListType = 'GandhiUnitBuilds' AND Item = 'PROMOTION_CLASS_GIANT_DEATH_ROBOT';


-- THE TRUE LEADER GANDHI OF INDIA

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('GandhiPseudoYields'),
('GandhiProjects'),
('GandhiYields'),
('GandhiUnitBuilds'),
('GandhiTechs'),
('GandhiSettlement'),
('GandhiImprovements'),
('GandhiUnits');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GandhiPseudoYields', 'TRAIT_LEADER_SATYAGRAHA', 			'PseudoYields'),
('GandhiProjects', 'TRAIT_LEADER_SATYAGRAHA', 				'Projects'),
('GandhiYields', 'TRAIT_LEADER_SATYAGRAHA', 				'Yields'),
('GandhiTechs', 'TRAIT_LEADER_SATYAGRAHA', 					'Technologies'),
('GandhiUnitBuilds',   'TRAIT_LEADER_SATYAGRAHA', 			'UnitPromotionClasses'), -- already exists but if disabled breaks the game lol
('GandhiImprovements',		'TRAIT_LEADER_SATYAGRAHA',		'Improvements'),
('GandhiSettlement',   'TRAIT_LEADER_SATYAGRAHA', 			'PlotEvaluations'),
('GandhiUnits', 'TRAIT_LEADER_SATYAGRAHA', 					'Units');


/*
	<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_SURPRISE_WAR" Favored="false"/>
	<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_FORMAL_WAR" Favored="false"/>
	<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_WAR_MINOR_CIV" Favored="false"/>
	
		<Row ListType="GandhiWonders" Item="BUILDING_HANGING_GARDENS" Favored="true"/>
		<Row ListType="GandhiWonders" Item="BUILDING_MAHABODHI_TEMPLE" Favored="true"/>
		<Row ListType="GandhiWonders" Item="BUILDING_OXFORD_UNIVERSITY" Favored="true"/>
		
		<Row ListType="GandhiCivics" Item="CIVIC_THEOLOGY" Favored="true"/>
		<Row ListType="GandhiCivics" Item="CIVIC_CIVIL_SERVICE" Favored="true"/>
		<Row ListType="GandhiCivics" Item="CIVIC_HUMANISM" Favored="true"/>
		<Row ListType="GandhiCivics" Item="CIVIC_DIPLOMATIC_SERVICE" Favored="true"/>
		
		<Row ListType="GandhiTechs" Item="TECH_ASTROLOGY" Favored="true"/>
		<Row ListType="GandhiTechs" Item="TECH_IRRIGATION" Favored="true"/>
		<Row ListType="GandhiTechs" Item="TECH_HORSEBACK_RIDING" Favored="true"/>
		<Row ListType="GandhiTechs" Item="TECH_ELECTRICITY" Favored="true"/>
		
		<Row ListType="GandhiUnitBuilds" Item="PROMOTION_CLASS_INQUISITOR" Value="-1"/>
		
*/


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GandhiWonders', 'BUILDING_GOV_TALL', 1, 90), 
('GandhiWonders', 'BUILDING_GOV_WIDE', 0, 0), 
('GandhiWonders', 'BUILDING_GOV_CONQUEST', 0, 0),

('GandhiWonders', 'BUILDING_GOV_FAITH', 1, 90),
('GandhiWonders', 'BUILDING_GOV_SPIES', 0, 0),
('GandhiWonders', 'BUILDING_GOV_CITYSTATES', 0, 0),

('GandhiWonders', 'BUILDING_GOV_MILITARY', 1, 90),
('GandhiWonders', 'BUILDING_GOV_CULTURE', 1, 90),
('GandhiWonders', 'BUILDING_GOV_SCIENCE', 1, 90);

/*
		<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_SURPRISE_WAR" Favored="false"/>
		<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_FORMAL_WAR" Favored="false"/>
		<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_WAR_MINOR_CIV" Favored="false"/>
*/

DELETE FROM AiFavoredItems WHERE ListType = 'PeacekeeperWarLimits'   AND Item = 'DIPLOACTION_DECLARE_SURPRISE_WAR';

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GANDHI', 'TRAIT_LEADER_EXPANSIONIST');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PeacekeeperWarLimits', 'DIPLOACTION_OPEN_BORDERS', 1, 0), 
('PeacekeeperWarLimits', 'DIPLOACTION_ALLIANCE', 1, 0), 
--('PeacekeeperWarLimits', 'DIPLOACTION_DECLARE_FRIENDSHIP', 1, 0), (will do on meet if enabled)
--('PeacekeeperWarLimits', 'DIPLOACTION_RENEW_ALLIANCE', 1, 0), 
('PeacekeeperWarLimits', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0), -- lets be friends (for now)
('PeacekeeperWarLimits', 'DIPLOACTION_DIPLOMATIC_DELEGATION', 1, 0),
('PeacekeeperWarLimits', 'DIPLOACTION_DECLARE_HOLY_WAR', 1, 0),
('PeacekeeperWarLimits', 'DIPLOACTION_THIRD_PARTY_WAR',  0, 0),

('GandhiPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -65), 
('GandhiPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 15), -- pvs 0
('GandhiPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 8),
('GandhiPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 200),
('GandhiYields', 'YIELD_SCIENCE',  1, 13),
('GandhiYields', 'YIELD_FAITH', 1, 22), -- pvs 16, 21 (reduced indias trait)
('GandhiYields', 'YIELD_RH_NUCLEAR', 1, 115), -- pvs 130
('GandhiYields', 'YIELD_RH_SPREAD_RELIGION', 	1, 40),

('GandhiPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 16),
('GandhiPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 46), -- pvs 22, 35, 40, 42
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 8),
('GandhiPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 28), -- pvs 10
('GandhiPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, -25), -- Reduced further to help reduce military engineers - reduced but still needs Encampments for increased stockpile value
('GandhiPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 3), -- Increased stockpile (ideally should set increased stockpile buildings as favoured)
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 2), -- RST DEF - 15
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 11), 
('GandhiPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 80), -- pvs 55, 70
('GandhiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 8),
('GandhiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 8),
('GandhiPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 30), -- pvs 20
--('GandhiPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 8), -- Already for India as a whole
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 35),
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 15),
('GandhiPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, -20), -- pvs -15
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 36),
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 40), -- to differ from CHANDRAGUPTA
('GandhiPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 10), -- peace?, pvs 12, 8
('GandhiUnitBuilds',        'PROMOTION_CLASS_MELEE', 1, 4),
('GandhiUnitBuilds',        'PROMOTION_CLASS_HEAVY_CAVALRY', 1, 2),
('GandhiUnitBuilds',        'PROMOTION_CLASS_LIGHT_CAVALRY', 0, -6),
--('GandhiUnitBuilds',        'PROMOTION_CLASS_ANTI_CAVALRY', 1, -3),
('GandhiUnitBuilds',        'PROMOTION_CLASS_RANGED', 1, 8),
('GandhiUnitBuilds',        'PROMOTION_CLASS_AIR_BOMBER', 1, 35),
('GandhiUnitBuilds',        'PROMOTION_CLASS_SIEGE', 1, 13),
--('GandhiUnits',        'UNIT_GIANT_DEATH_ROBOT', 0, -95),
('GandhiImprovements',		'IMPROVEMENT_MINE',		1,	200);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GandhiUnits',        'UNIT_MILITARY_ENGINEER', 0, -100),
('GandhiUnits',        'UNIT_NUCLEAR_SUBMARINE', 0, -90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GandhiSettlement', 'Foreign Continent', 0, 4), 
('GandhiSettlement', 'Nearest Friendly City', 0, 2); -- Gandhi's expansive empire ;)

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 					TooltipString) VALUES
('GandhiSettlement', 'Total Yield', 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('GandhiSettlement', 'Specific Resource', 0, 6, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('GandhiSettlement', 'Specific Resource', 0, 7, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('GandhiSettlement', 'Specific Resource', 1, 50, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GandhiTechs', 'TECH_NUCLEAR_FISSION', 					1, 0), 
('GandhiTechs', 'TECH_NUCLEAR_FUSION', 						1, 0), 
('GandhiTechs', 'TECH_COMPUTERS', 							1, 0), 
('GandhiTechs', 'TECH_ROBOTICS', 							1, 0),
('GandhiTechs', 'TECH_REFINING', 							1, 0),
('GandhiTechs', 'TECH_COMBINED_ARMS', 						1, 0),

('GandhiTechs', 'TECH_FLIGHT', 								1, 0),
('GandhiTechs', 'TECH_ADVANCED_FLIGHT', 					1, 0), -- Important
('GandhiTechs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0), -- adv bombers

('GandhiTechs', 'TECH_RADIO', 								1, 0), -- Aluminium
('GandhiTechs', 'TECH_SMART_MATERIALS', 					1, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('PeacekeeperWarLimits', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 90),
--('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_GIANT_DEATH_ROBOT', 1, -95),

('GandhiPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1,		 15), -- pvs 40, 30
('GandhiProjects', 'PROJECT_MANHATTAN_PROJECT', 1,			900),
('GandhiProjects', 'PROJECT_OPERATION_IVY', 1, 				900),
('GandhiProjects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 			1, 0),
('GandhiProjects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 	1, 500);

--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_GANDHI'; 



--INSERT OR REPLACE INTO AgendaPreferredLeaders	
--		(LeaderType,				AgendaType,				PercentageChance)
--VALUES	('LEADER_GANDHI',		'AGENDA_DARWINIST',		33);

-- Already has 70% chance of nuke lover

-- Testing, Possibly won't work as Agenda Darwinist Exclusive with Peacekeeper?

DELETE FROM AiFavoredItems WHERE Item='DIPLOACTION_DECLARE_FRIENDSHIP' AND Favored=1 AND ListType='PeacekeeperWarLimits'; -- Don't think it is here but just in case