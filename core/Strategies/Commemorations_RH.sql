
-- RH Commermoration Strat
-- Author: RomanHoliday
-- DateCreated: 2/29/2024 23:37:04 PM
-- Copyright 2024,© RomanHoliday, All rights reserved


/*
		<!-- Moment Outcomes -->
		<Row Type="COMMEMORATION_AERONAUTICAL" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_CULTURAL" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_ECONOMIC" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_ESPIONAGE" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_EXPLORATION" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_INDUSTRIAL" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_INFRASTRUCTURE" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_MILITARY" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_RELIGIOUS" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_SCIENTIFIC" Kind="KIND_MOMENT_OUTCOME"/>
		<Row Type="COMMEMORATION_TOURISM" Kind="KIND_MOMENT_OUTCOME"/>
		
		<!-- Golden Age: Powerful Bonuses -->
		<Row CommemorationType="COMMEMORATION_SCIENTIFIC" ModifierId="COMMEMORATION_SCIENTIFIC_GA_BOOSTS"/>
		<Row CommemorationType="COMMEMORATION_SCIENTIFIC" ModifierId="COMMEMORATION_SCIENTIFIC_GA_HARBOR"/>
		<Row CommemorationType="COMMEMORATION_SCIENTIFIC" ModifierId="COMMEMORATION_SCIENTIFIC_GA_COMMERCIAL_HUB"/>
		<Row CommemorationType="COMMEMORATION_CULTURAL" ModifierId="COMMEMORATION_CULTURAL_GA_BOOSTS"/>
		<Row CommemorationType="COMMEMORATION_CULTURAL" ModifierId="COMMEMORATION_CULTURAL_DISTRICTCULTURE"/>
		<Row CommemorationType="COMMEMORATION_INFRASTRUCTURE" ModifierId="COMMEMORATION_INFRASTRUCTURE_GA_PURCHASE_CIVILIAN"/>
		<Row CommemorationType="COMMEMORATION_INFRASTRUCTURE" ModifierId="COMMEMORATION_INFRASTRUCTURE_GA_MOVEMENT"/>
		<Row CommemorationType="COMMEMORATION_INFRASTRUCTURE" ModifierId="COMMEMORATION_INFRASTRUCTURE_BUILDER_DISCOUNT_MODIFIER"/>
		<Row CommemorationType="COMMEMORATION_INFRASTRUCTURE" ModifierId="COMMEMORATION_INFRASTRUCTURE_SETTLER_DISCOUNT_MODIFIER"/>
		<Row CommemorationType="COMMEMORATION_RELIGIOUS" ModifierId="COMMEMORATION_RELIGIOUS_GA_CHARGES"/>
		<Row CommemorationType="COMMEMORATION_RELIGIOUS" ModifierId="COMMEMORATION_RELIGIOUS_GA_MOVEMENT"/>
		<Row CommemorationType="COMMEMORATION_RELIGIOUS" ModifierId="COMMEMORATION_RELIGIOUS_GA_GREAT_PROPHET_POINTS"/>
		<Row CommemorationType="COMMEMORATION_EXPLORATION" ModifierId="COMMEMORATION_EXPLORATION_GA_SEA_MOVEMENT"/>
		<Row CommemorationType="COMMEMORATION_EXPLORATION" ModifierId="COMMEMORATION_EXPLORATION_GA_EMBARKED_MOVEMENT"/>
		<Row CommemorationType="COMMEMORATION_EXPLORATION" ModifierId="COMMEMORATION_EXPLORATION_GA_NEW_CITY_POPULATION"/>
		<Row CommemorationType="COMMEMORATION_EXPLORATION" ModifierId="COMMEMORATION_EXPLORATION_GA_FOREIGNIDENTITY"/>
		
		<Row CommemorationType="COMMEMORATION_ECONOMIC" ModifierId="COMMEMORATION_ECONOMIC_GA_TRADE_ROUTE_YIELDS"/>
		<Row CommemorationType="COMMEMORATION_ECONOMIC" ModifierId="COMMEMORATION_ECONOMIC_GA_PLUNDER_IMMUNITY_MODIFIER"/>
		
		-- Heartbeat of Steam -- +10% Production toward Industrial Era and later wonders. Campus district's Science adjacency bonus provides Production as well.
		-- Gain +2 Era Score for each Industrial or later building constructed. (Industrial and Modern)
		
		<Row CommemorationType="COMMEMORATION_INDUSTRIAL" ModifierId="COMMEMORATION_INDUSTRIAL_GA_INDUSTRIALINFORMATION"/>
		<Row CommemorationType="COMMEMORATION_INDUSTRIAL" ModifierId="COMMEMORATION_INUDSTRIAL_GA_CAMPUS"/>
		
		
		<Row CommemorationType="COMMEMORATION_MILITARY" ModifierId="COMMEMORATION_MILITARY_GA_PRODUCTION"/>
		<Row CommemorationType="COMMEMORATION_TOURISM" ModifierId="COMMEMORATION_TOURISM_GA_NATIONAL_PARKS"/>
		<Row CommemorationType="COMMEMORATION_TOURISM" ModifierId="COMMEMORATION_TOURISM_GA_WONDERS"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_GA_SATELLITES"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_GA_NUCLEAR_FUSION"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_GA_NANOTECHNOLOGY"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_GA_SMART_MATERIALS"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_GA_PREDICTIVE_SYSTEMS"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_GA_OFFWORLD_MISSION"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_GA_AIR"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_GA_ALUMINUM"/>
		<Row CommemorationType="COMMEMORATION_ESPIONAGE" ModifierId="COMMEMORATION_ESPIONAGE_GA_ESTABLISH"/>
		<Row CommemorationType="COMMEMORATION_ESPIONAGE" ModifierId="COMMEMORATION_ESPIONAGE_GA_REDUCTION"/>
		<!-- Normal or Dark Age: Era Score Quests -->
		<Row CommemorationType="COMMEMORATION_SCIENTIFIC" ModifierId="COMMEMORATION_SCIENTIFIC_QUEST"/>
		<Row CommemorationType="COMMEMORATION_SCIENTIFIC" ModifierId="COMMEMORATION_SCIENTIFIC_BUILDING_QUEST"/>
		<Row CommemorationType="COMMEMORATION_CULTURAL" ModifierId="COMMEMORATION_CULTURAL_QUEST"/>
		<Row CommemorationType="COMMEMORATION_CULTURAL" ModifierId="COMMEMORATION_CULTURAL_BUILDING_QUEST"/>
		<Row CommemorationType="COMMEMORATION_INFRASTRUCTURE" ModifierId="COMMEMORATION_INFRASTRUCTURE_QUEST"/>
		<Row CommemorationType="COMMEMORATION_RELIGIOUS" ModifierId="COMMEMORATION_RELIGIOUS_QUEST"/>
		<Row CommemorationType="COMMEMORATION_EXPLORATION" ModifierId="COMMEMORATION_EXPLORATION_CONTINENT_QUEST"/>
		<Row CommemorationType="COMMEMORATION_EXPLORATION" ModifierId="COMMEMORATION_EXPLORATION_NATURAL_WONDER_QUEST"/>
		<Row CommemorationType="COMMEMORATION_EXPLORATION" ModifierId="COMMEMORATION_EXPLORATION_NAVAL_UNIT_QUEST"/>
		<Row CommemorationType="COMMEMORATION_ECONOMIC" ModifierId="COMMEMORATION_ECONOMIC_QUEST"/>
		<Row CommemorationType="COMMEMORATION_INDUSTRIAL" ModifierId="COMMEMORATION_INDUSTRIAL_QUEST"/>
		<Row CommemorationType="COMMEMORATION_MILITARY" ModifierId="COMMEMORATION_MILITARY_QUEST_CORPS"/>
		<Row CommemorationType="COMMEMORATION_MILITARY" ModifierId="COMMEMORATION_MILITARY_QUEST_ARMY"/>
		<Row CommemorationType="COMMEMORATION_TOURISM" ModifierId="COMMEMORATION_TOURISM_QUEST"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_BUILDING_QUEST"/>
		<Row CommemorationType="COMMEMORATION_AERONAUTICAL" ModifierId="COMMEMORATION_AERONAUTICAL_GREAT_PERSON_QUEST"/>
		<Row CommemorationType="COMMEMORATION_ESPIONAGE" ModifierId="COMMEMORATION_ESPIONAGE_QUEST"/>
		
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



DELETE FROM AiFavoredItems WHERE ListType = 'CultureVictoryFavoredCommemorations' AND Item = 'COMMEMORATION_ECONOMIC'; -- Trade Routes Can't be Plundered 

DELETE FROM AiFavoredItems WHERE ListType = 'ScienceVictoryFavoredCommemorations' AND Item = 'COMMEMORATION_ECONOMIC'; -- Trade Routes Can't be Plundered 

--DELETE FROM AiFavoredItems WHERE ListType = 'ReligiousVictoryFavoredCommemorations' AND Item = 'COMMEMORATION_RELIGIOUS';
--DELETE FROM AiFavoredItems WHERE ListType = 'ReligiousVictoryFavoredCommemorations' AND Item = 'COMMEMORATION_ESPIONAGE';


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ScienceVictoryFavoredCommemorations', 'COMMEMORATION_INDUSTRIAL', 					1, 100); -- Determined by detection below, but good for Era Score

-- Todo Min Adj for Science Victory Industrial Golden Age (recives production on campus' and wonder production)

-- Todo for Science / Score Leader

-- Basil Exodus


INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('RH_STRATEGY_NO_EXODUS',     				'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('RH_STRATEGY_NO_EXODUS',    				NULL, 1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('RH_STRATEGY_NO_EXODUS',    		 'Is Not Major', 1);



INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue, Forbidden) VALUES
('RH_STRATEGY_NO_EXODUS',      				'Unconverted Cities',			 null, 4, 1);



INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
('RH_STRATEGY_NO_EXODUS',    						 'Is Ancient',     			null),
('RH_STRATEGY_NO_EXODUS',    						 'Is Medieval',     		null),
('RH_STRATEGY_NO_EXODUS',    						 'Is Renaissance',     		null);




/*
('RH_STRATEGY_NO_EXODUS',    						 'Is Industrial',     		null),
('RH_STRATEGY_NO_EXODUS',    						 'Is Modern',     			null),
('RH_STRATEGY_NO_EXODUS',    						 'Is Atomic',     			null),
('RH_STRATEGY_NO_EXODUS',    						 'Is Information',     		null);
*/





INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_No_Exodus_Comm'),
('RH_No_Exodus_Diplomacy'),
('RH_No_Exodus_Civics'),
('RH_No_Exodus_Techs'),
('RH_No_Exodus_Buildings'),
('RH_No_Exodus_Projects'),
('RH_No_Exodus_Yields'),
('RH_No_Exodus_PseudoYields'),
('RH_No_Exodus_Operations'),
('RH_No_Exodus_Settlement'),
('RH_No_Exodus_Savings'),
('RH_No_Exodus_Scouts');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('RH_No_Exodus_Comm',   			'Commemorations'),
('RH_No_Exodus_Diplomacy',   		'DiplomaticActions'),
('RH_No_Exodus_Civics',   			'Civics'),
('RH_No_Exodus_Techs',   			'Technologies'),
('RH_No_Exodus_Buildings',   		'Buildings'),
('RH_No_Exodus_Projects',   		'Projects'),
('RH_No_Exodus_Yields',   			'Yields'),
('RH_No_Exodus_PseudoYields',   	'PseudoYields'),
('RH_No_Exodus_Operations', 		'AiOperationTypes'),
('RH_No_Exodus_Settlement', 		'PlotEvaluations'),
('RH_No_Exodus_Savings', 			'SavingTypes'),
('RH_No_Exodus_Scouts', 			'AIScoutUses');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Comm'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Diplomacy'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Civics'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Techs'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Buildings'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Projects'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Yields'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_PseudoYields'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Operations'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Settlement'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Savings'),
('RH_STRATEGY_NO_EXODUS',   'RH_No_Exodus_Scouts');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_No_Exodus_Comm', 'COMMEMORATION_RELIGIOUS', 					0, 0);





