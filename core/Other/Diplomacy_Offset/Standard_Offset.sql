

UPDATE ModifierArguments SET Value = 11 WHERE ModifierId = 'STANDARD_DIPLOMACY_RANDOM' AND Name = 'ReductionTurns'; 


UPDATE ModifierArguments SET Value = -11 WHERE ModifierId = 'STANDARD_DIPLOMACY_RANDOM' AND Name = 'DifficultyOffset'; 

UPDATE ModifierArguments SET Extra = -1 WHERE ModifierId = 'STANDARD_DIPLOMACY_RANDOM' AND Name = 'DifficultyOffset'; 



-- Deity 15, Deity++ 17



-- Test
--UPDATE ModifierArguments SET Type='LinearScaleFromDefaultHandicap' WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='TradeValuePerModifierPoint'; -- def 10

UPDATE ModifierArguments SET Value=35 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='TradeValuePerModifierPoint'; -- def 10, at 40 Maxs out at +2

--UPDATE ModifierArguments SET Extra=9 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='TradeValuePerModifierPoint'; -- pvs 10

-- Total of 79 on Deity++ Difficulty (or Insane)

UPDATE ModifierArguments SET Value=14 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='MaxValue'; -- def 20


UPDATE ModifierArguments SET Value=1 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='ReductionValue'; -- def 1

UPDATE ModifierArguments SET Value=2 WHERE ModifierId='STANDARD_DIPLOMATIC_ONE_SIDED_TRADES' AND Name='ReductionTurns'; -- def 2

