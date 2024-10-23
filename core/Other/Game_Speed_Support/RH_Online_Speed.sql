
-- RH Online Speed


UPDATE PseudoYields SET DefaultValue =  1.9 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 		def 0.5 (for all gpp) -- pvs 0.5, 1.6
UPDATE PseudoYields SET DefaultValue =  1.5 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ARTIST'; -- 		0.5, 1
UPDATE PseudoYields SET DefaultValue =  2.2 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_ENGINEER'; -- 	0.5 -- pvs 0.7, 0.8 AI doesn't focus enough, 2, 2.1
UPDATE PseudoYields SET DefaultValue =  18.5 	WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_GENERAL'; -- 		0.5 -- 0.45, 0.5, 0.55, 0.6, 0.7, 1.05, 2.4, 3.2, 10.5, 12.5, 14.5
UPDATE PseudoYields SET DefaultValue =  1.6 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MERCHANT'; -- 		0.5 -- pvs 0.6, 0.7, 0.85, running to many projects, 0.8, 1.2, 1.3
UPDATE PseudoYields SET DefaultValue =  1.4 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 		0.5, 1
UPDATE PseudoYields SET DefaultValue =  2.5 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_PROPHET'; -- 		0.5, 0.6, 0.8, 0.85, 1, 4
UPDATE PseudoYields SET DefaultValue =  2.1 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 	0.5, 0.8, 0.9, 2	
UPDATE PseudoYields SET DefaultValue =  2.1 WHERE PseudoYieldType = 'PSEUDOYIELD_GPP_WRITER'; -- 		0.5, 0.7, 1.6, 2

UPDATE PseudoYields SET DefaultValue =  8.0 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std 3.5, pvs 4.5, 7
UPDATE PseudoYields SET DefaultValue =  1.4 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_COMBAT'; -- std 1.6
UPDATE PseudoYields SET DefaultValue =  14 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_AIR_COMBAT'; -- std 12


UPDATE PseudoYields SET DefaultValue = 19 WHERE PseudoYieldType = 'PSEUDOYIELD_INFLUENCE'; -- pvs 14
--UPDATE PseudoYields SET DefaultValue = 1.9 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_SETTLER';

UPDATE AiFavoredItems SET Value = 120 WHERE ListType = 'GreatPersonObsessedGreatPeople'; -- pvs 75, 125, 105


-- Era

UPDATE AiFavoredItems SET Value = 5 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_DISTRICT'; -- std -35

UPDATE AiFavoredItems SET Value = 550 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- std 30, pvs 300, 400
UPDATE AiFavoredItems SET Value = 350 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_GENERAL'; -- std 250
UPDATE AiFavoredItems SET Value = 600 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_WRITER'; -- std 15, 300, 500

UPDATE AiFavoredItems SET Value = 5 WHERE ListType   = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_DISTRICT'; -- std -5

UPDATE AiFavoredItems SET Value = 300 WHERE ListType = 'MedievalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- std 50
UPDATE AiFavoredItems SET Value = 750 WHERE ListType = 'MedievalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- std 20, Player can get them easily, 250, 550
UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'MedievalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_GENERAL'; -- std 75
UPDATE AiFavoredItems SET Value = 500 WHERE ListType = 'MedievalPseudoYields' AND Item = 'PSEUDOYIELD_GPP_WRITER'; -- std 50, 100

UPDATE AiFavoredItems SET Value = 650 WHERE ListType = 'RenaissancePseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- std 50, Player can get them easily, 350, 450
UPDATE AiFavoredItems SET Value = 550 WHERE ListType = 'RenaissancePseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- std 20, Player can get them easily, 350




UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'IndustrialPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- std 50
UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'IndustrialPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- std 20, Player can get them easily, 250
UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'IndustrialPseudoYields' AND Item = 'PSEUDOYIELD_GPP_GENERAL'; -- std 75
UPDATE AiFavoredItems SET Value = 100 WHERE ListType = 'IndustrialPseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- std 50


-- Late
UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'ModernPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- 
UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'ModernPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- 
--UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'ModernPseudoYields' AND Item = 'PSEUDOYIELD_GPP_GENERAL'; -- 
UPDATE AiFavoredItems SET Value = 100 WHERE ListType = 'ModernPseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 

UPDATE AiFavoredItems SET Value = 100 WHERE ListType = 'ModernPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ARTIST'; -- 
UPDATE AiFavoredItems SET Value = 100 WHERE ListType = 'ModernPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 


UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'AtomicPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- 
UPDATE AiFavoredItems SET Value = 500 WHERE ListType = 'AtomicPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; --
--UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'AtomicPseudoYields' AND Item = 'PSEUDOYIELD_GPP_GENERAL'; -- 
UPDATE AiFavoredItems SET Value = 100 WHERE ListType = 'AtomicPseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 

