

-- Internal Strat 3


INSERT INTO TechnologyPrereqs
		(Technology,								PrereqTech)    VALUES	
		
		('TECHNOLOGY_RH_AI_RIV_GODDESS',			'TECH_FUTURE_TECH'),	
		('TECHNOLOGY_RH_AI_MH',						'TECH_FUTURE_TECH'),		
		('TECHNOLOGY_RH_FEED',						'TECH_FUTURE_TECH'),	
	
		('TECHNOLOGY_RH_AI_MAIN',					'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_AI_HUNGARY_ADJ',			'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_AI_THEODORA_ADJ',			'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_AI_LUDWIG_ADJ',				'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_AI_GERMANY_ADJ',			'TECH_FUTURE_TECH'),

		('TECHNOLOGY_RH_AI_KHMER',				'TECH_FUTURE_TECH');


	
INSERT INTO TechnologyPrereqs				(Technology,	PrereqTech)  VALUES	

-- Tier 1
		('TECHNOLOGY_RH_HAS_OLIGARCHY',				'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_HAS_CLASSICAL',				'TECH_FUTURE_TECH'),

-- Tier 2
		('TECHNOLOGY_RH_HAS_MONARCHY',				'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_HAS_THEOCRACY',				'TECH_FUTURE_TECH'), 
		('TECHNOLOGY_RH_HAS_MERCHANT',				'TECH_FUTURE_TECH'), --  +10% Gold in all cities with an established Governor.

-- Tier 3		
		('TECHNOLOGY_RH_HAS_FASCISM',				'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_HAS_COMMUNISM',				'TECH_FUTURE_TECH'),	--  +0.6 Production per Citizen in cities with Governors.
		('TECHNOLOGY_RH_HAS_DEMOCRACY',				'TECH_FUTURE_TECH');



INSERT INTO TechnologyPrereqs				(Technology,	PrereqTech)  VALUES	

-- Tier 1
		('TECHNOLOGY_RH_UNLOCK_OLIGARCHY',				'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_UNLOCK_CLASSICAL',				'TECH_FUTURE_TECH'),

-- Tier 2
		('TECHNOLOGY_RH_UNLOCK_MONARCHY',				'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_UNLOCK_THEOCRACY',				'TECH_FUTURE_TECH'), 
		('TECHNOLOGY_RH_UNLOCK_MERCHANT',				'TECH_FUTURE_TECH'), --  +10% Gold in all cities with an established Governor.

-- Tier 3		
		('TECHNOLOGY_RH_UNLOCK_FASCISM',				'TECH_FUTURE_TECH'),
		('TECHNOLOGY_RH_UNLOCK_COMMUNISM',				'TECH_FUTURE_TECH'),	--  +0.6 Production per Citizen in cities with Governors.
		('TECHNOLOGY_RH_UNLOCK_DEMOCRACY',				'TECH_FUTURE_TECH');



-- Tech Boosts for Fake Techs
/*
<Modifiers>
		<Row>
			<ModifierId>TRAIT_FREE_TECH_BOOST_WRITING</ModifierId>
			<ModifierType>MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST</ModifierType>
			<RunOnce>true</RunOnce>
			<Permanent>true</Permanent>
		</Row>

<ModifierArguments>
		<Row>
			<ModifierId>TRAIT_FREE_TECH_BOOST_WRITING</ModifierId>
			<Name>TechType</Name>
			<Value>TECH_WRITING</Value>
		</Row>
*/

/*
-- Query to generate insert statements for Modifiers and ModifierArguments
WITH TechBoosts AS (
    SELECT 
        TechName,
        'TRAIT_FREE_TECH_BOOST_' || REPLACE(TechName, 'TECHNOLOGY_RH_', 'RH_') AS ModifierId
    FROM 
        Technologies
    WHERE 
        TechName LIKE 'TECHNOLOGY_RH%'
)
-- Auto Insert into Modifiers table
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
SELECT 
    ModifierId,
    'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',
    1, -- RunOnce = true
    1  -- Permanent = true
FROM 
    TechBoosts;

-- Auto Insert into ModifierArguments table
INSERT INTO ModifierArguments (ModifierId, Name, Value)
SELECT 
    ModifierId,
    'TechType',
    TechName
FROM 
    TechBoosts;


INSERT INTO TraitModifiers (TraitType, ModifierId)
TRAIT_LEADER_MAJOR_CIV,


WHERE 
    TraitType LIKE 'TRAIT_FREE_TECH_BOOST_%';




	<TraitModifiers>
		<!--Canada-->
		<Row>
			<TraitType>TRAIT_CIVILIZATION_FACES_OF_PEACE</TraitType>
			<ModifierId>TRAIT_NO_SUPRISE_WAR_FOR_CANADA</ModifierId>
		</Row>
*/


