
-- RH Vict 5
-- Author: RomanHoliday
-- DateCreated: 6/09/2023 16:01:06 PM
-- Copyright 2024,© RomanHoliday, All rights reserved

--------------------------------------------------------------------------------------------------------------------------
-- RH Diplomatic Victory Changes
--------------------------------------------------------------------------------------------------------------------------

REPLACE INTO AiListTypes (ListType) VALUES
('DiplomaticVictoryAgendas'), 
('DiplomaticVictoryAlliances'), 
('DiplomaticVictoryCivics'),
('DiplomaticVictoryDiplomacy'),
('DiplomaticVictoryDistricts'), 
('DiplomaticVictoryCommemorations'),
('DiplomaticVictoryProjects'),
('DiplomaticVictoryTechs'),
('DiplomaticVictoryWonders'),
('DiplomaticVictoryYields');

REPLACE INTO AiLists (ListType, System) VALUES
('DiplomaticVictoryAgendas',      'Agendas'),
('DiplomaticVictoryAlliances',    'Alliances'),
('DiplomaticVictoryCivics',       'Civics'),
('DiplomaticVictoryDiplomacy',    'DiplomaticActions'),
('DiplomaticVictoryDistricts',    'Districts'),
('DiplomaticVictoryCommemorations', 'Commemorations'),
('DiplomaticVictoryProjects',     'Projects'),
('DiplomaticVictoryTechs',        'Technologies'),
('DiplomaticVictoryWonders',      'Buildings'),
('DiplomaticVictoryYields',       'Yields');

REPLACE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryAgendas'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryAlliances'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryCivics'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryDiplomacy'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryDistricts'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryCommemorations'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryProjects'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryTechs'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryWonders'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryYields');

-- Todo add preference to scout more of the map

--UPDATE AiFavoredItems SET Value = -1 WHERE ListType = 'DiplomaticVictoryPreference' AND Item = 'VICTORY_STRATEGY_DIPLOMATIC_VICTORY'; -- def -2, test


 --DELETE FROM StrategyConditions WHERE StrategyType='VICTORY_STRATEGY_DIPLOMATIC_VICTORY' AND ConditionFunction = 'Percentage Diplomatic Victory Points' AND ThresholdValue = '60'; --  AND Exclusive=1


--UPDATE StrategyConditions SET Exclusive = 'false' WHERE StrategyType='VICTORY_STRATEGY_DIPLOMATIC_VICTORY' AND ConditionFunction = 'Percentage Diplomatic Victory Points' AND ThresholdValue = 60;


--DELETE FROM StrategyConditions WHERE StrategyType='VICTORY_STRATEGY_DIPLOMATIC_VICTORY' AND ConditionFunction='Percentage Diplomatic Victory Points';


--UPDATE StrategyConditions SET ThresholdValue = '40' WHERE StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" AND ConditionFunction = 'Percentage Diplomatic Victory Points' AND ThresholdValue = '25'; -- Test Disable
-- 8 Points, pvs 6

--UPDATE StrategyConditions SET ThresholdValue = 55 WHERE StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" AND ConditionFunction = 'Percentage Diplomatic Victory Points' AND ThresholdValue = 60; 
-- 11 Points


/*
	<StrategyConditions>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" ConditionFunction="Has Diplomatic Victory Points" ThresholdValue="1"/>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" ConditionFunction="Leads Diplomatic Victory Points" ThresholdValue="1"/>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" ConditionFunction="Percentage Diplomatic Victory Points" ThresholdValue="25"/>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" ConditionFunction="Percentage Diplomatic Victory Points" ThresholdValue="60" Exclusive="true"/>
*/


--INSERT OR REPLACE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue,  ThresholdValue) VALUES

--('VICTORY_STRATEGY_DIPLOMATIC_VICTORY',      				'Has Diplomatic Victory Points', null,		 '1'),
--('VICTORY_STRATEGY_DIPLOMATIC_VICTORY',      				'Leads Diplomatic Victory Points', null,		 '1'),

--('VICTORY_STRATEGY_DIPLOMATIC_VICTORY',      				'Percentage Diplomatic Victory Points',	null,	 '25'),
--('VICTORY_STRATEGY_DIPLOMATIC_VICTORY',      				'Percentage Diplomatic Victory Points',	null,	 '60');


--INSERT INTO StrategyConditions (StrategyType, ConditionFunction,   ThresholdValue) VALUES
--('VICTORY_STRATEGY_DIPLOMATIC_VICTORY',      				'Percentage Diplomatic Victory Points',		 '75'); 


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY',      				'Percentage Diplomatic Victory Points', 	 '90'); -- 18 Points


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('DiplomaticVictoryWonders', 'BUILDING_CASTLE', 			1, 100), 
('DiplomaticVictoryWonders', 'BUILDING_STAR_FORT',			1, 100), -- pvs 40, important for diplo favour of course
('DiplomaticVictoryWonders', 'BUILDING_ORSZAGHAZ',      	1, 90), -- Important
('DiplomaticVictoryWonders', 'BUILDING_MAHABODHI_TEMPLE',   1, 120), -- +2 DP Victory Points
('DiplomaticVictoryWonders', 'BUILDING_POTALA_PALACE', 	    1, 90),
('DiplomaticVictoryWonders', 'BUILDING_STATUE_LIBERTY',     1, 500), -- +4!! -- VERY VERY IMPORTANT
('DiplomaticVictoryWonders', 'BUILDING_KILWA_KISIWANI',     1, 150),

('DiplomaticVictoryWonders', 'BUILDING_COAL_POWER_PLANT',     0, -50), -- high pollution
('DiplomaticVictoryWonders', 'BUILDING_OIL_POWER_PLANT',     0, -10),

('DiplomaticVictoryWonders', 'BUILDING_CHANCERY', 1, 200), -- Important!!
('DiplomaticVictoryWonders', 'BUILDING_CONSULATE', 1, 200),

('DiplomaticVictoryYields', 'YIELD_RH_MONARCHY', 	1, 300),
('DiplomaticVictoryYields', 'YIELD_RH_DIPLO', 	1, 1400), -- pvs 400, 450, 600, 990
('DiplomaticVictoryYields', 'YIELD_RH_NAVAL', 	1, 125), -- Statue of Liberty, pvs 200

('DiplomaticVictoryYields', 'YIELD_RH_STATUE_LIBERTY', 	1, 950), 

/*
('DiplomaticVictoryYields', 'YIELD_RH_PATRONAGE_BAN', 	1, 800),
('DiplomaticVictoryYields', 'YIELD_RH_MERCENARY_COMPANIES_DOUBLE', 	1, 900), -- pvs 800

('DiplomaticVictoryYields', 'YIELD_RH_MILITARY_ADVISORY_DEBUFF', 	1, 800), -- Lower Strength

('DiplomaticVictoryYields', 'YIELD_RH_PUBLIC_RELATIONS_BUFF', 	1, 800),

('DiplomaticVictoryYields', 'YIELD_RH_PUBLIC_WORKS_DOUBLE',   1, 650), -- Nerf Science Victory
*/

('DiplomaticVictoryYields', 'YIELD_RH_DIPLOVICTORY_BUFF',   1, 50), -- pvs 150, spread votes, also in Leads Diplo


('DiplomaticVictoryYields', 'YIELD_PRODUCTION', 0, -15), -- pollution penalty

('DiplomaticVictoryYields', 'YIELD_FAITH', 		1, 5),
('DiplomaticVictoryYields', 'YIELD_CULTURE', 	1, 15),
('DiplomaticVictoryYields', 'YIELD_GOLD', 		1, 10);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DiplomaticVictoryTechs', 'TECH_ASTROLOGY',     1, 0), -- Potala Palace (1dp and diplo card)
('DiplomaticVictoryTechs', 'TECH_MACHINERY',     1, 0), -- Kilwa
('DiplomaticVictoryTechs', 'TECH_SEASTEADS',     1, 0), -- +1 DP Point

('DiplomaticVictoryTechs', 'TECH_SANITATION',     1, 0); -- ORSZAGHAZ


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DiplomaticVictoryCivics', 'CIVIC_THEOLOGY',     1, 0), -- leads to divine right and unlocks the mahadodhi temple
('DiplomaticVictoryCivics', 'CIVIC_DIVINE_RIGHT', 1, 0), -- Monarchy

('DiplomaticVictoryCivics', 'CIVIC_CIVIL_SERVICE',     1, 0),
('DiplomaticVictoryCivics', 'CIVIC_GLOBAL_WARMING_MITIGATION',     1, 0), -- +1 DP Point

('DiplomaticVictoryCivics', 'CIVIC_MERCANTILISM', 1, 0),  -- Leads to Statue Liberty
('DiplomaticVictoryCivics', 'CIVIC_CIVIL_ENGINEERING', 1, 0), -- Statue Liberty

('DiplomaticVictoryCivics', 'CIVIC_IDEOLOGY',          				1, 0), -- for late game governments
('DiplomaticVictoryCivics', 'CIVIC_SUFFRAGE', 						1, 0), -- Democracy, yes
('DiplomaticVictoryCivics', 'CIVIC_DIGITAL_DEMOCRACY', 				1, 0),
--('DiplomaticVictoryCivics', 'CIVIC_TOTALITARIANISM', 		0, 0), -- Fascism, no 
--('DiplomaticVictoryCivics', 'CIVIC_CLASS_STRUGGLE', 		0, 0), -- Communism, no

('DiplomaticVictoryDistricts', 'DISTRICT_DIPLOMATIC_QUARTER',    1, 200),
('DiplomaticVictoryDistricts', 'DISTRICT_GOVERNMENT',    1, 90),

