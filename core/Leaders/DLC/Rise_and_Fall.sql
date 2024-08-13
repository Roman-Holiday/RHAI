
-- AUTHOR: ROMANHOLIDAY

-- Robert the Bruce / Scotland

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
--('RobertPseudoYields'),
('RobertDiplomacy'),
('RobertYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RobertYields', 'TRAIT_LEADER_BANNOCKBURN', 'Yields'),
('RobertDiplomacy',	'TRAIT_LEADER_BANNOCKBURN',	'DiplomaticActions');
--('RobertPseudoYields', 'TRAIT_LEADER_BANNOCKBURN', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('RobertYields', 'YIELD_GOLD', 1, 3),
('RobertYields', 'YIELD_PRODUCTION', 1, 30),
('RobertYields', 'YIELD_SCIENCE', 	 1, 20),
--('RobertYields', 'YIELD_CULTURE', 1, -1),
('RobertYields', 'YIELD_FOOD', 1, 40), -- pvs -1
('RobertYields', 'YIELD_FAITH', 1, -8),
('RobertYields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 950),
('RobertYields', 'YIELD_RH_HAPPINESS_COMP', 	1, 950),

('RobertYields', 'YIELD_RH_DEMOCRACY', 1, 550), -- Happiness, espically Digital Democracy
('RobertYields', 'YIELD_RH_COMMUNISM', 0, -50),

('ScottishEnlightnmentDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX', 1, 10),
('ScottishEnlightnmentDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 1, 10),

('RobertWonders', 'BUILDING_GOLDEN_GATE_BRIDGE', 1, 0), -- +3 Amenities
('RobertWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 9000),

('RobertWonders', 'BUILDING_ARENA', 1, 1000),
('RobertWonders', 'BUILDING_ZOO', 1, 1000),
('RobertWonders', 'BUILDING_STADIUM', 1, 1000),

('RobertWonders', 'BUILDING_GOV_TALL', 1, 1000),
('RobertWonders', 'BUILDING_GOV_WIDE', 0, 0),
('RobertWonders', 'BUILDING_GOV_CONQUEST', 0, 0),

('RobertWonders', 'BUILDING_AQUARIUM', 1, 1000),
('RobertWonders', 'BUILDING_FERRIS_WHEEL', 1, 1000),
('RobertWonders', 'BUILDING_AQUATICS_CENTER', 1, 1000),
('RobertWonders', 'BUILDING_SHOPPING_MALL', 1, 1000), -- +1 Amenity

('RobertCivics', 'CIVIC_PROFESSIONAL_SPORTS', 1, 0), -- BUILDING_ESTADIO_DO_MARACANA +2 Amenities / 6 Culture in all cities
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_DISTRICT', 1, 15), -- Extra engineer / scientist points
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_GOVERNOR', 1, 30), -- Audience

('ScottishEnlightnmentBiases', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 20), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_GPP_ENGINEER', 1, 20), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_GPP_PROPHET', 0, -20), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_GPP_GENERAL', 0, -12),
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 75), -- pvs 20
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_IMPROVEMENT', 1, 15), -- Luxuries and Golf Course
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_WONDER', 1, 40), -- Happiness
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_ENVIRONMENT', 1, 25), 

('ScottishEnlightnmentBiases', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 40), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -5), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 2), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_CITY_BASE', 1, -35), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 120), -- Doesn't attack city states
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 20); -- pvs 12


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RobertDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('RobertDiplomacy', 'DIPLOACTION_DECLARE_LIBERATION_WAR', 1, 80),
('RobertDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 0, 0),
('RobertDiplomacy', 'DIPLOACTION_JOINT_WAR', 1, 0),
('RobertDiplomacy', 'DIPLOACTION_THIRD_PARTY_WAR', 1, 0),
('RobertDiplomacy', 'DIPLOACTION_DECLARE_RECONQUEST_WAR', 1, 60),
('RobertDiplomacy', 'DIPLOACTION_ALLIANCE_RESEARCH', 1, 40);

UPDATE AiFavoredItems SET Value = 1000 WHERE ListType = 'ScottishEnlightnmentBiases' AND Item = 'PSEUDOYIELD_HAPPINESS'; -- def 100, pvs 600, 700

/*
		<Row ListType="ScottishEnlightnmentBiases" Item="PSEUDOYIELD_HAPPINESS" Value="100"/>
		<Row ListType="ScottishEnlightnmentDistricts" Item="DISTRICT_CAMPUS" Favored="true"/>
		<Row ListType="ScottishEnlightnmentDistricts" Item="DISTRICT_INDUSTRIAL_ZONE" Favored="true"/>
*/


-- Todo add luxury settling preference

--Defs:
/*
<Row ListType="RobertWonders" Item="BUILDING_COLOSSEUM" Favored="true"/>
<Row ListType="RobertWonders" Item="BUILDING_ESTADIO_DO_MARACANA" Favored="true"/>
<Row ListType="RobertWonders" Item="BUILDING_TEMPLE_ARTEMIS" Favored="true"/>
<Row ListType="RobertWonders" Item="BUILDING_ALHAMBRA" Favored="true"/>
<Row ListType="RobertCivics" Item="CIVIC_GAMES_RECREATION" Favored="true"/>
<Row ListType="RobertCivics" Item="CIVIC_DEFENSIVE_TACTICS" Favored="true"/>
<Row ListType="RobertCivics" Item="CIVIC_REFORMED_CHURCH" Favored="true"/>
<Row ListType="RobertCivics" Item="CIVIC_GLOBALIZATION" Favored="true"/>
<Row ListType="RobertTechs" Item="TECH_WRITING" Favored="true"/>
<Row ListType="RobertTechs" Item="TECH_APPRENTICESHIP" Favored="true"/>
<Row ListType="RobertTechs" Item="TECH_RIFLING" Favored="true"/>
<Row ListType="RobertTechs" Item="TECH_FLIGHT" Favored="true"/>

<Row ListType="ScottishEnlightnmentBiases" Item="PSEUDOYIELD_HAPPINESS" Value="100"/>
<Row ListType="ScottishEnlightnmentDistricts" Item="DISTRICT_CAMPUS" Favored="true"/>
<Row ListType="ScottishEnlightnmentDistricts" Item="DISTRICT_INDUSTRIAL_ZONE" Favored="true"/>
*/


-- SEONDEOK + KOREA

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
	--	('LEADER_SEONDEOK',				'AGENDA_DARWINIST',				20);

/*
		<Row>
			<ModifierId>DIPLOMATIC_QUARTER_AWARD_ONE_INFLUENCE_TOKEN</ModifierId>
			<ModifierType>MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN</ModifierType>
			<SubjectRequirementSetId>DISTRICT_IS_ADJACENT_TO_CITY_CENTER</SubjectRequirementSetId>
		</Row>
*/

--DISTRICT_IS_ADJACENT_TO_CITY_CENTER




INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	
 -- Districts placed after SEOWON
('DISTRICT_SEOWON', 						'Rh_District_Seowon_Negative'),
('DISTRICT_THEATER', 						'Rh_District_Seowon_Negative'),
('DISTRICT_ENTERTAINMENT_COMPLEX', 			'Rh_District_Seowon_Negative'),
('DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 	'Rh_District_Seowon_Negative'),
('DISTRICT_INDUSTRIAL_ZONE', 				'Rh_District_Seowon_Negative'),
('DISTRICT_COMMERCIAL_HUB', 				'Rh_District_Seowon_Negative'),
('DISTRICT_HOLY_SITE', 						'Rh_District_Seowon_Negative'),
('DISTRICT_SPACEPORT', 						'Rh_District_Seowon_Negative'),
('DISTRICT_NEIGHBORHOOD', 					'Rh_District_Seowon_Negative'),
('DISTRICT_ENCAMPMENT', 					'Rh_District_Seowon_Negative'),
('DISTRICT_HARBOR', 						'Rh_District_Seowon_Negative'),
('DISTRICT_AERODROME', 						'Rh_District_Seowon_Negative');

-- Excludes Gov And Diplo


INSERT OR IGNORE INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, PrereqTech, AdjacentDistrict) VALUES	
-- Don't Place by SEOWON
('Rh_District_Seowon_Negative',	 'LOC_DISTRICT_RH_AI_SEOWON_NEGATIVE', 'YIELD_RH_PLACEMENT', -3, 1, 'TECHNOLOGY_RH_AI_MAIN', 'DISTRICT_SEOWON'); -- pvs -1, too high and AI will place by city center without preferences


-- Farms and Mines Adj


INSERT OR IGNORE INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES	
('DISTRICT_SEOWON', 	'Rh_Gov_Grass_Mountain'), -- -1 Per 2 Mountains
('DISTRICT_SEOWON', 	'Rh_Gov_Plains_Mountain'),
('DISTRICT_SEOWON', 	'Rh_Gov_Tundra_Mountain'),
('DISTRICT_SEOWON', 	'Rh_Gov_Desert_Mountain'),

('DISTRICT_SEOWON', 	'Rh_Seowon_City_Centre_Negative'), -- -2 City Centre

('DISTRICT_SEOWON', 	'Rh_Seowon_Plains_Hills'),
('DISTRICT_SEOWON', 	'Rh_Seowon_Plains'),
('DISTRICT_SEOWON', 	'Rh_Seowon_Grass_Hills'),
('DISTRICT_SEOWON', 	'Rh_Seowon_Grass'),
('DISTRICT_SEOWON', 	'Rh_Seowon_Coast');


INSERT INTO TraitModifiers    (TraitType,		ModifierId) VALUES	
		('TRAIT_CIVILIZATION_DISTRICT_SEOWON',		'RH_KOREA_SEOWON_FARM'),
		('TRAIT_CIVILIZATION_DISTRICT_SEOWON',		'RH_KOREA_SEOWON_MINE');

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_KOREA_SEOWON_FARM',				'MODIFIER_PLAYER_CITIES_IMPROVEMENT_ADJACENCY',	'PLAYER_IS_AI'),
		('RH_KOREA_SEOWON_MINE',				'MODIFIER_PLAYER_CITIES_IMPROVEMENT_ADJACENCY',	'PLAYER_IS_AI');	


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_KOREA_SEOWON_FARM',		'DistrictType', 			'DISTRICT_SEOWON'),
		('RH_KOREA_SEOWON_FARM',		'YieldType', 				'YIELD_RH_PLACEMENT'), 
		('RH_KOREA_SEOWON_FARM',		'ImprovementType', 			'IMPROVEMENT_FARM'), 
		('RH_KOREA_SEOWON_FARM',		'Amount', 						1), 
		('RH_KOREA_SEOWON_FARM',		'Description', 				'LOC_DISTRICT_RHAI_KOREA_PLACEMENT');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_KOREA_SEOWON_MINE',		'DistrictType', 			'DISTRICT_SEOWON'),
		('RH_KOREA_SEOWON_MINE',		'YieldType', 				'YIELD_RH_PLACEMENT'), 
		('RH_KOREA_SEOWON_MINE',		'ImprovementType', 			'IMPROVEMENT_MINE'), 
		('RH_KOREA_SEOWON_MINE',		'Amount', 						1), 
		('RH_KOREA_SEOWON_MINE',		'Description', 				'LOC_DISTRICT_RHAI_KOREA_PLACEMENT');



INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SEONDEOK', 'TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('KoreaDistricts'),
('KoreaYields2'),
('KoreaImprovements'),
('KoreaPseudoYields'),
('KoreaBuildings'),
('KoreaSettlement'),
('KoreaSavings'),

('SeondeokPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KoreaDistricts',       'TRAIT_CIVILIZATION_DISTRICT_SEOWON', 'Districts'),
('KoreaYields2',       'TRAIT_CIVILIZATION_DISTRICT_SEOWON', 'Yields'),
('KoreaImprovements',		'TRAIT_CIVILIZATION_DISTRICT_SEOWON',		'Improvements'),
('KoreaPseudoYields', 'TRAIT_CIVILIZATION_DISTRICT_SEOWON', 'PseudoYields'),
('KoreaBuildings', 'TRAIT_CIVILIZATION_DISTRICT_SEOWON', 'Buildings'),
('KoreaSettlement', 'TRAIT_CIVILIZATION_DISTRICT_SEOWON', 'PlotEvaluations'),

('KoreaSavings', 'TRAIT_CIVILIZATION_DISTRICT_SEOWON', 'SavingTypes'),

('SeondeokPseudoYields', 'TRAIT_LEADER_HWARANG', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('KoreaYields', 'YIELD_SCIENCE', 1, 8), -- Korea Already have a science Yield of 50 lol
('KoreaDistricts', 'DISTRICT_SEOWON', 1, 60),
('KoreaDistricts', 'DISTRICT_THEATER', 1, 0), -- Test

('KoreaDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX', 0, 0),

('KoreaPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 60),
('KoreaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0, -900),

('KoreaPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 75),
('KoreaPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, -50), -- Chop Quarries / Forest
('KoreaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 100), -- Campus adjacency, pvs 22, 30

('KoreaPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 45),

('KoreaYields2', 'YIELD_SCIENCE', 1, 40), -- already exists at 50
('KoreaYields2', 'YIELD_CULTURE', 1, 35), -- New

('KoreaYields2', 'YIELD_FAITH', 0, -900),
('KoreaYields2', 'YIELD_RH_R_GODDESS', 0, -900),

--('KoreaYields2', 'YIELD_RH_MAGNUS', 1, -900),

--('KoreaYields2', 'YIELD_FOOD', 		1, 10), -- Magnus / Expand
('KoreaYields2', 'YIELD_RH_COMMUNISM', 1, 140),
('KoreaYields2', 'YIELD_RH_DEMOCRACY', 1, 100),

--('SeondeokPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 0, -2),
('SeondeokPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 15),
('SeondeokPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 175); -- Bonusues from governers (base 2)

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('KoreaBuildings', 'BUILDING_MONUMENT', 	1, 100), -- Early Tiles
('KoreaBuildings', 'BUILDING_RUHR_VALLEY', 1, 90); -- normally has lots of mines


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('KoreaSavings', 'SAVING_GREAT_PEOPLE', 								 0), -- def 1
--('KoreaSavings', 'SAVING_UNITS', 										 1),
('KoreaSavings', 'SAVING_PLOTS', 										-1),
('KoreaSavings', 'SAVING_SLUSH_FUND', 								 	 1); 


/*
UPDATE AiFavoredItems SET Value = 1 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_GREAT_PEOPLE';
UPDATE AiFavoredItems SET Value = 3 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_PLOTS';
UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_UNITS';
UPDATE AiFavoredItems SET Value = 2 WHERE ListType = 'DefaultSavings' AND Item = 'SAVING_SLUSH_FUND';
*/


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KoreaImprovements',		'IMPROVEMENT_MINE',		1,		60), -- For campus (+1 science)
('KoreaImprovements',		'IMPROVEMENT_QUARRY',	0,		-10),
('KoreaImprovements',		'IMPROVEMENT_FARM',		1,		50); -- +1 food

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('KoreaSettlement', 'Inner Ring Yield', 		0, 1, 'YIELD_PRODUCTION', 			'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- Hills
('KoreaSettlement', 'Total Yield', 			0, 1, 'YIELD_PRODUCTION', 			'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- Hills

('KoreaSettlement', 'Coastal', 					0, -1, NULL,						'LOC_SETTLEMENT_RECOMMENDATION_COAST'),

('KoreaSettlement', 'Resource Class', 			0, 1, 'RESOURCECLASS_BONUS',     'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('KoreaSettlement', 'Specific Resource', 		    0, 1, 'RESOURCE_IRON', 				'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'), 

('KoreaSettlement', 'Specific Terrain', 			0, 5, 'TERRAIN_GRASS_HILLS',							 NULL),
('KoreaSettlement', 'Specific Terrain', 			0, 5, 'TERRAIN_PLAINS_HILLS', 							 NULL),
('KoreaSettlement', 'Specific Terrain', 			0, 1, 'TERRAIN_TUNDRA_HILLS',							 NULL);


-- SHAKA of the ZULU

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SHAKA', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SHAKA', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SHAKA', 'TRAIT_LEADER_MAD_EXPANSIONIST');


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('ShakaSettlement'),
('ShakaYields'),
('ShakaDistricts'),
('ShakaPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('ShakaSettlement', 'TRAIT_LEADER_AMABUTHO', 'PlotEvaluations'),
('ShakaPseudoYields', 'TRAIT_LEADER_AMABUTHO', 'Yields'),
('ShakaDistricts', 'TRAIT_LEADER_AMABUTHO', 'Districts'),
('ShakaPseudoYields', 'TRAIT_LEADER_AMABUTHO', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ShakaDistricts', 'DISTRICT_IKANDA', 		1, 90),
('ShakaDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX', 		0, 0),

('ShakaSettlement', 'Nearest Friendly City', 0, 2), -- Extra Loyalty from Garrisoned Unit
('ShakaYields', 'YIELD_CULTURE',       		 1, 50), -- pvs 12, 13, 40
--('ShakaYields', 'YIELD_SCIENCE',       	 1, 3), -- only built campus'
('ShakaYields', 'YIELD_GOLD',       		 0, -5),
('ShakaYields', 'YIELD_FOOD',       		 1, -15),
--('ShakaYields', 'YIELD_FAITH',       		 0, -8),
('ShakaYields', 'YIELD_PRODUCTION',      	 1, 10),

('ShakaYields', 'YIELD_RH_CITY_CENTRE',      1, 50),

('ShakaWonders', 'BUILDING_MONUMENT',        1, 100),

('ShakaCivics', 'CIVIC_MILITARY_TRAINING',       1, 0), -- Rush
('ShakaCivics', 'CIVIC_DEFENSIVE_TACTICS',       1, 0),
('ShakaCivics', 'CIVIC_GAMES_RECREATION',        1, 0),
('ShakaCivics', 'CIVIC_DRAMA_POETRY',      		 1, 0), -- Culture
('ShakaCivics', 'CIVIC_MYSTICISM',       		0, 0),

('ShakaCivics', 'CIVIC_THE_ENLIGHTENMENT',       	1, 0), -- Rush2
--('ShakaCivics', 'CIVIC_DIPLOMATIC_SERVICE',       	1, 0),

('ShakaCivics', 'CIVIC_HUMANISM',       			0, 0),
('ShakaCivics', 'CIVIC_CIVIL_SERVICE',       		0, 0),
('ShakaCivics', 'CIVIC_GUILDS',       				0, 0),
('ShakaCivics', 'CIVIC_RECORDED_HISTORY',       	0, 0),
('ShakaCivics', 'CIVIC_MEDIEVAL_FAIRES',       		0, 0),
('ShakaCivics', 'CIVIC_THEOLOGY',       			0, 0),

('ShakaCivics', 'CIVIC_NAVAL_TRADITION',       				0, 0),

('ShakaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',       1, 10),
('ShakaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1,-20),
('ShakaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -18),
--('ShakaPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT',   1, 15),
('ShakaPseudoYields', 'PSEUDOYIELD_CITY_BASE',            1, 40),
('ShakaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -20),

('ShakaPseudoYields', 'PSEUDOYIELD_GOVERNOR', 0, -85), -- Wrong Civic Valuation
('ShakaPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 50), -- Civic Valuation, pvs 15

('ShakaPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 20), -- pvs 10
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 10),
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, -8),
--('ShakaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 9),
('ShakaPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',        1, -4),
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, -12),
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1,  45); -- Ikanda, pvs 35

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ShakaWonders', 'BUILDING_STATUE_OF_ZEUS', 1, 900 -- Burst of Science
FROM Types WHERE Type = 'BUILDING_STATUE_OF_ZEUS';


-- LAUTARO / MAPUCHE

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('LautaroPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('LautaroPseudoYields', 'TRAIT_LEADER_LAUTARO_ABILITY', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('LautaroPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 48),
--('LautaroPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -15),
('LautaroPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 20), -- chemamull
('LautaroPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 20),
('LautaroPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 10),
('LautaroPseudoYields', 'PSEUDOYIELD_WONDER', 1, 30), -- More likely to get a golden age
('LautaroPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 7), -- Exploration for golden age
('LautaroPseudoYields', 'PSEUDOYIELD_GOLDENAGE_POINT', 1, 40),
('LautaroPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 175), -- Gets additonal benefits from them -- +4 loyalty / 9 tiles -- base 2.2
('LautaroPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 10);

INSERT INTO TraitModifiers    (TraitType,						ModifierId) VALUES	
		('TRAIT_LEADER_LAUTARO_ABILITY',		'MODIFIER_RH_AI_ELEANOR_PREFERENCE'),
		('TRAIT_LEADER_LAUTARO_ABILITY',		'MODIFIER_RH_AI_ELN_GOV_ENC');


-- Aggressive Military
INSERT OR REPLACE INTO LeaderTraits (LeaderType, TraitType) VALUES ('LEADER_LAUTARO', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');


INSERT OR REPLACE INTO LeaderTraits (LeaderType, TraitType) VALUES ('LEADER_POUNDMAKER', 'TRAIT_LEADER_RH_TRADE');


-- POUNDMAKER / CREE

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('PoundmakerImprovements'),
('PoundmakerYields'),
('PoundmakerPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PoundmakerImprovements',       'TRAIT_LEADER_ALLIANCE_AND_TRADE', 'Improvements'),
('PoundmakerYields',       'TRAIT_LEADER_ALLIANCE_AND_TRADE', 'Yields'),
('PoundmakerPseudoYields', 'TRAIT_LEADER_ALLIANCE_AND_TRADE', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('PoundmakerYields', 'YIELD_SCIENCE', -5),
('PoundmakerYields', 'YIELD_CULTURE', -5);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PoundmakerImprovements', 'IMPROVEMENT_MEKEWAP', 1, 90),
('PoundmakerImprovements', 'IMPROVEMENT_CAMP', 1, 0),
('PoundmakerImprovements', 'IMPROVEMENT_PASTURE', 1, 0), -- Camp, Pasture Priority 

('PoundmakerYields', 'YIELD_FOOD', 1, 50), -- Internal Trade
--('PoundmakerYields', 'YIELD_GOLD', 1, 10), -- Trade Routes, -- RH trade trait
('PoundmakerYields', 'YIELD_FAITH', 0, -15),
('PoundmakerYields', 'YIELD_RH_MAGNUS', 1, 700),

('PoundmakerTechs', 'TECH_CURRENCY', 1, 90),
('PoundmakerTechs', 'TECH_CELESTIAL_NAVIGATION', 1, 90),
('PoundmakerTechs', 'TECH_WRITING', 1, 90), -- For Currency
('PoundmakerTechs', 'TECH_ASTROLOGY', 0, 0), -- Rushes it for some reason

('PoundmakerCivics', 'CIVIC_FOREIGN_TRADE', 1, 0),
('PoundmakerCivics', 'CIVIC_MERCENARIES', 1, 0),
('PoundmakerPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -40),
('PoundmakerPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, 10), 
('PoundmakerPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 10),
('PoundmakerPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -14),
('PoundmakerPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, -7),
('PoundmakerPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -15),
('PoundmakerPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 20), -- RH trade trait
('PoundmakerPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 15),

('PoundmakerPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -12),

('PoundmakerPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, -15), -- Fewer holy sites?
('PoundmakerPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 25), -- Magnus
('PoundmakerPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, -20),

('PoundmakerPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 40),
('PoundmakerPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 20),
('PoundmakerPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 30),
('PoundmakerPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 30), -- mekewap, internal trade routes
('PoundmakerPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 15), -- pvs 14 (tries to get as many alliances as possible)
('PoundmakerPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, -15);


-- Special Unit Preference
-- Todo Camp, Pasture and Luxury Settle (Mekemap and Internal Trade Route Ability)


-- GENGHIS_KHAN / MONGOLIA

--INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GENGHIS_KHAN', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
-- Already has it

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GENGHIS_KHAN', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GENGHIS_KHAN', 'TRAIT_LEADER_MAD_EXPANSIONIST');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GENGHIS_KHAN', 'TRAIT_LEADER_ESPIONAGE');

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GENGHIS_KHAN', 'TRAIT_LEADER_RH_CAV');

DELETE FROM AiFavoredItems WHERE ListType = 'GenghisCivics' AND Item = 'CIVIC_DIVINE_RIGHT';

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
	--	('LEADER_GENGHIS_KHAN',				'AGENDA_DARWINIST',				35);



INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
	--	('TRAIT_CIVILIZATION_BUILDING_ORDU',		'MODIFIER_RH_AI_DIS_SPY_IND'),
	--	('TRAIT_CIVILIZATION_BUILDING_ORDU',		'MODIFIER_RH_AI_DIS_SPY_MONGOLIA_SCIENCE'),
		('TRAIT_CIVILIZATION_BUILDING_ORDU',		'MODIFIER_RH_AI_EXT_DIPLO_SPY_MONGOLIA'),
		('TRAIT_CIVILIZATION_BUILDING_ORDU',		'MODIFIER_RH_AI_EXT_UNIT_SPY_MONGOLIA');


INSERT OR IGNORE INTO Modifiers
		(ModifierId,					ModifierType,					SubjectRequirementSetId) VALUES	
		('MODIFIER_RH_AI_DIS_SPY_IND',	'MODIFIER_ALL_UNITS_ADJUST_SPYING_EFFICIENCY',		'PLAYER_IS_AI'),
		('MODIFIER_RH_AI_DIS_SPY_MONGOLIA_SCIENCE',	'MODIFIER_ALL_UNITS_ADJUST_SPYING_EFFICIENCY',		'PLAYER_IS_AI');
		
INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		('MODIFIER_RH_AI_DIS_SPY_IND',								'Amount',				-1), -- pvs -100
		('MODIFIER_RH_AI_DIS_SPY_IND',								'OperationType',		'UNITOPERATION_SPY_SABOTAGE_PRODUCTION'),
		
		('MODIFIER_RH_AI_DIS_SPY_MONGOLIA_SCIENCE',								'Amount',				-1),
		('MODIFIER_RH_AI_DIS_SPY_MONGOLIA_SCIENCE',								'OperationType',		'UNITOPERATION_SPY_STEAL_TECH_BOOST');



INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_MID_GAME_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_MID_GAME_REQ_S', 'REQUIRES_RH_HAS_CIVIC_URBANIZATION'),
		('RH_MID_GAME_REQ_S', 'REQUIRES_PLAYER_IS_AI');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_URBANIZATION', 		'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_URBANIZATION',			'CivicType',	'CIVIC_URBANIZATION');



INSERT OR IGNORE INTO Modifiers
		(ModifierId,					ModifierType,					OwnerRequirementSetId) VALUES	
		('MODIFIER_RH_AI_EXT_UNIT_SPY_MONGOLIA',				'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',		'RH_MID_GAME_REQ_S');


INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		('MODIFIER_RH_AI_EXT_UNIT_SPY_MONGOLIA',								'UnitType',				'UNIT_SPY'),
		('MODIFIER_RH_AI_EXT_UNIT_SPY_MONGOLIA',								'Amount',					1),
		('MODIFIER_RH_AI_EXT_UNIT_SPY_MONGOLIA',								'AllowUniqueOverride',		0);



INSERT OR IGNORE INTO Modifiers
		(ModifierId,					ModifierType,					SubjectRequirementSetId) VALUES	
		('MODIFIER_RH_AI_EXT_DIPLO_SPY_MONGOLIA',				'MODIFIER_PLAYER_ADD_DIPLO_VISIBILITY',		'RH_MID_GAME_REQ_S');


INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		('MODIFIER_RH_AI_EXT_DIPLO_SPY_MONGOLIA',								'Amount',				1),
		('MODIFIER_RH_AI_EXT_DIPLO_SPY_MONGOLIA',								'Source',			'SOURCE_TRADING_POST_TRAIT'); -- pvs Source_Spy
	--	('MODIFIER_RH_AI_EXT_DIPLO_SPY',								'SourceType',		'DIPLO_SOURCE_FEMALE_ONLY');
		



/*
		<Row ListType="GenghisCivics" Item="CIVIC_FOREIGN_TRADE" Favored="true"/>
		<Row ListType="GenghisCivics" Item="CIVIC_DIVINE_RIGHT" Favored="true"/>
		<Row ListType="GenghisTechs" Item="TECH_STIRRUPS" Favored="true"/>
		<Row ListType="GenghisTechs" Item="TECH_PRINTING" Favored="true"/>
		<Row ListType="GenghisTechs" Item="TECH_HORSEBACK_RIDING" Favored="true"/>
		<Row ListType="GenghisTechs" Item="TECH_BRONZE_WORKING" Favored="true"/>
		<Row ListType="GenghisTechs" Item="TECH_SALING" Favored="false"/>
		<Row ListType="GenghisTechs" Item="TECH_CELESTIAL_NAVIGATION" Favored="false"/>
		<Row ListType="GenghisTechs" Item="TECH_SHIPBUILDING" Favored="false"/>
*/


REPLACE INTO AiListTypes (ListType) VALUES
('GenghisPseudoYields'),
('GenghisYields'),

('MongoliaYields'),
('MongoliaPseudoYields'),
('MongoliaCivics'),
('MongoliaDiplomacy'),
('MongoliaUnits'),
('MongoliaBuildings');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GenghisYields', 'TRAIT_LEADER_GENGHIS_KHAN_ABILITY', 'Yields'),
('GenghisPseudoYields', 'TRAIT_LEADER_GENGHIS_KHAN_ABILITY', 'PseudoYields'),

('MongoliaYields', 'TRAIT_CIVILIZATION_BUILDING_ORDU', 'Yields'),
('MongoliaPseudoYields', 'TRAIT_CIVILIZATION_BUILDING_ORDU', 'PseudoYields'),
('MongoliaCivics', 	'TRAIT_CIVILIZATION_BUILDING_ORDU', 'Civics'),
('MongoliaDiplomacy', 	'TRAIT_CIVILIZATION_BUILDING_ORDU', 'DiplomaticActions'),
('MongoliaUnits', 	'TRAIT_CIVILIZATION_BUILDING_ORDU', 'Units'),
('MongoliaBuildings', 'TRAIT_CIVILIZATION_BUILDING_ORDU', 'Buildings'); -- for both MONGOLIAs

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MongoliaYields', 'YIELD_GOLD', 1, 30), -- Trade Routes, 12
('MongoliaYields', 'YIELD_FOOD', 0, -20),
('MongoliaYields', 'YIELD_SCIENCE', 1, 2),
('MongoliaYields', 'YIELD_CULTURE', 1, 10),
('MongoliaYields', 'YIELD_RH_TRADE', 1, 500),
('MongoliaYields', 'YIELD_RH_MILITARY_PRODUCTION', 1, 600),

--('GenghisYields', 'YIELD_CULTURE', 0, -2), -- Needs for Spys
('GenghisYields', 'YIELD_FAITH', 0, -7), -- already has low religious preference

('GenghisYields', 'YIELD_RH_MILITARY_PRODUCTION', 1, 350),

('MongoliaCivics', 'CIVIC_DIPLOMATIC_SERVICE', 1, 100), -- Unlocks Spys

('MongoliaDiplomacy', 'DIPLOACTION_DIPLOMATIC_DELEGATION', 1, 80),
('MongoliaDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 50),
('MongoliaDiplomacy', 'DIPLOACTION_JOINT_WAR', 1, 0),
('MongoliaDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0),
('MongoliaDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 1, 0),

('GenghisPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',       1, 22), -- Loads of Units -- pvs 10
('GenghisPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 0, -18), -- Not really a ship person lol
('GenghisPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT',   1, 5),
('GenghisPseudoYields', 'PSEUDOYIELD_CITY_BASE',            1, 70), -- Even more aggressive
('GenghisPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -20), -- Doesn't care
('GenghisPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',        1, -4), 
('GenghisPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',        1, 10), -- pvs 15
('GenghisPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',        1, 5), -- pvs 8

('GenghisPseudoYields', 'PSEUDOYIELD_GPP_WRITER',       0, -16),
('GenghisPseudoYields', 'PSEUDOYIELD_GPP_ARTIST',       0, -15),
('GenghisPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',      0, -50),
('GenghisPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 		0, -12),

('MongoliaUnits', 	'UNIT_MONGOLIAN_KESHIG', 1, 15),

('MongoliaBuildings', 'BUILDING_MARKET', 1, 900),
('MongoliaBuildings', 'BUILDING_BARRACKS', 0, 0), -- Ordu
('MongoliaBuildings', 'BUILDING_ORDU', 1, 900),
('MongoliaBuildings', 'BUILDING_TEMPLE_ARTEMIS', 1, 100), -- Normally spawns by lots of pastures

('MongoliaPseudoYields', 'PSEUDOYIELD_HAPPINESS', 0, -25),
('MongoliaPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 100), -- Combat Strength
('MongoliaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 150),
('MongoliaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 60), -- Trade Routes / Great Merchant Mary Katherine Goddard.

('GenghisPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -18), -- pvs -16
--('GenghisPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 20), -- Vision potentially, pvs 20
('GenghisPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1,  100); -- It's Genghis khan lol / unique building, pvs 50


-- GenghisKhanCavalryLoverList is 'unimplemented'

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_HEAVY_CAVALRY', 1, 17),
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_ANTI_CAVALRY', 0, -10),
--('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_RANGED', 0, -3),
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_SIEGE', 1, 4), -- pvs 5, 9 (9 way too much)
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_SUPPORT', 1, 2), -- pvs 0
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_MELEE', 1, -4), 

('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_LIGHT_CAVALRY', 1, 7);

-- Same for Settlement (implementing it for them)

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CavalryLoverCitySettlement', 'Foreign Continent', 0, 7);
--('CavalryLoverCitySettlement', 'Nearest Friendly City', 0, 1);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('CavalryLoverCitySettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('CavalryLoverCitySettlement', 'Specific Resource', 0, 10, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('CavalryLoverCitySettlement', 'Specific Resource', 1, 11, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('CavalryLoverCitySettlement', 'Specific Resource', 0, 7, 'RESOURCE_URANIUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');


--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_GENGHIS_KHAN';
--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_SULEIMAN';
--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_SULEIMAN_ALT';
UPDATE AiFavoredItems SET Item = 'TECH_SAILING' WHERE Item = 'TECH_SALING'; -- GenghisTechs

-- CHANDRAGUPTA / INDIA
-- not the friendliest guy 

DELETE FROM AiLists WHERE ListType = 'TerritorialWarriorList' AND LeaderType = 'TRAIT_LEADER_ARTHASHASTRA'; -- not used
DELETE FROM AiListTypes WHERE ListType = 'TerritorialWarriorList';

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CHANDRAGUPTA', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CHANDRAGUPTA', 'TRAIT_LEADER_EXPANSIONIST');

REPLACE INTO AiListTypes (ListType) VALUES
('ChandraguptaSettlement'),
('ChandraguptaPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('ChandraguptaSettlement',   'TRAIT_LEADER_ARTHASHASTRA', 'PlotEvaluations'),
('ChandraguptaPseudoYields', 'TRAIT_LEADER_ARTHASHASTRA', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_BASE',       1, 50), 
--('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 50), 
--('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',   1,-10), 
--('ChandraguptaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',     1, 15), 
('ChandraguptaSettlement', 'Foreign Continent', 0, 5), -- norway 20
('ChandraguptaSettlement', 'Coastal', 0, -4),
('ChandraguptaSettlement', 'Nearest Friendly City', 0, 1), -- pvs 3 (didn't settle in cramped spaces)
('ChandraguptaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -10),
('ChandraguptaPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, -14), -- unique from Gandhi
('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -5),
('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 15),
('ChandraguptaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -18); 


-- TAMAR of GEORGIA

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TAMAR', 'TRAIT_LEADER_DEFENSIVE');

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TAMAR', 'TRAIT_LEADER_PURSUE_DIPLOMATIC_VICTORY');


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('TamarYields'),
('TamarPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('TamarYields', 'TRAIT_LEADER_RELIGION_CITY_STATES',		 'Yields'),
('TamarPseudoYields', 'TRAIT_LEADER_RELIGION_CITY_STATES', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TamarTechs', 'TECH_ASTROLOGY', 1, 0), -- get Holy Site first -- 
('TamarTechs', 'TECH_MINING', 1, 0), -- hills bias -- 
('TamarCivics', 'CIVIC_THEOLOGY', 1, 0),

('TamarPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 7),
('TamarPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -18),
('TamarPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 20),
('TamarPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 550), -- Double if send to suz city state -- todo papal primary for first meet convert and IMMEDIATE 2 envoys, 60

('TamarPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 20),

('TamarYields', 'YIELD_RH_MONARCHY', 1, 300), -- Also in Defense Trait
('TamarYields', 'YIELD_RH_UNDER_ATTACK', 1, 25), 
('TamarYields', 'YIELD_FAITH', 			1, 25), 

('ProtectorateWarriorList', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0), 
('ProtectorateWarriorList', 'DIPLOACTION_DECLARE_LIBERATION_WAR', 1, 0);

UPDATE AiFavoredItems SET Item = (SELECT PrereqCivic FROM Governments WHERE GovernmentType = 'GOVERNMENT_MONARCHY')
WHERE ListType = 'TamarCivics' AND Item = 'CIVIC_DIVINE_RIGHT';

-- WILHELMINA / NETHERLANDS

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
--('WilhelminaYields'),
--('WilhelminaPseudoYields'),
('WilhelminaSettlement'),
('DutchImprovements'),
('WilhelminaDistricts');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
--('WilhelminaYields',   'TRAIT_RADIO_ORANJE', 'PseudoYields'), -- already in Agendas
--('WilhelminaPseudoYields',   'TRAIT_RADIO_ORANJE', 'PseudoYields'),
('WilhelminaSettlement',   'TRAIT_AGENDA_BILLIONAIRE', 'PlotEvaluations'),
('DutchImprovements',   'TRAIT_CIVILIZATION_IMPROVEMENT_POLDER', 'Improvements'),
('WilhelminaDistricts',   'TRAIT_AGENDA_BILLIONAIRE', 'Districts');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('WilhelminaYields', 'YIELD_FOOD', 1, 4),
('WilhelminaYields', 'YIELD_SCIENCE', 1, 4), -- Better at science victory than cultural
('WilhelminaYields', 'YIELD_PRODUCTION', 1, 7),

('WilhelminaYields', 'YIELD_RH_R_GODDESS', 1, 20),

--('WilhelminaYields', 'YIELD_GOLD', 1, 7), gold 25 already exists

('DutchImprovements', 'IMPROVEMENT_POLDER', 1, 50),

('WilhelminaDistricts', 'DISTRICT_DAM', 1, 70), -- 50% production 
('WilhelminaDistricts', 'DISTRICT_HARBOR', 1, 70), -- Culture Bomb
('WilhelminaDistricts', 'DISTRICT_CAMPUS', 1, 0),
('WilhelminaDistricts', 'DISTRICT_THEATER', 1, 0),
('WilhelminaDistricts', 'DISTRICT_INDUSTRIAL_ZONE', 1, 0),
('WilhelminaDistricts', 'DISTRICT_ENCAMPMENT', 0, 0),
('WilhelminaDistricts', 'DISTRICT_AQUEDUCT', 1, 0), -- Industrial Zone ADJ

('WilhelminaWonders', 'BUILDING_BIG_BEN', 		1, 0),
('WilhelminaWonders', 'BUILDING_FLOOD_BARRIER', 1, 0), -- 50% Production

('WilhelminaTechs', 'TECH_WRITING', 1, 0), -- Early Op Campus
('WilhelminaTechs', 'TECH_BUTTRESS', 1, 0), -- Gathering Storm Tech, dams
('WilhelminaTechs', 'TECH_COMPUTERS', 1, 0), -- Flood Barrier
('WilhelminaTechs', 'TECH_ENGINEERING', 1, 0), -- Aqueducts

('WilhelminaEmergencyAllianceList', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0), 

('WilhelminaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 30),
('WilhelminaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10),
('WilhelminaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -20),

('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 20),
('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 0, -4),
--('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 30), -- PSEUDOYIELD_UNIT_TRADE 50 already exists
('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 0, -10),
('WilhelminaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 35), -- improve everything
('WilhelminaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 11),
('WilhelminaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -10),
--('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 0, -4),
('WilhelminaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -25),
('WilhelminaPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 10), -- River Bonus
('WilhelminaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 8),
('WilhelminaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 11),
('WilhelminaPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 5);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('WilhelminaSettlement', 'Fresh Water', 0, 10),
('WilhelminaSettlement', 'Coastal',     0, 5);

-- Dam district

INSERT OR REPLACE INTO Types (Type, Kind) VALUES ('PSEUDOYIELD_GOLDENAGE_POINT', 'KIND_PSEUDOYIELD');

UPDATE AiFavoredItems SET Item = 'TECH_SAILING' WHERE Item = 'TECH_SALING'; -- GenghisTechs


--Other




INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);



INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorBuildings', 'BUILDING_STATUE_LIBERTY', 							1, 100), 
('MajorFavorBuildings', 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION', 		1, 900), 
('MajorFavorBuildings', 'BUILDING_KILWA_KISIWANI', 							1, 900); 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('STRATEGY_CANNOT_USE_RELIGION_WONDERS', 'BUILDING_KOTOKU_IN', 							0, -900);




/*
INSERT OR REPLACE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL'),


INSERT OR REPLACE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',		'RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL'),

		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'UnitType',					'UNIT_ANTIAIR_GUN'),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'Amount',					1),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'AllowUniqueOverride',		0),



INSERT OR REPLACE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'REQUIREMENTSET_TEST_ALL'),

		
INSERT OR REPLACE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS'),
		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'REQUIRES_PLAYER_IS_AI'),


		
INSERT OR REPLACE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
*/

/*
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_IMMORTAL_AI', 									'Handicap', 				'DIFFICULTY_IMMORTAL'),
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',						'TechnologyType',			'TECH_LASERS'),
		('RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS',							'TechnologyType',			'TECH_GUIDANCE_SYSTEMS');
	*/