INSERT INTO Technologies_XP2    (TechnologyType,		HiddenUntilPrereqComplete) VALUES	

		('TECHNOLOGY_RH_AI_RIV_GODDESS',			1),	
		('TECHNOLOGY_RH_AI_MH',						1),		
		('TECHNOLOGY_RH_FEED',						1),	
		('TECHNOLOGY_RH_AI_KHMER',						1),			
		
		
		('TECHNOLOGY_RH_AI_MAIN',					1),
		('TECHNOLOGY_RH_AI_HUNGARY_ADJ',			1),
		('TECHNOLOGY_RH_AI_THEODORA_ADJ',			1),
		('TECHNOLOGY_RH_AI_LUDWIG_ADJ',				1),
		('TECHNOLOGY_RH_AI_GERMANY_ADJ',			1),

		('TECHNOLOGY_RH_HAS_OLIGARCHY',				1),
		('TECHNOLOGY_RH_HAS_CLASSICAL',				1),

-- Tier 2
		('TECHNOLOGY_RH_HAS_MONARCHY',				1),
		('TECHNOLOGY_RH_HAS_THEOCRACY',				1), 
		('TECHNOLOGY_RH_HAS_MERCHANT',				1), --  +10% Gold in all cities with an established Governor.

-- Tier 3		
		('TECHNOLOGY_RH_HAS_FASCISM',				1),
		('TECHNOLOGY_RH_HAS_COMMUNISM',				1),	--  +0.6 Production per Citizen in cities with Governors.
		('TECHNOLOGY_RH_HAS_DEMOCRACY',				1),
		
		
		('TECHNOLOGY_RH_UNLOCK_OLIGARCHY',				1),
		('TECHNOLOGY_RH_UNLOCK_CLASSICAL',				1),

-- Tier 2
		('TECHNOLOGY_RH_UNLOCK_MONARCHY',				1),
		('TECHNOLOGY_RH_UNLOCK_THEOCRACY',				1), 
		('TECHNOLOGY_RH_UNLOCK_MERCHANT',				1), --  +10% Gold in all cities with an established Governor.

-- Tier 3		
		('TECHNOLOGY_RH_UNLOCK_FASCISM',				1),
		('TECHNOLOGY_RH_UNLOCK_COMMUNISM',				1),	--  +0.6 Production per Citizen in cities with Governors.
		('TECHNOLOGY_RH_UNLOCK_DEMOCRACY',				1);		



-- Auto Tech Boost for New AI Technologies

--  SubjectRequirementSetId,


INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
SELECT
    TechnologyType || '_BOOST_MOD' AS ModifierId,
    'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST' AS ModifierType,
--    'PLAYER_IS_AI' AS SubjectRequirementSetId,
    1 AS RunOnce,
    1 AS Permanent
FROM Technologies
WHERE TechnologyType LIKE 'TECHNOLOGY_RH_%';

-- 2: Insert corresponding arguments for each new tech boost modifier
INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value)
SELECT
    TechnologyType || '_BOOST_MOD' AS ModifierId,
    'TechType' AS Name,
    TechnologyType AS Value
FROM Technologies
WHERE TechnologyType LIKE 'TECHNOLOGY_RH_%';

-- 3: Insert corresponding entries for TraitModifiers
INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId)
SELECT
    'TRAIT_LEADER_MAJOR_CIV' AS TraitType,
    TechnologyType || '_BOOST_MOD' AS ModifierId
FROM Technologies
WHERE TechnologyType LIKE 'TECHNOLOGY_RH_%';







--INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType,  RunOnce, Permanent) VALUES		
--		('TECHNOLOGY_RH_AI_RIV_GODDESS_BOOST_MOD2',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',    1, 1);
		
		
		
/*		
		('TECHNOLOGY_RH_AI_MH',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_FEED',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),
*/

/*
INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('TECHNOLOGY_RH_AI_RIV_GODDESS_BOOST_MOD2',				'TechType', 					 'TECHNOLOGY_RH_AI_RIV_GODDESS');



INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId)
		('TRAIT_LEADER_MAJOR_CIV',			'TECHNOLOGY_RH_AI_RIV_GODDESS_BOOST_MOD2');
*/		
		

		










/*
INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId, RunOnce, Permanent) VALUES		
		('TECHNOLOGY_RH_',					'MODIFIER_PLAYER_GRANT_SPECIFIC_TECH_BOOST',	'PLAYER_IS_AI', 1, 1),




INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('TECHNOLOGY_RH_',				'TechType', 					 'TECHNOLOGY_RH_'),






<Modifiers>
		<Row>
			<ModifierId> (techname)</ModifierId>
			<ModifierType></ModifierType>
			<RunOnce>true</RunOnce>
			<Permanent>true</Permanent>
		</Row>

<ModifierArguments>
		<Row>
			<ModifierId>TECHNOLOGY_RH_ (techname)</ModifierId>
			<Name></Name>
			<Value>techname</Value>
		</Row>

*/









/*
		<!--Marker for the xp2 route, makes an easier accessor without messing around with the base game-->
		<Row TechnologyType="TECH_STEAM_POWER" HiddenUntilPrereqComplete="false" RandomPrereqs="false"/>
		<!--New Techs-->
		<Row TechnologyType="TECH_SEASTEADS" HiddenUntilPrereqComplete="true" RandomPrereqs="true"/>
		<Row TechnologyType="TECH_ADVANCED_AI" HiddenUntilPrereqComplete="true" RandomPrereqs="true"/>
		<Row TechnologyType="TECH_ADVANCED_POWER_CELLS" HiddenUntilPrereqComplete="true" RandomPrereqs="true"/>
		<Row TechnologyType="TECH_CYBERNETICS" HiddenUntilPrereqComplete="true" RandomPrereqs="true"/>
		<Row TechnologyType="TECH_SMART_MATERIALS" HiddenUntilPrereqComplete="true" RandomPrereqs="true"/>
		<Row TechnologyType="TECH_PREDICTIVE_SYSTEMS" HiddenUntilPrereqComplete="true" RandomPrereqs="true"/>
		<Row TechnologyType="TECH_OFFWORLD_MISSION" HiddenUntilPrereqComplete="true" RandomPrereqs="true"/>
		<Row TechnologyType="TECH_FUTURE_TECH" HiddenUntilPrereqComplete="true" RandomPrereqs="true"/>				
*/



-- Temp Location

INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_AI_CORPS_STRAT',					'MODIFIER_CITY_CORPS_ARMY_ADJUST_DISCOUNT',	'PLAYER_IS_AI'),
		('RH_AI_CORPS_STRAT_NAVAL',					'MODIFIER_CITY_CORPS_ARMY_ADJUST_DISCOUNT',	'PLAYER_IS_AI');



INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_AI_CORPS_STRAT',				'UnitDomain', 					 'DOMAIN_LAND'),
		('RH_AI_CORPS_STRAT',				'Amount', 								 1),

		('RH_AI_CORPS_STRAT_NAVAL',				'UnitDomain', 					 'DOMAIN_SEA'),
		('RH_AI_CORPS_STRAT_NAVAL',				'Amount', 								 1);



INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES

('BUILDING_FACTORY', 					 'RH_AI_CORPS_STRAT'),
('BUILDING_FACTORY', 					 'RH_AI_CORPS_STRAT_NAVAL'),

('BUILDING_WORKSHOP', 					 'RH_AI_CORPS_STRAT'),
('BUILDING_WORKSHOP', 					 'RH_AI_CORPS_STRAT_NAVAL'),

('BUILDING_PALACE', 					 'RH_AI_CORPS_STRAT'),
('BUILDING_PALACE', 					 'RH_AI_CORPS_STRAT_NAVAL'),

('BUILDING_TEMPLE', 					 'RH_AI_CORPS_STRAT'),
--('BUILDING_UNIVERSITY', 				 'RH_AI_CORPS_STRAT'),
--('BUILDING_UNIVERSITY', 				 'RH_AI_CORPS_STRAT_NAVAL'),

('BUILDING_LIBRARY', 				 'RH_AI_CORPS_STRAT'),
('BUILDING_LIBRARY', 				 'RH_AI_CORPS_STRAT_NAVAL'),

('BUILDING_ZOO', 						 'RH_AI_CORPS_STRAT'),

('BUILDING_STABLE', 					'RH_AI_CORPS_STRAT'),
('BUILDING_BARRACKS', 					'RH_AI_CORPS_STRAT'),
('BUILDING_ARMORY', 					'RH_AI_CORPS_STRAT'),
('BUILDING_ARMORY', 					'RH_AI_CORPS_STRAT_NAVAL'),

('BUILDING_MUSEUM_ART', 					 'RH_AI_CORPS_STRAT'),
('BUILDING_MUSEUM_ARTIFACT', 				 'RH_AI_CORPS_STRAT'),
('BUILDING_BANK', 						 'RH_AI_CORPS_STRAT'),
('BUILDING_SHIPYARD', 					'RH_AI_CORPS_STRAT'),
('BUILDING_SHIPYARD', 					'RH_AI_CORPS_STRAT_NAVAL'),

('BUILDING_LIGHTHOUSE', 				'RH_AI_CORPS_STRAT_NAVAL'),

('BUILDING_HANGAR',						 'RH_AI_CORPS_STRAT'),
('BUILDING_HANGAR',						 'RH_AI_CORPS_STRAT_NAVAL');



-- 7 Pop Req


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_AI_CORPS_STRAT_POP',					'MODIFIER_CITY_CORPS_ARMY_ADJUST_DISCOUNT',		'RH_REQ_S_CORP_POP'),
		('RH_AI_CORPS_STRAT_NAVAL_POP',					'MODIFIER_CITY_CORPS_ARMY_ADJUST_DISCOUNT',	'RH_REQ_S_CORP_POP');


INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_AI_CORPS_STRAT_POP',				'UnitDomain', 					 'DOMAIN_LAND'),
		('RH_AI_CORPS_STRAT_POP',				'Amount', 								 1),

		('RH_AI_CORPS_STRAT_NAVAL_POP',				'UnitDomain', 					 'DOMAIN_SEA'),
		('RH_AI_CORPS_STRAT_NAVAL_POP',				'Amount', 								 1);


INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES

('BUILDING_MONUMENT', 					 'RH_AI_CORPS_STRAT_POP'),
('BUILDING_MONUMENT', 					 'RH_AI_CORPS_STRAT_NAVAL_POP'),

('BUILDING_GRANARY', 					 'RH_AI_CORPS_STRAT_POP'),
('BUILDING_GRANARY', 					 'RH_AI_CORPS_STRAT_NAVAL_POP');



INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_REQ_S_CORP_POP', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_REQ_S_CORP_POP', 'RH_R_7_POP'),
		('RH_REQ_S_CORP_POP', 'REQUIRES_PLAYER_IS_AI');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('RH_R_7_POP', 		'REQUIREMENT_CITY_HAS_X_POPULATION');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('RH_R_7_POP',			'Amount',	7);




