INSERT INTO TechnologyRandomCosts(TechnologyType, Cost)
SELECT TechnologyType, 10
FROM Technologies
WHERE TechnologyType LIKE '%_RH_%';

INSERT INTO Technologies_XP2(TechnologyType, RandomPrereqs, HiddenUntilPrereqComplete)
SELECT TechnologyType, 1, 1
FROM Technologies
WHERE TechnologyType LIKE '%_RH_%';