
-- AUTHOR: ROMANHOLIDAY


-- Plaza

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MilitaryVictoryWonders', 'BUILDING_GOV_TALL', 0, 0), 
('MilitaryVictoryWonders', 'BUILDING_GOV_CONQUEST', 1, 150),
--('MilitaryVictoryWonders', 'BUILDING_GOV_WIDE', 1, 100),
('MilitaryVictoryWonders', 'BUILDING_GOV_MILITARY', 1, 900), -- late game hp important one

--('ScienceVictoryWonders', 'BUILDING_GOV_TALL', 1, 60),
--('ScienceVictoryWonders', 'BUILDING_GOV_WIDE', 1, 90),

('CultureVictoryWonders', 'BUILDING_GOV_TALL', 1, 150),
--('CultureVictoryWonders', 'BUILDING_GOV_WIDE', 1, 90),
('CultureVictoryWonders', 'BUILDING_GOV_CONQUEST', 0, 0),

('ReligiousVictoryWonders', 'BUILDING_GOV_FAITH', 1, 900),
--('ReligiousVictoryWonders', 'BUILDING_GOV_TALL', 1, 0),
--('ReligiousVictoryWonders', 'BUILDING_GOV_WIDE', 1, 0),
--('ReligiousVictoryWonders', 'BUILDING_GOV_CONQUEST', 1, 0),

('CultureVictoryWonders', 'BUILDING_GOV_CULTURE', 1, 900),
('ScienceVictoryWonders', 'BUILDING_GOV_SCIENCE', 1, 900);


--------------------------------------------------------------------------------------------------------------------------
-- Science Victory 1
--------------------------------------------------------------------------------------------------------------------------

/*
For Reference:
	<Row ListType="ScienceVictoryDistricts" Item="DISTRICT_SPACEPORT" Favored="true"/>
	<Row ListType="ScienceVictoryProjects" Item="PROJECT_LAUNCH_EARTH_SATELLITE" Favored="true"/>
	<Row ListType="ScienceVictoryProjects" Item="PROJECT_LAUNCH_MOON_LANDING" Favored="true"/>
	<Row ListType="ScienceVictoryProjects" Item="PROJECT_LAUNCH_MARS_REACTOR" Favored="true"/>
	<Row ListType="ScienceVictoryProjects" Item="PROJECT_LAUNCH_MARS_HABITATION" Favored="true"/>
	<Row ListType="ScienceVictoryProjects" Item="PROJECT_LAUNCH_MARS_HYDROPONICS" Favored="true"/>
	<Row ListType="ScienceVictoryPseudoYields" Item="PSEUDOYIELD_SPACE_RACE" Value="100"/>
	<Row ListType="ScienceVictoryPseudoYields" Item="PSEUDOYIELD_TECHNOLOGY" Value="25"/>
	<Row ListType="ScienceVictoryPseudoYields" Item="PSEUDOYIELD_GPP_SCIENTIST" Value="25"/>
	<Row ListType="ScienceVictoryTechs" Item="TECH_ROCKETRY" Favored="true"/>
	<Row ListType="ScienceVictoryTechs" Item="TECH_SATELLITES" Favored="true"/>
	<Row ListType="ScienceVictoryTechs" Item="TECH_ROBOTICS" Favored="true"/>
	<Row ListType="ScienceVictoryTechs" Item="TECH_NUCLEAR_FUSION" Favored="true"/>
	<Row ListType="ScienceVictoryTechs" Item="TECH_NANOTECHNOLOGY" Favored="true"/>
	<Row ListType="ScienceVictoryYields" Item="YIELD_SCIENCE" Value="50"/>
*/

UPDATE AiFavoredItems SET Value = 150 WHERE ListType = 'ScienceVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- pvs 35, 38, 46, 55, 75, 85, 100, 105
UPDATE AiFavoredItems SET Value = 200 WHERE ListType = 'ScienceVictoryYields' AND Item = 'YIELD_SCIENCE'; -- def 50, pvs 42, 45, 65
UPDATE AiFavoredItems SET Value = 500 WHERE ListType = 'ScienceVictoryPseudoYields' AND Item = 'PSEUDOYIELD_TECHNOLOGY'; -- def 25, pvs 30, 100
--UPDATE AiFavoredItems SET Value = 100 WHERE ListType = 'ScienceVictoryPseudoYields' AND Item = 'PSEUDOYIELD_SPACE_RACE'; -- def 100

