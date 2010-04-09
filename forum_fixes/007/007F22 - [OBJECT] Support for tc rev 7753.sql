-- [OBJECT] Support for tc rev.7753  
-- By Burnham

-- Support for tc re.7753 base in tdb and adapted to CTDB ,valiance keep cannon http://www.wowhead.com/?object=188692
-- xxxx mean the guid will be fix fot CTDB
UPDATE `gameobject_template` SET `data4`=1 WHERE `entry` IN (187560,188692);
DELETE FROM `gameobject` WHERE `id`=188692;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES('43862','188692','571','1','1','2173.3','5198.39','49.9813','-2.9845','0','0','0','1','300','100','0');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES('xxxx','188692','571','1','1','2334.02','5306.95','50.6327','1.22173','0','0','0','1','300','100','0');