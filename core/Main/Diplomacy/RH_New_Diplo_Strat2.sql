
-- Author RomanHoliday
-- RH NEW Diplo Strat 2




-- RH Ally Rework


DELETE FROM ModifierArguments WHERE ModifierId ='STANDARD_DIPLOMATIC_ALLY';



INSERT INTO	ModifierArguments	(ModifierId,									Name,		Value) VALUES		
			('STANDARD_DIPLOMATIC_ALLY',					'MaxValue',												25), 
			('STANDARD_DIPLOMATIC_ALLY',					'InitialValue',											5),
			('STANDARD_DIPLOMATIC_ALLY',					'IncrementValue',										1),
			
			('STANDARD_DIPLOMATIC_ALLY',					'IncrementTurns',										3),			
			
			
			('STANDARD_DIPLOMATIC_ALLY',					'ReductionTurns',										2), -- Test
			('STANDARD_DIPLOMATIC_ALLY',					'ReductionValue',										-1),						
			
			
			('STANDARD_DIPLOMATIC_ALLY',					'SimpleModifierDescription',			'LOC_DIPLO_MODIFIER_ALLY');
			
			
			
			
			

UPDATE DiplomaticStateActions SET Worth = 100 WHERE StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_MILITARY'; -- pvs 55
UPDATE DiplomaticStateActions SET Cost 	= -90 WHERE StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_MILITARY';
-- 75, 45

--UPDATE DiplomaticStateActions SET Worth = 75 WHERE StateType = 'DIPLO_STATE_ALLIED' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_MILITARY';
--UPDATE DiplomaticStateActions SET Cost 	= 45 WHERE StateType = 'DIPLO_STATE_ALLIED' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_MILITARY';

UPDATE DiplomaticStateActions SET Cost 	= 100 WHERE StateType = 'DIPLO_STATE_ALLIED' and DiplomaticActionType = 'DIPLOACTION_RENEW_ALLIANCE';
UPDATE DiplomaticStateActions SET Worth = 5 WHERE StateType = 'DIPLO_STATE_ALLIED' and DiplomaticActionType = 'DIPLOACTION_RENEW_ALLIANCE'; -- Test -- Worth="25" Cost="50" TeamOnly="true"/>


UPDATE DiplomaticStateActions SET Worth = 100 WHERE StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_RESEARCH';
UPDATE DiplomaticStateActions SET Cost 	= -70 WHERE StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_RESEARCH';

UPDATE DiplomaticStateActions SET Worth = 100 WHERE StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_ECONOMIC';
UPDATE DiplomaticStateActions SET Cost 	= -70 WHERE StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_ECONOMIC'; -- pvs 15


UPDATE DiplomaticStateActions SET Worth = 100 WHERE StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_RELIGIOUS'; -- pvs 55, 75

UPDATE DiplomaticStateActions SET Cost = 65 WHERE StateType = 'DIPLO_STATE_DECLARED_FRIEND' and DiplomaticActionType = 'DIPLOACTION_ALLIANCE_CULTURAL';





-- Thresehold adjustments

-- Zealot

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_ZEALOT' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value= 9 WHERE ModifierId='AGENDA_BASIL_ZEALOT' AND Name='TopRankingDiploMod'; -- pvs 6
UPDATE ModifierArguments SET Value=-15 WHERE ModifierId='AGENDA_BASIL_ZEALOT' AND Name='BottomRankingDiploMod'; -- pvs -6

UPDATE ModifierArguments SET Value= -10 WHERE ModifierId='AGENDA_LOW_CULTURE_NEW_ROME' AND Name='InitialValue'; -- pvs 6

-- Sejong
UPDATE ModifierArguments SET Value= -10 WHERE ModifierId='AGENDA_MODIFIER_LEADS_PROGRESS_SEJONG' AND Name='InitialValue'; -- pvs 7

UPDATE ModifierArguments SET Value= -7 WHERE ModifierId='AGENDA_DIFFERENT_GOVERNMENT_LINCOLN' AND Name='InitialValue'; -- pvs 6

UPDATE ModifierArguments SET Value= -9 WHERE ModifierId='AGENDA_SAKOKU_TURTLER' AND Name='BottomRankingDiploMod'; -- pvs 6 -- Tokugawa -- Dislikes those who have taken capitals

