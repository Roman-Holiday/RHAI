
-- AUTHOR: ROMANHOLIDAY

-- INDUSTRIAL VICTORIA -- Age of Steam

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_VICTORIA_ALT', 'TRAIT_LEADER_EXPANSIONIST');

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_VICTORIA_ALT',				'AGENDA_INDUSTRIALIST',						15), -- Never has this agenda
--		('LEADER_VICTORIA_ALT',				'AGENDA_GREAT_PERSON_ADVOCATE',				10),
	--	('LEADER_VICTORIA_ALT',				'AGENDA_EXPLOITATIVE',						15),	
--		('LEADER_VICTORIA_ALT',				'AGENDA_DARWINIST',							15);			
		
REPLACE INTO AiListTypes (ListType) VALUES
('VictoriaAltYields'),
('VictoriaAltWonders'),
('VictoriaAltDistricts'),
('VictoriaAltSettlement'),
('VictoriaAltPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('VictoriaAltYields',    'TRAIT_LEADER_VICTORIA_ALT', 'Yields'),
('VictoriaAltWonders',    'TRAIT_LEADER_VICTORIA_ALT', 'Buildings'),
('VictoriaAltDistricts', 'TRAIT_LEADER_VICTORIA_ALT', 'Districts'),
('VictoriaAltSettlement', 'TRAIT_LEADER_VICTORIA_ALT', 'PlotEvaluations'),
('VictoriaAltPseudoYields', 'TRAIT_LEADER_VICTORIA_ALT', 'PseudoYields');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('VictoriaAltTechs', 'TECH_APPRENTICESHIP', 1, 0),
('VictoriaAltTechs', 'TECH_INDUSTRIALIZATION', 1, 0),

('VictoriaAltTechs', 'TECH_ANIMAL_HUSBANDRY', 1, 0),
('VictoriaAltTechs', 'TECH_BRONZE_WORKING', 1, 0),
('VictoriaAltTechs', 'TECH_MILITARY_ENGINEERING', 1, 0), -- Niter
('VictoriaAltTechs', 'TECH_SCIENTIFIC_THEORY', 1, 0), -- Oxford Uni

('VictoriaAltYields', 'YIELD_RH_PRODUCTION', 1, 950),
('VictoriaAltYields', 'YIELD_RH_WONDER',	  	  1, 40),
('VictoriaAltYields', 'YIELD_RH_MAUS_H',	  	  1, 950),

('VictoriaAltYields', 'YIELD_PRODUCTION', 1, 750), -- pvs 8, 40, 80, 120 Already has trait IndustrialRevolutionPreference (production Yield 20), however industrial zones are a huge priority
('VictoriaAltYields', 'YIELD_SCIENCE', 1, 6),
('VictoriaAltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3),
('VictoriaAltPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5),
('VictoriaAltPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 100), -- pvs 32, 60, 65 incresing to build more industrial zone buildings (at 60 does a lot of projects)
('VictoriaAltPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 12),
('VictoriaAltPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, -15), -- unfavour commerical hubs
('VictoriaAltPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, -30), -- Less Encampments

('VictoriaAltPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 15), 

('VictoriaAltPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 30), -- Strategic Resources
('VictoriaAltPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 0, -20),
('VictoriaAltPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 20), -- pvs 26
('VictoriaAltPseudoYields', 'PSEUDOYIELD_WONDER', 1, 30), -- Has more production

('VictoriaAltWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 90),
('VictoriaAltDistricts', 'DISTRICT_INDUSTRIAL_ZONE', 1, 500), -- pvs value 0, 90
('VictoriaAltDistricts', 'DISTRICT_DAM', 1, 0),
('VictoriaAltDistricts', 'DISTRICT_CANAL', 1, 15);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('VictoriaAltWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 300),
('VictoriaAltWonders', 'BUILDING_OXFORD_UNIVERSITY', 1, 80),
--('VictoriaAltWonders', 'BUILDING_RUHR_VALLEY', 1, 0), -- Already exists

('VictoriaAltWonders', 'BUILDING_PANAMA_CANAL', 1, 0),
('VictoriaAltWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 70),
('VictoriaAltWonders', 'BUILDING_BIG_BEN', 1, 50);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('VictoriaAltWonders', 'BUILDING_GOV_WIDE', 			1, 500), 
('VictoriaAltWonders', 'BUILDING_GOV_TALL', 			1, 500), 

('VictoriaAltWonders', 'BUILDING_GOV_SPIES', 			1, 500), 

('VictoriaAltWonders', 'BUILDING_GOV_SCIENCE', 			1, 60), 
('VictoriaAltWonders', 'BUILDING_GOV_MILITARY', 		1, 60), 

('VictoriaAltWonders', 'BUILDING_WORKSHOP', 			1, 300),
('VictoriaAltWonders', 'BUILDING_FACTORY', 				1, 300), 
('VictoriaAltWonders', 'BUILDING_COAL_POWER_PLANT', 	1, 100);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('VictoriaAltSettlement', 'Foreign Continent', 0, 6);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('VictoriaAltSettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('VictoriaAltSettlement', 'Resource Class', 0, 5, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'), -- pvs 4
--('VictoriaAltSettlement', 'Nearest Friendly City', 0, 1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'), 
('VictoriaAltSettlement', 'Specific Resource', 0, 2, 'RESOURCE_COAL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('VictoriaAltSettlement', 'Specific Resource', 0, 16, 'RESOURCE_IRON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('VictoriaAltSettlement', 'Specific Resource', 0, 15, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- very very important
('VictoriaAltSettlement', 'Specific Resource', 0, 9, 'RESOURCE_NITER', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('VictoriaAltSettlement', 'Specific Resource', 0, 2, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('VictoriaAltSettlement', 'Specific Resource', 0, 5, 'RESOURCE_ALUMINUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- pvs 2, 1, 3
('VictoriaAltSettlement', 'Specific Resource', 0, 6, 'RESOURCE_URANIUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 


-- Todo, all strategic resources, coal and iron settle


-- Elizabeth

--INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
--('ElizabethYields');

--INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
--('ElizabethYields',   		'TRAIT_LEADER_ELIZABETH', 'Yields');

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_ELIZABETH', 'TRAIT_LEADER_EXPANSIONIST');

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_ELIZABETH',				'AGENDA_EXPLORER',						30);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ElizabethCivics', 'CIVIC_FOREIGN_TRADE', 1, 0),
('ElizabethWonders', 'BUILDING_PANAMA_CANAL', 1, 0),
('ElizabethWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 0), -- could already exist
('ElizabethWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 200),
('ElizabethPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5),
('ElizabethPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3),
('ElizabethPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5),

('ElizabethYields', 'YIELD_RH_NAVAL', 1, 450), -- pvs 250

-- 		<Row ListType="ElizabethYields" Item="YIELD_GOLD" Value="25"/>
-- <Row ListType="ElizabethPseudoYields" Item="PSEUDOYIELD_UNIT_TRADE" Value="50"/> -- Existing

('ElizabethPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 26),
('ElizabethPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 60); -- pvs 35, 50

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
--('ElizabethYields'),
('ElizabethSavings');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
--('ElizabethYields',  			 'TRAIT_LEADER_ELIZABETH', 'Yields'),
('ElizabethSavings',  			 'TRAIT_LEADER_ELIZABETH', 'SavingTypes');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('ElizabethSavings', 'SAVING_GREAT_PEOPLE', 								 0), 
--('ElizabethSavings', 'SAVING_UNITS', 										 1),
('ElizabethSavings', 'SAVING_PLOTS', 										1), 
('ElizabethSavings', 'SAVING_SLUSH_FUND', 								 	-1); 


UPDATE AiFavoredItems SET Value = 33 WHERE ListType = 'ElizabethYields' AND Item = 'YIELD_GOLD'; -- def. 25

-- Yongle the legendary

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
	--	('LEADER_YONGLE',				'AGENDA_POPULOUS',						35),
--('LEADER_YONGLE',				'AGENDA_DARWINIST',						20);	

--INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_YONGLE', 'TRAIT_LEADER_DEFENSIVE');

--INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_YONGLE', 'TRAIT_LEADER_EXPANSIONIST');


--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_YONGLE',				'AGENDA_DEVOUT',						25); -- Feed the World


INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_YONGLE', 'TRAIT_LEADER_RH_GROWTH');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('YongleYields'),
('YonglePseudoYields'),
('YongleDistricts'),
('YongleSettlement'),
('YongleImprovements'),
('YongleTechs'),
('YongleUnits'),
('YongleProjects');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('YongleYields',   		'TRAIT_LEADER_YONGLE', 'Yields'),
('YonglePseudoYields',   'TRAIT_LEADER_YONGLE', 'PseudoYields'),
('YongleDistricts',   'TRAIT_LEADER_YONGLE', 'Districts'),
('YongleSettlement',   'TRAIT_LEADER_YONGLE', 'PlotEvaluations'),
('YongleImprovements',   'TRAIT_LEADER_YONGLE', 'Improvements'),
('YongleTechs',   'TRAIT_LEADER_YONGLE', 'Technologies'), -- already exists but causes error without for some reason
('YongleUnits',   		'TRAIT_LEADER_YONGLE', 'Units'),
('YongleProjects', 		'TRAIT_LEADER_YONGLE', 'Projects');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('YongleYields', 'YIELD_FOOD', 1, 350), -- Already 200
('YongleYields', 'YIELD_GOLD', 1, 20), -- Internal, pvs 40, 50, 40
('YongleYields', 'YIELD_FAITH', 1, 950), -- Internal, pvs 40, 125, 300, 400, 300

('YongleYields', 'YIELD_RH_TRADE', 1, 500), -- Internal, 150, 350, 850, 800, 720, 680, 550
('YongleYields', 'YIELD_RH_NAVAL', 1, 100),

('YongleYields', 'YIELD_RH_RV_BASE', 1, 990),

('YongleYields', 'YIELD_SCIENCE', 1, -33), -- Growth First, -10, -27
('YongleYields', 'YIELD_RH_PLACEMENT', 0, -35), -- Growth First

('YongleYields', 'YIELD_RH_CITY_CENTRE', 1, 550), -- pvs 650, 580
('YongleYields', 'YIELD_RH_FOOD_EXT', 1, 950),

('YongleYields', 'YIELD_RH_MAGNUS', 1, 950),

('YongleYields', 'YIELD_RH_CLASSICAL_REPUBLIC', 1, 150),
('YongleYields', 'YIELD_RH_MONARCHY', 1, 950),
('YongleYields', 'YIELD_RH_MERCHANT_REPUBLIC', 0, -950),

('YongleYields', 'YIELD_RH_DEMOCRACY', 1, 950), -- pvs 600
('YongleYields', 'YIELD_RH_COMMUNISM', 0, -950), -- pvs -30, -95

('YongleProjects', 'PROJECT_LIJIA_FOOD', 1, 900), -- pvs 0, 90

('YonglePseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 250), -- Food
('YonglePseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 75), -- Food
('YonglePseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 10), -- Audience -- already in growth

('YonglePseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 15),

--('YonglePseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, -10), -- Internal Trade, pvs 40, 75, 85, 80
('YonglePseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 950), -- pvs 650

('YonglePseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 200), -- Internal Trade

('YonglePseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 30),

('YonglePseudoYields', 'PSEUDOYIELD_WONDER', 1, 45), -- China base ability and useful for food
('YonglePseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 15), 

('YonglePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -10), -- Large Cities, pvs -6

('YonglePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 6), -- Can Turtle, Democracy Trade Routes, Have slightly increased positive income diplo

('YongleTechs', 'TECH_ARCHERY', 1, 0), -- Temple of Artemis
('YongleTechs', 'TECH_IRRIGATION', 1, 0), -- Hanging Gardens

('YongleTechs', 'TECH_CURRENCY', 1, 0),
('YongleTechs', 'TECH_CELESTIAL_NAVIGATION', 1, 0),

('YongleCivics', 'CIVIC_MEDIEVAL_FAIRES', 1, 0), -- Angkor Wat, must be built adj to an Aqueduct
('YongleCivics', 'CIVIC_GAMES_RECREATION', 1, 0),
('YongleCivics', 'CIVIC_PROFESSIONAL_SPORTS', 1, 0), -- BUILDING_ESTADIO_DO_MARACANA

('YongleCivics', 'CIVIC_SUFFRAGE',		 1, 0), -- Democracy
('YongleCivics', 'CIVIC_CLASS_STRUGLE', 0, 0), -- No Communism

('YongleDistricts', 'DISTRICT_AQUEDUCT', 1, 0), 
('YongleDistricts', 'DISTRICT_GOVERNMENT', 1, 200), 
('YongleDistricts', 'DISTRICT_DAM', 1, 0), 
('YongleDistricts', 'DISTRICT_NEIGHBORHOOD', 1, 0), 
--('YongleDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX', 1, 0), 
('YongleDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 1, 0), 
--('YongleDistricts', 'DISTRICT_HARBOR', 1, 50), 
--('YongleDistricts', 'DISTRICT_COMMERCIAL_HUB', 1, 0), -- Test, prefer Harbor
('YongleDistricts', 'DISTRICT_HOLY_SITE', 1, 100), -- Test

--('YongleDistricts', 'DISTRICT_PRESERVE', 0, 0), -- Temp

('YongleDistricts', 'DISTRICT_ENCAMPMENT', 0, 0), 

('YongleUnits', 'UNIT_BUILDER', 	1, 100),

('YongleWonders', 'BUILDING_WATER_MILL', 1, 100), -- +1 food on bonus resources
('YongleWonders', 'BUILDING_GRANARY', 1, 100),
('YongleWonders', 'BUILDING_SEWER', 1, 100),

('YongleWonders', 'BUILDING_SHRINE', 1, 100),
('YongleWonders', 'BUILDING_TEMPLE', 1, 100),

('YongleWonders', 'BUILDING_SANCTUARY', 		0, 0), -- Temp
('YongleWonders', 'BUILDING_GROVE', 			0, 0),

('YongleWonders', 'BUILDING_GOV_TALL', 1, 800),
('YongleWonders', 'BUILDING_GOV_WIDE', 0, -90),
('YongleWonders', 'BUILDING_GOV_CONQUEST', 0, 0),
('YongleWonders', 'BUILDING_GOV_SCIENCE', 1, 50),
('YongleWonders', 'BUILDING_GOV_MILITARY', 1, 50),
('YongleWonders', 'BUILDING_GREAT_BATH', 	1, 0), -- housing and +1 amenity
('YongleWonders', 'BUILDING_TEMPLE_ARTEMIS', 	1, 90),
('YongleWonders', 'BUILDING_PETRA', 		1, 0),
('YongleWonders', 'BUILDING_PYRAMIDS', 		1, 90), -- More food
('YongleWonders', 'BUILDING_LIGHTHOUSE', 		1, 100),
('YongleWonders', 'BUILDING_ESTADIO_DO_MARACANA', 		1, 900), -- must be built on flat land adjacent to an Entertainment Complex with a Stadium.
('YongleWonders', 'BUILDING_FOOD_MARKET', 		1, 90),

('YongleWonders', 'BUILDING_COLOSSEUM', 	1, 90),
('YongleWonders', 'BUILDING_HANGING_GARDENS', 1, 90);

/*
		<Row ListType="YongleTechs" Item="TECH_MASONRY" Favored="true"/>
		<Row ListType="YongleTechs" Item="TECH_CASTLES" Favored="true"/>
		<Row ListType="YongleTechs" Item="TECH_FLIGHT" Favored="true"/>
		<Row ListType="YongleCivics" Item="CIVIC_FEUDALISM" Favored="true"/>
*/

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'YongleWonders', 'BUILDING_ANGKOR_WAT', 1, 900 -- khmer dlc
FROM Types WHERE Type = 'BUILDING_ANGKOR_WAT';


REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('YongleSettlement', 'Fresh Water', 				0,  2,	 NULL,			 'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'),
--('YongleSettlement', 'Coastal', 					0, 8, 	NULL, 			'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- pvs 2
('YongleSettlement', 'Inner Ring Yield',			 0, 1, 'YIELD_FOOD',    'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'); -- 1


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('YongleImprovements', 'IMPROVEMENT_FARM', 					1, 90),

('YongleImprovements', 'IMPROVEMENT_SEASTEAD', 				1, 100),
--('YongleImprovements', 'IMPROVEMENT_OFFSHORE_WIND_FARM', 	0, 0),

('YongleImprovements', 'IMPROVEMENT_FISHING_BOATS', 		1, 90),
('YongleImprovements', 'IMPROVEMENT_GREAT_WALL', 			0, -50), -- Lack of Housing
('YongleImprovements', 'IMPROVEMENT_CITY_PARK',				 1, 90),
('YongleImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 		0, -80), -- For national parks, ski resorts, culture victory
('YongleImprovements', 'IMPROVEMENT_SKI_RESORT', 			1, 90); -- +1 Amenity

-- Todo Chance of Religous Agenda for Feed the World

-- Todo government civic / tech prefernces, food / food wonder techs and civics
-- Todo medium chance of food obsessed random agenda



-- WU ZETIAN / CHINA

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_WU_ZETIAN', 'TRAIT_LEADER_ESPIONAGE'); 

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('WuZetianDiplomacy');
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('WuZetianDiplomacy', 'TRAIT_LEADER_WU_ZETIAN', 'DiplomaticActions');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('WuZetianWonders', 'BUILDING_GOV_SPIES', 1, 150), -- critical stuff -- Important gov plaza building
('WuZetianWonders', 'BUILDING_GOV_TALL', 1, 50),
('WuZetianWonders', 'BUILDING_GOV_WIDE', 1, 40),
('WuZetianWonders', 'BUILDING_MONUMENT', 1, 100), -- Defensive Tactics Rush

('WuZetianCivics', 'CIVIC_GAMES_RECREATION', 1, 0), -- Defensive Tactics Rush
('WuZetianCivics', 'CIVIC_STATE_WORKFORCE', 1, 0),
('WuZetianCivics', 'CIVIC_EARLY_EMPIRE', 1, 0),

--('WuZetianCivics', 'CIVIC_MYSTICISM', 0, 0),

('WuZetianDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SPY', 0, 0);

DELETE FROM LeaderTraits WHERE LeaderType = 'LEADER_WU_ZETIAN' AND TraitType = 'TRAIT_LEADER_CULTURAL_MAJOR_CIV';

UPDATE AiFavoredItems SET Value = 30 WHERE ListType = 'WuZetianPseudo' AND Item = 'PSEUDOYIELD_UNIT_SPY'; -- def. 20 -- Needs as many as can get after buffs, already has some from esp

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_WU_ZETIAN',				'AGENDA_GOSSIP',						20);

/*
		<Row ListType="SihaiLoverClearingBarbCampPreference" Item="PSEUDOYIELD_CLEAR_BANDIT_CAMPS" Value="-100"/>
		<Row ListType="QinAltWonders" Item="BUILDING_TERRACOTTA_ARMY" Favored="true"/>
		<Row ListType="YongleWonders" Item="BUILDING_GREAT_LIBRARY" Favored="true"/>
		<Row ListType="WuZetianWonders" Item="BUILDING_FORBIDDEN_CITY" Favored="true"/>
		<Row ListType="YongleWonders" Item="BUILDING_FORBIDDEN_CITY" Favored="true"/>
		<Row ListType="YongleCivics" Item="CIVIC_FEUDALISM" Favored="true"/>
		<Row ListType="WuZetianCivics" Item="CIVIC_DEFENSIVE_TACTICS" Favored="true"/>
		<Row ListType="WuZetianCivics" Item="CIVIC_DIPLOMATIC_SERVICE" Favored="true"/>
		<Row ListType="WuZetianCivics" Item="CIVIC_NATIONALISM" Favored="true"/>
		<Row ListType="WuZetianCivics" Item="CIVIC_IDEOLOGY" Favored="true"/>
		<Row ListType="WuZetianPseudo" Item="PSEUDOYIELD_UNIT_SPY" Value="20"/>
	
		<Row ListType="QinAltUnits" Item="PROMOTION_CLASS_MELEE" Value="1"/>
		<Row ListType="YongleTechs" Item="TECH_MASONRY" Favored="true"/>
		<Row ListType="YongleTechs" Item="TECH_CASTLES" Favored="true"/>
		<Row ListType="YongleTechs" Item="TECH_FLIGHT" Favored="true"/>
		<Row ListType="WuZetianTechs" Item="TECH_MASONRY" Favored="true"/>
		<Row ListType="WuZetianTechs" Item="TECH_CASTLES" Favored="true"/>
		<Row ListType="WuZetianTechs" Item="TECH_FLIGHT" Favored="true"/>
		<Row ListType="QinAltTechs" Item="TECH_MASONRY" Favored="true"/>
		<Row ListType="QinAltTechs" Item="TECH_CASTLES" Favored="true"/>
		<Row ListType="QinAltTechs" Item="TECH_FLIGHT" Favored="true"/>
*/




-- QIN_ALT / CHINA / TRAIT_LEADER_QIN

UPDATE AiFavoredItems SET Value = 22 WHERE ListType = 'QinAltUnits' AND Item = 'PROMOTION_CLASS_MELEE';
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_QIN_ALT', 'TRAIT_LEADER_EXPANSIONIST');


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('QinAltCivics'),
('QinAltPseudoYields');
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('QinAltCivics', 'TRAIT_LEADER_QIN', 'Civics'), -- is def TRAIT_LEADER_QIN for some reason
('QinAltPseudoYields', 'TRAIT_LEADER_QIN', 'PseudoYields');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('QinAltPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 40),
('QinAltPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 17),
('QinAltPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -5),
('QinAltPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -5),
('QinAltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -7),
('QinAltCivics', 'CIVIC_CRAFTSMANSHIP', 1, 0),
('QinAltCivics', 'CIVIC_FEUDALISM',     1, 0);

-- SEJONG / KOREA / TRAIT_LEADER_SEJONG

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('SejongPseudoYields');
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('SejongPseudoYields', 'TRAIT_LEADER_SEJONG', 'PseudoYields');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('SejongPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 40); 

-- Korea already has science yield 50, gpp scientist 20, improvement boost, mine improvement preference 


-- LUDWIG / GERMANY / TRAIT_LEADER_LUDWIG

/*
		<Row LeaderType="LEADER_LUDWIG" TraitType="TRAIT_LEADER_LUDWIG"/>
		<Row LeaderType="LEADER_LUDWIG" TraitType="TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV"/>
		<Row LeaderType="LEADER_LUDWIG" TraitType="TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE"/>
		<Row LeaderType="LEADER_LUDWIG" TraitType="TRAIT_LEADER_LOW_CITY_STATE_PREFERENCE_WAR"/>
		<Row LeaderType="LEADER_LUDWIG" TraitType="TRAIT_LEADER_CULTURAL_MAJOR_CIV"/>
*/

/*
May be Bugged?
INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
		('LEADER_LUDWIG',				'AGENDA_WONDER_ADVOCATE',						20),
		('LEADER_LUDWIG',				'AGENDA_CULTURED',								15);
	
*/

INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_LEADER_LUDWIG',		'RH_START_WITH_RH_AI_LUDWIG_TECH');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_START_WITH_RH_AI_LUDWIG_TECH',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI'); 

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_START_WITH_RH_AI_LUDWIG_TECH',					'TechType', 'TECHNOLOGY_RH_AI_LUDWIG_ADJ');



INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_LUDWIG', 'TRAIT_LEADER_DEFENSIVE');

/*
		<Row LeaderType="LEADER_LUDWIG" TraitType="TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV"/>
		<Row LeaderType="LEADER_LUDWIG" TraitType="TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE"/>
		<Row LeaderType="LEADER_LUDWIG" TraitType="TRAIT_LEADER_LOW_CITY_STATE_PREFERENCE_WAR"/>
		<Row LeaderType="LEADER_LUDWIG" TraitType="TRAIT_LEADER_CULTURAL_MAJOR_CIV"/>
*/


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('LudwigYields'),
('LudwigPseudoYields'),
('LudwigDistricts'),
('LudwigUnitBuilds');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('LudwigYields',       'TRAIT_LEADER_LUDWIG', 'Yields'),
('LudwigUnitBuilds', 'TRAIT_LEADER_LUDWIG', 'UnitPromotionClasses'),
('LudwigDistricts',  'TRAIT_LEADER_LUDWIG', 'Districts'),
('LudwigPseudoYields', 'TRAIT_LEADER_LUDWIG', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LudwigYields', 'YIELD_PRODUCTION', 	  1, 500), -- pvs 50, new base, 150
('LudwigYields', 'YIELD_CULTURE', 		  1, 50), -- pvs 10, 16, 17, 19, 20, 32
('LudwigYields', 'YIELD_GOLD',	 		  1, 35), -- pvs 15
('LudwigYields', 'YIELD_RH_DEMOCRACY',	  1, 150), -- pvs 90
('LudwigYields', 'YIELD_RH_WONDER',	  	  1, 3500), -- pvs 450, 1850
('LudwigYields', 'YIELD_RH_CULTURE_VICTORY_BASE',	  	  1, 100),
('LudwigYields', 'YIELD_SCIENCE',	  	  1, -15),

('LudwigTechs', 'TECH_IRON_WORKING',	  	 			 1, 100), -- For Castles
('LudwigTechs', 'TECH_CONSTRUCTION',	  	  			1, 100),

('LudwigPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 35), -- many more districts for extra district slot and culture bonus for wonders, pvs30, 35
('LudwigPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 15), -- pvs 11
('LudwigPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',  0, -10),
('LudwigPseudoYields', 'PSEUDOYIELD_HAPPINESS',  1, 20), -- Culture Adjacancy bouns 
('LudwigPseudoYields', 'PSEUDOYIELD_TOURISM',  1, 90), -- pvs 55
--('LudwigPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',  0, -17),
('LudwigPseudoYields', 'PSEUDOYIELD_ENVIRONMENT',  1, 20),
('LudwigPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT',  0, -15),
('LudwigPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT',  0, -8),
('LudwigPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST',  1, 40),
('LudwigPseudoYields', 'PSEUDOYIELD_GPP_ARTIST',  1, 10),
('LudwigPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',  1, 15), -- New, pvs 25, 60, base 70

--('LudwigPseudoYields', 'PSEUDOYIELD_GPP_WRITER',  1, 5), -- DISTRICT_THEATER already favoured
('LudwigPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  0, -10),
('LudwigPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  0, -10), -- not known for investing in big armies lol
('LudwigPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -50),
('LudwigPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 12),
('LudwigPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 12),

('LudwigPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 20),
('LudwigPseudoYields', 'PSEUDOYIELD_WONDER', 1, 5000); -- pvs 55 (0.49 base) (AgendaType="AGENDA_WONDER_ADVOCATE"  PercentageChance="33"/>), 140, 160, 950 not building many early game at 400, 700, 900, 1700 (YIELD_RH_WONDER)

-- Todo Add Preference for Ranged (Defensive) Unit Builds

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
-- Ruhr Valley the only wonder Defined lol
('LudwigWonders', 'BUILDING_GREAT_BATH', 1, 0), -- Otherwise no one builds
('LudwigWonders', 'BUILDING_APADANA', 1, 100), -- Very Useful
('LudwigWonders', 'BUILDING_ORACLE', 1, 0),
('LudwigWonders', 'BUILDING_TAJ_MAHAL', 1, 30),
('LudwigWonders', 'BUILDING_ALHAMBRA', 1, 50), -- fitting / defensive
('LudwigWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 90), 
('LudwigWonders', 'BUILDING_BOLSHOI_THEATRE', 1, 90),
('LudwigWonders', 'BUILDING_BROADWAY', 1, 90),
('LudwigWonders', 'BUILDING_HERMITAGE', 1, 0),
('LudwigWonders', 'BUILDING_COLOSSEUM', 1, 90),
('LudwigWonders', 'BUILDING_FORBIDDEN_CITY', 1, 0),
('LudwigWonders', 'BUILDING_WALLS', 1, 90), -- Defence and tourism
('LudwigWonders', 'BUILDING_CASTLE', 1, 90), -- Defence and tourism
('LudwigWonders', 'BUILDING_STAR_FORT', 1, 90), -- Defence and tourism
('LudwigWonders', 'BUILDING_GREAT_LIGHTHOUSE', 0, 0); -- Unfavoured Don't favour naval wonders as less district Adjacancy
--('LudwigWonders', 'BUILDING_HAGIA_SOPHIA', 0, 0), 
--('LudwigWonders', 'BUILDING_COLOSSUS', 0, 0); -- Unfavoured

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LudwigDistricts', 'DISTRICT_THEATER', 1, 50), 
('LudwigDistricts', 'DISTRICT_HANSA', 1, 100), 

('LudwigUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 5), -- Defence (defensive trait)
('LudwigUnitBuilds', 'PROMOTION_CLASS_AIR_FIGHTER', 1, 12),
--('LudwigUnitBuilds', 'PROMOTION_CLASS_SIEGE', 0, -2),
('LudwigUnitBuilds', 'PROMOTION_CLASS_MELEE', 0, -5); 

-- TOKUGAWA / JAPAN

--INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TOKUGAWA', 'TRAIT_LEADER_DEFENSIVE'); -- Gets distracted building walls

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TOKUGAWA', 'TRAIT_LEADER_RH_GROWTH');

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TOKUGAWA', 'TRAIT_LEADER_RH_TRADE');

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TOKUGAWA', 'TRAIT_LEADER_SCIENCE_MAJOR_CIV'); -- Temp


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('TokugawaSettlement'),
('TokugawaYields'),
('TokugawaDistricts'),
('TokugawaWonders'),
('TokugawaPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('TokugawaSettlement', 'TRAIT_LEADER_TOKUGAWA', 'PlotEvaluations'),
('TokugawaYields', 'TRAIT_LEADER_TOKUGAWA', 'Yields'),
('TokugawaDistricts', 'TRAIT_LEADER_TOKUGAWA', 'Districts'),
('TokugawaWonders', 'TRAIT_LEADER_TOKUGAWA', 'Buildings'),
('TokugawaPseudoYields', 'TRAIT_LEADER_TOKUGAWA', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TokugawaYields', 'YIELD_GOLD',   1, 75), -- Internal Trade Routes
('TokugawaYields', 'YIELD_FOOD',   1, 20), -- Tall / More Districts
('TokugawaYields', 'YIELD_SCIENCE',   1, -25),

('TokugawaYields', 'YIELD_CULTURE',   1, 5),
('TokugawaYields', 'YIELD_RH_MAGNUS',   1, 950),
('TokugawaYields', 'YIELD_RH_COMMUNISM',   1, 1500), -- Collectivization Card -- pvs 900

('TokugawaWonders', 'BUILDING_LIGHTHOUSE',   1, 900),
('TokugawaWonders', 'BUILDING_MARKET',   1, 900),
('TokugawaWonders', 'BUILDING_GOV_TALL',   1, 900),
('TokugawaWonders', 'BUILDING_GOV_WIDE',   0, -40),

('TokugawaWonders', 'BUILDING_STONEHENGE',   0, -500),

--('TokugawaWonders', 'BUILDING_COLOSSUS',   1, 50), -- Akready Exists

--('TokugawaWonders', 'DISTRICT_COMMERCIAL_HUB',   1, 20),
--('TokugawaDistricts', 'DISTRICT_HARBOR',   1, 70),

('TokugawaTechs', 'TECH_CURRENCY',   1, 100),
('TokugawaTechs', 'TECH_WRITING',   1, 100), -- For Currency
('TokugawaTechs', 'TECH_CELESTIAL_NAVIGATION',   1, 100),


('TokugawaSettlement', 'Foreign Continent', 0, -9),
('TokugawaSettlement', 'Nearest Friendly City', 0, -3), -- Isolationist / Loyalty 100% / Districts
--('TokugawaPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER',   1, -10),
('TokugawaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',   1, 15), -- Tall / More Districts
('TokugawaPseudoYields', 'PSEUDOYIELD_DISTRICT',   1, 25), -- Trade routes / adj
('TokugawaPseudoYields', 'PSEUDOYIELD_TOURISM',   1, 20), -- +1 Tourism for each special district
('TokugawaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 100),
--('TokugawaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 10),
('TokugawaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 15),
('TokugawaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 15),
('TokugawaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 5),
('TokugawaPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 25),
('TokugawaPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 15), -- Magnus (RH growth)
--('TokugawaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -10),
--('TokugawaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -5),
('TokugawaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 20), -- -0.5, not a fan
('TokugawaPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, -25); -- Isolationist

/*
		<Row ListType="TokugawaWonders" Item="BUILDING_COLOSSUS" Favored="true"/>
		<Row ListType="TokugawaWonders" Item="BUILDING_GREAT_ZIMBABWE" Favored="true"/>
		<Row ListType="TokugawaCivics" Item="CIVIC_FOREIGN_TRADE" Favored="true"/>
		<Row ListType="TokugawaCivics" Item="CIVIC_CLASS_STRUGLE" Favored="true"/>
		<Row ListType="TokugawaCivics" Item="CIVIC_HUMANISM" Favored="true"/>
		<Row ListType="TokugawaTechs" Item="TECH_BRONZE_WORKING" Favored="true"/>
		<Row ListType="TokugawaTechs" Item="TECH_MILITARY_TACTICS" Favored="true"/>
		<Row ListType="TokugawaTechs" Item="TECH_FLIGHT" Favored="true"/>
*/

-- Angor Watt Wonder -- Done

-- SULEIMAN_ALT / OTTOMAN ALT

UPDATE AiFavoredItems SET Value = 6 WHERE ListType = 'SuliemanAltUnits' AND Item = 'PROMOTION_CLASS_SIEGE'; -- pvs 18

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SULEIMAN_ALT', 'TRAIT_LEADER_EXPANSIONIST');

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_SULEIMAN_ALT',				'AGENDA_DARWINIST',				33);

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('SuliemanAltYields'),
('SuliemanAltDistricts'),
('SuliemanAltPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('SuliemanAltYields',       'TRAIT_LEADER_SULEIMAN_ALT', 'Yields'),
('SuliemanAltDistricts',      	 'TRAIT_LEADER_SULEIMAN_ALT', 'Districts'),
('SuliemanAltPseudoYields', 'TRAIT_LEADER_SULEIMAN_ALT', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('SuliemanAltYields', 'YIELD_FAITH', 1, -22), -- pvs -19
('SuliemanAltYields', 'YIELD_GOLD', 1, 17), -- Grand Bazar

('SuliemanAltPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -30),
('SuliemanAltPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 10),
('SuliemanAltPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 25), -- Grand Bazar
('SuliemanAltPseudoYields', 'PSEUDOYIELD_WONDER', 1, 55), -- For golden age points

('SuliemanAltDistricts', 'DISTRICT_COMMERCIAL_HUB', 1, 0),
('SuliemanAltUnits', 'PROMOTION_CLASS_NAVAL_RAIDER', 1, 7),

('SuliemanAltPseudoYields', 'PSEUDOYIELD_GOLDENAGE_POINT', 1, 50), 
('SuliemanAltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -13),
('SuliemanPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 20), -- Bonuses for improvements

('SuliemanAltPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 100),
('SuliemanAltPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 20), -- Big bonus
('SuliemanAltPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 8),
('SuliemanAltPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, 10),
('SuliemanAltPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -15),
('SuliemanAltPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -40),
('SuliemanAltPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 40),
('SuliemanAltPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -30); -- bombard production


-- Todo exploration for golden age points

-- SALADIN ALT

INSERT OR REPLACE INTO LeaderTraits (LeaderType, TraitType) VALUES
('LEADER_SALADIN_ALT', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');

-- NADER_SHAH / PERSIA

REPLACE INTO AiListTypes (ListType) VALUES
('NaderPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('NaderPseudoYields', 'TRAIT_LEADER_NADER_SHAH', 'PseudoYields');
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NaderPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 8), -- pairidaeza -- Not that good
('NaderPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -14), -- pvs -19
('NaderPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 35);

-- NZINGA_MBANDE / KONGO

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_NZINGA_MBANDE', 'TRAIT_LEADER_RH_RELIC');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('NzingaYields'),
('NzingaPseudoYields');
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('NzingaYields',       'TRAIT_LEADER_NZINGA_MBANDE', 'Yields'),
('NzingaPseudoYields', 'TRAIT_LEADER_NZINGA_MBANDE', 'PseudoYields');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NzingaWonders', 'BUILDING_MONT_ST_MICHEL', 1, 200), -- Relics very good
('NzingaWonders', 'BUILDING_CRISTO_REDENTOR', 1, 150),

('NzingaCivics', 'CIVIC_DIVINE_RIGHT', 1, 0), -- MONT_ST_MICHEL
('NzingaCivics', 'CIVIC_MASS_MEDIA', 1, 0), -- CRISTO
('NzingaYields', 'YIELD_CULTURE', 1, 10),
('NzingaYields', 'YIELD_FAITH', 1, 3),
('NzingaYields', 'YIELD_FOOD', 1, 4),
('NzingaPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 5),
('NzingaPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 10),
('NzingaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 10),
('NzingaPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 10),
('NzingaPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 20),
('NzingaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 20),
('NzingaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10), -- 50% more (extra on top of civ pseudo)
('NzingaPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 20),
('NzingaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -1),
('NzingaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 2),
('NzingaPseudoYields', 'PSEUDOYIELD_WONDER', 1, 10);

UPDATE AiFavoredItems SET ListType = 'NzingaCivics' WHERE ListType = 'NzingaWonders' AND Item = 'CIVIC_DRAMA_POETRY'; -- wrongly defined as a wonder lol
UPDATE AiFavoredItems SET ListType = 'NzingaCivics' WHERE ListType = 'NzingaWonders' AND Item = 'CIVIC_GUILDS';

UPDATE AiFavoredItems SET Value = -22 WHERE ListType = 'SettleOneContinent' AND Item = 'Foreign Continent'; -- (now fixed by firaxis, -50, was favoured false, 120 lol)


-- ABRAHAM_LINCOLN / AMERICA

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_ABRAHAM_LINCOLN', 'TRAIT_LEADER_EXPANSIONIST');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('LincolnDistricts'),
('LincolnYields'),
('LincolnPseudoYields'),
('LincolnUnitBuilds');
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('LincolnDistricts',  'TRAIT_LEADER_LINCOLN', 'Districts'),
('LincolnYields', 'TRAIT_LEADER_LINCOLN', 'Yields'),
('LincolnPseudoYields', 'TRAIT_LEADER_LINCOLN', 'PseudoYields'),
('LincolnUnitBuilds', 'TRAIT_LEADER_LINCOLN', 'UnitPromotionClasses');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LincolnYields', 'YIELD_PRODUCTION', 1, 45), -- pvs 10, 12, 30, 38
('LincolnYields', 'YIELD_FOOD', 1, 15), -- Loyalty
('LincolnYields', 'YIELD_RH_PRODUCTION', 1, 850),
('LincolnYields', 'YIELD_RH_MAUS_H',	 1, 950),

('LincolnPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 30), -- Free Melee Unit from Industrial Zone buildings
('LincolnPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -35),
('LincolnPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -10),
('LincolnPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 10),
('LincolnPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5), -- New

('LincolnWonders', 'BUILDING_WORKSHOP', 1, 90),
('LincolnWonders', 'BUILDING_FACTORY', 1, 90),
('LincolnWonders', 'BUILDING_COAL_POWER_PLANT', 1, 90),
('LincolnWonders', 'BUILDING_FOSSIL_FUEL_POWER_PLANT', 1, 90),

--('LincolnWonders', 'PSEUDOYIELD_GPP_ENGINEER', 1, 50),

('LincolnDistricts', 'DISTRICT_INDUSTRIAL_ZONE', 1, 90), -- obviously, extra amenities
('LincolnDistricts', 'DISTRICT_AQUEDUCT', 1, 0),
('LincolnDistricts', 'DISTRICT_DAM', 1, 0),
('LincolnUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 3),
('LincolnUnitBuilds', 'PROMOTION_CLASS_MELEE', 1, -35); -- pvs 38


/*
		<Row ListType="LincolnWonders" Item="BUILDING_RUHR_VALLEY" Favored="true"/>
		<Row ListType="LincolnCivics" Item="CIVIC_POLITICAL_PHILOSOPHY" Favored="true"/>
		<Row ListType="LincolnTechs" Item="TECH_APPRENTICESHIP" Favored="true"/>
		<Row ListType="LincolnTechs" Item="TECH_INDUSTRIALIZATION" Favored="true"/>
		<Row ListType="LincolnTechs" Item="TECH_ELECTRICITY" Favored="true"/>
		<Row ListType="LincolnCivics" Item="CIVIC_DIVINE_RIGHT" Favored="true"/>
		<Row ListType="LincolnCivics" Item="CIVIC_SUFFRAGE" Favored="true"/>
*/


-- Todo disfavour plantation improvement


-- THEODORA / BYZANTIUM / TRAIT_LEADER_THEODORA

/*
		<Row ListType="NewRomeCulturePreference" Item="YIELD_CULTURE" Value="20"/>
		
		<Row ListType="TheodoraWonders" Item="BUILDING_STONEHENGE" Favored="false"/>
		<Row ListType="TheodoraWonders" Item="BUILDING_HAGIA_SOPHIA" Favored="true"/>
		<Row ListType="TheodoraCivics" Item="CIVIC_GAMES_RECREATION" Favored="true"/>
		<Row ListType="TheodoraCivics" Item="CIVIC_FEUDALISM" Favored="true"/>

		<Row ListType="TheodoraTechs" Item="TECH_ASTROLOGY" Favored="true"/>
		<Row ListType="TheodoraTechs" Item="TECH_SHIPBUILDING" Favored="true"/>
		
		<Row LeaderType="LEADER_THEODORA" TraitType="TRAIT_LEADER_THEODORA"/>
		<Row LeaderType="LEADER_THEODORA" TraitType="TRAIT_LEADER_RELIGIOUS_MAJOR_CIV"/>
*/

-- Farm Adj Already Exists


INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_LEADER_THEODORA',		'RH_START_WITH_RH_AI_THERODORA_TECH');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_START_WITH_RH_AI_THERODORA_TECH',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI'); 

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_START_WITH_RH_AI_THERODORA_TECH',					'TechType', 'TECHNOLOGY_RH_AI_THEODORA_ADJ');



-- Todo Theodora Only

INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	
--('DISTRICT_HIPPODROME', 	'Rh_District_Entertainment_Theater'), -- May already inherit?

('DISTRICT_HOLY_SITE', 	'Rh_Theodora_Plains'), -- maybe 0.5 instead of 1
('DISTRICT_HOLY_SITE', 	'Rh_Theodora_Grass'),
('DISTRICT_HOLY_SITE', 	'Rh_Theodora_Coast'),


--('DISTRICT_HOLY_SITE', 	'Rh_Seowon_Coast'),

('DISTRICT_HIPPODROME', 	'Rh_Negative_District'), -- Per 2 Adj Districts
('DISTRICT_HIPPODROME', 	'Rh_Theodora_Plains'),
('DISTRICT_HIPPODROME', 	'Rh_Theodora_Grass'),
('DISTRICT_HIPPODROME', 	'Rh_Theodora_Coast');



-- Theo Improvement Test

INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentDistrict) VALUES	
('Rh_Theo_Farm_Holy_Site', 		 			 'LOC_DISTRICT_RH_AI_THEO_HOLY_SITE', 			'YIELD_RH_PLACEMENT', 80, 1, 'TECHNOLOGY_RH_AI_THEODORA_ADJ', 'DISTRICT_HOLY_SITE'),
('Rh_Theo_Farm_Hippodrome',					 'LOC_DISTRICT_RH_AI_HIPPODROME', 				'YIELD_RH_PLACEMENT', 80, 1, 'TECHNOLOGY_RH_AI_THEODORA_ADJ', 'DISTRICT_HIPPODROME');



INSERT OR IGNORE INTO Improvement_Adjacencies (ImprovementType, YieldChangeId) VALUES	
('IMPROVEMENT_FARM', 	'Rh_Theo_Farm_Holy_Site'),
('IMPROVEMENT_FARM', 	'Rh_Theo_Farm_Hippodrome');



INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_THEODORA', 'TRAIT_LEADER_EXPANSIONIST');

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_THEODORA',				'AGENDA_DEVOUT',				25),
--		('LEADER_THEODORA',				'AGENDA_DARWINIST',				20);

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('TheodoraDistricts'),
('TheodoraImprovements'),
--('TheodoraYields'),
('TheodoraPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('TheodoraDistricts',    'TRAIT_LEADER_THEODORA', 'Districts'),
('TheodoraImprovements',    'TRAIT_LEADER_THEODORA', 'Improvements'),
('TheodoraCivics',    'TRAIT_LEADER_THEODORA', 'Civics'), -- Not defined by default
('TheodoraTechs',    'TRAIT_LEADER_THEODORA', 'Technologies'),

('TheodoraWonders',    'TRAIT_LEADER_THEODORA', 'Buildings'),

--('TheodoraYields', 		'TRAIT_LEADER_THEODORA', 'Yields'),
('TheodoraPseudoYields', 'TRAIT_LEADER_THEODORA', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TheodoraImprovements', 'IMPROVEMENT_FARM', 1, 80),

('TheodoraDistricts', 'DISTRICT_HOLY_SITE', 1, 0),
('TheodoraDistricts', 'DISTRICT_HIPPODROME', 1, 200),
('TheodoraDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 0, -200),

('TheodoraWonders', 'BUILDING_MONT_ST_MICHEL', 1, 900), 

('TheodoraCivics', 'CIVIC_GAMES_RECREATION',  1, 100),

('TheodoraTechs', 'TECH_ASTROLOGY', 1, 100),
('TheodoraTechs', 'TECH_BUTTRESS', 1, 100), -- Hagia Sophia

('NewRomeCulturePreference', 'YIELD_RH_PLACEMENT', 1, -20), -- May Improve Holy Site Placement?
('NewRomeCulturePreference', 'YIELD_FAITH', 1, 55), -- pvs 20, 50 (culture adj bonus)

('NewRomeCulturePreference', 'YIELD_RH_SCRIPTURE', 1, 850),

--('NewRomeCulturePreference', 'YIELD_FOOD', 1, 25), -- Farms

--('TheodoraPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  1, 5), -- Built too many units
--('TheodoraPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 5),
('TheodoraPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR',      1, 38), -- World Religion
('TheodoraPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 600), -- pvs 40, 42, 150 (Basil 1000)
('TheodoraPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 			 1, 95), -- pvs 40, 42, 20
('TheodoraPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 			 1, 140), -- pvs 40, 42
('TheodoraPseudoYields', 'PSEUDOYIELD_HAPPINESS', 				 1, 450), -- pvs 17, 26, 30, 300

('TheodoraPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 			 0, -75), -- Farms, pvs 30
('TheodoraPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 			 1, 100), -- Important -- pvs 25, 30,55
('TheodoraPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 		 1, -45), -- Combat strength bonus, pvs 15
('TheodoraPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 				1, -95), -- Combat strength bonus

('TheodoraPseudoYields', 'PSEUDOYIELD_CITY_BASE', 				 1, 250); -- Free cav units


-- Todo farm settling preference
-- Todo farms gets placement yield if next to Hippodrome / Holy Site

-- RAMSES / EGYPT

UPDATE AiFavoredItems SET Value = 25 WHERE ListType = 'MaatLoverExploitationPreference' AND Item = 'PSEUDOYIELD_IMPROVEMENT';

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_RAMSES',				'AGENDA_WONDER_ADVOCATE',				25);

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('RamsesYields');
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RamsesYields', 'TRAIT_LEADER_RAMSES', 'Yields');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RamsesYields', 'YIELD_CULTURE', 1, 3), -- +10 base -- Science -10 base
('RamsesYields', 'YIELD_PRODUCTION', 1, 10), -- +9 base
('RamsesYields', 'YIELD_GOLD', 0, -5),
('RamsesYields', 'YIELD_RH_WONDER',	  	  1, 550), -- pvs 300, 400

('MaatLoverExploitationPreference', 'PSEUDOYIELD_WONDER', 1, 650), -- 150 in Base Trait, 100, 125, 160
('MaatLoverExploitationPreference', 'PSEUDOYIELD_TOURISM', 1, 15),
('MaatLoverExploitationPreference', 'PSEUDOYIELD_DISTRICT', 1, 10), -- Buildings

('MaatLoverExploitationPreference', 'PSEUDOYIELD_GPP_ENGINEER', 1, 15),
('MaatLoverExploitationPreference', 'PSEUDOYIELD_GPP_WRITER', 1, 20), -- Buildings
('MaatLoverExploitationPreference', 'PSEUDOYIELD_GPP_ARTIST', 1, 20), -- Buildings
('MaatLoverExploitationPreference', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 	1, 50), -- Buildings

--('MaatLoverExploitationPreference', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -1),

('MaatLoverExploitationPreference', 'PSEUDOYIELD_GPP_ARTIST', 1, 20), -- Buildings
('MaatLoverExploitationPreference', 'PSEUDOYIELD_ENVIRONMENT', 0, -35); -- Not affected by floods

UPDATE AiLists SET LeaderType = 'TRAIT_LEADER_RAMSES' WHERE ListType = 'RamsesTechs'; 

-- CLEO ALT / EGYPT

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CLEOPATRA_ALT', 'TRAIT_LEADER_DEFENSIVE');

UPDATE AiLists SET LeaderType = 'TRAIT_LEADER_CLEOPATRA_ALT' WHERE ListType = 'CleopatraAltTechs'; -- TRAIT_LEADER_MEDITERRANEAN? the base game cleo trait lol

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('CleopatraAltYields'),
('CleopatraAltDiplomacy'),
('CleopatraAltDistricts'),
('CleopatraAltSettlement'),
('CleopatraAltPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('CleopatraAltYields',    'TRAIT_LEADER_CLEOPATRA_ALT', 'Yields'),
('CleopatraAltDiplomacy', 'TRAIT_LEADER_CLEOPATRA_ALT', 'DiplomaticActions'),
('CleopatraAltDistricts', 'TRAIT_LEADER_CLEOPATRA_ALT', 'Districts'),
('CleopatraAltSettlement', 'TRAIT_LEADER_CLEOPATRA_ALT', 'PlotEvaluations'),
('CleopatraAltPseudoYields', 'TRAIT_LEADER_CLEOPATRA_ALT', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CleopatraAltDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0),
('CleopatraAltDiplomacy', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 0),
('CleopatraAltDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS', 0, 0),

('CleopatraAltYields', 'YIELD_CULTURE', 1, 4), -- Egypt base in leaders 2
('CleopatraAltYields', 'YIELD_PRODUCTION', 1, -9), -- base trait

('CleopatraAltTechs', 			'TECH_WRITING', 0, 100), -- BUILDING_ETEMENANKI
--('CleopatraAltTechs', 			'TECH_BUTTRESS', 0, 0), -- Tech Not useful
('CleopatraAltDistricts', 		'DISTRICT_DAM', 0, -100),
--('CleopatraAltWonders', 		'BUILDING_GREAT_BATH', 0, -100),
('CleopatraAltWonders', 		'BUILDING_GOV_TALL', 1, 900),

('CleopatraAltPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 	1, 50),

-- ('EgyptPseudoYields', 'PSEUDOYIELD_DISTRICT', 	1, 8), -- 15% production by rivers
--('CleopatraAltPseudoYields', 'PSEUDOYIELD_WONDER', 		1, 60), -- BUILDING_ETEMENANKI, 15% production / Sphinx ('EgyptPseudoYields', 'PSEUDOYIELD_WONDER', 1, 110),
('CleopatraAltPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 25), -- Very high Yields / Sphinx -- base 10
('CleopatraAltPseudoYields', 'PSEUDOYIELD_HAPPINESS', 	1, 20), -- Growth
('CleopatraAltPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 20); -- High Appeal


REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('CleopatraAltSettlement', 'Fresh Water', 				0, 2, 	NULL, 'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'),
('CleopatraAltSettlement', 'Specific Feature', 			0, 4, 'FEATURE_MARSH', 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
('CleopatraAltSettlement', 'Specific Feature', 			0, 11, 'FEATURE_FLOODPLAINS', 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'CleopatraAltWonders', 'BUILDING_ETEMENANKI', 1, 900 -- very very important
FROM Types WHERE Type = 'BUILDING_ETEMENANKI';


-- 		<Row Type="FEATURE_FLOODPLAINS" Kind="KIND_FEATURE"/> 		<Row Type="FEATURE_MARSH" Kind="KIND_FEATURE"/>

-- SUNDIATA KEITA / MALI 

UPDATE AiLists SET LeaderType = 'TRAIT_LEADER_SUNDIATA_KEITA' WHERE ListType IN ('KeitaGreatWorks','KeitaCivics','KeitaTechs','KeitaWonders'); -- TRAIT_LEADER_ELEANOR_LOYALTY lol

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('KeitaYields');
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KeitaYields', 'TRAIT_LEADER_SUNDIATA_KEITA', 'Yields');
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KeitaYields', 'YIELD_GOLD', 		1, 42), 
('KeitaYields', 'YIELD_PRODUCTION', 1, -15),
('KeitaYields', 'YIELD_SCIENCE', 	1, -2),
('KeitaYields', 'YIELD_CULTURE', 	1, 7),

('KeitaGreatWorks', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3),
('KeitaGreatWorks', 'PSEUDOYIELD_GREATWORK_WRITING', 1, 40), -- +4 gold, 2 production
('KeitaGreatWorks', 'PSEUDOYIELD_UNIT_TRADE', 1, 		30), -- Markets
('KeitaGreatWorks', 'PSEUDOYIELD_GPP_MERCHANT', 1, 		35), -- Markets provide great writing slots
('KeitaGreatWorks', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 		-15), -- Unique Commerical Hub much more useful
('KeitaGreatWorks', 'PSEUDOYIELD_TOURISM', 1, 			50), -- Lion of Mali -- Focuses on generating Tourism and likes those with low Tourism. Dislikes civilizations that compete with him in Tourism
('KeitaGreatWorks', 'PSEUDOYIELD_GPP_WRITER', 1,		 35),

('KeitaGreatWorks', 'PSEUDOYIELD_GPP_PROPHET', 1,		 15), -- +1 faith in city centres
('KeitaGreatWorks', 'PSEUDOYIELD_GPP_SCIENTIST', 1,		 10),
('KeitaGreatWorks', 'PSEUDOYIELD_GPP_ENGINEER', 0,		 -20),
('KeitaGreatWorks', 'PSEUDOYIELD_GPP_ARTIST', 1,		 15),
('KeitaGreatWorks', 'PSEUDOYIELD_GPP_MUSICIAN', 1,		 15);

-- Patronage of Great People costs 20% less Gold.

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('KeitaSavings');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KeitaSavings',  			 'TRAIT_LEADER_SUNDIATA_KEITA', 'SavingTypes');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('KeitaSavings', 'SAVING_GREAT_PEOPLE', 								 0), -- def 1
--('KeitaSavings', 'SAVING_UNITS', 										 1),
('KeitaSavings', 'SAVING_PLOTS', 										1), -- def 2
('KeitaSavings', 'SAVING_SLUSH_FUND', 								 	-1); -- def 4

-- 1, 3, 3, 5


-- HARDRADA ALT / NORWAY

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_HARALD_ALT', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_HARALD_ALT', 'TRAIT_LEADER_PURSUE_DIPLOMATIC_VICTORY');

/*
		<Row ListType="HaraldAltWonders" Item="BUILDING_GREAT_LIGHTHOUSE" Favored="true"/>
		<Row ListType="HaraldAltWonders" Item="BUILDING_VENETIAN_ARSENAL" Favored="true"/>
		<Row ListType="HaraldAltEnvoys" Item="PSEUDOYIELD_INFLUENCE" Value="30"/>
		<Row ListType="HaraldAltCivics" Item="CIVIC_MILITARY_TRAINING" Favored="true"/>
		<Row ListType="HaraldAltCivics" Item="CIVIC_THEOLOGY" Favored="true"/>
		<Row ListType="HaraldAltCivics" Item="CIVIC_MERCENARIES" Favored="true"/>
		<Row ListType="HaraldAltTechs" Item="TECH_SAILING" Favored="true"/>
		<Row ListType="HaraldAltTechs" Item="TECH_ASTROLOGY" Favored="true"/>
		<Row ListType="HaraldAltTechs" Item="TECH_SHIPBUILDING" Favored="true"/>
		<Row ListType="HaraldAltTechs" Item="TECH_MILITARY_TACTICS" Favored="true"/>
		
		<Row ListType="SagaPreference" Item="DIPLOACTION_DECLARE_PROTECTORATE_WAR" Favored="true"/>
*/


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('HaraldAltUnits'),
('HaraldAltDistricts'),
('HaraldAltDiplomacy'),
('HaraldAltSettlement'),
('HaraldAltYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('HaraldAltUnits',  	'TRAIT_LEADER_HARALD_ALT', 'Units'),
('HaraldAltDistricts',  'TRAIT_LEADER_HARALD_ALT', 'Districts'),
('HaraldAltDiplomacy',  'TRAIT_LEADER_HARALD_ALT', 'DiplomaticActions'),
('HaraldAltSettlement',  'TRAIT_LEADER_HARALD_ALT', 'PlotEvaluations'),
('HaraldAltYields', 	'TRAIT_LEADER_HARALD_ALT', 'Yields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HaraldAltYields', 'YIELD_FAITH', 1, 60), -- Stave church -- pvs 15
('HaraldAltYields', 'YIELD_GOLD', 1, 3),
('HaraldAltYields', 'YIELD_CULTURE', 1, 4), -- pvs 3
('HaraldAltYields', 'YIELD_RH_DIPLO', 1, 90),

('HaraldAltTechs', 'TECH_MINING', 1, 0),
('HaraldAltCivics', 'CIVIC_MYSTICISM', 1, 0),
('HaraldAltCivics', 'CIVIC_FOREIGN_TRADE', 1, 0),
('HaraldAltCivics', 'CIVIC_DIVINE_RIGHT', 1, 0), -- monarchy is so important with the extra influence points

('HaraldAltTechs', 'TECH_SANITATION', 1, 0), -- BUILDING_ORSZAGHAZ

('HaraldAltDistricts', 'DISTRICT_GOVERNMENT', 1, 150), -- gov citystates
('HaraldAltDistricts', 'DISTRICT_HOLY_SITE', 1, 15),

('HaraldAltDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('HaraldAltDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0),
('HaraldAltDiplomacy', 'DIPLOACTION_THIRD_PARTY_WAR', 1, 0),

('HaraldAltWonders', 'BUILDING_GOV_CITYSTATES', 1, 200), -- CS levy discount / combat strength, important!
('HaraldAltWonders', 'BUILDING_GOV_WIDE', 1, 200), -- either one
('HaraldAltWonders', 'BUILDING_GOV_CONQUEST', 1, 200),
('HaraldAltWonders', 'BUILDING_STAVE_CHURCH', 1, 900), -- extra boost as very useful now
('HaraldAltWonders', 'BUILDING_ORSZAGHAZ',     1, 150), -- Important

('HaraldAltEnvoys', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, 72), -- barb ship spam
('HaraldAltEnvoys', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -5),
('HaraldAltEnvoys', 'PSEUDOYIELD_CITY_DEFENCES', 1, -5),
('HaraldAltEnvoys', 'PSEUDOYIELD_CITY_BASE', 1, 20),
('HaraldAltEnvoys', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, -20), -- can't see him caring much lol, however don't have too much for diplo victory
('HaraldAltEnvoys', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 20), -- potential dp victory
('HaraldAltEnvoys', 'PSEUDOYIELD_HAPPINESS', 1, -10),
--('HaraldAltEnvoys', 'PSEUDOYIELD_WONDER', 1, -15),

('HaraldAltEnvoys', 'PSEUDOYIELD_GOVERNOR', 1, 10), 

--('HaraldAltEnvoys', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5),
('HaraldAltEnvoys', 'PSEUDOYIELD_CITY_POPULATION', 1, -100),
('HaraldAltEnvoys', 'PSEUDOYIELD_IMPROVEMENT', 1, -30),
('HaraldAltEnvoys', 'PSEUDOYIELD_GPP_PROPHET', 1, 70), -- stave church envoys and faith bonus
('HaraldAltEnvoys', 'PSEUDOYIELD_ENVIRONMENT', 1, 70), -- forests
('HaraldAltEnvoys', 'PSEUDOYIELD_UNIT_COMBAT', 1, 35), -- beserker / no maintainance cost
('HaraldAltEnvoys', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 22), -- very low maintainance cost
('HaraldAltEnvoys', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 6), -- pvs 2

('HaraldAltEnvoys', 'PSEUDOYIELD_NAVAL_COMBAT', 1, 30), 
('HaraldAltEnvoys', 'PSEUDOYIELD_GPP_GENERAL', 1, -20), 
('HaraldAltEnvoys', 'PSEUDOYIELD_GPP_ADMIRAL', 1,  35), 
--('HaraldAltEnvoys', 'PSEUDOYIELD_GPP_MERCHANT', 1,  15), 
('HaraldAltEnvoys', 'PSEUDOYIELD_TOURISM', 1,  10), 
('HaraldAltEnvoys', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 10),
('HaraldAltEnvoys', 'PSEUDOYIELD_UNIT_SETTLER', 1, 7); -- more cities


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('HaraldAltSettlement', 'Coastal',           0, 15,             NULL), 
('HaraldAltSettlement', 'Foreign Continent', 0, 20,             NULL), 
('HaraldAltSettlement', 'Specific Feature',  0,  6, 'FEATURE_FOREST'); -- Stave Church



-- todo increase pillage base op limit to 2


-- Modded

--INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('VictoriaAltWonders', 'BUILDING_TOWER_BRIDGE', 1, 0); -- Modded