('DiplomaticVictoryDiplomacy', 'DIPLOACTION_ALLIANCE',         1, 50),
('DiplomaticVictoryDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 80),
('DiplomaticVictoryDiplomacy', 'DIPLOACTION_DIPLOMATIC_DELEGATION', 1, 80), -- Favor from Diplo Quarter

--('DiplomaticVictoryDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE',   1, 0),
--('DiplomaticVictoryDiplomacy', 'DIPLOACTION_DECLARE_FRIENDSHIP', 1, 0),
--('DiplomaticVictoryDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('DiplomaticVictoryDiplomacy', 'DIPLOACTION_DECLARE_LIBERATION_WAR', 1, 60),
('DiplomaticVictoryDiplomacy', 'DIPLOACTION_DECLARE_PROTECTORATE_WAR', 1, 30),

('DiplomaticVictoryDiplomacy', 'DIPLOACTION_LIBERATE_CITY', 1, 50),

('DiplomaticVictoryDiplomacy', 'DIPLOACTION_PROPOSE_TRADE', 1, 0), -- Test

--('DiplomaticVictoryDiplomacy', 'DIPLOACTION_PROPOSE_PEACE_DEAL', 1, 0),

('DiplomaticVictoryProjects', 'PROJECT_CARBON_RECAPTURE', 1, 60), -- Reduces CO2 to potentially 0 and earns 30 diplo favor
('DiplomaticVictoryProjects', 'PROJECT_SEND_AID',         1, 400), -- +2 for winning
('DiplomaticVictoryProjects', 'PROJECT_TRAIN_ATHLETES',   1, 70), -- +1 dp for gold tier (highest score)

('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_GPP_PROPHET',      1, 10),
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_GPP_MERCHANT',      1, 20),
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_GPP_ENGINEER',      0, -25), -- Pollution Penalty
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_GPP_ADMIRAL',      1, 30), -- Statue of Liberty

--('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 50), -- def 100
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 36), -- pvs 25, 17, 20, 22, 25, 30
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 35), -- def -0.5. pvs 40, 35, 30

('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_WONDER', 1, 35), -- Diplomatic victory wonders
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_CITY_BASE', 1, -15), -- base 820 early game
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_CITY_DEFENSES', 1, 6), -- base 60 pvs 12
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 15), -- base 70
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 	-6),
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 	-3),

('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 300), -- base -210 (minus diplo points for controlling one)
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_ENVIRONMENT', 1, 180), -- pvs 70, 50, 70
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, -18),
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_INFLUENCE',        1, 70), -- pvs 25, 30, 40, 100
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_UNIT_TRADE',       1, 25);
--('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_UNIT_SPY',       1, 15), -- For city states / isn't great for alliances
--('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_SPACE_RACE',       1, -10);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DiplomaticVictoryWonders', 'BUILDING_GOV_CONQUEST', 0, 0),
--('DiplomaticVictoryWonders', 'BUILDING_GOV_TALL', 1, 80),
--('DiplomaticVictoryWonders', 'BUILDING_GOV_WIDE', 1, 80),
('DiplomaticVictoryWonders', 'BUILDING_GOV_CITYSTATES', 1, 500);
--('DiplomaticVictoryWonders', 'BUILDING_GOV_MILITARY', 0, 0);


UPDATE AiFavoredItems SET Value = 950 WHERE ListType = 'DiplomaticPseudoYieldPreferences' AND Item = 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT'; -- def 100, pvs 250, 300, 550
UPDATE AiFavoredItems SET Value = 150 WHERE ListType = 'DiplomaticPseudoYieldPreferences' AND Item = 'PSEUDOYIELD_DIPLOMATIC_FAVOR'; -- def 100


-- PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT -- Other Victories

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureVictoryPseudoYields',   'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1,  30),
('MilitaryVictoryPseudoYields',  'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 0, -50), -- pvs -100
('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1, 5),
('ScienceVictoryPseudoYields',   'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 0, -30);

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('CultureVictoryDiscussions'),
('CultureVictoryResolutions'),
('DiplomaticVictoryDiscussions'),
('DiplomaticVictoryResolutions'),
('MilitaryVictoryDiscussions'),
('MilitaryVictoryResolutions'),
('ReligiousVictoryDiscussions'),
('ReligiousVictoryResolutions'),
('ScienceVictoryDiscussions'),
('ScienceVictoryResolutions');

INSERT OR REPLACE INTO AiLists (ListType, System) VALUES
('CultureVictoryDiscussions', 'Discussions'),
('CultureVictoryResolutions', 'Resolutions'),
('DiplomaticVictoryDiscussions',  'Discussions'),
('DiplomaticVictoryResolutions',  'Resolutions'),
('MilitaryVictoryDiscussions', 'Discussions'),
('MilitaryVictoryResolutions', 'Resolutions'),
('ReligiousVictoryDiscussions', 'Discussions'),
('ReligiousVictoryResolutions', 'Resolutions'),
('ScienceVictoryDiscussions', 'Discussions'),
('ScienceVictoryResolutions', 'Resolutions');

INSERT OR REPLACE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryDiscussions'),
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryResolutions'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryDiscussions'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryResolutions'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryDiscussions'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryResolutions'),
('VICTORY_STRATEGY_RELIGIOUS_VICTORY', 'ReligiousVictoryDiscussions'),
('VICTORY_STRATEGY_RELIGIOUS_VICTORY', 'ReligiousVictoryResolutions'),
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'ScienceVictoryDiscussions'),
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'ScienceVictoryResolutions');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored) VALUES
('CultureVictoryDiscussions',   'WC_EMERGENCY_WORLD_GAMES', 		1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_WORLD_GAMES',			0),
('MilitaryVictoryDiscussions',  'WC_EMERGENCY_WORLD_GAMES', 		0),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_SPACE_STATION', 		1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_SPACE_STATION', 		0),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_SPACE_STATION', 		0),
('DiplomaticVictoryDiscussions', 'WC_EMERGENCY_SPACE_STATION', 		0), -- Test

('CultureVictoryDiscussions',   'WC_EMERGENCY_WORLD_FAIR', 			1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_WORLD_FAIR', 			1),
--('DiplomaticVictoryDiscussions',   'WC_EMERGENCY_WORLD_FAIR', 			1), -- +1 dp point for winning

('ReligiousVictoryDiscussions', 'WC_EMERGENCY_WORLD_FAIR', 			0),
('MilitaryVictoryDiscussions',  'WC_EMERGENCY_WORLD_FAIR', 			0),

-- Key Emergencies
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_CITY_STATE', 		1),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_RELIGIOUS', 				1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_NUCLEAR', 				1),
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_NUCLEAR', 			1),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_NUCLEAR', 				1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_NUCLEAR', 				1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_BACKSTAB', 				1),
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_BACKSTAB', 			1),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_BACKSTAB',				1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_BACKSTAB',				1),
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_REQUEST_AID', 		1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE', 1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE', 0),
('MilitaryVictoryDiscussions',  'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE', 0),
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_NOBEL_PRIZE_PEACE', 1),
('MilitaryVictoryDiscussions',  'WC_EMERGENCY_NOBEL_PRIZE_PEACE',      0),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',    1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',    0),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',    0);






/*
Civ Wiki:
List of AI behaviors:

For the Mercenary Companies resolution, most AI tends to vote for -50% cost on using Production.
For the Diplomatic Victory resolution, the AI leaders tend to pour most of their Diplomatic Favor into gaining 2 points for themselves. However, when a player is 1 or 2 Diplomatic Victory points away from a Diplomatic Victory, AI leaders will pour most of their Diplomatic Favor Diplomatic Favor into removing 2 points from the winning player instead.
For the Luxury Policy resolution, the AI has a tendency to ban the type of luxury resource the human player owns the most copies of.
For the Urban Development Treaty resolution, the AI has a tendency to vote for City Center buildings or Campus buildings. Other options may still occur.
For the Border Control Treaty resolution, the AI usually will only put 1 vote for themselves. Therefore, human players can often secure an easy win by casting 2 votes in favor of themselves.
The AI will not trade Diplomatic Favor past a certain era.
The AI will mostly join but almost never actually do anything for Aid Requests before a certain era. Therefore, human players can give the aid target a small amount of Gold right before the competition expires to win it.
*/




-- Victory Congress Resolution Preferences


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored) VALUES

('MilitaryVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 0), -- No walls pls
('ScienceVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 0), -- 100% City centre doesn't aid them much
('DiplomaticVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 1), -- Favour from Walls
('CultureVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 1), -- Culture from Walls
('ReligiousVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 0),

--('ScienceVictoryResolutions',   'WC_RES_BORDER_CONTROL', 1), -- testing

('DiplomaticVictoryResolutions',     'WC_RES_DiplomaticVictory', 1), -- +2 Victory points ofc
('ReligiousVictoryResolutions', 'WC_RES_WORLD_RELIGION', 1), -- +10
('ScienceVictoryResolutions',   'WC_RES_WORLD_RELIGION', 0), -- -5 combat strength / condemn

('MilitaryVictoryResolutions',  'WC_RES_MERCENARY_COMPANIES', 0), -- OptionB -50% costs
('DiplomaticVictoryResolutions',     'WC_RES_MERCENARY_COMPANIES', 1), -- units double cost
('CultureVictoryResolutions',   'WC_RES_MERCENARY_COMPANIES', 1), -- units double cost

('MilitaryVictoryResolutions',  'WC_RES_MIGRATION_TREATY', 0), -- +5 loyalty -- good for domination

('MilitaryVictoryResolutions',     'WC_RES_ARMS_CONTROL', 1), -- extra fun? -- testing 0
('ReligiousVictoryResolutions', 'WC_RES_ARMS_CONTROL', 0), -- fun
('DiplomaticVictoryResolutions',     'WC_RES_ARMS_CONTROL', 0), -- lose nukes
('CultureVictoryResolutions',   'WC_RES_ARMS_CONTROL', 0), -- lose nukes

('CultureVictoryResolutions',   'WC_RES_HERITAGE_ORG', 1), -- 100% tourism
('ScienceVictoryResolutions',   'WC_RES_HERITAGE_ORG', 0), -- no tourism

('DiplomaticVictoryResolutions',     'WC_RES_PUBLIC_WORKS', 1), -- +100% for the project
('ScienceVictoryResolutions',   'WC_RES_PUBLIC_WORKS', 1),

('CultureVictoryResolutions',  		'WC_RES_PATRONAGE', 1), -- 2x GPP
('ScienceVictoryResolutions',  		'WC_RES_PATRONAGE', 1),
('ReligiousVictoryResolutions', 	'WC_RES_PATRONAGE', 0), -- no GPP
('DiplomaticVictoryResolutions',    'WC_RES_PATRONAGE', 0), -- no GPP

('ReligiousVictoryResolutions', 'WC_RES_GLOBAL_ENERGY_TREATY', 0), -- ban 
('MilitaryVictoryResolutions',  'WC_RES_GLOBAL_ENERGY_TREATY', 0), -- ban 
('CultureVictoryResolutions',  'WC_RES_GLOBAL_ENERGY_TREATY', 0), -- ban 
('DiplomaticVictoryResolutions',  'WC_RES_GLOBAL_ENERGY_TREATY', 0), -- is good for the environment lol
('ScienceVictoryResolutions',   'WC_RES_GLOBAL_ENERGY_TREATY', 1); -- 50% 

-- False Second Option


-- PATRONAGE_DOUBLE Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_PATRONAGE_DOUBLE_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PATRONAGE_DOUBLE_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PATRONAGE_DOUBLE_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PATRONAGE_DOUBLE_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PATRONAGE_DOUBLE_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_PATRONAGE_DOUBLE_MOD_XS',		'YieldType', 		'YIELD_RH_PATRONAGE_DOUBLE'),
		('RH_PATRONAGE_DOUBLE_MOD_XS',							'Amount'   , 5), 

		('RH_PATRONAGE_DOUBLE_MOD_S',		'YieldType', 		'YIELD_RH_PATRONAGE_DOUBLE'),
		('RH_PATRONAGE_DOUBLE_MOD_S',							'Amount'   , 12),

		('RH_PATRONAGE_DOUBLE_MOD_L',		'YieldType', 		'YIELD_RH_PATRONAGE_DOUBLE'),
		('RH_PATRONAGE_DOUBLE_MOD_L',							'Amount'   , 60), 

		('RH_PATRONAGE_DOUBLE_MOD_XL',		'YieldType', 		'YIELD_RH_PATRONAGE_DOUBLE'),
		('RH_PATRONAGE_DOUBLE_MOD_XL',							'Amount'   , 110),

		('RH_PATRONAGE_DOUBLE_MOD',		'YieldType', 			'YIELD_SCIENCE'),
		('RH_PATRONAGE_DOUBLE_MOD',								'Amount'   , 130); -- pvs 50, 90


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(122, 'WC_RES_PATRONAGE', 1, 'RH_PATRONAGE_DOUBLE_MOD'); -- Double



-- PATRONAGE_BAN Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_PATRONAGE_BAN_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PATRONAGE_BAN_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PATRONAGE_BAN_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PATRONAGE_BAN_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PATRONAGE_BAN_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_PATRONAGE_BAN_MOD_XS',		'YieldType', 		'YIELD_RH_PATRONAGE_BAN'),
		('RH_PATRONAGE_BAN_MOD_XS',							'Amount'   , 5), 

		('RH_PATRONAGE_BAN_MOD_S',		'YieldType', 		'YIELD_RH_PATRONAGE_BAN'),
		('RH_PATRONAGE_BAN_MOD_S',							'Amount'   , 12),

		('RH_PATRONAGE_BAN_MOD_L',		'YieldType', 		'YIELD_RH_PATRONAGE_BAN'),
		('RH_PATRONAGE_BAN_MOD_L',							'Amount'   , 60), 

		('RH_PATRONAGE_BAN_MOD_XL',		'YieldType', 		'YIELD_RH_PATRONAGE_BAN'),
		('RH_PATRONAGE_BAN_MOD_XL',							'Amount'   , 110),

		('RH_PATRONAGE_BAN_MOD',		'YieldType', 			'YIELD_GOLD'),
		('RH_PATRONAGE_BAN_MOD',								'Amount'   , 175); -- pvs 45, now 50 49, 90, 150


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(127, 'WC_RES_PATRONAGE', 2, 'RH_PATRONAGE_BAN_MOD'); -- Ban



-- Heritage


-- HERITAGE_ORG_DOUBLE Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_HERITAGE_ORG_DOUBLE_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HERITAGE_ORG_DOUBLE_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HERITAGE_ORG_DOUBLE_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HERITAGE_ORG_DOUBLE_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HERITAGE_ORG_DOUBLE_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_HERITAGE_ORG_DOUBLE_MOD_XS',		'YieldType', 		'YIELD_RH_HERITAGE_ORG_DOUBLE'),
		('RH_HERITAGE_ORG_DOUBLE_MOD_XS',							'Amount'   , 5), 

		('RH_HERITAGE_ORG_DOUBLE_MOD_S',		'YieldType', 		'YIELD_RH_HERITAGE_ORG_DOUBLE'),
		('RH_HERITAGE_ORG_DOUBLE_MOD_S',							'Amount'   , 12),

		('RH_HERITAGE_ORG_DOUBLE_MOD_L',		'YieldType', 		'YIELD_RH_HERITAGE_ORG_DOUBLE'),
		('RH_HERITAGE_ORG_DOUBLE_MOD_L',							'Amount'   , 60), 

		('RH_HERITAGE_ORG_DOUBLE_MOD_XL',		'YieldType', 		'YIELD_RH_HERITAGE_ORG_DOUBLE'),
		('RH_HERITAGE_ORG_DOUBLE_MOD_XL',							'Amount'   , 110),

		('RH_HERITAGE_ORG_DOUBLE_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_HERITAGE_ORG_DOUBLE_MOD',								'Amount'   , 50);


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(42, 'WC_RES_HERITAGE_ORG', 1, 'RH_HERITAGE_ORG_DOUBLE_MOD'); -- Double



-- HERITAGE_ORG_BAN Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_HERITAGE_ORG_BAN_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HERITAGE_ORG_BAN_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HERITAGE_ORG_BAN_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HERITAGE_ORG_BAN_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_HERITAGE_ORG_BAN_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_HERITAGE_ORG_BAN_MOD_XS',		'YieldType', 		'YIELD_RH_HERITAGE_ORG_BAN'),
		('RH_HERITAGE_ORG_BAN_MOD_XS',							'Amount'   , 5), 

		('RH_HERITAGE_ORG_BAN_MOD_S',		'YieldType', 		'YIELD_RH_HERITAGE_ORG_BAN'),
		('RH_HERITAGE_ORG_BAN_MOD_S',							'Amount'   , 12),

		('RH_HERITAGE_ORG_BAN_MOD_L',		'YieldType', 		'YIELD_RH_HERITAGE_ORG_BAN'),
		('RH_HERITAGE_ORG_BAN_MOD_L',							'Amount'   , 60), 

		('RH_HERITAGE_ORG_BAN_MOD_XL',		'YieldType', 		'YIELD_RH_HERITAGE_ORG_BAN'),
		('RH_HERITAGE_ORG_BAN_MOD_XL',							'Amount'   , 110),

		('RH_HERITAGE_ORG_BAN_MOD',		'YieldType', 			'YIELD_SCIENCE'),
		('RH_HERITAGE_ORG_BAN_MOD',								'Amount'   , 40); -- pvs 50, 55


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(47, 'WC_RES_HERITAGE_ORG', 2, 'RH_HERITAGE_ORG_BAN_MOD'); -- Ban




-- Mercenary Companies (1 unit debuff, 2 buff)


-- MERCENARY_COMPANIES_DOUBLE Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_XS',		'YieldType', 		'YIELD_RH_MERCENARY_COMPANIES_DOUBLE'),
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_XS',							'Amount'   , 5), 

		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_S',		'YieldType', 		'YIELD_RH_MERCENARY_COMPANIES_DOUBLE'),
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_S',							'Amount'   , 12),

		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_L',		'YieldType', 		'YIELD_RH_MERCENARY_COMPANIES_DOUBLE'),
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_L',							'Amount'   , 60), 

		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_XL',		'YieldType', 		'YIELD_RH_MERCENARY_COMPANIES_DOUBLE'),
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD_XL',							'Amount'   , 110),

		('RH_MERCENARY_COMPANIES_DOUBLE_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_MERCENARY_COMPANIES_DOUBLE_MOD',								'Amount'   , 2900); -- pvs 80, 300, 310, 410, 610, 800, 950, 5000, 4000, 3500, 3150



INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_MERC_COMAPNIES_2',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_MERC_COMAPNIES_2',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_ARTIST'),	
			('WC_RES_RH_MERC_COMAPNIES_2',				'Amount',					3100); -- pvs 5000, -1500B (everyones votes a), 2000, 4500, 3200

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(271, 'WC_RES_MERCENARY_COMPANIES', 1, 'RH_MERCENARY_COMPANIES_DOUBLE_MOD'), -- Double cost (AI absolutely loves the other option)

(272, 'WC_RES_MERCENARY_COMPANIES', 1, 'WC_RES_RH_MERC_COMAPNIES_2'); -- Double cost (AI absolutely loves the other option)




-- 173, 174 already in use for 

-- MERCENARY_COMPANIES_BUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MERCENARY_COMPANIES_BUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCENARY_COMPANIES_BUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCENARY_COMPANIES_BUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCENARY_COMPANIES_BUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MERCENARY_COMPANIES_BUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MERCENARY_COMPANIES_BUFF_MOD_XS',		'YieldType', 		'YIELD_RH_MERCENARY_COMPANIES_BUFF'),
		('RH_MERCENARY_COMPANIES_BUFF_MOD_XS',							'Amount'   , 5), 

		('RH_MERCENARY_COMPANIES_BUFF_MOD_S',		'YieldType', 		'YIELD_RH_MERCENARY_COMPANIES_BUFF'),
		('RH_MERCENARY_COMPANIES_BUFF_MOD_S',							'Amount'   , 12),

		('RH_MERCENARY_COMPANIES_BUFF_MOD_L',		'YieldType', 		'YIELD_RH_MERCENARY_COMPANIES_BUFF'),
		('RH_MERCENARY_COMPANIES_BUFF_MOD_L',							'Amount'   , 60), 

		('RH_MERCENARY_COMPANIES_BUFF_MOD_XL',		'YieldType', 		'YIELD_RH_MERCENARY_COMPANIES_BUFF'),
		('RH_MERCENARY_COMPANIES_BUFF_MOD_XL',							'Amount'   , 110),

		('RH_MERCENARY_COMPANIES_BUFF_MOD',		'YieldType', 			'YIELD_SCIENCE'),
		('RH_MERCENARY_COMPANIES_BUFF_MOD',								'Amount'   , -650); -- pvs +8 (AI obsessed with it), -120, -150, -500, -750, -1500, -1400, -1475, -1250, -1200, -1100, -900


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_MERC_COMAPNIES_B_GENERAL',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_MERC_COMAPNIES_B_GENERAL',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_GENERAL'),	
			('WC_RES_RH_MERC_COMAPNIES_B_GENERAL',				'Amount',					150); -- pvs 25, 75


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(177, 'WC_RES_MERCENARY_COMPANIES', 2, 'WC_RES_RH_MERC_COMAPNIES_B_GENERAL'); -- 50% Decrease




INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_MERC_COMAPNIES_B_GENERAL_HIGH_FAITH',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_WORK_ETHIC_PUSH_REQ_S_4'); -- Req Holy 4

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_MERC_COMAPNIES_B_GENERAL_HIGH_FAITH',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_GENERAL'),	
			('WC_RES_RH_MERC_COMAPNIES_B_GENERAL_HIGH_FAITH',				'Amount',					1000); -- pvs 350


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(677, 'WC_RES_MERCENARY_COMPANIES', 2, 'WC_RES_RH_MERC_COMAPNIES_B_GENERAL_HIGH_FAITH'); -- 50% Decrease






-- Military Advisory (Buff / Debuff)


-- MILITARY_ADVISORY_BUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MILITARY_ADVISORY_BUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADVISORY_BUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADVISORY_BUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADVISORY_BUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADVISORY_BUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MILITARY_ADVISORY_BUFF_MOD_XS',		'YieldType', 		'YIELD_RH_MILITARY_ADVISORY_BUFF'),
		('RH_MILITARY_ADVISORY_BUFF_MOD_XS',							'Amount'   , 5), 

		('RH_MILITARY_ADVISORY_BUFF_MOD_S',		'YieldType', 		'YIELD_RH_MILITARY_ADVISORY_BUFF'),
		('RH_MILITARY_ADVISORY_BUFF_MOD_S',							'Amount'   , 12),

		('RH_MILITARY_ADVISORY_BUFF_MOD_L',		'YieldType', 		'YIELD_RH_MILITARY_ADVISORY_BUFF'),
		('RH_MILITARY_ADVISORY_BUFF_MOD_L',							'Amount'   , 60), 

		('RH_MILITARY_ADVISORY_BUFF_MOD_XL',		'YieldType', 		'YIELD_RH_MILITARY_ADVISORY_BUFF'),
		('RH_MILITARY_ADVISORY_BUFF_MOD_XL',							'Amount'   , 110),

		('RH_MILITARY_ADVISORY_BUFF_MOD',		'YieldType', 			'YIELD_SCIENCE'),
		('RH_MILITARY_ADVISORY_BUFF_MOD',								'Amount'   , 65); -- pvs 60


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(202, 'WC_RES_MILITARY_ADVISORY', 1, 'RH_MILITARY_ADVISORY_BUFF_MOD'); -- +5



-- 173, 174 already in use for 

-- MILITARY_ADVISORY_DEBUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MILITARY_ADVISORY_DEBUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADVISORY_DEBUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADVISORY_DEBUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADVISORY_DEBUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MILITARY_ADVISORY_DEBUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MILITARY_ADVISORY_DEBUFF_MOD_XS',		'YieldType', 		'YIELD_RH_MILITARY_ADVISORY_DEBUFF'),
		('RH_MILITARY_ADVISORY_DEBUFF_MOD_XS',							'Amount'   , 5), 

		('RH_MILITARY_ADVISORY_DEBUFF_MOD_S',		'YieldType', 		'YIELD_RH_MILITARY_ADVISORY_DEBUFF'),
		('RH_MILITARY_ADVISORY_DEBUFF_MOD_S',							'Amount'   , 12),

		('RH_MILITARY_ADVISORY_DEBUFF_MOD_L',		'YieldType', 		'YIELD_RH_MILITARY_ADVISORY_DEBUFF'),
		('RH_MILITARY_ADVISORY_DEBUFF_MOD_L',							'Amount'   , 60), 

		('RH_MILITARY_ADVISORY_DEBUFF_MOD_XL',		'YieldType', 		'YIELD_RH_MILITARY_ADVISORY_DEBUFF'),
		('RH_MILITARY_ADVISORY_DEBUFF_MOD_XL',							'Amount'   , 110),

		('RH_MILITARY_ADVISORY_DEBUFF_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_MILITARY_ADVISORY_DEBUFF_MOD',								'Amount'   , 120); -- AI tends to prefer option A, pvs 70, 85, 110


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(207, 'WC_RES_MILITARY_ADVISORY', 2, 'RH_MILITARY_ADVISORY_DEBUFF_MOD'); -- -5







-- PUBLIC_RELATIONS (Buff / Debuff)


-- PUBLIC_RELATIONS_BUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_PUBLIC_RELATIONS_BUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_RELATIONS_BUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_RELATIONS_BUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_RELATIONS_BUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_RELATIONS_BUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_PUBLIC_RELATIONS_BUFF_MOD_XS',		'YieldType', 		'YIELD_RH_PUBLIC_RELATIONS_BUFF'),
		('RH_PUBLIC_RELATIONS_BUFF_MOD_XS',							'Amount'   , 5), 

		('RH_PUBLIC_RELATIONS_BUFF_MOD_S',		'YieldType', 		'YIELD_RH_PUBLIC_RELATIONS_BUFF'),
		('RH_PUBLIC_RELATIONS_BUFF_MOD_S',							'Amount'   , 12),

		('RH_PUBLIC_RELATIONS_BUFF_MOD_L',		'YieldType', 		'YIELD_RH_PUBLIC_RELATIONS_BUFF'),
		('RH_PUBLIC_RELATIONS_BUFF_MOD_L',							'Amount'   , 60), 

		('RH_PUBLIC_RELATIONS_BUFF_MOD_XL',		'YieldType', 		'YIELD_RH_PUBLIC_RELATIONS_BUFF'),
		('RH_PUBLIC_RELATIONS_BUFF_MOD_XL',							'Amount'   , 110),

		('RH_PUBLIC_RELATIONS_BUFF_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_PUBLIC_RELATIONS_BUFF_MOD',								'Amount'   , 42); -- pvs 27, 35

-- YIELD_RH_PUBLIC_RELATIONS_BUFF

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(182, 'WC_RES_PUBLIC_RELATIONS', 1, 'RH_PUBLIC_RELATIONS_BUFF_MOD'); -- Double Grievances -- 100%


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_PUBLIC_RELATIONS_ARTIST',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_PUBLIC_RELATIONS_ARTIST',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_ARTIST'),	
			('WC_RES_RH_PUBLIC_RELATIONS_ARTIST',				'Amount',					7); 


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(882, 'WC_RES_PUBLIC_RELATIONS', 1, 'WC_RES_RH_PUBLIC_RELATIONS_ARTIST'); -- 100% Increase



-- 173, 174 already in use for 

-- PUBLIC_RELATIONS_DEBUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_XS',		'YieldType', 		'YIELD_RH_PUBLIC_RELATIONS_DEBUFF'),
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_XS',							'Amount'   , 5), 

		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_S',		'YieldType', 		'YIELD_RH_PUBLIC_RELATIONS_DEBUFF'),
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_S',							'Amount'   , 12),

		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_L',		'YieldType', 		'YIELD_RH_PUBLIC_RELATIONS_DEBUFF'),
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_L',							'Amount'   , 60), 

		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_XL',		'YieldType', 		'YIELD_RH_PUBLIC_RELATIONS_DEBUFF'),
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD_XL',							'Amount'   , 110),

		('RH_PUBLIC_RELATIONS_DEBUFF_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_PUBLIC_RELATIONS_DEBUFF_MOD',								'Amount'   , 39); -- pvs 28 Science, 35


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(187, 'WC_RES_PUBLIC_RELATIONS', 2, 'RH_PUBLIC_RELATIONS_DEBUFF_MOD'); -- 50% Decrease


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_PUBLIC_RELATIONS_GENERAL',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_PUBLIC_RELATIONS_GENERAL',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_GENERAL'),	
			('WC_RES_RH_PUBLIC_RELATIONS_GENERAL',				'Amount',					8); 


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(887, 'WC_RES_PUBLIC_RELATIONS', 2, 'WC_RES_RH_PUBLIC_RELATIONS_GENERAL'); -- 50% Decrease










-- ESPIONAGE_PACT_DOUBLE Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_ESPIONAGE_PACT_DOUBLE_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ESPIONAGE_PACT_DOUBLE_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ESPIONAGE_PACT_DOUBLE_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ESPIONAGE_PACT_DOUBLE_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ESPIONAGE_PACT_DOUBLE_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_ESPIONAGE_PACT_DOUBLE_MOD_XS',		'YieldType', 		'YIELD_RH_ESPIONAGE_PACT_DOUBLE'),
		('RH_ESPIONAGE_PACT_DOUBLE_MOD_XS',							'Amount'   , 5), 

		('RH_ESPIONAGE_PACT_DOUBLE_MOD_S',		'YieldType', 		'YIELD_RH_ESPIONAGE_PACT_DOUBLE'),
		('RH_ESPIONAGE_PACT_DOUBLE_MOD_S',							'Amount'   , 12),

		('RH_ESPIONAGE_PACT_DOUBLE_MOD_L',		'YieldType', 		'YIELD_RH_ESPIONAGE_PACT_DOUBLE'),
		('RH_ESPIONAGE_PACT_DOUBLE_MOD_L',							'Amount'   , 60), 

		('RH_ESPIONAGE_PACT_DOUBLE_MOD_XL',		'YieldType', 		'YIELD_RH_ESPIONAGE_PACT_DOUBLE'),
		('RH_ESPIONAGE_PACT_DOUBLE_MOD_XL',							'Amount'   , 110),

		('RH_ESPIONAGE_PACT_DOUBLE_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_ESPIONAGE_PACT_DOUBLE_MOD',								'Amount'   , 110); -- pvs 85, 105


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(192, 'WC_RES_ESPIONAGE_PACT', 1, 'RH_ESPIONAGE_PACT_DOUBLE_MOD'); -- Double

-- 193 In use -- Lags Tech Mod. Y2


-- ESPIONAGE_PACT_BAN Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_ESPIONAGE_PACT_BAN_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ESPIONAGE_PACT_BAN_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ESPIONAGE_PACT_BAN_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ESPIONAGE_PACT_BAN_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ESPIONAGE_PACT_BAN_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_ESPIONAGE_PACT_BAN_MOD_XS',		'YieldType', 		'YIELD_RH_ESPIONAGE_PACT_BAN'),
		('RH_ESPIONAGE_PACT_BAN_MOD_XS',							'Amount'   , 5), 

		('RH_ESPIONAGE_PACT_BAN_MOD_S',		'YieldType', 		'YIELD_RH_ESPIONAGE_PACT_BAN'),
		('RH_ESPIONAGE_PACT_BAN_MOD_S',							'Amount'   , 12),

		('RH_ESPIONAGE_PACT_BAN_MOD_L',		'YieldType', 		'YIELD_RH_ESPIONAGE_PACT_BAN'),
		('RH_ESPIONAGE_PACT_BAN_MOD_L',							'Amount'   , 60), 

		('RH_ESPIONAGE_PACT_BAN_MOD_XL',		'YieldType', 		'YIELD_RH_ESPIONAGE_PACT_BAN'),
		('RH_ESPIONAGE_PACT_BAN_MOD_XL',							'Amount'   , 110),

		('RH_ESPIONAGE_PACT_BAN_MOD',		'YieldType', 			'YIELD_SCIENCE'),
		('RH_ESPIONAGE_PACT_BAN_MOD',								'Amount'   , 45); -- pvs 75, 65


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(197, 'WC_RES_ESPIONAGE_PACT', 2, 'RH_ESPIONAGE_PACT_BAN_MOD'); -- Ban







-- MIGRATION_TREATY (Buff / Debuff)


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MIGRATION_TREATY_BUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MIGRATION_TREATY_BUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MIGRATION_TREATY_BUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MIGRATION_TREATY_BUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MIGRATION_TREATY_BUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MIGRATION_TREATY_BUFF_MOD_XS',		'YieldType', 		'YIELD_RH_MIGRATION_TREATY_BUFF'),
		('RH_MIGRATION_TREATY_BUFF_MOD_XS',							'Amount'   , 5), 

		('RH_MIGRATION_TREATY_BUFF_MOD_S',		'YieldType', 		'YIELD_RH_MIGRATION_TREATY_BUFF'),
		('RH_MIGRATION_TREATY_BUFF_MOD_S',							'Amount'   , 12),

		('RH_MIGRATION_TREATY_BUFF_MOD_L',		'YieldType', 		'YIELD_RH_MIGRATION_TREATY_BUFF'),
		('RH_MIGRATION_TREATY_BUFF_MOD_L',							'Amount'   , 60), 

		('RH_MIGRATION_TREATY_BUFF_MOD_XL',		'YieldType', 		'YIELD_RH_MIGRATION_TREATY_BUFF'),
		('RH_MIGRATION_TREATY_BUFF_MOD_XL',							'Amount'   , 110),

		('RH_MIGRATION_TREATY_BUFF_MOD',		'YieldType', 			'YIELD_FOOD'),
		('RH_MIGRATION_TREATY_BUFF_MOD',								'Amount'   , 68); -- pvs 42, 50, 46, 58


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(164, 'WC_RES_MIGRATION_TREATY', 1, 'RH_MIGRATION_TREATY_BUFF_MOD'); -- Growth Bonus, Loyalty Penalty




-- MIGRATION_TREATY_DEBUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_MIGRATION_TREATY_DEBUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MIGRATION_TREATY_DEBUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MIGRATION_TREATY_DEBUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MIGRATION_TREATY_DEBUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_MIGRATION_TREATY_DEBUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_MIGRATION_TREATY_DEBUFF_MOD_XS',		'YieldType', 		'YIELD_RH_MIGRATION_TREATY_DEBUFF'),
		('RH_MIGRATION_TREATY_DEBUFF_MOD_XS',							'Amount'   , 5), 

		('RH_MIGRATION_TREATY_DEBUFF_MOD_S',		'YieldType', 		'YIELD_RH_MIGRATION_TREATY_DEBUFF'),
		('RH_MIGRATION_TREATY_DEBUFF_MOD_S',							'Amount'   , 12),

		('RH_MIGRATION_TREATY_DEBUFF_MOD_L',		'YieldType', 		'YIELD_RH_MIGRATION_TREATY_DEBUFF'),
		('RH_MIGRATION_TREATY_DEBUFF_MOD_L',							'Amount'   , 60), 

		('RH_MIGRATION_TREATY_DEBUFF_MOD_XL',		'YieldType', 		'YIELD_RH_MIGRATION_TREATY_DEBUFF'),
		('RH_MIGRATION_TREATY_DEBUFF_MOD_XL',							'Amount'   , 110),

		('RH_MIGRATION_TREATY_DEBUFF_MOD',		'YieldType', 			'YIELD_PRODUCTION'),
		('RH_MIGRATION_TREATY_DEBUFF_MOD',								'Amount'   , 40); -- pvs 30, 37 Food, 35, 30, 29, 35 production


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(169, 'WC_RES_MIGRATION_TREATY', 2, 'RH_MIGRATION_TREATY_DEBUFF_MOD'); -- Growth Penalty, Loyalty Bonus




-- SOVEREIGNTY_DOUBLE Mod


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_SOVEREIGNTY_DOUBLE_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SOVEREIGNTY_DOUBLE_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SOVEREIGNTY_DOUBLE_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SOVEREIGNTY_DOUBLE_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SOVEREIGNTY_DOUBLE_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_SOVEREIGNTY_DOUBLE_MOD_XS',		'YieldType', 		'YIELD_RH_SOVEREIGNTY_DOUBLE'),
		('RH_SOVEREIGNTY_DOUBLE_MOD_XS',							'Amount'   , 5), 

		('RH_SOVEREIGNTY_DOUBLE_MOD_S',		'YieldType', 		'YIELD_RH_SOVEREIGNTY_DOUBLE'),
		('RH_SOVEREIGNTY_DOUBLE_MOD_S',							'Amount'   , 12),

		('RH_SOVEREIGNTY_DOUBLE_MOD_L',		'YieldType', 		'YIELD_RH_SOVEREIGNTY_DOUBLE'),
		('RH_SOVEREIGNTY_DOUBLE_MOD_L',							'Amount'   , 60), 

		('RH_SOVEREIGNTY_DOUBLE_MOD_XL',		'YieldType', 		'YIELD_RH_SOVEREIGNTY_DOUBLE'),
		('RH_SOVEREIGNTY_DOUBLE_MOD_XL',							'Amount'   , 110),

		('RH_SOVEREIGNTY_DOUBLE_MOD',		'YieldType', 			'YIELD_SCIENCE'),
		('RH_SOVEREIGNTY_DOUBLE_MOD',								'Amount'   , -45); -- pvs -125, -100, -85, -70, -65, -55



INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_SOVEREIGNTY_DOUBLE_MERC',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_SOVEREIGNTY_DOUBLE_MERC',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_MERCHANT'),	
			('WC_RES_RH_SOVEREIGNTY_DOUBLE_MERC',				'Amount',					5); 


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(852, 'WC_RES_SOVEREIGNTY', 1, 'WC_RES_RH_SOVEREIGNTY_DOUBLE_MERC'); -- 100% Increase trading


-- 193 In use -- Lags Tech Mod. Y2


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_SOVEREIGNTY_INFLUENCE',			'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_SOVEREIGNTY_INFLUENCE',							'Amount'   , 2); -- pvs 1

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(152, 'WC_RES_SOVEREIGNTY', 1, 'RH_SOVEREIGNTY_INFLUENCE'); -- 100% Trade


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(153, 'WC_RES_SOVEREIGNTY', 1, 'RH_SOVEREIGNTY_DOUBLE_MOD'); 


/*
	<Modifiers>
		<Row>
			<ModifierId>RH_GRANT_TWO_INFLUENCE_MH</ModifierId>
			<ModifierType>MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN</ModifierType>
			<SubjectRequirementSetId>RH_AI_ANCIENT_ONLY_REQ_S</SubjectRequirementSetId/>
			<RunOnce>true</RunOnce>
		</Row>
		
		<Row>
			<ModifierId>RH_GRANT_ONE_INFLUENCE_MH</ModifierId>
			<ModifierType>MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN</ModifierType>
			<SubjectRequirementSetId>RH_AI_ANCIENT_ONLY_REQ_S</SubjectRequirementSetId/>
			<RunOnce>true</RunOnce>
		</Row>
		
	</Modifiers>
	
	<ModifierArguments>
		<Row>
			<ModifierId>RH_GRANT_TWO_INFLUENCE_MH</ModifierId>
			<Name>Amount</Name>
			<Value>2</Value>
		</Row>
		
		<Row>
			<ModifierId>RH_GRANT_ONE_INFLUENCE_MH</ModifierId>
			<Name>Amount</Name>
			<Value>1</Value>
		</Row>
*/	



-- SOVEREIGNTY_BAN Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_SOVEREIGNTY_BAN_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SOVEREIGNTY_BAN_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SOVEREIGNTY_BAN_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SOVEREIGNTY_BAN_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_SOVEREIGNTY_BAN_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_SOVEREIGNTY_BAN_MOD_XS',		'YieldType', 		'YIELD_RH_SOVEREIGNTY_BAN'),
		('RH_SOVEREIGNTY_BAN_MOD_XS',							'Amount'   , 5), 

		('RH_SOVEREIGNTY_BAN_MOD_S',		'YieldType', 		'YIELD_RH_SOVEREIGNTY_BAN'),
		('RH_SOVEREIGNTY_BAN_MOD_S',							'Amount'   , 12),

		('RH_SOVEREIGNTY_BAN_MOD_L',		'YieldType', 		'YIELD_RH_SOVEREIGNTY_BAN'),
		('RH_SOVEREIGNTY_BAN_MOD_L',							'Amount'   , 60), 

		('RH_SOVEREIGNTY_BAN_MOD_XL',		'YieldType', 		'YIELD_RH_SOVEREIGNTY_BAN'),
		('RH_SOVEREIGNTY_BAN_MOD_XL',							'Amount'   , 110),

		('RH_SOVEREIGNTY_BAN_MOD',		'YieldType', 			'YIELD_PRODUCTION'),
		('RH_SOVEREIGNTY_BAN_MOD',								'Amount'   , 320); -- pvs 50, 55, 90, 150, 450, 850 (no effect but id could be been bugged), 350, 95, 90, 95, 105, 115, 100, 200, 150, 200, 270, 300, 340


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(157, 'WC_RES_SOVEREIGNTY', 2, 'RH_SOVEREIGNTY_BAN_MOD'); -- Ban


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('WC_RES_RH_SOVEREIGNTY_BAN_PROH',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('WC_RES_RH_SOVEREIGNTY_BAN_PROH',				'GreatPersonClassType',		        'GREAT_PERSON_PROPHET'),	
			('WC_RES_RH_SOVEREIGNTY_BAN_PROH',				'Amount',					4); 


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(857, 'WC_RES_SOVEREIGNTY', 2, 'WC_RES_RH_SOVEREIGNTY_BAN_PROH'); -- 100% Increase trading





-- PUBLIC_WORKS_DOUBLE Mod (Project)

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_PUBLIC_WORKS_DOUBLE_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_WORKS_DOUBLE_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_WORKS_DOUBLE_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_WORKS_DOUBLE_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_WORKS_DOUBLE_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_PUBLIC_WORKS_DOUBLE_MOD_XS',		'YieldType', 		'YIELD_RH_PUBLIC_WORKS_DOUBLE'),
		('RH_PUBLIC_WORKS_DOUBLE_MOD_XS',							'Amount'   , 5), 

		('RH_PUBLIC_WORKS_DOUBLE_MOD_S',		'YieldType', 		'YIELD_RH_PUBLIC_WORKS_DOUBLE'),
		('RH_PUBLIC_WORKS_DOUBLE_MOD_S',							'Amount'   , 12),

		('RH_PUBLIC_WORKS_DOUBLE_MOD_L',		'YieldType', 		'YIELD_RH_PUBLIC_WORKS_DOUBLE'),
		('RH_PUBLIC_WORKS_DOUBLE_MOD_L',							'Amount'   , 60), 

		('RH_PUBLIC_WORKS_DOUBLE_MOD_XL',		'YieldType', 		'YIELD_RH_PUBLIC_WORKS_DOUBLE'),
		('RH_PUBLIC_WORKS_DOUBLE_MOD_XL',							'Amount'   , 110),

		('RH_PUBLIC_WORKS_DOUBLE_MOD',		'YieldType', 			'YIELD_SCIENCE'),
		('RH_PUBLIC_WORKS_DOUBLE_MOD',								'Amount'   , 70); -- pvs 60


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(92, 'WC_RES_PUBLIC_WORKS', 1, 'RH_PUBLIC_WORKS_DOUBLE_MOD'); -- Double



-- PUBLIC_WORKS_BUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_PUBLIC_WORKS_BUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_WORKS_BUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_WORKS_BUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_WORKS_BUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_PUBLIC_WORKS_BUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_PUBLIC_WORKS_BUFF_MOD_XS',		'YieldType', 		'YIELD_RH_PUBLIC_WORKS_BUFF'),
		('RH_PUBLIC_WORKS_BUFF_MOD_XS',							'Amount'   , 5), 

		('RH_PUBLIC_WORKS_BUFF_MOD_S',		'YieldType', 		'YIELD_RH_PUBLIC_WORKS_BUFF'),
		('RH_PUBLIC_WORKS_BUFF_MOD_S',							'Amount'   , 12),

		('RH_PUBLIC_WORKS_BUFF_MOD_L',		'YieldType', 		'YIELD_RH_PUBLIC_WORKS_BUFF'),
		('RH_PUBLIC_WORKS_BUFF_MOD_L',							'Amount'   , 60), 

		('RH_PUBLIC_WORKS_BUFF_MOD_XL',		'YieldType', 		'YIELD_RH_PUBLIC_WORKS_BUFF'),
		('RH_PUBLIC_WORKS_BUFF_MOD_XL',							'Amount'   , 110),

		('RH_PUBLIC_WORKS_BUFF_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_PUBLIC_WORKS_BUFF_MOD',								'Amount'   , 80); -- pvs 40


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(97, 'WC_RES_PUBLIC_WORKS', 2, 'RH_PUBLIC_WORKS_BUFF_MOD'); -- 50% Cost Decrease












-- DIPLOVICTORY (Buff / Debuff)


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DIPLOVICTORY_BUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLOVICTORY_BUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLOVICTORY_BUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLOVICTORY_BUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLOVICTORY_BUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DIPLOVICTORY_BUFF_MOD_XS',		'YieldType', 		'YIELD_RH_DIPLOVICTORY_BUFF'),
		('RH_DIPLOVICTORY_BUFF_MOD_XS',							'Amount'   , 5), 

		('RH_DIPLOVICTORY_BUFF_MOD_S',		'YieldType', 		'YIELD_RH_DIPLOVICTORY_BUFF'),
		('RH_DIPLOVICTORY_BUFF_MOD_S',							'Amount'   , 12),

		('RH_DIPLOVICTORY_BUFF_MOD_L',		'YieldType', 		'YIELD_RH_DIPLOVICTORY_BUFF'),
		('RH_DIPLOVICTORY_BUFF_MOD_L',							'Amount'   , 60), 

		('RH_DIPLOVICTORY_BUFF_MOD_XL',		'YieldType', 		'YIELD_RH_DIPLOVICTORY_BUFF'),
		('RH_DIPLOVICTORY_BUFF_MOD_XL',							'Amount'   , 110),

		('RH_DIPLOVICTORY_BUFF_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_DIPLOVICTORY_BUFF_MOD',								'Amount'   , 200); -- Needs to be higher as otherwise typically just downvote at 6 diplo victory points, pvs 115, 150, 175, 250, 400


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(2, 'WC_RES_DIPLOVICTORY', 1, 'RH_DIPLOVICTORY_BUFF_MOD'); -- +2

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(2, 'WC_RES_DIPLOVICTORY', 1, 'RH_SOVEREIGNTY_INFLUENCE'); -- +1 Infl, temp


-- DIPLOVICTORY_DEBUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DIPLOVICTORY_DEBUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLOVICTORY_DEBUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLOVICTORY_DEBUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLOVICTORY_DEBUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_DIPLOVICTORY_DEBUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DIPLOVICTORY_DEBUFF_MOD_XS',		'YieldType', 		'YIELD_RH_DIPLOVICTORY_DEBUFF'),
		('RH_DIPLOVICTORY_DEBUFF_MOD_XS',							'Amount'   , 5), 

		('RH_DIPLOVICTORY_DEBUFF_MOD_S',		'YieldType', 		'YIELD_RH_DIPLOVICTORY_DEBUFF'),
		('RH_DIPLOVICTORY_DEBUFF_MOD_S',							'Amount'   , 12),

		('RH_DIPLOVICTORY_DEBUFF_MOD_L',		'YieldType', 		'YIELD_RH_DIPLOVICTORY_DEBUFF'),
		('RH_DIPLOVICTORY_DEBUFF_MOD_L',							'Amount'   , 60), 

		('RH_DIPLOVICTORY_DEBUFF_MOD_XL',		'YieldType', 		'YIELD_RH_DIPLOVICTORY_DEBUFF'),
		('RH_DIPLOVICTORY_DEBUFF_MOD_XL',							'Amount'   , 110),

		('RH_DIPLOVICTORY_DEBUFF_MOD',		'YieldType', 			'YIELD_PRODUCTION'),
		('RH_DIPLOVICTORY_DEBUFF_MOD',								'Amount'   , 3); -- pvs 50, 40, 35, 20, 15, 5, 10, 15


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(7, 'WC_RES_DIPLOVICTORY', 2, 'RH_DIPLOVICTORY_DEBUFF_MOD'); -- -2







-- ARMS_CONTROL_DUPLICATE Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_ARMS_CONTROL_DUPLICATE_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ARMS_CONTROL_DUPLICATE_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ARMS_CONTROL_DUPLICATE_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ARMS_CONTROL_DUPLICATE_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ARMS_CONTROL_DUPLICATE_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_ARMS_CONTROL_DUPLICATE_MOD_XS',		'YieldType', 		'YIELD_RH_ARMS_CONTROL_DUPLICATE'),
		('RH_ARMS_CONTROL_DUPLICATE_MOD_XS',							'Amount'   , 5), 

		('RH_ARMS_CONTROL_DUPLICATE_MOD_S',		'YieldType', 		'YIELD_RH_ARMS_CONTROL_DUPLICATE'),
		('RH_ARMS_CONTROL_DUPLICATE_MOD_S',							'Amount'   , 12),

		('RH_ARMS_CONTROL_DUPLICATE_MOD_L',		'YieldType', 		'YIELD_RH_ARMS_CONTROL_DUPLICATE'),
		('RH_ARMS_CONTROL_DUPLICATE_MOD_L',							'Amount'   , 60), 

		('RH_ARMS_CONTROL_DUPLICATE_MOD_XL',		'YieldType', 		'YIELD_RH_ARMS_CONTROL_DUPLICATE'),
		('RH_ARMS_CONTROL_DUPLICATE_MOD_XL',							'Amount'   , 110),

		('RH_ARMS_CONTROL_DUPLICATE_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_ARMS_CONTROL_DUPLICATE_MOD',								'Amount'   , 55); -- pvs 80


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(62, 'WC_RES_ARMS_CONTROL', 1, 'RH_ARMS_CONTROL_DUPLICATE_MOD'); -- Everyone




-- ARMS_CONTROL_BAN Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_ARMS_CONTROL_BAN_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ARMS_CONTROL_BAN_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ARMS_CONTROL_BAN_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ARMS_CONTROL_BAN_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_ARMS_CONTROL_BAN_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_ARMS_CONTROL_BAN_MOD_XS',		'YieldType', 		'YIELD_RH_ARMS_CONTROL_BAN'),
		('RH_ARMS_CONTROL_BAN_MOD_XS',							'Amount'   , 5), 

		('RH_ARMS_CONTROL_BAN_MOD_S',		'YieldType', 		'YIELD_RH_ARMS_CONTROL_BAN'),
		('RH_ARMS_CONTROL_BAN_MOD_S',							'Amount'   , 12),

		('RH_ARMS_CONTROL_BAN_MOD_L',		'YieldType', 		'YIELD_RH_ARMS_CONTROL_BAN'),
		('RH_ARMS_CONTROL_BAN_MOD_L',							'Amount'   , 60), 

		('RH_ARMS_CONTROL_BAN_MOD_XL',		'YieldType', 		'YIELD_RH_ARMS_CONTROL_BAN'),
		('RH_ARMS_CONTROL_BAN_MOD_XL',							'Amount'   , 110),

		('RH_ARMS_CONTROL_BAN_MOD',		'YieldType', 			'YIELD_SCIENCE'),
		('RH_ARMS_CONTROL_BAN_MOD',								'Amount'   , 100); 


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(67, 'WC_RES_ARMS_CONTROL', 2, 'RH_ARMS_CONTROL_BAN_MOD'); -- Remove










-- WORLD_RELIGION (Buff / Debuff)


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_WORLD_RELIGION_BUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WORLD_RELIGION_BUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WORLD_RELIGION_BUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WORLD_RELIGION_BUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WORLD_RELIGION_BUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_WORLD_RELIGION_BUFF_MOD_XS',		'YieldType', 		'YIELD_RH_WORLD_RELIGION_BUFF'),
		('RH_WORLD_RELIGION_BUFF_MOD_XS',							'Amount'   , 5), 

		('RH_WORLD_RELIGION_BUFF_MOD_S',		'YieldType', 		'YIELD_RH_WORLD_RELIGION_BUFF'),
		('RH_WORLD_RELIGION_BUFF_MOD_S',							'Amount'   , 12),

		('RH_WORLD_RELIGION_BUFF_MOD_L',		'YieldType', 		'YIELD_RH_WORLD_RELIGION_BUFF'),
		('RH_WORLD_RELIGION_BUFF_MOD_L',							'Amount'   , 60), 

		('RH_WORLD_RELIGION_BUFF_MOD_XL',		'YieldType', 		'YIELD_RH_WORLD_RELIGION_BUFF'),
		('RH_WORLD_RELIGION_BUFF_MOD_XL',							'Amount'   , 110),

		('RH_WORLD_RELIGION_BUFF_MOD',		'YieldType', 			'YIELD_FAITH'),
		('RH_WORLD_RELIGION_BUFF_MOD',								'Amount'   , 93); -- pvs 40, 45, 60, 62, 82, 90


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(32, 'WC_RES_WORLD_RELIGION', 1, 'RH_WORLD_RELIGION_BUFF_MOD'); -- +10



INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_WORLD_RELIGION_BUFF_MOD_HIGH_FAITH',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_WORK_ETHIC_PUSH_REQ_S_2'); -- Req Holy 2

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_WORLD_RELIGION_BUFF_MOD_HIGH_FAITH',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_PROPHET'),	
			('RH_WORLD_RELIGION_BUFF_MOD_HIGH_FAITH',				'Amount',					350); -- pvs 250


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(632, 'WC_RES_WORLD_RELIGION', 1, 'RH_WORLD_RELIGION_BUFF_MOD_HIGH_FAITH'); -- 10 Strength



INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_WORLD_RELIGION_BUFF_MOD_HIGH_FAITH_4',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_WORK_ETHIC_PUSH_REQ_S_4'); -- Req Holy 4

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_WORLD_RELIGION_BUFF_MOD_HIGH_FAITH_4',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_PROPHET'),	
			('RH_WORLD_RELIGION_BUFF_MOD_HIGH_FAITH_4',				'Amount',					350); -- pvs 150, 250


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(633, 'WC_RES_WORLD_RELIGION', 1, 'RH_WORLD_RELIGION_BUFF_MOD_HIGH_FAITH_4'); -- 10 Strength



