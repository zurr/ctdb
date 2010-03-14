-- Gossips for guards on Elwynn Forest and more
-- By Eragon
INSERT INTO `npc_gossip` (npc_guid,textid) VALUES 
(5827,11469), -- Archmage Malin (Stormwind)
(5828,539), -- Elsharin (Stormwind)
(5823,539), -- Maginor Dumas (Stormwind)
(5114,13584), -- Erma
(5115,40000), -- Marshal Dughan
(5032,40001), -- Remy
(4820,40002), -- Guard Thomas
(5133,40003), -- William Pestle
(5927,40004), -- Deputy Willem
(5937,5722), -- Drusilla La Salle
(6061,539), -- Khelden Bremen
(5948,3977); -- Brother Sammuel 
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES 
(40000,'Ach, it\'s hard enough keeping order around here without all these new troubles popping up! I hope you have good news, $N...','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0),
(40001,'Hey there, friend. My name\'s Remy. I\'m from Redridge to the east, and came here looking for business, looking for business. You got any...got any??','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0),
(40002,'Hello, citizen. You look like a $gman:woman; with a purpose - do you have business with the Stormwind Army?','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0),
(40003,'Aha! Good day, good day, Master $C! Come, sit down and have a drink. You have an enterprising look in your eye, and I think you\'ll find speaking to me worth your time...','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0),
(40004,'Hello there, $c. Normally I\'d be out on the beat looking after the folk of Stormwind, but a lot of the Stormwind guards are fighting in other lands. So here I am, deputized and offering bounties when I\'d rather be on patrol...','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0);
-- more fixes
-- Dane Winslow [no gossip]
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` = 6373 ;
-- Stable horse [Wrong spawn] 
DELETE FROM `creature` WHERE `guid` = 102295 ;
-- Add RequestItemsText in quests Palomino Exchange nd White Stallion Exchange
UPDATE `quest_template` SET `RequestItemsText` = 'If you bring me your white stallion, I\'ll trade you for one from the new herd. The new horse will be just as fast as your old one, but have a different look to it. You can look at the swift steeds here to see what it will look like.' WHERE `entry` = 7677 ;
UPDATE `quest_template` SET `RequestItemsText` = 'If you bring me your palomino, I\'ll trade you for one from the new herd. The new horse will be just as fast as your old one, but have a different look to it. You can look at the swift steeds here to see what it will look like.' WHERE `entry` = 7678 ; 
