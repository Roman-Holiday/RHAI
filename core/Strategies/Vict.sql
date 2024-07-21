-- noinspection SqlNoDataSourceInspectionForFile

-- AUTHOR: ROMANHOLIDAY


-- Victory Strategies 1

-- Missing (only defined as a victory, not type lol)
INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'KIND_VICTORY_STRATEGY'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'KIND_VICTORY_STRATEGY'),
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'KIND_VICTORY_STRATEGY');


--------------------------------------------------------------------------------------------------------------------------
-- Military Victory Strategy
--------------------------------------------------------------------------------------------------------------------------

UPDATE AiFavoredItems SET Value = 20 WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_NUCLEAR_WEAPON'; -- def. 25 (pvs 55, 50), 45
UPDATE AiFavoredItems SET Value = -100 WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL'; -- def. 100
UPDATE AiFavoredItems SET Value = -35 WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENSES'; -- def. -25, 30
UPDATE AiFavoredItems SET Value = -35 WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENDING_UNITS'; -- def. -25, 29

UPDATE AiFavoredItems SET Value = -42 WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_DIPLOMATIC_BONUS'; -- def. -50 -- RST -25, pvs 35

DELETE FROM AiFavoredItems WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_GENERAL'; 
DELETE FROM AiFavoredItems WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ADMIRAL'; 

UPDATE AiFavoredItems SET Value = 45 WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- def 25 pvs 20 -- pvs 23, 36, 40
UPDATE AiFavoredItems SET Value = 24 WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_COMBAT'; -- def 25 pvs 20, 18, 20
UPDATE AiFavoredItems SET Value = 35 WHERE ListType = 'MilitaryVictoryPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_AIR_COMBAT'; -- def 25

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
-- Yield Production def 25
('MilitaryVictoryYields', 'YIELD_SCIENCE', 1, 17), --pvs 15
('MilitaryVictoryYields', 'YIELD_CULTURE', 1, -10),
('MilitaryVictoryYields', 'YIELD_FAITH',   1, -25),
('MilitaryVictoryYields', 'YIELD_GOLD',   1, 10),
('MilitaryVictoryYields', 'YIELD_RH_FASCISM', 1, 100),
('MilitaryVictoryYields', 'YIELD_RH_AT_WAR',   1, 90),
('MilitaryVictoryYields', 'YIELD_RH_NUCLEAR',   1, 220),
('MilitaryVictoryYields', 'YIELD_RH_MAYHEM',   1, 450),

('MilitaryVictoryYields', 'YIELD_RH_PATRONAGE_BAN', 	1, 400),
('MilitaryVictoryYields', 'YIELD_RH_MERCENARY_COMPANIES_BUFF', 	1, 750),
('MilitaryVictoryYields', 'YIELD_RH_MILITARY_ADVISORY_BUFF', 	1, 950),

('MilitaryVictoryYields', 'YIELD_RH_PUBLIC_RELATIONS_DEBUFF', 	1, 450), -- Fewer Grievances

