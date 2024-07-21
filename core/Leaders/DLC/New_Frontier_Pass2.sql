


-- HAMMURABI / BABYLON

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_HAMMURABI', 'TRAIT_LEADER_ESPIONAGE');

-- todo check science victory preference

INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType,					ModifierId) VALUES		
			('TRAIT_LEADER_HAMMURABI',	'RH_SABBUM_TEST');

INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,						ModifierType,							SubjectRequirementSetId) VALUES		
			('RH_SABBUM_TEST',	'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'PLAYER_IS_AI');

INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId,						Name,			Value) VALUES		
			('RH_SABBUM_TEST',	'UnitType',		'UNIT_SCOUT');



INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('HammurabiComms'),
('HammurabiWonders'),
('HammurabiTechs'), 
('HammurabiCivics'),
('HammurabiYields'),
('HammurabiPseudoYields'),
('HammurabiAlliances'),
('HammurabiDistricts'),
('HammurabiUnits'),
('HammurabiUnitBuilds'),
('HammurabiProjects'),
('HammurabiImprovements'),
('HammurabiScouts'),
('HammurabiSettlement'),
('HammurabiDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('HammurabiComms',      'TRAIT_LEADER_HAMMURABI', 'Commemorations'),
('HammurabiWonders',      'TRAIT_LEADER_HAMMURABI', 'Buildings'),
('HammurabiTechs',        'TRAIT_LEADER_HAMMURABI', 'Technologies'),
('HammurabiCivics',       'TRAIT_LEADER_HAMMURABI', 'Civics'),
('HammurabiYields',       'TRAIT_LEADER_HAMMURABI', 'Yields'),
('HammurabiPseudoYields', 'TRAIT_LEADER_HAMMURABI', 'PseudoYields'),
('HammurabiAlliances',    'TRAIT_LEADER_HAMMURABI', 'Alliances'),
('HammurabiDistricts',    'TRAIT_LEADER_HAMMURABI', 'Districts'),
('HammurabiUnits',    		'TRAIT_LEADER_HAMMURABI', 'Units'),
('HammurabiUnitBuilds',    		'TRAIT_LEADER_HAMMURABI', 'UnitPromotionClasses'),
('HammurabiProjects',   	 'TRAIT_LEADER_HAMMURABI', 'Projects'),
('HammurabiImprovements',   	 'TRAIT_LEADER_HAMMURABI', 'Improvements'),
('HammurabiScouts',   	 'TRAIT_LEADER_HAMMURABI', 'AiScoutUses'),
('HammurabiSettlement',   	 'TRAIT_LEADER_HAMMURABI', 'PlotEvaluations'),
('HammurabiDiplomacy',	 'TRAIT_LEADER_HAMMURABI', 'DiplomaticActions');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('HammurabiSettlement', 'Coastal', 				0, 1, 					NULL, 'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('HammurabiSettlement', 'Fresh Water', 			0, 10, 				NULL, 'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'),
('HammurabiSettlement', 'Specific Resource', 	0, 7, 'RESOURCE_NITER', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('HammurabiSettlement', 'Inner Ring Yield', 	0, 1, 'YIELD_PRODUCTION',   'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- def 2
('HammurabiSettlement', 'Specific Resource', 	0, 8, 'RESOURCE_IRON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiScouts', 'DEFAULT_LAND_SCOUTS',		  					1, 100), -- Tribal Villages
('HammurabiScouts', 'LAND_SCOUTS_PER_PRIMARY_REGION',				  1, 50); -- Tribal Villages

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiComms', 'COMMEMORATION_AERONAUTICAL',		  					1, 100); -- Future Boosts


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiImprovements', 'IMPROVEMENT_LUMBER_MILL',				        1, 40), -- Mass Production for Shipyards
('HammurabiImprovements', 'IMPROVEMENT_FORT',		  			    		1, 30),
('HammurabiImprovements', 'IMPROVEMENT_MINE',		 					    1, 40); -- Industrialisation?

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('HammurabiDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX',		  0, -50),

--('HammurabiDistricts', 'DISTRICT_HARBOR',		 				 1, 0), -- Military Engineering
('HammurabiDistricts', 'DISTRICT_AQUEDUCT',						1, 0), -- Military Engineering
('HammurabiDistricts', 'DISTRICT_DAM',		  					1, 0), -- Production

('HammurabiDistricts', 'DISTRICT_INDUSTRIAL_ZONE',		  		1, 75); -- Military Engineering


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiUnitBuilds', 'PROMOTION_CLASS_SIEGE',		 1, 3),
('HammurabiUnitBuilds', 'PROMOTION_CLASS_RANGED',		 1, 8); -- pvs 13, 11


--UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_UNIT_EXPLORER' WHERE UnitType = 'UNIT_BABYLONIAN_SABUM_KIBITTUM'; -- Temp disable

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('HammurabiUnits', 'UNIT_MILITARY_ENGINEER',	1, 70), -- 2 Forts in Territory unlocks field cannons
('HammurabiUnits', 'UNIT_SCOUT',		       				0, -100), 
('HammurabiUnits', 'UNIT_WARRIOR',		       				0, -100), 

('HammurabiUnits', 'UNIT_BABYLONIAN_SABUM_KIBITTUM',		1, 900), -- Explore, 150

('HammurabiUnits', 'UNIT_SLINGER',		    1, 30), -- pvs 40, SABUM_KIBITTUM
('HammurabiUnits', 'UNIT_ARCHER',		    1, 70),
('HammurabiUnits', 'UNIT_RANGER',		    1, 15),
('HammurabiUnits', 'UNIT_NATURALIST',	    1, 25), -- National Park Unlocks Aluminium
('HammurabiUnits', 'UNIT_PRIVATEER',	    1, 30), -- Unlocks Electricity for Subs, Oil Power, Hydroelectric DAM, Seaport
('HammurabiUnits', 'UNIT_IRONCLAD',		    1, 30), -- build a coal mine and ironclad for artillary
('HammurabiUnits', 'UNIT_CROSSBOWMAN',		1, 50); -- Own 2 Crossbowmen for Bombards

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiProjects', 'PROJECT_ENHANCE_DISTRICT_CAMPUS' , 1, 100); -- testing bringing back, pvs value 0

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiYields', 'YIELD_RH_NUCLEAR_PROGRAM', 		 1, 950),

('HammurabiYields', 'YIELD_RH_PRODUCTION',	 1, 700), -- 50
('HammurabiYields', 'YIELD_RH_MAUS_H',	 	 1, 950),
('HammurabiYields', 'YIELD_RH_NAVAL',	 	 1, 450), -- 0
('HammurabiYields', 'YIELD_RH_HAPPINESS_BUILDING',	 	 0, -95), -- 0

('HammurabiYields', 'YIELD_RH_SCIENCE_VICTORY_BASE',	 	 1, 450), -- 0, 700

('HammurabiYields', 'YIELD_SCIENCE', 		 1, -50), -- 50% Science Nerf, pvs -20, -25, -30, 20, -15, 25, 35
('HammurabiYields', 'YIELD_FAITH', 		 	 1, -10),
('HammurabiYields', 'YIELD_CULTURE',		  1, 15), -- pvs 10
('HammurabiYields', 'YIELD_GOLD', 			 1, 20), -- pvs 9, 15
('HammurabiYields', 'YIELD_PRODUCTION', 	 1, 85); -- pvs 12, 65

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiWonders', 'BUILDING_GREAT_LIBRARY',     1, 900), -- Euraka -- critical
('HammurabiWonders', 'BUILDING_OXFORD_UNIVERSITY', 1, 80),

('HammurabiWonders', 'BUILDING_PALGUM', 1, 900),
('HammurabiWonders', 'BUILDING_MONUMENT', 1, 50), -- Culture for great Library
('HammurabiWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),
--('HammurabiWonders', 'BUILDING_LIBRARY', 1, 0), -- great Library and great scientists (however does get 1 for free on first one)

('HammurabiWonders', 'BUILDING_WORKSHOP', 1, 80), -- Unlocks Industrialisation
('HammurabiWonders', 'BUILDING_SHIPYARD', 1, 90), -- 2 Unlocks Steam Power which then can unlock steel
('HammurabiWonders', 'BUILDING_ARMORY', 1, 100), -- Unlocks Musketmen (Gunpowder)
('HammurabiWonders', 'BUILDING_UNIVERSITY', 1, 40), -- 2 Unlocks Printing for extra combat

('HammurabiWonders', 'BUILDING_GOV_TALL', 1, 40), 
('HammurabiWonders', 'BUILDING_GOV_WIDE', 1, 400), 
('HammurabiWonders', 'BUILDING_GOV_CONQUEST', 0, 0),

('HammurabiWonders', 'BUILDING_GOV_FAITH', 0, 0),
('HammurabiWonders', 'BUILDING_GOV_SPIES', 1, 1000),
('HammurabiWonders', 'BUILDING_GOV_CITYSTATES', 0, -100),

('HammurabiWonders', 'BUILDING_GOV_MILITARY', 1, 900),
('HammurabiWonders', 'BUILDING_GOV_CULTURE', 0, 0),
('HammurabiWonders', 'BUILDING_GOV_SCIENCE', 0, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('HammurabiTechs', 'TECH_POTTERY',    1, 0),
('HammurabiTechs', 'TECH_WRITING',    1, 0), -- for Campus and Library
('HammurabiTechs', 'TECH_IRRIGATION', 1, 0), -- for Campus and Library, Palgum 
('HammurabiTechs', 'TECH_ARCHERY', 	  1, 0), -- For Crossbowmen

('HammurabiCivics', 'CIVIC_RECORDED_HISTORY',      1, 100), -- for Great Library
('HammurabiCivics', 'CIVIC_POLITICAL_PHILOSOPHY',  1, 0), -- before great Library
('HammurabiCivics', 'CIVIC_DRAMA_POETRY',          1, 0),	--GL

('HammurabiCivics', 'CIVIC_THE_ENLIGHTENMENT',     1, 0), -- Boosts / Unlocks Oxford Uni
('HammurabiCivics', 'CIVIC_GUILDS', 			   1, 0), -- Unlocks Banking

('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 950), -- pvs 22, 45, 55, 65, 105, 120, 125, 170, 205, 215, 235, 305, 450, 500, 750
('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 35), -- Good for science victory -- Leonardo da Vinci, 30
('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 7), 
('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 20), -- 7
('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 40), -- 12
('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -15), 
('HammurabiPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 900), -- pvs 30, test

--('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0, -12), -- pvs -10
('HammurabiPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS',  		1, -5),
('HammurabiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 	1, 10), -- pvs 27, 25, 19
('HammurabiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 	1, 5), -- pvs 24, 21

--('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 			1, 5),
('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 		1, 20),
('HammurabiPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 	1, 50),

('HammurabiPseudoYields', 'PSEUDOYIELD_CITY_BASE', 				1, 400),
('HammurabiPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 			1, -80), -- better Techs
('HammurabiPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',	 1, -80),

('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 	1, 	50), -- Extracting Unlocks Combustion / Tanks

('HammurabiPseudoYields', 'PSEUDOYIELD_HAPPINESS', 				0, 	-25), 
('HammurabiPseudoYields', 'PSEUDOYIELD_DISTRICT', 				1, 	100), -- First district free building, 15
--('HammurabiPseudoYields', 'PSEUDOYIELD_GOVERNOR', 				1, 	50), -- Gov plaza
('HammurabiPseudoYields', 'PSEUDOYIELD_INFLUENCE', 				1, 	-20), -- Lower Priority

--('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 			1, 	10),
('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 				1, 	200), -- Very Useful! -- pvs 50, 80, 130, 50 -- TRAIT_LEADER_ESPIONAGE
('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 			1, 	5), -- potential boosts
('HammurabiPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 			1, 	75), -- potential boosts, pvs 25, 35, 40
('HammurabiPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 			1, 	-50), -- Chopping
('HammurabiPseudoYields', 'PSEUDOYIELD_WONDER', 				1, 	70), -- potential boosts
('HammurabiPseudoYields', 'PSEUDOYIELD_TOURISM', 				1, 	25), -- potential boosts

--('HammurabiUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 1, 10),
('HammurabiAlliances', 'ALLIANCE_RESEARCH', 1, 0),

--('HammurabiDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0), -- Darwinist
--('HammurabiDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 85),
('HammurabiDiplomacy', 'DIPLOACTION_ALLIANCE_RESEARCH', 1, 0); -- boosts


-- Todo Campus Research Grants project preference - not needed / done
-- Adequduct preference for Military Engineering - done
-- Archer preference (3 for Crossbowmen) - done
-- Further Crossbowmen preference - done
-- Todo mine preference for Man at Arms Rush, industrial zones (3 mines, 1 iron)
-- Todo scout uses for tribal village eurekas


/*
INSERT OR REPLACE INTO Types (Type, Kind) VALUES
('STRATEGY_ANCIENT_HAMMURABI',     		'KIND_VICTORY_STRATEGY'), 
('STRATEGY_CLASSICAL_HAMMURABI',     	 'KIND_VICTORY_STRATEGY'), 
('STRATEGY_MEDIEVAL_HAMMURABI', 		'KIND_VICTORY_STRATEGY');

INSERT OR REPLACE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('STRATEGY_ANCIENT_HAMMURABI',     NULL, 2),
('STRATEGY_CLASSICAL_HAMMURABI',      NULL, 2),
('STRATEGY_MEDIEVAL_HAMMURABI', 	NULL, 2);

INSERT OR REPLACE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('STRATEGY_ANCIENT_HAMMURABI',     'Is Not Major', 1),
('STRATEGY_CLASSICAL_HAMMURABI',      'Is Not Major', 1),
('STRATEGY_MEDIEVAL_HAMMURABI', 		'Is Not Major', 1);

INSERT OR REPLACE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier, ThresholdValue) VALUES
('STRATEGY_ANCIENT_HAMMURABI',     'Is Classical', 1, 1),
('STRATEGY_CLASSICAL_HAMMURABI',     'Is Medieval', 1, 1),
('STRATEGY_MEDIEVAL_HAMMURABI',     'Is Renaissance', 1, 1);

INSERT OR REPLACE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue) VALUES
('STRATEGY_ANCIENT_HAMMURABI',    			 'Is Ancient',    					 NULL, 0), 
('STRATEGY_CLASSICAL_HAMMURABI',     		 'Is Atomic',    					  NULL, 0), 
('STRATEGY_MEDIEVAL_HAMMURABI', 			'Is Information',					 NULL, 0); 

INSERT OR REPLACE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
('STRATEGY_ANCIENT_HAMMURABI',    			 'Has Agenda',    					 'AGENDA_HAMMURABI_DISTRICTS'), 
('STRATEGY_CLASSICAL_HAMMURABI',     		 'Has Agenda',    					  'AGENDA_HAMMURABI_DISTRICTS'), 
('STRATEGY_MEDIEVAL_HAMMURABI', 			'Has Agenda',					 'AGENDA_HAMMURABI_DISTRICTS'); 

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('HAMMURABI_AncientYields'),
('HAMMURABI_AncientPseudoYields'),


INSERT OR REPLACE INTO AiLists (ListType, System) VALUES
('HAMMURABI_AncientYields',       'Yields'),
('HAMMURABI_AncientPseudoYields', 'PseudoYields'),


INSERT OR REPLACE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_ANCIENT_HAMMURABI', 'AncientYields'),
('STRATEGY_ANCIENT_HAMMURABI', 'AncientPseudoYields'),

*/


--AGENDA_HAMMURABI_DISTRICTS



-- 		<Row StrategyType="STRATEGY_WONDER_OBSESSED" ConditionFunction="Has Agenda" StringValue="AGENDA_WONDER_OBSESSED"/>
--		<Row StrategyType="STRATEGY_WONDER_OBSESSED" ConditionFunction="Is Industrial" StringValue="AGENDA_WONDER_OBSESSED"/>


--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_HAMMURABI';

--INSERT INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_HAMMURABI',				'AGENDA_DARWINIST',						25),
--		('LEADER_HAMMURABI',				'AGENDA_STANDING_ARMY',					35),		
	--	('LEADER_HAMMURABI',				'AGENDA_CULTURED',						22);

--TRAIT_AGENDA_PREFER_CULTURE
-- 		<Row AgendaType="AGENDA_GREAT_PERSON_ADVOCATE" LeaderType="LEADER_KRISTINA" PercentageChance="20"/>

-- Portugal

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JOAO_III', 'TRAIT_LEADER_EXPANSIONIST');


INSERT OR REPLACE INTO CivilizationTraits(CivilizationType, TraitType) VALUES ('CIVILIZATION_PORTUGAL', 'TRAIT_LEADER_RH_TRADE');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('JoaoWonders'),
('JoaoTechs'), 
('JoaoYields'),
('JoaoUnits'),
('JoaoScoutUses'),
('JoaoUnitBuilds'),
('JoaoAlliances'),
('JoaoDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('JoaoWonders',      'TRAIT_LEADER_JOAO_III', 'Buildings'),
('JoaoTechs',        'TRAIT_LEADER_JOAO_III', 'Technologies'),
('JoaoYields',       'TRAIT_LEADER_JOAO_III', 'Yields'),

('JoaoUnits', 		'TRAIT_LEADER_JOAO_III', 'Units'),

('JoaoScoutUses',    'TRAIT_LEADER_JOAO_III', 'AiScoutUses'),
('JoaoUnitBuilds',   'TRAIT_LEADER_JOAO_III', 'UnitPromotionClasses'),
('JoaoAlliances',    'TRAIT_LEADER_JOAO_III', 'Alliances'),
('JoaoDiplomacy', 	'TRAIT_LEADER_JOAO_III', 'DiplomaticActions');

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_JOAO_III',				'AGENDA_EXPLORER',				25);

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('JoaoSavings');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('JoaoSavings',  			 'TRAIT_LEADER_JOAO_III', 'SavingTypes');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('JoaoSavings', 'SAVING_GREAT_PEOPLE', 								 0), 
('JoaoSavings', 'SAVING_UNITS', 										 1),
('JoaoSavings', 'SAVING_PLOTS', 										 1), 
('JoaoSavings', 'SAVING_SLUSH_FUND', 								 	-1); 

-- Todo Exploration Yield

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JoaoExplorationObsessed', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 35), -- harbors & unique science building -- pvs 20, 30
--('JoaoExplorationObsessed', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10),
('JoaoExplorationObsessed', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 32), -- pvs 22, 29
('JoaoExplorationObsessed', 'PSEUDOYIELD_UNIT_TRADE',  1, 90), -- traders
('JoaoExplorationObsessed', 'PSEUDOYIELD_DIPLOMATIC_BONUS',  1, 2), -- at pvs -1 was a bit too unfriendly, +1 for open borders
('JoaoExplorationObsessed', 'PSEUDOYIELD_GPP_PROPHET',  1, 20), -- Exploration
('JoaoExplorationObsessed', 'PSEUDOYIELD_GPP_SCIENTIST',  1, 30), -- Unique Building

('JoaoExplorationObsessed', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST',  1, 50), -- Exploration
('JoaoExplorationObsessed', 'PSEUDOYIELD_INFLUENCE',  1, 75), -- Exploration

('JoaoWonders', 'BUILDING_COLOSSUS', 1, 0),
('JoaoWonders', 'BUILDING_TORRE_DE_BELEM', 1, 0),
('JoaoWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),
('JoaoWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 90),

('JoaoDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 1, 90), -- exploration and nau building (Feitoria)

('JoaoAlliances', 'DIPLOACTION_ALLIANCE_RESEARCH', 1, 0), -- todo economic
('JoaoAlliances', 'DIPLOACTION_ALLIANCE_ECONOMIC', 1, 0),

('JoaoTechs', 'TECH_WRITING', 1, 0),
('JoaoTechs', 'TECH_EDUCATION', 1, 0),
('JoaoTechs', 'TECH_CARTOGRAPHY', 1, 0),

('JoaoYields', 'YIELD_RH_MERCHANT_REPUBLIC', 1, 350),

('JoaoYields', 'YIELD_SCIENCE', 1, 10),
('JoaoYields', 'YIELD_FAITH', 1, 20), -- Exploration
('JoaoYields', 'YIELD_GOLD', 1, 22), -- pvs 12, 15, 17, 16
('JoaoUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE', 1, 5); -- nau -- pvs 9


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JoaoScoutUses', 'DEFAULT_NAVAL_SCOUTS', 1, 200), -- pvs 100
('JoaoScoutUses', 'DEFAULT_LAND_SCOUTS', 1, 100),
('JoaoScoutUses', 'LAND_SCOUTS_PER_PRIMARY_REGION', 1, 50),
('JoaoScoutUses', 'LAND_SCOUTS_PER_SECONDARY_REGION', 1, 50),
('JoaoScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 1, 200); -- pvs 100

-- Todo, improve scouting

--UPDATE AiFavoredItems SET Value = 25 WHERE ListType = 'JoaoExplorationObsessed' AND Item = 'PSEUDOYIELD_UNIT_EXPLORER'; -- def 50

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JoaoUnits',        'UNIT_SCOUT', 			1, 35),
('JoaoUnits',        'UNIT_GALLEY', 		1, 10), -- pvs 16 (too high)
('JoaoUnits',        'UNIT_QUADRIREME', 	1, 8), 
('JoaoUnits',        'UNIT_PORTUGUESE_NAU', 1, 5); -- pvs 40, 30 (30 was still a bit too high and is a melee caravel unit anyway)

-- Wiki: The Nau, just like the unit it INSERT OR IGNOREs, has a very short period of relevance, since its upgrade, the Ironclad, is unlocked with Steam Power, (same combat strength but 2 build charges)
-- However starts with a free promotion

INSERT OR REPLACE INTO UnitAiInfos (UnitType, AiType) VALUES ('UNIT_PORTUGUESE_NAU', 'UNITAI_BUILD'); -- just in case

/*
Defs
    <Row ListType="JoaoCivicPreference" Item="CIVIC_FOREIGN_TRADE" Favored="true"/>
    <Row ListType="JoaoCoastalSettlements" Item="Coastal" Favored="false" Value="35"/>
    <Row ListType="JoaoExplorationObsessed" Item="PSEUDOYIELD_UNIT_EXPLORER" Value="50"/>
	
	
	All civs scouts:
		<Row ScoutUseType="DEFAULT_LAND_SCOUTS"/>
		<Row ScoutUseType="DEFAULT_NAVAL_SCOUTS"/>
		<Row ScoutUseType="LAND_SCOUTS_PER_PRIMARY_REGION"/>
		<Row ScoutUseType="LAND_SCOUTS_PER_SECONDARY_REGION"/>
		<Row ScoutUseType="NAVAL_SCOUTS_FOR_WORLD_EXPLORATION"/>
		
		<!-- Note: Scouting values are read in as percentages, so multiply desired numbers by 100 -->
		<Row ListType="DefaultScoutUse" Item="DEFAULT_LAND_SCOUTS" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="DEFAULT_NAVAL_SCOUTS" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="LAND_SCOUTS_PER_PRIMARY_REGION" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="LAND_SCOUTS_PER_SECONDARY_REGION" Value="50"/>
		<Row ListType="DefaultScoutUse" Item="NAVAL_SCOUTS_FOR_WORLD_EXPLORATION" Value="300"/>
	
*/


--Other:

-- Other Leaders

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PachacutiDistricts', 'DISTRICT_PRESERVE', 1, 100), -- Bringing back after preserve placement improvements (pvs 25)
('KupeDistricts', 		'DISTRICT_PRESERVE', 1, 25);

-- todo potentially add to environment lover agenda (maybe the buildings only)
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PachacutiWonders', 'BUILDING_GROVE', 1, 1000), 
('PachacutiWonders', 'BUILDING_SANCTUARY', 1, 1000);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorBuildings', 'BUILDING_GROVE', 1, 1000), 
('MajorFavorBuildings', 'BUILDING_SANCTUARY', 1, 1000);

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_PRES1',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_PRES1',		'YieldType'    , 'YIELD_FOOD'),
		('RH_DEF_PRES1',						'Amount'   , 80); -- pvs 7 Culture, 20, 35, 37, 60, 90, 135, 105, 35

INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_GROVE', 		'RH_DEF_PRES1');


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_PRES2',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_PRES2',		'YieldType'    , 'YIELD_FOOD'),
		('RH_DEF_PRES2',						'Amount'   , 110); -- 50, 60, 90, 135, 105, 32


INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_SANCTUARY',  'RH_DEF_PRES2');




INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_PRES_MIRROR',				'MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_PRES_MIRROR',		'YieldTypeToGrant'    , 'YIELD_FOOD'),
		('RH_DEF_PRES_MIRROR',		'YieldTypeToMirror'    , 'YIELD_RH_PLACEMENT');


INSERT INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_GROVE', 		'RH_DEF_PRES_MIRROR'),
('BUILDING_SANCTUARY',  'RH_DEF_PRES_MIRROR');


/*
		<Row>
			<ModifierId>BUILDING_ALCHEMICAL_SOCIETY_GOLD_MIRRORS_SCIENCE</ModifierId>
			<Name>YieldTypeToGrant</Name>
			<Value>YIELD_GOLD</Value>
		</Row>
		<Row>
			<ModifierId>BUILDING_ALCHEMICAL_SOCIETY_GOLD_MIRRORS_SCIENCE</ModifierId>
			<Name>YieldTypeToMirror</Name>
			<Value>YIELD_SCIENCE</Value>
		</Row>


		<Row>
			<ModifierId>BUILDING_ALCHEMICAL_SOCIETY_GOLD_MIRRORS_SCIENCE</ModifierId>
			<ModifierType>MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS</ModifierType>
		</Row>
*/


/*

INSERT OR IGNORE INTO	Modifiers	(ModifierId,				ModifierType, 			SubjectRequirementSetId) VALUES		
			('RH_Preserve_Mod',	'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE', 'RH_AI_ADJ_PRESERVE_REQ_S');

-- pvs  MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS


INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES	
			('RH_Preserve_Mod',				'YieldType',		        'YIELD_RH_MINUS'),	
			('RH_Preserve_Mod',				'Amount',					100); 


INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_ADJ_PRESERVE_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES		
		('RH_AI_ADJ_PRESERVE_REQ_S', 'RH_ADJ_PRESRVE_REQ'),


		('RH_AI_ADJ_PRESERVE_REQ_S', 'REQUIRES_PLAYER_IS_AI');
		
		
INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
	('RH_ADJ_PRESRVE_REQ', 'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES	
('RH_ADJ_PRESRVE_REQ', 'DistrictType', 'DISTRICT_PRESERVE');

		
INSERT OR IGNORE INTO ImprovementModifiers (ImprovementType, ModifierId)	
SELECT ImprovementType, 						'RH_Preserve_Mod'
FROM Improvements
WHERE ImprovementType LIKE 'IMPROVEMENT_%'; 
*/


/*
		<Row>
			<RequirementId>REQUIRES_PLOT_ADJACENT_TO_CAMPUS</RequirementId>
			<RequirementType>REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES</RequirementType>
		</Row>

		<Row>
			<RequirementId>REQUIRES_PLOT_ADJACENT_TO_CAMPUS</RequirementId>
			<Name>DistrictType</Name>
			<Value>DISTRICT_CAMPUS</Value>
		</Row>

		<Row>
			<RequirementSetId>PLOT_ADJACENT_TO_CAMPUS_REQUIREMENTS</RequirementSetId>
			<RequirementId>REQUIRES_PLOT_ADJACENT_TO_CAMPUS</RequirementId>
		</Row>




		<Row>
			<ModifierId>MISSION_CAMPUSADJACENCY_SCIENCE</ModifierId>
			<ModifierType>MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS</ModifierType>
			<SubjectRequirementSetId>PLOT_ADJACENT_TO_CAMPUS_REQUIREMENTS</SubjectRequirementSetId>
		</Row>

		<Row>
			<RequirementSetId>PLOT_ADJACENT_TO_CAMPUS_REQUIREMENTS</RequirementSetId>
			<RequirementSetType>REQUIREMENTSET_TEST_ALL</RequirementSetType>
		</Row>
		
		<Row>
			<RequirementSetId>PLOT_ADJACENT_TO_CAMPUS_REQUIREMENTS</RequirementSetId>
			<RequirementId>REQUIRES_PLOT_ADJACENT_TO_CAMPUS</RequirementId>
		</Row>		
		


*/


-- MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS

/*
			<ModifierId>GREATPERSON_HOLY_SITE_ADJACENCY_AS_SCIENCE</ModifierId>
			<ModifierType>MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS</ModifierType>
			<RunOnce>true</RunOnce>
			<Permanent>true</Permanent>
		<Row>
			<ModifierId>GREATPERSON_HOLY_SITE_ADJACENCY_AS_SCIENCE</ModifierId>
			<Name>YieldTypeToMirror</Name>
			<Value>YIELD_FAITH</Value>
		</Row>
		<Row>
			<ModifierId>GREATPERSON_HOLY_SITE_ADJACENCY_AS_SCIENCE</ModifierId>
			<Name>YieldTypeToGrant</Name>
			<Value>YIELD_SCIENCE</Value>
		</Row>
*/


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_DEF_PRES_NEGATIVE',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_DEF_PRES_NEGATIVE',			'YieldType'    , 'YIELD_SCIENCE'),
		('RH_DEF_PRES_NEGATIVE',						'Amount'   , -45); -- PVS -15

INSERT INTO DistrictModifiers (DistrictType, ModifierId) VALUES
('DISTRICT_PRESERVE', 		'RH_DEF_PRES_NEGATIVE');



/*

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types   (Type,		Kind) VALUES	
		('IMPROVEMENT_RH_PRESERVE_ADJ',	'KIND_IMPROVEMENT');
--------------------------------------------------------------

-- Improvements
--------------------------------------------------------------
INSERT OR IGNORE INTO Improvements
		(ImprovementType,						PrereqTech,			 MinimumAppeal,					TraitType,						Buildable,	OnePerCity,	Housing,	TilesRequired,	Appeal,	PlunderType,	PlunderAmount,	Name,											Description,											Icon)
VALUES	('IMPROVEMENT_RH_PRESERVE_ADJ',			'TECHNOLOGY_RH_AI_MAIN',  4		'TRAIT_CIVILIZATION_NO_PLAYER',				1,			0,			0,			1,				0,		'PLUNDER_HEAL',	0,				'LOC_IMPROVEMENT_RH_PRESERVE_ADJ_NAME',	'LOC_IMPROVEMENT_RH_PRESERVE_ADJ_DESCRIPTION',	'ICON_IMPROVEMENT_RH_PRESERVE_ADJ');





-- Improvement_ValidBuildUnits
--------------------------------------------------------------
INSERT OR IGNORE INTO Improvement_ValidBuildUnits
		(ImprovementType,						UnitType) VALUES	
		('IMPROVEMENT_RH_PRESERVE_ADJ',	'UNIT_BUILDER');
--------------------------------------------------------------

-- Improvement_ValidTerrains
--------------------------------------------------------------
INSERT OR IGNORE INTO Improvement_ValidTerrains
		(ImprovementType,						TerrainType)
VALUES
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_GRASS'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_GRASS_HILLS'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_PLAINS'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_PLAINS_HILLS'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_DESERT'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_DESERT_HILLS'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_TUNDRA'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_TUNDRA_HILLS'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_SNOW'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'TERRAIN_SNOW_HILLS');

--------------------------------------------------------------

-- Improvement_ValidFeatures
--------------------------------------------------------------
INSERT OR IGNORE INTO Improvement_ValidFeatures
		(ImprovementType,						FeatureType)
VALUES	('IMPROVEMENT_RH_PRESERVE_ADJ',			'FEATURE_JUNGLE'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'FEATURE_MARSH'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'FEATURE_FLOODPLAINS_GRASSLAND'),
		('IMPROVEMENT_RH_PRESERVE_ADJ',			'FEATURE_FOREST');	
		
--------------------------------------------------------------

-- Types
--------------------------------------------------------------
INSERT OR IGNORE INTO Types
		(Type,															Kind)
VALUES	('MODIFIER_RH_PLAYER_CITIES_ADJUST_CITY_ALLOWED_IMPROVEMENT',	'KIND_MODIFIER');
--------------------------------------------------------------

-- DynamicModifiers
--------------------------------------------------------------
INSERT OR IGNORE INTO DynamicModifiers
		(ModifierType,													CollectionType,				EffectType)
VALUES	('MODIFIER_RH_PLAYER_CITIES_ADJUST_CITY_ALLOWED_IMPROVEMENT',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_CITY_ALLOWED_IMPROVEMENT');
--------------------------------------------------------------


*/










-- Diplomatic Quarter Preference

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'DiplomaticVictoryDistricts', 'DISTRICT_DIPLOMATIC_QUARTER', 1, 200
FROM Districts
WHERE DistrictType = 'DISTRICT_DIPLOMATIC_QUARTER';

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorBuildings', 'BUILDING_CHANCERY', 1, 90), -- so good all civs should build
('MajorFavorBuildings', 'BUILDING_CONSULATE', 1, 90);

-- BYZANTIUM GAUL dlc (within new frontier)
--INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('AggressiveBuildings', 'BUILDING_STATUE_OF_ZEUS', 			1, 0); -- Requires barracks

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ShakaWonders', 		'BUILDING_STATUE_OF_ZEUS',        1, 500), -- Impis (moved to dlc file)
('AmbiorixWonders',      'BUILDING_STATUE_OF_ZEUS',       1, 400), -- Extra culture
--('AlexanderWonders',      'BUILDING_STATUE_OF_ZEUS',       1, 300), -- Burst of Science
('GorgoWonders', 		'BUILDING_STATUE_OF_ZEUS', 		  1, 150); -- pvs 80


INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('UnitPriorityBoosts', -16, 'UNIT_SOOTHSAYER'),
('UnitPriorityBoosts', -5, 'UNIT_CULTIST');

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('MajorFavorCanal_and_Gov', 'DISTRICT_PRESERVE', 				1, 50); -- Testing Preserve Placement



/*
INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
		('RH_AI_HIPPO_R', 			'REQUIREMENT_CITY_HAS_DISTRICT');
		
INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIPPO_R', 'DistrictType', 'DISTRICT_HIPPODROME');


INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_HAS_HIPPO_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_HAS_HIPPO_REQ_S', 'RH_AI_HIPPO_R'),
		('RH_HAS_HIPPO_REQ_S', 'REQUIRES_PLAYER_IS_AI');


INSERT OR IGNORE INTO BeliefModifiers (BeliefType        ,ModifierId)   VALUES
			('BELIEF_JUST_WAR',				'AI_HIPPO');

INSERT OR IGNORE INTO Modifiers    (ModifierId,			ModifierType,							SubjectRequirementSetId) VALUES 		
			('AI_HIPPO',	'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',	'RH_HAS_HIPPO_REQ_S');
			
INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES
			('AI_HIPPO',	'Amount'       , 2);
*/