
-- Author ROMANHOLIDAY

-- ATOMIC

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('AtomicSettlement', 'Specific Feature', 0, 10, 			'FEATURE_ICE', 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
('AtomicSettlement', 'Specific Resource', 0, 35, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('AtomicSettlement', 'Specific Resource', 0, 50, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('AtomicSettlement', 'Specific Resource', 1, 70, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)

--('AtomicSettlement', 'Total Yield', 	 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AtomicImprovements', 'IMPROVEMENT_MINE', 1, 200), 
('AtomicImprovements', 'IMPROVEMENT_FARM', 0, -20), 
('AtomicImprovements', 'IMPROVEMENT_FISHING_BOATS', 0, -40), 
('AtomicImprovements', 'IMPROVEMENT_PASTURE', 0,  -50),
('AtomicImprovements', 'IMPROVEMENT_LUMBER_MILL', 1, 50),

('AtomicImprovements', 'IMPROVEMENT_GEOTHERMAL_PLANT', 1, 90),
('AtomicImprovements', 'IMPROVEMENT_FORT', 0,  -75), 
('AtomicImprovements', 'IMPROVEMENT_CITY_PARK', 1, 90),
('AtomicImprovements', 'IMPROVEMENT_MISSILE_SILO', 1, 50),
('AtomicImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 400),
('AtomicImprovements', 'IMPROVEMENT_OIL_WELL', 1, 400);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AtomicImprovements', 'IMPROVEMENT_ZIGGURAT', 0, -90),
('AtomicImprovements', 'IMPROVEMENT_KURGAN', 0, -90),
('AtomicImprovements', 'IMPROVEMENT_SPHINX', 0, -90),
('AtomicImprovements', 'IMPROVEMENT_COLOSSAL_HEAD', 0, -90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('AtomicYields', 'YIELD_CULTURE', 					1, 50),
('AtomicYields', 'YIELD_SCIENCE', 					1, 50),

('AtomicYields', 'YIELD_GOLD', 						1, 50),
('AtomicYields', 'YIELD_PRODUCTION', 				1, 120), -- pvs -10




--('AtomicYields', 'YIELD_FOOD', 						1, -10),


('AtomicYields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 850),

('AtomicYields', 'YIELD_RH_OLIGARCHY',  		0, -950),
('AtomicYields', 'YIELD_RH_CLASSICAL_REPUBLIC',  0, -950),
('AtomicYields', 'YIELD_RH_MONARCHY', 			 0, -950),



('AtomicYields', 'YIELD_RH_CITY_CENTRE',  1, 950),

('AtomicYields', 'YIELD_RH_MAYHEM', 		 1, 650),


('AtomicYields', 'YIELD_RH_FOOD_EXT',  0, -80),

/*
('AtomicYields', 'YIELD_RH_TRADE_TREATY_BAN',  1, 450), -- Has No Max Era

('AtomicYields', 'YIELD_RH_DIPLOVICTORY_DEBUFF',  0, -10),
('AtomicYields', 'YIELD_RH_DIPLOVICTORY_BUFF',  1, 120), -- pvs 40

('AtomicYields', 'YIELD_RH_PUBLIC_WORKS_DOUBLE',  1, 40), -- Important Projects
('AtomicYields', 'YIELD_RH_PUBLIC_WORKS_BUFF',    1, 40), -- Important
*/

('AtomicDistricts', 'DISTRICT_AERODROME', 					1, 0),

('AtomicBuildings', 'BUILDING_FERRIS_WHEEL', 1, 90),
('AtomicBuildings', 'BUILDING_AQUARIUM', 1, 90),
('AtomicBuildings', 'BUILDING_AQUATICS_CENTER', 1, 90),
('AtomicBuildings', 'BUILDING_GRANARY', 1, 900),
--('AtomicBuildings', 'BUILDING_WATER_MILL', 1, 5),
('AtomicBuildings', 'BUILDING_SEWER', 1, 0),

('AtomicPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 9000), -- pvs 4000
--('AtomicPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 400),
('AtomicPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -95), -- pvs -65, -85
('AtomicPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -95), -- pvs 31, -35, -85
('AtomicPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -15),
--('AtomicPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 12),
('AtomicPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 45), -- pvs 50
('AtomicPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 25),
('AtomicPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 20),

('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_SCULPTURE', 1, 350), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_PORTRAIT', 1, 350), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_LANDSCAPE', 1, 350), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIGIOUS', 1, 350), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_ARTIFACT', 1, 350), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_WRITING', 1, 250), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_MUSIC', 1, 350),
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 350), 

('AtomicPseudoYields', 'PSEUDOYIELD_HAPPINESS', 		1, 50),
('AtomicPseudoYields', 'PSEUDOYIELD_INFLUENCE', 		1, -35), -- pvs -15
('AtomicPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 	1, 30), -- pvs 25
('AtomicPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 5),
('AtomicPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 	1, 5),
('AtomicPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 45),
('AtomicPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 10),

('AtomicPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 50),

('AtomicPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, -10),
('AtomicPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -10), -- world wars, pvs 20, 15, 14, 11, 8 (everyone has thousands of military)
--('AtomicPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 6), -- pvs 8, 6
('AtomicPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 250), -- Lots more for uranium, aluminium, oil (all res discovered)
--('AtomicPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 15),
('AtomicPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -1),
('AtomicPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 15),
('AtomicPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 15),
('AtomicPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, -10);

-- 

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
--SELECT 'AtomicPseudoYields', PseudoYieldType, 1, 300 -- pvs 40, 110 (4x)
--FROM PseudoYields
--WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 

-- INFORMATION

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 					TooltipString) VALUES
('InformationSettlement', 'Total Yield', 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('InformationSettlement', 'Specific Resource', 0, 15, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('InformationSettlement', 'Specific Resource', 0, 40, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('InformationSettlement', 'Specific Resource', 1, 70, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('InformationImprovements', 'IMPROVEMENT_MINE', 1, 200), 
('InformationImprovements', 'IMPROVEMENT_FARM', 0, -90), 
('InformationImprovements', 'IMPROVEMENT_FISHING_BOATS', 0, -70), 
('InformationImprovements', 'IMPROVEMENT_PASTURE', 0,  -60),
('InformationImprovements', 'IMPROVEMENT_LUMBER_MILL', 1, 40),

('InformationImprovements', 'IMPROVEMENT_GEOTHERMAL_PLANT', 1, 90),
('InformationImprovements', 'IMPROVEMENT_FORT', 0,  -75), 
('InformationImprovements', 'IMPROVEMENT_CITY_PARK', 1, 90),
('InformationImprovements', 'IMPROVEMENT_MISSILE_SILO', 1, 50),
('InformationImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 400),
('InformationImprovements', 'IMPROVEMENT_OIL_WELL', 1, 400);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('InformationImprovements', 'IMPROVEMENT_ZIGGURAT', 0, -90),
('InformationImprovements', 'IMPROVEMENT_KURGAN', 0, -90),
('InformationImprovements', 'IMPROVEMENT_SPHINX', 0, -90),
('InformationImprovements', 'IMPROVEMENT_COLOSSAL_HEAD', 0, -90);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('InformationOps', 'OP_BLITZ',   		 -1),
('InformationOps', 'OP_NUCLEAR',   		  1), -- test
--('InformationOps', 'CITY_ASSAULT',   	 -1),
('InformationOps', 'OP_SETTLE',   		 -1);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('InformationSavings', 'SAVING_GREAT_PEOPLE',									1), 
('InformationSavings', 'SAVING_SLUSH_FUND', 									-1),
('InformationSavings', 'SAVING_PLOTS', 											1);

--('InformationSavings', 'SAVING_UNITS', 									-1); -- Test
--('InformationSavings', 'SAVING_SLUSH_FUND', 								 0); 



INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('InformationYields', 'YIELD_CULTURE', 			1, 35),
('InformationYields', 'YIELD_SCIENCE', 			1, 10), -- Less campus', pvs 0

('InformationYields', 'YIELD_GOLD', 			1, 50), -- pvs -5, temp
--('InformationYields', 'YIELD_FAITH', 			0, -8), -- pvs 15
('InformationYields', 'YIELD_PRODUCTION',		 1, 50), -- Don't need to focus on increasing production when we are about to win - however industrial zones are important, pvs -8, 40
('InformationYields', 'YIELD_FOOD',				 0, -35), -- pvs -25

('InformationYields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 250),

('InformationYields', 'YIELD_RH_OLIGARCHY',  		0, -950),
('InformationYields', 'YIELD_RH_CLASSICAL_REPUBLIC',  0, -950),

('InformationYields', 'YIELD_RH_MONARCHY', 			 0, -950),

('InformationYields', 'YIELD_RH_CITY_CENTRE',  1, 700),

('InformationYields', 'YIELD_RH_FOOD_EXT',  0, -500),

('InformationYields', 'YIELD_RH_MAYHEM', 		 1, 950),

/*
('InformationYields', 'YIELD_RH_TRADE_TREATY_BAN',  1, 750),

('InformationYields', 'YIELD_RH_PUBLIC_WORKS_DOUBLE',  1, 50), -- Important Projects, Atomic to Info Only
('InformationYields', 'YIELD_RH_PUBLIC_WORKS_BUFF',    1, 50), -- Important

('InformationYields', 'YIELD_RH_DIPLOVICTORY_DEBUFF',  1, 40),
*/


('InformationDistricts', 'DISTRICT_ENCAMPMENT', 					0, 0),

('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_SCULPTURE', 1, 450), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_PORTRAIT', 1, 450), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_LANDSCAPE', 1, 450), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIGIOUS', 1, 450), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_ARTIFACT', 1, 450), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_WRITING', 1, 340), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_MUSIC', 1, 450),
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 450), 

('InformationPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 30),

('InformationPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, -50), -- 20, 30, 35
('InformationPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 80000), -- pvs 700, 900, 6000
('InformationPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -100),

('InformationPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 500),
('InformationPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -98), -- pvs -50, -65, -80
('InformationPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 50),
('InformationPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 30),
('InformationPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -98), -- pvs -14, -25, -75

--('InformationPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 50),
--('InformationPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, -8),
('InformationPseudoYields', 'PSEUDOYIELD_DISTRICT',			 1, -10),
('InformationPseudoYields', 'PSEUDOYIELD_INFLUENCE', 		1, -40), -- 40, 33 too high, -20
('InformationPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',		 0, -65), -- pvs -7, -50, -35, -40, -45, -60
('InformationPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 15), -- Caution Carbon Capture
('InformationPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 20),
('InformationPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 5), 
('InformationPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -40), -- pvs -15, -20, -22, -27, -29, -35
('InformationPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, -22), -- pvs -30
('InformationPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 100), -- Aluminium and uranium
('InformationPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 0, -20), -- Carbon recapture projects
('InformationPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, -25),
('InformationPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -64), -- bringing back, -30, 35, 50, 65, 70 (at -35 spamming ships in the info era)
('InformationPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -7); -- pvs -5, -10

/*
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'InformationPseudoYields', PseudoYieldType, 1, 130 -- pvs 50
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 
*/

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AvoidDarkAges', 'PSEUDOYIELD_INFLUENCE', 					1, 			8),
('AvoidDarkAges', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 		1, 			60),
('AvoidDarkAges', 'PSEUDOYIELD_WONDER', 					1, 			60);

-- NO more all civs playing the same way. crazy stuff
DELETE FROM AiFavoredItems WHERE ListType = 'ClassicalDistricts' AND Item = 'DISTRICT_CAMPUS';
DELETE FROM AiFavoredItems WHERE ListType = 'ClassicalDistricts' AND Item = 'DISTRICT_THEATER';



