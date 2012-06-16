DROP TABLE IF EXISTS ip2nation;

CREATE TABLE ip2nation (
  ip int(11) unsigned NOT NULL default '0',
  country char(2) NOT NULL default '',
  KEY ip (ip)
);

DROP TABLE IF EXISTS ip2nationCountries;

CREATE TABLE ip2nationCountries (
  code varchar(4) NOT NULL default '',
  iso_code_2 varchar(2) NOT NULL default '',
  iso_code_3 varchar(3) default '',
  iso_country varchar(255) NOT NULL default '',
  country varchar(255) NOT NULL default '',
  lat float NOT NULL default '0',
  lon float NOT NULL default '0',
  PRIMARY KEY  (code),
  KEY code (code)
);
-- Grand Anchorite Almonen SAI
SET @ENTRY  := 19216;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,10000,10000,300000,300000,80,@ENTRY*100  ,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sky-Captain Cloudkicker - OOC - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.654867,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,1,0,0,0,100,0,9000,9000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - emote'),
(@ENTRY*100,9,2,0,0,0,100,0,23000,23000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.72,5423.082,-10.45947,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,3,0,0,0,100,0,800,800,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.598,5411.999,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,4,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.183628,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,5,0,0,0,100,0,100,100,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 0'),
(@ENTRY*100,9,6,0,0,0,100,0,9000,9000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 1'),
(@ENTRY*100,9,7,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 2'),
(@ENTRY*100,9,8,0,0,0,100,0,25000,25000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 3'),
(@ENTRY*100,9,9,0,0,0,100,0,10000,10000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.699,5413.06,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,10,0,0,0,100,0,100,100,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 4'),
(@ENTRY*100,9,11,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1848.775,5412.81,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,12,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.276057,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,13,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 5'),
(@ENTRY*100,9,14,0,0,0,100,0,7000,7000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.574,5412.084,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,15,0,0,0,100,0,1900,1900,0,0,69,0,0,0,0,0,0,8,0,0,0,-1856.307,5410.266,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,1900,1900,0,0,69,0,0,0,0,0,0,8,0,0,0,-1859.002,5406.959,-12.42814,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,17,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.707227,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,18,0,0,0,100,0,100,100,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 6'),
(@ENTRY*100,9,19,0,0,0,100,0,10000,10000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 7'),
(@ENTRY*100,9,20,0,0,0,100,0,9000,9000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 8'),
(@ENTRY*100,9,21,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1855.089,5410.676,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,22,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1853.62,5409.833,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,23,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 9'),
(@ENTRY*100,9,24,0,0,0,100,0,11000,11000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 10'),
(@ENTRY*100,9,25,0,0,0,100,0,9000,9000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 11'),
(@ENTRY*100,9,26,0,0,0,100,0,100,100,0,0,69,0,0,0,0,0,0,8,0,0,0,-1852.503,5412.286,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,27,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1849.053,5415.075,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,28,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.340707,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,29,0,0,0,100,0,5000,5000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 12'),
(@ENTRY*100,9,30,0,0,0,100,0,11000,11000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 13'),
(@ENTRY*100,9,31,0,0,0,100,0,4000,4000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.643,5414.012,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,32,0,0,0,100,0,1200,1200,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.913,5412.682,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,33,0,0,0,100,0,800,800,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.408,5411.227,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,34,0,0,0,100,0,1000,1000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 14'),
(@ENTRY*100,9,35,0,0,0,100,0,10000,10000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 15'),
(@ENTRY*100,9,36,0,0,0,100,0,7000,7000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 16'),
(@ENTRY*100,9,37,0,0,0,100,0,10000,10000,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 17'),
(@ENTRY*100,9,38,0,0,0,100,0,11000,11000,0,0,1,18,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 18'),
(@ENTRY*100,9,39,0,0,0,100,0,10000,10000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1853.137,5424.863,-10.47787,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,40,0,0,0,100,0,6500,6500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.6529,'Grand Anchorite Almonen - Script - Turn to');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=19216;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(19216,0,0, 'Friends, it is my great pleasure to welcome you to the temple today.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,1,0, 'A''dal has been most generous in his revelations to me, a humble servant of the Light.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,2,0, 'In accordance with my divine calling, I must share these revealed truths to all who would hear.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,3,0, 'It has been made known to me that inside each of us, the Light resides...',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,4,0, '...that it is a gift, given freely to all naturally born beings.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,5,0, 'It manifests itself as a feeling, small at first and easily ignored, that confirms truths and subtly prods one to do good.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,6,0, 'Simple kindnesses, charitable deeds, service to those in need. These are all fruits of the Light.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,7,0, 'It rewards those who heed its promptings with blessings, both seen and unseen.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,8,0, 'Personal reservoirs of hope and faith are strengthened, and one''s capacity for greater light increases.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,9,0, 'Over the course of time, through obedience to the Light''s guidance, one becomes more sensitive to its voice, and its power.',12,0,100,273,0,0, 'Grand Anchorite Almonen'),
(19216,10,0, 'Great is the healing and blessing power of the Light''s most diligent followers.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,11,0, 'Sadly, there are those who wander through mortality in defiance of the Light.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,12,0, 'From these the Light withdraws, until only darkness remains.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,13,0, 'Where there is no light, despair, loathing and rage thrive.',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,14,0, 'We are born into a perilous age, where the forces of darkness are determined to bring about our destruction.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,15,0, 'These are the times to find yourselves in unison with the Light.',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,16,0, 'Hear my words, and let the Light inside of you confirm the truth of them.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,17,0, 'Embrace the light that is in you, my friends! Deny yourself all darkness...',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,18,0, 'We must endure these trying times faithfully, and one day we will find ourselves victorious.',12,0,100,5,0,0, 'Grand Anchorite Almonen');
-- Fix Surge of Adrenaline
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=68667;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-66683,68667,0, 'Icehowl - Surge of Adrenaline'),
(-67660,68667,0, 'Icehowl - Surge of Adrenaline');
-- delete 'Mangle - Remover'
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-33878 AND `type`=1;
-- Death Knight
DELETE FROM `spell_bonus_data` WHERE `entry` IN(58621, 47632, 47633, 50444, 70890, 50526, 48982, 59754, 49184);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(58621, 0, -1,  0.08,  -1, 'Death Knight - Glyph of Chains of Ice'),        -- Shouldn't scale with SP.
(47632, 0, -1,  0.15,  -1, 'Death Knight - Death Coil'),                    -- Shouldn't scale with SP.
(47633, 0, -1,  0.15,  -1, 'Death Knight - Death Coil (Heal)'),             -- Shouldn't scale with SP.
(50444, 0, -1,  0.105, -1, 'Death Knight - Corpse Explosion (Triggered)'),  -- Shouldn't scale with SP.
(70890, 0, -1, -1,     -1, 'Death Knight - Scourge Strike (Shadow)'),       -- Shouldn't scale with SP.
(50526, 0, -1, -1,     -1, 'Death Knight - Wandering Plague (Triggered)'),  -- Shouldn't scale with SP.
(48982, 0, -1, -1,     -1, 'Death Knight - Rune Tap'),                      -- Shouldn't scale with SP.
(59754, 0, -1, -1,     -1, 'Death Knight - Glyph of Rune Tap (Triggered)'), -- Shouldn't scale with SP.
(49184, 0, -1,  0.2,   -1, 'Death Knight - Howling Blast');                 -- Shouldn't scale with SP.

-- Druid
DELETE FROM `spell_bonus_data` WHERE `entry` IN(48450, 48451); -- Lifebloom Rank 2, Rank 3
DELETE FROM `spell_bonus_data` WHERE `entry` IN(48567, 48568); -- Lacerate Rank 2, Rank 3
DELETE FROM `spell_bonus_data` WHERE `entry` IN(33745, 9007);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(33745, 0,  0,  0.01,   0.01, 'Druid - Lacerate ($AP*0.05/number of ticks)'), -- Direct damage should scale with AP, based on DrDamage addon(3.3.5a).
(9007, -1,  0, -1,      0.03, 'Druid - Pounce Bleed (Triggered)');            -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.

-- Hunter
DELETE FROM `spell_bonus_data` WHERE `entry` IN(56641, 42243, 3674, 19306, 1495, 63468, 136);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(56641,  0, -1,  0.1,  -1,     'Hunter - Steady Shot'),                              -- Shouldn't scale with SP.
(42243,  0, -1,  0.0837, -1,   'Hunter - Volley (Triggered)'),                       -- Shouldn't scale with SP.
(3674,  -1,  0, -1,     0.023, 'Hunter - Black Arrow ($RAP*0.1 / number of ticks)'), -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a).
(19306,  0, -1,  0.2,  -1,     'Hunter - Counterattack'),                            -- Shouldn't scale with SP.
(1495,   0, -1,  0.2,  -1,     'Hunter - Mongoose Bite'),                            -- Shouldn't scale with SP.
(63468, -1,  0, -1,    -1,     'Hunter - Piercing Shots'),                           -- Shouldn't scale with SP.
(136,   -1,  0, -1,    -1,     'Hunter - Mend Pet');                                 -- Shouldn't scale with SP.

-- Mage
DELETE FROM `spell_bonus_data` WHERE `entry`=7269; -- Arcane Missiles Triggered Spell Rank 2
DELETE FROM `spell_bonus_data` WHERE `entry` IN(133, 44614, 44457, 44461);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(133,    1,       0,   -1, -1, 'Mage - Fireball'),                                -- DoT componenet shouldn't scale.
(44614,  0.8571,  0,   -1, -1, 'Mage - Frostfire Bolt'),                          -- DoT componenet shouldn't scale.
(44457, -1,       0.2, -1, -1, 'Mage - Living Bomb ($SP*0.8 / number of ticks)'), -- Direct damage bonus correction.
(44461,  0.4286, -1,   -1, -1, 'Mage - Living Bomb (Triggered)');                 -- Direct damage bonus correction.

-- Paladin
DELETE FROM `spell_bonus_data` WHERE `entry` IN(633, 54158, 20467, 20187, 31803, 53742, 31804, 53733);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(633,    0,     -1,      -1,     -1,      'Paladin - Lay on Hands'),               -- Shouldn't scale with SP.
(54158,  0.27,  -1,       0.175, -1,      'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'), -- Increase coefficient, based on Wowwiki.com.
(20467,  0.14,  -1,       0.115, -1,      'Paladin - Judgement of Command'),       -- Decrease coefficient, based on Wowwiki.com.
(20187,  0.355, -1,       0.225, -1,      'Paladin - Judgement of Righteousness'), -- Increase coefficient, based on Wowwiki.com.
(31803, -1,      0.0132, -1,      0.0252, 'Paladin - Holy Vengeance'),             -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(53742, -1,      0.0132, -1,      0.0252, 'Paladin - Blood Corruption'),           -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(31804,  0.24,  -1,       0.15,  -1,      'Paladin - Judgement of Vengeance'),     -- Increase coefficient, based on Wowwiki.com.
(53733,  0.24,  -1,       0.15,  -1,      'Paladin - Judgement of Corruption');    -- Increase coefficient, based on Wowwiki.com.

-- Priest
DELETE FROM `spell_bonus_data` WHERE `entry` IN(52983, 52954, 58985); -- Penance Heal Rank 2, Rank 3, Rank 4
DELETE FROM `spell_bonus_data` WHERE `entry` IN(52998, 52999, 53000); -- Penance Hurt Rank 2, Rank 3, Rank 4
DELETE FROM `spell_bonus_data` WHERE `entry` IN(7001);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(7001, -1, 0.626, -1, -1, 'Priest - Lightwell Renew ($SP*1.878 / number of ticks)'); -- Increase coefficient, based on DrDamage addon(3.3.5a).

-- Rogue
DELETE FROM `spell_bonus_data` WHERE `entry` IN(819, 11353, 11354, 25349, 26968, 27187, 57969, 57970); -- Deadly Poison Rank 2, Rank 3, etc.
DELETE FROM `spell_bonus_data` WHERE `entry` IN(8685, 8689, 11335, 11336, 11337, 26890, 57964, 57965); -- Instant Poison Rank 2, Rank 3, etc.
DELETE FROM `spell_bonus_data` WHERE `entry` IN(13222, 13223, 13224, 27189, 57974, 57975); -- Wound Poison Rank 2, Rank 3, etc.
DELETE FROM `spell_bonus_data` WHERE `entry` IN(32645, 2098, 703, 1776, 1943, 8680, 26688, 13218);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(32645, 0, -1, -1,    -1,    'Rogue - Envenom'),           -- Shouldn't scale with SP.
(2098,  0, -1, -1,    -1,    'Rogue - Eviscerate'),        -- Shouldn't scale with SP.
(703,  -1,  0, -1,     0.07, 'Rogue - Garrote'),           -- Shouldn't scale with SP.
(1776,  0, -1,  0.21, -1,    'Rogue - Gouge'),             -- Shouldn't scale with SP.
(1943, -1,  0, -1,    -1,    'Rogue - Rupture'),           -- Shouldn't scale with SP.
(8680,  0, -1,  0.1,  -1,    'Rogue - Instant Poison'),    -- Shouldn't scale with SP.
(26688, 0, -1,  0,    -1,    'Rogue - Anesthetic Poison'), -- Shouldn't scale with SP nor AP.
(13218, 0, -1,  0.04, -1,    'Rogue - Wound Poison');      -- Shouldn't scale with SP.

 -- Warlock Healthstones Shouldn't scale with SP.
DELETE FROM `spell_bonus_data` WHERE `entry` IN (6262, 23468, 23469, 6263, 23470, 23471, 5720, 23472, 23473, 5723, 23474, 23475, 11732, 23476, 23477, 27235, 27236, 27237, 47874, 47873, 47872, 47875, 47876, 47877);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(6262,  0, -1, 0, -1, 'Warlock - HS - Minor Healthstone (with 0/2 Improved Healthstone)'),
(23468, 0, -1, 0, -1, 'Warlock - HS - Minor Healthstone (with 1/2 Improved Healthstone)'),
(23469, 0, -1, 0, -1, 'Warlock - HS - Minor Healthstone (with 2/2 Improved Healthstone)'),
(6263,  0, -1, 0, -1, 'Warlock - HS - Lesser Healthstone (with 0/2 Improved Healthstone)'),
(23470, 0, -1, 0, -1, 'Warlock - HS - Lesser Healthstone (with 1/2 Improved Healthstone)'),
(23471, 0, -1, 0, -1, 'Warlock - HS - Lesser Healthstone (with 2/2 Improved Healthstone)'),
(5720,  0, -1, 0, -1, 'Warlock - HS - Healthstone (with 0/2 Improved Healthstone)'),
(23472, 0, -1, 0, -1, 'Warlock - HS - Healthstone (with 1/2 Improved Healthstone)'),
(23473, 0, -1, 0, -1, 'Warlock - HS - Healthstone (with 2/2 Improved Healthstone)'),
(5723,  0, -1, 0, -1, 'Warlock - HS - Greater Healthstone (with 0/2 Improved Healthstone)'),
(23474, 0, -1, 0, -1, 'Warlock - HS - Greater Healthstone (with 1/2 Improved Healthstone)'),
(23475, 0, -1, 0, -1, 'Warlock - HS - Greater Healthstone (with 2/2 Improved Healthstone)'),
(11732, 0, -1, 0, -1, 'Warlock - HS - Major Healthstone (with 0/2 Improved Healthstone)'),
(23476, 0, -1, 0, -1, 'Warlock - HS - Major Healthstone (with 1/2 Improved Healthstone)'),
(23477, 0, -1, 0, -1, 'Warlock - HS - Major Healthstone (with 2/2 Improved Healthstone)'),
(27235, 0, -1, 0, -1, 'Warlock - HS - Master Healthstone (with 0/2 Improved Healthstone)'),
(27236, 0, -1, 0, -1, 'Warlock - HS - Master Healthstone (with 1/2 Improved Healthstone)'),
(27237, 0, -1, 0, -1, 'Warlock - HS - Master Healthstone (with 2/2 Improved Healthstone)'),
(47874, 0, -1, 0, -1, 'Warlock - HS - Demonic Healthstone (with 0/2 Improved Healthstone)'),
(47873, 0, -1, 0, -1, 'Warlock - HS - Demonic Healthstone (with 1/2 Improved Healthstone)'),
(47872, 0, -1, 0, -1, 'Warlock - HS - Demonic Healthstone (with 2/2 Improved Healthstone)'),
(47875, 0, -1, 0, -1, 'Warlock - HS - Fel Healthstone (with 0/2 Improved Healthstone)'),
(47876, 0, -1, 0, -1, 'Warlock - HS - Fel Healthstone (with 1/2 Improved Healthstone)'),
(47877, 0, -1, 0, -1, 'Warlock - HS - Fel Healthstone (with 2/2 Improved Healthstone)');
-- Death Knight
DELETE FROM `spell_bonus_data` WHERE `entry` IN (58621, 47632, 47633, 50444, 70890, 50526, 48982, 59754, 49184);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(58621, 0, 0, 0.08, 0, 'Death Knight - Glyph of Chains of Ice'),        -- Shouldn't scale with SP.
(47632, 0, 0, 0.15, 0, 'Death Knight - Death Coil'),                    -- Shouldn't scale with SP.
(47633, 0, 0, 0.15, 0, 'Death Knight - Death Coil (Heal)'),             -- Shouldn't scale with SP.
(50444, 0, 0, 0.105, 0, 'Death Knight - Corpse Explosion (Triggered)'),  -- Shouldn't scale with SP.
(70890, 0, 0, 0, 0, 'Death Knight - Scourge Strike (Shadow)'),       -- Shouldn't scale with SP.
(50526, 0, 0, 0, 0, 'Death Knight - Wandering Plague (Triggered)'),  -- Shouldn't scale with SP.
(48982, 0, 0, 0, 0, 'Death Knight - Rune Tap'),                      -- Shouldn't scale with SP.
(59754, 0, 0, 0, 0, 'Death Knight - Glyph of Rune Tap (Triggered)'), -- Shouldn't scale with SP.
(49184, 0, 0, 0.2, 0, 'Death Knight - Howling Blast');                 -- Shouldn't scale with SP.

-- Druid
DELETE FROM `spell_bonus_data` WHERE `entry` IN (33745, 9007);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(33745, 0,  0,  0.01,   0.01, 'Druid - Lacerate ($AP*0.05/number of ticks)'), -- Direct damage should scale with AP, based on DrDamage addon(3.3.5a).
(9007, 0,  0, 0,      0.03, 'Druid - Pounce Bleed (Triggered)');            -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.

-- Hunter
DELETE FROM `spell_bonus_data` WHERE `entry` IN (56641, 42243, 3674, 19306, 1495, 63468, 136);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(56641,  0, 0,  0.1,  0,     'Hunter - Steady Shot'),                              -- Shouldn't scale with SP.
(42243,  0, 0,  0.0837, 0,   'Hunter - Volley (Triggered)'),                       -- Shouldn't scale with SP.
(3674,  0,  0, 0,     0.023, 'Hunter - Black Arrow ($RAP*0.1 / number of ticks)'), -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a).
(19306,  0, 0,  0.2,  0,     'Hunter - Counterattack'),                            -- Shouldn't scale with SP.
(1495,   0, 0,  0.2,  0,     'Hunter - Mongoose Bite'),                            -- Shouldn't scale with SP.
(63468, 0,  0, 0,    0,     'Hunter - Piercing Shots'),                           -- Shouldn't scale with SP.
(136,   0,  0, 0,    0,     'Hunter - Mend Pet');                                 -- Shouldn't scale with SP.

-- Mage
DELETE FROM `spell_bonus_data` WHERE `entry` IN (133, 44614, 44457, 44461);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(133,    1,       0,   0, 0, 'Mage - Fireball'),                                -- DoT componenet shouldn't scale.
(44614,  0.8571,  0,   0, 0, 'Mage - Frostfire Bolt'),                          -- DoT componenet shouldn't scale.
(44457, 0,       0.2, 0, 0, 'Mage - Living Bomb ($SP*0.8 / number of ticks)'), -- Direct damage bonus correction.
(44461,  0.4286, 0,   0, 0, 'Mage - Living Bomb (Triggered)');                 -- Direct damage bonus correction.

-- Paladin
DELETE FROM `spell_bonus_data` WHERE `entry` IN (633, 54158, 20467, 20187, 31803, 53742, 31804, 53733);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(633,    0,     0,      0,     0,      'Paladin - Lay on Hands'),               -- Shouldn't scale with SP.
(54158,  0.27,  0,       0.175, 0,      'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'), -- Increase coefficient, based on Wowwiki.com.
(20467,  0.14,  0,       0.115, 0,      'Paladin - Judgement of Command'),       -- Decrease coefficient, based on Wowwiki.com.
(20187,  0.355, 0,       0.225, 0,      'Paladin - Judgement of Righteousness'), -- Increase coefficient, based on Wowwiki.com.
(31803, 0,      0.0132, 0,      0.0252, 'Paladin - Holy Vengeance'),             -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(53742, 0,      0.0132, 0,      0.0252, 'Paladin - Blood Corruption'),           -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(31804,  0.24,  0,       0.15,  0,      'Paladin - Judgement of Vengeance'),     -- Increase coefficient, based on Wowwiki.com.
(53733,  0.24,  0,       0.15,  0,      'Paladin - Judgement of Corruption');    -- Increase coefficient, based on Wowwiki.com.

-- Priest
DELETE FROM `spell_bonus_data` WHERE `entry` = 7001;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(7001, 0, 0.626, 0, 0, 'Priest - Lightwell Renew ($SP*1.878 / number of ticks)'); -- Increase coefficient, based on DrDamage addon(3.3.5a).

-- Rogue
DELETE FROM `spell_bonus_data` WHERE `entry` IN (32645, 2098, 703, 1776, 1943, 8680, 26688, 13218);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(32645, 0, 0, 0,    0,    'Rogue - Envenom'),           -- Shouldn't scale with SP.
(2098,  0, 0, 0,    0,    'Rogue - Eviscerate'),        -- Shouldn't scale with SP.
(703,  0,  0, 0,     0.07, 'Rogue - Garrote'),           -- Shouldn't scale with SP.
(1776,  0, 0,  0.21, 0,    'Rogue - Gouge'),             -- Shouldn't scale with SP.
(1943, 0,  0, 0,    0,    'Rogue - Rupture'),           -- Shouldn't scale with SP.
(8680,  0, 0,  0.1,  0,    'Rogue - Instant Poison'),    -- Shouldn't scale with SP.
(26688, 0, 0,  0,    0,    'Rogue - Anesthetic Poison'), -- Shouldn't scale with SP nor AP.
(13218, 0, 0,  0.04, 0,    'Rogue - Wound Poison');      -- Shouldn't scale with SP.

 -- Warlock Healthstones Shouldn't scale with SP.
DELETE FROM `spell_bonus_data` WHERE `entry` IN (6262, 23468, 23469, 6263, 23470, 23471, 5720, 23472, 23473, 5723, 23474, 23475, 11732, 23476, 23477, 27235, 27236, 27237, 47874, 47873, 47872, 47875, 47876, 47877);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(6262,  0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 0/2 Improved Healthstone)'),
(23468, 0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 1/2 Improved Healthstone)'),
(23469, 0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 2/2 Improved Healthstone)'),
(6263,  0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 0/2 Improved Healthstone)'),
(23470, 0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 1/2 Improved Healthstone)'),
(23471, 0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 2/2 Improved Healthstone)'),
(5720,  0, 0, 0, 0, 'Warlock - HS - Healthstone (with 0/2 Improved Healthstone)'),
(23472, 0, 0, 0, 0, 'Warlock - HS - Healthstone (with 1/2 Improved Healthstone)'),
(23473, 0, 0, 0, 0, 'Warlock - HS - Healthstone (with 2/2 Improved Healthstone)'),
(5723,  0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 0/2 Improved Healthstone)'),
(23474, 0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 1/2 Improved Healthstone)'),
(23475, 0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 2/2 Improved Healthstone)'),
(11732, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 0/2 Improved Healthstone)'),
(23476, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 1/2 Improved Healthstone)'),
(23477, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 2/2 Improved Healthstone)'),
(27235, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 0/2 Improved Healthstone)'),
(27236, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 1/2 Improved Healthstone)'),
(27237, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 2/2 Improved Healthstone)'),
(47874, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 0/2 Improved Healthstone)'),
(47873, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 1/2 Improved Healthstone)'),
(47872, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 2/2 Improved Healthstone)'),
(47875, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 0/2 Improved Healthstone)'),
(47876, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 1/2 Improved Healthstone)'),
(47877, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 2/2 Improved Healthstone)');
DELETE FROM `spell_ranks` WHERE `first_spell_id`=64694;
INSERT INTO `spell_ranks` (`first_spell_id`,`spell_id`,`rank`) VALUES
(64694,64694,1),
(64694,65263,2),
(64694,65264,3);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-633,781,-746,1515,6495,-8050,-16972,31789,-34914,-44457,-48181,-30108,34438,34439,35183,43522,65812,68154,68155,68156,52610,61336,-33763,40133,40132,43421,52551,53608,57762,59990,66093,67957,67958,67959,7057,28832,28833,28834,28835,27831,55638,31447,32960,33654,33671,50810,61546,50811,61547,52942,59837,63322,47977,48025,54729,71342,72286,74856,75614,75973);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-633,  'spell_pal_lay_on_hands'),
(781,   'spell_hun_disengage'),
(-746,  'spell_gen_bandage'),
(1515,  'spell_hun_tame_beast'),
(6495,  'spell_sha_sentry_totem'),
(-8050, 'spell_sha_flame_shock'),
(-16972,'spell_dru_predatory_strikes'),
(31789, 'spell_pal_righteous_defense'),
(-34914,'spell_pri_vampiric_touch'),
(-44457,'spell_mage_living_bomb'),
(-48181,'spell_warl_haunt'),
(-30108,'spell_warl_unstable_affliction'),
(34438, 'spell_warl_unstable_affliction'), -- using class spell script for generic spell because it uses class spell effect
(34439, 'spell_warl_unstable_affliction'),
(35183, 'spell_warl_unstable_affliction'),
(43522, 'spell_hexlord_unstable_affliction'),
(65812, 'spell_faction_champion_warl_unstable_affliction'),
(68154, 'spell_faction_champion_warl_unstable_affliction'),
(68155, 'spell_faction_champion_warl_unstable_affliction'),
(68156, 'spell_faction_champion_warl_unstable_affliction'),
(52610, 'spell_dru_savage_roar'),
(61336, 'spell_dru_survival_instincts'),
(-33763,'spell_dru_lifebloom'),
(40133, 'spell_gen_summon_fire_elemental'),
(40132, 'spell_gen_summon_earth_elemental'),
(43421, 'spell_hexlord_lifebloom'),
(52551, 'spell_tur_ragepaw_lifebloom'),
(53608, 'spell_cenarion_scout_lifebloom'),
(57762, 'spell_twisted_visage_lifebloom'),
(59990, 'spell_twisted_visage_lifebloom'),
(66093, 'spell_faction_champion_dru_lifebloom'),
(67957, 'spell_faction_champion_dru_lifebloom'),
(67958, 'spell_faction_champion_dru_lifebloom'),
(67959, 'spell_faction_champion_dru_lifebloom'),
(7057,  'spell_shadowfang_keep_haunting_spirits'),
(28832, 'spell_four_horsemen_mark'),
(28833, 'spell_four_horsemen_mark'),
(28834, 'spell_four_horsemen_mark'),
(28835, 'spell_four_horsemen_mark'),
(27831, 'spell_gothik_shadow_bolt_volley'),
(55638, 'spell_gothik_shadow_bolt_volley'),
(31447, 'spell_mark_of_kazrogal'),
(32960, 'spell_mark_of_kazzak'),
(33654, 'spell_gruul_shatter'),
(33671, 'spell_gruul_shatter_effect'),
(50810, 'spell_krystallus_shatter'),
(61546, 'spell_krystallus_shatter'),
(50811, 'spell_krystallus_shatter_effect'),
(61547, 'spell_krystallus_shatter_effect'),
(52942, 'spell_loken_pulsing_shockwave'),
(59837, 'spell_loken_pulsing_shockwave'),
(63322, 'spell_general_vezax_saronite_vapors'),
(47977, 'spell_magic_broom'),
(48025, 'spell_headless_horseman_mount'),
(54729, 'spell_winged_steed_of_the_ebon_blade'),
(71342, 'spell_big_love_rocket'),
(72286, 'spell_invincible'),
(74856, 'spell_blazing_hippogryph'),
(75614, 'spell_celestial_steed'),
(75973, 'spell_x53_touring_rocket');
SET @DIFF := 3268; -- set by TDB team
DELETE FROM `spelldifficulty_dbc` WHERE `id` BETWEEN @DIFF+0 AND @DIFF+2;
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`) VALUES
(@DIFF+0,50811,61547,0,0),
(@DIFF+1,57762,59990,0,0),
(@DIFF+2,57763,61489,0,0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (19938,30877);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,19938,0,0,1,1,17743,0,0,0,0,'','Awaken Peon'),
(17,0,30877,0,0,31,1,3,17326,0,0,0,'','Tag Murloc');

-- Lifebinder's Gift
UPDATE `conditions` SET `SourceGroup`=7 WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (62584,64185);
DELETE FROM `spell_bonus_data` WHERE `entry`=63544;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(63544,0,0,0,0,'Priest - Empowered Renew');
DELETE FROM `spell_script_names` WHERE `spell_id`=-139;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-139,'spell_priest_renew');
-- Fix up quest 9539 "Totem of Coo"
-- Totem of Akida SAI
SET @ENTRY  := 17360;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,9539,0,0,0,85,30437,0,0,0,0,0,7,0,0,0,0,0,0,0,'Totem of Akida - Quest accepted - Cast Spell on player');
-- Stillpine Ancestor Akida SAI
SET @ENTRY  := 17379;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Just Summoned - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,3,0,16995,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - set model'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,11,25035,0,0,0,0,0,1,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Akida - Script - Cast Spell'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - Set run on'),
(@ENTRY*100,9,4,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - say 0'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4154.224,-12514.75,45.35527,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,6,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4123.563,-12517.23,44.9127,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,7,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-4091.881,-12524,42.37354,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,8,0,0,0,100,0,5500,5500,0,0,69,0,0,0,0,0,0,8,0,0,0,-4058.039,-12538.57,43.96096,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,9,0,0,0,100,0,4500,4500,0,0,69,0,0,0,0,0,0,8,0,0,0,-4026.534,-12568.4,45.82222,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,10,0,0,0,100,0,3000,3000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4000.155,-12598.55,54.19722,0,'Stillpine Ancestor Akida - Script - move to'), --
(@ENTRY*100,9,11,0,0,0,100,0,7500,7500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3977.5,-12627.22,63.1442,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,12,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3952.254,-12660.37,74.23783,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,13,0,0,0,100,0,6500,6500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3933.183,-12698.27,85.65151,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,14,0,0,0,100,0,4500,4500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3925.843,-12718.81,89.94553,0,'Stillpine Ancestor Akida - Script - move to'), --
(@ENTRY*100,9,15,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3915.914,-12743.41,98.56779,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,4500,4500,0,0,66,0,0,0,0,0,0,19,17361,10,0,0,0,0,0,'Stillpine Ancestor Akida - Script - turn to Totem of Coo'),
(@ENTRY*100,9,17,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - say 1'),
(@ENTRY*100,9,18,0,0,0,100,0,3000,3000,0,0,11,30428,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - cast spell'),
(@ENTRY*100,9,19,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=17379;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17379,0,0, '%s urges you to follow him.',16,0,100,0,0,0, 'Stillpine Ancestor Akida'),
(17379,1,0, '%s points to the totem of Coo.',16,0,100,25,0,0, 'Stillpine Ancestor Akida');
-- add missing spells to db
DELETE FROM `spell_dbc` WHERE `Id` IN (30426,30437);
INSERT INTO `spell_dbc` (`Id`,`SchoolMask`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`Comment`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`AreaGroupId`,`EffectMiscValueB1`) VALUES
(30426,0,0,0,256,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,40,12,0,-1,0,0,28,6,0,0,0,0,0,0,0,0,0,0,0,0,0,32,1,0,0,0,0,15,0,0,0,4,0,0,0,0,0,0,0,17379,0,0,0,0,0,'Stillpine Ancestor Akida',0,0,0,0,0,0,0,1,1,0,64),
(30437,0,0,0,2304,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,36,3,0,-1,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,23,0,0,1000,0,0,0,0,0,0,0,0,30426,0,0,'Stillpine Ancestor Akida TRIGGER',0,0,0,0,0,0,0,1,0,0,0);
-- Remove Stillpine Ancestor Akida EAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17379;
-- Fix up quest 9540 "Totem of Tikti"
-- Totem of Coo SAI
SET @ENTRY  := 17361;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,9540,0,0,0,85,30442,0,0,0,0,0,7,0,0,0,0,0,0,0,'Totem of Coo - Quest accepted - Cast Spell on player');
-- Stillpine Ancestor Coo SAI
SET @ENTRY  := 17391;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Just Summoned - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,3,0,16995,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - set model'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,11,25035,0,0,0,0,0,1,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Coo - Script - Cast Spell'),
(@ENTRY*100,9,3,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - say 0'),
(@ENTRY*100,9,4,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3926.039,-12746.71,96.06779,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3926.326,-12753.71,98.44279,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,6,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3924.268,-12761.45,101.6928,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,7,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - say 1'),
(@ENTRY*100,9,8,0,0,0,100,0,4000,4000,0,0,11,30424,0,0,0,0,0,7,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Coo - Script - Cast Spell'),
(@ENTRY*100,9,9,0,0,0,100,0,1000,1000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - say 2'),
(@ENTRY*100,9,10,0,0,0,100,0,4000,4000,0,0,11,30473,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - cast spell'),
(@ENTRY*100,9,11,0,0,0,100,0,0,0,0,0,3,0,17019,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - set model'),
(@ENTRY*100,9,12,0,0,0,100,0,3000,3000,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - Fly on'),
(@ENTRY*100,9,13,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-3926.068,-12767.33,104.3799,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,14,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3923.497,-12794.98,98.46323,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,15,0,0,0,100,0,4000,4000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3922.687,-12832.4,89.24097,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,8000,8000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=17391;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17391,0,0, '%s motions for you to follow him.',16,0,100,0,0,0, 'Stillpine Ancestor Coo'),
(17391,1,0, '[Furbolg] Ritk kin''chikx azul azure summit...',12,0,100,0,0,0, 'Stillpine Ancestor Coo'),
(17391,2,0, '[Furbolg] Coo xip fly... Jump ilos river. Find Tikti.',12,0,100,0,0,0, 'Stillpine Ancestor Coo');
-- add missing spells to db
DELETE FROM `spell_dbc` WHERE `Id` IN (30429,30442);
INSERT INTO `spell_dbc` (`Id`,`SchoolMask`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`Comment`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`AreaGroupId`,`EffectMiscValueB1`) VALUES
(30429,0,0,0,256,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,40,12,0,-1,0,0,28,6,0,0,0,0,0,0,0,0,0,0,0,0,0,32,1,0,0,0,0,7,0,0,0,4,0,0,0,0,0,0,0,17391,0,0,0,0,0,'Stillpine Ancestor Coo',0,0,0,0,0,0,0,1,1,0,64),
(30442,0,0,0,2304,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,36,3,0,-1,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,23,0,0,1000,0,0,0,0,0,0,0,0,30429,0,0,'Stillpine Ancestor Coo TRIGGER',0,0,0,0,0,0,0,1,0,0,0);
-- Delete bad spawn of Stillpine Ancestor Coo
DELETE FROM `creature` WHERE `guid`=86512;
DELETE FROM `creature_addon` WHERE `guid`=86512;
-- Remove Stillpine Ancestor Akida EAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17391;
DROP TABLE IF EXISTS ip2nation;

CREATE TABLE ip2nation (
  ip int(11) unsigned NOT NULL default '0',
  country char(2) NOT NULL default '',
  KEY ip (ip)
);

DROP TABLE IF EXISTS ip2nationCountries;

CREATE TABLE ip2nationCountries (
  code varchar(4) NOT NULL default '',
  iso_code_2 varchar(2) NOT NULL default '',
  iso_code_3 varchar(3) default '',
  iso_country varchar(255) NOT NULL default '',
  country varchar(255) NOT NULL default '',
  lat float NOT NULL default '0',
  lon float NOT NULL default '0',
  PRIMARY KEY  (code),
  KEY code (code)
);
-- Grand Anchorite Almonen SAI
SET @ENTRY  := 19216;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,10000,10000,300000,300000,80,@ENTRY*100  ,0,0,0,0,0,1,0,0,0,0,0,0,0,'Sky-Captain Cloudkicker - OOC - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.654867,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,1,0,0,0,100,0,9000,9000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - emote'),
(@ENTRY*100,9,2,0,0,0,100,0,23000,23000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.72,5423.082,-10.45947,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,3,0,0,0,100,0,800,800,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.598,5411.999,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,4,0,0,0,100,0,5000,5000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.183628,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,5,0,0,0,100,0,100,100,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 0'),
(@ENTRY*100,9,6,0,0,0,100,0,9000,9000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 1'),
(@ENTRY*100,9,7,0,0,0,100,0,9000,9000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 2'),
(@ENTRY*100,9,8,0,0,0,100,0,25000,25000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 3'),
(@ENTRY*100,9,9,0,0,0,100,0,10000,10000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.699,5413.06,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,10,0,0,0,100,0,100,100,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 4'),
(@ENTRY*100,9,11,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1848.775,5412.81,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,12,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.276057,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,13,0,0,0,100,0,4000,4000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 5'),
(@ENTRY*100,9,14,0,0,0,100,0,7000,7000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.574,5412.084,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,15,0,0,0,100,0,1900,1900,0,0,69,0,0,0,0,0,0,8,0,0,0,-1856.307,5410.266,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,1900,1900,0,0,69,0,0,0,0,0,0,8,0,0,0,-1859.002,5406.959,-12.42814,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,17,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.707227,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,18,0,0,0,100,0,100,100,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 6'),
(@ENTRY*100,9,19,0,0,0,100,0,10000,10000,0,0,1,7,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 7'),
(@ENTRY*100,9,20,0,0,0,100,0,9000,9000,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 8'),
(@ENTRY*100,9,21,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1855.089,5410.676,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,22,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1853.62,5409.833,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,23,0,0,0,100,0,3000,3000,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 9'),
(@ENTRY*100,9,24,0,0,0,100,0,11000,11000,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 10'),
(@ENTRY*100,9,25,0,0,0,100,0,9000,9000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 11'),
(@ENTRY*100,9,26,0,0,0,100,0,100,100,0,0,69,0,0,0,0,0,0,8,0,0,0,-1852.503,5412.286,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,27,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1849.053,5415.075,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,28,0,0,0,100,0,2000,2000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.340707,'Grand Anchorite Almonen - Script - Turn to'),
(@ENTRY*100,9,29,0,0,0,100,0,5000,5000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 12'),
(@ENTRY*100,9,30,0,0,0,100,0,11000,11000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 13'),
(@ENTRY*100,9,31,0,0,0,100,0,4000,4000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1851.643,5414.012,-12.42816,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,32,0,0,0,100,0,1200,1200,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.913,5412.682,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,33,0,0,0,100,0,800,800,0,0,69,0,0,0,0,0,0,8,0,0,0,-1854.408,5411.227,-12.42815,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,34,0,0,0,100,0,1000,1000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 14'),
(@ENTRY*100,9,35,0,0,0,100,0,10000,10000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 15'),
(@ENTRY*100,9,36,0,0,0,100,0,7000,7000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 16'),
(@ENTRY*100,9,37,0,0,0,100,0,10000,10000,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 17'),
(@ENTRY*100,9,38,0,0,0,100,0,11000,11000,0,0,1,18,0,0,0,0,0,1,0,0,0,0,0,0,0,'Grand Anchorite Almonen - Script - say 18'),
(@ENTRY*100,9,39,0,0,0,100,0,10000,10000,0,0,69,0,0,0,0,0,0,8,0,0,0,-1853.137,5424.863,-10.47787,0,'Grand Anchorite Almonen - Script - move to'),
(@ENTRY*100,9,40,0,0,0,100,0,6500,6500,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,2.6529,'Grand Anchorite Almonen - Script - Turn to');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=19216;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(19216,0,0, 'Friends, it is my great pleasure to welcome you to the temple today.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,1,0, 'A''dal has been most generous in his revelations to me, a humble servant of the Light.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,2,0, 'In accordance with my divine calling, I must share these revealed truths to all who would hear.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,3,0, 'It has been made known to me that inside each of us, the Light resides...',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,4,0, '...that it is a gift, given freely to all naturally born beings.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,5,0, 'It manifests itself as a feeling, small at first and easily ignored, that confirms truths and subtly prods one to do good.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,6,0, 'Simple kindnesses, charitable deeds, service to those in need. These are all fruits of the Light.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,7,0, 'It rewards those who heed its promptings with blessings, both seen and unseen.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,8,0, 'Personal reservoirs of hope and faith are strengthened, and one''s capacity for greater light increases.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,9,0, 'Over the course of time, through obedience to the Light''s guidance, one becomes more sensitive to its voice, and its power.',12,0,100,273,0,0, 'Grand Anchorite Almonen'),
(19216,10,0, 'Great is the healing and blessing power of the Light''s most diligent followers.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,11,0, 'Sadly, there are those who wander through mortality in defiance of the Light.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,12,0, 'From these the Light withdraws, until only darkness remains.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,13,0, 'Where there is no light, despair, loathing and rage thrive.',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,14,0, 'We are born into a perilous age, where the forces of darkness are determined to bring about our destruction.',12,0,100,1,0,0, 'Grand Anchorite Almonen'),
(19216,15,0, 'These are the times to find yourselves in unison with the Light.',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,16,0, 'Hear my words, and let the Light inside of you confirm the truth of them.',12,0,100,0,0,0, 'Grand Anchorite Almonen'),
(19216,17,0, 'Embrace the light that is in you, my friends! Deny yourself all darkness...',12,0,100,5,0,0, 'Grand Anchorite Almonen'),
(19216,18,0, 'We must endure these trying times faithfully, and one day we will find ourselves victorious.',12,0,100,5,0,0, 'Grand Anchorite Almonen');
-- Fix Surge of Adrenaline
DELETE FROM `spell_linked_spell` WHERE `spell_effect`=68667;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(-66683,68667,0, 'Icehowl - Surge of Adrenaline'),
(-67660,68667,0, 'Icehowl - Surge of Adrenaline');
-- delete 'Mangle - Remover'
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33876 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33878 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33982 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33983 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33986 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=33987 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48563 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-48566 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-48565 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-33983 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-33982 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48564 AND `spell_effect`=-33876 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48565 AND `spell_effect`=-33878 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-48564 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-48563 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-33987 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-33986 AND `type`=1;
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=48566 AND `spell_effect`=-33878 AND `type`=1;
-- Death Knight
DELETE FROM `spell_bonus_data` WHERE `entry` IN(58621, 47632, 47633, 50444, 70890, 50526, 48982, 59754, 49184);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(58621, 0, -1,  0.08,  -1, 'Death Knight - Glyph of Chains of Ice'),        -- Shouldn't scale with SP.
(47632, 0, -1,  0.15,  -1, 'Death Knight - Death Coil'),                    -- Shouldn't scale with SP.
(47633, 0, -1,  0.15,  -1, 'Death Knight - Death Coil (Heal)'),             -- Shouldn't scale with SP.
(50444, 0, -1,  0.105, -1, 'Death Knight - Corpse Explosion (Triggered)'),  -- Shouldn't scale with SP.
(70890, 0, -1, -1,     -1, 'Death Knight - Scourge Strike (Shadow)'),       -- Shouldn't scale with SP.
(50526, 0, -1, -1,     -1, 'Death Knight - Wandering Plague (Triggered)'),  -- Shouldn't scale with SP.
(48982, 0, -1, -1,     -1, 'Death Knight - Rune Tap'),                      -- Shouldn't scale with SP.
(59754, 0, -1, -1,     -1, 'Death Knight - Glyph of Rune Tap (Triggered)'), -- Shouldn't scale with SP.
(49184, 0, -1,  0.2,   -1, 'Death Knight - Howling Blast');                 -- Shouldn't scale with SP.

-- Druid
DELETE FROM `spell_bonus_data` WHERE `entry` IN(48450, 48451); -- Lifebloom Rank 2, Rank 3
DELETE FROM `spell_bonus_data` WHERE `entry` IN(48567, 48568); -- Lacerate Rank 2, Rank 3
DELETE FROM `spell_bonus_data` WHERE `entry` IN(33745, 9007);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(33745, 0,  0,  0.01,   0.01, 'Druid - Lacerate ($AP*0.05/number of ticks)'), -- Direct damage should scale with AP, based on DrDamage addon(3.3.5a).
(9007, -1,  0, -1,      0.03, 'Druid - Pounce Bleed (Triggered)');            -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.

-- Hunter
DELETE FROM `spell_bonus_data` WHERE `entry` IN(56641, 42243, 3674, 19306, 1495, 63468, 136);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(56641,  0, -1,  0.1,  -1,     'Hunter - Steady Shot'),                              -- Shouldn't scale with SP.
(42243,  0, -1,  0.0837, -1,   'Hunter - Volley (Triggered)'),                       -- Shouldn't scale with SP.
(3674,  -1,  0, -1,     0.023, 'Hunter - Black Arrow ($RAP*0.1 / number of ticks)'), -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a).
(19306,  0, -1,  0.2,  -1,     'Hunter - Counterattack'),                            -- Shouldn't scale with SP.
(1495,   0, -1,  0.2,  -1,     'Hunter - Mongoose Bite'),                            -- Shouldn't scale with SP.
(63468, -1,  0, -1,    -1,     'Hunter - Piercing Shots'),                           -- Shouldn't scale with SP.
(136,   -1,  0, -1,    -1,     'Hunter - Mend Pet');                                 -- Shouldn't scale with SP.

-- Mage
DELETE FROM `spell_bonus_data` WHERE `entry`=7269; -- Arcane Missiles Triggered Spell Rank 2
DELETE FROM `spell_bonus_data` WHERE `entry` IN(133, 44614, 44457, 44461);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(133,    1,       0,   -1, -1, 'Mage - Fireball'),                                -- DoT componenet shouldn't scale.
(44614,  0.8571,  0,   -1, -1, 'Mage - Frostfire Bolt'),                          -- DoT componenet shouldn't scale.
(44457, -1,       0.2, -1, -1, 'Mage - Living Bomb ($SP*0.8 / number of ticks)'), -- Direct damage bonus correction.
(44461,  0.4286, -1,   -1, -1, 'Mage - Living Bomb (Triggered)');                 -- Direct damage bonus correction.

-- Paladin
DELETE FROM `spell_bonus_data` WHERE `entry` IN(633, 54158, 20467, 20187, 31803, 53742, 31804, 53733);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(633,    0,     -1,      -1,     -1,      'Paladin - Lay on Hands'),               -- Shouldn't scale with SP.
(54158,  0.27,  -1,       0.175, -1,      'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'), -- Increase coefficient, based on Wowwiki.com.
(20467,  0.14,  -1,       0.115, -1,      'Paladin - Judgement of Command'),       -- Decrease coefficient, based on Wowwiki.com.
(20187,  0.355, -1,       0.225, -1,      'Paladin - Judgement of Righteousness'), -- Increase coefficient, based on Wowwiki.com.
(31803, -1,      0.0132, -1,      0.0252, 'Paladin - Holy Vengeance'),             -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(53742, -1,      0.0132, -1,      0.0252, 'Paladin - Blood Corruption'),           -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(31804,  0.24,  -1,       0.15,  -1,      'Paladin - Judgement of Vengeance'),     -- Increase coefficient, based on Wowwiki.com.
(53733,  0.24,  -1,       0.15,  -1,      'Paladin - Judgement of Corruption');    -- Increase coefficient, based on Wowwiki.com.

-- Priest
DELETE FROM `spell_bonus_data` WHERE `entry` IN(52983, 52954, 58985); -- Penance Heal Rank 2, Rank 3, Rank 4
DELETE FROM `spell_bonus_data` WHERE `entry` IN(52998, 52999, 53000); -- Penance Hurt Rank 2, Rank 3, Rank 4
DELETE FROM `spell_bonus_data` WHERE `entry` IN(7001);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(7001, -1, 0.626, -1, -1, 'Priest - Lightwell Renew ($SP*1.878 / number of ticks)'); -- Increase coefficient, based on DrDamage addon(3.3.5a).

-- Rogue
DELETE FROM `spell_bonus_data` WHERE `entry` IN(819, 11353, 11354, 25349, 26968, 27187, 57969, 57970); -- Deadly Poison Rank 2, Rank 3, etc.
DELETE FROM `spell_bonus_data` WHERE `entry` IN(8685, 8689, 11335, 11336, 11337, 26890, 57964, 57965); -- Instant Poison Rank 2, Rank 3, etc.
DELETE FROM `spell_bonus_data` WHERE `entry` IN(13222, 13223, 13224, 27189, 57974, 57975); -- Wound Poison Rank 2, Rank 3, etc.
DELETE FROM `spell_bonus_data` WHERE `entry` IN(32645, 2098, 703, 1776, 1943, 8680, 26688, 13218);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(32645, 0, -1, -1,    -1,    'Rogue - Envenom'),           -- Shouldn't scale with SP.
(2098,  0, -1, -1,    -1,    'Rogue - Eviscerate'),        -- Shouldn't scale with SP.
(703,  -1,  0, -1,     0.07, 'Rogue - Garrote'),           -- Shouldn't scale with SP.
(1776,  0, -1,  0.21, -1,    'Rogue - Gouge'),             -- Shouldn't scale with SP.
(1943, -1,  0, -1,    -1,    'Rogue - Rupture'),           -- Shouldn't scale with SP.
(8680,  0, -1,  0.1,  -1,    'Rogue - Instant Poison'),    -- Shouldn't scale with SP.
(26688, 0, -1,  0,    -1,    'Rogue - Anesthetic Poison'), -- Shouldn't scale with SP nor AP.
(13218, 0, -1,  0.04, -1,    'Rogue - Wound Poison');      -- Shouldn't scale with SP.

 -- Warlock Healthstones Shouldn't scale with SP.
DELETE FROM `spell_bonus_data` WHERE `entry` IN (6262, 23468, 23469, 6263, 23470, 23471, 5720, 23472, 23473, 5723, 23474, 23475, 11732, 23476, 23477, 27235, 27236, 27237, 47874, 47873, 47872, 47875, 47876, 47877);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(6262,  0, -1, 0, -1, 'Warlock - HS - Minor Healthstone (with 0/2 Improved Healthstone)'),
(23468, 0, -1, 0, -1, 'Warlock - HS - Minor Healthstone (with 1/2 Improved Healthstone)'),
(23469, 0, -1, 0, -1, 'Warlock - HS - Minor Healthstone (with 2/2 Improved Healthstone)'),
(6263,  0, -1, 0, -1, 'Warlock - HS - Lesser Healthstone (with 0/2 Improved Healthstone)'),
(23470, 0, -1, 0, -1, 'Warlock - HS - Lesser Healthstone (with 1/2 Improved Healthstone)'),
(23471, 0, -1, 0, -1, 'Warlock - HS - Lesser Healthstone (with 2/2 Improved Healthstone)'),
(5720,  0, -1, 0, -1, 'Warlock - HS - Healthstone (with 0/2 Improved Healthstone)'),
(23472, 0, -1, 0, -1, 'Warlock - HS - Healthstone (with 1/2 Improved Healthstone)'),
(23473, 0, -1, 0, -1, 'Warlock - HS - Healthstone (with 2/2 Improved Healthstone)'),
(5723,  0, -1, 0, -1, 'Warlock - HS - Greater Healthstone (with 0/2 Improved Healthstone)'),
(23474, 0, -1, 0, -1, 'Warlock - HS - Greater Healthstone (with 1/2 Improved Healthstone)'),
(23475, 0, -1, 0, -1, 'Warlock - HS - Greater Healthstone (with 2/2 Improved Healthstone)'),
(11732, 0, -1, 0, -1, 'Warlock - HS - Major Healthstone (with 0/2 Improved Healthstone)'),
(23476, 0, -1, 0, -1, 'Warlock - HS - Major Healthstone (with 1/2 Improved Healthstone)'),
(23477, 0, -1, 0, -1, 'Warlock - HS - Major Healthstone (with 2/2 Improved Healthstone)'),
(27235, 0, -1, 0, -1, 'Warlock - HS - Master Healthstone (with 0/2 Improved Healthstone)'),
(27236, 0, -1, 0, -1, 'Warlock - HS - Master Healthstone (with 1/2 Improved Healthstone)'),
(27237, 0, -1, 0, -1, 'Warlock - HS - Master Healthstone (with 2/2 Improved Healthstone)'),
(47874, 0, -1, 0, -1, 'Warlock - HS - Demonic Healthstone (with 0/2 Improved Healthstone)'),
(47873, 0, -1, 0, -1, 'Warlock - HS - Demonic Healthstone (with 1/2 Improved Healthstone)'),
(47872, 0, -1, 0, -1, 'Warlock - HS - Demonic Healthstone (with 2/2 Improved Healthstone)'),
(47875, 0, -1, 0, -1, 'Warlock - HS - Fel Healthstone (with 0/2 Improved Healthstone)'),
(47876, 0, -1, 0, -1, 'Warlock - HS - Fel Healthstone (with 1/2 Improved Healthstone)'),
(47877, 0, -1, 0, -1, 'Warlock - HS - Fel Healthstone (with 2/2 Improved Healthstone)');
-- Death Knight
DELETE FROM `spell_bonus_data` WHERE `entry` IN (58621, 47632, 47633, 50444, 70890, 50526, 48982, 59754, 49184);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(58621, 0, 0, 0.08, 0, 'Death Knight - Glyph of Chains of Ice'),        -- Shouldn't scale with SP.
(47632, 0, 0, 0.15, 0, 'Death Knight - Death Coil'),                    -- Shouldn't scale with SP.
(47633, 0, 0, 0.15, 0, 'Death Knight - Death Coil (Heal)'),             -- Shouldn't scale with SP.
(50444, 0, 0, 0.105, 0, 'Death Knight - Corpse Explosion (Triggered)'),  -- Shouldn't scale with SP.
(70890, 0, 0, 0, 0, 'Death Knight - Scourge Strike (Shadow)'),       -- Shouldn't scale with SP.
(50526, 0, 0, 0, 0, 'Death Knight - Wandering Plague (Triggered)'),  -- Shouldn't scale with SP.
(48982, 0, 0, 0, 0, 'Death Knight - Rune Tap'),                      -- Shouldn't scale with SP.
(59754, 0, 0, 0, 0, 'Death Knight - Glyph of Rune Tap (Triggered)'), -- Shouldn't scale with SP.
(49184, 0, 0, 0.2, 0, 'Death Knight - Howling Blast');                 -- Shouldn't scale with SP.

-- Druid
DELETE FROM `spell_bonus_data` WHERE `entry` IN (33745, 9007);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(33745, 0,  0,  0.01,   0.01, 'Druid - Lacerate ($AP*0.05/number of ticks)'), -- Direct damage should scale with AP, based on DrDamage addon(3.3.5a).
(9007, 0,  0, 0,      0.03, 'Druid - Pounce Bleed (Triggered)');            -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.

-- Hunter
DELETE FROM `spell_bonus_data` WHERE `entry` IN (56641, 42243, 3674, 19306, 1495, 63468, 136);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(56641,  0, 0,  0.1,  0,     'Hunter - Steady Shot'),                              -- Shouldn't scale with SP.
(42243,  0, 0,  0.0837, 0,   'Hunter - Volley (Triggered)'),                       -- Shouldn't scale with SP.
(3674,  0,  0, 0,     0.023, 'Hunter - Black Arrow ($RAP*0.1 / number of ticks)'), -- Shouldn't scale with SP. Increase AP coefficient, based on DrDamage addon(3.3.5a).
(19306,  0, 0,  0.2,  0,     'Hunter - Counterattack'),                            -- Shouldn't scale with SP.
(1495,   0, 0,  0.2,  0,     'Hunter - Mongoose Bite'),                            -- Shouldn't scale with SP.
(63468, 0,  0, 0,    0,     'Hunter - Piercing Shots'),                           -- Shouldn't scale with SP.
(136,   0,  0, 0,    0,     'Hunter - Mend Pet');                                 -- Shouldn't scale with SP.

-- Mage
DELETE FROM `spell_bonus_data` WHERE `entry` IN (133, 44614, 44457, 44461);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(133,    1,       0,   0, 0, 'Mage - Fireball'),                                -- DoT componenet shouldn't scale.
(44614,  0.8571,  0,   0, 0, 'Mage - Frostfire Bolt'),                          -- DoT componenet shouldn't scale.
(44457, 0,       0.2, 0, 0, 'Mage - Living Bomb ($SP*0.8 / number of ticks)'), -- Direct damage bonus correction.
(44461,  0.4286, 0,   0, 0, 'Mage - Living Bomb (Triggered)');                 -- Direct damage bonus correction.

-- Paladin
DELETE FROM `spell_bonus_data` WHERE `entry` IN (633, 54158, 20467, 20187, 31803, 53742, 31804, 53733);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(633,    0,     0,      0,     0,      'Paladin - Lay on Hands'),               -- Shouldn't scale with SP.
(54158,  0.27,  0,       0.175, 0,      'Paladin - Judgement (Seal of Light, Seal of Wisdom, Seal of Justice)'), -- Increase coefficient, based on Wowwiki.com.
(20467,  0.14,  0,       0.115, 0,      'Paladin - Judgement of Command'),       -- Decrease coefficient, based on Wowwiki.com.
(20187,  0.355, 0,       0.225, 0,      'Paladin - Judgement of Righteousness'), -- Increase coefficient, based on Wowwiki.com.
(31803, 0,      0.0132, 0,      0.0252, 'Paladin - Holy Vengeance'),             -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(53742, 0,      0.0132, 0,      0.0252, 'Paladin - Blood Corruption'),           -- Decrease coefficient, based on DrDamage addon(3.3.5a) and Wowwiki.com.
(31804,  0.24,  0,       0.15,  0,      'Paladin - Judgement of Vengeance'),     -- Increase coefficient, based on Wowwiki.com.
(53733,  0.24,  0,       0.15,  0,      'Paladin - Judgement of Corruption');    -- Increase coefficient, based on Wowwiki.com.

-- Priest
DELETE FROM `spell_bonus_data` WHERE `entry` = 7001;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(7001, 0, 0.626, 0, 0, 'Priest - Lightwell Renew ($SP*1.878 / number of ticks)'); -- Increase coefficient, based on DrDamage addon(3.3.5a).

-- Rogue
DELETE FROM `spell_bonus_data` WHERE `entry` IN (32645, 2098, 703, 1776, 1943, 8680, 26688, 13218);
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES 
(32645, 0, 0, 0,    0,    'Rogue - Envenom'),           -- Shouldn't scale with SP.
(2098,  0, 0, 0,    0,    'Rogue - Eviscerate'),        -- Shouldn't scale with SP.
(703,  0,  0, 0,     0.07, 'Rogue - Garrote'),           -- Shouldn't scale with SP.
(1776,  0, 0,  0.21, 0,    'Rogue - Gouge'),             -- Shouldn't scale with SP.
(1943, 0,  0, 0,    0,    'Rogue - Rupture'),           -- Shouldn't scale with SP.
(8680,  0, 0,  0.1,  0,    'Rogue - Instant Poison'),    -- Shouldn't scale with SP.
(26688, 0, 0,  0,    0,    'Rogue - Anesthetic Poison'), -- Shouldn't scale with SP nor AP.
(13218, 0, 0,  0.04, 0,    'Rogue - Wound Poison');      -- Shouldn't scale with SP.

 -- Warlock Healthstones Shouldn't scale with SP.
DELETE FROM `spell_bonus_data` WHERE `entry` IN (6262, 23468, 23469, 6263, 23470, 23471, 5720, 23472, 23473, 5723, 23474, 23475, 11732, 23476, 23477, 27235, 27236, 27237, 47874, 47873, 47872, 47875, 47876, 47877);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(6262,  0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 0/2 Improved Healthstone)'),
(23468, 0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 1/2 Improved Healthstone)'),
(23469, 0, 0, 0, 0, 'Warlock - HS - Minor Healthstone (with 2/2 Improved Healthstone)'),
(6263,  0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 0/2 Improved Healthstone)'),
(23470, 0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 1/2 Improved Healthstone)'),
(23471, 0, 0, 0, 0, 'Warlock - HS - Lesser Healthstone (with 2/2 Improved Healthstone)'),
(5720,  0, 0, 0, 0, 'Warlock - HS - Healthstone (with 0/2 Improved Healthstone)'),
(23472, 0, 0, 0, 0, 'Warlock - HS - Healthstone (with 1/2 Improved Healthstone)'),
(23473, 0, 0, 0, 0, 'Warlock - HS - Healthstone (with 2/2 Improved Healthstone)'),
(5723,  0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 0/2 Improved Healthstone)'),
(23474, 0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 1/2 Improved Healthstone)'),
(23475, 0, 0, 0, 0, 'Warlock - HS - Greater Healthstone (with 2/2 Improved Healthstone)'),
(11732, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 0/2 Improved Healthstone)'),
(23476, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 1/2 Improved Healthstone)'),
(23477, 0, 0, 0, 0, 'Warlock - HS - Major Healthstone (with 2/2 Improved Healthstone)'),
(27235, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 0/2 Improved Healthstone)'),
(27236, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 1/2 Improved Healthstone)'),
(27237, 0, 0, 0, 0, 'Warlock - HS - Master Healthstone (with 2/2 Improved Healthstone)'),
(47874, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 0/2 Improved Healthstone)'),
(47873, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 1/2 Improved Healthstone)'),
(47872, 0, 0, 0, 0, 'Warlock - HS - Demonic Healthstone (with 2/2 Improved Healthstone)'),
(47875, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 0/2 Improved Healthstone)'),
(47876, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 1/2 Improved Healthstone)'),
(47877, 0, 0, 0, 0, 'Warlock - HS - Fel Healthstone (with 2/2 Improved Healthstone)');
DELETE FROM `spell_ranks` WHERE `first_spell_id`=64694;
INSERT INTO `spell_ranks` (`first_spell_id`,`spell_id`,`rank`) VALUES
(64694,64694,1),
(64694,65263,2),
(64694,65264,3);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (-633,781,-746,1515,6495,-8050,-16972,31789,-34914,-44457,-48181,-30108,34438,34439,35183,43522,65812,68154,68155,68156,52610,61336,-33763,40133,40132,43421,52551,53608,57762,59990,66093,67957,67958,67959,7057,28832,28833,28834,28835,27831,55638,31447,32960,33654,33671,50810,61546,50811,61547,52942,59837,63322,47977,48025,54729,71342,72286,74856,75614,75973);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-633,  'spell_pal_lay_on_hands'),
(781,   'spell_hun_disengage'),
(-746,  'spell_gen_bandage'),
(1515,  'spell_hun_tame_beast'),
(6495,  'spell_sha_sentry_totem'),
(-8050, 'spell_sha_flame_shock'),
(-16972,'spell_dru_predatory_strikes'),
(31789, 'spell_pal_righteous_defense'),
(-34914,'spell_pri_vampiric_touch'),
(-44457,'spell_mage_living_bomb'),
(-48181,'spell_warl_haunt'),
(-30108,'spell_warl_unstable_affliction'),
(34438, 'spell_warl_unstable_affliction'), -- using class spell script for generic spell because it uses class spell effect
(34439, 'spell_warl_unstable_affliction'),
(35183, 'spell_warl_unstable_affliction'),
(43522, 'spell_hexlord_unstable_affliction'),
(65812, 'spell_faction_champion_warl_unstable_affliction'),
(68154, 'spell_faction_champion_warl_unstable_affliction'),
(68155, 'spell_faction_champion_warl_unstable_affliction'),
(68156, 'spell_faction_champion_warl_unstable_affliction'),
(52610, 'spell_dru_savage_roar'),
(61336, 'spell_dru_survival_instincts'),
(-33763,'spell_dru_lifebloom'),
(40133, 'spell_gen_summon_fire_elemental'),
(40132, 'spell_gen_summon_earth_elemental'),
(43421, 'spell_hexlord_lifebloom'),
(52551, 'spell_tur_ragepaw_lifebloom'),
(53608, 'spell_cenarion_scout_lifebloom'),
(57762, 'spell_twisted_visage_lifebloom'),
(59990, 'spell_twisted_visage_lifebloom'),
(66093, 'spell_faction_champion_dru_lifebloom'),
(67957, 'spell_faction_champion_dru_lifebloom'),
(67958, 'spell_faction_champion_dru_lifebloom'),
(67959, 'spell_faction_champion_dru_lifebloom'),
(7057,  'spell_shadowfang_keep_haunting_spirits'),
(28832, 'spell_four_horsemen_mark'),
(28833, 'spell_four_horsemen_mark'),
(28834, 'spell_four_horsemen_mark'),
(28835, 'spell_four_horsemen_mark'),
(27831, 'spell_gothik_shadow_bolt_volley'),
(55638, 'spell_gothik_shadow_bolt_volley'),
(31447, 'spell_mark_of_kazrogal'),
(32960, 'spell_mark_of_kazzak'),
(33654, 'spell_gruul_shatter'),
(33671, 'spell_gruul_shatter_effect'),
(50810, 'spell_krystallus_shatter'),
(61546, 'spell_krystallus_shatter'),
(50811, 'spell_krystallus_shatter_effect'),
(61547, 'spell_krystallus_shatter_effect'),
(52942, 'spell_loken_pulsing_shockwave'),
(59837, 'spell_loken_pulsing_shockwave'),
(63322, 'spell_general_vezax_saronite_vapors'),
(47977, 'spell_magic_broom'),
(48025, 'spell_headless_horseman_mount'),
(54729, 'spell_winged_steed_of_the_ebon_blade'),
(71342, 'spell_big_love_rocket'),
(72286, 'spell_invincible'),
(74856, 'spell_blazing_hippogryph'),
(75614, 'spell_celestial_steed'),
(75973, 'spell_x53_touring_rocket');
SET @DIFF := 3268; -- set by TDB team
DELETE FROM `spelldifficulty_dbc` WHERE `id` BETWEEN @DIFF+0 AND @DIFF+2;
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`,`spellid2`,`spellid3`) VALUES
(@DIFF+0,50811,61547,0,0),
(@DIFF+1,57762,59990,0,0),
(@DIFF+2,57763,61489,0,0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry` IN (19938,30877);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,19938,0,0,1,1,17743,0,0,0,0,'','Awaken Peon'),
(17,0,30877,0,0,31,1,3,17326,0,0,0,'','Tag Murloc');

-- Lifebinder's Gift
UPDATE `conditions` SET `SourceGroup`=7 WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (62584,64185);
DELETE FROM `spell_bonus_data` WHERE `entry`=63544;
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(63544,0,0,0,0,'Priest - Empowered Renew');
DELETE FROM `spell_script_names` WHERE `spell_id`=-139;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(-139,'spell_priest_renew');
-- Fix up quest 9539 "Totem of Coo"
-- Totem of Akida SAI
SET @ENTRY  := 17360;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,9539,0,0,0,85,30437,0,0,0,0,0,7,0,0,0,0,0,0,0,'Totem of Akida - Quest accepted - Cast Spell on player');
-- Stillpine Ancestor Akida SAI
SET @ENTRY  := 17379;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Just Summoned - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,3,0,16995,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - set model'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,11,25035,0,0,0,0,0,1,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Akida - Script - Cast Spell'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - Set run on'),
(@ENTRY*100,9,4,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - say 0'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4154.224,-12514.75,45.35527,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,6,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4123.563,-12517.23,44.9127,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,7,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-4091.881,-12524,42.37354,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,8,0,0,0,100,0,5500,5500,0,0,69,0,0,0,0,0,0,8,0,0,0,-4058.039,-12538.57,43.96096,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,9,0,0,0,100,0,4500,4500,0,0,69,0,0,0,0,0,0,8,0,0,0,-4026.534,-12568.4,45.82222,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,10,0,0,0,100,0,3000,3000,0,0,69,0,0,0,0,0,0,8,0,0,0,-4000.155,-12598.55,54.19722,0,'Stillpine Ancestor Akida - Script - move to'), --
(@ENTRY*100,9,11,0,0,0,100,0,7500,7500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3977.5,-12627.22,63.1442,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,12,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3952.254,-12660.37,74.23783,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,13,0,0,0,100,0,6500,6500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3933.183,-12698.27,85.65151,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,14,0,0,0,100,0,4500,4500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3925.843,-12718.81,89.94553,0,'Stillpine Ancestor Akida - Script - move to'), --
(@ENTRY*100,9,15,0,0,0,100,0,3500,3500,0,0,69,0,0,0,0,0,0,8,0,0,0,-3915.914,-12743.41,98.56779,0,'Stillpine Ancestor Akida - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,4500,4500,0,0,66,0,0,0,0,0,0,19,17361,10,0,0,0,0,0,'Stillpine Ancestor Akida - Script - turn to Totem of Coo'),
(@ENTRY*100,9,17,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - say 1'),
(@ENTRY*100,9,18,0,0,0,100,0,3000,3000,0,0,11,30428,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - cast spell'),
(@ENTRY*100,9,19,0,0,0,100,0,1000,1000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Akida - Script - despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=17379;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17379,0,0, '%s urges you to follow him.',16,0,100,0,0,0, 'Stillpine Ancestor Akida'),
(17379,1,0, '%s points to the totem of Coo.',16,0,100,25,0,0, 'Stillpine Ancestor Akida');
-- add missing spells to db
DELETE FROM `spell_dbc` WHERE `Id` IN (30426,30437);
INSERT INTO `spell_dbc` (`Id`,`SchoolMask`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`Comment`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`AreaGroupId`,`EffectMiscValueB1`) VALUES
(30426,0,0,0,256,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,40,12,0,-1,0,0,28,6,0,0,0,0,0,0,0,0,0,0,0,0,0,32,1,0,0,0,0,15,0,0,0,4,0,0,0,0,0,0,0,17379,0,0,0,0,0,'Stillpine Ancestor Akida',0,0,0,0,0,0,0,1,1,0,64),
(30437,0,0,0,2304,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,36,3,0,-1,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,23,0,0,1000,0,0,0,0,0,0,0,0,30426,0,0,'Stillpine Ancestor Akida TRIGGER',0,0,0,0,0,0,0,1,0,0,0);
-- Remove Stillpine Ancestor Akida EAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17379;
-- Fix up quest 9540 "Totem of Tikti"
-- Totem of Coo SAI
SET @ENTRY  := 17361;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,9540,0,0,0,85,30442,0,0,0,0,0,7,0,0,0,0,0,0,0,'Totem of Coo - Quest accepted - Cast Spell on player');
-- Stillpine Ancestor Coo SAI
SET @ENTRY  := 17391;
UPDATE `creature_template` SET `AIName`= 'SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY*100) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Just Summoned - Run Script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,3,0,16995,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - set model'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,11,25035,0,0,0,0,0,1,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Coo - Script - Cast Spell'),
(@ENTRY*100,9,3,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - say 0'),
(@ENTRY*100,9,4,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3926.039,-12746.71,96.06779,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3926.326,-12753.71,98.44279,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,6,0,0,0,100,0,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3924.268,-12761.45,101.6928,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,7,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - say 1'),
(@ENTRY*100,9,8,0,0,0,100,0,4000,4000,0,0,11,30424,0,0,0,0,0,7,0,0,0,0,0,0,0.01745319,'Stillpine Ancestor Coo - Script - Cast Spell'),
(@ENTRY*100,9,9,0,0,0,100,0,1000,1000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - say 2'),
(@ENTRY*100,9,10,0,0,0,100,0,4000,4000,0,0,11,30473,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - cast spell'),
(@ENTRY*100,9,11,0,0,0,100,0,0,0,0,0,3,0,17019,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - set model'),
(@ENTRY*100,9,12,0,0,0,100,0,3000,3000,0,0,60,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - Fly on'),
(@ENTRY*100,9,13,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-3926.068,-12767.33,104.3799,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,14,0,0,0,100,0,1000,1000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3923.497,-12794.98,98.46323,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,15,0,0,0,100,0,4000,4000,0,0,69,0,0,0,0,0,0,8,0,0,0,-3922.687,-12832.4,89.24097,0,'Stillpine Ancestor Coo - Script - move to'),
(@ENTRY*100,9,16,0,0,0,100,0,8000,8000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Stillpine Ancestor Coo - Script - despawn');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=17391;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17391,0,0, '%s motions for you to follow him.',16,0,100,0,0,0, 'Stillpine Ancestor Coo'),
(17391,1,0, '[Furbolg] Ritk kin''chikx azul azure summit...',12,0,100,0,0,0, 'Stillpine Ancestor Coo'),
(17391,2,0, '[Furbolg] Coo xip fly... Jump ilos river. Find Tikti.',12,0,100,0,0,0, 'Stillpine Ancestor Coo');
-- add missing spells to db
DELETE FROM `spell_dbc` WHERE `Id` IN (30429,30442);
INSERT INTO `spell_dbc` (`Id`,`SchoolMask`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`Comment`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`AreaGroupId`,`EffectMiscValueB1`) VALUES
(30429,0,0,0,256,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,40,12,0,-1,0,0,28,6,0,0,0,0,0,0,0,0,0,0,0,0,0,32,1,0,0,0,0,7,0,0,0,4,0,0,0,0,0,0,0,17391,0,0,0,0,0,'Stillpine Ancestor Coo',0,0,0,0,0,0,0,1,1,0,64),
(30442,0,0,0,2304,268435456,0,0,0,0,0,0,0,1,0,0,101,0,0,0,0,36,3,0,-1,0,0,6,0,0,1,0,0,0,0,0,0,0,0,0,0,0,21,0,0,0,0,0,0,0,0,23,0,0,1000,0,0,0,0,0,0,0,0,30429,0,0,'Stillpine Ancestor Coo TRIGGER',0,0,0,0,0,0,0,1,0,0,0);
-- Delete bad spawn of Stillpine Ancestor Coo
DELETE FROM `creature` WHERE `guid`=86512;
DELETE FROM `creature_addon` WHERE `guid`=86512;
-- Remove Stillpine Ancestor Akida EAI
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=17391;
