-- http://www.wowhead.com/?quest=12698
-- That solve than you cant not kill the miners
DELETE FROM `spell_script_target` WHERE `entry`='52479' AND `targetEntry` IN ('28819','28822');
insert into `spell_script_target` (`entry`, `type`, `targetEntry`) values
('52479','1','28819'),
('52479','1','28822'); 