-- WORLD_RELIGION_CONDEM Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_WORLD_RELIGION_CONDEM_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WORLD_RELIGION_CONDEM_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WORLD_RELIGION_CONDEM_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WORLD_RELIGION_CONDEM_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_WORLD_RELIGION_CONDEM_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_WORLD_RELIGION_CONDEM_MOD_XS',		'YieldType', 		'YIELD_RH_WORLD_RELIGION_CONDEM'),
		('RH_WORLD_RELIGION_CONDEM_MOD_XS',							'Amount'   , 5), 

		('RH_WORLD_RELIGION_CONDEM_MOD_S',		'YieldType', 		'YIELD_RH_WORLD_RELIGION_CONDEM'),
		('RH_WORLD_RELIGION_CONDEM_MOD_S',							'Amount'   , 12),

		('RH_WORLD_RELIGION_CONDEM_MOD_L',		'YieldType', 		'YIELD_RH_WORLD_RELIGION_CONDEM'),
		('RH_WORLD_RELIGION_CONDEM_MOD_L',							'Amount'   , 60), 

		('RH_WORLD_RELIGION_CONDEM_MOD_XL',		'YieldType', 		'YIELD_RH_WORLD_RELIGION_CONDEM'),
		('RH_WORLD_RELIGION_CONDEM_MOD_XL',							'Amount'   , 110),

		('RH_WORLD_RELIGION_CONDEM_MOD',		'YieldType', 			'YIELD_SCIENCE'),
		('RH_WORLD_RELIGION_CONDEM_MOD',								'Amount'   , 5); -- pvs 40, 30, 22, 14, 10, 9


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(37, 'WC_RES_WORLD_RELIGION', 2, 'RH_WORLD_RELIGION_CONDEM_MOD'); -- Condemn







