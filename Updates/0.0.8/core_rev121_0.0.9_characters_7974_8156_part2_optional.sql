-- 8136
-- Part 1
-- Create guid column and make it new pk
ALTER TABLE `groups` ADD `guid` INT(11) NOT NULL FIRST;
-- truncate group_member
TRUNCATE `groups`;
ALTER TABLE `groups` DROP PRIMARY KEY, ADD PRIMARY KEY (`guid`);
-- Part 2
-- Create guid column
ALTER TABLE `group_member` ADD `guid` INT(11) NOT NULL FIRST;
-- truncate group_member
TRUNCATE `group_member`;
-- Remove index that will be same as pk
ALTER TABLE `group_member` DROP INDEX `Idx_memberGuid` ;
-- NOTE: if this one fails then u have a problem in your DB. Have a member in 2 groups, so fix it yourself and then re-run this one
ALTER TABLE `group_member` DROP `leaderGuid`;
-- Part 3
-- Create guid column
ALTER TABLE `group_instance` ADD `guid` INT(11) NOT NULL FIRST;
-- truncate group_instance
TRUNCATE `group_instance`;
-- Update pk
ALTER TABLE `group_instance` DROP PRIMARY KEY, ADD PRIMARY KEY (`guid`, `instance`);
-- Remove unused column leaderguid
ALTER TABLE `group_instance` DROP `leaderGuid`;