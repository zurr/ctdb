-- Fix for damage for some creatures in Violet Hold
-- By monty
-- Portal Guardian (30660 normal, 31501 heroic)
-- Portal Keeper (30695 normal, 31503 heroic)
-- Azure Captain (30666 normal, 31486 heroic)
-- Azure Sorceror (30667 normal, 31493 heroic)
-- Azure Raider (30668 normal, 31490 heroic)
-- Azure Stalker (32191 normal, 32192 heroic)
-- BOSS (29315,29313,29312,31134,29316,29266,29314 normal 31507,31508,31509,31506,31510,31511,31512 heroic)
update `creature_template` set `dmg_multiplier`=1 where `entry` in (30660,30666,30667,30668,30695,32191); -- Updating Violet Hold Creatures To Right Damage (Normal VH)
update `creature_template` set `dmg_multiplier`=1 where `entry` in (31501,31490,31503,31493,31486,32192); -- Updating Violet Hold Creatures To Right Damage (Heroic VH)
update `creature_template` set `dmg_multiplier`=7.5 where `entry` in (29315,29313,29312,31134,29316,29266,29314); -- Updating Violet Hold Creatures To Right Damage (Normal VH)
update `creature_template` set `dmg_multiplier`=13 where `entry` in (31507,31508,31509,31506,31510,31511,31512);  -- Updating Violet Hold Creatures To Right Damage (Heroic VH)