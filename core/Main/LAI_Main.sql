-- noinspection SqlNoDataSourceInspectionForFile

-- Author RomanHoliday

--------------------------------------------------------------------------------------------------------------------------
-- Core PseudoYields and Yields Changes
--------------------------------------------------------------------------------------------------------------------------

UPDATE PseudoYields SET DefaultValue = 90 WHERE PseudoYieldType = 'PSEUDOYIELD_IMPROVEMENT'; --  3.0 -- pvs 10, 16, 18, 40
UPDATE PseudoYields SET DefaultValue = 9 WHERE PseudoYieldType = 'PSEUDOYIELD_INFLUENCE'; -- 0.5 -- pvs 11, 10, 4, 5, 7
UPDATE PseudoYields SET DefaultValue = 3.8 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST'; --  4.0
UPDATE PseudoYields SET DefaultValue = 1.6 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_COMBAT'; -- 1.0 -- pvs 1.15, 1.14, 1.13, 1.12
UPDATE PseudoYields SET DefaultValue = 3.5 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- 1.0 previously 1.27, 1.3, 1.4, 1.45, 1.6, 1.75, 1.85, 1.95, 2.05, 2.3, 2.2, 2.5, 3.1
UPDATE PseudoYields SET DefaultValue = 9.8 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_AIR_COMBAT'; -- 4.0 previously 5, 5.5, 4.9, 5.2, 5.5, 6.4, 7.5 (ai not building enough planes at lower)
UPDATE PseudoYields SET DefaultValue = 0.85 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_EXPLORER'; -- 1.0
UPDATE PseudoYields SET DefaultValue = 1.7 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_SETTLER'; -- 1.6
UPDATE PseudoYields SET DefaultValue = 0.76 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_RELIGIOUS'; -- 1.0, pvs 0.73
UPDATE PseudoYields SET DefaultValue = 11 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_TRADE'; -- 1.0, 6.5
UPDATE PseudoYields SET DefaultValue = 78.0 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_SPY'; -- 20.0 -- pvs 21, 31, 36
UPDATE PseudoYields SET DefaultValue = 14 WHERE PseudoYieldType = 'PSEUDOYIELD_DISTRICT'; -- 8.0, pvs 7, 8, 9, 11.5, 12.5, 15, 20, 25, 15
UPDATE PseudoYields SET DefaultValue = 0.95 WHERE PseudoYieldType = 'PSEUDOYIELD_WONDER'; -- 2.0 -- pvs 0.49
--UPDATE PseudoYields SET DefaultValue = 0.25 WHERE PseudoYieldType = 'PSEUDOYIELD_DIPLOMATIC_BONUS'; --  was +0.01 to balance other diplo modifiers (pvs +0.02)
UPDATE PseudoYields SET DefaultValue = 14.0 WHERE PseudoYieldType = 'PSEUDOYIELD_NUCLEAR_WEAPON'; -- 25.0 - Pvs 39, 52, 50, 47, 46, 45, 33, 20 (test)
UPDATE PseudoYields SET DefaultValue = 8 WHERE PseudoYieldType = 'PSEUDOYIELD_RESOURCE_LUXURY'; -- 1.5 -- 100 In Monopolies mode lol, pvs 7, testing 8 (sets a floor for selling them off) -- pvs 42
UPDATE PseudoYields SET DefaultValue = 110.0 WHERE PseudoYieldType = 'PSEUDOYIELD_SPACE_RACE'; -- 100.0, pvs 120
--UPDATE PseudoYields SET DefaultValue = 5 WHERE PseudoYieldType = 'PSEUDOYIELD_CIVIC'; -- 5
UPDATE PseudoYields SET DefaultValue = 35 WHERE PseudoYieldType = 'PSEUDOYIELD_TECHNOLOGY'; -- 5, pvs 6, 11, 12, 28
UPDATE PseudoYields SET DefaultValue = 0.82 WHERE PseudoYieldType = 'PSEUDOYIELD_TOURISM'; -- 1
UPDATE PseudoYields SET DefaultValue = 0.3 WHERE PseudoYieldType = 'PSEUDOYIELD_HAPPINESS'; -- 1, pvs 1.15, 1.1, 1.2
UPDATE PseudoYields SET DefaultValue = 1.7 WHERE PseudoYieldType = 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS'; -- 0.5, 0.95, 1.05
UPDATE PseudoYields SET DefaultValue = 0.7 WHERE PseudoYieldType = 'PSEUDOYIELD_ENVIRONMENT'; -- 0.5 ( was doing to many pointless carbon capture projects after the sea level has fully risen)
UPDATE PseudoYields SET DefaultValue = 0.7 WHERE PseudoYieldType = 'PSEUDOYIELD_DIPLOMATIC_FAVOR'; -- 0.7, pvs 0.65, 0.6
--UPDATE PseudoYields SET DefaultValue = 2.2 WHERE PseudoYieldType = 'PSEUDOYIELD_GOVERNOR'; -- 2, pvs 2.4, 2.6
UPDATE PseudoYields SET DefaultValue = 300 WHERE PseudoYieldType = 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT'; -- pvs 120, 150, 165, 150, 130, 180, 200
UPDATE PseudoYields SET DefaultValue = -0.38 WHERE PseudoYieldType = 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE';

