
-- Author RomanHoliday

--------------------------------------------------------------------------------------------------------------------------
-- Agenda Improvements / Reworks 
--------------------------------------------------------------------------------------------------------------------------



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RHHighSciChaos');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RHHighSciChaos',   	'Agendas');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',     					'RHHighSciChaos'),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',     					'RHHighSciChaos'),
('STRATEGY_MODERN_CHANGES_SCIENCE',     						 'RHHighSciChaos'), 
('STRATEGY_ATOMIC_CHANGES_SCIENCE',     						 'RHHighSciChaos'), 
('STRATEGY_INFO_CHANGES_SCIENCE',     							 'RHHighSciChaos');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RHHighSciChaos', 'AGENDA_EXPANSIONIST',   						1, 10),

('RHHighSciChaos', 'AGENDA_TECHNOPHILE',   						1, 15), -- Late Only

('RHHighSciChaos', 'AGENDA_TURTLER',   							1, 10), -- Late Only

('RHHighSciChaos', 'AGENDA_AGENDA_ENJOYS_WAR',   					1, 30); -- Late Only


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ScienceVictoryAgendas', 'AGENDA_ENJOYS_WAR',   					1, 10), -- Late Only
('ScienceVictoryAgendas', 'AGENDA_GREAT_WHITE_FLEET',   					1, 10), -- Any
('ScienceVictoryAgendas', 'AGENDA_AIRPOWER',   								1, 10); -- Late Only


UPDATE AiFavoredItems SET Value = 25 WHERE ListType = 'ScienceVictoryAgendas' AND Item = 'AGENDA_LIBERTARIAN'; -- Def 33



-- DARWINIST ENJOYS WAR Random Agenda - Changes -- Late Era Only

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('DarwinistEnjoysWarDiplomacy'),
('DarwinistEnjoysWarPseudoYields'),
('DarwinistEnjoysWarYields'),
('DarwinistEnjoysWarSettlement');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('DarwinistEnjoysWarDiplomacy',    'TRAIT_AGENDA_ENJOYS_WAR', 			'DiplomaticActions'),
('DarwinistEnjoysWarPseudoYields', 'TRAIT_AGENDA_ENJOYS_WAR', 			'PseudoYields'),
('DarwinistEnjoysWarYields', 		'TRAIT_AGENDA_ENJOYS_WAR', 			'Yields'),
('DarwinistEnjoysWarSettlement',   'TRAIT_AGENDA_ENJOYS_WAR', 			'PlotEvaluations');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DarwinistEnjoysWarYields', 'YIELD_SCIENCE',				 1, 6),
('DarwinistEnjoysWarYields', 'YIELD_RH_FASCISM', 			1, 750),
('DarwinistEnjoysWarYields', 'YIELD_RH_NUCLEAR', 			1, 120),
('DarwinistEnjoysWarYields', 'YIELD_RH_MILITARY_PRODUCTION', 1, 650),
('DarwinistEnjoysWarYields', 'YIELD_RH_MAYHEM', 			1, 850),

