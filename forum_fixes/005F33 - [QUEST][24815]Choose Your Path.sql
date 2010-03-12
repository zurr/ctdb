-- This is the initial quest offered by Ormus the Penitent upon reaching friendly station with The Ashen Verdict
-- By pratchet
UPDATE `quest_template` SET `RequiredMinRepFaction` = 1156 WHERE `entry` = 24815;
insert into `creature_questrelation` (`id`, `quest`) values(38316,24815);
insert into `creature_involvedrelation` (`id`, `quest`) values(38316,24815);