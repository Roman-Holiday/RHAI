
-- JFD's Soviet Union 

/*
INSERT OR IGNORE INTO Types	
		(Type,					Kind)
VALUES	('LEADER_JFD_STALIN',	'KIND_LEADER');	

INSERT OR IGNORE INTO Leaders	
		(LeaderType,			Name,							InheritFrom,		SceneLayers)
VALUES	('LEADER_JFD_STALIN',	'LOC_LEADER_JFD_STALIN_NAME',	'LEADER_DEFAULT',	4);	

INSERT OR IGNORE INTO HistoricalAgendas	
		(LeaderType,			AgendaType)
VALUES	('LEADER_JFD_STALIN',	'AGENDA_JFD_SOVIET_DIALECTICS');	

INSERT OR IGNORE INTO Types	
		(Type,										Kind)
VALUES	('TRAIT_AGENDA_JFD_SOVIET_DIALECTICS',		'KIND_TRAIT');			
			
-- Agendas							
INSERT OR IGNORE INTO Agendas									
		(AgendaType,								Name,										Description)
VALUES	('AGENDA_JFD_SOVIET_DIALECTICS',			'LOC_AGENDA_JFD_SOVIET_DIALECTICS_NAME',	'LOC_AGENDA_JFD_SOVIET_DIALECTICS_DESCRIPTION');	
			
-- Traits							
INSERT OR IGNORE INTO Traits				
		(TraitType,									Name,					Description)
VALUES	('TRAIT_AGENDA_JFD_SOVIET_DIALECTICS',		'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');	
			
-- AgendaTraits			
				
INSERT OR IGNORE INTO AgendaTraits				
		(AgendaType,								TraitType)
VALUES	('AGENDA_JFD_SOVIET_DIALECTICS',			'TRAIT_AGENDA_JFD_SOVIET_DIALECTICS');	
*/

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JFD_STALIN', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JFD_STALIN', 'TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JFD_STALIN', 'TRAIT_LEADER_EXPANSIONIST');
--INSERT OR IGNORE INTO AgendaTraits(AgendaType, TraitType) VALUES ('AGENDA_JFD_SOVIET_DIALECTICS', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('JFD_Stalin_Civics'),
('JFD_Stalin_Techs'),
('JFD_Stalin_DiplomaticActions'),
('JFD_Stalin_UnitBuilds'),
('JFD_Stalin_Settlement'),
('JFD_Stalin_IMPROVEMENTS'),
('JFD_Stalin_PseudoYields'),
('JFD_Stalin_Buildings'),
('JFD_Stalin_Yields'),
('JFD_Stalin_Districts');

--('JFD_Stalin_Units'),
--('JFD_Stalin_Projects'),

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('JFD_Stalin_Yields',   'TRAIT_LEADER_TEN_VICTORIES', 'Yields'),
('JFD_Stalin_Buildings', 'TRAIT_LEADER_TEN_VICTORIES', 'Buildings'),
('JFD_Stalin_Civics', 'TRAIT_LEADER_TEN_VICTORIES', 'Civics'),
('JFD_Stalin_Techs', 'TRAIT_LEADER_TEN_VICTORIES', 'Technologies'),
('JFD_Stalin_Districts', 'TRAIT_LEADER_TEN_VICTORIES', 'Districts'),
('JFD_Stalin_Settlement',   'TRAIT_LEADER_TEN_VICTORIES', 'PlotEvaluations'),
('JFD_Stalin_DiplomaticActions',	'TRAIT_LEADER_TEN_VICTORIES',		'DiplomaticActions'),
('JFD_Stalin_IMPROVEMENTS',		'TRAIT_LEADER_TEN_VICTORIES',		'Improvements'),
('JFD_Stalin_PseudoYields',   'TRAIT_LEADER_TEN_VICTORIES', 'PseudoYields'),
('JFD_Stalin_UnitBuilds',   'TRAIT_LEADER_TEN_VICTORIES', 'UnitPromotionClasses');

--('JFD_Stalin_Units',        'TRAIT_LEADER_TEN_VICTORIES', 'Units'),
--('JFD_Stalin_Projects',   'TRAIT_LEADER_TEN_VICTORIES', 'Projects'),

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 240), 
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -16),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -100),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -10), -- pvs +10
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, -50),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 20),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 16), -- pvs 14
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 0, -5),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 0, -5),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_GPP_WRITER', 0, -40),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 15),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 18),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 8),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0, -95),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_HAPPINESS', 0, -35),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 0, -15),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 50), 
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 12), -- Unique science district
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_WONDER', 1, 80),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 20),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, -40),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 25), -- pvs 20

