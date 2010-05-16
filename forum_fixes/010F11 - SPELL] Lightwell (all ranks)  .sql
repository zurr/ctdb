-- SPELL] Lightwell (all ranks)  
-- This spell is not working, after the Lightwell is summon you can clic on it also when you solved the NPC we miss the spell on the NPC, this SQL solved it.
-- By Misimouse

-- http://www.wowhead.com/spell=724
-- This part fix the NPC that need to be rooted and can be target
UPDATE creature_template SET `IconName`='Interact', `dynamicflags`='8' WHERE `entry` IN(31883,31893,31894,31895,31896,31897);
-- This part insert the spell clikc on DB
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES('31897','60123','0','0','0','2','0','7001','2');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES('31896','60123','0','0','0','2','0','27873','2');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES('31895','60123','0','0','0','2','0','27874','2');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES('31894','60123','0','0','0','2','0','28276','2');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES('31893','60123','0','0','0','2','0','48084','2');
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`, `cast_flags`, `aura_required`, `aura_forbidden`, `user_type`) VALUES('31883','60123','0','0','0','2','0','48085','2'); 