/*

('BUILDING_SEAPORT',					 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_RESEARCH_LAB', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_BROADCAST_CENTER', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_FILM_STUDIO', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),

('BUILDING_CATHEDRAL',					 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_GURDWARA', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_MEETING_HOUSE', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_MOSQUE', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),

('BUILDING_PAGODA', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_SYNAGOGUE', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_WAT', 					 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_STUPA', 					 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_DAR_E_MEHR', 			 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),

('BUILDING_STADIUM', 				 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),

('BUILDING_STOCK_EXCHANGE', 		 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),


('BUILDING_AIRPORT',					 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),


('BUILDING_COAL_POWER_PLANT', 			 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_FOSSIL_FUEL_POWER_PLANT', 	 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB'),
('BUILDING_POWER_PLANT', 	 			 'RH_AI_CORPS_SEAPORT_RESEARCH_LAB');
*/


/*
DELETE FROM StartBiasResources WHERE CivilizationType = 'CIVILIZATION_AMERICA';
DELETE FROM StartBiasFeatures WHERE CivilizationType = 'CIVILIZATION_AMERICA';
DELETE FROM StartBiasTerrains WHERE CivilizationType = 'CIVILIZATION_AMERICA';
		
INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier) VALUES
 ('CIVILIZATION_AMERICA', 'TERRAIN_DESERT', 1),
 ('CIVILIZATION_AMERICA', 'TERRAIN_DESERT_MOUNTAIN', 3),
 ('CIVILIZATION_AMERICA', 'TERRAIN_DESERT_HILLS', 1);
*/
 


-- Min Population Req
-- Population Requirement 


INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_REQ_S_MIN_6_Pop', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_REQ_S_MIN_6_Pop', 'RH_Min_6'),
		('RH_REQ_S_MIN_6_Pop', 'REQUIRES_PLAYER_IS_AI');

INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
		('RH_Min_6', 		'REQUIREMENT_CITY_HAS_X_POPULATION', 1);

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('RH_Min_6',			'Amount',	6);





