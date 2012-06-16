-- Missing Vehicle_Id's from UDB
UPDATE `creature_template` SET `VehicleId`=22 WHERE `entry`=24806;
UPDATE `creature_template` SET `VehicleId`=22 WHERE `entry`=24821;
UPDATE `creature_template` SET `VehicleId`=22 WHERE `entry`=24823;
UPDATE `creature_template` SET `VehicleId`=22 WHERE `entry`=24825;
UPDATE `creature_template` SET `VehicleId`=35 WHERE `entry`=26586;
UPDATE `creature_template` SET `VehicleId`=35 WHERE `entry`=26590;
UPDATE `creature_template` SET `VehicleId`=42 WHERE `entry`=27061;
UPDATE `creature_template` SET `VehicleId`=80 WHERE `entry`=27886;
UPDATE `creature_template` SET `VehicleId`=88 WHERE `entry`=27923;
UPDATE `creature_template` SET `VehicleId`=90 WHERE `entry`=27932;
UPDATE `creature_template` SET `VehicleId`=134 WHERE `entry`=28115;
UPDATE `creature_template` SET `VehicleId`=152 WHERE `entry`=28182;
UPDATE `creature_template` SET `VehicleId`=118 WHERE `entry`=28399;
UPDATE `creature_template` SET `VehicleId`=121 WHERE `entry`=28468;
UPDATE `creature_template` SET `VehicleId`=126 WHERE `entry`=28665;
UPDATE `creature_template` SET `VehicleId`=138 WHERE `entry`=28817;
UPDATE `creature_template` SET `VehicleId`=146 WHERE `entry`=28875;
UPDATE `creature_template` SET `VehicleId`=148 WHERE `entry`=28985;
UPDATE `creature_template` SET `VehicleId`=148 WHERE `entry`=28999;
UPDATE `creature_template` SET `VehicleId`=149 WHERE `entry`=29005;
UPDATE `creature_template` SET `VehicleId`=179 WHERE `entry`=29579;
UPDATE `creature_template` SET `VehicleId`=186 WHERE `entry`=29677;
UPDATE `creature_template` SET `VehicleId`=197 WHERE `entry`=29754;
UPDATE `creature_template` SET `VehicleId`=203 WHERE `entry`=29863;
UPDATE `creature_template` SET `VehicleId`=216 WHERE `entry`=30108;
UPDATE `creature_template` SET `VehicleId`=231 WHERE `entry`=30331;
UPDATE `creature_template` SET `VehicleId`=240 WHERE `entry`=30487;
UPDATE `creature_template` SET `VehicleId`=257 WHERE `entry`=30895;
UPDATE `creature_template` SET `VehicleId`=258 WHERE `entry`=31050;
UPDATE `creature_template` SET `VehicleId`=259 WHERE `entry`=31110;
UPDATE `creature_template` SET `VehicleId`=262 WHERE `entry`=31125;
UPDATE `creature_template` SET `VehicleId`=264 WHERE `entry`=31157;
UPDATE `creature_template` SET `VehicleId`=287 WHERE `entry`=31838;
UPDATE `creature_template` SET `VehicleId`=315 WHERE `entry`=31857;
UPDATE `creature_template` SET `VehicleId`=315 WHERE `entry`=31858;
UPDATE `creature_template` SET `VehicleId`=315 WHERE `entry`=31861;
UPDATE `creature_template` SET `VehicleId`=315 WHERE `entry`=31862;
UPDATE `creature_template` SET `VehicleId`=296 WHERE `entry`=32198;
UPDATE `creature_template` SET `VehicleId`=296 WHERE `entry`=32208;
UPDATE `creature_template` SET `VehicleId`=302 WHERE `entry`=32348;
UPDATE `creature_template` SET `VehicleId`=305 WHERE `entry`=32483;
UPDATE `creature_template` SET `VehicleId`=295 WHERE `entry`=32511;
UPDATE `creature_template` SET `VehicleId`=287 WHERE `entry`=32513;
UPDATE `creature_template` SET `VehicleId`=308 WHERE `entry`=32535;
UPDATE `creature_template` SET `VehicleId`=313 WHERE `entry`=32640;
UPDATE `creature_template` SET `VehicleId`=90 WHERE `entry`=32682;
UPDATE `creature_template` SET `VehicleId`=347 WHERE `entry`=33108;
UPDATE `creature_template` SET `VehicleId`=356 WHERE `entry`=33364;
UPDATE `creature_template` SET `VehicleId`=357 WHERE `entry`=33366;
UPDATE `creature_template` SET `VehicleId`=358 WHERE `entry`=33369;
UPDATE `creature_template` SET `VehicleId`=370 WHERE `entry`=33432;
UPDATE `creature_template` SET `VehicleId`=371 WHERE `entry`=33651;
UPDATE `creature_template` SET `VehicleId`=373 WHERE `entry`=33670;
UPDATE `creature_template` SET `VehicleId`=392 WHERE `entry`=34146;
UPDATE `creature_template` SET `VehicleId`=395 WHERE `entry`=34150;
UPDATE `creature_template` SET `VehicleId`=396 WHERE `entry`=34151;
UPDATE `creature_template` SET `VehicleId`=399 WHERE `entry`=34183;
UPDATE `creature_template` SET `VehicleId`=435 WHERE `entry`=34776;
UPDATE `creature_template` SET `VehicleId`=514 WHERE `entry`=35069;
UPDATE `creature_template` SET `VehicleId`=548 WHERE `entry`=36812;
UPDATE `creature_template` SET `VehicleId`=615 WHERE `entry`=37980;
UPDATE `creature_template` SET `VehicleId`=647 WHERE `entry`=38711;
UPDATE `creature_template` SET `VehicleId`=648 WHERE `entry`=38712;
UPDATE `creature_template` SET `VehicleId`=700 WHERE `entry`=39682;
UPDATE `creature_template` SET `VehicleId`=753 WHERE `entry`=39759;
UPDATE `creature_template` SET `VehicleId`=763 WHERE `entry`=39819;
UPDATE `creature_template` SET `VehicleId`=711 WHERE `entry`=39860;
UPDATE `creature_template` SET `VehicleId`=747 WHERE `entry`=40479;
UPDATE `creature_template` SET `VehicleId`=604 WHERE `entry`=37827;
UPDATE `creature_template` SET `VehicleId`=610 WHERE `entry`=37952;
-- From PitCrawler
UPDATE `creature_template` SET `vehicleId`=202 WHERE `entry`=29903; -- Frostbite
UPDATE `creature_template` SET `vehicleId`=241 WHERE `entry`=30388; -- Stormhoof
UPDATE `creature_template` SET `vehicleId`=25 WHERE `entry`=25194; -- Kor'kron Riding Wolf
UPDATE `creature_template` SET `vehicleId`=108 WHERE `entry`=28639; -- Heb'Jin's Bat
-- Fixing Required Races on Quests 8553 and 8554 to allow for Alliance completion
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `id`=8554;
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `id`=8553;
-- Fixing Next Quest for Quest 8552
UPDATE `quest_template` SET `NextQuestIDChain`=8553 WHERE `id`=8552;
ALTER TABLE `item_template` ADD `flagsCustom` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `maxMoneyLoot`;
UPDATE `item_template` SET `flagsCustom`=`flagsCustom`|0x1 WHERE `Duration`<0;
UPDATE `item_template` SET `duration`=ABS(`duration`);
ALTER TABLE `item_template` CHANGE `Duration` `duration` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ArmorDamageModifier`;
-- Grunt Ounda should only have a female model
UPDATE `creature_model_info` SET
 `modelid_other_gender` = 0
WHERE `modelid` = 4260;
-- Update drop chance of Ensorcelled Parchment from 0.2% to 100%
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=100 WHERE `entry`=1570 AND `item`=3706;
-- Change spawntime from 2 secs to 3 minutes
UPDATE `gameobject` SET `spawntimesecs`=180 WHERE `id`=1765;
-- Ai and Script Update/Addition for Taragaman the Hungerer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11520;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11520;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11520;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11520, 0, 0, 0, 0, 0, 85, 2, 5000, 5000, 15000, 20000, 11, 18072, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Taragaman the Hungerer  - Cast Uppercut'),
(11520, 0, 1, 0, 0, 0, 75, 2, 8000, 8000, 20000, 25000, 11, 11970, 1, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 0, 'Taragaman the Hungerer - Cast Fire Nova');

-- Ai and Script Update/Addition for Jergosh the Invoker
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11518;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11518;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11518;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11518, 0, 1, 0, 0, 0, 75, 2, 12000, 12000, 30000, 30000, 11, 20800, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Jergosh the Invoker - Cast Immolat'),
(11518, 0, 0, 0, 0, 0, 85, 2, 30000, 30000, 120000, 120000, 11, 11980, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Jergosh the Invoker - Cast Curse of Weakness');

-- Ai and Script Update/Addition for Bazzalan
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11519;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11519;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11519;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11519, 0, 1, 0, 0, 0, 75, 2, 3000, 5000, 12000, 15000, 11, 2818, 1, 32, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Bazzalan - Cast Poison'),
(11519, 0, 0, 0, 0, 0, 85, 2, 8000, 8000, 16000, 17000, 11, 14873, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Bazzalan - Cast Sinister Strike');

-- Ai and Script Update/Addition for Oggleflint
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11517;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11517;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11517;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(11517, 0, 0, 0, 0, 0, 70, 2, 8000, 8000, 15000, 15000, 11, 40505, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Oggleflint - Cast Cleave');
-- Fix faction for Draconic for Dummies objects
UPDATE `gameobject_template` SET `faction`=35 WHERE `entry` IN (180665,180667);
 -- EAI to SAI Convert Ragefire Trogg
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11318;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11318;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11318;
INSERT INTO smart_scripts (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (11318, 0, 0, 0, 9, 0, 100, 2, 0, 5, 5000, 8000, 11, 11976, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Ragefire Trogg - Cast Strike');

-- EAI to SAI Convert Earthborer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11320;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11320;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11320;
INSERT INTO smart_scripts (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (11320, 0, 0, 0, 0, 0, 70, 2, 6000, 6000, 10000, 10000, 11, 18070, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Earthborer - Cast Earthborer Acid');

-- EAI to SAI Convert Searing Blade Cultist
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11322;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11322;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11322;
INSERT INTO smart_scripts (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (11322, 0, 0, 0, 0, 0, 85, 2, 12000, 12000, 30000, 30000, 11, 18266, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Searing Blade Cultist - Cast Curse of Agony');

-- EAI to SAI Convert Searing Blade Enforcer
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=11323;
DELETE FROM `smart_scripts` WHERE `entryorguid`=11323;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=11323;
INSERT INTO smart_scripts (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (11323, 0, 0, 0, 0, 0, 75, 2, 8000, 8000, 10000, 10000, 11, 8242, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Searing Blade Enforcer - Cast Shield Slam');
-- update the book to always drop of ragnaros
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=11502 AND `item`=21110;
DELETE FROM `spell_script_names` WHERE `spell_id` IN (50341,50344);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(50341, 'spell_gen_touch_the_nightmare'),
(50344, 'spell_gen_dream_funnel');
-- Add Generic Harpoon gun script to prevent movement
UPDATE `creature_template` SET `ScriptName`= 'npc_generic_harpoon_cannon' WHERE `entry` IN (27714,30066,30337);
/* Quest:  Kick, What Kick? - 12589 by Nay */

-- Lucky Wilhelm: 0xF150006D960041CB
-- Drostan:       0xF130006EA80041CA
-- Apple:         0xF130006D950041C8

-- Remove old conditions, now done in cpp
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=51330;

-- Spells conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (51331,51332,51366);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 51331, 0, 0, 31, 0, 3, 28053, 0, 0, 0, '', 'Hit Apple - Apple - Q: Kick, What Kick?'),
(13, 1, 51332, 0, 0, 31, 0, 3, 28054, 0, 0, 0, '', 'Miss Apple - Wilhelm - Q: Kick, What Kick?'),
(13, 1, 51366, 0, 0, 31, 0, 3, 28093, 0, 0, 0, '', 'Miss Apple, Hit Bird - Sholazar Tickbird - Q: Kick, What Kick?');

-- Assign script to spell
DELETE FROM `spell_script_names` WHERE `spell_id`=51330;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(51330, 'spell_q12589_shoot_rjr');

-- Spellclick spell for Wilhelm
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=28054;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(28054,50556,1,0);

-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (28053,28328,30737,28346);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(28053,0,0,1,0, NULL), -- Apple
(28328,0,0,257,0, NULL), -- Drostan
(30737,0,0,256,0, NULL), -- Nesingwary Game Warden
(28346,0,0,1,0, NULL); -- Crunchy

-- Put Apple in Wilhelm's head
DELETE FROM `vehicle_template_accessory` WHERE `entry`=28054 AND `accessory_entry`=28053;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`) VALUES
(28054, 28053, -1, 0, 'Lucky Wilhelm - Apple', 6, 10000);

