
-- AUTHOR: ROMANHOLIDAY

-- Ops 3

UPDATE AiOperationDefs SET Priority = '4' WHERE OperationName = 'Nuclear Assault';

UPDATE AiOperationTeams SET OngoingStrengthAdvantage = '-9000' WHERE TeamName = 'Nuclear Attack' AND OperationName = 'Nuclear Assault'; -- def '0' -- Check constraint failed? -- 99 over -900 test
UPDATE AiOperationTeams SET InitialStrengthAdvantage = '-9000' WHERE TeamName = 'Nuclear Attack' AND OperationName = 'Nuclear Assault';  -- testing -900 instead of -9 def -1
--UPDATE AiFavoredItems SET Value = '3' WHERE ListType = 'BaseOperationsLimits' AND Item = 'OP_NUCLEAR'; -- -- pvs 4, testing 1

-- Investigate 

UPDATE AiOperationTeams SET OngoingStrengthAdvantage = '-5' WHERE TeamName = 'Aid Ally Attack Force' AND OperationName = 'Aid Ally'; -- def 0, pvs -2
UPDATE AiOperationTeams SET InitialStrengthAdvantage = '-8' WHERE TeamName = 'Aid Ally Attack Force' AND OperationName = 'Aid Ally';  -- def -2, pvs -5


-- For Reference <Row TeamName="Free Cities Assault Force" OperationName="Free Cities Raid" InitialStrengthAdvantage="-40" OngoingStrengthAdvantage="0"/>

--UPDATE WMDs SET FalloutDuration = 50;
--UPDATE AiOperationDefs SET Priority = '9', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '-1', MinOddsOfSuccess = '0', MustHaveUnits = '1' WHERE OperationName = 'Nuclear Assault';

--     <Row OperationName="mine attack city" TargetType="TARGET_ENEMY_COMBAT_DISTRICT" TargetParameter="1" EnemyType="WAR" OperationType="ATTACK_BARBARIANS" BehaviorTree="mine city assault2" SelfStart="True" Priority="1" MaxTargetDistInRegion="-1" MaxTargetDistInArea="30" MaxTargetDistInWorld="0" MinOddsOfSuccess="0.6" MustHaveUnits="7" />

-- text -- -- -- -- 2 --

