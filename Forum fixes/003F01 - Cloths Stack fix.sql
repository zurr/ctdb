-- Fix: Linen Cloth, Wool Cloth, Silck Cloth, Mageweave Cloth, Netherweave Cloth, Frostweave Cloth
-- To stack to 20
UPDATE  `item_template` SET `stackable` = 20 WHERE `entry` = 2589; -- Linen Cloth
UPDATE  `item_template` SET `stackable` = 20 WHERE `entry` = 2592; -- Wool Cloth
UPDATE  `item_template` SET `stackable` = 20 WHERE `entry` = 4338; -- Mageweave Cloth
UPDATE  `item_template` SET `stackable` = 20 WHERE `entry` = 4306; -- Silk Cloth
UPDATE  `item_template` SET `stackable` = 20 WHERE `entry` = 21877; -- Netherweave Cloth
UPDATE  `item_template` SET `stackable` = 20 WHERE `entry` = 33470; -- Frostweave Cloth 