-- The mob 30273 dont spawn the Webbed Crusader Freed
-- By gcanoca
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = '30273';
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
('3027351','30273','6','0','30','0','0','0','0','0','12','30204','6','180000','0','0','0','0','0','0','0','0','q13008'),
('3027352','30273','6','0','70','0','0','0','0','0','11','56515','0','6','0','0','0','0','0','0','0','0','q13008'); 