/*
		<Row PseudoYieldType="PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT" DefaultValue="100"/>
		<Row PseudoYieldType="PSEUDOYIELD_DIPLOMATIC_GRIEVANCE" DefaultValue="-0.5"/>
		<!-- Religious Convert is a value intended to help AI pursuing a religious victory to choose targets in other empires -->
		<Row PseudoYieldType="PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE" DefaultValue="1.0"/>
		
		<!-- Note: Dark Age point is the value of avoiding getting that point. We assume no AI's will be deliberately seeking a dark age -->
		<Row PseudoYieldType="PSEUDOYIELD_GOLDENAGE_POINT" DefaultValue="1"/>
		<Row PseudoYieldType="PSEUDOYIELD_GOVERNOR" DefaultValue="2"/>
*/

UPDATE PseudoYields SET DefaultValue = 18 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_SCULPTURE'; -- 10 - 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 18 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_PORTRAIT'; -- 10 - 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 18 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_LANDSCAPE'; -- 10 - 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 18 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_RELIGIOUS'; -- 10 ART - 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 18 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_ARTIFACT'; -- 10 3/3 - Doubled with theme
UPDATE PseudoYields SET DefaultValue = 16 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_WRITING'; -- 10 - 2/4 Isn't themed, pvs 8.5, 12

UPDATE PseudoYields SET DefaultValue = 17 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_MUSIC'; -- 10 -4/4 Isn't themed
UPDATE PseudoYields SET DefaultValue = 4 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_RELIC'; -- 10 Base output 4 culture, 8 Tourism

UPDATE PseudoYields SET DefaultValue = 19 WHERE PseudoYieldType = 'PSEUDOYIELD_GREATWORK_PRODUCT';

-- (multiplier to the sum of the sqrt of each city population. Value increases the priority accordingly)

--UPDATE PseudoYields SET DefaultValue = 1.05 WHERE PseudoYieldType = 'PSEUDOYIELD_STANDING_ARMY_NUMBER'; -- def 1
--UPDATE PseudoYields SET DefaultValue = 0.104 WHERE PseudoYieldType = 'PSEUDOYIELD_STANDING_ARMY_VALUE'; -- def 0.1

-- City

UPDATE PseudoYields SET DefaultValue = 4150 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_BASE'; -- 450 pvs 820, 790, 1150
UPDATE PseudoYields SET DefaultValue = 11 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_DEFENSES'; -- 200 --pvs 52, 57, 60, 35
UPDATE PseudoYields SET DefaultValue = 12 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_DEFENDING_UNITS'; -- 80, pvs 95, 94, 91
UPDATE PseudoYields SET DefaultValue = -450 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL'; -- 200 pvs -210, -240, -390
UPDATE PseudoYields SET DefaultValue = 6 WHERE PseudoYieldType = 'PSEUDOYIELD_CITY_POPULATION'; -- 50-- pvs 8

-- pvs 57, 85


-- GPP Bias

UPDATE PseudoYields SET DefaultValue =  0.8 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 		def 0.5 (for all gpp) -- pvs 0.5
UPDATE PseudoYields SET DefaultValue =  0.7 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ARTIST'; -- 		0.5
UPDATE PseudoYields SET DefaultValue =  0.95 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ENGINEER'; -- 	0.5 -- pvs 0.7, 0.8 AI doesn't focus enough
UPDATE PseudoYields SET DefaultValue =  3.6 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_GENERAL'; -- 		0.5 -- 0.45, 0.5, 0.55, 0.6, 0.7, 1.05, 2.4, 3.2
UPDATE PseudoYields SET DefaultValue =  0.75 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MERCHANT'; -- 		0.5 -- pvs 0.6, 0.7, 0.85, running to many projects, 0.8
UPDATE PseudoYields SET DefaultValue =  0.65 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 		0.5
UPDATE PseudoYields SET DefaultValue =  2.0 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_PROPHET'; -- 		0.5, 0.6, 0.8, 0.85, 1, 4
UPDATE PseudoYields SET DefaultValue =  0.95 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 	0.5, 0.8, 0.9	
UPDATE PseudoYields SET DefaultValue =  0.75 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_WRITER'; -- 		0.5, 0.7

