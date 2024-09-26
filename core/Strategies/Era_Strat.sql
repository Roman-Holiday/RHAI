
--------------------------------------------------------------------------------------------------------------------------
-- Author: RomanHoliday
-- RH Era Strategy Improvements!
--------------------------------------------------------------------------------------------------------------------------

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('ClassicalPseudoYields'),
('ClassicalOperations'),
('ClassicalSettlement'),
('ClassicalSavings'),
('ClassicalScouts'),
('ClassicalDiplo'),
('ClassicalTechs'),
('ClassicalImprovements'),

('Classical_Science_PseudoYields'),
('Classical_Science_Districts'),
('Classical_Science_Yields'),
('Classical_Science_Projects'),

('MedievalPseudoYields'),
('RenaissancePseudoYields'),
('IndustrialPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('ClassicalPseudoYields',   	'PseudoYields'),
('ClassicalOperations', 		'AiOperationTypes'),
('ClassicalSettlement', 		'PlotEvaluations'),
('ClassicalSavings', 			'SavingTypes'),
('ClassicalScouts', 			'AIScoutUses'),
('ClassicalDiplo', 				'DiplomaticActions'),
('ClassicalTechs', 				'Technologies'),
('ClassicalImprovements', 		'Improvements'),

('Classical_Science_PseudoYields',   	'PseudoYields'),
('Classical_Science_Districts', 		'Districts'),
('Classical_Science_Yields', 			'Yields'),
('Classical_Science_Projects', 			'Projects'),

('MedievalPseudoYields',    	'PseudoYields'),
('RenaissancePseudoYields', 	'PseudoYields'),
('IndustrialPseudoYields',  	'PseudoYields');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalPseudoYields'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalOperations'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalSettlement'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalSavings'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalScouts'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalTechs'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalDiplo'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalImprovements'),


('STRATEGY_CLASSICAL_CHANGES_SCIENCE',   'Classical_Science_PseudoYields'),
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',   'Classical_Science_Districts'),
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',   'Classical_Science_Yields'),
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',   'Classical_Science_Projects'),

('STRATEGY_MEDIEVAL_CHANGES',    'MedievalPseudoYields'),
('STRATEGY_RENAISSANCE_CHANGES', 'RenaissancePseudoYields'),
('STRATEGY_INDUSTRIAL_CHANGES',  'IndustrialPseudoYields');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES 
('STRATEGY_MEDIEVAL_CHANGES', 'MedievalSettlements');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('STRATEGY_ANCIENT_CHANGES',     								'KIND_VICTORY_STRATEGY'), 
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',     						'KIND_VICTORY_STRATEGY'), 
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',     				'KIND_VICTORY_STRATEGY'),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',     				    	'KIND_VICTORY_STRATEGY'),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',     					'KIND_VICTORY_STRATEGY'),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',     					'KIND_VICTORY_STRATEGY'),
('STRATEGY_MODERN_CHANGES_SCIENCE',     						 'KIND_VICTORY_STRATEGY'), 
('STRATEGY_ATOMIC_CHANGES_SCIENCE',     						 'KIND_VICTORY_STRATEGY'), 
('STRATEGY_INFO_CHANGES_SCIENCE',     							 'KIND_VICTORY_STRATEGY'), 
('STRATEGY_ATOMIC_CHANGES',      								'KIND_VICTORY_STRATEGY'), 
('STRATEGY_INFORMATION_CHANGES', 								'KIND_VICTORY_STRATEGY'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 								'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('STRATEGY_ANCIENT_CHANGES',    						NULL, 1),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',    		NULL, 2),
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',    				NULL, 4),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',    				NULL, 3),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',    			NULL, 3),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',    				NULL, 3),
('STRATEGY_MODERN_CHANGES_SCIENCE',    					NULL, 2),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',     				NULL, 2),
('STRATEGY_INFO_CHANGES_SCIENCE',       				NULL, 2),
('STRATEGY_ATOMIC_CHANGES',      						NULL, 1),
('STRATEGY_INFORMATION_CHANGES', 						NULL, 1),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 						NULL, 1);

-- not for city states
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('STRATEGY_ANCIENT_CHANGES',    		 				 'Is Not Major', 1),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',    		 'Is Not Major', 1),
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',     				 'Is Not Major', 1),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',     				 'Is Not Major', 1),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',     			'Is Not Major', 1),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',     			'Is Not Major', 1),
('STRATEGY_MODERN_CHANGES_SCIENCE',     				 'Is Not Major', 1),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      			     'Is Not Major', 1),
('STRATEGY_INFO_CHANGES_SCIENCE',      					 'Is Not Major', 1),
('STRATEGY_ATOMIC_CHANGES',      						 'Is Not Major', 1),
('STRATEGY_INFORMATION_CHANGES', 						 'Is Not Major', 1),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 						'Is Not Major', 1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Disqualifier) VALUES
('STRATEGY_HIGH_DIFF_SETTLEMENT',               'Handicap at or below',			 5,             1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',      'Has Great Works', 4, 1),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',      'Has Great Works', 6, 1),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',   'Has Great Works', 10, 1),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',    'Has Great Works', 15, 1),
('STRATEGY_MODERN_CHANGES_SCIENCE',      'Has Great Works', 18, 1),
--('STRATEGY_MODERN_CHANGES_SCIENCE',      'Good Culture', 12, 1),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      'Has Great Works', 22, 1),
('STRATEGY_INFO_CHANGES_SCIENCE',      'Has Great Works', 23, 1);

-- double make sure to deactivate on next era
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier, ThresholdValue) VALUES
('STRATEGY_ANCIENT_CHANGES',     				'Is Classical', 1, 1),
('STRATEGY_CLASSICAL_CHANGES',     				'Is Medieval', 1, 1),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',  'Is Medieval', 1, 1),
('STRATEGY_MEDIEVAL_CHANGES',     				'Is Renaissance', 1, 1),
('STRATEGY_RENAISSANCE_CHANGES',    			'Is Industrial', 1, 1),
('STRATEGY_INDUSTRIAL_CHANGES',     			'Is Modern', 1, 1),
('STRATEGY_MODERN_CHANGES',     				'Is Atomic', 1, 1),
('STRATEGY_ATOMIC_CHANGES',    					'Is Information', 1, 1);
-- Info doesn't need to deactive 

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue) VALUES
('STRATEGY_ANCIENT_CHANGES',    						 'Is Ancient',     		NULL, 0), 

