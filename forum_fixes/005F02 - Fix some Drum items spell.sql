-- Fix some Drum items spell
-- By zm1277
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (69378,69381,69377);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(69378,72586,1,'Drums of forgotten kings'),
(69381,48469,1,'Drums of the Wild'),
(69377,48161,1,'Runescroll of Fortitude'); 