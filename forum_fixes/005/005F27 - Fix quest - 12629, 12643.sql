-- default script for creature http://www.wowhead.com/?npc=29856
-- in game cant use
-- By Igor321
DELETE FROM `creature_ai_scripts` WHERE `id` = 2985651 ;
INSERT INTO `creature_ai_scripts` VALUES ('2985651', '29856', '8', '0', '100', '1', '39996', '-1', '0', '0', '11', '55363', '6', '16', '41', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12629,12643');
UPDATE `creature_template` SET `AIName`='EventAI' WHERE `entry`='29856'; 