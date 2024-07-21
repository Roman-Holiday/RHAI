
-- RH YIELDS 2
-- Author: RomanHoliday
-- DateCreated: 1/19/2024 22:36:04 PM
-- Copyright 2024,© RomanHoliday, All rights reserved

-- RH NAVAL


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_NAVAL_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_NAVAL_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_NAVAL_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_NAVAL_MOD_SM',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_NAVAL_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_NAVAL_MOD_XL',		'YieldType', 		'YIELD_RH_NAVAL'),
		('RH_NAVAL_MOD_XL',							'Amount'   , 85),

		('RH_NAVAL_MOD_L',		'YieldType', 		'YIELD_RH_NAVAL'),
		('RH_NAVAL_MOD_L',							'Amount'   , 30), -- pvs 20

		('RH_NAVAL_MOD_S',		'YieldType', 		'YIELD_RH_NAVAL'),
		('RH_NAVAL_MOD_S',							'Amount'   , 4),

		('RH_NAVAL_MOD_SM',		'YieldType', 		'YIELD_RH_NAVAL'),
		('RH_NAVAL_MOD_SM',							'Amount'   , 8),

		('RH_NAVAL_MOD',		'YieldType', 		'YIELD_RH_NAVAL'),
		('RH_NAVAL_MOD',							'Amount'   , 12);


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	

		('POLICY_LAISSEZ_FAIRE', 		 		 'RH_NAVAL_MOD_L'), -- Requires Shipyards

		('POLICY_VETERANCY', 		  		    'RH_NAVAL_MOD_XL'), -- 30% Production Towards Harbors, pvs 30
		('POLICY_MARITIME_INDUSTRIES', 		    'RH_NAVAL_MOD'), -- +100% Production towards all Ancient and Classical era naval units.
		('POLICY_PRESS_GANGS', 		  			'RH_NAVAL_MOD'), -- 100% Industrial and Earlier
		('POLICY_INTERNATIONAL_WATERS', 		'RH_NAVAL_MOD'), -- 100% Production, Carriers

		('POLICY_NAVAL_INFRASTRUCTURE', 		 'RH_NAVAL_MOD_S'); -- 100% Harbor -- Todo Min Adj Bonus


INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
		('GOVERNMENT_MERCHANT_REPUBLIC', 			'RH_NAVAL_MOD_SM');
		
		
INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
('BUILDING_VENETIAN_ARSENAL',					'RH_NAVAL_MOD'),
('BUILDING_GREAT_LIGHTHOUSE',					'RH_NAVAL_MOD_S'),

('BUILDING_HALICARNASSUS_MAUSOLEUM',			'RH_NAVAL_MOD_SM'),
('BUILDING_SHIPYARD',							'RH_NAVAL_MOD_S'),
('BUILDING_SEAPORT',							'RH_NAVAL_MOD_S'),
('BUILDING_LIGHTHOUSE',							'RH_NAVAL_MOD_S');




-- Lags Tech



INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('RH_LAGS_TECH_MOD',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_LAGS_TECH_MOD_S',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_LAGS_TECH_MOD_L',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_LAGS_TECH_MOD_SM',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S'),
		('RH_LAGS_TECH_MOD_XL',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('RH_LAGS_TECH_MOD_XL',		'YieldType', 		'YIELD_RH_LAGS_TECH'),
		('RH_LAGS_TECH_MOD_XL',							'Amount'   , 240), -- pvs 100, 200

		('RH_LAGS_TECH_MOD_L',		'YieldType', 		'YIELD_RH_LAGS_TECH'),
		('RH_LAGS_TECH_MOD_L',							'Amount'   , 120),

		('RH_LAGS_TECH_MOD_S',		'YieldType', 		'YIELD_RH_LAGS_TECH'),
		('RH_LAGS_TECH_MOD_S',							'Amount'   , 4),

		('RH_LAGS_TECH_MOD_SM',		'YieldType', 		'YIELD_RH_LAGS_TECH'),
		('RH_LAGS_TECH_MOD_SM',							'Amount'   , 30),

		('RH_LAGS_TECH_MOD',		'YieldType', 		'YIELD_RH_LAGS_TECH'),
		('RH_LAGS_TECH_MOD',							'Amount'   , 70); -- pvs 40


INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
		('POLICY_NUCLEAR_ESPIONAGE', 		  		    'RH_LAGS_TECH_MOD_XL'); -- Double Tech Boost

INSERT OR IGNORE INTO CivicModifiers (CivicType, ModifierId)  VALUES		
			('CIVIC_NUCLEAR_PROGRAM', 				'RH_LAGS_TECH_MOD_XL'); -- For Nuclear Espoionage


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(173, 'WC_RES_MERCENARY_COMPANIES', 1, 'RH_LAGS_TECH_MOD_L');

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(158, 'WC_RES_SOVEREIGNTY', 2, 'RH_LAGS_TECH_MOD_XL');


INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(769, 'WC_RES_MIGRATION_TREATY', 2, 'RH_LAGS_TECH_MOD'); -- Growth Penalty, Loyalty Bonus

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(787, 'WC_RES_BORDER_CONTROL', 2, 'RH_LAGS_TECH_MOD_L'); -- Ban Expansion

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(727, 'WC_RES_TRADE_TREATY', 2, 'RH_LAGS_TECH_MOD_L'); -- Ban International Routes

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(728, 'WC_RES_PATRONAGE', 2, 'RH_LAGS_TECH_MOD'); -- Ban GP


--INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES 
--(149, 'WC_RES_GLOBAL_ENERGY_TREATY', 1, 'RH_LAGS_TECH_MOD'); -- 50% Production
-- may want to ban?

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(193, 'WC_RES_ESPIONAGE_PACT', 1, 'RH_LAGS_TECH_MOD_XL'); -- Prefer Buffing Spys, will have lots of them

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(184, 'WC_RES_PUBLIC_RELATIONS', 1, 'RH_LAGS_TECH_MOD_L'); -- 100% Grievances

INSERT OR IGNORE INTO ResolutionEffects ('ResolutionEffectId', 'ResolutionType', 'WhichEffect', 'ModifierId') VALUES
(208, 'WC_RES_MILITARY_ADVISORY', 2, 'RH_LAGS_TECH_MOD'); -- Nerf Units



--INSERT OR IGNORE INTO PolicyModifiers  (PolicyType, ModifierId)  VALUES	
--		('POLICY_VETERANCY', 		  		    'RH_LAGS_TECH_MOD_L'), -- 30% Production Towards Harbors


--INSERT OR IGNORE INTO GovernmentModifiers (GovernmentType, ModifierId)  VALUES		
	--	('GOVERNMENT_MERCHANT_REPUBLIC', 			'RH_LAGS_TECH_MOD_SM');
		
		
--INSERT OR IGNORE INTO BuildingModifiers (BuildingType, ModifierId) VALUES
--('BUILDING_VENETIAN_ARSENAL',					'RH_LAGS_TECH_MOD');