-- High Faith Adj

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_HEARTBEAT_REQ_S_3', 'REQUIREMENTSET_TEST_ALL'),
		('RH_HEARTBEAT_REQ_S_5', 'REQUIREMENTSET_TEST_ALL'),
		('RH_HEARTBEAT_REQ_S_7', 'REQUIREMENTSET_TEST_ALL'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_3', 'REQUIREMENTSET_TEST_ALL'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_5', 'REQUIREMENTSET_TEST_ALL'),

		('RH_FREE_INQUIRY_PUSH_COMMERICAL', 'REQUIREMENTSET_TEST_ALL');

-- Industrial

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_HEARTBEAT_REQ_S_3', 'RH_PLAYER_AT_ANCIENT_ERA'),
		('RH_HEARTBEAT_REQ_S_3', 'RH_PLAYER_NOT_MEDIEVAL_ERA'),
		('RH_HEARTBEAT_REQ_S_3', 'RH_AI_HIGH_SCI_ADJ_3'),
		('RH_HEARTBEAT_REQ_S_3', 'REQUIRES_PLAYER_IS_AI'),
		('RH_HEARTBEAT_REQ_S_3', 'REQUIRES_PLAYER_HAS_GOLDEN_AGE');	
	
INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_HEARTBEAT_REQ_S_5', 'RH_PLAYER_AT_ANCIENT_ERA'),
		('RH_HEARTBEAT_REQ_S_5', 'RH_PLAYER_NOT_MEDIEVAL_ERA'),
		('RH_HEARTBEAT_REQ_S_5', 'RH_AI_HIGH_SCI_ADJ_5'),
		('RH_HEARTBEAT_REQ_S_5', 'REQUIRES_PLAYER_IS_AI'),
		('RH_HEARTBEAT_REQ_S_5', 'REQUIRES_PLAYER_HAS_GOLDEN_AGE');		
		
		
INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_HEARTBEAT_REQ_S_7', 'RH_PLAYER_AT_ANCIENT_ERA'),
		('RH_HEARTBEAT_REQ_S_7', 'RH_PLAYER_NOT_MEDIEVAL_ERA'),
		('RH_HEARTBEAT_REQ_S_7', 'RH_AI_HIGH_SCI_ADJ_7'),
		('RH_HEARTBEAT_REQ_S_7', 'REQUIRES_PLAYER_IS_AI');		
	--	('RH_HEARTBEAT_REQ_S_7', 'REQUIRES_PLAYER_HAS_GOLDEN_AGE');	-- Do anyway	
	
	
-- Commerical Hub and Harbor Science
	
INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_FREE_INQUIRY_PUSH_REQ_S_3', 'RH_PLAYER_AT_ANCIENT_ERA'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_3', 'RH_PLAYER_NOT_MEDIEVAL_ERA'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_3', 'RH_AI_HIGH_HAR_ADJ_3'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_3', 'REQUIRES_PLAYER_IS_AI'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_3', 'REQUIRES_PLAYER_HAS_GOLDEN_AGE'); -- Seperation



INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_FREE_INQUIRY_PUSH_REQ_S_5', 'RH_PLAYER_AT_ANCIENT_ERA'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_5', 'RH_PLAYER_NOT_MEDIEVAL_ERA'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_5', 'RH_AI_HIGH_HAR_ADJ_5'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_5', 'REQUIRES_PLAYER_IS_AI'),
		('RH_FREE_INQUIRY_PUSH_REQ_S_5', 'REQUIRES_PLAYER_HAS_GOLDEN_AGE');


INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_FREE_INQUIRY_PUSH_COMMERICAL', 'RH_PLAYER_AT_ANCIENT_ERA'),
		('RH_FREE_INQUIRY_PUSH_COMMERICAL', 'RH_PLAYER_NOT_MEDIEVAL_ERA'),
		('RH_FREE_INQUIRY_PUSH_COMMERICAL', 'RH_AI_HIGH_COMMERC_ADJ_3'),
		('RH_FREE_INQUIRY_PUSH_COMMERICAL', 'REQUIRES_PLAYER_IS_AI'),
		('RH_FREE_INQUIRY_PUSH_COMMERICAL', 'REQUIRES_PLAYER_HAS_GOLDEN_AGE');



