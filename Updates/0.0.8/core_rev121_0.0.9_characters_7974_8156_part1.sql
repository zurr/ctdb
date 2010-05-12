-- 8020
ALTER TABLE `item_refund_instance`
ADD `count` int(10) UNSIGNED NOT NULL DEFAULT 1 AFTER `item_guid`;
-- 8048
ALTER TABLE `item_refund_instance` DROP COLUMN `count`;
-- 8116
ALTER TABLE `groups` CHANGE `isRaid` `groupType` MEDIUMINT(8) UNSIGNED NOT NULL;
UPDATE `groups` SET `groupType`=2 where `groupType`=1;