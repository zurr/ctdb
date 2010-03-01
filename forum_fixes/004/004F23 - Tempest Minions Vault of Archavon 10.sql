-- Fix hp for Tempest Minion in Vault of Archavon 10-Men
UPDATE `creature_template` SET `health_mod`=10.5 WHERE `entry`=33998 ;
UPDATE `creature_template` SET `health_mod` = 30 WHERE `entry` = 32353 ;