-- [QUEST] The Clutches of Evil  
-- By Misimouse
-- http://www.wowhead.com/?quest=11157
-- This NPC can be killed and need to b killed and fater it summon a new NPC: http://www.wowhead.com/?npc=23688
-- Update flags & factions
UPDATE creature_template SET unit_flags='4' ,type_flags='1024', faction_A='1885', faction_H='1885' WHERE `entry`='23777'; 
-- New creature IA
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=23777);
INSERT INTO `creature_ai_scripts` VALUES 
(77770222, 23777, 4, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Proto-Drake egg'),
(77770223, 23777, 6, 0, 100, 0, 0, 0, 0, 0, 12, 23688, 4, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 'Proto-Drake egg'),
(80000210, 23777, 8, 0, 100, 1, 43157, -1, 30000, 30000, 12, 24160, 6, 60000, 11, 51592, 0, 0, 23, 1, 0, 0, 'On spell hit summon a whelp'),
(80000211, 23777, 1, 1, 100, 0, 5000, 5000, 5000, 5000, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Egg 5 sec despawn'); 