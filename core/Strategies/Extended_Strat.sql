

-- RH Extended Strat 1
-- Author: RomanHoliday
-- DateCreated: 1/19/2024 22:36:04 PM
-- Copyright 2024,© RomanHoliday, All rights reserved


INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('STRATEGY_ANCIENT_CHANGES_2',    						NULL, 1),
('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',    		NULL, 3),
('STRATEGY_MEDIEVAL_CHANGES_2_SCIENCE',    				NULL, 3),
('STRATEGY_RENAISSANCE_CHANGES_2_SCIENCE',    			NULL, 3),
('STRATEGY_INDUSTRIAL_CHANGES_2_SCIENCE',    				NULL, 3),
('STRATEGY_MODERN_CHANGES_2_SCIENCE',    					NULL, 2),
('STRATEGY_ATOMIC_CHANGES_2_SCIENCE',     				NULL, 2),
('STRATEGY_INFO_CHANGES_2_SCIENCE',       				NULL, 2),
('STRATEGY_ATOMIC_CHANGES_2',      						NULL, 1),
('STRATEGY_INFORMATION_CHANGES_2', 						NULL, 1),
('RH_STRATEGY_HIGH_DIFF_SCOUT_USES', 						NULL, 1),
('RH_STRATEGY_HIGH_DIFF_SETTLEMENT_2', 						NULL, 2);

-- not for city states
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('STRATEGY_ANCIENT_CHANGES_2',    		 				 'Is Not Major', 1),
('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',    		 'Is Not Major', 1),
('STRATEGY_MEDIEVAL_CHANGES_2_SCIENCE',     				 'Is Not Major', 1),
('STRATEGY_RENAISSANCE_CHANGES_2_SCIENCE',     			'Is Not Major', 1),
('STRATEGY_INDUSTRIAL_CHANGES_2_SCIENCE',     			'Is Not Major', 1),
('STRATEGY_MODERN_CHANGES_2_SCIENCE',     				 'Is Not Major', 1),
('STRATEGY_ATOMIC_CHANGES_2_SCIENCE',      			     'Is Not Major', 1),
('STRATEGY_INFO_CHANGES_2_SCIENCE',      					 'Is Not Major', 1),
('STRATEGY_ATOMIC_CHANGES_2',      						 'Is Not Major', 1),
('STRATEGY_INFORMATION_CHANGES_2', 						 'Is Not Major', 1),
('RH_STRATEGY_HIGH_DIFF_SCOUT_USES', 						'Is Not Major', 1),
('RH_STRATEGY_HIGH_DIFF_SETTLEMENT_2', 						'Is Not Major', 1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Disqualifier) VALUES
('RH_STRATEGY_HIGH_DIFF_SCOUT_USES',               'Handicap at or below',				 8,             1),
('RH_STRATEGY_HIGH_DIFF_SETTLEMENT_2',               'Handicap at or below',			 8,             1);

/*
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('STRATEGY_MEDIEVAL_CHANGES_2_SCIENCE',      'Has Great Works', 10, 1),
('STRATEGY_RENAISSANCE_CHANGES_2_SCIENCE',   'Has Great Works', 12, 1),
('STRATEGY_INDUSTRIAL_CHANGES_2_SCIENCE',    'Has Great Works', 15, 1),
('STRATEGY_MODERN_CHANGES_2_SCIENCE',      'Has Great Works', 21, 1),
('STRATEGY_MODERN_CHANGES_2_SCIENCE',      'Good Culture', 12, 1),
('STRATEGY_ATOMIC_CHANGES_2_SCIENCE',      'Has Great Works', 22, 1),
('STRATEGY_INFO_CHANGES_2_SCIENCE',      'Has Great Works', 24, 1);

-- double make sure to deactivate on next era
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier, ThresholdValue) VALUES
('STRATEGY_ANCIENT_CHANGES_2',     				'Is Classical', 1, 1),
('STRATEGY_CLASSICAL_CHANGES_2',     				'Is Medieval', 1, 1),
('STRATEGY_MEDIEVAL_CHANGES_2',     				'Is Renaissance', 1, 1),
('STRATEGY_RENAISSANCE_CHANGES_2',    			'Is Industrial', 1, 1),
('STRATEGY_INDUSTRIAL_CHANGES_2',     			'Is Modern', 1, 1),
('STRATEGY_MODERN_CHANGES_2',     				'Is Atomic', 1, 1),
('STRATEGY_ATOMIC_CHANGES_2',    					'Is Information', 1, 1);
-- Info doesn't need to deactive 

*/

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue) VALUES
('STRATEGY_ANCIENT_CHANGES_2',    						 'Is Ancient',     		NULL, 0), 

('STRATEGY_MEDIEVAL_CHANGES_2_SCIENCE',      				'Is Medieval', 			NULL, 0),
('STRATEGY_MEDIEVAL_CHANGES_2_SCIENCE',      				'Has Tech Lead',		 NULL, 35),
('STRATEGY_MEDIEVAL_CHANGES_2_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',      				'Is Classical',			 NULL, 1),
('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',      				'Is Medieval',			 NULL, 1),
--('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',      				'Is Renaissance',		 NULL, 1),
('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',      				'Is Ancient',		 	 NULL, 1),
('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',      				'Good Culture',		    NULL, 25), -- pvs Good Faith City, Prefer Spread Religion Dedication
('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',      				'Has Settle Spot',		  NULL, 0),

('RH_STRATEGY_HIGH_DIFF_SCOUT_USES',      						'Is Classical',			 NULL, 1),
('RH_STRATEGY_HIGH_DIFF_SCOUT_USES',      						'Is Renaissance',		 NULL, 1),
('RH_STRATEGY_HIGH_DIFF_SCOUT_USES',      						'Is Ancient',		 	 NULL, 1),

('STRATEGY_RENAISSANCE_CHANGES_2_SCIENCE',      				'Is Renaissance', 			NULL, 0),
('STRATEGY_RENAISSANCE_CHANGES_2_SCIENCE',      				'Has Tech Lead',		 NULL, 35),
('STRATEGY_RENAISSANCE_CHANGES_2_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_INDUSTRIAL_CHANGES_2_SCIENCE',      				'Is Industrial', 			NULL, 0),
('STRATEGY_INDUSTRIAL_CHANGES_2_SCIENCE',      				'Has Tech Lead',		 NULL, 35),
('STRATEGY_INDUSTRIAL_CHANGES_2_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_MODERN_CHANGES_2_SCIENCE',      				'Is Modern', 			NULL, 0),
('STRATEGY_MODERN_CHANGES_2_SCIENCE',      				'Has Tech Lead',		 NULL, 35),
('STRATEGY_ATOMIC_CHANGES_2_SCIENCE',      				'Is Atomic', 			NULL, 0),
('STRATEGY_ATOMIC_CHANGES_2_SCIENCE',      				'Has Tech Lead', 		NULL, 35),
('STRATEGY_ATOMIC_CHANGES_2_SCIENCE',      				'Is Atomic', 			NULL, 0),
('STRATEGY_ATOMIC_CHANGES_2_SCIENCE',      				'Has Tech Lead', 		NULL, 35),
('STRATEGY_INFO_CHANGES_2_SCIENCE',      					'Is Information', 		NULL, 0),
('STRATEGY_INFO_CHANGES_2_SCIENCE',      					'Has Tech Lead', 		NULL, 35),
('STRATEGY_ATOMIC_CHANGES_2',     						 'Is Atomic',      		NULL, 0), 
('STRATEGY_INFORMATION_CHANGES_2', 						'Is Information', 		NULL, 1), -- testing 1 to remain on

