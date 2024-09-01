
-- RH Quick Speed



UPDATE PseudoYields SET DefaultValue =  1.2 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 		def 0.5 (for all gpp) -- pvs 0.5, 1.1
UPDATE PseudoYields SET DefaultValue =  1.1 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ARTIST'; -- 		0.5, 1
UPDATE PseudoYields SET DefaultValue =  1.5 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ENGINEER'; -- 	0.5 -- pvs 0.7, 0.8 AI doesn't focus enough
UPDATE PseudoYields SET DefaultValue =  10 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_GENERAL'; -- 		0.5 -- 0.45, 0.5, 0.55, 0.6, 0.7, 1.05, 2.4, 3.2, 7
UPDATE PseudoYields SET DefaultValue =  1.2 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MERCHANT'; -- 		0.5 -- pvs 0.6, 0.7, 0.85, running to many projects, 0.8
UPDATE PseudoYields SET DefaultValue =  0.9 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 		0.5
UPDATE PseudoYields SET DefaultValue =  2.4 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_PROPHET'; -- 		0.5, 0.6, 0.8, 0.85, 1, 4
UPDATE PseudoYields SET DefaultValue =  1.4 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 	0.5, 0.8, 0.9	
UPDATE PseudoYields SET DefaultValue =  1.4 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_WRITER'; -- 		0.5, 0.7


UPDATE PseudoYields SET DefaultValue = 11 WHERE PseudoYieldType = 'PSEUDOYIELD_INFLUENCE';

UPDATE AiFavoredItems SET Value = 80 WHERE ListType = 'GreatPersonObsessedGreatPeople'; -- pvs 75



UPDATE AiFavoredItems SET Value = 110 WHERE ListType = 'Classical_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- stan 100
UPDATE AiFavoredItems SET Value = 200 WHERE ListType = 'Classical_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; 

UPDATE AiFavoredItems SET Value = 85 WHERE ListType = 'Medieval_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- stan 80
UPDATE AiFavoredItems SET Value = 125 WHERE ListType = 'Medieval_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- stan 90



UPDATE AiFavoredItems SET Value = 235 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 180
UPDATE AiFavoredItems SET Value = 215 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ARTIST'; -- 170
UPDATE AiFavoredItems SET Value = 200 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_WRITER'; -- 155



DELETE FROM ProjectCompletionModifiers WHERE ModifierId = 'RH_END_OF_TECH_MOD_NEGATIVE_XXS';
