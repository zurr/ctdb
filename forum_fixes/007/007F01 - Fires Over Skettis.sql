-- [QUEST] Fires Over Skettis (Daily)
-- There is a wrong spell in creature_AI_script
-- by pratchet

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = '22991';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(77770861, 22991, 8, 0, 100, 1, 39844, -1, 300000, 300000, 33, 22991, 6, 0, 22, 1, 0, 0, 0, 0, 0, 0, 'Monstrous Kaliri Egg Trigger - q11008'),
(77770862, 22991, 1, 1, 100, 1, 1000, 1000, 300000, 300000, 11, 34602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Monstrous Kaliri Egg Trigger - q11008'),
(77770863, 22991, 1, 1, 100, 1, 4000, 4000, 300000, 300000, 11, 39199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Monstrous Kaliri Egg Trigger - q11008'),
(77770864, 22991, 1, 1, 100, 1, 290000, 290000, 0, 300000, 28, 0, 39199, 0, 23, -1, 0, 0, 0, 0, 0, 0, 'Monstrous Kaliri Egg Trigger - q11008');


INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(39844, 1, 22991); 