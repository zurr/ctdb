-- fix for quest Reclamation http://www.wowhead.com/?quest=12546
-- NPC The Etymidian, http://www.wowhead.com/?npc=28222 must be a vehicle and have spells.
-- By gcanoca
update `creature_template` set `IconName`='vehicleCursor', `VehicleId`=111, `spell1`=50978,  `spell2`= 50980, `spell3`= 50983, `spell4`= 50985 where `entry`=28222; 