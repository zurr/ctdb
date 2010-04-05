-- [NPC] Obedience Crystal
-- Used for Mind Controlling the Deathknight Understudy's in the Instructor Razuvious fight.
-- By Jonok

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=29912;
INSERT INTO `npc_spellclick_spells` VALUES ('29912', '55479', '0', '0', '0', '3', '0', '0', '0');
DELETE FROM `spell_script_target` WHERE `entry`=55479;
INSERT INTO `spell_script_target` VALUES ('55479', '1', '16803');