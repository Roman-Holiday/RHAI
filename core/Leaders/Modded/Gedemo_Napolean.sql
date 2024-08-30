


-- Napolean / BABYLON

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GEDEMO_NAPOLEON', 'TRAIT_LEADER_ESPIONAGE');

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GEDEMO_NAPOLEON', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GEDEMO_NAPOLEON', 'TRAIT_LEADER_RH_NAVAL_EXPLORATION');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GEDEMO_NAPOLEON', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');


-- Extra Themeing
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GEDEMO_NAPOLEON', 'TRAIT_CIVILIZATION_UNIT_HUNGARY_HUSZAR'); -- Hungary Huszar to add to the theming


INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES			
		('TRAIT_LEADER_GEDEMO_NAPOLEON',							'TRAIT_CULTURE_BOMB_TRIGGER_ENCAMPMENT'),
		('TRAIT_LEADER_GEDEMO_NAPOLEON',							'TRAIT_CULTURE_BOMB_TRIGGER_FORT'); -- Poland Culture Bomb Ability



---------------------------------------------------------------------------------------------------


-- todo check science victory preference

/*
INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType,					ModifierId) VALUES		
			('TRAIT_LEADER_GEDEMO_NAPOLEON',	'RH_SABBUM_TEST');

INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,						ModifierType,							SubjectRequirementSetId) VALUES		
			('RH_SABBUM_TEST',	'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'PLAYER_IS_AI');

INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId,						Name,			Value) VALUES		
			('RH_SABBUM_TEST',	'UnitType',		'UNIT_SCOUT');
*/

INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES			
		('TRAIT_LEADER_GEDEMO_NAPOLEON',							'RH_COMP_P');


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('NapoleanComms'),
('NapoleanWonders'),
('NapoleanTechs'), 
('NapoleanCivics'),
('NapoleanYields'),
('NapoleanPseudoYields'),
('NapoleanAlliances'),
('NapoleanDistricts'),
('NapoleanUnits'),
('NapoleanUnitBuilds'),
('NapoleanProjects'),
('NapoleanImprovements'),
('NapoleanScouts'),
('NapoleanSettlement'),
('NapoleanDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('NapoleanComms',      'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Commemorations'),
('NapoleanWonders',      'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Buildings'),
('NapoleanTechs',        'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Technologies'),
('NapoleanCivics',       'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Civics'),
('NapoleanYields',       'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Yields'),
('NapoleanPseudoYields', 'TRAIT_LEADER_GEDEMO_NAPOLEON', 'PseudoYields'),
('NapoleanAlliances',    'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Alliances'),
('NapoleanDistricts',    'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Districts'),
('NapoleanUnits',    		'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Units'),
('NapoleanUnitBuilds',    		'TRAIT_LEADER_GEDEMO_NAPOLEON', 'UnitPromotionClasses'),
('NapoleanProjects',   	 'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Projects'),
('NapoleanImprovements',   	 'TRAIT_LEADER_GEDEMO_NAPOLEON', 'Improvements'),
('NapoleanScouts',   	 'TRAIT_LEADER_GEDEMO_NAPOLEON', 'AiScoutUses'),
('NapoleanSettlement',   	 'TRAIT_LEADER_GEDEMO_NAPOLEON', 'PlotEvaluations'),
('NapoleanDiplomacy',	 'TRAIT_LEADER_GEDEMO_NAPOLEON', 'DiplomaticActions');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('NapoleanSettlement', 'Coastal', 				0, 6, 					NULL, 'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('NapoleanSettlement', 'Specific Resource', 	0, 15, 'RESOURCE_NITER', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('NapoleanSettlement', 'Inner Ring Yield', 	0, 1, 'YIELD_PRODUCTION',   'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- def 2
('NapoleanSettlement', 'Specific Resource', 	0, 5, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NapoleanScouts', 'DEFAULT_LAND_SCOUTS',		  					1, 50),
('NapoleanScouts', 'LAND_SCOUTS_PER_PRIMARY_REGION',				  1, 50); 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NapoleanComms', 'COMMEMORATION_AUTOMATON',		  					1, 100), -- GDR's
('NapoleanComms', 'COMMEMORATION_MILITARY',		  						1, 10); 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NapoleanImprovements', 'IMPROVEMENT_LUMBER_MILL',				        1, 40), -- Mass Production for Shipyards
('NapoleanImprovements', 'IMPROVEMENT_FORT',		  			    		1, 100),
('NapoleanImprovements', 'IMPROVEMENT_MINE',		 					    1, 40); -- Industrialisation?


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('NapoleanDistricts', 'DISTRICT_ENCAMPMENT',		  		1, 0), 
('NapoleanDistricts', 'DISTRICT_NEIGHBORHOOD',		  		1, 20); -- Urban Growth


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NapoleanUnitBuilds', 'PROMOTION_CLASS_SIEGE',		 1, 5);
--('NapoleanUnitBuilds', 'PROMOTION_CLASS_MELEE',		 1, 10), 
--('NapoleanUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAV',		 1, 10); 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('NapoleanUnits', 'UNIT_MILITARY_ENGINEER',	1, 75),  -- Military engineers were crucial for Napoleon's campaigns, aiding in building fortifications and logistics
('NapoleanUnits', 'UNIT_FRENCH_GARDE_IMPERIALE', 1, 250),  -- The Garde Impériale was an elite unit in Napoleon's army, symbolizing his military might and elite forces
('NapoleanUnits', 'UNIT_BOMBARD', 1, 175),  -- Cannons were a significant part of Napoleon's military strategy, revolutionizing siege warfare and battlefield tactics
('NapoleanUnits', 'UNIT_MUSKETMAN', 1, 125),  -- Infantry units were the backbone of Napoleon's army, especially those equipped with muskets. -- Garde Impériale now replaces the Line Infantry
('NapoleanUnits', 'UNIT_CAVALRY', 1, 100),  -- Cavalry played a crucial role in Napoleon's tactics, known for their speed and shock impact
('NapoleanUnits', 'UNIT_ARTILLERY', 1, 100),  -- Represents the advanced artillery Napoleon utilized for his military campaigns
('NapoleanUnits', 'UNIT_FRIGATE', 1, 100),  -- Reflects the use of naval forces for blockades and transport during the Napoleonic Wars
('NapoleanUnits', 'UNIT_SPY', 1, 100),  -- Spies were essential for Napoleon's intelligence and counterintelligence efforts
('NapoleanUnits', 'UNIT_HUNGARY_HUSZAR', 1, 25);  -- Represents the elite light cavalry units in Napoleon's army, known for their scouting and raiding abilities


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NapoleanProjects', 'PROJECT_ENHANCE_DISTRICT_ENCAMPMENT' , 1, 100); 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NapoleanYields', 'YIELD_RH_NUCLEAR_PROGRAM', 		 1, 150),

('NapoleanYields', 'YIELD_RH_PRODUCTION',	 1, 100), -- 50
('NapoleanYields', 'YIELD_RH_MAUS_H',	 	 1, 950),
('NapoleanYields', 'YIELD_RH_NAVAL',	 	 1, 450), -- 0
('NapoleanYields', 'YIELD_RH_HAPPINESS_BUILDING',	 	 0, -350), -- 0

('NapoleanYields', 'YIELD_RH_SCIENCE_VICTORY_BASE',	 	 1, 350), 

('NapoleanYields', 'YIELD_RH_MILITARY_PRODUCTION',	 	 1, 950), 

('NapoleanYields', 'YIELD_SCIENCE', 		 1, 30), 
('NapoleanYields', 'YIELD_FAITH', 		 	 1, -90),
('NapoleanYields', 'YIELD_CULTURE',		  0, -30), -- pvs 10
('NapoleanYields', 'YIELD_GOLD', 			 1, 25), -- pvs 9, 15
('NapoleanYields', 'YIELD_PRODUCTION', 	 1, 100); -- pvs 12, 65, 85

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NapoleanWonders', 'BUILDING_GREAT_LIBRARY',     1, 80), 
('NapoleanWonders', 'BUILDING_OXFORD_UNIVERSITY', 1, 80),

('NapoleanWonders', 'BUILDING_MONUMENT', 1, 50), -- Culture for great Library
('NapoleanWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),
--('NapoleanWonders', 'BUILDING_LIBRARY', 1, 0), -- great Library and great scientists (however does get 1 for free on first one)

('NapoleanWonders', 'BUILDING_WORKSHOP', 1, 80), -- Industrialisation
('NapoleanWonders', 'BUILDING_SHIPYARD', 1, 90),
('NapoleanWonders', 'BUILDING_ARMORY', 1, 100), -- Boosts Musketmen, Gunpowder

('NapoleanWonders', 'BUILDING_GOV_TALL', 0, -900), 
('NapoleanWonders', 'BUILDING_GOV_WIDE', 0, -50), 
('NapoleanWonders', 'BUILDING_GOV_CONQUEST', 1, 900),

('NapoleanWonders', 'BUILDING_GOV_FAITH', 0, 0),
('NapoleanWonders', 'BUILDING_GOV_SPIES', 1, 1000),
('NapoleanWonders', 'BUILDING_GOV_CITYSTATES', 0, -100),

('NapoleanWonders', 'BUILDING_GOV_MILITARY', 1, 900),
('NapoleanWonders', 'BUILDING_GOV_CULTURE', 0, 0),
('NapoleanWonders', 'BUILDING_GOV_SCIENCE', 0, 0);

-- Defs 
/*
		('LEADER_GEDEMO_NAPOLEON_TECHS',		'TECH_MILITARY_SCIENCE',								1,			NULL						),
		('LEADER_GEDEMO_NAPOLEON_TECHS',		'TECH_MILITARY_ENGINEERING',						1,			NULL						),
		('LEADER_GEDEMO_NAPOLEON_TECHS',		'TECH_HORSEBACK_RIDING',						1,			NULL						),
		('LEADER_GEDEMO_NAPOLEON_TECHS',		'TECH_IRON_WORKING',							1,			NULL						),
		
		-- CIVICS
		('LEADER_GEDEMO_NAPOLEON_CIVICS',		'CIVIC_MILITARY_TRADITION',					1,			NULL						),
		('LEADER_GEDEMO_NAPOLEON_CIVICS',		'CIVIC_DEFENSIVE_TACTICS',					1,			NULL						),
		('LEADER_GEDEMO_NAPOLEON_CIVICS',		'CIVIC_MILITARY_TRAINING',						1,			NULL						),
		('LEADER_GEDEMO_NAPOLEON_CIVICS',		'CIVIC_DRAMA_POETRY',						1,			NULL						),
*/		


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('NapoleanTechs', 'TECH_GUNPOWDER',    1, 100),  -- Napoleon's era was defined by advancements in gunpowder weaponry
('NapoleanTechs', 'TECH_MILITARY_SCIENCE',    1, 100),  -- Reflects Napoleon's military tactics and organization
('NapoleanTechs', 'TECH_BALLISTICS', 1, 0),  -- Important for artillery improvements
('NapoleanTechs', 'TECH_STEAM_POWER', 	  1, 0),  -- Represents the industrial advancements during Napoleon's time

('NapoleanCivics', 'CIVIC_MERCANTILISM',      1, 100),  -- Reflects Napoleon's focus on economic policies and trade
('NapoleanCivics', 'CIVIC_NATIONALISM',  1, 0),  -- Reflects the rise of national identities during and after his reign
('NapoleanCivics', 'CIVIC_MILITARY_TRADITION',  1, 0),  -- Highlights Napoleon's emphasis on military structure and discipline

('NapoleanCivics', 'CIVIC_THE_ENLIGHTENMENT',     1, 0),  -- Napoleon was a product of the Enlightenment and promoted its principles
('NapoleanCivics', 'CIVIC_URBANIZATION', 			   1, 0),  -- Reflects the significant urban growth and development during his rule


('NapoleanPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 10),
('NapoleanPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 25),
('NapoleanPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 0, -25),
('NapoleanPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 75),
('NapoleanPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 950),
('NapoleanPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0, -90),
('NapoleanPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 100),

('NapoleanPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS',  		1, -30),
('NapoleanPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',  	1, -75),

('NapoleanPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 	1, 12),
('NapoleanPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 	1, 10),

('NapoleanPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 		1, 20),
('NapoleanPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 	1, 250),

('NapoleanPseudoYields', 'PSEUDOYIELD_CITY_BASE', 				1, 900),
('NapoleanPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 			1, -80),
('NapoleanPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',	 1, -80),

('NapoleanPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 	1, 	20),

('NapoleanPseudoYields', 'PSEUDOYIELD_HAPPINESS', 				0, 	-40),
('NapoleanPseudoYields', 'PSEUDOYIELD_DISTRICT', 				1, 	10),
('NapoleanPseudoYields', 'PSEUDOYIELD_INFLUENCE', 				0, 	-40),

('NapoleanPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 				1, 	200),
('NapoleanPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 			0, 	-50),
('NapoleanPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 			1, 	-20),
('NapoleanPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 			1, 	-100),
('NapoleanPseudoYields', 'PSEUDOYIELD_WONDER', 					1, 	50),
('NapoleanPseudoYields', 'PSEUDOYIELD_TOURISM', 				0, 	-25),

('NapoleanAlliances', 'ALLIANCE_RESEARCH', 1, 0),

('NapoleanDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0),
('NapoleanDiplomacy', 'DIPLOACTION_ALLIANCE_RESEARCH', 1, 0);
