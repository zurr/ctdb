-- creature must have unit_flags=256 or script don't work
-- By pratchet
UPDATE `creature_template` SET `unit_flags` = 256 WHERE `entry` = 25478;