UPDATE ModifierArguments SET Value= -7 WHERE ModifierId='AGENDA_LOW_LANDPOWER' AND Name='InitialValue'; -- pvs 6 -- Nadar Shar

UPDATE ModifierArguments SET Value= -8 WHERE ModifierId='AGENDA_SAGA_HIGH_ATTACK_CITY_STATES' AND Name='InitialValue'; -- pvs 6 -- Norway Alt


-- China

UPDATE ModifierArguments SET Value= 4 WHERE ModifierId='AGENDA_YINDING_POSITIVE_INCOME' AND Name='InitialValue'; -- pvs 3 -- Yongle

UPDATE ModifierArguments SET Value= -14 WHERE ModifierId='AGENDA_YINDING_NEGATIVE_INCOME' AND Name='InitialValue'; -- pvs -12 -- Negative Income -12


UPDATE ModifierArguments SET Value= 8 WHERE ModifierId='AGENDA_SIHAI_IGNORES_BARBARIAN_CAMPS' AND Name='InitialValue'; -- pvs 6

UPDATE ModifierArguments SET Value= -9 WHERE ModifierId='AGENDA_SIHAI_CLEARS_BARBARIAN_CAMPS' AND Name='InitialValue'; -- pvs -6




-- Base Agendas


UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='AGENDA_IRON_CONFEDERACY_FEW_ALLIANCES' AND Name='IncrementValue';

UPDATE ModifierArguments SET Value=-21 WHERE ModifierId='AGENDA_EXPLOITATION' AND Name='LowScoreThreshold';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_ARCHIPELAGIC_STATE' AND Name='MaxNegativeModifier';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_END_TO_SUFFERING' AND Name='MaxNegativeModifier';

UPDATE ModifierArguments SET Value=-14 WHERE ModifierId='AGENDA_FLOWER_OF_SCOTLAND_WAR_NEIGHBORS' AND Name='MaxValue';

UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='AGENDA_IRON_CONFEDERACY_FEW_ALLIANCES' AND Name='MaxValue';

UPDATE ModifierArguments SET Value=-32 WHERE ModifierId='AGENDA_MAURYA_EMPIRE_NEIGHBORS' AND Name='MaxValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_BACKSTABBER' AND Name='NeverSurpriseWarPenalty';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_SHORT_LIFE_GLORY' AND Name='NotAtWarPenalty';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_MODIFIER_WITH_SHIELD_OR_ON_IT' AND Name='PaidForPeacePenalty';

UPDATE ModifierArguments SET Value=-4 WHERE ModifierId='AGENDA_PERPETUALLY_ON_GUARD_OCCUPATION' AND Name='PenaltyPerOccupiedCity';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_ADJUST_GOVERNMENT_INTOLERANCE' AND Name='SameEraIntoleranceFlatBonus';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HORSE_LORD' AND Name='TopRankingDiploMod';





UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='AGENDA_HIGH_TOURISM' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_LOW_PILLAGE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_SAPA_INCA_HIGH_MOUNTAIN_CITIES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-11 WHERE ModifierId='AGENDA_SICILIAN_WARS_HIGH_COASTAL_CITIES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_MODIFIER_LADY_SIX_SKY_NEIGHBORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MODIFIER_WITH_SHIELD_OR_ON_IT' AND Name='AvoidedWarPenalty';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_HORN_CHEST_LOINS' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_ENVIRONMENT' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MONEY_GRUBBER' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_TURTLER' AND Name='BottomRankingDiploMod';



UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_ANGEVIN_EMPIRE' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-11 WHERE ModifierId='AGENDA_CANADIAN_EXPEDITIONARY' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_KAITIAKITANGA' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_LAWGIVER' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_LORD_OF_MINES' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_RAVEN_BANNER' AND Name='BottomRankingDiploMod';

UPDATE ModifierArguments SET Value=-6 WHERE ModifierId='AGENDA_HORN_CHEST_LOINS' AND Name='CantBuildDiploMod';

UPDATE ModifierArguments SET Value=-6 WHERE ModifierId='AGENDA_SPIRIT_OF_TUCAPEL_LOSING_CITIES' AND Name='CityGainLowerBound';

