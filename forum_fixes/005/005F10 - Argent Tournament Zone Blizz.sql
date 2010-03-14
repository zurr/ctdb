-- Argent Tournament Zone Blizz
-- By Eragon
DELETE FROM `creature_template_addon` WHERE `entry`= 33272 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33272, 0, 0, 0, 0, 0, '64100 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33225 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33225, 0, 0, 0, 0, 0, '62727 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33312 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33312, 0, 0, 0, 0, 0, '63440 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33335 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33335, 0, 0, 0, 0, 0, '63442 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33593 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33593, 0, 0, 0, 0, 0, '63439 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33592 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33592, 0, 0, 0, 0, 0, '63443 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33759 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33759, 0, 0, 0, 0, 0, '63501 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33379 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33379, 0, 0, 0, 0, 0, '63438 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33373 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33373, 0, 0, 0, 0, 0, '63441 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33361 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33361, 0, 0, 0, 0, 0, '63444 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33403 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33403, 0, 0, 0, 0, 0, '63445 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33372 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33372, 0, 0, 0, 0, 0, '63446 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 35470 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (35470, 0, 0, 3, 1, 0, '25148 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 35469 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (35469, 0, 0, 0, 1, 64, '25148 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33522 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33522, 0, 0, 0, 1, 0, '63606 0 63005 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33518 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33518, 0, 0, 0, 1, 0, '63501 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33447 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33447, 0, 0, 0, 1, 0, '63500 0');
DELETE FROM `creature_template_addon` WHERE `entry`= 33762 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33762, 0, 0, 0, 1, 0, '63609 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=36066);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (36066, 0, 0, 0, 1, 93, '68342 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=36065);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (36065, 0, 0, 0, 1, 93, '68342 0');
DELETE FROM `creature` WHERE `id`= 35482 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(127570, 35482, 571, 1, 1, 24892, 0, 8431.46, 1041.08, 552.533, 4.86947, 180, 0, 0, 1, 0, 0, 0),
(127580, 35482, 571, 1, 1, 29878, 0, 8420.46, 1037.24, 552.607, 5.86431, 180, 0, 0, 1, 0, 0, 0),
(199990, 35482, 571, 1, 1, 29878, 0, 8420.69, 1027.25, 550.42, 0.331613, 180, 0, 0, 1, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE `entry`= 33243 ;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33243, 0, 0, 0, 0, 0, '64101 0 62719 0 63132 0');
DELETE FROM `creature_addon` WHERE `guid` = 127603;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127603, 0, 29262, 0, 1, 0, '63403 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127604;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127604, 0, 29262, 0, 1, 0, '63403 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127605;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127605, 0, 28571, 0, 1, 0, '63396 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127606;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127606, 0, 28571, 0, 1, 0, '63396 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127607;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127607, 0, 29258, 0, 1, 0, '63427 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127608;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127608, 0, 29258, 0, 1, 0, '63427 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127609;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127609, 0, 28912, 0, 1, 0, '62594 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127610;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127610, 0, 28912, 0, 1, 0, '62594 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127612;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127612, 0, 29256, 0, 1, 0, '63406 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127611;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127611, 0, 29256, 0, 1, 0, '63406 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127593;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127593, 0, 29255, 0, 1, 0, '63423 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127594;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127594, 0, 29255, 0, 1, 0, '63423 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127595;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127595, 0, 29257, 0, 1, 0, '63430 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127596;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127596, 0, 29257, 0, 1, 0, '63430 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127597;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127597, 0, 29261, 0, 1, 0, '63399 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127598;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127598, 0, 29261, 0, 1, 0, '63399 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127599;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127599, 0, 29260, 0, 1, 0, '63433 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127600;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127600, 0, 29260, 0, 1, 0, '63433 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127601;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127601, 0, 29259, 0, 1, 0, '63436 0 62852 0 64723 0');
DELETE FROM `creature_addon` WHERE `guid` = 127602;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(127602, 0, 29259, 0, 1, 0, '63436 0 62852 0 64723 0');
UPDATE `creature_template` SET `InhabitType` = 3, `equipment_id` = 33698 WHERE `entry` = 33780 ;
DELETE FROM `creature` WHERE `guid` = 136670 ;
DELETE FROM `creature` WHERE `guid` = 136666 ;
DELETE FROM `creature` WHERE `guid` = 136671 ;
DELETE FROM `creature` WHERE `guid` = 136672 ;
DELETE FROM `creature` WHERE `guid` = 136665 ;
DELETE FROM `creature` WHERE `guid` = 136669 ;
DELETE FROM `creature` WHERE `guid` = 136667 ;
DELETE FROM `creature` WHERE `guid` = 136668 ;
DELETE FROM `creature` WHERE `guid` = 129086 ;
DELETE FROM `creature` WHERE `guid` = 129084 ;
DELETE FROM `creature` WHERE `guid` = 129081 ;
DELETE FROM `creature` WHERE `guid` = 129082 ;
DELETE FROM `creature` WHERE `guid` = 129083 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(129086, 33780, 571, 1, 1, 0, 33698, 8509.65, 1197.48, 604.339, 0.0895271, 300, 0, 0, 50400, 11982, 0, 0),
(129084, 33780, 571, 1, 1, 0, 33698, 8487.83, 1183.69, 604.339, 4.1414, 300, 0, 0, 50400, 11982, 0, 0),
(129081, 33780, 571, 1, 1, 0, 33698, 8506.62, 1184.83, 604.339, 5.24252, 300, 0, 0, 50400, 11982, 0, 0),
(129082, 33780, 571, 1, 1, 0, 33698, 8341.53, 839.959, 586.264, 5.51349, 300, 0, 0, 50400, 11982, 0, 0),
(129083, 33780, 571, 1, 1, 0, 33698, 8341.92, 853.067, 586.264, 0.187705, 300, 0, 0, 50400, 11982, 0, 0),
(136668, 33780, 571, 1, 1, 0, 33698, 8323.82, 835.368, 586.264, 4.40529, 300, 0, 0, 50400, 11982, 0, 0),
(136667, 33780, 571, 1, 1, 0, 33698, 8618.38, 577.4, 586.304, 2.4575, 300, 0, 0, 50400, 11982, 0, 0),
(136669, 33780, 571, 1, 1, 0, 33698, 8618.25, 564.399, 586.304, 3.51936, 300, 0, 0, 50400, 11982, 0, 0),
(136665, 33780, 571, 1, 1, 0, 33698, 8636.01, 583.496, 586.304, 1.4789, 300, 0, 0, 50400, 11982, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (136668,136667,136669,136665) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(136668, 0, 22471, 0, 1, 0, ''),
(136667, 0, 22471, 0, 1, 0, ''),
(136669, 0, 22471, 0, 1, 0, ''),
(136665, 0, 22471, 0, 1, 0, '');
DELETE FROM `creature_addon` WHERE `guid` IN (136649,136650,136651,136652,136653,136654) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(136649, 0, 0, 1, 0, 0, ''),
(136650, 0, 0, 1, 0, 0, ''),
(136651, 0, 0, 1, 0, 0, ''),
(136652, 0, 0, 1, 0, 0, ''),
(136653, 0, 0, 1, 0, 0, ''),
(136654, 0, 0, 1, 0, 0, '');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(581340, 181273, 571, 1, 1, 8530.56, 647.24, 558.537, 0, 0, 0, 0, 1, 180, 255, 1);
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 195597 ;
DELETE FROM `gameobject` WHERE `id`=70000;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(700010, 195597, 571, 1, 1, 8515.01, 831.332, 558.454, 1.5708, 0, 0, 0.707107, 0.707107, 180, 255, 1);
UPDATE `creature_template` SET `equipment_id` = 117 WHERE `entry` = 35467 ;
UPDATE `creature_template` SET `equipment_id` = 1026 WHERE `entry` = 35462 ;
UPDATE `creature_template` SET `equipment_id` = 106 WHERE `entry` = 33854 ;
UPDATE `creature_template` SET `IconName` = '' WHERE `entry` = 33788 ;
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` = 30281 ;
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 35467 ;
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 35462 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(741360, 8996, 571, 1, 1, 1132, 0, 8530.4, 654.056, 558.538, 4.73201, 180, 0, 0, 1, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(741761, 8996, 571, 1, 1, 1132, 0, 8525.75, 652.275, 558.538, 5.30849, 180, 0, 0, 1, 0, 0, 0);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
('40000','0','0','0','0','0','850','0','850','0','Felhunter Minion','',NULL,'0','55','56','2','84','84','0','1.3','1','0','62','94','0','23','1.4','1500','1500','2','0','0','15','0','0','0','0','50','75','18','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','1','11970','0.77','1','0','0','0','0','0','0','0','121','1','0','0','0','');
UPDATE `creature_template` SET `faction_A` = 1750, `faction_H` = 1750 WHERE `entry` = 40000 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(741765, 40000, 571, 1, 1, 0, 0, 8537.01, 649.717, 558.538, 3.52564, 300, 0, 0, 42, 0, 0, 0);
DELETE FROM `gameobject_template` WHERE `entry` = 799800 ;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES 
(799800, 5, 8050, 'Demonic Circle: Summon', '', '', '', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(741766, 799800, 571, 1, 1, 8530.6, 646.969, 558.537, 4.77442, 0, 0, 0.684841, -0.728693, 300, 0, 1);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(7417653, 40000, 571, 1, 1, 0, 0, 8498.73, 658.712, 558.537, 4.69273, 300, 0, 0, 25029270, 1630, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(741769, 8996, 571, 1, 1, 0, 0, 8503.98, 647.25, 558.537, 5.21345, 300, 0, 0, 1649, 0, 0, 0);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
('40001','0','0','0','0','0','4162','0','4162','0','Succubus Minion','',NULL,'0','63','70','0','119','119','0','1','1','0','123','184','0','46','0.9','1500','1500','2','0','0','0','0','0','0','0','98','147','37','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1600','1600','EventAI','0','1','0.7','0.87','1','0','0','0','0','0','0','0','121','1','0','0','0','');
UPDATE `creature_template` SET `faction_A` = 1750, `faction_H` = 1750 WHERE `entry` = 40001 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(741762, 40001, 571, 1, 1, 4162, 0, 8535.25, 652.452, 558.538, 4.09113, 180, 0, 0, 1, 0, 0, 0),
(741768, 40001, 571, 1, 1, 0, 0, 8507.79, 643.948, 558.537, 2.26349, 300, 0, 0, 1865, 2279, 0, 0);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
('40002','0','0','0','0','0','4449','0','4449','0','Imp Minion','',NULL,'0','66','80','0','35','35','0','0.59','1','0','142','214','0','53','1','1500','1500','8','0','0','0','0','0','0','0','114','171','42','3','0','0','0','0','0','0','0','0','0','0','20801','0','0','0','0','0','0','0','0','0','0','0','EventAI','0','3','0.273068','0.33','1','0','0','0','0','0','0','0','121','1','0','0','2','');
UPDATE `creature_template` SET `faction_A` = 1750, `faction_H` = 1750 WHERE `entry` = 40002 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(741763, 12922, 571, 1, 1, 0, 0, 8524.78, 645.027, 558.538, 0.428812, 300, 0, 0, 1147, 2577, 0, 0),
(741764, 12922, 571, 1, 1, 0, 0, 8532.67, 642.594, 558.538, 1.71451, 300, 0, 0, 1281, 2791, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` IN (40001,40000) ; 
