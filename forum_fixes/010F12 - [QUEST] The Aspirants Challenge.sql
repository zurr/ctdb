-- [QUEST] The Aspirant's Challenge  
-- You need to fight against this NPC, but when you win the faith the quest is not complete, this is because we have a wrong ID fr this NPC, this fix solved it.
-- By Misimouse

-- http://www.wowhead.com/quest=13679
-- This quest need to faigth against one NPC but not correct ID
UPDATE `quest_template` SET `ReqCreatureOrGOId1`='33448' WHERE `entry`='13679'; 