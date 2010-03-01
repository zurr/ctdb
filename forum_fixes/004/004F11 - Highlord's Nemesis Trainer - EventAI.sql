-- Add EventAI Highlords Nemesis Trainer ID 32547
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(3254703, 32547, 9, 0, 100, 1, 30, 40, 5000, 5000, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlords Nemesis Trainer - Enter evade if target is too far'),
(3254702, 32547, 11, 0, 100, 0, 0, 0, 0, 0, 18, 262144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlords Nemesis Trainer - Disable rotate'),
(3254701, 32547, 11, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 20, 0, 0, 0, 42, 1, 1, 0, 'Highlords Nemesis Trainer - Disable movement, attack at spawn, set invincibility hp level');

-- Update AIName for Highlords Nemesis Trainer
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 32547;