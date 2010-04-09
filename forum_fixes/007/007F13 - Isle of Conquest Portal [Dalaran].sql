-- Isle of Conquest Portal [Dalaran]
-- Added correct npcflag and battlemaster_entry
-- By Eragon

UPDATE `creature_template` SET `npcflag` = 1048576 WHERE `entry` IN (34952,34953);
INSERT INTO `battlemaster_entry` (`entry`,`bg_template`) VALUES 
(34952,30),
(34953,30); 