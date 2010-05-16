-- [NPC] Moorabi <High Prophet of Mam'toth> (loot)  
-- Ok, in my last fix for this NPC(loot) I did and error I out all drop on group 1 and trash need to be group 2, this fix solve it.
-- Also I fix this error cos I did min 3 max 1 "ERROR: Table 'creature_loot_template' entry 29305 item 33470: max count (1) less that min count (3) - skipped"
-- By Misimouse

-- NORMAL
-- http://www.wowhead.com/npc=29305#normal-drops:0+1-15
-- Fix trasth items than need to be group 2 and min count fix
DELETE FROM `creature_loot_template` WHERE (`entry`=29305);
INSERT INTO `creature_loot_template` VALUES 
(29305, 43228, 100, 1, 0, 1, 1, 1, 57940, 0),
(29305, 35587, 32, 1, 1, 1, 1, 0, 0, 0),
(29305, 35588, 31, 1, 1, 1, 1, 0, 0, 0),
(29305, 35589, 30, 1, 1, 1, 1, 0, 0, 0),
(29305, 33425, 12.4, 1, 2, 1, 1, 0, 0, 0),
(29305, 33445, 16.7, 1, 2, 1, 1, 0, 0, 0),
(29305, 33447, 12.5, 1, 2, 1, 1, 0, 0, 0),
(29305, 33448, 4.3, 1, 2, 1, 1, 0, 0, 0),
(29305, 33454, 5.6, 1, 2, 1, 1, 0, 0, 0),
(29305, 33470, 13, 1, 2, 1, 3, 0, 0, 0),
(29305, 43852, 8, 1, 2, 1, 1, 0, 0, 0); 

-- HERO
-- http://www.wowhead.com/npc=29305#heroic-drops:0+1-15
DELETE FROM `creature_loot_template` WHERE (`entry`=30530);
INSERT INTO `creature_loot_template` VALUES 
(30530, 33425, 10.4, 1, 2, 1, 1, 0, 0, 0),
(30530, 33445, 10.7, 1, 2, 1, 1, 0, 0, 0),
(30530, 33447, 10.5, 1, 2, 1, 1, 0, 0, 0),
(30530, 33448, 10.3, 1, 2, 1, 1, 0, 0, 0),
(30530, 33454, 11.6, 1, 2, 1, 1, 0, 0, 0),
(30530, 33470, 17, 1, 2, 1, 4, 0, 0, 0),
(30530, 34052, 0.2, 1, 1, 1, 1, 0, 0, 0),
(30530, 37630, 23, 1, 1, 1, 1, 0, 0, 0),
(30530, 37631, 23, 1, 1, 1, 1, 0, 0, 0),
(30530, 37632, 23, 1, 1, 1, 1, 0, 0, 0),
(30530, 37633, 23, 1, 1, 1, 1, 0, 0, 0),
(30530, 43228, 100, 1, 0, 2, 4, 1, 57940, 0),
(30530, 43852, 13, 1, 2, 1, 4, 0, 0, 0),
(30530, 47241, 100, 1, 0, 1, 1, 0, 0, 0); 