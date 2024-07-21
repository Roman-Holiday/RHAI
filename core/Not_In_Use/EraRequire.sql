

/*
INSERT INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
-- Era Requirement Creation
('PLAYER_AT_CLASSICAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_MEDIEVAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_RENAISSANCE_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_INDUSTRIAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('NOT_AT_INDUSTRIAL_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('PLAYER_AT_MODERN_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_ATOMIC_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('NOT_AT_ATOMIC_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 1),
('PLAYER_AT_INFO_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),
('PLAYER_AT_FUTURE_ERA', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0),

('REQUIRES_KING', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_EMPEROR', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_IMMORTAL', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_DEITY', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0),
('REQUIRES_NOT_DEITY', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 1);


INSERT INTO RequirementArguments (RequirementId, Name, Value) VALUES
-- Eras
('PLAYER_AT_CLASSICAL_ERA', 'EraType', 'ERA_CLASSICAL'),
('PLAYER_AT_MEDIEVAL_ERA', 'EraType', 'ERA_MEDIEVAL'),
('PLAYER_AT_RENAISSANCE_ERA', 'EraType', 'ERA_RENAISSANCE'),
('PLAYER_AT_INDUSTRIAL_ERA', 'EraType', 'ERA_INDUSTRIAL'),
('NOT_AT_INDUSTRIAL_ERA', 'EraType', 'ERA_INDUSTRIAL'),
('PLAYER_AT_MODERN_ERA', 'EraType', 'ERA_MODERN'),
('PLAYER_AT_ATOMIC_ERA', 'EraType', 'ERA_ATOMIC'),
('NOT_AT_ATOMIC_ERA', 'EraType', 'ERA_ATOMIC'),
('PLAYER_AT_INFO_ERA', 'EraType', 'ERA_INFORMATION'),
('PLAYER_AT_FUTURE_ERA', 'EraType', 'ERA_FUTURE'),

('REQUIRES_KING', 'Handicap', 'DIFFICULTY_KING'),
('REQUIRES_EMPEROR', 'Handicap', 'DIFFICULTY_EMPEROR'),
('REQUIRES_IMMORTAL', 'Handicap', 'DIFFICULTY_IMMORTAL'),
('REQUIRES_DEITY', 'Handicap', 'DIFFICULTY_DEITY'),
('REQUIRES_NOT_DEITY', 'Handicap', 'DIFFICULTY_DEITY');
*/




/*


-- Lags Diplo



INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_LAGS_DIPLO',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_LAGS_DIPLO',    		NULL, 2);


-- Lags Diplo Strats

/*
	<Strategies>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" VictoryType="VICTORY_DIPLOMATIC" NumConditionsNeeded="2"/>
	</Strategies>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" ConditionFunction="Has Diplomatic Victory Points" ThresholdValue="1"/>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" ConditionFunction="Leads Diplomatic Victory Points" ThresholdValue="1"/>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" ConditionFunction="Percentage Diplomatic Victory Points" ThresholdValue="25"/>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" ConditionFunction="Percentage Diplomatic Victory Points" ThresholdValue="60" Exclusive="true"/>
		<Row StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" ConditionFunction="Is Not Major" Disqualifier="true"/>
*/
/*

--INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue) VALUES
--('RH_STRATEGY_LAGS_DIPLO',      				'Percentage Diplomatic Victory Points',			 null, -40); --test

-- Could Eventually do per Era?

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue, Forbidden) VALUES
('RH_STRATEGY_LAGS_DIPLO',      				'Leads Diplomatic Victory Points',				 null, 1, 1),

('RH_STRATEGY_LAGS_DIPLO',      				'Percentage Diplomatic Victory Points',				 null, 1, 25); -- <=4 Points

--('RH_STRATEGY_LAGS_DIPLO',      				'Leads Score', 									null,	15, 1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
--('RH_STRATEGY_LAGS_DIPLO',    						 'Is Medieval',     		null),
--('RH_STRATEGY_LAGS_DIPLO',    						 'Is Renaissance',     		null),
('RH_STRATEGY_LAGS_DIPLO',    						 'Is Industrial',     		null),
('RH_STRATEGY_LAGS_DIPLO',    						 'Is Modern',     			null),
('RH_STRATEGY_LAGS_DIPLO',    						 'Is Atomic',     			null),
('RH_STRATEGY_LAGS_DIPLO',    						 'Is Information',     		null);


/*
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
--('RH_STRATEGY_LAGS_DIPLO',      'Lags Military', 					15, 1),
('RH_STRATEGY_LAGS_DIPLO',      'Has Tech Lead', 					60, 1),
('RH_STRATEGY_LAGS_DIPLO',      'Leads Score', 						60, 1);
*/

