-- Some npc in Elwyn Forest & shadow labirinth  Have a bad Z coordinate
-- By aurus
-- Removing some creatures in Elwyn forest to correct Z coordinates
UPDATE creature SET position_x = '5765.331055', position_y = '514.272217', position_z = '652.802429', orientation = '2.043290' WHERE guid = '98204';
UPDATE creature SET position_x = '5766.907715', position_y = '519.916321', position_z = '652.677368', orientation = '2.703025' WHERE guid = '98205';
UPDATE creature SET position_x = '5766.533203', position_y = '516.319153', position_z = '652.724792', orientation = '2.671610' WHERE guid = '98205';
UPDATE creature SET position_x = '-8790.244141', position_y = '607.535217', position_z = '96.773483', orientation = '2.146843' WHERE guid = '6164';
UPDATE creature SET position_x = '-8897.920898', position_y = '-119.957558', position_z = '81.830521', orientation = '3.511402' WHERE guid = '5972';
UPDATE creature SET position_x = '-8869.148438', position_y = '-163.248795', position_z = '80.204712', orientation = '1.094731' WHERE guid = '15853';
UPDATE creature SET position_x = '-8902.541016', position_y = '-162.511108', position_z = '81.939346', orientation = '1.884056' WHERE guid = '5963';
UPDATE creature SET position_x = '-8918.079102', position_y = '-207.773743', position_z = '82.127632', orientation = '5.828327' WHERE guid = '5942';
UPDATE creature SET position_x = '-8915.041016', position_y = '-215.025635', position_z = '82.121605', orientation = '1.300505' WHERE guid = '5948';
UPDATE creature SET position_x = '-8791.104492', position_y = '607.048035', position_z = '96.772774', orientation = '2.193203' WHERE guid = '6164';
UPDATE creature SET position_x = '-8897.830078', position_y = '-120.006538', position_z = '81.829475', orientation = '3.282925' WHERE guid = '5972';
UPDATE creature SET position_x = '-8869.339844', position_y = '-163.356110', position_z = '80.213997', orientation = '0.962857' WHERE guid = '15853';
-- Resolving problem when Voplril in Shadow labirinth summoning dead Void Walkers. http://www.wowhead.com/?npc=19226
UPDATE `creature_template` SET `Health_mod`='1' WHERE (`entry`='19226'); 