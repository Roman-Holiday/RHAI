
-- Author RomanHoliday
-- RH NEW Diplo Strat 1

/*
		<Row>
			<ModifierId>STANDARD_DIPLOMACY_RANDOM</ModifierId>
			<ModifierType>MODIFIER_PLAYER_DIPLOMACY_RANDOM</ModifierType>
			<SubjectRequirementSetId>PLAYER_IS_MAJOR_CIV</SubjectRequirementSetId>
		</Row>
*/


INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_PLAYER_DIPLO', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
--		('RH_AI_PLAYER_DIPLO', 'REQUIRES_TURN_STARTED'),
				
		('RH_AI_PLAYER_DIPLO', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('RH_AI_PLAYER_DIPLO', 'REQUIRES_PLAYERS_HAVE_MET'),
		('RH_AI_PLAYER_DIPLO', 'REQUIRES_PLAYER_IS_HUMAN');

INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_FRIENDLY_DIPLO', 'REQUIREMENTSET_TEST_ALL');

INSERT OR IGNORE INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
--		('RH_AI_FRIENDLY_DIPLO', 'REQUIRES_TURN_STARTED'),
				
		('RH_AI_FRIENDLY_DIPLO', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('RH_AI_FRIENDLY_DIPLO', 'REQUIRES_PLAYERS_HAVE_MET'),
		('RH_AI_FRIENDLY_DIPLO', 'REQUIRES_PLAYER_IS_AI');









/*
		<Row ModifierId="NO_CAP_LUXURY_RESOURCE">
			<ModifierType>MODIFIER_PLAYER_ADJUST_NO_CAP_RESOURCE</ModifierType>
		</Row>
*/

/*
INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_LUX_TEST');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
	--		('RH_AI_APPLY_GRIEVANCES_DEBUFF',	'MODIFIER_ALL_CITIES_ATTACH_MODIFIER', 							'PLAYER_IS_AI'),
			('RH_AI_LUX_TEST',	'MODIFIER_PLAYER_ADJUST_NO_CAP_RESOURCE', 							'PLAYER_IS_AI');
					
--INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
	--		('RH_AI_APPLY_GRIEVANCES_DEBUFF',			'ModifierId',			'RH_AI_GRIEVANCES_DEBUFF'),
	--		('RH_AI_LUX_TEST',								'Amount',					-35);
*/


/*
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType) SELECT 'NO_CAP_HAPPINESS_' || ResourceType, 'MODIFIER_PLAYER_ADJUST_NO_CAP_RESOURCE'
    FROM Resources WHERE ResourceClassType IN ('RESOURCECLASS_LUXURY');

INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT 'NO_CAP_HAPPINESS_' || ResourceType, 'ResourceType', ResourceType
    FROM Resources WHERE ResourceClassType IN ('RESOURCECLASS_LUXURY');

INSERT OR REPLACE INTO GameModifiers (ModifierId) SELECT 'NO_CAP_HAPPINESS_' || ResourceType
    FROM Resources WHERE ResourceClassType IN ('RESOURCECLASS_LUXURY');
*/




UPDATE Modifiers SET SubjectRequirementSetId = 'RH_AI_PLAYER_DIPLO' WHERE ModifierId = 'STANDARD_DIPLOMACY_RANDOM' AND ModifierType = 'MODIFIER_PLAYER_DIPLOMACY_RANDOM';



/*
		<Row>
			<ModifierId>STANDARD_DIPLOMACY_RANDOM</ModifierId>
			<ModifierType>MODIFIER_PLAYER_DIPLOMACY_RANDOM</ModifierType>
			<SubjectRequirementSetId>PLAYER_IS_MAJOR_CIV</SubjectRequirementSetId>
		</Row>
*/

/*
INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_APPLY_GRIEVANCES_DEBUFF');
*/


INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_APPLY_SURPRISE_WAR_COUNTS_AS_FORMAL');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_AI_APPLY_SURPRISE_WAR_COUNTS_AS_FORMAL',	'MODIFIER_PLAYER_ADJUST_MAX_WARMONGER_PERCENT', 							'PLAYER_IS_AI');
					
INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
			('RH_AI_APPLY_SURPRISE_WAR_COUNTS_AS_FORMAL',					'MaxPercent',					100);




/*

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_AI_APPLY_GRIEVANCES_DEBUFF',	'MODIFIER_ALL_CITIES_ATTACH_MODIFIER', 							'PLAYER_IS_AI'),
			('RH_AI_GRIEVANCES_DEBUFF',	'MODIFIER_PLAYER_ADJUST_GRIEVANCE_MULTIPLIER', 							'PLAYER_IS_AI');
					
INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
			('RH_AI_APPLY_GRIEVANCES_DEBUFF',			'ModifierId',			'RH_AI_GRIEVANCES_DEBUFF'),
			('RH_AI_GRIEVANCES_DEBUFF',					'Amount',					-33);


    <Row>
      <ModifierId>APPLY_PLAYER_GRIEVANCES_BUFF</ModifierId>
      <Name>ModifierId</Name>
      <Value>WC_RES_PLAYER_GRIEVANCES_BUFF</Value>
    </Row>
    <Row>
      <ModifierId>APPLY_PLAYER_GRIEVANCES_DEBUFF</ModifierId>
      <Name>ModifierId</Name>
      <Value>WC_RES_PLAYER_GRIEVANCES_DEBUFF</Value>
    </Row>
    <Row>
      <ModifierId>WC_RES_PLAYER_GRIEVANCES_BUFF</ModifierId>
      <Name>Amount</Name>
      <Value>100</Value>
    </Row>
    <Row>
      <ModifierId>WC_RES_PLAYER_GRIEVANCES_DEBUFF</ModifierId>
      <Name>Amount</Name>
      <Value>-50</Value>
    </Row>
    <Row>
      <ModifierId>WC_RES_OPERATION_CHANCE_BUFF</ModifierId>
      <Name>Amount</Name>
      <Value>2</Value>
    </Row>
/*


/*
		<Row>
			<ModifierId>AGENDA_MAURYA_EMPIRE_NOT_NEIGHBORS</ModifierId>
			<Name>InitialValue</Name>
			<Value>5</Value>
		</Row>
		<Row>
			<ModifierId>AGENDA_MAURYA_EMPIRE_NOT_NEIGHBORS</ModifierId>
			<Name>MaxValue</Name>
			<Value>15</Value>
		</Row>
		<Row>
			<ModifierId>AGENDA_MAURYA_EMPIRE_NOT_NEIGHBORS</ModifierId>
			<Name>IncrementValue</Name>
			<Value>1</Value>
		</Row>
		<Row>
			<ModifierId>AGENDA_MAURYA_EMPIRE_NOT_NEIGHBORS</ModifierId>
			<Name>IncrementTurns</Name>
			<Value>5</Value>
		</Row>
		<Row>
			<ModifierId>AGENDA_MAURYA_EMPIRE_NOT_NEIGHBORS</ModifierId>
			<Name>StatementKey</Name>
			<Value>LOC_DIPLO_KUDO_EXIT_LEADER_CHANDRAGUPTA_ANY</Value>
		</Row>
		<Row>
			<ModifierId>AGENDA_MAURYA_EMPIRE_NOT_NEIGHBORS</ModifierId>
			<Name>SimpleModifierDescription</Name>
			<Value>LOC_DIPLO_MODIFIER_CHANDRAGUPTA_NOT_NEIGHBOR</Value>
		</Row>
*/



/*
		<Row>
			<ModifierId>STANDARD_DIPLOMACY_RANDOM</ModifierId>
			<Name>DifficultyOffset</Name>
			<Type>LinearScaleFromDefaultHandicap</Type>
			<Value>0</Value>
			<Extra>-1</Extra>
		</Row>
		
				<Row>
			<ModifierId>STANDARD_DIPLOMACY_RANDOM</ModifierId>
			<Name>ReductionTurns</Name>
			<Value>10</Value>
		</Row>
		
			<Row>
			<ModifierId>STANDARD_DIPLOMACY_RANDOM</ModifierId>
			<Name>ReductionValue</Name>
			<Value>1</Value>
		</Row>
*/

/*
INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_FRIENDLY_FAR_AWAY_DIPLO', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
--		('RH_AI_FRIENDLY_FAR_AWAY_DIPLO', 'REQUIRES_TURN_STARTED'),
				
		('RH_AI_FRIENDLY_FAR_AWAY_DIPLO', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('RH_AI_FRIENDLY_FAR_AWAY_DIPLO', 'REQUIRES_PLAYERS_HAVE_MET'),
	
		('RH_AI_FRIENDLY_FAR_AWAY_DIPLO', 'REQUIRES_PLAYER_IS_AI');
*/



INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_NOT_NEIGHBORS', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
			
		('RH_NOT_NEIGHBORS', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('RH_NOT_NEIGHBORS', 'REQUIRES_MET_10_TURNS_AGO'),
		('RH_NOT_NEIGHBORS', 'REQUIRES_NOT_NEIGHBOR_CIVS'), 
		
		('RH_NOT_NEIGHBORS', 'REQUIRES_PLAYER_IS_AI');


INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_FRIENDS', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
			
		('RH_AI_FRIENDS', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('RH_AI_FRIENDS', 'REQUIRES_PLAYER_AT_PEACE'),
		('RH_AI_FRIENDS', 'REQUIRES_PLAYER_DECLARED_FRIEND'), 
		
		('RH_AI_FRIENDS', 'REQUIRES_PLAYER_IS_AI');




INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_LIKE_FAR_AWAY_AI');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_AI_LIKE_FAR_AWAY_AI',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', 							'RH_NOT_NEIGHBORS');
					
-- , MODIFIER_PLAYER_DIPLOMACY_RANDOM
INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,		Value) VALUES		
			('RH_AI_LIKE_FAR_AWAY_AI',					'MaxValue',					28), -- pvs 14, 17, 29, 35, 45, 40, 33
			('RH_AI_LIKE_FAR_AWAY_AI',					'InitialValue',				1), -- pvs 3
			('RH_AI_LIKE_FAR_AWAY_AI',					'IncrementValue',			2); -- pvs 2, 3, 4, 3

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value,							 Type) VALUES			
			('RH_AI_LIKE_FAR_AWAY_AI',												'IncrementTurns',		5, 						'ScaleByGameSpeed'); -- pvs 4, 3, 4




INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_LIKE_FRIENDS');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_AI_LIKE_FRIENDS',	'STANDARD_DIPLOMATIC_DECLARED_FRIEND', 							'RH_AI_FRIENDS');
					
