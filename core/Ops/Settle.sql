

-- AUTHOR: ROMANHOLIDAY

-- Settlement Small Adjustments


-- noinspection SqlNoDataSourceInspection
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES

/*
('StandardSettlePlot', 'Inner Ring Yield',			 0, 1, 'YIELD_FOOD',    'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- 2
('StandardSettlePlot', 'Inner Ring Yield', 			0, 2, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), --2
('StandardSettlePlot', 'Inner Ring Yield', 			0, 1, 'YIELD_SCIENCE', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- 1
('StandardSettlePlot', 'Inner Ring Yield',			 0, 1, 'YIELD_CULTURE', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- 1
('StandardSettlePlot', 'Inner Ring Yield', 			0, 1, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- 1
('StandardSettlePlot', 'Total Yield', 				0, 1, 'YIELD_FOOD',    'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('StandardSettlePlot', 'Total Yield', 				0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 2
('StandardSettlePlot', 'Total Yield', 				0, 1, 'YIELD_SCIENCE', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('StandardSettlePlot', 'Total Yield', 				0, 1, 'YIELD_CULTURE', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('StandardSettlePlot', 'Total Yield', 				0, 1, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
*/

--('StandardSettlePlot', 'New Resources', 			0, 5, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEW_RESOURCES'), -- 4
--('StandardSettlePlot', 'Resource Class', 			0, 3, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'), -- 2 -- pvs 5
('StandardSettlePlot', 'Resource Class', 			0, 1, 'RESOURCECLASS_BONUS',     'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'), -- new -- pvs 2
--('StandardSettlePlot', 'Resource Class', 			0, 4, 'RESOURCECLASS_LUXURY',    'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'), -- 2
--('StandardSettlePlot', 'Specific Resource', 		0, 1, 'RESOURCE_IRON',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- pvs 2
--('StandardSettlePlot', 'Specific Resource', 		0, 1, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- 3
--('StandardSettlePlot', 'Specific Resource', 		0, 3, 'RESOURCE_NITER',  'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- def 2
('StandardSettlePlot', 'Specific Resource', 		0, 1, 'RESOURCE_COAL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Naval gets 3 -- pvs 2
('StandardSettlePlot', 'Specific Resource', 		0, 4, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('StandardSettlePlot', 'Specific Resource', 		0, 6, 'RESOURCE_ALUMINUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- pvs 7
('StandardSettlePlot', 'Specific Resource', 		0, 9, 'RESOURCE_URANIUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
--('StandardSettlePlot', 'Specific Feature', 			0, -9, 'FEATURE_ICE', 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
--('StandardSettlePlot', 'Specific Feature', 			0, 1, 'FEATURE_DEAD_SEA', 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'), -- 6
('StandardSettlePlot', 'Specific Feature', 			0, 2, 'FEATURE_VOLCANO', 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES');
--('StandardSettlePlot', 'Foreign Continent', 		0, -4, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT'); -- Def -2 -- (RST favoured)
--('StandardSettlePlot', 'Nearest Friendly City', 	0, -9, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'); -- -10, be careful - expansion gives +3, naval +2/4
--('StandardSettlePlot', 'Fresh Water', 				0, 25, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'), -- def. 20 -- pvs 22, 23
--('StandardSettlePlot', 'Coastal', 					0, 14, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_COAST'); -- pvs 12


UPDATE AiFavoredItems SET Value = 5 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_NEW_RESOURCES' AND Item = 'New Resources'; 

UPDATE AiFavoredItems SET Value = 3 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES' AND Item = 'Resource Class' AND StringVal ='RESOURCECLASS_STRATEGIC'; -- def 2
UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_LUXURY_RESOURCES' AND Item = 'Resource Class' AND StringVal ='RESOURCECLASS_LUXURY'; -- def 2


UPDATE AiFavoredItems SET Value = 1 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES' AND Item = 'Resource Class' AND StringVal ='RESOURCE_HORSES'; -- def 3
UPDATE AiFavoredItems SET Value = 2 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES' AND Item = 'Resource Class' AND StringVal ='RESOURCE_IRON'; -- def 5
UPDATE AiFavoredItems SET Value = 5 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES' AND Item = 'Resource Class' AND StringVal ='RESOURCE_NITER'; -- def 2


UPDATE AiFavoredItems SET Value = -8 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY' AND Item = 'Nearest Friendly City'; -- pvs -8, -7

UPDATE AiFavoredItems SET Value = 30 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_COAST' AND Item = 'Coastal'; -- pvs 14, 16, 18, 21, 23, 25
UPDATE AiFavoredItems SET Value = 40 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER' AND Item = 'Fresh Water'; -- pvs 30, 32, 35, 37

UPDATE AiFavoredItems SET Value = -3 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT' AND Item = 'Foreign Continent'; 


UPDATE AiFavoredItems SET Value = 6 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES' AND Item = 'Specific Feature' AND StringVal ='FEATURE_DEAD_SEA';



--UPDATE AiFavoredItems SET Value = 2 WHERE ListType = 'StandardSettlePlot' AND Favored = 'false' AND Item = 'Cultural Pressure'; -- def 1


--UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_CITY_VALUE_MULTIPLIER'; -- Test, pvs 3, 3 may be too many early on

UPDATE AiFavoredItems SET Value = 7 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_DECAY_TURNS'; -- Test, pvs 9
UPDATE AiFavoredItems SET Value = 5 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_DECAY_AMOUNT'; -- Test, def 3

UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'ExpansionistCitySettlement' AND Item = 'SETTLEMENT_DECAY_AMOUNT'; -- Test, pvs 3
UPDATE AiFavoredItems SET Value = -4 WHERE ListType = 'ExpansionistCitySettlement' AND Item = 'SETTLEMENT_DECAY_TURNS'; -- Test, pvs -3

--     <!-- HACK NOTE: If the specific feature is a natural wonder, that value will apply to all natural wonders. When we break them out individually, we'll fix this, but this is our starting point - AWG -->

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
--SELECT 'StandardSettlePlot', 0, 1, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES' -- 5, 4, 3 (when combined) too high
--FROM Features
--WHERE NaturalWonder = 1; -- NaturalWonder="true"

DELETE FROM StrategyConditions WHERE StrategyType='STRATEGY_RAPID_EXPANSION' AND ConditionFunction='Is In Dark Age' AND Forbidden='true';

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('Dark_Age_Settlement');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_DARKAGE',   'Dark_Age_Settlement');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Dark_Age_Settlement', 'Cultural Pressure', 		0, 1);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AvoidDarkAges', 'PSEUDOYIELD_WONDER', 		1, 			100);


--     <Row ListType="AvoidDarkAges" Item="PSEUDOYIELD_GOLDENAGE_POINT" Value="500"/>

/*

CREDIT CYPRYAN:
---- SETTLEMENT_CITY_MINIMUM_VALUE / SETTLEMENT_CITY_VALUE_MULTIPLIER = Amount of cities AI tries to settle
---- Additive with standard 100 results in 100-75=25 -> 25/5 = 5 cities
*/

/*
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="30"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="9"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="100"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="5"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="-25"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="-1"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="-3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="50"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="1"/>
*/


--DELETE FROM AiFavoredItems WHERE ListType = 'StandardSettlePlot';

--UPDATE AiFavoredItems SET Value = 25 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_MIN_VALUE_NEEDED'; 

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('StandardSettlePlot', 'Cultural Pressure', 0, 1),
--('StandardSettlePlot', 'Cultural Pressure', 1, -6); 

/*
	<PlotEvalConditions>
		<Row ConditionType="Cultural Pressure" Value="11"/>
	</PlotEvalConditions>
*/

UPDATE PlotEvalConditions SET PoorValue = -5, GoodValue = 10 WHERE ConditionType = 'Cultural Pressure'; -- test, def nothing

/*
		<Row ListType="StandardSettlePlot" Item="Cultural Pressure" Favored="false" Value="1"/>
		<Row ListType="StandardSettlePlot" Item="Cultural Pressure" Favored="true" Value="-6"/>
*/