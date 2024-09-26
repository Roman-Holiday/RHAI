
-- RH Online Speed


UPDATE PseudoYields SET DefaultValue =  1.9 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 		def 0.5 (for all gpp) -- pvs 0.5, 1.6
UPDATE PseudoYields SET DefaultValue =  1.15 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ARTIST'; -- 		0.5, 1
UPDATE PseudoYields SET DefaultValue =  2.1 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ENGINEER'; -- 	0.5 -- pvs 0.7, 0.8 AI doesn't focus enough, 2
UPDATE PseudoYields SET DefaultValue =  12.5 	WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_GENERAL'; -- 		0.5 -- 0.45, 0.5, 0.55, 0.6, 0.7, 1.05, 2.4, 3.2, 10.5
UPDATE PseudoYields SET DefaultValue =  1.3 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MERCHANT'; -- 		0.5 -- pvs 0.6, 0.7, 0.85, running to many projects, 0.8, 1.2
UPDATE PseudoYields SET DefaultValue =  1.0 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 		0.5
UPDATE PseudoYields SET DefaultValue =  2.5 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_PROPHET'; -- 		0.5, 0.6, 0.8, 0.85, 1, 4
UPDATE PseudoYields SET DefaultValue =  2.1 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 	0.5, 0.8, 0.9, 2	
UPDATE PseudoYields SET DefaultValue =  1.6 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_WRITER'; -- 		0.5, 0.7

UPDATE PseudoYields SET DefaultValue =  4.5 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std 3.5
UPDATE PseudoYields SET DefaultValue =  1.4 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_COMBAT'; -- std 1.6

UPDATE PseudoYields SET DefaultValue = 18 WHERE PseudoYieldType = 'PSEUDOYIELD_INFLUENCE'; -- pvs 14
--UPDATE PseudoYields SET DefaultValue = 1.9 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_SETTLER';

UPDATE AiFavoredItems SET Value = 105 WHERE ListType = 'GreatPersonObsessedGreatPeople'; -- pvs 75, 125

UPDATE AiFavoredItems SET Value = 320 WHERE ListType = 'RenaissancePseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- std 50, Player can get them easily

UPDATE AiFavoredItems SET Value = 175 WHERE ListType = 'MedievalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- std 20, Player can get them easily



UPDATE AiFavoredItems SET Value = 300 WHERE ListType = 'Classical_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- std 100, 150
UPDATE AiFavoredItems SET Value = 300 WHERE ListType = 'Classical_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- pvs 200

UPDATE AiFavoredItems SET Value = 225 WHERE ListType = 'Medieval_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- std 80, 140, 175
UPDATE AiFavoredItems SET Value = 300 WHERE ListType = 'Medieval_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- std 90, 150, 250


UPDATE AiFavoredItems SET Value = 245 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 180
UPDATE AiFavoredItems SET Value = 240 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ARTIST'; -- 170
UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_WRITER'; -- 155, 205

UPDATE AiFavoredItems SET Value = 120 WHERE ListType = 'ScienceVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- 75
UPDATE AiFavoredItems SET Value = 200 WHERE ListType = 'ScienceVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 150


-- Individual / Agendas

UPDATE AiFavoredItems SET Value = 150 WHERE ListType = 'RHTradePsuedos' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- 60
UPDATE AiFavoredItems SET Value = 130 WHERE ListType = 'RHTradePsuedos' AND Item = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 33

UPDATE AiFavoredItems SET Value = 220 WHERE ListType = 'MoneyGrubberPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- 75
UPDATE AiFavoredItems SET Value = 80 WHERE ListType = 'MoneyGrubberPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 5


-- Settlement


UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_DECAY_TURNS'; -- Test, pvs 9, std 7
UPDATE AiFavoredItems SET Value = 7 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_DECAY_AMOUNT'; -- Test, def 3, std 5

UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'ExpansionistCitySettlement' AND Item = 'SETTLEMENT_DECAY_AMOUNT'; -- Test, pvs 3, std 3
UPDATE AiFavoredItems SET Value = -3 WHERE ListType = 'ExpansionistCitySettlement' AND Item = 'SETTLEMENT_DECAY_TURNS'; -- Test, pvs -3


DELETE FROM ProjectCompletionModifiers WHERE ModifierId = 'RH_END_OF_TECH_MOD_NEGATIVE_XXS';



INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AncientSettlement', 'Nearest Friendly City', 0, -1);

UPDATE AiFavoredItems SET Value = -1 WHERE ListType = 'ClassicalSettlement' AND Item = 'Nearest Friendly City'; -- std +1


UPDATE AiOperationTeams SET InitialStrengthAdvantage = -15, OngoingStrengthAdvantage = -15 WHERE TeamName = 'Settle City Team' AND OperationName = 'Settle New City'; 


-- Naval


UPDATE AiFavoredItems SET Value = 5 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_COMBAT'; -- std +30


UPDATE AiFavoredItems SET Value = -12 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std -21

UPDATE AiFavoredItems SET Value = 10 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std -2
UPDATE AiFavoredItems SET Value = 120 WHERE ListType = 'MedievalPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std +80
UPDATE AiFavoredItems SET Value = 100 WHERE ListType = 'RenaissancePseudoYields' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std +95