-- BORDER_CONTROL (Buff / Debuff)


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_BORDER_CONTROL_BUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_BORDER_CONTROL_BUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_BORDER_CONTROL_BUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_BORDER_CONTROL_BUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_BORDER_CONTROL_BUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_BORDER_CONTROL_BUFF_MOD_XS',		'YieldType', 		'YIELD_RH_BORDER_CONTROL_CB'),
		('RH_BORDER_CONTROL_BUFF_MOD_XS',							'Amount'   , 5), 

		('RH_BORDER_CONTROL_BUFF_MOD_S',		'YieldType', 		'YIELD_RH_BORDER_CONTROL_CB'),
		('RH_BORDER_CONTROL_BUFF_MOD_S',							'Amount'   , 12),

		('RH_BORDER_CONTROL_BUFF_MOD_L',		'YieldType', 		'YIELD_RH_BORDER_CONTROL_CB'),
		('RH_BORDER_CONTROL_BUFF_MOD_L',							'Amount'   , 60), 

		('RH_BORDER_CONTROL_BUFF_MOD_XL',		'YieldType', 		'YIELD_RH_BORDER_CONTROL_CB'),
		('RH_BORDER_CONTROL_BUFF_MOD_XL',							'Amount'   , 110),

		('RH_BORDER_CONTROL_BUFF_MOD',		'YieldType', 			'YIELD_FOOD'),
		('RH_BORDER_CONTROL_BUFF_MOD',								'Amount'   , 25);

