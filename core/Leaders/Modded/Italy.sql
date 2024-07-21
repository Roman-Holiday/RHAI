
-- JFD'S ITALY / BENITO MUSSOLINI AI PREFERENCES

/*
INSERT OR IGNORE INTO Types	
		(Type,						Kind)
VALUES	('LEADER_JFD_MUSSOLINI',	'KIND_LEADER');	

INSERT OR IGNORE INTO Leaders	
		(LeaderType,				Name,								InheritFrom,		SceneLayers)
VALUES	('LEADER_JFD_MUSSOLINI',	'LOC_LEADER_JFD_MUSSOLINI_NAME',	'LEADER_DEFAULT',	4);	

INSERT OR IGNORE INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_JFD_MUSSOLINI',	'AGENDA_JFD_MARCH_TO_THE_OCEAN');	

-- LEADER: AGENDAS

INSERT OR IGNORE INTO Types	
		(Type,											Kind)
VALUES	('TRAIT_AGENDA_JFD_MARCH_TO_THE_OCEAN',			'KIND_TRAIT');			
			
-- Agendas			
				
INSERT OR IGNORE INTO Agendas				
		(AgendaType,									Name,											Description)
VALUES	('AGENDA_JFD_MARCH_TO_THE_OCEAN',				'LOC_AGENDA_JFD_MARCH_TO_THE_OCEAN_NAME',		'LOC_AGENDA_JFD_MARCH_TO_THE_OCEAN_DESCRIPTION');	
			
-- Traits			
				
INSERT OR IGNORE INTO Traits				
		(TraitType,										Name,					Description)
VALUES	('TRAIT_AGENDA_JFD_MARCH_TO_THE_OCEAN',			'LOC_PLACEHOLDER',		'LOC_PLACEHOLDER');	
			
-- AgendaTraits			
				
INSERT OR IGNORE INTO AgendaTraits				
		(AgendaType,									TraitType)
VALUES	('AGENDA_JFD_MARCH_TO_THE_OCEAN',				'TRAIT_AGENDA_JFD_MARCH_TO_THE_OCEAN');	
*/

--INSERT OR IGNORE INTO AgendaTraits(AgendaType, TraitType) VALUES ('AGENDA_JFD_MARCH_TO_THE_OCEAN', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JFD_MUSSOLINI', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JFD_MUSSOLINI', 'TRAIT_LEADER_EXPANSIONIST');


/*
Existing:
VALUES	('JFD_Mussolini_Buildings'),
		('JFD_Mussolini_Civics'),
		('JFD_Mussolini_Districts'),
		('JFD_Mussolini_PseudoYields'),
		('JFD_Mussolini_Techs'),
		('JFD_Mussolini_Units');
*/


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
--('JFD_Mussolini_Buildings'), -- JFD_Mussolini_Buildings Already Exists
--('JFD_Mussolini_Units'), -- JFD_Mussolini_Units Already Exists
--('JFD_Mussolini_Civics'),
--('JFD_Mussolini_PseudoYields'), Already Exists

('JFD_Mussolini_UnitBuilds'),
('JFD_Mussolini_Yields'),
('JFD_Mussolini_DiplomaticActions');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('JFD_Mussolini_Yields',   'TRAIT_LEADER_JFD_NOTHING_AGAINST_THE_STATE', 'Yields'),

--('JFD_Mussolini_Buildings', 'TRAIT_LEADER_JFD_NOTHING_AGAINST_THE_STATE', 'Buildings'),
--('JFD_Mussolini_Units',        'TRAIT_LEADER_JFD_NOTHING_AGAINST_THE_STATE', 'Units'),
--('JFD_Mussolini_PseudoYields',   'TRAIT_LEADER_JFD_NOTHING_AGAINST_THE_STATE', 'PseudoYields'),
--('JFD_Mussolini_Civics', 'TRAIT_LEADER_JFD_NOTHING_AGAINST_THE_STATE', 'Civics'),

