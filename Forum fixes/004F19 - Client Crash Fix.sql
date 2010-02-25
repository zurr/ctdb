-- FIX:the client crash when Stonespine Gargoyle attack
UPDATE `creature_template` SET `InhabitType` = 3, `mechanic_immune_mask` = 0 WHERE `entry` IN (36896,12412);