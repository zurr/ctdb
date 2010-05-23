-- [INSTANCE] Gundrak Central hero mode
-- On this instance in the middle there is a bridge than need to be moved after you kill the 3 bosses and click in a gameobject, but that is not working, this SQL solve it, after used the 3 gameobject the bridge move to left player to pass.
-- By Misimouse

-- http://www.wowhead.com/zone=4375
-- That fix the bridge on hero mode for this zone
-- Doodad_GunDrak_Key_Rhino01
DELETE FROM `gameobject` WHERE `id`=192566;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(72555, 192566, 604, 3, 1, 1775.16, 743.455, 119.073, -1.5708, 0, 0, 1, 0, 180, 0, 1);

-- GunDrak_Key_Snake05
DELETE FROM `gameobject` WHERE `id`=192564;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(72551, 192564, 604, 3, 1, 1775.16, 743.455, 119.073, 3.14159, 0, 0, 1, 0, 180, 0, 0);

-- Doodad_GunDrak_Key_Troll01
DELETE FROM `gameobject` WHERE `id`=192567;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(72553, 192567, 604, 3, 1, 1775.16, 743.455, 119.073, 1.5708, 0, 0, 1, 0, 180, 0, 0);

-- Doodad_GunDrak_Key_Mammoth01
DELETE FROM `gameobject` WHERE `id`=192565;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(72552, 192565, 604, 3, 1, 1775.16, 743.455, 119.073, 0, 0, 0, 1, 0, 180, 0, 0);

-- Doodad_GunDrak_Collision_01
DELETE FROM `gameobject` WHERE `id`=192633;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(72550, 192633, 604, 3, 1, 1775.16, 743.455, 119.073, 1.5708, 0, 0, 1, 0, 180, 0, 1);

-- Doodad_GunDrak_Trapdoor_01
DELETE FROM `gameobject` WHERE `id`=193188;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(20588, 193188, 604, 3, 1, 1775.16, 743.455, 119.073, -1.5708, 0, 0, 1, 0, 180, 0, 0); 