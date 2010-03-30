-- Description:
-- Culling of Stratholme Gameobject loot for last boss.
-- Dark Runed Chest http://www.wowhead.com/?object=190663
-- Core tc rev.7730
-- By Burnham
-- Normal loot
-- Boss (Mal`Ganis)
-- Delete Previous Loot Template
DELETE FROM `gameobject_loot_template` WHERE `entry`=190663;

-- Data: WoW Armory, WoWHeaD & CTDB_0.0.5
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(190663,37108,0,1,2,1,1,0,0,0), -- Dreadlord`s Blade
(190663,37112,0,1,1,1,1,0,0,0), -- Beguiling Scepter
(190663,37107,0,1,1,1,1,0,0,0), -- Leeka`s Shield
(190663,37111,0,1,2,1,1,0,0,0), -- Soul Preserver
(190663,37113,0,1,2,1,1,0,0,0), -- Demonic Fabric Bands
(190663,37110,0,1,1,1,1,0,0,0), -- Gauntlets of Dark Conversion
(190663,37114,0,1,1,1,1,0,0,0), -- Gloves of Northern Lordaeron
(190663,37109,0,1,2,1,1,0,0,0), -- Discarded Silver Hand Spaulders
(190663,43228,100,1,0,3,4,1,57940,0), -- Stone Keeper`s Shard
(190663,43852,2.2235,1,0,1,1,0,0,0), -- Thick Fur Clothing Scraps
(190663,33470,4.4344,1,0,1,1,0,0,0), -- Frostweave Cloth
(190663,33445,0.4716,1,0,1,1,0,0,0), -- Honeymint Tea
(190663,33447,0.2992,1,0,1,1,0,0,0), -- Runic Healing Potion
(190663,35947,0.9964,1,0,1,1,0,0,0), -- Sparkling Frostcap
(190663,36011,0.12,1,0,-36011,1,0,0,0), -- Tethys Sash
(190663,36043,0.12,1,0,-36043,1,0,0,0); -- Crystalsong Sash



-- Heroic loot
-- Boss (Mal`Ganis)
-- Delete Previous Loot Template
DELETE FROM `gameobject_loot_template` WHERE `entry`=193597;

-- Data: WoW Armory, WoWHeaD & CTDB_0.0.5
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`,`lootcondition`,`condition_value1`,`condition_value2`) VALUES
(193597,37696,0,1,2,1,1,0,0,0), -- Plague-Infected Bracers
(193597,37693,0,1,2,1,1,0,0,0), -- Greed
(193597,37694,0,1,2,1,1,0,0,0), -- Band of Guile
(193597,43085,0,1,2,1,1,0,0,0), -- Royal Crest of Lordaeron
(193597,37695,0,1,2,1,1,0,0,0), -- Legguards of Nature`s Power
(193597,37692,0,1,1,1,1,0,0,0), -- Pierce`s Pistol
(193597,37689,0,1,1,1,1,0,0,0), -- Pendant of the Nathrezim
(193597,37690,0,1,1,1,1,0,0,0), -- Pauldrons of Destiny
(193597,37691,0,1,1,1,1,0,0,0), -- Mantle of Deceit
(193597,43697,100,1,0,1,1,9,13251,0), -- Artifact from the Nathrezim Homeworld for Quest 13251 (never in CTDB)
(193597,43102,100,1,0,1,1,0,0,0), -- Frozen Orb
(193597,43876,8.5,1,0,1,1,0,0,0), -- A Guide to Northern Cloth Scavenging
(193597,39152,25,1,0,1,1,0,0,0), -- Manual: Heavy Frostweave Bandage
(193597,47241,100,1,0,1,1,0,0,0), -- Emblem of Triumph
(193597,43228,100,1,0,3,4,1,57940,0), -- Stone Keeper`s Shard
(193597,43852,8.5,1,0,1,1,0,0,0), -- Thick Fur Clothing Scraps
(193597,33470,100,1,0,1,7,0,0,0); -- Frostweave Cloth 