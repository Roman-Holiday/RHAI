
-- AUTHOR: ROMANHOLIDAY

--  AMERICA / Rough Rider Teddy ROOSEVELT 


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('AmericaWonders'),
('AmericaYields'),
('RooseveltUnits'),
('RooseveltYields'),
('RooseveltDiploActions'),
('AmericaDistricts'),
('AmericaPseudoYields'),
('RooseveltPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('AmericaWonders',        'TRAIT_CIVILIZATION_BUILDING_FILM_STUDIO', 'Buildings'),
('AmericaYields',        'TRAIT_CIVILIZATION_BUILDING_FILM_STUDIO', 'Yields'),
('RooseveltUnits',        'TRAIT_LEADER_ROOSEVELT_COROLLARY', 'Units'),
('RooseveltYields', 'TRAIT_LEADER_ROOSEVELT_COROLLARY', 'Yields'),
('RooseveltDiploActions', 'TRAIT_LEADER_ROOSEVELT_COROLLARY', 'DiplomaticActions'),
('AmericaDistricts', 'TRAIT_CIVILIZATION_BUILDING_FILM_STUDIO', 'Districts'),
('AmericaPseudoYields', 'TRAIT_CIVILIZATION_BUILDING_FILM_STUDIO', 'PseudoYields'),
('RooseveltPseudoYields', 'TRAIT_LEADER_ROOSEVELT_COROLLARY', 'PseudoYields');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AmericaDistricts', 'DISTRICT_THEATER', 1, 0),
('AmericaYields', 'YIELD_RH_DEMOCRACY', 1, 300),

('RooseveltYields', 'YIELD_GOLD', 1, 10), -- Trade Routes
('RooseveltYields', 'YIELD_FAITH', 0, -15), 
('RooseveltYields', 'YIELD_CULTURE', 1, 15),
('RooseveltDiploActions', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('RooseveltDiploActions', 'DIPLOACTION_GRANT_INFLUENCE_TOKEN', 1, 0),
('RooseveltTechs', 'TECH_POTTERY', 1, 0), 
('RooseveltCivics', 'CIVIC_EXPLORATION', 1, 0),
('RooseveltUnits', 'UNIT_NATURALIST', 1, 85),
('RooseveltUnits', 'UNIT_APOSTLE', 0, -20),
('RooseveltUnits', 'UNIT_MISSIONARY', 0, -50),

('AmericaWonders', 'BUILDING_STONEHENGE', 0, 0), -- low religion
('AmericaWonders', 'BUILDING_FILM_STUDIO', 1, 300),
('AmericaWonders', 'BUILDING_AMPHITHEATER', 1, 0),
('AmericaWonders', 'BUILDING_MUSEUM_ART', 1, 20),
('AmericaWonders', 'BUILDING_MUSEUM_ARTIFACT', 1, 20),
('AmericaPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 45), -- film studio combo + national parks, base 0.83

('RooseveltPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 25),
('RooseveltPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5), -- +5 Combat Strength on Home Continent
('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0, -90),
('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 25),
('RooseveltPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 25),
('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 25),

('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10), -- Trade Routes
('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 8), -- Trade Routes
('RooseveltPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 70), -- Double envoys with trade routes
('RooseveltPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 45), -- Double envoys with trade routes
('RooseveltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 16), -- potential DP Victory

('RooseveltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 25), -- think he would really care

('RooseveltPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -35),
--('RooseveltPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 2),
('RooseveltPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -14),
('RooseveltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 15),
--('RooseveltPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 40), -- already exists in agenda
('RooseveltPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 10), -- film studio combo + national parks, base 0.83
('RooseveltPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, -15); -- get only Naturalists -- pvs -50 but lower as includes rock bands

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_T_ROOSEVELT',				'AGENDA_CULTURED',						35);
		
-- 33% enviromentalist

DELETE FROM AiFavoredItems WHERE ListType = 'RooseveltPseudoYields' AND Item = 'PSEUDOYIELD_ENVIRONMENT'; -- Bull Moose agenda
DELETE FROM LeaderTraits WHERE LeaderType = 'LEADER_T_ROOSEVELT' AND TraitType = 'TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE';
DELETE FROM AiFavoredItems WHERE ListType = 'RooseveltCivics' AND Item = 'CIVIC_DIVINE_RIGHT';

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RooseveltCivics', PrereqCivic, 1, 0
FROM Governments WHERE GovernmentType = 'GOVERNMENT_CLASSICAL_REPUBLIC';

-- Todo, chance of getting cultural agenda

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RooseveltWonders', 'BUILDING_STATUE_LIBERTY', 1, 200
FROM Types WHERE Type = 'BUILDING_STATUE_LIBERTY';





-- PEDRO / BRAZIL

DELETE FROM AiFavoredItems WHERE ListType = 'GreatPersonObsessedGreatPeople' AND Item = 'PSEUDOYIELD_GPP_PROPHET'; -- Credit: Infixo: don't be obsessed with him - there is only one!
UPDATE AiFavoredItems SET Value = 38 WHERE ListType = 'GreatPersonObsessedGreatPeople'; -- def. 50

REPLACE INTO AiListTypes (ListType) VALUES
('PedroDistricts'),
('PedroProjects'),
('PedroSettlement'),
('PedroYields'),
('PedroPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PedroDistricts', 'TRAIT_LEADER_MAGNANIMOUS', 'Districts'),
('PedroProjects', 'TRAIT_LEADER_MAGNANIMOUS', 'Projects'),
('PedroSettlement', 'TRAIT_LEADER_MAGNANIMOUS', 'PlotEvaluations'),
('PedroYields', 'TRAIT_LEADER_MAGNANIMOUS', 'Yields'),

('PedroPseudoYields', 'TRAIT_LEADER_MAGNANIMOUS', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PedroDistricts', 'DISTRICT_STREET_CARNIVAL', 1, 0),
('PedroDistricts', 'DISTRICT_WATER_STREET_CARNIVAL', 1, 0),
('PedroDistricts', 'PROJECT_CARNIVAL', 1, 200),

('PedroYields', 'YIELD_RH_MAUS_H', 1, 850),

('PedroCivics', 'CIVIC_NATURAL_HISTORY', 1, 0),
('PedroPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -35), -- Less aggressive
('PedroPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 5),
('PedroPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 5),
('PedroPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  0, -9),
('PedroPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -12),
('PedroPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 40), -- leave jungle
('PedroPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -25),
('PedroPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 20),
('PedroPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 200), -- pvs 30, 40, 100
('PedroPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 10),
('PedroPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 8), -- Bringing Back
('PedroPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, -12), -- GP
('PedroPseudoYields', 'PSEUDOYIELD_WONDER', 1, -28);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('PedroSettlement', 'Coastal', 			0, 2, 		 NULL, 			'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- unique battleship
--('PedroSettlement', 'Specific Feature',  0, 4, 		'FEATURE_FOREST', 								NULL),
('PedroSettlement', 'Specific Feature',  0, 3, 		'FEATURE_JUNGLE', 								NULL);


DELETE FROM AiFavoredItems WHERE ListType = 'PedroTechs'  AND Item = 'TECH_ASTROLOGY'; -- Was more of an Industry / science / great people focused guy

