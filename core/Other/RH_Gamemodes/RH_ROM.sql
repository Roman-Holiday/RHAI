



/*

MODIFIER_PLAYER_UNITS_ADJUST_ENABLE_WALL_ATTACK_WHOLE_GAME_PROMOTION_CLASS

    <Row>
      <ModifierType>MODIFIER_PLAYER_UNITS_ADJUST_ENABLE_WALL_ATTACK_WHOLE_GAME_PROMOTION_CLASS</ModifierType>
      <CollectionType>COLLECTION_PLAYER_UNITS</CollectionType>
      <EffectType>EFFECT_ADJUST_UNIT_ENABLE_WALL_ATTACK_WHOLE_GAME_PROMOTION_CLASS</EffectType>
    </Row>
	
*/



/*
		<Row>
			<ModifierId>MINOR_CIV_AKKAD_UNIQUE_INFLUENCE_BONUS_MELEE</ModifierId>
			<ModifierType>MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER</ModifierType>
			<SubjectRequirementSetId>PLAYER_IS_SUZERAIN</SubjectRequirementSetId>
		</Row>
		
		
		<Row>
			<ModifierId>MINOR_CIV_AKKAD_UNIQUE_INFLUENCE_BONUS_MELEE</ModifierId>
			<Name>ModifierId</Name>
			<Value>MINOR_CIV_AKKAD_ENABLE_WALL_ATTACK_WHOLE_GAME_MELEE</Value>
		</Row>
		<Row>
			<ModifierId>MINOR_CIV_AKKAD_ENABLE_WALL_ATTACK_WHOLE_GAME_MELEE</ModifierId>
			<Name>PromotionClass</Name>
			<Value>PROMOTION_CLASS_MELEE</Value>
		</Row>
		<Row>
			<ModifierId>MINOR_CIV_AKKAD_UNIQUE_INFLUENCE_BONUS_ANTI_CAVALRY</ModifierId>
			<Name>ModifierId</Name>
			<Value>MINOR_CIV_AKKAD_ENABLE_WALL_ATTACK_WHOLE_GAME_ANTI_CAVALRY</Value>
		</Row>
		<Row>
			<ModifierId>MINOR_CIV_AKKAD_ENABLE_WALL_ATTACK_WHOLE_GAME_ANTI_CAVALRY</ModifierId>
			<Name>PromotionClass</Name>
			<Value>PROMOTION_CLASS_ANTI_CAVALRY</Value>
		</Row>
*/



INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('RH_ROM_PSEUDOS');
INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('RH_ROM_PSEUDOS', 'MAJOR_CIV_DEFAULT_TRAIT', 'PseudoYields');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RH_ROM_PSEUDOS', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 		1, 7),
('RH_ROM_PSEUDOS', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 		1, 8),
('RH_ROM_PSEUDOS', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 		1, -15),
('RH_ROM_PSEUDOS', 'PSEUDOYIELD_CITY_DEFENSES', 			1, -50),
('RH_ROM_PSEUDOS', 'PSEUDOYIELD_UNIT_COMBAT', 				1, 5),
('RH_ROM_PSEUDOS', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 		1, 5),
('RH_ROM_PSEUDOS', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 			1, -3),
('RH_ROM_PSEUDOS', 'PSEUDOYIELD_CITY_BASE', 				1, 40);


-- Temp until seperate setting

/*
INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ANCIENT', 1, 'DISTRICT_AERODROME', 10, 0, 1,  'DIFFICULTY_IMMORTAL', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_CLASSICAL', 1, 'DISTRICT_AERODROME', 10, 0, 1,  'DIFFICULTY_IMMORTAL', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MEDIEVAL', 1, 'DISTRICT_AERODROME', 10, 0, 1,  'DIFFICULTY_IMMORTAL', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_RENAISSANCE', 1, 'DISTRICT_AERODROME', 10, 0, 1,  'DIFFICULTY_IMMORTAL', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INDUSTRIAL', 1, 'DISTRICT_AERODROME', 10, 0, 1,  'DIFFICULTY_IMMORTAL', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_MODERN', 1, 'DISTRICT_AERODROME', 10, 0, 1,  'DIFFICULTY_IMMORTAL', 1);

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_ATOMIC', 1, 'DISTRICT_AERODROME', 10, 0, 1,  'DIFFICULTY_IMMORTAL', 1);
*/

