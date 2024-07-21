
-- AUTHOR: ROMANHOLIDAY


-- Russia / Peter the Great

/*
		<Row ListType="PeterTechs" Item="TECH_ANIMAL_HUSBANDRY" Favored="true"/>
		<Row ListType="PeterTechs" Item="TECH_ASTROLOGY" Favored="true"/>
		<Row ListType="PeterTechs" Item="TECH_MILITARY_SCIENCE" Favored="true"/>
		<Row ListType="PeterWonders" Item="BUILDING_COLOSSUS" Favored="true"/>
		<Row ListType="PeterCivics" Item="CIVIC_FEUDALISM" Favored="true"/>
		
*/

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_PETER_GREAT', 'TRAIT_LEADER_EXPANSIONIST');

INSERT INTO LeaderTraits(LeaderType, TraitType) 			VALUES ('LEADER_PETER_GREAT', 'TRAIT_LEADER_TUNDRA');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('PeterPseudoYields'),
('PeterYields'),
('PeterDistricts');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PeterPseudoYields', 'TRAIT_LEADER_GRAND_EMBASSY', 'PseudoYields'),
('PeterYields', 'TRAIT_LEADER_GRAND_EMBASSY', 'Yields'),
('PeterDistricts', 'TRAIT_LEADER_GRAND_EMBASSY', 'Districts');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PeterCivics', 'CIVIC_MYSTICISM', 1, 0),
('PeterPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 950), -- pvs 100
('PeterPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 10), 
('PeterPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 20), 
('PeterPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 15), -- Normally lots of space in the tundra / 4 more tiles per city
('PeterPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 40),

('PeterPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 35), -- Border expansion with each great person earned
('PeterPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 10), -- Not too high, focus Lavra Buildings
('PeterPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 10),

('PeterPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 20), -- Apadana
('PeterPseudoYields', 'PSEUDOYIELD_WONDER', 1, 50), -- Gw slots

('PeterPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -35),
('PeterPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 50),
('PeterPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -4),
('PeterPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 9),
('PeterPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -8),
('PeterPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -12),

('PeterYields', 'YIELD_FAITH', 				1,				 950),
('PeterYields', 'YIELD_GOLD', 				1,				 6), -- Trade Routes
('PeterYields', 'YIELD_CULTURE', 			1,			 	25),
('PeterYields', 'YIELD_RH_COMMUNISM', 		1,			 	600),
('PeterYields', 'YIELD_RH_SPREAD_RELIGION', 1,			 	50),
('PeterYields', 'YIELD_RH_GW_SLOT', 					1, 950),
('PeterYields', 'YIELD_RH_RV_BASE', 					1, 950),

--('PeterYields', 'YIELD_PRODUCTION', 		1,			 	-3),

('PeterCivics', 'CIVIC_MYSTICISM', 		1, 					0),
('PeterCivics', 'CIVIC_THEOLOGY', 		1, 					0), -- Temples 
('PeterCivics', 'CIVIC_REFORMED_CHURCH', 1, 				0),
('PeterCivics', 'CIVIC_MASS_MEDIA',		 1, 				0), -- BUILDING_CRISTO_REDENTOR

('PeterDistricts', 'DISTRICT_DIPLOMATIC_QUARTER',    1, 50),
('PeterDistricts', 'DISTRICT_GOVERNMENT',    1, 100),
('PeterDistricts', 'DISTRICT_THEATER',    1, 60), -- To put great works
('PeterDistricts', 'DISTRICT_LAVRA',    	1, 200), -- Already has a preference but boosting further
('PeterDistricts', 'DISTRICT_ENCAMPMENT', 0, 0), 

('PeterWonders', 'BUILDING_SHRINE', 1, 900), -- +1 great writer
('PeterWonders', 'BUILDING_TEMPLE', 1, 900), -- +1 great artist
('PeterWonders', 'BUILDING_AMPHITHEATER', 1, 0), -- gw slots
('PeterWonders', 'BUILDING_MUSEUM_ART', 1, 90), -- 3GW art slots

('PeterWonders', 'BUILDING_GREAT_LIBRARY', 1, 90), -- 2 Slots of writing
('PeterWonders', 'BUILDING_SYDNEY_OPERA_HOUSE', 1, 90), -- GW Music Slots

('PeterWonders', 'BUILDING_GOV_CULTURE', 1, 900), -- GW SLOTS
('PeterWonders', 'BUILDING_GOV_WIDE', 1, 200), 
('PeterWonders', 'BUILDING_STONEHENGE', 0, 0), 
('PeterWonders', 'BUILDING_BOLSHOI_THEATRE', 1, 90),
('PeterWonders', 'BUILDING_BROADWAY', 1, 90), -- GW Slots
('PeterWonders', 'BUILDING_CRISTO_REDENTOR', 1, 900),

('PeterWonders', 'BUILDING_HERMITAGE', 1, 900); -- 4 GW slots of art 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) -- 2 GW slots
SELECT 'PeterWonders', 'BUILDING_APADANA', 1, 20
FROM Types WHERE Type = 'BUILDING_APADANA';

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'PeterWonders', 'BUILDING_ST_BASILS_CATHEDRAL', 1, 500
FROM Types WHERE Type = 'BUILDING_ST_BASILS_CATHEDRAL';

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'PeterWonders', 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION', 1, 200
FROM Types WHERE Type = 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION';

--DELETE FROM AiFavoredItems WHERE ListType = 'PeterWonders' AND Item = 'BUILDING_COLOSSUS'; -- not amazing but fun and good for trade routes






-- GILGAMESH / SUMERIA

REPLACE INTO AiListTypes (ListType) VALUES
('GilgameshTechs'),
('GilgameshCivics'),
('GilgameshWonders'),
('GilgameshUnits'),
('GilgameshDistricts'),
('GilgameshYields'),

('GilgameshPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GilgameshTechs',        'TRAIT_LEADER_ADVENTURES_ENKIDU', 'Technologies'),
('GilgameshCivics',       'TRAIT_LEADER_ADVENTURES_ENKIDU', 'Civics'),
('GilgameshWonders',      'TRAIT_LEADER_ADVENTURES_ENKIDU', 'Buildings'),
('GilgameshUnits',      'TRAIT_LEADER_ADVENTURES_ENKIDU', 	'Units'),
('GilgameshDistricts',      'TRAIT_LEADER_ADVENTURES_ENKIDU', 	'Districts'),
('GilgameshYields',      'TRAIT_LEADER_ADVENTURES_ENKIDU', 	'Yields'),
('GilgameshPseudoYields', 'TRAIT_LEADER_ADVENTURES_ENKIDU', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GilgameshDiplomacy', 'DIPLOACTION_ALLIANCE' , 1, 0),
('GilgameshDiplomacy', 'DIPLOACTION_JOINT_WAR' , 1, 0),
('GilgameshDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE' , 1, 0),
('GilgameshDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 1, 0), -- might already exist
('GilgameshDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0), -- gila

('GilgameshDistricts', 'DISTRICT_DAM', 1, 0), -- ziggarat protection

('GilgameshYields', 'YIELD_FOOD', 1, 60), -- Discourage Ziggarats Slightly
('GilgameshYields', 'YIELD_RH_CHARIOT', 1, 1500),

--('GilgameshDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV' , 0, 0), -- already exists
('GilgameshTechs', 'TECH_STIRRUPS' , 1, 0), 
('GilgameshTechs', 'TECH_WRITING' , 1, 0), 
('GilgameshTechs', 'TECH_EDUCATION' , 1, 0), 
('GilgameshCivics', 'CIVIC_FOREIGN_TRADE' , 1, 0), -- joint war
('GilgameshCivics', 'CIVIC_CIVIL_SERVICE' , 1, 0), -- alliance

('GilgameshWonders', 'BUILDING_GOV_CITYSTATES', 1, 200),
('GilgameshWonders', 'BUILDING_GREAT_BATH', 1, 0), -- ziggarat protection

('GilgameshWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 90),
('GilgameshWonders', 'BUILDING_HANGING_GARDENS', 1, 90),
('GilgameshWonders', 'BUILDING_GRANARY', 		1, 90),
('GilgameshWonders', 'BUILDING_WATER_MILL', 	1, 90),

('GilgameshPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL' , 1, 10),
('GilgameshPseudoYields', 'PSEUDOYIELD_WONDER' , 1, 30),
('GilgameshPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER' , 1, 5),
('GilgameshPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT' , 1, 25), -- War carts, pvs 20 
('GilgameshPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST' , 1, 22),
('GilgameshPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS' , 1, 110), -- gold camp bonus
('GilgameshPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS' , 1, 10), -- pvs 5, 10, 11, 18

('GilgameshPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 100),
('GilgameshPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 20),
('GilgameshPseudoYields', 'PSEUDOYIELD_IMPROVEMENT' , 1, -10), 
('GilgameshPseudoYields', 'PSEUDOYIELD_INFLUENCE' , 1, 22); 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GilgameshUnits', 'UNIT_SUMERIAN_WAR_CART' , 1, 15); -- Boost to the best unit in the game

-- CLASS_WAR_CART

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'GilgameshWonders', 'BUILDING_KILWA_KISIWANI', 1, 30
FROM Types WHERE Type = 'BUILDING_KILWA_KISIWANI';

--DELETE FROM AiFavoredItems WHERE Item='DIPLOACTION_DECLARE_FRIENDSHIP' AND Favored=1 AND ListType='GilgameshDiplomacy'; -- Bugged but Gilgabro

/*
	<AiListTypes>
		<Row ListType="GreeceCivics"/>
		<Row ListType="GreeceYields"/>
	</AiListTypes>
	<AiLists>
		<Row ListType="GreeceCivics" LeaderType="TRAIT_CIVILIZATION_DISTRICT_ACROPOLIS" System="Civics"/>
		<Row ListType="GreeceYields" LeaderType="TRAIT_CIVILIZATION_DISTRICT_ACROPOLIS" System="Yields"/>
	</AiLists>
	<AiFavoredItems>
		<Row ListType="GreeceCivics" Item="CIVIC_DRAMA_POETRY" Favored="true"/> -- The only civic definined
		<Row ListType="GreeceYields" Item="YIELD_CULTURE" Value="20"/>
	</AiFavoredItems>
	
		<Row LeaderType="LEADER_PERICLES" TraitType="TRAIT_LEADER_SURROUNDED_BY_GLORY"/>
		<Row LeaderType="LEADER_PERICLES" TraitType="TRAIT_LEADER_CULTURAL_MAJOR_CIV"/>
		<Row LeaderType="LEADER_PERICLES" TraitType="TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE"/>
		<Row LeaderType="LEADER_GORGO" TraitType="CULTURE_KILLS_TRAIT"/>
		<Row LeaderType="LEADER_GORGO" TraitType="TRAIT_LEADER_CULTURAL_MAJOR_CIV"/>
		<Row LeaderType="LEADER_GORGO" TraitType="TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE"/>
		
		<Row ListType="PericlesWonders" Item="BUILDING_POTALA_PALACE" Favored="true"/>
		<Row ListType="PericlesEnvoys" Item="PSEUDOYIELD_INFLUENCE" Value="30"/>
		<Row ListType="PericlesCivics" Item="CIVIC_MILITARY_TRAINING" Favored="true"/>
		<Row ListType="PericlesCivics" Item="CIVIC_POLITICAL_PHILOSOPHY" Favored="true"/>
		<Row ListType="PericlesCivics" Item="CIVIC_NAVAL_TRADITIION" Favored="true"/>
		<Row ListType="PericlesCivics" Item="CIVIC_MEDIEVAL_FAIRES" Favored="true"/>
		<Row ListType="PericlesCivics" Item="CIVIC_MERCENARIES" Favored="true"/>
		<Row ListType="PericlesTechs" Item="TECH_BRONZE_WORKING" Favored="true"/>
		
		<Row ListType="GorgoWonders" Item="BUILDING_TERRACOTTA_ARMY" Favored="true"/>
		<Row ListType="GorgoCivics" Item="CIVIC_MILITARY_TRAINING" Favored="true"/>
		<Row ListType="GorgoCivics" Item="CIVIC_DIPLOMATIC_SERVICE" Favored="true"/>
		<Row ListType="GorgoCivics" Item="CIVIC_NATIONALISM" Favored="true"/>
		<Row ListType="GorgoCivics" Item="CIVIC_MOBILIZATION" Favored="true"/>
		<Row ListType="GorgoTechs" Item="TECH_BRONZE_WORKING" Favored="true"/>
	
*/

-- GORGO + PERICLES / GREECE - Wonders

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GORGO', 'TRAIT_LEADER_AGGRESSIVE_MILITARY'); 

DELETE FROM LeaderTraits WHERE LeaderType = 'LEADER_PERICLES' AND TraitType = 'TRAIT_LEADER_PURSUE_DIPLOMATIC_VICTORY';

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('GreeceDistricts'),
('GreeceSettlement'),
('PericlesYields'),
('GorgoYields'),

('GorgoPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GreeceDistricts', 'TRAIT_CIVILIZATION_DISTRICT_ACROPOLIS', 'Districts'),
('GreeceSettlement', 'TRAIT_CIVILIZATION_DISTRICT_ACROPOLIS', 'PlotEvaluations'),
('PericlesYields', 'TRAIT_LEADER_SURROUNDED_BY_GLORY', 'Yields'),

('GorgoYields', 			'CULTURE_KILLS_TRAIT', 'Yields'),

('GorgoPseudoYields', 'TRAIT_AGENDA_WITH_SHIELD', 'PseudoYields');


--INSERT INTO AgendaPreferredLeaders  (LeaderType,	AgendaType,		PercentageChance) VALUES
--			('LEADER_GORGO',				'AGENDA_DARWINIST',					15),	
--			('LEADER_PERICLES',				'AGENDA_GREAT_PERSON_ADVOCATE',		20);


REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('GreeceSettlement', 'Inner Ring Yield', 			0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'); -- DISTRICT_ACROPOLIS placement


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GreeceDistricts', 'DISTRICT_ACROPOLIS', 	1, 		20),

-- Gorgo

('GorgoPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 	1, 		6),
('GorgoPseudoYields', 'PSEUDOYIELD_INFLUENCE', 		1, 		12),

('GorgoCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 	1,	        0), -- basics Governments
('GorgoCivics', 'CIVIC_DIVINE_RIGHT', 			1, 			0), -- Monarchy 
('GorgoCivics', 'CIVIC_TOTALITARIANISM', 		1, 			0), -- Fascism (4 Military)
('GorgoCivics', 'CIVIC_CLASS_STRUGGLE', 		1, 			0), -- Communism (3 Military)
('GorgoCivics', 'CIVIC_SUFFRAGE', 				0, 	    	0), -- Democracy (1 Military -- Very bad)
('GorgoCivics', 'CIVIC_IDEOLOGY', 				1, 			0), -- For tier 3 Governments

--('GorgoCivics', 'CIVIC_DIGITAL_DEMOCRACY', 		0, 			0), -- low military slots 
--('GorgoCivics', 'CIVIC_SYNTHETIC_TECHNOCRACY', 	0, 			0), -- low military slots
('GorgoCivics', 'CIVIC_ENVIRONMENTALISM' , 		1, 			0), -- Potential Cultural Victory (Tourism Boost)

('GorgoPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE' , 1, 				-50), -- Part of her agenda that she doesn't care that much
('GorgoPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS' , 1, 					3), -- (already has negative in new trait)
('GorgoPseudoYields', 'PSEUDOYIELD_CITY_BASE' , 1, 							20), -- to balance for cultural civ trait
('GorgoPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT' , 1, 						12), -- to balance for cultural civ trait
('GorgoPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS' , 1, 				-4), -- to balance for cultural civ trait


('GorgoYields', 		'YIELD_RH_GORGO', 									1, 			9000), 
('GorgoYields',			 'YIELD_RH_MILITARY_POLICY', 						1, 		5000), -- More Slots
('GorgoYields',			 'YIELD_RH_ALL_MILITARY_CARD', 						1, 		9000), -- Strength
('GorgoYields',			 'YIELD_RH_FASCISM', 								1, 		450), -- Strength
('GorgoYields',			 'YIELD_RH_MONARCHY', 								1, 		450),

('GorgoYields',			 'YIELD_RH_OLIGARCHY', 								1, 		200), -- Strength

('GorgoWonders', 'BUILDING_ALHAMBRA', 1, 70),

-- Pericles

('PericlesYields', 'YIELD_CULTURE', 					1, 			8), -- base 20
('PericlesYields', 'YIELD_GOLD', 						1, 			5),

('PericlesEnvoys', 'PSEUDOYIELD_GPP_ARTIST', 		1, 					10),
('PericlesEnvoys', 'PSEUDOYIELD_GPP_WRITER', 		1, 					15),
('PericlesEnvoys', 'PSEUDOYIELD_GPP_MUSICIAN', 		1, 					10),
('PericlesEnvoys', 'PSEUDOYIELD_GPP_GENERAL', 		1, 					-10),
('PericlesEnvoys', 'PSEUDOYIELD_WONDER', 			1, 					25),

('PericlesEnvoys', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 		1, 				10), -- pvs 14
('PericlesEnvoys', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',  1, 				25),
('PericlesEnvoys', 'PSEUDOYIELD_CITY_BASE', 				1, 	    	   	-40),
('PericlesEnvoys', 'PSEUDOYIELD_SPACE_RACE', 				0, 	    	   	-25),
('PericlesEnvoys', 'PSEUDOYIELD_CITY_DEFENCES', 			1, 	    	10),
('PericlesEnvoys', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 			1, 	 	10),
('PericlesEnvoys', 'PSEUDOYIELD_UNIT_SPY', 					1, 	 	15),

('PericlesEnvoys', 'PSEUDOYIELD_GOVERNOR', 		1, 				25), -- For city states, gov plaza building etc

('PericlesTechs', 'TECH_MACHINERY', 				1, 	    	0), -- BUILDING_KILWA_KISIWANI
('PericlesTechs', 'TECH_ENGINEERING', 				1, 	    	0), -- for Kilwa 
('PericlesTechs', 'TECH_IRON_WORKING', 				1, 	    	0), -- for Kilwa 
('PericlesTechs', 'TECH_SANITATION', 				1, 	    	0), -- BUILDING_ORSZAGHAZ


('PericlesWonders', 'BUILDING_GOV_TALL', 1, 			50),
('PericlesWonders', 'BUILDING_GOV_CITYSTATES', 1, 		900),
('PericlesWonders', 'BUILDING_GOV_SPIES',	 0, 		-20),
('PericlesWonders', 'BUILDING_ORSZAGHAZ',     1, 		80);



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'PericlesWonders', 'BUILDING_KILWA_KISIWANI', 1, 900 
FROM Types WHERE Type = 'BUILDING_KILWA_KISIWANI';

-- New Frontier
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'PericlesWonders', 'BUILDING_CHANCERY', 1, 900 
FROM Types WHERE Type = 'BUILDING_CHANCERY';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'PericlesWonders', 'BUILDING_CONSULATE', 1, 900 
FROM Types WHERE Type = 'BUILDING_CONSULATE';



UPDATE AiFavoredItems SET Value = 450 WHERE ListType = 'PericlesEnvoys' AND Item = 'PSEUDOYIELD_INFLUENCE'; -- def 30, 210










-- TOMYRIS / SCYTHIA

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TOMYRIS', 'TRAIT_LEADER_RH_CAV');

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TOMYRIS', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');

UPDATE AiFavoredItems SET Value = 27 WHERE ListType = 'TomyrisiUnitBuilds' AND Item = 'PROMOTION_CLASS_LIGHT_CAVALRY'; -- def 1 lol

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('ScythiaBuildings'),
('ScythiaYields'),
('ScythiaPseudoYields'),
('ScythiaUnits');
--('ScythiaSettlement');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('ScythiaBuildings', 'TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'Buildings'),
('ScythiaYields', 'TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'Yields'),
('ScythiaPseudoYields', 'TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'PseudoYields'),
('ScythiaUnits', 'TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'Units');
--('ScythiaSettlement',   'TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'PlotEvaluations');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TomyrisDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 	1, 0), -- Friendlyish
('TomyrisDiplomacy', 'DIPLOACTION_DIPLOMATIC_DELEGATION', 	1, 0),
('TomyrisDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 		1, 0),
('TomyrisDiplomacy', 'DIPLOACTION_ALLIANCE', 			1, 0),

('ScythiaYields', 'YIELD_PRODUCTION', 							1, 10),
('ScythiaYields', 'YIELD_FOOD', 								1, 33),

('ScythiaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 		1, 10), -- pvs 15
('ScythiaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 			1, 8),

('TomyrisiUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, 15), -- none at all at 0, 6 -- Doesn't build enough to complement cav units
('TomyrisiUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 4),

('ScythiaBuildings', 'BUILDING_STABLE', 				1, 100),
('ScythiaBuildings', 'BUILDING_TEMPLE_ARTEMIS', 		1, 100); -- Horses spawn bias (and settle preference)

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ScythiaUnits', 'UNIT_SCYTHIAN_HORSE_ARCHER', 	1, 500); -- pvs 0, 20, 50, 100, 300




DELETE FROM AiFavoredItems WHERE ListType = 'TomyrisDiplomacy'   AND Item = 'DIPLOACTION_DECLARE_SURPRISE_WAR'; -- f false

--<Row ListType="CavalryLoverCitySettlement" Item="Specific Resource" Favored="true" Value="12" StringVal="RESOURCE_HORSES"/>

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('CavalryLoverCitySettlement', 'Coastal', 0, 			-4, 	NULL, 				'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('CavalryLoverCitySettlement', 'Specific Resource', 0, 4, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('CavalryLoverCitySettlement', 'Inner Ring Yield', 0, 1, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'); -- def 1
-- Horses def 12 (and favoured true)