('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 250), -- def +100%
--('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -30), -- Already exists -- base 54 def -25%
--('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_SPACE_RACE', 1, -5), -- base 100
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, 20), -- base 0.7
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 25), -- base 2.2 -- Loyalty
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 17), -- base 0.7
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -30), -- base 0.8
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 18), -- def 50 base 0.5 - prvs 10, 16
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 22), -- def 50 base 0.6 -- pvs 18
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 18),
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_TOURISM', 1, -30), -- base 0.8 - prvs -35
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 10), -- amenities -- pvs 15
--('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 20), -- Already exists -- More units -- Previously used 5, then 10
--('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 35), -- Already exists -- More planes - pvs 20, 30
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 19), -- def. 1.1 -- pvs 16
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 14), -- def. 0.11 -- pvs 12, 15
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, -28), -- base 4 - RHAI 3.7
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, -22),
--('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 8), -- base 0.6 - RHAI 1.0 -- Def 25
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 65); -- Strategics

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 0, -30),
--('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 0, -50), -- already in vict 5
('MilitaryVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 0, -60); -- Def -0.5, pvs -30, 40

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('MilitaryVictoryDiplomacy'),
('MilitaryVictoryTechs'),
('MilitaryVictoryCivics'),
('MilitaryVictoryWonders'),
('MilitaryVictoryProjects'),
('MilitaryVictoryUnitBuilds');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('MilitaryVictoryDiplomacy', 'DiplomaticActions'),
('MilitaryVictoryTechs',     'Technologies'),
('MilitaryVictoryCivics',    'Civics'),
('MilitaryVictoryWonders',   'Buildings'),
('MilitaryVictoryProjects',  'Projects'),
('MilitaryVictoryUnitBuilds','UnitPromotionClasses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryDiplomacy'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryTechs'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryCivics'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryWonders'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryProjects'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryUnitBuilds');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MilitaryVictoryDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 900),
('MilitaryVictoryDiplomacy', 'DIPLOACTION_PROPOSE_PEACE_DEAL', 0, 0), 
--('MilitaryVictoryDiplomacy', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 0),
('MilitaryVictoryDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0),
('MilitaryVictoryDiplomacy', 'DIPLOACTION_DECLARE_FORMAL_WAR', 1, 0),

('MilitaryVictoryDiplomacy', 'DIPLOACTION_DECLARE_FRIENDSHIP', 0, 0), -- testing this
('MilitaryVictoryDiplomacy', 'DIPLOACTION_DECLARE_TERRITORIAL_WAR', 1, 0),
('MilitaryVictoryDiplomacy', 'DIPLOACTION_DECLARE_TERRITORIAL_WAR', 1, 0),
('MilitaryVictoryDiplomacy', 'DIPLOACTION_DECLARE_GOLDEN_AGE_WAR', 1, 0),
('MilitaryVictoryDiplomacy', 'DIPLOACTION_DECLARE_IDEOLOGICAL_WAR', 1, 0),
('MilitaryVictoryDiplomacy', 'DIPLOACTION_DEMAND_TRIBUTE', 1, 0),

--('MilitaryVictoryDiplomacy', 'DIPLOACTION_DECLARE_RECONQUEST_WAR', 1, 0),
('MilitaryVictoryDiplomacy', 'DIPLOACTION_DECLARE_COLONIAL_WAR', 				1, 0),

('MilitaryVictoryTechs', 'TECH_BRONZE_WORKING', 								1, 0), 
('MilitaryVictoryTechs', 'TECH_IRON_WORKING', 									1, 0), -- Swordsmen
('MilitaryVictoryTechs', 'TECH_ENGINEERING', 									1, 0), -- Catapult
('MilitaryVictoryTechs', 'TECH_MACHINERY', 										1, 0), -- Crossbowmen / leads to printing

('MilitaryVictoryTechs', 'TECH_APPRENTICESHIP', 								1, 0), -- Man at Arms!
('MilitaryVictoryTechs', 'TECH_PRINTING', 										1, 0), -- +3 Combat strength

('MilitaryVictoryTechs', 'TECH_STIRRUPS', 										1, 0), 
('MilitaryVictoryTechs', 'TECH_MILITARY_ENGINEERING', 							1, 0), -- Trebuchet
('MilitaryVictoryTechs', 'TECH_MASS_PRODUCTION', 								1, 0), -- Venetian Arsenal

('MilitaryVictoryTechs', 'TECH_GUNPOWDER', 										1, 0), 
('MilitaryVictoryTechs', 'TECH_METAL_CASTING', 									1, 0), -- Bombard

('MilitaryVictoryTechs', 'TECH_BALLISTICS',     								 1, 0),
('MilitaryVictoryTechs', 'TECH_MILITARY_SCIENCE', 								1, 0), 
('MilitaryVictoryTechs', 'TECH_COMBUSTION', 									1, 0), 

('MilitaryVictoryTechs', 'TECH_FLIGHT', 										1, 0),
('MilitaryVictoryTechs', 'TECH_ADVANCED_FLIGHT', 								1, 0), -- Important
('MilitaryVictoryTechs', 'TECH_STEALTH_TECHNOLOGY', 							1, 0), -- adv bombers

('MilitaryVictoryTechs', 'TECH_REFINING', 										1, 0), -- Oil
('MilitaryVictoryTechs', 'TECH_RIFLING', 										1, 0), -- Leads to TECH_REFINING and Steel
('MilitaryVictoryTechs', 'TECH_RADIO', 											1, 0); -- Aluminium


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('MilitaryVictoryTechs', 'TECH_COMBINED_ARMS', 1, 0), -- Uranium 
('MilitaryVictoryTechs', 'TECH_NUCLEAR_FISSION', 1, 0), 
('MilitaryVictoryTechs', 'TECH_NUCLEAR_FUSION', 1, 0), 
('MilitaryVictoryTechs', 'TECH_SMART_MATERIALS', 1, 0),
('MilitaryVictoryCivics', 'CIVIC_MILITARY_TRADITION', 1, 0),
('MilitaryVictoryCivics', 'CIVIC_MILITARY_TRAINING', 1, 0),
('MilitaryVictoryCivics', 'CIVIC_MERCENARIES', 1, 0),
('MilitaryVictoryCivics', 'CIVIC_NATIONALISM', 1, 0),
('MilitaryVictoryCivics', 'CIVIC_MOBILIZATION', 1, 0),
('MilitaryVictoryCivics', 'CIVIC_RAPID_DEPLOYMENT', 1, 0),
--
('MilitaryVictoryCivics', 'CIVIC_SUFFRAGE', 0, 0), 
('MilitaryVictoryCivics', 'CIVIC_TOTALITARIANISM', 1, 0), 
('MilitaryVictoryCivics', 'CIVIC_CLASS_STRUGGLE', 0, 0), 
('MilitaryVictoryCivics', 'CIVIC_NUCLEAR_PROGRAM', 1, 0), -- Gp scientist / engineer / double tech boost
('MilitaryVictoryCivics', 'CIVIC_OPTIMIZATION_IMPERATIVE', 1, 0), 
('MilitaryVictoryCivics', 'CIVIC_DISTRIBUTED_SOVEREIGNTY', 0, 0), -- -3 Combat Strength from Digital Democracy No lol
('MilitaryVictoryCivics', 'CIVIC_VENTURE_POLITICS', 1, 0), 
('MilitaryVictoryWonders', 'BUILDING_TERRACOTTA_ARMY', 1, 0),
('MilitaryVictoryWonders', 'BUILDING_ALHAMBRA', 1, 0),
('MilitaryVictoryWonders', 'BUILDING_COLOSSEUM', 1, 0),
('MilitaryVictoryWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 90),

('MilitaryVictoryProjects', 'PROJECT_MANHATTAN_PROJECT', 1, 0),
('MilitaryVictoryProjects', 'PROJECT_OPERATION_IVY', 1, 0),
('MilitaryVictoryProjects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 1, 0),
('MilitaryVictoryProjects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 1, 0),

('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 1, 24),
('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_MELEE', 1, 3),
('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 1, 2),
('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 0, -5),
('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 0, -4),
('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_RECON', 0, -5),
('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 2),
('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 0, -2),
('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_MONK', 0, -5),
('MilitaryVictoryUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, 19); -- pvs 18

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MilitaryVictoryWonders', 'BUILDING_BUILDING_POWER_PLANT', 0, -50), -- Don't Waste Uranium
('MilitaryVictoryWonders', 'BUILDING_COAL_POWER_PLANT', 1, 0), -- Use Coal
('MilitaryVictoryWonders', 'BUILDING_FOSSIL_FUEL_POWER_PLANT', 0, 0), -- Don't Waste Oil

('MilitaryVictoryProjects', 'PROJECT_CARBON_RECAPTURE', 0, -50), 
('MilitaryVictoryProjects', 'PROJECT_CONVERT_REACTOR_TO_OIL', 0, -50), 
('MilitaryVictoryProjects', 'PROJECT_CONVERT_REACTOR_TO_URANIUM', 0, -50);  -- Don't Waste Uranium

