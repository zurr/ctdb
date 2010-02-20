-- Dev file
-- Put here all your changes with you Nickname before
-- Like:

-- Spyder
-- Missing Class
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=37122;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=37123;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=37127;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=31260;
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=34942;
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=35036;
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=35041;
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=35052;
UPDATE `creature_template` SET `unit_class`=2 WHERE `entry`=37025;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=37665;
-- / Spyder

-- Eragon
-- Argent Tournament (npc_text in Argent Tournament [In process, not finished])
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (136659,14787);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (136649,14804),(136650,14804),(136651,14804),(136652,14804),(136653,14804),(136654,14804),(136655,14804),(136656,14804),(136657,14804),(136658,14804);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (129932,14793);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33593 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127388,14395);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33592 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127392,14399);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33225 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127396,14359);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127582,13584);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33625 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127399,14379);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33312 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127404,14396);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33335 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127407,14398);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (129808,14760);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127620,14759);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33746 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127603,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127604,14384);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33740 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127605,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127606,14384);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33743 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127607,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127608,14384);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33747 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127609,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127610,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127480,13584);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33738 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127612,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127611,14384);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33739 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127593,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127594,14384);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33749 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127595,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127596,14384);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33745 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127597,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127598,14384);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33744 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127599,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127600,14384);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 33748 ;
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127601,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (127602,14384);
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES (129939,13584);

