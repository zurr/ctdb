-- [7712] Ingvar the Plunderer loot
-- Due to the updated script, the loot shall be switched from Ingvar Human to Ingvar Undead. From TDB.
-- By Voltio and Redone By Misimouse

-- First NORMAL MODE looit and loot
-- http://www.wowhead.com/npc=23954 (NORMA MODE)
-- This NPC die on the first phase and dont need to have loot only you kill hem (and loot) on the second phase whe he is a undead
UPDATE `creature_template` SET `lootid`='0' WHERE `entry`='23954';
-- We delete this loot because is not using for any mob.
DELETE FROM `creature_loot_template` WHERE (`entry`=23954);
-- http://www.wowhead.com/npc=23980
-- This is the NPC that we kill on final phase and need to have loot
UPDATE `creature_template` SET `lootid`='23980' WHERE `entry`='23980'; 

-- Drop for normal mode.
-- Redone de loot with the new loot entry and adding some miss drops & add some trash drops in group 2
-- NORMAL MODE
DELETE FROM `creature_loot_template` WHERE (`entry`=23980);
INSERT INTO `creature_loot_template` VALUES 
(23980, 33330, -100, 1, 0, 1, 1, 0, 0, 0),
(23980, 43228, 100, 1, 0, 1, 1, 1, 57940, 0),
(23980, 35576, 31.3, 1, 1, 1, 1, 0, 0, 0),
(23980, 35577, 31.3, 1, 1, 1, 1, 0, 0, 0),
(23980, 35578, 32.3, 1, 1, 1, 1, 0, 0, 0),
(23980, 22829, 10.4, 1, 2, 1, 4, 0, 0, 0),
(23980, 33373, 12.3, 1, 2, 1, 1, 0, 0, 0),
(23980, 33376, 5.3, 1, 2, 1, 1, 0, 0, 0),
(23980, 33378, 8.3, 1, 2, 1, 1, 0, 0, 0),
(23980, 33440, 7.3, 1, 2, 1, 1, 0, 0, 0),
(23980, 33444, 4.7, 1, 2, 1, 4, 0, 0, 0),
(23980, 33454, 6.5, 1, 2, 1, 1, 0, 0, 0),
(23980, 33470, 15, 1, 2, 1, 4, 0, 0, 0),
(23980, 35979, 9.3, 1, 2, 1, 1, 0, 0, 0),
(23980, 36520, 6.3, 1, 2, 1, 1, 0, 0, 0),
(23980, 43622, 11.3, 1, 2, 1, 1, 0, 0, 0); 

-- Lootid for Hero mode
-- Ok, this is the same NPC human form in hero ID, this NPC cant have any loot because we can kill it.
UPDATE `creature_template` SET `lootid`='0' WHERE `entry`='31673';
-- Deleting the drop on loot template cos is not using by any NPC
DELETE FROM `creature_loot_template` WHERE (`entry`=31673);
-- This is the NPC that we kill on final phase and need to have loot
UPDATE `creature_template` SET `lootid`='31674' WHERE `entry`='31674'; 

-- Redone HERO loot
-- Redone de loot with the new loot entry and adding some miss drops & add some trash drops in group 2
-- HERO MODE
DELETE FROM `creature_loot_template` WHERE (`entry`=31674);
INSERT INTO `creature_loot_template` VALUES 
(31674, 33330, -100, 1, 0, 1, 1, 0, 0, 0),
(31674, 43102, 100, 1, 0, 1, 1, 0, 0, 0),
(31674, 43228, 100, 1, 0, 1, 4, 1, 57940, 0),
(31674, 43662, -100, 1, 0, 1, 1, 0, 0, 0),
(31674, 47241, 100, 1, 0, 1, 1, 0, 0, 0),
(31674, 37191, 20, 1, 1, 1, 1, 0, 0, 0),
(31674, 37192, 24.6, 1, 1, 1, 1, 0, 0, 0),
(31674, 37193, 19, 1, 1, 1, 1, 0, 0, 0),
(31674, 37194, 20, 1, 1, 1, 1, 0, 0, 0),
(31674, 33428, 8.9, 1, 2, 1, 1, 0, 0, 0),
(31674, 33445, 6.7, 1, 2, 1, 4, 0, 0, 0),
(31674, 33447, 4.9, 1, 2, 1, 4, 0, 0, 0),
(31674, 33454, 1.5, 1, 2, 1, 1, 0, 0, 0),
(31674, 33470, 6, 1, 2, 1, 4, 0, 0, 0),
(31674, 34052, 2, 1, 2, 1, 1, 0, 0, 0),
(31674, 34057, 0.4, 1, 2, 1, 1, 0, 0, 0),
(31674, 36428, 8.9, 1, 2, 1, 1, 0, 0, 0),
(31674, 37186, 11, 1, 2, 1, 1, 0, 0, 0),
(31674, 37188, 11, 1, 2, 1, 1, 0, 0, 0),
(31674, 37189, 5, 1, 2, 1, 1, 0, 0, 0),
(31674, 37190, 21, 1, 2, 1, 1, 0, 0, 0),
(31674, 41793, 9, 1, 2, 1, 1, 0, 0, 0),
(31674, 43852, 3, 1, 2, 1, 1, 0, 0, 0); 