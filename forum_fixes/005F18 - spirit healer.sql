-- fix for the spirit healer does not rez
-- By tisk
UPDATE `creature_template` SET `npcflag` = 16384 WHERE `entry` IN (6491, 29259, 32537);