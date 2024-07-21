
-- AUTHOR: ROMANHOLIDAY


-- Naval Strategy Improvements

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('NavalDistricts'),
('NavalScoutUses'),
('NavalCivics'),
('NavalPerWarOperations'),
('NavalYields'),
('NavalWonders');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('NavalDistricts',  'Districts'),
('NavalScoutUses',  'AiScoutUses'),
('NavalCivics',     'Civics'),
('NavalPerWarOperations',     'PerWarOperationTypes'),
('NavalYields',     'Yields'),
('NavalWonders',    'Buildings');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_NAVAL', 'NavalDistricts'),
('STRATEGY_NAVAL', 'NavalScoutUses'),
('STRATEGY_NAVAL', 'NavalCivics'),
('STRATEGY_NAVAL', 'NavalPerWarOperations'),
('STRATEGY_NAVAL', 'NavalYields'),
('STRATEGY_NAVAL', 'NavalWonders');

UPDATE GlobalParameters SET Value = '18' WHERE Name = 'AI_ISLAND_COAST_PERCENTAGE';	 -- Def 20, pvs 22, 15, 16

UPDATE AiFavoredItems SET Value = -16 WHERE ListType = 'NavalUnitPreferences' AND Item = 'PSEUDOYIELD_UNIT_COMBAT'; -- def. -90 
UPDATE AiFavoredItems SET Value = 140 WHERE ListType = 'NavalUnitPreferences' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- pvs 41, 47, 42, 50, 55, 66, 74, 80, 90, 120, 140 def. 150 (140 was too high in the late game)

UPDATE AiFavoredItems SET Value = 13 WHERE ListType = 'NavalSettlementPreferences' AND Item = 'Coastal'; -- def. 10 (base 13)
--UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'NavalSettlementPreferences' AND Item = 'Nearest Friendly City'; -- def. 4 
UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'NavalSettlementPreferences' AND Item = 'Foreign Continent'; -- def. 4 (favoured = true)
UPDATE AiFavoredItems SET Value = -3 WHERE ListType = 'NavalSettlementPreferences' AND Item = 'Specific Resource' AND StringVal = 'RESOURCE_HORSES'; -- def. -3 -- RST -1
UPDATE AiFavoredItems SET Value = -2 WHERE ListType = 'NavalSettlementPreferences' AND Item = 'Specific Resource' AND StringVal = 'RESOURCE_IRON'; -- def. -5 -- RST -2

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('NavalSettlementPreferences', 'Fresh Water', 0, -4, NULL), -- pvs -5
('NavalSettlementPreferences', 'Specific Resource', 0, 2, 'RESOURCE_COAL'), -- pvs 3
('NavalSettlementPreferences', 'Specific Resource', 0, 3, 'RESOURCE_OIL'); -- needed

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NavalCivics', 'CIVIC_DEFENSIVE_TACTICS', 1, 0); -- MH

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('NavalDistricts', 'DISTRICT_HARBOR', 1, 60), -- maybe DISTRICT_WATER_ENTERTAINMENT_COMPLEX
('NavalDistricts', 'DISTRICT_COMMERCIAL_HUB', 0, 0), -- Ideally don't build both

