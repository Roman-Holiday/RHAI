
-- AUTHOR: ROMANHOLIDAY

-- CATHERINE_DE_MEDICI_ALT / FRANCE -- MAGNIFICENCE -- TRAIT_LEADER_MAGNIFICENCES

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('CatherineAltDiplo'),
('CatherineAltCivics'),
('CatherineAltProjects');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES


('CatherineWonders',      'TRAIT_LEADER_MAGNIFICENCES', 'Buildings'),
('CatherineTechs',        'TRAIT_LEADER_MAGNIFICENCES', 'Technologies'),
--('CatherineCivics',       'TRAIT_LEADER_MAGNIFICENCES', 'Civics'),

('CatherineAltDiplo',    'TRAIT_LEADER_MAGNIFICENCES', 'DiplomaticActions'),
('CatherineAltCivics',    'TRAIT_LEADER_MAGNIFICENCES', 'Civics'),
('CatherineAltProjects',  'TRAIT_LEADER_MAGNIFICENCES', 'Projects');


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('CatherineAltDistricts'),
('CatherineAltYields'),
('FranceSettlement'),
('CatherineAltSettlement'),
('CatherineAltPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('CatherineAltDistricts', 'TRAIT_LEADER_MAGNIFICENCES', 'Districts'),
('CatherineAltYields',       'TRAIT_LEADER_MAGNIFICENCES', 'Yields'),
('FranceSettlement',       'TRAIT_CIVILIZATION_IMPROVEMENT_CHATEAU', 'PlotEvaluations'),

('CatherineAltSettlement',       'TRAIT_LEADER_MAGNIFICENCES', 'PlotEvaluations'),
('CatherineAltPseudoYields', 'TRAIT_LEADER_MAGNIFICENCES', 'PseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('CatherineAltCivics', 'TRAIT_LEADER_MAGNIFICENCES', 'Civics');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CatherineAltDiplo', 'DIPLOACTION_PROPOSE_TRADE', 1, 40), -- Purchase Luxuries

('CatherineAltYields', 'YIELD_PRODUCTION', 1, 3),
('CatherineAltYields', 'YIELD_CULTURE', 1, 15),
('CatherineAltYields', 'YIELD_SCIENCE', 1, -2),
('CatherineAltYields', 'YIELD_FAITH', 1, -5),     
('CatherineAltDistricts', 'DISTRICT_THEATER', 1, 0), -- +2 Culture next to Chateau or Luxury, Tourism from Court Festival
('CatherineAltPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -25),
('CatherineAltPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 25),
('CatherineAltPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 35),
('CatherineAltPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 40), -- City state luxuries
('CatherineAltPseudoYields', 'PSEUDOYIELD_SETTLER', 1, 20), -- Settle luxuries
('CatherineAltPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 15),
('CatherineAltPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 40), -- luxuries / amenities

('CatherineAltPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 400), -- Court Festival 
('CatherineAltPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 42), 
('CatherineAltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 2),
('CatherineAltPseudoYields', 'PSEUDOYIELD_WONDER', 1, 105), -- Double tourism, Production bonus in med, ren, industrial
('CatherineAltCivics', 'CIVIC_DRAMA_POETRY', 1, 0),
('CatherineAltCivics', 'CIVIC_HUMANISM',     1, 0),
('CatherineAltCivics', 'CIVIC_CONSERVATION', 1, 0),
('CatherineAltProjects', 'PROJECT_COURT_FESTIVAL', 1, 75); -- pvs 30, 200, 400, 1000

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('FranceSettlement', 'Fresh Water',           0, 6,                   NULL); -- CHATEAU

INSERT OR REPLACE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'FranceSettlement', 0, 2, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES' 
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true" -- Chateau Appeal

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('CatherineAltSettlement', 'Nearest Friendly City', 0, -1,                   NULL),
('CatherineAltSettlement', 'New Resources',         0, -2,                   NULL), -- base 4
('CatherineAltSettlement', 'Resource Class',        0, 18, 'RESOURCECLASS_LUXURY'); 


-- Todo add luxury settling preference


-- Bull Moose Teddy TRAIT_LEADER_ANTIQUES_AND_PARKS

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_T_ROOSEVELT',				'AGENDA_CULTURED',				34);

-- LEADER_T_ROOSEVELT
-- LEADER_T_ROOSEVELT_ROUGHRIDER

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_T_ROOSEVELT', 'TRAIT_LEADER_CULTURAL_MAJOR_CIV');

-- Bring over
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RooseveltWonders',      'TRAIT_AGENDA_BULL_MOOSE', 'Buildings'),
('RooseveltTechs',        'TRAIT_AGENDA_BULL_MOOSE', 'Technologies'),
('RooseveltCivics',       'TRAIT_AGENDA_BULL_MOOSE', 'Civics'),
('RooseveltUnits',        'TRAIT_AGENDA_BULL_MOOSE', 'Units');

-- New
INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('RooseveltAltYields'),
('RooseveltAltPseudoYields'),
('RooseveltAltSettlement'),
('RooseveltAltDistricts');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RooseveltAltYields', 'TRAIT_AGENDA_BULL_MOOSE', 'Yields'),
('RooseveltAltPseudoYields', 'TRAIT_AGENDA_BULL_MOOSE', 'PseudoYields'),
('RooseveltAltSettlement',       'TRAIT_AGENDA_BULL_MOOSE', 'PlotEvaluations'),
('RooseveltAltDistricts', 'TRAIT_AGENDA_BULL_MOOSE', 'Districts');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RooseveltAltYields', 'YIELD_PRODUCTION', 1, -5),
('RooseveltAltYields', 'YIELD_CULTURE', 1, 20),
('RooseveltAltYields', 'YIELD_SCIENCE', 1, 2),
('RooseveltAltYields', 'YIELD_FAITH', 1, -3),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -40),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 15),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 12),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 9),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 11), -- potential DP Victory
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -90),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, -20),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 70), -- extra
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 12),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 30), -- Film Studio
('RooseveltAltPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 60),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 15),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 10),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -20), -- pvs -50, too low when improved tiles get +2 science / culture
('RooseveltAltPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 15),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 50), -- film studio combo + national parks
('RooseveltAltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 8), -- pvs 17
('RooseveltAltDistricts', 'DISTRICT_THEATER', 1, 0),
('RooseveltAltDistricts', 'DISTRICT_PRESERVE', 1, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('RooseveltAltSettlement', 'Total Yield', 0, -1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('RooseveltAltSettlement', 'Total Yield', 0, 1, 'YIELD_SCIENCE', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('RooseveltAltSettlement', 'Total Yield', 0, 1, 'YIELD_CULTURE', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('RooseveltAltSettlement', 'Total Yield', 0, 1, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'); -- 1

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('RooseveltAltSettlement', 'Specific Terrain', 0, 6, 'TERRAIN_GRASS_MOUNTAIN', NULL),
('RooseveltAltSettlement', 'Specific Terrain', 0, 6, 'TERRAIN_PLAINS_MOUNTAIN', NULL),
('RooseveltAltSettlement', 'Specific Feature', 0, 6, 'FEATURE_VOLCANO', NULL);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'RooseveltAltSettlement', 0, 4, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES' 
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true"

-- MENELIK / ETHIOPIA

-- Civ already has faith yield 20


INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_MENELIK', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('MenelikYields'),
('MenelikWonders'),
('MenelikTechs'), 
('MenelikCivics'),
('MenelikPseudoYields'),
('MenelikUnitBuilds'),
('MenelikSettlement'),
('MenelikUnits'),
('MenelikAlliances');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('MenelikYields',      'TRAIT_LEADER_MENELIK', 'Yields'),
('MenelikWonders',      'TRAIT_LEADER_MENELIK', 'Buildings'),
('MenelikTechs',        'TRAIT_LEADER_MENELIK', 'Technologies'),
('MenelikCivics',       'TRAIT_LEADER_MENELIK', 'Civics'),
('MenelikPseudoYields', 'TRAIT_LEADER_MENELIK', 'PseudoYields'),
('MenelikUnitBuilds',   'TRAIT_LEADER_MENELIK', 'UnitPromotionClasses'),
('MenelikSettlement',   'TRAIT_LEADER_MENELIK', 'PlotEvaluations'),
('MenelikUnits',   		'TRAIT_LEADER_MENELIK', 'Units'),
('MenelikAlliances',    'TRAIT_LEADER_MENELIK', 'Alliances');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MenelikYields',      'YIELD_FAITH', 						   1, 25),
('MenelikYields',      'YIELD_GOLD', 						   1, 15),
('MenelikYields',      'YIELD_RH_SPREAD_RELIGION', 			   1, 30),
('MenelikWonders', 'BUILDING_HAGIA_SOPHIA', 		 		   1, 0), -- cheaper religious
('MenelikWonders', 'BUILDING_COLOSSUS',    			 		   1, 0), -- TRs
('MenelikTechs', 'TECH_CASTLES', 					  		   1, 0), -- oromo cav
('MenelikCivics', 'CIVIC_DRAMA_POETRY', 			  		   1, 0), -- Rock-Hewn
('MenelikCivics', 'CIVIC_FOREIGN_TRADE', 			  		   1, 0), -- traders
('MenelikPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',    		   1, 35), -- Rock-Hewn Church + faith
('MenelikPseudoYields', 'PSEUDOYIELD_UNIT_TRADE',     		   1, 35), -- traders
('MenelikPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY',     	   1, 30),
('MenelikPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST',      1, 40), -- Can Purchase with Faith and Buildings
('MenelikPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',      	   1, 40),
('MenelikUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 		   1, 6),
('MenelikAlliances', 'ALLIANCE_RELIGIOUS', 		       		   1, 0),
('MenelikAlliances', 'ALLIANCE_CULTURAL',  			   		   1, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MenelikUnits', 'UNIT_ETHIOPIAN_OROMO_CAVALRY', 		1, 15);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('MenelikSettlement', 'Inner Ring Yield', 			0, 3, 'YIELD_PRODUCTION', 			'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('MenelikSettlement', 'Fresh Water', 				0, -2, NULL, 						'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'), 
('MenelikSettlement', 'Coastal', 					0, -4, NULL,						'LOC_SETTLEMENT_RECOMMENDATION_COAST'),

('MenelikSettlement', 'Resource Class', 			0, 1, 'RESOURCECLASS_BONUS',     'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Faith
('MenelikSettlement', 'Specific Resource', 		    0, 3, 'RESOURCE_HORSES', 				'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'), -- 3
('MenelikSettlement', 'Resource Class', 			0, 2, 'RESOURCECLASS_LUXURY',    'LOC_SETTLEMENT_RECOMMENDATION_LUXURY_RESOURCES'), -- 2
('MenelikSettlement', 'Specific Terrain', 			0, 10, 'TERRAIN_GRASS_HILLS',							 NULL),
('MenelikSettlement', 'Specific Terrain', 			0, 10, 'TERRAIN_PLAINS_HILLS', 							 NULL),
('MenelikSettlement', 'Specific Terrain', 			0, 2, 'TERRAIN_TUNDRA_HILLS',							 NULL);


/*
		<Row ListType="PreferHills" Item="Inner Ring Yield" Favored="false" Value="1" StringVal="YIELD_PRODUCTION" TooltipString="LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD"/>
    <Row ListType="MinorCivDistricts" Item="DISTRICT_DIPLOMATIC_QUARTER" Favored="false"/>
*/


UPDATE AiLists
SET LeaderType = NULL, AgendaType = 'TRAIT_AGENDA_ETHIOPIAN_HIGHLANDS'
WHERE ListType = 'PreferHills' AND LeaderType = 'AGENDA_ETHIOPIAN_HIGHLANDS';

-- KUBLAI_KHAN_MONGOLIA / MONGOLIA -- TRAIT_LEADER_KUBLAI

-- China TRAIT_LEADER_KUBLAI


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('KublaiMongoliaTechs'), 
('KublaiMongoliaPseudoYields'),
('KublaiMongoliaUnitBuilds');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KublaiMongoliaTechs',        'TRAIT_LEADER_KUBLAI_MONGOLIA', 'Technologies'),
('KublaiMongoliaPseudoYields', 'TRAIT_LEADER_KUBLAI_MONGOLIA', 'PseudoYields'),
('KublaiMongoliaUnitBuilds',   'TRAIT_LEADER_KUBLAI_MONGOLIA', 'UnitPromotionClasses');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KublaiMongoliaTechs', 'TECH_STIRRUPS', 1, 0),
('KublaiMongoliaTechs', 'TECH_HORSEBACK_RIDING', 1, 0),
('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 15),
('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 14),
('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 15),
--('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 1),
('KublaiMongoliaUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 15);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 50);

/*
		<Row ListType="KublaiKhanPseudoYieldPreferences" Item="PSEUDOYIELD_UNIT_TRADE" Value="50"/>
		<Row ListType="KublaiKhanYieldPreferences" Item="YIELD_GOLD" Value="20"/>
*/


INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_LADY_SIX_SKY', 'TRAIT_LEADER_DEFENSIVE');

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_LADY_SIX_SKY', 'TRAIT_LEADER_RH_UNQ_IMPROVEMENT');


-- LADY_SIX_SKY / MAYA

INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	
('DISTRICT_OBSERVATORY', 	'Rh_Gov_Grass_Mountain'), -- -1 Per 2 Mountains
('DISTRICT_OBSERVATORY', 	'Rh_Gov_Plains_Mountain'),
('DISTRICT_OBSERVATORY', 	'Rh_Gov_Tundra_Mountain'),
('DISTRICT_OBSERVATORY', 	'Rh_Gov_Desert_Mountain'),

('DISTRICT_OBSERVATORY', 	'Rh_Seowon_City_Centre_Negative'), -- -2 City Centre

('DISTRICT_OBSERVATORY', 	'Rh_Mayan_Resource'),

('DISTRICT_OBSERVATORY', 	'Rh_Seowon_Plains'),
('DISTRICT_OBSERVATORY', 	'Rh_Seowon_Grass'),
('DISTRICT_OBSERVATORY', 	'Rh_Seowon_Coast');








INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('LadySixSkyWonders'),
('LadySixSkyTechs'), 
('LadySixSkyCivics'),
('LadySixSkyDistricts'),
('LadySixSkyPseudoYields'),
('LadySixSkyUnitBuilds'),
('LadySixSkyAlliances'),

('MayanImprovements'),

('LadySixSkyDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('LadySixSkyWonders',      'TRAIT_LEADER_MUTAL', 'Buildings'),
('LadySixSkyTechs',        'TRAIT_LEADER_MUTAL', 'Technologies'),
('LadySixSkyCivics',       'TRAIT_LEADER_MUTAL', 'Civics'),
('LadySixSkyDistricts',    'TRAIT_LEADER_MUTAL', 'Districts'),
('LadySixSkyPseudoYields', 'TRAIT_LEADER_MUTAL', 'PseudoYields'),
('LadySixSkyUnitBuilds',   'TRAIT_LEADER_MUTAL', 'UnitPromotionClasses'),
('LadySixSkyAlliances',    'TRAIT_LEADER_MUTAL', 'Alliances'),

('MayanImprovements',    'TRAIT_LEADER_MUTAL', 'Improvements'),

('LadySixSkyDiplomacy',    'TRAIT_LEADER_MUTAL', 'DiplomaticActions');

-- Todo improvement plantation

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LadySixSkyDistricts', 'DISTRICT_AQUEDUCT', 1, 100), -- +4 Housing in every city
('LadySixSkyDistricts', 'DISTRICT_OBSERVATORY', 1, 80), -- just to make sure

('MayanObservatory', 'YIELD_FOOD', 		1, 25), -- bigger cities, farms
('MayanObservatory', 'YIELD_PRODUCTION', 1, 10), -- industrial zones by aqueducts, more production

('MayanEmpire', 'Foreign Continent', 0, -7),
--('MayanEmpire', 'Nearest Friendly City', 0, -6), -- Much more compact

--		<Row ListType="CompactEmpire" Item="Nearest Friendly City" Favored="false" Value="-5"/> seperate civ and leader
-- Def Fresh water -20, luxury +3

('LadySixSkyWonders', 'BUILDING_CASA_DE_CONTRATACION', 0, 0), 
('LadySixSkyWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 40), -- plantations
('LadySixSkyWonders', 'BUILDING_COLOSSEUM', 	1, 200),

('LadySixSkyWonders', 'BUILDING_GOV_TALL', 1, 900), 
('LadySixSkyWonders', 'BUILDING_GOV_WIDE', 0, -100), 

('LadySixSkyTechs', 'TECH_WRITING', 1, 100), -- Observatory
('LadySixSkyTechs', 'TECH_ARCHERY', 1, 100), -- unique unit

('LadySixSkyTechs', 'TECH_POTTERY', 	1, 100), -- For Plantations / Observatory
('LadySixSkyTechs', 'TECH_IRRIGATION', 1, 100), -- plantations for Observatory adj


--('LadySixSkyCivics', 'CIVIC_DRAMA_POETRY', 1, 0), -- for Great Library
('LadySixSkyCivics', 'CIVIC_GAMES_RECREATION', 1, 0), -- BUILDING_COLOSSEUM
('LadySixSkyPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 50), -- farms & plantations
('LadySixSkyPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 0, -30), -- Chopping for Farms
('LadySixSkyPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 22),
('LadySixSkyPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 75), -- Turtle, pvs 25, 40
('LadySixSkyPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 10),

('LadySixSkyPseudoYields', 'PSEUDOYIELD_WONDER', 1, 20),
('LadySixSkyPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, -30), -- discourage CASA_DE_CONTRATACION
('LadySixSkyPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 35), --BUILDING_COLOSSEUM / growth
('LadySixSkyPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 45), -- Plantations
('LadySixSkyPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -20), -- Test

('MayanImprovements', 'IMPROVEMENT_FARM', 		1, 100), -- +1 Housing, +1 Production and Gold Next to an Observatory
('MayanImprovements', 'IMPROVEMENT_PLANTATION', 1, 100), -- +2 Science Next to Observatory

('LadySixSkyUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 10),
('LadySixSkyUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, -15), -- pvs -23
('LadySixSkyAlliances', 'ALLIANCE_RESEARCH', 1, 0),
('LadySixSkyDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0),
('LadySixSkyDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE', 1, 0),
('LadySixSkyDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 0, 0),
('LadySixSkyDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR', 0, 0); -- Agenda

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('MayanEmpire', 'Fresh Water', 				0, -30, NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'), -- base. 30
('MayanEmpire', 'Total Yield', 			0, 1, 'YIELD_FOOD', 			'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1, Farm Observatory
('MayanEmpire', 'Inner Ring Yield',			0, 1, 'YIELD_FOOD',    			'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('MayanEmpire', 'Inner Ring Yield',			0, 1, 'YIELD_PRODUCTION',   	 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('MayanEmpire', 'Specific Resource', 		0, 5, 'RESOURCE_BANANAS', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_COCOA', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_COFFEE', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_COTTON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_SPICES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_SUGAR', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_TEA', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_TOBACCO', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Resource Class', 			0, 8, 'RESOURCECLASS_LUXURY',    'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'), -- base 4, adj and plantations for observatory
('MayanEmpire', 'Coastal', 					0, -4, NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_COAST'); -- base 13


-- Don't Build (Portugal DLC, part of NFP anyway)
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LadySixSkyWonders', 'BUILDING_TORRE_DE_BELEM', 0, 0);

-- Already have Yield Science 25
UPDATE AiFavoredItems
SET Favored = 1
WHERE ListType = 'MayanObservatory' AND Item = 'YIELD_SCIENCE';

UPDATE AiFavoredItems SET Value = 50 WHERE ListType = 'MayanObservatory' AND Item = 'YIELD_SCIENCE'; -- def 25, 40

-- BASIL / BYZANTIUM

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_BASIL', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_BASIL', 'TRAIT_LEADER_EXPANSIONIST');

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_BASIL', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV');

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_BASIL', 'TRAIT_LEADER_RH_CAV');

-- Exclusive Zealot

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_BASIL',				'AGENDA_DEVOUT',				30);




INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('BasilDistricts'),
('ByzantiumWonders'),
('BasilTechs'), 
('BasilCivics'),
('BasilPseudoYields'),
('ByzantiumYields'),
--('BasilYields'),
('BasilUnitBuilds'),
('BasilUnits'),
('BasilOps'),
('ByzantiumUnits'),
('BasilImprovements'),
('ByzantiumDiplomacy'),
('BasilSettlement');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('BasilDistricts',      'TRAIT_LEADER_BASIL', 'Districts'),
('ByzantiumWonders',      'TRAIT_CIVILIZATION_BYZANTIUM', 'Buildings'),
('BasilTechs',        'TRAIT_LEADER_BASIL', 'Technologies'),
('BasilCivics',       'TRAIT_LEADER_BASIL', 'Civics'), -- Non defined at all by default
('ByzantiumYields', 'TRAIT_CIVILIZATION_BYZANTIUM', 'Yields'),
('BasilPseudoYields', 'TRAIT_LEADER_BASIL', 'PseudoYields'),
('BasilUnitBuilds',   'TRAIT_LEADER_BASIL', 'UnitPromotionClasses'),
('BasilUnits',   'TRAIT_LEADER_BASIL', 'Units'),
('BasilOps',   'TRAIT_LEADER_BASIL', 'AiOperationTypes'),
('ByzantiumUnits',   'TRAIT_CIVILIZATION_BYZANTIUM', 'Units'),
('BasilImprovements',   'TRAIT_LEADER_BASIL', 'Improvements'),
('ByzantiumDiplomacy',    'TRAIT_CIVILIZATION_BYZANTIUM', 'DiplomaticActions'),
('BasilSettlement',   'TRAIT_LEADER_BASIL', 'PlotEvaluations');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('BasilYields', 'YIELD_FAITH', 1, 40), -- pvs 8, 11, 14, 25 aggressive -7
('ByzantiumYields', 'YIELD_RH_JUST_WAR',   					1, 1500), -- Test, 1900, 9000
('ByzantiumYields', 'YIELD_RH_SPREAD_RELIGION',   			1, 1500), -- pvs 800

('ByzantiumYields', 'YIELD_RH_FACSISM',   					1, 950),
('ByzantiumYields', 'YIELD_RH_DEMOCRACY',   				0, -50),

('ByzantiumYields', 'YIELD_SCIENCE',   						1, 20),
('ByzantiumYields', 'YIELD_FAITH',   						1, 250), -- pvs 150

('ByzantiumYields', 'YIELD_RH_HAPPINESS_BUILDING',   		1, 975), -- For Each Building Constructed

--('ByzantiumYields', 'YIELD_RH_MILITARY_ADVISORY_BUFF',   		1, 150), -- +5 for Cav (often votes for it, just to increase existing chance - lower so can still can do unit debuff in certain situations)

--('ByzantiumYields', 'YIELD_GOLD',   					1, 7), -- pvs 7

('BasilFavoredYields', 'YIELD_SCIENCE', 1, 3),
('BasilFavoredYields', 'YIELD_CULTURE', 1, 3), -- Tagma Rush

--('BasilFavoredYields', 'YIELD_GOLD', 0, -5),
--('BasilFavoredYields', 'YIELD_PRODUCTION', 1, 1),
--
('BasilDistricts', 'DISTRICT_HIPPODROME', 1, 200),
('BasilDistricts', 'DISTRICT_HOLY_SITE', 1, 200), -- pvs 45
('BasilDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 0, -200),

('ByzantiumWonders', 'BUILDING_HAGIA_SOPHIA', 1, 900), -- +1 spread / BBG cheaper religious units
('ByzantiumWonders', 'BUILDING_MONT_ST_MICHEL', 1, 0), -- Martyr Ability good for Combat
('ByzantiumWonders', 'BUILDING_BARRACKS', 0, -20), -- Ovs not lol
('ByzantiumWonders', 'BUILDING_STABLE', 1, 90), -- yes
('ByzantiumWonders', 'BUILDING_TEMPLE', 1, 200), -- Apostles
('ByzantiumWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 100), -- Normally spawns by lots of pastures

('ByzantiumWonders', 'BUILDING_MOSQUE', 1, 500), 
('ByzantiumWonders', 'BUILDING_MONUMENT', 1, 90), 
('ByzantiumWonders', 'BUILDING_GOV_WIDE', 1, 90), 
('ByzantiumWonders', 'BUILDING_GOV_FAITH', 1, 9000), 
('ByzantiumWonders', 'BUILDING_GOV_SPIES', 0, -100), 
('ByzantiumWonders', 'BUILDING_GOV_CITYSTATES', 0, -100), 

('BasilTechs', 'TECH_ASTROLOGY', 1, 0),
('BasilTechs', 'TECH_THE_WHEEL', 1, 0),
('BasilTechs', 'TECH_HORSEBACK_RIDING', 1, 0),
('BasilTechs', 'TECH_BUTTRESS', 1, 0), -- Hagia Sophia
('BasilTechs', 'TECH_BALLISTICS', 1, 0), -- Cuirassier
('BasilTechs', 'TECH_COMBUSTION', 1, 0),
('BasilTechs', 'TECH_COMPOSITES', 1, 0), -- Modern Armour

('BasilCivics', 'CIVIC_MYSTICISM',  1, 0),
('BasilCivics', 'CIVIC_GAMES_RECREATION',  1, 0),
('BasilCivics', 'CIVIC_DIVINE_RIGHT', 1, 0), -- TAGMA UNIT, lol surprised this is not favoured already
('BasilCivics', 'CIVIC_THEOLOGY', 1, 0), -- Temples
('BasilCivics', 'CIVIC_DRAMA_POETRY', 1, 0), -- Needed for Theology
('BasilCivics', 'CIVIC_MYSTICISM', 1, 0), -- Needed for Theology
('BasilCivics', 'CIVIC_CHIVALRY', 1, 0), -- Production towards Industrial era and earlier cav (tagmas)

('BasilPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 500), -- (pvs 20, 25, 30, 55, 120, 135, 175 extra +1 great prophet point from holy sites already), 200, 350
('BasilPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 30), -- Try and keep a tech adv
('BasilPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 15), -- Gold

('BasilPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS',  1, 110), -- pvs 20, 35, 40, 42, 50, 75
--('BasilPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',  1, 7),
('BasilPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  1, 4), -- pvs 5
('BasilPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 3), -- pvs 5
('BasilPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 980), -- pvs 50, 90, 110, 200, 300
('BasilPseudoYields', 'PSEUDOYIELD_CITY_BASE', 		  1, 9000), -- it's Basil, 120
('BasilPseudoYields', 'PSEUDOYIELD_CITY_POPULATION',  1, 6000),

('BasilPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',  1, -100), -- pvs 6, -50, -55
('BasilPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES',  	   1, -100), -- Remember aggressive trait -- pvs -35, 65
('BasilPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 		   1, 14), -- pvs 8
('BasilPseudoYields', 'PSEUDOYIELD_INFLUENCE', 			   1, 30),
('BasilPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR',      1, 38), -- World Religion

('BasilPseudoYields', 'PSEUDOYIELD_HAPPINESS',  1, 450), -- pvs 0, 27, 150
('BasilPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS',  	   1, -7), 
('BasilPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',  1, -95), 

('BasilPseudoYields', 'PSEUDOYIELD_WONDER',  1, 10), 
('BasilPseudoYields', 'PSEUDOYIELD_DISTRICT',  1, 20), 

('BasilOps', 		'OP_RH_BASIL_ATTACK',  1, 3), 
--('BasilOps', 		'CITY_ASSAULT',  		1, -1), 


('BasilUnitBuilds', 'PROMOTION_CLASS_ROCK_BAND', 	0, -20),
('BasilUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 1, 50), -- pvs 17, 21, 22, 25, 30
('BasilUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 0, -12),
--('BasilUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 2),
--('BasilUnitBuilds', 'PROMOTION_CLASS_MELEE', 0, -10),
('BasilUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, 5), -- To trigger city attack, pvs 4, 6, 8, now 0, 5
('BasilUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 1, 5), -- pvs 3, 6
('BasilUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 1, 9), -- pvs 10, 16, 15, 12
('ByzantiumDiplomacy', 'DIPLOACTION_DECLARE_HOLY_WAR', 1, 90),
--('ByzantiumDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 90),
('BasilImprovements',	'IMPROVEMENT_PASTURE',		1,		500),
('BasilImprovements', 'IMPROVEMENT_OIL_WELL', 1, 200),
('BasilImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 200),

('ByzantiumDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_CONVERT', 0, 0);

UPDATE AiFavoredItems SET Value = 50 WHERE ListType = 'BasilFavoredYields' AND Item = 'YIELD_FAITH'; -- def 33, 70, 75

--INSERT OR REPLACE INTO UnitAiInfos (UnitType, AiType) VALUES
--('UNIT_BYZANTINE_TAGMA', 'UNITTYPE_SIEGE_ALL');

-- test make TAGMA a siege_all unit because of basils walls bonus

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ByzantiumUnits',        'UNIT_BYZANTINE_DROMON', 	1, 20), -- pvs 15
('ByzantiumUnits',        'UNIT_APOSTLE', 			1, 90),
('ByzantiumUnits',        'UNIT_MISSIONARY', 		0, -150),
('ByzantiumUnits',        'UNIT_GURU', 				0, -50),
('ByzantiumUnits',        'UNIT_NATURALIST', 		0, -10),
('ByzantiumUnits',        'UNIT_WARRIOR_MONK', 		0, -35);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('BasilUnits',        'UNIT_TANK', 				1, 25),
('BasilUnits',        'UNIT_BYZANTINE_TAGMA', 	1, 50), -- pvs 30
('BasilUnits',        'UNIT_COURSER', 			0, -25), -- Tagma Similar Tech and Much Better
('BasilUnits',        'UNIT_MAN_AT_ARMS', 		0, -30),

('BasilUnits',        'UNIT_INFANTRY', 			0, -70),
('BasilUnits',        'UNIT_MODERN_ARMOR', 		1, 7);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('ByzantiumUnits', 'UNIT_ROCK_BAND', -20); -- pvs -20

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('BasilSettlement', 'Coastal', 0, -1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('BasilSettlement', 'Specific Resource', 0, 7, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('BasilSettlement', 'Inner Ring Yield', 0, 1, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- def 1
--('BasilSettlement', 'Total Yield',      0, 2, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('BasilSettlement', 'Specific Resource', 0, 12, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs favored 1


INSERT OR REPLACE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'BasilSettlement', 0, 1, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true", holy site adj

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_BUILDER', 'ERA_ANCIENT', 1, 'DISTRICT_HIPPODROME', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);





















-- Testing horses favoured = true (Scythia has favoured 1, val 12)

-- AMBIORIX / GAUL
-- 		<Row AgendaOne="AGENDA_AMBIORIX_ARMY" AgendaTwo="AGENDA_STANDING_ARMY"/>

--INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_AMBIORIX', 'TRAIT_LEADER_EXPANSIONIST'); -- tech prefs

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('AmbiorixTechs'),
('AmbiorixCivics'),
('AmbiorixYields'), 
('AmbiorixDistricts'),
('AmbiorixWonders'),
('AmbiorixPseudoYields'),
('AmbiorixSettlement'),
('AmbiorixScoutUses'),
('AmbiorixUnitBuilds');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('AmbiorixTechs',        'TRAIT_LEADER_AMBIORIX', 'Technologies'),
('AmbiorixCivics',       'TRAIT_LEADER_AMBIORIX', 'Civics'),
('AmbiorixYields',       'TRAIT_LEADER_AMBIORIX', 'Yields'),
('AmbiorixDistricts',       'TRAIT_LEADER_AMBIORIX', 'Districts'),
('AmbiorixWonders',       'TRAIT_LEADER_AMBIORIX', 'Buildings'),
('AmbiorixPseudoYields', 'TRAIT_LEADER_AMBIORIX', 'PseudoYields'),
('AmbiorixSettlement', 'TRAIT_LEADER_AMBIORIX', 'PlotEvaluations'),
('AmbiorixScoutUses', 'TRAIT_LEADER_AMBIORIX', 'AIScoutUses'),
('AmbiorixUnitBuilds',   'TRAIT_LEADER_AMBIORIX', 'UnitPromotionClasses');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AmbiorixYields',       'YIELD_PRODUCTION', 	1, 40),
('AmbiorixYields',       'YIELD_FOOD',      	1, 12), -- To help maintain decent pop cities
('AmbiorixYields',       'YIELD_SCIENCE', 		1, 7),
('AmbiorixYields',       'YIELD_RH_PRODUCTION', 	1, 95),

('AmbiorixYields',       'YIELD_RH_MAUS_H', 	1, 850),

('AmbiorixDistricts',     'DISTRICT_OPPIDUM', 	1, 90),
('AmbiorixDistricts',     'DISTRICT_AQUEDUCT', 	0, -20),
('AmbiorixDistricts',     'DISTRICT_CANAL', 	0, 0),
('AmbiorixDistricts',     'DISTRICT_HARBOR', 	0, 0),
--('AmbiorixDistricts',     'DISTRICT_DAM', 	0, 0),

-- Todo Anker Watt for Population

('AmbiorixTechs', 'TECH_MINING', 1, 0),
('AmbiorixTechs', 'TECH_BRONZE_WORKING', 1, 0),
('AmbiorixTechs', 'TECH_IRON_WORKING', 1, 0), -- Oppidum
--('AmbiorixTechs', 'TECH_ARCHERY', 1, 0),
('AmbiorixScoutUses', 'DEFAULT_LAND_SCOUTS', 1, 150), -- good settlement
('AmbiorixScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 0, -100),
('AmbiorixScoutUses', 'DEFAULT_NAVAL_SCOUTS',               0, -50),

('AmbiorixCivics', 'CIVIC_MILITARY_TRADITION',  1, 0), -- flanking bonus
('AmbiorixCivics', 'CIVIC_MERCENARIES', 1, 0),
('AmbiorixPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 12),
('AmbiorixPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT',  1, -20),
('AmbiorixPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',  1, 25),
('AmbiorixPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL',  0, -35),
('AmbiorixPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',  1, 15),
('AmbiorixPseudoYields', 'PSEUDOYIELD_WONDER',  1, -15),
--('AmbiorixPseudoYields', 'PSEUDOYIELD_INFLUENCE',  1, -10),

('AmbiorixPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',  1, 25), -- mines minor to districts, oppidum, food
('AmbiorixPseudoYields', 'PSEUDOYIELD_SETTLER',  	1, 30), -- Unique Unit and Early Combat Bonus
--('AmbiorixPseudoYields', 'PSEUDOYIELD_EXPLORER',  1, 15), -- Unique Unit is better

('AmbiorixPseudoYields', 'PSEUDOYIELD_GPP_GENERAL',  1, -8),
('AmbiorixPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 15), -- Unit Combat Adj, arms rush
--('AmbiorixPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5),
('AmbiorixUnitBuilds', 'PROMOTION_CLASS_MELEE', 1, 15),
('AmbiorixUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 15),
('AmbiorixUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 1, 10), -- Rams to Aid
('AmbiorixUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 1, 8);

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('AmbiorixSettlement',   'Specific Feature',        0, 10, 'FEATURE_VOLCANO',    'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
('AmbiorixSettlement', 'Coastal', 					0, -9, NULL,                'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('AmbiorixSettlement', 'Fresh Water', 				0, 3, NULL,             'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'),
('AmbiorixSettlement', 'Specific Resource', 		0, 8, 'RESOURCE_STONE',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Specific Resource', 		0, 8, 'RESOURCE_MARBLE',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Specific Resource', 		0, 8, 'RESOURCE_GYPSUM',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Specific Resource', 		0, 12, 'RESOURCE_IRON',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Specific Resource', 		0, 7, 'RESOURCE_NITER',  'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Inner Ring Yield', 			0, 2, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('AmbiorixSettlement', 'Total Yield', 				0, 2, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- Mines / Quarries
('AmbiorixSettlement', 'Specific Resource', 		0, 5, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'AmbiorixSettlement', 0, -1, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true"



DELETE FROM AgendaTraits WHERE AgendaType = 'AGENDA_AMBIORIX_ARMY' AND TraitType = 'TRAIT_LEADER_AGGRESSIVE_MILITARY';

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_LADY_TRIEU', 'TRAIT_LEADER_DEFENSIVE'); -- Historically very defensive

-- LADY_TRIEU / VIETNAM

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('LadyTrieuWonders'),
('LadyTrieuTechs'), 
('LadyTrieuCivics'),
('LadyTrieuDistricts'),
('LadyTrieuPseudoYields'),
('LadyTrieuYields'),
('LadyTrieuUnitBuilds'),
('LadyTrieuSettlement'),
('LadyTrieuDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('LadyTrieuWonders',      'TRAIT_LEADER_TRIEU', 'Buildings'),
('LadyTrieuTechs',        'TRAIT_LEADER_TRIEU', 'Technologies'),
('LadyTrieuCivics',       'TRAIT_LEADER_TRIEU', 'Civics'),
('LadyTrieuDistricts',    'TRAIT_LEADER_TRIEU', 'Districts'),
('LadyTrieuPseudoYields', 'TRAIT_LEADER_TRIEU', 'PseudoYields'),
('LadyTrieuYields',		  'TRAIT_LEADER_TRIEU', 'Yields'),
('LadyTrieuUnitBuilds',   'TRAIT_LEADER_TRIEU', 'UnitPromotionClasses'),
('LadyTrieuSettlement',   'TRAIT_LEADER_TRIEU', 'PlotEvaluations'),
('LadyTrieuDiplomacy',    'TRAIT_LEADER_TRIEU', 'DiplomaticActions');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LadyTrieuYields', 'YIELD_PRODUCTION', 1, -5),
('LadyTrieuYields', 'YIELD_CULTURE', 1, 8),
('LadyTrieuYields', 'YIELD_FAITH', 1, 5),
('LadyTrieuYields', 'YIELD_COMMUNISM', 1, 75),
('LadyTrieuWonders', 'BUILDING_CHICHEN_ITZA', 1, 0),
('LadyTrieuTechs',   'TECH_BRONZE_WORKING', 1, 0), 
('LadyTrieuCivics', 'CIVIC_DEFENSIVE_TACTICS', 1, 0), 
('LadyTrieuDistricts', 'DISTRICT_THANH', 1, 30), 
('LadyTrieuPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 950), -- pvs 80, 100, 175, 200
('LadyTrieuPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 0, -95), -- pvs -70, -75
('LadyTrieuPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 40),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_WONDER', 1, -25),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 2),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 5),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 3),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5),
('LadyTrieuUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 6), -- Defensive trait
('LadyTrieuUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 1, 6),
('LadyTrieuDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('LadyTrieuSettlement', 'Coastal', 			0, -1, 		 NULL, 			'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- coastal def +11 from base
('LadyTrieuSettlement', 'Specific Feature',  0, 3, 		'FEATURE_FOREST', 		'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
('LadyTrieuSettlement', 'Specific Feature',  0, 5, 		'FEATURE_JUNGLE', 		'LOC_SETTLEMENT_RECOMMENDATION_FEATURES');

/*
		<Row ListType="VietnamSettlePreferences" Item="Specific Feature" Favored="false" Value="2" StringVal="FEATURE_FOREST" TooltipString="LOC_SETTLEMENT_RECOMMENDATION_FEATURES"/>
		<Row ListType="VietnamSettlePreferences" Item="Specific Feature" Favored="false" Value="2" StringVal="FEATURE_JUNGLE" TooltipString="LOC_SETTLEMENT_RECOMMENDATION_FEATURES"/>
		<Row ListType="VietnamSettlePreferences" Item="Specific Feature" Favored="false" Value="2" StringVal="FEATURE_MARSH" TooltipString="LOC_SETTLEMENT_RECOMMENDATION_FEATURES"/>
*/

-- Gran Colombia

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SIMON_BOLIVAR', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SIMON_BOLIVAR', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SIMON_BOLIVAR', 'TRAIT_LEADER_MAD_EXPANSIONIST');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('SimonBolivarWonders'),
('SimonBolivarTechs'), 
('SimonBolivarCivics'),
('SimonBolivarPseudoYields'),
('SimonBolivarUnitBuilds'),
('SimonBolivarDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('SimonBolivarWonders',      'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'Buildings'),
('SimonBolivarTechs',        'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'Technologies'),
('SimonBolivarCivics',       'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'Civics'),
('SimonBolivarPseudoYields', 'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'PseudoYields'),
('SimonBolivarUnitBuilds',   'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'UnitPromotionClasses'),
('SimonBolivarDiplomacy',    'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'DiplomaticActions');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('SimonBolivarWonders', 'BUILDING_JEBEL_BARKAL', 1, 0), -- Iron
('SimonBolivarWonders', 'BUILDING_STONEHENGE', 0, 0), 
('SimonBolivarWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 0),
('SimonBolivarWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 90), -- Seems fun
('SimonBolivarTechs', 'TECH_MILITARY_SCIENCE', 1, 0), -- unique unit
('SimonBolivarCivics', 'CIVIC_MERCANTILISM', 1, 0), -- Hacienda

('SimonBolivarPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 			1, 10), -- Hacienda
('SimonBolivarPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 	1, 10),
('SimonBolivarPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 	1, 10),
('SimonBolivarPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 		1, -3),
('SimonBolivarPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 			1, 7), -- Ease of Exploration
('SimonBolivarUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 		1, 5), -- Llanero
('SimonBolivarUnitBuilds', 'PROMOTION_CLASS_MELEE', 		1, 			3),
('SimonBolivarUnitBuilds', 'PROMOTION_CLASS_SIEGE', 		1, 			7), -- pvs 10
('SimonBolivarUnitBuilds', 'GREAT_PERSON_CLASS_COMANDANTE_GENERAL', 1, 12),
('SimonBolivarDiplomacy', 'DIPLOACTION_DECLARE_FRIENDSHIP', 		0, 0), 
('SimonBolivarDiplomacy', 'DIPLOACTION_DENOUNCE', 					1, 0),
--('SimonBolivarDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 		1, 80),
('SimonBolivarDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 		1, 0),
('SimonBolivarDiplomacy', 'DIPLOACTION_DECLARE_FORMAL_WAR', 		1, 0);