-- , MODIFIER_PLAYER_DIPLOMACY_RANDOM
INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,		Value) VALUES		
			('RH_AI_LIKE_FRIENDS',					'MaxValue',					15), 
			('RH_AI_LIKE_FRIENDS',					'InitialValue',				6),
			('RH_AI_LIKE_FRIENDS',					'IncrementValue',			1),

			('RH_AI_LIKE_FRIENDS',					'ReductionTurns',			4),
			('RH_AI_LIKE_FRIENDS',					'ReductionValue',			1);


INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value,							 Type) VALUES			
			('RH_AI_LIKE_FRIENDS',												'IncrementTurns',		2, 						'ScaleByGameSpeed'); 








-- Todo Aggressive Agendas

INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_AGGRESSIVE_MILITARY',	'RH_AI_DISLIKE_NEARBY_TARGETS');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_AI_DISLIKE_NEARBY_TARGETS',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', 							'PLAYERS_ARE_NEIGHBORS');
					
-- , MODIFIER_PLAYER_DIPLOMACY_RANDOM
INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,		Value) VALUES		
			('RH_AI_DISLIKE_NEARBY_TARGETS',					'MaxValue',					-10), 
			('RH_AI_DISLIKE_NEARBY_TARGETS',					'InitialValue',				-2),
			('RH_AI_DISLIKE_NEARBY_TARGETS',					'IncrementValue',			-1),
			('RH_AI_DISLIKE_NEARBY_TARGETS',					'StatementKey',							'LOC_DIPLO_WARNING_EXIT_LEADER_CHANDRAGUPTA_ANY'),
			('RH_AI_DISLIKE_NEARBY_TARGETS',					'SimpleModifierDescription',			'LOC_DIPLO_MODIFIER_CHANDRAGUPTA_NEIGHBOR');


INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value,							 Type) VALUES			
			('RH_AI_DISLIKE_NEARBY_TARGETS',												'IncrementTurns',		8, 						'ScaleByGameSpeed'); 





INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_REQ_PLAYER_CLOSE_TO_VICTORY', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
		('RH_AI_REQ_PLAYER_CLOSE_TO_VICTORY', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('RH_AI_REQ_PLAYER_CLOSE_TO_VICTORY', 'REQUIRES_PLAYERS_HAVE_MET'),
		('RH_AI_REQ_PLAYER_CLOSE_TO_VICTORY', 'REQUIRES_PLAYER_CLOSE_TO_VICTORY'); 
--		('RH_AI_REQ_PLAYER_CLOSE_TO_VICTORY', 'REQUIRES_PLAYER_IS_HUMAN');



INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_PLAYER_CLOSE_TO_VICTORY');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_AI_PLAYER_CLOSE_TO_VICTORY',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER', 							'RH_AI_REQ_PLAYER_CLOSE_TO_VICTORY'); -- could try  MODIFIER_PLAYER_DIPLOMACY_RANDOM for fun
					
INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,		Value) VALUES		
			('RH_AI_PLAYER_CLOSE_TO_VICTORY',					'MaxValue',					-30),
			('RH_AI_PLAYER_CLOSE_TO_VICTORY',					'InitialValue',				-1),
			('RH_AI_PLAYER_CLOSE_TO_VICTORY',					'IncrementValue',			-2),
			('RH_AI_PLAYER_CLOSE_TO_VICTORY',					'SimpleModifierDescription',			'LOC_DIPLO_MODIFIER_CLOSE_TO_VICTORY');
			

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value,							 Type) VALUES			
			('RH_AI_PLAYER_CLOSE_TO_VICTORY',												'IncrementTurns',		2, 						'ScaleByGameSpeed');
			

					



