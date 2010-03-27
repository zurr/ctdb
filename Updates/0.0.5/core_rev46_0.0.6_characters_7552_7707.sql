-- 7577
ALTER TABLE `addons` CHANGE `crc` `crc` int(32) unsigned NOT NULL default '0';

-- 7604
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE `item_refund_instance` (                                                     
`item_guid` int(11) unsigned NOT NULL COMMENT 'Item GUID',                                   
`player_guid` int(11) unsigned NOT NULL COMMENT 'Player GUID',
`paidMoney` int(11) unsigned NOT NULL DEFAULT '0',                                      
`paidHonor` int(11) unsigned NOT NULL DEFAULT '0',                                      
`paidArena` int(11) unsigned NOT NULL DEFAULT '0',                                      
`paidItem_1` mediumint(6) unsigned NOT NULL DEFAULT '0' COMMENT 'item_template.entry',  
`paidItemCount_1` mediumint(6) unsigned NOT NULL DEFAULT '0',                           
`paidItem_2` mediumint(6) unsigned NOT NULL DEFAULT '0',                                
`paidItemCount_2` mediumint(6) unsigned NOT NULL DEFAULT '0',                           
`paidItem_3` mediumint(6) unsigned NOT NULL DEFAULT '0',                                
`paidItemCount_3` mediumint(6) unsigned NOT NULL DEFAULT '0',                           
`paidItem_4` mediumint(6) unsigned NOT NULL DEFAULT '0',                                
`paidItemCount_4` mediumint(6) unsigned NOT NULL DEFAULT '0',                           
`paidItem_5` mediumint(6) unsigned NOT NULL DEFAULT '0',                                
`paidItemCount_5` mediumint(6) unsigned NOT NULL DEFAULT '0',                           
PRIMARY KEY (`item_guid`, `player_guid`)                                                                    
) ENGINE=InnoDB DEFAULT CHARSET=utf8

-- 7611
ALTER TABLE `item_refund_instance`
DROP COLUMN `paidHonor`,
DROP COLUMN `paidArena`,
DROP COLUMN `paidItem_1`,
DROP COLUMN `paidItemCount_1`,
DROP COLUMN `paidItem_2`,                
DROP COLUMN `paidItemCount_2`,
DROP COLUMN `paidItem_3`,
DROP COLUMN `paidItemCount_3`,
DROP COLUMN `paidItem_4`,
DROP COLUMN `paidItemCount_4`,
DROP COLUMN `paidItem_5`,
DROP COLUMN `paidItemCount_5`,
ADD COLUMN `paidExtendedCost` int(11) unsigned NOT NULL DEFAULT '0';

-- 7705
ALTER TABLE `saved_variables` CHANGE `NextArenaPointDistributionTime` `value` bigint(40) UNSIGNED NOT NULL DEFAULT '0',
ADD COLUMN `entry` mediumint(11) UNSIGNED NOT NULL DEFAULT '0' FIRST,
ADD COLUMN `comment` text NOT NULL,
ADD PRIMARY KEY  (`entry`),
RENAME `worldstates`,
ROW_FORMAT=DYNAMIC;

-- Only posible value is NextArenaPointDistributionTime so make the conversion to custom worldstate
UPDATE `worldstates` SET `entry`=20001, `comment`='NextArenaPointDistributionTime';

