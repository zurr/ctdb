-- DK correction quest and objects
-- By Olby

-- DK zone
UPDATE `gameobject` SET `phaseMask` = 1 WHERE `id` = 190691;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16, `VehicleId` = 200 WHERE `entry` = 28782;
-- scarlet cannon - prevent movement - www.wowhead.com/?npc=28833
UPDATE `creature_template` SET `unit_flags` = 4, `speed_walk` = 0, `speed_run` = 0 WHERE `entry`=28833;
-- NPC fix 32981, correct displayid taxi acherus to Lights Hope
UPDATE `creature_template` SET `modelid1` = 28421, `modelid3` = 28421 WHERE `entry` = 32981;
-- correction quest 12722 and 12716
UPDATE `quest_template` SET `NextQuestId` = 12723, `NextQuestInChain` = 0 WHERE `entry` = 12722;
UPDATE `quest_template` SET `NextQuestId` = 12717, `NextQuestInChain` = 12717, `QuestFlags` = 0, `ExclusiveGroup` = 0 WHERE `entry` = 12716; 