-- [QUEST] Support for tc rev.7748  
-- By Burnham

-- Support for tc rev.7748 
-- make work properly quests 13315, 13351, 11686 and 12741.
-- by burnham
-- delete unused eventai scripts
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (32195,32196,32197,32199);
UPDATE `creature_template` SET `AIName`='' WHERE `entry` IN (32195,32196,32197,32199);
-- insert new areatrigger entries.
DELETE FROM areatrigger_scripts WHERE `entry` IN (5284,5285,5285,5286,5287,4871,4872,4873,5108);
INSERT INTO areatrigger_scripts (`entry`,`ScriptName`) VALUES 
(5284,'at_aldurthar_gate'),
(5285,'at_aldurthar_gate'),
(5286,'at_aldurthar_gate'),
(5287,'at_aldurthar_gate'),
(5108,'at_stormwright_shelf'),
(4871,'at_warsong_farms'),
(4872,'at_warsong_farms'),
(4873,'at_warsong_farms'); 