

-- Author RomanHoliday

-- RH Extra Sight - 1 Sight

INSERT INTO TraitModifiers	(TraitType,						ModifierId) VALUES	
		('TRAIT_LEADER_MAJOR_CIV',		'MODIFIER_RH_GRANT_1_SIGHT');	


INSERT INTO Modifiers
		(ModifierId,					ModifierType,					OwnerRequirementSetId,       Permanent) VALUES	
		('MODIFIER_RH_GRANT_1_SIGHT',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',						'PLAYER_IS_AI', 1),
		('RH_EXTRA_SIGHT_MOD_1',		'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT',						'PLAYER_IS_AI', 1);



-- Modifier Arguments
		
INSERT INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		('MODIFIER_RH_GRANT_1_SIGHT',					'AbilityType',				'ABILITY_RH_EXTRA_SIGHT_ABILITY_1'),	-- Grants Ability
		('RH_EXTRA_SIGHT_MOD_1',						'Amount',					1); -- Modifier for Ability




-- Mod String

INSERT INTO ModifierStrings (ModifierId, Context, Text) VALUES
		('MODIFIER_RH_GRANT_1_SIGHT',			'Preview',		'LOC_RH_AI_ABILITY_RH_EXTRA_SIGHT_ABILITY_1_DESCRIPTION');	

	

-- Ability Setup


INSERT INTO Types (Type, Kind) VALUES
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'KIND_ABILITY');




--INSERT INTO TypeTags (Type, Tag) VALUES
--		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_ALL_UNITS');



INSERT INTO TypeTags (Type, Tag) VALUES
--		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_RECON'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_MELEE'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_RANGED'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_SIEGE'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_HEAVY_CAVALRY'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_LIGHT_CAVALRY'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_RANGED_CAVALRY'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_ANTI_CAVALRY'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_HEAVY_CHARIOT'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_LIGHT_CHARIOT'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_NAVAL_RANGED'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_NAVAL_RAIDER'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_NAVAL_MELEE'),
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_WARRIOR_MONK');
--		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'CLASS_RELIGIOUS_ALL');


INSERT INTO UnitAbilities (UnitAbilityType, Name, Description, Inactive) VALUES
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'LOC_RH_AI_ABILITY_RH_EXTRA_SIGHT_ABILITY_1_NAME', 'LOC_RH_AI_ABILITY_RH_EXTRA_SIGHT_ABILITY_1_DESCRIPTION', 1);


-- Attach mod to ability
INSERT INTO UnitAbilityModifiers (UnitAbilityType, ModifierId) VALUES
		('ABILITY_RH_EXTRA_SIGHT_ABILITY_1',	'RH_EXTRA_SIGHT_MOD_1');

