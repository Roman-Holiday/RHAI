
-- AMANITORE / NUBIA

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_AMANITORE', 'TRAIT_LEADER_DEFENSIVE');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AmanitoreYields'),
('AmanitoreImprovements'),
('AmanitorePseudoYields'),
('AmanitoreUnits');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('AmanitoreYields',       'TRAIT_LEADER_KANDAKE_OF_MEROE', 'Yields'),
('AmanitoreImprovements',       'TRAIT_LEADER_KANDAKE_OF_MEROE', 'Improvements'),
('AmanitorePseudoYields', 'TRAIT_LEADER_KANDAKE_OF_MEROE', 'PseudoYields'),
('AmanitoreUnits',        'TRAIT_LEADER_KANDAKE_OF_MEROE', 'Units');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AmanitoreUnits', 'UNIT_NUBIAN_PITATI', 1, 20),

('AmanitoreYields', 'YIELD_FOOD', 1, 10),
('AmanitoreYields', 'YIELD_FAITH', 1, 5),
('AmanitoreYields', 'YIELD_GOLD', 1, 6),
('AmanitoreYields', 'YIELD_SCIENCE', 1, 5), 

('AmanitoreTechs', 'TECH_ANIMAL_HUSBANDRY', 1, 100), -- Archery
('AmanitoreTechs', 'TECH_MINING', 1, 0),
('AmanitoreTechs', 'TECH_MATHEMATICS', 1, 0), -- Petra

('AmanitoreTechs', 'TECH_CURRENCY', 0, 0), -- Focus Archery
('AmanitoreTechs', 'TECH_SHIPBUILDING', 0, 0), -- Focus Archery
('AmanitoreTechs', 'TECH_CONSTRUCTION', 0, 0), -- Focus Archery
('AmanitoreTechs', 'TECH_ENGINEERING', 0, 0), -- Focus Archery

('AmanitorePseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 20), -- 20% / 40% production (agenda is for maximum number of districts)
('AmanitorePseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 10), -- archers
('AmanitorePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 10), -- archers (production and combat experience bonus)
('AmanitorePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5), -- archers
('AmanitorePseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 10),
('AmanitorePseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 20), -- pyramid
('AmanitorePseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 10), 
('AmanitorePseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 10), 
('AmanitoreWonders', 'BUILDING_JEBEL_BARKAL', 1, 15); 

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'AmanitoreWonders', 'BUILDING_KOTOKU_IN', 1, 0
FROM Types WHERE Type = 'BUILDING_KOTOKU_IN';

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AmanitoreWonders', 'BUILDING_PETRA', 1, 75); -- Already exists but with value of 0
--('AmanitoreWonders', 'BUILDING_RUHR_VALLEY', 1, 0); -- Already exists

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AmanitoreImprovements', 'IMPROVEMENT_PYRAMID', 1, 50),
('AmanitoreImprovements', 'IMPROVEMENT_MINE', 1, 50);

-- 		<Row ListType="AmanitoreUnitBuilds" Item="PROMOTION_CLASS_RANGED" Value="1"/> lol

UPDATE AiFavoredItems SET Value = 22 WHERE ListType = 'AmanitoreUnitBuilds' AND Item = 'PROMOTION_CLASS_RANGED'; -- pvs 20, 25 was too high, not enough melee units

--INSERT INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
	--	('LEADER_AMANITORE',				'AGENDA_DARWINIST',						20);

-- Todo Strategic Resource / Mine Settle


/*
Civ Ability:
+30% Production toward Ranged units. 
Ranged units gain +50% combat experience.
 +1 Production for Mines over strategic resources,
 and +2 Gold for Mines over bonus and luxury resources.
*/

/*
		<Row ListType="AmanitoreCivics" Item="CIVIC_CRAFTSMANSHIP" Favored="true"/>
		<Row ListType="AmanitoreCivics" Item="CIVIC_FEUDALISM" Favored="true"/>
		<Row ListType="AmanitoreTechs" Item="TECH_ARCHERY" Favored="true"/>
		<Row ListType="AmanitoreTechs" Item="TECH_MASONRY" Favored="true"/>
		<Row ListType="AmanitoreTechs" Item="TECH_BALLISTICS" Favored="true"/>
		<Row ListType="AmanitoreTechs" Item="TECH_INDUSTRIALIZATION" Favored="true"/>
		<Row ListType="AmanitoreTechs" Item="TECH_APPRENTICESHIP" Favored="true"/>
*/


-- All Civs

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('STRATEGY_CANNOT_USE_RELIGION_WONDERS', 'BUILDING_JEBEL_BARKAL', 0, -85);

