
-- AUTHOR: ROMANHOLIDAY

-- JAYAVARMAN / KHMER

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JAYAVARMAN', 'TRAIT_LEADER_DEFENSIVE');




--TECHNOLOGY_CODE_OF_LAWS

INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_CIVILIZATION_KHMER_BARAYS',		'RH_START_WITH_RH_AI_MAIN_TECHNOLOGY');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_START_WITH_RH_AI_MAIN_TECHNOLOGY',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI'); 

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_START_WITH_RH_AI_MAIN_TECHNOLOGY',					'TechType', 'TECHNOLOGY_RH_AI_MAIN');


INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_LEADER_MONASTERIES_KING',		'RH_AI_KHMER_TECHNOLOGY');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent) VALUES		
		('RH_AI_KHMER_TECHNOLOGY',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	'PLAYER_IS_AI', 1, 1); 

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_AI_KHMER_TECHNOLOGY',					'TechType', 'TECHNOLOGY_RH_AI_RIV_GODDESS');



REPLACE INTO AiListTypes (ListType) VALUES
('KhmerDistricts'),
('JayavarmanYields'),
('JayavarmanSettlement'),
('JayavarmanPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KhmerDistricts',    'TRAIT_CIVILIZATION_KHMER_BARAYS', 'Districts'),
('JayavarmanYields',       'TRAIT_LEADER_MONASTERIES_KING', 'Yields'),
('JayavarmanSettlement',       'TRAIT_LEADER_MONASTERIES_KING', 'PlotEvaluations'),
('JayavarmanPseudoYields', 'TRAIT_LEADER_MONASTERIES_KING', 'PseudoYields');

-- Only Basic Def Entries

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KhmerDistricts', 'DISTRICT_AQUEDUCT', 1, 80), 
('KhmerDistricts', 'DISTRICT_HOLY_SITE', 1, 500), -- Important
('JayavarmanYields', 'YIELD_CULTURE', 1, 10), -- pvs 7
('JayavarmanYields', 'YIELD_FAITH',   1, 400), -- pvs 15, 35, 150
('JayavarmanYields', 'YIELD_FOOD',    1, 75), -- work ethic over feed the world, 15
('JayavarmanYields', 'YIELD_SCIENCE', 1, -4),
('JayavarmanYields', 'YIELD_GOLD',    1, -10),
('JayavarmanYields', 'YIELD_RH_R_GODDESS', 1, 9000), -- Test, pvs 5000
('JayavarmanYields', 'YIELD_RH_SCRIPTURE', 1, 1950),

('JayavarmanYields', 'YIELD_RH_FAITH', 1, 750), -- Avoid ADJ pantheons

('JayavarmanYields', 'YIELD_RH_RV_BASE', 1, 950),

('JayavarmanPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 650), -- pvs 25, 55, 70, 550
('JayavarmanPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 25), -- Prasat +1 slot
('JayavarmanPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 11),
('JayavarmanPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -15), -- Domrey advantage 
--('JayavarmanPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 5), -- pvs 20
('JayavarmanPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 35),
('JayavarmanPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -5),
('JayavarmanPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -15),
('JayavarmanPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 6),
('JayavarmanPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -10),

('JayavarmanWonders', 'BUILDING_GRANARY', 1, 90), --0.5 Culture for every population with Prasat, 1 faith with aqueduct

('JayavarmanWonders', 'BUILDING_SHRINE', 1, 90),
('JayavarmanWonders', 'BUILDING_PRASAT', 1, 950),
('JayavarmanWonders', 'BUILDING_WATER_MILL', 1, 0); -- Rivers / Higher population growth



REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('JayavarmanSettlement', 'Fresh Water', 				0, 15, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'); -- pvs 12



UPDATE AiFavoredItems SET Value = 2 WHERE ListType = 'JayavarmanUnitBuilds' AND Item = 'UNIT_MISSIONARY'; -- was 1

-- ('JayavarmanWonders', 'BUILDING_CRISTO_REDENTOR', 1, 900), -- Already exists

-- Add unit builds siege preference?

REPLACE INTO UnitAiInfos (UnitType, AiType)
SELECT 'UNIT_KHMER_DOMREY', 'UNITTYPE_SIEGE_ALL' 
FROM UnitAiTypes
WHERE AiType = 'UNITTYPE_SIEGE_ALL';

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GITARJA', 'TRAIT_LEADER_DEFENSIVE');

-- GITARJA / INDONESIA

REPLACE INTO AiListTypes (ListType) VALUES
('GitarjaSettlement'),
('GitarjaYields'),
('GitarjaPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GitarjaSettlement',   'TRAIT_LEADER_EXALTED_GODDESS', 'PlotEvaluations'),
('GitarjaYields',       'TRAIT_LEADER_EXALTED_GODDESS', 'Yields'),
('GitarjaPseudoYields', 'TRAIT_LEADER_EXALTED_GODDESS', 'PseudoYields');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GitarjaSettlement', 'Coastal', 0, 11),
('GitarjaYields', 'YIELD_SCIENCE',    1, -6),
('GitarjaYields', 'YIELD_FAITH',      1, 10),
('GitarjaYields', 'YIELD_FOOD',       1, 10),
('GitarjaYields', 'YIELD_PRODUCTION', 1,  2),
('GitarjaYields', 'YIELD_GOLD',       1,-10),
('GitarjaYields', 'YIELD_CULTURE',    1,  10),

('GitarjaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -65), 
('GitarjaPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, -90),
('GitarjaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 15), -- sea
('GitarjaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 20), -- pvs 15
('GitarjaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 12),
('GitarjaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -35),
('GitarjaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',  0, -7),
('GitarjaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  0, -7),
('GitarjaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  0, -6),
('GitarjaPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 20),
('GitarjaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 16),
('GitarjaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 19), -- pvs 18
('GitarjaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 10), -- pvs 16
('GitarjaWonders', 'BUILDING_ANGKOR_WAT', 1, 0);

--INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
--('GitarjaWonders');
--INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
--('GitarjaWonders', 'TRAIT_LEADER_EXALTED_GODDESS', 'Buildings');
--INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('GitarjaWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PreferPopulationBuildings', 'BUILDING_ANGKOR_WAT', 1, 80);



INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_ANGKOR_WAT', 'RH_BUILDING_FOOD');

