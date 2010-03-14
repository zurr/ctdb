-- Violet Hold Not start Automat Event
-- Teleportation Portal (Intro)
-- http://www.wowhead.com/?npc=31011
-- should not be spawn    is automatically spawn by event
DELETE FROM `creature` where `id` in (31011); 