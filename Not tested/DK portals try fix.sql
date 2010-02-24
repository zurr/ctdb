-- By Stalker Riddick
-- Setup creatures for eventai
-- Entry 29588 is from the hall to the heart of acherus
-- Entry 29589 is from the heart to the hall of acherus
-- Spell 54699 teleport from hall to heart might be wrong on this one since i can't test
-- Spell 54725 teleport from heart to hall might me wrong on this one since i can't test
UPDATE `creature_template` SET `AIname` = 'EventAI' WHERE `entry` IN (29589,29588);
-- Make EventAI for the creature 29588 from hall to heart
INSERT INTO `creature_ai_scripts` (id,creature_id,event_type,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action1_type,action1_param1,action1_param2,action1_param3) VALUES
(29588001,29588,10,100,1,0,5,5,5,11,54699,6,4);
-- Make EventAI for the creature 29589 from heart to hall
INSERT INTO `creature_ai_scripts` (id,creature_id,event_type,event_chance,event_flags,event_param1,event_param2,event_param3,event_param4,action1_type,action1_param1,action1_param2,action1_param3) VALUES
(29589001,29589,10,100,1,0,5,5,5,11,54725,6,4);