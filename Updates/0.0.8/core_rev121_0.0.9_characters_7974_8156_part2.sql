-- 8136
-- Part 1
-- Create guid column and make it new pk
ALTER TABLE `groups` ADD `guid` INT(11) NOT NULL FIRST;
SET @a := 0;
UPDATE `groups` SET `guid` = @a := @a+1;
ALTER TABLE `groups` DROP PRIMARY KEY, ADD PRIMARY KEY (`guid`);
-- Part 2
-- Create guid column
ALTER TABLE `group_member` ADD `guid` INT(11) NOT NULL FIRST;
-- populate column
UPDATE `group_member` SET `guid`=(SELECT `groups`.`guid` FROM `groups` WHERE `leaderGuid`=`group_member`.`leaderGuid`);
-- Remove index that will be same as pk
ALTER TABLE `group_member` DROP INDEX `Idx_memberGuid` ;
-- NOTE: if this one fails then u have a problem in your DB. Have a member in 2 groups, so fix it yourself and then re-run this one
ALTER TABLE `group_member` DROP `leaderGuid`;
-- Part 3
-- Create guid column
ALTER TABLE `group_instance` ADD `guid` INT(11) NOT NULL FIRST;
-- populate column
UPDATE `group_instance` SET `guid`=(SELECT `groups`.`guid` FROM `groups` WHERE `leaderGuid`=`group_instance`.`leaderGuid`);
-- Update pk
ALTER TABLE `group_instance` DROP PRIMARY KEY, ADD PRIMARY KEY (`guid`, `instance`);
-- Remove unused column leaderguid
ALTER TABLE `group_instance` DROP `leaderGuid`;