INSERT OR IGNORE INTO RequirementSets (RequirementSetId, RequirementSetType)  VALUES
		('RH_AI_PEACE_AI_REQ_S', 'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId) VALUES
--		('RH_AI_PEACE_AI_REQ_S', 'REQUIRES_TURN_STARTED'),
	
		('RH_AI_PEACE_AI_REQ_S', 'REQUIRES_MAJOR_CIV_OPPONENT'),
		('RH_AI_PEACE_AI_REQ_S', 'REQUIRES_MET_10_TURNS_AGO'),
	
	--	('RH_AI_PEACE_AI_REQ_S', 'REQUIRES_PLAYERS_HAVE_MET'), -- Not used in Normal Peace Modifier
		('RH_AI_PEACE_AI_REQ_S', 'REQUIRES_PLAYER_AT_PEACE'),
		
		('RH_AI_PEACE_AI_REQ_S', 'REQUIRES_PLAYER_IS_AI');


INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_DIPLOMACY_PEACE');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_AI_DIPLOMACY_PEACE',	'MODIFIER_PLAYER_DIPLOMACY_PEACEFUL', 							'RH_AI_PEACE_AI_REQ_S');
	
-- MODIFIER_PLAYER_DIPLOMACY_PEACEFUL? 
-- Or MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER

INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,		Value) VALUES		
			('RH_AI_DIPLOMACY_PEACE',					'MaxValue',												8), -- pvs 12, 14, 16, 20, 14, 10, 9
			('RH_AI_DIPLOMACY_PEACE',					'InitialValue',											0),
			('RH_AI_DIPLOMACY_PEACE',					'IncrementValue',										1), -- pvs 1
			('RH_AI_DIPLOMACY_PEACE',					'SimpleModifierDescription',			'LOC_TOOLTIP_SAMPLE_DIPLOMACY_PEACE');
			
INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value,							 Type) VALUES			
			('RH_AI_DIPLOMACY_PEACE',												'IncrementTurns',		10, 						'ScaleByGameSpeed'); -- pvs 4, 3, 4
			

-- Dislike nearby player

/*
INSERT OR IGNORE INTO	TraitModifiers	(TraitType,					ModifierId)  VALUES		
			('TRAIT_LEADER_MAJOR_CIV',	'RH_AI_LIKE_FAR_AWAY_AI');

INSERT OR IGNORE INTO	Modifiers	(ModifierId,							ModifierType, 										SubjectRequirementSetId) VALUES		
			('RH_AI_GRIEVANCES_DEBUFF',	'MODIFIER_PLAYER_ADJUST_GRIEVANCE_MULTIPLIER', 							'PLAYER_IS_AI');
					
INSERT OR IGNORE INTO	ModifierArguments	(ModifierId,									Name,				Value) VALUES		
			('RH_AI_GRIEVANCES_DEBUFF',					'Amount',					-30);

*/


