
-- JFD Germany

/*
INSERT OR IGNORE INTO Types	
		(Type,						Kind)
VALUES	('LEADER_JFD_HITLER',		'KIND_LEADER');

INSERT OR IGNORE INTO Leaders	
		(LeaderType,				Name,							InheritFrom,		SceneLayers)
VALUES	('LEADER_JFD_HITLER',		'LOC_LEADER_JFD_HITLER_NAME',	'LEADER_DEFAULT',	4);

INSERT OR IGNORE INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_JFD_HITLER',		'AGENDA_JFD_LEBENSRAUM');

-- Types
	
INSERT OR IGNORE INTO Types	
		(Type,								Kind)
VALUES	('TRAIT_AGENDA_JFD_LEBENSRAUM',		'KIND_TRAIT');			
			
-- Agendas			
				
INSERT OR IGNORE INTO Agendas				
		(AgendaType,						Name,								Description)
VALUES	('AGENDA_JFD_LEBENSRAUM',			'LOC_AGENDA_JFD_LEBENSRAUM_NAME',	'LOC_AGENDA_JFD_LEBENSRAUM_DESCRIPTION');	
			
-- Traits			
				
INSERT OR IGNORE INTO Traits				
		(TraitType,							Name,					Description)
VALUES	('TRAIT_AGENDA_JFD_LEBENSRAUM',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');	
			
-- AgendaTraits			
				
INSERT OR IGNORE INTO AgendaTraits				
		(AgendaType,						TraitType)
VALUES	('AGENDA_JFD_LEBENSRAUM',			'TRAIT_AGENDA_JFD_LEBENSRAUM');		
*/


INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JFD_HITLER', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JFD_HITLER', 'TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV');

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JFD_HITLER', 'TRAIT_LEADER_EXPANSIONIST');



INSERT INTO AiListTypes (ListType) VALUES
('JFD_Hitler_Yields'),
('JFD_Hitler_PseudoYields'),
--('JFD_Hitler_Buildings'), -- exists
--('JFD_Hitler_Units'), -- exists
--('JFD_Hitler_Civics'), -- exists
--('JFD_Hitler_DiplomaticActions'), -- exists
('JFD_Hitler_Alliances'),
('JFD_Hitler_Districts'),
('JFD_Hitler_UnitBuilds'),
('JFD_Hitler_Projects'),
--('JFD_Hitler_Operations'),
('JFD_Hitler_IMPROVEMENTS'),
('JFD_Hitler_Settlement'),
('JFD_Hitler_ScoutUses');



INSERT INTO AiLists (ListType, LeaderType, System) VALUES
('JFD_Hitler_Yields',   'TRAIT_AGENDA_JFD_LEBENSRAUM', 'Yields'),
('JFD_Hitler_PseudoYields',   'TRAIT_AGENDA_JFD_LEBENSRAUM', 'PseudoYields'),
--('JFD_Hitler_Buildings', 'TRAIT_AGENDA_JFD_LEBENSRAUM', 'Buildings'),  -- exists
--('JFD_Hitler_Civics', 'TRAIT_AGENDA_JFD_LEBENSRAUM', 'Civics'), -- exists
--('JFD_Hitler_Units',        'TRAIT_AGENDA_JFD_LEBENSRAUM', 'Units'), -- exists
--('JFD_Hitler_DiplomaticActions',	'TRAIT_AGENDA_JFD_LEBENSRAUM',		'DiplomaticActions'), -- exists
('JFD_Hitler_Alliances',	'TRAIT_AGENDA_JFD_LEBENSRAUM',				'Alliances'),
('JFD_Hitler_Projects',   'TRAIT_AGENDA_JFD_LEBENSRAUM', 'Projects'),
('JFD_Hitler_UnitBuilds',   'TRAIT_AGENDA_JFD_LEBENSRAUM', 'UnitPromotionClasses'),
--('JFD_Hitler_Operations',   'TRAIT_AGENDA_JFD_LEBENSRAUM', 'AiOperationTypes'),
('JFD_Hitler_IMPROVEMENTS',		'TRAIT_AGENDA_JFD_LEBENSRAUM',		'Improvements'),
('JFD_Hitler_Settlement',   'TRAIT_AGENDA_JFD_LEBENSRAUM', 'PlotEvaluations'),
('JFD_Hitler_ScoutUses',    'TRAIT_AGENDA_JFD_LEBENSRAUM', 'AiScoutUses'),