('RH_STRATEGY_HIGH_DIFF_SETTLEMENT_2',      				  'Cities Under Threat',		 NULL, 1),
('RH_STRATEGY_HIGH_DIFF_SETTLEMENT_2',     					'Has Settle Spot',      NULL, 0); -- Needs checking

--INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
--('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',    		'Is Classical',     		'AGENDA_WONDER_OBSESSED'), 
--('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY',    		'Has Agenda',     		'AGENDA_WONDER_OBSESSED');




INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('Monumentality_Commemorations'),
('Monumentality_Pseudos'),
('Monumentality_Yields');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('Monumentality_Commemorations', 			'Commemorations'),
('Monumentality_Pseudos', 					'PseudoYields'),
('Monumentality_Yields', 					'Yields');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY', 			'Monumentality_Commemorations'),
('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY', 			'Monumentality_Pseudos'),
('STRATEGY_CLASSICAL_CHANGES_MONUMENTALITY', 			'Monumentality_Yields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Monumentality_Commemorations', 'COMMEMORATION_INFRASTRUCTURE', 				1, 100),
--('Monumentality_Commemorations', 'COMMEMORATION_CULTURAL', 						0, 0),
--('Monumentality_Commemorations', 'COMMEMORATION_SCIENTIFIC', 					0, 0),
('Monumentality_Commemorations', 'COMMEMORATION_RELIGIOUS', 					0, 0),

('Monumentality_Pseudos', 					'PSEUDOYIELD_IMPROVEMENT', 			1, 15),
('Monumentality_Pseudos', 					'PSEUDOYIELD_UNIT_SETTLER', 		1, 20),

--('Monumentality_Pseudos', 					'PSEUDOYIELD_DISTRICT', 			1, 10), -- to get golden age?
('Monumentality_Yields', 					'YIELD_FAITH', 						1, 5);


/*
		<Row ListType="CultureVictoryFavoredCommemorations" Item="COMMEMORATION_CULTURAL" Favored="true"/>
		<Row ListType="CultureVictoryFavoredCommemorations" Item="COMMEMORATION_ECONOMIC" Favored="true"/>
		<Row ListType="CultureVictoryFavoredCommemorations" Item="COMMEMORATION_TOURISM" Favored="true"/>
		<Row ListType="MilitaryVictoryFavoredCommemorations" Item="COMMEMORATION_INDUSTRIAL" Favored="true"/>
		<Row ListType="MilitaryVictoryFavoredCommemorations" Item="COMMEMORATION_INFRASTRUCTURE" Favored="true"/>
		<Row ListType="MilitaryVictoryFavoredCommemorations" Item="COMMEMORATION_MILITARY" Favored="true"/>
		<Row ListType="ReligiousVictoryFavoredCommemorations" Item="COMMEMORATION_ESPIONAGE" Favored="true"/>
		<Row ListType="ReligiousVictoryFavoredCommemorations" Item="COMMEMORATION_INFRASTRUCTURE" Favored="true"/>
		<Row ListType="ReligiousVictoryFavoredCommemorations" Item="COMMEMORATION_RELIGIOUS" Favored="true"/>
		<Row ListType="ScienceVictoryFavoredCommemorations" Item="COMMEMORATION_AERONAUTICAL" Favored="true"/>
		<Row ListType="ScienceVictoryFavoredCommemorations" Item="COMMEMORATION_ECONOMIC" Favored="true"/>
		<Row ListType="ScienceVictoryFavoredCommemorations" Item="COMMEMORATION_SCIENTIFIC" Favored="true"/>
*/



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
--('Extra_High_Diff_Settlement_Commemorations'),
('Extra_High_Diff_Settlement_Operations'),
('Extra_High_Diff_Settlement_Pseudos'),
('Extra_High_Diff_Settlement_Yields');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
--('Extra_High_Diff_Settlement_Commemorations', 			'Commemorations'),
('Extra_High_Diff_Settlement_Operations', 				'AiOperationTypes'),
('Extra_High_Diff_Settlement_Pseudos', 				'PseudoYields'),
('Extra_High_Diff_Settlement_Yields', 					'Yields');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
--('RH_STRATEGY_HIGH_DIFF_SETTLEMENT_2', 			'Extra_High_Diff_Settlement_Commemorations'),
('RH_STRATEGY_HIGH_DIFF_SETTLEMENT_2', 			'Extra_High_Diff_Settlement_Operations'),
('RH_STRATEGY_HIGH_DIFF_SETTLEMENT_2', 			'Extra_High_Diff_Settlement_Pseudos'),
('RH_STRATEGY_HIGH_DIFF_SETTLEMENT_2', 			'Extra_High_Diff_Settlement_Yields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Extra_High_Diff_Settlement_Operations', 				'OP_SETTLE', 							1, 1),
('Extra_High_Diff_Settlement_Pseudos', 					'PSEUDOYIELD_UNIT_EXPLORER', 			1, 5),
('Extra_High_Diff_Settlement_Pseudos', 					'PSEUDOYIELD_UNIT_COMBAT', 				1, 5),
('Extra_High_Diff_Settlement_Pseudos', 					'PSEUDOYIELD_STANDING_ARMY_VALUE', 		1, 6),
('Extra_High_Diff_Settlement_Pseudos', 					'PSEUDOYIELD_STANDING_ARMY_NUMBER', 	1, 6),
('Extra_High_Diff_Settlement_Pseudos', 					'PSEUDOYIELD_UNIT_SETTLER', 			1, 200); -- pvs 100


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
--('Extra_High_Diff_ScoutUses_Commemorations'),
('Extra_High_Diff_ScoutUses_Pseudos'),
('Extra_High_Diff_ScoutUses_AIScoutUses'),
('Extra_High_Diff_ScoutUses_Yields');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
--('Extra_High_Diff_ScoutUses_Commemorations', 			'Commemorations'),
('Extra_High_Diff_ScoutUses_Pseudos', 				'PseudoYields'),
('Extra_High_Diff_ScoutUses_AIScoutUses', 				'AIScoutUses'),
('Extra_High_Diff_ScoutUses_Yields', 					'Yields');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
--('RH_STRATEGY_HIGH_DIFF_SCOUT_USES', 			'Extra_High_Diff_ScoutUses_Commemorations'),
('RH_STRATEGY_HIGH_DIFF_SCOUT_USES', 			'Extra_High_Diff_ScoutUses_Pseudos'),
('RH_STRATEGY_HIGH_DIFF_SCOUT_USES', 			'Extra_High_Diff_ScoutUses_AIScoutUses'),
('RH_STRATEGY_HIGH_DIFF_SCOUT_USES', 			'Extra_High_Diff_ScoutUses_Yields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Extra_High_Diff_ScoutUses_AIScoutUses',      'LAND_SCOUTS_PER_PRIMARY_REGION',   					1, 150),
('Extra_High_Diff_ScoutUses_AIScoutUses',      'LAND_SCOUTS_PER_SECONDARY_REGION',   				1, 100),
('Extra_High_Diff_ScoutUses_AIScoutUses',      'DEFAULT_LAND_SCOUTS',   							1, 150),
('Extra_High_Diff_ScoutUses_AIScoutUses',      'DEFAULT_NAVAL_SCOUTS',   							1, 150),
('Extra_High_Diff_ScoutUses_AIScoutUses',      'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',   				1, 150),