-- And Expansion Mod 37

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(82, 'WC_RES_BORDER_CONTROL', 1, 'RH_BORDER_CONTROL_BUFF_MOD'); -- CB


-- BORDER_CONTROL_DEBUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_BORDER_CONTROL_DEBUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_BORDER_CONTROL_DEBUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_BORDER_CONTROL_DEBUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_BORDER_CONTROL_DEBUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_BORDER_CONTROL_DEBUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_BORDER_CONTROL_DEBUFF_MOD_XS',		'YieldType', 		'YIELD_RH_BORDER_CONTROL_C_BAN'),
		('RH_BORDER_CONTROL_DEBUFF_MOD_XS',							'Amount'   , 5), 

		('RH_BORDER_CONTROL_DEBUFF_MOD_S',		'YieldType', 		'YIELD_RH_BORDER_CONTROL_C_BAN'),
		('RH_BORDER_CONTROL_DEBUFF_MOD_S',							'Amount'   , 12),

		('RH_BORDER_CONTROL_DEBUFF_MOD_L',		'YieldType', 		'YIELD_RH_BORDER_CONTROL_C_BAN'),
		('RH_BORDER_CONTROL_DEBUFF_MOD_L',							'Amount'   , 60), 

		('RH_BORDER_CONTROL_DEBUFF_MOD_XL',		'YieldType', 		'YIELD_RH_BORDER_CONTROL_C_BAN'),
		('RH_BORDER_CONTROL_DEBUFF_MOD_XL',							'Amount'   , 110),

		('RH_BORDER_CONTROL_DEBUFF_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_BORDER_CONTROL_DEBUFF_MOD',								'Amount'   , 140); -- pvs 50, 60, 55, 59, 70, 105


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(87, 'WC_RES_BORDER_CONTROL', 2, 'RH_BORDER_CONTROL_DEBUFF_MOD'); -- Ban Expansion


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_BORDER_LATE',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_BORDER_LATE',				'GreatPersonClassType',		        'GREAT_PERSON_CLASS_SCIENTIST'),	
			('RH_BORDER_LATE',				'Amount',					60); -- pvs 15 Engineer, 20, 40


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(887, 'WC_RES_BORDER_CONTROL', 2, 'RH_BORDER_LATE'); -- 10 Strength