/*
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_LAGS_DIPLO',    		 				 'Is Not Major', 1);


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_Lags_Diplo_WC'),
('RH_Lags_Diplo_Emergencies'),
('RH_Lags_Diplo_Diplomacy'),
('RH_Lags_Diplo_Civics'),
('RH_Lags_Diplo_Techs'),
('RH_Lags_Diplo_Buildings'),
('RH_Lags_Diplo_Projects'),
('RH_Lags_Diplo_Yields'),
('RH_Lags_Diplo_PseudoYields'),
('RH_Lags_Diplo_Operations'),
('RH_Lags_Diplo_Settlement'),
('RH_Lags_Diplo_Savings'),
('RH_Lags_Diplo_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_Lags_Diplo_WC',   				'Resolutions'),
('RH_Lags_Diplo_Emergencies',   			'Discussions'),
('RH_Lags_Diplo_Diplomacy',   			'DiplomaticActions'),
('RH_Lags_Diplo_Civics',   			'Civics'),
('RH_Lags_Diplo_Techs',   				'Technologies'),
('RH_Lags_Diplo_Buildings',   			'Buildings'),
('RH_Lags_Diplo_Projects',   			'Projects'),
('RH_Lags_Diplo_Yields',   			'Yields'),
('RH_Lags_Diplo_PseudoYields',   	'PseudoYields'),
('RH_Lags_Diplo_Operations', 		'AiOperationTypes'),
('RH_Lags_Diplo_Settlement', 		'PlotEvaluations'),
('RH_Lags_Diplo_Savings', 			'SavingTypes'),
('RH_Lags_Diplo_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_WC'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Emergencies'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Diplomacy'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Civics'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Techs'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Buildings'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Projects'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Yields'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_PseudoYields'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Operations'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Settlement'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Savings'),
('RH_STRATEGY_LAGS_DIPLO',   'RH_Lags_Diplo_Scouts');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_Lags_Diplo_Yields', 'YIELD_RH_DIPLO', 										0, -200), 

('RH_Lags_Diplo_Buildings', 'BUILDING_ORSZAGHAZ',      		0, 0), 
('RH_Lags_Diplo_Buildings', 'BUILDING_MAHABODHI_TEMPLE',    0, 0), -- +2 DP Victory Points
--('RH_Leads_Diplo_Buildings', 'BUILDING_POTALA_PALACE', 	    0, 0), -- +1
('RH_Lags_Diplo_Buildings', 'BUILDING_STATUE_LIBERTY',      0, 0), 

('RH_Lags_Diplo_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 					0, -25), 
('RH_Lags_Diplo_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 			0, -85), 
('RH_Lags_Diplo_PseudoYields', 'PSEUDOYIELD_INFLUENCE', 						1, -15),
('RH_Lags_Diplo_Emergencies', 'WC_EMERGENCY_REQUEST_AID',  						 0, 0), -- Don't Give the diplo points away
('RH_Lags_Diplo_Emergencies', 'WC_EMERGENCY_CLIMATE_ACCORDS',  					0, 0), -- Don't Give the diplo points away
('RH_Lags_Diplo_Emergencies', 'WC_EMERGENCY_NOBEL_PRIZE_PEACE',  				0, 0); -- Likely Low Favour


/*
-- WC_EMERGENCY_MILITARY_AID_REQUEST

('RH_Lags_Diplo_WC', 'WC_RES_GLOBAL_ENERGY_TREATY', 		 1, 50),
('RH_Lags_Diplo_WC', 'WC_RES_TRADE_TREATY', 				 0, 0),
('RH_Lags_Diplo_WC', 'WC_RES_ARMS_CONTROL',  			     0, 0),
('RH_Lags_Diplo_WC', 'WC_RES_ESPIONAGE_PACT',  			     0, 0),
('RH_Lags_Diplo_WC', 'WC_RES_PUBLIC_WORKS',  			     0, 0), -- Decrease Project Production
--('RH_Lags_Diplo_WC', 'WC_RES_URBAN_DEVELOPMENT',  			 0, 0),
('RH_Lags_Diplo_WC', 'WC_RES_SOVEREIGNTY',  			     0, 0), -- Ban science city state bonus etc
('RH_Lags_Diplo_WC', 'WC_RES_PUBLIC_RELATIONS',  			 1, 0), -- Grievances to leader
('RH_Lags_Diplo_WC', 'WC_RES_MILITARY_ADVISORY',  			 0, 0), -- Nerf Units

-- Emergencies


('RH_Lags_Diplo_Emergencies', 'WC_EMERGENCY_BACKSTAB',  				 1, 0),
('RH_Lags_Diplo_Emergencies', 'WC_EMERGENCY_CLIMATE_ACCORDS',  		 1, 0),
('RH_Lags_Diplo_Emergencies', 'WC_EMERGENCY_SPACE_STATION',  		 0, -90),
('RH_Lags_Diplo_Emergencies', 'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',  	 0, 0),
('RH_Lags_Diplo_Emergencies', 'WC_EMERGENCY_NUCLEAR',  				 1, 0);
*/






-- Todo Elenanor of Aquitane Remove gov +1

--AITargetChooser="SpyOperationType"


-- 			('AI_SHRINE_MOD',	'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 	'PLAYER_IS_AI'),


