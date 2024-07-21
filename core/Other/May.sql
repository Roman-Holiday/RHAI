
-- AUTHOR: ROMANHOLIDAY

-- Nothing wrong with a little bit of Mayhem ;)


/*
"There's an AI system in the game, it's actually been in there since the expansions when we first introduced
 it...it's called a 'Mayhem Level,'" says Shirk. "It's actually a super interesting mechanic that Ed came up with...

/*

		<Replace Name="MAYHEM_BUILDING_PILLAGED" Value="2.0" />
		<Replace Name="MAYHEM_CAPTURE_CIVILIAN" Value="1" />
		<Replace Name="MAYHEM_CITY_DEATH" Value="3.0" />
		<Replace Name="MAYHEM_CITY_DEATH_WITH_BARBARIANS" Value="2.0" />		
		<Replace Name="MAYHEM_DECLARATION_OF_WAR" Value="2" />		
		<Replace Name="MAYHEM_DENOUNCEMENT" Value="1" />		
		<Replace Name="MAYHEM_DISTRICT_DEATH" Value="1.0" />		
		<Replace Name="MAYHEM_DISTRICT_DEATH_WITH_BARBARIANS" Value="0.5" />		
		<Replace Name="MAYHEM_DISTRICT_PILLAGED" Value="1.5" />		
		<Replace Name="MAYHEM_IMPROVEMENT_PILLAGED" Value="1.0" />		
		<Replace Name="MAYHEM_NUCLEAR_LAUNCH" Value="5.0" />		
		<Replace Name="MAYHEM_PEACE" Value="-1" />		
		<Replace Name="MAYHEM_PLAYER_DESTROYED" Value="3.0" />	
		<Replace Name="MAYHEM_UNIT_COMBAT" Value="1.0" />		
		<Replace Name="MAYHEM_UNIT_COMBAT_WITH_BARBARIANS" Value="0.5" />		
		<Replace Name="MAYHEM_UNIT_DEATH" Value="1.0" />		
		<Replace Name="MAYHEM_UNIT_DEATH_WITH_BARBARIANS" Value="0.5" />
*/

UPDATE GlobalParameters SET Value='3' WHERE Name='MAYHEM_NUCLEAR_LAUNCH'; -- Def 5 (doesn't inc dst) -- pvs 4
--UPDATE GlobalParameters SET Value='3.5' WHERE Name='MAYHEM_CITY_DEATH'; -- def 3
UPDATE GlobalParameters SET Value='4' WHERE Name='MAYHEM_PLAYER_DESTROYED'; -- Def 3
UPDATE GlobalParameters SET Value='1' WHERE Name='MAYHEM_BUILDING_PILLAGED'; -- Def 2, pvs 1.5
UPDATE GlobalParameters SET Value='1' WHERE Name='MAYHEM_DISTRICT_PILLAGED'; -- Def 1.5
UPDATE GlobalParameters SET Value='0.5' WHERE Name='MAYHEM_IMPROVEMENT_PILLAGED'; -- Def 1
UPDATE GlobalParameters SET Value='0.5' WHERE Name='MAYHEM_DENOUNCEMENT'; -- Def 1

