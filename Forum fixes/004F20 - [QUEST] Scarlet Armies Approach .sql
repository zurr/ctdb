-- http://www.wowhead.com/?quest=12757
-- This quest is open a portal: Gameobject 191158 but got a big dealy like one minute and if you use it you  Dont got teleporter that solve it

UPDATE `gameobject` SET `phaseMask`='64' WHERE `guid`='29739' AND `id`='191158' ; 