-- Unit Combat 10 Already Exists
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1,	 22), -- pvs 20
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 	12), -- pvs 11
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_SPACE_RACE', 1, 			15),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, 		25),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 			12), -- expansionist trait
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1,	 	-25), -- Rock Bands

('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1,  -45),
('JFD_Stalin_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 		-19); -- pvs -20


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_DENOUNCE', 1, 0),
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 1, 70),
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_JOINT_WAR', 1, 80),
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_THIRD_PARTY_WAR', 1, 0),
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_DEMAND_TRIBUTE', 1, 90),
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_PROPOSE_PEACE_DEAL', 0, -50),
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_MAKE_PEACE', 0, -30), -- different
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 60), -- Might be in alliance list as well / instead?
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_ALLIANCE_RELIGIOUS', 0, 0),
--('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 95),

('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_DECLARE_TERRITORIAL_WAR', 1, 0),
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_DECLARE_GOLDEN_AGE_WAR', 1, 0),
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_DECLARE_IDEOLOGICAL_WAR', 1, 90),
('JFD_Stalin_DiplomaticActions', 'DIPLOACTION_DECLARE_RECONQUEST_WAR', 1, 0),

('JFD_Stalin_IMPROVEMENTS',	'IMPROVEMENT_MINE',	1,	200),
('JFD_Stalin_IMPROVEMENTS',	'IMPROVEMENT_PASTURE',	1,	40),

('JFD_Stalin_Civics', 'CIVIC_MILITARY_TRADITION', 1, 0),
('JFD_Stalin_Civics', 'CIVIC_MILITARY_TRAINING', 1, 0),
('JFD_Stalin_Civics', 'CIVIC_MERCENARIES', 1, 0),
('JFD_Stalin_Civics', 'CIVIC_NATIONALISM', 1, 0),
('JFD_Stalin_Civics', 'CIVIC_MOBILIZATION', 1, 0),
('JFD_Stalin_Civics', 'CIVIC_RAPID_DEPLOYMENT', 1, 0),
('JFD_Stalin_Civics', 'CIVIC_SUFFRAGE', 0, 0), -- Democracy,
('JFD_Stalin_Civics', 'CIVIC_TOTALITARIANISM', 0, 0), -- Fascism,
('JFD_Stalin_Civics', 'CIVIC_CLASS_STRUGGLE', 1, 0), -- Communism, yes comrade
('JFD_Stalin_Civics', 'CIVIC_OPTIMIZATION_IMPERATIVE', 1, 0), 
('JFD_Stalin_Civics', 'CIVIC_DISTRIBUTED_SOVEREIGNTY', 0, 0), 
('JFD_Stalin_Civics', 'CIVIC_VENTURE_POLITICS', 0, 0), 


('JFD_Stalin_Buildings', 'BUILDING_GOV_TALL', 0, 0), 
('JFD_Stalin_Buildings', 'BUILDING_GOV_WIDE', 1, 90), 
('JFD_Stalin_Buildings', 'BUILDING_GOV_CONQUEST', 0, 0),

('JFD_Stalin_Buildings', 'BUILDING_GOV_FAITH', 0, 0),
('JFD_Stalin_Buildings', 'BUILDING_GOV_SPIES', 1, 80),
('JFD_Stalin_Buildings', 'BUILDING_GOV_CITYSTATES', 1, 80),

('JFD_Stalin_Buildings', 'BUILDING_GOV_MILITARY', 1, 90),
('JFD_Stalin_Buildings', 'BUILDING_GOV_CULTURE', 0, 0),
('JFD_Stalin_Buildings', 'BUILDING_GOV_SCIENCE', 1, 40),

('JFD_Stalin_Buildings', 'BUILDING_BOLSHOI_THEATRE', 1, 0),
('JFD_Stalin_Buildings', 'BUILDING_STONEHENGE', 0, 0),
('JFD_Stalin_Buildings', 'BUILDING_GREAT_LIBRARY', 1, 0),
('JFD_Stalin_Buildings', 'BUILDING_TERRACOTTA_ARMY', 1, 0),
('JFD_Stalin_Buildings', 'BUILDING_PANAMA_CANAL', 1, 0),
('JFD_Stalin_Buildings', 'BUILDING_STATUE_OF_ZEUS', 1, 0),
('JFD_Stalin_Buildings', 'BUILDING_VENETIAN_ARSENAL', 1, 0),
('JFD_Stalin_Buildings', 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION', 1, 0),
('JFD_Stalin_Buildings', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Stalin_Settlement', 'Foreign Continent', 0, 9), -- pvs 6 -- norway 20
('JFD_Stalin_Settlement', 'Fresh Water',      0, 18),
('JFD_Stalin_Settlement', 'Coastal', 0, -4),
('JFD_Stalin_Settlement', 'Nearest Friendly City', 0, 4); -- pvs 3 then 4

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('JFD_Stalin_Settlement', 'Total Yield', 0, 2, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('JFD_Stalin_Settlement', 'Specific Resource', 0, 5, 'RESOURCE_NITER',  'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- def 2
('JFD_Stalin_Settlement', 'Specific Resource', 0, 7, 'RESOURCE_COAL',  'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('JFD_Stalin_Settlement', 'Specific Resource', 0, 8, 'RESOURCE_OIL',  'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('JFD_Stalin_Settlement', 'Specific Resource', 0, 9, 'RESOURCE_ALUMINUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('JFD_Stalin_Settlement', 'Specific Resource', 0, 12, 'RESOURCE_URANIUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- RST 8


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Stalin_UnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 1, 25),
('JFD_Stalin_UnitBuilds', 'PROMOTION_CLASS_MELEE', 1, 11),
('JFD_Stalin_UnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 11),
('JFD_Stalin_UnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 1, 5), 
('JFD_Stalin_UnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY_CAVALRY', 1, 1),
('JFD_Stalin_UnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 1, 10),
('JFD_Stalin_UnitBuilds', 'PROMOTION_CLASS_NAVAL_RANGED', 1, 10),
('JFD_Stalin_UnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE', 1, -5),
('JFD_Stalin_UnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, 12),

--('JFD_Stalin_Buildings', 'BUILDING_STATUE_OF_LIBERTY', 0, 0),
('JFD_Stalin_Buildings', 'BUILDING_CRISTO_REDENTOR', 0, 0),
-- Yield Science 20 already exists

('JFD_Stalin_Yields', 'YIELD_RH_NUCLEAR', 1, 250),
('JFD_Stalin_Yields', 'YIELD_RH_COMMUNISM', 1, 900),
('JFD_Stalin_Yields', 'YIELD_PRODUCTION', 1, 18),
('JFD_Stalin_Yields', 'YIELD_FOOD', 1, 4),
('JFD_Stalin_Yields', 'YIELD_CULTURE', 1, -8),
('JFD_Stalin_Yields', 'YIELD_FAITH', 1, -40), -- TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE
('JFD_Stalin_Yields', 'YIELD_GOLD', 1, -5);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Stalin_Techs', 'TECH_NUCLEAR_FISSION', 1, 0), 
('JFD_Stalin_Techs', 'TECH_NUCLEAR_FUSION', 1, 0), 
('JFD_Stalin_Techs', 'TECH_COMPUTERS', 0, 0), -- Doesn't like them
('JFD_Stalin_Techs', 'TECH_ROBOTICS', 1, 0),
('JFD_Stalin_Techs', 'TECH_REFINING', 1, 0),
('JFD_Stalin_Techs', 'TECH_COMBINED_ARMS', 1, 0),
('JFD_Stalin_Techs', 'TECH_RADIO', 1, 0),
('JFD_Stalin_Techs', 'TECH_SMART_MATERIALS', 1, 0);

/*
Existing:
('JFD_Stalin_Techs',			1,			0,			'TECH_BRONZE_WORKING'), 
('JFD_Stalin_Techs',			1,			0,			'TECH_COMBUSTION'), 
('JFD_Stalin_Techs',			1,			0,			'TECH_MILITARY_TACTICS'), 
		*/

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Stalin_Districts', 'DISTRICT_GOVERNMENT', 1, 0),
('JFD_Stalin_Districts', 'DISTRICT_DIPLOMATIC_QUARTER', 1, 0),
('JFD_Stalin_Districts', 'DISTRICT_ENCAMPMENT', 1, 0),
('JFD_Stalin_Districts', 'DISTRICT_CAMPUS', 1, 0),
('JFD_Stalin_Districts', 'DISTRICT_INDUSTRIAL_ZONE', 1, 0),
('JFD_Stalin_Districts', 'DISTRICT_AERODROME', 1, 0),
('JFD_Stalin_Districts', 'DISTRICT_NEIGHBORHOOD', 1, 0),
--('JFD_Stalin_Districts', 'DISTRICT_AQUEDUCT', 1, 0),
('JFD_Stalin_Districts', 'DISTRICT_DAM', 1, 0),
('JFD_Stalin_Districts', 'DISTRICT_CANAL', 1, 0),
('JFD_Stalin_Districts', 'DISTRICT_HARBOR', 1, 0),
--('JFD_Stalin_Districts', 'DISTRICT_COMMERICAL_HUB', 0, 0),
('JFD_Stalin_Districts', 'DISTRICT_HOLY_SITE', 0, 0);





