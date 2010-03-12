-- Primordial Hatchling
-- This npc shouldn't give exp when you kill him
-- By Stalker_Riddick
UPDATE `creature_template` SET `flags_extra` = '64' WHERE `entry` = '28389'; 