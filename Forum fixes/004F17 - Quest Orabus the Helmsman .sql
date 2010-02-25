-- delete and add the Gob 300174 (TEMP you to be standing at the end of Warsong Jetty.) to the right position for quest http://www.wowhead.com/?quest=11661
delete from `gameobject` where id = '300174';
insert into `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values
('300174','571','1','1','2791.63','7009.13','4.98597','1.10016','0','0','0.522756','0.852482','300','0','1'); 