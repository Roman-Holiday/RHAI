
-- AUTHOR: ROMANHOLIDAY

-- Game Parameter Setup


INSERT OR REPLACE INTO Parameters (ParameterId, 		Name,			Description, Domain, 		DefaultValue, ConfigurationGroup, ConfigurationId, 	GroupId, 			SortIndex) VALUES		
		('RH_AI_DIPLOMACY_OFFSET', 'LOC_STARTING_DIPLO_OFFSET',				 NULL, 	'RH_GAME_SETUP',	 1, 			'Game', 		'RH_AI_SETTINGS', 			'AdvancedOptions',	 			110);

INSERT OR REPLACE INTO DomainValues (Domain, Value, Name, 										Description, 										SortIndex) VALUES		
			('RH_GAME_SETUP',	0, 		'RULESET_RH_AI_STANDARD_OFFSET_NAME', 		'RULESET_RH_AI_STANDARD_OFFSET_DESCRIPTION', 			10),
			('RH_GAME_SETUP', 	1, 		'RULESET_RH_AI_LOWER_OFFSET_NAME', 			'RULESET_RH_AI_LOWER_OFFSET_DESCRIPTION', 				20),
			('RH_GAME_SETUP', 	2, 		'RULESET_RH_AI_LOWEST_OFFSET_NAME', 		'RULESET_RH_AI_LOWEST_OFFSET_DESCRIPTION', 				30);


INSERT OR REPLACE INTO Parameters (ParameterId, 		Name,			Description, Domain, 												DefaultValue, ConfigurationGroup, ConfigurationId, 	GroupId, 			SortIndex) VALUES		
		('RH_AI_REDUCED_STARTING_UNITS_GAMEMODE', 'RULESET_RH_AI_REDUCED_STARTING_UNITS_NAME',		'RULESET_RH_AI_REDUCED_STARTING_UNITS_DESCRIPTION', 	'bool',	 0, 	'Game', 	'RH_AI_CONFIG_STARTING_UNITS', 	'AdvancedOptions',	 111);


--INSERT OR REPLACE INTO Parameters (ParameterId, 		Name,			Description, Domain, 												DefaultValue, ConfigurationGroup, ConfigurationId, 	GroupId, 			SortIndex) VALUES		
--		('RH_AI_REVIVAL_OF_MESOPOTAMIA_GAMEMODE', 'RULESET_RH_AI_REVIVAL_OF_MESOPOTAMIA_NAME',		'RULESET_RH_AI_REVIVAL_OF_MESOPOTAMIA_DESCRIPTION', 	'bool',	 0, 	'Game', 	'RH_AI_CONFIG_ROM', 	'AdvancedOptions',	 	112);


INSERT OR REPLACE INTO Parameters (ParameterId, 		Name,			Description, Domain, 												DefaultValue, ConfigurationGroup, ConfigurationId, 	GroupId, 			SortIndex) VALUES		
		('RH_AI_EXTRA_STRATEGICS_GAMEMODE', 'RULESET_RH_AI_EXTRA_STRATEGICS_NAME',		'RULESET_RH_AI_EXTRA_STRATEGICS_DESCRIPTION', 	'bool',	 1, 	'Game', 	'RH_AI_CONFIG_STRATEGICS', 	'AdvancedOptions',	 	113);


INSERT OR REPLACE INTO Parameters (ParameterId, 					Name,											Description, 							Domain, 		DefaultValue, ConfigurationGroup, ConfigurationId, 	GroupId, 			SortIndex) VALUES		
		('RH_AI_REDUCED_EARLY_AGGRESSIVENESS_GAMEMODE', 'RULESET_RH_AI_REDUCED_EARLY_AGGRESSIVENESS_NAME',		'RULESET_RH_AI_REDUCED_EARLY_AGGRESSIVENESS_DESCRIPTION', 	'bool',	 0, 	'Game', 	'RH_AI_CONFIG_EARLY_AGG', 	'AdvancedOptions',	 112);



-- Add AI Additional Tactical Knowledge Game Mode
INSERT OR REPLACE INTO Parameters (ParameterId, 		Name,			Description, Domain, 												DefaultValue, ConfigurationGroup, ConfigurationId, 	GroupId, 			SortIndex) VALUES		
		('RH_AI_EXTRA_TACTICAL_KNOWLEDGE_GAMEMODE', 'RULESET_RH_AI_EXTRA_TACTICAL_KNOWLEDGE_NAME',		'RULESET_RH_AI_EXTRA_TACTICAL_KNOWLEDGE_DESCRIPTION', 	'bool',	 1, 	'Game', 	'RH_AI_CONFIG_TACTICAL_KNOWLEDGE', 	'AdvancedOptions',	 	114);


/*
INSERT OR REPLACE INTO DomainValues (Domain, Value, Name, 										Description, 										SortIndex) VALUES		
			('RH_GAME_SETUP',	0, 		'RULESET_RH_AI_STANDARD_OFFSET_NAME', 		'RULESET_RH_AI_REVIVAL_OF_MESOPOTAMIA_ENABLED_DESCRIPTION', 				10),
			('RH_GAME_SETUP', 	1, 		'RULESET_RH_AI_LOWER_OFFSET_NAME', 			'RULESET_RH_AI_REVIVAL_OF_MESOPOTAMIA_DISABLED_DESCRIPTION', 				20);
*/

/*
INSERT INTO Parameters (ParameterId, Name, Description, Domain, DefaultValue, ConfigurationGroup, ConfigurationId, GroupId, SortIndex) VALUES	

('LGAICompatibilityParam', 'LOC_LGAI_COMPATIBILITY_NAME', 'LOC_LGAI_COMPATIBILITY_DESCRIPTION', 'bool', 0, 'Game', 'LGAI_COMPATIBILITY', 'AdvancedOptions', 107);

*/