UPDATE ModifierArguments SET Value=-5 WHERE ModifierId='AGENDA_FLAT_EARTHER' AND Name='DiploModForCircumnavigation';




UPDATE ModifierArguments SET Value=-18 WHERE ModifierId='AGENDA_ALLY_OF_ENKIDU_DENOUNCED_FRIEND' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-15 WHERE ModifierId='AGENDA_BACKSTAB_AVERSE_SURPRISE_WAR' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-17 WHERE ModifierId='AGENDA_CONTINENT_ATTACKED' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HAS_DESIRED_LUXURY' AND Name='InitialValue';



-- Lags Great People

UPDATE ModifierArguments SET Value=-14 WHERE ModifierId='AGENDA_MODIFIER_LEADS_GREAT_PEOPLE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=9 WHERE ModifierId='AGENDA_MODIFIER_LAGS_GREAT_PEOPLE' AND Name='InitialValue';


-- Leads / Lags Progress

UPDATE ModifierArguments SET Value=-11 WHERE ModifierId='AGENDA_MODIFIER_LAGS_PROGRESS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value= 8 WHERE ModifierId='AGENDA_MODIFIER_LEADS_PROGRESS' AND Name='InitialValue'; -- pvs 7



-- Wonders
UPDATE ModifierArguments SET Value=-16 WHERE ModifierId='AGENDA_MODIFIER_LEADS_WONDERS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value= 9 WHERE ModifierId='AGENDA_MODIFIER_LAGS_WONDERS' AND Name='InitialValue'; -- pvs 8




UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MODIFIER_NEVER_AT_WAR' AND Name='InitialValue';


UPDATE ModifierArguments SET Value=-18 WHERE ModifierId='AGENDA_MODIFIER_ENCROACHING_RELIGION' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MODIFIER_DELIAN_COMPETING_MINORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MODIFIER_COMPETING_MINORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_MODIFIER_RELIGION_NOT_RECEIVED' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_MODIFIER_CONQUERING_ALLYING_MINORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-7 WHERE ModifierId='AGENDA_SUN_SETS_NEW_CONTINENT' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_LOW_CULTURE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-6 WHERE ModifierId='AGENDA_MED_ATTACK_CITY_STATES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HIGH_ATTACK_CITY_STATES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_LOW_FAITH' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-7 WHERE ModifierId='AGENDA_IGNORES_BARBARIAN_CAMPS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_HIGH_EXPLORATION' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_LOW_HAPPINESS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_LOW_INDUSTRY' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_LOW_POPULATION' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_LOW_SCIENCE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-10 WHERE ModifierId='AGENDA_LOW_STANDING_ARMY' AND Name='InitialValue'; -- def -6

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_LOW_AIRPOWER' AND Name='InitialValue';




UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_MODIFIER_GREAT_PERSON_ADVOCATE_LEAD' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_MODIFIER_WONDER_ADVOCATE_LEAD' AND Name='InitialValue';


-- Governments
UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_DIFFERENT_GOVERNMENT' AND Name='InitialValue';

UPDATE ModifierArguments SET Value= 7 WHERE ModifierId='AGENDA_SAME_GOVERNMENT' AND Name='InitialValue'; -- pvs 6




UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_SAINT_LOW_FAITH' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_LOW_DISTRICTS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_CHEOMSEONGDAE_LOW_SCIENCE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-5 WHERE ModifierId='AGENDA_FLOWER_OF_SCOTLAND_WAR_NEIGHBORS' AND Name='InitialValue'; -- pvs -4

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_IRON_CONFEDERACY_FEW_ALLIANCES' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-8 WHERE ModifierId='AGENDA_MAURYA_EMPIRE_NEIGHBORS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_NARIKALA_FORTRESS_LOW_WALLS' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_GOSSIP_NEGATIVE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_SYCOPHANT_DARK_AGE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_SYMPATHIZER_GOLDEN_AGE' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-12 WHERE ModifierId='AGENDA_INTOLERANT_ENCROACHING_RELIGION' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HIGH_DIPLOVP' AND Name='InitialValue';

UPDATE ModifierArguments SET Value=-9 WHERE ModifierId='AGENDA_HIGH_FAVOR' AND Name='InitialValue';

