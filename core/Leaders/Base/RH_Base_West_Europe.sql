-- noinspection SqlNoDataSourceInspectionForFile

-- RH Western Europe Base Game
-- AUTHOR: ROMANHOLIDAY


-- PHILIP_II / SPAIN

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_PHILIP_II', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_PHILIP_II', 'TRAIT_LEADER_RH_TRADE');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_PHILIP_II', 'TRAIT_LEADER_RH_NAVAL_EXPLORATION');


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('PhilipYields'),
('PhilipDiplomacy'),
('PhilipPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PhilipYields', 'TRAIT_LEADER_EL_ESCORIAL', 		'Yields'),
('PhilipDiplomacy',    'TRAIT_LEADER_EL_ESCORIAL', 'DiplomaticActions'),
('PhilipPseudoYields', 'TRAIT_LEADER_EL_ESCORIAL', 'PseudoYields');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item,  Value) VALUES
('PhilipYields', 'YIELD_SCIENCE',   -15),
('PhilipYields', 'YIELD_CULTURE',   -15);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('PhilipYields', 'YIELD_PRODUCTION',  1, 3),
('PhilipYields', 'YIELD_CULTURE',  1, 3),
('PhilipYields', 'YIELD_FAITH', 1, 15), -- pvs 8
('PhilipYields', 'YIELD_GOLD',  1, 25),

('PhilipYields', 'YIELD_RH_COMMUNISM', 	1, 200),
('PhilipYields', 'YIELD_RH_FASCISM', 	1, 350),
('PhilipYields', 'YIELD_RH_SPREAD_RELIGION', 	1, 60),

('PhilipYields', 'YIELD_RH_NAVAL', 	1, 400),
--('PhilipYields', 'YIELD_RH_TRADE', 		1, 850),