('JFD_Hitler_Districts',    'TRAIT_AGENDA_JFD_LEBENSRAUM', 'Districts');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 450), -- pvs 340
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -45), -- pvs -32, -35, -40
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -60), -- pvs -50, -55
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 20),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -100),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 35), -- pvs 25, 28, 35
--('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 1),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 30), -- pvs 25
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 45), -- pvs 60
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 37), -- pvs 24, 30, 35
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 23), -- pvs 18, 20
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 75), -- pvs 25, 40
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 20), -- pvs 15
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 36),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0, -100),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 26),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GPP_WRITER', 0, -20), -- pvs -15
--('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 5), -- prefer harbours
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 5),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 25), -- pvs 23
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 0, -10),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 15),

('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GOVERNOR', 				1, 30),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GOLDENAGE_POINT', 			1, 15),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',		 1, -90),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 0, -20),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 		1, -5),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_INFLUENCE', 				1, 10),

('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GREATWORK_RELIGIOUS', 1, -18),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GREATWORK_WRITING', 1, -20),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GREATWORK_ARTIFACT', 1, 35),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GREATWORK_LANDSCAPE', 1, -10),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GREATWORK_PORTRAIT', 1, -5),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GREATWORK_SCULPTURE', 1, -20),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GREATWORK_MUSIC', 1, -15),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 75),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 50), -- pvs 60 but making too many farms on strategics
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_WONDER', 1, 100), -- pvs 110
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_TOURISM', 1, -20), 
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_SPACE_RACE', 1, 10),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS' , 1, 175),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 0, -65),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 40),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, -25),
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -30), -- loves war, pvs -20, -26 (was still too friendly on this)
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, 25);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Hitler_Yields', 'YIELD_FAITH', 0, -100), -- pvs -60
('JFD_Hitler_Yields', 'YIELD_PRODUCTION', 1, 15), -- pvs 15
('JFD_Hitler_Yields', 'YIELD_SCIENCE', 1, 22), -- pvs 20
('JFD_Hitler_Yields', 'YIELD_CULTURE', 0, -5),
('JFD_Hitler_Yields', 'YIELD_GOLD', 1, 9),
('JFD_Hitler_Yields', 'YIELD_FOOD', 1, 5), -- pvs 10, 8
('JFD_Hitler_Yields', 'YIELD_RH_FASCISM', 1, 900),
('JFD_Hitler_Yields', 'YIELD_RH_WONDER', 1, 40),
('JFD_Hitler_Yields', 'YIELD_RH_NUCLEAR', 1, 250),


('JFD_Hitler_IMPROVEMENTS',		'IMPROVEMENT_MINE',		1,		250),

--('JFD_Hitler_IMPROVEMENTS',		'IMPROVEMENT_FISHING_BOATS',		1,		0),
--('JFD_Hitler_IMPROVEMENTS',		'IMPROVEMENT_QUARRY',				1,		0),
('JFD_Hitler_IMPROVEMENTS',		'IMPROVEMENT_PASTURE',				1,		40),

('JFD_Hitler_IMPROVEMENTS',		'IMPROVEMENT_FARM',		0,		-10), -- don't make them on strategics
('JFD_Hitler_IMPROVEMENTS',		'IMPROVEMENT_OIL_WELL',		1,		250),

--('JFD_Hitler_Operations',		'Wartime Attack Enemy City',			1,			5),
--('JFD_Hitler_Operations',		'Wartime Attack Walled City',			1,			5),

