
-- AUTHOR: ROMANHOLIDAY
-- RH Trait Leader

--------------------------------------------------------------------------------------------------------------------------
-- Expansionist
--------------------------------------------------------------------------------------------------------------------------

-- TRAIT_LEADER_EXPANSIONIST already exists (def for dido, trajan a few other leaders)

-- 		<Row ListType="ExpansionistCitySettlement" LeaderType="TRAIT_LEADER_EXPANSIONIST" System="SettlementPreferences"/>

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('ExpansionistAlliances'),
('ExpansionistDiplomacy'),
('ExpansionistUnitBuilds'),
('ExpansionistUnits'),
('ExpansionistDistricts'),
('ExpansionistTechs'),
('ExpansionistCivics'),
('ExpansionistYields'),
('ExpansionistPsuedos'),
('ExpansionistBuildings'),
('ExpansionistProjects'),
('ExpansionistOperations'),
('ExpansionistScoutUses'),
('ExpansionistSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('ExpansionistAlliances',   		'TRAIT_LEADER_EXPANSIONIST', 'Alliances'),
('ExpansionistDiplomacy',   'TRAIT_LEADER_EXPANSIONIST', 'DiplomaticActions'),
('ExpansionistUnitBuilds',   'TRAIT_LEADER_EXPANSIONIST', 'UnitPromotionClasses'),
('ExpansionistUnits', 'TRAIT_LEADER_EXPANSIONIST', 'Units'),
('ExpansionistDistricts', 'TRAIT_LEADER_EXPANSIONIST', 'Districts'),
('ExpansionistTechs',   'TRAIT_LEADER_EXPANSIONIST', 'Technologies'),
('ExpansionistCivics',   'TRAIT_LEADER_EXPANSIONIST', 'Civics'),
('ExpansionistYields',   'TRAIT_LEADER_EXPANSIONIST', 'Yields'),
('ExpansionistPsuedos',   'TRAIT_LEADER_EXPANSIONIST', 'PseudoYields'),
('ExpansionistBuildings',   'TRAIT_LEADER_EXPANSIONIST', 'Buildings'),
('ExpansionistProjects',   'TRAIT_LEADER_EXPANSIONIST', 'Projects'),
('ExpansionistOperations',   'TRAIT_LEADER_EXPANSIONIST', 'AiOperationTypes'),
('ExpansionistScoutUses',   'TRAIT_LEADER_EXPANSIONIST', 'AiScoutUses'),
('ExpansionistSettlement',   'TRAIT_LEADER_EXPANSIONIST', 'PlotEvaluations');

-- 		<Row ListType="FreeCitiesOperationLimits" Item="CITY_ASSAULT" Value="10"/>


--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

--('ExpansionistOperations', 'OP_SETTLE', 1, 1);  -- todo ancient and classical only



/*

		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="30"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="9"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="100"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="5"/>
		
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="-25"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="-1"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="-3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="50"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="1"/>
*/



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ExpansionistDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR', 0, 0),
('ExpansionistDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 1, 0),

('ExpansionistAlliances', 'ALLIANCE_MILITARY', 1, 45),
('ExpansionistAlliances', 'ALLIANCE_RESEARCH', 1, 0),
('ExpansionistAlliances', 'ALLIANCE_CULTURAL', 0, 0),

-- todo ancient and classical only
('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_SETTLER', 		1, 25),  
('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_COMBAT',      	 1, 10), -- todo ancient and classical only
('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_EXPLORER',      	 1, 5),
--('ExpansionistDistricts', 'DISTRICT_CAMPUS', 				1, 0), -- todo ancient and classical only
('ExpansionistPsuedos', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 90),
('ExpansionistBuildings', 'BUILDING_WALLS', 				1, 30), -- Defence after expansion
('ExpansionistBuildings', 'BUILDING_MONUMENT', 				1, 15), -- Some early culture / Loyalty
('ExpansionistYields', 'YIELD_FOOD', 						1, 10), -- Loyalty
('ExpansionistYields', 'YIELD_GOLD', 						1, 5),
('ExpansionistYields', 'YIELD_SCIENCE', 					1, 15),
('ExpansionistYields', 'YIELD_RH_MILITARY_PRODUCTION', 		1, 95), -- pvs 35
('ExpansionistYields', 'YIELD_RH_MAGNUS', 					1, 50),

('ExpansionistYields', 'YIELD_RH_EXPANSION', 				1, 350),

('ExpansionistYields', 'YIELD_RH_JUST_WAR',   			1, 300), -- pvs 75
('ExpansionistYields', 'YIELD_RH_FASCISM',   			1, 90),
('ExpansionistYields', 'YIELD_RH_MAYHEM',   			1, 35),

('ExpansionistYields', 'YIELD_RH_NUCLEAR_PROGRAM',   	1, 80),

('ExpansionistYields', 'YIELD_RH_BORDER_CONTROL_CB', 		1, 50),

('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 30), 
('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_AIR_COMBAT',   1, 5), 

('ExpansionistPsuedos', 'PSEUDOYIELD_GPP_ADMIRAL',   1, 30), -- pvs Harbor Favored
('ExpansionistPsuedos', 'PSEUDOYIELD_GPP_GENERAL',   1, 60), -- New, 8, 25

('ExpansionistPsuedos', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 8), 
('ExpansionistPsuedos', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 8), 

('ExpansionistPsuedos', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',   0, -25),

('ExpansionistPsuedos', 'PSEUDOYIELD_ENVIRONMENT',  			 0, -10),
('ExpansionistPsuedos', 'PSEUDOYIELD_IMPROVEMENT',   			1, 5), 

('ExpansionistPsuedos', 'PSEUDOYIELD_DIPLOMATIC_BONUS',   		1, -1), 
('ExpansionistPsuedos', 'PSEUDOYIELD_CITY_BASE',            	1,  50), 

('ExpansionistPsuedos', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 		1, -5), 
('ExpansionistPsuedos', 'PSEUDOYIELD_CITY_DEFENSES',       		 1, -10), 

('ExpansionistPsuedos', 'PSEUDOYIELD_CITY_POPULATION',        1, -90);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExpansionistSettlement', 'Foreign Continent', 0, 9);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('ExpansionistSettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('ExpansionistSettlement', 'Resource Class', 0, 1, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'),
('ExpansionistSettlement', 'Nearest Friendly City', 0, 1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'), 
('ExpansionistSettlement', 'Specific Resource', 0, 1, 'RESOURCE_IRON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_MELEE',            1,  		5), -- pvs 15, 16, 17, 19
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 		0, 		-6),
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 	0, 		-6),
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_RANGED', 			1, 		3),
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE',      0,  		-5);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('ExpansionistScoutUses', 'DEFAULT_LAND_SCOUTS',          						100), 
('ExpansionistScoutUses', 'DEFAULT_NAVAL_SCOUTS', 								150),
('ExpansionistScoutUses', 'LAND_SCOUTS_PER_PRIMARY_REGION', 					50),
('ExpansionistScoutUses', 'LAND_SCOUTS_PER_SECONDARY_REGION', 					50),
('ExpansionistScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',     			200);

-- Todo Wide Gov Preference

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExpansionistBuildings', 'BUILDING_GREAT_LIGHTHOUSE', 	1, 0), -- Exploration / Speed
('ExpansionistBuildings', 'BUILDING_GOV_TALL', 			0, -250),
('ExpansionistBuildings', 'BUILDING_GOV_WIDE', 			1, 900),
('ExpansionistBuildings', 'BUILDING_GOV_CONQUEST', 		0, -100); 

-- Walls preference 

-- Civics

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ExpansionistCivics', 'CIVIC_MILITARY_TRADITION', 1, 0), -- Flanking bonus
('ExpansionistCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 1, 0),
('ExpansionistCivics', 'CIVIC_EARLY_EMPIRE', 1, 0), -- Settlers
('ExpansionistCivics', 'CIVIC_STATE_WORKFORCE', 1, 0), -- Gov plaza

('ExpansionistCivics', 'CIVIC_MOBILIZATION', 1, 0), -- Armies
('ExpansionistCivics', 'CIVIC_NATIONALISM', 1, 0);




INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExpansionistUnits',        'UNIT_GALLEY', 				1, 5),
('ExpansionistUnits',        'UNIT_CARAVEL', 				1, 7),
('ExpansionistUnits',        'UNIT_ARCHER', 				1, 5);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ExpansionistTechs', 'TECH_MINING', 								1, 0), 
('ExpansionistTechs', 'TECH_ANIMAL_HUSBANDRY', 						1, 0), -- Don't Build farms on Horses
('ExpansionistTechs', 'TECH_BRONZE_WORKING', 						1, 0), 

('ExpansionistTechs', 'TECH_SAILING', 								1, 0), 
('ExpansionistTechs', 'TECH_ARCHERY', 								1, 0), 
('ExpansionistTechs', 'TECH_WRITING', 								1, 50), 

('ExpansionistTechs', 'TECH_MASONRY', 							1, 0), -- Walls

('ExpansionistTechs', 'TECH_CELESTIAL_NAVIGATION', 				1, 100), -- naval expansion
('ExpansionistTechs', 'TECH_SHIPBUILDING', 						1, 100), -- naval expansion

('ExpansionistTechs', 'TECH_CARTOGRAPHY', 						1, 100), -- naval expansion

('ExpansionistTechs', 'TECH_APPRENTICESHIP', 				    1, 0), -- Man at Arms
('ExpansionistTechs', 'TECH_MACHINERY', 				    	1, 0), -- Crossbowmen / Kilwa

('ExpansionistTechs', 'TECH_PRINTING', 				    		1, 0), -- 3 Combat

('ExpansionistTechs', 'TECH_MILITARY_ENGINEERING', 				1, 0), -- Trebuchet / Niter
('ExpansionistTechs', 'TECH_STIRRUPS', 				            1, 0), -- Knight / Musketman Rush

('ExpansionistTechs', 'TECH_GUNPOWDER', 							1, 0), 
('ExpansionistTechs', 'TECH_METAL_CASTING', 						1, 0), -- Bombard
--('ExpansionistTechs', 'TECH_BALLISTICS',     						1, 0), Field Cannon

('ExpansionistTechs', 'TECH_MILITARY_SCIENCE',     						1, 0),

('ExpansionistTechs', 'TECH_COMBINED_ARMS', 						1, 0), -- Uranium 
('ExpansionistTechs', 'TECH_FLIGHT', 								1, 0),
('ExpansionistTechs', 'TECH_ADVANCED_FLIGHT', 					1, 0), -- Important
('ExpansionistTechs', 'TECH_RADIO', 								1, 0), -- Aluminium
('ExpansionistTechs', 'TECH_REFINING', 							1, 0), -- Oil
('ExpansionistTechs', 'TECH_RIFLING', 							1, 0), -- Leads to TECH_REFINING and Steel

('ExpansionistTechs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0), -- adv bombers
('ExpansionistTechs', 'TECH_NUCLEAR_FISSION', 					1, 0), 
('ExpansionistTechs', 'TECH_NUCLEAR_FUSION', 						1, 0), 
('ExpansionistTechs', 'TECH_SMART_MATERIALS', 					1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ExpansionistDistricts', 'DISTRICT_GOVERNMENT', 			1, 300);
--('ExpansionistDistricts', 'DISTRICT_HARBOR', 				1, 0);



/*
INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_EXPANSIONIST', 'RH_AI_EXPANSIONIST_SETTLE_DIPLO');



INSERT OR IGNORE INTO Modifiers   (ModifierId, ModifierType, OwnerRequirementSetId, SubjectRequirementSetId) VALUES	
		('RH_AI_EXPANSIONIST_SETTLE_DIPLO',	'MODIFIER_PLAYER_DIPLOMACY_SETTLED_CITIES', 'ON_TURN_STARTED',  'RH_AI_PLAYER_DIPLO');

*/

/*

Already in diplo strat
INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_EXPANSIONIST_SETTLE_DIPLO', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
--		('RH_AI_EXPANSIONIST_SETTLE_DIPLO', 'REQUIRES_TURN_STARTED'),
				
		('RH_AI_EXPANSIONIST_SETTLE_DIPLO', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('RH_AI_EXPANSIONIST_SETTLE_DIPLO', 'REQUIRES_PLAYER_IS_HUMAN');


*/




/*

		<Row>
			<RequirementSetId>PLAYER_IS_HUMAN</RequirementSetId>
			<RequirementId>REQUIRES_PLAYER_IS_HUMAN</RequirementId>
		</Row>

		<Row>
			<RequirementId>REQUIRES_PLAYER_IS_HUMAN</RequirementId>
			<RequirementType>REQUIREMENT_PLAYER_IS_HUMAN</RequirementType>
		</Row>
		<Row>
			<RequirementId>REQUIRES_PLAYER_IS_AI</RequirementId>
			<RequirementType>REQUIREMENT_PLAYER_IS_HUMAN</RequirementType>
			<Inverse>True</Inverse>
		</Row>
		
		<Row>
			<RequirementSetId>PLAYER_IS_HIGH_DIFFICULTY_AI</RequirementSetId>
			<RequirementId>REQUIRES_PLAYER_IS_AI</RequirementId>
		</Row>
		
*/


/*
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('RH_AI_EXPANSIONIST_SETTLE_DIPLO', 'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('RH_AI_EXPANSIONIST_SETTLE_DIPLO',		'CivicType',	'CIVIC_POLITICAL_PHILOSOPHY');
*/



/*
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveProjects', 'PROJECT_MANHATTAN_PROJECT', 			1, 90),
('AggressiveProjects', 'PROJECT_OPERATION_IVY', 				1, 90),
('AggressiveProjects', 'PROJECT_CARBON_RECAPTURE', 				0, -50); -- new value -50
*/


--DISTRICT_NEIGHBORHOOD


--('AggressiveProjects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 1, 0),
--('AggressiveProjects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 1, 0);


/*

		('AggressiveSpecializations',	1,			10,			'BUILD_TRADE_UNITS',				Null),
		('AggressiveSpecializations',	1,			10,			'BUILD_FOR_FOOD',					Null),
		('AggressiveSpecializations',	1,			10,			'BUILD_FOR_PRODUCTION',				Null),
		('AggressiveSpecializations',	1,			5,			'BUILD_FOR_CULTURE',				Null),
		('AggressiveSpecializations',	1,			-20,		'BUILD_FOR_FAITH',				    Null),

*/

/*

INSERT INTO AgendaPreferredLeaders	
		(LeaderType,				AgendaType,				PercentageChance)
VALUES	

		('',				'AGENDA_DARWINIST',						30),
		('',				'AGENDA_AIRPOWER',						15),
		('',				'AGENDA_CITY_STATE_PROTECTOR',			30),
		('',				'AGENDA_CULTURED',						15),
		('',				'AGENDA_DESTINATION_CIV',				10),
		('',				'AGENDA_DEMAGOGUE',						25),
		('',				'AGENDA_LIBERTARIAN',					10);
		
*/
-- Doesn't use trait_leader, just leader name

--------------------------------------------------------------------------------------------------------------------------
-- RH Mad Expansionist
--------------------------------------------------------------------------------------------------------------------------


INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_MAD_EXPANSIONIST',				'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_MAD_EXPANSIONIST');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('Mad_ExpansionistDiplomacy'),
('Mad_ExpansionistUnitBuilds'),
('Mad_ExpansionistUnits'),
('Mad_ExpansionistDistricts'),
('Mad_ExpansionistTechs'),
('Mad_ExpansionistCivics'),
('Mad_ExpansionistYields'),
('Mad_ExpansionistPsuedos'),
('Mad_ExpansionistBuildings'),
('Mad_ExpansionistProjects'),
('Mad_ExpansionistOperations'),
('Mad_ExpansionistScoutUses'),
('Mad_ExpansionistSettlement'),
('Mad_ExpansionistSettlementPrefs');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('Mad_ExpansionistDiplomacy',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'DiplomaticActions'),
('Mad_ExpansionistUnitBuilds',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'UnitPromotionClasses'),
('Mad_ExpansionistUnits', 'TRAIT_LEADER_MAD_EXPANSIONIST', 'Units'),
('Mad_ExpansionistDistricts', 'TRAIT_LEADER_MAD_EXPANSIONIST', 'Districts'),
('Mad_ExpansionistTechs',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Technologies'),
('Mad_ExpansionistCivics',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Civics'),
('Mad_ExpansionistYields',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Yields'),
('Mad_ExpansionistPsuedos',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'PseudoYields'),
('Mad_ExpansionistBuildings',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Buildings'),
('Mad_ExpansionistProjects',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Projects'),
('Mad_ExpansionistOperations',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'AiOperationTypes'),
('Mad_ExpansionistScoutUses',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'AiScoutUses'),
('Mad_ExpansionistSettlement',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'PlotEvaluations'),
('Mad_ExpansionistSettlementPrefs',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'SettlementPreferences');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
-- todo early only
('Mad_ExpansionistPsuedos', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 		1, 10),
('Mad_ExpansionistPsuedos', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 			1, 8),
('Mad_ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_SETTLER', 				1, 30); 
	
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Mad_ExpansionistOperations', 'OP_SETTLE', 1, 1);  -- todo ancient and classical only

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Mad_ExpansionistSettlement', 'Foreign Continent', 0, 9);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('Mad_ExpansionistSettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('Mad_ExpansionistSettlement', 'Resource Class', 0, 1, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'),
--('Mad_ExpansionistSettlement', 'Nearest Friendly City', 0, 1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'), 
('Mad_ExpansionistSettlement', 'Specific Resource', 0, 1, 'RESOURCE_IRON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES

('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_MIN_VALUE_NEEDED', 										-10), 
--('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_ADDITIONAL_VALUE_PER_CITY', 						    0), 
('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_DECAY_TURNS', 											-2), 
('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_DECAY_AMOUNT', 					 						2);
--('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_CITY_MINIMUM_VALUE', 									25);
--('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_CITY_VALUE_MULTIPLIER', 									1);

/*

		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="30"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="9"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="100"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="5"/>
		
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="-25"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="-1"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="-3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="50"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="1"/>
*/



--------------------------------------------------------------------------------------------------------------------------
-- Aggressive Military / Diplomacy Trait
--------------------------------------------------------------------------------------------------------------------------

-- Todo     <Row ListType="ScienceSensitivity" Item="YIELD_SCIENCE" Value="25"/>

DELETE FROM AiFavoredItems WHERE ListType = 'AgressiveDiplomacy'; -- Is spelt wrong lol 
DELETE FROM AiFavoredItems WHERE ListType = 'AggressivePseudoYields';

--INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
--('DarwinistEnjoysWarDiplomacy',    'TRAIT_AGENDA_ENJOYS_WAR', 'DiplomaticActions'),
--('DarwinistEnjoysWarPseudoYields', 'TRAIT_AGENDA_ENJOYS_WAR', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AgressiveDiplomacy', 'DIPLOACTION_DENOUNCE', 1, 0), 
('AgressiveDiplomacy', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 0),
--('AgressiveDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 85),
--('AgressiveDiplomacy', 'DIPLOACTION_DECLARE_FRIENDSHIP', 0, 0),
--('AgressiveDiplomacy', 'DIPLOACTION_ALLIANCE', 0, 0),
--('AgressiveDiplomacy', 'DIPLOACTION_RENEW_FRIENDSHIP', 0, 0),
--('AgressiveDiplomacy', 'DIPLOACTION_PROPOSE_TRADE', 0, 0), -- Might need checking
('AgressiveDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0),
('AgressiveDiplomacy', 'DIPLOACTION_DECLARE_FORMAL_WAR', 1, 0),
('AgressiveDiplomacy', 'DIPLOACTION_DECLARE_TERRITORIAL_WAR', 1, 0),

('AgressiveDiplomacy', 'DIPLOACTION_JOINT_WAR', 1, 0), -- New

('AgressiveDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR', 0, 0),

('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 		   1, 50), -- pvs 5, 7, 15
('AggressivePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 27), -- pvs 19, 18, 19, 20, 22
('AggressivePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 16), -- 14, 15, 14, 17
('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',       1, 25), -- 25, pvs 24, 22, 25 (however base pseudo is higher by default at 1.15, now 1.12)
('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 65), -- 25 pvs 26, 27, 30, 45, 55
('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT',   1, 40), -- 25 pvs 27, 31, 34

('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_TRADE',  		 1, 50), -- Diplo Vision and Money for Units
('AggressivePseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 65),

('AggressivePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',   	0, -65),
('AggressivePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT',   1, -25),

('AggressivePseudoYields', 'PSEUDOYIELD_INFLUENCE',  				 0, -35),
('AggressivePseudoYields', 'PSEUDOYIELD_ENVIRONMENT',  				 0, -15),
('AggressivePseudoYields', 'PSEUDOYIELD_IMPROVEMENT',   			1, 23), -- Hopefully more Strategics, pvs 20, 12, 21
('AggressivePseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON',   			1, 20), -- pvs 38, 20, 18

('AggressivePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR',   		1, -10),
('AggressivePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS',   		1, -28), -- Pvs -6, -12, -10, -7, -13, -14, -21, -23
('AggressivePseudoYields', 'PSEUDOYIELD_CITY_BASE',            		1,  210), -- 40, pvs 180, 160, 130, 110, 130, 140, 120, 180
('AggressivePseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 		1, -40), -- -10 -- pvs -25, -20, -22, -24, -28, -33
('AggressivePseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',       		 1, -40), -- -25, pvs -28, -25, -28, -33
('AggressivePseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL',      1, -35), -- pvs 25

--('AggressivePseudoYields', 'PSEUDOYIELD_CITY_POPULATION',        1, 10),
('AggressivePseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 20), -- 50, 12
('AggressivePseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 15), -- Gold
--('AggressivePseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, -6), 
('AggressivePseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -10),

('AggressivePseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 25), -- pvs 5, 6, 7
('AggressivePseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 	1, 290); -- 50, 22, 35, 30, 35, 45, 50, 55, 75, 150, 175

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AggressivePseudoYields', 'PSEUDOYIELD_WONDER',  -20);

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AggressiveSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('AggressiveSettlement',   'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'PlotEvaluations');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveSettlement', 'Foreign Continent', 0, 5);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('AggressiveSettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('AggressiveSettlement', 'Resource Class', 0, 3, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'),
('AggressiveSettlement', 'Nearest Friendly City', 0, 1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'), -- pvs 2 ( now reduced def to -9) -- now back to 1 -- back to 2, back to 1
('AggressiveSettlement', 'Specific Resource', 0, 6, 'RESOURCE_NITER', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('AggressiveSettlement', 'Specific Resource', 0, 3, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('AggressiveSettlement', 'Specific Resource', 0, 6, 'RESOURCE_ALUMINUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- pvs 2, 1, 3
('AggressiveSettlement', 'Specific Resource', 0, 15, 'RESOURCE_URANIUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 8


-- More siege units to take out cities

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AggressiveAlliances'),
('AggressiveUnitBuilds'),
('AggressiveUnits'),
('AggressiveDistricts'),
('AggressiveTechs'),
('AggressiveCivics'),
('AggressiveYields'),
('AggressiveBuildings'),
('AggressiveSavings'),
('AggressiveSpecializations'),
('AggressiveOperations'),
('AggressiveImprovements'),
('AggressiveProjects');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('AggressiveAlliances',   		'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Alliances'),
('AggressiveUnitBuilds',   		'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'UnitPromotionClasses'),
('AggressiveUnits', 			'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Units'),
('AggressiveDistricts', 		'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Districts'),
('AggressiveTechs',   			'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Technologies'),
('AggressiveCivics',   			'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Civics'),
('AggressiveYields',   			'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Yields'),
('AggressiveBuildings',  		 'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Buildings'),
('AggressiveSavings',  			 'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'SavingTypes'),
('AggressiveSpecializations',   'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'AiBuildSpecializations'),
('AggressiveOperations',       'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'AiOperationTypes'),
('AggressiveImprovements',       'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Improvements'),
('AggressiveProjects',  		 'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Projects');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveAlliances', 'ALLIANCE_MILITARY', 1, 20);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveImprovements', 'IMPROVEMENT_MINE', 					1, 40), -- pvs 25 
('AggressiveImprovements', 'IMPROVEMENT_PASTURE', 				1,  25);
--('AggressiveImprovements',	'IMPROVEMENT_QUARRY',	0,	-5),

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 	1, 200),
('AggressiveImprovements', 'IMPROVEMENT_AIRSTRIP', 			1, 10),
--('AggressiveImprovements', 'IMPROVEMENT_CITY_PARK', 		1, 90),
--('AggressiveImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 0, -80), 
('AggressiveImprovements', 'IMPROVEMENT_MISSILE_SILO', 		1, 90),
('AggressiveImprovements', 'IMPROVEMENT_OIL_WELL', 			1, 200);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 1, 		30),
('AggressiveImprovements', 'IMPROVEMENT_FORT',  			0,	    50); 

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('AggressiveUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 3), -- pvs 0
--('AggressiveUnitBuilds', 'PROMOTION_CLASS_RANGED',  2),
--('AggressiveUnitBuilds', 'PROMOTION_CLASS_MELEE',  2), -- pvs 3 (and favoured)
('AggressiveUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 		1,  4), -- pvs 1, 3, 5
('AggressiveUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 		0, -6),
('AggressiveUnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 			1, 30), -- pvs 20
('AggressiveUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 		0,-15); -- pvs -2, -3, -4

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AggressiveUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 1),
('AggressiveUnitBuilds', 'PROMOTION_CLASS_AIR_FIGHTER', -9);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveUnitBuilds', 'PROMOTION_CLASS_SIEGE',            1,  12), -- pvs 15, 16, 17, 19, 13 (was 20, boosting for all other civs instead, military strat)
('AggressiveUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE',      0,  -5);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveOperations', 'CITY_ASSAULT', 1, 1); 

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('AggressiveBuildings', 'BUILDING_MONUMENT', 			1, 0), -- Some early culture
('AggressiveBuildings', 'BUILDING_SEWER', 				1, 90), -- Make up for lower Neighbourhood preference

('AggressiveBuildings', 'BUILDING_GOV_MILITARY', 		1, 				900),
('AggressiveBuildings', 'BUILDING_GOV_TALL', 			0,	     		-20),
('AggressiveBuildings', 'BUILDING_GOV_WIDE', 			1, 				700),

('AggressiveBuildings', 'BUILDING_GOV_FAITH',			1, 				 900),
('AggressiveBuildings', 'BUILDING_GOV_SPIES', 			1, 				 900),

('AggressiveBuildings', 'BUILDING_GOV_SCIENCE', 		0,				 0),
('AggressiveBuildings', 'BUILDING_GOV_CULTURE', 		0,				 0),
('AggressiveBuildings', 'BUILDING_GOV_CONQUEST', 		1,				 500); 

-- Civics

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('AggressiveCivics', 'CIVIC_MILITARY_TRADITION', 1, 0), -- Flanking bonus
('AggressiveCivics', 'CIVIC_MILITARY_TRAINING', 1, 0),
('AggressiveCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 1, 0),
('AggressiveCivics', 'CIVIC_EARLY_EMPIRE', 1, 0), -- Settlers
('AggressiveCivics', 'CIVIC_STATE_WORKFORCE', 1, 0), -- Gov plaza

('AggressiveCivics', 'CIVIC_MERCENARIES', 1, 0),
('AggressiveCivics', 'CIVIC_NATIONALISM', 1, 0),
('AggressiveCivics', 'CIVIC_MOBILIZATION', 1, 0),
('AggressiveCivics', 'CIVIC_RAPID_DEPLOYMENT', 1, 0),
('AggressiveCivics', 'CIVIC_SUFFRAGE', 0, 0), 
('AggressiveCivics', 'CIVIC_TOTALITARIANISM', 1, 0), 
--('AggressiveCivics', 'CIVIC_CLASS_STRUGGLE', 0, 0), 
('AggressiveCivics', 'CIVIC_OPTIMIZATION_IMPERATIVE', 1, 0), 
('AggressiveCivics', 'CIVIC_DISTRIBUTED_SOVEREIGNTY', 0, 0), -- -3 Combat Strength from Digital Democracy No lol
('AggressiveCivics', 'CIVIC_VENTURE_POLITICS', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveYields', 'YIELD_RH_FASCISM', 1, 275), -- pvs 80
('AggressiveYields', 'YIELD_RH_NUCLEAR', 1, 110),
('AggressiveYields', 'YIELD_RH_CAV',	 1, 90), -- pvs 70
('AggressiveYields', 'YIELD_RH_MILITARY_PRODUCTION', 		1, 850), -- pvs 600
('AggressiveYields', 'YIELD_RH_MAYHEM', 				1, 90),

--('AggressiveYields', 'YIELD_RH_PUBLIC_RELATIONS_DEBUFF', 		1, 250),

('AggressiveYields', 'YIELD_RH_OLIGARCHY', 				1, 140), -- pvs 50, 125

('AggressiveYields', 'YIELD_RH_JUST_WAR',   		1, 750), -- pvs 150, 200, 400
('AggressiveYields', 'YIELD_SCIENCE', 				1, 25), 
('AggressiveYields', 'YIELD_PRODUCTION', 			1, 25),

('AggressiveYields', 'YIELD_RH_NUCLEAR_PROGRAM', 	1, 100),

('AggressiveYields', 'YIELD_RH_R_GODDESS', 			0, -95),

('AggressiveYields', 'YIELD_GOLD', 					1, 10), -- pvs 5, 8
('AggressiveYields', 'YIELD_CULTURE', 				1, -10),
('AggressiveYields', 'YIELD_FAITH', 				1, -5);

--('AggressiveYields', 'YIELD_FOOD', 					0, -3); -- needed for loyalty


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveUnits',        'UNIT_TANK', 				1, 5), -- pvs 40, 10, 9
('AggressiveUnits',        'UNIT_INFANTRY', 			0, -10), -- pvs -10, -12
('AggressiveUnits',        'UNIT_MECHANIZED_INFANTRY', 	0, -11), -- pvs -10
('AggressiveUnits', 		'UNIT_SIEGE_TOWER', 		1, 	5), -- pvs 8 AI is terrible at using them
('AggressiveUnits', 	'UNIT_BOMBARD', 				1,  8), -- pvs 6
('AggressiveUnits', 	'UNIT_ARTILLERY', 				1, 	8), -- pvs 12, 14, 17
('AggressiveUnits', 	'UNIT_ROCKET_ARTILLERY',		1, 	12), -- 7
('AggressiveUnits',        'UNIT_AT_CREW', 				0, -4),
('AggressiveUnits',        'UNIT_MODERN_ARMOR', 		1, 3);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('AggressiveTechs', 'TECH_TELECOMMUNICATIONS', 0, 0), -- Fewer nuclear subs test

--('AggressiveTechs', 'TECH_ANIMAL_HUSBANDRY', 					1, 0), -- Don't Build farms on Horses, temp disabled for gaul
('AggressiveTechs', 'TECH_WRITING', 							1, 0),
('AggressiveTechs', 'TECH_MINING', 								1, 900), -- New
('AggressiveTechs', 'TECH_BRONZE_WORKING', 						1, 0), 
('AggressiveTechs', 'TECH_IRON_WORKING', 						1, 0), -- Swordsmen
('AggressiveTechs', 'TECH_ENGINEERING', 						1, 90), -- Catapult
('AggressiveTechs', 'TECH_MACHINERY', 							1, 0), -- Crossbowmen

('AggressiveTechs', 'TECH_APPRENTICESHIP', 						1, 0), -- Man at Arms!

('AggressiveTechs', 'TECH_MILITARY_ENGINEERING', 				1, 0),  -- armoury / niter
('AggressiveTechs', 'TECH_STIRRUPS', 							1, 0), -- Knight
('AggressiveTechs', 'TECH_GUNPOWDER', 							1, 0),

('AggressiveTechs', 'TECH_PRINTING', 							1, 0), -- +3 Combat strength

('AggressiveTechs', 'TECH_METAL_CASTING', 						1, 0), -- Bombard

('AggressiveTechs', 'TECH_BALLISTICS',     						1, 0), -- Cuirassier (Heavy Cav)
('AggressiveTechs', 'TECH_MILITARY_SCIENCE', 					1, 0), -- cav / military academy / line infantry
('AggressiveTechs', 'TECH_COMBUSTION', 							1, 0), -- Tanks
('AggressiveTechs', 'TECH_COMBINED_ARMS', 						1, 0), -- Uranium 

('AggressiveTechs', 'TECH_INDUSTRIALIZATION', 					1, 500),
('AggressiveTechs', 'TECH_STEAM_POWER', 						1, 0),
('AggressiveTechs', 'TECH_FLIGHT', 								1, 0),
('AggressiveTechs', 'TECH_ADVANCED_FLIGHT', 					1, 0), -- Important
('AggressiveTechs', 'TECH_RADIO', 								1, 0), -- Aluminium
('AggressiveTechs', 'TECH_REFINING', 							1, 0), -- Oil
('AggressiveTechs', 'TECH_RIFLING', 							1, 0), -- Leads to TECH_REFINING and Steel

('AggressiveTechs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0), -- adv bombers
('AggressiveTechs', 'TECH_NUCLEAR_FISSION', 					1, 0), 
('AggressiveTechs', 'TECH_NUCLEAR_FUSION', 						1, 0), 
('AggressiveTechs', 'TECH_SMART_MATERIALS', 					1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AggressiveSavings', 'SAVING_GREAT_PEOPLE', 						 1), -- def 1
('AggressiveSavings', 'SAVING_UNITS', 								 -2); -- def 3

--('AggressiveSavings', 'SAVING_PLOTS', 							0), -- def 2
--('AggressiveSavings', 'SAVING_SLUSH_FUND', 							 0); -- def 4


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AggressiveSpecializations', 'BUILD_MILITARY_UNITS', 			1); -- def 1

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveProjects', 'PROJECT_MANHATTAN_PROJECT', 			1, 90),
('AggressiveProjects', 'PROJECT_OPERATION_IVY', 				1, 90),
('AggressiveProjects', 'PROJECT_CARBON_RECAPTURE', 				0, -50); -- new value -50


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveDistricts', 'DISTRICT_NEIGHBORHOOD', 				0, 0);


/*
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_FOOD"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_PRODUCTION"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_GOLD"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_SCIENCE"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_CULTURE"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_FAITH"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_CITY_DEFENSES" Value="-1"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_MILITARY_UNITS" Value="1"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_TRADE_UNITS" Value="2"/>
		
		<Row ListType="DefaultScoutUse" Item="DEFAULT_LAND_SCOUTS" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="DEFAULT_NAVAL_SCOUTS" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="LAND_SCOUTS_PER_PRIMARY_REGION" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="LAND_SCOUTS_PER_SECONDARY_REGION" Value="50"/>
		<Row ListType="DefaultScoutUse" Item="NAVAL_SCOUTS_FOR_WORLD_EXPLORATION" Value="300"/>
*/


--DISTRICT_NEIGHBORHOOD


--('AggressiveProjects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 1, 0),
--('AggressiveProjects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 1, 0);

--------------------------------------------------------------------------------------------------------------------------
-- RH Defensive
--------------------------------------------------------------------------------------------------------------------------


INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_DEFENSIVE',	'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_DEFENSIVE');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('DefensiveAlliances'),
('DefensiveDiplomacy'),
('DefensiveUnitBuilds'),
('DefensiveUnits'),
('DefensiveDistricts'),
('DefensiveTechs'),
('DefensiveCivics'),
('DefensiveYields'),
('DefensivePsuedos'),
('DefensiveBuildings'),
('DefensiveProjects'),
('DefensiveOperations'),
('DefensiveScoutUses'),
('DefensiveSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('DefensiveAlliances',   'TRAIT_LEADER_DEFENSIVE', 'Alliances'),
('DefensiveDiplomacy',   'TRAIT_LEADER_DEFENSIVE', 'DiplomaticActions'),
('DefensiveUnitBuilds',   'TRAIT_LEADER_DEFENSIVE', 'UnitPromotionClasses'),
('DefensiveUnits', 'TRAIT_LEADER_DEFENSIVE', 'Units'),
('DefensiveDistricts', 'TRAIT_LEADER_DEFENSIVE', 'Districts'),
('DefensiveTechs',   'TRAIT_LEADER_DEFENSIVE', 'Technologies'),
('DefensiveCivics',   'TRAIT_LEADER_DEFENSIVE', 'Civics'),
('DefensiveYields',   'TRAIT_LEADER_DEFENSIVE', 'Yields'),
('DefensivePsuedos',   'TRAIT_LEADER_DEFENSIVE', 'PseudoYields'),
('DefensiveBuildings',   'TRAIT_LEADER_DEFENSIVE', 'Buildings'),
('DefensiveProjects',   'TRAIT_LEADER_DEFENSIVE', 'Projects'),
('DefensiveOperations',   'TRAIT_LEADER_DEFENSIVE', 'AiOperationTypes'),
('DefensiveScoutUses',   'TRAIT_LEADER_DEFENSIVE', 'AiScoutUses'),
('DefensiveSettlement',   'TRAIT_LEADER_DEFENSIVE', 'PlotEvaluations');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveDiplomacy', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 0),
('DefensiveDiplomacy', 'DIPLOACTION_ALLIANCE_RESEARCH', 1, 0),
('DefensiveDiplomacy', 'DIPLOACTION_ALLIANCE_ECONOMIC', 1, 0),
('DefensiveDiplomacy', 'DIPLOACTION_ALLIANCE_CULTURAL', 1, 0),

('DefensiveDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0),
--('DefensiveDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE', 1, 0),

('DefensiveDiplomacy', 'DIPLOACTION_THIRD_PARTY_WAR', 0, 0),

('DefensiveDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveAlliances', 'ALLIANCE_MILITARY', 1, 100),
('DefensiveAlliances', 'ALLIANCE_RESEARCH', 1, 50),
('DefensiveAlliances', 'ALLIANCE_ECONOMIC', 1, 50),
('DefensiveAlliances', 'ALLIANCE_CULTURAL', 1, 50);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensivePsuedos', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 			1, 4),
('DefensivePsuedos', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 		1, 5),

('DefensivePsuedos', 'PSEUDOYIELD_GPP_GENERAL', 				1, 85), -- pvs 15

('DefensivePsuedos', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 			1, 10);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveYields', 'YIELD_RH_UNDER_ATTACK', 1, 65), -- pvs 15
('DefensiveYields', 'YIELD_RH_MERCENARY_COMPANIES_DOUBLE', 1, 750),

('DefensiveYields', 'YIELD_RH_MILITARY_ADVISORY_BUFF', 1, 850), -- +5 Ranged Strength

('DefensiveYields', 'YIELD_RH_PUBLIC_RELATIONS_BUFF', 1, 950), -- More Grievances

('DefensiveYields', 'YIELD_RH_MONARCHY', 1, 150),
('DefensiveYields', 'YIELD_RH_DEMOCRACY', 1, 90),
('DefensiveYields', 'YIELD_RH_FASCISM',   1, 90); -- pvs 40

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveUnitBuilds', 'PROMOTION_CLASS_RANGED', 			1, 10);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('DefensiveUnitBuilds', 'PROMOTION_CLASS_AIR_FIGHTER', 		5); -- pvs 8

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveBuildings', 'BUILDING_WALLS', 							1, 100),
('DefensiveBuildings', 'BUILDING_CASTLE', 							1, 100),
('DefensiveBuildings', 'BUILDING_ALHAMBRA', 						1, 100),
('DefensiveBuildings', 'BUILDING_STAR_FORT', 						1, 100);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveCivics', 'CIVIC_DEFENSIVE_TACTICS', 							1, 0),
('DefensiveCivics', 'CIVIC_DIVINE_RIGHT', 								1, 0),
('DefensiveCivics', 'CIVIC_CIVIL_SERVICE', 							    1, 0); -- Alliance

UPDATE AiFavoredItems SET Item = (SELECT PrereqCivic FROM Governments WHERE GovernmentType = 'GOVERNMENT_MONARCHY') -- If a mod moves the gov to new civic
WHERE ListType = 'DefensiveCivics' AND Item = 'CIVIC_DIVINE_RIGHT';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveTechs', 'TECH_ARCHERY', 							1, 0),
('DefensiveTechs', 'TECH_MASONRY', 							1, 0),
('DefensiveTechs', 'TECH_APPRENTICESHIP', 					1, 0), -- Man at Arms high combat strength
('DefensiveTechs', 'TECH_CASTLES', 							1, 0), 
('DefensiveTechs', 'TECH_SIEGE_TACTICS', 					1, 0), 
('DefensiveTechs', 'TECH_MACHINERY', 						1, 0), -- Crossbowmen
('DefensiveTechs', 'TECH_BALLISTICS', 						1, 0), -- Field Cannons
('DefensiveTechs', 'TECH_ADVANCED_FLIGHT', 					1, 0),
('DefensiveTechs', 'TECH_COMPUTERS', 						1, 0), -- Defence Against the Sea lol
('DefensiveTechs', 'TECH_NUCLEAR_FISSION', 					1, 0);




-- Spy Civ

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

-- COMMEMORATION_CULTURAL Pen Brush and Voice
-- COMMEMORATION_INFRASTRUCTURE -- Monumentality

-- Todo Diplo Victory

-- Todo Has Good Faith City + Medieval / Classical Era = Pick Monumentality

--------------------------------------------------------------------------------------------------------------------------
-- RH Espionage
--------------------------------------------------------------------------------------------------------------------------


INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_ESPIONAGE',	'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_ESPIONAGE');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('EspionageAlliances'),
('EspionageDiplomacy'),
('EspionageUnitBuilds'),
('EspionageUnits'),
('EspionageDistricts'),
('EspionageTechs'),
('EspionageCivics'),
('EspionageYields'),
('EspionagePsuedos'),
('EspionageBuildings'),
('EspionageProjects'),
('EspionageOperations'),
('EspionageScoutUses'),
('EspionageCommemorations'),
('EspionageResolutions'),
('EspionageSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('EspionageAlliances',   'TRAIT_LEADER_ESPIONAGE', 'Alliances'),
('EspionageDiplomacy',   'TRAIT_LEADER_ESPIONAGE', 'DiplomaticActions'),
('EspionageUnitBuilds',   'TRAIT_LEADER_ESPIONAGE', 'UnitPromotionClasses'),
('EspionageUnits', 'TRAIT_LEADER_ESPIONAGE', 'Units'),
('EspionageDistricts', 'TRAIT_LEADER_ESPIONAGE', 'Districts'),
('EspionageTechs',   'TRAIT_LEADER_ESPIONAGE', 'Technologies'),
('EspionageCivics',   'TRAIT_LEADER_ESPIONAGE', 'Civics'),
('EspionageYields',   'TRAIT_LEADER_ESPIONAGE', 'Yields'),
('EspionagePsuedos',   'TRAIT_LEADER_ESPIONAGE', 'PseudoYields'),
('EspionageBuildings',   'TRAIT_LEADER_ESPIONAGE', 'Buildings'),
('EspionageProjects',   'TRAIT_LEADER_ESPIONAGE', 'Projects'),
('EspionageOperations',   'TRAIT_LEADER_ESPIONAGE', 'AiOperationTypes'),
('EspionageScoutUses',   'TRAIT_LEADER_ESPIONAGE', 'AiScoutUses'),
('EspionageCommemorations',   'TRAIT_LEADER_ESPIONAGE', 'Commemorations'),
('EspionageResolutions',   'TRAIT_LEADER_ESPIONAGE', 'Resolutions'),
('EspionageSettlement',   'TRAIT_LEADER_ESPIONAGE', 'PlotEvaluations');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('EspionageDiplomacy', 'DIPLOACTION_ALLIANCE', 0, 0),
('EspionageDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SPY', 0, 0),
('EspionageDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 1, 40), -- Vision
('EspionageDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 40); -- Vision

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EspionageYields', 'YIELD_RH_SPY', 1, 700),

('EspionageYields', 'YIELD_RH_NUCLEAR_PROGRAM', 1, 950), -- Double Tech Boost

('EspionageYields', 'YIELD_FAITH', 1, 5), -- Vision
('EspionageYields', 'YIELD_CULTURE', 1, 6); -- Spy Capacity


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('EspionageScoutUses', 'LAND_SCOUTS_PER_PRIMARY_REGION', 					50),
('EspionageScoutUses', 'LAND_SCOUTS_PER_SECONDARY_REGION', 					100),
('EspionageScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',     			200);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EspionagePsuedos', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 			1, -2),
('EspionagePsuedos', 'PSEUDOYIELD_INFLUENCE', 					1, 25), -- Vision

('EspionagePsuedos', 'PSEUDOYIELD_UNIT_EXPLORER', 				1, 15), 
('EspionagePsuedos', 'PSEUDOYIELD_GOVERNOR', 					1, 10), -- Gov plaza
('EspionagePsuedos', 'PSEUDOYIELD_GPP_PROPHET', 				1, 15), -- Vision
('EspionagePsuedos', 'PSEUDOYIELD_UNIT_RELIGIOUS', 				1, 25),
('EspionagePsuedos', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 			1, 30),
('EspionagePsuedos', 'PSEUDOYIELD_UNIT_SPY', 					1, 700); -- pvs 100, 150, 175, 220, 300, 500

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('EspionageUnitBuilds', 'PROMOTION_CLASS_RANGED', 			1, 10);

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('EspionageUnitBuilds', 'PROMOTION_CLASS_AIR_FIGHTER', 		8);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EspionageBuildings', 'BUILDING_GOV_SPIES', 						1, 500),
('EspionageBuildings', 'BUILDING_GOV_CITYSTATES', 					0, 0),
('EspionageBuildings', 'BUILDING_GOV_FAITH', 						0, 0),
('EspionageBuildings', 'BUILDING_POTALA_PALACE', 					1, 0),
('EspionageBuildings', 'BUILDING_FORBIDDEN_CITY', 					1, 0),
('EspionageBuildings', 'BUILDING_TERRACOTTA_ARMY', 					1, 90); -- Arc Open Borders

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EspionageCivics', 'CIVIC_DIPLOMATIC_SERVICE', 						1, 0), -- First Spy
('EspionageCivics', 'CIVIC_GUILDS', 									1, 0), -- Leads to Diplo Service
('EspionageCivics', 'CIVIC_IDEOLOGY', 									1, 0), -- Spy
('EspionageCivics', 'CIVIC_DIGITAL_DEMOCRACY', 							1, 0), -- 4 Diplo Cards vs 1 for Other Govs

('EspionageCivics', 'CIVIC_CIVIL_SERVICE', 							    0, 0); -- Alliance

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EspionageResolutions', 'WC_RES_ESPIONAGE_PACT', 						1, 100);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EspionageCommemorations', 'COMMEMORATION_ESPIONAGE', 						1, 100);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EspionageTechs', 'TECH_COMPUTERS', 						1, 0); -- +1 Spy


--------------------------------------------------------------------------------------------------------------------------
-- RH Tundra
--------------------------------------------------------------------------------------------------------------------------

INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_TUNDRA',	'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_TUNDRA');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
/*('TundraAlliances'),
('TundraDiplomacy'),
('TundraUnitBuilds'),
('TundraUnits'),
('TundraDistricts'),
('TundraTechs'),
('TundraCivics'),
('TundraYields'),
('TundraPsuedos'),
('TundraBuildings'),
('TundraProjects'),
('TundraOperations'),
('TundraScoutUses'),
('TundraCommemorations'),
('TundraResolutions'),*/
('TundraSettlementEvaluations'),
('TundraSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
/*('TundraAlliances',   'TRAIT_LEADER_Tundra', 'Alliances'),
('TundraDiplomacy',   'TRAIT_LEADER_Tundra', 'DiplomaticActions'),
('TundraUnitBuilds',   'TRAIT_LEADER_Tundra', 'UnitPromotionClasses'),
('TundraUnits', 'TRAIT_LEADER_Tundra', 'Units'),
('TundraDistricts', 'TRAIT_LEADER_Tundra', 'Districts'),
('TundraTechs',   'TRAIT_LEADER_Tundra', 'Technologies'),
('TundraCivics',   'TRAIT_LEADER_Tundra', 'Civics'),
('TundraYields',   'TRAIT_LEADER_Tundra', 'Yields'),
('TundraPsuedos',   'TRAIT_LEADER_Tundra', 'PseudoYields'),
('TundraBuildings',   'TRAIT_LEADER_Tundra', 'Buildings'),
('TundraProjects',   'TRAIT_LEADER_Tundra', 'Projects'),
('TundraOperations',   'TRAIT_LEADER_Tundra', 'AiOperationTypes'),
('TundraScoutUses',   'TRAIT_LEADER_Tundra', 'AiScoutUses'),
('TundraCommemorations',   'TRAIT_LEADER_Tundra', 'Commemorations'),
('TundraResolutions',   'TRAIT_LEADER_Tundra', 'Resolutions'), */
('TundraSettlementEvaluations',   'TRAIT_LEADER_Tundra', 'SettlementPreferences'),
('TundraSettlement',   'TRAIT_LEADER_Tundra', 'PlotEvaluations');


/*
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TundraSettlement', 'BUILDING_GOV_CITYSTATES', 					0, 0),
('TundraSettlement', 'BUILDING_GOV_FAITH', 						0, 0),
*/



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('TundraSettlementEvaluations', 'SETTLEMENT_MIN_VALUE_NEEDED', 			 -25),
('TundraSettlementEvaluations', 'SETTLEMENT_DECAY_AMOUNT', 				  3);




-- Relic Trait


INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_RH_RELIC',	'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_RH_RELIC');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RelicYields'),
('RelicUnits'),
('RelicPsuedos');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('RelicYields',   'TRAIT_LEADER_RH_RELIC', 'Yields'),
('RelicUnits',   'TRAIT_LEADER_RH_RELIC', 'Units'),
('RelicPsuedos',   'TRAIT_LEADER_RH_RELIC', 'PseudoYields');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('RelicYields', 'YIELD_RH_HERITAGE_ORG_DOUBLE', 		1, 110), -- Buff Relics

('RelicYields', 'YIELD_FAITH', 							1, 25), -- pvs 15
('RelicYields', 'YIELD_RH_RELIC', 						1, 750); -- pvs 500, 900


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RelicPsuedos', 'PSEUDOYIELD_GPP_PROPHET', 							1, 30), -- pvs 20
--('RelicPsuedos', 'PSEUDOYIELD_GPP_RH_RELICMAN', 						1, 1000), -- value should be 50, pvs 50000
('RelicPsuedos', 'PSEUDOYIELD_GREATWORK_RELIC', 						1, 300);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RelicUnits', 'UNIT_CULTIST', 1, 100
FROM Types WHERE Type = 'UNIT_CULTIST';




-- Cav Trait



INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_RH_CAV',	'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_RH_CAV');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('CavYields'),
('CavUnits'),
('CavPsuedos');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('CavYields',   'TRAIT_LEADER_RH_CAV', 'Yields'),
('CavUnits',   'TRAIT_LEADER_RH_CAV', 'Units'),
('CavPsuedos',   'TRAIT_LEADER_RH_CAV', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CavYields', 'YIELD_RH_MILITARY_ADVISORY_BUFF', 	1, 50), -- Buff Cav

('CavYields', 'YIELD_RH_CAV', 						1, 2500); -- pvs 600, 800

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CavPsuedos', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 					1, -10),
('CavPsuedos', 'PSEUDOYIELD_GPP_GENERAL', 							1, 10);


--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
--SELECT 'CavUnits', 'UNIT_CULTIST', 1, 100
--FROM Types WHERE Type = 'UNIT_CULTIST';




-- Growth Trait

INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_RH_GROWTH',	'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_RH_GROWTH');


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('RHGrowthYields'),
('RHGrowthPseudoYields'),
('RHGrowthDistricts'),
('RHGrowthSettlement'),
('RHGrowthImprovements'),
('RHGrowthTechs'),
('RHGrowthCivics'),
('RHGrowthWonders'),


('RHGrowthUnits'),
('RHGrowthProjects');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RHGrowthYields',   		'TRAIT_LEADER_RH_GROWTH', 'Yields'),
('RHGrowthPseudoYields',   'TRAIT_LEADER_RH_GROWTH', 'PseudoYields'),
('RHGrowthDistricts',   'TRAIT_LEADER_RH_GROWTH', 'Districts'),
('RHGrowthSettlement',   'TRAIT_LEADER_RH_GROWTH', 'PlotEvaluations'),
('RHGrowthImprovements',   'TRAIT_LEADER_RH_GROWTH', 'Improvements'),
('RHGrowthTechs',   'TRAIT_LEADER_RH_GROWTH', 'Technologies'), 
('RHGrowthCivics',   'TRAIT_LEADER_RH_GROWTH', 'Civics'), 
('RHGrowthWonders',   'TRAIT_LEADER_RH_GROWTH', 'Buildings'), 

('RHGrowthUnits',   		'TRAIT_LEADER_RH_GROWTH', 'Units'),
('RHGrowthProjects', 		'TRAIT_LEADER_RH_GROWTH', 'Projects');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RHGrowthYields', 'YIELD_FOOD', 1, 200), -- pvs 15, 30, 45, 100, 150
--('RHGrowthYields', 'YIELD_SCIENCE', 1, 2),
('RHGrowthYields', 'YIELD_PRODUCTION', 1, 2), -- Aqueduct Ajd
--('RHGrowthYields', 'YIELD_FAITH', 0, -5),

('RHGrowthYields', 'YIELD_RH_FOOD_EXT', 1, 950),
('RHGrowthYields', 'YIELD_RH_CITY_CENTRE', 1, 400),
('RHGrowthYields', 'YIELD_RH_MAGNUS', 1, 800),
('RHGrowthYields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 375),
('RHGrowthYields', 'YIELD_RH_HAPPINESS_COMP',   	1, 400),
('RHGrowthYields', 'YIELD_RH_NAVAL',   				1, 25),

('RHGrowthYields', 'YIELD_RH_MONARCHY',   			1, 500), -- Housing

('RHGrowthYields', 'YIELD_RH_CLASSICAL_REPUBLIC',   1, 100),

--('RHGrowthYields', 'YIELD_RH_MIGRATION_TREATY_BUFF',   	1, 250), -- Buff Food

('RHGrowthPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 200), -- Food
('RHGrowthPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 130), -- Food
('RHGrowthPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -8), -- Massive Cities
('RHGrowthPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -15), -- More peaceful
('RHGrowthPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, -25), -- Slightly less Encampments
('RHGrowthPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 25), -- Lighthouse
('RHGrowthPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 30), -- Magnus / Tall Gov Building
('RHGrowthPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 10), -- Not Building Enough

('RHGrowthTechs', 'TECH_ARCHERY', 1, 0), -- Temple of Artemis
('RHGrowthTechs', 'TECH_IRRIGATION', 1, 0), -- Hanging Gardens

('RHGrowthCivics', 'CIVIC_MEDIEVAL_FAIRES', 1, 0), -- Angkor Wat, must be built adj to an Aqueduct
('RHGrowthCivics', 'CIVIC_GAMES_RECREATION', 1, 0),
('RHGrowthCivics', 'CIVIC_PROFESSIONAL_SPORTS', 1, 0), -- BUILDING_ESTADIO_DO_MARACANA

('RHGrowthDistricts', 'DISTRICT_AQUEDUCT', 1, 0), 
('RHGrowthDistricts', 'DISTRICT_GOVERNMENT', 1, 200), 
('RHGrowthDistricts', 'DISTRICT_DAM', 1, 0), 
('RHGrowthDistricts', 'DISTRICT_NEIGHBORHOOD', 1, 0), 
--('RHGrowthDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX', 1, 0), 
--('RHGrowthDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 1, 0), 
('RHGrowthDistricts', 'DISTRICT_HARBOR', 1, 100), 
('RHGrowthDistricts', 'DISTRICT_ENCAMPMENT', 0, 0), 

('RHGrowthUnits', 'UNIT_BUILDER', 	1, 50),

('RHGrowthWonders', 'BUILDING_WATER_MILL', 1, 50), -- +1 food on bonus resources
--('RHGrowthWonders', 'BUILDING_GRANARY', 1, 100),
('RHGrowthWonders', 'BUILDING_SEWER', 1, 100),

('RHGrowthWonders', 'BUILDING_GOV_TALL', 1, 800),
('RHGrowthWonders', 'BUILDING_GOV_WIDE', 0, -90),
('RHGrowthWonders', 'BUILDING_GOV_CONQUEST', 0, 0),
('RHGrowthWonders', 'BUILDING_GOV_SCIENCE', 1, 50),
('RHGrowthWonders', 'BUILDING_GOV_MILITARY', 1, 50),
('RHGrowthWonders', 'BUILDING_GREAT_BATH', 	1, 0), -- housing and +1 amenity
('RHGrowthWonders', 'BUILDING_TEMPLE_ARTEMIS', 	1, 90),
('RHGrowthWonders', 'BUILDING_PETRA', 		1, 0),
('RHGrowthWonders', 'BUILDING_PYRAMIDS', 		1, 90), -- More food
('RHGrowthWonders', 'BUILDING_LIGHTHOUSE', 		1, 100),
('RHGrowthWonders', 'BUILDING_ESTADIO_DO_MARACANA', 		1, 900), -- must be built on flat land adjacent to an Entertainment Complex with a Stadium.
('RHGrowthWonders', 'BUILDING_FOOD_MARKET', 		1, 90),

('RHGrowthWonders', 'BUILDING_COLOSSEUM', 	1, 90),
('RHGrowthWonders', 'BUILDING_HANGING_GARDENS', 1, 90);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RHGrowthWonders', 'BUILDING_ANGKOR_WAT', 1, 900 -- khmer dlc
FROM Types WHERE Type = 'BUILDING_ANGKOR_WAT';


REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('RHGrowthSettlement', 'Fresh Water', 				0,  10,	 NULL,			 'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'), -- pvs 6
('RHGrowthSettlement', 'Coastal', 					0, 8, 	NULL, 			'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- pvs 2
('RHGrowthSettlement', 'Inner Ring Yield',			 0, 1, 'YIELD_FOOD',    'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'); -- 1


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RHGrowthImprovements', 'IMPROVEMENT_FARM', 					1, 90),

('RHGrowthImprovements', 'IMPROVEMENT_SEASTEAD', 				1, 100),
--('RHGrowthImprovements', 'IMPROVEMENT_OFFSHORE_WIND_FARM', 	0, 0),

('RHGrowthImprovements', 'IMPROVEMENT_FISHING_BOATS', 		1, 90),
('RHGrowthImprovements', 'IMPROVEMENT_GREAT_WALL', 			0, -50), -- Lack of Housing
('RHGrowthImprovements', 'IMPROVEMENT_CITY_PARK',				 1, 90),
('RHGrowthImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 		0, -80), -- For national parks, ski resorts, culture victory
('RHGrowthImprovements', 'IMPROVEMENT_SKI_RESORT', 			1, 90); -- +1 Amenity


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('RHGrowthSavings');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RHGrowthSavings',  			 'TRAIT_LEADER_RH_GROWTH', 'SavingTypes');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('RHGrowthSavings', 'SAVING_GREAT_PEOPLE', 								 	 0), 
--('RHGrowthSavings', 'SAVING_UNITS', 										 1),
('RHGrowthSavings', 'SAVING_PLOTS', 											-1); -- For growth
--('RHGrowthSavings', 'SAVING_SLUSH_FUND', 								 	-1); 

-- Todo government building preference




-- RH Trade


INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_RH_TRADE',	'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_RH_TRADE');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RHTradeAlliances'),
('RHTradeDiplomacy'),
('RHTradeUnitBuilds'),
('RHTradeUnits'),
('RHTradeDistricts'),
('RHTradeTechs'),
('RHTradeCivics'),
('RHTradeYields'),
('RHTradePsuedos'),
('RHTradeBuildings'),
('RHTradeProjects'),
('RHTradeOperations'),
('RHTradeScoutUses'),
('RHTradeCommemorations'),
('RHTradeResolutions'),
('RHTradeSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('RHTradeAlliances',   'TRAIT_LEADER_RH_TRADE', 'Alliances'),
('RHTradeDiplomacy',   'TRAIT_LEADER_RH_TRADE', 'DiplomaticActions'),
('RHTradeUnitBuilds',   'TRAIT_LEADER_RH_TRADE', 'UnitPromotionClasses'),
('RHTradeUnits', 'TRAIT_LEADER_RH_TRADE', 'Units'),
('RHTradeDistricts', 'TRAIT_LEADER_RH_TRADE', 'Districts'),
('RHTradeTechs',   'TRAIT_LEADER_RH_TRADE', 'Technologies'),
('RHTradeCivics',   'TRAIT_LEADER_RH_TRADE', 'Civics'),
('RHTradeYields',   'TRAIT_LEADER_RH_TRADE', 'Yields'),
('RHTradePsuedos',   'TRAIT_LEADER_RH_TRADE', 'PseudoYields'),
('RHTradeBuildings',   'TRAIT_LEADER_RH_TRADE', 'Buildings'),
('RHTradeProjects',   'TRAIT_LEADER_RH_TRADE', 'Projects'),
('RHTradeOperations',   'TRAIT_LEADER_RH_TRADE', 'AiOperationTypes'),
('RHTradeScoutUses',   'TRAIT_LEADER_RH_TRADE', 'AiScoutUses'),
('RHTradeCommemorations',   'TRAIT_LEADER_RH_TRADE', 'Commemorations'),
('RHTradeResolutions',   'TRAIT_LEADER_RH_TRADE', 'Resolutions'),
('RHTradeSettlement',   'TRAIT_LEADER_RH_TRADE', 'PlotEvaluations');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES

('RHTradeYields', 'YIELD_RH_HAPPINESS_BUILDING',  -20),
('RHTradeYields', 'YIELD_RH_CITY_CENTRE',  -33),
('RHTradeYields', 'YIELD_SCIENCE',  		-10),
('RHTradeYields', 'YIELD_CULTURE', 			-7),
('RHTradeYields', 'YIELD_FAITH', 			-5);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('RHTradeAlliances', 'ALLIANCE_ECONOMIC', 	1, 60),

--('RHTradeCommemorations', 'COMMEMORATION_SCIENTIFIC', 	1, 60), -- Commercial Hub Science, Temp for Golden Age
('RHTradeCommemorations', 'COMMEMORATION_ECONOMIC', 	1, 60),
('RHTradeCommemorations', 'COMMEMORATION_INDUSTRIAL', 	0, 0),

('RHTradeYields', 'YIELD_GOLD', 	1, 90),

('RHTradeYields', 'YIELD_RH_TRADE', 1, 950), -- pvs 800

('RHTradeYields', 'YIELD_RH_SOVEREIGNTY_DOUBLE', 1, 500), -- City State Trade

('RHTradeYields', 'YIELD_RH_TRADE_TREATY_BUFF', 1, 500), -- Money Money Money

('RHTradePsuedos', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 10), -- Alliances, less war with neighbours
('RHTradePsuedos', 'PSEUDOYIELD_GPP_MERCHANT', 1, 60),
('RHTradePsuedos', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 33),
('RHTradePsuedos', 'PSEUDOYIELD_UNIT_TRADE', 1, 150),

('RHTradeDistricts', 'DISTRICT_HARBOR', 1, 50),
('RHTradeDistricts', 'DISTRICT_COMMERICAL_HUB', 1, 0),

('RHTradeCivics', 'CIVIC_FOREIGN_TRADE',   1, 100),
('RHTradeCivics', 'CIVIC_GUILDS',   1, 0),

('RHTradeTechs', 'TECH_CURRENCY',   1, 100),
('RHTradeTechs', 'TECH_WRITING',   1, 100), -- For Currency
('RHTradeTechs', 'TECH_CELESTIAL_NAVIGATION',   1, 100);




-- RH Naval_Exploration


INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_RH_NAVAL_EXPLORATION',	'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_RH_NAVAL_EXPLORATION');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RHNaval_ExplorationAlliances'),
('RHNaval_ExplorationDiplomacy'),
('RHNaval_ExplorationUnitBuilds'),
('RHNaval_ExplorationUnits'),
('RHNaval_ExplorationDistricts'),
('RHNaval_ExplorationTechs'),
('RHNaval_ExplorationCivics'),
('RHNaval_ExplorationYields'),
('RHNaval_ExplorationPsuedos'),
('RHNaval_ExplorationBuildings'),
('RHNaval_ExplorationProjects'),
('RHNaval_ExplorationOperations'),
('RHNaval_ExplorationScoutUses'),
('RHNaval_ExplorationCommemorations'),
('RHNaval_ExplorationResolutions'),
('RHNaval_ExplorationSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('RHNaval_ExplorationAlliances',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Alliances'),
('RHNaval_ExplorationDiplomacy',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'DiplomaticActions'),
('RHNaval_ExplorationUnitBuilds',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'UnitPromotionClasses'),
('RHNaval_ExplorationUnits', 'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Units'),
('RHNaval_ExplorationDistricts', 'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Districts'),
('RHNaval_ExplorationTechs',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Technologies'),
('RHNaval_ExplorationCivics',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Civics'),
('RHNaval_ExplorationYields',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Yields'),
('RHNaval_ExplorationPsuedos',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'PseudoYields'),
('RHNaval_ExplorationBuildings',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Buildings'),
('RHNaval_ExplorationProjects',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Projects'),
('RHNaval_ExplorationOperations',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'AiOperationTypes'),
('RHNaval_ExplorationScoutUses',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'AiScoutUses'),
('RHNaval_ExplorationCommemorations',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Commemorations'),
('RHNaval_ExplorationResolutions',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'Resolutions'),
('RHNaval_ExplorationSettlement',   'TRAIT_LEADER_RH_NAVAL_EXPLORATION', 'PlotEvaluations');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

--('RHNaval_ExplorationCommemorations', 'COMMEMORATION_SCIENTIFIC', 1, 100), -- Harbour Science

('RHNaval_ExplorationScoutUses', 'DEFAULT_NAVAL_SCOUTS', 1, 300), 
('RHNaval_ExplorationScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 1, 300); 










-- RH Unique Improvement


INSERT INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_RH_UNQ_IMPROVEMENT',	'KIND_TRAIT');

INSERT INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_RH_UNQ_IMPROVEMENT');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RHUNQ_IMPROVEMENTAlliances'),
('RHUNQ_IMPROVEMENTDiplomacy'),
('RHUNQ_IMPROVEMENTUnitBuilds'),
('RHUNQ_IMPROVEMENTUnits'),
('RHUNQ_IMPROVEMENTDistricts'),
('RHUNQ_IMPROVEMENTTechs'),
('RHUNQ_IMPROVEMENTCivics'),
('RHUNQ_IMPROVEMENTYields'),
('RHUNQ_IMPROVEMENTPsuedos'),
('RHUNQ_IMPROVEMENTBuildings'),
('RHUNQ_IMPROVEMENTProjects'),
('RHUNQ_IMPROVEMENTOperations'),
('RHUNQ_IMPROVEMENTSavingTypes'),
('RHUNQ_IMPROVEMENTScoutUses'),
('RHUNQ_IMPROVEMENTCommemorations'),
('RHUNQ_IMPROVEMENTResolutions'),
('RHUNQ_IMPROVEMENTSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('RHUNQ_IMPROVEMENTAlliances',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Alliances'),
('RHUNQ_IMPROVEMENTDiplomacy',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'DiplomaticActions'),
('RHUNQ_IMPROVEMENTUnitBuilds',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'UnitPromotionClasses'),
('RHUNQ_IMPROVEMENTUnits', 'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Units'),
('RHUNQ_IMPROVEMENTDistricts', 'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Districts'),
('RHUNQ_IMPROVEMENTTechs',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Technologies'),
('RHUNQ_IMPROVEMENTCivics',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Civics'),
('RHUNQ_IMPROVEMENTYields',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Yields'),
('RHUNQ_IMPROVEMENTPsuedos',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'PseudoYields'),
('RHUNQ_IMPROVEMENTBuildings',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Buildings'),
('RHUNQ_IMPROVEMENTProjects',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Projects'),
('RHUNQ_IMPROVEMENTOperations',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'AiOperationTypes'),
('RHUNQ_IMPROVEMENTSavingTypes',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'SavingTypes'),
('RHUNQ_IMPROVEMENTScoutUses',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'AiScoutUses'),
('RHUNQ_IMPROVEMENTCommemorations',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Commemorations'),
('RHUNQ_IMPROVEMENTResolutions',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'Resolutions'),
('RHUNQ_IMPROVEMENTSettlement',   'TRAIT_LEADER_RH_UNQ_IMPROVEMENT', 'PlotEvaluations');



INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('RHUNQ_IMPROVEMENTYields', 'YIELD_FOOD', 			1, 10),
('RHUNQ_IMPROVEMENTYields', 'YIELD_PRODUCTION', 	1, 10),

('RHUNQ_IMPROVEMENTPsuedos', 'PSEUDOYIELD_ENVIRONMENT', 0, -60), -- Keep for National Parks
('RHUNQ_IMPROVEMENTPsuedos', 'PSEUDOYIELD_IMPROVEMENT', 1, 150);

--('RHUNQ_IMPROVEMENTSavingTypes', 'SAVING_GREAT_PEOPLE', 								 0), -- def 1
--('RHUNQ_IMPROVEMENTSavingTypes', 'SAVING_UNITS', 										 1),


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('RHUNQ_IMPROVEMENTSavingTypes', 'SAVING_PLOTS', 										-1),
('RHUNQ_IMPROVEMENTSavingTypes', 'SAVING_SLUSH_FUND', 								 	 1); 

--('RHUNQ_IMPROVEMENTCivics', 'CIVIC_UNQ_IMPROVEMENT',   1, 100),

--('RHUNQ_IMPROVEMENTTechs', 'TECH_WRITING',   1, 100);


