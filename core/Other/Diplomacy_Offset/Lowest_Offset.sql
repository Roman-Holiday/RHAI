

UPDATE ModifierArguments SET Value = 12 WHERE ModifierId = 'STANDARD_DIPLOMACY_RANDOM' AND Name = 'ReductionTurns'; 


UPDATE ModifierArguments SET Value = -1 WHERE ModifierId = 'STANDARD_DIPLOMACY_RANDOM' AND Name = 'DifficultyOffset'; 

UPDATE ModifierArguments SET Extra = -1 WHERE ModifierId = 'STANDARD_DIPLOMACY_RANDOM' AND Name = 'DifficultyOffset'; 


UPDATE PseudoYields SET DefaultValue = 0.27 WHERE PseudoYieldType = 'PSEUDOYIELD_DIPLOMATIC_BONUS';

--UPDATE PseudoYields SET DefaultValue = 0.95 WHERE PseudoYieldType = 'PSEUDOYIELD_UNIT_COMBAT';
UPDATE PseudoYields SET DefaultValue = 0.98 WHERE PseudoYieldType = 'PSEUDOYIELD_STANDING_ARMY_NUMBER';



UPDATE ModifierArguments SET Value=20 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='TradeValuePerModifierPoint'; -- def 10, at 40 Maxs out at +2


UPDATE ModifierArguments SET Value=18 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='MaxValue'; -- def 20


UPDATE ModifierArguments SET Value=1 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='ReductionValue'; -- def 1
UPDATE ModifierArguments SET Value=3 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='ReductionTurns'; -- def 2
