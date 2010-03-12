-- Mage guards of The Underbelly 
-- gossip_menu,gossip_menu_option,npc_text and pois
-- By Eragon

UPDATE `creature_template` SET `gossip_menu_id` = 60000, `IconName` = 'Directions', `npcflag` = 1 WHERE `entry` IN (32732,32730,32731,32729,32727,32726,32733,32728);
INSERT INTO `gossip_menu_option` VALUES 
('60000', '1', '0', 'Arena', '1', '1', '60010', '176', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('60000', '2', '0', 'Bank', '1', '1', '60012', '177', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('60000', '3', '0', 'Inn', '1', '1', '60011', '178', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('60000', '4', '0', 'Sewer Exits', '1', '1', '60004', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('60000', '5', '0', 'Vendors', '1', '1', '60013', '180', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('60004', '1', '0', 'Eastern Sewer Entrance', '1', '1', '60014', '126', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('60004', '2', '0', 'Western Sewer Entrance', '1', '1', '60015', '127', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('60004', '3', '0', 'Sewer Tunnel', '1', '1', '60016', '179', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `gossip_menu` VALUES 
('60000', '14027', '0', '0', '0', '0', '0', '0'),
('60004', '14026', '0', '0', '0', '0', '0', '0'),
('60010', '14023', '0', '0', '0', '0', '0', '0'),
('60011', '14021', '0', '0', '0', '0', '0', '0'),
('60012', '14022', '0', '0', '0', '0', '0', '0'),
('60013', '14019', '0', '0', '0', '0', '0', '0'),
('60014', '14024', '0', '0', '0', '0', '0', '0'),
('60015', '14025', '0', '0', '0', '0', '0', '0'),
('60016', '14020', '0', '0', '0', '0', '0', '0');
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES 
(14022,'There is a goblin-run bank down here, just north of the Cantrips and Crows Tavern in the western sewers.','There is a goblin-run bank down here, just north of the Cantrips and Crows Tavern in the western sewers.',0,0,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0),
(14021,'You\'re looking for the Cantrips and Crows Tavern in the western sewers.','You\'re looking for the Cantrips and Crows Tavern in the western sewers.',0,1,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0),
(14024,'A ramp leads up to just outside Krasus\' Landing in the eastern sewers.','A ramp leads up to just outside Krasus\' Landing in the eastern sewers.',0,1,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0),
(14025,'A ramp leads up to near the Violet Citadel in the western sewers.','A ramp leads up to near the Violet Citadel in the western sewers.',0,1,1,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0);
INSERT INTO `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) VALUES
('176','5781.7','611.1','7','99','0','Dalaran Sewer Arena'),
('177','5767.42','729.2','7','99','0','Dalaran Sewer Bank'),
('178','5768.9','708.1','7','99','0','Dalaran Sewer Inn'),
('179','5780.36','741.13','7','99','0','Dalaran Sewer Tunnel'),
('180','5913.65','574.75','7','99','0','Dalaran Sewer Vendors'); 
