UPDATE `realmlist` SET `gamebuild`=11723 WHERE `id`=1;
ALTER TABLE `realmlist` CHANGE COLUMN `gamebuild` `gamebuild` int(11) unsigned NOT NULL default '11723';