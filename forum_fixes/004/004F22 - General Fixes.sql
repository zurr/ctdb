-- Dev file
-- Put here all your changes with you Nickname before
-- Like:

-- Spyder
-- Missing Class
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=37122;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=37123;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=37127;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=31260;
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=34942;
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=35036;
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=35041;
UPDATE `creature_template` SET `unit_class`=8 WHERE `entry`=35052;
UPDATE `creature_template` SET `unit_class`=2 WHERE `entry`=37025;
UPDATE `creature_template` SET `unit_class`=1 WHERE `entry`=37665;
-- / Spyder

-- Stalker Riddick
TRUNCATE `creature_formations`;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (53074, 53074, 0, 0, 0);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (53074, 53073, 3, 180, 0);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (10059, 10059, 0, 0, 0);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (10059, 10063, 2, 225, 0);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (76646, 76646, 0, 0, 0);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (76646, 65914, 2, 360, 0);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (76646, 65724, 2, 90, 0);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (87277, 87277, 0, 0, 0);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES (87277, 87276, 2, 250, 0);

-- By Stalker Riddick
TRUNCATE `game_event`;
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (1, '2010-06-21 08:01:00', '2020-12-31 06:00:00', 525600, 20160, 341, 'Midsummer Fire Festival', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (2, '2010-12-15 14:00:00', '2020-12-31 06:00:00', 525600, 25920, 141, 'Winter Veil', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (3, '2010-01-31 08:01:00', '2020-12-31 06:00:00', 131040, 8639, 376, 'Darkmoon Faire (Terokkar Forest)', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (4, '2010-02-28 08:01:00', '2020-12-31 06:00:00', 131040, 8639, 374, 'Darkmoon Faire (Elwynn Forest)', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (5, '2010-04-04 08:01:00', '2020-12-31 06:00:00', 131040, 8639, 375, 'Darkmoon Faire (Mulgore)', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (6, '2010-01-01 07:00:00', '2020-12-31 06:00:00', 525600, 120, 0, 'New Year\'s Eve', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (7, '2010-02-12 14:00:00', '2020-12-31 06:00:00', 525600, 27360, 327, 'Lunar Festival', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (8, '2010-02-11 14:00:00', '2020-12-31 06:00:00', 525600, 7200, 335, 'Love is in the Air', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (9, '2010-04-04 08:01:00', '2020-12-31 06:00:00', 524160, 1440, 181, 'Noblegarden', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (10, '2010-05-02 08:01:00', '2020-12-31 06:00:00', 525600, 10080, 201, 'Children\'s Week ', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (11, '2010-09-16 08:01:00', '2020-12-31 06:00:00', 525600, 10080, 321, 'Harvest Festival', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (12, '2010-10-18 09:00:00', '2020-12-31 06:00:00', 525600, 20160, 324, 'Hallow\'s End', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 1, 0, 'AQ War Effort', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 1, 0, 'Scourge Invasion', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 1, 0, 'Elemental Invasions', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (14, '2009-01-04 13:00:00', '2020-12-31 06:00:00', 10080, 300, 0, 'Fishing Extravaganza Announce', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (16, '2007-08-05 05:00:00', '2020-12-31 06:00:00', 180, 120, 0, 'Gurubashi Arena Booty Run', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (15, '2009-01-04 19:00:00', '2020-12-31 06:00:00', 10080, 120, 301, 'Fishing Extravaganza', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (18, '2009-01-24 04:00:00', '2020-12-31 06:00:00', 40320, 6240, 283, 'Call to Arms: Alterac Valley!', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (19, '2009-01-31 04:00:00', '2020-12-31 06:00:00', 40320, 6240, 284, 'Call to Arms: Warsong Gulch!', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (20, '2009-01-10 04:00:00', '2020-12-31 06:00:00', 40320, 6240, 285, 'Call to Arms: Arathi Basin!', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (21, '2009-01-17 04:00:00', '2020-12-31 06:00:00', 40320, 6240, 353, 'Call to Arms: Eye of the Storm!', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (23, '2010-02-25 08:01:00', '2020-12-31 06:00:00', 131040, 4320, 0, 'Darkmoon Faire Building (Elwynn Forest)', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 1, 0, 'Unknown Holiday PVP Event', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 1, 0, 'Call to Arms: Unknown Event', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (26, '2010-09-20 08:01:00', '2020-12-31 06:00:00', 525600, 20160, 372, 'Brewfest', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (27, '2008-01-02 03:00:00', '2020-12-31 06:00:00', 1440, 720, 0, 'Nights', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (29, '2008-03-24 06:00:00', '2020-12-31 06:00:00', 86400, 21600, 0, 'Edge of Madness, Gri\'lek', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (30, '2008-04-07 07:00:00', '2020-12-31 06:00:00', 86400, 21600, 0, 'Edge of Madness, Hazza\'rah', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (31, '2008-04-21 07:00:00', '2020-12-31 06:00:00', 86400, 21600, 0, 'Edge of Madness, Renataki', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (32, '2008-05-05 07:00:00', '2020-12-31 06:00:00', 86400, 21600, 0, 'Edge of Madness, Wushoolay', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (28, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 525600, 2880, 181, 'Noblegarden', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (33, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Arena Tournament', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (34, '2008-05-15 21:00:00', '2020-01-01 08:00:00', 10080, 5, 0, 'L70ETC Concert', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (35, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 0, 0, 'Shattered Sun Offensive: Phase 1 - Reclaiming the Sanctum', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (36, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Shattered Sun Offensive: Phase 1 - Reclaiming the Sanctum COMPLETE', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (37, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 0, 0, 'Shattered Sun Offensive: Phase 2 - Sun\'s Reach Armory', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (38, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Shattered Sun Offensive: Phase 2 - Sun\'s Reach Armory COMPLETE', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (39, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 0, 0, 'Shattered Sun Offensive: Phase 2b - Activating the Sunwell Portal', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (40, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Shattered Sun Offensive: Phase 2b - Activating the Sunwell Portal COMPLETE', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (41, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 0, 0, 'Shattered Sun Offensive: Phase 3 - Sun\'s Reach Harbor', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (42, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Shattered Sun Offensive: Phase 3 - Sun\'s Reach Harbor COMPLETE', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (43, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 0, 0, 'Shattered Sun Offensive: Phase 3b - Rebuilding the Anvil and Forge', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (44, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Shattered Sun Offensive: Phase 3b - Rebuilding the Anvil and Forge COMPLETE', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (45, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 0, 0, 'Shattered Sun Offensive: Phase 4A - Creating the Alchemy Lab', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (46, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Shattered Sun Offensive: Phase 4A - Creating the Alchemy Lab COMPLETE', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (47, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 0, 0, 'Shattered Sun Offensive: Phase 4B - Building the Monument to the Fallen', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (48, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Shattered Sun Offensive: Phase 4B - Building the Monument to the Fallen COMPLETE', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (49, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Shattered Sun Offensive: Phase 4 - COMPLETE', 2);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (100, '2008-11-16 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: The Exarch\'s Soul Gem', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (101, '2008-11-17 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: Nazan\'s Riding Crop', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (102, '2008-11-18 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: Shaffar\'s Wondrous Pendant', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (103, '2008-11-19 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: The Epoch Hunter\'s Head', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (104, '2008-11-20 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: The Headfeathers of Ikiss', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (105, '2008-11-21 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: Murmur\'s Whisper', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (106, '2008-11-22 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: The Scroll of Skyriss', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (107, '2008-11-23 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: Keli\'dan\'s Feathered Stave', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (108, '2008-11-24 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: Pathaleon\'s Projector', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (109, '2008-11-25 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: The Heart of Quagmirran', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (110, '2008-11-26 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: The Warlord\'s Treatise', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (111, '2008-11-27 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: A Black Stalker Egg', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (112, '2008-11-28 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: Aeonus\'s Hourglass', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (113, '2008-11-29 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: A Warp Splinter Clipping', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (114, '2008-11-30 13:00:00', '2020-12-30 08:00:00', 23040, 1440, 0, 'Wanted: Bladefist\'s Seal', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (115, '2008-12-01 13:00:00', '2020-12-30 08:00:00', 1440, 1440, 0, 'Wanted: The Signet Ring of Prince Kael\'thas ', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (116, '2008-11-16 13:00:00', '2020-12-30 08:00:00', 11520, 1440, 0, 'Wanted: Coilfang Myrmidons', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (117, '2008-11-17 13:00:00', '2020-12-30 08:00:00', 11520, 1440, 0, 'Wanted: Shattered Hand Centurions', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (118, '2008-11-18 13:00:00', '2020-12-30 08:00:00', 11520, 1440, 0, 'Wanted: Tempest-Forge Destroyers', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (119, '2008-11-19 13:00:00', '2020-12-30 08:00:00', 11520, 1440, 0, 'Wanted: Sunseeker Channelers', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (120, '2008-11-20 13:00:00', '2020-12-30 08:00:00', 11520, 1440, 0, 'Wanted: Rift Lords', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (121, '2008-11-21 13:00:00', '2020-12-30 08:00:00', 11520, 1440, 0, 'Wanted: Arcatraz Sentinels', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (122, '2008-11-22 13:00:00', '2020-12-30 08:00:00', 11520, 1440, 0, 'Wanted: Malicious Instructors', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (123, '2008-11-23 13:00:00', '2020-12-30 08:00:00', 11520, 1440, 0, 'Wanted: Sisters of Torment', 0);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (50, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Wintergrasp Alliance Defence', 5);
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES (51, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5184000, 2592000, 0, 'Wintergrasp Horde Defence', 5);

TRUNCATE `game_event_battleground_holiday`;
INSERT INTO `game_event_battleground_holiday` (`event`, `bgflag`) VALUES (18, 2);
INSERT INTO `game_event_battleground_holiday` (`event`, `bgflag`) VALUES (19, 4);
INSERT INTO `game_event_battleground_holiday` (`event`, `bgflag`) VALUES (20, 8);
INSERT INTO `game_event_battleground_holiday` (`event`, `bgflag`) VALUES (21, 128);

TRUNCATE `game_event_condition`;
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (35, 1, 100, 0, 3244, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (36, 1, 1, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (37, 1, 100, 0, 3233, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (38, 1, 1, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (39, 1, 100, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (40, 1, 1, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (41, 1, 100, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (42, 1, 1, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (43, 1, 100, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (44, 1, 1, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (45, 1, 100, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (46, 1, 1, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (47, 1, 1e+006, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (48, 1, 1, 0, 0, '');
INSERT INTO `game_event_condition` (`event_id`, `condition_id`, `req_num`, `max_world_state_field`, `done_world_state_field`, `description`) VALUES (49, 1, 1, 0, 0, '');

-- Guid is converted.
TRUNCATE `game_event_npcflag`;
INSERT INTO `game_event_npcflag` (`guid`, `event_id`, `npcflag`) VALUES (99960, 44, 4224);

-- Guids are converted
TRUNCATE `game_event_npc_gossip`;
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (100304, 35, 12260);
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (100301, 35, 12240);
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (99974, 37, 12255);
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (99973, 37, 12257);
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (100309, 39, 12226);
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (99969, 41, 12319);
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (99967, 41, 12339);
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (99960, 43, 12285);
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (31054, 47, 12322);
INSERT INTO `game_event_npc_gossip` (`guid`, `event_id`, `textid`) VALUES (52375, 47, 12322);

-- Guids are converted
TRUNCATE `game_event_npc_vendor`;
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34887, 0, 0, 2059);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34888, 0, 0, 2059);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34889, 0, 0, 2059);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34890, 0, 0, 2059);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34891, 0, 0, 2329);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34892, 0, 0, 2329);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34893, 0, 0, 2331);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34894, 0, 0, 2331);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34895, 0, 0, 2329);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34896, 0, 0, 2329);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34898, 0, 0, 2329);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34900, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34901, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34902, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34903, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34904, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34905, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34906, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34910, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34911, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34912, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34914, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34916, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34917, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34918, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34919, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34921, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34922, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34923, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34924, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34925, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34926, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34927, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34928, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34929, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34930, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34931, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34932, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34933, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34934, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34935, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34936, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34937, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34938, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34939, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34940, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34941, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34942, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34943, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34944, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34945, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34946, 0, 0, 2333);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34947, 0, 0, 2049);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34949, 0, 0, 2332);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34950, 0, 0, 2332);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34951, 0, 0, 2332);
INSERT INTO `game_event_npc_vendor` (`event`, `guid`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES (44, 99960, 34952, 0, 0, 2332);

TRUNCATE `game_event_prerequisite`;
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (36, 35);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (37, 35);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (38, 37);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (39, 35);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (40, 39);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (41, 37);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (42, 41);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (43, 37);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (44, 43);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (45, 41);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (46, 45);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (47, 41);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (48, 47);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (49, 45);
INSERT INTO `game_event_prerequisite` (`event_id`, `prerequisite_event`) VALUES (49, 47);

TRUNCATE `game_event_quest_condition`;
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11524, 35, 1, 100);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11496, 35, 1, 100);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11538, 37, 1, 100);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11532, 37, 1, 100);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11513, 39, 1, 100);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11542, 41, 1, 100);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11539, 41, 1, 100);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11535, 43, 1, 100);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11520, 45, 1, 100);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11545, 47, 1, 10);
INSERT INTO `game_event_quest_condition` (`quest`, `event_id`, `condition_id`, `num`) VALUES (11549, 47, 1, 1000);

-- Eragon
-- Valiance Keep (Wrong spawns and added mount)
DELETE FROM `creature` WHERE `guid` IN (103697,110384,110388,110385,110391,110386,108622,110383,103698) ;
DELETE FROM `creature` WHERE `guid` = 131369 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(131369, 35133, 571, 1, 1, 0, 0, 2277.35, 5172.51, 11.339, 2.597853, 300, 0, 0, 11677, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` = 131369;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(131369, 0, 17717, 0, 257, 0, '');
DELETE FROM `creature` WHERE `guid` = 131373 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(131373, 35131, 571, 1, 1, 0, 0, 2280.586, 5177, 11.34, 3.225387, 300, 0, 0, 11677, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` = 131373;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(131373, 0, 17759, 0, 257, 0, '');
DELETE FROM `creature` WHERE `guid` = 174339 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(174339, 20506, 571, 1, 1, 0, 0, 2278.35, 5166.245, 14.1, 1.122095, 600, 0, 0, 6986, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 174340 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(174340, 20508, 571, 1, 1, 0, 0, 2275.95, 5167.139, 14.1, 1.122095, 600, 0, 0, 6986, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (98010,98009,98008,98007,98012,98011) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(98010, 0, 0, 0, 0, 36, ''),
(98009, 0, 0, 0, 0, 36, ''),
(98008, 0, 0, 0, 0, 36, ''),
(98007, 0, 0, 0, 0, 36, ''),
(98012, 0, 0, 0, 0, 36, ''),
(98011, 0, 0, 0, 0, 36, '');

-- Dalaran
DELETE FROM `creature` WHERE `guid`=108974;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(108974, 36506, 571, 1, 128, 0, 0, 5729.43, 750.457, 641.751, 4.4155, 300, 0, 0, 2745, 7520, 0, 0);
DELETE FROM `creature` WHERE `guid`=83380;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(83380, 15351, 571, 1, 128, 0, 0, 5647.9, 804.782, 653.697, 5.57789, 300, 0, 0, 126000, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` IN (200379,200378,200380);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(200379, 29254, 571, 1, 128, 0, 0, 5651.59, 778.426, 653.695, 0.9032, 300, 0, 0, 10080, 8814, 0, 0),
(200378, 29254, 571, 1, 128, 0, 0, 5686.9, 801.074, 653.697, 4.0715, 300, 0, 0, 10080, 8814, 0, 0),
(200380, 29254, 571, 1, 128, 0, 0, 5754.51, 752.899, 654.031, 3.11331, 300, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`=108934;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(108934, 31580, 571, 1, 65535, 27556, 0, 5762.57, 744.94, 653.665, 4.11155, 360, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`= 112209 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(112209, 31579, 571, 1, 65535, 27559, 0, 5764.51, 743.873, 653.665, 4.14455, 360, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`= 131375 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(131375, 35494, 571, 1, 65535, 0, 0, 5766.55, 737.976, 653.665, 3.27433, 300, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`= 94660 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(94660, 33964, 571, 1, 65535, 0, 0, 5762.1, 732.003, 653.665, 2.0224, 120, 0, 0, 10080, 8814, 0, 0);
DELETE FROM `creature` WHERE `guid`= 95154 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x` ,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(95154, 28686, 571, 1, 65535, 0, 0, 5673.035, 724.6457, 653.42, 2.379755, 1200, 0, 0, 8508, 7981, 0, 0);

-- Nagrand
DELETE FROM `creature_addon` WHERE `guid`= 74332;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (74332, 0, 0, 3, 4097, 0, '25148 0');
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 19027 ;
DELETE FROM `creature` WHERE `guid` IN (74334,174334) ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(74334, 19030, 530, 1, 1, 0, 0, -2702.99, 7207.62, 23.7721, 1.55334, 540, 0, 0, 3357, 0, 0, 0),
(174334, 19030, 530, 1, 1, 0, 0, -2699.34, 7208.42, 23.693459, 1.742422, 540, 0, 0, 3357, 0, 0, 0);
DELETE FROM `creature_addon` WHERE `guid` IN (74334,174334) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (174334, 0, 0, 3, 4097, 0, '25148 0');
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES (74334, 0, 0, 3, 4097, 0, '25148 0');
DELETE FROM `creature` WHERE `guid`=54436;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(54436, 24866, 530, 1, 1, 0, 0, -2673.22, 7203.96, 25.7458, 1.154158, 600, 0, 0, 4050, 0, 0, 0);
UPDATE `creature_template` SET `flags_extra` = 2, `unit_flags` = 515, `InhabitType`= 3 WHERE `entry` = 19152 ;
DELETE FROM `creature` WHERE `guid` = 75951 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(75951, 19152, 530, 1, 1, 0, 0, -2687.29, 7177.94, 27.120043, 1.193048, 600, 0, 0, 4050, 0, 0, 0);
UPDATE `creature_template` SET `unit_flags` = 32770, `flags_extra` = 2, `speed` = 1 WHERE `entry` = 19151 ;
DELETE FROM `creature` WHERE `guid` = 74324 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(74324, 19151, 530, 1, 1, 0, 0, -2685.41, 7183, 26.1, 4.345236, 4242, 0, 0, 30797, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` IN (69181,69183,174336,174337) ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(174336, 18488, 530, 1, 1, 0, 0, -2686.11, 7184.9, 26.1, 4.227426, 4242, 0, 0, 30797, 0, 0, 0);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(174337, 18488, 530, 1, 1, 0, 0, -2683.54, 7184, 26.1, 4.230567, 4242, 0, 0, 30797, 0, 0, 0);
UPDATE `creature_template` SET `flags_extra` = 2, `speed` = 1 WHERE `entry` = 18488 ;
UPDATE `creature_template` SET `unit_flags` = 32768 WHERE `entry` = 23268 ;
DELETE FROM `creature` WHERE `guid` = 84741 ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(84741, 23268, 530, 1, 1, 0, 0, -2487.80, 7234.18, 16.237913, 5.592055, 4242, 0, 0, 30797, 0, 0, 0);
UPDATE `creature_template` SET `speed` = 1 WHERE `entry` = 19071 ;
UPDATE `creature_template` SET `speed` = 1 WHERE `entry` = 19149 ;

-- Quel'danas
DELETE FROM `creature` WHERE `guid` IN (174338,174339) ;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(174338, 25115, 530, 1, 1, 0, 0, 12798.76, -6976.45, 18.697109, 2.265272, 5, 0, 0, 10479, 0, 0, 0),
(174339, 25115, 530, 1, 1, 0, 0, 12791.50, -6983.03, 18.697109, 2.315537, 5, 0, 0, 10479, 0, 0, 0);
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 31054 ;
DELETE FROM `creature_addon` WHERE `guid` = 31054 ;
INSERT INTO `creature_addon`(guid, path_id) VALUES (31054, 1366371);
DELETE FROM `waypoint_data` WHERE `id` = 1366371 ;
INSERT INTO `waypoint_data`(id, POINT, position_x, position_y, position_z, delay) VALUES
(1366371, 1, 12744.44, -6906.247, 12.245442, 0),
(1366371, 2, 12751.99, -6912.52, 12.237050, 0),
(1366371, 3, 12750.46, -6923.125, 12.237200, 0),
(1366371, 4, 12739.07, -6926.315, 12.246215, 0),
(1366371, 5, 12731.40, -6920.85, 12.238003, 0),
(1366371, 6, 12732.05, -6910.31, 12.236571, 0);
DELETE FROM `creature` WHERE `guid` IN (200368,200369,200371,200372) ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(200368, 24994, 530, 1, 1, 0, 0, 12838, -7014.58, 71.526, 3.16536, 300, 0, 0, 69860, 0, 0, 0),
(200369, 24994, 530, 1, 1, 0, 0, 12814, -7013.35, 71.5393, 6.20799, 300, 0, 0, 69860, 0, 0, 0),
(200371, 24994, 530, 1, 1, 0, 0, 12812.5, -6985.2, 18.6404, 2.83864, 300, 0, 0, 69860, 0, 0, 0),
(200372, 24994, 530, 1, 1, 0, 0, 12798.1, -6997.48, 18.64, 2.05245, 300, 0, 0, 69860, 0, 0, 0);
DELETE FROM `creature` WHERE `guid` = 52375 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES 
(52375, 25163, 530, 1, 1, 0, 0, 12833.71, -7004.597, 71.528, 3.599686, 600, 0, 0, 5589, 3155, 0, 0);
DELETE FROM `creature_equip_template` WHERE `entry`= 335 ;
INSERT INTO `creature_equip_template` (`entry`, `equipentry1`, `equipentry2`, `equipentry3`) VALUES (335, 34326, '0', 28488);
DELETE FROM `creature_addon` WHERE `guid` IN (100263,100262,100261,100260,100264,100265,100266,100267,100268,100269,100270,100271,100251,100258,100259,100255,100254,100256,100257,100277,100276,100275,100274,100273,100278,100279,100280,100281,100282,100283,100272,100284,100285,100286,100253) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(100263, 0, 0, 0, 0, 48, ''),
(100262, 0, 0, 0, 0, 48, ''),
(100261, 0, 0, 0, 0, 48, ''),
(100260, 0, 0, 0, 0, 48, ''),
(100264, 0, 0, 0, 0, 48, ''),
(100265, 0, 0, 0, 0, 48, ''),
(100266, 0, 0, 0, 0, 48, ''),
(100267, 0, 0, 0, 0, 48, ''),
(100268, 0, 0, 0, 0, 48, ''),
(100269, 0, 0, 0, 0, 48, ''),
(100270, 0, 0, 0, 0, 48, ''),
(100271, 0, 0, 0, 0, 48, ''),
(100251, 0, 0, 0, 0, 48, ''),
(100258, 0, 0, 0, 0, 48, ''),
(100259, 0, 0, 0, 0, 48, ''),
(100255, 0, 0, 0, 0, 48, ''),
(100254, 0, 0, 0, 0, 48, ''),
(100256, 0, 0, 0, 0, 48, ''),
(100257, 0, 0, 0, 0, 48, ''),
(100277, 0, 0, 0, 0, 48, ''),
(100276, 0, 0, 0, 0, 48, ''),
(100275, 0, 0, 0, 0, 48, ''),
(100274, 0, 0, 0, 0, 48, ''),
(100273, 0, 0, 0, 0, 48, ''),
(100278, 0, 0, 0, 0, 48, ''),
(100279, 0, 0, 0, 0, 48, ''),
(100280, 0, 0, 0, 0, 48, ''),
(100281, 0, 0, 0, 0, 48, ''),
(100282, 0, 0, 0, 0, 48, ''),
(100283, 0, 0, 0, 0, 48, ''),
(100272, 0, 0, 0, 0, 48, ''),
(100284, 0, 0, 0, 0, 48, ''),
(100285, 0, 0, 0, 0, 48, ''),
(100286, 0, 0, 0, 0, 48, ''),
(100253, 0, 0, 0, 0, 48, '');
DELETE FROM `creature_addon` WHERE `guid` IN (100483,100484,100480,100481,100479,100478) ;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(100483, 0, 0, 0, 0, 36, ''),
(100484, 0, 0, 0, 0, 36, ''),
(100480, 0, 0, 0, 0, 36, ''),
(100481, 0, 0, 0, 0, 36, ''),
(100479, 0, 0, 0, 0, 36, ''),
(100478, 0, 0, 0, 0, 36, '');

-- Acherus
UPDATE `gameobject_template` SET `flags` = 6553636 WHERE `entry` = 191364 ;
-- / Eragon