/*

Investigate:
Teddy Trait
		<Row>
			<ModifierId>TRAIT_BEFRIEND_MINOR_CIV_HOME_CONTINENT</ModifierId>
			<Name>Action</Name>
			<Value>DIPLOACTION_GRANT_INFLUENCE_TOKEN</Value>
		</Row>
		<Row>
			<ModifierId>TRAIT_BEFRIEND_MINOR_CIV_HOME_CONTINENT</ModifierId>
			<Name>Favored</Name>
			<Value>true</Value>
		</Row>
*/





-- STANDARD_DIPLOMACY_SETTLED_CITIES Test

UPDATE ModifierArguments SET Value = 6 WHERE ModifierId='STANDARD_DIPLOMACY_SETTLED_CITIES' AND Name='ReductionTurns'; -- Def 10, 7


UPDATE ModifierArguments SET Value = 25 WHERE ModifierId='STANDARD_DIPLOMACY_SETTLED_CITIES' AND Name='MessageThrottle'; -- Def 20


-- Culture Bombed

UPDATE ModifierArguments SET Value =-15 WHERE ModifierId='STANDARD_DIPLOMATIC_CULTURE_BOMBED' AND Name='InitialValue'; -- def -10



-- Converted City

UPDATE ModifierArguments SET Value =-12 WHERE ModifierId='STANDARD_DIPLOMATIC_CONVERTED_CITY' AND Name='InitialValue'; -- def -9




/*
-- Test
--UPDATE ModifierArguments SET Type='LinearScaleFromDefaultHandicap' WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='TradeValuePerModifierPoint'; -- def 10

UPDATE ModifierArguments SET Value=30 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='TradeValuePerModifierPoint'; -- def 10, at 40 Maxs out at +2

--UPDATE ModifierArguments SET Extra=9 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='TradeValuePerModifierPoint'; -- pvs 10

-- Total of 79 on Deity++ Difficulty (or Insane)

UPDATE ModifierArguments SET Value=18 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='MaxValue'; -- def 20


UPDATE ModifierArguments SET Value=2 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='ReductionValue'; -- def 1

UPDATE ModifierArguments SET Value=3 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='ReductionTurns'; -- def 2
*/

/*
			<Type>LinearScaleFromDefaultHandicap</Type>
			<Value>0</Value>
			<Extra>-1</Extra>
			
*/



/*
		<Row>
			<ModifierId>STANDARD_DIPLOMATIC_CLOSE_TO_VICTORY</ModifierId>
			<Name>MaxValue</Name>
			<Value>-500</Value>
		</Row>
		<Row>
			<ModifierId>STANDARD_DIPLOMATIC_CLOSE_TO_VICTORY</ModifierId>
			<Name>InitialValue</Name>
			<Value>-1</Value>
		</Row>
		<Row>
			<ModifierId>STANDARD_DIPLOMATIC_CLOSE_TO_VICTORY</ModifierId>
			<Name>IncrementTurns</Name>
			<Value>2</Value>
		</Row>
		<Row>
			<ModifierId>STANDARD_DIPLOMATIC_CLOSE_TO_VICTORY</ModifierId>
			<Name>IncrementValue</Name>
			<Value>-1</Value>
			<Type>ScaleByGameSpeed</Type>
		</Row>
		<Row>
			<ModifierId>STANDARD_DIPLOMATIC_CLOSE_TO_VICTORY</ModifierId>
			<Name>SimpleModifierDescription</Name>
			<Value>LOC_DIPLO_MODIFIER_CLOSE_TO_VICTORY</Value>
		</Row>
*/

UPDATE ModifierArguments SET Value =-2 WHERE ModifierId='STANDARD_DIPLOMATIC_CLOSE_TO_VICTORY' AND Name='IncrementValue'; 
UPDATE ModifierArguments SET Value =-4 WHERE ModifierId='STANDARD_DIPLOMATIC_CLOSE_TO_VICTORY' AND Name='InitialValue'; 