INSERT OR IGNORE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_ANTIAIR_GUN', 'ERA_INFORMATION', 1, 'DISTRICT_AERODROME', 10, 0, 1,  'DIFFICULTY_IMMORTAL', 1);


UPDATE OpTeamRequirements SET MinNumber = 1, MaxNumber = 7 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_RANGED';

--UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 4 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_SIEGE';
--UPDATE OpTeamRequirements SET MinNumber = 0, MaxNumber = 6 WHERE TeamName = 'City Attack Force' AND AiType = 'UNITTYPE_SIEGE_ALL'; 


INSERT OR IGNORE INTO StartBiasResources (CivilizationType, ResourceType, Tier) VALUES ('CIVILIZATION_INDIA', 'RESOURCE_URANIUM', 3);
INSERT OR IGNORE INTO StartBiasResources (CivilizationType, ResourceType, Tier) VALUES ('CIVILIZATION_INDIA', 'RESOURCE_ALUMINUM', 5);

--('Walled City Naval Attack Force', 'UNITTYPE_RANGED',          2, 9, 				0, 0.75),

/*
		<Replace Name="MAYHEM_BUILDING_PILLAGED" Value="2.0" />
		<Replace Name="MAYHEM_CAPTURE_CIVILIAN" Value="1" />
		<Replace Name="MAYHEM_CITY_DEATH" Value="3.0" />
		<Replace Name="MAYHEM_CITY_DEATH_WITH_BARBARIANS" Value="2.0" />		
		<Replace Name="MAYHEM_DECLARATION_OF_WAR" Value="2" />		
		<Replace Name="MAYHEM_DENOUNCEMENT" Value="1" />		
		<Replace Name="MAYHEM_DISTRICT_DEATH" Value="1.0" />		
		<Replace Name="MAYHEM_DISTRICT_DEATH_WITH_BARBARIANS" Value="0.5" />		
		<Replace Name="MAYHEM_DISTRICT_PILLAGED" Value="1.5" />		
		<Replace Name="MAYHEM_IMPROVEMENT_PILLAGED" Value="1.0" />		
		<Replace Name="MAYHEM_NUCLEAR_LAUNCH" Value="5.0" />		
		<Replace Name="MAYHEM_PEACE" Value="-1" />		
		<Replace Name="MAYHEM_PLAYER_DESTROYED" Value="3.0" />	
		<Replace Name="MAYHEM_UNIT_COMBAT" Value="1.0" />		
		<Replace Name="MAYHEM_UNIT_COMBAT_WITH_BARBARIANS" Value="0.5" />		
		<Replace Name="MAYHEM_UNIT_DEATH" Value="1.0" />		
		<Replace Name="MAYHEM_UNIT_DEATH_WITH_BARBARIANS" Value="0.5" />
*/

-- New
UPDATE GlobalParameters SET Value='2' WHERE Name='MAYHEM_CITY_DEATH'; -- def 3 -- pvs 2.5
UPDATE GlobalParameters SET Value='1' WHERE Name='MAYHEM_DECLARATION_OF_WAR'; -- def 2 -- pvs 1.5

-- Old
UPDATE GlobalParameters SET Value='2' WHERE Name='MAYHEM_NUCLEAR_LAUNCH'; -- Def 5 (doesn't inc dst) -- pvs 4
UPDATE GlobalParameters SET Value='3' WHERE Name='MAYHEM_PLAYER_DESTROYED'; -- Def 3
--UPDATE GlobalParameters SET Value='1' WHERE Name='MAYHEM_BUILDING_PILLAGED'; -- Def 2, pvs 1.5
UPDATE GlobalParameters SET Value='0.5' WHERE Name='MAYHEM_DISTRICT_PILLAGED'; -- Def 1.5
--UPDATE GlobalParameters SET Value='0.5' WHERE Name='MAYHEM_IMPROVEMENT_PILLAGED'; -- Def 1
--UPDATE GlobalParameters SET Value='0.5' WHERE Name='MAYHEM_DENOUNCEMENT'; -- Def 1
