-- QUEST] Troll Patrol: Whatdya Want, a Medal?
-- When you clic on NPC's nothing happens, this SQL fix all the quest.
-- By Misimouse

-- http://www.wowhead.com/quest=12519
-- Some changes on the NPC
UPDATE creature_template SET `unit_flags`='537133056', `dynamicflags`='40' WHERE `entry`='28162';
-- Inserting the Spells than need it for the npc when player clik it
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`='28162';
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES('28162','61286','12519','1','12519','2','0','0','0');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES('28162','39996','12519','1','12519','1','0','0','0');
-- EVENTAI for NPC and despawn
DELETE FROM `creature_ai_scripts` WHERE (`creature_id`=28162);
INSERT INTO `creature_ai_scripts` VALUES 
( 2816202, 28162, 1, 1, 100, 0, 3000, 3000, 3000, 3000, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Despawn'),
(2816201, 28162, 8, 0, 100, 0, 39996, -1, 0, 0, 11, 50737, 6, 16, 23, 1, 0, 0, 0, 0, 0, 0, 'Create item spell'); 