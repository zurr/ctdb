-- [DK] Spell BoneShield
-- Bone shield count should be effected only by incoming damage , instead it's effected by heals.
-- By Dantewow1

-- (49222) Bone Shield ()
DELETE FROM `spell_proc_event` WHERE `entry` IN (49222);
INSERT INTO `spell_proc_event` VALUES (49222, 0x00, 0, 0x00000000, 0x00000000, 
0x00000000, 0x00100000, 0x00000000, 0.000000, 0.000000, 3); 