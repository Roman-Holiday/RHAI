
-- CYRUS / PERSIA

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CYRUS', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CYRUS', 'TRAIT_LEADER_EXPANSIONIST');

REPLACE INTO AiListTypes (ListType) VALUES
('PersiaUnits'),

('CyrusYields'),
('CyrusPseudoYields');


REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PersiaUnits',       'TRAIT_CIVILIZATION_UNIT_IMMORTAL', 'Units'),

('CyrusYields',       'TRAIT_LEADER_FALL_BABYLON', 'Yields'),
('CyrusPseudoYields', 'TRAIT_LEADER_FALL_BABYLON', 'PseudoYields');


REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CyrusYields', 'YIELD_CULTURE', 1, 8),
('CyrusYields', 'YIELD_GOLD', 1, 10),

('CyrusYields', 'YIELD_RH_MILITARY_PRODUCTION', 1, 220),

('PersiaUnits', 'UNIT_PERSIAN_IMMORTAL', 1, 45),

('CyrusPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 15),
('CyrusPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 7), -- pairidaeza (not a that good of an improvement, 1+ culture, +2 gold, +1 appeal (used to be 2), adjacency for holy city and theater square, commerical, city centre
('CyrusPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 10),
('CyrusPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 20), -- Early game aggression
('CyrusPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 10), -- Immortal / Early game aggression 
('CyrusPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 9),
('CyrusPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 10),
('CyrusPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10),
--('CyrusPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 15),
('CyrusPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 50); -- Roads 1 level more advanced, +2 gold +1 Culture Domestic trade routes

-- UPDATE AiFavoredItems SET Favored = 1 WHERE ListType = 'MinorCivDistricts' AND Item IN ('DISTRICT_AERODROME', 'DISTRICT_ENCAMPMENT'); -- might be able to use to fix def traits 

-- ALEXANDER / MACEDON

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_ALEXANDER', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_ALEXANDER', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_ALEXANDER', 'TRAIT_LEADER_MAD_EXPANSIONIST');

--INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_ALEXANDER', 'TRAIT_LEADER_SCIENCE_MAJOR_CIV'); -- Temp

UPDATE AiLists SET LeaderType = 'TRAIT_LEADER_TO_WORLDS_END' WHERE LeaderType = 'TRAIT_LEADER_CITADEL_CIVILIZATION' AND ListType IN ('AlexanderCivics', 'AlexanderTechs', 'AlexanderWonders');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AlexanderUnits'),

('AlexanderPseudoYields'),
('AlexanderYields'),
('AlexanderDiplomacy'),

('AlexanderDistricts'),

('AlexanderUnitBuilds');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('AlexanderUnits', 'TRAIT_LEADER_TO_WORLDS_END', 'Units'),

('AlexanderYields', 'TRAIT_LEADER_TO_WORLDS_END', 'Yields'),
('AlexanderPseudoYields', 'TRAIT_LEADER_TO_WORLDS_END', 'PseudoYields'),
('AlexanderDiplomacy', 'TRAIT_LEADER_TO_WORLDS_END', 'DiplomaticActions'),

('AlexanderDistricts', 'TRAIT_LEADER_TO_WORLDS_END', 'Districts'),

('AlexanderUnitBuilds',   'TRAIT_LEADER_TO_WORLDS_END', 'UnitPromotionClasses');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AlexanderUnits', 'UNIT_MACEDONIAN_HYPASPIST', 1, 55), -- Macedon (Swordman 38 Strength, +5 When Besieging Districts)
('AlexanderUnits', 'UNIT_MACEDONIAN_HETAIROI', 1, 35), -- Alex Only

('AlexanderYields', 'YIELD_SCIENCE', 1, 125), -- Military Units -- Iron Working, 7
('AlexanderYields', 'YIELD_PRODUCTION', 1, 10), -- Military Units

('AlexanderDistricts', 'DISTRICT_CAMPUS', 1, 0), -- Military Units
('AlexanderDistricts', 'DISTRICT_ENCAMPMENT', 1, 75), -- Military Units

('AlexanderYields', 'YIELD_FAITH', 0, -40),

('AlexanderYields', 'YIELD_RH_MILITARY_PRODUCTION', 1, 800),

('AlexanderYields', 'YIELD_RH_R_GODDESS',		 0, -95),

('AlexanderTechs', 'TECH_MINING', 1, 0), -- Military Units -- Leads to Bronze and then Iron Working

('AlexanderWonders', 'BUILDING_BASILIKOI_PAIDES', 1, 900), 

('AlexanderPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 80), -- eurekas 

('AlexanderPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, -8), -- No War Weariness
('AlexanderPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 0, -90), -- Grievances against this leader decay at twice the usual rate. / likes civs at war 

('AlexanderPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 80), -- eurekas 
('AlexanderPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -10), -- eurekas / better early game units
('AlexanderPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 250), -- More likely to have a wonder / district for boost -- Base 6
('AlexanderPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -20),
('AlexanderPseudoYields', 'PSEUDOYIELD_WONDER', 1, 10), 
('AlexanderPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 20), -- so many early units
('AlexanderPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 5),
('AlexanderPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 		1, 550), -- encampment buildings, special unit / building, gain science equal to 25% of cost, 185, 260
('AlexanderPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL',       1, -15),
('AlexanderPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -15),
--('AlexanderDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 80),
('AlexanderUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, 4); -- for cities



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'AlexanderWonders', 'BUILDING_STATUE_OF_ZEUS', 1, 500 -- Burst of Science
FROM Types WHERE Type = 'BUILDING_STATUE_OF_ZEUS';


/*
		<Row LeaderType="LEADER_ALEXANDER" AgendaType="AGENDA_SHORT_LIFE_GLORY"/> 1 of 2
		
	<AiLists>
		<Row ListType="AlexanderPreferWar" LeaderType="TRAIT_LEADER_TO_WORLDS_END" System="Strategies"/>
		<Row ListType="CyrusPreferBackstabbing" LeaderType="TRAIT_AGENDA_BACKSTABBER" System="DiplomaticActions"/>
		<Row ListType="AlexanderCivics" LeaderType="TRAIT_LEADER_TO_WORLDS_END" System="Civics"/>
		<Row ListType="AlexanderTechs" LeaderType="TRAIT_LEADER_TO_WORLDS_END" System="Technologies"/>
		<Row ListType="AlexanderWonders" LeaderType="TRAIT_LEADER_TO_WORLDS_END" System="Buildings"/>
		<Row ListType="CyrusCivics" LeaderType="TRAIT_LEADER_FALL_BABYLON" System="Civics"/>
		<Row ListType="CyrusTechs" LeaderType="TRAIT_LEADER_FALL_BABYLON" System="Technologies"/>
		<Row ListType="CyrusWonders" LeaderType="TRAIT_LEADER_FALL_BABYLON" System="Buildings"/>
		<Row ListType="ShortLifeDiplomacy" AgendaType="TRAIT_AGENDA_SHORT_LIFE_GLORY" System="DiplomaticActions"/>
	</AiLists>
	<AiFavoredItems>
		<Row ListType="AlexanderPreferWar" Item="VICTORY_STRATEGY_MILITARY_VICTORY" Value="-2"/>
		<Row ListType="CyrusPreferBackstabbing" Item="DIPLOACTION_DECLARE_SURPRISE_WAR" Favored="true"/>
		<Row ListType="CyrusPreferBackstabbing" Item="DIPLOACTION_DENOUNCE" Favored="false"/>
		<Row ListType="AlexanderCivics" Item="CIVIC_MILITARY_TRADITION" Favored="true"/>
		<Row ListType="AlexanderTechs" Item="TECH_BRONZE_WORKING" Favored="true"/>
		<Row ListType="AlexanderTechs" Item="TECH_HORSEBACK_RIDING" Favored="true"/>
		<Row ListType="AlexanderTechs" Item="TECH_IRON_WORKING" Favored="true"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_STONEHENGE" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_HANGING_GARDENS" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_ORACLE" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_GREAT_LIGHTHOUSE" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_COLOSSUS" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_PETRA" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_GREAT_LIBRARY" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_CHICHEN_ITZA" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_MONT_ST_MICHEL" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_APADANA" Favored="false"/>
		<Row ListType="AlexanderWonders" Item="BUILDING_HALICARNASSUS_MAUSOLEUM" Favored="false"/>

		<Row ListType="CyrusCivics" Item="CIVIC_DIPLOMATIC_SERVICE"/>
		<Row ListType="CyrusCivics" Item="CIVIC_POLITICAL_PHILOSOPHY"/>
		<Row ListType="CyrusTechs" Item="TECH_FLIGHT"/>
		<Row ListType="CyrusTechs" Item="TECH_CURRENCY"/>
		<Row ListType="CyrusTechs" Item="TECH_IRON_WORKING"/>
		<Row ListType="CyrusWonders" Item="BUILDING_COLOSSUS"/>
		<Row ListType="CyrusWonders" Item="BUILDING_GREAT_ZIMBABWE"/>
		<Row ListType="ShortLifeDiplomacy" Item="DIPLOACTION_MAKE_PEACE" Favored="false"/>
		
		<Row LeaderType="LEADER_ALEXANDER" TraitType="TRAIT_LEADER_TO_WORLDS_END"/>
		<Row LeaderType="LEADER_ALEXANDER" TraitType="TRAIT_LEADER_UNIT_HETAIROI"/>
		<Row LeaderType="LEADER_ALEXANDER" TraitType="TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE"/>
*/


-- Non Leader Changes

/*
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorBuildings', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 		1, 90000);

INSERT INTO Building_YieldChanges (BuildingType, YieldType, YieldChange) VALUES
('BUILDING_HALICARNASSUS_MAUSOLEUM', 'YIELD_PRODUCTION', 1);
*/

/*
UPDATE Buildings SET PurchaseYield = NULL, OuterDefenseHitPoints = 50, OuterDefenseStrength = 1, Housing = 1
WHERE BuildingType IN ('BUILDING_HALICARNASSUS_MAUSOLEUM');
*/