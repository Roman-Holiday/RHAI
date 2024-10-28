
-- Author ROMANHOLIDAY

-- Industrial Onwards Era Strat

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('IndustrialSettlement', 'Foreign Continent', 	0, 12, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT'), -- Cartography
('IndustrialSettlement', 'Total Yield', 	 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('IndustrialSettlement', 'Specific Resource', 0, 10, 			'RESOURCE_NITER', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('IndustrialSettlement', 'Specific Resource', 0, 30, 			'RESOURCE_COAL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 
--('IndustrialSettlement', 'Specific Resource', 0, 35, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
--('IndustrialSettlement', 'Specific Resource', 1, 40, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 
--('AtomicSettlement', 'Specific Resource', 1, 70, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('IndustrialScouts', 	'LAND_SCOUTS_PER_SECONDARY_REGION',      1, 100),
('IndustrialScouts', 	'DEFAULT_NAVAL_SCOUTS',   				 1, 150),
('IndustrialScouts', 	'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',    1, 250),
-- INDUSTRIAL
--('IndustrialYields', 'YIELD_CULTURE',	1, -3), -- pvs -5
('IndustrialYields', 'YIELD_FAITH',	1, -8), -- def -40 pvs -10, -20, -16

-- Core
('IndustrialYields', 'YIELD_FOOD', 			1, 40), -- pvs 20
('IndustrialYields', 'YIELD_PRODUCTION',  1, 400), -- pvs 20, 100, 200
--('IndustrialYields', 'YIELD_GOLD', 		  1, 20), -- pvs 2, 5, 40, 30, 60
('IndustrialYields', 'YIELD_SCIENCE',    1, 150), -- pvs 11, 9, 100
('IndustrialYields', 'YIELD_CULTURE',    1, 150), -- pvs 11, 9, 100

('IndustrialYields', 'YIELD_RH_SCIENCE_VICTORY_BASE',    1, 150), -- pvs 0
('IndustrialYields', 'YIELD_RH_CULTURE_VICTORY_BASE', 	   1, 50), -- temp

('IndustrialYields', 'YIELD_RH_PRODUCTION', 1, 450), -- pvs 20, 100

('IndustrialYields', 'YIELD_RH_HAPPINESS_BUILDING',    1, 125), -- Pvs 250

('IndustrialYields', 'YIELD_RH_OLIGARCHY',  		0, -950),
('IndustrialYields', 'YIELD_RH_CLASSICAL_REPUBLIC',  0, -950),

('IndustrialYields', 'YIELD_RH_CITY_CENTRE',  1, 750),

('IndustrialYields', 'YIELD_RH_MONARCHY',  		  	 1, 950), -- pvs 60, 125
('IndustrialYields', 'YIELD_RH_MERCHANT_REPUBLIC',   1, 750),

('IndustrialYields', 'YIELD_RH_TRADE_TREATY_BAN',  1, 75),

('IndustrialYields', 'YIELD_RH_WORLD_RELIGION_CONDEM',  1, 25), -- Industrial Final Era

('IndustrialYields', 'YIELD_RH_DIPLOVICTORY_BUFF',  1, 250), -- Starts in Modern but in case behind

('IndustrialYields', 'YIELD_RH_PUBLIC_RELATIONS_BUFF',  1, 50), -- Increase Grievances

('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 3000),
--('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 20),
('IndustrialPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 85),
('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -35), -- pvs -20
('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -30),
('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 15),
('IndustrialPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 5), -- pvs 20, 17, 15, 14

--('IndustrialPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 7), -- pvs 15, 13, 11, 7

('IndustrialPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 35),
('IndustrialPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 0, -60),
('IndustrialPseudoYields', 'PSEUDOYIELD_WONDER',   		1, 40),

('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',   1, -15),
('IndustrialPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, -10),
--('IndustrialPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 12),
('IndustrialPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 75),

('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 30),
('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, -25), -- pvs 35, 45
('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 50), -- def 20, pvs 10
('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 25), -- def 20, pvs 10

('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 50), -- Railroads

('IndustrialPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 20),
('IndustrialPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 50), -- pvs 10
('IndustrialPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 30),

--('IndustrialPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, -5),
('IndustrialPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 600);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'IndustrialPseudoYields', PseudoYieldType, 1, 200 -- pvs 20
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Industrial_Science_PseudoYields', 'PSEUDOYIELD_WONDER',   1, 75), -- New, Press Advantage

('Industrial_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 60),
('Industrial_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 40);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Industrial_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	1, -50),
('Industrial_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 			1, -50);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('IndustrialImprovements', 'IMPROVEMENT_ZIGGURAT', 0, -90),
('IndustrialImprovements', 'IMPROVEMENT_KURGAN', 0, -90),
('IndustrialImprovements', 'IMPROVEMENT_SPHINX', 0, -90),
('IndustrialImprovements', 'IMPROVEMENT_COLOSSAL_HEAD', 0, -90);


-- MODERN

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('ModernSettlement', 'Foreign Continent', 	0, 10, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT'), -- Cartography, still needed
('ModernSettlement', 'Total Yield', 	 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('ModernSettlement', 'Specific Resource', 0, 15, 			'RESOURCE_COAL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('ModernSettlement', 'Specific Resource', 0, 35, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('ModernSettlement', 'Specific Feature', 0, 5, 				'FEATURE_ICE', 				'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
('ModernSettlement', 'Specific Resource', 1, 40, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 
--('AtomicSettlement', 'Specific Resource', 1, 70, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('ModernImprovements', 'IMPROVEMENT_FARM',  -25), 
('ModernImprovements', 'IMPROVEMENT_FISHING_BOATS',  -20), 
('ModernImprovements', 'IMPROVEMENT_PASTURE',  -20);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernImprovements', 'IMPROVEMENT_MINE', 1, 150), 
('ModernImprovements', 'IMPROVEMENT_LUMBER_MILL', 1, 50),
('ModernImprovements', 'IMPROVEMENT_GEOTHERMAL_PLANT', 1, 90),
('ModernImprovements', 'IMPROVEMENT_FORT', 0,  -75), 
('ModernImprovements', 'IMPROVEMENT_CITY_PARK', 1, 90),
('ModernImprovements', 'IMPROVEMENT_MISSILE_SILO', 1, 50),
('ModernImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 400),
('ModernImprovements', 'IMPROVEMENT_OIL_WELL', 1, 400);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernImprovements', 'IMPROVEMENT_ZIGGURAT', 0, -90),
('ModernImprovements', 'IMPROVEMENT_KURGAN', 0, -90),
('ModernImprovements', 'IMPROVEMENT_SPHINX', 0, -90),
('ModernImprovements', 'IMPROVEMENT_COLOSSAL_HEAD', 0, -90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernScouts', 	'LAND_SCOUTS_PER_SECONDARY_REGION',      1, 50),
('ModernScouts', 	'DEFAULT_NAVAL_SCOUTS',   				 1, 100),
('ModernScouts', 	'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',    1, 200),

('ModernYields', 'YIELD_SCIENCE', 			1, 100),
('ModernYields', 'YIELD_CULTURE', 			1, 100),
('ModernYields', 'YIELD_GOLD', 				1, 150), -- pvs 8, 16, 25
('ModernYields', 'YIELD_FOOD', 				1, 25), --
('ModernYields', 'YIELD_PRODUCTION', 		1, 200), -- pvs 10


('ModernYields', 'YIELD_RH_NAVAL', 1, 65), -- Seaport Etc -- Electricity
('ModernYields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 950),

('ModernYields', 'YIELD_RH_CITY_CENTRE',  1, 850),

('ModernYields', 'YIELD_RH_OLIGARCHY',  		0, -950),
('ModernYields', 'YIELD_RH_CLASSICAL_REPUBLIC',  0, -950),


/*
('ModernYields', 'YIELD_RH_TRADE_TREATY_BAN',  1, 150),

('ModernYields', 'YIELD_RH_DIPLOVICTORY_BUFF',  1, 750), -- pvs 250, 275, 350
('ModernYields', 'YIELD_RH_DIPLOVICTORY_DEBUFF',  0, -30),

('ModernYields', 'YIELD_RH_PUBLIC_RELATIONS_BUFF',  1, 220), -- Increase Grievances

('ModernYields', 'YIELD_RH_PUBLIC_WORKS_DOUBLE',  1, 175), -- Important Projects, Atomic to Info Only
*/

('ModernBuildings', 'BUILDING_FERRIS_WHEEL', 1, 90),
('ModernBuildings', 'BUILDING_AQUARIUM', 1, 90),
('ModernBuildings', 'BUILDING_AQUATICS_CENTER', 1, 90),
('ModernBuildings', 'BUILDING_GRANARY', 1, 90),
--('ModernBuildings', 'BUILDING_WATER_MILL', 1, 15),

('ModernPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 9000), -- pvs 700, 800, 4000
--('ModernPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 20),
('ModernPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -70), -- pvs -50
('ModernPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -45), -- pvs -21, -25
('ModernPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 20),
--('ModernPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -1),

('ModernPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 30),

('ModernPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 40),
('ModernPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, -10),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 60),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 40), 
('ModernPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 5),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 5),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 5),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 20), -- Much better at this time, pvs 60, 70, 75, 85
('ModernPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 75),
('ModernPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, -10),
('ModernPseudoYields', 'PSEUDOYIELD_HAPPINESS', 	1, 250),
('ModernPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, -15),

('ModernPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 25), -- pvs 24
('ModernPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 10),
('ModernPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, -18), -- Only have Bi-Planes in Modern Era, pvs -16
('ModernPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5), -- world wars, pvs 20, 18, 14, 12
--('ModernPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 8), -- bringing back, 14, 12, 9, 8
('ModernPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 5),
('ModernPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 350),
('ModernPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, -10);

-- Modern Districts

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernDistricts', 'DISTRICT_AERODROME', 					1, 0),
('ModernDistricts', 'DISTRICT_DAM', 						1, 100), -- Flooding Becomes more Severe

('ModernDistricts', 'DISTRICT_ENCAMPMENT', 					0, 0),
('ModernDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ModernPseudoYields', PseudoYieldType, 1, 250
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 