('STRATEGY_CLASSICAL_CHANGES_SCIENCE',      				'Is Classical', 			NULL, 0),
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',      				'Has Tech Lead',		 NULL, 34),
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',      				'Good Tech City',		 NULL, 1),
('STRATEGY_CLASSICAL_CHANGES_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',      				'Is Medieval', 			NULL, 0),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',      				'Has Tech Lead',		 NULL, 34),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',      				'Is Renaissance', 			NULL, 0),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',      				'Has Tech Lead',		 NULL, 34),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',      				'Is Industrial', 			NULL, 0),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',      				'Has Tech Lead',		 NULL, 34),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_MODERN_CHANGES_SCIENCE',      				'Is Modern', 			NULL, 0),
('STRATEGY_MODERN_CHANGES_SCIENCE',      				'Has Tech Lead',		 NULL, 34),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      				'Is Atomic', 			NULL, 0),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      				'Has Tech Lead', 		NULL, 34),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      				'Is Atomic', 			NULL, 0),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      				'Has Tech Lead', 		NULL, 34),
('STRATEGY_INFO_CHANGES_SCIENCE',      					'Is Information', 		NULL, 0),
('STRATEGY_INFO_CHANGES_SCIENCE',      					'Has Tech Lead', 		NULL, 34), -- 3/10
('STRATEGY_ATOMIC_CHANGES',     						 'Is Atomic',      		NULL, 0), 
('STRATEGY_INFORMATION_CHANGES', 						'Is Information', 		NULL, 1), -- testing 1 to remain on

--('STRATEGY_HIGH_DIFF_SETTLEMENT',      				  'Cities Under Threat',		 NULL, 1),
('STRATEGY_HIGH_DIFF_SETTLEMENT',     					'Has Settle Spot',      NULL, 0); -- Needs checking

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',    		'Is Classical',     		'AGENDA_WONDER_OBSESSED'), 
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',    		'Has Agenda',     		'AGENDA_WONDER_OBSESSED');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AncientYields'),
('AncientPseudoYields'),
('AncientOperations'),
('AncientPerWarOperations'),
('AncientSavings'),
('AncientSettlement'),
('AncientScouts'),
('AncientDiplo'),
('AncientUnitBuilds'),
('AncientTechs'),
('AncientImprovements'),
('AncientBuildings'),


('Wonder_Obsessed_Classical_Yields'),
('Wonder_Obsessed_Classical_PseudoYields'),
('Wonder_Obsessed_Classical_Districts'),

('MedievalSettlement'),
('MedievalScouts'),
('MedievalBuildings'),
('MedievalDistricts'),
('MedievalImprovements'),
('MedievalTechs'),
('MedievalSavings'),


('Medieval_Science_PseudoYields'),
('Medieval_Science_Districts'),
('Medieval_Science_Projects'),

('RenaissanceSettlement'),
('RenaissanceScouts'),
('RenaissanceBuildings'),
('RenaissanceSavings'),
('RenaissanceDistricts'),
('RenaissanceImprovements'),
('RenaissanceTechs'),


('Renaissance_Science_PseudoYields'),

('IndustrialSettlement'),
('IndustrialScouts'),
('IndustrialImprovements'),

('Industrial_Science_PseudoYields'),
('Industrial_Science_Districts'),

('ModernImprovements'),
('ModernSettlement'),
('ModernBuildings'),
('ModernPseudoYields'),
('ModernDistricts'),
('ModernScouts'),

('Modern_Science_Yields'),
('Modern_Science_PseudoYields'),
('Modern_Science_Districts'),
('Modern_Science_Savings'),

('Atomic_Science_Yields'),
('Atomic_Science_PseudoYields'),
('Atomic_Science_Districts'),
('Atomic_Science_Savings'),
('Atomic_Science_Diplo'),
('Atomic_Science_Techs'),

('Info_Science_Yields'),
('Info_Science_PseudoYields'),
('Info_Science_Districts'),
('Info_Science_Savings'),
('Info_Science_Diplo'),
('Info_Science_Techs'),

('AtomicImprovements'),
('AtomicSettlement'),
('AtomicBuildings'),  
('AtomicYields'),
('AtomicPseudoYields'),
('AtomicDistricts'),

('InformationImprovements'),
('InformationSettlement'),
('InformationYields'),
('InformationDistricts'),
('InformationOps'),
('InformationPseudoYields'),
('InformationSavings'),

('HIGH_DIFF_S_Scout_Uses'),
('HIGH_DIFF_S_Settlement'),
('HIGH_DIFF_S_Unit_Builds'),
('HIGH_DIFF_S_Ops'),

('HIGH_DIFF_S_PseudoYields'),
('HIGH_DIFF_S_Units');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('AncientYields',      				 'Yields'),
('AncientPseudoYields', 			'PseudoYields'),
('AncientOperations', 				'AiOperationTypes'),
('AncientSavings', 					'SavingTypes'),
('AncientPerWarOperations', 		'PerWarOperationTypes'),
('AncientSettlement', 				'PlotEvaluations'),
('AncientScouts', 					'AIScoutUses'),
('AncientDiplo', 					'DiplomaticActions'),
('AncientUnitBuilds', 				'UnitPromotionClasses'),
('AncientTechs', 					'Technologies'),
('AncientImprovements', 			'Improvements'),
('AncientBuildings', 				'Buildings'),


('Wonder_Obsessed_Classical_Yields',       'Yields'),
('Wonder_Obsessed_Classical_PseudoYields', 'PseudoYields'),
('Wonder_Obsessed_Classical_Districts', 	'Districts'),

('MedievalDistricts',       			'Districts'),
('MedievalSettlement', 			'PlotEvaluations'),
('MedievalScouts', 				'AIScoutUses'),
('MedievalBuildings',       			'Buildings'),
('MedievalImprovements',       			'Improvements'),
('MedievalTechs',       			'Technologies'),
('MedievalSavings',       			'SavingTypes'),


('Medieval_Science_PseudoYields', 			'PseudoYields'),
('Medieval_Science_Districts', 				'Districts'),
('Medieval_Science_Projects', 				'Projects'),

('RenaissanceSettlement', 			'PlotEvaluations'),
('RenaissanceScouts', 				'AIScoutUses'),
('RenaissanceBuildings',       			'Buildings'),
('RenaissanceSavings',       			'SavingTypes'),
('RenaissanceDistricts',       			'Districts'),
('RenaissanceTechs',       			'Technologies'),

('RenaissanceImprovements',       			'Improvements'),

('Renaissance_Science_PseudoYields', 			'PseudoYields'),

('IndustrialSettlement', 			'PlotEvaluations'),
('IndustrialScouts', 				'AIScoutUses'),
('IndustrialImprovements', 				'Improvements'),