-- Says and yells
DELETE FROM `creature_text` WHERE `entry`=28328 OR (`entry`=28054 AND `groupid` IN (0,1));
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(28328, 0, 0, 'The only thing hurt is your pride, lad. Buck up!', 12, 0, 100, 11, 0, 0, 'Drostan to Lucky Wilhelm'),
(28328, 0, 1, 'Stop whining. You''ve still got your luck.', 12, 0, 100, 11, 0, 0, 'Drostan to Lucky Wilhelm'),
(28328, 0, 2, 'Bah, it''s an improvement.', 12, 0, 100, 0, 0, 0, 'Drostan to Lucky Wilhelm'),
(28328, 0, 3, 'Calm down lad, it''s just a birdshot!', 12, 0, 100, 0, 0, 0, 'Drostan to Lucky Wilhelm'),
(28054, 0, 0, 'Not the ''stache! Now I''m asymmetrical!', 12, 0, 100, 5, 0, 0, 'Lucky Wilhelm'),
(28054, 0, 1, 'Ouch! That''s it, I quit the target business!', 12, 0, 100, 0, 0, 0, 'Lucky Wilhelm'),
(28054, 0, 2, 'My ear! You grazed my ear!', 12, 0, 100, 0, 0, 0, 'Lucky Wilhelm'),
(28054, 1, 0, 'Good shot!', 12, 0, 100, 4, 0, 0, 'Lucky Wilhelm');

