-- This fixes the quest Securing The Bate
-- By Stalker_Riddick
-- Setup creature for eventai
UPDATE `creature_template` SET `AIname` = 'EventAI' WHERE `entry` IN (28408,28389);
-- Set correct icon on creature
UPDATE `creature_template` SET `IconName` = 'PickUp' WHERE `entry` = 28389;
-- This creature should not have any flags
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 28389;
-- ON egg death spawns a hatchling
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`comment`) VALUES
(28408001,28408,6,100,0,0,0,0,0,12,28389,0,300000,'On egg death spawn hatchling');
-- Enables you to pickup the hatchling
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES
(28389001,28389,8,100,0,39996,-1,0,0,11,65208,0,16,11,51593,6,16,41,0,0,0,'Pickup Hatchling create item despawn hatchling'); 