UPDATE AiFavoredItems SET Value = 100 WHERE ListType = 'AtomicPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ARTIST'; -- 
UPDATE AiFavoredItems SET Value = 100 WHERE ListType = 'AtomicPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 


-- Individual 


UPDATE AiFavoredItems SET Value = 75 WHERE ListType = 'TokugawaPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- Def 15 + Trade



-------------------------------------------------------------------------------------------------------------------

-- Science
UPDATE AiFavoredItems SET Value = 300 WHERE ListType = 'Classical_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- std 100, 150
UPDATE AiFavoredItems SET Value = 300 WHERE ListType = 'Classical_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- pvs 200

UPDATE AiFavoredItems SET Value = 225 WHERE ListType = 'Medieval_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- std 80, 140, 175
UPDATE AiFavoredItems SET Value = 300 WHERE ListType = 'Medieval_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- std 90, 150, 250


-- Atomic / Info

UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'Modern_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- std 55
UPDATE AiFavoredItems SET Value = 300 WHERE ListType = 'Modern_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- std 205

UPDATE AiFavoredItems SET Value = 750 WHERE ListType = 'Atomic_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- std 425

UPDATE AiFavoredItems SET Value = 750 WHERE ListType = 'Info_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- std 600
UPDATE AiFavoredItems SET Value = 300 WHERE ListType = 'Info_Science_PseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- std 165



--------------------------

UPDATE AiFavoredItems SET Value = 845 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MUSICIAN'; -- 180, 245
UPDATE AiFavoredItems SET Value = 640 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ARTIST'; -- 170, 240
UPDATE AiFavoredItems SET Value = 470 WHERE ListType = 'CultureVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_WRITER'; -- 155, 205, 250

UPDATE AiFavoredItems SET Value = 120 WHERE ListType = 'ScienceVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ENGINEER'; -- 75
UPDATE AiFavoredItems SET Value = 250 WHERE ListType = 'ScienceVictoryPseudoYields' AND Item = 'PSEUDOYIELD_GPP_SCIENTIST'; -- 150, 200


-- Individual / Agendas

UPDATE AiFavoredItems SET Value = 150 WHERE ListType = 'RHTradePsuedos' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- 60
UPDATE AiFavoredItems SET Value = 130 WHERE ListType = 'RHTradePsuedos' AND Item = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 33

UPDATE AiFavoredItems SET Value = 220 WHERE ListType = 'MoneyGrubberPseudoYields' AND Item = 'PSEUDOYIELD_GPP_MERCHANT'; -- 75
UPDATE AiFavoredItems SET Value = 80 WHERE ListType = 'MoneyGrubberPseudoYields' AND Item = 'PSEUDOYIELD_GPP_ADMIRAL'; -- 5


-------------------------------------------------------------------------------------------------------------------

-- Settlement


UPDATE AiFavoredItems SET Value = 6 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_DECAY_TURNS'; -- Test, pvs 9, std 7 -- pvs 5

UPDATE AiFavoredItems SET Value = 200 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_CITY_MINIMUM_VALUE'; -- std 150


--UPDATE AiFavoredItems SET Value = 6 WHERE ListType = 'DefaultCitySettlement' AND Item = 'SETTLEMENT_DECAY_AMOUNT'; -- Test, def 3, std 5 -- pvs 7

--UPDATE AiFavoredItems SET Value = 4 WHERE ListType = 'ExpansionistCitySettlement' AND Item = 'SETTLEMENT_DECAY_AMOUNT'; -- Test, pvs 3, std 3
--UPDATE AiFavoredItems SET Value = -3 WHERE ListType = 'ExpansionistCitySettlement' AND Item = 'SETTLEMENT_DECAY_TURNS'; -- Test, pvs -3


DELETE FROM ProjectCompletionModifiers WHERE ModifierId = 'RH_END_OF_TECH_MOD_NEGATIVE_XXS';



--INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('AncientSettlement', 'Nearest Friendly City', 0, -1); -- Now an additonal -1 by def

UPDATE AiFavoredItems SET Value = -1 WHERE ListType = 'ClassicalSettlement' AND Item = 'Nearest Friendly City'; -- std +1

UPDATE AiFavoredItems SET Value = -9 WHERE ListType = 'StandardSettlePlot' AND TooltipString = 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY' AND Item = 'Nearest Friendly City'; -- std -8


UPDATE AiOperationTeams SET InitialStrengthAdvantage = -15, OngoingStrengthAdvantage = -15 WHERE TeamName = 'Settle City Team' AND OperationName = 'Settle New City'; 


-------------------------------------------------------------------------------------------------------------------

-- Naval

UPDATE AiFavoredItems SET Value = 5 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_COMBAT'; -- std +30

