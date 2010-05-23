-- [NPC] Eck the Ferocious (loot)
-- Ok, in my last fix for this NPC(loot) I did and error I put all drop on group 1 and trash need to be group 2, this fix solve it.
-- This fix also fix this warning "ERROR: Table 'creature_loot_template' entry 29932 group 1 has total chance > 100% (105.099998)"
-- By Misimouse

-- http://www.wowhead.com/npc=29932#heroic-drops:0+1-15
DELETE FROM `creature_loot_template` WHERE (`entry`=29932);
INSERT INTO `creature_loot_template` VALUES 
(29932, 43228, 100, 1, 0, 2, 4, 1, 57940, 0),
(29932, 47241, 100, 1, 0, 1, 1, 0, 0, 0),
(29932, 43310, 25, 1, 1, 1, 1, 0, 0, 0),
(29932, 43311, 25, 1, 1, 1, 1, 0, 0, 0),
(29932, 43312, 25, 1, 1, 1, 1, 0, 0, 0),
(29932, 43313, 25, 1, 1, 1, 1, 0, 0, 0),
(29932, 33445, 20.6, 1, 2, 1, 1, 0, 0, 0),
(29932, 33447, 10.3, 1, 2, 1, 1, 0, 0, 0),
(29932, 33454, 11.2, 1, 2, 1, 1, 0, 0, 0),
(29932, 33470, 15, 1, 2, 1, 4, 0, 0, 0),
(29932, 43852, 13, 1, 2, 1, 1, 0, 0, 0); 