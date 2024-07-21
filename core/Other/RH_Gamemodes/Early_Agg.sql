
-- Author RomanHoliday
-- RH Early Agg


UPDATE AiFavoredItems SET Value = 400 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENSES';
UPDATE AiFavoredItems SET Value = 400 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENDING_UNITS';
UPDATE AiFavoredItems SET Value = -90 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_CITY_BASE';

UPDATE AiFavoredItems SET Value = 310 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENSES';
UPDATE AiFavoredItems SET Value = 310 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENDING_UNITS';

UPDATE AiFavoredItems SET Value = -80 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_CITY_BASE';

--UPDATE AiFavoredItems SET Value = 28 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENDING_UNITS';

UPDATE AiFavoredItems SET Value = -50 WHERE ListType = 'AggressivePseudoYields' AND Item = 'PSEUDOYIELD_CITY_DEFENSES';


--INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 28);
