
-- AUTHOR: ROMANHOLIDAY


-- SALADIN / ARABIA

REPLACE INTO AiListTypes (ListType) VALUES
('SaladinYields'),
('SaladinPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('SaladinYields',       'TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH', 'Yields'),
('SaladinPseudoYields', 'TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH', 'PseudoYields');
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('SaladinYields', 'YIELD_FAITH', 1, 55), -- pvs 16, 21
('SaladinYields', 'YIELD_SCIENCE', 1, 20),
('SaladinYields', 'YIELD_RH_SPREAD_RELIGION', 1, 50), -- Extra Science and Tier 3 Building
('SaladinYields', 'YIELD_RH_HAPPINESS_BUILDING', 0, -50),

('SaladinTechs', 'TECH_WRITING', 1, 0), 

('SaladinWonders', 'BUILDING_LIBRARY', 1, 900), 
('SaladinWonders', 'BUILDING_MADRASA', 1, 900), 

('SaladinWonders', 'BUILDING_SHRINE', 1, 900), 
('SaladinWonders', 'BUILDING_TEMPLE', 1, 900), 

('SaladinWonders', 'BUILDING_CATHEDRAL', 1, 900), 
('SaladinWonders', 'BUILDING_GURDWARA', 1, 900), 
('SaladinWonders', 'BUILDING_MEETING_HOUSE', 1, 900), 
('SaladinWonders', 'BUILDING_MOSQUE', 1, 900), 
('SaladinWonders', 'BUILDING_PAGODA', 1, 900), 
('SaladinWonders', 'BUILDING_SYNAGOGUE', 1, 900), 
('SaladinWonders', 'BUILDING_WAT', 1, 900), 

('SaladinPseudoYields', 'PSEUDOYIELD_HAPPINESS', 0, -10), 
('SaladinPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 30), 
('SaladinPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 75), -- Extra Science
('SaladinPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 40), -- pvs -8, 15
('SaladinPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 40); -- Unique Uni replacement




-- Todo Double adj card for Madrasa which gets faith equal to campus adj



-- CLEOPATRA / EGYPT

--INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CLEOPATRA', 'TRAIT_LEADER_DEFENSIVE');

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CLEOPATRA', 'TRAIT_LEADER_RH_TRADE');

-- Likes civilizations with powerful militaries, and will try to ally with them to avoid conflict. Dislikes civilizations with weak militaries. -- cannot modify agenda

REPLACE INTO AiListTypes (ListType) VALUES
('CleopatraDiplomacy'),
('CleopatraYields'),
('CleopatraPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('CleopatraDiplomacy', 'TRAIT_LEADER_MEDITERRANEAN', 'DiplomaticActions'),
('CleopatraYields', 'TRAIT_LEADER_MEDITERRANEAN', 'Yields'),
('CleopatraPseudoYields', 'TRAIT_LEADER_MEDITERRANEAN', 'PseudoYields');
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CleopatraYields', 'YIELD_GOLD', 1, 10), -- RH trade
('CleopatraYields', 'YIELD_FOOD', 1, 20), -- Bigger cities, neighbours more likely to trade
('CleopatraYields', 'YIELD_RH_CITY_CENTRE', 1, 15),

('CleopatraPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 15), -- more friendly, double alliance points
('CleopatraPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 15), -- conquers undefended cities
('CleopatraPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 10),
('CleopatraPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 20),
('CleopatraPseudoYields', 'PSEUDOYIELD_DISTRICT', 	1, 10), -- Trade Route Yields
('CleopatraPseudoYields', 'PSEUDOYIELD_INFLUENCE', 	1, 10), -- Trade Route Yields

('CleopatraPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 0, -30),

('CleopatraDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0),
('CleopatraDiplomacy', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 0),
('CleopatraDiplomacy', 'DIPLOACTION_ALLIANCE_ECONOMIC', 1, 0),
('CleopatraDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE', 1, 0),

('CleopatraPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 8),
('CleopatraPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 50);

REPLACE INTO AiListTypes (ListType) VALUES
('EgyptUnits'),
('EgyptTechs'),
('EgyptCivics'),
('EgyptDistricts'),
('EgyptYields'),
('EgyptWonders'),
('EgyptVictories'),
('EgyptPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('EgyptUnits',        'TRAIT_CIVILIZATION_ITERU', 'Units'),
('EgyptTechs',        'TRAIT_CIVILIZATION_ITERU', 'Technologies'),
('EgyptCivics',       'TRAIT_CIVILIZATION_ITERU', 'Civics'),
('EgyptDistricts',    'TRAIT_CIVILIZATION_ITERU', 'Districts'),
('EgyptYields',       'TRAIT_CIVILIZATION_ITERU', 'Yields'),
('EgyptWonders',       'TRAIT_CIVILIZATION_ITERU', 'Buildings'),
('EgyptVictories',       'TRAIT_CIVILIZATION_ITERU', 'Strategies'),
('EgyptPseudoYields', 'TRAIT_CIVILIZATION_ITERU', 'PseudoYields');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EgyptUnits', 'UNIT_EGYPTIAN_CHARIOT_ARCHER', 1, 30),
('EgyptUnits', 'UNIT_HEAVY_CHARIOT', 0, -30), -- pvs -70
('EgyptTechs', 			'TECH_WRITING', 1, 0), -- Eta
('EgyptTechs', 			'TECH_BUTTRESS', 0, 0),
('EgyptTechs', 			'TECH_FLIGHT', 1, 0),

('EgyptCivics', 'CIVIC_CRAFTSMANSHIP', 1, 0),
('EgyptYields', 'YIELD_PRODUCTION', 1, 9),
('EgyptYields', 'YIELD_CULTURE', 1, 10),
('EgyptYields', 'YIELD_SCIENCE', 1, -8),
('EgyptYields', 'YIELD_RH_WONDER',	  	  1, 50),
('EgyptYields', 'YIELD_RH_CHARIOT',	  	  1, 1500),

('EgyptYields', 'YIELD_RH_R_GODDESS', 1, 750),

('EgyptWonders', 	'BUILDING_GREAT_BATH', 0, -100),



('EgyptPseudoYields', 'PSEUDOYIELD_DISTRICT', 	1, 8), -- 15% production by rivers
('EgyptPseudoYields', 'PSEUDOYIELD_WONDER', 1, 150), -- base 0.49 from 2 -- More with Ramses, pvs 110
('EgyptPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 35),
('EgyptPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 10); -- sphinx

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_CLEOPATRA',				'AGENDA_GOSSIP',						15);




INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'EgyptWonders', 'BUILDING_ETEMENANKI', 1, 500 -- fpls
FROM Types WHERE Type = 'BUILDING_ETEMENANKI';


REPLACE INTO AiFavoredItems (ListType, Item, Favored)
SELECT 'EgyptDistricts', 'DISTRICT_DAM', 0
WHERE EXISTS (SELECT 1 FROM Districts WHERE DistrictType = 'DISTRICT_DAM');


-- Egypt Chariot Rush Ancient / Classical

/*
INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',    				NULL, 2);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',    		 'Is Not Major', 1);



INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction,  ThresholdValue) VALUES
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',      						'Has Great Works',	 99);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction) VALUES
--('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',    						 'Is Ancient'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',    						 'Is Classical');




INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_Egypt_Ancient_Classical_Comm'),
('RH_Egypt_Ancient_Classical_Diplomacy'),
('RH_Egypt_Ancient_Classical_Civics'),
('RH_Egypt_Ancient_Classical_Techs'),
('RH_Egypt_Ancient_Classical_Buildings'),
('RH_Egypt_Ancient_Classical_Projects'),
('RH_Egypt_Ancient_Classical_Yields'),
('RH_Egypt_Ancient_Classical_PseudoYields'),
('RH_Egypt_Ancient_Classical_Operations'),
('RH_Egypt_Ancient_Classical_Settlement'),
('RH_Egypt_Ancient_Classical_Savings'),
('RH_Egypt_Ancient_Classical_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_Egypt_Ancient_Classical_Comm',   			'Commemorations'),
('RH_Egypt_Ancient_Classical_Diplomacy',   		'DiplomaticActions'),
('RH_Egypt_Ancient_Classical_Civics',   			'Civics'),
('RH_Egypt_Ancient_Classical_Techs',   			'Technologies'),
('RH_Egypt_Ancient_Classical_Buildings',   		'Buildings'),
('RH_Egypt_Ancient_Classical_Projects',   		'Projects'),
('RH_Egypt_Ancient_Classical_Yields',   			'Yields'),
('RH_Egypt_Ancient_Classical_PseudoYields',   	'PseudoYields'),
('RH_Egypt_Ancient_Classical_Operations', 		'AiOperationTypes'),
('RH_Egypt_Ancient_Classical_Settlement', 		'PlotEvaluations'),
('RH_Egypt_Ancient_Classical_Savings', 			'SavingTypes'),
('RH_Egypt_Ancient_Classical_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Comm'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Diplomacy'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Civics'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Techs'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Buildings'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Projects'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Yields'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_PseudoYields'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Operations'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Settlement'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Savings'),
('RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',   'RH_Egypt_Ancient_Classical_Scouts');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_Egypt_Ancient_Classical_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 							1, 100),
('RH_Egypt_Ancient_Classical_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 				1, -50),
('RH_Egypt_Ancient_Classical_PseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 						1, -15),

('RH_Egypt_Ancient_Classical_PseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 							1, 10),
('RH_Egypt_Ancient_Classical_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 				1, 10),
('RH_Egypt_Ancient_Classical_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 					1, 10),

('RH_Egypt_Ancient_Classical_Yields', 'YIELD_RH_CAVARLY', 										1, 600);





REPLACE INTO AiFavoredItems (ListType, Item,  Value) VALUES
('EgyptVictories', 'RH_STRATEGY_EGYPT_ANCIENT_CLASSICAL',  -1);




*/











-- MVEMBA / KONGO

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_MVEMBA', 'TRAIT_LEADER_RH_RELIC');


REPLACE INTO AiListTypes (ListType) VALUES
('KongoDistricts'),
('KongoYields'),
('MvembaYields'),
('KongoSettlement'),
('KongoWonders'),
('MvembaPseudoYields'),
('MvembaCommemorations'),
('KongoPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KongoDistricts',    'TRAIT_CIVILIZATION_MBANZA', 'Districts'),
('KongoYields',       'TRAIT_CIVILIZATION_NKISI', 'Yields'),
('MvembaYields',       'TRAIT_LEADER_RELIGIOUS_CONVERT', 'Yields'),
('KongoSettlement', 'TRAIT_CIVILIZATION_NKISI', 'PlotEvaluations'),
('KongoWonders', 'TRAIT_CIVILIZATION_NKISI', 	'Buildings'),
('MvembaPseudoYields',       'TRAIT_LEADER_RELIGIOUS_CONVERT', 'PseudoYields'),
('MvembaCommemorations',       'TRAIT_LEADER_RELIGIOUS_CONVERT', 'Commemorations'),

('KongoPseudoYields', 'TRAIT_CIVILIZATION_NKISI', 'PseudoYields');

-- TRAIT_LEADER_RELIGIOUS_CONVERT

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KongoDistricts',       'DISTRICT_MBANZA', 1, 0),
('KongoYields',       'YIELD_CULTURE', 1, 11),
('KongoYields',       'YIELD_FOOD',    1, 15), -- MBANZA
('KongoYields',       'YIELD_GOLD',    1, 10),
('KongoYields',       'YIELD_SCIENCE', 1,-9),

('MvembaCommemorations',       'COMMEMORATION_RELIGIOUS', 0, -50),

('MvembaYields',       'YIELD_FAITH', 0,-30), -- Can't build holy sites

('MvembaYields',       'YIELD_RH_WORLD_RELIGION_BUFF', 1,	250), -- Fun

('MvembaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0,-100), -- Can't build holy sites
('MvembaPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1,	20),

('KongoWonders',       'BUILDING_TERRACOTTA_ARMY', 1, 90), -- Relics from ARCHAEOLOGIST

('KongoPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 65), -- 50%, pvs 40
('KongoPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 0, -15),
('KongoPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 10), -- Districts
('KongoPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 25), -- 50%
('KongoPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 30), -- 50%
('KongoPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -10),
('KongoPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -25), 
('KongoPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',  0, -6),
('KongoPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  0, -5),
('KongoPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  0, -4),
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_ARTIFACT',  1, 40), -- Nkisi
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_LANDSCAPE', 1,-10),
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_MUSIC',     1, -10),
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_PORTRAIT',  1, -10), -- Has Loads

('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC',     1, 300), -- Nkisi, pvs 90
--('KongoPseudoYields', 'PSEUDOYIELD_GPP_RH_RELICMAN', 1, 10000),

('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIGIOUS', 1, -15),
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_SCULPTURE', 1, 40), -- Nkisi
('KongoPseudoYields', 'PSEUDOYIELD_GREATWORK_WRITING',   1,-15),
('KongoPseudoYields', 'PSEUDOYIELD_TOURISM',   1, 50),
('KongoPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 35), 
('KongoPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -35), 
('KongoPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 6), 
('KongoPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 5), 
('KongoPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 12),
('KongoPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 100);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('KongoSettlement', 'Coastal', 			0, -3, 		 NULL, 			'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- very little coast in real life
('KongoSettlement', 'Specific Feature',  0, 3, 		'FEATURE_FOREST', 								NULL),
('KongoSettlement', 'Specific Feature',  0, 4, 		'FEATURE_JUNGLE', 								NULL); -- Mbanza 
