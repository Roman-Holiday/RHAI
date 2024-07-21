
-- AUTHOR: ROMANHOLIDAY
-- Julius Caesar


UPDATE AiFavoredItems SET Value = 900 WHERE ListType = 'GallicWarsClearingBarbCampPreference' AND Item = 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS'; -- base 0.85 -- pvs 110, 500 after barbarian bonus

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('CasearOps'),
('CasearPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('CasearOps', 		'TRAIT_LEADER_CAESAR', 'Operations'),
('CasearPseudoYields', 'TRAIT_LEADER_CAESAR', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CasearOps', 'ATTACK_BARBARIANS', 1, 2), -- Critical
('CaesarTechs', 'TECH_METAL_CASTING', 1, 0), -- Extra gold bonus

('CasearPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 100), -- (plus aggressive trait) (+300 gold)
('CasearPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -5),
('CasearPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -10),
('CasearPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 22), -- pvs 17
('CasearPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 30), -- pvs 20

('CasearPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 14), -- For COLOSSEUM

('CasearPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5),
('CasearPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5), -- pvs 3
--('CasearPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 50),
('CasearPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 8), -- To slightly counter aggressive trait 
('CasearPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -30);

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JULIUS_CAESAR', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JULIUS_CAESAR', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JULIUS_CAESAR', 'TRAIT_LEADER_MAD_EXPANSIONIST');


/*
		<Row ListType="CaesarWonders" Item="BUILDING_COLOSSEUM" Favored="true"/>
		<Row ListType="CaesarWonders" Item="BUILDING_COLOSSUS" Favored="true"/>
		<Row ListType="CaesarWonders" Item="BUILDING_GREAT_ZIMBABWE" Favored="true"/>
		<Row ListType="CaesarWonders" Item="BUILDING_ESTADIO_DO_MARACANA" Favored="true"/>
		<Row ListType="CaesarCivics" Item="CIVIC_CRAFTSMANSHIP" Favored="true"/>
		<Row ListType="CaesarCivics" Item="CIVIC_EARLY_EMPIRE" Favored="true"/>
		<Row ListType="CaesarCivics" Item="CIVIC_SCORCHED_EARTH" Favored="true"/>
		<Row ListType="CaesarTechs" Item="TECH_ANIMAL_HUSBANDRY" Favored="true"/>
		<Row ListType="CaesarTechs" Item="TECH_ENGINEERING" Favored="true"/>
		<Row ListType="CaesarTechs" Item="TECH_IRON_WORKING" Favored="true"/>
		<Row ListType="CaesarTechs" Item="TECH_MILITARY_ENGINEERING" Favored="true"/>
		<Row ListType="CaesarTechs" Item="TECH_INDUSTRIALIZATION" Favored="true"/>
		<Row ListType="CaesarTechs" Item="TECH_COMBUSTION" Favored="true"/>
		<Row ListType="CaesarTechs" Item="TECH_STEEL" Favored="true"/>
		<Row ListType="GallicWarsClearingBarbCampPreference" Item="PSEUDOYIELD_CLEAR_BANDIT_CAMPS" Value="5"/>
*/