/* * Hit: */
/* player casts Shoot RJR on Lucky */
/* apple gets hit by 51331 (Hit Apple) by player */
/* after that apple casts 51371 (Apple Falls to ground) on self */
/* Wilhelm says Good shot! */
/* reward killcredit 28053 */

/* * Miss: */
/* player casts Shoot RJR on Lucky */
/* lucky gets hit by 51332 (Miss Apple) by player */
/* lucky says random text */
/* drostan says random text */

/* * Miss, Hit Bird - guessed */
/* player casts Shoot RJR on Lucky */
/* bird gets hit by 51366 (Miss Apple, Hit Bird and dies) */
/* bird gets hit by 51369 (Tickbird Signal to Fall) */
/* lucky says random text */
/* drostan says random text */
-- Set same flag for diff_entry_1
UPDATE `creature_template` SET `npcflag`=129 WHERE `entry`=30796;
-- Creature addon
DELETE FROM `creature_template_addon` WHERE `entry` IN (26421,26321,26333);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(26421,0,0,1,0, NULL), -- Woodlands Walker
(26321,0,0,1,64, '47044'), -- Lothalor Ancient (Cosmetic - Confused State Visual (Big))
(26333,0,0,1,0, '32566 46967'); -- Corrupted Lothalor Ancient (Purple Banish State, Purple Banish State - Breath)

-- Woodlands Walker already has spellclick spell: 47575 (Strengthen the Ancients: On Interact Dummy to Woodlands Walker)

-- Monster emotes
DELETE FROM `creature_text` WHERE `entry` IN (26421,26321);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(26421, 0, 0, 'Breaking off a piece of its bark, the %s hands it to you before departing.', 16, 0, 100, 0, 0, 0, 'Woodlands Walker'),
(26421, 1, 0, 'The %s is angered by your request and attacks!', 16, 0, 100, 0, 0, 0, 'Woodlands Walker'),
(26321, 0, 0, 'The %s gives you its thanks.', 16, 0, 100, 0, 0, 1525, 'Lothalor Ancient');

-- Assign scripts to spells
DELETE FROM `spell_script_names` WHERE `spell_id` IN (47575,47530);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(47575, 'spell_q12096_q12092_dummy'),
(47530, 'spell_q12096_q12092_bark');