('Industrial_Science_PseudoYields', 	'PseudoYields'),
('Industrial_Science_Districts', 	'Districts'),

('ModernImprovements', 			'Improvements'),
('ModernSettlement', 			'PlotEvaluations'),
('ModernBuildings',       			'Buildings'),
('ModernPseudoYields', 			'PseudoYields'),
('ModernDistricts', 			'Districts'),
('ModernScouts', 				'AIScoutUses'),

('Modern_Science_Yields',       'Yields'),
('Modern_Science_PseudoYields', 'PseudoYields'),
('Modern_Science_Districts', 	'Districts'),
('Modern_Science_Savings', 		'SavingTypes'),

('Atomic_Science_Yields',       'Yields'),
('Atomic_Science_PseudoYields', 'PseudoYields'),
('Atomic_Science_Districts', 	'Districts'),
('Atomic_Science_Savings', 		'SavingTypes'),
('Atomic_Science_Diplo', 		'DiplomaticActions'),
('Atomic_Science_Techs', 		'Technologies'),

('Info_Science_Yields',       'Yields'),
('Info_Science_PseudoYields', 'PseudoYields'),
('Info_Science_Districts', 	'Districts'),
('Info_Science_Savings',       'SavingTypes'),
('Info_Science_Diplo',       'DiplomaticActions'),
('Info_Science_Techs',       'Technologies'),

('AtomicImprovements',       		'Improvements'),
('AtomicSettlement',       			'PlotEvaluations'),
('AtomicBuildings',       			'Buildings'),
('AtomicYields',       			'Yields'),
('AtomicPseudoYields', 			'PseudoYields'),
('AtomicDistricts', 			'Districts'),


('InformationImprovements',      		 'Improvements'),
('InformationSettlement',      		 'PlotEvaluations'),
('InformationOps',      		 'AiOperationTypes'),
('InformationDistricts',      		 'Districts'),
('InformationYields',      		 'Yields'),
('InformationPseudoYields', 	'PseudoYields'),
('InformationSavings', 			'SavingTypes'),


('HIGH_DIFF_S_Scout_Uses',      		 'AIScoutUses'),
('HIGH_DIFF_S_Settlement',      		 'PlotEvaluations'),
('HIGH_DIFF_S_Unit_Builds',      		 'UnitBuilds'),
('HIGH_DIFF_S_Ops',      				 'AiOperationTypes'),

('HIGH_DIFF_S_PseudoYields',      		 'PseudoYields'),
('HIGH_DIFF_S_Units', 	                  'Units');


INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_ANCIENT_CHANGES', 			'AncientYields'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientPseudoYields'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientOperations'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientPerWarOperations'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientSavings'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientSettlement'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientScouts'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientDiplo'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientUnitBuilds'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientTechs'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientImprovements'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientBuildings'),


('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Classical_Yields'),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Classical_PseudoYields'),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Classical_Districts'),

('STRATEGY_MEDIEVAL_CHANGES', 			'MedievalDistricts'),
('STRATEGY_MEDIEVAL_CHANGES', 			'MedievalSettlement'),
('STRATEGY_MEDIEVAL_CHANGES', 			'MedievalScouts'),
('STRATEGY_MEDIEVAL_CHANGES', 			'MedievalBuildings'),
('STRATEGY_MEDIEVAL_CHANGES', 			'MedievalImprovements'),
('STRATEGY_MEDIEVAL_CHANGES', 			'MedievalTechs'),
('STRATEGY_MEDIEVAL_CHANGES', 			'MedievalSavings'),


('STRATEGY_MEDIEVAL_CHANGES_SCIENCE', 		'Medieval_Science_PseudoYields'),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE', 		'Medieval_Science_Districts'),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE', 		'Medieval_Science_Projects'),

('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceDistricts'),
('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceSettlement'),
('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceScouts'),
('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceBuildings'),
('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceSavings'),
('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceImprovements'),
('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceTechs'),

('STRATEGY_RENAISSANCE_CHANGES_SCIENCE', 	'Renaissance_Science_PseudoYields'),

('STRATEGY_INDUSTRIAL_CHANGES', 			'IndustrialSettlement'),
('STRATEGY_INDUSTRIAL_CHANGES', 			'IndustrialScouts'),
('STRATEGY_INDUSTRIAL_CHANGES', 			'IndustrialImprovements'),

('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',		'Industrial_Science_PseudoYields'),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',		'Industrial_Science_Districts'),

('STRATEGY_MODERN_CHANGES', 			'ModernImprovements'),
('STRATEGY_MODERN_CHANGES', 			'ModernSettlement'),
('STRATEGY_MODERN_CHANGES', 			'ModernBuildings'),
('STRATEGY_MODERN_CHANGES', 			'ModernPseudoYields'),
('STRATEGY_MODERN_CHANGES', 			'ModernDistricts'),
('STRATEGY_MODERN_CHANGES', 			'ModernScouts'),

('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_Yields'),
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_PseudoYields'),
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_Districts'),
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_Savings'),

