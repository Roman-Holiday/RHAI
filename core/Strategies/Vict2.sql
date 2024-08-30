
-- AUTHOR: ROMANHOLIDAY


-- Victory Strategies 2

-- <!--   However, unlike Disqualifier, Forbidden is temporary. When the condition is no longer met, the AI can readopt the strategy -->
	--    <Row StrategyType="STRATEGY_RAPID_EXPANSION" ConditionFunction="Is In Dark Age" Forbidden="true"/>
		
/*
	<Row ListType="FavorCulturalVictory" Item="VICTORY_STRATEGY_CULTURAL_VICTORY" Value="-1"/>
	<Row ListType="FavorReligiousVictory" Item="VICTORY_STRATEGY_RELIGIOUS_VICTORY" Value="-1"/>
	<Row ListType="ForbidReligiousVictory" Item="VICTORY_STRATEGY_RELIGIOUS_VICTORY" Value="5"/>
	<Row ListType="FavorScienceVictory" Item="VICTORY_STRATEGY_SCIENCE_VICTORY" Value="-1"/>
	<Row ListType="FavorCulturalVictory" LeaderType="TRAIT_LEADER_CULTURAL_MAJOR_CIV" System="Strategies"/>
	<Row ListType="FavorReligiousVictory" LeaderType="TRAIT_LEADER_RELIGIOUS_MAJOR_CIV" System="Strategies"/>
	<Row ListType="ForbidReligiousVictory" LeaderType="TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV" System="Strategies"/>
	<Row ListType="FavorScienceVictory" LeaderType="TRAIT_LEADER_SCIENCE_MAJOR_CIV" System="Strategies"/>
*/


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('CultureCivPseudoBoost'),
('CultureCivYieldBoost');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('CultureCivPseudoBoost',   'TRAIT_LEADER_CULTURAL_MAJOR_CIV', 'PseudoYields'),
('CultureCivYieldBoost',   'TRAIT_LEADER_CULTURAL_MAJOR_CIV', 'Yields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureCivYieldBoost', 'YIELD_CULTURE', 1, 30), -- pvs 4, 5, 6, 7
('CultureCivYieldBoost', 'YIELD_SCIENCE', 1, -5),
('CultureCivYieldBoost', 'YIELD_PRODUCTION', 1, -3),
--('CultureCivYieldBoost', 'YIELD_GOLD', 1, 2), -- Trade
('CultureCivYieldBoost', 'YIELD_FAITH', 1, 10),  -- Temp to encourage early religion
('CultureCivYieldBoost', 'YIELD_RH_SPREAD_RELIGION', 		1, 15), 
('CultureCivYieldBoost', 'YIELD_RH_DEMOCRACY', 		1, 40), 

('CultureCivPseudoBoost', 'PSEUDOYIELD_TOURISM', 1, 40), -- pvs 22, 26, 35, 37
('CultureCivPseudoBoost', 'PSEUDOYIELD_CIVIC', 1, 8),
('CultureCivPseudoBoost', 'PSEUDOYIELD_WONDER', 1, 40), -- pvs 10
('CultureCivPseudoBoost', 'PSEUDOYIELD_HAPPINESS', 1, 20), -- pvs 11, 12
('CultureCivPseudoBoost', 'PSEUDOYIELD_GPP_GENERAL', 1, -15),
('CultureCivPseudoBoost', 'PSEUDOYIELD_GPP_PROPHET', 1, 5),
('CultureCivPseudoBoost', 'PSEUDOYIELD_GPP_MERCHANT', 1, 5),
('CultureCivPseudoBoost', 'PSEUDOYIELD_GPP_SCIENTIST', 1, -6),
('CultureCivPseudoBoost', 'PSEUDOYIELD_GPP_ENGINEER', 0, -9), -- pvs -8
('CultureCivPseudoBoost', 'PSEUDOYIELD_UNIT_TRADE', 1, 10),
('CultureCivPseudoBoost', 'PSEUDOYIELD_CITY_BASE', 1, -15),
('CultureCivPseudoBoost', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 5),