--UPDATE StrategyConditions SET ThresholdValue = 35 WHERE StrategyType="VICTORY_STRATEGY_SCIENCE_VICTORY" AND ConditionFunction = 'Lags Military'; -- Def 33
--UPDATE Strategies SET NumConditionsNeeded = 2 WHERE StrategyType="VICTORY_STRATEGY_SCIENCE_VICTORY" AND VictoryType = 'VICTORY_TECHNOLOGY'; -- Test

UPDATE StrategyConditions SET ThresholdValue = 38 WHERE StrategyType="VICTORY_STRATEGY_SCIENCE_VICTORY" AND ConditionFunction = 'Has Tech Lead'; -- Def 33

--DELETE FROM StrategyConditions WHERE StrategyType="VICTORY_STRATEGY_SCIENCE_VICTORY" AND ConditionFunction = 'Is Renaissance';
--UPDATE StrategyConditions SET ThresholdValue = 2 WHERE StrategyType="VICTORY_STRATEGY_SCIENCE_VICTORY" AND ConditionFunction = 'Good Tech City'; -- Def 1

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue) VALUES

('VICTORY_STRATEGY_SCIENCE_VICTORY',      				'Is Medieval',			 	null, 1), -- test
('VICTORY_STRATEGY_SCIENCE_VICTORY',      				'Is Industrial',			 null, 1),
('VICTORY_STRATEGY_SCIENCE_VICTORY',      				'Is Modern',				 null, 1);


DELETE FROM AiFavoredItems WHERE ListType = 'ScienceVictoryTechs' AND Item IN ('TECH_ROBOTICS');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item,Value) VALUES
('ScienceVictoryYields', 'YIELD_CULTURE',		 -15);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ScienceVictoryYields', 'YIELD_FAITH',		 1, -26), -- pvs -25
('ScienceVictoryYields', 'YIELD_PRODUCTION', 1, 50), -- New, pvs 10, 15

('ScienceVictoryYields', 'YIELD_RH_PRODUCTION', 	1, 90),
('ScienceVictoryYields', 'YIELD_RH_COMMUNISM', 	1, 390), -- pvs 50, 80, 150, 180, 250

('ScienceVictoryYields', 'YIELD_RH_SYNTHETIC_TECHNOCRACY', 	1, 220), -- pvs 0

('ScienceVictoryYields', 'YIELD_RH_CULTURE_VICTORY_BASE', 	0, -500),
('ScienceVictoryYields', 'YIELD_RH_SCIENCE_VICTORY_BASE', 	1, 950),

('ScienceVictoryYields', 'YIELD_RH_MAUS_H', 					1, 125),

('ScienceVictoryYields', 'YIELD_RH_JUST_WAR', 					1, 350),


/*
('ScienceVictoryYields', 'YIELD_RH_PATRONAGE_DOUBLE', 	1, 750),
('ScienceVictoryYields', 'YIELD_RH_HERITAGE_ORG_BAN', 	1, 650), -- Pvs 600

('ScienceVictoryYields', 'YIELD_RH_PUBLIC_WORKS_BUFF', 	1, 90), -- Project Cost Decrease

('ScienceVictoryYields', 'YIELD_RH_WORLD_RELIGION_CONDEM', 	1, 150),

('ScienceVictoryYields', 'YIELD_RH_SYNTHETIC_TECHNOCRACY', 	1, 900),

('ScienceVictoryYields', 'YIELD_RH_NUCLEAR_PROGRAM', 	1, 500),

('ScienceVictoryYields', 'YIELD_RH_GE_BUILDING_PRODUCTION_BUFF', 	1, 90),
*/