INSERT OR IGNORE INTO Requirements   	(RequirementId, RequirementType)  VALUES	
		('RH_AI_HIGH_SCI_ADJ_3', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		('RH_AI_HIGH_SCI_ADJ_5', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		('RH_AI_HIGH_SCI_ADJ_7', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		
		('RH_AI_HIGH_HAR_ADJ_3', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		('RH_AI_HIGH_HAR_ADJ_5', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT'),
		
		('RH_AI_HIGH_COMMERC_ADJ_3', 		'REQUIREMENT_CITY_HAS_HIGH_ADJACENCY_DISTRICT');		
		

		
INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_SCI_ADJ_3', 'DistrictType', 'DISTRICT_CAMPUS'),
('RH_AI_HIGH_SCI_ADJ_3', 'YieldType', 'YIELD_SCIENCE'),
('RH_AI_HIGH_SCI_ADJ_3', 'Amount', '3');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_SCI_ADJ_5', 'DistrictType', 'DISTRICT_CAMPUS'),
('RH_AI_HIGH_SCI_ADJ_5', 'YieldType', 'YIELD_SCIENCE'),
('RH_AI_HIGH_SCI_ADJ_5', 'Amount', '4');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_SCI_ADJ_7', 'DistrictType', 'DISTRICT_CAMPUS'),
('RH_AI_HIGH_SCI_ADJ_7', 'YieldType', 'YIELD_SCIENCE'),
('RH_AI_HIGH_SCI_ADJ_7', 'Amount', '6');



INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_HAR_ADJ_3', 'DistrictType', 'DISTRICT_HARBOR'),
('RH_AI_HIGH_HAR_ADJ_3', 'YieldType', 'YIELD_GOLD'),
('RH_AI_HIGH_HAR_ADJ_3', 'Amount', '2');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_HAR_ADJ_5', 'DistrictType', 'DISTRICT_HARBOR'),
('RH_AI_HIGH_HAR_ADJ_5', 'YieldType', 'YIELD_GOLD'),
('RH_AI_HIGH_HAR_ADJ_5', 'Amount', '4');

INSERT OR IGNORE INTO RequirementArguments   (RequirementId,	Name, Value)  VALUES	
('RH_AI_HIGH_COMMERC_ADJ_3', 'DistrictType', 'DISTRICT_COMMERCIAL_HUB'),
('RH_AI_HIGH_COMMERC_ADJ_3', 'YieldType', 'YIELD_GOLD'),
('RH_AI_HIGH_COMMERC_ADJ_3', 'Amount', '2');



-- Heartbeat of Steam

INSERT OR IGNORE INTO CommemorationModifiers  (CommemorationType, ModifierId)  VALUES	
		('COMMEMORATION_INDUSTRIAL',      		  			'RH_INDUSTRIAL_PUSH_LOW');

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('RH_INDUSTRIAL_PUSH_LOW',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_HEARTBEAT_REQ_S_3');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_INDUSTRIAL_PUSH_LOW',	'YieldType'    , 'YIELD_RH_PLACEMENT'),
		('RH_INDUSTRIAL_PUSH_LOW',	'Amount'       , 5);


INSERT OR IGNORE INTO CommemorationModifiers  (CommemorationType, ModifierId)  VALUES	
		('COMMEMORATION_INDUSTRIAL',      		  			'RH_INDUSTRIAL_PUSH_MED');

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('RH_INDUSTRIAL_PUSH_MED',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_HEARTBEAT_REQ_S_5');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_INDUSTRIAL_PUSH_MED',	'YieldType'    , 'YIELD_RH_PLACEMENT'),
		('RH_INDUSTRIAL_PUSH_MED',	'Amount'       , 25); 
		

INSERT OR IGNORE INTO CommemorationModifiers  (CommemorationType, ModifierId)  VALUES	
		('COMMEMORATION_INDUSTRIAL',      		  			'RH_INDUSTRIAL_PUSH_HIGH');

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('RH_INDUSTRIAL_PUSH_HIGH',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_HEARTBEAT_REQ_S_7');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_INDUSTRIAL_PUSH_HIGH',	'YieldType'    , 'YIELD_RH_PLACEMENT'),
		('RH_INDUSTRIAL_PUSH_HIGH',	'Amount'       , 50); 
		
		
		
-- Free Inquiry		
		
INSERT OR IGNORE INTO CommemorationModifiers  (CommemorationType, ModifierId)  VALUES	
		('COMMEMORATION_SCIENTIFIC',      		  			'RH_FREE_INQUIRY_PUSH_LOW');

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('RH_FREE_INQUIRY_PUSH_LOW',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_FREE_INQUIRY_PUSH_REQ_S_3'); -- Harbours 2 ADJ

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FREE_INQUIRY_PUSH_LOW',	'YieldType'    , 'YIELD_SCIENCE'),
		('RH_FREE_INQUIRY_PUSH_LOW',	'Amount'       , 40); -- pvs 10 placement, 15


INSERT OR IGNORE INTO CommemorationModifiers  (CommemorationType, ModifierId)  VALUES	
		('COMMEMORATION_SCIENTIFIC',      		  			'RH_FREE_INQUIRY_PUSH_MED');

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('RH_FREE_INQUIRY_PUSH_MED',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_FREE_INQUIRY_PUSH_REQ_S_5');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FREE_INQUIRY_PUSH_MED',	'YieldType'    , 'YIELD_SCIENCE'),
		('RH_FREE_INQUIRY_PUSH_MED',	'Amount'       , 150); 
		
		

INSERT OR IGNORE INTO CommemorationModifiers  (CommemorationType, ModifierId)  VALUES	
		('COMMEMORATION_SCIENTIFIC',      		  			'RH_FREE_INQUIRY_PUSH_COMMERICAL_MOD');

INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('RH_FREE_INQUIRY_PUSH_COMMERICAL_MOD',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_FREE_INQUIRY_PUSH_COMMERICAL');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FREE_INQUIRY_PUSH_COMMERICAL_MOD',	'YieldType'    , 'YIELD_SCIENCE'),
		('RH_FREE_INQUIRY_PUSH_COMMERICAL_MOD',	'Amount'       , 150); 
		
		
		
		
-- Harbour and Commercial Hub Strat Golden Age in Advance


-- High Faith Adj

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('RH_COMMERCIAL_GOLDEN_AGE_REQS', 'REQUIREMENTSET_TEST_ALL'),
		('RH_HARBOUR_GOLDEN_AGE_REQS', 'REQUIREMENTSET_TEST_ALL');


-- Commercial

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_COMMERCIAL_GOLDEN_AGE_REQS', 'RH_PLAYER_AT_ANCIENT_ERA'),
		('RH_COMMERCIAL_GOLDEN_AGE_REQS', 'RH_PLAYER_NOT_MEDIEVAL_ERA'),
	--	('RH_COMMERCIAL_GOLDEN_AGE_REQS', 'RH_AI_HIGH_SCI_ADJ_3'),
		('RH_COMMERCIAL_GOLDEN_AGE_REQS', 'REQUIRES_PLAYER_IS_AI'),
		('RH_COMMERCIAL_GOLDEN_AGE_REQS', 'REQUIRES_PLAYER_HAS_GOLDEN_AGE');	
	
-- Harbour
	
INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES	
		('RH_HARBOUR_GOLDEN_AGE_REQS', 'RH_PLAYER_AT_ANCIENT_ERA'),
		('RH_HARBOUR_GOLDEN_AGE_REQS', 'RH_PLAYER_NOT_MEDIEVAL_ERA'),
	--	('RH_HARBOUR_GOLDEN_AGE_REQS', 'RH_AI_HIGH_SCI_ADJ_5'),
		('RH_HARBOUR_GOLDEN_AGE_REQS', 'REQUIRES_PLAYER_IS_AI'),
		('RH_HARBOUR_GOLDEN_AGE_REQS', 'REQUIRES_PLAYER_HAS_GOLDEN_AGE');		
		



INSERT OR IGNORE INTO CommemorationModifiers  (CommemorationType, ModifierId)  VALUES	
		('COMMEMORATION_SCIENTIFIC',      		  			'RH_FREE_INQUIRY_PUSH_ADVANCE_COMMERICAL'),
		('COMMEMORATION_SCIENTIFIC',      		  			'RH_FREE_INQUIRY_PUSH_ADVANCE_HARBOUR');


INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, SubjectRequirementSetId) VALUES	
		('RH_FREE_INQUIRY_PUSH_ADVANCE_COMMERICAL',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_COMMERCIAL_GOLDEN_AGE_REQS'),

		('RH_FREE_INQUIRY_PUSH_ADVANCE_HARBOUR',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'RH_HARBOUR_GOLDEN_AGE_REQS');



INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_FREE_INQUIRY_PUSH_ADVANCE_COMMERICAL',	'YieldType'    , 'YIELD_RH_NAVAL'),
		('RH_FREE_INQUIRY_PUSH_ADVANCE_COMMERICAL',	'Amount'       , 20), -- pvs 10
		
		('RH_FREE_INQUIRY_PUSH_ADVANCE_HARBOUR',	'YieldType'    , 'YIELD_RH_TRADE'),
		('RH_FREE_INQUIRY_PUSH_ADVANCE_HARBOUR',	'Amount'       , 25); 		
				
		
INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId) VALUES	
		
		('RH_INFRA_PURCHASE_TEMP',								'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',		'PLAYER_IS_AI');
		
INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
			
		('RH_INFRA_PURCHASE_TEMP',								'UnitType',					'UNIT_BUILDER'),
		('RH_INFRA_PURCHASE_TEMP',								'Amount',					1),
		('RH_INFRA_PURCHASE_TEMP',								'AllowUniqueOverride',		0);				
		
		
INSERT OR IGNORE INTO CommemorationModifiers  (CommemorationType, ModifierId)  VALUES	
		('COMMEMORATION_INFRASTRUCTURE',      		  			'RH_AI_IMPROVEMENT1_GOLD_SIM'),
		('COMMEMORATION_INFRASTRUCTURE',      		  			'RH_INFRA_PURCHASE_TEMP');		
		
		
		
-- Todo His Sunk Dracanas Golden Age Pick in Mid Game		
		
		
		