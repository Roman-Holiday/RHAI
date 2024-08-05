
-- Author ROMANHOLIDAY

-- Science Additional Era


/*
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_Yields'),
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_PseudoYields'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Yields'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_PseudoYields'),
*/

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('Industrial_Science_Districts', 'DISTRICT_ENCAMPMENT', 					0, 0),

('Modern_Science_Yields', 'YIELD_SCIENCE', 1, 10),
('Modern_Science_Yields', 'YIELD_PRODUCTION', 1, 10),
('Modern_Science_Yields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 250),
('Modern_Science_Yields', 'YIELD_RH_PATRONAGE_DOUBLE', 1, 700),

('Modern_Science_Yields', 'YIELD_RH_ESPIONAGE_PACT_BAN', 1, 700),

('Modern_Science_PseudoYields', 'PSEUDOYIELD_HAPPINESS', 	1, 50),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 55), -- pvs 65, too high
('Modern_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 205), -- pvs 95, 125, 160
('Modern_Science_PseudoYields', 'PSEUDOYIELD_SPACE_RACE', 1, 10),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 15),

('Modern_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	1, -80),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 			1, -80),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 				1, 7500),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 	1, -500),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 			1, 1000),

('Modern_Science_Districts', 'DISTRICT_ENCAMPMENT', 					0, 0),
('Modern_Science_Districts', 'DISTRICT_AERODROME', 						1, 0),
('Modern_Science_Districts', 'DISTRICT_INDUSTRIAL_ZONE', 				1, 0),
('Modern_Science_Districts', 'DISTRICT_CAMPUS', 						1, 0),

('Atomic_Science_Yields', 'YIELD_SCIENCE', 1, 10),
('Atomic_Science_Yields', 'YIELD_PRODUCTION', 1, 10),
('Atomic_Science_Yields', 'YIELD_RH_HAPPINESS_BUILDING', 1, 250),
('Atomic_Science_Yields', 'YIELD_RH_PATRONAGE_DOUBLE', 1, 700),

('Atomic_Science_Yields', 'YIELD_RH_ESPIONAGE_PACT_BAN', 1, 700),


-- Todo Info Yields

('Atomic_Science_PseudoYields', 'PSEUDOYIELD_HAPPINESS', 	1, 30),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 115), -- pvs 95, 100, 110, 115, 130
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 425), -- pvs 105, 120, 130, 165, 200, 305, 350
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_SPACE_RACE', 	1, 100),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 25),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -15),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 10),

('Atomic_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	1, -90),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 			1, -90),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_CITY_BASE', 				1, 7500),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 	1, -500),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 			1, 1000),

('Atomic_Science_Districts', 'DISTRICT_ENCAMPMENT', 					0, 0),
('Atomic_Science_Districts', 'DISTRICT_AERODROME', 						1, 0),

('Atomic_Science_Techs', 'TECH_ROCKETRY', 							1, 0),
('Atomic_Science_Techs', 'TECH_SATELLITES', 						1, 0),
('Atomic_Science_Techs', 'TECH_COMBINED_ARMS', 						1, 0),
('Atomic_Science_Techs', 'TECH_NUCLEAR_FISSION', 					1, 0),

('Atomic_Science_Diplo', 'DIPLOACTION_DECLARE_FRIENDSHIP', 			0, 0),
('Atomic_Science_Diplo', 'DIPLOACTION_DEMAND_TRIBUTE', 				1, 0),

('Info_Science_Diplo', 	'DIPLOACTION_DECLARE_FRIENDSHIP', 			0, 0),
('Info_Science_Diplo', 	'DIPLOACTION_DEMAND_TRIBUTE', 				1, 100),

('Info_Science_Techs', 'TECH_ROCKETRY', 							1, 0),
('Info_Science_Techs', 'TECH_SATELLITES', 							1, 0),
('Info_Science_Techs', 'TECH_COMBINED_ARMS', 						1, 0),
('Info_Science_Techs', 'TECH_NUCLEAR_FISSION', 						1, 0),

('Info_Science_Districts', 'DISTRICT_ENCAMPMENT', 					0, 0),

('Info_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	1, -90),
('Info_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 			1, -95),

('Info_Science_PseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 50),
('Info_Science_PseudoYields', 'PSEUDOYIELD_SPACE_RACE', 1, 100),
('Info_Science_PseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, -10), -- Save Aluminium
('Info_Science_PseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 0, -10),
('Info_Science_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -15),

('Info_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 165), -- pvs 70, 80, 120, 130, 150
('Info_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 600); -- Does Campus research grants when supposed to be launching orbital laser -- pvs 75, 85, 150, 200, 210, 230, 330, 650


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('Modern_Science_Savings', 'SAVING_GREAT_PEOPLE', 								 0), 
('Modern_Science_Savings', 'SAVING_SLUSH_FUND', 									-1),
('Modern_Science_Savings', 'SAVING_PLOTS', 											1);
--('Modern_Science_Savings', 'SAVING_UNITS', 								 			2); -- testing 2

-- 1, 3, 3, 4

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('Atomic_Science_Savings', 'SAVING_GREAT_PEOPLE', 								 0), 
('Atomic_Science_Savings', 'SAVING_SLUSH_FUND', 									-1),
('Atomic_Science_Savings', 'SAVING_PLOTS', 											1);
--('Atomic_Science_Savings', 'SAVING_UNITS', 								 			2); -- testing 2

--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('Info_Science_Savings', 'SAVING_GREAT_PEOPLE', 									 0), 
--('Info_Science_Savings', 'SAVING_SLUSH_FUND', 										-1),
--('Info_Science_Savings', 'SAVING_PLOTS', 											1),
--('Info_Science_Savings', 'SAVING_UNITS', 								 			2); -- testing 2

