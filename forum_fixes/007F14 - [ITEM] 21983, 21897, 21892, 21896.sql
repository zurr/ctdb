-- [ITEM] 21983, 21897, 21892, 21896  
-- Estos items dentro de la BD piden reputación y realmente no tendría que ser.
-- By Angelows

UPDATE item_template SET requiredreputationrank=0 WHERE entry=21892;
UPDATE item_template SET requiredreputationrank=0 WHERE entry=21893;
UPDATE item_template SET requiredreputationrank=0 WHERE entry=21896;
UPDATE item_template SET requiredreputationrank=0 WHERE entry=21897;