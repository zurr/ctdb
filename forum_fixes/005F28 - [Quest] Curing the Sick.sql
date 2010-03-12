-- Fixes quest Curing the Sick issue #16
-- By Stalker_Riddick
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '12296' WHERE `entry` = '6129'; -- Correct ReqCreatureorGOId
UPDATE `quest_template` SET `ReqSpellCast1` = '19512' WHERE `entry` = '6129'; -- Correct ReqSpellCast