-- Yield Bias

UPDATE AiFavoredItems SET Value = 37 AND Favored=1 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_PRODUCTION'; -- def 25, 27
UPDATE AiFavoredItems SET Value = 50 AND Favored=1 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_SCIENCE'; -- def 10, pvs 16, 14, 15, 17, 30
UPDATE AiFavoredItems SET Value = 15 AND Favored=1 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_CULTURE'; -- def 10, 11
UPDATE AiFavoredItems SET Value = 15 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_GOLD';  -- def 20, pvs 12
UPDATE AiFavoredItems SET Value = -30 WHERE ListType = 'DefaultYieldBias' AND Item = 'YIELD_FAITH'; -- def -25, pvs -20, -22, -20

-- Yield Food Doesn't exist in Default Yield Bias

-- Accidently Not defined
INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('PSEUDOYIELD_GOLDENAGE_POINT', 'KIND_PSEUDOYIELD');



--UPDATE GlobalParameters SET Value = '2.3' WHERE Name = 'AI_BASE_LUXURY_VALUE';	 -- Def 1.5 -- Test pvs 2.2, 5



INSERT OR REPLACE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
-- Era Requirement Creation, LGAI COMPATIBILITY
('RH_PLAYER_AT_ANCIENT_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('RH_PLAYER_NOT_CLASSICAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('RH_PLAYER_AT_CLASSICAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('RH_PLAYER_NOT_MEDIEVAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('RH_PLAYER_AT_MEDIEVAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('RH_PLAYER_AT_RENAISSANCE_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('RH_PLAYER_NOT_RENAISSANCE_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('RH_PLAYER_AT_INDUSTRIAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('RH_NOT_AT_INDUSTRIAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('RH_PLAYER_AT_MODERN_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('RH_PLAYER_AT_ATOMIC_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('RH_NOT_AT_ATOMIC_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('RH_PLAYER_AT_INFO_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('RH_PLAYER_AT_FUTURE_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0);

/*
LGAI COMPATIBILITY
('REQUIRES_KING', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_EMPEROR', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_IMMORTAL', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_DEITY', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_NOT_DEITY', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 1);
*/

INSERT OR REPLACE INTO RequirementArguments (RequirementId, Name, Value) VALUES
-- Eras
('RH_PLAYER_AT_ANCIENT_ERA', 'EraType', 'ERA_ANCIENT'),
('RH_PLAYER_NOT_CLASSICAL_ERA', 'EraType', 'ERA_CLASSICAL'),
('RH_PLAYER_AT_CLASSICAL_ERA', 'EraType', 'ERA_CLASSICAL'),
('RH_PLAYER_NOT_MEDIEVAL_ERA', 'EraType', 'ERA_MEDIEVAL'),
('RH_PLAYER_AT_MEDIEVAL_ERA', 'EraType', 'ERA_MEDIEVAL'),
('RH_PLAYER_AT_RENAISSANCE_ERA', 'EraType', 'ERA_RENAISSANCE'),
('RH_PLAYER_NOT_RENAISSANCE_ERA', 'EraType', 'ERA_RENAISSANCE'),
('RH_PLAYER_AT_INDUSTRIAL_ERA', 'EraType', 'ERA_INDUSTRIAL'),
('RH_NOT_AT_INDUSTRIAL_ERA', 'EraType', 'ERA_INDUSTRIAL'),
('RH_PLAYER_AT_MODERN_ERA', 'EraType', 'ERA_MODERN'),
('RH_PLAYER_AT_ATOMIC_ERA', 'EraType', 'ERA_ATOMIC'),
('RH_NOT_AT_ATOMIC_ERA', 'EraType', 'ERA_ATOMIC'),
('RH_PLAYER_AT_INFO_ERA', 'EraType', 'ERA_INFORMATION'),
('RH_PLAYER_AT_FUTURE_ERA', 'EraType', 'ERA_FUTURE');

/*
LGAI COMPATIBILITY
('REQUIRES_KING', 'Handicap', 'DIFFICULTY_KING'),
('REQUIRES_EMPEROR', 'Handicap', 'DIFFICULTY_EMPEROR'),
('REQUIRES_IMMORTAL', 'Handicap', 'DIFFICULTY_IMMORTAL'),
('REQUIRES_DEITY', 'Handicap', 'DIFFICULTY_DEITY'),
('REQUIRES_NOT_DEITY', 'Handicap', 'DIFFICULTY_DEITY');
*/