('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 20), -- germany more districts -- pvs 17, 19
('JFD_Hitler_PseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 20); -- def 1.6 - LAI 1.7, pvs 22 -- expansionist trait

--('JFD_Hitler_Units',        'UNIT_BUILDER', 1, 10), - not sure if these 3 work
--('JFD_Hitler_Units',        'UNIT_MILITARY_ENGINEER', 1, 15),
--('JFD_Hitler_Units',        'UNIT_GIANT_DEATH_ROBOT', 1, -10);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Hitler_Settlement', 'Foreign Continent', 0, 15), -- norway 20 -- pvs 8, 16, 15
('JFD_Hitler_Settlement', 'Nearest Friendly City', 0, 2); -- expansive empire -- testing increasing from 3 to 4 -- now 5, now 4, 2

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('JFD_Hitler_Settlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('JFD_Hitler_Settlement', 'Inner Ring Yield', 0, 2, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- def 2
('JFD_Hitler_Settlement', 'Specific Resource', 0, 8, 'RESOURCE_NITER',  'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- def 2
('JFD_Hitler_Settlement', 'Specific Resource', 0, 2, 'RESOURCE_COAL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Naval gets 3 -- pvs 2
('JFD_Hitler_Settlement', 'Specific Resource', 0, 8, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- pvs 10
('JFD_Hitler_Settlement', 'Specific Resource', 0, 16, 'RESOURCE_ALUMINUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- new, pvs 8
('JFD_Hitler_Settlement', 'Specific Resource', 0, 30, 'RESOURCE_URANIUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- new -- RST 8


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

--('JFD_Hitler_Buildings', 'BUILDING_TERRACOTTA_ARMY', 1, 0), -- already exists 
--('JFD_Hitler_Buildings', 'BUILDING_ALHAMBRA', 1, 0),
('JFD_Hitler_Buildings', 'BUILDING_VENETIAN_ARSENAL', 1, 900),
('JFD_Hitler_Buildings', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),

('JFD_Hitler_Buildings', 'BUILDING_GOV_TALL', 0, 0), 
('JFD_Hitler_Buildings', 'BUILDING_GOV_WIDE', 1, 200), 
('JFD_Hitler_Buildings', 'BUILDING_GOV_CONQUEST', 1, 60),

('JFD_Hitler_Buildings', 'BUILDING_GOV_FAITH', 0, 0),
('JFD_Hitler_Buildings', 'BUILDING_GOV_SPIES', 1, 200),
('JFD_Hitler_Buildings', 'BUILDING_GOV_CITYSTATES', 0, 0),

('JFD_Hitler_Buildings', 'BUILDING_GOV_MILITARY', 1, 200),
('JFD_Hitler_Buildings', 'BUILDING_GOV_CULTURE', 0, 0),
--('JFD_Hitler_Buildings', 'BUILDING_GOV_SCIENCE', 1, 0),


('JFD_Hitler_Buildings', 'BUILDING_STABLE', 1, 90), 
('JFD_Hitler_Buildings', 'BUILDING_LIGHTHOUSE', 1, 90), 

('JFD_Hitler_Buildings', 'BUILDING_HAGIA_SOPHIA', 0, 0),

('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DENOUNCE', 1, 0),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 1, 0),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DEMAND_TRIBUTE', 1, 90),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_JOINT_WAR', 1, 50),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_THIRD_PARTY_WAR', 1, 0),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_PROPOSE_PEACE_DEAL', 0, -500),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_MAKE_PEACE', 0, -50), 
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 80),
--('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_ALLIANCE_CULTURAL', 0, 0),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_ALLIANCE_RELIGIOUS', 0, 0),
--('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 95),
--('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DECLARE_FORMAL_WAR', 1, 0), -- More of a suprise kinda guy
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DECLARE_TERRITORIAL_WAR', 1, 80),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DECLARE_GOLDEN_AGE_WAR', 1, 80),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DECLARE_IDEOLOGICAL_WAR', 1, 90),
('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DECLARE_RECONQUEST_WAR', 1, 70);
--('JFD_Hitler_DiplomaticActions', 'DIPLOACTION_DECLARE_COLONIAL_WAR', 1, 0),


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Hitler_Alliances', 'ALLIANCE_MILITARY', 1, 0),
('JFD_Hitler_Alliances', 'ALLIANCE_SCIENTIFIC', 1, 0),
('JFD_Hitler_Alliances', 'ALLIANCE_RELIGIOUS', 0, -90);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Hitler_Districts', 'DISTRICT_GOVERNMENT', 1, 80),
('JFD_Hitler_Districts', 'DISTRICT_DIPLOMATIC_QUARTER', 1, 80),
('JFD_Hitler_Districts', 'DISTRICT_ENCAMPMENT', 1, 0),
('JFD_Hitler_Districts', 'DISTRICT_CAMPUS', 1, 0),
('JFD_Hitler_Districts', 'DISTRICT_HANSA', 1, 0),
('JFD_Hitler_Districts', 'DISTRICT_AERODROME', 1, 0),
--('JFD_Hitler_Districts', 'DISTRICT_AQUEDUCT', 1, 0),
('JFD_Hitler_Districts', 'DISTRICT_DAM', 1, 0),
('JFD_Hitler_Districts', 'DISTRICT_HARBOR', 1, 0),
('JFD_Hitler_Districts', 'DISTRICT_CANAL', 1, 0),
('JFD_Hitler_Districts', 'DISTRICT_COMMERICAL_HUB', 1, 0), -- Hansa Adj bonus
('JFD_Hitler_Districts', 'DISTRICT_HOLY_SITE', 0, -90),

--('JFD_Hitler_Civics', 'CIVIC_MILITARY_TRADITION', 1, 0),
('JFD_Hitler_Civics', 'CIVIC_MILITARY_TRAINING', 1, 0),
--('JFD_Hitler_Civics', 'CIVIC_MERCENARIES', 1, 0),
--('JFD_Hitler_Civics', 'CIVIC_NATIONALISM', 1, 0),
--('JFD_Hitler_Civics', 'CIVIC_MOBILIZATION', 1, 0),
('JFD_Hitler_Civics', 'CIVIC_RAPID_DEPLOYMENT', 1, 0),
('JFD_Hitler_Civics', 'CIVIC_SUFFRAGE', 0, 0), -- Democracy, no -- probably doesn't work
--('JFD_Hitler_Civics', 'CIVIC_TOTALITARIANISM', 1, 0), -- Fascism, yes
('JFD_Hitler_Civics', 'CIVIC_CLASS_STRUGGLE', 0, 0), -- Communism, no -- probably doesn't work
('JFD_Hitler_Civics', 'CIVIC_OPTIMIZATION_IMPERATIVE', 1, 0), 
('JFD_Hitler_Civics', 'CIVIC_DISTRIBUTED_SOVEREIGNTY', 0, 0), 
('JFD_Hitler_Civics', 'CIVIC_VENTURE_POLITICS', 1, 0), 
('JFD_Hitler_Civics', 'CIVIC_NUCLEAR_PROGRAM',	1,	0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('JFD_Hitler_Techs', 'TECH_ASTROLOGY',     0, 0), 
('JFD_Hitler_Techs', 'TECH_WRITING',     1, 0), 
('JFD_Hitler_Techs', 'TECH_MINING',     1, 0), 
('JFD_Hitler_Techs', 'TECH_POTTERY',     1, 0), 
('JFD_Hitler_Techs', 'TECH_ANIMAL_HUSBANDRY',     1, 0), 
('JFD_Hitler_Techs', 'TECH_ENGINEERING',     1, 0), -- Catapults

('JFD_Hitler_Techs', 'TECH_NUCLEAR_FISSION', 1, 0), 
('JFD_Hitler_Techs', 'TECH_NUCLEAR_FUSION', 1, 100), 
('JFD_Hitler_Techs', 'TECH_COMPUTERS', 1, 0), 
('JFD_Hitler_Techs', 'TECH_ROBOTICS', 1, 0),
('JFD_Hitler_Techs', 'TECH_REFINING', 1, 0),
('JFD_Hitler_Techs', 'TECH_COMBINED_ARMS', 1, 0),
('JFD_Hitler_Techs', 'TECH_RADIO', 1, 0),
('JFD_Hitler_Techs', 'TECH_SMART_MATERIALS', 1, 100),
('JFD_Hitler_Techs', 'TECH_INDUSTRIALIZATION', 1, 0),

('JFD_Hitler_Projects', 'PROJECT_MANHATTAN_PROJECT', 1, 900),
('JFD_Hitler_Projects', 'PROJECT_OPERATION_IVY', 1, 900),
--('JFD_Hitler_Projects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 1, 0), -- doesn't build final space victory projects
('JFD_Hitler_Projects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 1, 0),
('JFD_Hitler_Projects', 'PROJECT_CARBON_RECAPTURE', 0, 0),

('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 1, 30), -- pvs 37
--('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_MELEE', 1, 5),
--('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 3),
('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 1, 5), -- previosuly disabled as builds too many tanks etc -- can't invade cities as well
--('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY_CAVALRY', 1, 1),
('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 0, -10),
('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_NAVAL_RAIDER', 1, 12),
('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_NAVAL_RANGED', 1, 8),
('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE', 0, -8), 
('JFD_Hitler_UnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, 7); -- pvs 15

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Hitler_Techs', 'TECH_COMBUSTION', 1, 0); -- Panzer

--INSERT OR INSERT OR IGNORE INTO HistoricalAgendas	
--		(LeaderType,				AgendaType)
--VALUES	('LEADER_JFD_HITLER',		'AGENDA_JFD_LEBENSRAUM');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Hitler_Buildings', 'BUILDING_STONEHENGE', 0, -90);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Hitler_ScoutUses', 'DEFAULT_NAVAL_SCOUTS', 1, 100), -- pvs 100
('JFD_Hitler_ScoutUses', 'DEFAULT_LAND_SCOUTS', 1, 100),
('JFD_Hitler_ScoutUses', 'LAND_SCOUTS_PER_PRIMARY_REGION', 1, 50), -- joao 100
--('JFD_Hitler_ScoutUses', 'LAND_SCOUTS_PER_SECONDARY_REGION', 1, 50),
('JFD_Hitler_ScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 1, 50); -- joao 100

