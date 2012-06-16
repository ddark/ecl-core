-- Lock Ice Wall and make untargetable
UPDATE `gameobject_template` SET `flags`=18 WHERE `entry`=201885;
-- Saronite Rock Should be untargetable
UPDATE `gameobject_template` SET `flags`=18 WHERE `entry`=196485;
-- Spell Conditions for spell Necromantic Power 69347
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=69347;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,69347,0,31,3,37496,0,0,'','Spell 69347 targets entry 37496'),
(13,1,69347,1,31,3,37497,0,0,'','Spell 69347 targets entry 37497'),
(13,1,69347,2,31,3,37498,0,0,'','Spell 69347 targets entry 37498'),
(13,1,69347,3,31,3,37584,0,0,'','Spell 69347 targets entry 37584'),
(13,1,69347,4,31,3,37587,0,0,'','Spell 69347 targets entry 37587'),
(13,1,69347,5,31,3,37588,0,0,'','Spell 69347 targets entry 37588');

-- Spell Conditions for spell Shriek of the Highborne 70512
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=70512;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,70512,3,31,3,37584,0,0,'','Spell 70512 targets entry 37584'),
(13,1,70512,4,31,3,37587,0,0,'','Spell 70512 targets entry 37587'),
(13,1,70512,5,31,3,37588,0,0,'','Spell 70512 targets entry 37588');

-- Spell Conditions for spell Empowered Blizzard 70130
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=70130;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,70130,0,31,3,37496,0,0,'','Spell 70130 targets entry 37496'),
(13,1,70130,1,31,3,37497,0,0,'','Spell 70130 targets entry 37497'),
(13,1,70130,2,31,3,37498,0,0,'','Spell 70130 targets entry 37498');
-- Lock Halls of Reflection Portcullis
UPDATE `gameobject_template` SET `flags`=18 WHERE `entry`=201848;
-- Add script to Dragonspire Hall Runes "UBRS"
UPDATE `gameobject_template` SET `ScriptName`= 'go_dragonspire_hall_rune' WHERE `entry` BETWEEN 175194 AND 175200;
DELETE FROM `conditions` WHERE `SourceEntry` = 52264;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,0,52264,0,0,29,0,28653,5,0,0,97,"","Creature conditions for spell 52264 (Deliver stolen horse)");
DELETE FROM `spell_proc_event` WHERE `entry` = 70656;

UPDATE `quest_template` SET `NextQuestId` = 3761 WHERE `id` IN (936,3784,3762);

DELETE FROM `spell_proc_event` WHERE `entry` = 63611;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(63611,0,0,0,0,0,51154,0,0,0,0);
DELETE FROM `spell_target_position` WHERE `id` IN (30719,53140,53141,53360,54406,68328,71512);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(30719,571,5807.75,588.347,661.505,1.663),
(53140,571,5807.75,588.347,661.505,1.663),
(53141,571,5807.75,588.347,661.505,1.663),
(53360,571,5807.75,588.347,661.505,1.663),
(54406,571,5807.75,588.347,661.505,1.663),
(68328,571,5807.75,588.347,661.505,1.663),
(71512,571,5807.75,588.347,661.505,1.663);
-- Change Flags for the Body and Heart Quest
UPDATE `quest_template` SET `Flags`=`Flags`&~2, `SpecialFlags`=`SpecialFlags`|2 WHERE `id` IN (6001,6002);
-- Fix Quest 9962,9967,9970,9972,9973
UPDATE `smart_scripts` SET `target_type`=16 WHERE `entryorguid`=18398 AND `id`=1; -- Brokentoe
UPDATE `smart_scripts` SET `target_type`=16 WHERE `entryorguid`=18399 AND `id`=4; -- Murkblood Twin
UPDATE `smart_scripts` SET `target_type`=16 WHERE `entryorguid`=18400 AND `id`=5; -- Rokdar the Sundered Lord
UPDATE `smart_scripts` SET `target_type`=16 WHERE `entryorguid`=18401 AND `id`=3; -- Skra'gath
UPDATE `smart_scripts` SET `id`=5,`link`=6,`target_type`=16 WHERE `entryorguid`=18402 AND `action_type`=15; -- Warmaul Champion
UPDATE `smart_scripts` SET `id`=6 WHERE `entryorguid`=18402 AND `action_type`=45; -- Warmaul Champion
-- 2012-05-19 12:48:24 SourceEntry 52264 in `condition` table, has incorrect SourceGroup 0 (spell effectMask) set , ignoring.
UPDATE `conditions` SET `SourceGroup`=1 WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=0 AND `SourceEntry`=52264 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=0 AND `ConditionValue1`=28653 AND `ConditionValue2`=5 AND `ConditionValue3`=0;

-- 2012-05-19 12:48:18 Quest 384 has `ZoneOrSort` = -304 but `RequiredSkillId` does not have a corresponding value (185).
-- It is not clear if cooking was required on 3.3.5, so reverting it to its original state (however we are sure it is not required in Cata)
UPDATE `quest_template` SET `RequiredSkillId`=185, `RequiredSkillPoints`=1 WHERE `Id`=384;
DELETE FROM `creature_loot_template` WHERE `entry`=31813 AND `item`=36912; -- Saronite Ore
-- Update mod rep command name
UPDATE `command` SET 
    `name` = 'modify reputation',
    `help` = 'Syntax: .modify reputation #repId (#repvalue | $rankname [#delta])\nSets the selected players reputation with faction #repId to #repvalue or to $reprank.\nIf the reputation rank name is provided, the resulting reputation will be the lowest reputation for that rank plus the delta amount, if specified.\nYou can use \'.pinfo rep\' to list all known reputation ids, or use \'.lookup faction $name\' to locate a specific faction id.'
WHERE `name` = 'modify rep';

-- Fix "2012-05-20 06:46:00 ERROR: SourceEntry 52264 in `condition` table, has incorrect SourceGroup 0 (spell effectMask) set , ignoring."
UPDATE `conditions` SET
    `SourceGroup` = 1,
    `SourceId` = 0
WHERE 
    `SourceTypeOrReferenceId` = 13 AND
    `SourceEntry` = 52264 AND
    `ConditionTypeOrReference` = 29 AND
    `ConditionValue1` = 28653 AND
    `ConditionValue2` = 5;
DELETE FROM `spell_bonus_data` WHERE `entry`=633; 
INSERT INTO `spell_bonus_data` (`entry`,`comments`) VALUES (633,'Paladin - Lay on Hands'); 
UPDATE `spell_proc_event` SET `procFlags` = 332116 WHERE `entry` = 63611;
-- As of patch 3.1.0, the drop rate of Formula: Enchant Boots - Surefooted has been increased to Guaranteed (100%).
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=100 WHERE `entry`=16472 and `item`=22545;