--('ScienceVictoryPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -25), -- base 350
--('ScienceVictoryPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -10), -- base 300 -10%
--('ScienceVictoryPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -10), -- base 100 -10%
--('ScienceVictoryPseudoYields', 'PSEUDOYIELD_CIVIC', 1, -100), -- see explanation above
('ScienceVictoryPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 75), -- need for infra - Combos with BUILDING_HALICARNASSUS_MAUSOLEUM -- pvs 22, 32
('ScienceVictoryPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -30),
('ScienceVictoryPseudoYields', 'PSEUDOYIELD_TOURISM', 0, -40), -- base RHAI 0.82 - def 1, pvs -10, -12
('ScienceVictoryPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, -30), -- base 3.8
('ScienceVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 0, -15),
('ScienceVictoryPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 0, -50),

--('ScienceVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -3),
--('ScienceVictoryPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, 5),
('ScienceVictoryPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 0, -35),-- pvs -22
('ScienceVictoryPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 21),
('ScienceVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1, -15),

('ScienceVictoryTechs', 'TECH_MACHINERY', 1, 0), -- Kilwa and crossbowmen
('ScienceVictoryTechs', 'TECH_WRITING',    1, 0), 
('ScienceVictoryTechs', 'TECH_EDUCATION',  1, 0), 
('ScienceVictoryTechs', 'TECH_BALLISTICS', 1, 0), -- Defence
('ScienceVictoryTechs', 'TECH_INDUSTRIALIZATION', 1, 0), -- New, testing
('ScienceVictoryTechs', 'TECH_ADVANCED_FLIGHT', 1, 0), -- New, testing -- Needed for satellites as well

('ScienceVictoryTechs', 'TECH_SYNTHETIC_MATERIALS', 1, 0), -- New, testing -- For Nanotech
('ScienceVictoryTechs', 'TECH_PLASTICS', 1, 0), -- New, testing -- For Nanotech
('ScienceVictoryTechs', 'TECH_COMPOSITES', 1, 0), -- New, testing -- For Nanotech


('ScienceVictoryTechs', 'TECH_OFFWORLD_MISSION',  1, 0), 
('ScienceVictoryTechs', 'TECH_SMART_MATERIALS', 1, 0),

('ScienceVictoryTechs', 'TECH_CHEMISTRY',  1, 0); 

--('ScienceVictoryTechs', 'TECH_ROCKETRY',   1, 0); -- exts
--('ScienceVictoryTechs', 'TECH_SATELLITES', 1, 0), 
--('ScienceVictoryTechs', 'TECH_NANOTECHNOLOGY',  1, 0); 

--REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ScienceVictoryPseudoYields', 'PSEUDOYIELD_UNIT_GIANT_DEATH_ROBOT', 1, -15); -- more aluminium for victory

--REPLACE INTO AiFavoredItems (ListType,Item) VALUES

--('ScienceVictoryTechs','TECH_NUCLEAR_FUSION'); -- bringing it back after deletion

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ScienceVictoryPseudoYields', PseudoYieldType, 0, -35
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('ScienceVictoryAlliances'),
('ScienceVictoryDiplomacy'),
('ScienceVictoryCivics'),
('ScienceVictorySavings'),
('ScienceVictoryWonders');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('ScienceVictoryAlliances', 'Alliances'),
('ScienceVictoryDiplomacy', 'DiplomaticActions'),
('ScienceVictoryCivics',    'Civics'),
('ScienceVictorySavings',    'SavingTypes'),
('ScienceVictoryWonders',   'Buildings');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'ScienceVictoryDiplomacy'),
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'ScienceVictoryCivics'),
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'ScienceVictorySavings'),
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'ScienceVictoryWonders');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('ScienceVictorySavings', 'SAVING_GREAT_PEOPLE', 								 0), -- def 1
('ScienceVictorySavings', 'SAVING_UNITS', 										 1),
('ScienceVictorySavings', 'SAVING_PLOTS', 										 1); -- def 3
--('ScienceVictorySavings', 'SAVING_SLUSH_FUND', 								 	-1); -- def 3


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ScienceVictoryDistricts', 'DISTRICT_CAMPUS', 1, 0), -- In additon to Spaceport
--('ScienceVictoryDistricts', 'DISTRICT_ENCAMPMENT', 0, 0), 

('ScienceVictoryAlliances', 'ALLIANCE_RESEARCH', 1, 0),
('ScienceVictoryAlliances', 'ALLIANCE_MILITARY', 1, 0),

('ScienceVictoryDiplomacy', 'DIPLOACTION_ALLIANCE_RESEARCH', 1, 0),
('ScienceVictoryDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS', 1, 0),
-- ('ScienceVictoryDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 75), -- Diplo_Def
('ScienceVictoryCivics', 'CIVIC_RECORDED_HISTORY', 1, 0),
('ScienceVictoryCivics', 'CIVIC_DEFENSIVE_TACTICS', 1, 0),
--('ScienceVictoryCivics', 'CIVIC_THE_ENLIGHTENMENT', 1, 0), not that useful / might skip govs
--
('ScienceVictoryCivics', 'CIVIC_GLOBALIZATION', 1, 0),
--('ScienceVictoryCivics', 'CIVIC_SUFFRAGE', 0, 0), 
--('ScienceVictoryCivics', 'CIVIC_TOTALITARIANISM', 0, 0), 
('ScienceVictoryCivics', 'CIVIC_CLASS_STRUGGLE', 1, 0), 
('ScienceVictoryCivics', 'CIVIC_SYNTHETIC_TECHNOCRACY', 1, 0), 
('ScienceVictoryCivics', 'CIVIC_NUCLEAR_PROGRAM', 1, 0), -- Gp scientist / engineer / double tech boost
('ScienceVictoryCivics', 'CIVIC_RAPID_DEPLOYMENT', 1, 0), -- Scott research station
('ScienceVictoryCivics', 'CIVIC_SPACE_RACE', 1, 0),
--('ScienceVictoryCivics', 'CIVIC_PROFESSIONAL_SPORTS', 1, 0),

('ScienceVictoryWonders', 'BUILDING_UNIVERSITY', 1, 900),
('ScienceVictoryWonders', 'BUILDING_RESEARCH_LAB', 1, 900),
('ScienceVictoryWonders', 'BUILDING_MONT_ST_MICHEL', 0, 0),
('ScienceVictoryWonders', 'BUILDING_BROADWAY', 0, -50),
('ScienceVictoryWonders', 'BUILDING_EIFFEL_TOWER', 0, -50),
('ScienceVictoryWonders', 'BUILDING_SYDNEY_OPERA_HOUSE', 0, -50),
('ScienceVictoryWonders', 'BUILDING_HERMITAGE', 0, -50),
('ScienceVictoryWonders', 'BUILDING_GREAT_LIBRARY', 1, 0),
('ScienceVictoryWonders', 'BUILDING_OXFORD_UNIVERSITY', 1, 90),
('ScienceVictoryWonders', 'BUILDING_FORBIDDEN_CITY', 1, 0),
('ScienceVictoryWonders', 'BUILDING_COLOSSEUM', 1, 40), -- Amenities good for science
('ScienceVictoryWonders', 'BUILDING_RUHR_VALLEY', 1, 30);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) -- Rise and fall -- only 2 science city states needed for +15% science
SELECT 'ScienceVictoryWonders', 'BUILDING_KILWA_KISIWANI', 1, 90
FROM Types WHERE Type = 'BUILDING_KILWA_KISIWANI';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) -- Engineers -- -- Persia Macadon dlc wonder -- value pvs 200
SELECT 'ScienceVictoryWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900
FROM Types WHERE Type = 'BUILDING_HALICARNASSUS_MAUSOLEUM';

INSERT OR IGNORE INTO  AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ScienceVictoryWonders', 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION', 1, 500
FROM Types WHERE Type = 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION';

DELETE FROM AiFavoredItems WHERE ListType = 'ScienceVictoryProjects' AND Item IN ('PROJECT_ORBITAL_LASER','PROJECT_TERRESTRIAL_LASER'); 
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ScienceVictoryProjects', 'PROJECT_ORBITAL_LASER',     1, 5000), -- Alum
('ScienceVictoryProjects', 'PROJECT_CONVERT_REACTOR_TO_COAL',     0, 0),
--('ScienceVictoryProjects', 'PROJECT_CONVERT_REACTOR_TO_URANIUM', 1, 0),  -- Extra Power
--('ScienceVictoryProjects', 'PROJECT_CONVERT_REACTOR_TO_OIL', 1, 0),  
('ScienceVictoryProjects', 'PROJECT_CARBON_RECAPTURE', 0, -900), 
('ScienceVictoryProjects', 'PROJECT_TRAIN_ASTRONAUTS', 1, 30), -- 3 lightyears a turn for gold
('ScienceVictoryProjects', 'PROJECT_TERRESTRIAL_LASER', 1, 5000); -- Power



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES 
('ScienceVictoryImprovements');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('ScienceVictoryImprovements', 'Improvements');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'ScienceVictoryImprovements');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ScienceVictoryImprovements',	'IMPROVEMENT_MINE',			1,	50),

('ScienceVictoryImprovements', 'IMPROVEMENT_BEACH_RESORT',  0,  -50),
('ScienceVictoryImprovements', 'IMPROVEMENT_FORT', 			0,  -100); -- National Parks