/*
- player spellclicks Woodlands Walker, casts 47575 on the tree Woodlands Walker: two outcomes:

- - tree turns enemy:
* say The %s is angered by your request and attacks!
* change faction to 14
* start attack

- - tree stays friendly:
* cast 47550 (Create Bark of the Walkers)on player
* say Breaking off a piece of its bark, the %s hands it to you before departing.
* despawn


- player uses item on Lothalor Ancient (47530 (Bark of the Walkers)):
* tree says The %s gives you its thanks.
* aura 47044 (Cosmetic - Confused State Visual (Big)) is removed
* despawns after 4 secs
*/
-- Add missing gossip for quest 9738 "Lost in Action"
DELETE FROM `gossip_menu` WHERE `entry` IN (7521,7520,7540,7519,7525);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(7521,9121),(7520,9119),(7540,9144),(7519,9118),(7525,9125);
-- Add Gossip Options
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7520,7540);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(7520,0,0,"Alright, Bite, I'll let you out.",1,1,0,0,0,0,''),
(7540,0,0,"Naturalist, please grant me your boon.",1,1,0,0,0,0,'');
-- Conditions for the gossip options
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (15) AND `SourceGroup` IN (7520,7540);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`comment`) VALUES
(15,7520,0,0,9,9738,'Gossip option 0 requires quest 9738 active'),
(15,7540,0,0,9,9738,'Gossip option 0 requires quest 9738 active');  -- cast 34906 on player
-- Add gossip to creature
UPDATE `creature_template` SET `gossip_menu_id`=7521 WHERE `entry`=17885;
UPDATE `creature_template` SET `gossip_menu_id`=7520 WHERE `entry`=17893;
UPDATE `creature_template` SET `gossip_menu_id`=7519 WHERE `entry`=17890;
UPDATE `creature_template` SET `gossip_menu_id`=7525 WHERE `entry`=17827;
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (17893,17957);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17893,0,0, 'Over here!  Yeah, over here... I''m in this cage!!!',14,0,100,0,0,0, 'Naturalist Bite'),
(17893,1,0, 'Uh oh!  It would appear that all of the noise you''ve been making has attracted some unwanted attention!',12,0,100,0,0,0, 'Naturalist Bite'),
(17957,0,0, 'Intrudersss with the prisssoner!  Kill them!!!',14,0,100,0,0,0, 'Coilfang Champion');
-- Earthbinder Rayge SAI
SET @ENTRY  := 17885;
UPDATE `creature` SET `position_x`=296.6974,`position_y`=-362.373,`position_z`=50.15062,`orientation`=5.5676 WHERE `guid`=86372;
UPDATE `creature_template` SET `unit_flags`=512,`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `bytes2`=257,`auras`= '31526' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,6,0,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,'Earthbinder Rayge - On Gossip Hello - Give Kill Credit');
-- Weeder Greenthumb SAI
SET @ENTRY  := 17890;
UPDATE `creature_template` SET `unit_flags`=512,`AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=257,`auras`= '29266' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,6,0,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,'Weeder Greenthumb - On Gossip Hello - Give Kill Credit');
-- Claw SAI
SET @ENTRY  := 17827;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,7400,7400,20000,20000,11,39435,0,0,0,0,0,5,0,0,0,0,0,0,0,'Claw - Combat - Cast Feral Charge'),
(@ENTRY,0,1,0,0,0,100,6,2400,2400,10600,21200,11,31429,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Combat - Cast Echoing Roar'),
(@ENTRY,0,2,0,0,0,100,6,5000,5000,30500,30500,11,34971,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Combat - Cast Frenzy'),
(@ENTRY,0,3,0,0,0,100,6,5300,5300,11100,21500,11,34298,0,0,0,0,0,2,0,0,0,0,0,0,0,'Claw - Combat - Cast Maul'),
(@ENTRY,0,4,0,2,1,100,7,0,20,0,0,80,@ENTRY*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - HP@20% - Run Script'),
(@ENTRY,0,5,0,64,0,100,6,0,0,0,0,33,17894,0,0,0,0,0,7,0,0,0,0,0,0,0,'Claw - On Gossip Hello - Give Kill Credit'),
(@ENTRY,0,6,0,6,0,100,6,0,0,0,0,45,0,1,0,0,0,0,19,17826,100,0,0,0,0,0,'Claw - On Death - Set Data on Swamplord Musel''ek'),
(@ENTRY,0,7,0,38,0,100,6,0,1,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - On dataset - Set Phase 1'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,28,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Remove all auras'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set Run on'),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,289.2553,-129.7001,29.82101,2.495821,'Claw - Script - move to'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,2,1660,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set faction'),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,18,525072,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set unitflags'),
(@ENTRY*100,9,5,0,0,0,100,0,0,0,0,0,3,0,2289,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set displayid'),
(@ENTRY*100,9,6,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set npcflags'),
(@ENTRY*100,9,7,0,0,0,100,0,4000,4000,4000,4000,69,0,0,0,0,0,0,8,0,0,0,290.5323,-125.3524,29.69708,1.824913,'Claw - Script - move to'),
(@ENTRY*100,9,8,0,0,0,100,0,0,0,0,0,3,17894,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set entry'),
(@ENTRY*100,9,9,0,0,0,100,0,0,0,0,0,18,557824,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set unitflags'),
(@ENTRY*100,9,10,0,0,0,100,0,0,0,0,0,90,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set bytes1'),
(@ENTRY*100,9,11,0,0,0,100,0,500,500,500,500,81,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Claw - Script - Set npcflags');
-- Swamplord Musel'ek SAI
SET @ENTRY  := 17826;
SET @SPELL1 := 18813; -- Knock Away
SET @SPELL2 := 22907; -- Shoot
SET @SPELL3 := 31615; -- Hunter's Mark
SET @SPELL4 := 31946; -- Throw Freezing Trap
SET @SPELL5 := 31623; -- Aimed Shot
SET @SPELL6 := 34974; -- Multi-Shot
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,0,0,100,6,35000,38000,30000,40000,11,@SPELL1,1,0,0,0,0,2,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Knock Away'),
(@ENTRY,0,2,0,0,0,100,6,500,1000,2300,3900,11,@SPELL2,1,0,0,0,0,2,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Knock Away'),
(@ENTRY,0,3,0,0,0,100,6,4000,8000,12000,16000,11,@SPELL3,0,0,0,0,0,6,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Hunter''s Mark'),
(@ENTRY,0,4,0,0,0,100,6,4000,8000,12000,16000,11,@SPELL4,0,0,0,0,0,5,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Throw Freezing Trap'),
(@ENTRY,0,5,6,0,0,100,6,12500,21500,20000,30000,11,@SPELL5,0,0,0,0,0,2,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Aimed Shot'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Set ranged weapon'),
(@ENTRY,0,7,8,0,0,100,6,12500,21500,20000,30000,11,@SPELL6,0,0,0,0,0,2,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Cast Multi-Shot'),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,40,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Set ranged weapon'),
(@ENTRY,0,9,0,4,0,100,6,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - On Aggro - Say 1'),
(@ENTRY,0,10,0,5,0,100,6,5,5000,5000,1,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - On Kill - Say 2'),
(@ENTRY,0,11,12,6,0,100,6,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - On Death - Say 3'),
(@ENTRY,0,12,0,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,17827,100,0,0,0,0,0,'Swamplord Musel''ek - On Death - Set Data on Claw'),
(@ENTRY,0,13,14,38,0,100,6,0,1,0,0,70,0,0,0,0,0,0,19,17827,100,1,0,0,0,0,'Swamplord Musel''ek - On dataset - Respawn dead claw'),
(@ENTRY,0,14,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Swamplord Musel''ek - Combat - Say 0');
-- NPC talk text insert from sniff
DELETE FROM `creature_ai_texts` WHERE `entry` BETWEEN -468 AND -463;
DELETE FROM `creature_text` WHERE `entry`=17826;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(17826,0,0, 'Beast! Obey me! Kill them at once!',14,0,100,0,0,10383, 'Swamplord Musel''ek bear'),
(17826,1,0, 'We fight to the death!',14,0,100,0,0,10384, 'Swamplord Musel''ek Aggro'),
(17826,1,1, 'I will end this quickly...',14,0,100,0,0,10385, 'Swamplord Musel''ek Aggro'),
(17826,1,2, 'Acalah pek ecta!',14,0,100,0,0,10386, 'Swamplord Musel''ek Aggro'),
(17826,2,0, 'Krypta!',14,0,100,0,0,10387, 'Swamplord Musel''ek Slay'),
(17826,2,1, 'It is finished.',14,0,100,0,0,10388, 'Swamplord Musel''ek Slay'),
(17826,3,0, 'Well... done...',14,0,100,0,0,10389, 'Swamplord Musel''ek Death');
-- Swamplord Musel'ek
SET @NPC := 56551;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=288.5823,`position_y`=-121.8309,`position_z`=29.70329,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,288.5823,-121.8309,29.70329,0,0,0,100,0),
(@PATH,2,281.5271,-120.3684,29.75141,0,0,0,100,0),
(@PATH,3,274.0677,-122.0538,29.80962,0,0,0,100,0),
(@PATH,4,281.5271,-120.3684,29.75141,0,0,0,100,0);
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=39368;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(39368,0,0, 'All right, you twisted mess of broken gears, let''s get to work!',12,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,1,0, 'I am going to teach you all what it takes to be a proper soldier!',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,2,0, 'The first thing you need to learn is proper discipline.',12,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,3,0, 'Show me that discipline with a proper salute when I say so!',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,4,0, 'Okay, recruits, salute!',12,0,100,66,0,0, 'Drill Sergeant Steamcrank'),
(39368,5,0, 'Nice job!',12,0,100,273,0,0, 'Drill Sergeant Steamcrank'),
(39368,6,0, 'When you go into combat, it is important that you know how to intimidate the enemy with a deafening battle roar!',12,0,100,396,0,0, 'Drill Sergeant Steamcrank'),
(39368,7,0, 'When I give the signal,let loose your greatest roar!',12,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,8,0, 'Let me hear that battle roar!',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,9,0, 'Wow, nice and scary!',12,0,100,0,0,0, 'Drill Sergeant Steamcrank'),
(39368,10,0, 'Remember though, a key factor in winning any battle is positive reinforcement.',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,11,0, 'Reward your fellow soldiers in battle with a resounding cheer.  Now, cheer at me when I tell you to!',12,0,100,1,0,0, 'Drill Sergeant Steamcrank'),
(39368,12,0, 'Everyone, cheer!',12,0,100,0,0,0, 'Drill Sergeant Steamcrank'),
(39368,13,0, 'Fantastic!',12,0,100,273,0,0, 'Drill Sergeant Steamcrank'),
(39368,14,0, 'However, the most important part of battle is how you celebrate a good hard earned victory!',12,0,100,396,0,0, 'Drill Sergeant Steamcrank'),
(39368,15,0, 'Show me your best victory dance when I give the signal!',12,0,100,5,0,0, 'Drill Sergeant Steamcrank'),
(39368,16,0, 'Now, dance!',12,0,100,0,0,0, 'Drill Sergeant Steamcrank'),
(39368,17,0, 'Superb!',12,0,100,273,0,0, 'Drill Sergeant Steamcrank'),
(39368,18,0, 'You might be the best set of recruits I''ve ever seen!  Let''s go through all of that again!',12,0,100,396,0,0, 'Drill Sergeant Steamcrank');
SET @YANNI := 25459;
SET @CARPET := 25460;
SET @Q_CarpetRide := 11636;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@YANNI,@CARPET) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@CARPET*100,@CARPET*100+1) AND `source_type`=9;
INSERT INTO `smart_scripts`(`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)VALUES
(@YANNI,0,0,0,62,0,100,0,9162,0,0,0,11,45600,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Yanni - Cast Call of the Carpet on player'),
(@YANNI,0,1,0,62,0,100,0,9162,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Yanni - On Gossip option - Close gossip'),

(@CARPET,0,0,0,25,0,100,0,0,0,0,0,80,@CARPET*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - Call actionlist 2546000 on spawn'),
(@CARPET,0,1,0,40,0,100,0,14,0,0,0,80,@CARPET*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - On WP reach - Call actionlist 2546001'),

(@CARPET*100,9,0,0,0,0,100,0,1000,1000,0,0,11,45603,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Cast Ride Carpet on summoner'),
(@CARPET*100,9,1,0,0,0,100,0,100,100,0,0,53,0,@CARPET,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - Load waypath'),

(@CARPET*100+1,9,0,0,0,0,100,0,0,0,0,0,15,@Q_CarpetRide,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Give quest credit'),
(@CARPET*100+1,9,1,0,0,0,100,0,500,500,0,0,28,45602,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Remove aura 45602'),
(@CARPET*100+1,9,2,0,0,0,100,0,100,100,0,0,28,46598,0,0,0,0,0,23,0,0,0,0,0,0,0, 'Amazing Carpet - Remove aura 46598'),
(@CARPET*100+1,9,3,0,0,0,100,0,200,200,0,0,41,200,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Amazing Carpet - Despawn');

DELETE FROM `waypoints` WHERE `entry`=@CARPET;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@CARPET,1,2751.96,6133.514,214.3789, 'Start WP'),
(@CARPET,2,2728.81,6146.472,213.5733, ''),
(@CARPET,3,2634.248,6188.829,185.9068, ''),
(@CARPET,4,2597.958,6255.91,159.7123, ''),
(@CARPET,5,2538.717,6307.643,138.9901, ''),
(@CARPET,6,2393.912,6321.946,85.79566, ''),
(@CARPET,7,2420.326,6461.604,89.3512, ''),
(@CARPET,8,2439.194,6494.39,84.93455, ''),
(@CARPET,9,2496.371,6496.766,78.76788, ''),
(@CARPET,10,2567.008,6550.509,79.90676, ''),
(@CARPET,11,2652.553,6572.071,58.54562, ''),
(@CARPET,12,2725.122,6642.299,41.57339, ''),
(@CARPET,13,2773.236,6694.341,25.49007, ''),
(@CARPET,14,2797.658,6718.523,9.212306, 'Run SmartAI script 2546001');

DELETE FROM `creature_template_addon` WHERE `entry` IN (@CARPET,@YANNI);
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES
(@CARPET,257, '61307'),
(@YANNI,257,NULL);

-- Update gossip_menu to proper entry from sniff (delete wrong one 21233)
UPDATE `creature_template` SET `gossip_menu_id`=9162,`AiName`= 'SmartAI' WHERE `entry`=@YANNI;
UPDATE `creature_template` SET `exp`=2,`minlevel`=72,`maxlevel`=72,`unit_flags`=`unit_flags`|520,`speed_run`=1.42857,`VehicleId`=317,`AiName`='SmartAI',`InhabitType`=5 WHERE `entry`=@CARPET;

UPDATE `creature_model_info` SET `bounding_radius`=0.31,`combat_reach`=1,`gender`=2 WHERE `modelid`=28082; -- Amazing Flying Carpet

DELETE FROM `gossip_menu` WHERE `entry` IN (21233,9162);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9162,12417);

UPDATE `quest_template` SET `SpecialFlags`=`SpecialFlags`|2 WHERE `Id`=@Q_CarpetRide;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=9162;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9162;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(15,9162,0,0,9,@Q_CarpetRide,0,0,0,'Show gossip option 9162 if player has quest Carpet Ride');

DELETE FROM `spell_target_position` WHERE `id`=45601;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(45601,571,2753.64,6131.41,210.4463,2.892622);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=45602;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13,1,45602,0,0,31,0,3,@CARPET,0,0,0, '', 'Ride Carpet - Target Amazing Flying Carpet');

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@CARPET;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@CARPET,46598,1,0);
-- Misc db updates
DELETE FROM `creature_template_addon` WHERE `entry`=30476;
INSERT INTO `creature_template_addon` (`entry`,`auras`) VALUES (30476,'56852');
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry` IN (30476,30599,30640,32193,30343);
-- fix Sholazar Tickbird InhabitType
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=28093;
-- Update Felboar
SET @ENTRY := 21878;
UPDATE `creature` SET `spawndist`=5,`MovementType`=1,`curhealth`=1,`spawntimesecs`=300 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `bytes2`=1,`auras`='33908' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,100,100,30000,55000,11,35570,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Felboar - Combat - Cast charge');

-- Update Dormant Infernal
SET @ENTRY := 21080;
UPDATE `creature_template_addon` SET `bytes2`=1,`auras`='36055' WHERE `entry`=@ENTRY;

-- Update Kagrosh
SET @ENTRY := 21725;
UPDATE `creature_template_addon` SET `bytes2`=1,`auras`='29266' WHERE `entry`=@ENTRY;
UPDATE `creature` SET `position_x`=-3421.365,`position_y`=2289.388,`position_z`=33.63479,`orientation`=3.874631 WHERE `guid`=86869;
DELETE FROM `creature` WHERE `guid`=86870;

-- Update Invis Deathforge Caster
SET @ENTRY := 21210;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (@ENTRY,1,'36393');
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=@ENTRY;
-- Fix up Shadowmoon Harbinger
SET @ENTRY := 21795;
UPDATE `creature` SET `spawndist`=5,`MovementType`=1,`curhealth`=1,`curmana`=0 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_template_addon` WHERE `entry`=@ENTRY;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (@ENTRY,1,'37467 37509');
-- Bron Goldhammer SAI
SET @ENTRY := 19395;
SET @SPELL := 33822;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `AIName`= '' WHERE `entry`=19394;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN (@ENTRY,19394);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,30000,30000,100000,100000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - OOC - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard Say 0'),
(@ENTRY*100,9,1,0,0,0,100,0,6000,6000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - Script - Bron Goldhammer Say 0'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - Script - Bron Goldhammer Say 1'),
(@ENTRY*100,9,3,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard Say 1'),
(@ENTRY*100,9,4,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - Script - Bron Goldhammer Say 2'),
(@ENTRY*100,9,5,0,0,0,100,0,2000,2000,0,0,1,2,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard Say 2'),
(@ENTRY*100,9,6,0,0,0,100,0,2500,2500,0,0,11,@SPELL,3,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - cast spell'),
(@ENTRY*100,9,7,0,0,0,100,0,1000,1000,0,0,90,7,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard set bytes 1'),
(@ENTRY*100,9,8,0,0,0,100,0,3000,3000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Bron Goldhammer - Script - Bron Goldhammer Say 3'),
(@ENTRY*100,9,9,0,0,0,100,0,2000,2000,0,0,91,7,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard remove bytes 1'),
(@ENTRY*100,9,10,0,0,0,100,0,500,500,0,0,1,3,0,0,0,0,0,11,19394,15,0,0,0,0,0, 'Bron Goldhammer - Script - Barimoke Wildbeard Say 3');
-- Bron Goldhammer text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-325,-326,-327,-328);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s blinks, a perplexed expression crossing his face.',16,0,100,0,0,0, 'Bron Goldhammer'),
(@ENTRY,1,0, 'What, with me fists?',12,0,100,6,0,0, 'Bron Goldhammer'),
(@ENTRY,2,0, 'I''m... not sure that''s a good idea, ''Moke. Ye might get hurt...',12,0,100,1,0,0, 'Bron Goldhammer'),
(@ENTRY,3,0, 'Er... ''Moke?',12,0,100,6,0,0, 'Bron Goldhammer');
-- Barimoke Wildbeard text
SET @ENTRY  := 19394;
UPDATE `creature_template_addon` SET `bytes1`=0 WHERE `entry`=@ENTRY;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-329,-330,-331,-332);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Bron! ''Ey Bron! ''Ey Bron! Hit me!',12,0,100,1,0,0, 'Barimoke Wildbeard'),
(@ENTRY,1,0, 'Nae, that''s fer wimps. Hit me with yer hammer!',12,0,100,274,0,0, 'Barimoke Wildbeard'),
(@ENTRY,2,0, 'DO IT, YE PANSEY!',12,0,100,5,0,0, 'Barimoke Wildbeard'),
(@ENTRY,3,0, '...THAT WAS GREAT!',12,0,100,5,0,0, 'Barimoke Wildbeard');
-- Kolkar Pack Runner SAI
SET @ENTRY := 3274;
SET @SPELL := 9128;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_summons` WHERE `id`=8;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-769);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,@SPELL,32,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Pack Runner - On Aggro - Cast Battle Shout'),
(@ENTRY,0,1,2,6,0,3,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Pack Runner - On Death 3% - Say 0'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,12,3395,4,60000,0,0,0,8,0,0,0,-1209.65,-2738.38,102.646,4.99352, 'Kolkar Pack Runner - On Death 3% - Summon Verog the Dervish');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I am slain! Summon Verog!',14,0,100,0,0,0, 'Kolkar Pack Runner');

-- Kolkar Marauder SAI
SET @ENTRY := 3275;
SET @SPELL := 11976;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,80,0,12000,12000,7000,7000,11,@SPELL,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Kolkar Marauder - Combat - Cast Strike'),
(@ENTRY,0,1,2,6,0,3,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Marauder - On Death 3% - Say 0'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,12,3395,4,60000,0,0,0,8,0,0,0,-1209.65,-2738.38,102.646,4.99352, 'Kolkar Marauder - On Death 3% - Summon Verog the Dervish');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I am slain! Summon Verog!',14,0,100,0,0,0, 'Kolkar Marauder');

-- Kolkar Bloodcharger SAI
SET @ENTRY := 3397;
SET @SPELL1 := 6742;
SET @SPELL2 := 172;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,35000,35000,10000,10000,11,@SPELL1,32,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Bloodcharger - Combat - Cast Bollodlust'),
(@ENTRY,0,1,0,0,0,100,0,20000,20000,5000,5000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Kolkar Bloodcharger - Combat - Cast Corruption'),
(@ENTRY,0,2,3,6,0,3,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Kolkar Bloodcharger - On Death 3% - Say 0'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,12,3395,4,60000,0,0,0,8,0,0,0,-1209.65,-2738.38,102.646,4.99352, 'Kolkar Bloodcharger - On Death 3% - Summon Verog the Dervish');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I am slain! Summon Verog!',14,0,100,0,0,0, 'Kolkar Bloodcharger');

-- Clara Charles SAI
SET @ENTRY := 5917;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_summons` WHERE `id` BETWEEN 7 AND 19;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,1,1,15,0,0,12,583,4,60000,0,0,0,8,0,0,0,-9232.11,342.473,74.4399,4.31658, 'Clara Charles - On LOS - Summon Defias Ambusher');

-- Defias Dockmaster SAI
SET @ENTRY := 6846;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-232);
DELETE FROM `creature_ai_summons` WHERE `id` IN (4,5,6);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Defias Dockmaster - On Aggro - Say 0'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,12,6866,4,60000,0,0,0,8,0,0,0,-9967.55,-135.956,24.5909,0.170326, 'Defias Dockmaster - On Aggro - Summon Defias Bodyguard'),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,12,6866,4,60000,0,0,0,8,0,0,0,-9958.49,-140.526,24.2409,4.0015, 'Defias Dockmaster - On Aggro - Summon Defias Bodyguard'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,12,6866,4,60000,0,0,0,8,0,0,0,-9964.59,-140.567,24.5105,0.741307, 'Defias Dockmaster - On Aggro - Summon Defias Bodyguard');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'The Brotherhood will not be hampered by insects.',12,0,100,0,0,0, 'Defias Dockmaster');

-- Mekgineer Thermaplugg SAI
SET @ENTRY := 7800;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-188,-189,-190,-191);
DELETE FROM `creature_ai_summons` WHERE `id` IN (2,3);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - On Aggro - Say 0'),
(@ENTRY,0,1,0,5,0,100,2,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - On Kill - Say 3'),
(@ENTRY,0,2,0,0,0,100,2,40000,40000,40000,60000,11,11130,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - Combat - Cast Knock Away'),
(@ENTRY,0,3,0,0,0,100,2,15000,15000,15000,35000,11,10101,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - Combat - Cast Knock Away'),
(@ENTRY,0,4,5,0,0,100,2,30000,30000,30000,30000,12,7915,4,60000,0,0,0,8,0,0,0,-521.934,693.13,-327.005,2.95, 'Mekgineer Thermaplugg - Combat - Summon Walking Bomb'),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,12,7915,4,60000,0,0,0,8,0,0,0,-535.318,649.987,-326.494,2.72, 'Mekgineer Thermaplugg - Combat - Summon Walking Bomb'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - Combat - Say 2'),
(@ENTRY,0,7,0,0,0,100,2,20000,20000,40000,65000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mekgineer Thermaplugg - Combat - Say 1');
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'USURPERS!!! GNOMEREGAN IS MINE!!!',14,0,100,0,0,5807, 'Mekgineer Thermaplugg'),
(@ENTRY,1,0, 'My machines are the future! They''ll destroy you all!',14,0,100,0,0,5808, 'Mekgineer Thermaplugg'),
(@ENTRY,2,0, 'Explosions! MORE explosions! I''ve got to have more explosions!',14,0,100,0,0,5809, 'Mekgineer Thermaplugg'),
(@ENTRY,3,0, '...and stay dead! He got served!',14,0,100,0,0,5810, 'Mekgineer Thermaplugg');

-- Shy-Rotam SAI
SET @ENTRY := 10737;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_summons` WHERE `id` IN (1);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,5000,5000,5000,10000,11,14100,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shy-Rotam - Combat - Cast Terrifying Roar'),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,22000,27000,11,13443,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shy-Rotam - Combat - Cast Rend'),
(@ENTRY,0,2,0,0,0,100,0,2000,3000,15000,20000,11,3604,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Shy-Rotam - Combat - Cast Tendon Rip'),
(@ENTRY,0,3,0,0,0,100,1,0,50,0,0,12,10741,1,180000,0,0,0,8,0,0,0,8074.84,-3840,690.061,4.6, 'Shy-Rotam - @50%HP - Summon Sian-Rotam');

-- Jammal'an the Prophet SAI
SET @ENTRY := 5710;
SET @QUEST_SOULGRINDER := 11000;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-821,-822,-823,-824);
DELETE FROM `creature_ai_summons` WHERE `id` IN (20,21);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,10,0,100,0,0,85,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - On OOC Los - Say Line 0 (P0)"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - On OOC Los - Set Phase 1"),
(@ENTRY,0,2,0,0,1,100,0,0,0,31400,76200,1,1,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jammal'an the Prophet - In Combat - Say Line 2"),
(@ENTRY,0,3,0,0,1,100,0,8100,35600,20100,52900,11,12468,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jammal'an the Prophet - In Combat - Cast Flamestrike"),
(@ENTRY,0,4,0,0,1,100,0,6200,16500,26100,36600,11,8376,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - In Combat - Cast Earthgrab Totem"),
(@ENTRY,0,5,6,1,1,100,0,16300,19900,31400,53500,11,12479,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jammal'an the Prophet - In Combat - Cast Hex of Jammal'an"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,1,2,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jammal'an the Prophet - On Hex of Jammal'an Cast - Say Line 1"),
(@ENTRY,0,7,8,2,1,100,1,0,30,0,0,11,12492,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - At 30% HP - Cast Healing Wave"),
(@ENTRY,0,8,0,61,1,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - At 30% HP - Say Line 3"),
(@ENTRY,0,9,0,5,1,100,0,0,0,0,0,4,5863,0,0,0,0,0,1,0,0,0,0,0,0,0,"Jammal'an the Prophet - Killed Unit - Play Sound 5863"),
(@ENTRY,0,10,11,6,1,100,0,0,0,0,0,12,5721,1,300000,0,0,0,8,0,0,0,-472.02,105.823,-94.6299,0.0301925,"Jammal'an the Prophet - On Death - Summon Dreamscyte"),
(@ENTRY,0,11,0,61,1,100,0,0,0,0,0,12,5720,1,300000,0,0,0,8,0,0,0,-467.099,85.2944,-94.7318,3.95326,"Jammal'an the Prophet - On Death - Summon Weaver");
-- Jammal'an the Prophet text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0,"The shield be down! Rise up Atal'ai! Rise up!",14,0,100,0,0,0,"Jammal'an the Prophet"), -- 821
(@ENTRY,1,0,"Join us!",14,0,100,0,0,0,"Jammal'an the Prophet"), -- 823
(@ENTRY,2,0,"The Soulflayer comes!",14,0,100,0,0,0,"Jammal'an the Prophet"), -- 822
(@ENTRY,3,0,"Hakkar shall live again!",14,0,100,0,0,0,"Jammal'an the Prophet"); -- 824
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` IN (13408,13409,13410,13411);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 13408, 0, 0, 15, 0, 1503, 0, 0, 0, 0, '', 'Hellfire Fortifications - Alliance -All classes other than dk'),
(19, 0, 13409, 0, 0, 15, 0, 1503, 0, 0, 0, 0, '', 'Hellfire Fortifications - Horde -All classes other than dk'),
(19, 0, 13410, 0, 0, 15, 0, 32, 0, 0, 0, 0, '', 'Hellfire Fortifications - Alliance -Only dk'),
(19, 0, 13411, 0, 0, 15, 0, 32, 0, 0, 0, 0, '', 'Hellfire Fortifications - Horde -Only dk');
-- Hogger EAI to SAI Conversion
SET @ENTRY := 448;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,4,0,100,0,0,0,0,0,11,6268,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Hogger - On aggro - Cast Rushing Charge'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Hogger - On Aggro - Random Say'),
(@ENTRY,0,2,0,0,0,100,0,1300,3700,20000,25000,11,6730,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Hogger - Combat - Cast Headbutt'),
(@ENTRY,0,3,0,0,0,100,0,4800,6000,30000,30000,11,6016,1,0,0,0,0,2,0,0,0,0,0,0,0, 'Hogger - Combat - Cast Armor Pierce');
-- Hogger creature text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY,0,0, 'More bones to gnaw on...',12,0,100,0,0,0, 'Hogger Agro Say 1'),
(@ENTRY,0,1, 'Grrrr... fresh meat!',12,0,100,0,0,0, 'Hogger Agro Say 2');
-- Fix SAI for Lothos Riftwaker
UPDATE `smart_scripts` SET `event_param1`=5750 WHERE `entryorguid`=14387 AND `id`=0;
UPDATE `smart_scripts` SET `event_param1`=0 WHERE `entryorguid`=14387 AND `id`=1;
-- Mok'rash SAI
SET @ENTRY := 1493;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO smart_scripts (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,5000,10000,300000,600000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Mok''Rash - OOC - Random Yell'),
(@ENTRY,0,1,0,0,0,85,0,8000,8000,15000,15000,11,40505,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Mok''Rash - Combat - Cast Cleave');
-- Mok'rash Text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO creature_text (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY, 0, 0, 'SMOTTS, I HAVE YOUR LITTLE BELT....COME GET IT!', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 1, 'SMOTTS! HEY, SMOTTS! COME OUT AND PLAY!', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 2, 'DON''T LET THIS STATUE BE MY ONLY COMPANY, COME OUT AND PLAY!', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 3, 'COME OUT TO JANEIRO''S POINT. I''M WAITING FOR YOU, SMOTTS...', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 4, 'I PROMISE I WON''T KILL YOUR CREW THIS TIME. HAH! BUT MY BROTHER MIGHT EAT THEM!', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 5, 'HAVE YOU RUN OUT OF SHIPS TO SEND? WHERE IS YOUR COURAGE?', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell'),
(@ENTRY, 0, 6, 'I HAVE YOUR LITTLE BELT TIED AROUND MY FINGER, SMOTTS. DON''T YOU WANT IT BACK?', 14, 0, 100, 0, 0, 0, 'Mok''rash Yell');
-- Add Missing spell to Jotunheim Rapid-Fire Harpoon close 6435
UPDATE `creature_template` SET `spell1`=56585 WHERE `entry`=30337;
-- Wailing Winds missing aura
UPDATE `creature_template_addon` SET `auras`='56769' WHERE `entry`=30450;
-- Disturbed Taunka Ancestor missing aura
DELETE FROM `creature_template_addon` WHERE `entry`=30458;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (30458,1,43167);
-- Witch Doctor Mau'ari SAI
SET @ENTRY  := 10307;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `quest_start_scripts` WHERE `id`=975;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,975,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - On Quest Accept - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - Remove npc flags'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - Set emote state use standing'),
(@ENTRY*100,9,2,0,0,0,100,0,9000,9000,0,0,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - Set emote state use standing'),
(@ENTRY*100,9,3,0,0,0,100,0,1000,1000,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - add npc flags'),
(@ENTRY*100,9,4,0,0,0,100,0,0,0,0,0,15,975,0,0,0,0,0,7,0,0,0,0,0,0,0,'Witch Doctor Mau''ari - Script - Complete quest 975');
-- Frostblade Shrine Script for Quest The Cleansing
UPDATE `gameobject_template` SET `ScriptName`= 'go_frostblade_shrine' WHERE `entry`=186649;
