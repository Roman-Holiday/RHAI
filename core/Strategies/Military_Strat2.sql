
-- AUTHOR: ROMANHOLIDAY

-- Military Strat 2 Test



INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_2_CAPITALS',     				'KIND_VICTORY_STRATEGY'),
('RH_STRATEGY_3_CAPITALS',     				'KIND_VICTORY_STRATEGY'),
('RH_STRATEGY_4_CAPITALS',     				'KIND_VICTORY_STRATEGY'),
('RH_STRATEGY_5_CAPITALS',     				'KIND_VICTORY_STRATEGY'),
('RH_STRATEGY_6_CAPITALS',     				'KIND_VICTORY_STRATEGY'),
('RH_STRATEGY_7_CAPITALS',     				'KIND_VICTORY_STRATEGY');


INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_2_CAPITALS',    							NULL, 1),
('RH_STRATEGY_3_CAPITALS',    							NULL, 1),
('RH_STRATEGY_4_CAPITALS',    							NULL, 1),
('RH_STRATEGY_5_CAPITALS',    							NULL, 1),
('RH_STRATEGY_6_CAPITALS',    							NULL, 1),
('RH_STRATEGY_7_CAPITALS',    							NULL, 1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_2_CAPITALS',    						 'Is Not Major', 1),
('RH_STRATEGY_3_CAPITALS',    						 'Is Not Major', 1),
('RH_STRATEGY_4_CAPITALS',    						 'Is Not Major', 1),
('RH_STRATEGY_5_CAPITALS',    						 'Is Not Major', 1),
('RH_STRATEGY_6_CAPITALS',    						 'Is Not Major', 1),
('RH_STRATEGY_7_CAPITALS',    						 'Is Not Major', 1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('RH_STRATEGY_2_CAPITALS',    						 'Has Taken Capital',     			1),
('RH_STRATEGY_3_CAPITALS',    						 'Has Taken Capital',     			2),
('RH_STRATEGY_4_CAPITALS',    						 'Has Taken Capital',     			3),
('RH_STRATEGY_5_CAPITALS',    						 'Has Taken Capital',     			4),
('RH_STRATEGY_6_CAPITALS',    						 'Has Taken Capital',     			5),
('RH_STRATEGY_7_CAPITALS',    						 'Has Taken Capital',     			6);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_2_CAPITALS',    		 				 'Is Not Major', 1),
('RH_STRATEGY_3_CAPITALS',    		 				 'Is Not Major', 1),
('RH_STRATEGY_4_CAPITALS',    		 				 'Is Not Major', 1),
('RH_STRATEGY_5_CAPITALS',    		 				 'Is Not Major', 1),
('RH_STRATEGY_6_CAPITALS',    		 				 'Is Not Major', 1),
('RH_STRATEGY_7_CAPITALS',    		 				 'Is Not Major', 1);





INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_2_Cap_Comm'),
('RH_2_Cap_Diplomacy'),
('RH_2_Cap_Civics'),
('RH_2_Cap_Techs'),
('RH_2_Cap_Buildings'),
('RH_2_Cap_Projects'),
('RH_2_Cap_Yields'),
('RH_2_Cap_PseudoYields'),
('RH_2_Cap_Operations'),
('RH_2_Cap_Settlement'),
('RH_2_Cap_Savings'),
('RH_2_Cap_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_2_Cap_Comm',   			'Commemorations'),
('RH_2_Cap_Diplomacy',   		'DiplomaticActions'),
('RH_2_Cap_Civics',   			'Civics'),
('RH_2_Cap_Techs',   			'Technologies'),
('RH_2_Cap_Buildings',   		'Buildings'),
('RH_2_Cap_Projects',   		'Projects'),
('RH_2_Cap_Yields',   			'Yields'),
('RH_2_Cap_PseudoYields',   	'PseudoYields'),
('RH_2_Cap_Operations', 		'AiOperationTypes'),
('RH_2_Cap_Settlement', 		'PlotEvaluations'),
('RH_2_Cap_Savings', 			'SavingTypes'),
('RH_2_Cap_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Comm'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Diplomacy'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Civics'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Techs'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Buildings'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Projects'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Yields'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_PseudoYields'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Operations'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Settlement'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Savings'),
('RH_STRATEGY_2_CAPITALS',   'RH_2_Cap_Scouts');

-- 3

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_3_Cap_Comm'),
('RH_3_Cap_Diplomacy'),
('RH_3_Cap_Civics'),
('RH_3_Cap_Techs'),
('RH_3_Cap_Buildings'),
('RH_3_Cap_Projects'),
('RH_3_Cap_Yields'),
('RH_3_Cap_PseudoYields'),
('RH_3_Cap_Operations'),
('RH_3_Cap_Settlement'),
('RH_3_Cap_Savings'),
('RH_3_Cap_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_3_Cap_Comm',   			'Commemorations'),
('RH_3_Cap_Diplomacy',   		'DiplomaticActions'),
('RH_3_Cap_Civics',   			'Civics'),
('RH_3_Cap_Techs',   			'Technologies'),
('RH_3_Cap_Buildings',   		'Buildings'),
('RH_3_Cap_Projects',   		'Projects'),
('RH_3_Cap_Yields',   			'Yields'),
('RH_3_Cap_PseudoYields',   	'PseudoYields'),
('RH_3_Cap_Operations', 		'AiOperationTypes'),
('RH_3_Cap_Settlement', 		'PlotEvaluations'),
('RH_3_Cap_Savings', 			'SavingTypes'),
('RH_3_Cap_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Comm'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Diplomacy'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Civics'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Techs'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Buildings'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Projects'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Yields'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_PseudoYields'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Operations'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Settlement'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Savings'),
('RH_STRATEGY_3_CAPITALS',   'RH_3_Cap_Scouts');

-- 4

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_4_Cap_Comm'),
('RH_4_Cap_Diplomacy'),
('RH_4_Cap_Civics'),
('RH_4_Cap_Techs'),
('RH_4_Cap_Buildings'),
('RH_4_Cap_Projects'),
('RH_4_Cap_Yields'),
('RH_4_Cap_PseudoYields'),
('RH_4_Cap_Operations'),
('RH_4_Cap_Settlement'),
('RH_4_Cap_Savings'),
('RH_4_Cap_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_4_Cap_Comm',   			'Commemorations'),
('RH_4_Cap_Diplomacy',   		'DiplomaticActions'),
('RH_4_Cap_Civics',   			'Civics'),
('RH_4_Cap_Techs',   			'Technologies'),
('RH_4_Cap_Buildings',   		'Buildings'),
('RH_4_Cap_Projects',   		'Projects'),
('RH_4_Cap_Yields',   			'Yields'),
('RH_4_Cap_PseudoYields',   	'PseudoYields'),
('RH_4_Cap_Operations', 		'AiOperationTypes'),
('RH_4_Cap_Settlement', 		'PlotEvaluations'),
('RH_4_Cap_Savings', 			'SavingTypes'),
('RH_4_Cap_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Comm'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Diplomacy'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Civics'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Techs'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Buildings'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Projects'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Yields'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_PseudoYields'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Operations'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Settlement'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Savings'),
('RH_STRATEGY_4_CAPITALS',   'RH_4_Cap_Scouts');





INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_2_Cap_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 10),
('RH_2_Cap_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 8),

('RH_2_Cap_PseudoYields', 'PSEUDOYIELD_CITY_BASE',  			 1, 2500),
('RH_2_Cap_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',  		 1, -40),
('RH_2_Cap_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',   1, -40), -- pvs 5, 8
('RH_2_Cap_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL',   1, -100),

('RH_2_Cap_Yields', 'YIELD_RH_FASCISM',   1, 375),
('RH_2_Cap_Yields', 'YIELD_RH_DEMOCRACY',   0, -75),

('RH_2_Cap_Operations', 'CITY_ASSAULT',   1, 1),

('RH_3_Cap_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 15),
('RH_3_Cap_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 8),
('RH_3_Cap_PseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   		1, 10),
('RH_3_Cap_PseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT',   1, 20),

('RH_3_Cap_PseudoYields', 'PSEUDOYIELD_CITY_BASE',   		1, 5000),
('RH_3_Cap_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',  	 1, -75),
('RH_3_Cap_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',   1, -75), -- pvs 5, 8
('RH_3_Cap_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL',   1, -100),

('RH_3_Cap_Yields', 'YIELD_RH_FASCISM',   1, 600),
('RH_3_Cap_Yields', 'YIELD_RH_DEMOCRACY',   0, -350),

('RH_3_Cap_Operations', 'CITY_ASSAULT',   1, 1),

('RH_4_Cap_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 15),
('RH_4_Cap_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 8),
('RH_4_Cap_PseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 15),
('RH_4_Cap_PseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT',   1, 15),

('RH_4_Cap_PseudoYields', 'PSEUDOYIELD_CITY_BASE',   1, 5000),
('RH_4_Cap_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',   1, -90),
('RH_4_Cap_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',   1, -90), -- pvs 5, 8
('RH_4_Cap_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL',   1, -100),

('RH_4_Cap_Yields', 'YIELD_RH_FASCISM',   1, 900),

('RH_4_Cap_Operations', 'CITY_ASSAULT',   1, 1);






