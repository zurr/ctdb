--Fix some console errors
DELETE FROM `creature_template_addon` WHERE `entry` =16164;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(16164, 0, 0, 0, 1, 0, '1787 1 1787 0 18950 0 18950 1');