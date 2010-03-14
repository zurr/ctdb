-- Arena dalaran fixes
-- In dalaran arena, arena doors is targetable
-- By Wild
UPDATE `gameobject_template` SET `flags`=4 WHERE `entry`=192642;
UPDATE `gameobject_template` SET `flags`=4 WHERE `entry`=192643;