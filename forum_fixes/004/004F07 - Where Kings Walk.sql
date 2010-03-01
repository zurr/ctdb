-- Where Kings Walk (http://www.wowhead.com/?quest=13188)
-- Are giving 600.000 rep points when only need to give 6.000
UPDATE quest_template SET RewRepValue1=6000 WHERE `entry`=13188; 