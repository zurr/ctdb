-- [ITEM] Gaily Wrapped Present  
-- By Misimouse
-- This item should drop 1 item ever, now lots of times is a empty bag.
DELETE FROM `item_loot_template` WHERE (`entry`=21310);
INSERT INTO `item_loot_template` VALUES 
(21310, 21301, 25, 1, 1, 1, 1, 0, 0, 0),
(21310, 21305, 25, 1, 1, 1, 1, 0, 0, 0),
(21310, 21308, 25, 1, 1, 1, 1, 0, 0, 0),
(21310, 21309, 25, 1, 1, 1, 1, 0, 0, 0); 