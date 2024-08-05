
-- AUTHOR: ROMANHOLIDAY

/*
		<Row>
			<ModifierId>AUTO_THEME_AT_LEAST_3_SLOTS</ModifierId>
			<ModifierType>MODIFIER_PLAYER_ADJUST_AUTO_THEME_BUILDINGS_WITH_X_SLOTS</ModifierType>
		</Row>
		
		<Row>
			<ModifierId>AUTO_THEME_AT_LEAST_3_SLOTS</ModifierId>
			<Name>Amount</Name>
			<Value>3</Value>
		</Row>
		<Row>
			<ModifierId>AUTO_THEME_AT_LEAST_3_SLOTS</ModifierId>
			<Name>IsWonder</Name>
			<Value>false</Value>
		</Row>
		
		<Row>
			<ModifierId>THEMED_YIELD_MODIFIER</ModifierId>
			<ModifierType>MODIFIER_PLAYER_ADJUST_THEMED_ALL_YIELDS</ModifierType>
		</Row>
		<Row>
			<ModifierId>THEMED_TOURISM_MODIFIER</ModifierId>
			<ModifierType>MODIFIER_PLAYER_ADJUST_THEMED_TOURISM</ModifierType>
		</Row>
		
		<Row>
			<ModifierId>THEMED_YIELD_MODIFIER</ModifierId>
			<Name>Amount</Name>
			<Value>100</Value>
		</Row>
		<Row>
			<ModifierId>THEMED_TOURISM_MODIFIER</ModifierId>
			<Name>Amount</Name>
			<Value>100</Value>
		</Row>
*/

INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',					'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
	--	('REQUIRES_PLAYER_DEITY_AI', 									'Handicap', 				'DIFFICULTY_DEITY'),
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',						'CivicType',			'CIVIC_NATURAL_HISTORY');


INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY'),
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIRES_PLAYER_IS_AI');
	--	('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIRES_PLAYER_DEITY_AI');

		


INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX',						'MODIFIER_PLAYER_ADJUST_AUTO_THEME_BUILDINGS_WITH_X_SLOTS',		'RH_AI_HAS_NATURAL_HISTORY_DEITY');
		
		--Arguments:Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,																		Name,						Value) 	VALUES	
		--
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX',								'Amount',					3),
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX',								'IsWonder',					false);
		
	--('AUTO_THEME_AT_LEAST_3_SLOTS',														'AllowUniqueOverride',		0),




INSERT OR IGNORE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX_2');

INSERT OR IGNORE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX_2',						'MODIFIER_PLAYER_ADJUST_AUTO_THEME_BUILDINGS_WITH_X_SLOTS',		'RH_AI_HAS_NATURAL_HISTORY_DEITY');
		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR IGNORE INTO ModifierArguments
		(ModifierId,																		Name,						Value) 	VALUES	
		--
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX_2',								'Amount',					3),
		('RH_HIGH_DIFF_LATE_GAME_GW_THEME_FIX_2',								'IsWonder',					true);
		
	--('AUTO_THEME_AT_LEAST_3_SLOTS',														'AllowUniqueOverride',		0),

/*
INSERT OR IGNORE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIREMENTSET_TEST_ALL');
		
INSERT OR IGNORE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY'),
		('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIRES_PLAYER_IS_AI');
	--	('RH_AI_HAS_NATURAL_HISTORY_DEITY',							'REQUIRES_PLAYER_DEITY_AI');

		
INSERT OR IGNORE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',					'REQUIREMENT_PLAYER_HAS_CIVIC');


--INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
--('REQUIRES_PLAYER_DEITY_AI', 'REQUIREMENT_PLAYER_ERA_AT_LEAST', 0);


INSERT OR IGNORE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
	--	('REQUIRES_PLAYER_DEITY_AI', 									'Handicap', 				'DIFFICULTY_DEITY'),
		('RH_REQUIRES_HAS_CIVIC_NATURAL_HISTORY',						'CivicType',			'CIVIC_NATURAL_HISTORY');
	
*/


-- Testing 8% per difficulty (to compensate for default AI 8% higher culture per difficulty, not well themeing great works or targeting specific civs) (smoother difficulty uses 20% per difficulty + lots of extra era scaling)

INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'RH_HIGH_DIFFICULTY_SLIGHT_TOURISM');



INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_BIOSPHERE', 'RH_HIGH_DIFFICULTY_SLIGHT_TOURISM_S'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_BIOSPHERE'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_BROADWAY', 'RH_HIGH_DIFFICULTY_SLIGHT_TOURISM_S'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_BROADWAY'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_BOLSHOI_THEATRE', 'RH_HIGH_DIFFICULTY_SLIGHT_TOURISM_S'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_BOLSHOI_THEATRE'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_SYDNEY_OPERA_HOUSE', 'RH_HIGH_DIFFICULTY_SLIGHT_TOURISM_S'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_SYDNEY_OPERA_HOUSE'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_TERRACOTTA_ARMY', 'RH_HIGH_DIFFICULTY_SLIGHT_TOURISM_S'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_TERRACOTTA_ARMY'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_HERMITAGE', 'RH_HIGH_DIFFICULTY_SLIGHT_TOURISM_S'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_HERMITAGE'); 

INSERT OR IGNORE INTO BuildingModifiers (BuildingType,			ModifierId)
SELECT 'BUILDING_CRISTO_REDENTOR', 'RH_HIGH_DIFFICULTY_SLIGHT_TOURISM_S'
WHERE EXISTS (SELECT * FROM Buildings WHERE BuildingType = 'BUILDING_CRISTO_REDENTOR'); 


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_ONLINE_COMMUNITIES', 		  		    'RH_HIGH_DIFFICULTY_SLIGHT_TOURISM'); -- 50% Tourism to Civs with Trade Route


INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('RH_HIGH_DIFFICULTY_SLIGHT_TOURISM_S', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'PLAYER_IS_HIGH_DIFFICULTY_AI');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('RH_HIGH_DIFFICULTY_SLIGHT_TOURISM_S', 'Amount', 'LinearScaleFromDefaultHandicap', 150, 45); -- 50, 10 - 80,10, 100, 10, 80,20, 80,35


INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('RH_HIGH_DIFFICULTY_SLIGHT_TOURISM', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'PLAYER_IS_HIGH_DIFFICULTY_AI');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
('RH_HIGH_DIFFICULTY_SLIGHT_TOURISM', 'Amount', 'LinearScaleFromDefaultHandicap', 15, 24); -- pvs 8, 0-15, 30-15


-- Deity / Immortal Future Era Civic Tourism Finisher (Cultural Hegemony)

INSERT OR IGNORE INTO TraitModifiers (TraitType, ModifierId) VALUES
('TRAIT_LEADER_MAJOR_CIV', 'RH_HEGEMONY_CIVIC_DEITY_TOUR');

INSERT OR IGNORE INTO Modifiers (ModifierId, ModifierType, OwnerRequirementSetId) VALUES
('RH_HEGEMONY_CIVIC_DEITY_TOUR', 'MODIFIER_PLAYER_ADJUST_TOURISM', 'RH_IMMORTAL_HEGEMONY_CIVIC');

INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Value) VALUES
('RH_HEGEMONY_CIVIC_DEITY_TOUR', 'Amount',  700); -- pvs 350


--INSERT OR IGNORE INTO ModifierArguments (ModifierId, Name, Type, Value, Extra) VALUES
--('RH_HEGEMONY_CIVIC_DEITY_TOUR', 'Amount', 'LinearScaleFromDefaultHandicap', 250, 0); -- pvs 175

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_IMMORTAL_HEGEMONY_CIVIC', 			'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES	
		('RH_IMMORTAL_HEGEMONY_CIVIC', 			'REQUIRES_RH_HAS_CIVIC_HEGEMONY'),
		('RH_IMMORTAL_HEGEMONY_CIVIC', 			'REQUIRES_PLAYER_IS_AI'),
		('RH_IMMORTAL_HEGEMONY_CIVIC', 			'REQUIRES_PLAYER_IMMORTAL');
		
INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType) VALUES
		('REQUIRES_RH_HAS_CIVIC_HEGEMONY', 				'REQUIREMENT_PLAYER_HAS_CIVIC');

INSERT OR IGNORE OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value) VALUES
		('REQUIRES_RH_HAS_CIVIC_HEGEMONY',					'CivicType',	'CIVIC_CULTURAL_HEGEMONY');


INSERT OR IGNORE INTO Requirements (RequirementId, RequirementType, Inverse) VALUES
('REQUIRES_PLAYER_IMMORTAL', 'REQUIREMENT_PLAYER_HANDICAP_AT_OR_ABOVE', 0);

INSERT OR IGNORE INTO RequirementArguments (RequirementId, Name, Value) VALUES
('REQUIRES_PLAYER_IMMORTAL', 'Handicap', 'DIFFICULTY_IMMORTAL');




INSERT OR IGNORE INTO	TraitModifiers	(TraitType,		ModifierId) VALUES	
	('TRAIT_LEADER_SATYAGRAHA',		'RH_Resource_Tweak'),
	('TRAIT_LEADER_SATYAGRAHA',		'RH_Resource_Tweak2');

INSERT OR IGNORE INTO Modifiers	(ModifierId, ModifierType, SubjectRequirementSetId)  VALUES	
		('RH_Resource_Tweak',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'PLAYER_IS_AI_LATE_TECH_REQ_S'),
		('RH_Resource_Tweak2',	'MODIFIER_PLAYER_ADJUST_FREE_RESOURCE_IMPORT_EXTRACTION', 	'PLAYER_IS_AI_SMART_MATERIALS_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value)  VALUES
		('RH_Resource_Tweak',	'ResourceType',	'RESOURCE_URANIUM'),
		('RH_Resource_Tweak',	'Amount',		4),

		('RH_Resource_Tweak2',	'ResourceType',	'RESOURCE_ALUMINUM'),
		('RH_Resource_Tweak2',	'Amount',		3);

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType) VALUES
		('PLAYER_IS_AI_LATE_TECH_REQ_S', 'REQUIREMENTSET_TEST_ALL'),
		('PLAYER_IS_AI_SMART_MATERIALS_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements  (RequirementSetId, RequirementId) VALUES

		('PLAYER_IS_AI_LATE_TECH_REQ_S', 'PLAYER_IS_AI_LATE_TECH'),
		('PLAYER_IS_AI_LATE_TECH_REQ_S', 'REQUIRES_PLAYER_IS_AI'),

		('PLAYER_IS_AI_SMART_MATERIALS_REQ_S', 'PLAYER_IS_AI_SMART_MATERIALS'),
		('PLAYER_IS_AI_SMART_MATERIALS_REQ_S', 'REQUIRES_PLAYER_IS_AI');
		
INSERT OR IGNORE INTO Requirements  (RequirementId, RequirementType)  VALUES
		('PLAYER_IS_AI_LATE_TECH', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
		('PLAYER_IS_AI_SMART_MATERIALS', 'REQUIREMENT_PLAYER_HAS_TECHNOLOGY');

INSERT OR IGNORE INTO RequirementArguments  (RequirementId,	Name, Value)  VALUES
		('PLAYER_IS_AI_LATE_TECH','TechnologyType', 'TECH_NUCLEAR_FUSION'),
		('PLAYER_IS_AI_SMART_MATERIALS','TechnologyType', 'TECH_SMART_MATERIALS');