('CultureCivPseudoBoost', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 0, -10),
('CultureCivPseudoBoost', 'PSEUDOYIELD_UNIT_COMBAT', 1, -5), -- pvs -4, -6
--('CultureCivPseudoBoost', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, -2),
('CultureCivPseudoBoost', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -6), -- pvs-1, -2, -5

('CultureCivPseudoBoost', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3), -- slightly more friendly, pvs 4, 2
('CultureCivPseudoBoost', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 25),

('CultureCivPseudoBoost', 'PSEUDOYIELD_GPP_PROPHET', 1, 25), -- Temp to encourage early religion

('CultureCivPseudoBoost', 'PSEUDOYIELD_GPP_WRITER', 1, 25), -- pvs 10, 18
('CultureCivPseudoBoost', 'PSEUDOYIELD_GPP_ARTIST', 1, 18), 
('CultureCivPseudoBoost', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 18); 


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('CultureCivUnitBuilds'),
('CultureCivUnits'),
('CultureCivDistricts'),
('CultureCivTechs'),
('CultureCivBuildings'),
('CultureCivCivics'),
('CultureCivProjects');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('CultureCivUnitBuilds',   'TRAIT_LEADER_CULTURAL_MAJOR_CIV', 'UnitPromotionClasses'),
('CultureCivUnits', 'TRAIT_LEADER_CULTURAL_MAJOR_CIV', 'Units'),
('CultureCivDistricts', 'TRAIT_LEADER_CULTURAL_MAJOR_CIV', 'Districts'),
('CultureCivTechs',   'TRAIT_LEADER_CULTURAL_MAJOR_CIV', 'Technologies'),
('CultureCivBuildings',   'TRAIT_LEADER_CULTURAL_MAJOR_CIV', 'Buildings'),
('CultureCivCivics',   'TRAIT_LEADER_CULTURAL_MAJOR_CIV', 'Civics'),
('CultureCivProjects',   'TRAIT_LEADER_CULTURAL_MAJOR_CIV', 'Projects');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureCivUnitBuilds', 'PROMOTION_CLASS_SIEGE',            1,  -2), -- pvs 15, 16, 17, 19
('CultureCivUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE',      0,  -4);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('CultureCivUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 3), -- pvs 0
--('CultureCivUnitBuilds', 'PROMOTION_CLASS_MELEE',  2), -- pvs 3 (and favoured)
('CultureCivUnitBuilds', 'PROMOTION_CLASS_RANGED', 				1,  9), -- pvs 3, 7, 8
('CultureCivUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 		1,  -2), -- pvs 1, 3, 5
('CultureCivUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 		1, 	2);

--('CultureCivUnitBuilds', 'PROMOTION_CLASS_AIR_FIGHTER', 			1, 30), -- pvs 20
--('CultureCivUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 		0, -15); -- pvs -2, -3, -4

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureCivDistricts', 'DISTRICT_THEATER', 1, 			0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureCivCivics', 'CIVIC_GAMES_RECREATION', 1, 0), -- Colosseum
('CultureCivCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 1, 0),
('CultureCivCivics', 'CIVIC_DRAMA_POETRY', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureCivBuildings', 'BUILDING_MONUMENT', 1, 70),
('CultureCivBuildings', 'BUILDING_COLOSSEUM', 1, 70);


UPDATE StrategyConditions SET ThresholdValue = '45' WHERE StrategyType="VICTORY_STRATEGY_CULTURAL_VICTORY" AND ConditionFunction = 'Good Culture'; -- def 50


-- Religion



/*
<StrategyConditions>
	<Row StrategyType="VICTORY_STRATEGY_RELIGIOUS_VICTORY" ConditionFunction="Good Faith City" ThresholdValue="1"/>
	<Row StrategyType="VICTORY_STRATEGY_RELIGIOUS_VICTORY" ConditionFunction="Founded Religion"/>
	<Row StrategyType="VICTORY_STRATEGY_RELIGIOUS_VICTORY" ConditionFunction="Unconverted Cities" ThresholdValue="2"/>
	<Row StrategyType="VICTORY_STRATEGY_RELIGIOUS_VICTORY" ConditionFunction="Cannot Found Religion" Disqualifier="true"/>
	<Row StrategyType="VICTORY_STRATEGY_RELIGIOUS_VICTORY" ConditionFunction="Religion Destroyed" Disqualifier="true"/>
	<Row StrategyType="VICTORY_STRATEGY_RELIGIOUS_VICTORY" ConditionFunction="Is Not Major" Disqualifier="true"/>
	
			<Row ListType="FavorCulturalVictory" Item="VICTORY_STRATEGY_CULTURAL_VICTORY" Value="-1"/>
		<Row ListType="FavorReligiousVictory" Item="VICTORY_STRATEGY_RELIGIOUS_VICTORY" Value="-1"/>
		<Row ListType="ForbidReligiousVictory" Item="VICTORY_STRATEGY_RELIGIOUS_VICTORY" Value="5"/>
		<Row ListType="FavorScienceVictory" Item="VICTORY_STRATEGY_SCIENCE_VICTORY" Value="-1"/>
	
*/

DELETE FROM AiFavoredItems WHERE ListType = 'FavorReligiousVictory' AND Item = 'VICTORY_STRATEGY_RELIGIOUS_VICTORY'; -- Disabling for now as wiped out religous civs will keep going
--UPDATE AiFavoredItems SET Value = 1 WHERE ListType = 'FavorReligiousVictory' AND Item = 'VICTORY_STRATEGY_RELIGIOUS_VICTORY'; -- def. -1

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('ReligionCivPseudoBoost'),
('ReligionCivCivics'),
('ReligionCivBuildings'),
('ReligionCivDistricts'),
('ReligionCivTechs'),
('ReligionCivYieldBoost'),
('ReligionCivComm');


INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('ReligionCivPseudoBoost',   'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'PseudoYields'),
('ReligionCivCivics',   'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Civics'),
('ReligionCivBuildings',   'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Buildings'),
('ReligionCivDistricts',   'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Districts'),

('ReligionCivTechs',   'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Technologies'),
('ReligionCivYieldBoost',   'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Yields'),
('ReligionCivComm',   'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Commemorations');



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ReligionCivYieldBoost', 'YIELD_CULTURE', 1, 1),
--('ReligionCivYieldBoost', 'YIELD_SCIENCE', 1, -1),
('ReligionCivYieldBoost', 'YIELD_RH_SPREAD_RELIGION', 		1, 60), 
('ReligionCivYieldBoost', 'YIELD_RH_FAITH', 				0, -150), 

('ReligionCivYieldBoost', 'YIELD_FAITH', 1, 850), -- pvs 5, 8, 10, 12, 17, 25, 30, 75, 150
('ReligionCivYieldBoost', 'YIELD_SCIENCE', 1, -10),
('ReligionCivYieldBoost', 'YIELD_GOLD', 	1, -5),

('ReligionCivYieldBoost', 'YIELD_RH_R_GODDESS', 1, 300),
('ReligionCivYieldBoost', 'YIELD_RH_RV_BASE', 1, 950),


('ReligionCivTechs', 'TECH_ASTROLOGY', 1, 100), 

('ReligionCivComm', 'COMMEMORATION_RELIGIOUS', 					1, 0),

('ReligionCivDistricts',			 'DISTRICT_HOLY_SITE', 1, 100), 

('ReligionCivPseudoBoost', 'PSEUDOYIELD_GPP_PROPHET', 1, 850), -- pvs 10, 15, 25, 40, 65, 75, 85, 750
--('ReligionCivPseudoBoost', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 2),
('ReligionCivPseudoBoost', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 100), -- pvs 35
('ReligionCivPseudoBoost', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 250), -- pvs 8, 7
('ReligionCivPseudoBoost', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 10);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ReligionCivBuildings', 'BUILDING_STONEHENGE', 1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ReligionCivBuildings', 'BUILDING_GREAT_BATH', 1, 0 -- good for religious civs only
FROM Types WHERE Type = 'BUILDING_GREAT_BATH';

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
--SELECT 'PeterWonders', 'BUILDING_ST_BASILS_CATHEDRAL', 1, 25
--FROM Types WHERE Type = 'BUILDING_ST_BASILS_CATHEDRAL';


--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ReligionCivCivics', 'CIVIC_THEOLOGY', 1, 0); -- Temples -- already used in relgious victory strategy, not needed


--UPDATE StrategyConditions SET ThresholdValue = '2' WHERE StrategyType="VICTORY_STRATEGY_RELIGIOUS_VICTORY" AND ConditionFunction = 'Good Faith City'; -- def 1, pvs 2, back to 1
--UPDATE StrategyConditions SET ThresholdValue = '3' WHERE StrategyType="VICTORY_STRATEGY_RELIGIOUS_VICTORY" AND ConditionFunction = 'Unconverted Cities'; -- def 2

-- Science Very Slight Changes

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('ScienceCivPseudoBoost'),
('ScienceCivBuildings'),
('ScienceCivDistricts'),
('ScienceCivCivics'),
('ScienceCivYieldBoost');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('ScienceCivPseudoBoost',   'TRAIT_LEADER_SCIENCE_MAJOR_CIV', 'PseudoYields'),
('ScienceCivBuildings',   'TRAIT_LEADER_SCIENCE_MAJOR_CIV', 'Buildings'),
('ScienceCivDistricts', 'TRAIT_LEADER_SCIENCE_MAJOR_CIV', 'Districts'),
('ScienceCivCivics',   'TRAIT_LEADER_SCIENCE_MAJOR_CIV', 'Civics'),
('ScienceCivYieldBoost',   'TRAIT_LEADER_SCIENCE_MAJOR_CIV', 'Yields');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ScienceCivYieldBoost', 'YIELD_CULTURE', 1, 1),
('ScienceCivYieldBoost', 'YIELD_PRODUCTION', 1, 5),
('ScienceCivYieldBoost', 'YIELD_SCIENCE', 1, 10),
('ScienceCivYieldBoost', 'YIELD_RH_COMMUNISM', 1, 50),

('ScienceCivYieldBoost', 'YIELD_RH_SCIENCE_VICTORY_BASE', 1, 60), 

('ScienceCivYieldBoost', 'YIELD_RH_SYNTHETIC_TECHNOCRACY', 1, 100), 

--('ScienceCivYieldBoost', 'YIELD_FAITH', 1, -1), -- pvs 5, 8

--('ScienceCivBuildings', 'BUILDING_GOV_WIDE', 1, 			150),
--('ScienceCivBuildings', 'BUILDING_GOV_TALL', 1, 			150),
('ScienceCivBuildings', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 300),

--('ScienceCivDistricts', 'DISTRICT_HARBOR', 1, 			0), -- Mausoleum
('ScienceCivDistricts', 'DISTRICT_CAMPUS', 1, 			0),
--('ScienceCivDistricts', 'DISTRICT_ENCAMPMENT', 0, 			0),

('ScienceCivCivics', 'CIVIC_DEFENSIVE_TACTICS', 1, 0), -- Mausoleum
('ScienceCivCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 1, 0),
('ScienceCivCivics', 'CIVIC_RECORDED_HISTORY', 1, 0), -- Great Library / boosts with 2 campuses

--('ScienceCivPseudoBoost', 'PSEUDOYIELD_GPP_PROPHET', 0, -4),
('ScienceCivPseudoBoost', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 25), -- pvs 20
('ScienceCivPseudoBoost', 'PSEUDOYIELD_GPP_ENGINEER', 1, 20), -- pvs 20
('ScienceCivPseudoBoost', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 20),
('ScienceCivPseudoBoost', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 0, -2),
--('ScienceCivPseudoBoost', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -1),
--('ScienceCivPseudoBoost', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 30), -- pvs 35
--('ScienceCivPseudoBoost', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 7), -- pvs 8
('ScienceCivPseudoBoost', 'PSEUDOYIELD_GREATWORK_RELIC', 1, -10);




--<Row ListType="FavorScienceVictory" LeaderType="TRAIT_LEADER_SCIENCE_MAJOR_CIV" System="Strategies"/>