('NavalScoutUses', 'DEFAULT_NAVAL_SCOUTS', 1, 				200), -- pvs 100
('NavalScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 1, 200), -- pvs 100

('NavalPerWarOperations', 'NAVAL_SUPERIORITY', 1, 1), -- testing +1 for each war while naval (base is 1)

('NavalCivics', 'CIVIC_FOREIGN_TRADE', 1, 0),
('NavalCivics', 'CIVIC_NAVAL_TRADITION', 1, 0),
('NavalWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 0),
('NavalWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),
('NavalWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 900),
('NavalWonders', 'BUILDING_SHIPYARD', 1, 100), -- +1 Production to all Coastal Resources
('NavalWonders', 'BUILDING_SEAPORT', 1, 100), -- +2 Gold

('NavalYields', 'YIELD_RH_NAVAL', 1, 600), -- pvs 400, 500

('NavalUnitPreferences', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 25), -- pvs 17, 22, 20, 25
('NavalUnitPreferences', 'PSEUDOYIELD_GPP_MERCHANT', 1, -33), -- pvs -10, -20
('NavalUnitPreferences', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 10),
('NavalUnitPreferences', 'PSEUDOYIELD_GPP_GENERAL', 0, -15),

('NavalPreferredTechs', 'TECH_CURRENCY', 0, 0), 

('NavalPreferredTechs', 'TECH_STEEL', 1, 0), 
('NavalPreferredTechs', 'TECH_COMBINED_ARMS', 1, 0), 
('NavalPreferredTechs', 'TECH_SQUARE_RIGGING', 1, 0),
('NavalPreferredTechs', 'TECH_MASS_PRODUCTION', 1, 0), -- Shipyard / VA
('NavalPreferredTechs', 'TECH_COMPUTERS', 1, 0), -- Flood Barriers
('NavalPreferredTechs', 'TECH_STEAM_POWER', 1, 0);

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item) 
--SELECT 'NavalWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM'
--FROM Buildings
--WHERE BuildingType = 'BUILDING_HALICARNASSUS_MAUSOLEUM'; -- Todo further boost value


/*
		<Row ListType="NavalUnitPreferences" Item="PSEUDOYIELD_UNIT_NAVAL_COMBAT" Value="150"/>
		<Row ListType="NavalUnitPreferences" Item="PSEUDOYIELD_UNIT_COMBAT" Value="-90"/>
		<Row ListType="NavalSettlementPreferences" Item="Coastal" Favored="false" Value="10"/>
		<Row ListType="NavalSettlementPreferences" Item="Specific Resource" Value="-3" StringVal="RESOURCE_HORSES"/>
		<Row ListType="NavalSettlementPreferences" Item="Specific Resource" Value="-5" StringVal="RESOURCE_IRON"/>
		<Row ListType="NavalSettlementPreferences" Item="Foreign Continent" Favored="true" Value="4"/>
		<Row ListType="NavalSettlementPreferences" Item="Nearest Friendly City" Favored="false" Value="4"/>
		<Row ListType="NavalSettlementBoost" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="100"/>
		<Row ListType="NavalSettlementBoost" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="2"/>
		<Row ListType="NavalPreferredTechs" Item="TECH_SAILING" Favored="true"/>
		<Row ListType="NavalPreferredTechs" Item="TECH_CELESTIAL_NAVIGATION" Favored="true"/>
		<Row ListType="NavalPreferredTechs" Item="TECH_SHIPBUILDING" Favored="true"/>
		<Row ListType="NavalPreferredTechs" Item="TECH_CARTOGRAPHY" Favored="true"/>
*/





INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_NAVAL_DEF',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_NAVAL_DEF',    				NULL, 1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_NAVAL_DEF',    		 'Is Not Major', 1);


INSERT INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('RH_STRATEGY_NAVAL_DEF',      				'Is On Island',		 1);


--INSERT INTO StrategyConditions (StrategyType, ConditionFunction,  ThresholdValue) VALUES
--('RH_STRATEGY_NAVAL_DEF',      				'IsCoastalTarget',	1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('RH_STRATEGY_NAVAL_DEF',      				'Cities Under Threat',	 1, 1);

-- IsCoastalTarget

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_NAVAL_DEF',    		 				 'Is Not Major', 1);



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_Naval_Def_Comm'),
('RH_Naval_Def_Diplomacy'),
('RH_Naval_Def_Civics'),
('RH_Naval_Def_Techs'),
('RH_Naval_Def_Buildings'),
('RH_Naval_Def_Projects'),
('RH_Naval_Def_Yields'),
('RH_Naval_Def_PseudoYields'),
('RH_Naval_Def_Operations'),
('RH_Naval_Def_Settlement'),
('RH_Naval_Def_Savings'),
('RH_Naval_Def_UnitBuilds'),
('RH_Naval_Def_Units'),

('RH_Naval_Def_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_Naval_Def_Comm',   			'Commemorations'),
('RH_Naval_Def_Diplomacy',   		'DiplomaticActions'),
('RH_Naval_Def_Civics',   			'Civics'),
('RH_Naval_Def_Techs',   			'Technologies'),
('RH_Naval_Def_Buildings',   		'Buildings'),
('RH_Naval_Def_Projects',   		'Projects'),
('RH_Naval_Def_Yields',   			'Yields'),
('RH_Naval_Def_PseudoYields',   	'PseudoYields'),
('RH_Naval_Def_Operations', 		'AiOperationTypes'),
('RH_Naval_Def_Settlement', 		'PlotEvaluations'),
('RH_Naval_Def_Savings', 			'SavingTypes'),
('RH_Naval_Def_UnitBuilds', 			'UnitPromotionClasses'),
('RH_Naval_Def_Units', 			'Units'),

('RH_Naval_Def_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Comm'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Diplomacy'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Civics'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Techs'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Buildings'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Projects'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Yields'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_PseudoYields'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Operations'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Settlement'),
('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Savings'),

('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_UnitBuilds'),

('RH_STRATEGY_NAVAL_DEF',   'RH_Naval_Def_Scouts');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_Naval_Def_Operations', 'NAVAL_SUPERIORITY', 								1, 2),
--('RH_Naval_Def_Operations', 'NAVAL_SUP_MELEE', 									1, 1),

('RH_Naval_Def_UnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE', 						0, -55),
('RH_Naval_Def_UnitBuilds', 'PROMOTION_CLASS_NAVAL_RANGED', 					1, 40),
('RH_Naval_Def_UnitBuilds', 'PROMOTION_CLASS_NAVAL_RAIDER', 					1, 10),

('RH_Naval_Def_Units', 				'UNIT_BATTLESHIP', 							1, 75),
('RH_Naval_Def_Units', 				'UNIT_MISSILE_CRUISER', 					1, 95),

('RH_Naval_Def_PseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 					1, 40);