('DarwinistEnjoysWarDiplomacy', 'DIPLOACTION_DENOUNCE', 1, 0),
('DarwinistEnjoysWarDiplomacy', 'DIPLOACTION_DEMAND_TRIBUTE', 1, 0),
('DarwinistEnjoysWarDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 1, 0),
('DarwinistEnjoysWarDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0),
('DarwinistEnjoysWarDiplomacy', 'DIPLOACTION_JOINT_WAR', 1, 0),
('DarwinistEnjoysWarDiplomacy', 'DIPLOACTION_THIRD_PARTY_WAR', 1, 0),
('DarwinistEnjoysWarDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 900),
('DarwinistEnjoysWarDiplomacy', 'DIPLOACTION_MAKE_PEACE', 0, 0),
('DarwinistEnjoysWarDiplomacy', 'DIPLOACTION_PROPOSE_PEACE_DEAL', 0, -500),
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 800), -- pvs 100
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -35), -- pvs -25
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -30),
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -100),
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 20),
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 10),
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 20), -- pvs 25
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 37), -- pvs 25
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, 10),
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 0, -60),
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 40), -- pvs 18, 25
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 20), -- pvs 15, 17
('DarwinistEnjoysWarPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 14); -- pvs 12, 11

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DarwinistEnjoysWarSettlement', 'Foreign Continent', 0, 9);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 					TooltipString) VALUES
('DarwinistEnjoysWarSettlement', 'Specific Resource', 0, 10, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('DarwinistEnjoysWarSettlement', 'Specific Resource', 0, 15, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('DarwinistEnjoysWarSettlement', 'Specific Resource', 1, 35, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)


-- 		<Row ListType="DarwinistIgnoreWarmongerValue" Item="PSEUDOYIELD_DIPLOMATIC_BONUS" Value="-100"/>

REPLACE INTO AiListTypes (ListType) VALUES
('DarwinistEnjoysWarUnitBuilds'),
('DarwinistEnjoysWarUnits');

REPLACE INTO AiLists (ListType, AgendaType, System) VALUES
('DarwinistEnjoysWarUnitBuilds',   'TRAIT_AGENDA_ENJOYS_WAR', 'UnitPromotionClasses'),
('DarwinistEnjoysWarUnits', 'TRAIT_AGENDA_ENJOYS_WAR', 'Units');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DarwinistEnjoysWarUnitBuilds', 'PROMOTION_CLASS_SIEGE',         			    1,  5), -- pvs 14, 10, 12
('DarwinistEnjoysWarUnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER',       	 	    1,  30), -- pvs 3, 10, 20
('DarwinistEnjoysWarUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY',      	  	    1,  10), -- pvs 3, 5
('DarwinistEnjoysWarUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY',     	  	    0,  -5),
('DarwinistEnjoysWarUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 				0, -2),
('DarwinistEnjoysWarUnitBuilds', 'PROMOTION_CLASS_RANGED',           		    1,  3); -- pvs 4
--('DarwinistEnjoysWarUnitBuilds', 'PROMOTION_CLASS_MELEE',            0,  1);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DarwinistEnjoysWarUnits',        'UNIT_TANK', 1, 19),
('DarwinistEnjoysWarUnits',        'UNIT_MODERN_ARMOR', 1, 19);



REPLACE INTO AiFavoredItems (ListType, Item, Favored)
SELECT 'DarwinistEnjoysWarDiplomacy', DiplomaticActionType, 1
FROM DiplomaticActions
WHERE UIGroup = 'FORMALWAR';



UPDATE RandomAgendas SET GameLimit = 2 WHERE AgendaType = 'AGENDA_STANDING_ARMY'; -- Def None


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('Standing_Army_Diplomacy'),
('Standing_Army_PseudoYields'),
('Standing_Army_Yields'),
('Standing_Army_Buildings'),
('Standing_Army_Settlement');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('Standing_Army_Diplomacy',    'TRAIT_AGENDA_PREFER_STANDING_ARMY', 			'DiplomaticActions'),
('Standing_Army_PseudoYields', 'TRAIT_AGENDA_PREFER_STANDING_ARMY', 			'PseudoYields'),
('Standing_Army_Yields', 		'TRAIT_AGENDA_PREFER_STANDING_ARMY', 			'Yields'),
('Standing_Army_Buildings', 		'TRAIT_AGENDA_PREFER_STANDING_ARMY', 			'Buildings'),
('Standing_Army_Settlement',   'TRAIT_AGENDA_PREFER_STANDING_ARMY', 			'PlotEvaluations');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Standing_Army_Yields', 		'YIELD_PRODUCTION', 1, 4),
('Standing_Army_Yields', 		'YIELD_GOLD', 		1, 12),
('Standing_Army_Yields', 		'YIELD_RH_MILITARY_PRODUCTION', 1, 750),

('Standing_Army_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 400),
('Standing_Army_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -35), 
('Standing_Army_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -30),

('Standing_Army_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 75),

('Standing_Army_Diplomacy', 'DIPLOACTION_JOINT_WAR', 1, 40);
--('Standing_Army_Diplomacy', 'DIPLOACTION_THIRD_PARTY_WAR', 1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) 
SELECT 'Standing_Army_Buildings', 'BUILDING_APADANA', 0, -50
FROM Types WHERE Type = 'BUILDING_APADANA';



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AirPower_Lover_Techs'),
('AirPower_Lover_Buildings'),
('AirPower_Lover_Improvements'),
('AirPower_Lover_Districts');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('AirPower_Lover_Techs',    	'TRAIT_AGENDA_PREFER_AIRPOWER', 			'Technologies'),
('AirPower_Lover_Improvements',    	'TRAIT_AGENDA_PREFER_AIRPOWER', 		'Improvements'),
('AirPower_Lover_Buildings',    'TRAIT_AGENDA_PREFER_AIRPOWER', 			'Buildings'),
('AirPower_Lover_Districts',    'TRAIT_AGENDA_PREFER_AIRPOWER', 			'Districts');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AirPower_Lover_Improvements', 		'IMPROVEMENT_AIRSTRIP', 			1, 0),
('AirPower_Lover_Improvements', 		'IMPROVEMENT_MISSILE_SILO', 		1, 0),
('AirPower_Lover_Improvements', 		'IMPROVEMENT_MINE', 				1, 0),
('AirPower_Lover_Buildings', 		'BUILDING_AIRPORT', 			1, 0),
('AirPower_Lover_Buildings', 		'BUILDING_HANGAR', 				1, 0),

('AirPower_Lover_Techs', 		'TECH_INDUSTRIALIZATION', 			1, 1000),
('AirPower_Lover_Techs', 		'TECH_STEAM_POWER', 				1, 1000),
('AirPower_Lover_Techs', 		'TECH_FLIGHT', 						1, 1000),
('AirPower_Lover_Techs', 		'TECH_RADIO', 						1, 1000),
('AirPower_Lover_Techs', 		'TECH_ADVANCED_FLIGHT', 			1, 1000),
('AirPower_Lover_Techs', 		'TECH_STEALTH_TECHNOLOGY', 			1, 1000),
('AirPower_Lover_Districts', 		'DISTRICT_AERODROME', 			1, 0);


--<Row AgendaType="AGENDA_GREAT_PERSON_ADVOCATE" AgendaType="LEADER_KRISTINA" PercentageChance="20"/>

-- Wonder OBSESSED -- TRAIT_AGENDA_WONDER_ADVOCATE

UPDATE AiFavoredItems SET Value = '135' WHERE ListType = 'WonderObsessedWonders' AND Item = 'PSEUDOYIELD_WONDER'; -- DefaultValue=25 (and increases by 100 in the industrial era), base 0.6, 110	 

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('WonderObsessedWonders', 		'PSEUDOYIELD_HAPPINESS', 1, 15), -- Theater square adj / colosseum -- more in era strat
('WonderObsessedWonders', 		'PSEUDOYIELD_INFLUENCE', 1, 35); -- combos with BUILDING_APADANA and BUILDING_KILWA_KISIWANI, pvs 15

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('WonderObsessedBuildings'),
('WonderObsessedTechs'),
('WonderObsessedYields'),
('WonderObsessedCivics');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('WonderObsessedCivics', 'TRAIT_AGENDA_WONDER_ADVOCATE', 'Civics'),
('WonderObsessedTechs', 'TRAIT_AGENDA_WONDER_ADVOCATE', 'Technologies'),
('WonderObsessedYields', 'TRAIT_AGENDA_WONDER_ADVOCATE', 'Yields'),
('WonderObsessedBuildings', 'TRAIT_AGENDA_WONDER_ADVOCATE', 'Buildings');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('WonderObsessedTechs', 'TECH_MACHINERY', 1, 100); -- Kilwa

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('WonderObsessedYields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 300), 
('WonderObsessedYields', 'YIELD_RH_WONDER', 1, 400), 
('WonderObsessedYields', 'YIELD_CULTURE', 	1, 25), -- pvs 15

('WonderObsessedBuildings', 'BUILDING_MONUMENT', 1, 20),  -- culture for early game wonders
('WonderObsessedBuildings', 'BUILDING_COLOSSEUM', 1, 900),
('WonderObsessedBuildings', 'BUILDING_RUHR_VALLEY', 1, 0); -- more production for wonders 

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('WonderObsessedCivics', 'CIVIC_DEFENSIVE_TACTICS', 1, 100), -- HALICARNASSUS_MAUSOLEUM
('WonderObsessedCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 1, 0), -- Apadana
('WonderObsessedCivics', 'CIVIC_GAMES_RECREATION', 1, 0); -- BUILDING_COLOSSEUM


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) 
SELECT 'WonderObsessedBuildings', 'BUILDING_APADANA', 1, 900
FROM Types WHERE Type = 'BUILDING_APADANA';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) 
SELECT 'WonderObsessedBuildings', 'BUILDING_TEMPLE_ARTEMIS', 1, 15
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) -- Rise and fall -- only 2 science city states needed for +15% science
SELECT 'WonderObsessedBuildings', 'BUILDING_KILWA_KISIWANI', 1, 200
FROM Types WHERE Type = 'BUILDING_KILWA_KISIWANI';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) -- Engineers -- -- Persia Macadon dlc wonder -- value pvs 200
SELECT 'WonderObsessedBuildings', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 400
FROM Types WHERE Type = 'BUILDING_HALICARNASSUS_MAUSOLEUM';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) -- Rise and fall -- Good for era score from buildings wonders
SELECT 'WonderObsessedBuildings', 'BUILDING_TAJ_MAHAL', 1, 90
FROM Types WHERE Type = 'BUILDING_TAJ_MAHAL';




INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('WonderObsessedDistricts');
INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('WonderObsessedDistricts', 'TRAIT_AGENDA_WONDER_ADVOCATE', 'Districts');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('WonderObsessedDistricts', 'DISTRICT_THEATER', 1, 0); -- wonder adj bonus


-- Culture Lover -- Later Era Only (Cultured)
UPDATE AiFavoredItems SET Value = '25', Favored = '1' WHERE ListType = 'CultureLoverCulturePreference' AND Item = 'YIELD_CULTURE'; -- DefaultValue=20	 Favored=1


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureLoverCulturePreference', 'YIELD_SCIENCE', 1, -2);


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('CultureLoverPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('CultureLoverPseudoYields', 'TRAIT_AGENDA_PREFER_CULTURE', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureLoverPseudoYields', 'PSEUDOYIELD_WONDER', 1, 10),

('CultureLoverPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -6),

('CultureLoverPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 25), -- Doesn't need to be themed
('CultureLoverPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 15),
('CultureLoverPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 15),
('CultureLoverPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 12),


('CultureLoverPseudoYields', 'PSEUDOYIELD_GREATWORK_ARTIFACT', 1, 10),
('CultureLoverPseudoYields', 'PSEUDOYIELD_GREATWORK_LANDSCAPE', 1, 10),
('CultureLoverPseudoYields', 'PSEUDOYIELD_GREATWORK_PORTRAIT', 1, 10),
('CultureLoverPseudoYields', 'PSEUDOYIELD_GREATWORK_SCULPTURE', 1, 10),
('CultureLoverPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 15), -- Doesn't need to be themed 4/8

('CultureLoverPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 45);

-- ('MoneyGrubberGoldPreference', 'YIELD_RH_SOVEREIGNTY_DOUBLE', 				1, 250),


-- AGENDA_TECHNOPHILE (Late Era Only)

-- Science Lover 
-- 		<Row ListType="ScienceLoverSciencePreference" AgendaType="TRAIT_AGENDA_PREFER_SCIENCE" System="Yields"/>

UPDATE AiFavoredItems SET Value = '22', Favored = '1' WHERE ListType = 'ScienceLoverSciencePreference' AND Item = 'YIELD_SCIENCE'; -- DefaultValue=20 Favoured not set

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('ScienceLoverPseudoYields');
INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('ScienceLoverPseudoYields', 'TRAIT_AGENDA_PREFER_SCIENCE', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ScienceLoverSciencePreference', 'YIELD_RH_GE_BUILDING_PRODUCTION_BUFF', 1, 50),

('ScienceLoverPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 35),

('ScienceLoverPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 35);

-- AGENDA_INDUSTRIALIST (Heavy Industry) Any Era


--IndustryLoverIndustryPreference Yield

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
--('IndustryLoverYields'),
('IndustryLoverPseudoYields');
INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES

--('IndustryLoverYields', 'TRAIT_AGENDA_PREFER_INDUSTRY', 'Yields'),
('IndustryLoverPseudoYields', 'TRAIT_AGENDA_PREFER_INDUSTRY', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('IndustryLoverIndustryPreference', 'YIELD_RH_GE_BUILDING_PRODUCTION_BUFF', 1, 175),

('IndustryLoverPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 35),
('IndustryLoverPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 10),
('IndustryLoverPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, -15);




-- City State Ally

--INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
--('IndustryLoverPseudoYields');
--INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
--('IndustryLoverPseudoYields', 'TRAIT_AGENDA_PREFER_INDUSTRY', 'PseudoYields');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CityStateAllyInfluencePreference', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10),
('CityStateAllyInfluencePreference', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 6),
('CityStateAllyInfluencePreference', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 5),
('CityStateAllyInfluencePreference', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 150);

-- ('MoneyGrubberGoldPreference', 'YIELD_RH_SOVEREIGNTY_DOUBLE', 				1, 250),

-- Todo diplomatic quarter buildings further preference
-- Apadana

-- 1/3 Gossip random agenda (xp1)

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('GossipFavoredPseudoYields'),
('GossipFavoredYields');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('GossipFavoredPseudoYields', 'TRAIT_AGENDA_GOSSIP', 'PseudoYields'),
('GossipFavoredYields', 		'TRAIT_AGENDA_GOSSIP', 'Yields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GossipFavoredYields', 'YIELD_RH_MAYHEM', 								1, 150),

('GossipFavoredPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 						1,	 25),
('GossipFavoredPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 					1, 	30),
('GossipFavoredPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 					1,	 10), -- Trade Routes
('GossipFavoredPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 					1,	 10),
('GossipFavoredPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 					1, 	10),
('GossipFavoredPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 				1, 	5),
('GossipFavoredPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',			 1, -10);

-- Todo prefer intelligence agency, naval / land scouts, foreign Continent settlement

-- 2/3 Sycophant(XP1) Impressed by any civilization that earns a Golden Age.

REPLACE INTO AiListTypes (ListType) VALUES
('SycophantPseudoYields');
REPLACE INTO AiLists (ListType, AgendaType, System) VALUES
('SycophantPseudoYields', 'TRAIT_AGENDA_SYCOPHANT', 'PseudoYields');
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('SycophantPseudoYields', 'PSEUDOYIELD_GOLDENAGE_POINT', 1, 25);

-- XP1 3/3 AGENDA_SYMPATHIZER -- Feels bad for those going through Dark Ages.





-- TRAIT_AGENDA_PREFER_HAPPINESS

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES

('FunLovingYields'),
('FunLovingPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('FunLovingYields', 			'TRAIT_AGENDA_PREFER_HAPPINESS', 'Yields'),
('FunLovingPseudoYields', 		'TRAIT_AGENDA_PREFER_HAPPINESS', 'PseudoYields');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('FunLovingPseudoYields', 'PSEUDOYIELD_HAPPINESS', 					1, 45),
('FunLovingPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 				1, 15),

('FunLovingPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 		1, -6),

('FunLovingYields', 'YIELD_RH_HAPPINESS_BUILDING', 				1, 250),
('FunLovingYields', 'YIELD_RH_HAPPINESS_COMP', 					1, 210),
('FunLovingYields', 'YIELD_RH_MAYHEM', 							1, 75),

('FunLovingPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 			1, 	3),
('FunLovingPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',		 1, 5),
('FunLovingPseudoYields', 'PSEUDOYIELD_CITY_BASE', 					1, 	-10),
('FunLovingPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 				1, 	5),
('FunLovingPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 			1, 15);


-- Todo HAPPINESS wonders


-- Faith Lover

UPDATE AiFavoredItems SET Value = '150', Favored = '1' WHERE ListType = 'FaithLoverFaithPreference' AND Item = 'YIELD_FAITH'; -- DefaultValue=20	 Favored=1, base -22, 35, 70

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('FaithLoverYields'),
('FaithLoverPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('FaithLoverYields', 'TRAIT_AGENDA_PREFER_FAITH', 'Yields'),
('FaithLoverPseudoYields', 'TRAIT_AGENDA_PREFER_FAITH', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('FaithLoverYields', 'YIELD_RH_SPREAD_RELIGION', 						1, 		300),
('FaithLoverYields', 'YIELD_RH_R_GODDESS', 								1, 		250),
('FaithLoverYields', 'YIELD_RH_FAITH', 									0, 		-100),

('FaithLoverPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 						1, 		850), -- pvs 100
('FaithLoverPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 					1, 		40),
('FaithLoverPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 			1, 		200);


-- AGENDA POPULAS

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('PreferPopulationBuildings'),
('PreferPopulationYields'),
('PreferPopulationPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('PreferPopulationBuildings', 'TRAIT_AGENDA_PREFER_POPULATION', 'Buildings'),
('PreferPopulationYields', 'TRAIT_AGENDA_PREFER_POPULATION', 'Yields'),
('PreferPopulationPseudoYields', 'TRAIT_AGENDA_PREFER_POPULATION', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PreferPopulationYields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 100),
('PreferPopulationYields', 'YIELD_RH_HAPPINESS_COMP', 	1, 100),
('PreferPopulationYields', 'YIELD_RH_MAGNUS', 			1, 600),

('PreferPopulationYields', 'YIELD_RH_FOOD_EXT', 		1, 275),

('PreferPopulationYields', 'YIELD_GOLD', 1, 10), -- for trade routes
('PreferPopulationYields', 'YIELD_FOOD', 1, 30); -- does already exist?

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PreferPopulationPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 100),
('PreferPopulationPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 40), -- for gov plaza buildings / amenties from gov tall
('PreferPopulationPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 10), -- harbours / lighthouse / trade routes
('PreferPopulationPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 10),
('PreferPopulationPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 25), -- good for food
('PreferPopulationPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 7), -- good for food

('PreferPopulationPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -7),

('PreferPopulationPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 25);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PreferPopulationBuildings', 'BUILDING_HANGING_GARDENS', 1, 100),
('PreferPopulationBuildings', 'BUILDING_GOV_TALL', 1, 150),
('PreferPopulationBuildings', 'BUILDING_GOV_WIDE', 0, 0),
('PreferPopulationBuildings', 'BUILDING_GOV_CONQUEST', 0, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) 
SELECT 'PreferPopulationBuildings', 'BUILDING_TEMPLE_ARTEMIS', 1, 100
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';


-- Barb Lover lol

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('Barb_Lover_Buildings'),
('Barb_Lover_Yields'),
('Barb_Lover_PseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('Barb_Lover_Buildings', 'TRAIT_AGENDA_BARBARIAN_LOVER', 'Buildings'),
('Barb_Lover_Yields', 'TRAIT_AGENDA_BARBARIAN_LOVER', 'Yields'),
('Barb_Lover_PseudoYields', 'TRAIT_AGENDA_BARBARIAN_LOVER', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('Barb_Lover_PseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', -20),
('Barb_Lover_PseudoYields', 'PSEUDOYIELD_INFLUENCE', 		 -15);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) 
SELECT 'Barb_Lover_Buildings', 'BUILDING_APADANA', 0, 0
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';



--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES -- In khmer dlc file
--('PreferPopulationBuildings', 'BUILDING_ANGKOR_WAT', 1, 20);


-- todo maybe more food / population wonders
-- immigration treaty in the world congress

-- Camp Lover
UPDATE AiFavoredItems SET Value = '80' WHERE ListType = 'ClearingBarbCampLoverClearingBarbCampPreference' AND Item = 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS'; -- DefaultValue=5

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ClearingBarbCampLoverClearingBarbCampPreference', 'PSEUDOYIELD_GPP_GENERAL', 				1, 100),
('ClearingBarbCampLoverClearingBarbCampPreference', 'PSEUDOYIELD_CITY_BASE', 				1, 15),
('ClearingBarbCampLoverClearingBarbCampPreference', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 	1, 5),
('ClearingBarbCampLoverClearingBarbCampPreference', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 		1, 5),
('ClearingBarbCampLoverClearingBarbCampPreference', 'PSEUDOYIELD_UNIT_COMBAT', 				1, 5),
('ClearingBarbCampLoverClearingBarbCampPreference', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	1, -5),
('ClearingBarbCampLoverClearingBarbCampPreference', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 		1, 	-2);


-- Nuke Lover

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('NukeLoverTechs'),
('NukeLoverYields'),
('NukeLoverProjects'),
('NukeLoverUnitBuilds'),
('NukeLoverSettlement');
--('NukeLoverPsuedos');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('NukeLoverTechs', 'TRAIT_AGENDA_PREFER_NUKES', 'Technologies'),
('NukeLoverYields', 'TRAIT_AGENDA_PREFER_NUKES', 'Yields'),
('NukeLoverProjects', 'TRAIT_AGENDA_PREFER_NUKES', 'Projects'),
('NukeLoverUnitBuilds',   'TRAIT_AGENDA_PREFER_NUKES', 			'UnitPromotionClasses'),
('NukeLoverSettlement',   'TRAIT_AGENDA_PREFER_NUKES', 			'PlotEvaluations');
--('NukeLoverPsuedos', 'TRAIT_AGENDA_PREFER_NUKES', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NukeLoverUnitBuilds',        'PROMOTION_CLASS_AIR_BOMBER', 1, 50);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NukeLoverYields', 'YIELD_SCIENCE', 								1,  5),
('NukeLoverYields', 'YIELD_RH_FASCISM', 							1,  30),
('NukeLoverYields', 'YIELD_RH_NUCLEAR', 							1, 150),

('NukeLoverYields', 'YIELD_RH_MAYHEM', 								1, 250),

('NukeLoverNukePreference', 'PSEUDOYIELD_CITY_DEFENSES', 			1, -20),
('NukeLoverNukePreference', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	1, -20),
('NukeLoverNukePreference', 'PSEUDOYIELD_CITY_BASE', 				1,  20),
('NukeLoverNukePreference', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 	1,  -30),
('NukeLoverNukePreference', 'PSEUDOYIELD_TECHNOLOGY', 				1,  25),
('NukeLoverNukePreference', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 			1,  35),
('NukeLoverNukePreference', 'PSEUDOYIELD_GPP_SCIENTIST', 			1,  25);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NukeLoverUseNukePreference', 'DIPLOACTION_DECLARE_FRIENDSHIP', 						0, 0), 
('NukeLoverUseNukePreference', 'DIPLOACTION_DEMAND_TRIBUTE', 						    1, 0), 
('NukeLoverUseNukePreference', 'DIPLOACTION_DECLARE_IDEOLOGICAL_WAR', 					1, 0), 

('NukeLoverTechs', 'TECH_NUCLEAR_FISSION', 						1, 100), 
('NukeLoverTechs', 'TECH_NUCLEAR_FUSION', 						1, 100), 

('NukeLoverTechs', 'TECH_FLIGHT', 								1, 0),
('NukeLoverTechs', 'TECH_ADVANCED_FLIGHT', 						1, 0), -- Important
('NukeLoverTechs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0), -- adv bombers

('NukeLoverTechs', 'TECH_RADIO', 								1, 0), -- Aluminium
('NukeLoverTechs', 'TECH_SMART_MATERIALS', 						1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NukeLoverProjects', 'PROJECT_MANHATTAN_PROJECT', 1, 100),
('NukeLoverProjects', 'PROJECT_OPERATION_IVY', 1, 100),
('NukeLoverProjects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 1, 0),
('NukeLoverProjects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 1, 100);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 					TooltipString) VALUES
('NukeLoverSettlement', 'Specific Resource', 0, 3, 				'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('NukeLoverSettlement', 'Specific Resource', 0, 25, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('NukeLoverSettlement', 'Specific Resource', 1, 70, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)


UPDATE AiFavoredItems SET Value = '25', Favored = '1' WHERE ListType = 'NukeLoverNukePreference' AND Item = 'PSEUDOYIELD_NUCLEAR_WEAPON'; -- DefaultValue=20	 Favored=1
UPDATE AiFavoredItems SET Value = '900', Favored = '1' WHERE ListType = 'NukeLoverUseNukePreference' AND Item = 'DIPLOACTION_USE_NUCLEAR_WEAPON'; -- DefaultValue=0	 Favored=1

-- Todo Uranium settlement!! gandhi
-- Todo promotion class bomber
-- Atomic era more units built

-- Great Person Obsessed


-- OTHER

-- Money Grubber

UPDATE AiFavoredItems SET Value = '35', Favored = '1' WHERE ListType = 'MoneyGrubberGoldPreference' AND Item = 'YIELD_GOLD'; -- DefaultValue=20	 Favored=1

-- Could test merchant project (perhaps custom strat for late only)

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('MoneyGrubberPseudoYields');
INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('MoneyGrubberPseudoYields', 'TRAIT_AGENDA_PREFER_INCOME', 'PseudoYields');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MoneyGrubberGoldPreference', 'YIELD_RH_MERCHANT_REPUBLIC', 				1, 300),
('MoneyGrubberGoldPreference', 'YIELD_RH_TRADE', 							1, 60),

('MoneyGrubberGoldPreference', 'YIELD_RH_SOVEREIGNTY_DOUBLE', 				1, 250),


('MoneyGrubberPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 			1, -5), -- Save Money lol

('MoneyGrubberPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 				1, 75), -- pvs 20
('MoneyGrubberPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 				1, 5), -- pvs 10
('MoneyGrubberPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 			1, 	-2);

UPDATE AiFavoredItems SET Value = '1', Favored = '1' WHERE ListType = 'DefaultCityBuilds' AND Item = 'CITY_EVENT_IMPROVEMENT'; -- DefaultValue=0	 Favored=1

UPDATE AiFavoredItems SET Value = '1', Favored = '1' WHERE ListType = 'CityStateProtectionLoverCityStateProtectionPreference' AND Item = 'DIPLOACTION_DECLARE_PROTECTORATE_WAR'; -- DefaultValue=0	 Favored=1



-- EXPANSION STRATEGY

/*


		
		<Row ListType="ExpansionSettlementBoost" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="-15"/>
		<Row ListType="ExpansionSettlementBoost" Item="SETTLEMENT_DECAY_TURNS" Value="-3"/>
		<Row ListType="ExpansionSettlementBoost" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="50"/>
		<Row ListType="ExpansionSettlementBoost" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="1"/>

		<Row ListType="ExpansionUnitPreferences" Item="PSEUDOYIELD_UNIT_COMBAT" Value="-25"/>
		<Row ListType="ExpansionUnitPreferences" Item="PSEUDOYIELD_UNIT_NAVAL_COMBAT" Value="-25"/>
		<Row ListType="ExpansionUnitPreferences" Item="PSEUDOYIELD_UNIT_SETTLER" Value="25"/>
*/

UPDATE AiFavoredItems SET Value = 7 WHERE ListType = 'ExpansionSettlementPreferences' AND Item = 'Foreign Continent'; -- def. 4 -- pvs 8
UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'ExpansionSettlementPreferences' AND Item = 'Nearest Friendly City'; -- def. 6 (3) -- pvs 3,4 -- testing 5 (4 was too low) (at 6 was hesistitant to settle), 4, retreat when at war

DELETE FROM AiFavoredItems WHERE ListType = 'ExpansionUnitPreferences'; 

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_RAPID_EXPANSION', 'RHExpansionYields'),
('STRATEGY_RAPID_EXPANSION', 'RHExpansionOperations');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RHExpansionYields'),
('RHExpansionOperations');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RHExpansionYields',	 'Yields'),
('RHExpansionOperations', 'AiOperationTypes');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('RHExpansionYields', 'YIELD_RH_EXPANSION', 1, 550),

('RHExpansionOperations', 'ATTACK_BARBARIANS', 1, 1), -- test

('RHExpansionOperations', 'OP_SETTLE', 1, 1);


REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExpansionUnitPreferences', 'PSEUDOYIELD_CITY_BASE',			  1, -20),
('ExpansionUnitPreferences', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',  1, 15),
('ExpansionUnitPreferences', 'PSEUDOYIELD_CITY_DEFENSES', 		  1, 15),

('ExpansionUnitPreferences', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 4), -- pvs 5
('ExpansionUnitPreferences', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 2), -- pvs 5, 3
('ExpansionUnitPreferences', 'PSEUDOYIELD_UNIT_SETTLER', 		1, 140); -- def 25, 110, 120


-- 	<Row ListType="EarlyExplorationBoost" Item="DEFAULT_LAND_SCOUTS" Value="200"/>
-- Early Exploration Small Strategy

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_EARLY_EXPLORATION', 'EarlyExplorationPseudoYields');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('EarlyExplorationPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('EarlyExplorationPseudoYields', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EarlyExplorationPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER',	 1, 30),
('EarlyExplorationPseudoYields', 'PSEUDOYIELD_CITY_BASE', 		 1, -20),
('EarlyExplorationPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',  1, 15),
('EarlyExplorationPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 		  1, 15),

('EarlyExplorationPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 10);



-- EXPLORATION OBSESSED (just +50% explorers by default)
INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('ExplorationObsessedTechs'),
('ExplorationObsessedDiplo'),
('ExplorationObsessedScoutUses');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('ExplorationObsessedTechs', 'TRAIT_AGENDA_EXPLORATION_OBSESSED', 'Technologies'),
('ExplorationObsessedDiplo', 'TRAIT_AGENDA_EXPLORATION_OBSESSED', 'DiplomaticActions'),
('ExplorationObsessedScoutUses', 'TRAIT_AGENDA_EXPLORATION_OBSESSED', 'AiScoutUses');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExplorationObsessedDiplo', 'DIPLOACTION_OPEN_BORDERS', 				1, 0),
('ExplorationObsessedDiplo', 'DIPLOACTION_PROPOSE_TRADE', 				1, 0),

('ExplorationObsessedTechs', 'TECH_CELESTIAL_NAVIGATION', 				1, 0), -- naval exploration / expansion 
('ExplorationObsessedTechs', 'TECH_SHIPBUILDING', 						1, 0), -- naval expansion
('ExplorationObsessedTechs', 'TECH_BUTTRESS', 							1, 0), -- leads to cartography
('ExplorationObsessedTechs', 'TECH_CARTOGRAPHY', 						1, 0), -- naval expansion

('ExplorationObsessedScoutUses',   'DEFAULT_LAND_SCOUTS', 					1, 100),
('ExplorationObsessedScoutUses', 	'LAND_SCOUTS_PER_PRIMARY_REGION',        1, 50),
('ExplorationObsessedScoutUses', 	'LAND_SCOUTS_PER_SECONDARY_REGION',      1, 50),
('ExplorationObsessedScoutUses',    'DEFAULT_NAVAL_SCOUTS',					 1, 100),
('ExplorationObsessedScoutUses',    'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 	1, 250);

-- Todo coast / foreign continent slight settlement preference

-- EXPLOITATION LOVER		
UPDATE AiFavoredItems SET Value = 32 WHERE ListType = 'ExploitationLoverExploitationPreference' AND Item = 'PSEUDOYIELD_IMPROVEMENT'; -- pvs 25
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExploitationLoverExploitationPreference', 'PSEUDOYIELD_ENVIRONMENT', 1, -32);
-- todo slight production yield / power plant preference


-- ENVIRONMENT LOVER
UPDATE AiFavoredItems SET Value = 35 WHERE ListType = 'EnvironmentLoverEnvironmentPreference' AND Item = 'PSEUDOYIELD_ENVIRONMENT'; -- pvs 25
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EnvironmentLoverEnvironmentPreference', 'PSEUDOYIELD_IMPROVEMENT', 1, -35),
('EnvironmentLoverEnvironmentPreference', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3);


-- Preserve buildings pref

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('EnvironmentLoverYields'),
('EnvironmentLoverBuildings');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('EnvironmentLoverYields', 'TRAIT_AGENDA_PREFER_ENVIRONMENT', 'Yields'),
('EnvironmentLoverBuildings', 'TRAIT_AGENDA_PREFER_ENVIRONMENT', 'Buildings');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EnvironmentLoverYields', 'YIELD_RH_GE_BUILDING_PRODUCTION_BAN', 1, 180), 

('EnvironmentLoverBuildings', 'BUILDING_GROVE', 1, 90), 
('EnvironmentLoverBuildings', 'BUILDING_SANCTUARY', 1, 90);

-- XP2 AGENDAS

/*
		<Row TraitType="TRAIT_AGENDA_EXPANSIONIST"/>
		<Row TraitType="TRAIT_AGENDA_FLAT_EARTHER"/>
		<Row TraitType="TRAIT_AGENDA_GREAT_WHITE_FLEET"/>
		<Row TraitType="TRAIT_AGENDA_INTOLERANT"/>
		<Row TraitType="TRAIT_AGENDA_PREFER_NODIPLOVP"/>
		<Row TraitType="TRAIT_AGENDA_PREFER_NOFAVOR"/>
		<Row TraitType="TRAIT_AGENDA_PREFER_PILLAGE"/>
		<Row TraitType="TRAIT_AGENDA_PREFER_NOTOURISM"/>
		<Row TraitType="TRAIT_AGENDA_TURTLER"/>
		<Row TraitType="TRAIT_AGENDA_ZEALOT"/>
*/




INSERT OR IGNORE INTO AiListTypes (ListType) VALUES

('Expansionist_AgendaDiplomacy'),
('Expansionist_AgendaUnitBuilds'),
('Expansionist_AgendaUnits'),
('Expansionist_AgendaDistricts'),
('Expansionist_AgendaTechs'),
('Expansionist_AgendaCivics'),
('Expansionist_AgendaYields'),
('Expansionist_AgendaPsuedos'),
('Expansionist_AgendaBuildings'),
('Expansionist_AgendaProjects'),
('Expansionist_AgendaOperations'),
('Expansionist_AgendaScoutUses'),
('Expansionist_AgendaSettlement');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('Expansionist_AgendaDiplomacy',   'TRAIT_AGENDA_EXPANSIONIST', 'DiplomaticActions'),
('Expansionist_AgendaUnitBuilds',   'TRAIT_AGENDA_EXPANSIONIST', 'UnitPromotionClasses'),
('Expansionist_AgendaUnits', 'TRAIT_AGENDA_EXPANSIONIST', 'Units'),
('Expansionist_AgendaDistricts', 'TRAIT_AGENDA_EXPANSIONIST', 'Districts'),
('Expansionist_AgendaTechs',   'TRAIT_AGENDA_EXPANSIONIST', 'Technologies'),
('Expansionist_AgendaCivics',   'TRAIT_AGENDA_EXPANSIONIST', 'Civics'),
('Expansionist_AgendaYields',   'TRAIT_AGENDA_EXPANSIONIST', 'Yields'),
('Expansionist_AgendaPsuedos',   'TRAIT_AGENDA_EXPANSIONIST', 'PseudoYields'),
('Expansionist_AgendaBuildings',   'TRAIT_AGENDA_EXPANSIONIST', 'Buildings'),
('Expansionist_AgendaProjects',   'TRAIT_AGENDA_EXPANSIONIST', 'Projects'),
('Expansionist_AgendaOperations',   'TRAIT_AGENDA_EXPANSIONIST', 'AiOperationTypes'),
('Expansionist_AgendaScoutUses',   'TRAIT_AGENDA_EXPANSIONIST', 'AiScoutUses'),
('Expansionist_AgendaSettlement',   'TRAIT_AGENDA_EXPANSIONIST', 'PlotEvaluations');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Expansionist_AgendaOperations', 'OP_SETTLE', 1, 1);  -- todo ancient and classical only


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('Expansionist_AgendaDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR', 0, 0),

-- todo ancient and classical only
('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_UNIT_SETTLER', 				1, 35),  
('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_UNIT_COMBAT',      			 1, 7), -- todo ancient and classical only
('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_UNIT_EXPLORER',      		 1, 20),
('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',  		 1, 50),

('Expansionist_AgendaYields', 'YIELD_RH_FASCISM', 						1, 110),
('Expansionist_AgendaYields', 'YIELD_RH_EXPANSION', 					1, 150),
('Expansionist_AgendaYields', 'YIELD_RH_MAYHEM', 						1, 250),

/*
('Expansionist_AgendaDistricts', 'DISTRICT_CAMPUS', 				1, 0), -- todo ancient and classical only
('Expansionist_AgendaBuildings', 'BUILDING_WALLS', 				1, 50), -- Defence after expansion
('Expansionist_AgendaBuildings', 'BUILDING_MONUMENT', 				1, 15), -- Some early culture / Loyalty
('Expansionist_AgendaYields', 'YIELD_FOOD', 						1, 10), -- Loyalty
*/

('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 10), 
('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_UNIT_AIR_COMBAT',   1, 5), 

('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 8), 
('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 8), 

('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',   0, -12),

('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_ENVIRONMENT',  			 0, -15),
('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_IMPROVEMENT',   			1, 5), 

('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_GPP_GENERAL',   			1, 300), 

--('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 		1, -23), 
--('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_CITY_DEFENSES',       		 1, -28), 

('Expansionist_AgendaPsuedos', 'PSEUDOYIELD_CITY_POPULATION',        1, -90);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Expansionist_AgendaSettlement', 'Foreign Continent', 0, 10);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('Expansionist_AgendaSettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('Expansionist_AgendaSettlement', 'Resource Class', 0, 1, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'),
('Expansionist_AgendaSettlement', 'Nearest Friendly City', 0, 1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'), 
('Expansionist_AgendaSettlement', 'Specific Resource', 0, 2, 'RESOURCE_IRON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Expansionist_AgendaUnitBuilds', 'PROMOTION_CLASS_MELEE',            1,  		5), -- pvs 15, 16, 17, 19
('Expansionist_AgendaUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 		1, 		-5),
('Expansionist_AgendaUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 		1, 		-5),
('Expansionist_AgendaUnitBuilds', 'PROMOTION_CLASS_RANGED', 			1, 		3),
('Expansionist_AgendaUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE',      0,  		-3);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('Expansionist_AgendaScoutUses', 'DEFAULT_LAND_SCOUTS',          						100), 
('Expansionist_AgendaScoutUses', 'DEFAULT_NAVAL_SCOUTS', 								100),
('Expansionist_AgendaScoutUses', 'LAND_SCOUTS_PER_PRIMARY_REGION', 						100), -- pvs 50
('Expansionist_AgendaScoutUses', 'LAND_SCOUTS_PER_SECONDARY_REGION', 					50),
('Expansionist_AgendaScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',     				200);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Expansionist_AgendaBuildings', 'BUILDING_GOV_TALL', 			0, -100),
('Expansionist_AgendaBuildings', 'BUILDING_GOV_WIDE', 			1, 500);
--('Expansionist_AgendaBuildings', 'BUILDING_GOV_CONQUEST', 		0, -100); 

-- Civics

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('Expansionist_AgendaCivics', 'CIVIC_MILITARY_TRADITION', 1, 0), -- Flanking bonus
('Expansionist_AgendaCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 1, 0),
('Expansionist_AgendaCivics', 'CIVIC_EARLY_EMPIRE', 1, 0), -- Settlers
('Expansionist_AgendaCivics', 'CIVIC_STATE_WORKFORCE', 1, 0), -- Gov plaza

('Expansionist_AgendaCivics', 'CIVIC_NATIONALISM', 1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Expansionist_AgendaYields', 'YIELD_SCIENCE', 					1, 1), 
('Expansionist_AgendaYields', 'YIELD_GOLD', 					1, 3), 
('Expansionist_AgendaYields', 'YIELD_PRODUCTION', 				1, 7);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Expansionist_AgendaUnits',        'UNIT_ARCHER', 				1, 5); -- pvs 4

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Expansionist_AgendaTechs', 'TECH_BRONZE_WORKING', 						1, 0), 
('Expansionist_AgendaTechs', 'TECH_MINING', 								1, 0), 
('Expansionist_AgendaTechs', 'TECH_SAILING', 								1, 0), 
('Expansionist_AgendaTechs', 'TECH_ARCHERY', 								1, 0), 
('Expansionist_AgendaTechs', 'TECH_WRITING', 								1, 50), 

('Expansionist_AgendaTechs', 'TECH_MASONRY', 							1, 0), -- Walls

('Expansionist_AgendaTechs', 'TECH_CELESTIAL_NAVIGATION', 				1, 100), -- naval expansion
('Expansionist_AgendaTechs', 'TECH_SHIPBUILDING', 						1, 100), -- naval expansion
('Expansionist_AgendaTechs', 'TECH_CARTOGRAPHY', 						1, 100), -- naval expansion

('Expansionist_AgendaTechs', 'TECH_MILITARY_ENGINEERING', 				1, 0), -- Trebuchet

('Expansionist_AgendaTechs', 'TECH_GUNPOWDER', 							1, 0), 
--('Expansionist_AgendaTechs', 'TECH_BALLISTICS',     						1, 0), Field Cannon

('Expansionist_AgendaTechs', 'TECH_MILITARY_SCIENCE',     						1, 0),

('Expansionist_AgendaTechs', 'TECH_COMBINED_ARMS', 						1, 0), -- Uranium 
('Expansionist_AgendaTechs', 'TECH_FLIGHT', 								1, 0),
('Expansionist_AgendaTechs', 'TECH_ADVANCED_FLIGHT', 					1, 0), -- Important
('Expansionist_AgendaTechs', 'TECH_RADIO', 								1, 0), -- Aluminium

('Expansionist_AgendaTechs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0), -- adv bombers
('Expansionist_AgendaTechs', 'TECH_NUCLEAR_FISSION', 					1, 0), 
('Expansionist_AgendaTechs', 'TECH_NUCLEAR_FUSION', 						1, 0), 
('Expansionist_AgendaTechs', 'TECH_SMART_MATERIALS', 					1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Expansionist_AgendaDistricts', 'DISTRICT_GOVERNMENT', 			1, 300),
('Expansionist_AgendaDistricts', 'DISTRICT_HARBOR', 				1, 0);




-- AGENDA_DESTINATION_CIV
-- Loves Tourism, Dislikes Those that also earn high tourism

-- <Row AgendaType="AGENDA_DESTINATION_CIV" TraitType="TRAIT_AGENDA_PREFER_NOTOURISM"/>

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RHDestinationCivTechs'),
('RHDestinationCivYields'),
('RHDestinationCivPseudos'),

('RHDestinationCivProjects'),
('RHDestinationCivUnitBuilds'),
('RHDestinationCivSettlement');
--('RHDestinationCivPsuedos');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('RHDestinationCivTechs', 'TRAIT_AGENDA_PREFER_NOTOURISM', 'Technologies'),
('RHDestinationCivYields', 'TRAIT_AGENDA_PREFER_NOTOURISM', 'Yields'),
('RHDestinationCivPseudos', 'TRAIT_AGENDA_PREFER_NOTOURISM', 'PseudoYields'),

('RHDestinationCivProjects', 'TRAIT_AGENDA_PREFER_NOTOURISM', 'Projects'),
('RHDestinationCivUnitBuilds',   'TRAIT_AGENDA_PREFER_NOTOURISM', 			'UnitPromotionClasses'),
('RHDestinationCivSettlement',   'TRAIT_AGENDA_PREFER_NOTOURISM', 			'PlotEvaluations');
--('RHDestinationCivPsuedos', 'TRAIT_AGENDA_PREFER_NOTOURISM', 'PseudoYields');

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('RHDestinationCivUnitBuilds',        'PROMOTION_CLASS_AIR_BOMBER', 1, 50);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RHDestinationCivYields', 'YIELD_CULTURE', 								1, 7),
('RHDestinationCivYields', 'YIELD_GOLD', 									1, 7),

('RHDestinationCivPseudos', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 			1, -5),

('RHDestinationCivPseudos', 'PSEUDOYIELD_GPP_MERCHANT', 					1, 25),
('RHDestinationCivPseudos', 'PSEUDOYIELD_HAPPINESS', 						1, 10),
('RHDestinationCivPseudos', 'PSEUDOYIELD_TOURISM', 							1, 50);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RHDestinationCivTechs', 'TECH_COMPUTERS', 						1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RHDestinationCivProjects', 'PROJECT_ENHANCE_DISTRICT_COMMERCIAL_HUB', 1, 0);





--AGENDA_PILLAGER -- Early Era Only

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('Pillager_AgendaOperations'),
('Pillager_AgendaYields');


INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('Pillager_AgendaOperations',   'AGENDA_PILLAGER', 'PerWarOperationTypes'), -- testing PerWarOperationTypes instead of AiOperationTypes
('Pillager_AgendaYields',   		'AGENDA_PILLAGER', 'Yields'); 


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Pillager_AgendaOperations', 'OP_RH_AGGRESSIVE_PILLAGE', 1, 1),
('Pillager_AgendaYields', 		'YIELD_RH_MAYHEM', 1, 250);  


-- AGENDA_TURTLER -- Late Era Only
-- Wants to stay safe from conquest. Dislike those who have conquered other players' original capitals.

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('TurtlerYields'),

('TurtlerDiplomacy'),
('TurtlerPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, AgendaType, System) VALUES
('TurtlerYields',   'AGENDA_TURTLER', 'Yields'),

('TurtlerDiplomacy', 'AGENDA_TURTLER', 'DiplomaticActions'),
('TurtlerPseudoYields', 'AGENDA_TURTLER', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TurtlerDiplomacy',			 'DIPLOACTION_ALLIANCE', 					1, 20),
('TurtlerDiplomacy',			 'DIPLOACTION_JOINT_WAR', 					0, -90),
('TurtlerDiplomacy',			 'DIPLOACTION_THIRD_PARTY_WAR', 			0, -90);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TurtlerPseudoYields',			 'PSEUDOYIELD_CITY_BASE', 					1, -20),
('TurtlerPseudoYields',			 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 		1, 7),
('TurtlerPseudoYields',			 'PSEUDOYIELD_CITY_DEFENSES', 				1, 4),
('TurtlerPseudoYields',			 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 		1, 200),
('TurtlerPseudoYields',			 'PSEUDOYIELD_GPP_GENERAL', 				1, 300), -- Encampments, pvs 15, 25

('TurtlerPseudoYields', 		'PSEUDOYIELD_STANDING_ARMY_NUMBER', 		1, 8),
('TurtlerPseudoYields',			 'PSEUDOYIELD_STANDING_ARMY_VALUE', 		1, 	7);



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TurtlerYields', 'YIELD_RH_UNDER_ATTACK', 1, 40), -- pvs 15
('TurtlerYields', 'YIELD_RH_MONARCHY', 1, 150),
('TurtlerYields', 'YIELD_RH_DEMOCRACY', 1, 70),
('TurtlerYields', 'YIELD_RH_FASCISM', 1, 35);



-- TODO RH Walls Yield



--------------------------------------------------------------------------------------------------------------------------
-- AI Bonus Strategies 1
--------------------------------------------------------------------------------------------------------------------------

REPLACE INTO TraitModifiers 
		(TraitType, ModifierId)
VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_HORSE'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_IRON'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_NITER'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_COAL'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_OIL'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_URANIUM'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_ALUMINUM');

REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
		('AI_BONUS_STRATEGICS_HORSE', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_HORSE'),
		('AI_BONUS_STRATEGICS_IRON', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_IRON'),
		('AI_BONUS_STRATEGICS_NITER', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_NITER'),
		('AI_BONUS_STRATEGICS_COAL', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_COAL'),
		('AI_BONUS_STRATEGICS_OIL', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_OIL'),
		('AI_BONUS_STRATEGICS_URANIUM', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_URANIUM'),
		('AI_BONUS_STRATEGICS_ALUMINUM', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM');

REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('AI_BONUS_STRATEGICS_HORSE', 'ResourceType', 'RESOURCE_HORSES'),
		('AI_BONUS_STRATEGICS_HORSE', 'Amount', 1),
		('AI_BONUS_STRATEGICS_IRON', 'ResourceType', 'RESOURCE_IRON'),
		('AI_BONUS_STRATEGICS_IRON', 'Amount', 1),
		('AI_BONUS_STRATEGICS_NITER', 'ResourceType', 'RESOURCE_NITER'),
		('AI_BONUS_STRATEGICS_NITER', 'Amount', 2),
		('AI_BONUS_STRATEGICS_COAL', 'ResourceType', 'RESOURCE_COAL'),
		('AI_BONUS_STRATEGICS_COAL', 'Amount', 1),
		('AI_BONUS_STRATEGICS_OIL', 'ResourceType', 'RESOURCE_OIL'),
		('AI_BONUS_STRATEGICS_OIL', 'Amount', 1),
		('AI_BONUS_STRATEGICS_URANIUM', 'ResourceType', 'RESOURCE_URANIUM'),
		('AI_BONUS_STRATEGICS_URANIUM', 'Amount', 1),
		('AI_BONUS_STRATEGICS_ALUMINUM', 'ResourceType', 'RESOURCE_ALUMINUM'),
		('AI_BONUS_STRATEGICS_ALUMINUM', 'Amount', 1);
		

REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('REQUIRES_AI_BONUS_STRATEGICS_HORSE', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_IRON', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_NITER', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_COAL', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_OIL', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_URANIUM', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('REQUIRES_AI_BONUS_STRATEGICS_HORSE', 'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_IRON', 'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_NITER', 'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_COAL', 'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_OIL', 'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_URANIUM', 'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM', 'REQUIRES_PLAYER_IS_AI');
		

REPLACE INTO TraitModifiers 
		(TraitType, ModifierId)
VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_HORSE_2'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_IRON_2'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_NITER_2'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_COAL_2'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_OIL_2'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_URANIUM_2'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_ALUMINUM_2');

REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
		('AI_BONUS_STRATEGICS_HORSE_2', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_HORSE_2'),
		('AI_BONUS_STRATEGICS_IRON_2', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_IRON_2'),
		('AI_BONUS_STRATEGICS_NITER_2', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_NITER_2'),
		('AI_BONUS_STRATEGICS_COAL_2', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_COAL_2'),
		('AI_BONUS_STRATEGICS_OIL_2', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_OIL_2'),
		('AI_BONUS_STRATEGICS_URANIUM_2', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_URANIUM_2'),
		('AI_BONUS_STRATEGICS_ALUMINUM_2', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM_2');

REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('AI_BONUS_STRATEGICS_HORSE_2', 'ResourceType', 'RESOURCE_HORSES'),
		('AI_BONUS_STRATEGICS_HORSE_2', 'Amount', 1),
		('AI_BONUS_STRATEGICS_IRON_2', 'ResourceType', 'RESOURCE_IRON'),
		('AI_BONUS_STRATEGICS_IRON_2', 'Amount', 1),
		('AI_BONUS_STRATEGICS_NITER_2', 'ResourceType', 'RESOURCE_NITER'),
		('AI_BONUS_STRATEGICS_NITER_2', 'Amount', 2),
		('AI_BONUS_STRATEGICS_COAL_2', 'ResourceType', 'RESOURCE_COAL'),
		('AI_BONUS_STRATEGICS_COAL_2', 'Amount', 1),
		('AI_BONUS_STRATEGICS_OIL_2', 'ResourceType', 'RESOURCE_OIL'),
		('AI_BONUS_STRATEGICS_OIL_2', 'Amount', 1),
		('AI_BONUS_STRATEGICS_URANIUM_2', 'ResourceType', 'RESOURCE_URANIUM'),
		('AI_BONUS_STRATEGICS_URANIUM_2', 'Amount', 2),
		('AI_BONUS_STRATEGICS_ALUMINUM_2', 'ResourceType', 'RESOURCE_ALUMINUM'),
		('AI_BONUS_STRATEGICS_ALUMINUM_2', 'Amount', 1);
		

REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('REQUIRES_AI_BONUS_STRATEGICS_HORSE_2', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_IRON_2', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_NITER_2', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_COAL_2', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_OIL_2', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_URANIUM_2', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM_2', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('REQUIRES_AI_BONUS_STRATEGICS_HORSE_2', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_HORSE_2', 	'AI_HAS_TECH_MILITARY_ENGINEERING'),
		('REQUIRES_AI_BONUS_STRATEGICS_IRON_2', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_IRON_2', 	'AI_HAS_TECH_MILITARY_ENGINEERING'),
		('REQUIRES_AI_BONUS_STRATEGICS_NITER_2', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_NITER_2', 	'AI_HAS_TECH_INDUSTRIALIZATION'),
		('REQUIRES_AI_BONUS_STRATEGICS_COAL_2', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_COAL_2', 	'AI_HAS_TECH_CHEMISTRY'),
		('REQUIRES_AI_BONUS_STRATEGICS_OIL_2', 		'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_OIL_2', 		'AI_HAS_TECH_CHEMISTRY'),
		('REQUIRES_AI_BONUS_STRATEGICS_URANIUM_2', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_URANIUM_2', 	'AI_HAS_TECH_NUCLEAR_FUSION'),
		('REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM_2', 'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM_2', 'AI_HAS_TECH_CHEMISTRY');
		
	
REPLACE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('AI_HAS_TECH_MILITARY_ENGINEERING', 	'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('AI_HAS_TECH_INDUSTRIALIZATION', 		'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('AI_HAS_TECH_CHEMISTRY',				'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('AI_HAS_TECH_NUCLEAR_FUSION',			'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

REPLACE INTO RequirementArguments
		(RequirementId,								Name,		 Value)
VALUES
		('AI_HAS_TECH_MILITARY_ENGINEERING',	'TechnologyType', 'TECH_MILITARY_ENGINEERING'),
		('AI_HAS_TECH_INDUSTRIALIZATION',		'TechnologyType', 'TECH_INDUSTRIALIZATION'),
		('AI_HAS_TECH_CHEMISTRY',				'TechnologyType', 'TECH_CHEMISTRY'),
		('AI_HAS_TECH_NUCLEAR_FUSION',			'TechnologyType', 'TECH_NUCLEAR_FUSION');


REPLACE INTO TraitModifiers 
		(TraitType, ModifierId)
VALUES
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_HORSE_3'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_IRON_3'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_NITER_3'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_COAL_3'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_OIL_3'),
		('TRAIT_LEADER_MAJOR_CIV', 'AI_BONUS_STRATEGICS_ALUMINUM_3');

REPLACE INTO Modifiers
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
		('AI_BONUS_STRATEGICS_HORSE_3', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_HORSE_3'),
		('AI_BONUS_STRATEGICS_IRON_3', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_IRON_3'),
		('AI_BONUS_STRATEGICS_NITER_3', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_NITER_3'),
		('AI_BONUS_STRATEGICS_COAL_3', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_COAL_3'),
		('AI_BONUS_STRATEGICS_OIL_3', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_OIL_3'),
		('AI_BONUS_STRATEGICS_ALUMINUM_3', 'MODIFIER_PLAYER_CITIES_ADJUST_EXTRA_ACCUMULATION_SPECIFIC_RESOURCE','REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM_3');

REPLACE INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES
		('AI_BONUS_STRATEGICS_HORSE_3', 'ResourceType', 'RESOURCE_HORSES'),
		('AI_BONUS_STRATEGICS_HORSE_3', 'Amount', 2),
		('AI_BONUS_STRATEGICS_IRON_3', 'ResourceType', 'RESOURCE_IRON'),
		('AI_BONUS_STRATEGICS_IRON_3', 'Amount', 1),
		('AI_BONUS_STRATEGICS_NITER_3', 'ResourceType', 'RESOURCE_NITER'),
		('AI_BONUS_STRATEGICS_NITER_3', 'Amount', 2),
		('AI_BONUS_STRATEGICS_COAL_3', 'ResourceType', 'RESOURCE_COAL'),
		('AI_BONUS_STRATEGICS_COAL_3', 'Amount', 2),
		('AI_BONUS_STRATEGICS_OIL_3', 'ResourceType', 'RESOURCE_OIL'),
		('AI_BONUS_STRATEGICS_OIL_3', 'Amount', 2),
		('AI_BONUS_STRATEGICS_ALUMINUM_3', 'ResourceType', 'RESOURCE_ALUMINUM'),
		('AI_BONUS_STRATEGICS_ALUMINUM_3', 'Amount', 1);
		

REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('REQUIRES_AI_BONUS_STRATEGICS_HORSE_3', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_IRON_3', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_NITER_3', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_COAL_3', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_OIL_3', 'REQUIREMENTSET_TEST_ALL'),
		('REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM_3', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('REQUIRES_AI_BONUS_STRATEGICS_HORSE_3', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_HORSE_3', 	'AI_HAS_TECH_INDUSTRIALIZATION'),
		('REQUIRES_AI_BONUS_STRATEGICS_IRON_3', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_IRON_3', 	'AI_HAS_TECH_INDUSTRIALIZATION'),
		('REQUIRES_AI_BONUS_STRATEGICS_NITER_3', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_NITER_3', 	'AI_HAS_TECH_CHEMISTRY'),
		('REQUIRES_AI_BONUS_STRATEGICS_COAL_3', 	'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_COAL_3', 	'AI_HAS_TECH_COMBINED_ARMS'),
		('REQUIRES_AI_BONUS_STRATEGICS_OIL_3', 		'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_OIL_3', 		'AI_HAS_TECH_COMBINED_ARMS'),
		('REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM_3', 'REQUIRES_PLAYER_IS_AI'),
		('REQUIRES_AI_BONUS_STRATEGICS_ALUMINUM_3', 'AI_HAS_TECH_COMBINED_ARMS');
		
	
REPLACE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('AI_HAS_TECH_COMBINED_ARMS',	'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

REPLACE INTO RequirementArguments
		(RequirementId,					Name,		 Value)
VALUES
		('AI_HAS_TECH_COMBINED_ARMS',	'TechnologyType', 'TECH_COMBINED_ARMS');


--------------------------------------------------------------------------------------------------------------------------
-- Not in use: Ai recieves dead end techs later on 
--------------------------------------------------------------------------------------------------------------------------

/*
REPLACE INTO	TraitModifiers	
			(TraitType,					ModifierId)
VALUES		('TRAIT_LEADER_MAJOR_CIV',	'AI_GET_TECH_IRRIGATION'),
			('TRAIT_LEADER_MAJOR_CIV',	'AI_GET_TECH_CELESTIAL_NAVIGATION');

REPLACE INTO	Modifiers	
			(ModifierId,				ModifierType, 			SubjectRequirementSetId)
VALUES		('AI_GET_TECH_IRRIGATION',	'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY', 'AI_GET_TECH_WRITING'),
			('AI_GET_TECH_CELESTIAL_NAVIGATION',	'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY', 'AI_GET_TECH_CURRENCY');

REPLACE INTO	ModifierArguments	
			(ModifierId,				Name,				Value)
VALUES		('AI_GET_TECH_IRRIGATION',	'TechType',	'TECH_IRRIGATION'),
			('AI_GET_TECH_CELESTIAL_NAVIGATION',	'TechType',	'TECH_CELESTIAL_NAVIGATION');

REPLACE INTO RequirementSets 
		(RequirementSetId, RequirementSetType)
VALUES
		('AI_GET_TECH_WRITING', 'REQUIREMENTSET_TEST_ALL'),
		('AI_GET_TECH_CURRENCY', 'REQUIREMENTSET_TEST_ALL');

REPLACE INTO RequirementSetRequirements 
		(RequirementSetId, RequirementId)
VALUES
		('AI_GET_TECH_WRITING', 'REQUIRES_AI_GET_TECH_WRITING'),
		('AI_GET_TECH_WRITING', 'REQUIRES_PLAYER_IS_AI'),
		
		('AI_GET_TECH_CURRENCY', 'REQUIRES_AI_GET_TECH_CURRENCY'),
		('AI_GET_TECH_CURRENCY', 'REQUIRES_PLAYER_IS_AI');
		
REPLACE INTO Requirements
		(RequirementId, RequirementType)
VALUES
		('REQUIRES_AI_GET_TECH_WRITING', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('REQUIRES_AI_GET_TECH_CURRENCY', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

REPLACE INTO RequirementArguments
		(RequirementId,	Name, Value)
VALUES
		('REQUIRES_AI_GET_TECH_WRITING','TechnologyType', 'TECH_WRITING'),
		('REQUIRES_AI_GET_TECH_CURRENCY','TechnologyType', 'TECH_CURRENCY');
*/

--------------------------------------------------------------------------------------------------------------------------
-- No Biplane, medic (testing enabling Drone and supply convoy) - banned as AI uses them on their own to attack cities (sometimes doesn't put in formation with other units despite increased priority for this helping)
--------------------------------------------------------------------------------------------------------------------------


INSERT OR IGNORE INTO	TraitModifiers	 (TraitType,					ModifierId)   VALUES			
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_DISABLE_MEDIC'),
--			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_DISABLE_DRONE'),
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_DISABLE_BIPLANE'); -- Ai spams them, not worth it as they waste resources on a terrible unit and then only end up with the maintaince for mostly figters
--			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_DISABLE_SUPPLY_CONVOY');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,		ModifierType,			SubjectRequirementSetId)  VALUES			
			('RH_AI_DISABLE_MEDIC',				'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'PLAYER_IS_AI'),
--			('RH_AI_DISABLE_DRONE',				'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'PLAYER_IS_AI'),
			('RH_AI_DISABLE_BIPLANE',				'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'PLAYER_IS_AI');
--			('RH_AI_DISABLE_SUPPLY_CONVOY',		'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'PLAYER_IS_AI');


INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,		Name,			Value)   VALUES			
			('RH_AI_DISABLE_MEDIC',				'UnitType',		'UNIT_MEDIC'),
--			('RH_AI_DISABLE_DRONE',				'UnitType',		'UNIT_DRONE'),
			('RH_AI_DISABLE_BIPLANE',				'UnitType', 	'UNIT_BIPLANE');
--			('RH_AI_DISABLE_SUPPLY_CONVOY',		'UnitType',		'UNIT_SUPPLY_CONVOY');