-- GE_BUILDING_PRODUCTION (BAN / BUFF)


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_XS',		'YieldType', 		'YIELD_RH_GE_BUILDING_PRODUCTION_BAN'),
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_XS',							'Amount'   , 5), 

		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_S',		'YieldType', 		'YIELD_RH_GE_BUILDING_PRODUCTION_BAN'),
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_S',							'Amount'   , 12),

		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_L',		'YieldType', 		'YIELD_RH_GE_BUILDING_PRODUCTION_BAN'),
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_L',							'Amount'   , 60), 

		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_XL',		'YieldType', 		'YIELD_RH_GE_BUILDING_PRODUCTION_BAN'),
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD_XL',							'Amount'   , 110),

		('RH_GE_BUILDING_PRODUCTION_BAN_MOD',		'YieldType', 			'YIELD_CULTURE'),
		('RH_GE_BUILDING_PRODUCTION_BAN_MOD',								'Amount'   , 60);


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(142, 'WC_RES_GLOBAL_ENERGY_TREATY', 1, 'RH_GE_BUILDING_PRODUCTION_BAN_MOD'); -- BAN Building




-- GE_BUILDING_PRODUCTION_DEBUFF Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_XS',		'YieldType', 		'YIELD_RH_GE_BUILDING_PRODUCTION_BUFF'),
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_XS',							'Amount'   , 5), 

		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_S',		'YieldType', 		'YIELD_RH_GE_BUILDING_PRODUCTION_BUFF'),
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_S',							'Amount'   , 12),

		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_L',		'YieldType', 		'YIELD_RH_GE_BUILDING_PRODUCTION_BUFF'),
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_L',							'Amount'   , 60), 

		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_XL',		'YieldType', 		'YIELD_RH_GE_BUILDING_PRODUCTION_BUFF'),
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD_XL',							'Amount'   , 110),

		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD',		'YieldType', 			'YIELD_PRODUCTION'),
		('RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD',								'Amount'   , 40); -- pvs 40, 48


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(147, 'WC_RES_GLOBAL_ENERGY_TREATY', 2, 'RH_GE_BUILDING_PRODUCTION_DEBUFF_MOD'); -- -50% Cost






-- TRADE_TREATY (Buff / Debuff)


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_TRADE_TREATY_BUFF_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_TREATY_BUFF_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_TREATY_BUFF_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_TREATY_BUFF_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_TREATY_BUFF_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_TRADE_TREATY_BUFF_MOD_XS',		'YieldType', 		'YIELD_RH_TRADE_TREATY_BUFF'),
		('RH_TRADE_TREATY_BUFF_MOD_XS',							'Amount'   , 5), 

		('RH_TRADE_TREATY_BUFF_MOD_S',		'YieldType', 		'YIELD_RH_TRADE_TREATY_BUFF'),
		('RH_TRADE_TREATY_BUFF_MOD_S',							'Amount'   , 12),

		('RH_TRADE_TREATY_BUFF_MOD_L',		'YieldType', 		'YIELD_RH_TRADE_TREATY_BUFF'),
		('RH_TRADE_TREATY_BUFF_MOD_L',							'Amount'   , 60), 

		('RH_TRADE_TREATY_BUFF_MOD_XL',		'YieldType', 		'YIELD_RH_TRADE_TREATY_BUFF'),
		('RH_TRADE_TREATY_BUFF_MOD_XL',							'Amount'   , 110),

		('RH_TRADE_TREATY_BUFF_MOD',		'YieldType', 			'YIELD_GOLD'),
		('RH_TRADE_TREATY_BUFF_MOD',								'Amount'   , 50);


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(22, 'WC_RES_TRADE_TREATY', 1, 'RH_TRADE_TREATY_BUFF_MOD'); -- Money




