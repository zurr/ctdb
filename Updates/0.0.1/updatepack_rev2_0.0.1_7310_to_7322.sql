-- #############################################
-- # updatepack_rev2_0.0.1_7310_to_73
-- # Developed by the CTDB Team and his community
-- #############################################


-- Restoring the correct BG data
DROP TABLE IF EXISTS `battleground_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battleground_template` (
  `id` mediumint(8) unsigned NOT NULL,
  `MinPlayersPerTeam` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaxPlayersPerTeam` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MinLvl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxLvl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AllianceStartLoc` mediumint(8) unsigned NOT NULL,
  `AllianceStartO` float NOT NULL,
  `HordeStartLoc` mediumint(8) unsigned NOT NULL,
  `HordeStartO` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Dumping data for table `battleground_template`
LOCK TABLES `battleground_template` WRITE;
/*!40000 ALTER TABLE `battleground_template` DISABLE KEYS */;
INSERT INTO `battleground_template` (`id`,`MinPlayersPerTeam`,`MaxPlayersPerTeam`,`MinLvl`,`MaxLvl`,`AllianceStartLoc`,`AllianceStartO`,`HordeStartLoc`,`HordeStartO`) VALUES
(1,20,40,51,80,611,2.72532,610,2.27452),
(2,5,10,10,80,769,3.14159,770,3.14159),
(3,8,15,20,80,890,3.40156,889,0.263892),
(4,0,2,10,80,929,0,936,3.14159),
(5,0,2,10,80,939,0,940,3.14159),
(6,0,2,10,80,0,0,0,0),
(7,8,15,61,80,1103,3.40156,1104,0.263892),
(8,0,2,10,80,1258,0,1259,3.14159),
(9,7,15,71,80,1367,0,1368,0),
(10,5,5,10,80,1362,0,1363,0),
(11,5,5,10,80,1364,0,1365,0),
(30,20,40,71,80,1485,0,1486,0),
(32,0,40,0,80,0,0,0,0);
/*!40000 ALTER TABLE `battleground_template` ENABLE KEYS */;
UNLOCK TABLES;

-- Spyder
UPDATE creature_template SET spell1=23337, spell2=12024 WHERE `entry` IN (4624, 9460, 3502);
UPDATE creature_template SET spell1=33688 WHERE `entry` IN (24994);

-- Stalker_Riddick
-- Quest 9874 - Stopping the Spread
-- CreatureEventAI: Creature 18240 has EFLAG_REPEATABLE
UPDATE `creature_ai_scripts` SET `event_flags`= '0' WHERE `id` = '18240001';
-- Misimouse
-- http://www.wowhead.com/?npc=22252
UPDATE creature_template SET spell2='34802', ScriptName='mob_dragonmaw_peon' WHERE `entry`=22252;
-- http://www.wowhead.com/?npc=17088
-- http://www.wowhead.com/?npc=10928
UPDATE creature_template SET speed='1' WHERE `entry` IN (17088,10928);
-- http://www.wowhead.com/?npc=9502
DELETE FROM `creature` WHERE `id`=9502;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(48801, 9502, 230, 1, 1, 0, 0, 868.065, -224.328, -43.6965, 2.1905, 43200, 5, 0, 18298, 0, 0, 1);
-- http://www.wowhead.com/?npc=27236
DELETE FROM `creature` WHERE `id`=27236;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(112693, 27236, 571, 1, 1, 24436, 0, 2760.7, -176.246, 138.867, 5.95607, 360, 0, 0, 9610, 0, 0, 0);
-- http://www.wowhead.com/?npc=27227
UPDATE creature_template SET faction_A='1026', faction_H='1026' WHERE `entry`=27227;
-- Fix DK EXP Quests
-- Source
-- http://www.wowhead.com/?quest=12593
-- http://www.wowhead.com/?quest=12636
-- http://www.wowhead.com/?quest=12850
-- http://www.wowhead.com/?quest=12670
-- http://wwww.wowhead.com/?quest=12711
-- http://wwww.wowhead.com/?quest=12697
-- http://wwww.wowhead.com/?quest=12700
-- http://wwww.wowhead.com/?quest=12714
-- http://wwww.wowhead.com/?quest=12715
-- http://wwww.wowhead.com/?quest=12723
-- http://wwww.wowhead.com/?quest=12738
-- http://wwww.wowhead.com/?quest=12778
-- http://wwww.wowhead.com/?quest=12800
-- http://wwww.wowhead.com/?quest=13165

UPDATE quest_template SET RewMoneyMaxLevel='815' WHERE `entry` IN (12593,12636,12850,12670,12711,12697,12700,12714,12715,12723,12738,12778,12800,13165);

-- http://www.wowhead.com/?quest=12842
-- http://www.wowhead.com/?quest=12848
-- http://www.wowhead.com/?quest=12641
-- http://www.wowhead.com/?quest=12657
-- http://www.wowhead.com/?quest=12678
-- http://www.wowhead.com/?quest=12849
-- http://wwww.wowhead.com/?quest=12680
-- http://wwww.wowhead.com/?quest=12679
-- http://wwww.wowhead.com/?quest=12733
-- http://wwww.wowhead.com/?quest=12698
-- http://wwww.wowhead.com/?quest=12719
-- http://wwww.wowhead.com/?quest=12720
-- http://wwww.wowhead.com/?quest=12724
-- http://wwww.wowhead.com/?quest=12722
-- http://wwww.wowhead.com/?quest=12725
-- http://wwww.wowhead.com/?quest=12739
-- http://wwww.wowhead.com/?quest=12742
-- http://wwww.wowhead.com/?quest=12743
-- http://wwww.wowhead.com/?quest=12744
-- http://wwww.wowhead.com/?quest=12745
-- http://wwww.wowhead.com/?quest=12746
-- http://wwww.wowhead.com/?quest=12747
-- http://wwww.wowhead.com/?quest=12748
-- http://wwww.wowhead.com/?quest=12749
-- http://wwww.wowhead.com/?quest=12750
-- http://wwww.wowhead.com/?quest=12751
-- http://wwww.wowhead.com/?quest=12754
-- http://wwww.wowhead.com/?quest=12755
-- http://wwww.wowhead.com/?quest=12756
-- http://wwww.wowhead.com/?quest=13166
-- http://wwww.wowhead.com/?quest=13188
-- http://wwww.wowhead.com/?quest=13189

UPDATE quest_template SET RewMoneyMaxLevel='12250' WHERE `entry` IN (12842,12848,12641,12657,12678,12849,12680,12679,12733,12698,12719,12720,12724,12722,12725,12739,12742,12743,12744,12745,12746,12747,12748,12749,12750,12751,12754,12755,12756,13166,13188,13189);

-- http://www.wowhead.com/?quest=12619
-- http://wwww.wowhead.com/?quest=12687
-- http://wwww.wowhead.com/?quest=12701
-- http://wwww.wowhead.com/?quest=12706
-- http://wwww.wowhead.com/?quest=12727
-- http://wwww.wowhead.com/?quest=12757
-- http://wwww.wowhead.com/?quest=12779
-- http://wwww.wowhead.com/?quest=12801

UPDATE quest_template SET RewMoneyMaxLevel='16340' WHERE `entry` IN (12619,12687,12701,12706,12727,12757,12779,12801);
-- Eragon
UPDATE `quest_template` SET `QuestLevel` = 55 WHERE `entry` IN (12593,12619,12842,12848,12636,12641,12657,12850,12670,12678,12697,12698,12700,12701,12706,12714,12715,12719,12720,12723,12724,12754,12755,12756,12757,12778,12779,12800,12801,13165,13166);
-- END DK QUESTS 
-- http://es.wowhead.com/?npc=28389
UPDATE creature_template SET unit_flags='4610' WHERE `entry`='28389';
-- http://www.wowhead.com/?npc=35607#comments
DELETE FROM `creature` WHERE `guid` = 136677;
-- http://www.wowhead.com/?npc=16427
UPDATE creature_template SET speed='1' WHERE `entry`='16427';
-- http://es.wowhead.com/?npc=7957
UPDATE creature_template SET unit_flags='4610' WHERE `entry`='7957';
-- http://www.wowhead.com/?npc=5353
UPDATE creature_template SET faction_A='1080', faction_H='1080' WHERE `entry`=5353;
-- http://www.wowhead.com/?npc=35607#comments
DELETE FROM `creature` WHERE `guid` = 136677 ;
-- Zone: http://www.wowhead.com/?faction=21 (Booty Bay)
-- http://www.wowhead.com/?npc=4624
UPDATE creature_template SET faction_A='121', faction_H='121' WHERE `entry`=4624;
-- http://www.wowhead.com/?faction=369 (Gadgetzan)
-- http://www.wowhead.com/?npc=9460
UPDATE creature_template SET faction_A='475', faction_H='475' WHERE `entry`=9460;
-- http://www.wowhead.com/?faction=470
-- http://www.wowhead.com/?npc=3502
UPDATE creature_template SET faction_A='637', faction_H='637' WHERE `entry`=3502;
-- http://www.wowhead.com/?faction=1077
-- http://www.wowhead.com/?npc=24994
-- http://www.wowhead.com/?npc=25115
UPDATE creature_template SET faction_A='1960', faction_H='1960' WHERE `entry` IN (24994,25115);
-- Blood Maggot (http://www.wowhead.com/?npc=28630)
UPDATE `creature_template` SET `flags_extra`= 64 WHERE `entry`= 28630;
-- Decorative NPC's from Icecrown:
UPDATE `creature_template` SET `flags_extra`=2 WHERE `entry` IN (33748,33744,33745,33749,33739,33738,33522,33747,33743,33740,33746);
-- [NPC] Sunreaver Dragonhawk (aggressive)
UPDATE creature_template SET flags_extra='2' WHERE `entry`='35984';

-- Eragon
-- Trag Highmountain and Akiak
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` IN (35462,35467);

-- timmit
UPDATE `quest_template` SET `PrevQuestId` = 10657 WHERE `entry` = 10711;
UPDATE `quest_template` SET `PrevQuestId` = 10557 WHERE `entry` = 10710;
UPDATE `quest_template` SET `SrcItemId` = 0, `SrcItemCount` = 0 WHERE `entry` = 10557;
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 10711;
UPDATE `quest_template` SET `PrevQuestId` = 10675 WHERE `entry` = 10712;
UPDATE `creature_template` SET `gossip_menu_id` = 22127 WHERE `entry` = 22127;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(22127,10657);
REPLACE INTO `gossip_menu_option` VALUES(22127,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(22127,1,0,'Felsworn Gas Mask broken. You do not have another?',1,1,0,22127,8,10812,0);
REPLACE into `gossip_scripts` values 
(22127,0,15,39101,1,0,0,0,0,0),
(22127,1,0,0,0,2000001204,0,0,0,0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001204','It\'s good that I managed to make copies of the Felsworn Gas Mask...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE `creature_template` SET `unit_flags` = `unit_flags` |8 WHERE `entry` in (5489,739,927,1444,12336,5484,1182,8140,1351,5661,31261,26044);
UPDATE `quest_template` SET `PrevQuestId` = 10801 WHERE `entry` = 10803;

-- The_Game_Master
UPDATE `creature_template` SET `flags_extra` = 130 WHERE `entry` = 23920;

-- NeatElves
DELETE FROM `creature` WHERE `guid` = 125585;
DELETE FROM `game_event_creature` WHERE `guid` = 125585;
UPDATE `gossip_menu_option` SET `cond_1` = '2',`cond_1_val_1` = '21211',`cond_1_val_2` = '1' WHERE `menu_id` =15664 AND `id` =0;
REPLACE INTO `creature_ai_scripts` VALUES ('2690251', '26902', '11', '0', '100', '1', '0', '0', '0', '0', '11', '61611', '6', '6', '33', '26902', '6', '0', '0', '0', '0', '0', 'ytdb-q12121');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '26902';
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '22504',`ReqCreatureOrGOId2` = '22503',`ReqSpellCast1` = '0',`ReqSpellCast2` = '0' WHERE `entry` =10911;
REPLACE INTO `creature_ai_scripts` VALUES ('2547151', '25471', '10', '0', '100', '1', '1', '5', '1000', '1000', '33', '25471', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q11633');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '25471';
REPLACE INTO `creature_ai_scripts` VALUES ('2547251', '25472', '10', '0', '100', '1', '1', '5', '1000', '1000', '33', '25472', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q11633');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '25472';
REPLACE INTO `creature_ai_scripts` VALUES ('2547351', '25473', '10', '0', '100', '1', '1', '5', '1000', '1000', '33', '25473', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q11633');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '25473';
UPDATE `creature_template_addon` SET `auras` = '45617 0 45617 1' WHERE `entry` =25383;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(118475, 25471, 571, 1, 1, 0, 0, 4113.61, 3735.4, 91.7649, 3.49542, 600, 0, 0, 8982, 3155, 0, 0),
(118476, 25472, 571, 1, 1, 0, 0, 4096.32, 3494.67, 131.666, 2.97392, 600, 0, 0, 8982, 3155, 0, 0),
(118477, 25473, 571, 1, 1, 0, 0, 3792.25, 3425.83, 83.7902, 1.13452, 600, 0, 0, 8982, 3155, 0, 0);

-- Krek
DELETE FROM `creature_loot_template` WHERE `item` IN(7230,5192,5196,5404,10412,6446);
INSERT INTO `creature_loot_template` ( `entry` , `item` , `ChanceOrQuestChance` , `groupid` , `mincountOrRef` , `maxcount` , `lootcondition` , `condition_value1` , `condition_value2` ) VALUES
(646,7230,20,1,1,1,0,0,0),
(646,5192,40,1,1,1,0,0,0),
(646,5196,40,1,1,1,0,0,0);
-- Fix
INSERT INTO `creature_loot_template` ( `entry` , `item` , `ChanceOrQuestChance` , `groupid` , `mincountOrRef` , `maxcount` , `lootcondition` , `condition_value1` , `condition_value2` ) VALUES
(3671,5404,70,1,1,1,0,0,0),
(3671,10412,20,1,1,1,0,0,0),
(3671,6446,10,1,1,1,0,0,0);

-- Spyder
DELETE FROM `quest_start_scripts` WHERE `id`=1;
UPDATE `quest_template` SET `StartScript` = 0 WHERE `entry` = 1;
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(5667, 141071, 209, 1, 1, 1881.33, 1297.46, 48.3304, -2.72271, 0, 0, 0.978148, -0.207912, 7200, 100, 1);
DELETE FROM `creature_template` WHERE (`entry`=34425);
-- REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES 
-- ('34425','0','0','0','0','0','25593','0','25593','0','Furious Gladiator\'s Frost Wyrm','','','0','1','1','0','0','35','35','0','1','1','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0','3','1','1','0','0','0','0','0','0','0','0','1','0','0','0','');
UPDATE creature_template  SET InhabitType = 4 WHERE entry = 29066;
DELETE FROM `creature_addon` WHERE (`guid`=53074);
UPDATE `creature` SET `orientation` = 3.51519 WHERE `guid` = 53588;
DELETE FROM `creature_loot_template` WHERE (`entry`=24200);
REPLACE INTO `creature_loot_template` ( `entry` , `item` , `ChanceOrQuestChance` , `groupid` , `mincountOrRef` , `maxcount` , `lootcondition` , `condition_value1` , `condition_value2` ) VALUES 
(24200, 33454, 2, 0, 1, 1, 0, 0, 0),
(24200, 33470, 5, 0, 1, 7, 0, 0, 0),
(24200, 35573, 0, 1, 1, 1, 0, 0, 0),
(24200, 35574, 0, 1, 1, 1, 0, 0, 0),
(24200, 35575, 0, 1, 1, 1, 0, 0, 0),
(24200, 43228, 100, 0, 1, 1, 1, 57940, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`=31679);
REPLACE INTO `creature_loot_template` ( `entry` , `item` , `ChanceOrQuestChance` , `groupid` , `mincountOrRef` , `maxcount` , `lootcondition` , `condition_value1` , `condition_value2` ) VALUES 
(31679, 37181, 0, 1, 1, 1, 0, 0, 0),
(31679, 37182, 0, 1, 1, 1, 0, 0, 0),
(31679, 37183, 0, 1, 1, 1, 0, 0, 0),
(31679, 37184, 0, 1, 1, 1, 0, 0, 0),
(31679, 43228, 100, 0, 1, 4, 1, 57940, 0),
(31679, 43852, 3, 0, 1, 1, 0, 0, 0),
(31679, 45624, 100, 0, 1, 1, 0, 0, 0);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = -195310, `ReqCreatureOrGOId2` = -195214, `ReqSpellCast1` = 66531, `ReqSpellCast2` = 66531 WHERE `entry` = 14142;
DELETE FROM `creature_questrelation` WHERE `quest` = 926;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 926;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 926;
REPLACE INTO `gameobject_questrelation` (`id`, `quest`) VALUES (5620, 926);
DELETE FROM `creature_involvedrelation` WHERE `quest` = 926;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 926;
REPLACE INTO `gameobject_involvedrelation` (`id`, `quest`) VALUES (5619, 926);
DELETE FROM `gameobject_loot_template` WHERE (`entry`=5619);
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(5645, 300033, 0, 1, 1, 2449.44, -1662, 103.127, 0.262, 0, 0, 0.130526, 0.991445, 600, 100, 1),
(5490, 300033, 0, 1, 1, -4696, -946, 501.67, 1.87, 0, 0, 0, 0, 600, 100, 1);
REPLACE INTO `gossip_menu_option` VALUES(4004,1,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` VALUES(4004,2,1,'GOSSIP_OPTION_VENDOR',3,128,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');

-- WDB
UPDATE `gameobject_template` SET `type` = 2, `flags` = 0, `data0` = 0, `data1` = 536 WHERE `entry` = 5619;
UPDATE `gameobject_template` SET `type` = 8 WHERE `entry` = 20969;
UPDATE `gameobject_template` SET `type` = 2, `data0` = 93, `data1` = 972 WHERE `entry` = 65407;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 92252;
UPDATE `gameobject_template` SET `type` = 0, `data1` = 0, `data2` = 999000 WHERE `entry` = 142697;
UPDATE `gameobject_template` SET `type` = 0, `data1` = 0, `data2` = 3000 WHERE `entry` = 143230;
UPDATE `gameobject_template` SET `type` = 2 WHERE `entry` = 144181;
UPDATE `gameobject_template` SET `type` = 10, `data0` = 0, `data1` = 0, `data3` = 3000 WHERE `entry` = 148998;
UPDATE `gameobject_template` SET `type` = 2, `data1` = 2661 WHERE `entry` = 149420;
UPDATE `gameobject_template` SET `type` = 2, `data1` = 2871 WHERE `entry` = 152097;
UPDATE `gameobject_template` SET `faction` = 0 WHERE `entry` = 164729;
UPDATE `gameobject_template` SET `type` = 1, `data0` = 0, `data1` = 1179, `data3` = 0 WHERE `entry` = 175564;
UPDATE `gameobject_template` SET `type` = 1, `data0` = 0, `data1` = 0, `data2` = 3000 WHERE `entry` = 176767;
UPDATE `gameobject_template` SET `type` = 2, `data0` = 0, `data1` = 0, `data2` = 1 WHERE `entry` = 177490;
UPDATE `gameobject_template` SET `type` = 2, `data1` = 5811 WHERE `entry` = 178444;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000 WHERE `entry` = 178927;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000 WHERE `entry` = 178932;
UPDATE `gameobject_template` SET `type` = 1, `data0` = 0, `data1` = 1479, `data2` = 3000 WHERE `entry` = 178935;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000 WHERE `entry` = 178947;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000 WHERE `entry` = 178948;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180422 WHERE `entry` = 178955;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180422 WHERE `entry` = 178956;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180422 WHERE `entry` = 178957;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180422 WHERE `entry` = 178958;
UPDATE `gameobject_template` SET `type` = 6, `data0` = 95, `data1` = 60, `data2` = 20, `data3` = 21650, `data5` = 3, `data10` = 1 WHERE `entry` = 179065;
DELETE FROM `gameobject_loot_template` WHERE (`entry`=179264);
UPDATE `gameobject_template` SET `type` = 1, `faction` = 114, `data0` = 0, `data1` = 0, `data2` = 3000 WHERE `entry` = 179264;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180423 WHERE `entry` = 179436;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180423 WHERE `entry` = 179440;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180423 WHERE `entry` = 179442;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180423 WHERE `entry` = 179444;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180423 WHERE `entry` = 179446;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180423 WHERE `entry` = 179450;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180423 WHERE `entry` = 179454;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 3000, `data3` = 180423 WHERE `entry` = 179458;
UPDATE `gameobject_template` SET `type` = 6, `faction` = 0, `data1` = 0, `data5` = 0 WHERE `entry` = 179557;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 179976;
UPDATE `gameobject_template` SET `type` = 8, `data0` = 4, `data1` = 10, `data2` = 2061 WHERE `entry` = 180337;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 180414;
UPDATE `gameobject_template` SET `type` = 10, `data0` = 1479, `data1` = 0, `data2` = 0, `data3` = 3000, `data4` = 0, `data10` = 24677 WHERE `entry` = 180418;
UPDATE `gameobject_template` SET `type` = 5, `data0` = 0, `data1` = 1 WHERE `entry` = 180449;
UPDATE `gameobject_template` SET `type` = 2, `displayId` = 6421, `data0` = 43, `data3` = 6535 WHERE `entry` = 180574;
UPDATE `gameobject_template` SET `displayId` = 6484 WHERE `entry` = 180660;
DELETE FROM `gameobject_loot_template` WHERE (`entry`=181582);
UPDATE `gameobject_template` SET `type` = 10, `data1` = 0, `data3` = 3000 WHERE `entry` = 181582;
UPDATE `gameobject_template` SET `type` = 10, `displayId` = 6860, `data3` = 3000 WHERE `entry` = 181853;
UPDATE `gameobject_template` SET `type` = 0, `data0` = 0, `data1` = 1670, `data3` = 0 WHERE `entry` = 181928;
UPDATE `gameobject_template` SET `type` = 0, `data0` = 0, `data1` = 1675, `data3` = 0 WHERE `entry` = 182349;
UPDATE `gameobject_template` SET `type` = 0, `data0` = 0, `data1` = 1676, `data3` = 0 WHERE `entry` = 182350;
UPDATE `gameobject_template` SET `type` = 0, `data0` = 0, `data1` = 1678, `data3` = 1 WHERE `entry` = 182521;
UPDATE `gameobject_template` SET `type` = 0, `data0` = 0, `data1` = 0, `data3` = 3000 WHERE `entry` = 183051;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 183266;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 183267;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 183268;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 183269;
DELETE FROM `gameobject_loot_template` WHERE (`entry`=185303);
UPDATE `gameobject_template` SET `type` = 1, `data0` = 1, `data1` = 0, `data3` = 0 WHERE `entry` = 185303;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 185436;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 185456;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 185458;
DELETE FROM `gameobject_loot_template` WHERE (`entry`=185500);
UPDATE `gameobject_template` SET `type` = 10, `data1` = 10961, `data3` = 3000 WHERE `entry` = 185500;
UPDATE `gameobject_template` SET `type` = 0, `data0` = 0, `data1` = 1730 WHERE `entry` = 185519;
UPDATE `gameobject_template` SET `type` = 0, `data3` = 1 WHERE `entry` = 185522;
UPDATE `gameobject_template` SET `type` = 10, `displayId` = 429, `data0` = 57, `data3` = 3000 WHERE `entry` = 185566;
UPDATE `gameobject` SET `spawntimesecs` = 180, `animprogress` = 100 WHERE `guid` = 68744;
DELETE FROM `gameobject_loot_template` WHERE (`entry`=186189);
UPDATE `gameobject_template` SET `type` = 10, `data1` = 0, `data2` = 0, `data3` = 0, `data5` = 1, `data6` = 120, `data10` = 42518 WHERE `entry` = 186189;
DELETE FROM `gameobject_loot_template` WHERE (`entry`=186234);
UPDATE `gameobject_template` SET `type` = 10, `data0` = 1635, `data1` = 0 WHERE `entry` = 186234;
UPDATE `gameobject_template` SET `type` = 1, `data0` = 0, `data2` = 180000 WHERE `entry` = 186569;
UPDATE `gameobject_template` SET `type` = 1, `data0` = 0, `data2` = 180000 WHERE `entry` = 186570;
UPDATE `gameobject_template` SET `type` = 1, `data0` = 0, `data2` = 180000 WHERE `entry` = 186575;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 187371;
UPDATE `gameobject_template` SET `type` = 1, `data2` = 120000 WHERE `entry` = 187867;
UPDATE `gameobject_template` SET `type` = 10, `displayId` = 4891, `data3` = 5000, `data10` = 45833 WHERE `entry` = 187869;
UPDATE `gameobject_template` SET `type` = 10, `displayId` = 4891, `data3` = 5000, `data10` = 45833 WHERE `entry` = 188114;
UPDATE `gameobject_template` SET `type` = 10, `displayId` = 4891, `data3` = 5000, `data10` = 45833 WHERE `entry` = 188115;
UPDATE `gameobject_template` SET `type` = 10, `displayId` = 4891, `data3` = 5000, `data10` = 45833 WHERE `entry` = 188116;
UPDATE `gameobject` SET `spawntimesecs` = 180, `state` = 1 WHERE `id` = 188081;
UPDATE `gameobject_template` SET `type` = 0, `data3` = 0 WHERE `entry` = 188081;
UPDATE `gameobject_template` SET `type` = 0, `data0` = 0, `data1` = 0, `data2` = 600000 WHERE `entry` = 188160;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 188415;
UPDATE `gameobject_template` SET `flags` = 0, `data5` = 1, `data6` = 120 WHERE `entry` = 188666;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 189291;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 189292;
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 190095;
UPDATE `gameobject_template` SET `type` = 0, `data0` = 0, `data1` = 1801, `data2` = 3000, `data3` = 0 WHERE `entry` = 191548;
UPDATE `gameobject_template` SET `type` = 10, `displayId` = 7352, `castBarCaption` = 'Using', `data0` = 1691, `data1` = 13058, `data3` = 3000, `data10` = 62128 WHERE `entry` = 194123;
UPDATE `gameobject_template` SET `type` = 9 WHERE `entry` = 194155;
UPDATE `gameobject_template` SET `type` = 10 WHERE `entry` = 194625;
UPDATE `gameobject_template` SET `type` = 10, `data3` = 3000 WHERE `entry` = 194660;
UPDATE `gameobject_template` SET `type` = 10, `data3` = 3000 WHERE `entry` = 194661;
UPDATE `gameobject_template` SET `type` = 10, `data3` = 3000 WHERE `entry` = 194662;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183972;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183970;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=193019;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=193020;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=190236;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180749;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=192734;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=192741;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=192735;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=192736;
UPDATE `gameobject_template` SET `data2`=60000 WHERE `entry`=190784;
UPDATE `gameobject_template` SET `data2`=25000 WHERE `entry`=188706;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187854;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=192377;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=174849;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=181849;
UPDATE `gameobject_template` SET `data2`=0 WHERE `entry`=176576;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179345;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177255;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177256;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177254;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177250;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177249;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177247;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177248;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177245;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177251;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177253;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177246;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177252;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177203;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=176580;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=176694;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=176579;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=176577;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=176632;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=176633;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=184164;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=176578;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=176901;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177049;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177047;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177048;
UPDATE `gameobject_template` SET `data2`=60000 WHERE `entry`=143979;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=180323;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=101831;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=101834;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=101832;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=101833;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=187909;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177928;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=176594;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=161536;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=150137;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=175185;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=175369;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=175370;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=181199;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=181198;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=181240;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=181242;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=181243;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188578;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188579;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188577;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188572;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188573;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188575;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188574;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188576;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188565;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188566;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188567;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188568;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188570;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188571;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188563;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188562;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188580;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188581;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188582;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188583;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188584;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188585;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188586;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188560;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188561;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=185204;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=185205;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=185203;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=185202;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=181664;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183170;
UPDATE `gameobject_template` SET `data2`=300000 WHERE `entry`=182521;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182502;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182503;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182496;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182501;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182497;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182495;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182500;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182498;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182499;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182493;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182491;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182494;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182492;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182489;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182490;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182486;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182487;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182484;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182488;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=182504;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=175788;
UPDATE `gameobject_template` SET `data2`=10800000 WHERE `entry`=175787;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=37118;
UPDATE `gameobject_template` SET `data2`=12000 WHERE `entry`=161461;
UPDATE `gameobject_template` SET `data2`=0 WHERE `entry`=170570;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=170557;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=170556;
UPDATE `gameobject_template` SET `data2`=0 WHERE `entry`=170559;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=190368;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=170572;
UPDATE `gameobject_template` SET `data2`=0 WHERE `entry`=170558;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=170555;
UPDATE `gameobject_template` SET `data2`=6000 WHERE `entry`=178147;
UPDATE `gameobject_template` SET `data2`=600000 WHERE `entry`=19547;
UPDATE `gameobject_template` SET `data2`=600000 WHERE `entry`=20899;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=191542;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187855;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187871;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187857;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=101851;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=101850;
UPDATE `gameobject_template` SET `data2`=600000 WHERE `entry`=178247;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=176195;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177164;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177165;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177198;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177189;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177188;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177192;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177444;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=177706;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180728;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=150138;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=184912;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=90566;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180723;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180720;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180738;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180736;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180703;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180730;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180708;
UPDATE `gameobject_template` SET `data2`=8000 WHERE `entry`=194560;
UPDATE `gameobject_template` SET `data2`=6000 WHERE `entry`=194264;
UPDATE `gameobject_template` SET `data2`=35000 WHERE `entry`=194915;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=194173;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180058;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180066;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180078;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180070;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180076;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180060;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180072;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180074;
UPDATE `gameobject_template` SET `data2`=1000 WHERE `entry`=103015;
UPDATE `gameobject_template` SET `data2`=0 WHERE `entry`=21118;
UPDATE `gameobject_template` SET `data2`=1000 WHERE `entry`=103016;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180064;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180068;
UPDATE `gameobject_template` SET `data2`=15000 WHERE `entry`=189977;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=190192;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187856;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187858;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187862;
UPDATE `gameobject_template` SET `data2`=180000 WHERE `entry`=186566;
UPDATE `gameobject_template` SET `data2`=180000 WHERE `entry`=186567;
UPDATE `gameobject_template` SET `data2`=180000 WHERE `entry`=186568;
UPDATE `gameobject_template` SET `data2`=180000 WHERE `entry`=186571;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=185899;
UPDATE `gameobject_template` SET `data2`=4000 WHERE `entry`=142036;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=174626;
UPDATE `gameobject_template` SET `data2`=15000 WHERE `entry`=184212;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188569;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=191308;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=191306;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=191310;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=191307;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=191305;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=191309;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=188587;
UPDATE `gameobject_template` SET `data2`=0 WHERE `entry`=191364;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=178386;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=178560;
UPDATE `gameobject_template` SET `data2`=60000 WHERE `entry`=176210;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177307;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=177417;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180514;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=175368;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=175352;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=175353;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=176424;
UPDATE `gameobject_template` SET `data2`=0 WHERE `entry`=175356;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183517;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=185501;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=183294;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183051;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183518;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180041;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180040;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=184246;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=185123;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183401;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183402;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=184320;
UPDATE `gameobject_template` SET `data2`=240000 WHERE `entry`=184383;
UPDATE `gameobject_template` SET `data2`=20000 WHERE `entry`=182012;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=186647;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=186643;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=186642;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=186641;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=186644;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=186646;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=185903;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=194904;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=194914;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=194437;
UPDATE `gameobject_template` SET `data2`=35000 WHERE `entry`=194913;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=194912;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183362;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183363;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179284;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179443;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178389;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179439;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179465;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178929;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179435;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178925;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179285;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178364;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178946;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=101852;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=101853;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=101855;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179441;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178940;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179483;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178945;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178393;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178365;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178388;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=90567;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=142218;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=142219;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=142214;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=142215;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=142217;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=142216;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=175432;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=186645;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=170353;
UPDATE `gameobject_template` SET `data2`=30000 WHERE `entry`=142488;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187870;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187868;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187866;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187864;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187865;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187863;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187872;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187873;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187859;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187874;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187860;
UPDATE `gameobject_template` SET `data2`=120000 WHERE `entry`=187861;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179453;
UPDATE `gameobject_template` SET `data2`=300000 WHERE `entry`=180524;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178107;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178108;
UPDATE `gameobject_template` SET `data2`=180000 WHERE `entry`=186574;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178943;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178944;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179472;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178936;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179467;
UPDATE `gameobject_template` SET `data2`=9999000 WHERE `entry`=181032;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=183450;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=184517;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=181042;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=181221;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=184275;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=184281;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=184453;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=184276;
UPDATE `gameobject_template` SET `data2`=60000 WHERE `entry`=194092;
UPDATE `gameobject_template` SET `data2`=300000 WHERE `entry`=190332;
UPDATE `gameobject_template` SET `data2`=180000 WHERE `entry`=186573;
UPDATE `gameobject_template` SET `data2`=180000 WHERE `entry`=186572;
UPDATE `gameobject_template` SET `data2`=2000 WHERE `entry`=185051;
UPDATE `gameobject_template` SET `data2`=2000 WHERE `entry`=185053;
UPDATE `gameobject_template` SET `data2`=2000 WHERE `entry`=185054;
UPDATE `gameobject_template` SET `data2`=2000 WHERE `entry`=185052;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=104589;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=182060;
UPDATE `gameobject_template` SET `data2`=5000 WHERE `entry`=182061;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179445;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179449;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=178394;
UPDATE `gameobject_template` SET `data2`=9999000 WHERE `entry`=186269;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=191087;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=178965;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=17157;
UPDATE `gameobject_template` SET `data2`=10000 WHERE `entry`=181071;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179513;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179470;
UPDATE `gameobject_template` SET `data2`=1000 WHERE `entry`=176163;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=181247;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=180404;
UPDATE `gameobject_template` SET `data2`=30000000 WHERE `entry`=186622;
UPDATE `gameobject_template` SET `data2`=0 WHERE `entry`=179286;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177213;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177215;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177211;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=177212;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179510;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179509;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179508;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179507;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=17156;
UPDATE `gameobject_template` SET `data2`=3000 WHERE `entry`=179481;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=52176;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=187578;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=184969;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=184967;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=184968;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=184950;
UPDATE `gameobject_template` SET `data3`=45000 WHERE `entry`=186598;
UPDATE `gameobject_template` SET `data3`=3000 WHERE `entry`=188689;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=174623;
UPDATE `gameobject_template` SET `data3`=3000 WHERE `entry`=180860;
UPDATE `gameobject_template` SET `data3`=3000 WHERE `entry`=180862;
UPDATE `gameobject_template` SET `data3`=60000 WHERE `entry`=181672;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=171943;
UPDATE `gameobject_template` SET `data3`=3000 WHERE `entry`=181852;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=174620;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=180515;
UPDATE `gameobject_template` SET `data3`=3000 WHERE `entry`=102413;
UPDATE `gameobject_template` SET `data3`=3000 WHERE `entry`=19534;
UPDATE `gameobject_template` SET `data3`=0 WHERE `entry`=20737;
DELETE FROM npc_trainer WHERE spell in (33943);

-- NeatElves
DELETE FROM `creature` WHERE `guid` in (124433,129512,121100);
UPDATE `creature_template` SET `InhabitType` = '4' WHERE `entry` =26174;
UPDATE `quest_template` SET `PrevQuestId` = '13664' WHERE `entry` =14016;

-- timmit
UPDATE `quest_template` SET `PrevQuestId` = -11789 WHERE `entry` = 11920;

-- virusav
DELETE FROM `areatrigger_involvedrelation` WHERE `quest`=14016;
REPLACE INTO `areatrigger_involvedrelation` SET `id`=5500, `quest`=14016;

-- Forum_FIX
UPDATE `creature_template` SET `mingold` = 1937, `maxgold` = 1937 WHERE `entry` = 16880;
UPDATE `quest_template` SET `ReqSpellCast1` = 0 WHERE `entry` = 9472;
UPDATE `creature_template` SET `minlevel` = 69 WHERE `entry` = 25353;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(124340, 25353, 571, 1, 1, 23145, 0, 3623.69, 5724.94, 78.913, 2.98672, 300, 5, 0, 6387, 7031, 0, 1),
(124341, 25353, 571, 1, 1, 23145, 0, 3580.3, 5686.07, 67.6547, 4.42568, 300, 5, 0, 6387, 7031, 0, 1),
(124342, 25353, 571, 1, 1, 23205, 0, 3646.99, 5668.24, 66.3264, 4.58923, 300, 0, 0, 6387, 7031, 0, 0),
(124343, 25353, 571, 1, 1, 23205, 0, 3725.77, 5602.97, 36.355, 4.2554, 300, 5, 0, 6387, 7031, 0, 1),
(124344, 25353, 571, 1, 1, 23145, 0, 3721.94, 5574, 36.4378, 4.4984, 300, 5, 0, 6387, 7031, 0, 1),
(124345, 25353, 571, 1, 1, 23205, 0, 3594.03, 5468.78, 33.314, 6.20153, 300, 5, 0, 6387, 7031, 0, 1),
(124346, 25353, 571, 1, 1, 23145, 0, 3558.79, 5497.75, 27.4385, 3.47729, 300, 5, 0, 6387, 7031, 0, 1),
(124347, 25353, 571, 1, 1, 23205, 0, 3528.49, 5525.4, 65.2692, 3.95212, 300, 5, 0, 6387, 7031, 0, 1),
(124348, 25353, 571, 1, 1, 23205, 0, 3697.28, 5633.16, 32.7535, 4.60427, 300, 5, 0, 6387, 7031, 0, 1),
(124349, 25353, 571, 1, 1, 23205, 0, 3550.25, 5427.63, 40.2208, 5.5068, 300, 5, 0, 6387, 7031, 0, 1),
(124350, 25353, 571, 1, 1, 23145, 0, 3551.23, 5600.45, 48.7355, 0.237635, 300, 5, 0, 6387, 7031, 0, 1),
(125665, 25353, 571, 1, 1, 23205, 0, 3598.22, 5517.44, 27.1876, 6.27226, 300, 5, 0, 6387, 7031, 0, 1),
(125666, 25353, 571, 1, 1, 23145, 0, 3569.9, 5498.63, 27.1143, 1.13775, 300, 5, 0, 6387, 7031, 0, 1),
(125667, 25353, 571, 1, 1, 23205, 0, 3657.36, 5561.18, 33.1876, 1.99075, 300, 5, 0, 6387, 7031, 0, 1),
(125668, 25353, 571, 1, 1, 23145, 0, 3520.88, 5569.93, 63.4844, 4.07407, 300, 5, 0, 6387, 7031, 0, 1),
(125669, 25353, 571, 1, 1, 23205, 0, 3533.51, 5630.4, 53.6992, 5.13671, 300, 5, 0, 6387, 7031, 0, 1),
(125670, 25353, 571, 1, 1, 23145, 0, 3641.36, 5533.7, 32.6406, 2.3363, 300, 5, 0, 6387, 7031, 0, 1),
(125671, 25353, 571, 1, 1, 23205, 0, 3566.26, 5689.84, 68.297, 5.5185, 300, 5, 0, 6387, 7031, 0, 1),
(125672, 25353, 571, 1, 1, 23145, 0, 3674.27, 5710.58, 65.486, 1.98595, 300, 5, 0, 6387, 7031, 0, 1);
UPDATE `creature` SET `spawntimesecs` = 300 WHERE `id` = 25353;

-- timmit
UPDATE `creature_template` SET `gossip_menu_id` = 25248 WHERE `entry` = 25248;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(25248,12529);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2) VALUES  
(25248,0,0,'I have reason to believe your involvement in the activities of cultists.',1,1,0,25248,9,11794,0,1,46078,0);
REPLACE INTO `gossip_menu_option`  VALUES (25248,'1','1','I want to browse your goods.','3','128','0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE into `gossip_scripts` values 
(25248,1,0,0,0,2000001205,0,0,0,0),
(25248,3,0,0,0,2000001206,0,0,0,0),
(25248,4,2,14,14,0,0,0,0,0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001205','Well...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001206','Well, then how, yes? I will not surrender without a fight!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE `creature_template` SET `gossip_menu_id` = 25827 WHERE `entry` = 25827;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(25827,12528);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2) VALUES  
(25827,0,0,'What do you know about the Cult of the Damned?',1,1,0,25827,9,11794,0,1,46078,0);
REPLACE INTO `gossip_scripts` values 
(25827,2,0,0,0,2000001207,0,0,0,0),
(25827,4,2,14,14,0,0,0,0,0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001207','You do not know with whom you deal, $C! You play with death!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE `creature_template` SET `gossip_menu_id` = 25828 WHERE `entry` = 25828;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(25828,12530);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2) VALUES  
(25828,0,0,'How long do you work on the Cult of the Damned?',1,1,0,25828,9,11794,0,1,46078,0);
REPLACE INTO `gossip_scripts` values 
(25828,2,0,0,0,2000001208,0,0,0,0),
(25828,4,2,14,14,0,0,0,0,0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001208','Do come to an end this foolish farce ... Arthas, give me strength!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE creature SET position_x = '2483.415283', position_y = '5205.181152', position_z = '30.848118', orientation = '1.990283' WHERE guid = '96397';
UPDATE creature SET position_x = '2484.185059', position_y = '5210.840332', position_z = '30.481958', orientation = '0.509806' WHERE guid = '96395';
UPDATE creature SET position_x = '2482.249268', position_y = '5213.601074', position_z = '30.226858', orientation = '0.450901' WHERE guid = '117334';
UPDATE creature SET position_x = '2495.727783', position_y = '5225.523926', position_z = '31.649809', orientation = '1.114563' WHERE guid = '96399';
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = 25313;
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = 25227;

-- Forum_FIX
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 6238;
UPDATE `creature_template` SET `unit_flags` = 262148, `flags_extra` = 2 WHERE `entry` = 6249;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(75959, 28861, 571, 1, 1, 25734, 0, 6320.23, -4281.21, 448.655, 3.19395, 360, 0, 0, 11379, 0, 0, 0),
(75960, 28861, 571, 1, 1, 25735, 0, 6195.9, -4387.15, 448.729, 3.64884, 360, 0, 0, 11379, 0, 0, 0),
(75961, 28861, 571, 1, 1, 25734, 0, 6387.77, -4257.59, 461.721, 3.24631, 360, 0, 0, 11379, 0, 0, 0),
(75962, 28861, 571, 1, 1, 25734, 0, 6225.81, -4181.87, 443.752, 0.446625, 360, 0, 0, 11379, 0, 0, 0),
(75963, 28861, 571, 1, 1, 25734, 0, 6326.9, -4241.21, 449.416, 2.79253, 360, 0, 0, 11379, 0, 0, 0),
(75964, 28861, 571, 1, 1, 25735, 0, 6226.21, -4130.04, 447.81, 4.76475, 360, 0, 0, 11379, 0, 0, 0),
(75965, 28861, 571, 1, 1, 25734, 0, 6225.51, -4243.46, 436.644, 0.663225, 360, 0, 0, 11379, 0, 0, 0),
(75966, 28861, 571, 1, 1, 25735, 0, 6241.34, -4120.21, 449.289, 4.93928, 360, 0, 0, 11379, 0, 0, 0),
(75967, 28861, 571, 1, 1, 25734, 0, 6247.58, -4246.01, 436.991, 3.12414, 360, 0, 0, 11379, 0, 0, 0),
(75968, 28861, 571, 1, 1, 25735, 0, 6259.81, -4346.04, 448.369, 0.785398, 360, 0, 0, 11379, 0, 0, 0),
(75969, 28861, 571, 1, 1, 25735, 0, 6197.58, -4345.51, 447.968, 0.872665, 360, 0, 0, 11379, 0, 0, 0),
(75970, 28861, 571, 1, 1, 25735, 0, 6327.64, -4098.53, 464.409, 3.97935, 360, 0, 0, 11379, 0, 0, 0),
(75971, 28861, 571, 1, 1, 25735, 0, 6268.46, -4217.19, 449.308, 6.26573, 360, 0, 0, 11379, 0, 0, 0),
(75972, 28861, 571, 1, 1, 25734, 0, 6307.09, -4154.06, 450.727, 4.24115, 360, 0, 0, 11379, 0, 0, 0),
(75973, 28861, 571, 1, 1, 25735, 0, 6305.8, -4385.9, 454.504, 4.76185, 360, 0, 0, 11379, 0, 0, 0),
(75974, 28861, 571, 1, 1, 25734, 0, 6168.3, -4319.38, 435.477, 2.07661, 360, 0, 0, 11379, 0, 0, 0),
(75975, 28861, 571, 1, 1, 25735, 0, 6353.58, -4353.07, 459.117, 5.75047, 360, 0, 0, 11379, 0, 0, 0),
(75976, 28861, 571, 1, 1, 25734, 0, 6294.32, -4346.27, 450.005, 1.02974, 360, 0, 0, 11379, 0, 0, 0),
(94738, 28861, 571, 1, 1, 25734, 0, 6170.28, -4341.32, 452.541, 1.42986, 360, 0, 0, 11379, 0, 0, 0),
(61389, 28861, 571, 1, 1, 25735, 0, 6241.3, -4174.64, 449.169, 1.65806, 360, 0, 0, 11379, 0, 0, 0),
(61431, 28861, 571, 1, 1, 25735, 0, 6273.99, -4126.23, 449.008, 4.39823, 360, 0, 0, 11379, 0, 0, 0),
(61430, 28861, 571, 1, 1, 25735, 0, 6388.68, -4300.95, 464.201, 2.42601, 360, 0, 0, 11379, 0, 0, 0),
(43737, 28861, 571, 1, 1, 25735, 0, 6185.74, -4291.29, 444.553, 5.39307, 360, 0, 0, 11379, 0, 0, 0),
(44036, 28861, 571, 1, 1, 25734, 0, 6252.96, -4187, 442.62, 4.11898, 360, 0, 0, 11379, 0, 0, 0),
(44391, 28861, 571, 1, 1, 25734, 0, 6329.98, -4189.23, 450.556, 3.00197, 360, 0, 0, 11379, 0, 0, 0),
(44464, 28861, 571, 1, 1, 25735, 0, 6329.46, -4267.29, 453.674, 4.76645, 360, 0, 0, 11379, 0, 0, 0),
(44755, 28861, 571, 1, 1, 25734, 0, 6228.9, -4314.38, 449.757, 2.00713, 360, 0, 0, 11379, 0, 0, 0),
(92509, 28861, 571, 1, 1, 25734, 0, 6164.18, -4167.76, 441.093, 5.29653, 360, 0, 0, 11379, 0, 0, 0),
(40645, 28861, 571, 1, 1, 25735, 0, 6243.88, -4383.06, 448.815, 5.65487, 360, 0, 0, 11379, 0, 0, 0),
(78916, 28861, 571, 1, 1, 25734, 0, 6222.88, -4368.06, 448.793, 0.715585, 360, 0, 0, 11379, 0, 0, 0),
(87372, 28861, 571, 1, 1, 25734, 0, 6387.56, -4176.65, 461.739, 2.30248, 360, 0, 0, 11379, 0, 0, 0),
(87373, 28861, 571, 1, 1, 25734, 0, 6265.77, -4382.88, 448.496, 3.33845, 360, 0, 0, 11379, 0, 0, 0),
(52981, 28861, 571, 1, 1, 25734, 0, 6238.97, -4343.22, 447.64, 1.20428, 360, 0, 0, 11379, 0, 0, 0),
(52989, 28861, 571, 1, 1, 25735, 0, 6265.53, -4364.8, 448.813, 3.05433, 360, 0, 0, 11379, 0, 0, 0);

-- Chaosua
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` IN (30315,30316,30317,30318);
DELETE FROM `creature` WHERE `guid` IN (129271,129272,117521,129269,129270);

-- timmit
UPDATE `creature_template` SET `faction_A` = 1973, `faction_H` = 1973 WHERE `entry` = 25617;
UPDATE `creature_template` SET `unit_flags` = 524288 WHERE `entry` = 25617;
UPDATE `creature_template` SET `dynamicflags` = 36 WHERE `entry` = 26172;
DELETE FROM `creature` WHERE `id`=26189;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(114742, 26189, 571, 1, 1, 0, 350, 3333.74, 3700.24, 32.575, 0.541052, 360, 0, 0, 9082, 2991, 0, 2),
(114743, 26189, 571, 1, 1, 0, 350, 3341.76, 3675.54, 32.4574, 5.7984, 360, 0, 0, 9082, 2991, 0, 2); 
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 26189;
DELETE FROM `waypoint_data` WHERE `id` IN (1147420,1147430);
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values
('1147420','1','3341.99','3707.02','32.3043','0','0','0','100','0'),
('1147420','2','3354.44','3713.67','21.5148','0','0','0','100','0'),
('1147420','3','3367.06','3718.89','21.841','0','0','0','100','0'),
('1147420','4','3380.55','3712.53','22.3042','0','0','0','100','0'),
('1147420','5','3390.88','3703.1','21.7369','0','0','0','100','0'),
('1147430','1','3343.41','3674.67','32.4334','0','0','0','100','0'),
('1147430','2','3344.73','3674.26','32.1447','0','0','0','100','0'),
('1147430','3','3358.02','3669.79','20.7704','0','0','0','100','0'),
('1147430','4','3371.65','3661.5','21.0764','0','0','0','100','0'),
('1147430','5','3375.31','3641.22','21.178','0','0','0','100','0'),
('1147430','6','3366.6','3632.27','21.2235','0','0','0','100','0');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 26189;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=26189);
REPLACE INTO `creature_ai_scripts` VALUES 
(2618951, 26189, 1, 0, 100, 0, 10000, 10000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `id` = 26189;
UPDATE `creature` SET `position_x` = 3295.89, `position_y` = 3682.26, `position_z` = 32.4681, `orientation` = 1.62269, `spawntimesecs` = 30 WHERE `guid` = 117219;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 26170;
DELETE FROM `waypoint_data` WHERE `id`=1172190;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('1172190','1','3295.88','3682.05','32.4681','0','0','699','100','0');
REPLACE INTO `waypoint_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`, `guid`) values('699','0','15','46685','0','0','0','0','0','0','849');
INSERT IGNORE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '46685','1','26173');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 117219;
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '26191','46978','11956','1','11956','1');
delete from creature where id in (26224,26225);
UPDATE `event_scripts` SET `delay`='1' WHERE `id`='17430';
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 26225;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=26225);
REPLACE INTO `creature_ai_scripts` VALUES 
(2622551, 26225, 11, 0, 100, 0, 0, 0, 0, 0, 1, -262251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_texts`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES ( ' -262251','You have no right to take the talisman, $N! You will pay for their sins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0','ytdb');
UPDATE `creature_template` SET `unit_flags` = 2, `flags_extra` = 2 WHERE `entry` = 26189;

-- NeatElves
UPDATE `creature_loot_template` SET `lootcondition` = '0',`condition_value1` = '0',`condition_value2` = '0' WHERE `entry` =10738 AND `item` =12842;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(44868, 188359, 571, 1, 1, 2668.23, 940.913, -31.5751, 2.31675, 0, 0, 0.916154, 0.400827, 300, 100, 1),
(44869, 188359, 571, 1, 1, 2657.07, 958.048, -32.3983, 1.09546, 0, 0, 0.52075, 0.853709, 300, 100, 1),
(44870, 188359, 571, 1, 1, 2652.11, 990.645, -42.4058, 1.46695, 0, 0, 0.669456, 0.742852, 300, 100, 1),
(44871, 188359, 571, 1, 1, 2616.53, 949.339, -57.3352, 4.10118, 0, 0, 0.887091, -0.461595, 300, 100, 1),
(44872, 188359, 571, 1, 1, 2557.4, 915.842, -62.9746, 3.2176, 0, 0, 0.999278, -0.037997, 300, 100, 1),
(44873, 188359, 571, 1, 1, 2578.05, 866.348, -58.1432, 5.21802, 0, 0, 0.507762, -0.861497, 300, 100, 1),
(44874, 188359, 571, 1, 1, 2633.59, 837.912, -44.0363, 6.16049, 0, 0, 0.0613082, -0.998119, 300, 100, 1),
(44875, 188359, 571, 1, 1, 2674.07, 816.578, -37.5472, 0.0288879, 0, 0, 0.0144435, 0.999896, 300, 100, 1),
(44876, 188359, 571, 1, 1, 2719.72, 805.148, -33.9855, 0.139629, 0, 0, 0.0697577, 0.997564, 300, 100, 1),
(44877, 188359, 571, 1, 1, 2700.94, 751.69, -30.0886, 4.74363, 0, 0, 0.695975, -0.718066, 300, 100, 1),
(44878, 188359, 571, 1, 1, 2620.57, 690.258, -51.3614, 4.12709, 0, 0, 0.881036, -0.47305, 300, 100, 1),
(44879, 188359, 571, 1, 1, 2542.98, 712.687, -75.0909, 2.72594, 0, 0, 0.978482, 0.206334, 300, 100, 1),
(44880, 188359, 571, 1, 1, 2502.14, 796.921, -78.9287, 1.69471, 0, 0, 0.749532, 0.661968, 300, 100, 1),
(10121, 188359, 571, 1, 1, 2521.74, 853.014, -72.0398, 0.91481, 0, 0, 0.441621, 0.897202, 300, 100, 1),
(10137, 188359, 571, 1, 1, 2544.4, 1004.46, -64.4455, 1.22269, 0, 0, 0.573968, 0.818878, 300, 100, 1),
(10140, 188359, 571, 1, 1, 2580.23, 1085.85, -36.7695, 0.195386, 0, 0, 0.0975376, 0.995232, 300, 100, 1),
(1021, 188359, 571, 1, 1, 2615.71, 1143.43, -17.395, 0.958008, 0, 0, 0.460895, 0.887454, 300, 100, 1),
(10214, 188359, 571, 1, 1, 2658.44, 1151.66, -9.85441, 3.72732, 0, 0, 0.957422, -0.288694, 300, 100, 1),
(10369, 188359, 571, 1, 1, 2593.52, 1089.92, -32.8355, 3.25294, 0, 0, 0.998451, -0.0556447, 300, 100, 1),
(1043, 188359, 571, 1, 1, 2618.37, 1020.78, -43.9073, 0.401944, 0, 0, 0.199622, 0.979873, 300, 100, 1);
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = '30317',`ReqCreatureOrGOId3` = '30316' WHERE `entry` =12986;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(113208, 30317, 571, 1, 1, 0, 0, 7498.68, -1899.41, 1473.61, 0.132902, 600, 0, 0, 1, 0, 0, 0);

-- timmit
UPDATE `quest_template` SET `PrevQuestId` = 11708 WHERE `entry` in (11710,11704,11645);
UPDATE `quest_template` SET `PrevQuestId` = 11694 WHERE `entry` in (11697,11698);
UPDATE `quest_template` SET `CompleteScript` = 11699 WHERE `entry` = 11699;
DELETE FROM `quest_end_scripts` WHERE `id`=11699;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(11699, 1, 1, 26, 0, '0', 0, 0, 0, 0),
(11699, 2, 0, 0, 0, '2000001209', 0, 0, 0, 0),
(11699, 4, 15, 45878, 0, '0', 0, 0, 0, 0),
(11699, 10, 1, 13, 0, '0', 0, 0, 0, 0),
(11699, 11, 0, 0, 0, '2000001210', 0, 0, 0, 0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001209','OK, $N, begin. Fingers crossed arms, legs, eyes, and that you are there you can still cross!...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001210','Oh, no ... not worked! Somehow I feel ... easier.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE `quest_template` SET `SrcSpell` = 45328 WHERE `entry` = 11571;

-- NeatElves
REPLACE INTO `creature_ai_scripts` VALUES ('3031851', '30318', '8', '0', '100', '1', '56523', '-1', '1000', '1000', '11', '56535', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12986');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '30318';
REPLACE INTO `creature_ai_scripts` VALUES ('3031751', '30317', '8', '0', '100', '1', '56523', '-1', '1000', '1000', '11', '56533', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12986');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '30317';
REPLACE INTO `creature_ai_scripts` VALUES ('3031651', '30316', '8', '0', '100', '1', '56523', '-1', '1000', '1000', '11', '56534', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12986');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '30316';
REPLACE INTO `creature_ai_scripts` VALUES ('3031551', '30315', '8', '0', '100', '1', '56523', '-1', '1000', '1000', '11', '56532', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12986');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '30315';
UPDATE `creature` SET `modelid` = '0' WHERE `guid` =104469;
REPLACE INTO `creature_ai_scripts` VALUES ('3031351', '30313', '11', '0', '100', '0', '0', '0', '0', '0', '11', '56523', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '30313';
UPDATE `creature_ai_scripts` SET `action1_type` = '11',`action1_param1` = '56515',`action1_param3` = '6' WHERE `id` =3027352;
UPDATE creature_template SET flags_extra = flags_extra | 128 | 64 WHERE entry = 18225;
DELETE FROM `creature_questrelation` WHERE `quest` IN (7788, 7789, 7871, 7872, 7873, 7874, 7875, 7876, 7886, 7887, 7888, 7921, 7922, 7923, 7924, 7925, 8290, 8291, 8292, 8293, 8294, 8296);
UPDATE `creature` SET `spawndist` = '5',`MovementType` = '1' WHERE `id` =28158;
UPDATE `creature` SET `spawndist` = '5',`MovementType` = '1' WHERE `id` =29981;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '28316',`ReqSpellCast1` = '0' WHERE `entry` =12568;
DELETE FROM `creature_template_addon` WHERE `entry`=28156; 
REPLACE INTO `creature_template_addon` (`entry`,`bytes1`,`emote`) VALUES (28156,7,65); 
UPDATE `spell_script_target` SET `type` = '1' WHERE `entry` =51276 AND `type` =2 AND `targetEntry` =28156; 
UPDATE `creature` SET `DeathState`=0 WHERE `id`=28156;
UPDATE `creature_template` SET `dynamicflags` = '32',`flags_extra` = '2' WHERE `entry` =28156;
REPLACE INTO `creature_ai_scripts` VALUES ('2815651', '28156', '8', '0', '100', '1', '51276', '-1', '0', '0', '11', '51279', '6', '22', '0', '0', '0', '0', '41', '0', '0', '0', 'ytdb-q12568');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '28156';
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-18' WHERE `entry` =29753 AND `item` =42106;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-13' WHERE `entry` =29590 AND `item` =42106;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-10' WHERE `entry` =23750 AND `item` =42106;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-10' WHERE `entry` =29755 AND `item` =42106;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-3' WHERE `entry` =28378 AND `item` =42106;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-2' WHERE `entry` =23689 AND `item` =42106;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-1.3' WHERE `entry` =23688 AND `item` =42106;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(9992, 1475, 0, 1, 1, 0, 0, -3702.73, -875.307, 10.8532, 2.15864, 1146, 0, 0, 3184, 0, 0, 0),(9965, 1434, 0, 1, 1, 0, 0, -3768.53, -816.604, 11.8501, 4.10643, 1020, 0, 0, 2790, 0, 0, 0);

-- timmit
DELETE FROM `npc_vendor` WHERE (`entry`=25206) AND (`item`=36784);
REPLACE INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (25206, 36784, 1, 3600, 2418);
UPDATE `creature_template` SET `gossip_menu_id` = 25206 WHERE `entry` = 25206;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES (25206,12344);
REPLACE INTO `gossip_menu_option` VALUES (25206,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0'),
(25206,'1','1','I want to browse your goods.','3','128','0','0','0','0','0',NULL,8,11559,'0','0','0','0','0','0','0'),
(25206,'2','1','GOSSIP_OPTION_ARMORER','15','4096','0','0','0','0','0',NULL,8,11559,'0','0','0','0','0','0','0');
UPDATE `quest_template` SET `PrevQuestId` = 11559 WHERE `entry` in (11561,11560);
DELETE FROM `waypoint_data` WHERE `id`=1172190;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values('1172190','1','3295.89','3682.26','32.4681','60000','0','1','100','0');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 117219;
UPDATE `creature_template` SET `unit_flags` = 537137664, `dynamicflags` = 32, `type_flags` = 128, `flags_extra` = 2 WHERE `entry` = 26172;
UPDATE `creature_template` SET `gossip_menu_id` = 26117 WHERE `entry` = 26117;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES (26117,12566);
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES (50023,12590);
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES (50024,12593);
REPLACE INTO `gossip_menu_option` VALUES(26117,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(26117,1,0,'What caused the conflict?',1,1,50023,0,0,0,0);
REPLACE INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(50023,1,0,'Who is Malygos?',1,1,50024,0,0,0,0);
UPDATE creature SET position_x = '3593.778809', position_y = '6652.693359', position_z = '196.024918', orientation = '6.279171' WHERE guid = '96734';
UPDATE creature SET position_x = '3590.742188', position_y = '6656.432129', position_z = '195.791794', orientation = '1.641395' WHERE guid = '96735';
UPDATE creature SET position_x = '3590.745850', position_y = '6647.514160', position_z = '195.579880', orientation = '4.715445' WHERE guid = '96736';
DELETE FROM creature WHERE guid = '114722';
DELETE FROM creature_addon WHERE guid = '114722';
DELETE FROM waypoint_data WHERE id = '1147220';
DELETE FROM game_event_creature WHERE guid = '114722';
DELETE FROM game_event_model_equip WHERE guid = '114722';
UPDATE creature SET position_x = '3574.904053', position_y = '6672.680664', position_z = '195.118286', orientation = '5.464708' WHERE guid = '96737';
UPDATE `creature_template` SET `spell2` = 0 WHERE `entry` = 19190;
UPDATE `creature_template` SET `spell2` = 0 WHERE `entry` = 14483;
UPDATE `creature_template` SET `gossip_menu_id` = 25291 WHERE `entry` = 25291;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(25291,13426);
REPLACE INTO `gossip_menu_option` VALUES(25291,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(25291,1,0,'I want to breath underwater, Garren',1,1,0,25291,9,11582,0);
REPLACE INTO `gossip_scripts` values 
(25291,0,15,52909,1,0,0,0,0,0);
UPDATE `creature_template` SET `gossip_menu_id` = 26206 WHERE `entry` = 26206;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(26206,12576);
REPLACE INTO `gossip_menu_option` VALUES(26206,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(26206,1,0,'I am ready to fight with Saragosa!',1,1,0,26206,9,11957,0),
(26206,2,0,'Keristrasza, I end from here. Please, take me back for a  Transitus Shield.',1,1,0,50019,9,11967,0);
REPLACE INTO `gossip_scripts` values 
(26206,0,15,46772,1,0,0,0,0,0),
(50019,0,15,46824,1,0,0,0,0,0);
REPLACE INTO `spell_target_position`(`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES ( '46824','571','3573.50','6651.51','195.18','3.42');
UPDATE `creature_template` SET `spell1` = 0, `spell2` = 0 WHERE `entry` = 26206;
UPDATE `quest_template` SET `SrcSpell` = 67591 WHERE `entry` = 11625;

-- Kirix
DELETE FROM gameobject WHERE guid = '40082';
REPLACE INTO gameobject VALUES ( 40082, 184729, 530, 1,1,1315.16, 6689.47, -18.3675, 3.1487, 0, 0, 0.999994, -0.00355271, 300, 100, 1);
DELETE FROM `event_scripts` WHERE `id`='13685';
REPLACE INTO `event_scripts` VALUES ('13685', '1', '10', '21319', '900000', '0', '1326.51', '6691.53', '-20.3344', '3.29793');
INSERT IGNORE INTO `spell_script_target` (`entry`,`type`,`targetEntry`) VALUES ('38729','1','22288');

-- NeatElves
UPDATE creature SET position_x = '-4914.359863', position_y = '-976.109985', position_z = '501.453003', orientation = '1.937310' WHERE guid = '9437';

-- timmit
DELETE FROM `creature` WHERE `id`=25651;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(91059, 25651, 571, 1, 1, 0, 0, 2573.59, 5461.31, 35.6096, 0.842474, 300, 0, 0, 5588, 6882, 0, 0),
(81187, 25651, 571, 1, 1, 0, 0, 2583.8, 5471.41, 35.9108, 4.02334, 300, 0, 0, 5588, 6882, 0, 0),
(117251, 25651, 571, 1, 1, 0, 0, 2456.49, 5391.74, 26.7912, 4.05351, 300, 0, 0, 5588, 6882, 0, 0),
(117250, 25651, 571, 1, 1, 0, 0, 2501.7, 5449.23, 30.3848, 2.10304, 300, 0, 0, 5588, 6882, 0, 0),
(117249, 25651, 571, 1, 1, 0, 0, 2494.41, 5460.98, 30.4535, 5.34281, 300, 0, 0, 5588, 6882, 0, 0),
(125599, 25651, 571, 1, 1, 0, 0, 2583.62, 5461.46, 35.6743, 2.35201, 300, 0, 0, 6387, 7031, 0, 0),
(118184, 25651, 571, 1, 1, 0, 0, 2573.72, 5471.57, 35.8392, 5.41899, 300, 0, 0, 6387, 7031, 0, 0),
(118201, 25651, 571, 1, 1, 0, 0, 2503.99, 5458.61, 29.5852, 3.60708, 300, 0, 0, 6387, 7031, 0, 0),
(118202, 25651, 571, 1, 1, 0, 0, 2492.14, 5451.16, 29.6841, 0.50868, 300, 0, 0, 6387, 7031, 0, 0),
(125593, 25651, 571, 1, 1, 0, 0, 2463.92, 5380.62, 26.6479, 3.61683, 300, 0, 0, 5588, 6882, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=25651);

-- AleksVip
DELETE FROM gameobject WHERE guid = '42765';
DELETE FROM game_event_gameobject WHERE guid = '42765';
DELETE FROM gameobject WHERE guid = '42773';
DELETE FROM game_event_gameobject WHERE guid = '42773';

-- Forum_FIX
UPDATE `creature_template` SET `mingold` = 7000, `maxgold` = 7000 WHERE `entry` = 21516;
UPDATE `creature_template` SET `mingold` = 5162, `maxgold` = 5162 WHERE `entry` = 21059;
UPDATE `creature_template` SET `mingold` = 6494, `maxgold` = 6494 WHERE `entry` = 20516;
UPDATE `creature_template` SET `mingold` = 1776, `maxgold` = 1776 WHERE `entry` = 20218;
UPDATE `creature_template` SET `mingold` = 3750, `maxgold` = 3750 WHERE `entry` = 21305;
UPDATE `creature_template` SET `mingold` = 6659, `maxgold` = 6659 WHERE `entry` = 21878;
UPDATE `creature_template` SET `mingold` = 1666, `maxgold` = 1666 WHERE `entry` = 21852;
UPDATE `creature_template` SET `mingold` = 18439, `maxgold` = 18439 WHERE `entry` = 15203;
UPDATE `creature_template` SET `mingold` = 15423, `maxgold` = 15423 WHERE `entry` = 15305;
UPDATE `creature_template` SET `mingold` = 9376, `maxgold` = 9376 WHERE `entry` = 16880;
UPDATE `creature_template` SET `mingold` = 7833, `maxgold` = 7833 WHERE `entry` = 16968;
UPDATE `creature_template` SET `mingold`=98,`maxgold`=312 WHERE `entry`=487;
UPDATE `creature_template` SET `mingold`=124,`maxgold`=404 WHERE `entry`=495;
UPDATE `creature_template` SET `mingold`=0,`maxgold`=0 WHERE `entry`=832;
UPDATE `creature_template` SET `mingold`=152,`maxgold`=304 WHERE `entry`=886;
UPDATE `creature_template` SET `mingold`=156,`maxgold`=312 WHERE `entry`=887;
UPDATE `creature_template` SET `mingold`=10,`maxgold`=30 WHERE `entry`=1547;
UPDATE `creature_template` SET `mingold`=84,`maxgold`=174 WHERE `entry`=1871;
UPDATE `creature_template` SET `mingold`=24,`maxgold`=60 WHERE `entry`=1946;
UPDATE `creature_template` SET `mingold`=0,`maxgold`=0 WHERE `entry`=2310;
UPDATE `creature_template` SET `mingold`=132,`maxgold`=272 WHERE `entry`=2359;
UPDATE `creature_template` SET `mingold`=148,`maxgold`=296 WHERE `entry`=2470;
UPDATE `creature_template` SET `mingold`=108,`maxgold`=300 WHERE `entry`=2475;
UPDATE `creature_template` SET `mingold`=124,`maxgold`=248 WHERE `entry`=2479;
UPDATE `creature_template` SET `mingold`=152,`maxgold`=312 WHERE `entry`=2592;
UPDATE `creature_template` SET `mingold`=148,`maxgold`=312 WHERE `entry`=2735;
UPDATE `creature_template` SET `mingold`=152,`maxgold`=312 WHERE `entry`=2760;
UPDATE `creature_template` SET `mingold`=152,`maxgold`=312 WHERE `entry`=2761;
UPDATE `creature_template` SET `mingold`=152,`maxgold`=312 WHERE `entry`=2762;
UPDATE `creature_template` SET `mingold`=9,`maxgold`=42 WHERE `entry`=3102;
UPDATE `creature_template` SET `mingold`=133,`maxgold`=410 WHERE `entry`=3501;
UPDATE `creature_template` SET `mingold`=18,`maxgold`=49 WHERE `entry`=3626;
UPDATE `creature_template` SET `mingold`=480,`maxgold`=1000 WHERE `entry`=3863;
UPDATE `creature_template` SET `mingold`=78,`maxgold`=162 WHERE `entry`=4035;
UPDATE `creature_template` SET `mingold`=69,`maxgold`=144 WHERE `entry`=4036;
UPDATE `creature_template` SET `mingold`=78,`maxgold`=162 WHERE `entry`=4038;
UPDATE `creature_template` SET `mingold`=128,`maxgold`=264 WHERE `entry`=4130;
UPDATE `creature_template` SET `mingold`=136,`maxgold`=280 WHERE `entry`=4131;
UPDATE `creature_template` SET `mingold`=132,`maxgold`=272 WHERE `entry`=4133;
UPDATE `creature_template` SET `mingold`=105,`maxgold`=288 WHERE `entry`=4311;
UPDATE `creature_template` SET `mingold`=144,`maxgold`=296 WHERE `entry`=4676;
UPDATE `creature_template` SET `mingold`=140,`maxgold`=510 WHERE `entry`=4923;
UPDATE `creature_template` SET `mingold`=140,`maxgold`=544 WHERE `entry`=4924;
UPDATE `creature_template` SET `mingold`=161,`maxgold`=566 WHERE `entry`=5090;
UPDATE `creature_template` SET `mingold`=137,`maxgold`=509 WHERE `entry`=5091;
UPDATE `creature_template` SET `mingold`=167,`maxgold`=507 WHERE `entry`=5093;
UPDATE `creature_template` SET `mingold`=149,`maxgold`=493 WHERE `entry`=5094;
UPDATE `creature_template` SET `mingold`=29,`maxgold`=104 WHERE `entry`=5676;
UPDATE `creature_template` SET `mingold`=62,`maxgold`=196 WHERE `entry`=5731;
UPDATE `creature_template` SET `mingold`=153,`maxgold`=571 WHERE `entry`=6010;
UPDATE `creature_template` SET `mingold`=94,`maxgold`=291 WHERE `entry`=6073;
UPDATE `creature_template` SET `mingold`=520,`maxgold`=1040 WHERE `entry`=6231;
UPDATE `creature_template` SET `mingold`=2808,`maxgold`=2808 WHERE `entry`=6239;
UPDATE `creature_template` SET `mingold`=78,`maxgold`=162 WHERE `entry`=6240;
UPDATE `creature_template` SET `mingold`=22,`maxgold`=55 WHERE `entry`=6778;
UPDATE `creature_template` SET `mingold`=110,`maxgold`=441 WHERE `entry`=7012;
UPDATE `creature_template` SET `mingold`=48,`maxgold`=48 WHERE `entry`=7050;
UPDATE `creature_template` SET `mingold`=50,`maxgold`=50 WHERE `entry`=7067;
UPDATE `creature_template` SET `mingold`=66,`maxgold`=132 WHERE `entry`=7287;
UPDATE `creature_template` SET `mingold`=140,`maxgold`=280 WHERE `entry`=7296;
UPDATE `creature_template` SET `mingold`=75,`maxgold`=150 WHERE `entry`=7310;
UPDATE `creature_template` SET `mingold`=140,`maxgold`=280 WHERE `entry`=7349;
UPDATE `creature_template` SET `mingold`=43,`maxgold`=61 WHERE `entry`=10896;
UPDATE `creature_template` SET `mingold`=41,`maxgold`=59 WHERE `entry`=10761;
UPDATE `creature_template` SET `mingold`=32,`maxgold`=47 WHERE `entry`=10760;
UPDATE `creature_template` SET `mingold`=34,`maxgold`=50 WHERE `entry`=10759;
UPDATE `creature_template` SET `mingold`=122,`maxgold`=408 WHERE `entry`=7730;
UPDATE `creature_template` SET `mingold`=75,`maxgold`=150 WHERE `entry`=7849;
UPDATE `creature_template` SET `mingold`=148,`maxgold`=296 WHERE `entry`=8310;
UPDATE `creature_template` SET `mingold`=156,`maxgold`=495 WHERE `entry`=8444;
UPDATE `creature_template` SET `mingold`=40,`maxgold`=40 WHERE `entry`=8477;
UPDATE `creature_template` SET `mingold`=196,`maxgold`=598 WHERE `entry`=8558;
UPDATE `creature_template` SET `mingold`=163,`maxgold`=532 WHERE `entry`=8596;
UPDATE `creature_template` SET `mingold`=75,`maxgold`=150 WHERE `entry`=8856;
UPDATE `creature_template` SET `mingold`=0,`maxgold`=0 WHERE `entry`=8996;
UPDATE `creature_template` SET `mingold`=1938,`maxgold`=4060 WHERE `entry`=10408;
UPDATE `creature_template` SET `mingold`=14,`maxgold`=50 WHERE `entry`=10721;
UPDATE `creature_template` SET `mingold`=84,`maxgold`=174 WHERE `entry`=10756;
UPDATE `creature_template` SET `mingold`=81,`maxgold`=168 WHERE `entry`=10757;
UPDATE `creature_template` SET `mingold`=171,`maxgold`=556 WHERE `entry`=10940;
UPDATE `creature_template` SET `mingold`=75,`maxgold`=150 WHERE `entry`=11050;
UPDATE `creature_template` SET `mingold`=128,`maxgold`=272 WHERE `entry`=11576;
UPDATE `creature_template` SET `mingold`=1938,`maxgold`=4060 WHERE `entry`=11721;
UPDATE `creature_template` SET `mingold`=1938,`maxgold`=4060 WHERE `entry`=11724;
UPDATE `creature_template` SET `mingold`=4151,`maxgold`=4185 WHERE `entry`=11732;
UPDATE `creature_template` SET `mingold`=148,`maxgold`=296 WHERE `entry`=11876;
UPDATE `creature_template` SET `mingold`=14,`maxgold`=35 WHERE `entry`=12429;
UPDATE `creature_template` SET `mingold`=146,`maxgold`=534 WHERE `entry`=14460;
UPDATE `creature_template` SET `mingold`=10,`maxgold`=30 WHERE `entry`=15647;
UPDATE `creature_template` SET `mingold`=12,`maxgold`=35 WHERE `entry`=15648;
UPDATE `creature_template` SET `mingold`=24,`maxgold`=60 WHERE `entry`=15938;
UPDATE `creature_template` SET `mingold`=22,`maxgold`=60 WHERE `entry`=17343;
UPDATE `creature_template` SET `mingold`=22,`maxgold`=65 WHERE `entry`=17352;
UPDATE `creature_template` SET `mingold`=152,`maxgold`=581 WHERE `entry`=16896;
UPDATE `creature_template` SET `mingold`=183,`maxgold`=563 WHERE `entry`=19147;
UPDATE `creature_template` SET `mingold`=14,`maxgold`=41 WHERE `entry`=15298;
UPDATE `creature_template` SET `mingold`=70,`maxgold`=287 WHERE `entry`=16541;
UPDATE `creature_template` SET `mingold`=22,`maxgold`=60 WHERE `entry`=16304;
UPDATE `creature_template` SET `mingold`=28,`maxgold`=75 WHERE `entry`=17344;
UPDATE `creature_template` SET `mingold`=34,`maxgold`=90 WHERE `entry`=17346;
UPDATE `creature_template` SET `mingold`=32,`maxgold`=90 WHERE `entry`=17353;
UPDATE `creature_template` SET `mingold`=10,`maxgold`=49 WHERE `entry`=17887;
UPDATE `creature_template` SET `mingold`=24,`maxgold`=60 WHERE `entry`=20424;
UPDATE `creature_template` SET `mingold`=11,`maxgold`=40 WHERE `entry`=15273;
UPDATE `creature_template` SET `modelid1` = 20359, `modelid3` = 20359 WHERE `entry` = 20225;
REPLACE INTO `fishing_loot_template` ( `entry` , `item` , `ChanceOrQuestChance` , `groupid` , `mincountOrRef` , `maxcount` , `lootcondition` , `condition_value1` , `condition_value2` ) VALUES ('3537', '45905', '10', '0', '1', '1', '0', '0', '0');
REPLACE INTO `fishing_loot_template` ( `entry` , `item` , `ChanceOrQuestChance` , `groupid` , `mincountOrRef` , `maxcount` , `lootcondition` , `condition_value1` , `condition_value2` ) VALUES ('3711', '45902', '5', '0', '1', '1', '0', '0', '0');
UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0 WHERE `entry` = 1547;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `guid` = 44300;
DELETE FROM `spell_loot_template` WHERE (`entry`=58172) AND (`item`=36782);
UPDATE `creature` SET `spawntimesecs` = 30 WHERE `guid` = 118079;
UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0 WHERE `type` = 1;
-- UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0 WHERE `minhealth` = 1;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(118200, 13180, 30, 1, 1, 0, 0, 367.083, -516.744, 72.016, 1.66462, 6600, 0, 0, 29000, 0, 0, 0),
(118199, 13439, 30, 1, 1, 0, 0, -1218.89, -350.261, 57.6939, 4.75778, 6600, 0, 0, 6500, 0, 0, 0),
(127260, 13441, 30, 1, 1, 0, 0, -1252.27, -636.148, 52.5507, 0.014754, 6600, 0, 0, 4500, 0, 0, 0),
(124874, 13448, 30, 1, 1, 0, 0, -1260.3, -251.165, 77.833, 0.220512, 6600, 0, 0, 5300, 0, 0, 0),
(124872, 13616, 30, 1, 1, 0, 0, -1243.74, -640.959, 52.5777, 2.27432, 6600, 0, 0, 2500, 0, 0, 0);
REPLACE INTO `event_scripts` VALUES ('12530', '2', '7', '10166', '0', '0', '0', '0', '0', '0');

-- timmit
UPDATE `creature_template` SET `spell1` = 46317, `spell2` = 46315, `spell3` = 46316 WHERE `entry` = 25743;
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '25743','46260','11879','1','11879','1');
UPDATE `creature_template` SET `IconName` = 'vehicleCursor' WHERE `entry` = 25743;
UPDATE `quest_template` SET `CompleteScript` = 11658 WHERE `entry` = 11658;
DELETE FROM `quest_end_scripts` WHERE `id`=11658;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(11658, 3, 0, 0, 0, '2000001211', 0, 0, 0, 0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001211','Excellent, $N, here she is: masking orc Warsong clan, with power of illusion and supplemented by a premonition!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- NeatElves
UPDATE `npc_trainer` SET `reqskillvalue` = '450' WHERE `spell` in (66658,66660,66662,66663,66664);
UPDATE creature SET spawntimesecs = 60 WHERE id = 26449;
UPDATE `creature_template` SET `faction_A` = '14',`faction_H` = '14' WHERE `entry` =35545;
UPDATE `npc_trainer` SET `spellcost` = '10000' WHERE `spell` in (16652,16644,16653,16642,16643);
DELETE FROM `creature` WHERE `id` = 1039;
DELETE FROM `creature` WHERE `id` = 19461;
UPDATE `quest_template` SET `PrevQuestId` = 11563 WHERE `entry` = 11564;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(127459, 25396, 571, 1, 1, 2606, 0, 3715.61, 3543.2, 294.62, 0.578062, 360, 0, 0, 9610, 3309, 0, 0),(82830, 25396, 571, 1, 1, 2606, 0, 3707.36, 3554.22, 294.853, 0.418626, 360, 0, 0, 9610, 3309, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(102987, 25396, 571, 1, 1, 2606, 0, 3781.81, 3520.25, 304.118, 0.815246, 360, 0, 0, 9610, 3309, 0, 2);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(102980, 25396, 571, 1, 1, 2606, 0, 3787.6, 3608.84, 304.122, 2.51799, 360, 0, 0, 9610, 3309, 0, 2);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(102978, 25396, 571, 1, 1, 2606, 0, 3698.24, 3614.69, 304.121, 3.95607, 360, 0, 0, 9610, 3309, 0, 2);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(127460, 25396, 571, 1, 1, 2606, 0, 3692.23, 3526.52, 304.121, 5.52135, 360, 0, 0, 9610, 3309, 0, 2);
UPDATE `areatrigger_teleport` SET `target_position_x` = '3688.66',`target_position_y` = '3577.32',`target_position_z` = '473.338',`target_orientation` = '6.018520' WHERE `id` =5340;

-- timmit
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `id` = 25791;
UPDATE `creature` SET `spawntimesecs` = 600 WHERE `id` = 25841;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 25841;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=25841);
REPLACE INTO `creature_ai_scripts` VALUES 
(2584152, 25841, 8, 0, 100, 1, 39996, -1, 0, 0, 11, 46362, 6, 16, 41, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11887'),
(2584151, 25841, 8, 0, 100, 1, 19822, -1, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 25841;
UPDATE `creature_template` SET `gossip_menu_id` =25841  WHERE `entry` =25841;
REPLACE INTO gossip_menu (`entry`,`text_id`,`cond_1`,`cond_1_val_1`) VALUES 
(25841,12489,9,11795);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(25841,0,0,'Locate pilot\'s sign',1,1,0,25841,9,11795,0);
REPLACE INTO `gossip_scripts` values 
(25841,0,15,46166,1,0,0,0,0,0);
UPDATE `creature_template` SET `spell1` = 48363, `spell2` = 48397, `spell3` = 54170 WHERE `entry` = 27258;
UPDATE `creature_template` SET `IconName` = 'vehicleCursor' WHERE `entry` = 27258;
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '27258','48365','12237','1','12237','1');
UPDATE `quest_template` SET `PrevQuestId` = 12251 WHERE `entry` in (12258,12275);
UPDATE `quest_template` SET `PrevQuestId` = 12275 WHERE `entry` in (12269,12272);
UPDATE `quest_template` SET `PrevQuestId` = 12251 WHERE `entry`=12282;
UPDATE `quest_template` SET `CompleteScript` = 12282 WHERE `entry` = 12282;
DELETE FROM `quest_end_scripts` WHERE `id`=12282;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(12282, 1, 0, 0, 0, '2000001212', 0, 0, 0, 0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001212','With the return of the world starts looking for answers!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE `creature_template` SET `unit_flags` = 33282, `flags_extra` = 2,`faction_A` = 14, `faction_H` = 14 WHERE `entry` = 27510;
UPDATE `creature` SET `position_x` = 3621.58, `position_y` = -781.142, `position_z` = 149.357, `orientation` = 3.11138 WHERE `guid` = 112600;
delete from creature where guid in (114026,114028,114043);
UPDATE `quest_template` SET `StartScript` = 12312 WHERE `entry` = 12312;
DELETE FROM `quest_start_scripts` WHERE `id`=12312;
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(12312, 3, 10, 27552, 180000, '0', 3613.4, -793.906, 164.4, 1.60073),
(12312, 3, 10, 27552, 180000, '0', 3613.68, -768.36, 164.404, 4.98511),
(12312, 4, 10, 27551, 180000, '0', 3611.92, -765.878, 164.487, 4.67748);
UPDATE `quest_template` SET `NextQuestId` = 12281, `ExclusiveGroup` = -12272 WHERE `entry` = 12272;
UPDATE `quest_template` SET `NextQuestId` = 12281, `ExclusiveGroup` = -12272 WHERE `entry` = 12277;
UPDATE `quest_template` SET `PrevQuestId` = 12272 WHERE `entry` = 12281;
UPDATE `quest_template` SET `NextQuestId` = 12325, `ExclusiveGroup` = -12321 WHERE `entry` in (12281,12321,12269);
UPDATE `quest_template` SET `PrevQuestId` = 12321 WHERE `entry` = 12325;
UPDATE `quest_template` SET `SrcSpell` = 49511  WHERE `entry` = 12440;
UPDATE `creature_template` SET `IconName` = 'vehicleCursor', `spell1` = 49315, `spell2` = 49333, `spell3` = 49109, `spell4` = 49081 WHERE `entry` = 27587;
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '27587','49078','12326','1','12326','1');
UPDATE `quest_template` SET `SrcSpell` = 48013  WHERE `entry` = 12174;
UPDATE `creature_template` SET `IconName` = 'vehicleCursor', `spell1` = 49190, `spell2` = 49550 WHERE `entry` = 27714;
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '27714','49584','12457','1','12457','1');

-- Forum_FIX
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` IN (26440,26441);
update creature_loot_template set ChanceOrQuestChance = -20 where item=30327;
UPDATE `creature_template` SET `mingold` = 48, `maxgold` = 48 WHERE `entry` = 15273;
UPDATE `creature_template` SET `mingold` = 23, `maxgold` = 23 WHERE `entry` = 15298;
INSERT IGNORE INTO `spell_script_target` VALUES ('31927', '1', '18110');
INSERT IGNORE INTO `spell_script_target` VALUES ('31927', '1', '18142');
INSERT IGNORE INTO `spell_script_target` VALUES ('31927', '1', '18143');
INSERT IGNORE INTO `spell_script_target` VALUES ('31927', '1', '18144');
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=186880;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=186685;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=188508;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=188478;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=186946;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=186953;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=186960;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=186961;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=186962;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=186963;
UPDATE `gameobject_template` SET `IconName`='Point' WHERE `entry`=186964;
UPDATE `gameobject_template` SET `IconName`='Inspect' WHERE `entry`=192652;
UPDATE `gameobject_template` SET `IconName`='Inspect' WHERE `entry`=192710;
UPDATE `gameobject_template` SET `IconName`='Inspect' WHERE `entry`=192886;
UPDATE `gameobject_template` SET `IconName`='Inspect' WHERE `entry`=192887;
UPDATE `gameobject_template` SET `IconName`='Inspect' WHERE `entry`=192711;
UPDATE `gameobject_template` SET `castBarCaption`='Examining' WHERE `entry`=194057;
UPDATE `gameobject_template` SET `castBarCaption`='Examining' WHERE `entry`=194056;
UPDATE `gameobject_template` SET `castBarCaption`='Examining' WHERE `entry`=190035;
UPDATE `gameobject_template` SET `castBarCaption`='Using' WHERE `entry`=194123;

-- timmit
UPDATE `creature` SET `position_x` = 3677.11, `position_y` = -740.139, `position_z` = 213.797, `orientation` = 1.22652 WHERE `guid` = 98177;
UPDATE `creature` SET `position_x` = 3691.07, `position_y` = -736.106, `position_z` = 213.262, `orientation` = 5.81718 WHERE `guid` = 117489;
UPDATE `creature` SET `position_x` = 3693.96, `position_y` = -738.535, `position_z` = 213.468, `orientation` = 2.51458, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 117499;
UPDATE `creature` SET `position_x` = 3773.61, `position_y` = -783.481, `position_z` = 195.905, `orientation` = 3.9605 WHERE `guid` = 117500;
UPDATE `creature` SET `position_x` = 3767.5, `position_y` = -775.229, `position_z` = 196.029, `orientation` = 5.48495 WHERE `guid` = 117498;

-- NeatElves
UPDATE `quest_template` SET `ReqSpellCast1` = '0',`ReqSpellCast2` = '0',`ReqSpellCast3` = '0',`ReqSpellCast4` = '0' WHERE `entry` =9805;
REPLACE INTO `creature_ai_scripts` VALUES ('1811051', '18110', '8', '0', '100', '0', '31927', '-1', '0', '0', '33', '18110', '6', '0', '11', '31928', '0', '22', '0', '0', '0', '0', 'ytdb-q9805');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '18110';
REPLACE INTO `creature_ai_scripts` VALUES ('1814251', '18142', '8', '0', '100', '0', '31927', '-1', '0', '0', '33', '18142', '6', '0', '11', '31928', '0', '22', '0', '0', '0', '0', 'ytdb-q9805');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '18142';
REPLACE INTO `creature_ai_scripts` VALUES ('1814351', '18143', '8', '0', '100', '0', '31927', '-1', '0', '0', '33', '18143', '6', '0', '11', '31928', '0', '22', '0', '0', '0', '0', 'ytdb-q9805');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '18143';
REPLACE INTO `creature_ai_scripts` VALUES ('1814451', '18144', '8', '0', '100', '0', '31927', '-1', '0', '0', '33', '18144', '6', '0', '11', '31928', '0', '22', '0', '0', '0', '0', 'ytdb-q9805');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '18144';
DELETE FROM `creature` WHERE `guid` = 75958;
REPLACE INTO `creature_ai_texts` VALUES ('-351161', 'What do you think you\'re doing?', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q14016');
REPLACE INTO `creature_ai_texts` VALUES ('-351162', 'Gladly.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q14016');
REPLACE INTO `creature_ai_texts` VALUES ('-351271', 'You\'re too late to stop our plan.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q14016');
REPLACE INTO `creature_ai_texts` VALUES ('-351272', 'See to it that I\'m not followed.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q14016');
REPLACE INTO `creature_ai_scripts` VALUES ('3511651', '35116', '9', '0', '100', '1', '1', '3', '0', '0', '1', '-351161', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'ytdb-q14016');
REPLACE INTO `creature_ai_scripts` VALUES ('3511652', '35116', '1', '1', '100', '0', '5000', '5000', '0', '0', '1', '-351162', '0', '0', '22', '0', '0', '0', '20', '1', '0', '0', 'ytdb-q14016');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '35116';
REPLACE INTO `creature_ai_scripts` VALUES ('3512751', '35127', '9', '0', '100', '1', '1', '3', '0', '0', '1', '-351271', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'ytdb-q14016');
REPLACE INTO `creature_ai_scripts` VALUES ('3512752', '35127', '1', '1', '100', '0', '2000', '2000', '0', '0', '1', '-351272', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'ytdb-q14016');
REPLACE INTO `creature_ai_scripts` VALUES ('3512753', '35127', '1', '2', '100', '0', '1000', '1000', '0', '0', '15', '14016', '6', '0', '20', '1', '0', '0', '22', '0', '0', '0', 'ytdb-q14016');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '35127';
UPDATE `creature_template` SET `faction_A` = '7',`faction_H` = '7' WHERE `entry` in (35116,35127);

-- timmit
DELETE FROM `waypoint_data` WHERE `id`=1174980;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values
('1174980','1','3777.15','-783.005','195.974','0','0','0','100','0'),
('1174980','2','3768.08','-775.363','196.002','0','0','0','100','0');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 117498;
UPDATE `creature_template` SET `gossip_menu_id` =27229  WHERE `entry` =27229;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(27229,12860);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(27229,0,0,'I\'m sure everything will be settled, an Footman.',1,1,0,27229,9,12291,0);
REPLACE INTO `gossip_scripts` values 
(27229,0,15,48832,1,0,0,0,0,0);
UPDATE `creature_template` SET `gossip_menu_id` =27226  WHERE `entry` =27226;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(27226,12856);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(27226,0,0,'Sorry to divert you, buddy. Go!',1,1,0,27226,9,12291,0);
REPLACE INTO `gossip_scripts` values 
(27226,0,15,48829,1,0,0,0,0,0);
UPDATE `creature_template` SET `gossip_menu_id` =27225  WHERE `entry` =27225;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(27225,12858);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(27225,0,0,'I am sure that Arthas returns from day to day, soldiers. Above the nose!',1,1,0,27225,9,12291,0);
REPLACE INTO `gossip_scripts` values 
(27225,0,15,48830,1,0,0,0,0,0);
UPDATE `creature_template` SET `gossip_menu_id` =27224  WHERE `entry` =27224;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(27224,12859);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(27224,0,0,'I must go, soldier. Be alert!',1,1,0,27224,9,12291,0);
REPLACE INTO `gossip_scripts` values 
(27224,0,15,48831,1,0,0,0,0,0);
UPDATE `quest_template` SET `ReqSourceCount4` = 1, `ReqCreatureOrGOId1` = 27472, `ReqCreatureOrGOId2` = 27471, `ReqCreatureOrGOId3` = 27473, `ReqCreatureOrGOId4` = 27474 WHERE `entry` = 12291;
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '48810','0','15','48809','0','0','0','0','0','0');
UPDATE `creature_template` SET `gossip_menu_id` = 27347 WHERE `entry` = 27347;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(27347,12857);
REPLACE INTO `gossip_menu_option` VALUES(27347,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(27347,1,0,'Orik, I need one more piece of Murkweed Elixir.',1,1,0,27347,9,12291,0);
REPLACE INTO `gossip_scripts` values 
(27347,0,15,48828,1,0,0,0,0,0);
UPDATE `quest_template` SET `PrevQuestId` = 12305 WHERE `entry` in (12476,12477);
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '48864','4177','12291','0','12301','0',1101,'2','1');
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '48864',4188,'12291','0','12301','0',1101,'2','1');
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '48864','4185','12291','0','12301','0','1101','2','1');

-- Forum_FIX
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = -195310, `ReqCreatureOrGOId2` = -195214 WHERE `entry` = 14142;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = -195310, `ReqCreatureOrGOId2` = -195214 WHERE `entry` = 14096;
UPDATE `gameobject` SET `position_x` = -11164.4 WHERE `guid` = 38780;
UPDATE `gameobject_template` SET `data1` = 20 WHERE `entry` = 300073;

-- NeatElves
INSERT IGNORE INTO `creature_onkill_reputation` VALUES  
(30176, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30277, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30278, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30276, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30418, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30416, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30419, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30279, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30285, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30286, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30283, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30179, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30319, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30385, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30111, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(31104, 1037, 1052, 7, 0, 10, 7, 0, 10, 1), 
(30284, 1037, 1052, 7, 0, 10, 7, 0, 10, 1), 
(30329, 1037, 1052, 7, 0, 10, 7, 0, 10, 1), 
(30414, 1037, 1052, 7, 0, 10, 7, 0, 10, 1), 
(29309, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(29308, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(29310, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(29311, 1037, 1052, 7, 0, 50, 7, 0, 50, 1);
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(31371, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(31372, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31373, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(31374, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),    
(31375, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(31376, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31378, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),   
(31380, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31383, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(31385, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31387, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31876, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31394, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31369, 1037, 1052, 7, 0, 2, 7, 0, 2, 1), 
(31379, 1037, 1052, 7, 0, 2, 7, 0, 2, 1), 
(31388, 1037, 1052, 7, 0, 2, 7, 0, 2, 1), 
(31389, 1037, 1052, 7, 0, 2, 7, 0, 2, 1), 
(31390, 1037, 1052, 7, 0, 2, 7, 0, 2, 1), 
(31877, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),    
(31381, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31384, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31386, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(27966, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(27962, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27969, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(27964, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),    
(27965, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(27963, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27961, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),   
(27985, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27972, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(27970, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27971, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27983, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27982, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27977, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(27975, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(27978, 1037, 1052, 7, 0, 50, 7, 0, 50, 1);
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(30979, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(30967, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30966, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30968, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30977, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30974, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),  
(30964, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30983, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30978, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30971, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),  
(30975, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30976, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30981, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30972, 1037, 1052, 7, 0, 30, 7, 0, 30, 1), 
(31867, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30980, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30982, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30973, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30965, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),  
(30969, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),  
(30970, 1037, 1052, 7, 0, 2, 7, 0, 2, 1), 
(31533, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31537, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31538, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31536, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(28583, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28578, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28926, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(29240, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28836, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28837, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28581, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28826, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28547, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28961, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28965, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28838, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28584, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28579, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28580, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(28582, 1037, 1052, 7, 0, 10, 7, 0, 10, 1), 
(28835, 1037, 1052, 7, 0, 10, 7, 0, 10, 1), 
(28920, 1037, 1052, 7, 0, 10, 7, 0, 10, 1), 
(28586, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(28587, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(28546, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(28923, 1037, 1052, 7, 0, 50, 7, 0, 50, 1);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (26763, 26731, 26723, 26794, 26746, 26793, 26800, 26805, 26802, 26734, 26722, 26735, 26716, 26918, 26737, 26782, 26792, 28231, 26928, 26929, 26930, 26799, 26803, 26801, 26727, 26728, 26730, 26729, 27947, 27949, 26761, 26736, 30518);
INSERT IGNORE INTO `creature_onkill_reputation` VALUES 
 (26763, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
 (26731, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
 (26723, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
 (26794, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
 (26792, 1037, 1052, 7, 0, 10, 7, 0, 10, 1), 
 (26800, 1052, 0, 7, 0, 5, 0, 0, 0, 1), 
 (26805, 1052, 0, 7, 0, 5, 0, 0, 0, 1), 
 (27949, 1052, 0, 7, 0, 50, 0, 0, 0, 1), 
 (26802, 1052, 0, 7, 0, 5, 0, 0, 0, 1), 
 (26734, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
 (26722, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
 (26735, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
 (26716, 1037, 1052, 7, 0, 10, 7, 0, 10, 1), 
 (26737, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
 (26763, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
 (28231, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
 (26930, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
 (26799, 1037, 0, 7, 0, 5, 0, 0, 0, 1), 
 (26803, 1037, 0, 7, 0, 5, 0, 0, 0, 1), 
 (27947, 1037, 0, 7, 0, 50, 0, 0, 0, 1), 
 (26801, 1037, 0, 7, 0, 5, 0, 0, 0, 1), 
 (26727, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
 (26728, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
 (26730, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),
 (30459, 1037, 1052, 7, 0, 30, 7, 0, 30, 1),
 (26729, 1037, 1052, 7, 0, 5, 7, 0, 5, 1);

-- virusav
DELETE FROM `creature` WHERE `id`=22994;

-- WDB
REPLACE INTO `npc_text` SET `ID`=10324,`prob0`=1,`text0_0`='',`text0_1`='I am pleased that you''ve decided to take up our cause.  As a reward I will infuse a ring with the remnants of the Well of Eternity you brought me.$B$BI offer you four different paths in which to unlock their power.  Choose wisely, $N.  The sands of time flow easily in one direction and not the other.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14369,`prob0`=1,`text0_0`='It''s a good thing you guys showed up! The Iron Dwarves have pushed us back to this location, and we''re barely managing to hold the line here. 
\

\
Even worse, they''ve begun to power up their magical defenses. If we don''t attack soon, they''ll be able to annihilate us in the blink of an eye!
\

\
We''ve managed to rebuild several siege machines, demolishers and motorcycles from the Alliance and Horde expeditions that were here before us. However, all of our pilots died in the last assault.
\

\
You must take the vehicles and storm the gates of Ulduar! 
\

\
Please, $n! You''re our last hope!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15103,`prob0`=1,`text0_0`='This is our final stand. What happens here will echo through the ages. Regardless of outcome, they will know that we fought with honor. That we fought for the freedom and safety of our people.$B$BRemember, hero, fear is your greatest enemy in these befouled halls. Steel your heart and your soul will shine brighter than a thousand suns. The enemy will falter at the sight of you. They will fall as the light of righteousness envelops them!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=5,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15123,`prob0`=1,`text0_0`='Lost your Rocket Pack? Have you checked your bags?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15134,`prob0`=1,`text0_0`='Why you''re just the $c I was looking for! I''m testing a new rocket-powered flying device, and I need your help!
\

\
Just take one of these harnesses and put it on under your armor.  Hit the button on the side, and BOOM, off you go.
\

\
Don''t go trying to steal my work though. Each of these babies is fitted with a Transponster 8000 linked to the one in my hand. If you get too far from me the Transponster will shut down the main rocket and you''ll be unable to lift off until you return.
\

\
Now where did I put those liability forms?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15157,`prob0`=1,`text0_0`='',`text0_1`='I cannot hold him for long, we must leave at once!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15174,`prob0`=1,`text0_0`='We will follow your lead, heroes. The Scourgelord will die this eve.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15190,`prob0`=1,`text0_0`='',`text0_1`='We are safe... for now. His strength has increased tenfold since our last battle. It will take a mighty army to destroy the Lich King. An army greater than even the Horde can rouse.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15191,`prob0`=1,`text0_0`='',`text0_1`='I will delay here until more reinforcements arrive, but you must keep moving. Arthas will soon realize that we''re here.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15206,`prob0`=1,`text0_0`='',`text0_1`='We have no time to waste, $c. Why do you delay here?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15215,`prob0`=1,`text0_0`='',`text0_1`='Standing this close to the blade that ended my life... The pain... It is renewed.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15217,`prob0`=1,`text0_0`='Brave soldier of the Horde, I salute you! We would have surely been destroyed by the Alliance gunship had it not been for you and your allies.$B$BTake a moment to rest before we begin our assault upon the upper reaches of the citadel.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=66,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15218,`prob0`=1,`text0_0`='Are you sure, $N? We must face the Scourge at full strength if we are to succeed. If you do not require more rest, we will begin.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=273,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15219,`prob0`=1,`text0_0`='I have heard tale of my boy being here. That he''s now a powerful death knight in service of the Lich King. If this is true, then it must be me that ends the bloodline.$B$BMy charge now is to command Orgrim''s Hammer to the top of Icecrown Citadel and destroy all Scourge that get in our way. We leave when you and your allies are ready.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15220,`prob0`=1,`text0_0`='His spirit is free from the grasp of the Lich King. We must now focus our attention on breaking down the walls that block our passage into the upper reaches. It is only a matter of time now, $N. The siege engineers should have the door down in $4939W days.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15221,`prob0`=1,`text0_0`='The transporter glimmers with a crystalline light.',`text0_1`='The transporter glimmers with a crystalline light.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15297,`prob0`=1,`text0_0`='A self-inflicted wound, friend.  I could not bear to look upon a world where I''d committed so many horrors under the Lich King''s grasp.$B$BIt was my first step towards redemption, and if my sins are unforgivable, then I will attempt to atone for them for the rest of my life.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15298,`prob0`=1,`text0_0`='I was once a paladin, $N.  Now the Light shuns me, for my sins are too great.$B$BI will aid my allies as best I can, but never again will I wield the powers of darkness.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15445,`prob0`=1,`text0_0`='Greetings, hero. I craft and sell Freya''s Lasherweave armor for druids.',`text0_1`='Greetings, hero. I craft and sell Freya''s Lasherweave armor for druids.',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15447,`prob0`=1,`text0_0`='Greetings, hero. I craft and sell Shadowblade armor for rogues.
\
',`text0_1`='Greetings, hero. I craft and sell Shadowblade armor for rogues.
\
',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15450,`prob0`=1,`text0_0`='Greetings, hero. I craft and sell Ymirjar Lord''s armor for warriors.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15452,`prob0`=1,`text0_0`='Greetings, hero. I craft and sell Crimson Acolyte armor for priests.
\
',`text0_1`='Greetings, hero. I craft and sell Crimson Acolyte armor for priests.
\
',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15454,`prob0`=1,`text0_0`='Greetings, hero. I craft and sell Dark Coven armor for warlocks.
\
',`text0_1`='Greetings, hero. I craft and sell Dark Coven armor for warlocks.
\
',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

-- Krek
UPDATE `creature_template` SET `mingold` = 15, `maxgold` = 15 WHERE `maxgold` > 15 AND `rank` = 0 AND `maxlevel` < 11;
UPDATE `creature_template` SET `mingold` = 50, `maxgold` = 50 WHERE `maxgold` > 50 AND `rank` = 0 AND `maxlevel` > 10 AND `maxlevel` < 21;
UPDATE `creature_template` SET `mingold` = 150, `maxgold` = 150 WHERE `maxgold` > 150 AND `rank` = 0 AND `maxlevel` > 20 AND `maxlevel` < 31;
UPDATE `creature_template` SET `mingold` = 250, `maxgold` = 250 WHERE `maxgold` > 250 AND `rank` = 0 AND `maxlevel` > 30 AND `maxlevel` < 41;
UPDATE `creature_template` SET `mingold` = 400, `maxgold` = 400 WHERE `maxgold` > 400 AND `rank` = 0 AND `maxlevel` > 40 AND `maxlevel` < 51;
UPDATE `creature_template` SET `mingold` = 900, `maxgold` = 900 WHERE `maxgold` > 900 AND `rank` = 0 AND `maxlevel` > 50 AND `maxlevel` < 61;
UPDATE `creature_template` SET `mingold` = 1600, `maxgold` = 1600 WHERE `maxgold` > 1600 AND `rank` = 0 AND `maxlevel` > 60 AND `maxlevel` < 71;
UPDATE `creature_template` SET `mingold` = 2500, `maxgold` = 2500 WHERE `maxgold` > 2500 AND `rank` = 0 AND `maxlevel` > 70 AND `maxlevel` < 81;
UPDATE `creature_template` SET `mingold` = 3000, `maxgold` = 3000 WHERE `maxgold` > 3000 AND `rank` = 0 AND `maxlevel` > 80;
UPDATE `creature_template` SET `mingold` = 200, `maxgold` = 200 WHERE `maxgold` > 200 AND `rank` = 1 AND `maxlevel` < 21;
UPDATE `creature_template` SET `mingold` = 500, `maxgold` = 500 WHERE `maxgold` > 500 AND `rank` = 1 AND `maxlevel` > 20 AND `maxlevel` < 31;
UPDATE `creature_template` SET `mingold` = 1000, `maxgold` = 1000 WHERE `maxgold` > 1000 AND `rank` = 1 AND `maxlevel` > 30 AND `maxlevel` < 41;
UPDATE `creature_template` SET `mingold` = 3000, `maxgold` = 3000 WHERE `maxgold` > 3000 AND `rank` = 1 AND `maxlevel` > 40 AND `maxlevel` < 51;
UPDATE `creature_template` SET `mingold` = 6000, `maxgold` = 6000 WHERE `maxgold` > 6000 AND `rank` = 1 AND `maxlevel` > 50 AND `maxlevel` < 61;
UPDATE `creature_template` SET `mingold` = 12000, `maxgold` = 12000 WHERE `maxgold` > 12000 AND `rank` = 1 AND `maxlevel` > 60 AND `maxlevel` < 71;
UPDATE `creature_template` SET `mingold` = 20000, `maxgold` = 20000 WHERE `maxgold` > 20000 AND `rank` = 1 AND `maxlevel` > 70;
UPDATE `creature_template` SET `mingold` = 200, `maxgold` = 200 WHERE `maxgold` > 200 AND `rank` = 2 AND `maxlevel` < 21;
UPDATE `creature_template` SET `mingold` = 500, `maxgold` = 500 WHERE `maxgold` > 500 AND `rank` = 2 AND `maxlevel` > 20 AND `maxlevel` < 31;
UPDATE `creature_template` SET `mingold` = 1000, `maxgold` = 1000 WHERE `maxgold` > 1000 AND `rank` = 2 AND `maxlevel` > 30 AND `maxlevel` < 41;
UPDATE `creature_template` SET `mingold` = 3000, `maxgold` = 3000 WHERE `maxgold` > 3000 AND `rank` = 2 AND `maxlevel` > 40 AND `maxlevel` < 51;
UPDATE `creature_template` SET `mingold` = 6000, `maxgold` = 6000 WHERE `maxgold` > 6000 AND `rank` = 2 AND `maxlevel` > 50 AND `maxlevel` < 61;
UPDATE `creature_template` SET `mingold` = 12000, `maxgold` = 12000 WHERE `maxgold` > 12000 AND `rank` = 2 AND `maxlevel` > 60 AND `maxlevel` < 71;
UPDATE `creature_template` SET `mingold` = 20000, `maxgold` = 20000 WHERE `maxgold` > 20000 AND `rank` = 2 AND `maxlevel` > 70;
UPDATE `creature_template` SET `mingold` = 15, `maxgold` = 15 WHERE `maxgold` > 15 AND `rank` = 4 AND `maxlevel` > 0 AND `maxlevel` < 11;
UPDATE `creature_template` SET `mingold` = 50, `maxgold` = 50 WHERE `maxgold` > 50 AND `rank` = 4 AND `maxlevel` > 10 AND `maxlevel` < 21;
UPDATE `creature_template` SET `mingold` = 150, `maxgold` = 150 WHERE `maxgold` > 150 AND `rank` = 4 AND `maxlevel` > 20 AND `maxlevel` < 31;
UPDATE `creature_template` SET `mingold` = 250, `maxgold` = 250 WHERE `maxgold` > 250 AND `rank` = 4 AND `maxlevel` > 30 AND `maxlevel` < 41;
UPDATE `creature_template` SET `mingold` = 400, `maxgold` = 400 WHERE `maxgold` > 400 AND `rank` = 4 AND `maxlevel` > 40 AND `maxlevel` < 51;
UPDATE `creature_template` SET `mingold` = 900, `maxgold` = 900 WHERE `maxgold` > 900 AND `rank` = 4 AND `maxlevel` > 50 AND `maxlevel` < 61;
UPDATE `creature_template` SET `mingold` = 1600, `maxgold` = 1600 WHERE `maxgold` > 1600 AND `rank` = 4 AND `maxlevel` > 60 AND `maxlevel` < 71;
UPDATE `creature_template` SET `mingold` = 2500, `maxgold` = 2500 WHERE `maxgold` > 2500 AND `rank` = 4 AND `maxlevel` > 70 AND `maxlevel` < 81;
UPDATE `creature_template` SET `mingold` = 3000, `maxgold` = 3000 WHERE `maxgold` > 3000 AND `rank` = 4 AND `maxlevel` > 80;

-- timmit
UPDATE `quest_template` SET `StartScript` = 12416 WHERE `entry` = 12416;
DELETE FROM `quest_start_scripts` WHERE `id`=12416;
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(12416, 0, 0, 0, 0, '2000001213', 0, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 12417 WHERE `entry` = 12417;
DELETE FROM `quest_start_scripts` WHERE `id`=12417;
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(12417, 1, 0, 0, 0, '2000001030', 0, 0, 0, 0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001213','Do not go too far down the corridor, $N. Stay with the captain and his men ... dead you have to anything.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE `quest_template` SET `StartScript` = 0 WHERE `entry` = 1;
DELETE FROM `quest_start_scripts` WHERE `id`=1;

-- NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(116828, 26926, 571, 1, 1, 0, 0, 3670.66, 1050.49, 56.2987, 4.57077, 2000, 0, 0, 9940, 0, 0, 2);
DELETE FROM `waypoint_data` WHERE `id` = 1168280;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values
('1168280','1','3655.9','1021.65','56.9276','0','0','0','100','0'),
('1168280','2','3639.93','989.476','56.1198','0','0','0','100','0'),
('1168280','3','3635.05','966.088','56.2178','0','0','0','100','0'),
('1168280','4','3643.04','939.553','56.5536','0','0','0','100','0'),
('1168280','5','3659.87','911.616','56.1422','0','0','0','100','0'),
('1168280','6','3676.41','901.002','56.914','0','0','0','100','0'),
('1168280','7','3687.96','915.448','55.5588','0','0','0','100','0'),
('1168280','8','3683.4','946.239','57.8742','0','0','0','100','0'),
('1168280','9','3688.11','966.475','60.4708','0','0','0','100','0'),
('1168280','10','3694.74','986.549','58.4175','0','0','0','100','0'),
('1168280','11','3701.42','1003.54','58.4506','0','0','0','100','0'),
('1168280','12','3709.62','1023.9','57.2164','0','0','0','100','0'),
('1168280','13','3710.62','1043.66','57.1533','0','0','0','100','0'),
('1168280','14','3670.66','1050.49','56.2987','0','0','0','100','0');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(987, 22777, 0, 1, 1, -9380, -66, 64.492, 5.78977, 0, 0, 0.244215, -0.969721, 180, 100, 1);
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(30764, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(30765, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30766, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30806, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30821, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30818, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30762, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30772, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30803, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30790, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30770, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30822, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30823, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30819, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(30817, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30816, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30775, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30820, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30791, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),  
(30767, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),  
(30779, 1037, 1052, 7, 0, 2, 7, 0, 2, 1), 
(30804, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),  
(30756, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),  
(30809, 1037, 1052, 7, 0, 2, 7, 0, 2, 1), 
(30774, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(30788, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(30807, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(30810, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(30901, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(30904, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30903, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30916, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30915, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30905, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30909, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30914, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30907, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30912, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30911, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30910, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30906, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30908, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(30913, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30991, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(30902, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),  
(30917, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),  
(31558, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31561, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31560, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31559, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(31514, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(31515, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31513, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31501, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31487, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31494, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31483, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31497, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31486, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31493, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31490, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31503, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31502, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31504, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(31484, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31488, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31495, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31498, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31485, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31489, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31496, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31499, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(31492, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(32192, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(32550, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(32549, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(32555, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(32552, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(32554, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(32551, 1037, 1052, 7, 0, 15, 7, 0, 15, 1), 
(32553, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(32583, 1037, 1052, 7, 0, 15, 7, 0, 15, 1),  
(31518, 1037, 1052, 7, 0, 2, 7, 0, 2, 1),  
(31500, 1037, 1052, 7, 0, 2, 7, 0, 2, 1), 
(31511, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31509, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31508, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31512, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31507, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31510, 1037, 1052, 7, 0, 250, 7, 0, 250, 1), 
(31506, 1037, 1052, 7, 0, 250, 7, 0, 250, 1);
REPLACE INTO `creature_ai_texts` VALUES ('-176511', 'You\'ve got my attention, dragon. You\'ll find I\'m not as easily scared as the villagers below.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_texts` VALUES ('-176512', 'You dare challenge me at my own dwelling? Your arrogance is astounding, even for a dragon!', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_texts` VALUES ('-176513', 'I do not know what you speak of, dragon... but I will not be bullied by this display of insolence. I\'ll leave Karazhan when it suits me!', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_texts` VALUES ('-176514', 'He should not have angered me. I must go... recover my strength now...', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_texts` VALUES ('-176521', 'Your dabbling in the arcane has gone too far, Medivh. You\'ve attracted the attention of powers beyond your understanding. You must leave Karazhan at once!', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_texts` VALUES ('-176522', 'A dark power seeks to use you, Medivh! If you stay, dire days will follow. You must hurry, we don\'t have much time!', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_texts` VALUES ('-176523', 'You leave me no alternative. I will stop you by force if you won\'t listen to reason!', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_texts` VALUES ('-176524', 'What have you done, wizard? This cannot be! I\'m burning from... within!', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_scripts` VALUES ('1765151', '17651', '11', '0', '100', '0', '0', '0', '0', '0', '1', '-176511', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_scripts` VALUES ('1765152', '17651', '1', '1', '100', '0', '2000', '2000', '0', '0', '1', '-176512', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_scripts` VALUES ('1765153', '17651', '1', '2', '100', '0', '2000', '2000', '0', '0', '1', '-176513', '0', '0', '22', '3', '0', '0', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_scripts` VALUES ('1765154', '17651', '1', '3', '100', '0', '2000', '2000', '0', '0', '11', '30973', '0', '22', '22', '4', '0', '0', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_scripts` VALUES ('1765155', '17651', '1', '4', '100', '0', '2000', '2000', '0', '0', '1', '-176514', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q9645');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '17651';
REPLACE INTO `creature_ai_scripts` VALUES ('1765251', '17652', '11', '0', '100', '0', '0', '0', '0', '0', '1', '-176521', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_scripts` VALUES ('1765252', '17652', '1', '1', '100', '0', '3000', '3000', '0', '0', '1', '-176522', '0', '0', '22', '2', '0', '0', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_scripts` VALUES ('1765253', '17652', '1', '2', '100', '0', '2000', '2000', '0', '0', '1', '-176523', '0', '0', '22', '3', '0', '0', '0', '0', '0', '0', 'ytdb-q9645');
REPLACE INTO `creature_ai_scripts` VALUES ('1765254', '17652', '1', '3', '100', '0', '2000', '2000', '0', '0', '1', '-176524', '0', '0', '22', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q9645');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '17652';

-- timmit
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `guid` = 116667;
UPDATE `quest_template` SET `OfferRewardEmote1` = 16 WHERE `entry` = 12169;

-- KiriX
UPDATE `creature_template` SET `faction_A`='14',`faction_H`='14' WHERE (`entry`='10559');

-- Forum_FIX
UPDATE `gameobject` SET `position_x` = -9296.65, `position_y` = -2943.81, `position_z` = 162.84, `orientation` = 3.14159, `spawntimesecs` = 30 WHERE `guid` = 8292;
UPDATE `creature_template` SET `modelid1` = 25734, `modelid3` = 25735 WHERE `entry` = 28852;
UPDATE `item_template` SET `description` = '' WHERE `entry` = 33338;
UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 33711;
UPDATE `creature_template` SET `gossip_menu_id` = 83, `npcflag` = 16385 WHERE `entry` = 29259;
UPDATE `creature_template` SET `npcflag` = 16385 WHERE `entry` = 32537;
DELETE FROM `creature_loot_template` WHERE (`entry`=18433) AND (`item`=23886);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (18433, 23886, -100, 0, 1, 1, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`=18436) AND (`item`=23881);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (18436, 23881, -100, 0, 1, 1, 0, 0, 0);
UPDATE `gameobject` SET `spawntimesecs` = 30, `animprogress` = 100 WHERE `id` = 300192;
INSERT IGNORE INTO `event_scripts` VALUES ('17364', '0', '8', '26105', '0', '0', '0', '0', '0', '0');
UPDATE `gameobject_template` SET `data3` = 0 WHERE `entry` = 183051;

-- Fix 3

--timmit
replace into `gossip_scripts` values (25841,1,15,19822,0,0,0,0,0,0);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 27804;

-- NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(9812, 33711, 530, 1, 1, 0, 0, 6978.07, -7336.59, 40.9312, 5.4865, 600, 0, 0, 247, 0, 0, 2);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(9816, 33711, 530, 1, 1, 0, 0, 7623.59, -7638.87, 128.367, 5.14092, 600, 0, 0, 247, 0, 0, 2);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(9850, 33711, 530, 1, 1, 0, 0, 7989.65, -7596.35, 126.338, 4.20237, 600, 0, 0, 273, 0, 0, 2);

-- timmit
UPDATE `creature` SET `spawndist` = 0 WHERE `guid` = 70314;

-- Forum_FIX
UPDATE `quest_template` SET `ReqSourceCount4` = 0 WHERE `entry` = 12291;
UPDATE `creature_template` SET `faction_A` = '7',`faction_H` = '7' WHERE `entry` =33711;
UPDATE `quest_template` SET `QuestFlags` = 4097 WHERE `entry` = 11015;
UPDATE `quest_template` SET `RequiredRaces` = 690, `ReqCreatureOrGOId1` = 18840, `ReqCreatureOrGOId2` = 18841, `ReqCreatureOrGOId3` = 18842, `ReqCreatureOrGOId4` = 18843 WHERE `entry` = 10085;
UPDATE `item_template` SET `Flags` = 4096 WHERE `entry` = 45254;
DELETE FROM `npc_vendor` WHERE (`entry`=33923);
DELETE FROM `npc_vendor` WHERE (`entry`=33922);
DELETE FROM `npc_vendor` WHERE (`entry`=33921);
UPDATE `creature_template` SET `npcflag` = 4096 WHERE `entry` = 33923;
UPDATE `creature_template` SET `npcflag` = 4096 WHERE `entry` = 33922;
UPDATE `creature_template` SET `npcflag` = 4096 WHERE `entry` = 33921;
UPDATE `creature_template` SET `speed` = 1.5 WHERE `entry` = 23616;

-- NeatElves
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '26082' WHERE `entry` =11896;
UPDATE `npc_trainer` SET `spellcost` = '34000' WHERE `spell` =33950;
UPDATE `npc_trainer` SET `spellcost` = '10000' WHERE `spell` =63670;
UPDATE `npc_trainer` SET `spellcost` = '10000' WHERE `spell` =63671;
UPDATE `npc_trainer` SET `spellcost` = '10000' WHERE `spell` =63672;

-- timmit
DELETE FROM `creature_template_addon` WHERE (`entry`=32186);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (32186, 0, 50331648, 1, 0, '4368 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=32185);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`,  `auras`) VALUES (32185, 0, 50331648, 1, 0, '4368 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=26277);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (26277, 0, 50331648, 1, 0, '4368 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=32180);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (32180, 0, 50331648, 1, 0, '4368 0');

-- WDB
REPLACE INTO `npc_text` VALUES ('13681', 'This unit is busy. Please inquire later.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('14149', 'You are welcome here, friend and ally of the Dragonflights. Take your rest here in our halls.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('13098', 'Time is of the essence here, $n. Are you prepared to be tested?', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12932', '', 'My teachings are only of use to mages. I cannot help you, $c.', '7', '1', '0', '274', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12119', 'We set up this area to practice fire fighting.  You never know when the town will be imperiled!', 'We set up this area to practice fire fighting.  You never know when the town will be imperiled!', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7244', 'Ah, a seasoned veteran you once were. Kilram can make you this again. I know you are capable, you merely need to ask and I shall teach you the way of the axesmith.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7246', '', 'I will teach you the way of the hammersmith. Just ask nicely.', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('13240', 'The Bronze Flight is in your debt.', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('10573', 'Save yourself, $r. Flee from this place! The Crimson Sigil will execute you on sight if you are discovered.', 'Save yourself, $r. Flee from this place! The Crimson Sigil will execute you on sight if you are discovered.', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('13887', 'Thoth can teach you Inscription in The Crystal Hall.', 'Thoth can teach you Inscription in The Crystal Hall.', '0', '1', '0', '5', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('7458', 'Long is the way, and hard, the road you have traveled. Few reach such status amongst our ranks. You are a great friend of the Zandalar empire, $N.$B$BLegendary perhaps... Yes... Perhaps.', '', '0', '1', '0', '1', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8642', 'If you have lost a piece of your Zandalarian armor, I may be able to help.', '', '0', '1', '0', '1', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('8892', 'All hail the exalted hero!', '', '0', '1', '0', '71', '0', '0', '0', '0', 'The story of your journey will be told for years to come!', '', '0', '1', '0', '5', '0', '0', '0', '0', 'I finally have a story to tell my grandchildren about... A traitor to the kingdom was living among us!', '', '0', '1', '0', '1', '0', '6', '0', '0', 'Truth be told, I never liked that gnome...', '', '0', '1', '0', '1', '0', '0', '0', '0', 'We are lucky to have survived this ordeal. If it wasn\'t for you, everyone on this island could have been killed!', '', '0', '1', '0', '1', '0', '5', '0', '0', 'I wonder how many more of them live among us. I knew Spark for years - never could I have imagined that he was a traitor.', '', '0', '1', '0', '1', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('12790', 'Zybarus thanks you from the bottom of his heart, hero. Without you, Zybarus would have died, or worse, Zybarus would have become one of them...', '', '0', '1', '0', '2', '0', '1', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');
REPLACE INTO `npc_text` VALUES ('13119', 'Hurry, $c!$b$bPut the ingredients directly in the pot. Time is of the essence!', '', '0', '1', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0', '0');

-- Chaosua
DELETE FROM event_scripts WHERE id=14400;
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(14400, 15, 9, 39558, 1200, 0, 0, 0, 0, 0),
(14400, 5, 10, 21514, 300000, 0, 3647.55, 7155.28, 143.32, 2.49);
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(39558, 401008, 530, 1, 1, 3607.53, 7185.92, 140.587, 2.53947, 0, 0, 0.955023, 0.296532, -1200, 0, 1);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 22434 WHERE `entry` = 10723;

-- timmit
UPDATE `gameobject` SET `position_z` = 139.16 WHERE `guid` = 39557;
DELETE FROM `creature_template_addon` WHERE (`entry`=27360);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (27360, 0, 0, 1, 0, '51437 0');
UPDATE `quest_template` SET `StartScript` = 12263 WHERE `entry` = 12263;
DELETE FROM `quest_start_scripts` WHERE `id`=12263;
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(12263, 1, 15, 48748, 0, '0', 0, 0, 0, 0),
(12263, 4, 0, 0, 0, '2000001214', 0, 0, 0, 0),
(12263, 3, 15, 48750, 2, '0', 0, 0, 0, 0),
(12263, 6, 15, 48770, 2, '0', 0, 0, 0, 0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001214','Excellent. While you are not going to crush and destroy everything in its path, they do not feel the difference.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
UPDATE `creature` SET `DeathState` = 1 WHERE `guid` = 113470;
INSERT IGNORE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '48748','2','27356');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '48772','0','14','48770','1','0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '48772','1','14','48750','1','0','0','0','0','0');
UPDATE `creature_template` SET `faction_A` = 2035, `faction_H` = 2035 WHERE `entry` in (27356,27360,27362);
UPDATE `creature_template` SET `faction_A` = 1664, `faction_H` = 1664 WHERE `entry` in (27229,27224,27225,27226,27220);
UPDATE `creature_template` SET `gossip_menu_id` = 26593 WHERE `entry` = 26593;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES (26593,12850);
REPLACE INTO `gossip_menu_option` VALUES(26593,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(26593,1,0,'One of the ministers of cult came to my sword and died... Can I get another disguise? I promise, this time I\'ll be careful.',1,1,0,26593,9,12263,0);
REPLACE INTO `gossip_scripts` values
(26593, 1, 15, 48748, 0, '0', 0, 0, 0, 0),
(26593, 4, 0, 0, 0, '2000001214', 0, 0, 0, 0),
(26593, 3, 15, 48750, 1, '0', 0, 0, 0, 0),
(26593, 6, 15, 48770, 1, '0', 0, 0, 0, 0);

-- NeatElves
INSERT IGNORE INTO `item_required_target` (`entry`, `type`, `targetEntry`) VALUES ('35352', '1', '25753'),('35352', '1', '25758'),('35352', '1', '25793');
UPDATE `creature_template` SET `faction_A` = '1968',`faction_H` = '1968' WHERE `entry` in (25215,25216,25217);

-- CRAZYES
DELETE FROM `creature` WHERE `id`=16475;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(72125,16475,530,1,1,0,0,-3964.56,-13924.2,101.11,4.9378,180,0,0,86,0,0,0);

-- timmit
UPDATE `quest_template` SET `ExclusiveGroup` = -12263 WHERE `entry` in (12263,12262);
UPDATE `quest_template` SET `PrevQuestId` = 12263 WHERE `entry` in (12264,12265);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82829, 27356, 571, 1, 1, 0, 683, 4467.82, 1695.52, 149.147, 6.16424, 25, 0, 0, 10111, 3426, 0, 2);
DELETE FROM `waypoint_data` WHERE `id`=828290;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values
('828290','1','4487.07','1693.22','154.207','0','0','0','100','0'),
('828290','2','4513','1692.8','158.444','0','0','0','100','0'),
('828290','3','4540.16','1684.28','167.356','0','0','0','100','0'),
('828290','4','4514.83','1690.32','158.868','0','0','0','100','0'),
('828290','5','4484.38','1692.87','153.119','0','0','0','100','0'),
('828290','6','4463.78','1696.05','145.977','0','0','0','100','0');
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` in (27358,27363);
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` in (27358,27363);
DELETE FROM `creature` WHERE `id`=27362;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82828, 27362, 571, 1, 1, 0, 0, 4627, 1738.59, 182.659, 1.38641, 25, 0, 0, 9997, 0, 0, 0),
(82825, 27362, 571, 1, 1, 0, 0, 4573.78, 1754.68, 167.844, 3.93345, 25, 0, 0, 10111, 0, 0, 0),
(82824, 27362, 571, 1, 1, 0, 0, 4609.79, 1712.3, 171.496, 3.23445, 25, 0, 0, 9940, 0, 0, 0),
(82679, 27362, 571, 1, 1, 0, 0, 4471.85, 1826.38, 171.089, 1.50186, 25, 0, 0, 9940, 0, 0, 0),
(82701, 27362, 571, 1, 1, 0, 0, 4465.72, 1855.96, 171.303, 5.14218, 25, 0, 0, 9997, 0, 0, 0),
(121011, 27362, 571, 1, 1, 0, 0, 4428.91, 1852.85, 163.878, 3.71276, 300, 10, 0, 9940, 0, 0, 1),
(121012, 27362, 571, 1, 1, 0, 0, 4492.43, 1889.1, 164.361, 0.209181, 300, 10, 0, 9940, 0, 0, 1),
(121013, 27362, 571, 1, 1, 0, 0, 4523.33, 1835.82, 164.02, 3.51179, 300, 10, 0, 9940, 0, 0, 1),
(121014, 27362, 571, 1, 1, 0, 0, 4506.61, 1769.47, 164.736, 4.23829, 300, 10, 0, 9940, 0, 0, 1),
(121015, 27362, 571, 1, 1, 0, 0, 4421.61, 1786.17, 163.999, 4.36395, 300, 10, 0, 9940, 0, 0, 1),
(121016, 27362, 571, 1, 1, 0, 0, 4443.32, 1795.82, 164.215, 4.79986, 300, 10, 0, 9940, 0, 0, 1);
DELETE FROM `creature` WHERE `id`=27363;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82703, 27363, 571, 1, 1, 0, 0, 4592.84, 1736.78, 169.833, 1.65973, 25, 5, 0, 10282, 0, 0, 1),
(82823, 27363, 571, 1, 1, 0, 0, 4467.19, 1695.51, 146.729, 6.12506, 25, 5, 0, 10282, 0, 0, 1),
(113431, 27363, 571, 1, 1, 24590, 0, 4451.85, 1621.38, 127.312, 5.97411, 300, 5, 0, 10282, 0, 0, 1),
(113432, 27363, 571, 1, 1, 24590, 0, 4517.38, 1633.94, 130.138, 2.05204, 300, 5, 0, 10282, 0, 0, 1),
(113433, 27363, 571, 1, 1, 24590, 0, 4535.43, 1682.08, 150.161, 5.46288, 300, 5, 0, 10282, 0, 0, 1),
(82821, 27363, 571, 1, 1, 0, 0, 4493.39, 1762.07, 165.258, 2.98234, 25, 5, 0, 10282, 0, 0, 1),
(121017, 27363, 571, 1, 1, 0, 0, 4432.75, 1779.62, 164.419, 2.97381, 300, 5, 0, 10282, 0, 0, 1),
(121018, 27363, 571, 1, 1, 0, 0, 4436.36, 1843.23, 166.255, 6.10274, 300, 5, 0, 10282, 0, 0, 1),
(121019, 27363, 571, 1, 1, 0, 0, 4402.94, 1824.8, 164.333, 1.56785, 300, 5, 0, 10282, 0, 0, 1),
(121020, 27363, 571, 1, 1, 0, 0, 4521.57, 1828.01, 164.02, 0.735421, 300, 5, 0, 10282, 0, 0, 1),
(121021, 27363, 571, 1, 1, 0, 0, 4504.41, 1897.08, 164.244, 2.19234, 300, 5, 0, 10282, 0, 0, 1),
(121022, 27363, 571, 1, 1, 0, 0, 4496.02, 1905.33, 164.27, 5.10224, 300, 5, 0, 10282, 0, 0, 1);
DELETE FROM `creature` WHERE `id`=27358;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82817, 27358, 571, 1, 1, 0, 777, 4616.55, 1749.27, 181.768, 0.699185, 25, 5, 0, 8225, 7809, 0, 1),
(82816, 27358, 571, 1, 1, 0, 777, 4564.17, 1740.18, 167.142, 5.46498, 25, 5, 0, 8225, 7809, 0, 1),
(82815, 27358, 571, 1, 1, 0, 777, 4584.98, 1715.45, 170.628, 1.75869, 25, 5, 0, 8225, 7809, 0, 1),
(120997, 27358, 571, 1, 1, 0, 0, 4439.21, 1785.53, 164.223, 2.27086, 300, 5, 0, 8225, 7809, 0, 1),
(121001, 27358, 571, 1, 1, 0, 0, 4498.31, 1768.9, 164.465, 2.0706, 300, 5, 0, 8225, 7809, 0, 1),
(121004, 27358, 571, 1, 1, 0, 0, 4526.31, 1831.21, 164.019, 5.70303, 300, 5, 0, 8225, 7809, 0, 1),
(121006, 27358, 571, 1, 1, 0, 0, 4496.76, 1896.37, 164.298, 2.18446, 300, 5, 0, 8225, 7809, 0, 1),
(121007, 27358, 571, 1, 1, 0, 0, 4494, 1900.47, 164.314, 5.3496, 300, 5, 0, 8225, 7809, 0, 1),
(121009, 27358, 571, 1, 1, 0, 0, 4414.81, 1841.83, 164.233, 4.93728, 300, 5, 0, 8225, 7809, 0, 1);
UPDATE `creature_template` SET `faction_A` = 2035, `faction_H` = 2035 WHERE `entry` in (27356,27360,27362,27363,27358);
UPDATE `creature_template` SET `faction_A` = 1664, `faction_H` = 1664 WHERE `entry` in (27229,27224,27225,27226,27220);
DELETE FROM `gameobject` WHERE `id`=190570;
DELETE FROM `creature_template_addon` WHERE (`entry`=27362);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (27362, 0, 0, 0, 0, '48460 0');
DELETE FROM `creature_template_addon` WHERE (`entry`=27360);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (27360, 0, 0, 1, 0, '51437 0 48454 0');

-- NeatElves
DELETE FROM `npc_trainer` WHERE `entry` = 15501 AND `spell` = 26916;
DELETE FROM `npc_trainer` WHERE `entry` = 15501 AND `spell` = 31049;
DELETE FROM `npc_trainer` WHERE `entry` = 15501 AND `spell` = 31048;
DELETE FROM `npc_trainer` WHERE `entry` = 15501 AND `spell` = 31050;
DELETE FROM `npc_trainer` WHERE `entry` = 15501 AND `spell` = 38068;
DELETE FROM `npc_trainer` WHERE `entry` = 15501 AND `spell` = 31052;
DELETE FROM `npc_trainer` WHERE `entry` = 15501 AND `spell` = 31051;
DELETE FROM npc_trainer WHERE entry in (24868,25099);
DELETE FROM npc_trainer WHERE spell = 44155; 
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES 
(24868, 44155, 60000, 202, 300, 60),(24868, 44157, 180000, 202, 375, 70);
REPLACE INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES 
(25099, 44155, 60000, 202, 300, 60),(25099, 44157, 180000, 202, 375, 70);
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(26550, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(26553, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26554, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26555, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26669, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26670, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26672, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26683, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26684, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26685, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26686, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26690, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26691, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26692, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(26694, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26696, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(26893, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(28368, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),   
(26687, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(26861, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(26693, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(26668, 1037, 1052, 7, 0, 50, 7, 0, 50, 1);
-- http://www.wowhead.com/?zone=4228
-- norm
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(27633, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(27635, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27638, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27639, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27640, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27641, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27646, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27644, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27645, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27647, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27648, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27649, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27650, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27651, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(27653, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(28276, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(27654, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(27656, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(27655, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(27447, 1037, 1052, 7, 0, 50, 7, 0, 50, 1);
-- http://www.wowhead.com/?zone=4415
-- norm
INSERT IGNORE INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES 
(29271, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(29321, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(29395, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30660, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30661, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30662, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30663, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30664, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30666, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30667, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30668, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30695, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30892, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30893, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(30918, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30961, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30962, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(30963, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(31007, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(31008, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(31009, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(31010, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(31079, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(32191, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(32226, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(32228, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(32230, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(32231, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(32234, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(32235, 1037, 1052, 7, 0, 5, 7, 0, 5, 1), 
(32237, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(32582, 1037, 1052, 7, 0, 5, 7, 0, 5, 1),  
(29266, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(29312, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(29313, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(29314, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(29315, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(29316, 1037, 1052, 7, 0, 50, 7, 0, 50, 1), 
(31134, 1037, 1052, 7, 0, 50, 7, 0, 50, 1);

-- virusav
UPDATE `creature_template` SET `faction_A`=1969,`faction_H`=1969 WHERE `entry` IN (25215,25216,25217);
DELETE FROM `spell_area` WHERE `spell`=45278;
REPLACE INTO `spell_area` SET `spell`=45278, `area`=4033, `quest_start`=11566, `quest_start_active`=1, `quest_end`=11566;
REPLACE INTO `spell_area` SET `spell`=45278, `area`=4097, `quest_start`=11566, `quest_start_active`=1, `quest_end`=11566;

-- timmit
DELETE FROM `creature` WHERE `id`=23839;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82813, 23839, 571, 1, 1, 0, 512, 1392.82, -3460.8, 174.902, 5.44834, 25, 0, 0, 6986, 0, 0, 0),
(82811, 23839, 571, 1, 1, 0, 512, 1337.18, -3448.42, 175.768, 3.24609, 25, 0, 0, 6986, 0, 0, 0),
(82807, 23839, 571, 1, 1, 0, 512, 1337.75, -3453.58, 175.847, 4.22784, 25, 0, 0, 6986, 0, 0, 0),
(82803, 23839, 571, 1, 1, 0, 512, 1344.22, -3455.37, 176.054, 5.12319, 25, 0, 0, 6986, 0, 0, 0),
(96648, 23839, 571, 1, 1, 0, 0, 1390.97, -3460.63, 174.902, 4.81021, 1200, 0, 0, 6986, 0, 0, 0);
DELETE FROM `creature_template_addon` WHERE (`entry`=23836);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (23836, 0, 0, 257, 234, '');
DELETE FROM `creature_addon` WHERE (`guid`=96601);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (96601, 0, 0, 0, 233, '');
UPDATE `creature_template` SET `faction_A` = 2035, `faction_H` = 2035 WHERE `entry` in (27356,27360,27362,27363,27358);
UPDATE `creature_template` SET `faction_A` = 1664, `faction_H` = 1664 WHERE `entry` in (27229,27224,27225,27226,27220);
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 23749;
UPDATE `creature` SET `position_x` = 1341.01, `position_y` = -3139.52, `position_z` = 172.174,`MovementType` = 2, `orientation` = 3.53166 WHERE `guid` = 96620;
DELETE FROM `waypoint_data` WHERE `id`=966200;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values
('966200','1','1333.77','-3143.05','172.174','0','0','0','100','0'),
('966200','2','1340.59','-3139.34','172.174','0','0','0','100','0');

-- NeatElves
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES 
(2579252, 25792, 8, 0, 100, 0, 46432, -1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2579253, 25792, 6, 1, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 33, 26082, 6, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2579352, 25793, 8, 0, 100, 0, 46432, -1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2579353, 25793, 6, 1, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 33, 26082, 6, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2575352, 25753, 8, 0, 100, 0, 46432, -1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2575353, 25753, 6, 1, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 33, 26082, 6, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2575852, 25758, 8, 0, 100, 0, 46432, -1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2575853, 25758, 6, 1, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 33, 26082, 6, 0, 0, 0, 0, 0, 'ytdb-q11896');
UPDATE `creature_template` SET `dynamicflags` = '32',`flags_extra` = '2' WHERE `entry` =26809;
DELETE FROM `creature_template_addon` WHERE (`entry`=26809);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (26809, 0, 7, 4097, 65, '');

-- timmit
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 96619;
DELETE FROM `waypoint_data` WHERE `id`=966190;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values
('966190','1','1359.1','-3151.61','170.932','0','0','0','100','0'),
('966190','2','1374.13','-3147.81','170.934','0','0','0','100','0'),
('966190','3','1375.95','-3149.43','170.934','0','0','0','100','0'),
('966190','4','1382.87','-3161.98','163.275','0','0','0','100','0'),
('966190','5','1375.71','-3170.17','162.817','0','0','0','100','0'),
('966190','6','1364.28','-3179.4','161.791','0','0','0','100','0'),
('966190','7','1366.72','-3193.55','162.823','30000','0','0','100','0'),
('966190','8','1373.74','-3207.97','162.823','0','0','0','100','0'),
('966190','9','1361.09','-3186.15','161.882','0','0','0','100','0'),
('966190','10','1349.11','-3185.17','161.794','0','0','0','100','0'),
('966190','11','1334.08','-3191.11','163.247','0','0','0','100','0'),
('966190','12','1329.48','-3189.99','163.275','0','0','0','100','0'),
('966190','13','1322.67','-3176.46','170.935','0','0','0','100','0'),
('966190','14','1339.8','-3156.69','171.036','0','0','0','100','0'),
('966190','15','1340.9','-3152.2','171.761','30000','0','0','100','0');
delete from creature where guid=95497;
UPDATE `quest_template` SET `PrevQuestId` = 11157 WHERE `entry` = 11187;
UPDATE `quest_template` SET `NextQuestId` = 11187 WHERE `entry` = 11157;
UPDATE `quest_template` SET `PrevQuestId` = 11188 WHERE `entry` = 11199;
UPDATE `quest_template` SET `PrevQuestId` = 11188 WHERE `entry` = 11224;
UPDATE `quest_template` SET `PrevQuestId` = 11328 WHERE `entry` = 11330;
UPDATE `quest_template` SET `PrevQuestId` = 11240 WHERE `entry` = 11175;
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 24284;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=24284);
REPLACE INTO `creature_ai_scripts` VALUES 
(2428451, 24284, 8, 0, 100, 1, 43386, -1, 0, 0, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
UPDATE `creature_template` SET `gossip_menu_id` = 24399 WHERE `entry` = 24399;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES (24399,12082);
REPLACE INTO `gossip_menu_option` VALUES(24399,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(24399,1,0,'Sir, I need another Flying Machine...',1,1,0,24399,9,11390,0),
(24399,2,0,'Sir, I need another Flying Machine...',1,1,0,24399,9,11391,0);
REPLACE INTO `gossip_scripts` values (24399,0,15,45973,1,0,0,0,0,0);
UPDATE `creature_template` SET `IconName` = 'vehicleCursor' WHERE `entry` = 24418;
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '24418','43768','11390','1','11390','1');
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '24418','43768','11391','1','11391','1');
UPDATE `creature_template` SET `gossip_menu_id` = 24060 WHERE `entry` = 24060;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(24060,11622),
(50025,11912);
REPLACE INTO `gossip_menu_option` VALUES(24060,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(24060,1,0,'Sergeant, give me a spyglass.',1,1,50025,24060,0,0,0); -- потом добавить отсутствие этой трубы
REPLACE INTO `gossip_scripts` values 
(24060,0,15,43084,1,0,0,0,0,0);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 24060;
UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestId` = 11250, `ExclusiveGroup` = -11247 WHERE `entry` in (11247,11245,11246);
UPDATE `quest_template` SET `PrevQuestId` = 11250 WHERE `entry` = 11235;
UPDATE `quest_template` SET `PrevQuestId` = 11250 WHERE `entry` = 11231;
delete from creature where id in (24285,24287,24286);
DELETE FROM `creature_loot_template` WHERE `item`=33628;
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (24285, 33628, -100, 0, 1, 1, 0, 0, 0);
UPDATE `quest_template` SET `StartScript` = 11349, `CompleteScript` = 11349 WHERE `entry` = 11349;
DELETE FROM `quest_start_scripts` WHERE `id`=11349;
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(11349, 1, 0, 0, 0, '2000001065', 0, 0, 0, 0);
DELETE FROM `quest_end_scripts` WHERE `id`=11349;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(11349, 7, 0, 0, 0, '2000001068', 0, 0, 0, 0),
(11349, 5, 0, 0, 0, '2000001067', 0, 0, 0, 0),
(11349, 3, 1, 233, 0, '0', 0, 0, 0, 0),
(11349, 1, 0, 0, 0, '2000001066', 0, 0, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 24273 WHERE `entry` = 24273;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(24273,11858);
REPLACE INTO `gossip_menu_option` VALUES(24273,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(24273,1,0,'I took off the worg mask.',1,1,0,24273,9,11325,0); -- тоже надо добавить отсутствие личины
REPLACE INTO `gossip_scripts` values 
(24273,0,15,43379,1,0,0,0,0,0);

-- virusav
UPDATE `creature_ai_scripts` SET `action2_type`=15, `action2_param2`=1 WHERE `id`=2700353;
UPDATE `creature_template` SET `faction_a`=190, `faction_h`=190, `unit_flags`=2, `type_flags`=1152, `ainame`='EventAI', `scriptname`='' WHERE `entry` IN (25342,25343);
UPDATE `creature_template` SET `npcflag`=0, `lootid`=25342 WHERE `entry`=25342;
DELETE FROM `creature_loot_template` WHERE `item`=34842;
REPLACE INTO `creature_loot_template` SET `entry`=25342, `item`=34842, `chanceorquestchance`=-100;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (25342,25343) AND `id`>`creature_id`*100+50;
REPLACE INTO `creature_ai_scripts` SET `id`=2534251, `creature_id`=25342, `event_type`=10, `event_chance`=100, `event_flags`=1, `event_param1`=1, `event_param2`=10, `action1_type`=37, `comment`='YTDB';
REPLACE INTO `creature_ai_scripts` SET `id`=2534252, `creature_id`=25342, `event_type`=8, `event_chance`=100, `event_flags`=1, `event_param1`=45474, `event_param2`=-1, `action1_type`=41, `comment`='YTDB';
REPLACE INTO `creature_ai_scripts` SET `id`=2534351, `creature_id`=25343, `event_type`=8, `event_chance`=100, `event_flags`=1, `event_param1`=45474, `event_param2`=-1, `action1_type`=16, `action1_param1`=25342, `action1_param2`=45474, `action1_param3`=6, `action2_type`=41, `comment`='YTDB';
DELETE FROM `spell_script_target` WHERE `entry`=45474;
REPLACE INTO `spell_script_target` SET `entry`=45474, `type`=2, `targetentry`=25342;
REPLACE INTO `spell_script_target` SET `entry`=45474, `type`=1, `targetentry`=25343;
UPDATE `creature` SET `position_x`=3834.980713, `position_y`=1571.526489, `position_z`=86.698616, `orientation`=2.180055 WHERE `guid`=97899;

-- NeatElves
UPDATE `creature_template_addon` SET `auras` = '45415 0' WHERE `entry` in (25342,25343);
REPLACE INTO `creature_ai_scripts` VALUES ('434451', '4344', '8', '0', '100', '0', '42454', '-1', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q11169');
REPLACE INTO `creature_ai_scripts` VALUES ('434452', '4344', '6', '1', '100', '0', '0', '0', '0', '0', '22', '0', '0', '0', '11', '42455', '6', '22', '0', '0', '0', '0', 'ytdb-q11169');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4344';
REPLACE INTO `creature_ai_scripts` VALUES ('434551', '4345', '8', '0', '100', '0', '42454', '-1', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q11169');
REPLACE INTO `creature_ai_scripts` VALUES ('434552', '4345', '6', '1', '100', '0', '0', '0', '0', '0', '22', '0', '0', '0', '11', '42455', '6', '22', '0', '0', '0', '0', 'ytdb-q11169');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '4345';
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES 
(2579252, 25792, 8, 0, 100, 0, 46432, -1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2579253, 25792, 6, 1, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 33, 26082, 6, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2579352, 25793, 8, 0, 100, 0, 46432, -1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2579353, 25793, 6, 1, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 33, 26082, 6, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2575352, 25753, 8, 0, 100, 0, 46432, -1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2575353, 25753, 6, 1, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 33, 26082, 6, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2575852, 25758, 8, 0, 100, 0, 46432, -1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2575853, 25758, 6, 1, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 33, 26082, 6, 0, 0, 0, 0, 0, 'ytdb-q11896');
REPLACE INTO `item_required_target` (`entry`, `type`, `targetEntry`) VALUES ('35352', '1', '25752');
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES 
(2575252, 25752, 8, 0, 100, 0, 46432, -1, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb-q11896'),
(2575253, 25752, 6, 1, 100, 0, 0, 0, 0, 0, 22, 0, 0, 0, 33, 26082, 6, 0, 0, 0, 0, 0, 'ytdb-q11896');

-- Louisepalmer
DELETE FROM `creature_questrelation` WHERE `quest` = 12847;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (29344, 12847);

-- The_Game_Master
UPDATE `item_template` SET `spellid_1` = 55884, `spellcharges_1` = -1, `spellid_2` = 60021, `spelltrigger_2` = 6 WHERE `entry` = 44175;

-- NeatElves
UPDATE `npc_vendor` SET `ExtendedCost` = '2615' WHERE `item` =41070;
UPDATE `npc_vendor` SET `ExtendedCost` = '2714' WHERE `item` in (41641,41626,41841,40984,40890,49181,41910,41894,41066,41061,41226);
UPDATE `npc_vendor` SET `ExtendedCost` = '2712' WHERE `item` in (41631,41618,41833,49179,41899,41882,40978,40883,41071,41052,41236);
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =63242;
DELETE FROM `waypoint_data` WHERE `id` = 632420;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =64650;
DELETE FROM `waypoint_data` WHERE `id` = 646500;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =64613;
DELETE FROM `waypoint_data` WHERE `id` = 646130;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =64572;
DELETE FROM `waypoint_data` WHERE `id` = 645720;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =64628;
DELETE FROM `waypoint_data` WHERE `id` = 646280;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =64618;
DELETE FROM `waypoint_data` WHERE `id` = 646180;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =64560;
DELETE FROM `waypoint_data` WHERE `id` = 645600;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =64551;
DELETE FROM `waypoint_data` WHERE `id` = 645510;

REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values
('632420','1','4422.53','-175.253','85.476','0','0','0','100','0'),
('632420','2','4388.07','-143.907','80.5364','0','0','0','100','0'),
('632420','3','4362.44','-117.152','70.5252','0','0','0','100','0'),
('632420','4','4332.56','-81.4153','67.5094','5000','0','0','100','0'),
('632420','5','4362.44','-117.152','70.5252','0','0','0','100','0'),
('632420','6','4388.07','-143.907','80.5364','0','0','0','100','0'),
('632420','7','4422.53','-175.253','85.476','0','0','0','100','0'),
('645510','1','3441.4','-246.441','76.3671','0','0','0','100','0'),
('645510','2','3510.82','-267.39','73.4202','0','0','0','100','0'),
('645510','3','3569.76','-275.584','72.7591','0','0','0','100','0'),
('645510','4','3624.27','-281.988','67.6476','0','0','0','100','0'),
('645510','5','3681.26','-265.4','70.3015','0','0','0','100','0'),
('645510','6','3732.17','-240.898','74.5627','0','0','0','100','0'),
('645510','7','3784.71','-212.97','74.16','0','0','0','100','0'),
('645510','8','3845.1','-185.835','62.1489','0','0','0','100','0'),
('645510','9','3903.83','-161.511','54.9324','0','0','0','100','0'),
('645510','10','3975.51','-132.268','54.877','0','0','0','100','0'),
('645510','11','4030.09','-107.658','54.8085','0','0','0','100','0'),
('645510','12','4091.07','-72.1569','57.3965','0','0','0','100','0'),
('645510','13','4167.81','-55.9066','62.8656','0','0','0','100','0'),
('645510','14','4235.18','-65.3936','65.6016','0','0','0','100','0'),
('645510','15','4317.28','-96.0325','65.7213','0','0','0','100','0'),
('645510','16','4383.18','-128.565','75.6796','0','0','0','100','0'),
('645510','17','4453','-166.063','86.2693','5000','0','0','100','0'),
('645510','18','4381.39','-127.488','75.1803','0','0','0','100','0'),
('645510','19','4316.99','-95.7897','65.701','0','0','0','100','0'),
('645510','20','4236.71','-66.1483','65.3355','0','0','0','100','0'),
('645510','21','4167.15','-54.887','62.8526','0','0','0','100','0'),
('645510','22','4092.02','-70.8495','57.3832','0','0','0','100','0'),
('645510','23','4030.14','-107.626','54.8022','0','0','0','100','0'),
('645510','24','3975.29','-132.335','54.8833','0','0','0','100','0'),
('645510','25','3905.15','-160.688','54.9964','0','0','0','100','0'),
('645510','26','3846.66','-185.175','61.8996','0','0','0','100','0'),
('645510','27','3785.16','-213.163','74.0665','0','0','0','100','0'),
('645510','28','3731.5','-240.129','74.4656','0','0','0','100','0'),
('645510','29','3682.61','-265.099','70.3585','0','0','0','100','0'),
('645510','30','3626.02','-281.978','67.5954','0','0','0','100','0'),
('645510','31','3570.75','-276.104','73.0657','0','0','0','100','0'),
('645510','32','3509.1','-267.041','73.1146','0','0','0','100','0'),
('645510','33','3441.91','-246.131','76.2592','0','0','0','100','0'),
('645510','34','3411.91','-236.103','77.9142','5000','0','0','100','0'),
('645600','1','3338.87','625.016','82.0108','0','0','0','100','0'),
('645600','2','3407.47','586.63','77.7305','0','0','0','100','0'),
('645600','3','3490.98','532.159','65.9784','0','0','0','100','0'),
('645600','4','3557.29','537.225','65.7183','0','0','0','100','0'),
('645600','5','3603.5','494.379','57.9433','0','0','0','100','0'),
('645600','6','3650.46','457.84','52.0589','0','0','0','100','0'),
('645600','7','3722.55','405.116','35.5014','5000','0','0','100','0'),
('645600','8','3650.46','457.84','52.0589','0','0','0','100','0'),
('645600','9','3603.5','494.379','57.9433','0','0','0','100','0'),
('645600','10','3557.29','537.225','65.7183','0','0','0','100','0'),
('645600','11','3490.98','532.159','65.9784','0','0','0','100','0'),
('645600','12','3407.47','586.63','77.7305','0','0','0','100','0'),
('645600','13','3338.87','625.016','82.0108','0','0','0','100','0'),
('645720','1','4125.43','337.617','58.4881','0','0','0','100','0'),
('645720','2','4180.33','326.611','64.2451','0','0','0','100','0'),
('645720','3','4242.6','304.968','69.9026','0','0','0','100','0'),
('645720','4','4290.59','279.697','66.6533','0','0','0','100','0'),
('645720','5','4341.25','256.229','68.0091','0','0','0','100','0'),
('645720','6','4384.95','245.341','70.4757','0','0','0','100','0'),
('645720','7','4455.3','259.722','78.7702','0','0','0','100','0'),
('645720','8','4532.31','295.161','88.8793','5000','0','0','100','0'),
('645720','9','4455.3','259.722','78.7702','0','0','0','100','0'),
('645720','10','4384.95','245.341','70.4757','0','0','0','100','0'),
('645720','11','4341.25','256.229','68.0091','0','0','0','100','0'),
('645720','12','4290.59','279.697','66.6533','0','0','0','100','0'),
('645720','13','4242.6','304.968','69.9026','0','0','0','100','0'),
('645720','14','4180.33','326.611','64.2451','0','0','0','100','0'),
('645720','15','4125.43','337.617','58.4881','0','0','0','100','0'),
('646130','1','4181.81','-125.99','68.2972','0','0','0','100','0'),
('646130','2','4237.23','-206.308','70.861','0','0','0','100','0'),
('646130','3','4300.87','-282.291','74.4395','0','0','0','100','0'),
('646130','4','4351.59','-321.488','86.2956','0','0','0','100','0'),
('646130','5','4432.41','-360.762','95.4613','5000','0','0','100','0'),
('646130','6','4351.59','-321.488','86.2956','0','0','0','100','0'),
('646130','7','4300.87','-282.291','74.4395','0','0','0','100','0'),
('646130','8','4237.23','-206.308','70.861','0','0','0','100','0'),
('646130','9','4181.81','-125.99','68.2972','0','0','0','100','0'),
('646180','1','3821.01','371.584','35.176','0','0','0','100','0'),
('646180','2','3741.21','418.248','38.306','0','0','0','100','0'),
('646180','3','3673.58','439.001','46.6351','0','0','0','100','0'),
('646180','4','3577.98','441.433','50.5531','0','0','0','100','0'),
('646180','5','3483.85','417.313','48.5253','0','0','0','100','0'),
('646180','6','3424.08','375.411','52.759','0','0','0','100','0'),
('646180','7','3403.4','275.861','47.3589','0','0','0','100','0'),
('646180','8','3414.93','196.718','53.0779','0','0','0','100','0'),
('646180','9','3454.46','147.5','52.4874','0','0','0','100','0'),
('646180','10','3514.11','111.189','50.4075','0','0','0','100','0'),
('646180','11','3563.01','104.727','51.8771','0','0','0','100','0'),
('646180','12','3638.86','119.581','43.0421','0','0','0','100','0'),
('646180','13','3715.59','172.847','36.6852','5000','0','0','100','0'),
('646180','14','3638.86','119.581','43.0421','0','0','0','100','0'),
('646180','15','3563.01','104.727','51.8771','0','0','0','100','0'),
('646180','16','3514.11','111.189','50.4075','0','0','0','100','0'),
('646180','17','3454.46','147.5','52.4874','0','0','0','100','0'),
('646180','18','3414.93','196.718','53.0779','0','0','0','100','0'),
('646180','19','3403.4','275.861','47.3589','0','0','0','100','0'),
('646180','20','3424.08','375.411','52.759','0','0','0','100','0'),
('646180','21','3483.85','417.313','48.5253','0','0','0','100','0'),
('646180','22','3577.98','441.433','50.5531','0','0','0','100','0'),
('646180','23','3673.58','439.001','46.6351','0','0','0','100','0'),
('646180','24','3741.21','418.248','38.306','0','0','0','100','0'),
('646180','25','3821.01','371.584','35.176','0','0','0','100','0'),
('646280','1','3740.76','-256.909','75.3882','0','0','0','100','0'),
('646280','2','3685.34','-270.053','69.9772','0','0','0','100','0'),
('646280','3','3620.23','-275.852','67.4988','0','0','0','100','0'),
('646280','4','3567.81','-271.7','72.555','0','0','0','100','0'),
('646280','5','3506.48','-257.27','72.7567','0','0','0','100','0'),
('646280','6','3439.76','-239.055','75.4832','0','0','0','100','0'),
('646280','7','3416.18','-195.956','74.1163','0','0','0','100','0'),
('646280','8','3395.62','-119.581','70.0944','5000','0','0','100','0'),
('646280','9','3416.18','-195.956','74.1163','0','0','0','100','0'),
('646280','10','3439.76','-239.055','75.4832','0','0','0','100','0'),
('646280','11','3506.48','-257.27','72.7567','0','0','0','100','0'),
('646280','12','3567.81','-271.7','72.555','0','0','0','100','0'),
('646280','13','3620.23','-275.852','67.4988','0','0','0','100','0'),
('646280','14','3685.34','-270.053','69.9772','0','0','0','100','0'),
('646280','15','3740.76','-256.909','75.3882','0','0','0','100','0'),
('646500','1','4250.73','-232.857','71.0816','0','0','0','100','0'),
('646500','2','4220.03','-151.59','67.3988','0','0','0','100','0'),
('646500','3','4210.63','-106.008','65.6157','0','0','0','100','0'),
('646500','4','4197.28','-47.3033','65.9478','0','0','0','100','0'),
('646500','5','4182.92','15.8411','62.2477','5000','0','0','100','0'),
('646500','6','4197.28','-47.3033','65.9478','0','0','0','100','0'),
('646500','7','4210.63','-106.008','65.6157','0','0','0','100','0'),
('646500','8','4220.03','-151.59','67.3988','0','0','0','100','0'),
('646500','9','4250.73','-232.857','71.0816','0','0','0','100','0');

-- timmit
delete from gameobject where guid in (44125,52512,52508);
DELETE FROM `gameobject` WHERE `id`=186236;
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(44124, 186236, 571, 1, 1, 657.317, -5059, 1.79673, 5.20006, 0, 0, 0.515478, -0.856903, 30, 100, 1),
(44125, 186236, 571, 1, 1, 646.326, -5062.4, 0.893175, 5.12938, 0, 0, 0.54543, -0.838157, 30, 100, 1);
DELETE FROM `creature` WHERE `id`=23551;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(98111, 23551, 571, 1, 1, 0, 0, 662.746, -5049.57, 3.71422, 5.16472, 1200, 0, 0, 3728, 0, 0, 0),
(98112, 23551, 571, 1, 1, 0, 0, 658.239, -5053.77, 2.47659, 5.46709, 1200, 0, 0, 3728, 0, 0, 0),
(98113, 23551, 571, 1, 1, 0, 0, 648.016, -5059.39, 1.18744, 5.43961, 1200, 0, 0, 3728, 0, 0, 0),
(98114, 23551, 571, 1, 1, 0, 0, 653.122, -5057.35, 1.66812, 5.1333, 1200, 0, 0, 3728, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=23783;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(98120, 23783, 571, 1, 1, 0, 0, 624.156, -5022.51, 2.54029, 2.0412, 1200, 0, 0, 6116, 0, 0, 0),
(98121, 23783, 571, 1, 1, 0, 0, 613.874, -5020.74, 2.49209, 0.673867, 1200, 0, 0, 6116, 0, 0, 0),
(98122, 23783, 571, 1, 1, 0, 0, 616.7, -5008.1, 2.92189, 5.30374, 1200, 0, 0, 6116, 0, 0, 0),
(98123, 23783, 571, 1, 1, 0, 0, 622.588, -5008.51, 3.1884, 4.23953, 1200, 0, 0, 6116, 0, 0, 0),
(82801, 23783, 571, 1, 1, 0, 0, 626.611, -5013.45, 3.26686, 3.52325, 1200, 0, 0, 6326, 0, 0, 0),
(82802, 23783, 571, 1, 1, 0, 0, 611.583, -5015.75, 2.82386, 6.27527, 1200, 0, 0, 6116, 0, 0, 0);
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 23738;
DELETE FROM `creature` WHERE `id`=23738;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(95230, 23738, 571, 1, 1, 0, 0, 650.853, -4959.8, 5.87731, 3.78059, 1200, 0, 0, 7181, 0, 0, 2);

DELETE FROM `waypoint_data` WHERE `id`=952300;
DELETE FROM `waypoint_data` WHERE `id`=1172270;
DELETE FROM `waypoint_data` WHERE `id`=1172320;
DELETE FROM `waypoint_data` WHERE `id`=1172340;
DELETE FROM `waypoint_data` WHERE `id`=1172360;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values
('952300','1','644.924','-4964.07','5.48314','0','0','0','100','0'),
('952300','2','639.603','-4986.83','5.85496','0','0','0','100','0'),
('952300','3','645.309','-4963.49','5.50223','0','0','0','100','0'),
('952300','4','650.421','-4959.89','5.85206','0','0','0','100','0'),
('1172270','1','716.697','-4970.46','6.097','0','0','0','100','0'),
('1172320','1','711.481','-4942.65','4.99366','0','0','0','100','0'),
('1172340','1','709.51','-4933.28','6.80713','0','0','0','100','0'),
('1172360','1','723.495','-4991.5','6.59923','0','0','0','100','0');
UPDATE `creature` SET `spawntimesecs` = 30, `spawndist` = 0 WHERE `guid` = 117227;
UPDATE `creature` SET `spawntimesecs` = 30, `spawndist` = 0 WHERE `guid` = 117232;
UPDATE `creature` SET `spawntimesecs` = 30, `spawndist` = 0 WHERE `guid` = 117234;
UPDATE `creature` SET `spawntimesecs` = 30, `spawndist` = 0 WHERE `guid` = 117235;
UPDATE `creature` SET `spawntimesecs` = 30, `spawndist` = 0 WHERE `guid` = 117236;
DELETE FROM `creature_model_info` WHERE (`modelid`=21754);
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (21754, 0.306, 3, 0, 21755);
DELETE FROM `creature_model_info` WHERE (`modelid`=21755);
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (21755, 0.306, 3, 0, 21754);
DELETE FROM `creature_template_addon` WHERE (`entry`=23739);
DELETE FROM `creature_addon` WHERE (`guid`=98099);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (98099, 8469, 0, 257, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=117227);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (117227, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=117232);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (117232, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=117234);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (117234, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=117235);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (117235, 0, 0, 0, 0, '');
DELETE FROM `creature_addon` WHERE (`guid`=117236);
REPLACE INTO `creature_addon` (`guid`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (117236, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `unit_flags` = 33554432 WHERE `entry` = 24077;
UPDATE `quest_template` SET `PrevQuestId` = 11244 WHERE `entry` in (11420,11333);
UPDATE `creature_template` SET `dynamicflags` = 36 WHERE `entry` = 24122;
DELETE FROM `creature_template_addon` WHERE (`entry`=24122);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (24122, 0, 7, 4097, 65, '');
UPDATE `creature_template` SET `dynamicflags` = 36 WHERE `entry` = 24145;
DELETE FROM `creature_template_addon` WHERE (`entry`=24145);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (24145, 0, 7, 4097, 65, '');
DELETE FROM `creature_template_addon` WHERE (`entry`=23652);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (23652, 0, 0, 1, 234, '');
UPDATE `creature` SET `position_x` = 916.739, `position_y` = -4976.87, `position_z` = 3.22535, `orientation` = 1.2621 WHERE `guid` = 98166;

-- KiriX
UPDATE creature SET position_x = '3858.351318', position_y = '6395.748535', position_z = '25.192661', orientation = '5.521677' WHERE guid = '118351';

-- virusav
UPDATE `creature_template` SET `unit_flags`=`unit_flags` | 32768, `inhabittype`=`inhabittype` | 5 WHERE `entry` IN (29799,30343,30344,30345,30346,30347,30350,30351,30380,30392,30394,30476,30559,30640,30646,30651,30655,30833,30867,31259,31353,32193,32302,32566,29795,30380,30588,30589,30649,30690,30699,30700,30707,30752,30753,30754,30825,30826,30827,30866,31243,31261,32256,32301,32767,32769);

-- NeatElves
UPDATE `npc_vendor` SET `ExtendedCost` = '2615' WHERE `item` in (41630,41617,41832,41898,41881,40976,40881,41070,41051,41235);
UPDATE `npc_vendor` SET `ExtendedCost` = '2614' WHERE `item` in (41640,41625,41840,40983,40889,41893,41909,41065,41060,41225);
DELETE FROM `npc_vendor` WHERE `npc_vendor`.`entry` = 32294 AND `item` = 44097;
DELETE FROM `npc_vendor` WHERE `npc_vendor`.`entry` = 32294 AND `item` = 44077;
INSERT IGNORE INTO `game_event_creature` ( `guid` , `event` ) VALUES ('102196', '17'), ('86628', '17'), ('86629', '17'), ('86630', '17');
UPDATE `creature_template` SET `faction_A` = '814',`faction_H` = '814' WHERE `entry` =16255;
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35' WHERE `entry` =21071;

-- timmit
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `MovementType` = 2, `InhabitType` = 4 WHERE `entry` = 23935;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 24272;
UPDATE `creature_template` SET `unit_flags` = 33554434, `flags_extra` = 2 WHERE `entry` = 24272;
DELETE FROM `creature_template_addon` WHERE (`entry`=23935);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (23935, 0, 503316481, 1, 0, '');
UPDATE `creature` SET `position_x` = 949.399, `position_y` = -4840.1, `position_z` = -69.6387, `orientation` = 1.8638 WHERE `guid` = 117243;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 24248;
DELETE FROM `creature` WHERE `id`=24248;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82730, 24248, 571, 1, 2, 0, 0, 1058.61, -4917.45, 10.6189, 3.46522, 25, 0, 0, 27890000, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=23935;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82726, 23935, 571, 1, 2, 0, 0, 930.065, -4908.42, 3.75373, 1.82767, 25, 0, 0, 9610, 0, 0, 0),
(82727, 23935, 571, 1, 2, 0, 0, 923.703, -4871.15, 4.7253, 5.60544, 25, 0, 0, 9610, 0, 0, 0),
(82728, 23935, 571, 1, 2, 0, 0, 975.728, -4847.16, 16.1901, 3.93647, 25, 0, 0, 9610, 0, 0, 0),
(82729, 23935, 571, 1, 2, 0, 0, 1004, -4859.85, 53.504, 5.28342, 25, 0, 0, 9610, 0, 0, 0);
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 24327;
DELETE FROM `creature` WHERE `id`=24327;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82724, 24327, 571, 1, 2, 0, 0, 1062.26, -4925.3, 16.9932, 3.48093, 25, 0, 0, 9610, 0, 0, 0),
(82721, 24327, 571, 1, 2, 0, 0, 1057.28, -4909.43, 16.9932, 3.42988, 25, 0, 0, 9610, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 2, `flags_extra` = 2 WHERE `entry` = 24314;
DELETE FROM `creature` WHERE `id`=24314;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82715, 24314, 571, 1, 2, 0, 0, 1072.85, -5029.35, 9.75146, 4.94099, 25, 0, 0, 5158, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14, `unit_flags` = 2, `flags_extra` = 2 WHERE `entry` = 24315;
DELETE FROM `creature` WHERE `id`=24315;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82747, 24315, 571, 1, 2, 0, 0, 1074.21, -5034.29, 9.86589, 3.37019, 25, 0, 0, 5158, 0, 0, 0);
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '42786','3982','0','0','0','0','0','2','0');
UPDATE `creature_template` SET `unit_flags` = 33554432, `dynamicflags` = 36 WHERE `entry` = 24114;
UPDATE `creature_template` SET `unit_flags` = 33554432, `dynamicflags` = 36 WHERE `entry` = 24113;
UPDATE `creature_template` SET `unit_flags` = 33554432, `dynamicflags` = 36 WHERE `entry` = 24115;
DELETE FROM `creature_template_addon` WHERE (`entry`=23935);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (23935, 0, 50331648, 257, 0, '');
UPDATE `creature` SET `position_x` = 1145.74, `position_y` = -4998, `position_z` = 32.257, `orientation` = 2.97862 WHERE `guid` = 117238;
UPDATE `creature` SET `position_x` = 1223.98, `position_y` = -5292.9, `position_z` = 179.331, `orientation` = 5.50294 WHERE `guid` = 117212;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(82795, 23739, 571, 1, 1, 0, 509, 1220.35, -5293.04, 179.229, 5.57362, 25, 0, 0, 38440, 0, 0, 0),
(82796, 23739, 571, 1, 1, 0, 509, 1224.27, -5289.77, 179.253, 5.53435, 25, 0, 0, 38440, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 27930;
UPDATE `creature_template` SET `gossip_menu_id` = 27930 WHERE `entry` = 27930;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(27930,13004);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(27930,0,0,'Emilune, I sent Admiral Keller. Please send me To Westguard Keep!',1,1,0,27930,9,11291,0); 
REPLACE INTO `gossip_scripts` values 
(27930,0,15,50028,1,0,0,0,0,0);
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 24752;
UPDATE `creature` SET `position_x` = 497.784, `position_y` = -5947.92, `position_z` = 314.348, `orientation` = 5.41135 WHERE `guid` = 116674;
UPDATE `creature` SET `position_x` = 475.965, `position_y` = -5935.33, `position_z` = 308.72, `orientation` = 0.705239 WHERE `guid` = 116559;
-- этот наконец будет сидеть на скамейке,а не делать вид что "ходит по большому где то рядом"
UPDATE `creature` SET `position_x` = 479.663, `position_y` = -5929.46, `position_z` = 308.665, `orientation` = 1.11701 WHERE `guid` = 116558;
UPDATE `creature` SET `position_x` = 488.577, `position_y` = -5920.48, `position_z` = 308.654, `orientation` = 2.54565, `MovementType` = 2 WHERE `guid` = 107712;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 24718;
DELETE FROM `waypoint_data` WHERE `id`=1077120;
REPLACE INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `delay`, `move_flag`, `action`, `action_chance`, `wpguid`) values
('1077120','1','484.591','-5917.77','308.67','0','0','0','100','0'),
('1077120','2','488.193','-5919.81','308.655','0','0','0','100','0');
UPDATE `creature` SET `position_x` = 495.487, `position_y` = -5928.86, `position_z` = 308.705, `orientation` = 4.091 WHERE `guid` = 107216;
DELETE FROM `creature_template_addon` WHERE (`entry`=24751);
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (24751, 0, 50331648, 257, 0, '');
DELETE FROM `creature_model_info` WHERE (`modelid`=22625);
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (22625, 0.25, 0.25, 2, 0);
UPDATE `creature` SET `position_x` = 1247.05, `position_y` = -3341.22, `position_z` = 199.881, `orientation` = 2.98407 WHERE `guid` = 116714;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 24752;
UPDATE `creature_template` SET `gossip_menu_id` = 24752 WHERE `entry` = 24752;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(24752,12167);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(24752,0,0,'<To feed the worm rocky falcon>',1,1,0,24752,2,34102,1); 
REPLACE INTO `gossip_scripts` values 
(24752,0,15,44363,1,0,0,0,0,0);

-- Forum_FIX
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 26612, `ReqSpellCast1` = 0 WHERE `entry` = 12029;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 26612, `ReqSpellCast1` = 0 WHERE `entry` = 12038;
UPDATE `quest_template` SET `PrevQuestId` = 12029 WHERE `entry` = 12038;
UPDATE `gameobject_template` SET `faction` = 1732, `flags` = 32, `data23` = 0 WHERE `entry` = 190371;
UPDATE `gameobject_template` SET `data1` = 21648 WHERE `entry` = 178670;
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63 WHERE `entry` = 31099;
UPDATE `creature` SET `spawntimesecs` = 240, `spawndist` = 10 WHERE `guid` = 89806;
UPDATE `creature` SET `spawntimesecs` = 300, `spawndist` = 5 WHERE `id` = 25650;
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 6983;
DELETE FROM `pickpocketing_loot_template` WHERE (`entry`=6188) AND (`item`=19775);
REPLACE INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (6188, 19775, 50, 0, 1, 1, 0, 0, 0);
UPDATE `quest_template` SET `QuestFlags` = 2, `SpecialFlags` = 2 WHERE `entry` = 6981;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 24121, `ReqSpellCast1` = 0 WHERE `entry` = 11170;
UPDATE `creature_template` SET `difficulty_entry_1` = 0 WHERE `entry` = 24822;
UPDATE `creature_template` SET `Health_mod` = 1 WHERE `entry` = 24852;
UPDATE `creature_template` SET `modelid1` = 548, `modelid3` = 548, `modelid4` = 0, `faction_A` = 35, `faction_H` = 35, `npcflag` = 0, `type` = 9, `Mana_mod` = 1, `movementId` = 259 WHERE `entry` = 24852;
UPDATE `creature_template` SET `Mana_mod` = 50 WHERE `entry` = 30587;
UPDATE `creature_template` SET `Mana_mod` = 50 WHERE `entry` = 16696;
DELETE FROM `gameobject` WHERE `id`=175124;
REPLACE INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(20893, 175124, 229, 1, 1, 62.249, -282.679, 95.9615, 0.537532, 0, 0, 0.265542, 0.964099, 900, 100, 1),
(20894, 175124, 229, 1, 1, 56.3264, -239.504, 97.8288, 4.95541, 0, 0, 0.616185, -0.787601, 900, 100, 1),
(20895, 175124, 229, 1, 1, 94.859, -255.882, 91.454, 3.55032, 0, 0, 0.97919, -0.202946, 900, 100, 1),
(20896, 175124, 229, 1, 1, 102.845, -287.612, 91.4534, 3.07281, 0, 0, 0.999409, 0.0343866, 900, 100, 1),
(20897, 175124, 229, 1, 1, 68.5592, -304.471, 91.4544, 5.0151, 0, 0, 0.592408, -0.805638, 900, 100, 1),
(20898, 175124, 229, 1, 1, 93.2234, -314.596, 91.4444, 3.15292, 0, 0, 0.999984, -0.00566365, 900, 100, 1),
(30339, 175124, 229, 1, 1, 62.5902, -288.346, 96.3809, 5.85676, 0, 0, 0.211599, -0.977356, 900, 100, 1),
(3000, 175124, 229, 1, 1, 73.1609, -263.807, 92.0705, 5.39181, 0, 0, 0.431079, -0.902314, 900, 100, 1),
(29368, 175124, 229, 1, 1, 82.6636, -284.188, 91.4489, 2.96336, 0, 0, 0.996032, 0.0889997, 900, 100, 1),
(29362, 175124, 229, 1, 1, 60.0664, -287.199, 96.3809, 5.85676, 0, 0, 0.211599, -0.977356, 900, 100, 1),
(7659, 175124, 229, 1, 1, 91.7525, -261.846, 91.45, 1.27632, 0, 0, 0.595719, 0.803193, 900, 100, 1),
(7658, 175124, 229, 1, 1, 101.41, -263.827, 91.4521, 4.94727, 0, 0, 0.619382, -0.78509, 900, 100, 1),
(2894, 175124, 229, 1, 1, 89.6286, -314.43, 91.4436, 5.29834, 0, 0, 0.47276, -0.881191, 900, 100, 1),
(2749, 175124, 229, 1, 1, 62.3374, -254.767, 96.6042, 4.70615, 0, 0, 0.709308, -0.704898, 900, 100, 1),
(2569, 175124, 229, 1, 1, 94.6368, -266.78, 91.4495, 4.57892, 0, 0, 0.752685, -0.65838, 900, 100, 1),
(7650, 175124, 229, 1, 1, 76.9978, -281.888, 91.4594, 1.58341, 0, 0, 0.711553, 0.702632, 900, 100, 1),
(2172, 175124, 229, 1, 1, 84.6681, -265.543, 91.4626, 4.80746, 0, 0, 0.672707, -0.739909, 900, 100, 1),
(2173, 175124, 229, 1, 1, 76.5957, -295.585, 91.4433, 3.30264, 0, 0, 0.99676, -0.0804382, 900, 100, 1),
(2174, 175124, 229, 1, 1, 99.8169, -288.819, 91.4455, 3.69848, 0, 0, 0.961484, -0.27486, 900, 100, 1),
(2175, 175124, 229, 1, 1, 99.6855, -309.754, 91.4455, 2.77956, 0, 0, 0.983662, 0.180027, 900, 100, 1),
(203, 175124, 229, 1, 1, 84.3405, -279.23, 91.456, 4.40928, 0, 0, 0.805758, -0.592245, 900, 100, 1),
(2158, 175124, 229, 1, 1, 98.7169, -315.293, 91.4455, 1.7342, 0, 0, 0.762456, 0.64704, 900, 100, 1),
(2157, 175124, 229, 1, 1, 81.3529, -299.837, 91.441, 2.51332, 0, 0, 0.951064, 0.308995, 900, 100, 1),
(1838, 175124, 229, 1, 1, 95.5697, -287.292, 91.4455, 3.96866, 0, 0, 0.915707, -0.401846, 900, 100, 1),
(17076, 175124, 229, 1, 1, 76.3646, -316.875, 91.4398, 1.82767, 0, 0, 0.791851, 0.610714, 900, 100, 1),
(9972, 175124, 229, 1, 1, 55.4865, -254.681, 97.2107, 1.17579, 0, 0, 0.554611, 0.83211, 900, 100, 1),
(9938, 175124, 229, 1, 1, 92.1021, -283.031, 91.4455, 2.13082, 0, 0, 0.874989, 0.484143, 900, 100, 1),
(9805, 175124, 229, 1, 1, 89.4266, -280.226, 91.4467, 5.64078, 0, 0, 0.315708, -0.948857, 900, 100, 1),
(9928, 175124, 229, 1, 1, 59.5576, -307.48, 91.5583, 2.04915, 0, 0, 0.854494, 0.519462, 900, 100, 1),
(9688, 175124, 229, 1, 1, 72.3158, -259.868, 93.1696, 2.99634, 0, 0, 0.997364, 0.0725603, 900, 100, 1),
(9768, 175124, 229, 1, 1, 94.7084, -286.925, 91.4455, 4.13045, 0, 0, 0.88024, -0.474529, 900, 100, 1),
(9668, 175124, 229, 1, 1, 70.6821, -314.686, 91.4338, 2.06721, 0, 0, 0.859151, 0.511723, 900, 100, 1),
(9671, 175124, 229, 1, 1, 87.8128, -300.425, 91.4452, 4.65667, 0, 0, 0.726528, -0.687137, 900, 100, 1),
(9664, 175124, 229, 1, 1, 67.519, -303.853, 91.4578, 2.6814, 0, 0, 0.973644, 0.228073, 900, 100, 1),
(9652, 175124, 229, 1, 1, 98.347, -257.645, 91.453, 1.36821, 0, 0, 0.631981, 0.774984, 900, 100, 1),
(946, 175124, 229, 1, 1, 79.8219, -320.078, 91.4441, 4.17994, 0, 0, 0.86823, -0.496161, 900, 100, 1),
(9649, 175124, 229, 1, 1, 95.1138, -308.314, 91.4455, 6.11123, 0, 0, 0.085874, -0.996306, 900, 100, 1),
(9243, 175124, 229, 1, 1, 49.7282, -307.524, 91.5517, 2.33975, 0, 0, 0.920702, 0.390267, 900, 100, 1),
(9368, 175124, 229, 1, 1, 45.7887, -311.05, 91.5824, 2.58479, 0, 0, 0.961496, 0.274817, 900, 100, 1),
(9217, 175124, 229, 1, 1, 64.5544, -306.449, 91.5029, 3.7409, 0, 0, 0.955439, -0.295189, 900, 100, 1),
(9233, 175124, 229, 1, 1, 62.812, -262.038, 94.757, 0.470501, 0, 0, 0.233087, 0.972456, 900, 100, 1),
(909, 175124, 229, 1, 1, 50.2655, -299.757, 91.4989, 1.27868, 0, 0, 0.596664, 0.802491, 900, 100, 1),
(9104, 175124, 229, 1, 1, 83.9326, -316.16, 91.4373, 2.94529, 0, 0, 0.995187, 0.0979938, 900, 100, 1),
(9089, 175124, 229, 1, 1, 88.7562, -275.413, 91.4511, 4.59149, 0, 0, 0.748534, -0.663096, 900, 100, 1),
(905, 175124, 229, 1, 1, 57.1257, -260.297, 95.4388, 2.19366, 0, 0, 0.889765, 0.456419, 900, 100, 1),
(8997, 175124, 229, 1, 1, 59.759, -256.957, 96.5394, 1.53157, 0, 0, 0.693105, 0.720837, 900, 100, 1),
(8989, 175124, 229, 1, 1, 88.3525, -279.726, 91.4472, 5.48291, 0, 0, 0.389547, -0.921007, 900, 100, 1),
(8856, 175124, 229, 1, 1, 85.619, -300.166, 91.4435, 3.26966, 0, 0, 0.997951, -0.0639899, 900, 100, 1),
(8754, 175124, 229, 1, 1, 48.9782, -316.766, 91.5369, 3.14714, 0, 0, 0.999996, -0.00277273, 900, 100, 1),
(8714, 175124, 229, 1, 1, 60.6862, -255.742, 96.6897, 1.69729, 0, 0, 0.750385, 0.661001, 900, 100, 1),
(8630, 175124, 229, 1, 1, 80.9852, -278.73, 91.4622, 1.10432, 0, 0, 0.524527, 0.851394, 900, 100, 1),
(8491, 175124, 229, 1, 1, 100.326, -282.255, 91.4455, 1.38077, 0, 0, 0.636834, 0.771001, 900, 100, 1),
(8450, 175124, 229, 1, 1, 78.5641, -303.305, 91.4369, 3.6655, 0, 0, 0.965886, -0.258968, 900, 100, 1),
(8236, 175124, 229, 1, 1, 35.8036, -313.87, 91.5496, 3.67964, 0, 0, 0.964031, -0.265788, 900, 100, 1),
(8226, 175124, 229, 1, 1, 88.259, -296.641, 91.4481, 5.55988, 0, 0, 0.353819, -0.935314, 900, 100, 1),
(8169, 175124, 229, 1, 1, 65.3044, -254.516, 96.4064, 0.418664, 0, 0, 0.207807, 0.97817, 900, 100, 1),
(8109, 175124, 229, 1, 1, 99.8218, -280.647, 91.4455, 1.48837, 0, 0, 0.677372, 0.735641, 900, 100, 1),
(8101, 175124, 229, 1, 1, 99.3746, -290.11, 91.4456, 5.7468, 0, 0, 0.264989, -0.964251, 900, 100, 1),
(8007, 175124, 229, 1, 1, 79.4962, -286.007, 91.4501, 2.57066, 0, 0, 0.95953, 0.281606, 900, 100, 1),
(7997, 175124, 229, 1, 1, 87.8358, -254.747, 91.4604, 2.44185, 0, 0, 0.939417, 0.342776, 900, 100, 1),
(785, 175124, 229, 1, 1, 58.3551, -265.699, 93.7289, 2.3908, 0, 0, 0.930362, 0.366641, 900, 100, 1),
(7996, 175124, 229, 1, 1, 57.5428, -249.673, 96.8029, 2.35467, 0, 0, 0.923588, 0.383387, 900, 100, 1),
(7913, 175124, 229, 1, 1, 78.1627, -298.695, 91.4395, 5.13419, 0, 0, 0.543412, -0.839466, 900, 100, 1),
(7751, 175124, 229, 1, 1, 54.9504, -259.743, 95.4528, 2.86047, 0, 0, 0.990137, 0.1401, 900, 100, 1),
(7676, 175124, 229, 1, 1, 86.7956, -299.013, 91.4446, 5.3384, 0, 0, 0.45502, -0.890481, 900, 100, 1),
(7664, 175124, 229, 1, 1, 103.683, -286.169, 91.4655, 0.0966453, 0, 0, 0.0483038, 0.998833, 900, 0, 1),
(7663, 175124, 229, 1, 1, 87.8873, -317.573, 91.4403, 4.21371, 0, 0, 0.859729, -0.510751, 900, 100, 1);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=2, `lootcondition`=0, `condition_value1`=0, `condition_value2`=0 WHERE `item`=1357;
REPLACE INTO `item_loot_template` ( `entry` , `item` , `ChanceOrQuestChance` , `groupid` , `mincountOrRef` , `maxcount` , `lootcondition` , `condition_value1` , `condition_value2` ) VALUES
(35348, 33818, 5, 0, 1, 1, 0, 0, 0),
(35348, 33816, 5, 0, 1, 1, 0, 0, 0),
(35348, 35349, 5, 0, 1, 1, 0, 0, 0),
(35348, 35350, 5, 0, 1, 1, 0, 0, 0);

-- NeatElves
UPDATE `quest_template` SET `RewRepValue1` = '1400' WHERE `entry` in (8460,8470);
UPDATE `quest_template` SET `RewRepValue1` = '100' WHERE `entry` in (8462,8465) ;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '20' WHERE `creature_id` =10916;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '60' WHERE `creature_id` in (9462,9464);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '40' WHERE `creature_id` =10738;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '100' WHERE `creature_id` in (15623,14342,10199);
DELETE FROM `gameobject` WHERE `guid` = 72784;

-- Forum_FIX
REPLACE INTO `gameobject` VALUES ('7329', '179895', '0', '1', '1', '-599.543', '-4610.39', '9.73191', '-0.448994', '0', '0', '-0.222616', '0.974906', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('7058', '195603', '0', '1', '1', '-8815.17', '652.927', '94.8966', '-1.40499', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6999', '195604', '0', '1', '1', '-8861.5', '636.744', '96.1785', '1.91113', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6989', '195615', '0', '1', '1', '-8826.53', '725.576', '98.6769', '-1.15192', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6987', '195620', '0', '1', '1', '-8753.29', '565.232', '97.5344', '2.37364', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6940', '195616', '0', '1', '1', '-8724.32', '773.501', '98.5085', '2.55691', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6921', '195614', '0', '1', '1', '-8811.28', '838.164', '99.0288', '-0.122173', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6866', '195609', '0', '1', '1', '-8662.74', '774.29', '97.0101', '2.25147', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6791', '195612', '0', '1', '1', '-8620.95', '929.647', '99.5196', '-2.41728', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6577', '195613', '0', '1', '1', '-8393.65', '1064.36', '31.6302', '3.08918', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6532', '195610', '0', '1', '1', '-9003.5', '860.55', '105.877', '-1.213', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6530', '195617', '0', '1', '1', '-8581.62', '669.014', '97.9201', '1.25664', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6479', '195619', '0', '1', '1', '-8498.18', '654.276', '100.527', '2.72271', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6345', '195618', '0', '1', '1', '-8572.36', '552.684', '102.004', '-2.61799', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6326', '195605', '0', '1', '1', '-8559.02', '457.105', '104.649', '1.94604', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
UPDATE creature_template SET unit_flags = unit_flags | 8 WHERE entry IN (739,927,1444,12336,5484,1182,8140,5489,1351,26044,31261,5661);
UPDATE `quest_template` SET `QuestFlags` = 2, `SpecialFlags` = 2, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0, `ReqSpellCast1` = 0 WHERE `entry` = 6001;
UPDATE `quest_template` SET `QuestFlags` = 2, `SpecialFlags` = 2, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0, `ReqSpellCast1` = 0 WHERE `entry` = 6002;
UPDATE `gameobject_template` SET `faction` = 0 WHERE `entry` = 35591;

-- timmit
DELETE FROM `creature_ai_scripts` WHERE (`id`='1214401');
UPDATE `creature_template` SET `gossip_menu_id` = '3862' WHERE `entry` = '12144';
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `cond_1`, `cond_1_val_1` ) VALUE ('3862', '4714', '9', '6001');
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('3863', '4715');
REPLACE INTO `gossip_menu_option` (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, cond_1,cond_1_val_1,cond_1_val_2)
VALUES ('3862', '0', '0', 'You fought bravely, the spirit. I beg you, grant me strength of body and hardness of heart.', '1', '1', 3863, 3863, 9, 6001, 0);
REPLACE INTO `gossip_scripts` values (3863,0,7,6001,6,0,0,0,0,0);
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `cond_1`, `cond_1_val_1` ) VALUEs ('3862', '4714', 0, 0);
REPLACE INTO `gossip_menu_option` (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, cond_1,cond_1_val_1,cond_1_val_2)
VALUES ('3862', '1', '0', 'You fought bravely, the spirit. I beg you, grant me strength of body and hardness of heart.', '1', '1', 3863, 3862, 9, 6002, 0);
REPLACE INTO `gossip_scripts` values (3862,0,7,6002,6,0,0,0,0,0);

-- NeatElves
UPDATE `quest_template` SET `RewRepValue1` = '1400' WHERE `entry` in (8460,8470);
UPDATE `quest_template` SET `RewRepValue1` = '100' WHERE `entry` in (8462,8465) ;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '20' WHERE `creature_id` =10916;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '60' WHERE `creature_id` in (9462,9464);
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '40' WHERE `creature_id` =10738;
UPDATE `creature_onkill_reputation` SET `RewOnKillRepValue1` = '100' WHERE `creature_id` in (15623,14342,10199);
DELETE FROM `gameobject` WHERE `guid` = 72784;

-- Forum_FIX
REPLACE INTO `gameobject` VALUES ('7329', '179895', '0', '1', '1', '-599.543', '-4610.39', '9.73191', '-0.448994', '0', '0', '-0.222616', '0.974906', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('7058', '195603', '0', '1', '1', '-8815.17', '652.927', '94.8966', '-1.40499', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6999', '195604', '0', '1', '1', '-8861.5', '636.744', '96.1785', '1.91113', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6989', '195615', '0', '1', '1', '-8826.53', '725.576', '98.6769', '-1.15192', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6987', '195620', '0', '1', '1', '-8753.29', '565.232', '97.5344', '2.37364', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6940', '195616', '0', '1', '1', '-8724.32', '773.501', '98.5085', '2.55691', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6921', '195614', '0', '1', '1', '-8811.28', '838.164', '99.0288', '-0.122173', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6866', '195609', '0', '1', '1', '-8662.74', '774.29', '97.0101', '2.25147', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6791', '195612', '0', '1', '1', '-8620.95', '929.647', '99.5196', '-2.41728', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6577', '195613', '0', '1', '1', '-8393.65', '1064.36', '31.6302', '3.08918', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6532', '195610', '0', '1', '1', '-9003.5', '860.55', '105.877', '-1.213', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6530', '195617', '0', '1', '1', '-8581.62', '669.014', '97.9201', '1.25664', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6479', '195619', '0', '1', '1', '-8498.18', '654.276', '100.527', '2.72271', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6345', '195618', '0', '1', '1', '-8572.36', '552.684', '102.004', '-2.61799', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
REPLACE INTO `gameobject` VALUES ('6326', '195605', '0', '1', '1', '-8559.02', '457.105', '104.649', '1.94604', '0', '0', '0.944089', '-0.329691', '180', '100', '1');
UPDATE creature_template SET unit_flags = unit_flags | 8 WHERE entry IN (739,927,1444,12336,5484,1182,8140,5489,1351,26044,31261,5661);
UPDATE `quest_template` SET `QuestFlags` = 2, `SpecialFlags` = 2, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0, `ReqSpellCast1` = 0 WHERE `entry` = 6001;
UPDATE `quest_template` SET `QuestFlags` = 2, `SpecialFlags` = 2, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0, `ReqSpellCast1` = 0 WHERE `entry` = 6002;
UPDATE `gameobject_template` SET `faction` = 0 WHERE `entry` = 35591;

-- timmit
DELETE FROM `creature_ai_scripts` WHERE (`id`='1214401');
UPDATE `creature_template` SET `gossip_menu_id` = '3862' WHERE `entry` = '12144';
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `cond_1`, `cond_1_val_1` ) VALUE ('3862', '4714', '9', '6001');
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES ('3863', '4715');
REPLACE INTO `gossip_menu_option` (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, cond_1,cond_1_val_1,cond_1_val_2)
VALUES ('3862', '0', '0', 'You fought bravely, the spirit. I beg you, grant me strength of body and hardness of heart.', '1', '1', 3863, 3863, 9, 6001, 0);
REPLACE INTO `gossip_scripts` values (3863,0,7,6001,6,0,0,0,0,0);
REPLACE INTO `gossip_menu` (`entry`, `text_id`, `cond_1`, `cond_1_val_1` ) VALUEs ('3862', '4714', 0, 0);
REPLACE INTO `gossip_menu_option` (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, cond_1,cond_1_val_1,cond_1_val_2)
VALUES ('3862', '1', '0', 'You fought bravely, the spirit. I beg you, grant me strength of body and hardness of heart.', '1', '1', 3863, 3862, 9, 6002, 0);
REPLACE INTO `gossip_scripts` values (3862,0,7,6002,6,0,0,0,0,0);

-- NeatElves
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` =27951;
UPDATE `creature_template_addon` SET `auras` = '50161 0' WHERE `entry` =27951;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(120376, 26358, 571, 1, 1, 0, 0, 5127.57, 528.01, 186.518, 4.33789, 600, 10, 0, 9610, 0, 0, 1),
(120381, 26358, 571, 1, 1, 0, 0, 5158.79, 543.121, 187.227, 3.90278, 600, 10, 0, 9610, 0, 0, 1),
(120383, 26358, 571, 1, 1, 0, 0, 5126.96, 470.427, 189.164, 3.1755, 600, 10, 0, 9610, 0, 0, 1),
(120385, 26359, 571, 1, 1, 0, 0, 5151.18, 493.397, 190.755, 3.47631, 600, 10, 0, 4805, 0, 0, 1);

-- WDB
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20131;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=40477;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=24581;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=48274;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=49054;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=17909;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=40476;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=17901;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=1307;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=17900;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=48255;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=49052;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=20132;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=2874;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=17907;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=26042;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=17906;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28866;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=17904;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=46881;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=24579;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=26043;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=36742;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=36756;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=30431;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=17008;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=44970;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=44973;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=44980;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=44965;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=45606;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=44982;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=44974;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=4854;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=17902;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=17905;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=5877;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=12564;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=44971;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=46746;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=44984;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=45002;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=46744;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=46750;
UPDATE `item_template` SET `Faction`=0 WHERE `entry`=46752;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=46877;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=46878;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=46884;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=22882;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=8524;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=17691;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=23892;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28552;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=29590;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20223;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20222;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20235;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20232;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20234;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=17690;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23890;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=44223;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=1962;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=18606;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=32385;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=20070;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20483;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=4926;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=2794;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=5791;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=13288;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23288;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23289;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23302;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23303;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23317;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=18456;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=36856;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=37830;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=20060;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=24414;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=36855;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=32386;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=20058;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=16782;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=7666;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23678;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23759;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23850;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23837;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28708;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=12780;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28714;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=16408;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23285;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=49046;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=37599;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=5102;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=22597;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28614;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=17903;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=4851;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=10621;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=36940;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=10000;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=19554;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=30497;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=24483;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=33314;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=33289;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=33961;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=34984;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=35116;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=36958;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28806;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=44221;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28809;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28805;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28808;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=18452;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=36746;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=36744;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28861;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28864;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28700;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28839;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28926;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=31642;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28695;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28702;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28954;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20167;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28869;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=20056;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28938;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=22750;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23777;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20177;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28615;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=6172;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=20053;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28624;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=19003;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28860;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28858;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28856;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28868;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=21776;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28846;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=20046;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28852;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=16304;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=23797;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=3317;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=16303;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=13287;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28837;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=16790;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28836;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=18972;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28627;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28855;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=31363;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=29143;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=24558;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=33345;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=33347;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=34091;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=36780;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28849;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=31646;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28819;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28820;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=4903;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=5138;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=11668;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=5099;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=34777;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28870;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=44843;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=44842;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=9370;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=34815;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=33962;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=28935;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28699;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28723;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28719;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=20310;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23910;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=31239;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28623;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28721;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=33115;
UPDATE `item_template` SET `Faction`=1 WHERE `entry`=5103;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=28952;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=5179;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=5352;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=24132;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23870;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=23900;
UPDATE `item_template` SET `Faction`=2 WHERE `entry`=4433;
UPDATE `quest_template` SET QuestFlags = QuestFlags&~1;
UPDATE `quest_template` SET QuestFlags = QuestFlags|1 WHERE entry in (647,1090,1651,1699,1719,7622,9686,9962,9967,9970,9972,9973,9977,13524);
DELETE FROM `creature_template_addon` WHERE (`entry`=26896);
REPLACE INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES ('26896','0','7','4097','65','');
UPDATE `creature` SET `spawntimesecs` = 300, `spawndist` = 5, `MovementType` = '1' WHERE `id` = 25650;
UPDATE `creature` SET `spawntimesecs` = 10800 WHERE `guid` = 73561;
UPDATE `creature` SET `spawntimesecs` = 10800 WHERE `guid` = 74349;

--3 NeatElves
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =59975;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =59979;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =59615;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(18636, 3890, 0, 1, 1, -12418.8, 199.844, 31.2917, 5.675, 0, 0, 0.299427, -0.954119, 3600, 100, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(27338, 180799, 0, 1, 1, -4917.91, -977.996, 501.456, 1.28801, 0, 0, 0.600405, 0.799696, 600, 0, 1);
REPLACE INTO `creature_ai_scripts` VALUES ('2412051', '24120', '8', '0', '100', '0', '43115', '-1', '0', '0', '41', '0', '0', '0', '11', '43138', '6', '6', '0', '0', '0', '0', 'ytdb-q11170');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '24120';
UPDATE `quest_template` SET `ReqSpellCast1` = '0' WHERE `entry` =11170;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(56304, 178428, 0, 1, 1, -4923.4, -981.196, 501.468, -0.349066, 0, 0, 0.173648, -0.984808, 180, 100, 1),
(56312, 178431, 0, 1, 1, -4925.17, -981.551, 501.47, 2.49582, 0, 0, 0.948324, 0.317305, 180, 100, 1),
(56781, 178430, 0, 1, 1, -4924.25, -979.532, 501.472, 0.05236, 0, 0, 0.026177, 0.999657, 180, 100, 1),
(56289, 178438, 0, 1, 1, -4907.09, -984.796, 511.634, 2.80998, 0, 0, 0.986286, 0.165048, 180, 100, 1),
(56299, 178438, 0, 1, 1, -4904.36, -889.329, 522.233, 1.99323, 0, 0, 0.839637, 0.543148, 180, 100, 1),
(56308, 178438, 0, 1, 1, -4989.02, -959.39, 522.248, 2.56657, 0, 0, 0.958953, 0.283565, 180, 100, 1),
(56315, 178438, 0, 1, 1, -4894.45, -984.026, 511.021, 5.39563, 0, 0, 0.429356, -0.903135, 180, 100, 1);
DELETE FROM `creature` WHERE `guid` = 77744;
DELETE FROM `creature` WHERE `guid` = 83257;
DELETE FROM `creature` WHERE `guid` = 83259;
DELETE FROM `creature` WHERE `guid` = 83272;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(56315, 178438, 0, 1, 1, -4893.83, -975.453, 511.634, 5.39563, 0, 0, 0.429356, -0.903135, 180, 100, 1);

-- The_Game_Master
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 10184;
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 10185;

-- timmit
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '44323','3','15','44327','0','0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '44323','4','15','44387','0','0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '44407','3','15','44408','0','0','0','0','0','0');
UPDATE `creature_template` SET `spell1` = 44422, `spell2` = 44423, `spell3` = 44424 WHERE `entry` = 24783;

-- NeatElves
UPDATE `creature_template` SET `npcflag` = '16385',`spell1` = '0',`ScriptName` = '',`flags_extra` = '2' WHERE `entry` in (31841,31842);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(124717, 31841, 571, 1, 1, 0, 413, 5452.78, 2836.51, 421.279, 0.098865, 300, 0, 0, 42740, 7988, 0, 0),
(82800, 31842, 571, 1, 1, 0, 235, 5453.04, 2843.85, 421.277, 0.103578, 300, 0, 0, 42740, 7988, 0, 0);

-- Fix 4

-- NeatElves
DELETE FROM `creature` WHERE `id`=21109;
-- timmit
UPDATE `creature_template` SET `spell1` = 49285, `spell2` = 29577 WHERE `entry` = 26472;
UPDATE `quest_template` SET `CompleteScript` = 11998 WHERE `entry` = 11998;
DELETE FROM `quest_end_scripts` WHERE `id`=11998;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(11998, 0, 0, 0, 0, '2000001215', 0, 0, 0, 0),
(11998, 1, 0, 0, 0, '2000001216', 0, 0, 0, 0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001215','He wants me to do WHAT?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`) VALUES ( '2000001216','Well, he will not stingy with the drink, if he really wants to see my people abandoned their studies and started working on the military!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `creature` WHERE `id`=26217;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(19326, 26217, 571, 1, 1, 0, 347, 4523.11, -4161.23, 171.542, 1.87373, 25, 0, 0, 42540, 3561, 0, 0),
(95497, 26217, 571, 1, 1, 0, 347, 4520.87, -4206.49, 171.03, 3.49558, 25, 0, 0, 42540, 3561, 0, 0),
(78182, 26217, 571, 1, 1, 0, 347, 4523.08, -4193.28, 173.73, 0.0319719, 25, 0, 0, 42540, 3561, 0, 0),
(78188, 26217, 571, 1, 1, 0, 347, 4541.5, -4161.44, 173.618, 4.66111, 25, 0, 0, 42540, 3561, 0, 2),
(78379, 26217, 571, 1, 1, 0, 347, 4563.28, -4173.57, 173.732, 2.63086, 25, 0, 0, 42540, 3561, 0, 0),
(94685, 26217, 571, 1, 1, 0, 347, 4552.89, -4168.8, 173.485, 2.98821, 25, 0, 0, 42540, 3561, 0, 0),
(78112, 26217, 571, 1, 1, 0, 347, 4527, -4200.89, 173.453, 4.8229, 25, 0, 0, 42540, 3561, 0, 0),
(94684, 26217, 571, 1, 1, 0, 347, 4543.42, -4233.68, 170.739, 2.90418, 25, 0, 0, 42540, 3561, 0, 0),
(78155, 26217, 571, 1, 1, 0, 347, 4517.84, -4257.33, 170, 3.87807, 25, 0, 0, 42540, 3561, 0, 0),
(78157, 26217, 571, 1, 1, 0, 347, 4522.83, -4261.44, 169.784, 3.87965, 25, 0, 0, 42540, 3561, 0, 0),
(78160, 26217, 571, 1, 1, 0, 347, 4513.15, -4239.22, 170.428, 3.12016, 25, 0, 0, 42540, 3561, 0, 0),
(78172, 26217, 571, 1, 1, 0, 347, 4522.39, -4217.95, 170.216, 3.07697, 25, 0, 0, 42540, 3561, 0, 0),
(78173, 26217, 571, 1, 1, 0, 347, 4567.81, -4173.49, 173.485, 6.25155, 25, 0, 0, 42540, 3561, 0, 0),
(78180, 26217, 571, 1, 1, 0, 347, 4554, -4184.9, 173.484, 3.07461, 25, 0, 0, 42540, 3561, 0, 0),
(78189, 26217, 571, 1, 1, 0, 347, 4566.57, -4184.76, 173.588, 6.22013, 25, 0, 0, 42540, 3561, 0, 0),
(78190, 26217, 571, 1, 1, 0, 347, 4534.63, -4227.21, 170.705, 5.24466, 25, 0, 0, 42540, 3561, 0, 0),
(78154, 26217, 571, 1, 1, 0, 347, 4542.56, -4229.25, 170.739, 3.97625, 25, 0, 0, 42540, 3561, 0, 0),
(95646, 26217, 571, 1, 1, 23695, 0, 4582.65, -4245.3, 181.73, 1.25877, 1200, 0, 0, 42540, 3561, 0, 0),
(78179, 26217, 571, 1, 1, 0, 347, 4536.19, -4156.6, 173.769, 3.2953, 25, 0, 0, 42540, 3561, 0, 0);

UPDATE `creature` SET `curhealth` = 1 WHERE `guid` = 120129;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 26261;
DELETE FROM `creature` WHERE `id`=26261;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(136470, 26261, 571, 1, 1, 0, 0, 5170.19, -4772.46, 295.319, 1.79745, 25, 0, 0, 30846, 10398, 0, 0),
(136471, 26261, 571, 1, 1, 0, 0, 5193.79, -4698.81, 290.729, 0.104916, 25, 0, 0, 30846, 10398, 0, 0),
(136472, 26261, 571, 1, 1, 0, 0, 5133.79, -4660.05, 287.365, 0.474052, 25, 0, 0, 30846, 10398, 0, 0),
(136473, 26261, 571, 1, 1, 0, 0, 5265.91, -4778.05, 298, 3.07294, 25, 0, 0, 30846, 10398, 0, 0),
(136474, 26261, 571, 1, 1, 0, 0, 5078.31, -4697.94, 285.407, 0.0730038, 25, 0, 0, 30846, 10398, 0, 0),
(136475, 26261, 571, 1, 1, 0, 0, 5106.27, -4736.34, 286.781, 0.71703, 25, 0, 0, 30846, 10398, 0, 0),
(136476, 26261, 571, 1, 1, 0, 0, 5050.75, -4633.96, 289.406, 0.300769, 25, 0, 0, 30846, 10398, 0, 0),
(136477, 26261, 571, 1, 1, 0, 0, 5044.75, -4590.63, 287.038, 0.241863, 25, 0, 0, 30846, 10398, 0, 0),
(136478, 26261, 571, 1, 1, 0, 0, 5130.02, -4776.52, 293.168, 0.477483, 25, 0, 0, 30846, 10398, 0, 0),
(136479, 26261, 571, 1, 1, 0, 0, 5138.95, -4825.74, 291.545, 0.0376599, 25, 0, 0, 30846, 10398, 0, 0),
(120356, 26261, 571, 1, 1, 0, 0, 4994.08, -4666.33, 301.424, 3.19182, 300, 0, 0, 30846, 10398, 0, 0),
(120355, 26261, 571, 1, 1, 0, 0, 5000.13, -4692.51, 303.221, 3.45494, 300, 0, 0, 30846, 10398, 0, 0),
(120354, 26261, 571, 1, 1, 0, 0, 5345.88, -4722, 304.921, 2.51637, 300, 0, 0, 30846, 10398, 0, 0),
(120353, 26261, 571, 1, 1, 0, 0, 5296.56, -4805.42, 297.026, 5.9839, 300, 0, 0, 30846, 10398, 0, 0),
(120352, 26261, 571, 1, 1, 0, 0, 5239.34, -4743.22, 295.075, 6.27843, 300, 0, 0, 30846, 10398, 0, 0),
(120351, 26261, 571, 1, 1, 0, 0, 5071.83, -4795.92, 297.288, 3.81228, 300, 0, 0, 30846, 10398, 0, 0),
(120350, 26261, 571, 1, 1, 0, 0, 5082.67, -4816.95, 298.434, 2.81875, 300, 0, 0, 30846, 10398, 0, 0),
(120349, 26261, 571, 1, 1, 0, 0, 4959.04, -4743.79, 287.168, 0.301558, 300, 0, 0, 30846, 10398, 0, 0),
(120348, 26261, 571, 1, 1, 0, 0, 4956.38, -4730.82, 286.888, 0.230875, 300, 0, 0, 30846, 10398, 0, 0),
(120347, 26261, 571, 1, 1, 0, 0, 4973.63, -4783.53, 284.747, 0.575658, 300, 0, 0, 30846, 10398, 0, 0),
(120346, 26261, 571, 1, 1, 0, 0, 4996.85, -4802.94, 286.377, 0.717031, 300, 0, 0, 30846, 10398, 0, 0),
(120345, 26261, 571, 1, 1, 0, 0, 5037.34, -4835.96, 285.617, 0.964428, 300, 0, 0, 30846, 10398, 0, 0),
(120344, 26261, 571, 1, 1, 0, 0, 4964.81, -4757.93, 285.624, 0.466494, 300, 0, 0, 30846, 10398, 0, 0);
UPDATE `creature` SET `spawntimesecs` = 40 WHERE `id` = 26261;
UPDATE `creature_template` SET `faction_A` = 1954, `faction_H` = 1954 WHERE `entry` = 26786;
UPDATE `creature_template` SET `faction_A` = 2118, `faction_H` = 2118 WHERE `entry` = 26261;
UPDATE `creature_template` SET `faction_A` = 2108, `faction_H` = 2108 WHERE `entry` = 26417;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(136480, 26417, 571, 1, 1, 0, 0, 5138.14, -4658.07, 287.482, 3.16797, 25, 0, 0, 30846, 10398, 0, 0),
(136481, 26417, 571, 1, 1, 0, 0, 5168.76, -4766.42, 295.413, 4.97046, 25, 0, 0, 30846, 10683, 0, 0),
(136482, 26417, 571, 1, 1, 0, 0, 5254.23, -4743.31, 296.4, 2.77527, 25, 0, 0, 30846, 10683, 0, 0),
(136468, 26417, 571, 1, 1, 0, 0, 5199.45, -4697.94, 291.082, 2.5318, 25, 0, 0, 30846, 10683, 0, 0),
(136469, 26417, 571, 1, 1, 0, 0, 5337.04, -4722.15, 304.101, 0.49055, 25, 0, 0, 30846, 10398, 0, 0);
UPDATE `creature` SET `spawntimesecs` = 60 WHERE `id` = 26417;
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` = 26417;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `id` = 26417;
UPDATE `creature_template` SET `faction_A` = 2118, `faction_H` = 2118 WHERE `entry` in (26282,26260);
UPDATE `creature_template` SET `faction_A` = 2108, `faction_H` = 2108 WHERE `entry` = 26284;
UPDATE `creature_template` SET `faction_A` = 1954, `faction_H` = 1954 WHERE `entry` in (26268);
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `id` = 26282;

-- NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(95162, 29288, 0, 1, 1, 0, 0, -8419.86, 1298.6, 20.9102, 6.06932, 1200, 0, 0, 955, 0, 0, 2),
(95165, 29297, 0, 1, 1, 0, 0, -8417.6, 1327.71, 11.025, 0.089029, 1200, 0, 0, 955, 0, 0, 2),
(95164, 29300, 0, 1, 1, 0, 0, -8417.35, 1332.03, 11.0413, 3.81238, 1200, 0, 0, 955, 0, 0, 2),
(102561, 29296, 0, 1, 1, 0, 0, -8432.93, 1319.45, 6.70441, 3.03687, 360, 0, 0, 955, 0, 0, 2); 

UPDATE `quest_template` SET `ReqCreatureOrGOId2` = '0',`ReqCreatureOrGOCount2` = '0' WHERE `entry` =12998;
DELETE FROM `creature` WHERE `guid` = 104529;
REPLACE INTO `creature_ai_scripts` VALUES ('3029951', '30299', '11', '0', '100', '0', '0', '0', '0', '0', '1', '-302991', '0', '0', '22', '1', '0', '0', '0', '0', '0', '0', 'ytdb-q12998');
REPLACE INTO `creature_ai_scripts` VALUES ('3029952', '30299', '1', '1', '100', '0', '5000', '5000', '0', '0', '1', '-302992', '0', '0', '22', '0', '0', '0', '33', '30299', '6', '0', 'ytdb-q12998');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '30299';
REPLACE INTO `creature_ai_texts` VALUES ('-302991', 'You didn\'t think that I was going to let you walk in here and take the Heart of the Storm, did you?', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q12998');
REPLACE INTO `creature_ai_texts` VALUES ('-302992', 'You may have killed Valduran, but that will not stop me from completing the colossus.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q12998');

-- timmit
UPDATE `quest_template` SET `CompleteScript` = 11986 WHERE `entry` = 11986;
DELETE FROM `quest_end_scripts` WHERE `id`=11986;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(11986, 0, 0, 3, 0, '2000001217', 0, 0, 0, 0),
(11986, 3, 0, 0, 0, '2000001218', 0, 0, 0, 0),
(11986, 5, 0, 0, 0, '2000001219', 0, 0, 0, 0),
(11986, 7, 0, 0, 0, '2000001220', 0, 0, 0, 0),
(11986, 9, 0, 0, 0, '2000001221', 0, 0, 0, 0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc8`) VALUES ( '2000001217','read the latest entry in the Brann journal.',NULL);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc8`) VALUES ( '2000001218','Unbelievable! It says that Brann discovered a mysterious slab, covered with runes, in the depths of Thor Modan!',NULL);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc8`) VALUES ( '2000001219','Brann writes that he worked on a guide for those runic symbols, when attacked by the giants with their allies.', NULL);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc8`) VALUES ( '2000001220','He deciphers aloud part of the inscriptions on rune plate, but it seems that he wrote his translation.',NULL);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc8`) VALUES ( '2000001221','By the beard of Magni, we need to recreate the key, which he used to read the words on the stove. We could go right on his heels!',NULL);
UPDATE `quest_template` SET `PrevQuestId` = 11986 WHERE `entry` = 11988;
UPDATE `creature_template` SET `faction_A` = '14',`faction_H` = '14' WHERE `entry` =24327;
UPDATE `gossip_menu_option` SET `option_text`='I was told that you can bring me to the Light\'s Breach...',`option_id`='1',`npc_option_npcflag`='1',`action_script_id`='6944',`cond_1`='9',`cond_1_val_1`='12770' WHERE `menu_id`='6944' AND `id`='1';
REPLACE INTO `gossip_scripts` values 
(6944,0,15,53310,1,0,0,0,0,0);

-- NeatElves
DELETE FROM `spell_script_target` WHERE `entry` = 56227 AND `type` = 2 AND `targetEntry` = 30208;
DELETE FROM `spell_script_target` WHERE `entry` = 56227 AND `type` = 2 AND `targetEntry` = 30163;
REPLACE INTO `creature_ai_scripts` VALUES ('2991451', '29914', '8', '0', '50', '0', '56227', '-1', '0', '0', '11', '56230', '6', '6', '11', '56230', '6', '6', '41', '0', '0', '0', 'ytdb-q12985');
REPLACE INTO `creature_ai_scripts` VALUES ('2991452', '29914', '8', '0', '50', '0', '56227', '-1', '0', '0', '12', '30208', '6', '180000', '12', '30208', '6', '180000', '22', '1', '0', '0', 'ytdb-q12985');
REPLACE INTO `creature_ai_scripts` VALUES ('2991453', '29914', '1', '1', '100', '0', '1', '1', '0', '0', '12', '30208', '6', '180000', '41', '0', '0', '0', '22', '0', '0', '0', 'ytdb-q12985');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '29914';
UPDATE `creature_template_addon` SET `bytes1` = '7',`bytes2` = '4097',`emote` = '65' WHERE `entry` =29914;
UPDATE `creature_template` SET `dynamicflags` = '32',`flags_extra` = '2' WHERE `entry` =29914;
UPDATE `creature` SET `DeathState` = '0' WHERE `id` =29914;
DELETE FROM `creature` WHERE `id` = 30208;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = '-100',`lootcondition` = '0',`condition_value1` = '0' WHERE `entry` =29695 AND `item` =40971;
UPDATE `quest_template` SET `ReqSourceId1` = '40971',`ReqSourceCount1` = '1',`ReqCreatureOrGOId1` = '29677',`ReqCreatureOrGOId2` = '29695',`ReqCreatureOrGOCount2` = '1' WHERE `entry` =12910;
UPDATE `quest_template` SET `ReqSourceId1` = '40971',`ReqSourceCount1` = '1',`ReqCreatureOrGOId1` = '29677',`ReqCreatureOrGOId3` = '29695',`ReqCreatureOrGOCount3` = '1' WHERE `entry` =12855;
UPDATE `quest_template` SET `PrevQuestId` = '12987' WHERE `entry` =13006;
UPDATE `spell_script_target` SET `type` = '1' WHERE `entry` =56227 AND `type` =2 AND `targetEntry` =29914;

-- timmit
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 29137;
UPDATE `creature_template` SET `npcflag` = 8193 WHERE `entry` = 26853;
UPDATE `creature_template` SET `gossip_menu_id` = 26853 WHERE `entry` = 26853;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(26853,7778);
REPLACE INTO `gossip_menu_option` VALUES(26853,0,2,'I need a ride.',4,8192,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(26853,1,0,'I was told that you can bring me to the Light\'s Breach...',1,1,0,26853,9,12763,0); 
REPLACE INTO `gossip_scripts` values 
(26853,0,15,53289,1,0,0,0,0,0);
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12630;
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 28518;
UPDATE `creature_template` SET `gossip_menu_id` = 28518 WHERE `entry` = 28518;
REPLACE INTO gossip_menu (`entry`,`text_id`,cond_1,cond_1_val_1) VALUES 
(28518,13270,0,0),
(28518,13271,9,12630);
REPLACE INTO `gossip_menu_option` VALUES(28518,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(28518,1,0,'I lost Nass...',1,1,0,28518,9,12630,0);
REPLACE INTO `gossip_scripts` values 
(28518,0,15,51865,1,0,0,0,0,0);
UPDATE `quest_template` SET `SrcSpell` = 51865 WHERE `entry` = 12630;

-- The_Game_Master
UPDATE `gameobject` SET `state` = 1 WHERE `guid` = 73469;
UPDATE `gameobject_template` SET `faction` = 114, `data0` = '1' where `entry` in (194022, 181195, 181228, 181225, 181201);
UPDATE `gameobject_template` SET `faction` = 114, `data0` = '0' where `entry` in (192236);
UPDATE `gameobject_template` SET `faction` = 0, `data0` = '0', `flags` = 6553636 where `entry` in (191416, 194441);
UPDATE `gameobject_template` SET `faction` = 114, `data0` = '0' where `entry` in (191292, 191295, 191296);
UPDATE `gameobject_template` SET `faction` = 114, `data0` = '0' where `entry` in (192173, 192174);
UPDATE `gameobject_template` SET `faction` = 114, `data0` = '0' where `entry` in (192632, 192569, 192568, 193208, 193209);

-- Chaosua
REPLACE INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES (20269, 0, 8, 31235, 0, 0, 0, 0, 0, 0);

-- timmit
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 12637;
UPDATE `quest_template` SET `ReqSourceId1` = 38678, `ReqSourceCount1` = 1 WHERE `entry` = 12637;
UPDATE creature_template SET `faction_H` = 2068,`faction_A` = 2068 WHERE entry IN (28022,28026,28158,28255,28257,28258,28268,28369,28412,28414,28519,28564,28565,28589,28599,28802,28803,28843,29654,29656,29697,29698,29699,30673,30674,31037,31039,31040,31043,31747,31780,31787,32188);
UPDATE `creature_template` SET `spell1` = 0 WHERE `entry` = 28603;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 29646;
UPDATE `creature_template` SET `dynamicflags` = 36 WHERE `entry` = 29454;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 29455;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 29453;
UPDATE `creature_template` SET `gossip_menu_id` = 29647 WHERE `entry` = 29647;
REPLACE INTO gossip_menu (`entry`,`text_id`,cond_1,cond_1_val_1) VALUES 
(29647,13639,0,0),
(29647,13640,9,12919),
(50027,13647,0,0),
(50028,13656,0,0);
REPLACE INTO `gossip_menu_option` VALUES(29647,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(29647,1,0,'Gymer, where Algar,Navarius and Thrym?',1,1,50027,0,9,12919,0), 
(29647,2,0,'Gymer that I need to know? I never went to the giant.',1,1,50028,0,9,12919,0), 
(29647,3,0,'I\'m ready, Gymer. Go!',1,1,0,29647,9,12919,0), 
(50027,0,0,'I have a few more questions, Gymer.',1,1,29647,0,0,0,0),
(50028,0,0,'I have a few more questions, Gymer.',1,1,29647,0,0,0,0);
REPLACE INTO `gossip_scripts` values 
(29647,0,15,55431,1,0,0,0,0,0); -- ?? ??????? ??
UPDATE `creature_template` SET `spell1` = 55426, `spell2` = 55429, `spell3` = 55516, `spell4` = 55421 WHERE `entry` = 29647;
UPDATE `creature` SET `spawntimesecs` = 120 WHERE `id` = 29897;
UPDATE `creature` SET `phaseMask` = 256 WHERE `id` in (select `entry` from `creature_template` where `KillCredit1` = 29943);
UPDATE `creature` SET `phaseMask` = 256 WHERE `id` in (29895,29821,29872);
UPDATE `creature` SET `position_z` = 422.97 WHERE `id` = 28888;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 28888;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 118657;

-- NeatElves
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(47486, 192080, 571, 1, 2, 7390.57, -2727.54, 874.721, 3.10877, 0, 0, 0.999865, 0.0164103, 0, 0, 1);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(57306, 178670, 0, 1, 1, -13249.4, 164.385, 34.8086, 1.02261, 0, 0, 0.489317, 0.872106, 25, 0, 1);
UPDATE `quest_template` SET `PrevQuestId` = '13001' WHERE `entry` =13003;
UPDATE `quest_template` SET `PrevQuestId` = '12976' WHERE `entry` =12977;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(48568, 192078, 571, 1, 2, 7111.56, -2727.64, 787.25, 0.146714, 0, 0, 0.0732913, 0.997311, 0, 0, 1);
DELETE FROM `creature` WHERE `guid` = 86518;
DELETE FROM `creature` WHERE `guid` = 86517;
DELETE FROM `creature` WHERE `guid` = 86369;
REPLACE INTO `creature_ai_scripts` VALUES ('3095451', '30954', '6', '0', '100', '0', '0', '0', '0', '0', '33', '31160', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q13161');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '30954';
REPLACE INTO `creature_ai_scripts` VALUES ('3095351', '30953', '6', '0', '100', '0', '0', '0', '0', '0', '33', '31159', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q13162');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '30953';
REPLACE INTO `creature_ai_scripts` VALUES ('3095651', '30956', '6', '0', '100', '0', '0', '0', '0', '0', '33', '31161', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q13163');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '30956';
UPDATE creature_loot_template SET ChanceOrQuestChance=-ABS(ChanceOrQuestChance) WHERE item = 33308;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '30210',`ReqSpellCast1` = '0' WHERE `entry` =12987;
UPDATE `creature_template` SET `flags_extra` = '128' WHERE `entry` =30210;
-- ????- UPDATE creature_template SET minlevel = 80, maxlevel = 80, minhealth = 12600, maxhealth = 12600 WHERE entry = 35646;
UPDATE creature_template SET minlevel = 80, maxlevel = 80 WHERE entry = 35646;

-- timmit
DELETE FROM `creature` WHERE `id`=28888;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(118656, 28888, 571, 1, 1, 0, 0, 6241.24, -1967.61, 418.409, 3.33874, 300, 0, 0, 6637, 0, 0, 0),
(118657, 28888, 571, 1, 1, 0, 0, 6257.48, -1980.4, 418.322, 2.9429, 300, 0, 0, 6637, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 28888;
UPDATE `creature` SET `position_z` = 422.97 WHERE `id` = 28657;
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` = 28888;

-- Forum_FIX
UPDATE `item_template` SET `name` = 'Scroll of Enchant 2H Weapon - Massacre', `Quality` = 3 WHERE `entry` = 44463;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 32399;
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` = 32410;
UPDATE `quest_template` SET `QuestLevel` = 60 WHERE `entry` = 8249;

-- NeatElves
REPLACE INTO spell_area VALUES (55773, 4395, 0, 0, 0, 0, 690, 2, 1),(55774, 4395, 0, 0, 0, 0, 1101, 2, 1);
DELETE FROM `creature_template_addon` WHERE `entry` = 35594;
UPDATE `creature_template` SET `faction_A` = '1801',`faction_H` = '1801',`npcflag` = '2097153',`flags_extra` = '2' WHERE `entry` =35607;
UPDATE `creature_template` SET `faction_A` = '1802',`faction_H` = '1802',`npcflag` = '2097153',`flags_extra` = '2' WHERE `entry` =35594;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(136467, 35607, 571, 1, 64, 0, 0, 5927.63, 731.59, 643.253, 4.76475, 180, 0, 0, 5342, 0, 0, 0);
UPDATE `creature` SET `phaseMask` = '128',`modelid` = '0' WHERE `guid` =136677;
UPDATE `creature_template` SET `gossip_menu_id` = 35607 WHERE `entry` = 35607;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES (35607,14764);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) VALUES 
(35607, 0, 0, 'What''s on the auction house today?', 13, 2097152, 0, 0, 0, 0, 0, NULL, 7, 202, 350, 0, 0, 0, 0, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 35594 WHERE `entry` = 35594;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES (35594,14764);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) VALUES 
(35594, 0, 0, 'What''s on the auction house today?', 13, 2097152, 0, 0, 0, 0, 0, NULL, 7, 202, 350, 0, 0, 0, 0, 0, 0);
DELETE FROM `creature` WHERE `id` = 78111;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '24166',`ReqCreatureOrGOId2` = '24165',`ReqCreatureOrGOId3` = '24167',`ReqSpellCast1` = '0',`ReqSpellCast2` = '0',`ReqSpellCast3` = '0' WHERE `entry` =11282;
REPLACE INTO `creature_ai_scripts` (`id`,`creature_id`,`event_type`,`event_inverse_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action1_type`,`action1_param1`,`action1_param2`,`action1_param3`,`action2_type`,`action2_param1`,`action2_param2`,`action2_param3`,`action3_type`,`action3_param1`,`action3_param2`,`action3_param3`,`comment`) VALUES  
(2416151,24161,8,0,100,0,43178,-1,0,0,33,24166,6,0,0,0,0,0,0,0,0,0, 'ytdb-q11282'), 
(2401651,24016,8,0,100,0,43178,-1,0,0,33,24165,6,0,0,0,0,0,0,0,0,0, 'ytdb-q11282'), 
(2416251,24162,8,0,100,0,43178,-1,0,0,33,24167,6,0,0,0,0,0,0,0,0,0, 'ytdb-q11282'); 
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` in (24016,24161,24162);
UPDATE `creature_template` SET `faction_A` = '14',`faction_H` = '14' WHERE `entry` in (24161,24162);

-- timmit
UPDATE `creature_template` SET `gossip_menu_id` = 28888 WHERE `entry` = 28888;
REPLACE INTO gossip_menu (`entry`,`text_id`,cond_1,cond_1_val_1,cond_1_val_2) VALUES 
(28888,13391,1,51966,0),
(28888,13390,11,51966,0);
UPDATE `creature_template` SET `faction_A` = 2097, `faction_H` = 2097 WHERE `entry` = 28243;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12664;
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 28503;
UPDATE `creature_template` SET `gossip_menu_id` = 28503 WHERE `entry` = 28503;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 28603;
UPDATE `gameobject_template` SET `faction` = 2097 WHERE `entry` = 190720;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12673;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12686;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136450,'28843','571','1','1','25730','0','6143.39','-2249.44','235.908','0.733605','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136451,'28843','571','1','1','25730','0','5887.1','-2230.32','240.222','3.34607','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136452,'28843','571','1','1','25730','0','6114.42','-2227.3','238.42','4.83853','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136453,'28843','571','1','1','25730','0','6080.48','-2252.07','239.006','6.19533','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136454,'28843','571','1','1','25730','0','6149.16','-2190.81','241.479','2.2217','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136455,'28843','571','1','1','25730','0','5883.59','-2153.87','241.395','1.21425','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136456,'28843','571','1','1','25730','0','5969.43','-2212.61','234.997','0.184202','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136457,'28843','571','1','1','25730','0','6210.26','-2145.17','235.897','0.241508','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136459,'28843','571','1','1','25730','0','6245.21','-2196.56','235.639','4.54138','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136460,'28843','571','1','1','25730','0','6285.78','-2234.23','237.534','2.44335','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136461,'28843','571','1','1','25730','0','6241.5','-2124.51','235.734','4.7985','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136462,'28843','571','1','1','25730','0','6346.9','-2234.3','268.454','2.65572','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136463,'28843','571','1','1','25730','0','6334.86','-2239.45','265.404','4.7283','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136464,'28843','571','1','1','25730','0','6210.79','-2244.91','238.311','6.07255','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136465,'28843','571','1','1','25730','0','6223.6','-2245.27','237.602','3.51128','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136466,'28843','571','1','1','25730','0','6331.59','-2233.92','262.589','5.91138','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136447,'28843','571','1','1','25730','0','6350.36','-2236.56','271.088','2.56476','300','0','0','10635','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136448,'28843','571','1','1','25730','0','6314.18','-2194.45','246.303','2.53761','300','5','0','10635','0','0','1');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES(136449,'28843','571','1','1','25730','0','6378.03','-2219.97','273.53','3.85718','300','0','0','10635','0','0','0');
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12690;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12710;
DELETE FROM `gameobject_template` WHERE (`entry`=202357);
REPLACE INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES (202357, 2, 9321, 'Drakuru\'s Last Wish', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 17334, 0, 0, 11091, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_2,cond_2_val_1) VALUES  
(11091,0,0,'I am ready',1,1,0,11091,0,0,0,0);
REPLACE INTO `gossip_scripts` values 
(11091,0,15,57553,1,0,0,0,0,0);
UPDATE `creature_template` SET `faction_A` = 2097, `faction_H` = 2097 WHERE `entry` = 28998;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 28657;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28998);
REPLACE INTO `creature_ai_scripts` VALUES 
(2899851, 28998, 6, 0, 100, 0, 0, 0, 0, 0, 11, 54253, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
UPDATE `quest_template` SET `SrcSpell` = 0 WHERE `entry` = 12796;
UPDATE `creature_template` SET `faction_A` = 2068, `faction_H` = 2068 WHERE `entry` in (28023,28246);

-- NeatElves
UPDATE `npc_spellclick_spells` SET `quest_start` = '0',`quest_start_active` = '0' WHERE `npc_entry` =29501;
UPDATE `creature` SET `id` = '29246' WHERE `guid` =79417;
UPDATE `creature` SET `id` = '31084' WHERE `guid` =89813;

-- timmit
UPDATE `creature_template` SET `gossip_menu_id` = 28888 WHERE `entry` = 28888;
UPDATE `creature_template` SET `faction_A` = 2097, `faction_H` = 2097 WHERE `entry` = 28243;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12664; -- ???? ????????????????????????????????
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 28503;
UPDATE `creature_template` SET `gossip_menu_id` = 28503 WHERE `entry` = 28503;
REPLACE INTO gossip_menu (`entry`,`text_id`,cond_1,cond_1_val_1) VALUES 
(28503,13348,0,0),
(50029,14441,0,0),
(50032,14444,0,0),
(50033,14445,0,0),
(28503,13422,9,12713);
REPLACE INTO `gossip_menu_option` VALUES(28503,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_2,cond_2_val_1) VALUES  
(28503,1,0,'Gorebag showed me the empire Drakkar. I am ready to help you win it!',1,1,50029,0,8,12664,9,12661),
(28503,2,0,'I\'m cool-stands this Blight Geists!',1,1,50030,0,8,12673,9,12669),
(28503,3,0,'I killed Darmuk! What are future directions?',1,1,50031,0,8,12686,9,12677),
(28503,4,0,'Drakkari Chieftain captured! What else can I help you?',1,1,50032,0,8,12690,9,12676),
(28503,5,0,'I watched your brilliant operation, Drakuru. When start to act?',1,1,50033,0,8,12710,9,12676),
(28503,6,0,'I go with you, Drakuru.',1,1,0,28503,9,12713,0,0);
REPLACE INTO `gossip_scripts` values 
(28503,0,15,52863,1,0,0,0,0,0);
REPLACE INTO `spell_target_position`(`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES ( '52863','571','6161.70','-2015.28','590.88','6.03');
delete from creature where id=28745;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 28603;
UPDATE `gameobject_template` SET `faction` = 2097 WHERE `entry` = 190720;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12673;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12686;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12690;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 12710;
UPDATE `creature_template` SET `faction_A` = 2097, `faction_H` = 2097 WHERE `entry` = 28998;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 28657;
UPDATE `gameobject` SET `spawntimesecs` = -300 WHERE `guid` = 2551;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28998);
REPLACE INTO `creature_ai_scripts` VALUES 
(2899851, 28998, 6, 0, 100, 0, 0, 0, 0, 0, 11, 54253, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
UPDATE `creature_template` SET `AIName` = 'EventAI', `ScriptName` = '' WHERE `entry` = 28998;
UPDATE `quest_template` SET `SrcSpell` = 0 WHERE `entry` = 12796;
UPDATE `creature_template` SET `faction_A` = 2068, `faction_H` = 2068 WHERE `entry` in (28023,28246);
UPDATE `creature_template` SET `resistance4` = 300 WHERE `entry` = 16570;
UPDATE `creature_template` SET `dynamicflags` = 32 WHERE `entry` = 28089;
UPDATE `creature_template` SET `unit_flags` = 2, `flags_extra` = 2 WHERE `entry` = 28503;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 28875;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 28875;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 119312;
UPDATE `creature` SET `position_x` = 6181.03, `position_y` = -2043.89, `position_z` = 428.404, `orientation` = 3.59634 WHERE `guid` = 119312;
delete from creature where id=28879;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 119297;
UPDATE `creature_template` SET `unit_flags` = 2, `flags_extra` = 2 WHERE `entry` = 28666;

UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 28803;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 119296;

UPDATE `creature_template` SET `IconName` = 'vehichleCursor' WHERE `entry` = 28851;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values(136440,'28888','571','1','1','25743','0','6233.69','-2077.63','418.465','3.82227','300','0','0','6637','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values(136441,'28888','571','1','1','25743','0','6220.73','-2095.08','418.553','2.25148','300','0','0','6637','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values(136442,'28888','571','1','1','25751','0','6208.59','-2094.25','418.79','0.575959','300','0','0','6637','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values(136443,'28888','571','1','1','25752','0','6165.82','-1957.47','462.197','5.34071','300','0','0','6637','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values(136444,'28888','571','1','1','25752','0','6206.7','-1965.93','462.176','4.06662','300','0','0','6637','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values(136445,'28888','571','1','1','25743','0','6112.26','-2025.21','462.336','0.698132','300','0','0','6637','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values(136446,'28888','571','1','1','25751','0','6143.37','-2069.56','462.357','0.802851','300','0','0','6637','0','0','0');
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values(136439,'28888','571','1','1','25751','0','6179.41','-2084.84','462.19','1.95477','300','0','0','6637','0','0','0');
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '52681','1','28931');
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '52686','1','28931');

UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 28932;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 28932;
UPDATE `creature_template` SET `faction_A` = 2097, `faction_H` = 2097 WHERE `entry` = 28617;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 28617;
UPDATE `creature_template` SET `unit_flags` = 33554434 WHERE `entry` = 28617;
DELETE FROM `creature` WHERE `id`=29887;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(118543, 29887, 571, 1, 256, 0, 0, 6135.05, -1977.74, 232.608, 2.56214, 300, 10, 0, 34137, 0, 0, 1),
(118544, 29887, 571, 1, 256, 0, 0, 6161.59, -1964.07, 233.557, 2.49145, 300, 10, 0, 34137, 0, 0, 1),
(118545, 29887, 571, 1, 256, 0, 0, 6153.54, -1974.82, 231.927, 2.49931, 300, 10, 0, 34137, 0, 0, 1),
(118546, 29887, 571, 1, 256, 0, 0, 6145.06, -1986.18, 231.879, 2.49931, 300, 10, 0, 34137, 0, 0, 1),
(118547, 29887, 571, 1, 256, 0, 0, 6133.42, -2001.64, 231.773, 2.49538, 300, 10, 0, 34137, 0, 0, 1),
(118548, 29887, 571, 1, 256, 0, 0, 6204.54, -1968.83, 233.226, 2.37286, 300, 10, 0, 34137, 0, 0, 1),
(118549, 29887, 571, 1, 256, 0, 0, 6193.72, -1980.32, 231.695, 2.38464, 300, 10, 0, 34137, 0, 0, 1);
DELETE FROM `creature` WHERE `id`=29939;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(88502, 29939, 571, 1, 256, 0, 0, 5505.92, -2077.68, 240.757, 0.2452, 250, 0, 0, 42, 60, 0, 0),
(88503, 29939, 571, 1, 256, 0, 0, 5558.78, -2222.66, 236.024, 6.04065, 250, 0, 0, 42, 60, 0, 0),
(88510, 29939, 571, 1, 256, 0, 0, 5646.4, -1926.03, 236.417, 1.65735, 250, 0, 0, 42, 60, 0, 0),
(88511, 29939, 571, 1, 256, 0, 0, 5418.38, -1387.57, 239.221, 0.773719, 250, 0, 0, 42, 60, 0, 0);
DELETE FROM creature WHERE guid = '99424';
DELETE FROM creature WHERE guid = '118554';
DELETE FROM creature WHERE guid = '99413';
DELETE FROM creature WHERE guid = '118556';
DELETE FROM creature WHERE guid = '99425';
DELETE FROM creature WHERE guid = '99434';
DELETE FROM creature WHERE guid = '99436';
DELETE FROM creature WHERE guid = '99427';
DELETE FROM creature WHERE guid = '99432';
DELETE FROM creature WHERE guid = '99426';
DELETE FROM creature WHERE guid = '99418';
DELETE FROM creature WHERE guid = '99415';
DELETE FROM creature WHERE guid = '99410';
DELETE FROM creature WHERE guid = '99428';
DELETE FROM creature WHERE guid = '99438';
DELETE FROM creature WHERE guid = '118553';
DELETE FROM creature WHERE guid = '118551';
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 28739;DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28739);
REPLACE INTO `creature_ai_scripts` VALUES 
(2873951, 28739, 8, 0, 100, 0, 52227, -1, 0, 0, 11, 52232, 0, 0, 11, 52232, 0, 0, 11, 52232, 0, 0, 'ytdb');
DELETE FROM `creature` WHERE `id`=28036;
DELETE FROM `creature` WHERE `id`=28035;
DELETE FROM `creature` WHERE `id`=28034;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(118732, 28035, 571, 1, 1, 0, 0, 6100.32, -2680.1, 290.925, 0.0886883, 300, 10, 0, 10635, 3561, 0, 1),
(118733, 28036, 571, 1, 1, 0, 0, 6138.41, -2661.56, 290.925, 0.548146, 300, 10, 0, 10635, 3561, 0, 1),
(118734, 28035, 571, 1, 1, 0, 0, 6123.87, -2680.67, 290.925, 3.43448, 300, 10, 0, 10635, 3561, 0, 1),
(118735, 28036, 571, 1, 1, 0, 0, 6161.04, -2678.41, 290.925, 2.47551, 300, 10, 0, 10635, 3561, 0, 1),
(118736, 28035, 571, 1, 1, 0, 0, 6215.75, -2649.68, 290.925, 4.27564, 300, 10, 0, 10635, 3561, 0, 1),
(118737, 28036, 571, 1, 1, 0, 0, 6219.7, -2688.59, 290.925, 2.8792, 300, 10, 0, 10635, 3561, 0, 1),
(118738, 28035, 571, 1, 1, 0, 0, 6206.15, -2579.55, 290.926, 1.68931, 300, 10, 0, 10635, 3561, 0, 1),
(118739, 28036, 571, 1, 1, 0, 0, 6144.38, -2562.29, 290.932, 5.39639, 300, 10, 0, 10635, 3561, 0, 1),
(118740, 28035, 571, 1, 1, 0, 0, 6095.01, -2553.77, 290.925, 3.3033, 300, 10, 0, 10635, 3561, 0, 1),
(118741, 28036, 571, 1, 1, 0, 0, 6125.55, -2551.03, 291.155, 5.56603, 300, 10, 0, 10635, 3561, 0, 1),
(118742, 28034, 571, 1, 1, 0, 0, 6397.06, -2738.88, 302.601, 2.22259, 300, 10, 0, 10635, 3561, 0, 1),
(118743, 28034, 571, 1, 1, 0, 0, 6343.53, -2735.55, 302.748, 3.19256, 300, 10, 0, 10635, 3561, 0, 1),
(118744, 28036, 571, 1, 1, 0, 0, 6380.33, -2721.54, 302.748, 0.218257, 300, 10, 0, 10635, 3561, 0, 1),
(118745, 28034, 571, 1, 1, 0, 0, 6412.62, -2504.86, 302.748, 2.3247, 300, 10, 0, 10635, 3561, 0, 1),
(118746, 28035, 571, 1, 1, 0, 0, 6375.48, -2503.45, 302.748, 3.03941, 300, 10, 0, 10635, 3561, 0, 1);
UPDATE `quest_template` SET `PrevQuestId` = -12659 WHERE `entry` = 12662;
UPDATE `quest_template` SET `PrevQuestId` = -12640 WHERE `entry` = 12639;
UPDATE `creature_template` SET `unit_flags` = 33554432 WHERE `entry` = 28526;
UPDATE `quest_template` SET `PrevQuestId` = 12635 WHERE `entry` = 13549;
delete from creature where guid in (127644,127645);
DELETE FROM `creature` WHERE `id`=28417;

REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(99426, 28417, 571, 1, 1, 0, 823, 6074.9, -3234.94, 350.351, 4.5475, 25, 0, 0, 9103, 8313, 0, 2),
(99432, 28417, 571, 1, 1, 0, 823, 6033.8, -3264.07, 350.35, 5.4507, 25, 0, 0, 8800, 8139, 0, 2),
(99427, 28417, 571, 1, 1, 0, 823, 6048.33, -3245.27, 350.352, 5.58815, 25, 0, 0, 9103, 8313, 0, 2),
(99436, 28417, 571, 1, 1, 0, 823, 6039.65, -3295.5, 350.351, 6.00441, 25, 0, 0, 8800, 8139, 0, 2),
(99434, 28417, 571, 1, 1, 0, 823, 6026.21, -3317.48, 350.351, 5.83947, 25, 0, 0, 9103, 8313, 0, 2),
(99425, 28417, 571, 1, 1, 0, 823, 6148.69, -3288.1, 350.345, 2.80626, 25, 0, 0, 9103, 8313, 0, 2),
(118556, 28417, 571, 1, 1, 0, 823, 6147.02, -3252.04, 350.351, 4.09431, 25, 0, 0, 8800, 8139, 0, 2),
(99413, 28417, 571, 1, 1, 0, 823, 6135.42, -3314.92, 350.351, 3.06466, 25, 0, 0, 8800, 8139, 0, 2),
(118554, 28417, 571, 1, 1, 0, 823, 6134.75, -3346.3, 350.351, 2.96648, 25, 0, 0, 8800, 8139, 0, 2),
(99424, 28417, 571, 1, 1, 0, 823, 6081.19, -3364.75, 350.67, 1.74126, 25, 0, 0, 8800, 8139, 0, 2),
(118953, 28417, 571, 1, 1, 0, 823, 6432.69, -3226.6, 404.697, 5.76949, 300, 0, 0, 9103, 8313, 0, 0),
(118952, 28417, 571, 1, 1, 0, 823, 6441.43, -3285.96, 402.776, 0.005453, 300, 0, 0, 9103, 8313, 0, 0),
(118951, 28417, 571, 1, 1, 0, 0, 6359.11, -3407.48, 391.095, 1.24096, 300, 0, 0, 8800, 8139, 0, 1),
(118950, 28417, 571, 1, 1, 0, 0, 6406.64, -3414.32, 391.904, 2.00279, 300, 0, 0, 8800, 8139, 0, 1),
(118949, 28417, 571, 1, 1, 0, 0, 6359.3, -3367.15, 388.714, 1.67293, 300, 0, 0, 8800, 8139, 0, 1),
(118948, 28417, 571, 1, 1, 0, 823, 6340.77, -3264.93, 389.781, 3.06876, 300, 0, 0, 8800, 8139, 0, 0),
(118945, 28417, 571, 1, 1, 0, 823, 6442.18, -3253.91, 402.528, 0.001774, 300, 0, 0, 9103, 8313, 0, 0),
(118946, 28417, 571, 1, 1, 0, 823, 6435.24, -3318.34, 405.185, 0.181373, 300, 0, 0, 9103, 8313, 0, 0),
(118947, 28417, 571, 1, 1, 0, 0, 6335.21, -3333.92, 389.801, 0.985704, 300, 0, 0, 8800, 8139, 0, 1),
(118944, 28417, 571, 1, 1, 0, 823, 6351.57, -3196.92, 389.499, 5.15224, 300, 0, 0, 8800, 8139, 0, 0);

REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '51616','1','28442');
-- NeatElves
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =79426;

UPDATE `creature_ai_scripts` SET `action3_type` = '1',`action3_param1` = '-253211',`action3_param2` = '-253212' WHERE `id` =2532151;
UPDATE `creature_ai_scripts` SET `action3_type` = '1',`action3_param1` = '-253221',`action3_param2` = '-253222' WHERE `id` =2532251;
REPLACE INTO `creature_ai_texts` VALUES ('-253211', 'Do not allow Kaskala to forget what has happened here.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q11607');
REPLACE INTO `creature_ai_texts` VALUES ('-253212', 'Thank you for freeing me! May the tides always favor you.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q11607');
REPLACE INTO `creature_ai_texts` VALUES ('-253221', 'Thank you, $C. May the winds and seas always deliver you safely.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q11607');
REPLACE INTO `creature_ai_texts` VALUES ('-253222', 'May the ancestors always aid you, $C, as you have aided me.', '', '', '', '', '', '', '', '', '0', '0', '0', '0', 'ytdb-q11607');

-- timmit
DELETE FROM `creature` WHERE `id`=28418;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(118679, 28418, 571, 1, 1, 0, 627, 6326.13, -3241.57, 388.758, 3.18239, 300, 0, 0, 11379, 3725, 0, 0),
(118680, 28418, 571, 1, 1, 0, 0, 6446.4, -3125.79, 388.714, 3.36384, 300, 0, 0, 11001, 3643, 0, 0),
(118681, 28418, 571, 1, 1, 0, 627, 6326.64, -3284.7, 388.715, 3.15412, 300, 0, 0, 11001, 3643, 0, 0),
(118682, 28418, 571, 1, 1, 0, 627, 6405.25, -3242.96, 392.925, 3.23748, 300, 0, 0, 11379, 3725, 0, 0),
(118683, 28418, 571, 1, 1, 0, 0, 6346.51, -3376.44, 388.715, 4.53015, 300, 0, 0, 11001, 3643, 0, 0),
(118684, 28418, 571, 1, 1, 0, 627, 6405.54, -3302.88, 392.103, 3.07792, 300, 0, 0, 11001, 3643, 0, 0),
(118685, 28418, 571, 1, 1, 0, 0, 6447.24, -3423.04, 388.872, 2.32554, 300, 0, 0, 11001, 3643, 0, 0);
UPDATE `creature` SET `position_x` = 6372.48, `position_y` = -3267.29, `position_z` = 388.966, `orientation` = 0.072464 WHERE `guid` = 119924;
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 28561;
UPDATE `creature_template` SET `gossip_menu_id` = 28561 WHERE `entry` = 28561;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(28561,13291);
REPLACE INTO `gossip_menu_option` VALUES(28561,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2,cond_2,cond_2_val_1,cond_2_val_2) VALUES  
(28561,1,0,'Rhunok, I need to fill your power drink.',1,1,50034,28561,9,12647,0,11,51967,0);
REPLACE INTO `gossip_scripts` values 
(28561,0,15,51967,1,0,0,0,0,0);
DELETE FROM `quest_start_scripts` WHERE `id`=12647;
UPDATE `quest_template` SET `SrcSpell` = 51967 WHERE `entry` = 12647;
UPDATE `quest_template` SET `StartScript` = 0 WHERE `entry` = 12647;
UPDATE `creature` SET `position_x` = 6522.84, `position_y` = -3272.12, `position_z` = 408.236, `orientation` = 2.53769 WHERE `guid` = 104050;
UPDATE `creature` SET `position_x` = 6476.48, `position_y` = -3265.2, `position_z` = 403.692, `orientation` = 6.27619 WHERE `guid` = 118954;
DELETE FROM `creature_loot_template` WHERE (`entry`=28575) AND (`item`=38696);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (28575, 38696, -100, 0, 1, 1, 0, 0, 0);
UPDATE `quest_template` SET `ReqSourceId1` = 38696 WHERE `entry` = 12647;
UPDATE `creature_template` SET `unit_flags` = 2, `type_flags` = 0 WHERE `entry` = 28416;
UPDATE `creature_template` SET `AIName` = 'EventAI', `ScriptName` = '' WHERE `entry` = 28416;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28416);
REPLACE INTO `creature_ai_scripts` VALUES 
(2841651, 28416, 8, 0, 100, 1, 51964, -1, 0, 0, 19, 2, 0, 0, 1, -284161, 0, 0, 0, 0, 0, 0, 'ytdb'),
(2841652, 28416, 4, 0, 100, 0, 0, 0, 0, 0, 11, 57861, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_texts`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES ( '-284161','I will not lie down quietly and wait until you can not kill me! You\'ll have to bet for the right to take another breath, if you want to kill me, mortal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
UPDATE `creature` SET `position_x` = '6832.86',`position_y` = '-1372.32',`position_z` = '819.187',`orientation` = '2.45546',`MovementType` = '2' WHERE `guid` =75231;

REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '51607','1','28416');
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '51606','1','28416');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 104154;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 104152;
UPDATE `creature_template` SET `dynamicflags` = 32 WHERE `entry` = 28672;
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 28672;
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 28401;
UPDATE `creature_template` SET `gossip_menu_id` = 28401 WHERE `entry` = 28401;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(28401,13139);
REPLACE INTO `gossip_menu_option` VALUES(28401,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(28401,1,0,'Great and powerful Har\'koa, please, call one of his children, so he could secretly referred me to the altar Quetz\'lun.',1,1,0,28401,9,12665,0);
REPLACE INTO `gossip_scripts` values 
(28401,0,15,52186,1,0,0,0,0,0);
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '48293','1','27292');
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 27297;

UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 27297;
replace INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '52838','1','28952');
replace INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '52833','1','28952');
replace INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '52837','1','28952');
replace INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '52834','1','28952');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (104147,104150);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(99428, 26298, 571, 1, 1, 0, 0, 6863.81, -4503.33, 442.239, -2.35619, 25, 0, 0, 42, 0, 0, 2),
(99438, 26298, 571, 1, 1, 0, 0, 6817.82, -4549.2, 442.239, 0.785397, 25, 0, 0, 42, 0, 0, 2);
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 31396;
UPDATE `creature_template` SET `unit_flags` = 33554434, `dynamicflags` = 36, `flags_extra` = 2 WHERE `entry` = 29515;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88218;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 29396;
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 28030;
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '51577','1','28401');
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '45808','1','28401');
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '51579','1','28401');
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (104145,104146);
UPDATE `creature_template` SET `modelid1` = 21999, `flags_extra` = 0 WHERE `entry` = 26298;
DELETE FROM `creature_model_info` WHERE (`modelid`=21999);
REPLACE INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES (21999, 0.005, 0.01, 2, 0);
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 27297;
UPDATE `creature_template` SET `modelid1` = 17188 WHERE `entry` = 27297;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `id` = 29515;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 29893;
DELETE FROM `creature` WHERE `id`=28221;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(99454, 28221, 571, 1, 1, 0, 0, 5760.76, -2342.75, 288.69, 5.24252, 1200, 0, 0, 10635, 0, 0, 0),
(99455, 28221, 571, 1, 1, 0, 0, 5775.43, -2434.37, 292.445, 5.31713, 1200, 0, 0, 10635, 0, 0, 0),
(99456, 28221, 571, 1, 1, 0, 0, 5823.91, -2516.28, 293.495, 5.17968, 1200, 0, 0, 10635, 0, 0, 0),
(99457, 28221, 571, 1, 1, 0, 0, 5924.58, -2525.68, 293.988, 0.231671, 1200, 0, 0, 10635, 0, 0, 0),
(99458, 28221, 571, 1, 1, 0, 0, 5866.79, -2404.05, 293.101, 1.90064, 1200, 0, 0, 10635, 0, 0, 0),
(99468, 28221, 571, 1, 1, 0, 0, 5985.73, -2455.46, 292.835, 5.88575, 1200, 0, 0, 10635, 0, 0, 0),
(99469, 28221, 571, 1, 1, 0, 0, 5897.43, -2543.77, 293.566, 3.53428, 1200, 0, 0, 10635, 0, 0, 0),
(99470, 28221, 571, 1, 1, 0, 0, 6002.01, -2547.18, 290.378, 4.73908, 1200, 0, 0, 10635, 0, 0, 0),
(99479, 28221, 571, 1, 1, 0, 0, 6184.91, -2485.88, 306.825, 1.18986, 1200, 0, 0, 10635, 0, 0, 0),
(99491, 28221, 571, 1, 1, 0, 0, 6199.6, -2411.59, 307.72, 5.83708, 1200, 0, 0, 10635, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 1924, `faction_H` = 1924 WHERE `entry` in (28477,28784);
UPDATE `gameobject` SET `spawntimesecs` = -30 WHERE `id` = 190736;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES (64373, 4658, 0, 0, 0, 0, 0, 2, 1),(64373, 4669, 0, 0, 0, 0, 0, 2, 1),(64373, 4670, 0, 0, 0, 0, 0, 2, 1),(64373, 4671, 0, 0, 0, 0, 0, 2, 1),(64373, 4672, 0, 0, 0, 0, 0, 2, 1),(64373, 4673, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(81156, 28401, 571, 1, 1, 0, 0, 5743.96, -3608.98, 387.199, 1.12463, 25, 0, 0, 13945, 0, 0, 0);
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '52484','4323','12685','0','0','0','0','2','1');
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '52485','4322','0','0','12685','0','0','2','1');
DELETE FROM `creature` WHERE `guid` between 119313 and 119321;
DELETE FROM `creature` WHERE `id`=28917;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(99148, 28917, 571, 1, 1, 0, 0, 6577.59, -3992.42, 483.308, 3.21208, 1200, 0, 0, 11379, 3725, 0, 0);
UPDATE `creature` SET `position_x` = 6432.21, `position_y` = -3778.47, `position_z` = 470.715, `orientation` = 4.691 WHERE `guid` = 119322;
DELETE FROM `creature` WHERE `id`=28597;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(119313, 28597, 571, 1, 1, 0, 0, 6115.14, -3509.19, 384.936, 2.35205, 25, 0, 0, 33003, 0, 0, 0),
(119213, 28597, 571, 1, 1, 0, 0, 6193.12, -3568.56, 387.232, 2.31699, 300, 0, 0, 33003, 0, 0, 0),
(119314, 28597, 571, 1, 1, 0, 0, 6093.64, -3563.23, 387.447, 2.99924, 25, 0, 0, 33003, 0, 0, 0),
(119315, 28597, 571, 1, 1, 0, 0, 6128.26, -3564.37, 383.73, 0.293537, 25, 0, 0, 33003, 0, 0, 0),
(119316, 28597, 571, 1, 1, 0, 0, 6192.7, -3632.15, 383.73, 0.574708, 25, 0, 0, 33003, 0, 0, 0),
(119317, 28597, 571, 1, 1, 0, 0, 6204.9, -3685.67, 390.08, 4.42316, 25, 0, 0, 33003, 0, 0, 0),
(119318, 28597, 571, 1, 1, 0, 0, 6254.42, -3572.87, 383.73, 2.52249, 25, 0, 0, 33003, 0, 0, 0),
(119319, 28597, 571, 1, 1, 0, 0, 6309.61, -3566.39, 389.858, 5.37819, 25, 0, 0, 33003, 0, 0, 0),
(119320, 28597, 571, 1, 1, 0, 0, 6193.45, -3493.3, 383.73, 3.07305, 25, 0, 0, 33003, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = 1924, `faction_H` = 1924 WHERE `entry` = 28851;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=12138);
REPLACE INTO `creature_ai_scripts` VALUES 
(1213802, 12138, 6, 0, 100, 0, 0, 0, 0, 0, 12, 12144, 0, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunaclaw - Cast Lunaclaw Spirit'),
(1213801, 12138, 0, 0, 100, 1, 2000, 2000, 2500, 4500, 11, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunaclaw - Cast Thrash');

-- Forum_FIX
UPDATE `creature` SET `spawndist` = 10 WHERE `id` = 33778;

-- NeatElves
DELETE FROM `creature_ai_scripts` WHERE `id` = 2661651;
DELETE FROM `creature_ai_scripts` WHERE `id` = 2664351;
UPDATE creature_loot_template SET ChanceOrQuestChance=ABS(ChanceOrQuestChance) WHERE item = 42780;
DELETE FROM `gameobject` WHERE `guid` = 73350;
DELETE FROM `creature` WHERE `guid` = 136660;
DELETE FROM `creature` WHERE `guid` = 136661;
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=12138);
REPLACE INTO `creature_ai_scripts` VALUES 
(1213802, 12138, 6, 0, 100, 0, 0, 0, 0, 0, 12, 12144, 0, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunaclaw - Cast Lunaclaw Spirit'),
(1213801, 12138, 0, 0, 100, 1, 2000, 2000, 2500, 4500, 11, 3391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunaclaw - Cast Thrash');
UPDATE `quest_template` SET `RequiredRaces` = '1101' WHERE `entry` =14111;
UPDATE `creature_template` SET `npcflag` = '0' WHERE `entry` in (34061,34082,33923,31865,33917,31864,33922);
DELETE FROM `npc_vendor` WHERE `entry` in (34061,33917,33930,33929,33928,33932);
UPDATE `creature_template` SET `npcflag` = '4224' WHERE `entry` in (33929,33930);
REPLACE INTO npc_vendor select 33930 as entry, item, maxcount, incrtime, extendedcost from npc_vendor where entry=33925; 
REPLACE INTO npc_vendor select 33929 as entry, item, maxcount, incrtime, extendedcost from npc_vendor where entry=33925; 
REPLACE INTO npc_vendor select 33928 as entry, item, maxcount, incrtime, extendedcost from npc_vendor where entry=33926;
REPLACE INTO npc_vendor select 33932 as entry, item, maxcount, incrtime, extendedcost from npc_vendor where entry=33926;
UPDATE `npc_trainer` SET `reqlevel`='20' WHERE `spell`='34768';
DELETE FROM `npc_trainer` WHERE `spell` = 34769;

-- timmit
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES (64373, 4658, 0, 0, 0, 0, 0, 2, 1),(64373, 4669, 0, 0, 0, 0, 0, 2, 1),(64373, 4670, 0, 0, 0, 0, 0, 2, 1),(64373, 4671, 0, 0, 0, 0, 0, 2, 1),(64373, 4672, 0, 0, 0, 0, 0, 2, 1),(64373, 4673, 0, 0, 0, 0, 0, 2, 1);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(99442, 28401, 571, 1, 1, 0, 0, 5743.96, -3608.98, 387.199, 1.12463, 25, 0, 0, 13945, 0, 0, 0);
INSERT IGNORE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '52484','4323','12685','0','0','0','0','2','1');
INSERT IGNORE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '52485','4322','0','0','12685','0','0','2','1');
UPDATE `creature` SET `equipment_id` = '3591' WHERE `guid` =127396;
UPDATE `creature` SET `equipment_id` = '3397' WHERE `guid` =127397;
UPDATE `creature` SET `equipment_id` = '3397' WHERE `guid` =127398;
UPDATE `creature` SET `equipment_id` = '3397' WHERE `guid` =127395;
UPDATE `creature` SET `equipment_id` = '1866' WHERE `guid` =127392;
UPDATE `creature` SET `equipment_id` = '1867' WHERE `guid` =127388;
UPDATE `creature` SET `equipment_id` = '1868' WHERE `guid` =127404;
UPDATE `creature` SET `equipment_id` = '1869' WHERE `guid` =127407;
INSERT IGNORE INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES (1866,0,31303,0),(1867,29709,29709,0),(1868,49024,49024,0),(1869,45129,28487,0);
UPDATE `creature` SET `equipment_id` = '834' WHERE `guid` =127434;
UPDATE `creature` SET `equipment_id` = '834' WHERE `guid` =127435;
UPDATE `creature` SET `equipment_id` = '834' WHERE `guid` =127437;
INSERT IGNORE INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES (1870,40598,29358,0);
UPDATE `creature` SET `equipment_id` = '1870' WHERE `guid` =123888;
UPDATE `creature` SET `equipment_id` = '235' WHERE `guid` =127439;
UPDATE `creature` SET `equipment_id` = '812' WHERE `guid` =123887;
UPDATE `creature` SET `equipment_id` = '330' WHERE `guid` =54524;
INSERT IGNORE INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES (1871,39802,0,0);
UPDATE `creature` SET `equipment_id` = '1871' WHERE `guid` =127438;
UPDATE `quest_template` SET `PrevQuestId` = 11988 WHERE `entry` = 11993;
UPDATE `creature_template` SET `dynamicflags` = 36 WHERE `entry` = 26514;
UPDATE `quest_template` SET `PrevQuestId` = 12014 WHERE `entry` = 12128;

-- Insider
update gameobject_template set faction=114,flags=32 where entry in (192642,192643);

-- NeatElves
INSERT IGNORE INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES (1879,46069,143,0), (1880,46069,21572,0), (1881,46069,6254,0), (1882,46069,12453,0), (1883,46069,24331,0), (1884,46069,29821,0), (1885,46069,11199,0), (1886,46069,11200,0);
INSERT IGNORE INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES (1870,46070,24322,0),(1871,46070,46093,0),(1872,46070,38635,0), (1873,46070,39926,0),(1874,46070,46092,0), (1875,46070,39922,0),(1876,46070,42938,0),(1877,46070,25818,0),(1878,46070,18166,0);
UPDATE `creature` SET `equipment_id`=1879 WHERE `guid` IN (127556,127557); 
UPDATE `creature` SET `equipment_id`=1880 WHERE `guid` IN (127609,127610);
UPDATE `creature` SET `equipment_id`=1875 WHERE `guid` IN (127550,127551); 
UPDATE `creature` SET `equipment_id`=1876 WHERE `guid` IN (127597,127598);
UPDATE `creature` SET `equipment_id`=1881 WHERE `guid` IN (127558,127559,127607,127608);
UPDATE `creature` SET `equipment_id`=1872 WHERE `guid` IN (127601,127602,127554,127555);
UPDATE `creature` SET `equipment_id`=1873 WHERE `guid` IN (127546,127547); 
UPDATE `creature` SET `equipment_id`=1874 WHERE `guid` IN (127599,127600);  
UPDATE `creature` SET `equipment_id`=1882 WHERE `guid` IN (127611,127612,78152,78153);
UPDATE `creature` SET `equipment_id`=1877 WHERE `guid` IN (127548,127549); 
UPDATE `creature` SET `equipment_id`=1878 WHERE `guid` IN (127595,127596);
UPDATE `creature` SET `equipment_id`=1883 WHERE `guid` IN (127564,127565); 
UPDATE `creature` SET `equipment_id`=1884 WHERE `guid` IN (127593,127594);
UPDATE `creature` SET `equipment_id`=1870 WHERE `guid` IN (127552,127553); 
UPDATE `creature` SET `equipment_id`=1871 WHERE `guid` IN (127603,127604);   
UPDATE `creature` SET `equipment_id`=1885 WHERE `guid` IN (127560,127561); 
UPDATE `creature` SET `equipment_id`=1886 WHERE `guid` IN (127605,127606);
UPDATE creature_template SET equipment_id = 1725 WHERE entry = 27893;
UPDATE `creature_template` SET `faction_A` = '2070',`faction_H` = '2070',`flags_extra` = '2' WHERE `entry` =35587;

-- griffonheart
UPDATE gameobject SET phaseMask = 256 WHERE id IN (193053,193052);
UPDATE creature_template SET faction_A = 1733, faction_H = 1733 WHERE entry = 29611;
UPDATE creature_template SET faction_A = 1734, faction_H = 1734 WHERE entry = 4949;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('28670', '52196', '0', '0', '0', '0');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('28782', '52349', '12687', '1', '12687', '3');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('28605', '52263', '12680', '1', '12680', '3');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('28606', '52263', '12680', '1', '12680', '3');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('28607', '52263', '12680', '1', '12680', '3');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('28833', '52447', '12701', '1', '12701', '1');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('28887', '52447', '12701', '1', '12701', '1');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33842', '63791', '13829', '1', '0', '3');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33842', '63791', '13839', '1', '0', '3');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33842', '63791', '13838', '1', '0', '3');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33843', '63792', '13828', '1', '0', '3');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33843', '63792', '13837', '1', '0', '3');
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`) VALUES ('33843', '63792', '13835', '1', '0', '3');
INSERT IGNORE INTO `spell_script_target` VALUES ('52264', '1', '28653');
INSERT IGNORE INTO `spell_script_target` VALUES ('62709', '1', '33844');
INSERT IGNORE INTO `spell_script_target` VALUES ('62709', '1', '33845');
INSERT IGNORE INTO `spell_script_target` VALUES ('67864', '1', '35651');
INSERT IGNORE INTO `spell_script_target` VALUES ('67888', '1', '35458');
UPDATE npc_spellclick_spells SET quest_start = 0, quest_start_active = 0 WHERE npc_entry = 29501;
UPDATE gameobject_template SET data0 = 1635 WHERE entry IN (190584,190691);

-- NeatElves
INSERT IGNORE INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES (1887,41815,0,0);
UPDATE `creature` SET `equipment_id`=1887 WHERE `guid`=127620; 
UPDATE `creature` SET `equipment_id`=1887 WHERE `guid`=127465; 
UPDATE `creature` SET `equipment_id`=1887 WHERE `guid`=127586;
UPDATE `quest_template` SET `ReqSpellCast1` = '0',`ReqSpellCast2` = '0' WHERE `entry` in (12107,12110);
REPLACE INTO `creature_ai_scripts` VALUES ('2688751', '26887', '8', '0', '100', '0', '47634', '-1', '1000', '1000', '11', '47635', '6', '22', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12110,12107');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '26887';
REPLACE INTO `creature_ai_scripts` VALUES ('2688951', '26889', '8', '0', '100', '0', '47634', '-1', '1000', '1000', '33', '26889', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12110,12107');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '26889';
UPDATE `creature_template` SET `faction_A` = '1954',`faction_H` = '1954' WHERE `entry` =27212;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '18849',`ReqCreatureOrGOId2` = '19008',`ReqSpellCast1` = '0',`ReqSpellCast2` = '0' WHERE `entry` =10087;
UPDATE `creature_template` SET `flags_extra` = '130' WHERE `entry` =18849;
UPDATE `creature_template` SET `flags_extra` = '130' WHERE `entry` =19008;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =59288;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =59292;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =59264;
UPDATE `creature` SET `spawndist` = '0',`MovementType` = '0' WHERE `guid` =59266;
REPLACE INTO `creature_ai_scripts` VALUES ('1884951', '18849', '8', '0', '100', '0', '33067', '-1', '0', '0', '33', '18849', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q10087');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '18849';
REPLACE INTO `creature_ai_scripts` VALUES ('1900851', '19008', '8', '0', '100', '0', '33067', '-1', '0', '0', '33', '19008', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q10087');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '19008';

-- timmit
UPDATE `gameobject` SET `position_x` = 3432.32, `position_y` = -2779.96, `position_z` = 203.315, `orientation` = 3.95468 WHERE `guid` = 44391;
UPDATE `creature_template` SET `gossip_menu_id` = 29244 WHERE `entry` = 29244;
REPLACE INTO gossip_menu (`entry`,`text_id`, `cond_1`, `cond_1_val_1`) values 
(29244,13502,0,0),
(29244,13503,8,12212);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) values(29244,0,1,'I want to browse your goods.','3','128','0','0','0','0','0',NULL,8,12212,'0','0','0','0','0','0','0');
UPDATE `gameobject_template` SET `type` = 2, `data0` = 0, `data1` = 0, `data5` = 0, `data6` = 0, `data10` = 0 WHERE `entry` = 188666;
REPLACE INTO gossip_menu (`entry`,`text_id`, `cond_1`, `cond_1_val_1`) values 
(9492,12775,0,0),	
(9492,12779,9,12227);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `cond_1`, `cond_1_val_1`, `cond_1_val_2`, `cond_2`, `cond_2_val_1`, `cond_2_val_2`, `cond_3`, `cond_3_val_1`, `cond_3_val_2`) values(9492,0,0,'Use toilet.',1,1,'0','0',9492,'0','0',NULL,9,12227,'0',2,37247,1,'0','0','0');
REPLACE INTO `gossip_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '9492','0','15','48321',2,'0','0','0','0','0');
delete from spell_scripts where id=48321;
REPLACE INTO `spell_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) values
('48321','0','15','48330','0','0','0','0','0','0'),
('48321','1','15','48324','0','0','0','0','0','0');
REPLACE INTO `spell_target_position`(`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES ( '48324','571','3455.77','-2801.78','203.171','-2.94088');
REPLACE INTO `event_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '17849','1','15','48341',1,'0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '48382','1','15','48323',0,'0','0','0','0','0');
update creature set deathstate=1 where guid in (130270,116631,130256,130255,130263);
UPDATE `creature_template` SET `dynamicflags` = 36 WHERE `entry` = 27479;
UPDATE `quest_template` SET `PrevQuestId` = 12294 WHERE `entry` in (12222,12223);
UPDATE `quest_template` SET `PrevQuestId` = 12295 WHERE `entry` = 12299;
UPDATE `gameobject_template` SET `data5` = 1 WHERE `entry` = 189313;
UPDATE `quest_template` SET `PrevQuestId` = 12299 WHERE `entry` = 12300;
UPDATE `quest_template` SET `ExclusiveGroup` = -12299 WHERE `entry` in (12299,12307);
UPDATE `quest_template` SET `NextQuestId` = 12300 WHERE `entry` in (12299,12307);
UPDATE `quest_template` SET `PrevQuestId` = 12302 WHERE `entry` = 12308;
UPDATE `quest_template` SET `PrevQuestId` = 12308 WHERE `entry` in (12219,12220);
DELETE FROM `creature` WHERE `id`=27417;
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '30098','0','1323');
DELETE FROM `gameobject` WHERE `id`=300145;
DELETE FROM `creature` WHERE `guid`=53791;
DELETE FROM `creature_template_addon` WHERE (`entry`=27259);
DELETE FROM `creature_template_addon` WHERE (`entry`=27260);
DELETE FROM `creature` WHERE `id`=27259;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(119554, 27259, 571, 1, 1, 0, 499, 2868.9, -2609.79, 84.656, 5.70757, 300, 0, 0, 0, 7654, 0, 2),
(119553, 27259, 571, 1, 1, 0, 499, 2906.6, -2637.99, 84.6558, 2.31934, 300, 0, 0, 8225, 7809, 0, 2),
(119551, 27259, 571, 1, 1, 0, 0, 2916.93, -2541.85, 81.3764, 4.85148, 300, 0, 0, 7952, 7654, 0, 1),
(119556, 27259, 571, 1, 1, 0, 0, 2778.63, -2695.44, 84.6604, 6.08377, 300, 0, 0, 7952, 7654, 0, 1),
(119555, 27259, 571, 1, 1, 0, 499, 2911.58, -2618.1, 84.6556, 3.45504, 300, 0, 0, 7952, 7654, 0, 2),
(119552, 27259, 571, 1, 1, 0, 499, 2886.89, -2648.51, 84.6554, 1.32661, 300, 0, 0, 0, 7809, 0, 2);
replace INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '48213','1','26298');
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(136438, 26298, 571, 1, 1, 0, 0, 2890.17, -2624.28, 100.645, 2.78397, 25, 0, 0, 42, 0, 0, 0);
UPDATE `quest_template` SET `PrevQuestId` = 12222 WHERE `entry` = 12255;
UPDATE `quest_template` SET `ExclusiveGroup` = -12222 WHERE `entry` in (12222,12223);
UPDATE `quest_template` SET `NextQuestId` = 12225 WHERE `entry` in (12222,12223);
UPDATE `creature_template` SET `gossip_menu_id` = 27292 WHERE `entry` = 27292;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(27292,12811);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(27292,0,0,'Remove the shackles from Flamebringer and subordinate it to themselves',1,1,0,27292,9,12255,0), 
(27292,1,0,'Remove the shackles from Flamebringer and subordinate it to themselves',1,1,0,27292,9,12259,0); 
REPLACE INTO `gossip_scripts` values 
(27292,0,15,48595,1,0,0,0,0,0),
(27292,1,15,48600,1,0,0,0,0,0);
UPDATE `creature_template` SET `spell1` = 48619, `spell2` = 48620, `spell3` = 52812 WHERE `entry` = 27292;
update `creature_loot_template` set `ChanceOrQuestChance`=-60 where `item`=23894;
UPDATE `quest_template` SET `ExclusiveGroup` = -12220 WHERE `entry` in (12220,12219);
UPDATE `quest_template` SET `PrevQuestId` = 12220 WHERE `entry` in (12247,12246);
UPDATE `quest_template` SET `ExclusiveGroup` = -12247 WHERE `entry` in (12247,12246);
UPDATE `quest_template` SET `PrevQuestId` = 12247 WHERE `entry` in (12248,12250);
UPDATE `quest_template` SET `ExclusiveGroup` = -12248 WHERE `entry` in (12248,12250);
UPDATE `quest_template` SET `PrevQuestId` = 12248 WHERE `entry` = 12249;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 27987;
UPDATE `creature_template` SET `InhabitType` = 4 WHERE `entry` = 28093;

-- NeatElves
UPDATE `quest_template` SET `ReqSpellCast1` = '0',`ReqSpellCast2` = '0' WHERE `entry` in (12107,12110);
REPLACE INTO `creature_ai_scripts` VALUES ('2688751', '26887', '8', '0', '100', '0', '47634', '-1', '1000', '1000', '11', '47635', '6', '22', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12110,12107');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '26887';
REPLACE INTO `creature_ai_scripts` VALUES ('2688951', '26889', '8', '0', '100', '0', '47634', '-1', '1000', '1000', '33', '26889', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12110,12107');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '26889';
UPDATE `creature` SET `id` = '26887' WHERE `guid` =130833;
UPDATE `creature` SET `id` = '26889' WHERE `guid` =117821;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '26887',`ReqCreatureOrGOId2` = '26889' WHERE `entry` =12107;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '26887',`ReqCreatureOrGOId2` = '26889' WHERE `entry` =12110;
REPLACE INTO `creature_ai_scripts` VALUES ('2688951', '26889', '10', '0', '100', '0', '1', '3', '1000', '1000', '33', '26889', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12110,12107');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '26889';
UPDATE `creature` SET `position_x` = '924.246',`position_y` = '-4874.63',`position_z` = '7.04025',`orientation` = '4.68847',`MovementType` = '2' WHERE `guid` =82727;
UPDATE `creature` SET `position_x` = '930.12',`position_y` = '-4906.55',`position_z` = '6.91695',`orientation` = '4.84319',`MovementType` = '2' WHERE `guid` =82726;
UPDATE `creature` SET `MovementType` = '2' WHERE `guid` =82729;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(106007, 24172, 571, 1, 1, 20857, 0, 971.352, -4873.9, 21.8023, 4.05653, 360, 0, 0, 102, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(136437, 23935, 571, 1, 2, 0, 0, 1049.04, -5073.44, 14.29, 1.6804, 300, 0, 0, 9610, 0, 0, 2);
UPDATE `creature_template_addon` SET `auras` = '57764 0' WHERE `entry` =23935;
UPDATE `quest_template` SET `ReqSpellCast1` = '0' WHERE `entry` =12267;
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '27450';
REPLACE INTO `creature_ai_scripts` VALUES ('2745051', '27450', '8', '0', '100', '0', '48790', '-1', '5000', '5000', '33', '27450', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q12267');
UPDATE `quest_template` SET `ReqSpellCast1` = '0',`ReqSpellCast2` = '0',`ReqSpellCast3` = '0' WHERE `entry` =11247;
UPDATE `quest_template` SET `ReqSpellCast1` = '0',`ReqSpellCast2` = '0',`ReqSpellCast3` = '0' WHERE `entry` =11258;
REPLACE INTO `creature_ai_scripts` VALUES ('2410251', '24102', '8', '0', '100', '0', '43057', '-1', '0', '0', '11', '43065', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q11247,11258');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '24102';
REPLACE INTO `creature_ai_scripts` VALUES ('2410051', '24100', '8', '0', '100', '0', '43057', '-1', '0', '0', '11', '43061', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q11247,11258');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '24100';
REPLACE INTO `creature_ai_scripts` VALUES ('2409851', '24098', '8', '0', '100', '0', '43057', '-1', '0', '0', '11', '43058', '6', '6', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q11247,11258');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '24098';
UPDATE `creature_template` SET `npcflag` = 16387 WHERE `entry` = 9299;
UPDATE `creature_loot_template` SET `lootcondition` = '2',`condition_value1` = '20402',`condition_value2` = 1 WHERE `item` =20384;
REPLACE INTO `creature_ai_scripts` VALUES ('2830451', '28304', '8', '0', '100', '0', '51247', '-1', '0', '0', '33', '28304', '6', '0', '11', '51249', '0', '22', '0', '0', '0', '0', 'ytdb-q12502');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '28304';
REPLACE INTO `creature_ai_scripts` VALUES ('2830551', '28305', '8', '0', '100', '0', '51247', '-1', '0', '0', '33', '28305', '6', '0', '11', '51249', '0', '22', '0', '0', '0', '0', 'ytdb-q12502');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '28305';
REPLACE INTO `creature_ai_scripts` VALUES ('2806451', '28064', '8', '0', '100', '0', '51247', '-1', '0', '0', '33', '28064', '6', '0', '11', '51249', '0', '22', '0', '0', '0', '0', 'ytdb-q12502');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '28064';

-- Chaosua
DELETE FROM gameobject_loot_template WHERE item=33809;

-- EraBro
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 466;
UPDATE `achievement_reward` SET `subject` = 'Higher Learning', `text` = 'Congratulations on completing your studies on The Schools of Arcane Magic. In recognition of your dedication. I\'m enclosing this special volume completing the series.\n\nI believe you\'ll find this tome particularly entertaining. But I\'ll leave that for your discovery.\n\nSincerely,\n\nRhonin' WHERE `entry` = 1956 ;

-- Forum_FIX
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` = 12517;
UPDATE `quest_template` SET `ReqSpellCast1` = 51247, `ReqSpellCast2` = 51247, `ReqSpellCast3` = 51247 WHERE `entry` = 12502;
UPDATE `quest_template` SET `ReqSpellCast1` = 0 WHERE `entry` = 13117;
UPDATE `quest_template` SET `ReqSourceId4` = 43159 WHERE `entry` = 13119;
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` IN (30742,30744,30745,30950);

-- timmit
UPDATE `quest_template` SET `CompleteScript` = 12523 WHERE `entry` = 12523;
DELETE FROM `quest_end_scripts` WHERE `id`=12523;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(12523, 0, 0, 0, 0, '2000001222', 0, 0, 0, 0),
(12523, 1, 0, 0, 0, '2000001223', 0, 0, 0, 0),
(12523, 2, 0, 0, 0, '2000001224', 0, 0, 0, 0),
(12523, 3, 0, 0, 0, '2000001225', 0, 0, 0, 0);
REPLACE INTO `db_script_string`(`entry`,`content_default`,`content_loc8`) VALUES 
('2000001222','Finally we have the parts to repair the Spirit of Gnomeregan.',NULL),
('2000001223','Well, a little tweak here, a little set up here ...',NULL),
('2000001224','And you - Spirit Gnomregan!',NULL),
('2000001225','You can use it, but do not complain: after repair of the seats can stick teeth of a saw or something like that. What I had - all went to work.',NULL);
DELETE FROM `creature` WHERE `id`=28093;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(97195, 28093, 571, 1, 1, 25106, 0, 5530.52, 5748.92, -69.4856, 3.3353, 1200, 0, 0, 1, 0, 0, 0),
(136434, 28093, 571, 1, 1, 0, 0, 5529.77, 5752.78, -69.4856, 4.7765, 25, 0, 0, 1, 0, 0, 0),
(136435, 28093, 571, 1, 1, 0, 0, 5527.74, 5753.02, -65.467, 3.8733, 25, 0, 0, 1, 0, 0, 0),
(136436, 28093, 571, 1, 1, 0, 0, 5524.07, 5744.24, -70.034, 1.7213, 25, 0, 0, 1, 0, 0, 0),
(136103, 28093, 571, 1, 1, 0, 0, 5530.09, 5745.41, -72.8729, 3.45311, 25, 0, 0, 1, 0, 0, 0);
UPDATE `creature` SET `spawndist` = 3, `MovementType` = 1 WHERE `id` = 28093;
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` = 28093;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` in (109245,109246);
UPDATE `quest_template` SET `PrevQuestId` = 12525 WHERE `entry` in (12589,12520,12549);
-- DELETE FROM `db_script_string` WHERE `entry` IN ('2000005077','2000005076','2000005075','2000005074','2000005073','2000005072','2000005071','2000005070','2000005069','2000005068','2000005067','2000005066','2000005065','2000005064','2000005063','2000005061','2000005098','2000005097','2000005096','2000005095','2000005094','2000005093','2000005092','2000005091','2000005090','2000005089','2000005088','2000005087','2000005086','2000005085','2000005084','2000005083','2000005082','2000005081','2000005079');
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '46079','4023','11681','1','0','0','0','2','1');
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '45844','4023','11648','1','0','0','0','2','1');
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 25478;
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '51825','1','28998');
REPLACE INTO `spell_script_target`(`entry`,`type`,`targetEntry`) VALUES ( '54250','1','28929');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '54248','0','15','54250','0','0','0','0','0','0');
UPDATE `creature_template` SET `modelid1` = 19595,`AIName` = 'EventAI',`unit_flags` = 33554434, `flags_extra` = 2 WHERE `entry` = 28929;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 28998;
DELETE FROM `creature` WHERE `id`=28929;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(136384, 28929, 571, 1, 1, 0, 0, 6197.44, -2016.38, 590.878, 2.86519, 25, 0, 0, 1, 0, 0, 0);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28929);
REPLACE INTO `creature_ai_scripts` VALUES 
(2892951, 28929, 8, 0, 100, 1, 54250, -1, 0, 0, 11, 54253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb summon drakulu skull');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '28929';
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28998);
REPLACE INTO `creature_ai_scripts` VALUES 
(2899851, 28998, 8, 0, 100, 1, 51825, -1, 0, 0, 11, 54248, 0, 6, 37, 0, 0, 0, 0, 0, 0, 0, 'ytdb drakuru death after arthas kill him');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '28998';
UPDATE `creature_template` SET `gossip_menu_id` = 34244 WHERE `entry` = 34244;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(34244,14500);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(34244,0,0,'I\'ll be there',1,1,0,34244,0,0,0);
REPLACE INTO `gossip_scripts` values 
(34244,1,15,64795,1,0,0,0,0,0);
UPDATE `quest_template` SET `PrevQuestId` = -12533 WHERE `entry` = 12534;
UPDATE `quest_template` SET `PrevQuestId` = -12529 WHERE `entry` = 12530;
UPDATE `quest_template` SET `ExclusiveGroup` = -12530 WHERE `entry` in (12529,12530);
UPDATE `quest_template` SET `ExclusiveGroup` = -12533 WHERE `entry` in (12533,12534);
UPDATE `quest_template` SET `PrevQuestId` = 12533 WHERE `entry` = 12532;
UPDATE `quest_template` SET `ExclusiveGroup` = -12535 WHERE `entry` in (12531,12535);
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 28138;
UPDATE `creature_template` SET `gossip_menu_id` = 28138 WHERE `entry` = 28138;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(28138,13360);
REPLACE INTO `gossip_menu_option` VALUES(28138,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(28138,1,0,'I need to find Dajik, you have to chalk?',1,1,0,28138,9,12533,0),
(28138,2,0,'I need to find Dajik, you have to chalk?',1,1,0,28138,9,12531,0),
(28138,3,0,'I need to find Goregek, you have to shackles?',1,1,0,28139,9,12529,0),
(28138,4,0,'I need to find Zepik, you have to Hunting Horn?',1,1,0,28140,9,12536,0);
REPLACE INTO `gossip_scripts` values 
(28138,0,15,52544,1,0,0,0,0,0),
(28139,0,15,52542,1,0,0,0,0,0),
(28140,0,15,52545,1,0,0,0,0,0);
UPDATE `quest_template` SET `SrcItemId` = 0, `SrcItemCount` = 0, `SrcSpell` = 51187 WHERE `entry` = 12529;
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51187','0','15','51186','2','0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51187','1','15','52542','2','0','0','0','0','0');
UPDATE `quest_template` SET `SrcItemId` = 0, `SrcItemCount` = 0, `SrcSpell` = 51196 WHERE `entry` = 12533;
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51196','0','15','51188','2','0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51196','1','15','52544','2','0','0','0','0','0');
UPDATE `quest_template` SET `SrcSpell` = 51197 WHERE `entry` = 12536;
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51197','0','15','51189','2','0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51197','1','15','52545','2','0','0','0','0','0');
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(136378, 26298, 571, 1, 1, 0, 0, 5298.76, 4430.3, -94.2925, 4.21227, 25, 0, 0, 42, 0, 0,2);
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 28027;
UPDATE `creature_template` SET `gossip_menu_id` = 28027 WHERE `entry` = 28027;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(28027,13361);
REPLACE INTO `gossip_menu_option` VALUES(28027,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
UPDATE `quest_template` SET `SrcSpell` = 51198 WHERE `entry` = 12571;
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51198','0','15','51190','2','0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51198','1','15','52547','2','0','0','0','0','0');
UPDATE `quest_template` SET  `RewSpell` = 0,`QuestFlags` = 136 WHERE `entry` = 12540;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 28217;
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 28217;
UPDATE `creature_template` SET `gossip_menu_id` = 28217 WHERE `entry` = 28217;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(28217,13124);
REPLACE INTO `gossip_menu_option` VALUES(28217,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(28217,1,0,'<Bend and raise Injured Rainspeaker Oracle.>',1,1,0,28217,9,12540,0);
REPLACE INTO `gossip_scripts` values 
(28217,0,15,51317,1,0,0,0,0,0);
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 28327;
DELETE FROM `creature` WHERE `id`=28327;
UPDATE `quest_template` SET `CompleteScript` = 12540 WHERE `entry` = 12540;
DELETE FROM `quest_end_scripts` WHERE `id`=12540;
REPLACE INTO `quest_end_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(12540, 0, 15, 51321, 0, '0', 0, 0, 0, 0);
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28327);
REPLACE INTO `creature_ai_scripts` VALUES 
(2832753, 28327, 1, 0, 100, 0, 3000, 3000, 0, 0, 1, -283273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb'),
(2832752, 28327, 1, 0, 100, 0, 2000, 2000, 0, 0, 1, -283272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb'),
(2832751, 28327, 1, 0, 100, 0, 1000, 1000, 0, 0, 1, -283271, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb'),
(2832754, 28327, 1, 0, 100, 0, 5000, 5000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb'),
(2832755, 28327, 1, 0, 100, 0, 4000, 4000, 0, 0, 1, -283274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'ytdb');
REPLACE INTO `creature_ai_texts`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES ( '-283271','comes from the nearby undergrowth',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2','0','0',NULL);
REPLACE INTO `creature_ai_texts`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES ( '-283272','You help Rainspeaker! I saw that you help Rainspeaker! This is betrayal!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
REPLACE INTO `creature_ai_texts`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES ( '-283273','If you want to become another big-tongues, you will cease to be a friend Frenzyheart! I will tell in the country! We will not trust you!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','0','0','0',NULL);
REPLACE INTO `creature_ai_texts`(`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES ( '-283274','rushing toward the Frenzyheart Hill.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','2','0','0',NULL);
UPDATE `creature_template` SET `unit_flags` = `unit_flags`| 8 WHERE `entry` = 17551;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 136681;

-- NeatElves
UPDATE `quest_template` SET `PrevQuestId` = '13375' WHERE `entry` =13385;
UPDATE `creature_template_addon` SET `emote` = '69' WHERE `entry` =24081;
DELETE FROM `creature_loot_template` WHERE `entry` = 31734;
UPDATE `creature_template` SET `lootid` = '0' WHERE `entry` =31734;
UPDATE `creature_template` SET `faction_A` = 2068, `faction_H` = 2068 WHERE `entry` = 28158;
DELETE FROM `gameobject` WHERE `guid` = 23368;
UPDATE `creature` SET `modelid` = '0' WHERE `guid` in (104260,104251,104286);
UPDATE creature SET position_x = '5121.040039', position_y = '-3225.550049', position_z = '278.553986', orientation = '0.802851' WHERE guid = '104251';
UPDATE creature SET position_x = '5258.319824', position_y = '-3262.750000', position_z = '281.084991', orientation = '2.338740' WHERE guid = '104260';
UPDATE creature SET position_x = '5231.109863', position_y = '-3117.969971', position_z = '278.554993', orientation = '-2.356190' WHERE guid = '104286';
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 29692;

-- EraBro
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (136371, 32667, 0, 1, 1, 0, 0, -4912.54, -1146.09, 501.433, 3.04687, 25, 0, 0, 1, 0, 0, 0),(136372, 32667, 0, 1, 1, 0, 0, -4912.54, -1146.09, 501.433, 3.04687, 25, 0, 0, 1, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (136373, 32666, 0, 1, 1, 0, 0, -4937.42, -1147.32, 501.491, 6.07615, 25, 0, 0, 1, 0, 0, 0),(136374, 32666, 0, 1, 1, 0, 0, -4936.06, -1139.29, 501.458, 6.13269, 25, 0, 0, 1, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (136375, 31146, 0, 1, 1, 0, 0, -4926.75, -1189.36, 501.651, 2.50808, 25, 0, 0, 56416910, 0, 0, 0);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (136376, 31144, 0, 1, 1, 0, 0, -4943.92, -1166.04, 501.689, 5.43054, 25, 0, 0, 2, 0, 0, 0),(136377, 31144, 0, 1, 1, 0, 0, -4948.27, -1169.95, 501.721, 5.4007, 25, 0, 0, 2, 0, 0, 0);
UPDATE `quest_template` SET `QuestLevel` = 45, `QuestFlags` = 8 WHERE `entry` = 6607;

-- timmit
UPDATE `quest_template` SET `SrcSpell` = 51199 WHERE `entry` = 12574;
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51199','0','15','51191','2','0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51199','1','15','52548','2','0','0','0','0','0');
UPDATE `quest_template` SET `SrcSpell` = 51200 WHERE `entry` = 12578;
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51200','0','15','51192','2','0','0','0','0','0');
REPLACE INTO `spell_scripts`(`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES ( '51200','1','15','52549','2','0','0','0','0','0');
update `gameobject` set `phaseMask`=9 where id in (192232,192234,192230,192227,192246,192249,192248,192247);
DELETE FROM `creature` WHERE `id`=30274;
update `creature_loot_template` set `ChanceOrQuestChance`=-100 where `item`=42770;
UPDATE `creature` SET `spawndist` = 15, `MovementType` = 1 WHERE `id` in (30205,30333);
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` in (30205,30333);
UPDATE `quest_template` SET `PrevQuestId` = 13008 WHERE `entry` = 13044;
UPDATE `quest_template` SET `PrevQuestId` = 13036, `NextQuestId` = 13044, `ExclusiveGroup` = -13008 WHERE `entry` in (13008,13039,13040);
UPDATE `creature_template` SET `IconName` = 'vehicleCursor' WHERE `entry` = 30500;
UPDATE `creature_template` SET `spell1` = 56683, `spell2` = 56684, `spell3` = 56712 WHERE `entry` = 30228;
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '30500','56679','13045','1','13045','1');
UPDATE `creature` SET `phaseMask` = `phaseMask` | 6 WHERE `id` in (30189,30268,30206,30204,30205,30235,30227,30500,30438,30433,30187,30377,28179,30378,30226,30439,30242,30436,30630,30434,30223,30437,30224,30225,30657,30544,30407,30203);
UPDATE `creature` SET `phaseMask` = 6 WHERE `guid` = 119927;
UPDATE `spell_area` SET `quest_start`='13070',`quest_start_active`='0' WHERE `spell`='57673' AND `area`='4501';
UPDATE `spell_area` SET `quest_start`='13070',`quest_start_active`='0' WHERE `spell`='57673' AND `area`='4504';
DELETE FROM `creature` WHERE `guid` = 87304;
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` = 30188;
DELETE FROM `creature` WHERE `id`=30593;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(135388, 30593, 571, 1, 2, 0, 0, 6316.48, 114.751, 390.31, 3.96707, 25, 0, 0, 11379, 3725, 0, 0),
(135389, 30593, 571, 1, 2, 0, 0, 6287.32, 199.425, 386.64, 0.581223, 25, 0, 0, 11379, 3725, 0, 0),
(135390, 30593, 571, 1, 2, 0, 0, 6236.97, 146.167, 380.406, 0.821555, 25, 0, 0, 11770, 3809, 0, 0),
(135391, 30593, 571, 1, 2, 0, 0, 6262.8, 173.936, 381.796, 0.821555, 25, 0, 0, 11770, 3809, 0, 0),
(135392, 30593, 571, 1, 2, 0, 0, 6190.85, 118.635, 377.461, 6.15991, 25, 0, 0, 11770, 3809, 0, 0),
(135393, 30593, 571, 1, 2, 0, 0, 6161.77, 122.238, 373.888, 5.04464, 25, 0, 0, 11770, 3809, 0, 0),
(135394, 30593, 571, 1, 2, 0, 0, 6152.31, 151.4, 372.934, 2.93585, 25, 0, 0, 11379, 3725, 0, 0),
(135395, 30593, 571, 1, 2, 0, 0, 6114.21, 63.2265, 369.467, 2.83531, 25, 0, 0, 11379, 3725, 0, 0),
(135396, 30593, 571, 1, 2, 0, 0, 6169.92, 127.768, 374.753, 4.19484, 25, 0, 0, 11379, 3725, 0, 0),
(135397, 30593, 571, 1, 2, 0, 0, 6142.48, 79.5644, 370.856, 4.19484, 25, 0, 0, 11379, 3725, 0, 0),
(135398, 30593, 571, 1, 2, 0, 0, 6271.33, 139.614, 384.324, 2.61069, 25, 0, 0, 11770, 3809, 0, 0),
(135399, 30593, 571, 1, 2, 0, 0, 6203.46, 175.951, 378.164, 2.74499, 25, 0, 0, 11770, 3809, 0, 0),
(135400, 30593, 571, 1, 2, 0, 0, 6258.04, 162.263, 381.982, 5.86145, 25, 0, 0, 11379, 3725, 0, 0),
(135401, 30593, 571, 1, 2, 0, 0, 6209.87, 163.737, 378.866, 0.579649, 25, 0, 0, 11379, 3725, 0, 0),
(135402, 30593, 571, 1, 2, 0, 0, 6175.68, 141.355, 374.484, 0.579649, 25, 0, 0, 11379, 3725, 0, 0),
(135403, 30593, 571, 1, 2, 0, 0, 6140.18, 118.113, 371.1, 0.579649, 25, 0, 0, 11770, 3809, 0, 0),
(135404, 30593, 571, 1, 2, 0, 0, 6092.92, 82.8938, 371.075, 1.81744, 25, 0, 0, 11770, 3809, 0, 0),
(135405, 30593, 571, 1, 2, 0, 0, 6091.12, 113, 368.053, 1.06267, 25, 0, 0, 11770, 3809, 0, 0),
(135407, 30593, 571, 1, 2, 0, 0, 6113.86, 99.0908, 370.511, 5.73422, 25, 0, 0, 11379, 3725, 0, 0),
(135408, 30593, 571, 1, 2, 0, 0, 6298.96, 101.118, 390.985, 2.08055, 25, 0, 0, 11379, 3725, 0, 0),
(135409, 30593, 571, 1, 2, 0, 0, 6364.86, 179.232, 391.532, 5.57557, 25, 0, 0, 11770, 3809, 0, 0),
(135410, 30593, 571, 1, 2, 0, 0, 6370.31, 144.251, 392.467, 4.60953, 25, 0, 0, 11770, 3809, 0, 0),
(135411, 30593, 571, 1, 2, 0, 0, 6358.55, 97.8215, 392.234, 4.18306, 25, 0, 0, 11770, 3809, 0, 0),
(135412, 30593, 571, 1, 2, 0, 0, 6328.37, 69.5172, 388.763, 3.70711, 25, 0, 0, 11379, 3725, 0, 0),
(135413, 30593, 571, 1, 2, 0, 0, 6338.2, 120.415, 391.194, 6.03817, 25, 0, 0, 11770, 3809, 0, 0),
(135414, 30593, 571, 1, 2, 0, 0, 6199.99, 141.449, 377.353, 3.6647, 25, 0, 0, 11770, 3809, 0, 0),
(135417, 30593, 571, 1, 2, 0, 0, 6290.12, 133.041, 387.001, 5.4232, 25, 0, 0, 11770, 3809, 0, 0),
(135418, 30593, 571, 1, 2, 0, 0, 6242.22, 164.547, 380.244, 2.72693, 25, 0, 0, 11379, 3725, 0, 0),
(135419, 30593, 571, 1, 2, 0, 0, 6302.15, 138.08, 387.719, 2.72222, 25, 0, 0, 11770, 3809, 0, 0),
(135420, 30593, 571, 1, 2, 0, 0, 6320.65, 197.401, 389.82, 6.00204, 25, 0, 0, 11379, 3725, 0, 0);
DELETE FROM `spell_area` WHERE `spell`=57569;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES('57569','4504','13086','0','0','0','0','2','1');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES('57569','4505','13086','0','13141','0','0','2','1');
DELETE FROM `creature` WHERE `id`=30719;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(128077, 30719, 571, 1, 64, 0, 0, 6370.02, 220.081, 395.839, 6.05781, 360, 0, 0, 37800, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=30672;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(135422, 30672, 571, 1, 64, 0, 0, 6432.27, 253.045, 397.371, 0.551387, 25, 0, 0, 21051, 11982, 0, 0),
(135423, 30672, 571, 1, 64, 0, 0, 6429.63, 258.179, 397.541, 0.374673, 25, 0, 0, 21051, 11175, 0, 0),
(135424, 30672, 571, 1, 64, 0, 0, 6430.31, 263.694, 398.116, 0.280425, 25, 0, 0, 21051, 11713, 0, 0),
(135426, 30672, 571, 1, 64, 0, 0, 6438.54, 245.364, 397.343, 0.889109, 25, 0, 0, 21051, 11713, 0, 0),
(135427, 30672, 571, 1, 64, 0, 0, 6435.31, 248.721, 396.958, 0.739883, 25, 0, 0, 21051, 11982, 0, 0),
(135428, 30672, 571, 1, 64, 0, 0, 6442.24, 243.216, 397.892, 0.865547, 25, 0, 0, 21051, 11175, 0, 0);
UPDATE `gameobject` SET `phaseMask` = 64 WHERE `id` in (192801,192804);
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`)VALUES('57569','4506','0','0','13086','0','0','2','1');
UPDATE `creature` SET `phaseMask` = 65 WHERE `id`=31039;
UPDATE `creature` SET `phaseMask` = 70 WHERE `id` in (30203,30407);

-- EraBro
DELETE FROM `creature` WHERE `guid` = 5918 ;
DELETE FROM `creature` WHERE `guid` = 5904 ;
DELETE FROM `creature` WHERE `guid` = 5953 ;
DELETE FROM `creature` WHERE `guid` = 5982 ;
DELETE FROM `creature` WHERE `guid` = 6044 ;
DELETE FROM `creature` WHERE `guid` = 6131 ;
DELETE FROM `creature` WHERE `guid` = 6212 ;
DELETE FROM `creature` WHERE `guid` = 6247 ;
DELETE FROM `creature` WHERE `guid` = 6261 ;
DELETE FROM `creature` WHERE `guid` = 6264 ;
DELETE FROM `creature` WHERE `guid` = 6282 ;
DELETE FROM `creature` WHERE `guid` = 6299 ;
DELETE FROM `creature` WHERE `guid` = 6318 ;
DELETE FROM `creature` WHERE `guid` = 6326 ;
DELETE FROM `creature` WHERE `guid` = 6329 ;
DELETE FROM `creature` WHERE `guid` = 6363 ;
DELETE FROM `creature` WHERE `guid` = 81710 ;
DELETE FROM `creature` WHERE `guid` = 81711 ;
DELETE FROM `creature` WHERE `guid` = 81712 ;
DELETE FROM `creature` WHERE `guid` = 102366 ;
DELETE FROM `creature` WHERE `guid` = 127359 ;
DELETE FROM `creature` WHERE `guid` = 127360 ;
DELETE FROM `creature` WHERE `guid` = 127361 ;
DELETE FROM `gameobject` WHERE `guid` = 16797;
DELETE FROM `gameobject` WHERE `guid` = 9175;
UPDATE `quest_template` SET `QuestFlags` = 2 WHERE `entry` = 1447 ;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 488 ;
UPDATE `quest_template` SET `QuestFlags` = 8, `QuestLevel` = 20 WHERE `entry` = 2360 ;
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (6184, 195141, 0, 1, 1, -9007.3, 871.495, 129.692, 5.4203, 0, 0, 0.418184, -0.908362, 25, 0, 1);

-- Konctantin
UPDATE creature_template SET gossip_menu_id = 7377, ScriptName = '' WHERE entry = 17204; 
UPDATE creature_template SET gossip_menu_id = 7596, ScriptName = '' WHERE entry = 18166; 
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES  
(7596, 9243), 
(8009, 9876), 
(8010, 9877), 
(8011, 9878), 
(8012, 9879), 
(8013, 9880), 
(8014, 9881), 
(7377, 8828), 
(7502, 9098), 
(7503, 9099), 
(7504, 9100), 
(7505, 9101), 
(7506, 9102), 
(7507, 9103), 
(7508, 9104), 
(7858, 9623), 
(7509, 9105); 
REPLACE INTO `gossip_menu_option` VALUES  
('7596', '0', '0', 'Your name is uttered in my presence only in whispers, $n. Who are you?', '1', '1', '8009', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('8009', '0', '0', 'Go on, I\'m listening.', '1', '1', '8010', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('8010', '0', '0', 'Okay.', '1', '1', '8011', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('8011', '0', '0', 'And what have you done then?', '1', '1', '8012', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('8012', '0', '0', 'What happened then?', '1', '1', '8013', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('8013', '0', '0', 'Okay.', '1', '1', '8014', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('8014', '0', '0', 'I had to see you one more question...', '1', '1', '7596', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('7377', '1', '0', 'Tell me about your past, forecaster...', '1', '1', '7502', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('7502', '0', '0', 'Yes, please continue.', '1', '1', '7503', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('7503', '0', '0', 'Yes, please, if not difficult.', '1', '1', '7504', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('7504', '0', '0', 'Nobundo, please continue.', '1', '1', '7505', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('7505', '0', '0', 'What did he say?', '1', '1', '7506', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('7506', '0', '0', 'What was that?', '1', '1', '7507', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('7507', '0', '0', 'And what you then do?', '1', '1', '7508', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('7508', '0', '0', 'Please continue.', '1', '1', '7509', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'), 
('7509', '0', '0', 'Show me the seer!', '1', '1', '7858', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- griffonheart
UPDATE creature_template SET faction_A = 974, faction_H = 974, unit_flags = 768, flags_extra = 66 WHERE entry = 35877;

-- Forum_FIX
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 28541;
UPDATE `creature` SET `position_x` = 5204.54, `position_y` = -1320.69, `position_z` = 243.017, `orientation` = 0.453786 WHERE `guid` = 118678;

-- Krek
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=12000; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=12005; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 34705; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 12004; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 12002; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 12003; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 12009; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 12006; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 12007; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=15.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 12008; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=34702; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=35569; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 34705; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 34701; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 34657; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 34703; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 35572; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 35571; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 35570; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=10.2, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`= 35617; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=22.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=12011; #maxlvl=82, rank=1
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=22.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=12010; #maxlvl=82, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=12, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=12488; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=8.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=12448; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=12.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=12439; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=17.6, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=12012; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=1.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=12444; #maxlvl=80, rank=0
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=14.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=35119; #maxlvl=82, rank=1
UPDATE `creature_template` SET `mindmg`=452, `maxdmg`=678, `attackpower`=170, `dmg_multiplier`=14.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=34928; #maxlvl=82, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=35305; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=5.5, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=35307; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=8.4, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=35309; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=11.8, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=35451; #maxlvl=80, rank=1
UPDATE `creature_template` SET `mindmg`=420, `maxdmg`=630, `attackpower`=158, `dmg_multiplier`=1, `baseattacktime`=2000, `dmgschool`=0 WHERE `entry`=35590; #maxlvl=80, rank=0

-- NeatElves
UPDATE `gameobject` SET `position_x` = '-3790.34' WHERE `guid` =15295;
UPDATE `gameobject` SET `position_x` = '-3790.34' WHERE `guid` =11829;
DELETE FROM `gameobject` WHERE `guid` in (17099,55994);
UPDATE `gameobject` SET `position_x` = '-3678.34' WHERE `guid` =15869;
UPDATE `gameobject` SET `position_x` = '-3678.34' WHERE `guid` =16678;
UPDATE `gameobject_template` SET `data0` = 0 WHERE `entry` = 202357;

-- fix5
UPDATE `creature_template` SET `ScriptName`='npc_blastmaster_emi_shortfuse' WHERE `entry`=7998;
UPDATE `creature_template` SET `ScriptName`='boss_grubbis' WHERE `entry`=7361;
UPDATE `instance_template` SET `script`='instance_gnomeregan' WHERE `map`=90;
UPDATE `item_template` SET `ScriptName`='item_petrov_cluster_bombs' WHERE `entry`=33098;
UPDATE `creature_template` SET `spell1` = 27825, `spell8` = 27928 WHERE `entry` IN (16125, 29985);
UPDATE `creature_template` SET `spell1` = 27831, `spell2` = 55606, `spell8` = 27935 where `entry` = 16126;
UPDATE `creature_template` SET `spell1` = 55638, `spell2` = 55608, `spell8` = 27935 where `entry` = 29986;

-- Remove no longer uses entries from Wintergrasp
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 763 AND 770;
-- Remove no longer uses entries from Wintergrasp
DELETE FROM `trinity_string` WHERE `entry` BETWEEN 756 AND 772;
-- Spyder
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000005200 AND 2000005236;
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000000221 AND 2000000240;

DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001200 AND 2000001202;
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000001204 AND 2000001208;

-- EraBro
UPDATE `quest_template` SET `QuestFlags` = 8, `RewRepFaction3` = 577, `RewRepValue3` = 125, `RewRepFaction4` = 369, `RewRepValue4` = 125, `RewRepFaction5` = 470, `RewRepValue5` = 125 WHERE `entry` = 705 ;
UPDATE `quest_template` SET `QuestLevel` = 37, `QuestFlags` = 8, `RequiredSkillValue` = 185, `Method` = 2 WHERE `entry` = 1559 ;
UPDATE `quest_template` SET `QuestFlags` = 8, `RewRepFaction3` = 577, `RewRepValue3` = 75, `RewRepFaction4` = 369, `RewRepValue4` = 75, `RewRepFaction5` = 470, `RewRepValue5` = 75 WHERE `entry` = 703 ;
UPDATE `quest_template` SET `QuestFlags` = 8, `RewRepFaction3` = 577, `RewRepValue3` = 125, `RewRepFaction4` = 369, `RewRepValue4` = 125, `RewRepFaction5` = 470, `RewRepValue5` = 125 WHERE `entry` = 2418 ;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 1108 ;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 1137 ;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 782 ;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 2258 ;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 2202 ;
UPDATE `quest_template` SET `QuestFlags` = 8, `SkillOrClass` = 171, `RequiredSkillValue` = 210 WHERE `entry` = 2203 ;

-- griffonheart
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11542', '12', '3', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11546', '12', '3', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11547', '12', '3', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11549', '12', '3', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11679', '12', '1', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11680', '12', '1', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11682', '12', '1', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11683', '12', '1', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11684', '12', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11685', '12', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11687', '12', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11688', '12', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11689', '12', '2', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11690', '12', '2', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11692', '12', '2', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11693', '12', '2', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11778', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11779', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11780', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11801', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11802', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11818', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11838', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11839', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11860', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11861', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('11862', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12199', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12200', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12202', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12204', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12205', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12207', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12258', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12338', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12339', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12340', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12341', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12342', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12343', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12344', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12345', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12346', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12347', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12348', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12349', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12350', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12358', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12359', '18', '0', '0');
INSERT IGNORE INTO `achievement_criteria_data` VALUES ('12360', '18', '0', '0');

-- NeatElves
REPLACE INTO `game_event_gameobject` ( `guid` , `event` ) VALUES ('39797', '1');
DELETE FROM `npc_trainer` WHERE `spell` = 7428;

-- timmit
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 30675;
update `gameobject` set `phasemask`=73 where id in (192522,192062,192063,192234,192229,192231,192232,192233,192230,192787,192061,192523,192227,192228,192799,192798,192799,192798);
update `creature` set `phasemask`=73 where `id` in (30657,30437,30434,30439,30436,30672,30438,30433,30431);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(5918, 30672, 571, 1, 64, 0, 0, 6295.98, 87.1982, 390.268, 1.15784, 1200, 0, 0, 21051, 11175, 0, 0),
(5904, 30672, 571, 1, 64, 0, 0, 6290.39, 92.6351, 390.381, 0.479257, 1200, 0, 0, 21051, 11175, 0, 0),
(5953, 30672, 571, 1, 64, 0, 0, 6269.3, 70.9111, 390.049, 5.3605, 1200, 0, 0, 21051, 11175, 0, 0),
(5982, 30672, 571, 1, 64, 0, 0, 6274.49, 66.3223, 390.05, 3.81327, 1200, 0, 0, 21051, 11175, 0, 0),
(6044, 30672, 571, 1, 64, 0, 0, 6255.15, -20.8887, 410.048, 1.43745, 1200, 0, 0, 21051, 11175, 0, 0),
(6131, 30672, 571, 1, 64, 0, 0, 6251.23, -20.8494, 410.049, 1.7626, 1200, 0, 0, 21051, 11175, 0, 0),
(6212, 30672, 571, 1, 64, 0, 0, 6274.29, 65.6622, 390.049, 2.24011, 1200, 0, 0, 21051, 11175, 0, 0),
(6247, 30672, 571, 1, 64, 0, 0, 6222.9, -39.2131, 410.074, 2.77575, 1200, 0, 0, 21051, 11175, 0, 0),
(6261, 30672, 571, 1, 64, 0, 0, 6236.11, -51.619, 419.857, 3.3758, 1200, 0, 0, 21051, 11175, 0, 0),
(6264, 30672, 571, 1, 64, 0, 0, 6259.93, -47.5993, 421.416, 3.95935, 1200, 0, 0, 21051, 11175, 0, 0),
(6282, 30672, 571, 1, 64, 0, 0, 6186.01, -42.021, 394.84, 2.73256, 1200, 0, 0, 21051, 11175, 0, 0),
(6299, 30672, 571, 1, 64, 0, 0, 6158.36, -53.1909, 386.445, 2.0901, 1200, 0, 0, 21051, 11175, 0, 0);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(6318, 30677, 571, 1, 64, 0, 0, 6259.01, 49.9671, 388.399, 0.958397, 25, 0, 0, 13945000, 4258000, 0, 0);
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`)VALUES('57569','4501','13086','0','0','0','0','2','1');
DELETE FROM `creature` WHERE `id`=30673;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(88173, 30673, 571, 1, 64, 26945, 0, 6411.88, 157.138, 395.024, 3.38627, 360, 0, 0, 11379, 3725, 1, 0),
(88174, 30673, 571, 1, 64, 26945, 0, 6473.46, 272.716, 398.795, 3.77728, 360, 0, 0, 11379, 3725, 1, 0),
(88175, 30673, 571, 1, 64, 26945, 0, 6240.08, 147.619, 380.709, 4.12438, 360, 0, 0, 11379, 3725, 1, 0),
(88176, 30673, 571, 1, 64, 25729, 0, 6151.45, 114.057, 373.259, 4.95674, 300, 0, 0, 11770, 3809, 1, 0),
(88177, 30673, 571, 1, 64, 26945, 0, 6225.96, 208.3, 384.939, 4.64258, 300, 0, 0, 11770, 3809, 1, 0),
(88178, 30673, 571, 1, 64, 25729, 0, 6268.49, 131.868, 384.847, 3.75246, 300, 0, 0, 11770, 3809, 1, 0),
(88179, 30673, 571, 1, 64, 26945, 0, 6354.93, 224.888, 393.613, 4.13643, 300, 0, 0, 11770, 3809, 1, 0),
(88183, 30673, 571, 1, 64, 25729, 0, 6159.93, 143.953, 372.938, 0.872665, 300, 0, 0, 11770, 3809, 1, 0),
(88184, 30673, 571, 1, 64, 26945, 0, 6128.84, 58.6906, 369.6, 3.31613, 300, 0, 0, 11770, 3809, 1, 0),
(88185, 30673, 571, 1, 64, 26945, 0, 6103.55, 119.105, 369.017, 4.20624, 300, 0, 0, 11770, 3809, 1, 0),
(88186, 30673, 571, 1, 64, 26945, 0, 6228.13, 163.25, 380.603, 1.11701, 300, 0, 0, 11770, 3809, 1, 0),
(88187, 30673, 571, 1, 64, 25729, 0, 6288.94, 226.967, 390.447, 4.46804, 300, 0, 0, 11770, 3809, 1, 0),
(88188, 30673, 571, 1, 64, 26945, 0, 6298.41, 148.502, 385.861, 3.05433, 300, 0, 0, 11770, 3809, 1, 0),
(88189, 30673, 571, 1, 64, 26945, 0, 6326.27, 182.448, 388.303, 0.349066, 300, 0, 0, 11770, 3809, 1, 0),
(88190, 30673, 571, 1, 64, 25729, 0, 6261.8, 176.461, 382.061, 2.25148, 300, 0, 0, 11770, 3809, 1, 0),
(88191, 30673, 571, 1, 64, 25729, 0, 6317.15, 78.6965, 388.445, 6.07375, 300, 0, 0, 11770, 3809, 1, 0),
(81710, 30673, 571, 1, 64, 26945, 0, 6334.51, 104.986, 391.174, 5.61996, 300, 0, 0, 11770, 3809, 1, 0),
(81711, 30673, 571, 1, 64, 26945, 0, 6373.57, 130.082, 392.363, 5.32325, 300, 0, 0, 11770, 3809, 1, 0),
(81712, 30673, 571, 1, 64, 26945, 0, 6411.87, 154.655, 395.13, 2.40855, 300, 0, 0, 11770, 3809, 1, 0);
UPDATE `creature_template` SET `unit_flags` = 33554434 WHERE `entry` = 30673;
UPDATE `creature` SET `position_x` = 6372.22, `position_y` = 240.118, `position_z` = 396.9, `orientation` = 4.82129 WHERE `guid` = 88472;
UPDATE `creature` SET `position_x` = 6372.52, `position_y` = 238.098, `position_z` = 396.046, `orientation` = 1.81715 WHERE `guid` = 88470;
UPDATE `creature` SET `position_x` = 6377.7, `position_y` = 237.95, `position_z` = 396.046, `orientation` = 4.83307 WHERE `guid` = 88434;
DELETE FROM `creature` WHERE `id`=30685;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(128074, 30685, 571, 1, 64, 0, 0, 6377.55, 229.38, 396.046, 0.489819, 360, 0, 0, 11075, 0, 0, 0),
(128075, 30685, 571, 1, 64, 0, 0, 6378.17, 224.731, 396.046, 0.09319, 360, 0, 0, 11075, 0, 0, 0),
(128076, 30685, 571, 1, 64, 0, 0, 6371.46, 225.99, 396.046, 3.28976, 360, 0, 0, 11075, 0, 0, 0);
UPDATE `creature` SET `position_x` = 6366.73, `position_y` = 220.135, `position_z` = 395.491, `orientation` = 5.5792 WHERE `guid` = 128077;
UPDATE `creature_template` SET `faction_A` = 2068, `faction_H` = 2068 WHERE `entry` in (30202,30333,30593,30206,30575);
UPDATE `creature` SET `id` = 30482 WHERE `id` = 31040;
update `creature_loot_template` set `ChanceOrQuestChance`=-100 where `item`=43169;
UPDATE `quest_template` SET `ExclusiveGroup` = -13110 WHERE `entry` = 13125;

-- Gotten
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (113380,113381,113382,113383,113384,113385,113386,113387,113388,113389); 
UPDATE `creature` SET `MovementType` = 0 WHERE  `guid` IN (112979,112980,112981,112982,112983,112984,112985,112986,113001,113002,113008,113009); 
UPDATE `creature` SET `MovementType` = 0 WHERE  `guid` IN (113064,113065,113066,113067,113068,113069,113070,113071,113072,113073,113074,113075,113077,113078,113079,113080,113081,113082,113083); 
UPDATE `creature` SET `MovementType` = 0 WHERE  `guid` IN (113485,113484,113483,113482,113481,113480,113479,113478,113477,113476,113475,82483,82484,85519); 
DELETE FROM `creature_loot_template` WHERE (`entry`=345) AND (`item`=2296);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (345, 2296, 40, 0, 1, 1, 0, 0, 0);
DELETE FROM `creature_loot_template` WHERE (`entry`=547) AND (`item`=2296);
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `lootcondition`, `condition_value1`, `condition_value2`) VALUES (547, 2296, 40, 0, 1, 1, 0, 0, 0);

-- timmit
delete from spell_area where spell=57674;
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES('57674','4505','13141','0','0','0','0','2','1');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES('57674','4580','13141','0','0','0','0','2','1');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES('57674','4501','13141','0','0','0','0','2','1');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES('57674','4504','13141','0','0','0','0','2','1');
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_start_active`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`) VALUES('57674','4506','13141','0','0','0','0','2','1');
update `gameobject` set `phasemask`=`phasemask`|128 where id in (192522,192062,192063,192234,192229,192231,192232,192233,192230,192787,192061,192523,192227,192228,192799,192798,192799,192798,189980,189981,191133);
update `creature` set `phasemask`=`phasemask`|128 where `id` in (30437,30434,30439,30436,30438,30433,30431,30630,30675,31033,30674,30673,30683,31039,31043,31040,31037);
DELETE FROM `creature` WHERE `id`=31040;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(99418, 31040, 571, 1, 128, 26801, 0, 6969.97, 479.876, 581.492, 2.10126, 300, 5, 0, 11379, 3725, 0, 1),
(99415, 31040, 571, 1, 128, 26801, 0, 7065.98, 529.744, 602.106, 1.97045, 300, 5, 0, 11379, 3725, 0, 1),
(99410, 31040, 571, 1, 128, 26801, 0, 6713.63, 686.302, 436.448, 0.321558, 300, 5, 0, 11379, 3725, 0, 1),
(98843, 31040, 571, 1, 128, 26801, 0, 6583.68, 479.006, 444.548, 3.07334, 300, 5, 0, 11379, 3725, 0, 1),
(98844, 31040, 571, 1, 128, 26801, 0, 6818.82, 655.429, 459.795, 3.57245, 300, 5, 0, 11379, 3725, 0, 1),
(98840, 31040, 571, 1, 128, 26801, 0, 6710.29, 471.843, 446.625, 1.09297, 300, 5, 0, 11379, 3725, 0, 1),
(98841, 31040, 571, 1, 128, 26801, 0, 6659.23, 589.692, 447.284, 2.21025, 300, 5, 0, 11379, 3725, 0, 1),
(98842, 31040, 571, 1, 128, 26801, 0, 6595.86, 596.459, 445.037, 1.82913, 300, 5, 0, 11379, 3725, 0, 1);
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(128091, 31033, 571, 1, 128, 0, 0, 6295.98, 87.1982, 390.268, 1.15784, 1200, 0, 0, 21051, 11175, 0, 0),
(127873, 31033, 571, 1, 128, 0, 0, 6290.39, 92.6351, 390.381, 0.479257, 1200, 0, 0, 21051, 11175, 0, 0),
(127874, 31033, 571, 1, 128, 0, 0, 6269.3, 70.9111, 390.049, 5.3605, 1200, 0, 0, 21051, 11175, 0, 0),
(104123, 31033, 571, 1, 128, 0, 0, 6274.49, 66.3223, 390.05, 3.81327, 1200, 0, 0, 21051, 11175, 0, 0),
(102366, 31033, 571, 1, 128, 0, 0, 6255.15, -20.8887, 410.048, 1.43745, 1200, 0, 0, 21051, 11175, 0, 0),
(127359, 31033, 571, 1, 128, 0, 0, 6251.23, -20.8494, 410.049, 1.7626, 1200, 0, 0, 21051, 11175, 0, 0),
(127360, 31033, 571, 1, 128, 0, 0, 6274.29, 65.6622, 390.049, 2.24011, 1200, 0, 0, 21051, 11175, 0, 0),
(127361, 31033, 571, 1, 128, 0, 0, 6222.9, -39.2131, 410.074, 2.77575, 1200, 0, 0, 21051, 11175, 0, 0),
(136660, 31033, 571, 1, 128, 0, 0, 6236.11, -51.619, 419.857, 3.3758, 1200, 0, 0, 21051, 11175, 0, 0),
(136661, 31033, 571, 1, 128, 0, 0, 6259.93, -47.5993, 421.416, 3.95935, 1200, 0, 0, 21051, 11175, 0, 0),
(104529, 31033, 571, 1, 128, 0, 0, 6186.01, -42.021, 394.84, 2.73256, 1200, 0, 0, 21051, 11175, 0, 0),
(127051, 31033, 571, 1, 128, 0, 0, 6158.36, -53.1909, 386.445, 2.0901, 1200, 0, 0, 21051, 11175, 0, 0);
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 30630;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 32790;
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '32790','57654','0','0','0','1');
REPLACE INTO `spell_target_position`(`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES ( '57654','1','7831.85','-2240.43','464.61','0.9155');
UPDATE `creature_template` SET `gossip_menu_id` = 30630 WHERE `entry` = 30630;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(30630,13844),
(50035,13847);
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(30630,0,0,'It is an honor for me - to meet you, the High Druid. I keep Tirion\'s task and in a hurry, can I ask you to tell me a portal to Moonglade?',1,1,50035,30630,9,13073,0); 
REPLACE INTO `gossip_scripts` values 
(30630,0,15,57535,1,0,0,0,0,0);
UPDATE `creature_template` SET `mingold` = 0, `maxgold` = 0 WHERE `entry` = 17711;
UPDATE `creature_template` SET `unit_flags` = 0 WHERE `entry` = 32790;
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '32790','57654','0','0','0','1');
REPLACE INTO `spell_target_position`(`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES ( '57654','1','7831.85','-2240.43','464.61','0.9155');

-- NeatElves
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(19264, 446, 0, 1, 1, 0, 0, -9198.83, -2272.52, 91.6132, 3.46323, 651, 4, 0, 417, 0, 0, 1);
INSERT IGNORE INTO `game_event_gameobject` ( `guid` , `event` ) VALUES ('39797', '1');
UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` in (24088,24089,24090);
UPDATE `npc_vendor` SET `item` = '42126' WHERE `entry` =34037 AND `item` =42124;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 40881;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 40882;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 40889;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 40976;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 40977;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 40983;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41051;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41055;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 41060;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 41065;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41070;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41075;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 41225;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41230;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41235;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41617;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41621;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 41625;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41630;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41635;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 41640;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41832;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41836;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 41840;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41881;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41885;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 41893;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41898;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 41903;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2560 WHERE  `item` = 41909;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42034;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42035;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42036;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42037;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42038;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42039;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42040;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42069;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42070;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42071;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42072;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42073;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42074;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42075;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42116;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 42117;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 42124;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2559 WHERE  `item` = 42126;
UPDATE `npc_vendor` SET  `ExtendedCost` = 2561 WHERE  `item` = 46373;
REPLACE INTO `areatrigger_tavern` (`id`, `name`) VALUES (5314, 'Wyrmrest - Dragonblight inn');
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES 
(5770, 19569, 1, 1, 1, 634.54, 359.98, 52.01, -3, 0.14, 0.116, 0.982528, -0.041978, 600, 100, 1),
(15681, 19571, 1, 1, 1, 634.44, 359.98, 50.914, -3, 0.143, 0.137, 0.979124, -0.045578, 600, 100, 1),
(16348, 19570, 1, 1, 1, 634.34, 359.98, 51.375, -3, 0.146, 0.069, 0.986307, -0.035498, 600, 100, 1),
(10708, 21060, 1, 1, 1, -3687.8, -4473, 12.328, 2.409, 0, 0, 0.93358, 0.358368, 600, 100, 1),
(7414, 21062, 1, 1, 1, -3686.36, -4471.58, 12.328, -1, 0, 0, -0.34202, 0.939693, 600, 100, 1),
(2857, 21061, 1, 1, 1, -3686.52, -4472.97, 12.328, 3.65383, 0, 0, 0.96738, -0.25333, 600, 100, 1);
UPDATE `gameobject` SET `position_x` = '-3677.80' WHERE `guid` =15869;
UPDATE `gameobject` SET `position_x` = '-3677.80' WHERE `guid` =16678;
UPDATE `npc_trainer` SET `spell` = '40123' WHERE `spell` =40120;
UPDATE `quest_template` SET `ReqSpellCast1` = '0',`ReqSpellCast2` = '0',`ReqSpellCast3` = '0' WHERE `entry` =11796;
REPLACE INTO `creature_ai_scripts` VALUES ('2584551', '25845', '8', '0', '100', '0', '46171', '-1', '0', '0', '11', '46799', '0', '22', '33', '25845', '6', '0', '0', '0', '0', '0', 'ytdb-q11796');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '25845';
REPLACE INTO `creature_ai_scripts` VALUES ('2584651', '25846', '8', '0', '100', '0', '46171', '-1', '0', '0', '11', '46799', '0', '22', '33', '25846', '6', '0', '0', '0', '0', '0', 'ytdb-q11796');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '25846';
REPLACE INTO `creature_ai_scripts` VALUES ('2584751', '25847', '8', '0', '100', '0', '46171', '-1', '0', '0', '11', '46799', '0', '22', '33', '25847', '6', '0', '0', '0', '0', '0', 'ytdb-q11796');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '25847';
DELETE FROM `gameobject` WHERE `guid` in (53295,53294,53285);
UPDATE `quest_template` SET `RewRepFaction1` = '946' WHERE `entry` =13408;

-- timmit
UPDATE `quest_template` SET `SrcSpell` = 57413 WHERE `entry` = 13074;
DELETE FROM `creature` WHERE `id`=30627;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(136099, 30627, 1, 1, 2, 0, 0, 7885.16, -2181.58, 478.682, 5.81168, 25, 0, 0, 12600, 0, 0, 0),
(136100, 30627, 1, 1, 2, 0, 0, 7869.15, -2251.9, 474.7, 0.925722, 25, 0, 0, 12600, 0, 0, 0),
(136101, 30627, 1, 1, 2, 0, 0, 7840.58, -2170.79, 478.706, 5.94285, 25, 0, 0, 12600, 0, 0, 0),
(136102, 30627, 1, 1, 2, 0, 0, 7869.27, -2143.76, 486.221, 4.62967, 25, 0, 0, 12600, 0, 0, 0);
DELETE FROM `creature` WHERE `id`=30617;
REPLACE INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(136095, 30617, 1, 1, 2, 0, 0, 7938.3, -2205.41, 490.557, 2.75177, 25, 0, 0, 63000, 0, 0, 0),
(136096, 30617, 1, 1, 2, 0, 0, 7920.58, -2240.24, 483.493, 2.52401, 25, 0, 0, 63000, 0, 0, 0),
(136097, 30617, 1, 1, 2, 0, 0, 7782.63, -2239.4, 459.477, 0.470979, 25, 0, 0, 63000, 0, 0, 0),
(136098, 30617, 1, 1, 2, 0, 0, 7823.72, -2274.47, 459.725, 1.28151, 25, 0, 0, 63000, 0, 0, 0);
UPDATE `gameobject` SET `phaseMask` = 2 WHERE `id` = 192676;
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 11832;
UPDATE `creature_template` SET `gossip_menu_id` = 11832 WHERE `entry` = 11832;
REPLACE INTO gossip_menu (`entry`,`text_id`) VALUES 
(11832,14198);
REPLACE INTO `gossip_menu_option` VALUES(11832,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(11832,1,0,'Please send me to the Emerald Dream, to find acorns! I know about the dangers and do not fear it.',1,1,0,11832,9,13074,0); 
REPLACE INTO `gossip_scripts` values 
(11832,0,15,57413,1,0,0,0,0,0);
UPDATE `gameobject_template` SET `data3` = 1 WHERE `entry` = 192676;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 13074;
UPDATE `quest_template` SET `QuestFlags` = 136 WHERE `entry` = 13074;
UPDATE `quest_template` SET `StartScript` = 13075 WHERE `entry` = 13075;
DELETE FROM `quest_start_scripts` WHERE `id`=13075;
REPLACE INTO `quest_start_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(13075, 1, 15, 57541, 0, '0', 0, 0, 0, 0);
REPLACE INTO `npc_spellclick_spells`(`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`) VALUES ( '32788','57539','0','0','0','1');
REPLACE INTO `spell_target_position`(`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES ( '57539','571','6216.30','-8.98','410.16','3.71');
UPDATE `quest_template` SET `QuestFlags` = 132, `SpecialFlags` = 2 WHERE `entry` = 13073;
REPLACE INTO `gossip_scripts` values 
(30630,1,7,13073,0,0,0,0,0,0);
UPDATE `creature_template` SET `faction_A` = '29',`faction_H` = '29' WHERE `entry` =34037;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 13082;
UPDATE `quest_template` SET `SrcSpell` = 53141 WHERE `entry` = 13082;
UPDATE `quest_template` SET `PrevQuestId` = 13082 WHERE `entry` = 13083;
UPDATE `quest_template` SET `PrevQuestId` = 13075 WHERE `entry` = 13076;
UPDATE `quest_template` SET `PrevQuestId` = 13079 WHERE `entry` = 13080;

-- EraBro
DELETE FROM `creature` WHERE `guid` = 27525 ;
DELETE FROM `creature` WHERE `guid` = 27516 ;
UPDATE `creature` SET `position_x` = -3665.194, `position_y` = -4388.87, `position_z` = 11.344, `orientation` = 1.285039 WHERE `guid` = 27602 ;
UPDATE `creature` SET `position_x` = -3676.44, `position_y` = -4375.79, `position_z` = 10.92, `orientation` = 0.286012 WHERE `guid` = 27597 ;
DELETE FROM `creature` WHERE `guid` = 27619 ;
DELETE FROM `creature` WHERE `guid` = 27612 ;
UPDATE `creature` SET `position_x` = -3607.76, `position_y` = -4324.20, `position_z` = 9.62, `orientation` = 0.79 WHERE `guid` = 27690 ;
UPDATE `creature` SET `position_x` = -3600.13, `position_y` = -4333.41, `position_z` = 9.61, `orientation` = 0.88 WHERE `guid` = 27697 ;
DELETE FROM `creature` WHERE `guid` = 27063 ;
UPDATE `creature` SET `position_x` = -3839.91, `position_y` = -4576.88, `position_z` = 9.783, `orientation` = 1.427847 WHERE `guid` = 125022 ;
UPDATE `quest_template` SET `QuestFlags` = 0, `RequiredRaces` = 1101, `PrevQuestId` = 11128 WHERE `entry` = 11133 ;
UPDATE `quest_template` SET `QuestFlags` = 8, `RequiredRaces` = 1101, `PrevQuestId` = 11126 WHERE `entry` = 11128 ;
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 11126 ;
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` = 11134 ;

-- timmit
UPDATE `quest_template` SET `PrevQuestId` = -13231 WHERE `entry` = 13232;
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 31304;
UPDATE `creature_template` SET `gossip_menu_id` = 31304 WHERE `entry` = 31304;
REPLACE INTO gossip_menu (`entry`,`text_id`,cond_1,cond_1_val_1) VALUES 
(31304,13940,0,0),
(31304,14035,9,13232),
(50036,13947,0,0);
REPLACE INTO `gossip_menu_option` VALUES (31304,0,0,'GOSSIP_OPTION_QUESTGIVER',2,2,'0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_script_id,cond_1,cond_1_val_1,cond_1_val_2) VALUES  
(31304,1,0,'Hold out a little more, my friend. I must know what happened.',1,1,50036,31304,9,13231,0), 
(31304,2,0,'Let the earth you would be down, the hero of the Alliance!',1,1,0,31305,9,13232,0); 
REPLACE INTO `gossip_scripts` values 
(31304,0,8,31312,1,0,0,0,0,0),
(31305,0,8,31312,1,0,0,0,0,0),
(31305,1,15,58959,1,0,0,0,0,0);
UPDATE `quest_template` SET `SrcSpell` = 59651 WHERE `entry` = 13383;

-- NeatElves
DELETE FROM `spell_area` WHERE `spell` = 42406;
UPDATE `creature_template` SET `faction_A` = '2123',`faction_H` = '2123' WHERE `entry` in (35290,35292,35603,35597,35612,35602,35611);
UPDATE `creature_template` SET `faction_A` = '2027',`faction_H` = '2027' WHERE `entry` =35599;
UPDATE `creature_template` SET `faction_A` = '2123',`faction_H` = '2123' WHERE `entry` in (35318,35984);
UPDATE `creature_template` SET `faction_A` = '2027',`faction_H` = '2027' WHERE `entry` =35319;
UPDATE `creature_template` SET `faction_A` = '1892',`faction_H` = '1892' WHERE `entry` =34924;
UPDATE `creature_template` SET `faction_A` = '1978',`faction_H` = '1978' WHERE `entry` =34922;
UPDATE `creature_template` SET `faction_A` = '1927',`faction_H` = '1927' WHERE `entry` in (27227,33626);
UPDATE `creature_template` SET `faction_A` = '1928',`faction_H` = '1928' WHERE `entry` =29348;
UPDATE `creature_template` SET `faction_A` = '1921',`faction_H` = '1921' WHERE `entry` in (35462,35467);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(78119, 33681, 530, 1, 1, 0, 0, -1709.07, 5642.83, 129.07, 2.81401, 300, 0, 0, 3237, 0, 0, 0);
UPDATE `creature_template` SET `faction_A` = '2123',`faction_H` = '2123',`flags_extra` = '2' WHERE `entry` =32751;

-- freed
UPDATE `creature_template` SET `modelid4` = 23925 WHERE `entry` = 26565;
UPDATE `creature` SET `modelid` = 23905 WHERE `guid` = 113723;
UPDATE `creature` SET `modelid` = 23925 WHERE `guid` = 113724;
UPDATE `creature` SET `modelid` = 23924 WHERE `guid` = 113726;
UPDATE `creature` SET `equipment_id` = 486 WHERE `guid` = 113725;
DELETE FROM `creature` WHERE (`guid`=117704);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(117704, 26854, 571, 1, 1, 0, 0, 3784.65, 1579.21, 89.9877, 3.06927, 600, 0, 0, 48050, 16545, 0, 0);
DELETE FROM `creature` WHERE (`guid`=97900);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(97900, 26649, 571, 1, 1, 0, 149, 3825.54, 1534.27, 89.7249, 1.57039, 300, 0, 0, 9291, 0, 0, 0);

-- timmit
UPDATE `creature` SET  `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 87336;
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` in (29719,29738,29720,29717,29722,29804,29769,29770,29840);
UPDATE `gameobject` SET `phaseMask` = 2 WHERE `id` in (191778,191779);
UPDATE `gameobject` SET `phaseMask` = 3 WHERE `id` in (191757,191758);
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '30181','4477','0','0','12896','0','1101','2','1');
REPLACE INTO `spell_area`(`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES ( '30181','4477','0','0','12897','0','690','2','1');

-- Forum_FIX
UPDATE `creature_template` SET `faction_A` = 2068, `faction_H` = 2068 WHERE `entry` = 28158;
UPDATE `creature_template` SET `unit_flags` = 262148, `flags_extra` = 2 WHERE `entry` = 28156;
UPDATE `gameobject_template` SET `faction` = 114 WHERE `entry` = 188227;

-- WDB
REPLACE INTO `page_text` VALUES ('3602', 'Day 214586:\r\nThe little green people brought a lot of others, pointed them at each other, and then they all started fighting!\r\n\r\nI have trimmed my watching responsibilities back to the hall for safety, but I brought a lot of their baubles with me so that it can maybe be less boring this time.\r\n                -ARCHAVON\r\n\r\nDay 214620:\r\nThings have gotten much worse.  I am not sure what the Makers want me to do.  I\'m trying to stay in my hall, but the violent people come in after me several times a day.  They take my baubles.\r\n                -ARCHAVON\r\n\r\n ', '3603');
REPLACE INTO `page_text` VALUES ('3603', 'Day 214701:\r\nMy brothers are back!  It turns out they were sleeping in other closed off halls.\r\n\r\nI\'m a little mad that they left me alone to do all the watching, but I shared my shinier baubles with them anyway because I\'m tired of being alone and attacked all the time.\r\n                -ARCHAVON\r\n\r\nDay 214760:\r\nThe violent little people have started attacking my brothers, which is sad.  They leave me alone mostly now though, which is not sad.\r\n\r\nI think they want the shiny baubles I gave away.  I feel guilty.\r\n                -ARCHAVON\r\n', '0');
REPLACE INTO `npc_text` SET `ID`=8134,`prob0`=1,`text0_0`='Starting at 6PM, they will show fireworks from the highest bluff!',`text0_1`='Starting at 6PM, they will show fireworks from the highest bluff!',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='The kegs are filled with strong brew!  Drink, friend, and celebrate!',`text1_1`='The kegs are filled with strong brew!  Drink, friend, and celebrate!',`lang1`=0,`em1_0`=0,`em1_1`=1,`em1_2`=0,`em1_3`=153,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='I heard that, after the fireworks show, goblets will be brought to the tables.  Fine toasts we shall raise!',`text2_1`='I heard that, after the fireworks show, goblets will be brought to the tables.  Fine toasts we shall raise!',`lang2`=0,`em2_0`=0,`em2_1`=71,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=1,`text3_0`='Hail, $c!  Welcome to the celebration!',`text3_1`='Hail, $c!  Welcome to the celebration!',`lang3`=0,`em3_0`=0,`em3_1`=2,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=9698,`prob0`=1,`text0_0`='If you wish to truly experience the feast of Winter Veil, you should go to Orgrimmar.',`text0_1`='If you wish to truly experience the feast of Winter Veil, you should go to Orgrimmar.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14362,`prob0`=1,`text0_0`='My, my, I never thought I would have the chance to see Ulduar myself. Why, when Brann asked me to help fund this expedition, how could I refuse?!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14368,`prob0`=1,`text0_0`='These babies can hurl fire like none other. We''ve even attached a secondary cannon, a grappling hook and added a manual fuel injection system.  If you can obtain liquid pyrite from the mechanognomes, you can use it to hurl high-density explosives, or turbo-boost your movement speed. 
\

\
Let''s see those Explorer''s League twirps beat that!',`text0_1`='These babies can hurl fire like none other. We''ve even attached a secondary cannon, a grappling hook and added a manual fuel injection system.  If you can obtain liquid pyrite from the mechanognomes, you can use it to hurl high-density explosives, or turbo-boost your movement speed. 
\

\
Let''s see those Explorer''s League twirps beat that!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14415,`prob0`=1,`text0_0`='Good luck to you in there. I''ll try to find you farther inside once the concourse is clear.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14471,`prob0`=1,`text0_0`='Great job with that metal monstrosity. There appears to be only a few more obstacles in our way.$B$BOnce you clear out that clanking robot at the end of the hall, we''ll be inside Ulduar.$B$BWe also noticed an enormous, fire-breathing protodrake and a molten giant. They aren''t in our way, though, if you''d like to just avoid them. ',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14671,`prob0`=1,`text0_0`='The Isle of Conquest is laden with valuable resources we cannot allow to fall into Alliance hands. Will you join the fight?',`text0_1`='The Isle of Conquest is laden with valuable resources we cannot allow to fall into Alliance hands. Will you join the fight?',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14787,`prob0`=1,`text0_0`='You! Yes, you!$b$bGaze upon me and treasure this moment of meeting, for soon the world will come to know and fear the name and stern visage of Wilfred Fizzlebang! Once my magnificent summoning is complete, no one will doubt my ability!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14824,`prob0`=1,`text0_0`='',`text0_1`='The tournament''s seneschal has asked us to shoulder some of the burden of running the competition now that the coliseum is finished. Those who have earned the right to stand as champions and who have proven themselves in our eyes are asked to assist with these duties.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14928,`prob0`=1,`text0_0`='If you want to learn how to wield weapons, go to Archibald on the inner ring of the War Quarter.',`text0_1`='If you want to learn how to wield weapons, go to Archibald on the inner ring of the War Quarter.',`lang0`=1,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='Good to see someone wanting to learn something useful. Head to Archibald on the inner ring of the War Quarter.',`text1_1`='Good to see someone wanting to learn something useful. Head to Archibald on the inner ring of the War Quarter.',`lang1`=1,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14931,`prob0`=1,`text0_0`='Surprised to see an orc here? Don''t be.$b$bThe forsaken need watching. If we''d been paying closer attention from the start, maybe the Wrath Gate wouldn''t have happened.',`text0_1`='Surprised to see an orc here? Don''t be.$b$bThe forsaken need watching. If we''d been paying closer attention from the start, maybe the Wrath Gate wouldn''t have happened.',`lang0`=1,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='Hope you''re not looking for those abominations. The apothecaries can''t be trusted, and that means none of their little constructs patrolling the halls. We''re here to keep things safe.',`text1_1`='Hope you''re not looking for those abominations. The apothecaries can''t be trusted, and that means none of their little constructs patrolling the halls. We''re here to keep things safe.',`lang1`=1,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='Lok''tar. Don''t try anything suspicious around here. If these undead are going to be part of the Horde, they''re going to mind themselves under our watch.',`text2_1`='Lok''tar. Don''t try anything suspicious around here. If these undead are going to be part of the Horde, they''re going to mind themselves under our watch.',`lang2`=1,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14941,`prob0`=1,`text0_0`='What is it, $c? I''ve got a lot to see to around here now that the demon''s gone. Someone has to shuffle the paperwork and make sure we don''t see another lapse like the one with Putress.$b$bLucky me.',`text0_1`='',`lang0`=1,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15172,`prob0`=1,`text0_0`='I''ll gather up the rest of slaves and get them ready to fight. We''ll catch up with you before you engage Scourgelord Tyrannus.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15319,`prob0`=1,`text0_0`='Varimathras? No, he hasn''t reported in for some time. No doubt he''s off on an errand of importance for his queen.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15320,`prob0`=1,`text0_0`='While Varimathras is, uh... away, I''ve been assigned to assist Captain Bragor in his duties.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15321,`prob0`=1,`text0_0`='With the bulk of Undercity''s forces deployed to Vengeance Landing in Northrend, the Warchief has sent us to reinforce the city''s defenses.',`text0_1`='With the bulk of Undercity''s forces deployed to Vengeance Landing in Northrend, the Warchief has sent us to reinforce the city''s defenses.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

-- NeatElves
UPDATE `creature_template` SET `faction_A` = '1981',`faction_H` = '1981' WHERE `entry` in (27727,34949,34951,36162,36164);
UPDATE `creature_template` SET `faction_A` = '1891',`faction_H` = '1891' WHERE `entry` in (34948,34950,36165,36166);

-- freed
UPDATE `creature` SET `MovementType` = 2  WHERE `guid` = 97890;
UPDATE `creature` SET `MovementType` = 2, `spawndist` = '0' WHERE `guid` = 97950;

-- NeatElves
DELETE FROM `creature_ai_scripts` WHERE id in (2643451,2642851,2635751,2643651,2635651,1929151,1929251,2900151,2802851,2802951,34925052,2734951,3492551,3492552,2616151,670001543,2745051,2720951,2720952,2720953,2720954,2720955,2841551,2841351,2841352,2820251,2532151,2532251,2534252,2534251,2534351,2387652,2387651,2416151,2401651,2416251);
UPDATE `quest_template` SET `ReqSpellCast1` = '0',`ReqSpellCast2` = '0',`ReqSpellCast3` = '0',`ReqSpellCast4` = '0' WHERE `entry` =12736;
DELETE FROM `creature_ai_texts` WHERE `entry` in (-284151,-284152,-284153,-253211,-253212,-253221,-253222,-272091,-272092,-272093,-272094,-272095);
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '27221' WHERE `entry` =12415;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '27419',`ReqSpellCast1` = '0' WHERE `entry` =12260;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '27253',`ReqSpellCast1` = '0' WHERE `entry` =12206;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '16992',`ReqSpellCast1` = '0' WHERE `entry` =10255;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '26096',`ReqSpellCast1` = '0' WHERE `entry` =11899;
UPDATE `creature_ai_scripts` SET `action1_param1` = '52307' WHERE `id` =2800301;

-- freed
DELETE FROM `creature` WHERE (`guid`=98186);
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(98186, 27267, 571, 1, 1, 0, 2, 3209.34, -633.346, 160.168, 3.70394, 1200, 0, 0, 9610, 0, 0, 0);
UPDATE `creature` SET `MovementType` = 2, `spawndist` = '0' WHERE `guid` = 117522;

-- Кот ДаWINчи
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
('6326','6491','0','1','1','0','0','-13314.5','156.802','17.3829','3.31195','25','0','0','4120','0','0','0');

-- Forum_FIX
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 27349;
UPDATE `creature_template` SET `unit_flags` = 2 WHERE `entry` = 26509;
UPDATE `creature` SET `spawntimesecs` = 345600 WHERE `guid` = 73561;
UPDATE `creature_template` SET `mingold` = 3000000, `maxgold` = 5000000 WHERE `entry` = 17711;
DELETE FROM `creature_questrelation` WHERE `quest` = 8367;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 8367;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 8367;
REPLACE INTO `creature_questrelation` (`id`, `quest`) VALUES (15350, 8367);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 15350;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8367;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 8367;
REPLACE INTO `creature_involvedrelation` (`id`, `quest`) VALUES (15350, 8367);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=15350;
UPDATE `creature`, `creature_template` SET `creature`.`spawntimesecs`=3600 WHERE `creature`.`id`=`creature_template`.`entry` AND `creature_template`.`rank`=2;
UPDATE `creature`, `creature_template` SET `creature`.`spawntimesecs`=28800 WHERE `creature`.`id`=`creature_template`.`entry` AND `creature_template`.`rank`=4;

-- freed
UPDATE `creature` SET `position_x` = 3253, `position_y` = -688.406, `position_z` = 167.176, `orientation` = 3.06685 WHERE `guid` = 120617;
UPDATE `creature` SET `position_x` = 3250.91, `position_y` = -682.82, `position_z` = 167.225, `orientation` = 3.64412 WHERE `guid` = 120618;
UPDATE `creature` SET `position_x` = 3214.07, `position_y` = -684.249, `position_z` = 167.536, `orientation` = 6.27775 WHERE `guid` = 98185;
UPDATE `creature` SET `position_x` = 3214.16, `position_y` = -674.158, `position_z` = 167.537, `orientation` = 1.15067 WHERE `guid` = 120616;
UPDATE `creature` SET `position_x` = 3208.99, `position_y` = -630.029, `position_z` = 160.168, `orientation` = 0.509196 WHERE `guid` = 120650;
UPDATE `creature` SET `position_x` = 3221.49, `position_y` = -691.524, `position_z` = 167.124, `orientation` = 2.68351 WHERE `guid` = 117712;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 117838;

-- Krek
UPDATE `creature` SET `spawntimesecs` = 7200 WHERE `map` = 565;
UPDATE `creature` SET `spawntimesecs` = 604800 WHERE `guid` IN (54943, 54936);

-- WDB
REPLACE INTO `npc_text` SET `ID`=8349,`prob0`=1,`text0_0`='',`text0_1`='The Blastenheimer 5000 Ultra Cannon is a state-of-the-art single person projectile device. Delivering its payload at near the speed of a dragon, the cannon is the pride and joy of the Blastenheimer family, world renown for their aeronautical and combustible feats!$B$BIf you''d like to be launched through the skies to fly free as a bird, seek out Maxima Blastenheimer on the south edge of Thunder Bluff''s central rise. She''ll aim you at the target far to south on Stonebull Lake!',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=14933,`prob0`=1,`text0_0`='What''s wrong, bonebag? Looking for someone else? I''m all you''ve got now, so if you want something, make it quick.',`text0_1`='What''s wrong, bonebag? Looking for someone else? I''m all you''ve got now, so if you want something, make it quick.',`lang0`=1,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='I bet you rotters thought you were pretty clever at the Wrath Gate, didn''t you? Playtime''s over. We''re here to make sure you don''t try anything.',`text1_1`='I bet you rotters thought you were pretty clever at the Wrath Gate, didn''t you? Playtime''s over. We''re here to make sure you don''t try anything.',`lang1`=1,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='I''ll tell you what you need to know, but I don''t have to like it. We''re watching you and your kind.',`text2_1`='I''ll tell you what you need to know, but I don''t have to like it. We''re watching you and your kind.',`lang2`=1,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15074,`prob0`=1,`text0_0`='What is your business here, $c?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

-- Fabian
UPDATE `creature_template` SET `modelid2` = 2483, `modelid3` = 10395 WHERE `entry` = 28385; 
UPDATE `creature_template` SET `modelid2` = 26002, `modelid3` = 26003 WHERE `entry` = 29212; 
UPDATE `creature_template` SET `modelid2` = 16093, `modelid3` = 16107 WHERE `entry` = 28386; 
UPDATE `creature_template` SET `IconName` = 'vehichleCursor' WHERE `entry` = 28607; 
UPDATE `creature_template` SET `IconName` = 'vehichleCursor' WHERE `entry` = 28605; 
UPDATE `creature_template` SET `IconName` = 'vehichleCursor' WHERE `entry` = 28606; 
UPDATE `creature_template` SET `IconName` = 'Gunner' WHERE `entry` = 28833; 
UPDATE `creature_template` SET `modelid4` = 25784 WHERE `entry` = 28934; 
UPDATE `creature_template` SET `modelid4` = 25779 WHERE `entry` = 28933; 
UPDATE `creature_template` SET `modelid4` = 25510 WHERE `entry` = 28898; 
UPDATE `creature_template` SET `modelid4` = 25506 WHERE `entry` = 28896; 
UPDATE `creature_template` SET `modelid4` = 24573 WHERE `entry` = 28892; 
UPDATE `creature_template` SET `IconName` = 'Speak' WHERE `entry` = 28909; 
UPDATE `creature_template` SET `modelid4` = 10312 WHERE `entry` = 28895; 
UPDATE `creature_template` SET `modelid4` = 24997 WHERE `entry` = 28897; 
UPDATE `creature_template` SET `modelid4` = 25548 WHERE `entry` = 28939; 
UPDATE `creature_template` SET `modelid4` = 10279 WHERE `entry` = 28610; 
UPDATE `creature_template` SET `modelid4` = 25506 WHERE `entry` = 28940; 
UPDATE `creature_template` SET `modelid4` = 25510 WHERE `entry` = 28936; 
UPDATE `creature_template` SET `modelid4` = 25569 WHERE `entry` = 28942; 
UPDATE `creature_template` SET `modelid4` = 25565 WHERE `entry` = 28941; 
UPDATE `creature_template` SET `modelid4` = 25790 WHERE `entry` = 28946; 
UPDATE `creature_template` SET `modelid4` = 25510 WHERE `entry` = 29080; 
UPDATE `creature_template` SET `modelid4` = 10463 WHERE `entry` = 29007; 
UPDATE `creature_template` SET `modelid4` = 10518 WHERE `entry` = 29029; 
UPDATE `creature_template` SET `modelid4` = 25784 WHERE `entry` = 29031; 
UPDATE `creature_template` SET `modelid4` = 25779 WHERE `entry` = 29030; 
UPDATE `creature_template` SET `modelid4` = 25910 WHERE `entry` = 29101; 
UPDATE `creature_template` SET `modelid4` = 25910 WHERE `entry` = 29106; 
UPDATE `creature_template` SET `modelid4` = 24997 WHERE `entry` = 29136; 
UPDATE `creature_template` SET `modelid4` = 25627 WHERE `entry` = 29189; 
UPDATE `creature_template` SET `modelid4` = 26001 WHERE `entry` = 31094; 
UPDATE `creature_template` SET `modelid4` = 25281 WHERE `entry` = 31098; 
UPDATE `creature_template` SET `Health_mod` = 20 WHERE `entry` = 31099; 
UPDATE `creature_template` SET `modelid4` = 14549 WHERE `entry` = 16232; 
UPDATE `creature_template` SET `modelid4` = 10411 WHERE `entry` = 8546; 
UPDATE `creature_template` SET `modelid4` = 775 WHERE `entry` = 17878; 
UPDATE `gameobject_template` SET `name` = 'Eye of Acherus' WHERE `entry` = 191613; 
UPDATE `gameobject_template` SET `name` = 'Eye of Acherus' WHERE `entry` = 191612; 
UPDATE `gameobject_template` SET `size` = 2.034639 WHERE `entry` = 191746; 
UPDATE `gameobject_template` SET `size` = 1.539903 WHERE `entry` = 191508; 
UPDATE `gameobject_template` SET `size` = 1.539903 WHERE `entry` = 191505; 
UPDATE `gameobject_template` SET `size` = 2.034639 WHERE `entry` = 191747; 
UPDATE `gameobject_template` SET `size` = 2.034639 WHERE `entry` = 191748; 
UPDATE `gameobject_template` SET `size` = 2.589999 WHERE `entry` = 190922; 
UPDATE `gameobject_template` SET `size` = 2.589999 WHERE `entry` = 190912; 
UPDATE `gameobject_template` SET `size` = 2.589999 WHERE `entry` = 190894; 
UPDATE `gameobject_template` SET `size` = 2.589999 WHERE `entry` = 190895; 
UPDATE `gameobject_template` SET `size` = 2.009999 WHERE `entry` = 190802; 
UPDATE `gameobject_template` SET `size` = 2.589999 WHERE `entry` = 190896; 
UPDATE `gameobject_template` SET `size` = 2.259999 WHERE `entry` = 191264; 
UPDATE `gameobject_template` SET `size` = 8.780012 WHERE `entry` = 191269; 
UPDATE `gameobject_template` SET `size` = 8.780012 WHERE `entry` = 191270; 
UPDATE `gameobject_template` SET `size` = 2.211281 WHERE `entry` = 177017; 
UPDATE `gameobject_template` SET `size` = 1.608768 WHERE `entry` = 173200; 
UPDATE `gameobject_template` SET `size` = 2.211281 WHERE `entry` = 177018; 
UPDATE `gameobject_template` SET `size` = 2.211281 WHERE `entry` = 177018; 
UPDATE `gameobject_template` SET `size` = 2.211281 WHERE `entry` = 177019; 
UPDATE `gameobject_template` SET `size` = 1.752408 WHERE `entry` = 173207; 
UPDATE `gameobject_template` SET `size` = 2.211281 WHERE `entry` = 177024; 
UPDATE `gameobject_template` SET `size` = 1.858219 WHERE `entry` = 177020; 
UPDATE `gameobject_template` SET `size` = 2.211281 WHERE `entry` = 177026; 
UPDATE `gameobject_template` SET `size` = 2.547396 WHERE `entry` = 177022; 
UPDATE `gameobject_template` SET `size` = 1.190001 WHERE `entry` = 173211; 
UPDATE `gameobject_template` SET `size` = 1.443039 WHERE `entry` = 177023; 
UPDATE `gameobject_template` SET `size` = 2.547396 WHERE `entry` = 177021; 
UPDATE `gameobject_template` SET `size` = 2.547396 WHERE `entry` = 177025; 
UPDATE `gameobject_template` SET `size` = 2.587224 WHERE `entry` = 177003; 
UPDATE `gameobject_template` SET `size` = 2.587224 WHERE `entry` = 177004; 
UPDATE `gameobject_template` SET `size` = 2.587225 WHERE `entry` = 177005; 
UPDATE `gameobject_template` SET `size` = 2.029999 WHERE `entry` = 20969; 
UPDATE `gameobject_template` SET `size` = '0.6' WHERE `entry` = 1617; 
UPDATE `gameobject_template` SET `size` = '1.869999' WHERE `entry` = 181360; 
UPDATE `gameobject_template` SET `size` = '2.899728' WHERE `entry` = 184245; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182326; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182324; 
UPDATE `gameobject_template` SET `size` = '4.386635' WHERE `entry` = 182758; 
UPDATE `gameobject_template` SET `size` = '3.560003' WHERE `entry` = 182753; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182339; 
UPDATE `gameobject_template` SET `size` = '3.560003' WHERE `entry` = 182833; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182338; 
UPDATE `gameobject_template` SET `size` = '4.750296' WHERE `entry` = 184586; 
UPDATE `gameobject_template` SET `size` = '1.259918' WHERE `entry` = 183761; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182337; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182336; 
UPDATE `gameobject_template` SET `size` = '1.259918' WHERE `entry` = 182316; 
UPDATE `gameobject_template` SET `size` = '1.259918' WHERE `entry` = 182315; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182335; 
UPDATE `gameobject_template` SET `size` = '1.030945' WHERE `entry` = 182682; 
UPDATE `gameobject_template` SET `size` = '1.030945' WHERE `entry` = 182681; 
UPDATE `gameobject_template` SET `size` = '1.259917' WHERE `entry` = 182317; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182332; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182333; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182334; 
UPDATE `gameobject_template` SET `size` = '1.749319' WHERE `entry` = 182331; 
UPDATE `gameobject_template` SET `size` = '4.386635' WHERE `entry` = 182744; 
UPDATE `gameobject_template` SET `size` = '4.386635' WHERE `entry` = 182760; 
UPDATE `gameobject_template` SET `size` = '1.515983' WHERE entry IN (193430, 193432, 193434, 193428, 193436, 193438); 
UPDATE `gameobject_template` SET `size` = '1.849999' WHERE entry IN (195457, 195458, 195459); 
UPDATE `gameobject_template` SET `size` = '1.049999' WHERE `entry` = 192020;; 
UPDATE `gameobject_template` SET `size` = '1.000001' WHERE `entry` = 22223;

-- EraBro
DELETE FROM `creature` WHERE `guid` = 44315 ;
DELETE FROM `creature` WHERE `guid` = 44306 ;
DELETE FROM `creature` WHERE `guid` = 44233 ;
DELETE FROM `creature` WHERE `guid` = 44348 ;
DELETE FROM `creature` WHERE `guid` = 44340 ;
DELETE FROM `creature` WHERE `guid` = 44344 ;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (44325, 12656, 1, 1, 1, 0, 0, 6494.516, 802.203, 8.06, 5.123415, 570, 0, 0, 328, 0, 0, 0);
UPDATE `creature_template` SET `npcflag` = 1, `trainer_type` = 0 WHERE `entry` = 1466 ;
UPDATE `creature_template` SET `npcflag` = 1, `trainer_type` = 0 WHERE `entry` = 1300 ;
UPDATE `creature_template` SET `npcflag` = 1, `trainer_type` = 0 WHERE `entry` = 5500 ;
UPDATE `creature_template` SET `npcflag` = 1, `trainer_type` = 0 WHERE `entry` = 957 ;
UPDATE `creature_template` SET `npcflag` = 1, `trainer_type` = 0 WHERE `entry` = 11026 ;
UPDATE `creature_template` SET `npcflag` = 1, `trainer_type` = 0 WHERE `entry` = 11096 ;
UPDATE `creature_template` SET `npcflag` = 1, `trainer_type` = 0 WHERE `entry` = 11068 ;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 4961 ;

-- Chaosua
UPDATE `spell_script_target` SET `type`='1', `targetEntry`='23472' WHERE (`entry`='54643') AND (`type`='0') AND (`targetEntry`='190763');

-- Forum_FIX
REPLACE INTO `gossip_menu_option` VALUES('7377','2','0','QUESTGIVER','2','2','0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
REPLACE INTO `gossip_menu_option` VALUES('7377','3','3','TRAINER','5','16','0','0','0','0','0',NULL,'0','0','0','0','0','0','0','0','0');
UPDATE `quest_template` SET `ReqSourceId1` = 38083 WHERE `entry` = 11989;
UPDATE `quest_template` SET `ReqSpellCast1` = 0 WHERE `entry` = 12323;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 27561, `ReqSpellCast1` = 0 WHERE `entry` = 12159;
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 193197;
UPDATE `gameobject` SET `spawntimesecs` = 300 WHERE `guid` = 44652;
DELETE FROM `npc_trainer` WHERE (`entry`=1466);
DELETE FROM `npc_trainer` WHERE (`entry`=5500);
DELETE FROM `npc_trainer` WHERE (`entry`=957);
DELETE FROM `npc_trainer` WHERE (`entry`=11026);
DELETE FROM `npc_trainer` WHERE (`entry`=11096);
DELETE FROM `npc_trainer` WHERE (`entry`=11068);
UPDATE `creature_template` SET `modelid1` = '19329', `modelid2` = 18684, `modelid3` = 19329 WHERE `entry` = 20143;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 35364;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 35365;
UPDATE `creature_template` SET `faction_A` = 1735, `faction_H` = 1735 WHERE `entry` = 28366;
UPDATE `creature_template` SET `faction_A` = 1733, `faction_H` = 1733 WHERE `entry` = 27894;
UPDATE `creature_template` SET `unit_flags` = 262148 WHERE `entry` = 28156;

-- WDB
REPLACE INTO `npc_text` SET `ID`=10909,`prob0`=1,`text0_0`='Burning eyes within the prism fill your mind with a sense of dread...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15194,`prob0`=1,`text0_0`='''Twas a fierce battle, $N! Take a moment to rest and gather yer forces. Who knows what lies beyond that door?$B$BLet me know when yer ready and we''ll begin our ascent into the upper reaches of the citadel.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=273,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15195,`prob0`=1,`text0_0`='Are ye sure, $g lad:lass;? Ye don''t need another minute or two?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15208,`prob0`=1,`text0_0`='I''ve brought in the best gnomes we''ve got to get those doors open, $N! They''re estimatin'' that it''s gonna take another $4939W days before that door comes down!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
REPLACE INTO `npc_text` SET `ID`=15214,`prob0`=1,`text0_0`='Whatever you need, Brazie Getz! Get it?$B$BAnd I''m not just talkin'' about the "legal" stuff, either. WHATEVER YOU NEED, PAL! Anything...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=273,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=7156,`prob0`=1,`text0_0`='I... I have failed, $N. The Lord of Bla... The Lord of Blackrock is too powerful. He consumed my energy with... with ease. I turn... I... kill me... you must... you must kill me.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=8349,`prob0`=1,`text0_0`='',`text0_1`='The Blastenheimer 5000 Ultra Cannon is a state-of-the-art single person projectile device. Delivering its payload at near the speed of a dragon, the cannon is the pride and joy of the Blastenheimer family, world renown for their aeronautical and combustible feats!$B$BIf you''d like to be launched through the skies to fly free as a bird, seek out Maxima Blastenheimer on the south edge of Thunder Bluff''s central rise. She''ll aim you at the target far to south on Stonebull Lake!',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=10909,`prob0`=1,`text0_0`='Burning eyes within the prism fill your mind with a sense of dread...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=12665,`prob0`=1,`text0_0`='Anveena''s sacrifice has given us all a new hope for the future.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=1,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=14933,`prob0`=1,`text0_0`='What''s wrong, bonebag? Looking for someone else? I''m all you''ve got now, so if you want something, make it quick.',`text0_1`='What''s wrong, bonebag? Looking for someone else? I''m all you''ve got now, so if you want something, make it quick.',`lang0`=1,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=1,`text1_0`='I bet you rotters thought you were pretty clever at the Wrath Gate, didn''t you? Playtime''s over. We''re here to make sure you don''t try anything.',`text1_1`='I bet you rotters thought you were pretty clever at the Wrath Gate, didn''t you? Playtime''s over. We''re here to make sure you don''t try anything.',`lang1`=1,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=1,`text2_0`='I''ll tell you what you need to know, but I don''t have to like it. We''re watching you and your kind.',`text2_1`='I''ll tell you what you need to know, but I don''t have to like it. We''re watching you and your kind.',`lang2`=1,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15074,`prob0`=1,`text0_0`='What is your business here, $c?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15081,`prob0`=1,`text0_0`='',`text0_1`='I cannot hold him for long, we must leave at once!',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15101,`prob0`=1,`text0_0`='The old wounds still linger, $g lad:lass;. I can feel ''em in me bones, even now. Aye, I got a score to settle with Arthas and ye can believe I''m gonna give that boy the beatin'' I shoulda given ''im when he was a wee lad. Always knew there was something wrong with ''im.$B$BTell me when yer crew is ready and we''ll lift off for the top o'' the citadel.$B$BArthas won''t be expectin'' this!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15158,`prob0`=1,`text0_0`='Ready yourself, $c.$b$bThe time has come for the Lich King''s reign to come to an end.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15194,`prob0`=1,`text0_0`='''Twas a fierce battle, $N! Take a moment to rest and gather yer forces. Who knows what lies beyond that door?$B$BLet me know when yer ready and we''ll begin our ascent into the upper reaches of the citadel.',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=5,`em0_2`=0,`em0_3`=1,`em0_4`=0,`em0_5`=273,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15195,`prob0`=1,`text0_0`='Are ye sure, $g lad:lass;? Ye don''t need another minute or two?',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=6,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15208,`prob0`=1,`text0_0`='I''ve brought in the best gnomes we''ve got to get those doors open, $N! They''re estimatin'' that it''s gonna take another $4939W days before that door comes down!',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15214,`prob0`=1,`text0_0`='Whatever you need, Brazie Getz! Get it?$B$BAnd I''m not just talkin'' about the "legal" stuff, either. WHATEVER YOU NEED, PAL! Anything...',`text0_1`='',`lang0`=0,`em0_0`=0,`em0_1`=396,`em0_2`=0,`em0_3`=273,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15446,`prob0`=1,`text0_0`='Greetings, hero. I craft and sell Frost Witch armor for shaman.
\
',`text0_1`='Greetings, hero. I craft and sell Frost Witch armor for shaman.
\
',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15449,`prob0`=1,`text0_0`='Greetings, hero. I craft and sell Ahn''kahar Blood Hunter armor for hunters.',`text0_1`='Greetings, hero. I craft and sell Ahn''kahar Blood Hunter armor for hunters.',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15451,`prob0`=1,`text0_0`='Greetings, hero. I craft and sell Lightsworn armor for paladins.
\
',`text0_1`='Greetings, hero. I craft and sell Lightsworn armor for paladins.
\
',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;
INSERT IGNORE INTO `npc_text` SET `ID`=15453,`prob0`=1,`text0_0`='Greetings, hero. I craft and sell Bloodmage armor for magi.
\
',`text0_1`='Greetings, hero. I craft and sell Bloodmage armor for magi.
\
',`lang0`=0,`em0_0`=0,`em0_1`=0,`em0_2`=0,`em0_3`=0,`em0_4`=0,`em0_5`=0,`prob1`=0,`text1_0`='',`text1_1`='',`lang1`=0,`em1_0`=0,`em1_1`=0,`em1_2`=0,`em1_3`=0,`em1_4`=0,`em1_5`=0,`prob2`=0,`text2_0`='',`text2_1`='',`lang2`=0,`em2_0`=0,`em2_1`=0,`em2_2`=0,`em2_3`=0,`em2_4`=0,`em2_5`=0,`prob3`=0,`text3_0`='',`text3_1`='',`lang3`=0,`em3_0`=0,`em3_1`=0,`em3_2`=0,`em3_3`=0,`em3_4`=0,`em3_5`=0,`prob4`=0,`text4_0`='',`text4_1`='',`lang4`=0,`em4_0`=0,`em4_1`=0,`em4_2`=0,`em4_3`=0,`em4_4`=0,`em4_5`=0,`prob5`=0,`text5_0`='',`text5_1`='',`lang5`=0,`em5_0`=0,`em5_1`=0,`em5_2`=0,`em5_3`=0,`em5_4`=0,`em5_5`=0,`prob6`=0,`text6_0`='',`text6_1`='',`lang6`=0,`em6_0`=0,`em6_1`=0,`em6_2`=0,`em6_3`=0,`em6_4`=0,`em6_5`=0,`prob7`=0,`text7_0`='',`text7_1`='',`lang7`=0,`em7_0`=0,`em7_1`=0,`em7_2`=0,`em7_3`=0,`em7_4`=0,`em7_5`=0;

-- timmit
UPDATE `creature_template` SET `mechanic_immune_mask` = 16777216 WHERE `entry` in (28926,31867);
update `creature_model_info` set `modelid_other_gender`=0 where `modelid`=5446;

-- freed
UPDATE `creature_template` SET `unit_flags` = 33554432, `dynamicflags` = 32  WHERE `entry` = 27787;
DELETE FROM `gameobject` WHERE (`guid`=44468);
REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(44468, 188649, 571, 1, 1, 3224.35, -688.849, 168.524, 3.49795, 0, 0, 0.984168, -0.17724, 30, 0, 1);
UPDATE `creature` SET `MovementType` = 0, `spawndist` = 0  WHERE `guid` = 87204;
UPDATE `creature` SET `MovementType` = 0, `spawndist` = 0  WHERE `guid` = 87265;
DELETE FROM `creature` WHERE (`guid`=97903);
DELETE FROM `creature` WHERE (`guid`=97904);
INSERT IGNORE INTO `game_event_gameobject` (`guid`, `event`) VALUES
(23331, 2),
(23332, 2),
(23333, 2),
(23334, 2),
(23335, 2),
(23336, 2),
(23337, 2),
(23338, 2),
(23339, 2),
(23340, 2),
(23341, 2),
(23342, 2),
(23343, 2),
(23344, 2),
(23345, 2),
(23346, 2),
(23347, 2),
(23348, 2),
(23349, 2),
(23350, 2),
(23351, 2),
(23352, 2),
(23353, 2),
(23354, 2),
(23355, 2),
(23356, 2),
(23357, 2),
(23358, 2),
(23359, 2),
(23360, 2),
(23361, 2),
(23362, 2),
(23363, 2),
(23364, 2),
(23365, 2),
(23366, 2);
INSERT IGNORE INTO `game_event_gameobject` SELECT `guid`,'2' FROM `gameobject` WHERE `id`=187194;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 112694;
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(135579, 27202, 571, 1, 1, 0, 0, 2614.15, -430.152, 36.5684, 2.44304, 600, 0, 0, 7432, 7332, 0, 2);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 112825;

-- NeatElves
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '26902' WHERE `entry` =12121;
REPLACE INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES 
(2690251, 26902, 10, 0, 100, 1, 1, 10, 10000, 10000, 11, 61611, 6, 22, 33, 26902, 6, 0, 0, 0, 0, 0, 'ytdb-q12121');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = '26902';
UPDATE `creature` SET `phaseMask` = '2' WHERE `guid` =120463;
UPDATE `creature_template` SET `faction_A` = '35',`faction_H` = '35',`flags_extra` = '130' WHERE `entry` =26902;
UPDATE `creature_template` SET `faction_A` = '16',`faction_H` = '16' WHERE `entry` in (23967,24048);
REPLACE INTO `creature_ai_scripts` VALUES ('2397751', '23977', '10', '0', '100', '0', '1', '5', '1000', '1000', '22', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ytdb-q11344');
UPDATE `creature_ai_scripts` SET `id` = '2397752',`event_inverse_phase_mask` = '1',`action2_type` = '22',`comment` = 'ytdb-q11224' WHERE `id` =239770050;
DELETE FROM `creature_questrelation` WHERE `quest` = 11179;

-- Astoria
UPDATE `creature` SET `modelid`='5446' WHERE (`guid`='6100');

-- EraBro
DELETE FROM `creature` WHERE `guid` = 95174 ;
DELETE FROM `creature` WHERE `guid` = 95173 ;
DELETE FROM `creature` WHERE `guid` = 98392 ;

-- Forum_FIX
UPDATE `gameobject_template` SET `faction` = 84 WHERE `entry` IN (195399,195152,195398,191307,191305,191309);
UPDATE `gameobject_template` SET `faction` = 83 WHERE `entry` IN (195396,195334,195149,191306,191308,191310);
UPDATE `creature_template` SET `npcflag` = 4481 WHERE `entry` = 9555;

-- freed
UPDATE `creature` SET `position_x` = 3270.81, `position_y` = -2197.35, `position_z` = 117.373, `orientation` = 4.31224 WHERE `guid` = 119653;
UPDATE `creature` SET `position_x` = 3256.03, `position_y` = -2202.69, `position_z` = 117.029, `orientation` = 5.82256 WHERE `guid` = 32335;
UPDATE `creature` SET `position_x` = 3275.15, `position_y` = -2212.84, `position_z` = 117.029, `orientation` = 2.49275 WHERE `guid` = 119557;
UPDATE `creature` SET `position_x` = 3237.54, `position_y` = -2267.85, `position_z` = 115.785, `orientation` = 1.44243 WHERE `guid` = 119550;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 87322;
UPDATE `creature` SET `position_x` = 3281.23, `position_y` = -2288.77, `position_z` = 108.508, `orientation` = 1.27409 WHERE `guid` = 119656;
UPDATE `creature` SET `position_x` = 3271.18, `position_y` = -2283.29, `position_z` = 108.506, `orientation` = 0.837758 WHERE `guid` = 119657;
-- DELETE FROM `creature_ai_texts` WHERE entry IN ('-283271','-283272','-283273','-283274');

-- Spyder
UPDATE `creature_template` SET `scriptname`='npc_lightwell' WHERE `entry` IN (31883,31893,31894,31895,31896,31897);
UPDATE `creature_template` SET `ScriptName` = 'npc_khadgar' WHERE `entry` = 18166;

-- Eragon
-- Honor Hold
-- insert into `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `moveflags`, `auras`) values ('131372', '0', '17697', '0', '0', '0', '') ;
-- War Horse [Stable] (16884) replaced by Ebon Gryphon and Snowy Gryphon
DELETE FROM `creature` WHERE `guid` = 59225;
DELETE FROM `creature` WHERE `guid` = 56900;
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 18359;
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 18357;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values
 (59225, 18359, 530, 1, 1, 0, 0, -669.985, 2739.88, 94.03, 4.604430, 480, 0, 0, 4979, 0, 0, 0),
 (56900, 18357, 530, 1, 1, 0, 0, -679.36, 2741.085, 93.91, 4.645923, 480, 0, 0, 4979, 0, 0, 0);
-- Logistics Officer Ulrike (17657)
UPDATE `creature` SET `position_x` = -675.431, `position_y` = 2610.523, `position_z` = 86.51, `orientation` = 6.208084 WHERE `guid` = 74343 ;
-- Argent Tournment
-- Stabled Argent Hippogryph (35117)
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 35117 ;
-- Trag Highmountain (35462)
UPDATE `creature_template` SET `faction_A` = 1657, `faction_H` = 1657 WHERE `entry` = 35462 ;
-- Ulduar
-- Right Arm (32934)
DELETE FROM `creature` WHERE `guid` = 126708;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (126708, 32934, 603, 3, 65535, 0, 0, 1797.15, -24.4027, 448.57, 3.19391, 60, 0, 0, 543855, 0, 0, 0);
-- Left Arm (32933)
DELETE FROM `creature` WHERE `guid` = 129679;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (129679, 32933, 603, 3, 65535, 0, 0, 1799.54, -24.3759, 470.37, 3.22994, 60, 0, 0, 543855, 0, 0, 0);
UPDATE `creature` set `spawntimesecs` = '604800', `position_x` = '1799.68', `position_y` = '-24.3599', `position_z` = '452.227', `orientation` = '3.14747' where `id` in (32934, 32933);
-- Auchenai Crypts
-- Phantasmal Possessor (18503,20309)
UPDATE `creature_template` SET `flags_extra` = 64 WHERE `entry` IN (18503,20309);
-- Dire Maul
-- Skeletal Remains of Kariel Winthalus (179544)
UPDATE `gameobject_template` SET `type` = 2 WHERE `entry` = 179544;
UPDATE `quest_template` SET `SpecialFlags` = 2, `ReqCreatureOrGOId1` = 0, `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 7482;
-- Arantir (7009)
UPDATE `creature_template` SET `faction_A` = 55, `faction_H` = 55 WHERE `entry` = 7009;
-- Yorus Barleybrew (6166)
UPDATE `creature` SET `position_x` = -9222.33, `position_y` = -2147.33, `position_z` = 63.731, `orientation` = 3.827873 WHERE `guid` = 5552;
-- Foreman Oslow (341)
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 89;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 125;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 347;
-- Marshal Marris (382)
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 20;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 19;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 115;
-- Guard Howe (903)
UPDATE `creature` SET `position_x` = -9412.024, `position_y` = -2256.961, `position_z` = 67.55, `orientation` = 3.238036 WHERE `guid` = 5217;
-- Verner Osgood (415)
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 126;
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 122;
-- Shawn (8965)
UPDATE `quest_template` SET `QuestFlags` = 8 WHERE `entry` = 3741;
UPDATE `creature` SET `position_x` = -11110.15, `position_y` = 3437.6087, `position_z` = 79.202, `orientation` = 2.266675 WHERE `guid` = 1720;
-- Doodad_Nox_portal_orange_bossroom01
UPDATE `gameobject_template` SET `flags` = 6553636 WHERE `entry` = 191364;

-- Stalker_Riddick
-- Highperch Venom (Quest remove in the patch 2.4.3)
DELETE FROM `quest_template` WHERE (`entry`=1135);
DELETE FROM `creature_questrelation` WHERE (`quest`=1135);
DELETE FROM `gameobject_questrelation` WHERE (`quest`=1135);
DELETE FROM `creature_involvedrelation` WHERE (`quest`=1135);
DELETE FROM `gameobject_involvedrelation` WHERE (`quest`=1135);
DELETE FROM `areatrigger_involvedrelation` WHERE (`quest`=1135);
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 4456;
DELETE FROM `creature_questrelation` WHERE `id` = 4456;

-- Spyder
UPDATE creature_template set spell5=51890 where entry = 28511; -- Eye of Acherus flight
UPDATE `creature_template` SET spell1=52372,spell2=52373,spell3=52374,spell4=52375 WHERE `entry`=28406;
UPDATE creature_template set minlevel=50,maxlevel=52,faction_A=2084,faction_H=2084,mindmg=50,maxdmg=50 where entry=28528; -- ghoul

-- DK quest data Need more to TODO
DELETE FROM `creature_questrelation` WHERE `quest` IN
(12701, 12724, 12725, 12727, 12757, 12754, 12755, 12801, 12756);
DELETE FROM `creature_involvedrelation` WHERE `quest` IN
(12701, 12723, 12724, 12725, 12727, 12754, 12756, 12800,12801, 12755, 12756);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(28377, 12701),
(28914, 12724),
(28913, 12725),
(28912, 12727),
(28914, 12755),
(28914, 12757),
(28914, 12754),
(29077, 12756),
(31082, 12801);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(29173, 12801),
(28377, 12701),
(28914, 12723),
(28914, 12724),
(28912, 12725),
(28913, 12727),
(28914, 12754),
(28914, 12756),
(29077, 12755),
(31082, 12800);
UPDATE `quest_template` SET `PrevQuestId`=13166 WHERE `entry`=13188;
UPDATE `quest_template` SET `PrevQuestId`=13166 WHERE `entry`=13189;

-- Some non-blizzlike auras
-- Wintergrasp essence
DELETE FROM `spell_area` WHERE `spell` IN (57940,58045);
-- Honor on Defender Citys
DELETE FROM `spell_area` WHERE `spell` IN (68652,66157);
-- Remove No Fly Zone and Dalaran No Fly Zone (Dalaran needs proper Core Support)
DELETE FROM `spell_area` WHERE `spell` IN (58730,58600 );

-- Eragon
-- Auras
DELETE FROM `creature_template_addon` WHERE (`entry`=33243);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33243, 0, 0, 0, 0, 0, '63132 0');
-- Charge Target [Add aura]
DELETE FROM `creature_template_addon` WHERE (`entry`=33272);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33272, 0, 0, 0, 0, 0, '64100 0');
-- Marshal Jacob Alerius [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33225);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33225, 0, 0, 0, 0, 0, '62727 0');
-- Lana Stouthammer [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33312);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33312, 0, 0, 0, 0, 0, '63440 0');
-- Ambrose Boltspark [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33335);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33335, 0, 0, 0, 0, 0, '63442 0');
-- Colosos [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33593);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33593, 0, 0, 0, 0, 0, '63439 0');
-- Jaelyne Evensong [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33592);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33592, 0, 0, 0, 0, 0, '63443 0');
-- Eadric the Pure [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33759);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33759, 0, 0, 0, 0, 0, '63501 0');
-- Eressea Dawnsinger [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33379);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33379, 0, 0, 0, 0, 0, '63438 0');
-- Deathstalker Visceri [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33373);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33373, 0, 0, 0, 0, 0, '63441 0');
-- Mokra the Skullcrusher [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33361);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33361, 0, 0, 0, 0, 0, '63444 0');
-- Runok Wildmane [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33403);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33403, 0, 0, 0, 0, 0, '63445 0');
-- Zul'tore [Add flag]
DELETE FROM `creature_template_addon` WHERE (`entry`=33372);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (33372, 0, 0, 0, 0, 0, '63446 0');
-- Icehowl [Add Sleep Visual DND, as if he were really asleep]
DELETE FROM `creature_template_addon` WHERE (`entry`=35470);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (35470, 0, 0, 3, 1, 0, '25148 0');
-- Gormok the Impaler [Add Sleep Visual DND, as if he were really asleep]
DELETE FROM `creature_template_addon` WHERE (`entry`=35469);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (35469, 0, 0, 0, 1, 64, '25148 0');
-- Auras end
-- http://www.wowhead.com/?npc=36066
DELETE FROM `creature_template_addon` WHERE (`entry`=36066);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (36066, 0, 0, 0, 1, 93, '68342 0');
-- http://www.wowhead.com/?npc=36065
DELETE FROM `creature_template_addon` WHERE (`entry`=36065);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (36065, 0, 0, 0, 1, 93, '68342 0'); 

-- Diantonix
-- Boar Ribs (i2677), Lean Wolf Flank (i1015), Great Goretusk Snout (i2296), Chunk of Boar Meat (i769)
UPDATE `item_template` SET `stackable`=20 WHERE `entry` IN (2677,1015,2296,769);

-- Added Reputation on Kill with Horde Expdition/Alliance Vanguard for Gundrak (by kiper)
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (30939,30925,30929,30930,30935,30936,30932,30933,30926,30938,30927,30942,30931,30928,30934,30940,30943,31365,29307,31368,30530,31370,31367);
INSERT INTO `creature_onkill_reputation` (`creature_id`,`RewOnKillRepFaction1`,`RewOnKillRepFaction2`,`MaxStanding1`,`IsTeamAward1`,`RewOnKillRepValue1`,`MaxStanding2`,`IsTeamAward2`,`RewOnKillRepValue2`,`TeamDependent`) VALUES
(30939,1037,1052,7,0,15,7,0,15,1),
(30925,1037,1052,7,0,15,7,0,15,1),
(30929,1037,1052,7,0,15,7,0,15,1),
(30930,1037,1052,7,0,15,7,0,15,1),
(30935,1037,1052,7,0,15,7,0,15,1),
(30936,1037,1052,7,0,15,7,0,15,1),
(30932,1037,1052,7,0,15,7,0,15,1),
(30933,1037,1052,7,0,15,7,0,15,1),
(30926,1037,1052,7,0,15,7,0,15,1),
(30938,1037,1052,7,0,15,7,0,15,1),
(30927,1037,1052,7,0,15,7,0,15,1),
(30942,1037,1052,7,0,15,7,0,15,1),
(30931,1037,1052,7,0,2,7,0,2,1),
(30928,1037,1052,7,0,2,7,0,2,1),
(30934,1037,1052,7,0,2,7,0,2,1),
(30940,1037,1052,7,0,2,7,0,2,1),
(30943,1037,1052,7,0,2,7,0,2,1),
(31365,1037,1052,7,0,250,7,0,250,1),
(29307,1037,1052,7,0,250,7,0,250,1),
(31368,1037,1052,7,0,250,7,0,250,1),
(30530,1037,1052,7,0,250,7,0,250,1),
(31370,1037,1052,7,0,250,7,0,250,1),
(31367,1037,1052,7,0,250,7,0,250,1);

-- Add faction for Grand Champions of the Alliance based on Grand Champion's city (by kiper)
UPDATE `creature_template` SET `faction_A`=1078,`faction_H`=1078 WHERE `entry`=34705; -- Grand Champion of Stormwind
UPDATE `creature_template` SET `faction_A`=64,`faction_H`=64 WHERE `entry`=34702;  -- Grand Champion of Gnomeregan
UPDATE `creature_template` SET `faction_A`=1694,`faction_H`=1694 WHERE `entry`=34701; -- Grand Champion of the Exodar
UPDATE `creature_template` SET `faction_A`=1076,`faction_H`=1076 WHERE `entry`=34657; -- Grand Champion of Darnassus
UPDATE `creature_template` SET `faction_A`=2155,`faction_H`=2155 WHERE `entry`=34703; -- Grand Champion of Ironforge
-- Add faction for Grand Champions of the Horde based on Grand Champion's city
UPDATE `creature_template` SET `faction_A`=29,`faction_H`=29 WHERE `entry`=35572; -- Grand Champion of Orgrimmar
UPDATE `creature_template` SET `faction_A`=1604,`faction_H`=1604 WHERE `entry`=35569;  -- Grand Champion of Silvermoon
UPDATE `creature_template` SET `faction_A`=104,`faction_H`=104 WHERE `entry`=35571; -- Grand Champion of the Thunder Bluff
UPDATE `creature_template` SET `faction_A`=126,`faction_H`=126 WHERE `entry`=35570; -- Grand Champion of Sen'jin
UPDATE `creature_template` SET `faction_A`=68,`faction_H`=68 WHERE `entry`=35617; -- Grand Champion of Undercity
-- Add faction undead to The Black Knight
UPDATE `creature_template` SET `faction_A`=21,`faction_H`=21 WHERE `entry`=35451;

-- Add start relation to quest's for achievement Elders of Northrend (by kiper)
DELETE FROM `creature_questrelation` WHERE `quest` IN (13012,13014,13033,13018,13025,13027,13028,13029,13031,13013,13015,13016,13024,13026,13019,13020,13030,13032);
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
(30348,13012),
(30358,13014),
(30364,13033),
(30362,13018),
(30367,13025),
(30369,13027),
(30370,13028),
(30371,13029),
(30373,13031),
(30357,13013),
(30359,13015),
(30360,13016),
(30365,13024),
(30368,13026),
(30363,13019),
(30375,13020),
(30372,13030),
(30374,13032);
-- Add end relation to quest's for achievement Elders of Northrend
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (13012,13014,13033,13018,13025,13027,13028,13029,13031,13013,13015,13016,13024,13026,13019,13020,13030,13032);
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(30348,13012),
(30358,13014),
(30364,13033),
(30362,13018),
(30367,13025),
(30369,13027),
(30370,13028),
(30371,13029),
(30373,13031),
(30357,13013),
(30359,13015),
(30360,13016),
(30365,13024),
(30368,13026),
(30363,13019),
(30375,13020),
(30372,13030),
(30374,13032);

-- Update creature 35984 "Sunreaver Dragonhawk" to ignore agro (by kiper)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=35984;
-- Set Sinok's Key Fragment loot chance correct based on wowarmory (by kiper)
UPDATE `creature_loot_template` SET`ChanceOrQuestChance`=-100 WHERE `item`=36754;
-- Change movetype to stay for Naxxramas Combat Dummy (by kiper)
UPDATE `creature` SET `spawndist`=0,`MovementType`=0 where `id`=16211;
-- Set ignore agro to stop Envoy Ripfang attacking alliance players (by kiper)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=26441;
-- Add missing object The Staff of Storm's Fury to make quest The Staff of Storm's Fury(11511) works (by kiper)
delete from `gameobject` where `id`=187033; 
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
(150123, 187033, 571, 1,1,501.014, -3530.57, 0.370485, 6.21848, 0, 0, 0.0323477, -0.999477, 25, 0, 1);
-- faction for this creature was changed after UP21 and now is friendly when should be hostile. The faction values I used are from UP21 (by kiper)
UPDATE `creature_template` SET `faction_A`=1985,`faction_H`=1985 WHERE `entry`=26280;
UPDATE `creature_template` SET `faction_A`=1985,`faction_H`=1985 WHERE `entry`=26816;
-- Update creature 30281 "Silver Covenant Hippogryp" to ignore agro (by kiper)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=30281;
-- Add vendor flag to Dame Evniki Kapsalis (by kiper)
UPDATE `creature_template` SET `npcflag`=`npcflag`|128 WHERE `entry`=34885;
-- This NPCs are not agressive against players in Argent Tournament (by Misimouse)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (33474,33465,33459,33467,33459,33480,33462,33560,33477);
-- Some NO aggressive NPCs on Shattrath City (http://www.wowhead.com/?zone=3703) (by Misimouse)
-- Creature Sister of Torment Image is not aggresive is not attackable.
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2,`unit_flags`=`unit_flags`|33555202 WHERE `entry`=24854;
-- Creature Jonru,Mijiri,Arcanist Iramhir are not aggressive is not attackable (by Misimouse).
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry` IN (34999,35000,35596);
-- set the correct faction from Warp Slicer (by devnull)
UPDATE `creature_template` SET `faction_A`=1620,`faction_H`=1620 WHERE `entry`=21272;
-- Set no aggro flag on Sul'lithuz Hatchling (by voltaje)
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=8130;
-- Set proper faction for Orabus the Helmsman c32576 (1885 - Vrykul) (by juronius)
UPDATE `creature_template` SET `faction_A`=1885,`faction_H`=1885 WHERE `entry`=32576;

-- Remove Kil'rek should be spawned by script (by ogeraisi)
DELETE FROM `creature` WHERE `id`=17229;

-- Quest "Deaths in the Family (362) does not require quest "The Haunted Hills" to be completed before you can accept it (by mikebeck, thx Brian)
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `entry`=354;

-- Add missing Spellfocus gameobjects used by questitem Cannoneer's Smoke Flare(33335) (by Socolin, thx Brian for proper research-comments)
-- Spellfocus GOs can not be gotten from sniffs and the data isn't available ANYWHERE else.
-- Usual spawn location is in the exact same location as the visible gameobject.
DELETE FROM `gameobject` WHERE `id`=300163;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`, `rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(150124,300163,571,1,1,1498.65,-6193.97,15.6769,3.43613,0,0,0.989175,-0.146738,25,0,1),
(150125,300163,571,1,1,1576.89,-6252.19,15.7494,2.96725,0,0,0.996203,0.0870613,25,0,1);

-- Add missing gameobject for visual of quest Latent Power (northern stone) (by Socolin)
DELETE FROM `gameobject` WHERE `id` IN (188473,188469,188479);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(150126,188473,571,1,1,4128.46,-4852.93,73.124,3.49344,0,0,0.984565,-0.175018,300,0,1),
(150127,188469,571,1,1,4128.46,-4852.93,73.124,3.49344,0,0,0.984565,-0.175018,300,0,1),
(150128,188479,571,1,1,4128.46,-4852.93,73.124,3.49344,0,0,0.984565,-0.175018,300,0,1);

-- Add start relation to quest's for achievement Elders of the Dungeons (Northrend ones were missing) (by unclechopchop, thx kiper)
DELETE FROM `creature_questrelation` WHERE `quest` IN (13067,13021,13017,13023,13022,13065,13066);
INSERT INTO `creature_questrelation` (`id`,`quest`) VALUES
(30538,13067), -- Elder Chogan'gada (Utgarde Pinnacle)
(30536,13021), -- Elder Igasho (The Nexus)
(30531,13017), -- Elder Jarten (Utgarde Keep)
(30534,13023), -- Elder Kilias (Drak'Tharon Keep)
(30533,13022), -- Elder Nurgen (Azjol-Nerub)
(30537,13065), -- Elder Ohanzee (Gundrak)
(30535,13066); -- Elder Yurauk (Halls Of Stone)
-- Add end relation to quest's for achievement Elders of the Dungeons (Northrend ones were missing)
DELETE FROM `creature_involvedrelation` WHERE `quest` IN (13067,13021,13017,13023,13022,13065,13066);
INSERT INTO `creature_involvedrelation` (`id`,`quest`) VALUES
(30538,13067), -- Elder Chogan'gada (Utgarde Pinnacle)
(30536,13021), -- Elder Igasho (The Nexus)
(30531,13017), -- Elder jarten (Utgarde keep)
(30534,13023), -- Elder Kilias (Drak'Tharon Keep)
(30533,13022), -- Elder Nurgen (Azjol-Nerub)
(30537,13065), -- Elder Ohanzee (Gundrak)
(30535,13066); -- Elder Yurauk (Halls Of Stone)

-- -------------
-- Final Cleanup 
-- -------------
UPDATE `item_template` SET StatsCount = upper(stat_value1/(stat_value1+1)) + upper(stat_value2/(stat_value2+1)) + upper(stat_value3/(stat_value3+1)) + upper(stat_value4/(stat_value4+1)) + upper(stat_value5/(stat_value5+1)) + upper(stat_value6/(stat_value6+1)) + upper(stat_value7/(stat_value7+1)) + upper(stat_value8/(stat_value8+1)) + upper(stat_value9/(stat_value9+1)) + upper(stat_value10/(stat_value10+1));
UPDATE `gameobject` SET `state`=0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type`=0 AND `data0`=1);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~2056 WHERE `unit_flags`&2048=2048 OR `unit_flags`&8=8;
UPDATE creature_template SET unit_flags=unit_flags&~2048 WHERE unit_flags&2048=2048;
UPDATE creature_template SET unit_flags=unit_flags&~524288 WHERE unit_flags&524288=524288;
UPDATE creature_template SET unit_flags=unit_flags&~67108864 WHERE unit_flags&67108864=67108864;
UPDATE creature_template SET unit_flags=unit_flags&~8388608 WHERE unit_flags&8388608=8388608;
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~2;
UPDATE `creature_template` SET `dynamicflags`=`dynamicflags`&~4;
UPDATE creature_template SET npcflag = npcflag&~16777216; -- UNIT_NPC_FLAG_SPELLCLICK
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `type` IN (2,19,17);
UPDATE `creature` SET `MovementType`=0 WHERE `spawndist`=0 AND `MovementType`=1;
UPDATE `creature` SET `spawndist`=0 WHERE `MovementType`=0;
UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|1 WHERE `QuestFlags`=`QuestFlags`|4096;
DELETE FROM go,gt USING `gameobject` go LEFT JOIN `gameobject_template` gt ON go.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gi,gt USING `gameobject_involvedrelation` gi LEFT JOIN `gameobject_template` gt ON gi.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM gqr,gt USING `gameobject_questrelation` gqr LEFT JOIN `gameobject_template` gt ON gqr.`id`=gt.`entry` WHERE gt.`entry` IS NULL;
DELETE FROM ge,go USING `game_event_gameobject` ge LEFT JOIN `gameobject` go ON ge.`guid`=go.`guid` WHERE go.`guid` IS NULL;
DELETE FROM `gameobject_scripts` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_scripts` WHERE `command` in (11, 12) and `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation` UNION SELECT `id` FROM `creature_involvedrelation`);

-- Vehicles should have no regen exept the boss one
UPDATE creature_template SET `RegenHealth`=0 WHERE `VehicleId` >=1 and `rank` !=3;

REPLACE INTO `version` (`core_version`, `core_revision`, `db_version`, `script_version`, `cache_id`) VALUES
('TrinityCore2','','CTDB_rev2_0.0.1_7322','ACID 3.0.3 - Full Release', 0);