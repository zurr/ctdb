-- Changing Kel'Thuzad can be attacked in phase 2
UPDATE `creature_template` set `unit_flags` = 0 where `entry` in (15990, 30061);