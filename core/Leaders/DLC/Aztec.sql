

-- AZTEC

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_MONTEZUMA', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_MONTEZUMA', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_MONTEZUMA', 'TRAIT_LEADER_MAD_EXPANSIONIST');

DELETE FROM AiFavoredItems WHERE ListType = 'MontezumaTechs' AND Item = 'TECH_ASTROLOGY';


INSERT OR IGNORE INTO	TraitModifiers	
			(TraitType,					ModifierId) VALUES		
			('TRAIT_LEADER_GIFTS_FOR_TLATOANI',	'RH_EAGLE_ONLY');

INSERT OR IGNORE INTO	Modifiers	
			(ModifierId,						ModifierType,							SubjectRequirementSetId) VALUES		
			('RH_EAGLE_ONLY',	'MODIFIER_PLAYER_UNIT_BUILD_DISABLED', 'PLAYER_IS_AI');

INSERT OR IGNORE INTO	ModifierArguments	
			(ModifierId,						Name,			Value) VALUES		
			('RH_EAGLE_ONLY',	'UnitType',		'UNIT_SCOUT');




REPLACE INTO AiListTypes (ListType) VALUES
('MontezumaDistricts'),
('MontezumaSettlement'),
('MontezumaYields'),
('MontezumaPseudoYields'),
('MontezumaUnits'),
('MontezumaUnitBuilds');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('MontezumaDistricts',   'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'Districts'),
('MontezumaSettlement',   'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'PlotEvaluations'),
('MontezumaYields', 		'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'Yields'),
('MontezumaPseudoYields', 'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'PseudoYields'),
('MontezumaUnits',        'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'Units'),
('MontezumaUnitBuilds',   'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'UnitPromotionClasses');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MontezumaTechs', 'TECH_MINING',     1, 0), -- Luxuries
('MontezumaTechs', 'TECH_IRRIGATION', 1, 100), -- Luxuries
('MontezumaTechs', 'TECH_ENGINEERING', 1, 100), -- Catapults -- Need to boost further

('MontezumaDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 0, -300), -- No Unique Building

('MontezumaYields', 'YIELD_CULTURE', 1, 15), -- Ent Complex Combo
('MontezumaYields', 'YIELD_FOOD', 1, 30),
('MontezumaYields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 350),

('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 120), -- early rush
('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -30), 
('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -3), 
('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -80),
('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, -60), -- Doesn't care
('MontezumaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 75), -- pvs 15, 25, 40, 65
('MontezumaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -15), -- not known for being that friendly, -8
('MontezumaPseudoYields', 'PSEUDOYIELD_INFLUENCE', 		1, -30),

('MontezumaPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, -15),
('MontezumaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 15),
('MontezumaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 12), -- 8, 13
('MontezumaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -23), 

('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 0, -25), 
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 45), -- pvs 20, 40
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 5), 
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 0, -26),
--('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 5),
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 20),
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 20),
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 15), -- luxuries
('MontezumaPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, -15), -- more districts, but focus on early rush
--('MontezumaPseudoYields', 'PSEUDOYIELD_WONDER', 1, 10),
('MontezumaPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 650), -- Tlachtli Arena Replacement, pvs 30, 350

('MontezumaPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 30),
('MontezumaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 25), -- more combat strength and luxuries
('MontezumaPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 20), -- more combat strength and luxuries -- pvs 16
('MontezumaPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 160), -- pvs 100

('MontezumaWonders',      'BUILDING_TLACHTLI', 1, 900), 
('MontezumaWonders',      'BUILDING_HUEY_TEOCALLI', 1, 0), 
('MontezumaUnits',        'UNIT_BUILDER', 1, 12), 
('MontezumaUnits',        'UNIT_AZTEC_EAGLE_WARRIOR', 1, 35), -- test, 15, 30

('MontezumaUnits',        'UNIT_SLINGER', 0, -50),

('MontezumaUnits',        'UNIT_MILITARY_ENGINEER', 0, -90);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MontezumaUnitBuilds',   'PROMOTION_CLASS_SIEGE', 1, 5),
('MontezumaUnitBuilds',   'PROMOTION_CLASS_MELEE', 1, 18),
('MontezumaUnitBuilds',   'PROMOTION_CLASS_ANTI_CAVALRY', 0, 3),
--('MontezumaUnitBuilds',   'PROMOTION_CLASS_NAVAL_MELEE', 1, 1),
--('MontezumaUnitBuilds',   'PROMOTION_CLASS_NAVAL_RANGED', 1, -2),
('MontezumaUnitBuilds',   'PROMOTION_CLASS_NAVAL_RAIDER', 1, 9),
('MontezumaUnitBuilds',   'PROMOTION_CLASS_RANGED', 1, 5);

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('MontezumaSettlement', 'Fresh Water',           0,-3,                   NULL), -- 16
('MontezumaSettlement', 'Coastal',               0,-7,                   NULL), -- 7 -- pvs -3
('MontezumaSettlement', 'Nearest Friendly City', 0, 2,                   NULL), -- forward settle -- pvs 2
('MontezumaSettlement', 'New Resources',         0, 9,                   NULL), -- base 4
('MontezumaSettlement', 'Resource Class',        0, 17, 'RESOURCECLASS_LUXURY'); -- base 2


INSERT OR IGNORE INTO Modifiers  (ModifierId, ModifierType, SubjectRequirementSetId) VALUES		
		('BUILDING_TLACHTLI',				'MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_CITY_YIELD_CHANGE',	'RH_AI_ANCIENT_ONLY_REQ_S');

INSERT OR IGNORE INTO ModifierArguments  (ModifierId, Name, Value) VALUES	
		('BUILDING_TLACHTLI',	'YieldType'    , 'YIELD_FOOD'),
		('BUILDING_TLACHTLI',					'Amount'   , 40); -- pvs 20


-- Bugged
UPDATE AiFavoredItems SET Favored = 1 WHERE ListType = 'MontezumaWonders';
UPDATE AiFavoredItems SET Favored = 1 WHERE ListType = 'MontezumaCivics';
UPDATE AiFavoredItems SET Favored = 1 WHERE ListType = 'MontezumaTechs';