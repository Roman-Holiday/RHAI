
-- RH Quick Speed



UPDATE PseudoYields SET DefaultValue =  1.2 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 		def 0.5 (for all gpp) -- pvs 0.5, 1.1
UPDATE PseudoYields SET DefaultValue =  1.1 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ARTIST'; -- 		0.5, 1
UPDATE PseudoYields SET DefaultValue =  1.5 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ENGINEER'; -- 	0.5 -- pvs 0.7, 0.8 AI doesn't focus enough
UPDATE PseudoYields SET DefaultValue =  10 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_GENERAL'; -- 		0.5 -- 0.45, 0.5, 0.55, 0.6, 0.7, 1.05, 2.4, 3.2, 7
UPDATE PseudoYields SET DefaultValue =  1.3 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MERCHANT'; -- 		0.5 -- pvs 0.6, 0.7, 0.85, running to many projects, 0.8, 1.2
UPDATE PseudoYields SET DefaultValue =  0.9 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 		0.5
UPDATE PseudoYields SET DefaultValue =  2.4 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_PROPHET'; -- 		0.5, 0.6, 0.8, 0.85, 1, 4
UPDATE PseudoYields SET DefaultValue =  1.4 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 	0.5, 0.8, 0.9	
UPDATE PseudoYields SET DefaultValue =  1.4 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_WRITER'; -- 		0.5, 0.7

UPDATE PseudoYields SET DefaultValue =  6.0 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std 3.5
UPDATE PseudoYields SET DefaultValue =  1.5 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_COMBAT'; -- std 1.6

UPDATE PseudoYields SET DefaultValue = 11 WHERE PseudoYieldType = 'PSEUDOYIELD_INFLUENCE';

UPDATE AiFavoredItems SET Value = 85 WHERE ListType = 'GreatPersonObsessedGreatPeople'; -- pvs 75


-- Era

UPDATE AiFavoredItems SET Value = 400 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- std 30, pvs 300
UPDATE AiFavoredItems SET Value = 350 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_GENERAL'; -- std 250

UPDATE AiFavoredItems SET Value = 200 WHERE ListType = 'MedievalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- std 20, Player can get them easily, 100
UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'MedievalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_GENERAL'; -- std 75

UPDATE AiFavoredItems SET Value = 240 WHERE ListType = 'RenaissancePseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- std 50, Player can get them easily, 220


-- Sci

UPDATE AiFavoredItems SET Value = 110 WHERE ListType = 'Classical_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- stan 100
UPDATE AiFavoredItems SET Value = 200 WHERE ListType = 'Classical_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; 

UPDATE AiFavoredItems SET Value = 85 WHERE ListType = 'Medieval_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- stan 80
UPDATE AiFavoredItems SET Value = 125 WHERE ListType = 'Medieval_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- stan 90

UPDATE AiFavoredItems SET Value = 125 WHERE ListType = 'ScienceVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- 75
UPDATE AiFavoredItems SET Value = 150 WHERE ListType = 'ScienceVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 150


UPDATE AiFavoredItems SET Value = 235 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 180
UPDATE AiFavoredItems SET Value = 215 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ARTIST'; -- 170
UPDATE AiFavoredItems SET Value = 200 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_WRITER'; -- 155


-- Individual / Agendas

UPDATE AiFavoredItems SET Value = 110 WHERE ListType = 'RHTradePsuedos' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- 60
UPDATE AiFavoredItems SET Value = 80 WHERE ListType = 'RHTradePsuedos' AND Item = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 33

UPDATE AiFavoredItems SET Value = 140 WHERE ListType = 'MoneyGrubberPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- 75
UPDATE AiFavoredItems SET Value = 60 WHERE ListType = 'MoneyGrubberPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 5


-- Settlement

--UPDATE AiFavoredItems SET Value = 7 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_DECAY_TURNS'; -- Test, pvs 9, rh 7
--UPDATE AiFavoredItems SET Value = 5 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_DECAY_AMOUNT'; -- Test, def 3, rh 5

UPDATE AiFavoredItems SET Value = 180 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_CITY_MINIMUM_VALUE'; -- std 150

--UPDATE AiFavoredItems SET Value = 3 WHERE ListType = 'ExpansionistCitySettlement' AND Item = 'SETTLEMENT_DECAY_AMOUNT'; -- Test, pvs 3, rh 3
--UPDATE AiFavoredItems SET Value = -3 WHERE ListType = 'ExpansionistCitySettlement' AND Item = 'SETTLEMENT_DECAY_TURNS'; -- Test, pvs -3


DELETE FROM ProjectCompletionModifiers WHERE ModifierId = 'RH_END_OF_TECH_MOD_NEGATIVE_XXS';




INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AncientSettlement', 'Nearest Friendly City', 0, -1);

UPDATE AiFavoredItems SET Value = 0 WHERE ListType = 'ClassicalSettlement' AND Item = 'Nearest Friendly City'; -- std +1


UPDATE AiOperationTeams SET InitialStrengthAdvantage = -10, OngoingStrengthAdvantage = -10 WHERE TeamName = 'Settle City Team' AND OperationName = 'Settle New City'; 


-- git prompt