('Extra_High_Diff_ScoutUses_Pseudos', 					'PSEUDOYIELD_UNIT_COMBAT', 				1, 20),
('Extra_High_Diff_ScoutUses_Pseudos', 					'PSEUDOYIELD_UNIT_EXPLORER', 			1, 20);



INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_LEADS_DV',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_LEADS_DV',    		NULL, 2);


--UPDATE Strategies SET NumConditionsNeeded = '3' WHERE StrategyType="VICTORY_STRATEGY_DIPLOMATIC_VICTORY" AND VictoryType = 'VICTORY_DIPLOMATIC';

-- Diplo Strats


-- Doesn't Activate with below 3 old Conditions, testing just 1 condition

/*
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue) VALUES
('RH_STRATEGY_LEADS_DV',      				'Percentage Diplomatic Victory Points',			 null, 30), -- Testing 30 instead of 40?
('RH_STRATEGY_LEADS_DV',      				'Has Diplomatic Victory Points',				 null, 1),
('RH_STRATEGY_LEADS_DV',      				'Leads Diplomatic Victory Points',				 null, 1);
*/

--INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
--('RH_STRATEGY_LEADS_DV',      				'Percentage Diplomatic Victory Points',	    75), -- 15

--('RH_STRATEGY_LEADS_DV',      				'Leads Diplomatic Victory Points',			1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('RH_STRATEGY_LEADS_DV',      				'Has Diplomatic Victory Points', 		 '1'),
('RH_STRATEGY_LEADS_DV',      				'Leads Diplomatic Victory Points', 		 '1'),

('RH_STRATEGY_LEADS_DV',      				'Percentage Diplomatic Victory Points',		 '25'),
('RH_STRATEGY_LEADS_DV',      				'Percentage Diplomatic Victory Points',		 '60');





/*
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
--('RH_STRATEGY_LEADS_DV',    						 'Is Medieval',     		null),
('RH_STRATEGY_LEADS_DV',    						 'Is Renaissance',     		null),
('RH_STRATEGY_LEADS_DV',    						 'Is Industrial',     		null),
('RH_STRATEGY_LEADS_DV',    						 'Is Modern',     			null),
('RH_STRATEGY_LEADS_DV',    						 'Is Atomic',     			null),
('RH_STRATEGY_LEADS_DV',    						 'Is Information',     		null);
*/

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('RH_STRATEGY_LEADS_DV',      'Is Ancient', 					1, 1),
('RH_STRATEGY_LEADS_DV',      'Is Classical', 					1, 1);
--('RH_STRATEGY_LEADS_DV',      'Is Medieval', 					1, 1),

--('RH_STRATEGY_LEADS_DV',      'Lags Military', 					15, 1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_LEADS_DV',    		 				 'Is Not Major', 1);



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_Leads_Diplo_Diplomacy'),
('RH_Leads_Diplo_Civics'),
('RH_Leads_Diplo_Techs'),
('RH_Leads_Diplo_Buildings'),
('RH_Leads_Diplo_Projects'),
('RH_Leads_Diplo_Yields'),
('RH_Leads_Diplo_PseudoYields'),
('RH_Leads_Diplo_Operations'),
('RH_Leads_Diplo_Settlement'),
('RH_Leads_Diplo_Savings'),
('RH_Leads_Diplo_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_Leads_Diplo_Diplomacy',   			'DiplomaticActions'),
('RH_Leads_Diplo_Civics',   			'Civics'),
('RH_Leads_Diplo_Techs',   				'Technologies'),
('RH_Leads_Diplo_Buildings',   			'Buildings'),
('RH_Leads_Diplo_Projects',   			'Projects'),
('RH_Leads_Diplo_Yields',   			'Yields'),
('RH_Leads_Diplo_PseudoYields',   	'PseudoYields'),
('RH_Leads_Diplo_Operations', 		'AiOperationTypes'),
('RH_Leads_Diplo_Settlement', 		'PlotEvaluations'),
('RH_Leads_Diplo_Savings', 			'SavingTypes'),
('RH_Leads_Diplo_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Diplomacy'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Civics'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Techs'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Buildings'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Projects'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Yields'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_PseudoYields'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Operations'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Settlement'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Savings'),
('RH_STRATEGY_LEADS_DV',   'RH_Leads_Diplo_Scouts');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_Leads_Diplo_Buildings', 'BUILDING_CASTLE', 			1, 100), 
('RH_Leads_Diplo_Buildings', 'BUILDING_STAR_FORT',			1, 100), 
('RH_Leads_Diplo_Buildings', 'BUILDING_ORSZAGHAZ',      	1, 900), -- Important
('RH_Leads_Diplo_Buildings', 'BUILDING_MAHABODHI_TEMPLE',   1, 900), -- +2 DP Victory Points
('RH_Leads_Diplo_Buildings', 'BUILDING_POTALA_PALACE', 	    1, 900), -- +1
('RH_Leads_Diplo_Buildings', 'BUILDING_STATUE_LIBERTY',     1, 900), -- +4!! -- VERY VERY IMPORTANT
('RH_Leads_Diplo_Buildings', 'BUILDING_KILWA_KISIWANI',     1, 150),
('RH_Leads_Diplo_Buildings', 'BUILDING_COAL_POWER_PLANT',   0, -50), -- high pollution

('RH_Leads_Diplo_Buildings', 'BUILDING_CHANCERY', 1, 800), -- Important!!
('RH_Leads_Diplo_Buildings', 'BUILDING_CONSULATE', 1, 800),
-- Todo Diplo Quarter Stronger Preference Individual Tuning


('RH_Leads_Diplo_Projects', 'PROJECT_CARBON_RECAPTURE', 1, 9000), -- Reduces CO2 to potentially 0 and earns 30 diplo favor
('RH_Leads_Diplo_Projects', 'PROJECT_SEND_AID',         1, 9000), -- +2 for winning
('RH_Leads_Diplo_Projects', 'PROJECT_TRAIN_ATHLETES',   1, 9000), -- +1 dp for gold tier (highest score)

('RH_Leads_Diplo_Techs', 'TECH_ASTROLOGY',     1, 0), -- Potala Palace (1dp and diplo card)
('RH_Leads_Diplo_Techs', 'TECH_MACHINERY',     1, 0), -- Kilwa
('RH_Leads_Diplo_Techs', 'TECH_SEASTEADS',     1, 0), -- +1 DP Point

('RH_Leads_Diplo_Civics', 'CIVIC_CIVIL_SERVICE',     			1, 0),
('RH_Leads_Diplo_Civics', 'CIVIC_GLOBAL_WARMING_MITIGATION',     1, 0), -- +1 DP Point
('RH_Leads_Diplo_Civics', 'CIVIC_MERCANTILISM', 				1, 0),  -- Leads to Statue Liberty
('RH_Leads_Diplo_Civics', 'CIVIC_CIVIL_ENGINEERING', 			1, 100), -- Statue Liberty

('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_ALLIANCE',         1, 50),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_RENEW_ALLIANCE',   1, 0),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_PROPOSE_TRADE',   1, 0),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_DECLARE_FRIENDSHIP',   1, 0),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS',   1, 0),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SPY',   1, 0),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_OPEN_BORDERS',   1, 0),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_DECLARE_LIBERATION_WAR', 1, 60),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_DECLARE_PROTECTORATE_WAR', 1, 30),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_LIBERATE_CITY', 1, 50),
('RH_Leads_Diplo_Diplomacy', 'DIPLOACTION_DIPLOMATIC_DELEGATION', 1, 50),

