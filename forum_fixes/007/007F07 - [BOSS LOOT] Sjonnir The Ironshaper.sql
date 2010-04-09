-- [BOSS LOOT] Sjonnir The Ironshaper
-- By Misimouse
-- This NPc: http://www.wowhead.com/?npc=27978 have value 0 to chance of drop in the following items
UPDATE creature_loot_template SET ChanceOrQuestChance='19' WHERE entry='31386' AND item='37667'; -- Item: http://www.wowhead.com/?item=37667
UPDATE creature_loot_template SET ChanceOrQuestChance='19' WHERE entry='31386' AND item='37668'; -- Item: http://www.wowhead.com/?item=37668
UPDATE creature_loot_template SET ChanceOrQuestChance='20' WHERE entry='31386' AND item='37666'; -- Item: http://www.wowhead.com/?item=37666
UPDATE creature_loot_template SET ChanceOrQuestChance='19' WHERE entry='31386' AND item='37660'; -- Item: http://www.wowhead.com/?item=37660
UPDATE creature_loot_template SET ChanceOrQuestChance='18' WHERE entry='31386' AND item='37669'; -- Item: http://www.wowhead.com/?item=37669
UPDATE creature_loot_template SET ChanceOrQuestChance='19' WHERE entry='31386' AND item='37670'; -- Item: http://www.wowhead.com/?item=37670
UPDATE creature_loot_template SET ChanceOrQuestChance='20' WHERE entry='31386' AND item='37657'; -- Item: http://www.wowhead.com/?item=37657
UPDATE creature_loot_template SET ChanceOrQuestChance='19' WHERE entry='31386' AND item='37658'; -- Item: http://www.wowhead.com/?item=37658
-- Miss one item on drop: http://www.wowhead.com/?item=34057
INSERT INTO `creature_loot_template` VALUES 
(31386, 34057, 0.6, 1, 0, 1, 2, 0, 0, 0); 