-- Argent Tournament (Pennant,DND, gameobjects)
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
DELETE FROM `gameobject_template` WHERE `entry` = 195214 ;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES (195214, 10, 8235, 'Large Kobold Cage', '', '', '', 14, 0, 1.2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `gameobject` WHERE `id`=195214;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(199990, 195214, 571, 1, 1, 8410.1, 755.925, 548.771, 2.87979, 0, 0, 0, 1, 180, 255, 1),
(199991, 195214, 571, 1, 1, 8407.86, 762.535, 549.657, -2.77507, 0, 0, 0, 1, 180, 255, 1);
DELETE FROM `gameobject_template` WHERE `entry` = 195213 ;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES (195213, 5, 8235, 'Small Coliseum Cage', '', '', '', 0, 0, 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `gameobject` WHERE `id`=195213;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(1999992, 195213, 571, 1, 1, 8404.91, 767.523, 550.424, -2.44346, 0, 0, 0, 1, 180, 255, 1),
(1999993, 195213, 571, 1, 1, 8401.93, 771.163, 549.79, -3.00195, 0, 0, 0, 1, 180, 255, 1),
(1999994, 195213, 571, 1, 1, 8406.55, 770.34, 550.845, -3.00195, 0, 0, 0, 1, 180, 255, 1);
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
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 195597 ;
DELETE FROM `gameobject` WHERE `id`=70000;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(700010, 195597, 571, 1, 1, 8515.01, 831.332, 558.454, 1.5708, 0, 0, 0.707107, 0.707107, 180, 255, 1);
UPDATE `creature_template` SET `equipment_id` = 117 WHERE `entry` = 35467 ;
UPDATE `creature_template` SET `equipment_id` = 1026 WHERE `entry` = 35462 ;
UPDATE `creature_template` SET `equipment_id` = 106 WHERE `entry` = 33854 ;

-- Valiance Keep (Wrong spawns and added mount)
DELETE FROM `creature` WHERE `guid` IN (103697,110384,110388,110385,110391,110386,108622,110383,103698) ;
DELETE FROM `creature` WHERE `guid` = 131369 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(131369, 35133, 571, 1, 1, 0, 0, 2277.35, 5172.51, 11.339, 2.597853, 300, 0, 0, 11677, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` = 131369;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(131369, 0, 17717, 0, 257, 0, '');
DELETE FROM `creature` WHERE `guid` = 131373 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(131373, 35131, 571, 1, 1, 0, 0, 2280.586, 5177, 11.34, 3.225387, 300, 0, 0, 11677, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` = 131373;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(131373, 0, 17759, 0, 257, 0, '');
DELETE FROM `creature` WHERE `guid` = 174339 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(174339, 20506, 571, 1, 1, 0, 0, 2278.35, 5166.245, 14.1, 1.122095, 600, 0, 0, 6986, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 174340 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(174340, 20508, 571, 1, 1, 0, 0, 2275.95, 5167.139, 14.1, 1.122095, 600, 0, 0, 6986, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (98010,98009,98008,98007,98012,98011) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(98010, 0, 0, 0, 0, 36, ''),
(98009, 0, 0, 0, 0, 36, ''),
(98008, 0, 0, 0, 0, 36, ''),
(98007, 0, 0, 0, 0, 36, ''),
(98012, 0, 0, 0, 0, 36, ''),
(98011, 0, 0, 0, 0, 36, '');

-- Dalaran
DELETE FROM `creature` WHERE `guid`=108974;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(108974, 36506, 571, 1, 128, 0, 0, 5729.43, 750.457, 641.751, 4.4155, 300, 0, 0, 2745, 7520, 0, 0);
DELETE FROM `creature` WHERE `guid`=83380;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(83380, 15351, 571, 1, 128, 0, 0, 5647.9, 804.782, 653.697, 5.57789, 300, 0, 0, 126000, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` IN (200379,200378,200380);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(200379, 29254, 571, 1, 128, 0, 0, 5651.59, 778.426, 653.695, 0.9032, 300, 0, 0, 10080, 8814, 0, 0),
(200378, 29254, 571, 1, 128, 0, 0, 5686.9, 801.074, 653.697, 4.0715, 300, 0, 0, 10080, 8814, 0, 0),
(200380, 29254, 571, 1, 128, 0, 0, 5754.51, 752.899, 654.031, 3.11331, 300, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`=108934;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(108934, 31580, 571, 1, 65535, 27556, 0, 5762.57, 744.94, 653.665, 4.11155, 360, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`= 112209 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(112209, 31579, 571, 1, 65535, 27559, 0, 5764.51, 743.873, 653.665, 4.14455, 360, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`= 131375 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(131375, 35494, 571, 1, 65535, 0, 0, 5766.55, 737.976, 653.665, 3.27433, 300, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`= 94660 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(94660, 33964, 571, 1, 65535, 0, 0, 5762.1, 732.003, 653.665, 2.0224, 120, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`= 95154 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(95154, 28686, 571, 1, 65535, 0, 0, 5673.035, 724.6457, 653.42, 2.379755, 1200, 0, 0, 8508, 7981, 0, 0);

-- Nagrand
DELETE FROM `creature_addon` WHERE `guid`= 74332;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (74332, 0, 0, 3, 4097, 0, '25148 0');
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 19027 ;
DELETE FROM `creature` WHERE `guid` IN (74334,174334) ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(74334, 19030, 530, 1, 1, 0, 0, -2702.99, 7207.62, 23.7721, 1.55334, 540, 0, 0, 3357, 0, 0, 0),
(174334, 19030, 530, 1, 1, 0, 0, -2699.34, 7208.42, 23.693459, 1.742422, 540, 0, 0, 3357, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (74334,174334) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (174334, 0, 0, 3, 4097, 0, '25148 0');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (74334, 0, 0, 3, 4097, 0, '25148 0');
DELETE FROM `creature` WHERE `guid`=54436;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(54436, 24866, 530, 1, 1, 0, 0, -2673.22, 7203.96, 25.7458, 1.154158, 600, 0, 0, 4050, 0, 0, 0);
UPDATE `creature_template` SET `flags_extra` = 2, `unit_flags` = 515, `InhabitType`= 3 WHERE `entry` = 19152 ;
DELETE FROM `creature` WHERE `guid` = 75951 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(75951, 19152, 530, 1, 1, 0, 0, -2687.29, 7177.94, 27.120043, 1.193048, 600, 0, 0, 4050, 0, 0, 0);
UPDATE `creature_template` SET `unit_flags` = 32770, `flags_extra` = 2, `speed` = 1 WHERE `entry` = 19151 ;
DELETE FROM `creature` WHERE `guid` = 74324 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(74324, 19151, 530, 1, 1, 0, 0, -2685.41, 7183, 26.1, 4.345236, 4242, 0, 0, 30797, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` IN (69181,69183,174336,174337) ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(174336, 18488, 530, 1, 1, 0, 0, -2686.11, 7184.9, 26.1, 4.227426, 4242, 0, 0, 30797, 0, 0, 0);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(174337, 18488, 530, 1, 1, 0, 0, -2683.54, 7184, 26.1, 4.230567, 4242, 0, 0, 30797, 0, 0, 0);
UPDATE `creature_template` SET `flags_extra` = 2, `speed` = 1 WHERE `entry` = 18488 ;
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 23268 ;
DELETE FROM `creature` WHERE `guid` = 84741 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(84741, 23268, 530, 1, 1, 0, 0, -2487.80, 7234.18, 16.237913, 5.592055, 4242, 0, 0, 30797, 0, 0, 0);
UPDATE `creature_template` SET `speed` = 1 WHERE `entry` = 19071 ;
UPDATE `creature_template` SET `speed` = 1 WHERE `entry` = 19149 ;

-- Quel'danas
DELETE FROM `creature` WHERE `guid` IN (174338,174339) ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(174338, 25115, 530, 1, 1, 0, 0, 12798.76, -6976.45, 18.697109, 2.265272, 5, 0, 0, 10479, 0, 0, 0),
(174339, 25115, 530, 1, 1, 0, 0, 12791.50, -6983.03, 18.697109, 2.315537, 5, 0, 0, 10479, 0, 0, 0);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 31054 ;
DELETE FROM `creature_addon` WHERE `guid` = 31054 ;
INSERT INTO `creature_addon`(guid, path_id) VALUES (31054, 1366371);
DELETE FROM `waypoint_data` WHERE `id` = 1366371 ;
INSERT INTO `waypoint_data`(id, POINT, position_x, position_y, position_z, delay) VALUES
(1366371, 1, 12744.44, -6906.247, 12.245442, 0),
(1366371, 2, 12751.99, -6912.52, 12.237050, 0),
(1366371, 3, 12750.46, -6923.125, 12.237200, 0),
(1366371, 4, 12739.07, -6926.315, 12.246215, 0),
(1366371, 5, 12731.40, -6920.85, 12.238003, 0),
(1366371, 6, 12732.05, -6910.31, 12.236571, 0);
DELETE FROM `creature` WHERE `guid` IN (200368,200369,200371,200372) ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(200368, 24994, 530, 1, 1, 0, 0, 12838, -7014.58, 71.526, 3.16536, 300, 0, 0, 69860, 0, 0, 0),
(200369, 24994, 530, 1, 1, 0, 0, 12814, -7013.35, 71.5393, 6.20799, 300, 0, 0, 69860, 0, 0, 0),
(200371, 24994, 530, 1, 1, 0, 0, 12812.5, -6985.2, 18.6404, 2.83864, 300, 0, 0, 69860, 0, 0, 0),
(200372, 24994, 530, 1, 1, 0, 0, 12798.1, -6997.48, 18.64, 2.05245, 300, 0, 0, 69860, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 52375 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(52375, 25163, 530, 1, 1, 0, 0, 12833.71, -7004.597, 71.528, 3.599686, 600, 0, 0, 5589, 3155, 0, 0);
DELETE FROM `creature_equip_template` WHERE `entry`= 335 ;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (335, 34326, '0', 28488);
DELETE FROM `creature_addon` WHERE `guid` IN (100263,100262,100261,100260,100264,100265,100266,100267,100268,100269,100270,100271,100251,100258,100259,100255,100254,100256,100257,100277,100276,100275,100274,100273,100278,100279,100280,100281,100282,100283,100272,100284,100285,100286,100253) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(100263, 0, 0, 0, 0, 48, ''),
(100262, 0, 0, 0, 0, 48, ''),
(100261, 0, 0, 0, 0, 48, ''),
(100260, 0, 0, 0, 0, 48, ''),
(100264, 0, 0, 0, 0, 48, ''),
(100265, 0, 0, 0, 0, 48, ''),
(100266, 0, 0, 0, 0, 48, ''),
(100267, 0, 0, 0, 0, 48, ''),
(100268, 0, 0, 0, 0, 48, ''),
(100269, 0, 0, 0, 0, 48, ''),
(100270, 0, 0, 0, 0, 48, ''),
(100271, 0, 0, 0, 0, 48, ''),
(100251, 0, 0, 0, 0, 48, ''),
(100258, 0, 0, 0, 0, 48, ''),
(100259, 0, 0, 0, 0, 48, ''),
(100255, 0, 0, 0, 0, 48, ''),
(100254, 0, 0, 0, 0, 48, ''),
(100256, 0, 0, 0, 0, 48, ''),
(100257, 0, 0, 0, 0, 48, ''),
(100277, 0, 0, 0, 0, 48, ''),
(100276, 0, 0, 0, 0, 48, ''),
(100275, 0, 0, 0, 0, 48, ''),
(100274, 0, 0, 0, 0, 48, ''),
(100273, 0, 0, 0, 0, 48, ''),
(100278, 0, 0, 0, 0, 48, ''),
(100279, 0, 0, 0, 0, 48, ''),
(100280, 0, 0, 0, 0, 48, ''),
(100281, 0, 0, 0, 0, 48, ''),
(100282, 0, 0, 0, 0, 48, ''),
(100283, 0, 0, 0, 0, 48, ''),
(100272, 0, 0, 0, 0, 48, ''),
(100284, 0, 0, 0, 0, 48, ''),
(100285, 0, 0, 0, 0, 48, ''),
(100286, 0, 0, 0, 0, 48, ''),
(100253, 0, 0, 0, 0, 48, '');
DELETE FROM `creature_addon` WHERE `guid` IN (100483,100484,100480,100481,100479,100478) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(100483, 0, 0, 0, 0, 36, ''),
(100484, 0, 0, 0, 0, 36, ''),
(100480, 0, 0, 0, 0, 36, ''),
(100481, 0, 0, 0, 0, 36, ''),
(100479, 0, 0, 0, 0, 36, ''),
(100478, 0, 0, 0, 0, 36, '');

-- Acherus
UPDATE `gameobject_template` SET `flags` = 6553636 WHERE `entry` = 191364 ;
-- / Eragon