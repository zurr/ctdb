-- 8300
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE `character_battleground_random` (
  `guid` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DELETE FROM `worldstates` WHERE `entry` IN (20003);
INSERT INTO `worldstates` (`entry`,`value`, `comment`) VALUES 
(20003, 0, 'NextBGRandomDailyResetTime');
