-- http://www.wowhead.com/?npc=22494
-- This NPC are a guard, they should attack to players than attack anothers, also need some npcflags
-- By misimouse
UPDATE creature_template SET `faction_A`='1857', `faction_H`='1857', `npcflag`='33554432' WHERE `entry`=22494; 