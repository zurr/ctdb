-- Fix doors and aggro mobs in Violet Hold
UPDATE `creature_template` SET `unit_flags`= `unit_flags` + 256 WHERE `entry` IN (29313,29314,29266,29312,29316,29315);
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` IN (191723,191556,191566,191722,191565,191564,191563,191562,191606);
UPDATE `creature_template` SET `unit_flags`= `unit_flags` + 256 WHERE `entry` IN (31511,31509,31508,31512,31510,31507); 