-- TRADE_TREATY_BAN Mod

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_TRADE_TREATY_BAN_MOD_XS',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_TREATY_BAN_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_TREATY_BAN_MOD_S',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_TREATY_BAN_MOD_XL',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_TRADE_TREATY_BAN_MOD_L',			'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_TRADE_TREATY_BAN_MOD_XS',		'YieldType', 		'YIELD_RH_TRADE_TREATY_BAN'),
		('RH_TRADE_TREATY_BAN_MOD_XS',							'Amount'   , 5), 

		('RH_TRADE_TREATY_BAN_MOD_S',		'YieldType', 		'YIELD_RH_TRADE_TREATY_BAN'),
		('RH_TRADE_TREATY_BAN_MOD_S',							'Amount'   , 12),

		('RH_TRADE_TREATY_BAN_MOD_L',		'YieldType', 		'YIELD_RH_TRADE_TREATY_BAN'),
		('RH_TRADE_TREATY_BAN_MOD_L',							'Amount'   , 60), 

		('RH_TRADE_TREATY_BAN_MOD_XL',		'YieldType', 		'YIELD_RH_TRADE_TREATY_BAN'),
		('RH_TRADE_TREATY_BAN_MOD_XL',							'Amount'   , 110),

		('RH_TRADE_TREATY_BAN_MOD',		'YieldType', 			'YIELD_PRODUCTION'),
		('RH_TRADE_TREATY_BAN_MOD',								'Amount'   , 68); -- pvs 60


INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_TRADE_TREATY_BAN_INDUSTRIAL',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', 'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_TRADE_TREATY_BAN_INDUSTRIAL',				'GreatPersonClassType',		        'PSEUDOYIELD_GPP_SCIENTIST'),	
			('RH_TRADE_TREATY_BAN_INDUSTRIAL',				'Amount',					85); -- pvs 10, 35, Engineer, 45, 50

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(927, 'WC_RES_TRADE_TREATY', 2, 'RH_TRADE_TREATY_BAN_INDUSTRIAL'); -- Ban International Routes




INSERT OR IGNORE INTO CongressAiChanges (ResolutionType, PseudoYieldType, Value) VALUES
('WC_RES_MERCENARY_COMPANIES',  		'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 			10), 
('WC_RES_MERCENARY_COMPANIES',  		'PSEUDOYIELD_UNIT_COMBAT', 		 			25),
('WC_RES_MERCENARY_COMPANIES',  		'PSEUDOYIELD_STANDING_ARMY_NUMBER', 		 9),
('WC_RES_MERCENARY_COMPANIES',  		'PSEUDOYIELD_STANDING_ARMY_VALUE', 			 4),
('WC_RES_MERCENARY_COMPANIES',  		'PSEUDOYIELD_CITY_BASE', 				 	 25),
('WC_RES_MERCENARY_COMPANIES',  		'PSEUDOYIELD_CITY_DEFENSES', 				 -15),
('WC_RES_MERCENARY_COMPANIES',  		'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	 	-2),
('WC_RES_MERCENARY_COMPANIES',  		'PSEUDOYIELD_GPP_GENERAL', 	   			 	 10);



INSERT OR IGNORE INTO CongressAiChanges (ResolutionType, YieldType, Value) VALUES
('WC_RES_URBAN_DEVELOPMENT',  		'YIELD_RH_CITY_CENTRE', 			850); -- Double Centre, pvs 500



INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, PseudoYieldType, Value) VALUES
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 			20), 
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_UNIT_COMBAT', 		 			10),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_STANDING_ARMY_NUMBER', 		 5),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_STANDING_ARMY_VALUE', 			 3),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_CITY_BASE', 				  25),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_CITY_DEFENSES', 			 -10),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	 -10),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_GPP_GENERAL', 	     5),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_UNIT_TRADE', 	 	-25),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_DISTRICT', 	 	-15),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_WONDER', 	 		-15),
('WC_EMERGENCY_MILITARY',  		'PSEUDOYIELD_INFLUENCE', 	 	-15);

INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, PseudoYieldType, Value) VALUES
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_UNIT_NAVAL_COMBAT',		 20), 
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_UNIT_COMBAT', 				 10),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_UNIT_AIR_COMBAT', 			 15),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_UNIT_SETTLER', 			-10),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_UNIT_EXPLORER', 			-20),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 		-10),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_STANDING_ARMY_NUMBER', 	12),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_STANDING_ARMY_VALUE', 		 8),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_DIPLOMATIC_BONUS', 		 10),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_CITY_BASE', 				 750),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 	-100),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_CITY_DEFENSES', 	 		-75),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	-50),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_GPP_GENERAL', 	    		 20),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_UNIT_TRADE', 	 			-25),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_HAPPINESS', 	 			-15),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 	 	-15),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_GPP_SCIENTIST', 	 		10),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_GPP_PROPHET', 	 			-15),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_DISTRICT', 	 			-20),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_WONDER', 	 				-25),
('WC_EMERGENCY_BACKSTAB',  		'PSEUDOYIELD_INFLUENCE', 	 			-15);

INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, YieldType, Value) VALUES
('WC_EMERGENCY_BACKSTAB',  		'YIELD_RH_FASCISM',			 175), 
('WC_EMERGENCY_BACKSTAB',  		'YIELD_RH_DEMOCRACY',		 50);


INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, PseudoYieldType, Value) VALUES
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_UNIT_NAVAL_COMBAT',		 20), 
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_UNIT_COMBAT', 				 10),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_UNIT_AIR_COMBAT', 			 15),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_UNIT_SETTLER', 			-25),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_UNIT_EXPLORER', 			-35),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 		-15),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_STANDING_ARMY_NUMBER', 	 5),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_STANDING_ARMY_VALUE', 		 5),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_DIPLOMATIC_BONUS', 		 10), -- Ally Together
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_CITY_BASE', 				 250),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 	-100),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_CITY_DEFENSES', 	 		-50),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	-15),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_GPP_GENERAL', 	    		 10),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_UNIT_TRADE', 	 			-30),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_HAPPINESS', 	 			-15),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 	 	-15),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_GPP_SCIENTIST', 	 		10),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_GPP_PROPHET', 	 			-15),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_DISTRICT', 	 			-10),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_WONDER', 	 				-15),
('WC_EMERGENCY_NUCLEAR',  		'PSEUDOYIELD_INFLUENCE', 	 			-10);


INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, YieldType, Value) VALUES
('WC_EMERGENCY_NUCLEAR',  		'YIELD_RH_FASCISM',			 50), 
('WC_EMERGENCY_NUCLEAR',  		'YIELD_RH_DEMOCRACY',		 25);



INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, PseudoYieldType, Value) VALUES
('WC_EMERGENCY_RELIGIOUS',  		'PSEUDOYIELD_GPP_PROPHET',		 	 33), 
('WC_EMERGENCY_RELIGIOUS',  		'PSEUDOYIELD_UNIT_RELIGIOUS',		 40); 

INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, YieldType, Value) VALUES
('WC_EMERGENCY_RELIGIOUS',  			'YIELD_FAITH', 							15), 
('WC_EMERGENCY_RELIGIOUS',  			'YIELD_RH_SPREAD_RELIGION', 			50); 


INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, PseudoYieldType, Value) VALUES
('WC_EMERGENCY_REQUEST_AID',  		'PSEUDOYIELD_GPP_ADMIRAL',		 	 15), 
('WC_EMERGENCY_REQUEST_AID',  		'PSEUDOYIELD_GPP_MERCHANT',			 15); 



INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, PseudoYieldType, Value) VALUES
('WC_EMERGENCY_NOBEL_PRIZE_PEACE',  		'PSEUDOYIELD_DIPLOMATIC_FAVOR', 	60), 
('WC_EMERGENCY_NOBEL_PRIZE_PEACE',  		'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 10), 
('WC_EMERGENCY_NOBEL_PRIZE_PEACE',  		'PSEUDOYIELD_INFLUENCE', 			10), -- Favor From City States / Diplo Quarter

('WC_EMERGENCY_NOBEL_PRIZE_PEACE',  		'PSEUDOYIELD_GPP_ENGINEER', 		-5), -- Lower Polution, More Favor
('WC_EMERGENCY_NOBEL_PRIZE_PEACE',  		'PSEUDOYIELD_ENVIRONMENT', 			15), -- Lower Polution

-- Todo Carbon Recapture Yield to Win Competition

-- Physics
('WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',  		'PSEUDOYIELD_GPP_SCIENTIST', 120), 
('WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',  		'PSEUDOYIELD_GPP_MERCHANT', 160), 
('WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',  		'PSEUDOYIELD_GPP_ENGINEER', 120), 

('WC_EMERGENCY_NOBEL_PRIZE_LITERATURE',  		'PSEUDOYIELD_GPP_MUSICIAN', 100), 
('WC_EMERGENCY_NOBEL_PRIZE_LITERATURE',  		'PSEUDOYIELD_GPP_ARTIST', 100), 
('WC_EMERGENCY_NOBEL_PRIZE_LITERATURE',  		'PSEUDOYIELD_GPP_WRITER', 50),

('WC_EMERGENCY_WORLD_GAMES',  				'PSEUDOYIELD_HAPPINESS', 75),

('WC_EMERGENCY_MILITARY_AID_REQUEST',  		'PSEUDOYIELD_GPP_MERCHANT', 	25),
('WC_EMERGENCY_MILITARY_AID_REQUEST',  		'PSEUDOYIELD_DIPLOMATIC_BONUS', 5),

('WC_EMERGENCY_CLIMATE_ACCORDS',  		'PSEUDOYIELD_GPP_ENGINEER', -10), 
('WC_EMERGENCY_CLIMATE_ACCORDS',  		'PSEUDOYIELD_ENVIRONMENT', 40);


INSERT OR IGNORE INTO CongressAiChanges (DiscussionType, YieldType, Value) VALUES
('WC_EMERGENCY_WORLD_GAMES',  		'YIELD_RH_HAPPINESS_BUILDING', 	325); -- 1 point per turn for each Stadium or Aquatics Center.







---UPDATE Resolutions SET AITargetChooser = 'GrievancesType' WHERE ResolutionType = 'WC_RES_ARMS_CONTROL' AND TargetKind = 'PLAYER'; -- Works but can vote for themselves to remove WMDS

--UPDATE Resolutions SET AITargetChooser = 'PlayerOrDiploLeader' WHERE ResolutionType = 'WC_RES_ARMS_CONTROL' AND TargetKind = 'PLAYER';


UPDATE Resolutions SET AITargetChooser = 'TradingPartners' WHERE ResolutionType = 'WC_RES_ARMS_CONTROL' AND TargetKind = 'PLAYER';

