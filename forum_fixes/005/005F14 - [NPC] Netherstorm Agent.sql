-- http://www.wowhead.com/?npc=22494
-- This NPC are a guard, they should attack to players than attack anothers, also need somo npcflags
-- By misimouse
UPDATE creature_template SET  `rangeattacktime`='44', `npcflag`='33554432' WHERE `entry`=19541;