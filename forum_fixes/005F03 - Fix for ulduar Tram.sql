-- Fix for ulduar Tram 
-- By pratchet
UPDATE `gameobject_template` SET `data0` = 0, `data3` = 0, `data4` = 0 WHERE `entry` = 194675;