('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Yields'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_PseudoYields'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',		'Atomic_Science_Districts'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Savings'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Diplo'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Techs'),

('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_Yields'),
('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_PseudoYields'),
('STRATEGY_INFO_CHANGES_SCIENCE',		'Info_Science_Districts'),
('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_Savings'),
('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_Diplo'),
('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_Techs'),

('STRATEGY_ATOMIC_CHANGES',				'AtomicImprovements'),
('STRATEGY_ATOMIC_CHANGES',				'AtomicSettlement'),
('STRATEGY_ATOMIC_CHANGES', 			'AtomicBuildings'),
('STRATEGY_ATOMIC_CHANGES',				'AtomicYields'),
('STRATEGY_ATOMIC_CHANGES', 			'AtomicPseudoYields'),
('STRATEGY_ATOMIC_CHANGES', 			'AtomicDistricts'),


('STRATEGY_INFORMATION_CHANGES', 		'InformationImprovements'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationSettlement'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationDistricts'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationOps'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationYields'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationPseudoYields'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationSavings'),


('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Scout_Uses'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Settlement'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Unit_Builds'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Units'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Ops'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_PseudoYields');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RenaissanceDiplo');
INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RenaissanceDiplo', 'DiplomaticActions');
INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_RENAISSANCE_CHANGES', 'RenaissanceDiplo');





INSERT OR IGNORE INTO AiOperationTypes (OperationType, Value) -- New op definition
SELECT 'NAVAL_SUP_MELEE', MAX(Value)+1
FROM AiOperationTypes;

------------------------------------------------------------------------------
-- Time Strategies


--  Firaxis: Yield Sensitivity tries to catch up to the leader in a given yield. Adding this to existing strategies from the base game

/*
Defaults:
  <AiFavoredItems>
    <Row ListType="AvoidDarkAges" Item="PSEUDOYIELD_GOLDENAGE_POINT" Value="500"/>
    <Row ListType="ClassicalSensitivity" Item="YIELD_SCIENCE" Value="10"/>
    <Row ListType="MedievalSensitivity" Item="YIELD_CULTURE" Value="10"/>
    <Row ListType="ModernSensitivity" Item="YIELD_SCIENCE" Value="10"/>
    <Row ListType="ModernSensitivity" Item="YIELD_CULTURE" Value="10"/>
    <Row ListType="ScienceSensitivity" Item="YIELD_SCIENCE" Value="25"/>
    <Row ListType="CultureSensitivity" Item="YIELD_CULTURE" Value="25"/>
  </AiFavoredItems>
  
 */
 
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernSensitivity', 'YIELD_SCIENCE', 1, -10);

DELETE FROM AiFavoredItems WHERE ListType IN (
'AncientPseudoYields',
'AncientYields',
'ClassicalPseudoYields',
'ClassicalYields',
'MedievalPseudoYields',
'MedievalYields',
'RenaissancePseudoYields',
'RenaissanceYields',
'IndustrialPseudoYields',
'IndustrialYields',
'ModernPseudoYields',
'ModernYields');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Wonder_Obsessed_Classical_Yields', 'YIELD_PRODUCTION',   						1, 35),
('Wonder_Obsessed_Classical_Yields', 'YIELD_CULTURE',   						1, 10),

('Wonder_Obsessed_Classical_Districts', 'DISTRICT_HARBOR',   						1, 30),

('Wonder_Obsessed_Classical_PseudoYields', 'PSEUDOYIELD_INFLUENCE',   		1, 100),
('Wonder_Obsessed_Classical_PseudoYields', 'PSEUDOYIELD_HAPPINESS',   			1, 100),
('Wonder_Obsessed_Classical_PseudoYields', 'PSEUDOYIELD_WONDER',   				1, 30);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HIGH_DIFF_S_Units',            'UNIT_SCOUT',   						1, 10),
('HIGH_DIFF_S_Units',            'UNIT_GALLEY',   						1, 5),
('HIGH_DIFF_S_Units',            'UNIT_SETTLER',   						1, 50),

('HIGH_DIFF_S_Scout_Uses',      'LAND_SCOUTS_PER_PRIMARY_REGION',   				1, 250), -- pvs 150
('HIGH_DIFF_S_Scout_Uses',      'LAND_SCOUTS_PER_SECONDARY_REGION',   				1, 150), -- pvs 100
('HIGH_DIFF_S_Scout_Uses',      'DEFAULT_NAVAL_SCOUTS',   							1, 100), -- new

('HIGH_DIFF_S_Ops', 		'OP_SETTLE',   		       			 			 		1, 1),
('HIGH_DIFF_S_Ops', 		'ATTACK_BARBARIANS',   		       			 			1, 1),


('HIGH_DIFF_S_PseudoYields', 'PSEUDOYIELD_SETTLER',   		       				    1, 295), -- pvs 175, 350, 275
('HIGH_DIFF_S_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   		    		1, 3);

/*
 ('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Scout_Uses'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Settlement'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Unit_Builds'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Units'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_PseudoYields');
 */


-- ANCIENT

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('AncientSettlement', 'Fresh Water', 				0, 19, NULL, 						'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'), -- pvs 6, 12, 18
('AncientSettlement', 'Coastal', 					0, 11, NULL, 						'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- pvs 2, 10, 17, 11+added 5

('AncientSettlement', 'Specific Resource', 0, 2, 			'RESOURCE_HORSES', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AncientSettlement', 'Specific Resource', 0, 4, 			'RESOURCE_IRON', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AncientOperations', 'OP_RH_EARLY_SETTLE', 		 1, 1),		
('AncientOperations', 'ATTACK_BARBARIANS', 			1, 1),
('AncientOperations', 'NAVAL_SUPERIORITY', 			0, -1),
('AncientOperations', 'CITY_ASSAULT', 				0, -1),
--('AncientOperations', 'OP_ESCORT', 					0, 1),
('AncientPerWarOperations', 'NAVAL_SUPERIORITY',    0, -1),
('AncientScouts', 		'DEFAULT_LAND_SCOUTS',    1, 350), -- pvs 150, 2--
('AncientScouts', 	'LAND_SCOUTS_PER_PRIMARY_REGION',    1, 50),

('AncientOperations', 'NAVAL_SUP_MELEE',   			1, 1),
('AncientUnitBuilds', 'PROMOTION_CLASS_RANGED', 			1, 		75), -- pvs 25, 50

--('AncientSettlement', 'Nearest Friendly City', 0, -1),

('AncientTechs', 'TECH_ENGINEERING', 				0, 0),
('AncientTechs', 'TECH_SHIPBUILDING', 				0, 0),

('AncientBuildings', 'BUILDING_GRANARY', 				0, -950),
('AncientBuildings', 'BUILDING_WATER_MILL', 			0, 0),

('AncientDiplo', 'DIPLOACTION_THIRD_PARTY_WAR', 0, 0),
('AncientDiplo', 'DIPLOACTION_JOINT_WAR', 		0, 0),
('AncientDiplo', 'DIPLOACTION_OPEN_BORDERS', 		0, 0),
('AncientDiplo', 'DIPLOACTION_MAKE_PEACE', 		0, 0),

--('AncientYields', 'YIELD_FAITH',     1, 85), -- Base -22 -- pvs 12, 22, 40, 100, 120, 220, 250, 300, 150, 120
('AncientYields', 'YIELD_SCIENCE',   1, 220), -- pvs 30, 75, 105, 200, 145, 200, 230
('AncientYields', 'YIELD_PRODUCTION', 1, 30),
('AncientYields', 'YIELD_FOOD', 	  1, 50),
('AncientYields', 'YIELD_GOLD', 	 0, -8),
('AncientYields', 'YIELD_CULTURE',   1, 25),
('AncientYields', 'YIELD_RH_ANCIENT',   1, 950),
('AncientYields', 'YIELD_RH_HAPPINESS_BUILDING',   0, -1500),
('AncientYields', 'YIELD_RH_FAITH',  	 1, 50),
('AncientYields', 'YIELD_RH_SCIENCE_VICTORY_BASE', 	   1, 120), -- temp, 30

('AncientYields', 'YIELD_RH_CLASSICAL_REPUBLIC',  1, 150),

('AncientYields', 'YIELD_RH_CULTURE_VICTORY_BASE',  0, -95),
('AncientYields', 'YIELD_RV_BASE', 					1, 390), -- pvs 750, 380, 370, 330, 350

('AncientYields', 'YIELD_RH_CITY_CENTRE',  			0, -900),

('AncientImprovements', 'IMPROVEMENT_PLANTATION', 1, 90),
('AncientImprovements', 'IMPROVEMENT_CAMP', 1, 10),
('AncientImprovements', 'IMPROVEMENT_MINE', 1, 50),

('AncientPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',  		 1, 350), -- pvs 16, 18, 21, 25, 40, 50, 125, 185, 275, 290, 300, 375
('AncientPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',  		 1, 35), -- Early Great Scientist
('AncientPseudoYields', 'PSEUDOYIELD_GPP_GENERAL',   1, 50), -- pvs 0

('AncientPseudoYields', 'PSEUDOYIELD_CITY_BASE', 			  1, -50),
('AncientPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',  		  1, 250),
('AncientPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',   1, 250), -- pvs 5, 8, 15
('AncientPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL',   1, 50), -- pvs -45
('AncientPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 55), -- pvs 6, 7, 10
('AncientPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 235), -- pvs 11, 15, 27, 50, 100, 130, 150, 250, 215 -- disabled at archery
('AncientPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 40), -- pvs 8, 9, 19, 30, 35

('AncientPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 30), -- pvs 32, 31, 30, 29
('AncientPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 16), -- pvs 25, 21, 17

('AncientPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, -85),
('AncientPseudoYields', 'PSEUDOYIELD_HAPPINESS', 0, -75),
('AncientPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 350), -- pvs 55
('AncientPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT',   1, -21), -- bringing back as Wu Zetian built 7-8 ships in ancient era
('AncientPseudoYields', 'PSEUDOYIELD_WONDER',   		1, -30),
('AncientPseudoYields', 'PSEUDOYIELD_TOURISM',   		0, -50),

('AncientPseudoYields', 'PSEUDOYIELD_DISTRICT',   		1, -35), -- pvs -20, -15, 20, 35
('AncientPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 		1, 100); -- To reduce chance AI puts farms on strategics and builds loads of workers before settlers etc, pvs -15

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AncientPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR',  -5); -- def -100, -75, -57, -53, -50


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AncientSavings', 'SAVING_GREAT_PEOPLE',									1); 
--('AncientSavings', 'SAVING_SLUSH_FUND', 									1), -- pvs 2
--('AncientSavings', 'SAVING_PLOTS', 											-1);
--('AncientSavings', 'SAVING_UNITS', 											-1); -- Test

--('AncientSavings', 'SAVING_SLUSH_FUND', 								 0); 


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'AncientPseudoYields', PseudoYieldType, 0, -75
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 

UPDATE AiFavoredItems SET Value = -95 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_GREATWORK_RELIC';


-- CLASSICAL

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('ClassicalSettlement', 'Inner Ring Yield', 0, 1,			 'YIELD_PRODUCTION', 				'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- Test

('ClassicalSettlement', 'Fresh Water', 				0, 6, NULL, 						'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'), 
('ClassicalSettlement', 'Coastal', 					0, 5, NULL, 						'LOC_SETTLEMENT_RECOMMENDATION_COAST'),

('ClassicalSettlement', 'New Resources', 			0, 3,			 NULL, 				'LOC_SETTLEMENT_RECOMMENDATION_NEW_RESOURCES'), 
('ClassicalSettlement', 'Specific Resource', 		0, 2, 			'RESOURCE_IRON', 	'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ClassicalOperations', 'OP_RH_EARLY_SETTLE', 		   	1, 1),
('ClassicalOperations', 'ATTACK_BARBARIANS', 		   	1, 1),
('ClassicalOperations', 'NAVAL_SUP_MELEE', 		   		1, 1),
('ClassicalSettlement', 'Nearest Friendly City', 		0, 1), -- From 1 to 2 for slight forward settle
('ClassicalScouts', 	'DEFAULT_LAND_SCOUTS',    			 1, 300), -- pvs 100, 250
('ClassicalScouts', 	'LAND_SCOUTS_PER_PRIMARY_REGION',    1, 150),
('ClassicalScouts', 	'LAND_SCOUTS_PER_SECONDARY_REGION',    1, 150), -- New

('ClassicalYields', 'YIELD_CULTURE', 	   1, 50), -- def 0 , pvs 8, 7 (def theater square favoured in base game)
--('ClassicalYields', 'YIELD_FAITH',   	   1, 75), -- def. 20, pvs 12, 10, 60
('ClassicalYields', 'YIELD_FOOD',    	   1, 75), -- def. 15, pvs 17, 15, 30
('ClassicalYields', 'YIELD_PRODUCTION',    1, 20), -- def. 15, pvs 17, 15
('ClassicalYields', 'YIELD_GOLD',    	   1, 10), -- Def 20, pvs 10, 11, 14
('ClassicalYields', 'YIELD_SCIENCE', 	   1, 250), -- pvs 20, 26, 25, 22, 50 - Now def 30 in base game

('ClassicalYields', 'YIELD_RH_SCIENCE_VICTORY_BASE', 	   1, 200), -- temp, 250
('ClassicalYields', 'YIELD_RH_ANCIENT',    0, -150),
('ClassicalYields', 'YIELD_RH_HAPPINESS_BUILDING',   0, -600), -- pvs -300, 600, 800, increasing for test
('ClassicalYields', 'YIELD_RH_MAGNUS',  1, 50),
('ClassicalYields', 'YIELD_RV_BASE', 					1, 100), -- pvs 0

('ClassicalYields', 'YIELD_RH_CLASSICAL_REPUBLIC',  1, 40), -- pvs 75

('ClassicalYields', 'YIELD_RH_CULTURE_VICTORY_BASE',  0, -20),

('ClassicalYields', 'YIELD_RH_CITY_CENTRE',  0, -800), -- pvs -200

('ClassicalTechs', 'TECH_POTTERY', 				1, 0), 
('ClassicalTechs', 'TECH_MINING', 				1, 0), 
('ClassicalTechs', 'TECH_ANIMAL_HUSBANDRY', 	1, 0), 
('ClassicalTechs', 'TECH_ARCHERY', 				1, 0), 
('ClassicalTechs', 'TECH_WRITING', 				1, 0), 
('ClassicalTechs', 'TECH_IRRIGATION', 			1, 0), 
('ClassicalTechs', 'TECH_BRONZE_WORKING', 		1, 0), -- Iron

('ClassicalTechs', 'TECH_BUTTRESS', 			0, 0), -- Too often Rushes -- Only Unlocks Dams and Hagia Sophia
('ClassicalTechs', 'TECH_MILITARY_TACTICS', 	0, 0), -- Only Pikemen and Huey

('ClassicalDiplo', 'DIPLOACTION_THIRD_PARTY_WAR', 0, 0),
('ClassicalDiplo', 'DIPLOACTION_JOINT_WAR', 		0, 0),
('ClassicalDiplo', 'DIPLOACTION_OPEN_BORDERS', 		0, 0),

('ClassicalDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX', 		0, 0), -- Test
('ClassicalDistricts', 'DISTRICT_CAMPUS',						1, 0), -- Test

('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',    1, 100), -- pvs 4, 10, 20, 21, 55, 75, 100, 130, 145, 150
('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 100), -- pvs 25
('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 50), -- pvs 200
('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_GENERAL',   1, 250), -- pvs 0, 50

('ClassicalPseudoYields', 'PSEUDOYIELD_WONDER',   		1, 20), -- pvs -8
('ClassicalPseudoYields', 'PSEUDOYIELD_TOURISM',   		0, -15),

('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',   1, 30),

('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 40),
('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 40), -- pvs 12
('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 30), -- For expansion -- pvs 14
('ClassicalPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 20), -- pvs 22, 19, 21
('ClassicalPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 11), -- pvs 19, 17, 15, 13
('ClassicalPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 300), -- pvs 40, 110
('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -2), -- pvs 3
('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -20), -- pvs 0
('ClassicalPseudoYields', 'PSEUDOYIELD_HAPPINESS', 0, -70),
('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 		  1, 125), -- pvs 15, 3, 10
('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 75), -- pvs 0

('ClassicalPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 0, -85),

('ClassicalPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 20),
('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 20), -- base 0.73
--('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -1),
('ClassicalPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 	1, 800),
('ClassicalPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 	1, -20),

('ClassicalPseudoYields', 'PSEUDOYIELD_INFLUENCE',		 1, 10),
('ClassicalPseudoYields', 'PSEUDOYIELD_DISTRICT', 		1, -5); -- Goes for District Techs too Much, 100

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('ClassicalSavings', 'SAVING_GREAT_PEOPLE', 								 0), 
--('ClassicalSavings', 'SAVING_SLUSH_FUND', 									1), -- pvs 1 -- For builder purchase
--('ClassicalSavings', 'SAVING_UNITS', 										1), -- test
--('ClassicalSavings', 'SAVING_PLOTS', 										-1); 
--('ClassicalSavings', 'SAVING_SLUSH_FUND', 								 0); 


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item,Value) VALUES
('ClassicalPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR',   -5);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Classical_Science_Districts', 		'DISTRICT_AQUEDUCT', 1, 25),
('Classical_Science_Districts', 		'DISTRICT_DAM', 1, 25);

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('Classical_Science_Yields', 'PROJECT_CARBON_RECAPTURE', 1, 0),

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Classical_Science_Projects', 'PROJECT_ENHANCE_DISTRICT_INDUSTRIAL_ZONE', 1, 0),
('Classical_Science_Projects', 'PROJECT_ENHANCE_DISTRICT_CAMPUS',         1, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Classical_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 125), -- pvs 60
('Classical_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 150); -- pvs 0, 150 higher for mh


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ClassicalImprovements', 'IMPROVEMENT_FARM', 1, 10),
('ClassicalImprovements', 'IMPROVEMENT_PLANTATION', 1, 10),

('ClassicalImprovements', 'IMPROVEMENT_ZIGGURAT', 0, -90),
('ClassicalImprovements', 'IMPROVEMENT_KURGAN', 0, -90),
--('ClassicalImprovements', 'IMPROVEMENT_SPHINX', 0, -90),
('ClassicalImprovements', 'IMPROVEMENT_COLOSSAL_HEAD', 0, -90);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ClassicalPseudoYields', PseudoYieldType, 0, -45
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 

UPDATE AiFavoredItems SET Value = -75 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_GREATWORK_RELIC';



-- MEDIEVAL


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('MedievalSettlement', 'Inner Ring Yield', 0, 1,			 'YIELD_PRODUCTION', 				'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),

('MedievalSettlement', 'Nearest Friendly City', 0, 1,			 NULL, 				'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'), -- pvs 2, 0
('MedievalSettlement', 'New Resources', 		0, 2,			 NULL, 				'LOC_SETTLEMENT_RECOMMENDATION_NEW_RESOURCES'),
('MedievalSettlement', 'Foreign Continent', 	0, 2, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT'), 
('MedievalSettlement', 'Coastal', 			    0, 3, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- exploration
('MedievalSettlement', 'Specific Resource',     0, 30, 			'RESOURCE_NITER', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- Medieval

/*
		<Row ListType="MedievalSettlements" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="-10"/>
		<Row ListType="MedievalSettlements" Item="SETTLEMENT_DECAY_TURNS" Value="-3"/>
		<Row ListType="MedievalSettlements" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="50"/>
*/


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MedievalScouts', 	'DEFAULT_LAND_SCOUTS',    			     1, 100), -- pvs 50
('MedievalScouts', 	'LAND_SCOUTS_PER_PRIMARY_REGION',        1, 100),
('MedievalScouts', 	'LAND_SCOUTS_PER_SECONDARY_REGION',      1, 100),
('MedievalScouts', 	'DEFAULT_NAVAL_SCOUTS',   				 1, 200),
('MedievalScouts', 	'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',    1, 150),

('MedievalYields', 'YIELD_CULTURE',    1, 150), -- pvs 0, 50, 60, 100
('MedievalYields', 'YIELD_FAITH',      1, 25), -- def. -25, pvs -20, 0
('MedievalYields', 'YIELD_FOOD',       1, 60), -- def. 25, 22
('MedievalYields', 'YIELD_GOLD',       1, 25), -- def. 15 (-1 pvs made up for by extra merchant points)
('MedievalYields', 'YIELD_PRODUCTION', 1, 30), -- def. 20, pvs 18, 16
('MedievalYields', 'YIELD_SCIENCE',    1, 400), -- def. 15, pvs 15, 35, 70, 100, 250
('MedievalYields', 'YIELD_RH_ANCIENT',  0, -900),
('MedievalYields', 'YIELD_RH_MAGNUS',  1, 400),
('MedievalYields', 'YIELD_RH_HAPPINESS_BUILDING',   0, -95),

('MedievalYields', 'YIELD_RH_SCIENCE_VICTORY_BASE', 	   1, 800), -- temp, 200, 350
('MedievalYields', 'YIELD_RH_MONARCHY',  		  1, 50),
('MedievalYields', 'YIELD_RH_MERCHANT_REPUBLIC',  1, 50),

('MedievalYields', 'YIELD_RH_CITY_CENTRE',  1, 50), -- pvs 550, 100
('MedievalYields', 'YIELD_RH_FOOD_EXT',  1, 150),

--('MedievalDistricts', 'DISTRICT_AQUEDUCT',  1, 50),
('MedievalDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX',  		0, 0), -- Test -- Zoo not unlocked until Industrial Era

('MedievalDistricts', 'DISTRICT_DAM',  		1, 50),
('MedievalDistricts', 'DISTRICT_CAMPUS',  		1, 0),
('MedievalDistricts', 'DISTRICT_THEATER',  		1, 0),-- New

('MedievalPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 120), -- pvs 0
('MedievalPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 90),
('MedievalPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 		 1, 25),
('MedievalPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 25),
('MedievalPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 9), -- pvs 13, 17, 15
('MedievalPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 8), -- pvs 13, 12, 10
('MedievalPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 5),
('MedievalPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 80), -- pvs 10, 35, 40 (AI wasn't build enough ships) -- not any ships in this era
('MedievalPseudoYields', 'PSEUDOYIELD_WONDER',   		1, 100), -- pvs 65
('MedievalPseudoYields', 'PSEUDOYIELD_DISTRICT', 		1, 250), -- pvs 0, build more, 10, 75

('MedievalPseudoYields', 'PSEUDOYIELD_UNIT_TRADE',   1, 40), -- Magnus Trade Routes
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',   1, 20), -- bigger empire and so now can invest in great people slightly more
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL',  	 1, 20),

('MedievalPseudoYields', 'PSEUDOYIELD_GPP_WRITER',   	1, 50),
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 200), -- pvs 50
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',    1, 50), -- Player can get them easily
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_GENERAL',    1, 75), -- Player can get them easily

('MedievalPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',   1, 100), -- pvs 85

('MedievalPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',   1, 400), -- Fuedalism, 160
('MedievalPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 15),

('MedievalPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 100), -- pvs 35, 70
('MedievalPseudoYields', 'PSEUDOYIELD_GOVERNOR', 0, -25),

('MedievalPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 0, -80), -- pvs -75
('MedievalPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -1),
('MedievalPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, -55),
('MedievalPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 20), -- pvs 3, 25
('MedievalPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, -10); -- def 100, pvs 30

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'MedievalPseudoYields', PseudoYieldType, 1, 5 -- pvs 0
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Medieval_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 150),
('Medieval_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 90); -- pvs 60, 80 higher for mh

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Medieval_Science_Projects', 'PROJECT_ENHANCE_DISTRICT_INDUSTRIAL_ZONE', 1, 0),
('Medieval_Science_Projects', 'PROJECT_ENHANCE_DISTRICT_CAMPUS',         1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Medieval_Science_Districts', 		'DISTRICT_AQUEDUCT', 1, 25),
('Medieval_Science_Districts', 		'DISTRICT_DAM', 1, 25);

INSERT OR IGNORE INTO  AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'MedievalBuildings', 'BUILDING_TEMPLE_ARTEMIS', 1, 900
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';

INSERT OR IGNORE INTO  AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'MedievalBuildings', 'BUILDING_HANGING_GARDENS', 1, 900
FROM Types WHERE Type = 'BUILDING_HANGING_GARDENS';

INSERT OR IGNORE INTO  AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'MedievalBuildings', 'BUILDING_GREAT_BATH', 1, 900
FROM Types WHERE Type = 'BUILDING_GREAT_BATH';


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MedievalImprovements', 'IMPROVEMENT_FARM', 		 1, 50), -- FUEDALISM
('MedievalImprovements', 'IMPROVEMENT_PLANTATION', 1, 10),

('MedievalImprovements', 'IMPROVEMENT_ZIGGURAT', 		 0, -90),
('MedievalImprovements', 'IMPROVEMENT_KURGAN',			 0, -90),
--('MedievalImprovements', 'IMPROVEMENT_SPHINX', 		 0, -90),
('MedievalImprovements', 'IMPROVEMENT_COLOSSAL_HEAD',    0, -90);


--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('MedievalSavings', 'SAVING_GREAT_PEOPLE', 								 0), 
--('MedievalSavings', 'SAVING_SLUSH_FUND', 									1),
--('MedievalSavings', 'SAVING_UNITS', 										1),
--('MedievalSavings', 'SAVING_PLOTS', 										-1); 


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MedievalTechs', 'TECH_POTTERY', 				1, 0), 
('MedievalTechs', 'TECH_MINING', 				1, 0), 
('MedievalTechs', 'TECH_ANIMAL_HUSBANDRY', 	1, 0), 
('MedievalTechs', 'TECH_ARCHERY', 				1, 0), 
('MedievalTechs', 'TECH_WRITING', 				1, 0), 
('MedievalTechs', 'TECH_IRRIGATION', 			1, 0), 
('MedievalTechs', 'TECH_BRONZE_WORKING', 		1, 0), -- Iron


('MedievalTechs', 'TECH_ENGINEERING', 		1, 100), 
('MedievalTechs', 'TECH_IRON_WORKING', 		1, 100), 
('MedievalTechs', 'TECH_MACHINERY', 		1, 100);




--INSERT INTO AiFavoredItems (ListType, Item, Favored, Value) SELECT ResourceType, 'CLASS_RELIGIOUS_IDOLS'     FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_MINE' AND ResourceType IN (SELECT ResourceType FROM Resources WHERE ResourceClassType = 'RESOURCECLASS_LUXURY' OR ResourceClassType = 'RESOURCECLASS_BONUS');


-- RENAISSANCE
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('RenaissanceSettlement', 'Nearest Friendly City', 0, 1,			 NULL, 				'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'),
('RenaissanceSettlement', 'Foreign Continent', 	0, 12, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT'), -- Cartography is Renaissance
('RenaissanceSettlement', 'Coastal', 			0, 4, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- exploration
('RenaissanceSettlement', 'Specific Resource', 0, 16, 			'RESOURCE_NITER', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');
 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RenaissanceScouts', 	'LAND_SCOUTS_PER_PRIMARY_REGION',        1, 50),
('RenaissanceScouts', 	'LAND_SCOUTS_PER_SECONDARY_REGION',      1, 50),
('RenaissanceScouts', 	'DEFAULT_NAVAL_SCOUTS',   				 1, 200),
('RenaissanceScouts', 	'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',    1, 300),

--('RenaissanceDiplo', 'DIPLOACTION_THIRD_PARTY_WAR', 0, 0),
--('RenaissanceDiplo', 'DIPLOACTION_JOINT_WAR', 		0, 0),
('RenaissanceDiplo', 'DIPLOACTION_OPEN_BORDERS', 		1, 0),
('RenaissanceDiplo', 'DIPLOACTION_PROPOSE_TRADE', 		1, 0),

-- Core
('RenaissanceYields', 'YIELD_CULTURE',    1, 550), -- pvs 6, 20, 40
('RenaissanceYields', 'YIELD_SCIENCE',    1, 450), -- pvs 19, pvs 15, 11, 10, 40, 100, 500
--('RenaissanceYields', 'YIELD_FAITH',      1, -5), -- pvs -15, -14, -13
('RenaissanceYields', 'YIELD_FOOD',       1, 200), -- 50
('RenaissanceYields', 'YIELD_GOLD',       1, 100), -- pvs 10, 12, 30
('RenaissanceYields', 'YIELD_PRODUCTION', 1, 150), -- pvs 10, 5, 100

('RenaissanceYields', 'YIELD_RH_PRODUCTION', 1, 150), -- def 0, pvs 10, 5, 100

('RenaissanceYields', 'YIELD_RH_SCIENCE_VICTORY_BASE', 	   1, 950), -- temp
('RenaissanceYields', 'YIELD_RH_CULTURE_VICTORY_BASE', 	   1, 200), -- temp

('RenaissanceYields', 'YIELD_RH_MAGNUS',  1, 100),
('RenaissanceYields', 'YIELD_RH_NAVAL',  1, 100),

('RenaissanceYields', 'YIELD_RH_OLIGARCHY',  		0, -500), -- pvs -950 (picking autocracy temp until tier 2)
('RenaissanceYields', 'YIELD_RH_CLASSICAL_REPUBLIC',  0, -500),

('RenaissanceYields', 'YIELD_RH_MONARCHY',  		  1, 120), -- pvs 50
('RenaissanceYields', 'YIELD_RH_MERCHANT_REPUBLIC',   1, 120), -- pvs 50

('RenaissanceYields', 'YIELD_RH_CITY_CENTRE',  1, 450), -- pvs 950
('RenaissanceYields', 'YIELD_RH_FOOD_EXT',  	1, 350), -- pvs 600

--('RenaissanceDistricts', 'DISTRICT_AQUEDUCT',  1, 50),
('RenaissanceDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX',  		0, 0), -- Zoo not unlocked until Industrial Era

('RenaissanceDistricts', 'DISTRICT_DAM',  		1, 50),
('RenaissanceDistricts', 'DISTRICT_CAMPUS',  		1, 0),
('RenaissanceDistricts', 'DISTRICT_THEATER',  		1, 0),

('RenaissancePseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 500),
('RenaissancePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 5), -- pvs 21, 14, 10
('RenaissancePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 5), -- 14, 10, 9
('RenaissancePseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 		1, 15),
('RenaissancePseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -7),
('RenaissancePseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 5),
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_PROPHET',   1, -15), -- Def -100
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 15),
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 25),

('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_WRITER',   	1, 60),
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 50),
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',    1, 50), -- Player can get them easily

('RenaissancePseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 75),

('RenaissancePseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 50), -- growth
('RenaissancePseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 150), -- pvs 15, build them all this era
('RenaissancePseudoYields', 'PSEUDOYIELD_WONDER',   		1, 160), -- pvs 80, 125

('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 30),
('RenaissancePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 10), -- pvs 10, 0
('RenaissancePseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 10),
('RenaissancePseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 800), -- pvs 110, 160
('RenaissancePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3),
('RenaissancePseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 0, -70), -- pvs -60

('RenaissancePseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 150), -- pvs 25, 75
('RenaissancePseudoYields', 'PSEUDOYIELD_GOVERNOR', 0, -25),

--('RenaissancePseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 15),
--('RenaissancePseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 10),

('RenaissancePseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 95); -- pvs 30, 50, 70 -- good ships in this era

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RenaissancePseudoYields', PseudoYieldType, 1, 50 -- pvs 0
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RenaissanceBuildings', 'BUILDING_GRANARY', 1, 900);
--('RenaissanceBuildings', 'BUILDING_WATER_MILL', 1, 0),


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('RenaissanceSavings', 'SAVING_GREAT_PEOPLE', 								 -1), 
('RenaissanceSavings', 'SAVING_SLUSH_FUND', 									-1),
('RenaissanceSavings', 'SAVING_PLOTS', 											1); 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Renaissance_Science_PseudoYields', 'PSEUDOYIELD_WONDER',   1, 90), -- New, Press Advantage

('Renaissance_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 75),
('Renaissance_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 45); -- pvs 50


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('RenaissanceImprovements', 'IMPROVEMENT_FARM', 		 1, 25), -- Fuedalism

('RenaissanceImprovements', 'IMPROVEMENT_ZIGGURAT', 		 0, -90),
('RenaissanceImprovements', 'IMPROVEMENT_KURGAN',			 0, -90),
--('RenaissanceImprovements', 'IMPROVEMENT_SPHINX', 		 0, -90),
('RenaissanceImprovements', 'IMPROVEMENT_COLOSSAL_HEAD',    0, -90);




INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RenaissanceTechs', 'TECH_POTTERY', 				1, 0), 
('RenaissanceTechs', 'TECH_MINING', 				1, 0), 
('RenaissanceTechs', 'TECH_ANIMAL_HUSBANDRY', 	1, 0), 
('RenaissanceTechs', 'TECH_ARCHERY', 				1, 0), 
('RenaissanceTechs', 'TECH_WRITING', 				1, 0), 
('RenaissanceTechs', 'TECH_IRRIGATION', 			1, 0), 
('RenaissanceTechs', 'TECH_BRONZE_WORKING', 		1, 0), -- Iron

('RenaissanceTechs', 'TECH_CONSTRUCTION', 			1, 100), 
('RenaissanceTechs', 'TECH_SHIPBUILDING', 			1, 100), 
('RenaissanceTechs', 'TECH_CELESTIAL_NAVIGATION', 	1, 100), 

('RenaissanceTechs', 'TECH_APPRENTICESHIP', 		1, 100), 
('RenaissanceTechs', 'TECH_STIRRUPS', 			1, 100), 


('RenaissanceTechs', 'TECH_ENGINEERING', 		1, 100), 
('RenaissanceTechs', 'TECH_IRON_WORKING', 		1, 100), 
('RenaissanceTechs', 'TECH_MACHINERY', 			1, 100);