('PhilipCivics', 'CIVIC_MERCANTILISM', 1, 0),
('PhilipDiplomacy', 'DIPLOACTION_DECLARE_HOLY_WAR', 1, 70),
('PhilipDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_CONVERT', 0, 0), 
('PhilipPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 16), -- mission espically on foreign Continents
('PhilipPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 75), -- Huge bonus from trade routes
('PhilipPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 25),
('PhilipPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -6),
('PhilipPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -3),
('PhilipPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 100),
('PhilipPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 100),

('PhilipPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 150),
('PhilipPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 22),
('PhilipPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10), -- Trade Routes
('PhilipPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 65), -- Trade Routes + armadas, 32
('PhilipPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 7), -- pvs 4
('PhilipPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5),
('PhilipPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 3),
('PhilipPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 40); -- pvs 20, 35

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PhilipPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 80);

UPDATE AiFavoredItems SET Value = 30 WHERE ListType = 'PhilipForeignSettlement' AND Item = 'Foreign Continent'; -- def 60, pvs 26, 22, so good for trade

UPDATE AiFavoredItems SET Value = 40 WHERE ListType = 'CounterReformerInquisitorPreference' AND Item = 'UNIT_INQUISITOR'; -- pvs 10, 20, 25
-- 1 extra charge and removes 100% of religion

/*

		<Row ListType="PhilipWonders" Item="BUILDING_COLOSSUS" Favored="true"/>
		<Row ListType="PhilipWonders" Item="BUILDING_GREAT_LIGHTHOUSE" Favored="true"/>
		<Row ListType="PhilipWonders" Item="BUILDING_HAGIA_SOPHIA" Favored="true"/>
		<Row ListType="PhilipWonders" Item="BUILDING_MAHABODHI_TEMPLE" Favored="true"/>
		<Row ListType="PhilipForeignSettlement" Item="Foreign Continent" Favored="false" Value="60"/>
		
				<Row ListType="PhilipCivics" Item="CIVIC_EXPLORATION" Favored="true"/>
		<Row ListType="PhilipCivics" Item="CIVIC_COLONIALISM" Favored="true"/>
		<Row ListType="PhilipCivics" Item="CIVIC_CULTURAL_HERITAGE" Favored="true"/>
		
				<Row ListType="PhilipTechs" Item="TECH_ANIMAL_HUSBANDRY" Favored="true"/>
		<Row ListType="PhilipTechs" Item="TECH_ASTROLOGY" Favored="true"/>
		<Row ListType="PhilipTechs" Item="TECH_CELESTIAL_NAVIGATION" Favored="true"/>
		<Row ListType="PhilipTechs" Item="TECH_CARTOGRAPHY" Favored="true"/>
		<Row ListType="PhilipTechs" Item="TECH_GUNPOWDER" Favored="true"/>
		
*/








-- CATHERINE_DE_MEDICI / FRANCE -- BLACK QUEEN

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CATHERINE_DE_MEDICI', 'TRAIT_LEADER_EXPANSIONIST'); -- Extra vision

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CATHERINE_DE_MEDICI', 'TRAIT_LEADER_ESPIONAGE'); 

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CATHERINE_DE_MEDICI', 'TRAIT_LEADER_PURSUE_DIPLOMATIC_VICTORY'); -- Temp

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('FranceUnits'),
('CatherineYields'),
('CatherinePseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('FranceUnits', 'TRAIT_CIVILIZATION_UNIT_FRENCH_GARDE_IMPERIALE', 'Units'),
('CatherineYields', 'FLYING_SQUADRON_TRAIT', 'Yields'),
('CatherinePseudoYields', 'FLYING_SQUADRON_TRAIT', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('FranceUnits', 'UNIT_FRENCH_GARDE_IMPERIALE', 1, 60), -- Very Strong, pvs 30

('CatherineCivics', 'CIVIC_DIPLOMATIC_SERVICE', 1, 0),
('CatherineYields', 'YIELD_CULTURE', 1, 15),
('CatherineYields', 'YIELD_PRODUCTION', 1, 5), -- Wonders
('CatherineYields', 'YIELD_FAITH', 1, -12),

('CatherineWonders', 'BUILDING_GOV_SPIES', 1, 9000), 
('CatherineWonders', 'BUILDING_GOV_CITYSTATES', 0, -90),
('CatherineWonders', 'BUILDING_GOV_FAITH', 0, -90),

('CatherineWonders', 'BUILDING_GOV_TALL', 1, 0),
('CatherineWonders', 'BUILDING_GOV_WIDE', 1, 0),

('CatherinePseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -15),
--('CatherinePseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 80), -- lol very much needed
('CatherinePseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 19),
('CatherinePseudoYields', 'PSEUDOYIELD_TOURISM', 1, 50), 
('CatherinePseudoYields', 'PSEUDOYIELD_WONDER', 1, 110); -- Double tourism, Production bonus in med, ren, industrial



/*
		<Row ListType="CatherineTechs" Item="TECH_CASTLES" Favored="true"/>
		<Row ListType="CatherineTechs" Item="TECH_PRINTING" Favored="true"/>
		<Row ListType="CatherineTechs" Item="TECH_FLIGHT" Favored="true"/>
		<Row ListType="CatherineTechs" Item="TECH_COMPUTERS" Favored="true"/>
*/




-- TRAJAN / ROME


INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TRAJAN', 'TRAIT_LEADER_MAD_EXPANSIONIST');
-- Already has expansionist

-- 		<Row AgendaOne="AGENDA_OPTIMUS_PRINCEPS" AgendaTwo="AGENDA_EXPANSIONIST"/>

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('RomeSettlement'),
('RomeDistricts'),
('RomeYields'),
('RomeWonders'),
('RomePseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RomeSettlement',   'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 'PlotEvaluations'),
('RomeDistricts', 	'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 	'Districts'),
('RomeYields', 		'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 	'Yields'),
('RomeWonders', 		'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 'Buildings'),
('RomePseudoYields', 'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 'PseudoYields');


-- Trajan Trait -- 'TRAJANS_COLUMN_TRAIT'

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TrajanWonders', 'BUILDING_STONEHENGE', 0, 0),
('RomeSettlement', 'Nearest Friendly City', 0, -2),
('RomeSettlement', 'Fresh Water', 0, -5), -- Bath
('RomeSettlement', 'Coastal',	  0, -3); -- Bath


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('RomeSettlement', 'Specific Resource', 		0, 8, 			'RESOURCE_IRON', 	'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RomeWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 0
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) -- Iron
SELECT 'RomeWonders', 'BUILDING_JEBEL_BARKAL', 1, 50 
FROM Types WHERE Type = 'BUILDING_JEBEL_BARKAL';


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RomeYields', 'YIELD_PRODUCTION', 1, 35), -- bath industrial zone adj, pvs 15
('RomeYields', 'YIELD_GOLD', 1, 4),
('RomeYields', 'YIELD_FASCISM', 1, 60),
('RomeYields', 'YIELD_DEMOCRACY', 1, 15),

('RomeYields', 'YIELD_RH_PRODUCTION', 1, 30),
('RomeYields', 'YIELD_RH_MAUS_H', 1, 85), -- Bath Combo

('RomeDistricts', 'DISTRICT_BATH', 1, 50),
('RomePseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 15), -- combo with bath
('RomePseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 12), 
('RomePseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 5), 
('RomePseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 15),
('RomePseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 15), -- pvs 10
('RomePseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 12), -- historical
('RomePseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 5), -- More habours slightly
('RomePseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 10), -- Baths and historical
('RomePseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 40), -- Aggressive Early
('RomePseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -2),
('RomePseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -7),
('RomePseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 12);





-- HARDRADA / NORWAY

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_HARDRADA', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_HARDRADA', 'TRAIT_LEADER_EXPANSIONIST');


DELETE FROM AiFavoredItems WHERE ListType = 'LastVikingKingCoastSettlement';
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('LastVikingKingCoastSettlement', 'Coastal',           0, 25,             NULL), 
('LastVikingKingCoastSettlement', 'Foreign Continent', 0, 20,             NULL), 
('LastVikingKingCoastSettlement', 'Specific Feature',  0,  3, 'FEATURE_FOREST'); 

UPDATE AiFavoredItems SET Value = 60 WHERE ListType = 'LastVikingKingNavalPreference' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- def. 100 -- also affects naval agenda -- 80 is now too high


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('HaraldUnits'),
('HaraldYields'),
('NorwayYields'),
('HaraldUnitBuilds'),
('HaraldOperations');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('HaraldUnits',  'TRAIT_AGENDA_LAST_VIKING_KING', 		'Units'),
('HaraldYields', 'TRAIT_AGENDA_LAST_VIKING_KING', 		'Yields'),
('NorwayYields', 'TRAIT_CIVILIZATION_EARLY_OCEAN_NAVIGATION', 		'Yields'),
('HaraldUnitBuilds',   'TRAIT_AGENDA_LAST_VIKING_KING', 'UnitPromotionClasses'),
('HaraldOperations',   'TRAIT_AGENDA_LAST_VIKING_KING', 'AiOperationTypes');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HaraldUnitBuilds',   'PROMOTION_CLASS_NAVAL_MELEE', 1, 12); -- pvs 10

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HaraldOperations', 'OP_RH_AGGRESSIVE_PILLAGE', 1, 2), -- New testing
('HaraldOperations', 'NAVAL_SUP_MELEE',  1, 1), -- Raiding (50% production towards melee as well)

('HaraldYields', 'YIELD_FAITH', 1, 11), -- pvs 10
('HaraldYields', 'YIELD_CULTURE', 1, 2),

('NorwayYields', 'YIELD_RH_NAVAL', 1, 400),

('HaraldTechs', 'TECH_MINING', 1, 0),
('HaraldCivics', 'CIVIC_MYSTICISM', 1, 0),
('HaraldCivics', 'CIVIC_FOREIGN_TRADE', 1, 0),
('HaraldUnits', 'UNIT_NORWEGIAN_LONGSHIP', 1, -5), -- pvs -5
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, 72), -- barb ship spam
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -5),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CITY_DEFENCES', 1, -5),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CITY_BASE', 1, 15),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 15), -- pvs 10
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CITY_POPULATION', 1, -100),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_IMPROVEMENT', 1, -20),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_GPP_PROPHET', 1, 25), -- holy site for bonus, pvs 15, 20
('LastVikingKingNavalPreference', 'PSEUDOYIELD_ENVIRONMENT', 1, 20), -- forests
('LastVikingKingNavalPreference', 'PSEUDOYIELD_GPP_GENERAL', 1, -15), 
('LastVikingKingNavalPreference', 'PSEUDOYIELD_GPP_ADMIRAL', 1,  35), 
('LastVikingKingNavalPreference', 'PSEUDOYIELD_TOURISM', 1,  10), 

('LastVikingKingNavalPreference', 'PSEUDOYIELD_UNIT_COMBAT', 1, -10), -- pvs -5
('LastVikingKingNavalPreference', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 18), -- pvs 10
('LastVikingKingNavalPreference', 'PSEUDOYIELD_UNIT_SETTLER', 1, 10); -- more cities


-- think is fixed by firaxis but leaving just in case -- credit infixo
UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT' WHERE UnitType = 'UNIT_NORWEGIAN_LONGSHIP'; 




-- Leaders 8


INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_CIVILIZATION_DISTRICT_HANSA',		'RH_START_WITH_RH_AI_GERMANY_TECH');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_START_WITH_RH_AI_GERMANY_TECH',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI'); 

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_START_WITH_RH_AI_GERMANY_TECH',					'TechType', 'TECHNOLOGY_RH_AI_GERMANY_ADJ');


INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_BARBAROSSA', 'TRAIT_LEADER_EXPANSIONIST');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('GermanyDistricts'),
('GermanyTechs'),
('GermanyYields'),
('GermanyPseudoYields'),

('BarbarossaYields'),
('BarbarossaPseudoYields');
INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('GermanyDistricts',       'TRAIT_CIVILIZATION_DISTRICT_HANSA', 'Districts'),
('GermanyTechs',       'TRAIT_CIVILIZATION_DISTRICT_HANSA', 'Technologies'),
('GermanyYields',       'TRAIT_CIVILIZATION_DISTRICT_HANSA', 'Yields'),
('GermanyPseudoYields',       'TRAIT_CIVILIZATION_DISTRICT_HANSA', 'PseudoYields'),

('BarbarossaYields',       'TRAIT_LEADER_HOLY_ROMAN_EMPEROR', 'Yields'),
('BarbarossaPseudoYields', 'TRAIT_LEADER_HOLY_ROMAN_EMPEROR', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GermanyDistricts', 'DISTRICT_HANSA', 1, 90), 
('GermanyDistricts', 'DISTRICT_COMMERCIAL_HUB', 1, 100), -- pvs 20
('GermanyDistricts', 'DISTRICT_DAM', 1, 50), 
('GermanyDistricts', 'DISTRICT_AQUEDUCT', 1, 50),
('GermanyDistricts', 'DISTRICT_CANAL', 1, 50),

('GermanyTechs', 'TECH_POTTERY', 1, 0), 
('GermanyTechs', 'TECH_WRITING', 1, 0), 
('GermanyTechs', 'TECH_CURRENCY', 1, 0), 
('GermanyTechs', 'TECH_ENGINEERING', 1, 0), -- Aqueduct
('GermanyTechs', 'TECH_BUTTRESS', 1, 0), -- Dam
('GermanyTechs', 'TECH_APPRENTICESHIP', 1, 0), -- Making sure

('GermanyYields', 'YIELD_RH_MAUS_H', 1, 850), -- Hansa
('GermanyYields', 'YIELD_RH_TRADE',  1, 550), -- Hansa
('GermanyYields', 'YIELD_GOLD', 	 1, 100), -- Hansa
('GermanyYields', 'YIELD_PRODUCTION', 	1, 60), -- Hansa
('GermanyYields', 'YIELD_RH_MAGNUS', 	1, 500),

('GermanyPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 85),
('GermanyPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 0, -20),

('BarbarossaPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -100), 
('BarbarossaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 	1, 50),
('BarbarossaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -5),
('BarbarossaPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 15), 
('BarbarossaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',  1, -25),
('BarbarossaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 15), -- pvs 20, 30, 57
('BarbarossaPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 35),

('BarbarossaCivics', 'CIVIC_GAMES_RECREATION', 1, 0),
('BarbarossaCivics', 'CIVIC_GUILDS', 1, 0),
('BarbarossaCivics', 'CIVIC_EXPLORATION', 1, 0),
('BarbarossaCivics', 'CIVIC_URBANIZATION', 1, 0),
('BarbarossaTechs', 'TECH_INDUSTRIALIZATION', 1, 0),

('BarbarossaYields', 'YIELD_RH_SOVEREIGNTY_BAN', 	1, 250), -- Agenda
('BarbarossaYields', 'YIELD_RH_COMMUNISM', 	1, -25),
('BarbarossaYields', 'YIELD_RH_FASCISM', 	1, 50),
('BarbarossaYields', 'YIELD_RH_DEMOCRACY', 	1, 10),
('BarbarossaYields', 'YIELD_RH_PRODUCTION',      1, 50),
('BarbarossaYields', 'YIELD_FAITH',      0,-18),
('BarbarossaYields', 'YIELD_GOLD',       1, 30), -- Commerical Hubs, pvs 15, 25
('BarbarossaYields', 'YIELD_PRODUCTION', 1, 50); -- pvs 11, 30

--INSERT INTO AgendaPreferredLeaders  (LeaderType,	AgendaType,		PercentageChance) VALUES		
--			('LEADER_BARBAROSSA',				'AGENDA_EXPANSIONIST',		20);

-- Victoria

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_VICTORIA', 'TRAIT_LEADER_EXPANSIONIST');

--INSERT INTO AgendaPreferredLeaders  (LeaderType,	AgendaType,		PercentageChance) VALUES		
--			('LEADER_VICTORIA',				'AGENDA_EXPANSIONIST',		15),
--			('LEADER_VICTORIA',				'AGENDA_MONEY_GRUBBER',		10);		
			
			
INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('EnglandDistricts'),
('EnglandUnits'),
('EnglandSettlement'),
('EnglandWonders'),
('EnglandTechs'),
('EnglandTechs'),
('EnglandYields'),
('VictoriaYields'),
('VictoriaScoutUses'),
('VictoriaPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('EnglandDistricts',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Districts'),
('EnglandUnits',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Units'),
('EnglandSettlement',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'PlotEvaluations'),
('EnglandWonders',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Buildings'),
('EnglandTechs',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Technologies'),
('EnglandYields',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Yields'),
('VictoriaUnits',       'TRAIT_LEADER_PAX_BRITANNICA', 'Units'),
('VictoriaYields',       'TRAIT_LEADER_PAX_BRITANNICA', 'Yields'),
('VictoriaScoutUses',       'TRAIT_LEADER_PAX_BRITANNICA', 'AiScoutUses'),
('VictoriaPseudoYields', 'TRAIT_LEADER_PAX_BRITANNICA', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EnglandWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 0),
('EnglandWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 900),
('EnglandWonders', 'BUILDING_OXFORD_UNIVERSITY', 1, 900),

('EnglandWonders', 'BUILDING_STOCK_EXCHANGE', 1, 500),
('EnglandWonders', 'BUILDING_STADIUM', 1, 100),
('EnglandWonders', 'BUILDING_BROADCAST_CENTER', 1, 500),
('EnglandWonders', 'BUILDING_FACTORY', 1, 900),
('EnglandWonders', 'BUILDING_RESEARCH_LAB', 1, 900),
('EnglandWonders', 'BUILDING_COAL_POWER_PLANT', 1, 900),

--('VictoriaWonders', 'BUILDING_OXFORD_UNIVERSITY', 1, 90),
('VictoriaWonders', 'BUILDING_GREAT_LIBRARY', 1, 0),
('VictoriaWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),
('VictoriaWonders', 'BUILDING_BIG_BEN', 1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EnglandDistricts', 'DISTRICT_ROYAL_NAVY_DOCKYARD', 1, 200),
('EnglandDistricts', 'DISTRICT_DAM', 1, 100), -- Industrial Zone
('EnglandDistricts', 'DISTRICT_AQUEDUCT', 1, 100),
('EnglandDistricts', 'DISTRICT_CANAL', 1, 20),

('EnglandYields', 'YIELD_RH_PRODUCTION', 1, 150),
('EnglandYields', 'YIELD_RH_NAVAL',		 1, 150),
('EnglandYields', 'YIELD_RH_DEMOCRACY',	 1, 500),
('EnglandYields', 'YIELD_PRODUCTION',	 1, 25),
('EnglandYields', 'YIELD_GOLD',	 		 1, 10),

('EnglandTechs', 'TECH_MASS_PRODUCTION',  1, 0), -- Venetian Arsenal / Shipyard
('EnglandTechs', 'TECH_CELESTIAL_NAVIGATION',  1, 0),

('EnglandUnits', 'UNIT_SEA_DOG',  1, 10), -- Very Good -- Name might be wrong
('EnglandUnits', 'UNIT_GALLEY',  1, 5),
('EnglandUnits', 'UNIT_MILITARY_ENGINEER',  1, 70), -- Half price and 2 extra charges, pvs 40
('VictoriaUnits', 'UNIT_SEA_DOG',  1, 5), -- Boost
('VictoriaUnits', 'UNIT_ENGLISH_REDCOAT',  1, 20), -- Very Strong
('VictoriaUnits', 'UNIT_SCOUT',  1, 10),

('VictoriaYields', 'YIELD_SCIENCE',  1, 8),
('VictoriaYields', 'YIELD_FAITH', 0, -5), -- low religous preference trait (-50)
('VictoriaYields', 'YIELD_PRODUCTION', 1, 12),
('VictoriaYields', 'YIELD_GOLD', 1, 10),
('VictoriaYields', 'YIELD_RH_NAVAL', 1, 80),

--('VictoriaYields', 'YIELD_FOOD', 1, 3),

('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 80), -- pvs 40, special ship units and movement, foreign continent expansion, pvs 60
('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 20),
('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 20),
('VictoriaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5),
('VictoriaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 4),
('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT',  1, 15),
('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 20),
('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 45),
('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 35),
('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, -20),
('VictoriaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 15), -- Historical / extra iron, coal
--('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -10), low religous (-75)
('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 15),
('VictoriaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3);

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('EnglandSettlement', 'Coastal', 				0, 8, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('EnglandSettlement', 'Specific Resource', 		0, 4, 'RESOURCE_IRON',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- pvs 2
('EnglandSettlement', 'Inner Ring Yield', 		0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('EnglandSettlement', 'Specific Resource', 	0, 6, 'RESOURCE_COAL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('VictoriaScoutUses', 'DEFAULT_NAVAL_SCOUTS', 1, 100),
('VictoriaScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 1, 300);

-- Redcoat Localisation Bug 
UPDATE Traits SET Name = 'LOC_TRAIT_LEADER_UNIT_ENGLISH_REDCOAT_NAME'      WHERE Name = 'LOC_TRAIT_LEADER_TRAIT_LEADER_UNIT_ENGLISH_REDCOAT_NAME';