UPDATE AiFavoredItems SET Value = 20 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std -21, pvs -12
UPDATE AiFavoredItems SET Value = 30 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std -2, pvs 10
UPDATE AiFavoredItems SET Value = 120 WHERE ListType = 'MedievalPseudoYields' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std +80
UPDATE AiFavoredItems SET Value = 105 WHERE ListType = 'RenaissancePseudoYields' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std +95

UPDATE AiFavoredItems SET Value = 185 WHERE ListType = 'NavalUnitPreferences' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- std 140, 160

UPDATE AiFavoredItems SET Value = 9 WHERE ListType = 'NavalSettlementPreferences' AND Item = 'Specific Resource' AND StringVal ='RESOURCE_COAL'; -- std 5
UPDATE AiFavoredItems SET Value = 8 WHERE ListType = 'NavalSettlementPreferences' AND Item = 'Specific Resource' AND StringVal ='RESOURCE_OIL'; -- std 5
UPDATE AiFavoredItems SET Value = 9 WHERE ListType = 'NavalSettlementPreferences' AND Item = 'Specific Resource' AND StringVal ='RESOURCE_NITER'; -- std 5, Frigates use 20 upfront 


-------------------------------------------------------------------------------------------------------------------

-- Wonder


UPDATE ModifierArguments
SET Value = 200
WHERE ModifierId = 'RH_MH_EXT' AND Name = 'Amount'; -- std 75



-------------------------------------------------------------------------------------------------------------------

-- Great People Priority


INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers  (GreatPersonIndividualType, ModifierId, AttachmentTargetType)  VALUES	

		('GREAT_PERSON_INDIVIDUAL_ZHANG_QIAN', 		 		 'RH_END_OF_TECH_MOD_MML', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'), -- Increases Trade Route capacity by 1. Foreign Trade Routes to this city provide +2 Gold to both cities.


-- Amenity Merchant General Purpose

		('GREAT_PERSON_INDIVIDUAL_ESTEE_LAUDER', 		 		 'RH_END_OF_TECH_MOD_MML', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),  -- 2 Perfume -- +6 Ameneties -- value 200
		
		('GREAT_PERSON_INDIVIDUAL_LEVI_STRAUSS', 		 		 'RH_END_OF_TECH_MOD_MML', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),  -- 2 Jeans -- +4 Ameneties		
		
		('GREAT_PERSON_INDIVIDUAL_HELENA_RUBINSTEIN', 		 	 'RH_END_OF_TECH_MOD_M', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'),  -- 2 Cosmetics -- +4 Ameneties			
				
-- Visibility
		('GREAT_PERSON_INDIVIDUAL_MARY_KATHERINE_GODDARD', 		 'RH_END_OF_TECH_MOD_MML', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'), -- 1 Diplomatic Visibility
		

-- Admiral
		('GREAT_PERSON_INDIVIDUAL_GRACE_HOPPER', 		 		 'RH_END_OF_TECH_MOD_MML', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'), -- 2 Free Technologies		
		
-- Engineer

		('GREAT_PERSON_INDIVIDUAL_LEONARDO_DA_VINCI', 		 	  'RH_END_OF_TECH_MOD_L', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'); -- 800


INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, ModifierId, AttachmentTargetType)
SELECT 'GREAT_PERSON_INDIVIDUAL_MATTHEW_PERRY', 'RH_END_OF_TECH_MOD_MML', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_PLAYER'
WHERE EXISTS (SELECT * FROM GreatPersonIndividuals WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_MATTHEW_PERRY'); -- Full envoys in city state, extra for online


-- Early Engineers

INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers  (GreatPersonIndividualType, ModifierId, AttachmentTargetType)  VALUES	
		('GREAT_PERSON_INDIVIDUAL_ISIDORE_OF_MILETUS', 		  'RH_END_OF_TECH_MOD_M', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_WONDER_IN_TILE'); -- Grants 215 Production towards wonder construction at standard speed. (2 charges)

INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers  (GreatPersonIndividualType, ModifierId, AttachmentTargetType)  VALUES	
		('GREAT_PERSON_INDIVIDUAL_IMHOTEP', 		 		 'RH_END_OF_TECH_MOD_L', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_WONDER_IN_TILE'); -- pvs RH_END_OF_TECH_MOD_MML


--INSERT OR IGNORE INTO GreatPersonIndividualActionModifiers  (GreatPersonIndividualType, ModifierId, AttachmentTargetType)  VALUES	
--		('GREAT_PERSON_INDIVIDUAL_FILIPPO_BRUNELLESCHI', 		  'RH_END_OF_TECH_MOD_M', 'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_WONDER_IN_TILE'); -- Grants 315 Production towards wonder construction. Ren Era



-- 		('RH_END_OF_TECH_MOD_MML',		'YieldType', 		'YIELD_RH_END_OF_TECH'),
--		('RH_END_OF_TECH_MOD_MML',							'Amount'   , 550),		