--KEEP_PROMISE_DONT_SPY
UPDATE DiplomaticActions_XP2 SET GrievancesPerIncursion=30 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_SPY';
--KEEP_PROMISE_DONT_CONVERT 
--UPDATE DiplomaticActions_XP2 SET GrievancesPerIncursion=30 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_CONVERT';
--KEEP_PROMISE_DONT_DIG_ARTIFACTS 
UPDATE DiplomaticActions_XP2 SET GrievancesPerIncursion=30 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_DIG_ARTIFACTS';
--KEEP_PROMISE_DONT_SETTLE_TOO_NEAR
UPDATE DiplomaticActions_XP2 SET GrievancesPerIncursion=35 WHERE DiplomaticActionType='DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR';



UPDATE ModifierArguments SET Value =-10 WHERE ModifierId='AGENDA_LOW_NUKE_LOVE' AND Name='InitialValue'; -- def -6



-- AGENDA_MODIFIER_WARMONGER def -8
-- AGENDA_MODIFIER_NOT_WARMONGER def 5

UPDATE ModifierArguments SET Value = 6 WHERE ModifierId='AGENDA_MODIFIER_NOT_WARMONGER' AND Name='InitialValue'; -- def 5

UPDATE ModifierArguments SET Value =-18 WHERE ModifierId='AGENDA_MODIFIER_WARMONGER' AND Name='InitialValue'; -- def -8



-- Allying with enemy / War with friend modifiers


--UPDATE ModifierArguments SET Value = 16 WHERE ModifierId='STANDARD_DIPLOMATIC_ALLY' AND Name='InitialValue'; -- def 18

--UPDATE ModifierArguments SET Value = 9 WHERE ModifierId='STANDARD_DIPLOMATIC_DECLARED_FRIEND' AND Name='InitialValue'; -- def 9

-- Def -8
UPDATE ModifierArguments SET Value=-13 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_DECLARED_SURPRISE_WAR_ON_FRIEND' AND Name='AmountPerIncident';

UPDATE ModifierArguments SET Value=10 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_DECLARED_SURPRISE_WAR_ON_FRIEND' AND Name='MaxEffectMagnitude'; -- Def 8


-- Def -6
UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_DENOUNCED_FRIEND' AND Name='AmountPerIncident';

-- Def 6
UPDATE ModifierArguments SET Value=6 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_DECLARED_FRIENDSHIP_WITH_FRIEND' AND Name='AmountPerIncident';

-- Def -6, pvs -9
UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_DECLARED_FRIENDSHIP_WITH_ENEMY' AND Name='AmountPerIncident';

-- Def -8, pvs -12
UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='STANDARD_DIPLOMATIC_3RD_PARTY_ALLIED_WITH_ENEMY' AND Name='AmountPerIncident';

-- Def -5
UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='STANDARD_DIPLOMATIC_ARCHAEOLOGY' AND Name='ModifierPerTransgression';

-- Def -6
UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='STANDARD_DIPLOMATIC_BROKEN_PROMISE' AND Name='ModifierPerTransgression';

-- Def -5
UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='STANDARD_DIPLOMATIC_ESPIONAGE' AND Name='ModifierPerTransgression';

-- Def -3
UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='STANDARD_DIPLOMATIC_NO_PROMISE' AND Name='ModifierPerTransgression'; -- pvs -6


-- Def -6
UPDATE ModifierArguments SET Value=-6 WHERE ModifierId='STANDARD_DIPLOMATIC_BROKEN_PLEDGE' AND Name='ModifierPerTransgression';

-- Def -3
UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='STANDARD_DIPLOMATIC_NO_PLEDGE' AND Name='ModifierPerTransgression'; -- pvs -6

UPDATE ModifierArguments SET Value=9 WHERE ModifierId='STANDARD_DIPLOMATIC_KEPT_PROMISE' AND Name='ModifierPerKeptPromise'; -- def 4, 8

UPDATE ModifierArguments SET Value=9 WHERE ModifierId='STANDARD_DIPLOMATIC_KEPT_PROMISE' AND Name='ReductionTurns'; -- def 15



-- SHARED_EMERGENCY

UPDATE ModifierArguments SET Value=6 WHERE ModifierId='STANDARD_DIPLOMATIC_SHARED_EMERGENCY' AND Name='InitialValue'; -- pvs 4

UPDATE ModifierArguments SET Value=5 WHERE ModifierId='STANDARD_DIPLOMATIC_SHARED_EMERGENCY' AND Name='ReductionTurns'; -- pvs 6
