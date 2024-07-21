

-- JADWIGA / POLAND


INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JADWIGA', 'TRAIT_LEADER_RH_RELIC');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('JadwigaDiplomacy'),
('JadwigaDistricts'),
('JadwigaImprovements'),
('JadwigaYields'),
('JadwigaPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('JadwigaDiplomacy',    'TRAIT_LEADER_LITHUANIAN_UNION', 'DiplomaticActions'),
('JadwigaDistricts',    'TRAIT_LEADER_LITHUANIAN_UNION', 'Districts'),
('JadwigaImprovements',       'TRAIT_LEADER_LITHUANIAN_UNION', 'Improvements'),
('JadwigaYields',       'TRAIT_LEADER_LITHUANIAN_UNION', 'Yields'),
('JadwigaPseudoYields', 'TRAIT_LEADER_LITHUANIAN_UNION', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JadwigaDiplomacy', 'DIPLOACTION_PROPOSE_TRADE', 1, 0),
('JadwigaDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0),

('JadwigaDistricts', 'DISTRICT_ENCAMPMENT', 1, 50),

('JadwigaWonders', 'BUILDING_MONT_ST_MICHEL', 1, 100), -- how is this not in the def trait lol, divine right is favoured
('JadwigaWonders', 'BUILDING_MONUMENT', 1, 0), -- a lot of bonuses from early culture
('JadwigaWonders', 'BUILDING_SUKIENNICE', 1, 70),
('JadwigaWonders', 'BUILDING_TERRACOTTA_ARMY', 1, 70), -- Relics

('JadwigaYields', 'YIELD_GOLD', 1, 15),
('JadwigaYields', 'YIELD_FAITH', 1, 30), -- Extra Faith because of Saint Agenda and Holy Site Bonus, pvs 5
('JadwigaYields', 'YIELD_CULTURE', 1, 6),

('JadwigaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 11),
('JadwigaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -45),
('JadwigaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 12),
('JadwigaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 8),
('JadwigaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -8),
('JadwigaPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 7),
('JadwigaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 30), -- Holy sites extra adj bonus, 1 instead of 0.5 from districts, 20
('JadwigaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 30), -- Sukiennice, pvs 25
('JadwigaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 0, -5),
('JadwigaPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 15), -- Sukiennice

('JadwigaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, -10),
('JadwigaPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, -10),

('JadwigaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 75), -- pvs 25, 45, 60
('JadwigaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 6), -- For forts?

--('JadwigaPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 300),
--('JadwigaPseudoYields', 'PSEUDOYIELD_GPP_RH_RELICMAN', 1, 10000),

('JadwigaPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 35), -- Relics
('JadwigaPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 15),
('JadwigaPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 32); -- base 0.76

UPDATE AiFavoredItems SET Value = 45 WHERE ListType = 'JadwigaUnitBuilds' AND Item = 'UNIT_MILITARY_ENGINEER'; -- def 1 lol, pvs 25

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JadwigaImprovements', 'IMPROVEMENT_FORT', 1, 80);


-- todo apostle further unit preference for relics

/*
		<Row LeaderType="LEADER_JADWIGA" TraitType="TRAIT_LEADER_RELIGIOUS_MAJOR_CIV"/>
		<Row LeaderType="LEADER_JADWIGA" TraitType="TRAIT_LEADER_LITHUANIAN_UNION"/>
		<Row LeaderType="LEADER_JADWIGA" TraitType="TRAIT_LEADER_LOW_CITY_STATE_PREFERENCE_WAR"/>
*/