('RH_Leads_Diplo_Yields', 'YIELD_RH_MONARCHY', 	1, 150),
('RH_Leads_Diplo_Yields', 'YIELD_RH_DIPLO', 	1, 900), -- pvs 400

('RH_Leads_Diplo_Yields', 'YIELD_RH_STATUE_LIBERTY', 	1, 					750),

('RH_Leads_Diplo_Yields', 'YIELD_RH_DIPLOVICTORY_BUFF', 	1, 225), -- Vote to Win

('RH_Leads_Diplo_Yields', 'YIELD_FAITH', 		1, 15),

('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_GPP_PROPHET',          1, 15), -- Pagodas -- BUILDING_MAHABODHI_TEMPLE
('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',     	1, 15),
('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',      	1, -5), -- Pollution Penalty

('RH_Leads_Diplo_PseudoYields', 		'PSEUDOYIELD_DIPLOMATIC_BONUS', 					1, 45), -- pvs 24, test 30, 45
('RH_Leads_Diplo_PseudoYields',			'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 				1, 35), 
('RH_Leads_Diplo_PseudoYields',			'PSEUDOYIELD_DIPLOMATIC_FAVOR',   					1, 150), -- pvs 125
('RH_Leads_Diplo_PseudoYields',			'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT',   			1, 800), -- pvs 200, 500, 900, 600

('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_UNIT_SPY', 			1, -15), 
('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 	1, -40), 
('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 			1, 10), 

('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_WONDER', 				1, 35), -- Diplomatic victory wonders
('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 			1, -25), -- base 820 early game
('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 		1, 10), -- base 60 pvs 12
('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 15), -- base 70

('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 	100), -- base -370 (minus diplo points for controlling one)
('RH_Leads_Diplo_PseudoYields', 'PSEUDOYIELD_UNIT_TRADE',       			1, 30),

('RH_Leads_Diplo_PseudoYields',			'PSEUDOYIELD_ENVIROMENT',   						1, 50),
('RH_Leads_Diplo_PseudoYields',			'PSEUDOYIELD_INFLUENCE',   							1, 100);


-- Diplo Strats





-- Lags Strategies



-- Lags Tech
-- Fails to work, even with legs tech Disqualifier at 66, trying Cities

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_LAGS_TECH',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_LAGS_TECH',    		NULL, 1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_LAGS_TECH',    		 'Is Not Major', 1);


/*
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
('RH_STRATEGY_LAGS_TECH',    						 'Is Medieval',     		null),
('RH_STRATEGY_LAGS_TECH',    						 'Is Renaissance',     		null),
('RH_STRATEGY_LAGS_TECH',    						 'Is Industrial',     		null),
('RH_STRATEGY_LAGS_TECH',    						 'Is Modern',     			null),
('RH_STRATEGY_LAGS_TECH',    						 'Is Atomic',     			null),
('RH_STRATEGY_LAGS_TECH',    						 'Is Information',     		null);
*/

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('RH_STRATEGY_LAGS_TECH',      'Is Ancient', 					1, 1),

--('RH_STRATEGY_LAGS_TECH',      'Lags Military', 					15, 1),
('RH_STRATEGY_LAGS_TECH',      'Has Tech Lead', 					50, 1); -- pvs 66
--('RH_STRATEGY_LAGS_TECH',      'Leads Score', 						20, 1); -- For different Purpose 


--INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
--('RH_STRATEGY_LAGS_TECH',    						 'Fewer Cities',     		1); -- Test, only works early game

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('RH_STRATEGY_LAGS_TECH',    						 'Lags Military',     		40); -- Trying something new



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_Lags_Tech_WC'),
('RH_Lags_Tech_Emergencies'),
('RH_Lags_Tech_Diplomacy'),
('RH_Lags_Tech_Civics'),
('RH_Lags_Tech_Techs'),
('RH_Lags_Tech_Buildings'),
('RH_Lags_Tech_Projects'),
('RH_Lags_Tech_Yields'),
('RH_Lags_Tech_PseudoYields'),
('RH_Lags_Tech_Operations'),
('RH_Lags_Tech_Settlement'),
('RH_Lags_Tech_Savings'),
('RH_Lags_Tech_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_Lags_Tech_WC',   				'Resolutions'),
('RH_Lags_Tech_Emergencies',   			'Discussions'),
('RH_Lags_Tech_Diplomacy',   			'DiplomaticActions'),
('RH_Lags_Tech_Civics',   			'Civics'),
('RH_Lags_Tech_Techs',   				'Technologies'),
('RH_Lags_Tech_Buildings',   			'Buildings'),
('RH_Lags_Tech_Projects',   			'Projects'),
('RH_Lags_Tech_Yields',   			'Yields'),
('RH_Lags_Tech_PseudoYields',   	'PseudoYields'),
('RH_Lags_Tech_Operations', 		'AiOperationTypes'),
('RH_Lags_Tech_Settlement', 		'PlotEvaluations'),
('RH_Lags_Tech_Savings', 			'SavingTypes'),
('RH_Lags_Tech_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_WC'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Emergencies'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Diplomacy'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Civics'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Techs'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Buildings'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Projects'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Yields'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_PseudoYields'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Operations'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Settlement'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Savings'),
('RH_STRATEGY_LAGS_TECH',   'RH_Lags_Tech_Scouts');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_Lags_Tech_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 			1, -25), 
('RH_Lags_Tech_PseudoYields', 'PSEUDOYIELD_UNIT_SPY', 			1, 500), -- pvs 20, 120, 135
('RH_Lags_Tech_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 		1, 10),
('RH_Lags_Tech_Yields', 'YIELD_RH_LAGS_TECH', 					1, 900), -- pvs 500, 800
('RH_Lags_Tech_Yields', 'YIELD_SCIENCE', 						1, 5), 

/*
('RH_Lags_Tech_Yields', 'YIELD_RH_ESPIONAGE_PACT_DOUBLE', 		1, 950), -- +2 Spy Op

('RH_Lags_Tech_Yields', 'YIELD_RH_PATRONAGE_BAN', 				1, 225), 

('RH_Lags_Tech_Yields', 'YIELD_RH_SOVEREIGNTY_BAN', 				1, 250), -- Ban City State
*/

/*
('RH_Lags_Tech_WC', 'WC_RES_GLOBAL_ENERGY_TREATY', 		 1, 50),
('RH_Lags_Tech_WC', 'WC_RES_TRADE_TREATY', 				 0, 0),
('RH_Lags_Tech_WC', 'WC_RES_ARMS_CONTROL',  			     0, 0),
('RH_Lags_Tech_WC', 'WC_RES_ESPIONAGE_PACT',  			     0, 0),
('RH_Lags_Tech_WC', 'WC_RES_PUBLIC_WORKS',  			     0, 0), -- Decrease Project Production
--('RH_Lags_Tech_WC', 'WC_RES_URBAN_DEVELOPMENT',  			 0, 0),
('RH_Lags_Tech_WC', 'WC_RES_SOVEREIGNTY',  			     0, 0), -- Ban science city state bonus etc
('RH_Lags_Tech_WC', 'WC_RES_PUBLIC_RELATIONS',  			 1, 0), -- Grievances to leader
('RH_Lags_Tech_WC', 'WC_RES_MILITARY_ADVISORY',  			 0, 0), -- Nerf Units
*/


-- Emergencies

('RH_Lags_Tech_Emergencies', 'WC_EMERGENCY_MILITARY_AID_REQUEST',  	1, 0),
('RH_Lags_Tech_Emergencies', 'WC_EMERGENCY_BACKSTAB',  				 1, 0),
('RH_Lags_Tech_Emergencies', 'WC_EMERGENCY_CLIMATE_ACCORDS',  		 1, 0),
('RH_Lags_Tech_Emergencies', 'WC_EMERGENCY_SPACE_STATION',  		 0, -90),
('RH_Lags_Tech_Emergencies', 'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',  	 0, 0),
('RH_Lags_Tech_Emergencies', 'WC_EMERGENCY_NUCLEAR',  				 1, 0);



--WC_EMERGENCY_REQUEST_AID



-- Lags Game


INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_LAGS_Game',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_LAGS_Game',    		NULL, 1);



INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('RH_STRATEGY_LAGS_Game',      'Fewer Cities', 					1);


/*
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
('RH_STRATEGY_LAGS_Game',    						 'Is Medieval',     		null),
('RH_STRATEGY_LAGS_Game',    						 'Is Renaissance',     		null),
('RH_STRATEGY_LAGS_Game',    						 'Is Industrial',     		null),
('RH_STRATEGY_LAGS_Game',    						 'Is Modern',     			null),
('RH_STRATEGY_LAGS_Game',    						 'Is Atomic',     			null),
('RH_STRATEGY_LAGS_Game',    						 'Is Information',     		null);
*/


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
--('RH_STRATEGY_LAGS_Game',      'Lags Military', 					15, 1),
('RH_STRATEGY_LAGS_Game',      'Has Tech Lead', 					50, 1),

('RH_STRATEGY_LAGS_Game',      'Good Culture', 					50, 1),
('RH_STRATEGY_LAGS_Game',      'Leads Score', 					10, 1); -- For different Purpose 


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_LAGS_Game',    		 				 'Is Not Major', 1);


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_Lags_Game_WC'),
('RH_Lags_Game_Emergencies'),
('RH_Lags_Game_Diplomacy'),
('RH_Lags_Game_Civics'),
('RH_Lags_Game_Cultures'),
('RH_Lags_Game_Buildings'),
('RH_Lags_Game_Projects'),
('RH_Lags_Game_Yields'),
('RH_Lags_Game_PseudoYields'),
('RH_Lags_Game_Operations'),
('RH_Lags_Game_Settlement'),
('RH_Lags_Game_Savings'),
('RH_Lags_Game_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_Lags_Game_WC',   				'Resolutions'),
('RH_Lags_Game_Emergencies',   			'Discussions'),
('RH_Lags_Game_Diplomacy',   			'DiplomaticActions'),
('RH_Lags_Game_Civics',   			'Civics'),
('RH_Lags_Game_Cultures',   				'Culturenologies'),
('RH_Lags_Game_Buildings',   			'Buildings'),
('RH_Lags_Game_Projects',   			'Projects'),
('RH_Lags_Game_Yields',   			'Yields'),
('RH_Lags_Game_PseudoYields',   	'PseudoYields'),
('RH_Lags_Game_Operations', 		'AiOperationTypes'),
('RH_Lags_Game_Settlement', 		'PlotEvaluations'),
('RH_Lags_Game_Savings', 			'SavingTypes'),
('RH_Lags_Game_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_WC'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Emergencies'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Diplomacy'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Civics'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Cultures'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Buildings'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Projects'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Yields'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_PseudoYields'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Operations'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Settlement'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Savings'),
('RH_STRATEGY_LAGS_Game',   'RH_Lags_Game_Scouts');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_Lags_Game_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 			1, -25), 

('RH_Lags_Game_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 				1, 10), 
('RH_Lags_Game_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 		1, 20), 

('RH_Lags_Game_PseudoYields', 'PSEUDOYIELD_UNIT_SPY', 			1, 400),

('RH_Lags_Game_PseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 			1, 20),

('RH_Lags_Game_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 			1, 8),

('RH_Lags_Game_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 		1, 5),

('RH_Lags_Game_Yields', 'YIELD_SCIENCE', 						1, 10), 

('RH_Lags_Game_Yields', 'YIELD_RH_DEMOCRACY', 				0, -25),

('RH_Lags_Game_Yields', 'YIELD_RH_NUCLEAR_PROGRAM', 			1, 850),

('RH_Lags_Game_Yields', 'YIELD_RH_ESPIONAGE_PACT_DOUBLE', 		1, 950), -- +2 Spy Op

('RH_Lags_Game_Yields', 'YIELD_RH_PATRONAGE_BAN', 				1, 350), -- Ban gp

('RH_Lags_Game_Yields', 'YIELD_RH_SOVEREIGNTY_BAN', 				1, 550), -- Ban City State



-- Emergencies

('RH_Lags_Game_Emergencies', 'WC_EMERGENCY_MILITARY_AID_REQUEST',  	1, 0),
('RH_Lags_Game_Emergencies', 'WC_EMERGENCY_BACKSTAB',  				 1, 0),
('RH_Lags_Game_Emergencies', 'WC_EMERGENCY_CLIMATE_ACCORDS',  		 1, 0),
('RH_Lags_Game_Emergencies', 'WC_EMERGENCY_SPACE_STATION',  		 0, -90),
('RH_Lags_Game_Emergencies', 'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',  	 0, 0),
('RH_Lags_Game_Emergencies', 'WC_EMERGENCY_NUCLEAR',  				 1, 0);






-- Aid Request Strat




INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_MIDDLE_DV',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_MIDDLE_DV',    		NULL, 1);



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

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue) VALUES
('RH_STRATEGY_MIDDLE_DV',      				'Percentage Diplomatic Victory Points',			 null, 50); -- 10 Points



/*
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
('RH_STRATEGY_MIDDLE_DV',    						 'Is Medieval',     		null),
('RH_STRATEGY_MIDDLE_DV',    						 'Is Renaissance',     		null),
('RH_STRATEGY_MIDDLE_DV',    						 'Is Industrial',     		null),
('RH_STRATEGY_MIDDLE_DV',    						 'Is Modern',     			null),
('RH_STRATEGY_MIDDLE_DV',    						 'Is Atomic',     			null),
('RH_STRATEGY_MIDDLE_DV',    						 'Is Information',     		null);
*/

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('RH_STRATEGY_MIDDLE_DV',      'Is Ancient', 						1, 1),
('RH_STRATEGY_MIDDLE_DV',      'Is Classical', 						1, 1),
('RH_STRATEGY_MIDDLE_DV',      'Is Medieval', 						1, 1),

('RH_STRATEGY_MIDDLE_DV',      'Lags Military', 					15, 1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_MIDDLE_DV',    		 				 'Is Not Major', 1);



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_Middle_Diplo_Diplomacy'),
('RH_Middle_Diplo_Civics'),
('RH_Middle_Diplo_Techs'),
('RH_Middle_Diplo_Buildings'),
('RH_Middle_Diplo_Projects'),
('RH_Middle_Diplo_Yields'),
('RH_Middle_Diplo_PseudoYields'),
('RH_Middle_Diplo_Operations'),
('RH_Middle_Diplo_Settlement'),
('RH_Middle_Diplo_Savings'),
('RH_Middle_Diplo_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_Middle_Diplo_Diplomacy',   			'DiplomaticActions'),
('RH_Middle_Diplo_Civics',   			'Civics'),
('RH_Middle_Diplo_Techs',   				'Technologies'),
('RH_Middle_Diplo_Buildings',   			'Buildings'),
('RH_Middle_Diplo_Projects',   			'Projects'),
('RH_Middle_Diplo_Yields',   			'Yields'),
('RH_Middle_Diplo_PseudoYields',   	'PseudoYields'),
('RH_Middle_Diplo_Operations', 		'AiOperationTypes'),
('RH_Middle_Diplo_Settlement', 		'PlotEvaluations'),
('RH_Middle_Diplo_Savings', 			'SavingTypes'),
('RH_Middle_Diplo_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Diplomacy'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Civics'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Techs'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Buildings'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Projects'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Yields'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_PseudoYields'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Operations'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Settlement'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Savings'),
('RH_STRATEGY_MIDDLE_DV',   'RH_Middle_Diplo_Scouts');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
/*
('RH_Middle_Diplo_Buildings', 'BUILDING_CASTLE', 			1, 100), 
('RH_Middle_Diplo_Buildings', 'BUILDING_STAR_FORT',			1, 100), 
('RH_Middle_Diplo_Buildings', 'BUILDING_ORSZAGHAZ',      	1, 900), -- Important
('RH_Middle_Diplo_Buildings', 'BUILDING_MAHABODHI_TEMPLE',   1, 900), -- +2 DP Victory Points
('RH_Middle_Diplo_Buildings', 'BUILDING_POTALA_PALACE', 	    1, 900), -- +1
('RH_Middle_Diplo_Buildings', 'BUILDING_STATUE_LIBERTY',     1, 900), -- +4!! -- VERY VERY IMPORTANT
('RH_Middle_Diplo_Buildings', 'BUILDING_KILWA_KISIWANI',     1, 150),
('RH_Middle_Diplo_Buildings', 'BUILDING_COAL_POWER_PLANT',   0, -50), -- high pollution

('RH_Middle_Diplo_Buildings', 'BUILDING_CHANCERY', 1, 200), -- Important!!
('RH_Middle_Diplo_Buildings', 'BUILDING_CONSULATE', 1, 200),
*/

--('RH_Middle_Diplo_Projects', 'PROJECT_CARBON_RECAPTURE', 1, 9000), -- Reduces CO2 to potentially 0 and earns 30 diplo favor
--('RH_Middle_Diplo_Projects', 'PROJECT_SEND_AID',         1,  100), -- +2 for winning
('RH_Middle_Diplo_Projects', 'PROJECT_TRAIN_ATHLETES',   1, 100), -- +1 dp for gold tier (highest score)

/*
('RH_Middle_Diplo_Techs', 'TECH_ASTROLOGY',     1, 0), -- Potala Palace (1dp and diplo card)
('RH_Middle_Diplo_Techs', 'TECH_MACHINERY',     1, 0), -- Kilwa
('RH_Middle_Diplo_Techs', 'TECH_SEASTEADS',     1, 0), -- +1 DP Point

('RH_Middle_Diplo_Civics', 'CIVIC_CIVIL_SERVICE',     			1, 0),
('RH_Middle_Diplo_Civics', 'CIVIC_GLOBAL_WARMING_MITIGATION',     1, 0), -- +1 DP Point
('RH_Middle_Diplo_Civics', 'CIVIC_MERCANTILISM', 				1, 0),  -- Leads to Statue Liberty
('RH_Middle_Diplo_Civics', 'CIVIC_CIVIL_ENGINEERING', 			1, 100), -- Statue Liberty
*/

/*
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_ALLIANCE',         1, 50),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_RENEW_ALLIANCE',   1, 0),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_PROPOSE_TRADE',   1, 0),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_DECLARE_FRIENDSHIP',   1, 0),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS',   1, 0),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SPY',   1, 0),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_OPEN_BORDERS',   1, 0),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_LIBERATE_CITY', 1, 50),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_DIPLOMATIC_DELEGATION', 1, 50),
*/

('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_DECLARE_LIBERATION_WAR', 1, 60),
('RH_Middle_Diplo_Diplomacy', 'DIPLOACTION_DECLARE_PROTECTORATE_WAR', 1, 30),
('RH_Middle_Diplo_Yields', 'YIELD_RH_DIPLO', 			1, 					40),
('RH_Middle_Diplo_Yields', 'YIELD_RH_STATUE_LIBERTY', 	1, 					40),

('RH_Middle_Diplo_Yields', 'YIELD_RH_DIPLOVICTORY_BUFF', 			1, 75), -- Vote to Win

--('RH_Middle_Diplo_PseudoYields', 'PSEUDOYIELD_GPP_PROPHET',          1, -25),
('RH_Middle_Diplo_PseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',     	1, 5),
('RH_Middle_Diplo_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 	1, 2), 
('RH_Middle_Diplo_PseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 2), 

('RH_Middle_Diplo_PseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 	1, -10), 
('RH_Middle_Diplo_PseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 			1, 10), 

('RH_Middle_Diplo_PseudoYields', 'PSEUDOYIELD_WONDER', 1, 10), -- Dv wonders

('RH_Middle_Diplo_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 	50), -- base -370 (minus diplo points for controlling one)
('RH_Middle_Diplo_PseudoYields', 'PSEUDOYIELD_UNIT_TRADE',       			1, 30),

('RH_Middle_Diplo_PseudoYields',			'PSEUDOYIELD_ENVIROMENT',   						1, 20),
('RH_Middle_Diplo_PseudoYields',			'PSEUDOYIELD_DIPLOMATIC_FAVOR',   					1, 15),
('RH_Middle_Diplo_PseudoYields',			'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT',   			1, 15),
('RH_Middle_Diplo_PseudoYields',			'PSEUDOYIELD_INFLUENCE',   							1, 10);








--


INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_AUDIENCE_TEST',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_AUDIENCE_TEST',    		NULL, 1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('RH_STRATEGY_AUDIENCE_TEST',      				'Fewer Cities',	    1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('RH_STRATEGY_AUDIENCE_TEST',      'Has Settle Spot', 						0, 1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_AUDIENCE_TEST',    		 				 'Is Not Major', 1);




INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_Audience_Test_Diplomacy'),
('RH_Audience_Test_Civics'),
('RH_Audience_Test_Techs'),
('RH_Audience_Test_Buildings'),
('RH_Audience_Test_Projects'),
('RH_Audience_Test_Yields'),
('RH_Audience_Test_PseudoYields'),
('RH_Audience_Test_Operations'),
('RH_Audience_Test_Settlement'),
('RH_Audience_Test_Savings'),
('RH_Audience_Test_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_Audience_Test_Diplomacy',   			'DiplomaticActions'),
('RH_Audience_Test_Civics',   			'Civics'),
('RH_Audience_Test_Techs',   				'Technologies'),
('RH_Audience_Test_Buildings',   			'Buildings'),
('RH_Audience_Test_Projects',   			'Projects'),
('RH_Audience_Test_Yields',   			'Yields'),
('RH_Audience_Test_PseudoYields',   	'PseudoYields'),
('RH_Audience_Test_Operations', 		'AiOperationTypes'),
('RH_Audience_Test_Settlement', 		'PlotEvaluations'),
('RH_Audience_Test_Savings', 			'SavingTypes'),
('RH_Audience_Test_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Diplomacy'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Civics'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Techs'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Buildings'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Projects'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Yields'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_PseudoYields'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Operations'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Settlement'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Savings'),
('RH_STRATEGY_AUDIENCE_TEST',   'RH_Audience_Test_Scouts');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('RH_Audience_Test_Yields', 'YIELD_FOOD', 										1, 15), 
('RH_Audience_Test_Yields', 'YIELD_RH_HAPPINESS_BUILDING', 						1, 40), 


('RH_Audience_Test_PseudoYields', 'PSEUDOYIELD_GOVERNOR', 						1, 35), 


('RH_Audience_Test_Buildings', 'BUILDING_GOV_TALL', 			1, 100), 
('RH_Audience_Test_Buildings', 'BUILDING_GOV_WIDE',				0, -50), 
('RH_Audience_Test_Buildings', 'BUILDING_GOV_CONQUEST',      	0, -50);












-- RL Rush Test


INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_RL_RUSH',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_RL_RUSH',    		NULL, 1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('RH_STRATEGY_RL_RUSH',      				'Good Faith City',	    1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('RH_STRATEGY_RL_RUSH',      'Is Medieval', 						0, 1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_RL_RUSH',    		 				 'Is Not Major', 1);



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_RL_RUSH_Diplomacy'),
('RH_RL_RUSH_Civics'),
('RH_RL_RUSH_Techs'),
('RH_RL_RUSH_Buildings'),
('RH_RL_RUSH_Projects'),
('RH_RL_RUSH_Yields'),
('RH_RL_RUSH_PseudoYields'),
('RH_RL_RUSH_Operations'),
('RH_RL_RUSH_Settlement'),
('RH_RL_RUSH_Savings'),
('RH_RL_RUSH_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_RL_RUSH_Diplomacy',   			'DiplomaticActions'),
('RH_RL_RUSH_Civics',   			'Civics'),
('RH_RL_RUSH_Techs',   				'Technologies'),
('RH_RL_RUSH_Buildings',   			'Buildings'),
('RH_RL_RUSH_Projects',   			'Projects'),
('RH_RL_RUSH_Yields',   			'Yields'),
('RH_RL_RUSH_PseudoYields',   	'PseudoYields'),
('RH_RL_RUSH_Operations', 		'AiOperationTypes'),
('RH_RL_RUSH_Settlement', 		'PlotEvaluations'),
('RH_RL_RUSH_Savings', 			'SavingTypes'),
('RH_RL_RUSH_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Diplomacy'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Civics'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Techs'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Buildings'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Projects'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Yields'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_PseudoYields'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Operations'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Settlement'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Savings'),
('RH_STRATEGY_RL_RUSH',   'RH_RL_RUSH_Scouts');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('RH_RL_RUSH_Yields', 'YIELD_FAITH', 											1, 50), 

('RH_RL_RUSH_PseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 							1, 50), 
('RH_RL_RUSH_PseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 			1, 100), 
('RH_RL_RUSH_PseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 						1, 100);







-- RL Expansion Test


INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_RL_EXPANSION',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_RL_EXPANSION',    		NULL, 3);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('RH_STRATEGY_RL_EXPANSION',      				'Founded Religion',	   		 null),
('RH_STRATEGY_RL_EXPANSION',      				'Good Faith City',	   		 6),
('RH_STRATEGY_RL_EXPANSION',      				'Unconverted Cities',	     6);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_RL_EXPANSION',    		 				 'Is Not Major', 1);


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_RL_EXPANSION_Diplomacy'),
('RH_RL_EXPANSION_Civics'),
('RH_RL_EXPANSION_Techs'),
('RH_RL_EXPANSION_Buildings'),
('RH_RL_EXPANSION_Projects'),
('RH_RL_EXPANSION_Yields'),
('RH_RL_EXPANSION_PseudoYields'),
('RH_RL_EXPANSION_Operations'),
('RH_RL_EXPANSION_Settlement'),
('RH_RL_EXPANSION_Savings'),
('RH_RL_EXPANSION_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_RL_EXPANSION_Diplomacy',   			'DiplomaticActions'),
('RH_RL_EXPANSION_Civics',   			'Civics'),
('RH_RL_EXPANSION_Techs',   				'Technologies'),
('RH_RL_EXPANSION_Buildings',   			'Buildings'),
('RH_RL_EXPANSION_Projects',   			'Projects'),
('RH_RL_EXPANSION_Yields',   			'Yields'),
('RH_RL_EXPANSION_PseudoYields',   	'PseudoYields'),
('RH_RL_EXPANSION_Operations', 		'AiOperationTypes'),
('RH_RL_EXPANSION_Settlement', 		'PlotEvaluations'),
('RH_RL_EXPANSION_Savings', 			'SavingTypes'),
('RH_RL_EXPANSION_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Diplomacy'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Civics'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Techs'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Buildings'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Projects'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Yields'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_PseudoYields'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Operations'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Settlement'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Savings'),
('RH_STRATEGY_RL_EXPANSION',   'RH_RL_EXPANSION_Scouts');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('RH_RL_EXPANSION_Yields', 'YIELD_FAITH', 											1, 50), 
('RH_RL_EXPANSION_Yields', 'YIELD_RH_SPREAD_RELIGION', 								1, 500), 

('RH_RL_EXPANSION_PseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 						1, 50), 
('RH_RL_EXPANSION_PseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 			1, 100), 
('RH_RL_EXPANSION_PseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 						1, 100);




-- RL Under Heavy Attack Test

-- Tested and Working

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_UNDER_HEAVY_ATTACK',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_UNDER_HEAVY_ATTACK',    		NULL, 1);


INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('RH_STRATEGY_UNDER_HEAVY_ATTACK',      'Cities Under Threat', 					1, 1),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',      'Major Civ Wars', 						1, 1),

('RH_STRATEGY_UNDER_HEAVY_ATTACK',      'Has Tech Lead', 						15, 1), -- Don't if in Lead

('RH_STRATEGY_UNDER_HEAVY_ATTACK',      'Leads Score', 							10, 1);




INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue) VALUES
('RH_STRATEGY_UNDER_HEAVY_ATTACK',      				'Lags Military',	     45);

--('RH_STRATEGY_UNDER_HEAVY_ATTACK',      				'Cities Under Threat',	     2),
--('RH_STRATEGY_UNDER_HEAVY_ATTACK',      				'Cities Under Threat',	     3),
--('RH_STRATEGY_UNDER_HEAVY_ATTACK',      				'Cities Under Threat',	     4),
--('RH_STRATEGY_UNDER_HEAVY_ATTACK',      				'Cities Under Threat',	     5);


--INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
--('RH_STRATEGY_UNDER_HEAVY_ATTACK',    		 				 'Is Not Major', 1);


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_UNDER_HEAVY_ATTACK_Diplomacy'),
('RH_UNDER_HEAVY_ATTACK_Civics'),
('RH_UNDER_HEAVY_ATTACK_Techs'),
('RH_UNDER_HEAVY_ATTACK_Buildings'),
('RH_UNDER_HEAVY_ATTACK_Projects'),
('RH_UNDER_HEAVY_ATTACK_Yields'),
('RH_UNDER_HEAVY_ATTACK_PseudoYields'),
('RH_UNDER_HEAVY_ATTACK_Operations'),
('RH_UNDER_HEAVY_ATTACK_Settlement'),
('RH_UNDER_HEAVY_ATTACK_Savings'),
('RH_UNDER_HEAVY_ATTACK_Scouts'),
('RH_UNDER_HEAVY_ATTACK_Units'),       
('RH_UNDER_HEAVY_ATTACK_UnitBuilds'),  
('RH_UNDER_HEAVY_ATTACK_Districts');   -- New Entry



INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_UNDER_HEAVY_ATTACK_Diplomacy',   			'DiplomaticActions'),
('RH_UNDER_HEAVY_ATTACK_Civics',   				'Civics'),
('RH_UNDER_HEAVY_ATTACK_Techs',   				'Technologies'),
('RH_UNDER_HEAVY_ATTACK_Buildings',   			'Buildings'),
('RH_UNDER_HEAVY_ATTACK_Projects',   			'Projects'),
('RH_UNDER_HEAVY_ATTACK_Yields',   				'Yields'),
('RH_UNDER_HEAVY_ATTACK_PseudoYields',   		'PseudoYields'),
('RH_UNDER_HEAVY_ATTACK_Operations', 			'AiOperationTypes'),
('RH_UNDER_HEAVY_ATTACK_Settlement', 			'PlotEvaluations'),
('RH_UNDER_HEAVY_ATTACK_Savings', 				'SavingTypes'),
('RH_UNDER_HEAVY_ATTACK_Scouts', 				'AIScoutUses'),
('RH_UNDER_HEAVY_ATTACK_Units',     			'Units'),       
('RH_UNDER_HEAVY_ATTACK_UnitBuilds', 			'UnitBuilds'),  
('RH_UNDER_HEAVY_ATTACK_Districts', 			'Districts');   -- New Entry



INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Diplomacy'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Civics'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Techs'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Buildings'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Projects'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Yields'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_PseudoYields'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Operations'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Settlement'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Savings'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Scouts'),
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Units'),       
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_UnitBuilds'),  
('RH_STRATEGY_UNDER_HEAVY_ATTACK',   'RH_UNDER_HEAVY_ATTACK_Districts');   -- New Entry



REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('RH_UNDER_HEAVY_ATTACK_Settlement', 'Nearest Friendly City', 	0, -8, NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'),
('RH_UNDER_HEAVY_ATTACK_Settlement', 'Resource Class', 			0, 5, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_UNDER_HEAVY_ATTACK_Operations', 'OP_RH_DEFENSE_HP', 						1, 1); -- 3 in Total


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_RH_MILITARY_PRODUCTION', 						1, 850), 
('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_RH_NUCLEAR', 									1, 50), 
('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_RH_UNDER_ATTACK', 								1, 990), 
('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_RH_AT_WAR', 									1, 300), 
('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_RH_PRODUCTION', 								1, 35);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_SCIENCE', 								 -10),

('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_CULTURE', 						 		 -40),
('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_FOOD', 						 			 -75),
('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_FAITH', 								 -35),
('RH_UNDER_HEAVY_ATTACK_Yields', 'YIELD_GOLD', 									 -10);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item,  Favored,  Value) VALUES
('RH_UNDER_HEAVY_ATTACK_Districts', 'DISTRICT_ENCAMPMENT', 1, 50),
('RH_UNDER_HEAVY_ATTACK_Districts', 'DISTRICT_AERODROME', 1,  0);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES

('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_ARCHER', 95), 
('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_CROSSBOWMAN', 95),
('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_FIELD_CANNON', 95),
('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_KNIGHT',  15),
('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_TANK', 	15);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value, Favored) VALUES

('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_SETTLER',			 -100, 0), 

('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_ARTILLERY', -75, 		  0),
('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_ROCKET_ARTILLERY', -75, 0),
('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_TREBUCHET', -100, 	  0),
('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_BOMBARD', -100, 		  0),
('RH_UNDER_HEAVY_ATTACK_Units', 'UNIT_CATAPULT', -100, 		  0);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value, Favored) VALUES
('RH_UNDER_HEAVY_ATTACK_UnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 20, 1),
('RH_UNDER_HEAVY_ATTACK_UnitBuilds', 'PROMOTION_CLASS_RANGED', 75,       1),
('RH_UNDER_HEAVY_ATTACK_UnitBuilds', 'PROMOTION_CLASS_SIEGE', -100,      0),
('RH_UNDER_HEAVY_ATTACK_UnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 20,   1);



INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_BANKING', 0, -500),
('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_COMPUTERS', 0, -500),
('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_ECONOMICS', 0, -500),

('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_ELECTRICITY', 0, -500),
('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_ASTROLOGY', 0, -500),
('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_BUTTRESS', 0, -500),
('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_FLIGHT', 0, -500),
('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_SANITATION', 0, -500),
('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_EDUCATION', 0, -500),
('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_MATHEMATICS', 0, -500),
--('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_SATELLITES', 0, -500),

('RH_UNDER_HEAVY_ATTACK_Techs', 'TECH_TELECOMMUNICATIONS', 0, -500);



INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RH_UNDER_HEAVY_ATTACK_Yields', YieldType, 0, -95
FROM Yields     
WHERE YieldType LIKE 'RH_%'
AND YieldType NOT IN (
    'YIELD_RH_CHARIOT',
    'YIELD_RH_MILITARY_PRODUCTION',
    'YIELD_RH_MILITARY_ADV',
    'YIELD_RH_NUCLEAR',
    'YIELD_RH_UNDER_ATTACK',
    'YIELD_RH_AT_WAR',
    'YIELD_RH_PRODUCTION'
);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_DISTRICT', 						0, -75),
('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_GOVERNOR', 						0, -75),
('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_INFLUENCE', 					0, -40),
('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 					0, -40);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 						1, 27), 
('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 						1, 15), 

('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 								0, -100), 

('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 								0, -75), 

('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 								1, 150), 
('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 							1, 25), 

('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 					0, -75), 

('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 					0, -50), 
('RH_UNDER_HEAVY_ATTACK_PseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 							0, -40);


