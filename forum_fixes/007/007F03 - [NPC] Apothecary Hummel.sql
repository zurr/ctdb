-- Apothecary Frye, Apothecary Hummel, Apothecary Baxter bosses health is too high
-- By Voltio
UPDATE `creature_template` SET `Health_mod`=20 WHERE `entry` IN (36272,36296,36565); 