('JFD_Mussolini_UnitBuilds',   'TRAIT_LEADER_JFD_NOTHING_AGAINST_THE_STATE',	 'UnitPromotionClasses'),
('JFD_Mussolini_DiplomaticActions',	'TRAIT_LEADER_JFD_NOTHING_AGAINST_THE_STATE',		'DiplomaticActions');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('JFD_Mussolini_Yields', 'YIELD_FAITH', 0, -15), -- TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE
('JFD_Mussolini_Yields', 'YIELD_PRODUCTION', 1, 6),
('JFD_Mussolini_Yields', 'YIELD_SCIENCE', 1, 1),
--('JFD_Mussolini_Yields', 'YIELD_SCIENCE', 1, 20),
--('JFD_Mussolini_Yields', 'YIELD_CULTURE', 1, -5),
('JFD_Mussolini_Yields', 'YIELD_GOLD', 0, -5),
--('JFD_Mussolini_Yields', 'YIELD_FOOD', 1, 10),
('JFD_Mussolini_Yields', 'YIELD_RH_FASCISM', 1, 900),
('JFD_Mussolini_Yields', 'YIELD_RH_WAR', 1, 35),

('JFD_Mussolini_Buildings', 'BUILDING_GOV_TALL', 0, 0), 
('JFD_Mussolini_Buildings', 'BUILDING_GOV_WIDE', 0, 0), 
('JFD_Mussolini_Buildings', 'BUILDING_GOV_CONQUEST', 1, 90),

('JFD_Mussolini_Buildings', 'BUILDING_GOV_FAITH', 1, 80),
('JFD_Mussolini_Buildings', 'BUILDING_GOV_SPIES', 1, 80),
('JFD_Mussolini_Buildings', 'BUILDING_GOV_CITYSTATES', 1, 80),

('JFD_Mussolini_Buildings', 'BUILDING_GOV_MILITARY', 1, 80),
('JFD_Mussolini_Buildings', 'BUILDING_GOV_CULTURE', 0, 0),
('JFD_Mussolini_Buildings', 'BUILDING_GOV_SCIENCE', 0, 0),


('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 	 -15),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 				1, 140), -- pvs 100
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',		1, 5),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_CITY_DEFENCES',				 1, 18),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 			1, -100),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 	1, -100), -- attacks city states
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 			1, 20),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 		1, 10),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 		1, 8),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_IMPROVEMENT',			 0, -30),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 			1, 5),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',			 0, -15),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',	 		0, -22),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 			0, -15),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 			0, -20),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 			1, 10),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_WONDER', 				1, 25),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_GREATWORK_SCULPTURE', 1, 35),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -13),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 30),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 0, -25),
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 30), -- to balance TRAIT_LEADER_AGGRESSIVE_MILITARY
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 30), -- to balance TRAIT_LEADER_AGGRESSIVE_MILITARY
('JFD_Mussolini_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 15); -- TRAIT_LEADER_AGGRESSIVE_MILITARY

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('JFD_Mussolini_UnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 1, 41),
('JFD_Mussolini_UnitBuilds', 'PROMOTION_CLASS_MELEE', 1, 5),
('JFD_Mussolini_UnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 3),
('JFD_Mussolini_UnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 0, -10),
('JFD_Mussolini_UnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 1, 10),
('JFD_Mussolini_UnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 1, 5),
('JFD_Mussolini_UnitBuilds', 'PROMOTION_CLASS_NAVAL_RAIDER', 1, 7),
('JFD_Mussolini_UnitBuilds', 'PROMOTION_CLASS_NAVAL_RANGED', 1, 5),
('JFD_Mussolini_UnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, 3);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JFD_Mussolini_DiplomaticActions', 'DIPLOACTION_DECLARE_COLONIAL_WAR', 1, 80),
('JFD_Mussolini_DiplomaticActions', 'DIPLOACTION_JOINT_WAR', 1, 70),
('JFD_Mussolini_DiplomaticActions', 'DIPLOACTION_THIRD_PARTY_WAR', 1, 70),
('JFD_Mussolini_DiplomaticActions', 'DIPLOACTION_MAKE_PEACE', 0, 0), 
('JFD_Mussolini_DiplomaticActions', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 80),
('JFD_Mussolini_DiplomaticActions', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 1, 50);

