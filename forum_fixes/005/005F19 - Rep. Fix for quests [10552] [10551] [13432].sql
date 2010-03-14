-- Fix for quests [10552], [10551], [13432]
-- By pratchet
--Allegiance to the Scryers[10552] must give reputation to the aldor -3850 (not +350000) and the scryers +3500
UPDATE `quest_template` SET `RewRepFaction2` = 934, `RewRepValueId2` = 5, `RewRepValue1` = -3850, `RewRepValue2` = 3500 WHERE `entry` = 10552;
-- Allegiance to the Aldor [10551] must give reputation to the aldor 3500 (not +350000) and the scryers -3850
UPDATE `quest_template` SET `RewRepFaction2` = 934, `RewRepValueId2` = 5, `RewRepValue1` = 3500, `RewRepValue2` = -3850 WHERE `entry` = 10551;
-- The Vials of Eternity [13432] must give reputation to The Scale of the Sands 3000 (not 300000)
UPDATE `quest_template` SET `RewRepValue1` = 3000 WHERE `entry` = 13432; 