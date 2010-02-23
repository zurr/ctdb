-- Fix Quest: gateways both horde and alliance
-- did not get mission credit for using bomb on gateways
-- http://www.wowhead.com/?quest=10146
-- http://www.wowhead.com/?quest=10129
DELETE FROM `spell_script_target` WHERE `entry`=33655; -- fix spell_target set to correct creature
INSERT INTO `spell_script_target` (`entry`,`type`,`targetEntry`) VALUES 
(33655,1,19291),
(33655,1,19292);
UPDATE `creature_template` SET `AIName`= 'EventAI' WHERE `entry` IN (19291,19292); -- set creatures to use EAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (19291,19292); -- EventAI to give credit on spell hit
INSERT INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`even?t_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_ty?pe`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_p?aram1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action?3_param2`,`action3_param3`,`comment`) VALUES 
(1929100,19291,8,0,100,0,33655,-1,0,0,33,19291,6,0,0,0,0,0,0,0,0,0, 'use eai to get credit from spell hit'),
(1929200,19292,8,0,100,0,33655,-1,0,0,33,19292,6,0,0,0,0,0,0,0,0,0, 'use eai to get credit from spell hit');