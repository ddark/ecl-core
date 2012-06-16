UPDATE `version` SET `db_version`='TDB 335.11.46' LIMIT 1;
-- Criteria conditions for Once Bitten, Twice Shy achievement
DELETE FROM `achievement_criteria_data` WHERE `type`=12 AND `criteria_id` IN (13013, 13012, 13011, 12780);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`scriptname`) VALUES
(13013, 12, 1, 0, ""), -- heroic
(13012, 12, 1, 0, ""), -- heroic
(13011, 12, 0, 0, ""), -- normal
(12780, 12, 0, 0, ""); -- normalUPDATE `quest_template` SET `OfferRewardText` = 'Good, $C. You have done well in serving the Dark Lady. Your continued perseverance and ambition will be of great use to the Lady''s subjects. Return to me again in the future. Perhaps I will have other tasks for you that will aid the Dark Lady in her attempts at overtaking the Lich King and completely freeing the Scourge.', `RequestItemsText` = 'There are a hundred other tasks awaiting my attention, $C. Do you have the books?' WHERE `Id` = 14356;
DELETE FROM `areatrigger_tavern` WHERE `id` IN (98, 4109, 4300, 4378, 4380, 4498, 4608, 5314, 5315, 5316, 5317);
INSERT INTO `areatrigger_tavern` (`id`, `name`) VALUES 
(98, 'Nesingwary''s Expedition'),
(4109, 'Tranquillen - Upper level Inn'),
(4300, 'Cenarion Refugee - Outside Inn'),
(4378, 'Stonebreaker Hold Inn'),
(4380, 'Falcon Watch Inn'),
(4498, 'Old Hillsbrad Foothills Inn'),
(4608, 'Sanctum Of The Stars - Upper level Inn'),
(5314, 'Wyrmrest Temple'),
(5315, 'Wyrmrest Temple'),
(5316, 'Wyrmrest Temple'),
(5317, 'Wyrmrest Temple');
DELETE FROM `item_template` WHERE `entry`=49867;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `WDBVerified`) VALUES
(49867, 12, 0, -1, 'Crown Chemical Co. Supplies', 11448, 1, 0, 8192, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, NULL, 0, -1, 0, -1, 0, 0, NULL, 0, -1, 0, -1, 0, 0, NULL, 0, -1, 0, -1, 0, 0, NULL, 0, -1, 0, -1, 0, 0, NULL, 0, -1, 0, -1, 4, 'You can hear the clink of glass... dont drop it!', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 423, 0, 0, 0, 0, 14545);
-- Love is in the Air 
-- Quests Missing Text ... By Albis

UPDATE `quest_template` SET `RequestItemsText` ='The cologne isn''t going to give itself out, you know.$B$BGet spraying!' , `OfferRewardText` ='Nice work, $N! People will be buying Crown colognes by the crate-load now that they''ve had a chance to try them.$B$BHere''s a little something for helping us out.' WHERE `Id` = 24635;
UPDATE `quest_template` SET `RequestItemsText` ='That perfume''s not going to spray itself, you know.$B$BGet going!' , `OfferRewardText` ='Great work, $N! People will come running to buy Crown perfumes now that they''ve had a chance to sample their wonders.$B$BHere''s a little something for helping us out.' WHERE `Id` = 24629;
UPDATE `quest_template` SET `RequestItemsText` ='You know, those chocolates aren''t going to fling themselves at people.$B$BYou need to get to work!' , `OfferRewardText` ='Lovely work, $N! People will be tripping over one another to get Crown chocolates now that they''ve had a chance to taste those sweet, romantic treats.$B$BHere''s a little something for helping us out.' WHERE `Id` = 24636;
UPDATE `quest_template` SET `OfferRewardText` ='Hey. You got some time on your hands? I could use someone like you.' WHERE `Id` IN (24804,24805);
UPDATE `quest_template` SET `RequestItemsText` ='You analyze that reek yet, kid?' , `OfferRewardText` ='Hey, thanks, kid. Give it over, let''s take a look.$B$B<He takes the device from you and fiddles with it.>$B$BOh, that ain''t good.' WHERE `Id` IN (24655,24536);
UPDATE `quest_template` SET `RequestItemsText` ='Did they toss ya a crate to deliver?' , `OfferRewardText` ='You got it, huh? Good job, kid. Top notch. Let''s see what we what we got here.$B$B<He cracks open the crate and rummages around inside.' WHERE `Id` IN (24656,24541);
UPDATE `quest_template` SET `OfferRewardText` ='You... You''re not Snivel. Did he send you? He''s so late, I had started to give up hope...$B$B<Tears start welling up in the woman''s eyes once she realizes that you aren''t there to deliver a message from Snivel.>$B$BThat''s not like my Snivel, but what choice is there?' WHERE `Id` = 24848;
UPDATE `quest_template` SET `OfferRewardText` ='You''re not Snivel. He was supposed to be here an hour ago! What have you done with him?$B$B<Roka seems to calm down when you tell her that you''re looking for Snivel, too. Then the tears start to well up in her eyes.>$B$BThis isn''t like my Snivel. Do you think something''s happened to him?' WHERE `Id` = 24850;
UPDATE `quest_template` SET `RequestItemsText` ='Who are you?' , `OfferRewardText` ='All he talked about was leaving town with all his money? Then he really has abandoned me, hasn''t he?$B$BOh, $N. I was such a fool to fall for him, but how could I help myself? He was so irresistible!' WHERE `Id` = 24849;
UPDATE `quest_template` SET `RequestItemsText` ='Who are you?' , `OfferRewardText` ='All he talked about was leaving town with all his money? Then he really has abandoned me, hasn''t he?$B$BI can''t believe I fell for such a horrible goblin! But he was so irresistible when we first met.' WHERE `Id` = 24851;
UPDATE `quest_template` SET `RequestItemsText` ='Did you find the guy, or did he crawl under a rock?' , `OfferRewardText` ='You got his ledger? Really? That''s great, $N. There''s probably loads of good information in here.' WHERE `Id` IN (24657,24576);
UPDATE `quest_template` SET `OfferRewardText` ='Fantastic. Help is exactly what I need.' WHERE `Id` IN (24792,24793);
UPDATE `quest_template` SET `RequestItemsText` ='I don''t remember ordering a cleaing service... why yes, I am Apothecary Hummel.$B$B...wait, what is the meaning of this? You think these meaningless papers can stop me? Hah!' , `OfferRewardText` ='What we do here is none of your business...' WHERE `Id` = 11488;
UPDATE `quest_template` SET `RequestItemsText` ='Did you take care of those no-good scheming villains?' , `OfferRewardText` ='What''ve you got there?$B$BOh hey, this is big. Real big. Most of the crazy details in one little package. Thanks - you really helped us reel this all in. Good working with ya.' WHERE `Id` IN (24745,14483);
UPDATE `quest_template` SET `RequestItemsText` ='Did you teach ''em a lesson?' , `OfferRewardText` ='Good job, kid. You deserve a little somethin''. And hey, come back tomorrow if you get the time; I might have a job for ya.' WHERE `Id` IN (24658,24665,24666,24664,24663,24659,24660,24662,24647,24638,24651,24652,24650,24649,24645,24648);
-- Horde
UPDATE `quest_template` SET `PrevQuestId`=24805 WHERE `Id`=24536; -- Uncommon Scents completed before starting Something Stinks
UPDATE `quest_template` SET `PrevQuestId`=24536 WHERE `Id`=24541; -- Something Stinks completed before starting Pilfering Perfume
UPDATE `quest_template` SET `PrevQuestId`=24541 WHERE `Id`=24850; -- Pilfering Perfume completed before starting Snivel's Sweetheart
UPDATE `quest_template` SET `PrevQuestId`=24850 WHERE `Id`=24851; -- Snivel's Sweetheart completed before starting Hot On The Trail
UPDATE `quest_template` SET `PrevQuestId`=24851 WHERE `Id`=24576; -- Hot On The Trail completed before starting A Friendly Chat...

UPDATE `quest_template` SET `PrevQuestId`=24576 WHERE `Id` IN (24638,24645,24647,24648,24649,24650,24651,24652); -- A Friendly Chat... completed before starting Crushing the Crown

-- Alliance
UPDATE `quest_template` SET `PrevQuestId`=24804 WHERE `Id`=24655; -- Uncommon Scents completed before starting Something Stinks
UPDATE `quest_template` SET `PrevQuestId`=24655 WHERE `Id`=24656; -- Something Stinks completed before starting Pilfering Perfume
UPDATE `quest_template` SET `PrevQuestId`=24656 WHERE `Id`=24848; -- Pilfering Perfume completed before starting Snivel's Sweetheart
UPDATE `quest_template` SET `PrevQuestId`=24848 WHERE `Id`=24849; -- Snivel's Sweetheart completed before starting Hot On The Trail
UPDATE `quest_template` SET `PrevQuestId`=24849 WHERE `Id`=24657; -- Hot On The Trail completed before starting A Friendly Chat...

UPDATE `quest_template` SET `PrevQuestId`=24657 WHERE `Id` IN (24658,24659,24660,24662,24663,24664,24665,24666); -- A Friendly Chat... completed before starting Crushing the Crown
DELETE FROM `creature_involvedrelation` WHERE `quest`=24745;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(38066, 24745); -- A - Something is in the Air (and it Ain't Love) - Inspector Snip Snagglebolt
SET @GUID := 40489;
SET @NPC :=3254;

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+7;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID  ,@NPC,1,1,1,0,0, 10.3997021, -2316.43555, 92.1945343, 2.91896486,120,0,0,1,0,0,0,0,0),
(@GUID+1,@NPC,1,1,1,0,0,346.736572 , -2606.38916, 91.7916641, 1.58010352,120,0,0,1,0,0,0,0,0),
(@GUID+2,@NPC,1,1,1,0,0, 83.07206  , -2545.2085 , 98.107666 , 1.86412442,120,0,0,1,0,0,0,0,0),
(@GUID+3,@NPC,1,1,1,0,0,-93.53362  , -2287.0835 , 92.35358  , 0.8518014 ,120,0,0,1,0,0,0,0,0),
(@GUID+4,@NPC,1,1,1,0,0,-618.9995,-2738.234,91.91664,4.303216,120,0,0,1,0,0,0,0,0),
(@GUID+5,@NPC,1,1,1,0,0,-491.2982,-2473.443,93.66666,2.670027,120,0,0,1,0,0,0,0,0),
(@GUID+6,@NPC,1,1,1,0,0,-614.9523,-2721.66 ,93.85735,1.412064,120,0,0,1,0,0,0,0,0),
(@GUID+7,@NPC,1,1,1,0,0,-617.4864,-2710.463,96.7657 ,1.582084,120,0,0,1,0,0,0,0,0);

SET @NPC1=@GUID*10;
SET @NPC2=(@GUID+1)*10;
SET @NPC3=(@GUID+2)*10;
SET @NPC4=(@GUID+3)*10;
SET @NPC5=(@GUID+6)*10;
SET @NPC6=(@GUID+7)*10;

DELETE FROM `waypoint_data` WHERE `id` IN (@NPC1,@NPC2,@NPC3,@NPC4,@NPC5,@NPC6);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
-- 1st
(@NPC1,1,6.336712,-2322.309,92.16663,0,0,0,0,100,0),
-- 2nd
(@NPC2,1,346.4289,-2573.332,91.79166,0,0,0,0,100,0),
-- 3rd
(@NPC3,1,81.53384,-2540.826,97.38716,0,0,0,0,100,0),
(@NPC3,2,80.28384,-2537.076,96.63716,0,0,0,0,100,0),
(@NPC3,3,79.03384,-2533.326,95.38716,0,0,0,0,100,0),
(@NPC3,4,78.28384,-2530.326,94.63716,0,0,0,0,100,0),
(@NPC3,5,77.03384,-2526.576,93.63716,0,0,0,0,100,0),
(@NPC3,6,76.49564,-2523.443,93.66665,0,0,0,0,100,0),
-- 4th
(@NPC4,1,-88.46167,-2281.137,92.69763,0,0,0,0,100,0),
(@NPC4,2,-92.46167,-2285.637,91.94763,0,0,0,0,100,0),
-- 5th
(@NPC5,1,-614.9318,-2720.435,94.01199,0,0,0,0,100,0),
-- 6th
(@NPC6,1,-617.2921,-2722.99,93.41664,0,0,0,0,100,0),
(@NPC6,2,-617.3077,-2721.99,93.41664,0,0,0,0,100,0),
(@NPC6,3,-617.3398,-2719.99,94.16664,0,0,0,0,100,0),
(@NPC6,4,-617.3867,-2716.99,95.04164,0,0,0,0,100,0),
(@NPC6,5,-617.4336,-2713.99,95.91664,0,0,0,0,100,0),
(@NPC6,6,-617.4805,-2710.99,96.66664,0,0,0,0,100,0),
(@NPC6,7,-617.503,-2708.995,97.04164,0,0,0,0,100,0),
(@NPC6,8,-617.503,-2708.995,97.04164,0,0,0,0,100,0);

DELETE FROM `creature_addon` WHERE `guid` IN (@GUID,@GUID+1,@GUID+2,@GUID+3,@GUID+6,@GUID+7);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@GUID  ,@NPC1,0,0,0,0,''),
(@GUID+1,@NPC2,0,0,0,0,''),
(@GUID+2,@NPC3,0,0,0,0,''),
(@GUID+3,@NPC4,0,0,0,0,''),
(@GUID+6,@NPC5,0,0,0,0,''),
(@GUID+7,@NPC6,0,0,0,0,'');
SET @NPC := 26841;
SET @GUID := 40497; -- need 9

SET @SPAWN0 := (@GUID  )*10;
SET @SPAWN1 := (@GUID+1)*10;
SET @SPAWN2 := (@GUID+2)*10;
SET @SPAWN3 := (@GUID+3)*10;
SET @SPAWN4 := (@GUID+4)*10;
SET @SPAWN5 := (@GUID+5)*10;
SET @SPAWN6 := (@GUID+6)*10;
SET @SPAWN7 := (@GUID+7)*10;
SET @SPAWN8 := (@GUID+8)*10;

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+8;
INSERT INTO creature (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID  ,@NPC,571,1,1,0,0,4690.292,859.291,154.1271,2.914072,120,0,0,1,0,0,0,0,0),
(@GUID+1,@NPC,571,1,1,0,0,4362.418,750.5102,123.7846,6.194367,120,0,0,1,0,0,0,0,0),
(@GUID+2,@NPC,571,1,1,0,0,4191.03,645.8215,109.6868,0.4027403,120,0,0,1,0,0,0,0,0),
(@GUID+3,@NPC,571,1,1,0,0,4098.345,657.0866,99.36436,5.185792,120,0,0,1,0,0,0,0,0),
(@GUID+4,@NPC,571,1,1,0,0,4065.753,709.2308,108.47,1.153499,120,0,0,1,0,0,0,0,0),
(@GUID+5,@NPC,571,1,1,0,0,4012.895,495.4877,82.1595,0.8684024,120,0,0,1,0,0,0,0,0),
(@GUID+6,@NPC,571,1,1,0,0,3941.605,552.9745,144.0994,0.06546114,120,0,0,1,0,0,0,0,0),
(@GUID+7,@NPC,571,1,1,0,0,3995.586,447.6094,88.55691,1.320955,120,0,0,1,0,0,0,0,0),
(@GUID+8,@NPC,571,1,1,0,0,3869.004,707.384,134.3378,4.695541,120,0,0,1,0,0,0,0,0);

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID AND @GUID+8;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@GUID  ,@SPAWN0,0,0,0,0,''),
(@GUID+1,@SPAWN1,0,0,0,0,''),
(@GUID+2,@SPAWN2,0,0,0,0,''),
(@GUID+3,@SPAWN3,0,0,0,0,''),
(@GUID+4,@SPAWN4,0,0,0,0,''),
(@GUID+5,@SPAWN5,0,0,0,0,''),
(@GUID+6,@SPAWN6,0,0,0,0,''),
(@GUID+7,@SPAWN7,0,0,0,0,''),
(@GUID+8,@SPAWN8,0,0,0,0,'');

DELETE FROM `waypoint_data` WHERE `id` IN (@SPAWN0,@SPAWN1,@SPAWN2,@SPAWN3,@SPAWN4,@SPAWN5,@SPAWN6,@SPAWN7,@SPAWN8);
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
-- 1st
(@SPAWN0,0,4716.777,833.6211,169.0006,0,0,0,0,100,0),
(@SPAWN0,1,4643.756,855.9798,132.5562,0,0,0,0,100,0),
(@SPAWN0,2,4550.864,812.4362,133.6673,0,0,0,0,100,0),
(@SPAWN0,3,4532.678,762.772,130.1951,0,0,0,0,100,0),
(@SPAWN0,4,4566.182,662.6984,132.7506,0,0,0,0,100,0),
(@SPAWN0,5,4592.511,595.6938,130.1674,0,0,0,0,100,0),
(@SPAWN0,6,4732.632,631.5569,164.584,0,0,0,0,100,0),
(@SPAWN0,7,4716.777,833.6211,169.0006,0,0,0,0,100,0),
(@SPAWN0,8,4643.756,855.9798,132.5562,0,0,0,0,100,0),
(@SPAWN0,9,4550.864,812.4362,133.6673,0,0,0,0,100,0),
-- 2nd
(@SPAWN1,0,4431.805,596.8371,157.1775,0,0,0,0,100,0),
(@SPAWN1,1,4128.16,507.4055,198.8118,0,0,0,0,100,0),
(@SPAWN1,2,4102.405,567.1112,198.8118,0,0,0,0,100,0),
(@SPAWN1,3,4112.486,636.6321,86.95068,0,0,0,0,100,0),
(@SPAWN1,4,4141.771,704.1605,67.97847,0,0,0,0,100,0),
(@SPAWN1,5,4191.388,726.6014,98.11736,0,0,0,0,100,0),
(@SPAWN1,6,4247.502,724.9836,182.4229,0,0,0,0,100,0),
(@SPAWN1,7,4295.807,746.8245,210.1174,0,0,0,0,100,0),
(@SPAWN1,8,4387.15,744.5955,93.08962,0,0,0,0,100,0),
(@SPAWN1,9,4428.509,680.8868,91.33962,0,0,0,0,100,0),
(@SPAWN1,10,4431.805,596.8371,157.1775,0,0,0,0,100,0),
(@SPAWN1,11,4128.16,507.4055,198.8118,0,0,0,0,100,0),
(@SPAWN1,12,4102.405,567.1112,198.8118,0,0,0,0,100,0),
-- 3rd
(@SPAWN2,0,4170.111,627.0887,100.283,0,0,0,0,100,0),
(@SPAWN2,1,4265.816,644.1154,136.2274,0,0,0,0,100,0),
(@SPAWN2,2,4272.799,551.5093,50.92185,0,0,0,0,100,0),
(@SPAWN2,3,4378.531,451.3199,54.28299,0,0,0,0,100,0),
(@SPAWN2,4,4277.019,345.219,121.2274,0,0,0,0,100,0),
(@SPAWN2,5,4185.893,458.5754,118.5608,0,0,0,0,100,0),
(@SPAWN2,6,4170.111,627.0887,100.283,0,0,0,0,100,0),
(@SPAWN2,7,4265.816,644.1154,136.2274,0,0,0,0,100,0),
(@SPAWN2,8,4272.799,551.5093,50.92185,0,0,0,0,100,0),
-- 4th
(@SPAWN3,0,4464.15,712.9612,99.36437,0,0,0,0,100,0),
(@SPAWN3,1,4466.412,769.1019,99.36437,0,0,0,0,100,0),
(@SPAWN3,2,4427.949,785.3342,99.36437,0,0,0,0,100,0),
(@SPAWN3,3,4382.415,794.0613,99.36437,0,0,0,0,100,0),
(@SPAWN3,4,4312.128,808.5213,99.36437,0,0,0,0,100,0),
(@SPAWN3,5,4206.404,817.2534,99.36437,0,0,0,0,100,0),
(@SPAWN3,6,4089.363,771.5425,99.36437,0,0,0,0,100,0),
(@SPAWN3,7,4114.452,637.4808,99.36437,0,0,0,0,100,0),
(@SPAWN3,8,4265.095,661.3358,99.36437,0,0,0,0,100,0),
(@SPAWN3,9,4366.876,678.4272,99.36437,0,0,0,0,100,0),
(@SPAWN3,10,4433.122,674.1555,99.36437,0,0,0,0,100,0),
(@SPAWN3,11,4464.15,712.9612,99.36437,0,0,0,0,100,0),
(@SPAWN3,12,4466.412,769.1019,99.36437,0,0,0,0,100,0),
(@SPAWN3,13,4427.949,785.3342,99.36437,0,0,0,0,100,0),
-- 5th
(@SPAWN4,0,4331.604,778.9,114.7446,0,0,0,0,100,0),
(@SPAWN4,1,4270.823,698.3784,130.4668,0,0,0,0,100,0),
(@SPAWN4,2,4232.598,681.8058,126.7724,0,0,0,0,100,0),
(@SPAWN4,3,4156.661,638.471,129.439,0,0,0,0,100,0),
(@SPAWN4,4,4062.89,681.9251,102.9113,0,0,0,0,100,0),
(@SPAWN4,5,4096.761,758.9566,123.5501,0,0,0,0,100,0),
(@SPAWN4,6,4134.598,799.989,109.8835,0,0,0,0,100,0),
(@SPAWN4,7,4189.475,840.5444,114.6335,0,0,0,0,100,0),
(@SPAWN4,8,4274.875,812.3191,101.3001,0,0,0,0,100,0),
(@SPAWN4,9,4331.604,778.9,114.7446,0,0,0,0,100,0),
(@SPAWN4,10,4270.823,698.3784,130.4668,0,0,0,0,100,0),
(@SPAWN4,11,4232.598,681.8058,126.7724,0,0,0,0,100,0),
-- 6th
(@SPAWN5,0,3769.598,454.0081,82.1595,0,0,0,0,100,0),
(@SPAWN5,1,3879.825,441.5815,82.1595,0,0,0,0,100,0),
(@SPAWN5,2,3926.388,447.295,82.1595,0,0,0,0,100,0),
(@SPAWN5,3,4017.082,501.3171,82.1595,0,0,0,0,100,0),
(@SPAWN5,4,4015.132,597.8423,82.1595,0,0,0,0,100,0),
(@SPAWN5,5,3923.788,576.8113,82.1595,0,0,0,0,100,0),
(@SPAWN5,6,3865.991,561.2335,82.1595,0,0,0,0,100,0),
(@SPAWN5,7,3795.942,538.189,82.1595,0,0,0,0,100,0),
(@SPAWN5,8,3769.598,454.0081,82.1595,0,0,0,0,100,0),
(@SPAWN5,9,3879.825,441.5815,82.1595,0,0,0,0,100,0),
(@SPAWN5,10,3926.388,447.295,82.1595,0,0,0,0,100,0),
-- 7th
(@SPAWN6,0,3886.876,810.7806,134.3378,0,0,0,0,100,0),
(@SPAWN6,1,3868.72,688.4549,134.3378,0,0,0,0,100,0),
(@SPAWN6,2,3883.254,607.1956,134.3378,0,0,0,0,100,0),
(@SPAWN6,3,3904.998,559.2425,134.3378,0,0,0,0,100,0),
(@SPAWN6,4,3969.396,561.8792,148.5877,0,0,0,0,100,0),
(@SPAWN6,5,4010.678,638.0726,130.6155,0,0,0,0,100,0),
(@SPAWN6,6,3976.813,756.3585,134.3378,0,0,0,0,100,0),
(@SPAWN6,7,3886.876,810.7806,134.3378,0,0,0,0,100,0),
(@SPAWN6,8,3868.72,688.4549,134.3378,0,0,0,0,100,0),
(@SPAWN6,9,3883.254,607.1956,134.3378,0,0,0,0,100,0),
-- 8th
(@SPAWN7,0,4187.318,438.9777,88.55692,0,0,0,0,100,0),
(@SPAWN7,1,4151.397,351.4095,88.55692,0,0,0,0,100,0),
(@SPAWN7,2,4106.679,347.3126,88.55692,0,0,0,0,100,0),
(@SPAWN7,3,4056.414,373.3088,88.55692,0,0,0,0,100,0),
(@SPAWN7,4,3994.193,440.1974,88.55692,0,0,0,0,100,0),
(@SPAWN7,5,4076.892,564.8895,88.55692,0,0,0,0,100,0),
(@SPAWN7,6,4178.652,558.3406,88.55692,0,0,0,0,100,0),
(@SPAWN7,7,4187.318,438.9777,88.55692,0,0,0,0,100,0),
(@SPAWN7,8,4151.397,351.4095,88.55692,0,0,0,0,100,0),
(@SPAWN7,9,4106.679,347.3126,88.55692,0,0,0,0,100,0),
-- 9th
(@SPAWN8,0,3886.876,810.7806,134.3378,0,0,0,0,100,0),
(@SPAWN8,1,3868.72,688.4549,134.3378,0,0,0,0,100,0),
(@SPAWN8,2,3883.254,607.1956,134.3378,0,0,0,0,100,0),
(@SPAWN8,3,3904.998,559.2425,134.3378,0,0,0,0,100,0),
(@SPAWN8,4,3969.396,561.8792,148.5877,0,0,0,0,100,0),
(@SPAWN8,5,4010.678,638.0726,130.6155,0,0,0,0,100,0),
(@SPAWN8,6,3976.813,756.3585,134.3378,0,0,0,0,100,0),
(@SPAWN8,7,3886.876,810.7806,134.3378,0,0,0,0,100,0),
(@SPAWN8,8,3868.72,688.4549,134.3378,0,0,0,0,100,0),
(@SPAWN8,9,3883.254,607.1956,134.3378,0,0,0,0,100,0);
-- Love is in the Air
SET @OGUID := 24399;
SET @CGUID := 40506;
SET @OLDGUID := 40489; -- wrong guids
SET @EVENT := 8;

-- Quest chain
DELETE FROM `creature_questrelation` WHERE `quest` IN (24804,24657,24656,24848,24849);
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(38293, 24804), -- A - Uncommon Scents - Junior Inspector
(38325, 24657), -- A - Friendly Chat... - Marion Sutton
(38066, 24656), -- A - Pilfering Perfume - Inspector Snip Snagglebolt
(38066, 24848), -- A - Fireworks At The Gilded Rose - Inspector Snip Snagglebolt
(38325, 24849); -- A - Hot On The Trail - Marion Sutton

DELETE FROM `creature_involvedrelation` WHERE `quest` IN (24804,24657,24656,24848,24849);
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(38066, 24804), -- A - Uncommon Scents - Inspector Snip Snagglebolt
(38066, 24657), -- A - Friendly Chat... - Inspector Snip Snagglebolt
(38066, 24656), -- A - Pilfering Perfume - Inspector Snip Snagglebolt
(38325, 24848), -- A - Fireworks At The Gilded Rose - Marion Sutton
(38325, 24849); -- A - Hot On The Trail - Marion Sutton

-- Loot: Crown Chemical Co. Supplies
DELETE FROM `gameobject_loot_template` WHERE `entry`=27766;
INSERT INTO `gameobject_loot_template` VALUES 
(27766, 49867, -100, 1, 0, 1, 1); --  Crown Chemical Co. Supplies

-- GO spawns
DELETE FROM `gameobject` WHERE `id` IN (181086,201752,201778) AND `guid` BETWEEN @OGUID+0 AND @OGUID+42;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
-- Valentine Arch
(@OGUID+0, 181086, 1, 1, 1, 9869.12, 2493.13, 1315.88, 6.16653, 0, 0, 0.0582931, -0.9983, 300, 0, 1),
(@OGUID+1, 181086, 530, 1, 1, -4004.66, -11844.5, 0.19541, 4.93701, 0, 0, 0.623403, -0.7819, 300, 0, 1),
(@OGUID+2, 181086, 0, 1, 1, -4918.78, -983.208, 501.455, 2.30465, 0, 0, 0.913711, 0.406364, 300, 0, 1),
(@OGUID+3, 181086, 0, 1, 1, -8869.51, 636.686, 95.7873, 0.794388, 0, 0, 0.386832, 0.92215, 300, 0, 1),
(@OGUID+4, 181086, 1, 1, 1, 1653.44, -4437.37, 18.1863, 1.72627, 0, 0, 0.759883, 0.65006, 300, 0, 1),
(@OGUID+5, 181086, 1, 1, 1, -1224.34, 68.3642, 129.71, 3.17285, 0, 0, 0.999878, -0.015627, 300, 0, 1),
(@OGUID+6, 181086, 530, 1, 1, 9612.28, -7184.77, 14.285, 1.82938, 0, 0, 0.792374, 0.610036, 300, 0, 1),
(@OGUID+7, 181086, 0, 1, 1, 1629.62, 240.116, 63.8516, 0.155664, 0, 0, 0.0777534, 0.996973, 300, 0, 1),
-- Large Crate
(@OGUID+8, 201752, 0, 1, 1, -9029.77, 353.325, 92.923, 0.8808, 0, 0, 0.426301, 0.904581, 300, 0, 1),
(@OGUID+9, 201752, 0, 1, 1, -9029.87, 351.542, 92.9248, 0.489671, 0, 0, 0.242397, 0.970177, 300, 0, 1),
(@OGUID+10, 201752, 0, 1, 1, -9028.41, 352.69, 92.9163, 0.721364, 0, 0, 0.352912, 0.935656, 300, 0, 1),
(@OGUID+11, 201752, 0, 1, 1, -9027.7, 351.062, 92.9193, 0.689162, 0, 0, 0.337803, 0.941217, 300, 0, 1),
(@OGUID+12, 201752, 0, 1, 1, -9029.08, 349.917, 92.932, 0.657746, 0, 0, 0.322977, 0.946407, 300, 0, 1),
(@OGUID+13, 201752, 0, 1, 1, -9028.77, 352.62, 94.1596, 6.02202, 0, 0, 0.130214, -0.991486, 300, 0, 1),
(@OGUID+14, 201752, 0, 1, 1, -9028.84, 350.443, 94.1755, 0.771628, 0, 0, 0.376314, 0.926492, 300, 0, 1),
(@OGUID+15, 201752, 0, 1, 1, -9026.5, 348.864, 93.0359, 2.17356, 0, 0, 0.885134, 0.465337, 300, 0, 1),
(@OGUID+16, 201752, 0, 1, 1, -9028.21, 348.744, 93.024, 0.889436, 0, 0, 0.430203, 0.902732, 300, 0, 1),
(@OGUID+17, 201752, 1, 1, 1, 1381.97, -4431.17, 30.6588, 5.49617, 0, 0, 0.383432, -0.923569, 300, 0, 1),
(@OGUID+18, 201752, 1, 1, 1, 1380.98, -4432.28, 30.6586, 5.55507, 0, 0, 0.356069, -0.93446, 300, 0, 1),
(@OGUID+19, 201752, 1, 1, 1, 1379.73, -4433.4, 30.6569, 5.69644, 0, 0, 0.28918, -0.957275, 300, 0, 1),
(@OGUID+20, 201752, 1, 1, 1, 1377.96, -4432.16, 30.6489, 5.58649, 0, 0, 0.341345, -0.939938, 300, 0, 1),
(@OGUID+21, 201752, 1, 1, 1, 1379.23, -4431.41, 30.6768, 5.559, 0, 0, 0.354231, -0.935158, 300, 0, 1),
(@OGUID+22, 201752, 1, 1, 1, 1379.85, -4432.91, 31.8999, 5.66896, 0, 0, 0.302309, -0.95321, 300, 0, 1),
(@OGUID+23, 201752, 1, 1, 1, 1380.81, -4431.58, 31.902, 5.64147, 0, 0, 0.315381, -0.948965, 300, 0, 1),
(@OGUID+24, 201752, 1, 1, 1, 1377.67, -4434.36, 30.6055, 5.36265, 0, 0, 0.444186, -0.895935, 300, 0, 1),
-- Crown Chemical Co. Supplies
(@OGUID+25, 201778, 0, 1, 1, -9031.18, 354.399, 92.9752, 6.12019, 0, 0, 0.0814081, -0.996681, 300, 0, 1),
(@OGUID+26, 201778, 0, 1, 1, -9028.76, 352.525, 95.4034, 0.503804, 0, 0, 0.249246, 0.96844, 300, 0, 1),
(@OGUID+27, 201778, 0, 1, 1, -9030.19, 351.409, 94.1683, 0.134668, 0, 0, 0.067283, 0.997734, 300, 0, 1),
(@OGUID+28, 201778, 0, 1, 1, -9031.52, 349.739, 92.9068, 0.338872, 0, 0, 0.168626, 0.98568, 300, 0, 1),
(@OGUID+29, 201778, 0, 1, 1, -9030.55, 347.899, 92.9635, 0.751206, 0, 0, 0.366833, 0.930287, 300, 0, 1),
(@OGUID+30, 201778, 0, 1, 1, -9027.59, 348.911, 94.2683, 1.784, 0, 0, 0.77833, 0.627855, 300, 0, 1),
(@OGUID+31, 201778, 0, 1, 1, -9028.87, 349.971, 95.4191, 1.82327, 0, 0, 0.790507, 0.612452, 300, 0, 1),
(@OGUID+32, 201778, 0, 1, 1, -9031.75, 354.82, 92.9939, 6.0605, 0, 0, 0.111113, -0.993808, 300, 0, 1),
(@OGUID+33, 201778, 0, 1, 1, -9032.22, 352.779, 92.9627, 6.0605, 0, 0, 0.111113, -0.993808, 300, 0, 1),
(@OGUID+34, 201778, 1, 1, 1, 1375.84, -4432.46, 30.5735, 5.69645, 0, 0, 0.289178, -0.957275, 300, 0, 1),
(@OGUID+35, 201778, 1, 1, 1, 1377.99, -4431.81, 31.8923, 5.5001, 0, 0, 0.381614, -0.924322, 300, 0, 1),
(@OGUID+36, 201778, 1, 1, 1, 1379.21, -4430.58, 31.9198, 4.81681, 0, 0, 0.669241, -0.743045, 300, 0, 1),
(@OGUID+37, 201778, 1, 1, 1, 1379.35, -4432.78, 33.143, 5.61791, 0, 0, 0.326536, -0.945185, 300, 0, 1),
(@OGUID+38, 201778, 1, 1, 1, 1380.87, -4431.5, 33.1452, 4.66994, 0, 0, 0.721955, -0.69194, 300, 0, 1),
(@OGUID+39, 201778, 1, 1, 1, 1380.96, -4429.36, 30.6772, 4.6503, 0, 0, 0.728713, -0.68482, 300, 0, 1),
(@OGUID+40, 201778, 1, 1, 1, 1383.08, -4429.42, 30.651, 4.53642, 0, 0, 0.766505, -0.642238, 300, 0, 1),
(@OGUID+41, 201778, 1, 1, 1, 1378.64, -4428.42, 30.6846, 5.23543, 0, 0, 0.500243, -0.865885, 300, 0, 1),
(@OGUID+42, 201778, 1, 1, 1, 1377.05, -4429.39, 30.6467, 5.31397, 0, 0, 0.465863, -0.884857, 300, 0, 1); 

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=@EVENT AND `guid` BETWEEN @OGUID AND @OGUID+42;
INSERT INTO `game_event_gameobject` (`guid`, `eventEntry`) VALUES
(@OGUID, @EVENT),(@OGUID+1, @EVENT),(@OGUID+2, @EVENT),
(@OGUID+3, @EVENT),(@OGUID+4, @EVENT),(@OGUID+5, @EVENT),
(@OGUID+6, @EVENT),(@OGUID+7, @EVENT),(@OGUID+8, @EVENT),
(@OGUID+9, @EVENT),(@OGUID+10, @EVENT),(@OGUID+11, @EVENT),
(@OGUID+12, @EVENT),(@OGUID+13, @EVENT),(@OGUID+14, @EVENT),
(@OGUID+15, @EVENT),(@OGUID+16, @EVENT),(@OGUID+17, @EVENT),
(@OGUID+18, @EVENT),(@OGUID+19, @EVENT),(@OGUID+20, @EVENT),
(@OGUID+21, @EVENT),(@OGUID+22, @EVENT),(@OGUID+23, @EVENT),
(@OGUID+24, @EVENT),(@OGUID+25, @EVENT),(@OGUID+26, @EVENT),
(@OGUID+27, @EVENT),(@OGUID+28, @EVENT),(@OGUID+29, @EVENT),
(@OGUID+30, @EVENT),(@OGUID+31, @EVENT),(@OGUID+32, @EVENT),
(@OGUID+33, @EVENT),(@OGUID+34, @EVENT),(@OGUID+35, @EVENT),
(@OGUID+36, @EVENT),(@OGUID+37, @EVENT),(@OGUID+38, @EVENT),
(@OGUID+39, @EVENT),(@OGUID+40, @EVENT),(@OGUID+41, @EVENT),
(@OGUID+42, @EVENT);

-- [Q]: Pilfering Perfume
-- Note: this is EndText (misleading field name), NOT ObjectiveText1
UPDATE `quest_template` SET `EndText` = 'Steal perfume package from Crown Chemical Co. outside Stormind' WHERE `Id` = 24656; -- Alliance
UPDATE `quest_template` SET `EndText` = 'Steal perfume package from Crown Chemical Co. outside Orgrimmar' WHERE `Id` = 24541; -- Horde

-- Creature templates and spawns
UPDATE `creature_template` SET `minlevel`=70, `maxlevel`=75 WHERE `entry`=37671; -- Crown Supply Guard
UPDATE `creature_template` SET `npcflag`=`npcflag`|1, `gossip_menu_id`=10991 WHERE `entry`=38293; -- Junior Inspector (gossip menu not confirmed)

DELETE FROM `creature` WHERE `id` IN (38293,38065,37671) AND `guid` BETWEEN @CGUID+0 AND @CGUID+3;
DELETE FROM `creature` WHERE `id` IN (38293,38065,37671) AND `guid` BETWEEN @OLDGUID+0 AND @OLDGUID+3;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@CGUID+0, 38293, 530, 1, 1, 0, 0, -4022.81, -11842.7, 0.0062171, 5.89912, 300, 0, 0, 955, 0, 0, 0, 0, 0), -- Junior Inspector
(@CGUID+1, 38065, 1, 1, 1, 0, 0, 1380.22, -4426.79, 30.6681, 2.03572, 300, 0, 0, 12600, 0, 0, 0, 0, 0), -- Crown Supply Sentry <Crown Chemical Co.>
(@CGUID+2, 37671, 0, 1, 1, 30912, 0, -9033.01, 356.408, 93.1543, 2.09345, 300, 0, 0, 42, 0, 0, 0, 0, 0), -- Crown Supply Guard
(@CGUID+3, 37671, 0, 1, 1, 30912, 0, -9028.63, 344.994, 93.2389, 3.37679, 300, 0, 0, 42, 0, 0, 0, 0, 0); -- Crown Supply Guard

DELETE FROM `game_event_creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+3 AND `eventEntry`=@EVENT;
DELETE FROM `game_event_creature` WHERE `guid` BETWEEN @OLDGUID+0 AND @OLDGUID+3 AND `eventEntry`=@EVENT;
INSERT INTO `game_event_creature` (`guid`, `eventEntry`) VALUES
(@CGUID+0, @EVENT),
(@CGUID+1, @EVENT),
(@CGUID+2, @EVENT),
(@CGUID+3, @EVENT);
SET @Pinata := 34632;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@Pinata AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@Pinata, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 65788, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ogre Pinata - On death cast Pile of Candy'),
(@Pinata, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ogre Pinata - On reset set react state passive');

-- same faction of the GO that is spawned by spell 65788 (not sniffed)
UPDATE `creature_template` SET `faction_A`=7,`faction_H`=7,`exp`=0,`AIName`='SmartAI' WHERE `entry`=@Pinata;
-- Corrected proc of Misery
DELETE FROM `spell_proc_event` WHERE `entry` IN (33191, 33192, 33193);
INSERT INTO `spell_proc_event` VALUES 
(33191, 0x00, 0x06, 0x00008000, 0x00000400, 0x00000040, 0x00000000, 0x00000000, 0, 0, 0),
(33192, 0x00, 0x06, 0x00008000, 0x00000400, 0x00000040, 0x00000000, 0x00000000, 0, 0, 0),
(33193, 0x00, 0x06, 0x00008000, 0x00000400, 0x00000040, 0x00000000, 0x00000000, 0, 0, 0);
CREATE TABLE `temp_convert_spells`
(
	`id` INT(11),
	PRIMARY KEY (`id`)
);

# spells with EffectImplicitTarget In (6,21, 25) + spells having Targets & 1115534
# those spells are the ones which require explicit unit target to cast
INSERT INTO `temp_convert_spells` VALUES
(5),
(11),
(12),
(14),
(15),
(17),
(25),
(49),
(50),
(53),
(56),
(58),
(59),
(60),
(61),
(67),
(68),
(72),
(75),
(78),
(89),
(91),
(96),
(100),
(101),
(113),
(116),
(118),
(131),
(132),
(133),
(134),
(139),
(142),
(143),
(145),
(172),
(184),
(205),
(228),
(246),
(260),
(271),
(284),
(285),
(339),
(348),
(355),
(370),
(403),
(408),
(421),
(453),
(457),
(467),
(475),
(512),
(514),
(526),
(527),
(528),
(529),
(530),
(546),
(548),
(550),
(552),
(585),
(589),
(591),
(592),
(594),
(596),
(598),
(600),
(603),
(605),
(606),
(633),
(635),
(639),
(647),
(676),
(686),
(689),
(692),
(694),
(695),
(699),
(700),
(701),
(702),
(703),
(705),
(707),
(709),
(710),
(720),
(731),
(744),
(745),
(746),
(770),
(772),
(774),
(782),
(785),
(812),
(835),
(837),
(845),
(851),
(853),
(879),
(915),
(921),
(930),
(932),
(943),
(970),
(974),
(976),
(980),
(984),
(988),
(992),
(996),
(1004),
(1010),
(1014),
(1026),
(1035),
(1042),
(1044),
(1058),
(1062),
(1075),
(1079),
(1082),
(1088),
(1090),
(1094),
(1098),
(1106),
(1108),
(1120),
(1121),
(1126),
(1130),
(1139),
(1152),
(1159),
(1194),
(1196),
(1210),
(1214),
(1225),
(1228),
(1234),
(1241),
(1243),
(1244),
(1245),
(1249),
(1250),
(1251),
(1266),
(1267),
(1329),
(1330),
(1350),
(1364),
(1373),
(1413),
(1430),
(1446),
(1459),
(1460),
(1461),
(1462),
(1464),
(1467),
(1472),
(1473),
(1474),
(1475),
(1481),
(1485),
(1490),
(1495),
(1513),
(1515),
(1516),
(1536),
(1579),
(1588),
(1604),
(1608),
(1609),
(1650),
(1664),
(1665),
(1666),
(1669),
(1671),
(1672),
(1714),
(1715),
(1752),
(1753),
(1754),
(1755),
(1756),
(1757),
(1758),
(1759),
(1760),
(1766),
(1767),
(1768),
(1769),
(1770),
(1776),
(1777),
(1795),
(1796),
(1797),
(1798),
(1800),
(1809),
(1810),
(1811),
(1822),
(1823),
(1824),
(1831),
(1833),
(1852),
(1906),
(1908),
(1943),
(1950),
(1966),
(1978),
(1991),
(2000),
(2020),
(2021),
(2050),
(2052),
(2053),
(2054),
(2055),
(2060),
(2061),
(2070),
(2090),
(2091),
(2094),
(2096),
(2098),
(2110),
(2118),
(2119),
(2124),
(2125),
(2136),
(2137),
(2138),
(2139),
(2141),
(2142),
(2143),
(2147),
(2148),
(2154),
(2155),
(2275),
(2280),
(2313),
(2372),
(2373),
(2400),
(2425),
(2442),
(2443),
(2444),
(2446),
(2552),
(2589),
(2590),
(2591),
(2601),
(2602),
(2606),
(2607),
(2608),
(2609),
(2610),
(2626),
(2629),
(2630),
(2633),
(2634),
(2636),
(2637),
(2643),
(2647),
(2649),
(2650),
(2653),
(2691),
(2764),
(2767),
(2782),
(2791),
(2800),
(2816),
(2817),
(2818),
(2819),
(2834),
(2850),
(2855),
(2860),
(2871),
(2880),
(2893),
(2908),
(2912),
(2941),
(2944),
(2948),
(2949),
(2969),
(2972),
(2973),
(2974),
(2995),
(3007),
(3009),
(3010),
(3011),
(3018),
(3029),
(3034),
(3043),
(3044),
(3105),
(3108),
(3110),
(3120),
(3121),
(3130),
(3131),
(3132),
(3137),
(3140),
(3145),
(3147),
(3148),
(3150),
(3205),
(3206),
(3207),
(3229),
(3233),
(3234),
(3237),
(3242),
(3243),
(3246),
(3247),
(3252),
(3261),
(3263),
(3267),
(3268),
(3279),
(3280),
(3286),
(3332),
(3355),
(3356),
(3358),
(3360),
(3387),
(3388),
(3393),
(3396),
(3405),
(3409),
(3427),
(3429),
(3436),
(3442),
(3446),
(3465),
(3466),
(3472),
(3510),
(3514),
(3539),
(3542),
(3551),
(3553),
(3571),
(3578),
(3583),
(3584),
(3586),
(3602),
(3603),
(3604),
(3606),
(3607),
(3609),
(3627),
(3635),
(3636),
(3650),
(3674),
(3715),
(3716),
(3747),
(3812),
(3911),
(3912),
(3913),
(3921),
(4011),
(4039),
(4040),
(4041),
(4058),
(4060),
(4089),
(4090),
(4091),
(4101),
(4102),
(4130),
(4131),
(4132),
(4150),
(4159),
(4164),
(4165),
(4166),
(4167),
(4168),
(4169),
(4209),
(4221),
(4240),
(4243),
(4244),
(4262),
(4280),
(4281),
(4282),
(4285),
(4286),
(4294),
(4316),
(4362),
(4423),
(4500),
(4504),
(4505),
(4506),
(4538),
(4630),
(4659),
(4805),
(4877),
(4940),
(4961),
(4962),
(4974),
(4979),
(4980),
(4984),
(4987),
(4996),
(4997),
(4998),
(4999),
(5000),
(5003),
(5019),
(5025),
(5103),
(5105),
(5116),
(5133),
(5137),
(5138),
(5143),
(5144),
(5145),
(5164),
(5165),
(5171),
(5176),
(5177),
(5178),
(5179),
(5180),
(5185),
(5186),
(5187),
(5188),
(5189),
(5195),
(5196),
(5201),
(5208),
(5211),
(5213),
(5221),
(5232),
(5234),
(5246),
(5255),
(5259),
(5260),
(5263),
(5271),
(5276),
(5306),
(5308),
(5320),
(5321),
(5322),
(5323),
(5324),
(5325),
(5337),
(5374),
(5375),
(5376),
(5401),
(5413),
(5416),
(5422),
(5424),
(5433),
(5480),
(5503),
(5507),
(5508),
(5509),
(5513),
(5514),
(5547),
(5565),
(5566),
(5567),
(5570),
(5588),
(5589),
(5595),
(5597),
(5598),
(5614),
(5615),
(5648),
(5649),
(5676),
(5679),
(5696),
(5697),
(5703),
(5726),
(5727),
(5739),
(5760),
(5781),
(5782),
(5862),
(5884),
(5917),
(5918),
(5938),
(5940),
(5951),
(5967),
(6000),
(6016),
(6027),
(6028),
(6041),
(6060),
(6061),
(6063),
(6064),
(6065),
(6066),
(6074),
(6075),
(6076),
(6077),
(6078),
(6121),
(6128),
(6130),
(6132),
(6136),
(6142),
(6144),
(6146),
(6178),
(6199),
(6203),
(6205),
(6213),
(6215),
(6217),
(6222),
(6223),
(6245),
(6252),
(6253),
(6254),
(6255),
(6257),
(6273),
(6277),
(6278),
(6304),
(6327),
(6346),
(6348),
(6349),
(6350),
(6351),
(6352),
(6353),
(6357),
(6358),
(6359),
(6360),
(6362),
(6409),
(6435),
(6460),
(6465),
(6466),
(6483),
(6484),
(6509),
(6530),
(6531),
(6533),
(6546),
(6547),
(6548),
(6552),
(6554),
(6555),
(6572),
(6574),
(6576),
(6580),
(6581),
(6595),
(6607),
(6647),
(6655),
(6660),
(6664),
(6685),
(6713),
(6716),
(6719),
(6726),
(6728),
(6730),
(6742),
(6743),
(6744),
(6745),
(6746),
(6747),
(6748),
(6751),
(6753),
(6754),
(6756),
(6760),
(6761),
(6762),
(6766),
(6767),
(6768),
(6770),
(6774),
(6778),
(6780),
(6785),
(6787),
(6788),
(6789),
(6795),
(6798),
(6800),
(6807),
(6808),
(6809),
(6814),
(6866),
(6870),
(6873),
(6894),
(6907),
(6909),
(6917),
(6922),
(6927),
(6942),
(6946),
(6949),
(6950),
(6951),
(6957),
(6958),
(6960),
(6963),
(6965),
(6979),
(6980),
(6984),
(7001),
(7033),
(7054),
(7057),
(7068),
(7079),
(7081),
(7084),
(7092),
(7093),
(7098),
(7099),
(7101),
(7102),
(7105),
(7120),
(7122),
(7124),
(7125),
(7127),
(7140),
(7145),
(7154),
(7159),
(7160),
(7162),
(7211),
(7266),
(7288),
(7289),
(7290),
(7295),
(7321),
(7322),
(7329),
(7357),
(7365),
(7367),
(7369),
(7372),
(7373),
(7379),
(7384),
(7386),
(7399),
(7400),
(7402),
(7405),
(7414),
(7415),
(7416),
(7439),
(7482),
(7485),
(7588),
(7621),
(7638),
(7641),
(7645),
(7646),
(7648),
(7651),
(7655),
(7656),
(7712),
(7714),
(7715),
(7716),
(7717),
(7718),
(7719),
(7736),
(7761),
(7763),
(7764),
(7799),
(7800),
(7801),
(7802),
(7806),
(7807),
(7808),
(7809),
(7810),
(7811),
(7813),
(7814),
(7815),
(7816),
(7821),
(7829),
(7853),
(7874),
(7875),
(7876),
(7877),
(7878),
(7879),
(7880),
(7881),
(7882),
(7883),
(7884),
(7885),
(7887),
(7891),
(7896),
(7901),
(7914),
(7922),
(7925),
(7926),
(7927),
(7932),
(7933),
(7938),
(7947),
(7951),
(7967),
(7992),
(7994),
(7997),
(8004),
(8008),
(8010),
(8012),
(8014),
(8016),
(8026),
(8028),
(8029),
(8034),
(8037),
(8040),
(8042),
(8044),
(8045),
(8046),
(8050),
(8052),
(8053),
(8056),
(8058),
(8068),
(8070),
(8091),
(8092),
(8094),
(8095),
(8096),
(8097),
(8098),
(8099),
(8100),
(8101),
(8102),
(8103),
(8104),
(8105),
(8106),
(8112),
(8113),
(8114),
(8115),
(8116),
(8117),
(8118),
(8119),
(8120),
(8121),
(8129),
(8137),
(8138),
(8139),
(8140),
(8151),
(8208),
(8211),
(8221),
(8222),
(8242),
(8246),
(8255),
(8256),
(8257),
(8272),
(8275),
(8277),
(8282),
(8288),
(8289),
(8292),
(8295),
(8312),
(8313),
(8314),
(8318),
(8319),
(8344),
(8345),
(8346),
(8347),
(8352),
(8353),
(8355),
(8362),
(8363),
(8365),
(8379),
(8380),
(8382),
(8383),
(8384),
(8385),
(8391),
(8400),
(8401),
(8402),
(8406),
(8407),
(8408),
(8412),
(8413),
(8414),
(8415),
(8416),
(8417),
(8425),
(8426),
(8428),
(8440),
(8441),
(8442),
(8444),
(8445),
(8446),
(8447),
(8448),
(8449),
(8452),
(8453),
(8456),
(8459),
(8460),
(8463),
(8464),
(8493),
(8496),
(8497),
(8552),
(8554),
(8555),
(8595),
(8598),
(8600),
(8613),
(8615),
(8616),
(8617),
(8618),
(8619),
(8620),
(8621),
(8623),
(8624),
(8627),
(8629),
(8631),
(8632),
(8633),
(8637),
(8639),
(8640),
(8643),
(8645),
(8646),
(8647),
(8649),
(8650),
(8654),
(8673),
(8676),
(8680),
(8682),
(8685),
(8689),
(8699),
(8716),
(8721),
(8724),
(8725),
(8733),
(8735),
(8788),
(8806),
(8818),
(8820),
(8903),
(8905),
(8907),
(8910),
(8914),
(8921),
(8924),
(8925),
(8926),
(8927),
(8928),
(8929),
(8936),
(8938),
(8939),
(8940),
(8941),
(8946),
(8947),
(8949),
(8950),
(8951),
(8955),
(8972),
(8983),
(8992),
(8994),
(8998),
(9000),
(9005),
(9007),
(9034),
(9053),
(9057),
(9080),
(9159),
(9176),
(9234),
(9268),
(9275),
(9347),
(9373),
(9454),
(9455),
(9456),
(9459),
(9462),
(9472),
(9473),
(9474),
(9481),
(9482),
(9483),
(9484),
(9485),
(9487),
(9488),
(9492),
(9493),
(9532),
(9552),
(9574),
(9591),
(9612),
(9613),
(9614),
(9654),
(9658),
(9672),
(9734),
(9735),
(9739),
(9745),
(9750),
(9752),
(9756),
(9758),
(9771),
(9775),
(9786),
(9789),
(9790),
(9791),
(9796),
(9806),
(9823),
(9824),
(9826),
(9827),
(9829),
(9830),
(9833),
(9834),
(9835),
(9839),
(9840),
(9841),
(9849),
(9850),
(9852),
(9853),
(9856),
(9857),
(9858),
(9866),
(9867),
(9875),
(9876),
(9880),
(9881),
(9884),
(9885),
(9888),
(9889),
(9892),
(9894),
(9896),
(9901),
(9904),
(9910),
(9912),
(9949),
(9977),
(9991),
(9999),
(10055),
(10056),
(10060),
(10073),
(10101),
(10136),
(10141),
(10142),
(10143),
(10146),
(10147),
(10148),
(10149),
(10150),
(10151),
(10156),
(10157),
(10158),
(10162),
(10163),
(10164),
(10171),
(10172),
(10175),
(10176),
(10178),
(10179),
(10180),
(10181),
(10188),
(10189),
(10190),
(10194),
(10195),
(10196),
(10197),
(10198),
(10199),
(10200),
(10203),
(10204),
(10205),
(10206),
(10207),
(10208),
(10209),
(10210),
(10211),
(10212),
(10217),
(10218),
(10221),
(10222),
(10224),
(10226),
(10227),
(10231),
(10239),
(10244),
(10245),
(10246),
(10277),
(10308),
(10310),
(10312),
(10313),
(10314),
(10321),
(10326),
(10328),
(10329),
(10346),
(10370),
(10371),
(10373),
(10391),
(10392),
(10412),
(10413),
(10414),
(10435),
(10436),
(10444),
(10445),
(10447),
(10448),
(10452),
(10458),
(10466),
(10467),
(10468),
(10472),
(10473),
(10577),
(10578),
(10605),
(10617),
(10651),
(10653),
(10657),
(10659),
(10661),
(10663),
(10689),
(10730),
(10767),
(10768),
(10769),
(10771),
(10833),
(10838),
(10839),
(10843),
(10847),
(10851),
(10855),
(10863),
(10872),
(10892),
(10893),
(10894),
(10898),
(10899),
(10900),
(10901),
(10908),
(10909),
(10915),
(10916),
(10917),
(10921),
(10927),
(10928),
(10929),
(10933),
(10934),
(10937),
(10938),
(10945),
(10946),
(10947),
(10955),
(10957),
(10958),
(10960),
(10961),
(10963),
(10964),
(10965),
(10966),
(11014),
(11016),
(11020),
(11021),
(11027),
(11084),
(11085),
(11131),
(11132),
(11196),
(11197),
(11198),
(11203),
(11204),
(11205),
(11267),
(11268),
(11269),
(11273),
(11274),
(11275),
(11279),
(11280),
(11281),
(11285),
(11286),
(11289),
(11290),
(11293),
(11294),
(11297),
(11299),
(11300),
(11303),
(11335),
(11336),
(11337),
(11353),
(11354),
(11362),
(11366),
(11374),
(11391),
(11397),
(11409),
(11428),
(11430),
(11431),
(11436),
(11442),
(11443),
(11444),
(11446),
(11469),
(11470),
(11471),
(11512),
(11519),
(11520),
(11522),
(11525),
(11528),
(11538),
(11539),
(11545),
(11564),
(11565),
(11566),
(11567),
(11572),
(11573),
(11574),
(11578),
(11584),
(11585),
(11595),
(11596),
(11597),
(11600),
(11601),
(11604),
(11605),
(11608),
(11609),
(11610),
(11612),
(11639),
(11640),
(11641),
(11642),
(11650),
(11658),
(11659),
(11660),
(11661),
(11665),
(11667),
(11668),
(11671),
(11672),
(11675),
(11699),
(11700),
(11707),
(11708),
(11711),
(11712),
(11713),
(11719),
(11721),
(11722),
(11725),
(11726),
(11762),
(11763),
(11772),
(11773),
(11774),
(11775),
(11776),
(11777),
(11778),
(11779),
(11780),
(11781),
(11782),
(11783),
(11784),
(11785),
(11786),
(11787),
(11791),
(11820),
(11821),
(11824),
(11825),
(11835),
(11836),
(11839),
(11877),
(11879),
(11885),
(11886),
(11887),
(11888),
(11889),
(11918),
(11920),
(11921),
(11922),
(11960),
(11962),
(11963),
(11971),
(11972),
(11974),
(11976),
(11977),
(11978),
(11980),
(11981),
(11985),
(11986),
(11994),
(11998),
(12021),
(12023),
(12024),
(12039),
(12054),
(12057),
(12058),
(12096),
(12097),
(12098),
(12118),
(12127),
(12128),
(12130),
(12131),
(12160),
(12161),
(12162),
(12166),
(12167),
(12170),
(12174),
(12175),
(12176),
(12177),
(12178),
(12179),
(12181),
(12242),
(12245),
(12246),
(12248),
(12251),
(12279),
(12280),
(12289),
(12294),
(12355),
(12461),
(12466),
(12471),
(12479),
(12480),
(12484),
(12485),
(12486),
(12491),
(12492),
(12493),
(12494),
(12505),
(12509),
(12510),
(12521),
(12522),
(12523),
(12524),
(12525),
(12526),
(12531),
(12538),
(12540),
(12541),
(12542),
(12545),
(12548),
(12551),
(12553),
(12555),
(12578),
(12579),
(12654),
(12657),
(12668),
(12675),
(12693),
(12699),
(12705),
(12721),
(12723),
(12738),
(12739),
(12742),
(12747),
(12798),
(12809),
(12821),
(12824),
(12825),
(12826),
(12850),
(12868),
(12885),
(12888),
(12890),
(12998),
(13003),
(13005),
(13006),
(13009),
(13013),
(13022),
(13029),
(13044),
(13099),
(13119),
(13120),
(13138),
(13140),
(13142),
(13180),
(13181),
(13218),
(13222),
(13223),
(13224),
(13278),
(13279),
(13281),
(13298),
(13318),
(13319),
(13321),
(13322),
(13323),
(13325),
(13326),
(13327),
(13338),
(13339),
(13340),
(13341),
(13342),
(13374),
(13375),
(13398),
(13424),
(13438),
(13439),
(13440),
(13441),
(13442),
(13443),
(13444),
(13445),
(13446),
(13459),
(13480),
(13482),
(13486),
(13490),
(13491),
(13496),
(13518),
(13519),
(13524),
(13526),
(13527),
(13528),
(13530),
(13534),
(13549),
(13550),
(13551),
(13552),
(13553),
(13554),
(13555),
(13566),
(13567),
(13579),
(13583),
(13584),
(13585),
(13608),
(13619),
(13692),
(13728),
(13729),
(13737),
(13738),
(13748),
(13752),
(13797),
(13860),
(13864),
(13878),
(13880),
(13884),
(13897),
(13901),
(13902),
(13907),
(13921),
(13952),
(13953),
(13977),
(14030),
(14032),
(14033),
(14034),
(14053),
(14087),
(14099),
(14102),
(14103),
(14105),
(14106),
(14109),
(14110),
(14112),
(14118),
(14119),
(14120),
(14122),
(14126),
(14129),
(14130),
(14134),
(14145),
(14156),
(14157),
(14160),
(14178),
(14180),
(14183),
(14189),
(14200),
(14247),
(14251),
(14253),
(14260),
(14261),
(14262),
(14263),
(14264),
(14265),
(14266),
(14269),
(14270),
(14271),
(14278),
(14281),
(14282),
(14283),
(14284),
(14285),
(14286),
(14287),
(14288),
(14289),
(14290),
(14298),
(14299),
(14300),
(14301),
(14308),
(14309),
(14323),
(14324),
(14325),
(14326),
(14327),
(14331),
(14443),
(14515),
(14516),
(14517),
(14518),
(14537),
(14752),
(14792),
(14795),
(14818),
(14819),
(14867),
(14868),
(14873),
(14874),
(14875),
(14890),
(14892),
(14893),
(14894),
(14895),
(14897),
(14902),
(14903),
(14914),
(14916),
(14917),
(14918),
(14919),
(14920),
(14921),
(15037),
(15039),
(15040),
(15042),
(15043),
(15057),
(15065),
(15089),
(15090),
(15095),
(15096),
(15117),
(15120),
(15122),
(15123),
(15124),
(15128),
(15187),
(15207),
(15208),
(15211),
(15228),
(15229),
(15230),
(15232),
(15234),
(15235),
(15236),
(15238),
(15241),
(15242),
(15247),
(15248),
(15249),
(15250),
(15254),
(15257),
(15261),
(15262),
(15263),
(15264),
(15265),
(15266),
(15267),
(15277),
(15279),
(15280),
(15283),
(15284),
(15288),
(15305),
(15306),
(15331),
(15332),
(15342),
(15343),
(15344),
(15346),
(15357),
(15359),
(15362),
(15363),
(15366),
(15398),
(15407),
(15451),
(15471),
(15472),
(15487),
(15493),
(15495),
(15496),
(15497),
(15498),
(15499),
(15500),
(15501),
(15505),
(15530),
(15534),
(15535),
(15536),
(15537),
(15539),
(15547),
(15549),
(15570),
(15572),
(15574),
(15575),
(15580),
(15581),
(15582),
(15583),
(15586),
(15587),
(15592),
(15598),
(15605),
(15607),
(15608),
(15610),
(15611),
(15612),
(15614),
(15615),
(15616),
(15617),
(15618),
(15619),
(15620),
(15621),
(15643),
(15651),
(15652),
(15653),
(15654),
(15655),
(15656),
(15657),
(15659),
(15661),
(15662),
(15664),
(15665),
(15667),
(15691),
(15692),
(15695),
(15698),
(15699),
(15702),
(15708),
(15712),
(15713),
(15729),
(15730),
(15732),
(15734),
(15735),
(15736),
(15749),
(15752),
(15753),
(15784),
(15785),
(15790),
(15791),
(15793),
(15795),
(15797),
(15798),
(15801),
(15802),
(15848),
(15850),
(15859),
(15860),
(15876),
(15878),
(15968),
(15969),
(15970),
(15976),
(15980),
(15981),
(15982),
(16000),
(16001),
(16006),
(16007),
(16029),
(16031),
(16033),
(16034),
(16044),
(16045),
(16050),
(16053),
(16067),
(16071),
(16075),
(16095),
(16100),
(16101),
(16128),
(16143),
(16144),
(16145),
(16168),
(16170),
(16172),
(16176),
(16177),
(16186),
(16231),
(16235),
(16236),
(16237),
(16240),
(16243),
(16247),
(16249),
(16333),
(16336),
(16343),
(16344),
(16351),
(16352),
(16353),
(16366),
(16373),
(16375),
(16391),
(16392),
(16393),
(16400),
(16401),
(16402),
(16403),
(16405),
(16406),
(16407),
(16408),
(16409),
(16410),
(16411),
(16412),
(16413),
(16414),
(16415),
(16427),
(16429),
(16430),
(16431),
(16433),
(16448),
(16449),
(16451),
(16454),
(16455),
(16456),
(16458),
(16460),
(16461),
(16472),
(16495),
(16496),
(16498),
(16508),
(16509),
(16511),
(16527),
(16528),
(16530),
(16536),
(16549),
(16552),
(16553),
(16554),
(16555),
(16561),
(16564),
(16565),
(16568),
(16569),
(16570),
(16573),
(16583),
(16587),
(16588),
(16603),
(16608),
(16610),
(16612),
(16614),
(16618),
(16627),
(16628),
(16636),
(16697),
(16707),
(16708),
(16709),
(16711),
(16712),
(16713),
(16714),
(16716),
(16722),
(16782),
(16783),
(16784),
(16788),
(16790),
(16793),
(16798),
(16799),
(16804),
(16805),
(16827),
(16828),
(16829),
(16830),
(16831),
(16832),
(16844),
(16856),
(16857),
(16868),
(16869),
(16871),
(16898),
(16908),
(16921),
(16922),
(16927),
(16928),
(16953),
(16979),
(16997),
(17008),
(17009),
(17011),
(17012),
(17013),
(17105),
(17134),
(17137),
(17138),
(17139),
(17140),
(17141),
(17142),
(17143),
(17144),
(17146),
(17147),
(17148),
(17149),
(17150),
(17151),
(17153),
(17156),
(17157),
(17158),
(17159),
(17160),
(17165),
(17168),
(17170),
(17171),
(17172),
(17173),
(17174),
(17175),
(17183),
(17194),
(17195),
(17198),
(17201),
(17213),
(17227),
(17230),
(17233),
(17234),
(17238),
(17243),
(17244),
(17246),
(17253),
(17255),
(17256),
(17257),
(17258),
(17259),
(17260),
(17261),
(17273),
(17274),
(17276),
(17281),
(17284),
(17287),
(17289),
(17290),
(17292),
(17293),
(17307),
(17308),
(17311),
(17312),
(17313),
(17314),
(17315),
(17330),
(17331),
(17333),
(17334),
(17347),
(17348),
(17353),
(17364),
(17368),
(17393),
(17405),
(17407),
(17434),
(17435),
(17439),
(17445),
(17451),
(17452),
(17470),
(17483),
(17484),
(17492),
(17494),
(17496),
(17500),
(17503),
(17504),
(17505),
(17506),
(17509),
(17510),
(17511),
(17529),
(17547),
(17607),
(17608),
(17609),
(17610),
(17611),
(17613),
(17615),
(17620),
(17630),
(17633),
(17639),
(17648),
(17649),
(17672),
(17682),
(17692),
(17734),
(17736),
(17738),
(17744),
(17745),
(17749),
(17753),
(17754),
(17755),
(17776),
(17777),
(17794),
(17797),
(17798),
(17799),
(17800),
(17843),
(17855),
(17856),
(17857),
(17859),
(17860),
(17863),
(17877),
(17883),
(17919),
(17920),
(17921),
(17922),
(17923),
(17924),
(17925),
(17926),
(17939),
(17943),
(17944),
(17946),
(17948),
(17950),
(17961),
(17962),
(17963),
(18070),
(18072),
(18075),
(18077),
(18078),
(18081),
(18082),
(18083),
(18084),
(18085),
(18086),
(18088),
(18089),
(18090),
(18091),
(18092),
(18101),
(18103),
(18104),
(18105),
(18106),
(18107),
(18108),
(18111),
(18112),
(18118),
(18138),
(18145),
(18149),
(18151),
(18152),
(18153),
(18159),
(18164),
(18165),
(18172),
(18173),
(18187),
(18197),
(18199),
(18200),
(18202),
(18203),
(18204),
(18205),
(18206),
(18208),
(18209),
(18210),
(18211),
(18214),
(18217),
(18223),
(18266),
(18267),
(18270),
(18276),
(18278),
(18289),
(18347),
(18362),
(18367),
(18368),
(18375),
(18381),
(18387),
(18389),
(18390),
(18395),
(18396),
(18398),
(18425),
(18469),
(18476),
(18498),
(18502),
(18503),
(18543),
(18545),
(18557),
(18561),
(18562),
(18608),
(18610),
(18631),
(18632),
(18633),
(18647),
(18649),
(18651),
(18652),
(18654),
(18656),
(18657),
(18658),
(18663),
(18670),
(18702),
(18761),
(18763),
(18796),
(18798),
(18802),
(18805),
(18807),
(18809),
(18812),
(18813),
(18817),
(18819),
(18833),
(18867),
(18868),
(18869),
(18870),
(18871),
(18945),
(18952),
(18958),
(18968),
(18972),
(18980),
(18988),
(18996),
(19027),
(19128),
(19130),
(19131),
(19132),
(19133),
(19134),
(19136),
(19179),
(19196),
(19213),
(19244),
(19260),
(19276),
(19277),
(19278),
(19279),
(19280),
(19306),
(19319),
(19362),
(19386),
(19391),
(19393),
(19395),
(19397),
(19411),
(19434),
(19437),
(19439),
(19444),
(19445),
(19446),
(19447),
(19448),
(19450),
(19452),
(19460),
(19463),
(19469),
(19471),
(19472),
(19476),
(19481),
(19486),
(19501),
(19503),
(19505),
(19512),
(19548),
(19595),
(19597),
(19632),
(19633),
(19637),
(19639),
(19642),
(19643),
(19644),
(19647),
(19648),
(19650),
(19652),
(19653),
(19654),
(19658),
(19661),
(19662),
(19663),
(19664),
(19674),
(19675),
(19676),
(19677),
(19678),
(19679),
(19680),
(19681),
(19682),
(19683),
(19684),
(19685),
(19686),
(19687),
(19688),
(19689),
(19692),
(19693),
(19694),
(19696),
(19697),
(19699),
(19700),
(19701),
(19725),
(19727),
(19728),
(19729),
(19730),
(19731),
(19734),
(19736),
(19737),
(19738),
(19739),
(19740),
(19742),
(19750),
(19755),
(19767),
(19770),
(19771),
(19775),
(19776),
(19777),
(19779),
(19785),
(19797),
(19801),
(19816),
(19820),
(19834),
(19835),
(19836),
(19837),
(19838),
(19850),
(19852),
(19853),
(19854),
(19869),
(19872),
(19874),
(19881),
(19901),
(19931),
(19938),
(19939),
(19940),
(19941),
(19942),
(19943),
(19970),
(19971),
(19972),
(19973),
(19974),
(19975),
(19983),
(20000),
(20004),
(20005),
(20006),
(20019),
(20066),
(20170),
(20184),
(20185),
(20186),
(20187),
(20211),
(20217),
(20220),
(20221),
(20223),
(20228),
(20233),
(20236),
(20240),
(20243),
(20252),
(20253),
(20271),
(20276),
(20279),
(20294),
(20295),
(20297),
(20298),
(20367),
(20368),
(20369),
(20370),
(20371),
(20372),
(20373),
(20374),
(20410),
(20420),
(20424),
(20425),
(20463),
(20467),
(20473),
(20474),
(20475),
(20477),
(20508),
(20511),
(20534),
(20535),
(20536),
(20537),
(20539),
(20541),
(20543),
(20547),
(20559),
(20560),
(20564),
(20565),
(20569),
(20586),
(20604),
(20605),
(20614),
(20615),
(20616),
(20617),
(20618),
(20623),
(20625),
(20627),
(20629),
(20630),
(20647),
(20655),
(20656),
(20657),
(20658),
(20660),
(20661),
(20662),
(20663),
(20664),
(20665),
(20666),
(20668),
(20677),
(20678),
(20679),
(20682),
(20684),
(20685),
(20688),
(20690),
(20691),
(20692),
(20695),
(20696),
(20698),
(20700),
(20714),
(20720),
(20726),
(20733),
(20735),
(20736),
(20740),
(20751),
(20787),
(20788),
(20790),
(20791),
(20792),
(20793),
(20795),
(20797),
(20800),
(20801),
(20802),
(20804),
(20805),
(20806),
(20807),
(20808),
(20811),
(20812),
(20815),
(20816),
(20819),
(20820),
(20821),
(20822),
(20823),
(20824),
(20825),
(20826),
(20829),
(20830),
(20831),
(20832),
(20869),
(20882),
(20883),
(20893),
(20900),
(20901),
(20902),
(20903),
(20904),
(20909),
(20910),
(20911),
(20929),
(20930),
(20989),
(21008),
(21027),
(21030),
(21047),
(21049),
(21050),
(21055),
(21056),
(21059),
(21060),
(21062),
(21063),
(21064),
(21066),
(21067),
(21068),
(21072),
(21074),
(21077),
(21081),
(21100),
(21128),
(21140),
(21141),
(21150),
(21151),
(21159),
(21162),
(21163),
(21164),
(21170),
(21179),
(21183),
(21187),
(21330),
(21332),
(21335),
(21337),
(21343),
(21356),
(21357),
(21368),
(21369),
(21372),
(21388),
(21390),
(21398),
(21401),
(21402),
(21463),
(21464),
(21465),
(21541),
(21542),
(21543),
(21546),
(21549),
(21551),
(21552),
(21553),
(21647),
(21654),
(21667),
(21668),
(21669),
(21670),
(21731),
(21732),
(21734),
(21735),
(21737),
(21745),
(21787),
(21794),
(21807),
(21829),
(21832),
(21834),
(21835),
(21840),
(21847),
(21866),
(21889),
(21892),
(21898),
(21912),
(21939),
(21949),
(21952),
(21953),
(21960),
(21961),
(21971),
(21979),
(21987),
(21990),
(21992),
(22009),
(22012),
(22048),
(22068),
(22088),
(22108),
(22109),
(22110),
(22111),
(22112),
(22113),
(22114),
(22115),
(22116),
(22117),
(22118),
(22119),
(22120),
(22121),
(22127),
(22128),
(22167),
(22168),
(22187),
(22189),
(22207),
(22227),
(22272),
(22273),
(22274),
(22284),
(22289),
(22290),
(22291),
(22312),
(22335),
(22336),
(22355),
(22357),
(22371),
(22373),
(22411),
(22412),
(22414),
(22415),
(22416),
(22418),
(22423),
(22426),
(22427),
(22428),
(22429),
(22433),
(22438),
(22482),
(22565),
(22568),
(22570),
(22572),
(22574),
(22575),
(22582),
(22591),
(22592),
(22639),
(22641),
(22646),
(22651),
(22661),
(22662),
(22666),
(22667),
(22677),
(22678),
(22682),
(22687),
(22689),
(22690),
(22691),
(22692),
(22695),
(22709),
(22713),
(22715),
(22742),
(22744),
(22745),
(22751),
(22752),
(22784),
(22785),
(22799),
(22800),
(22814),
(22816),
(22817),
(22818),
(22820),
(22822),
(22823),
(22827),
(22828),
(22829),
(22856),
(22858),
(22859),
(22864),
(22883),
(22885),
(22886),
(22887),
(22893),
(22901),
(22907),
(22909),
(22911),
(22916),
(22919),
(22920),
(22935),
(22947),
(22950),
(22951),
(22959),
(22968),
(22993),
(22994),
(22995),
(22997),
(23015),
(23038),
(23059),
(23064),
(23065),
(23073),
(23102),
(23104),
(23106),
(23114),
(23115),
(23122),
(23123),
(23124),
(23125),
(23135),
(23139),
(23153),
(23154),
(23155),
(23169),
(23170),
(23174),
(23205),
(23206),
(23224),
(23256),
(23262),
(23267),
(23268),
(23275),
(23278),
(23298),
(23301),
(23304),
(23333),
(23335),
(23337),
(23340),
(23359),
(23379),
(23380),
(23381),
(23391),
(23392),
(23402),
(23416),
(23417),
(23451),
(23452),
(23454),
(23460),
(23490),
(23491),
(23493),
(23504),
(23505),
(23546),
(23552),
(23567),
(23568),
(23569),
(23577),
(23580),
(23590),
(23592),
(23601),
(23604),
(23605),
(23620),
(23621),
(23622),
(23623),
(23625),
(23626),
(23627),
(23658),
(23661),
(23675),
(23687),
(23693),
(23694),
(23695),
(23696),
(23699),
(23702),
(23735),
(23736),
(23737),
(23738),
(23765),
(23766),
(23767),
(23768),
(23769),
(23774),
(23775),
(23786),
(23848),
(23850),
(23853),
(23859),
(23860),
(23862),
(23865),
(23881),
(23892),
(23893),
(23894),
(23895),
(23921),
(23922),
(23923),
(23924),
(23925),
(23947),
(23948),
(23952),
(23953),
(23958),
(23959),
(23960),
(23961),
(23962),
(23963),
(23964),
(23967),
(23970),
(23978),
(23979),
(24002),
(24003),
(24016),
(24017),
(24020),
(24023),
(24042),
(24049),
(24053),
(24061),
(24064),
(24097),
(24109),
(24111),
(24131),
(24132),
(24133),
(24134),
(24135),
(24178),
(24179),
(24185),
(24187),
(24193),
(24199),
(24201),
(24208),
(24210),
(24212),
(24213),
(24238),
(24239),
(24241),
(24248),
(24251),
(24253),
(24254),
(24257),
(24259),
(24261),
(24267),
(24274),
(24275),
(24300),
(24306),
(24314),
(24315),
(24316),
(24317),
(24327),
(24331),
(24332),
(24333),
(24335),
(24336),
(24337),
(24339),
(24341),
(24374),
(24378),
(24379),
(24388),
(24393),
(24394),
(24407),
(24408),
(24412),
(24413),
(24414),
(24423),
(24435),
(24458),
(24466),
(24530),
(24573),
(24577),
(24578),
(24579),
(24583),
(24585),
(24586),
(24587),
(24596),
(24600),
(24601),
(24611),
(24617),
(24618),
(24619),
(24637),
(24640),
(24648),
(24649),
(24668),
(24671),
(24672),
(24674),
(24680),
(24684),
(24685),
(24686),
(24690),
(24705),
(24708),
(24709),
(24710),
(24711),
(24712),
(24713),
(24714),
(24715),
(24723),
(24725),
(24726),
(24727),
(24730),
(24732),
(24735),
(24736),
(24740),
(24742),
(24745),
(24747),
(24750),
(24751),
(24752),
(24753),
(24755),
(24757),
(24759),
(24761),
(24762),
(24766),
(24767),
(24769),
(24771),
(24773),
(24776),
(24785),
(24787),
(24791),
(24792),
(24793),
(24802),
(24803),
(24816),
(24817),
(24819),
(24824),
(24825),
(24826),
(24829),
(24831),
(24832),
(24844),
(24857),
(24872),
(24873),
(24875),
(24923),
(24928),
(24935),
(24937),
(24942),
(24950),
(24951),
(24952),
(24953),
(24954),
(24955),
(24957),
(24960),
(24961),
(24962),
(24963),
(24964),
(24965),
(24966),
(24974),
(24975),
(24976),
(24977),
(24982),
(24993),
(25006),
(25008),
(25009),
(25010),
(25011),
(25012),
(25021),
(25022),
(25025),
(25028),
(25050),
(25051),
(25052),
(25054),
(25055),
(25058),
(25104),
(25139),
(25140),
(25143),
(25165),
(25174),
(25185),
(25187),
(25189),
(25190),
(25191),
(25208),
(25210),
(25212),
(25213),
(25217),
(25218),
(25221),
(25222),
(25225),
(25231),
(25233),
(25234),
(25235),
(25236),
(25241),
(25242),
(25245),
(25246),
(25248),
(25251),
(25258),
(25262),
(25263),
(25266),
(25269),
(25272),
(25273),
(25274),
(25275),
(25281),
(25282),
(25286),
(25288),
(25290),
(25291),
(25292),
(25294),
(25295),
(25297),
(25298),
(25299),
(25300),
(25302),
(25304),
(25306),
(25307),
(25308),
(25309),
(25311),
(25312),
(25314),
(25315),
(25316),
(25345),
(25349),
(25363),
(25364),
(25367),
(25368),
(25371),
(25372),
(25373),
(25375),
(25383),
(25384),
(25387),
(25389),
(25391),
(25396),
(25420),
(25424),
(25433),
(25439),
(25442),
(25448),
(25449),
(25454),
(25457),
(25462),
(25464),
(25465),
(25467),
(25471),
(25488),
(25497),
(25501),
(25504),
(25514),
(25515),
(25530),
(25531),
(25595),
(25602),
(25603),
(25605),
(25645),
(25646),
(25650),
(25651),
(25652),
(25668),
(25671),
(25673),
(25677),
(25678),
(25686),
(25710),
(25712),
(25721),
(25725),
(25742),
(25748),
(25755),
(25760),
(25761),
(25762),
(25771),
(25772),
(25777),
(25778),
(25779),
(25781),
(25788),
(25800),
(25802),
(25803),
(25806),
(25807),
(25808),
(25809),
(25810),
(25811),
(25816),
(25821),
(25838),
(25840),
(25843),
(25845),
(25847),
(25848),
(25852),
(25854),
(25856),
(25861),
(25902),
(25903),
(25911),
(25912),
(25913),
(25914),
(25947),
(25992),
(25995),
(25997),
(25999),
(26001),
(26004),
(26005),
(26006),
(26007),
(26008),
(26012),
(26013),
(26017),
(26035),
(26044),
(26050),
(26077),
(26078),
(26079),
(26081),
(26082),
(26090),
(26095),
(26097),
(26098),
(26100),
(26108),
(26125),
(26126),
(26134),
(26141),
(26143),
(26170),
(26181),
(26194),
(26195),
(26196),
(26197),
(26198),
(26206),
(26207),
(26211),
(26218),
(26226),
(26233),
(26258),
(26259),
(26275),
(26281),
(26282),
(26339),
(26350),
(26363),
(26364),
(26365),
(26366),
(26367),
(26368),
(26369),
(26370),
(26371),
(26372),
(26374),
(26375),
(26377),
(26406),
(26408),
(26409),
(26410),
(26412),
(26414),
(26415),
(26419),
(26446),
(26448),
(26470),
(26476),
(26548),
(26556),
(26561),
(26565),
(26572),
(26584),
(26601),
(26610),
(26613),
(26616),
(26622),
(26623),
(26624),
(26625),
(26636),
(26639),
(26641),
(26649),
(26654),
(26663),
(26679),
(26688),
(26693),
(26740),
(26742),
(26748),
(26791),
(26796),
(26799),
(26800),
(26839),
(26861),
(26862),
(26863),
(26864),
(26865),
(26866),
(26867),
(26884),
(26890),
(26899),
(26923),
(26924),
(26968),
(26978),
(26979),
(26980),
(26981),
(26982),
(26984),
(26985),
(26986),
(26987),
(26988),
(26989),
(26990),
(26992),
(26995),
(26996),
(27000),
(27001),
(27002),
(27003),
(27004),
(27005),
(27006),
(27007),
(27008),
(27010),
(27013),
(27014),
(27016),
(27019),
(27021),
(27024),
(27030),
(27031),
(27047),
(27048),
(27049),
(27050),
(27051),
(27060),
(27065),
(27067),
(27068),
(27069),
(27070),
(27071),
(27072),
(27073),
(27074),
(27075),
(27078),
(27079),
(27126),
(27132),
(27135),
(27136),
(27137),
(27138),
(27140),
(27142),
(27154),
(27174),
(27175),
(27176),
(27177),
(27180),
(27187),
(27189),
(27209),
(27210),
(27211),
(27215),
(27216),
(27217),
(27218),
(27219),
(27220),
(27223),
(27224),
(27228),
(27243),
(27254),
(27255),
(27258),
(27261),
(27263),
(27267),
(27270),
(27274),
(27275),
(27276),
(27277),
(27281),
(27286),
(27288),
(27290),
(27360),
(27375),
(27376),
(27378),
(27379),
(27380),
(27381),
(27384),
(27385),
(27386),
(27387),
(27389),
(27390),
(27391),
(27392),
(27393),
(27395),
(27396),
(27397),
(27398),
(27441),
(27448),
(27486),
(27526),
(27527),
(27532),
(27541),
(27547),
(27548),
(27549),
(27550),
(27552),
(27553),
(27554),
(27555),
(27556),
(27557),
(27559),
(27565),
(27567),
(27571),
(27572),
(27573),
(27576),
(27577),
(27580),
(27581),
(27582),
(27584),
(27605),
(27606),
(27608),
(27609),
(27611),
(27613),
(27615),
(27620),
(27624),
(27626),
(27632),
(27633),
(27634),
(27635),
(27636),
(27637),
(27638),
(27640),
(27648),
(27655),
(27662),
(27673),
(27677),
(27686),
(27752),
(27754),
(27755),
(27756),
(27760),
(27765),
(27794),
(27806),
(27814),
(27819),
(27841),
(27849),
(27852),
(27860),
(27861),
(27863),
(27864),
(27865),
(27868),
(27873),
(27874),
(27891),
(27907),
(27909),
(27910),
(27915),
(27919),
(27931),
(27937),
(27983),
(27991),
(27992),
(27994),
(27995),
(28030),
(28099),
(28133),
(28147),
(28149),
(28167),
(28169),
(28239),
(28251),
(28252),
(28253),
(28254),
(28255),
(28256),
(28257),
(28258),
(28259),
(28260),
(28261),
(28262),
(28263),
(28265),
(28271),
(28272),
(28276),
(28287),
(28293),
(28299),
(28301),
(28303),
(28306),
(28308),
(28310),
(28314),
(28318),
(28319),
(28320),
(28321),
(28329),
(28336),
(28337),
(28342),
(28350),
(28351),
(28375),
(28393),
(28394),
(28396),
(28397),
(28410),
(28412),
(28418),
(28419),
(28420),
(28428),
(28431),
(28434),
(28439),
(28444),
(28445),
(28467),
(28470),
(28478),
(28516),
(28522),
(28597),
(28601),
(28608),
(28614),
(28624),
(28674),
(28676),
(28678),
(28684),
(28685),
(28689),
(28690),
(28691),
(28692),
(28696),
(28698),
(28702),
(28715),
(28718),
(28720),
(28722),
(28723),
(28724),
(28734),
(28750),
(28772),
(28776),
(28783),
(28788),
(28790),
(28791),
(28793),
(28795),
(28810),
(28824),
(28825),
(28826),
(28827),
(28836),
(28839),
(28858),
(28859),
(28872),
(28873),
(28880),
(28882),
(28883),
(28887),
(28896),
(28899),
(28900),
(28901),
(28902),
(28913),
(28969),
(28993),
(29001),
(29002),
(29003),
(29006),
(29044),
(29054),
(29058),
(29060),
(29098),
(29117),
(29126),
(29127),
(29128),
(29129),
(29134),
(29135),
(29136),
(29137),
(29138),
(29139),
(29151),
(29155),
(29157),
(29158),
(29160),
(29164),
(29166),
(29168),
(29170),
(29175),
(29182),
(29185),
(29188),
(29194),
(29196),
(29198),
(29228),
(29290),
(29295),
(29300),
(29306),
(29314),
(29317),
(29319),
(29320),
(29341),
(29362),
(29364),
(29380),
(29386),
(29395),
(29405),
(29407),
(29408),
(29425),
(29426),
(29427),
(29428),
(29435),
(29436),
(29443),
(29473),
(29487),
(29492),
(29494),
(29495),
(29497),
(29500),
(29502),
(29515),
(29516),
(29519),
(29522),
(29528),
(29539),
(29540),
(29543),
(29544),
(29546),
(29555),
(29560),
(29561),
(29562),
(29563),
(29564),
(29567),
(29570),
(29572),
(29574),
(29575),
(29576),
(29577),
(29578),
(29580),
(29581),
(29582),
(29583),
(29585),
(29586),
(29587),
(29607),
(29609),
(29638),
(29639),
(29640),
(29641),
(29644),
(29646),
(29647),
(29652),
(29653),
(29655),
(29661),
(29665),
(29666),
(29667),
(29670),
(29673),
(29675),
(29676),
(29677),
(29679),
(29684),
(29690),
(29703),
(29704),
(29707),
(29711),
(29712),
(29716),
(29722),
(29765),
(29768),
(29815),
(29832),
(29845),
(29847),
(29848),
(29850),
(29879),
(29881),
(29896),
(29901),
(29903),
(29906),
(29907),
(29909),
(29915),
(29916),
(29917),
(29925),
(29926),
(29927),
(29928),
(29930),
(29953),
(29954),
(29955),
(29956),
(29964),
(29990),
(29991),
(30010),
(30013),
(30014),
(30016),
(30019),
(30022),
(30036),
(30039),
(30044),
(30050),
(30053),
(30055),
(30069),
(30070),
(30077),
(30081),
(30099),
(30100),
(30102),
(30103),
(30104),
(30105),
(30108),
(30112),
(30113),
(30115),
(30121),
(30127),
(30128),
(30130),
(30131),
(30151),
(30153),
(30164),
(30173),
(30175),
(30177),
(30178),
(30180),
(30194),
(30195),
(30197),
(30198),
(30202),
(30213),
(30218),
(30219),
(30223),
(30238),
(30253),
(30269),
(30270),
(30271),
(30280),
(30285),
(30324),
(30330),
(30335),
(30351),
(30353),
(30356),
(30357),
(30358),
(30383),
(30395),
(30400),
(30401),
(30402),
(30404),
(30405),
(30412),
(30421),
(30422),
(30423),
(30424),
(30430),
(30433),
(30435),
(30448),
(30449),
(30451),
(30455),
(30459),
(30463),
(30464),
(30465),
(30466),
(30467),
(30468),
(30471),
(30474),
(30478),
(30479),
(30481),
(30493),
(30495),
(30500),
(30501),
(30504),
(30505),
(30507),
(30512),
(30520),
(30528),
(30530),
(30545),
(30546),
(30601),
(30605),
(30606),
(30607),
(30608),
(30609),
(30614),
(30615),
(30619),
(30621),
(30637),
(30638),
(30639),
(30641),
(30643),
(30646),
(30647),
(30648),
(30651),
(30652),
(30653),
(30654),
(30661),
(30686),
(30687),
(30688),
(30689),
(30691),
(30695),
(30719),
(30736),
(30740),
(30751),
(30753),
(30755),
(30756),
(30768),
(30817),
(30822),
(30830),
(30832),
(30838),
(30839),
(30846),
(30849),
(30850),
(30854),
(30875),
(30876),
(30877),
(30878),
(30888),
(30889),
(30890),
(30900),
(30901),
(30909),
(30910),
(30923),
(30926),
(30932),
(30936),
(30937),
(30942),
(30943),
(30944),
(30945),
(30967),
(30971),
(30977),
(30980),
(30981),
(30984),
(30986),
(30989),
(30990),
(30992),
(31008),
(31009),
(31012),
(31015),
(31016),
(31018),
(31022),
(31041),
(31042),
(31043),
(31046),
(31069),
(31117),
(31125),
(31139),
(31249),
(31257),
(31262),
(31263),
(31270),
(31271),
(31272),
(31274),
(31275),
(31279),
(31280),
(31281),
(31282),
(31284),
(31286),
(31287),
(31288),
(31289),
(31290),
(31292),
(31295),
(31296),
(31305),
(31306),
(31312),
(31316),
(31319),
(31330),
(31334),
(31337),
(31339),
(31345),
(31366),
(31367),
(31368),
(31376),
(31378),
(31381),
(31387),
(31389),
(31390),
(31394),
(31397),
(31399),
(31400),
(31401),
(31402),
(31404),
(31405),
(31406),
(31407),
(31410),
(31415),
(31416),
(31417),
(31418),
(31419),
(31420),
(31423),
(31425),
(31426),
(31427),
(31436),
(31445),
(31446),
(31457),
(31464),
(31477),
(31481),
(31486),
(31513),
(31516),
(31535),
(31547),
(31551),
(31552),
(31553),
(31566),
(31589),
(31595),
(31596),
(31600),
(31601),
(31602),
(31604),
(31609),
(31610),
(31618),
(31620),
(31622),
(31623),
(31626),
(31627),
(31629),
(31651),
(31662),
(31664),
(31703),
(31705),
(31707),
(31709),
(31713),
(31715),
(31717),
(31718),
(31721),
(31724),
(31729),
(31733),
(31734),
(31739),
(31740),
(31741),
(31742),
(31743),
(31747),
(31751),
(31754),
(31758),
(31759),
(31764),
(31766),
(31772),
(31779),
(31782),
(31784),
(31789),
(31790),
(31803),
(31804),
(31807),
(31808),
(31810),
(31811),
(31812),
(31813),
(31814),
(31815),
(31816),
(31819),
(31827),
(31843),
(31863),
(31864),
(31865),
(31893),
(31898),
(31907),
(31911),
(31916),
(31923),
(31935),
(31939),
(31942),
(31946),
(31948),
(31955),
(31956),
(31961),
(31965),
(31966),
(31971),
(31972),
(31973),
(31975),
(31976),
(31977),
(31978),
(31984),
(31988),
(31994),
(31996),
(31999),
(32000),
(32001),
(32002),
(32004),
(32005),
(32006),
(32009),
(32010),
(32011),
(32012),
(32013),
(32015),
(32017),
(32018),
(32019),
(32020),
(32021),
(32022),
(32024),
(32025),
(32026),
(32039),
(32049),
(32055),
(32056),
(32063),
(32065),
(32071),
(32076),
(32077),
(32080),
(32082),
(32092),
(32093),
(32094),
(32095),
(32103),
(32104),
(32105),
(32110),
(32120),
(32125),
(32126),
(32129),
(32131),
(32132),
(32133),
(32139),
(32154),
(32168),
(32175),
(32176),
(32190),
(32197),
(32202),
(32211),
(32224),
(32231),
(32247),
(32248),
(32261),
(32268),
(32270),
(32300),
(32306),
(32315),
(32317),
(32319),
(32320),
(32321),
(32323),
(32325),
(32328),
(32329),
(32330),
(32337),
(32338),
(32346),
(32361),
(32363),
(32364),
(32369),
(32370),
(32376),
(32378),
(32379),
(32386),
(32388),
(32389),
(32390),
(32391),
(32405),
(32414),
(32415),
(32416),
(32417),
(32418),
(32422),
(32428),
(32430),
(32431),
(32441),
(32445),
(32474),
(32491),
(32546),
(32550),
(32578),
(32583),
(32588),
(32593),
(32594),
(32595),
(32605),
(32606),
(32639),
(32643),
(32645),
(32652),
(32654),
(32666),
(32674),
(32675),
(32677),
(32678),
(32679),
(32682),
(32683),
(32684),
(32689),
(32690),
(32691),
(32693),
(32699),
(32700),
(32707),
(32709),
(32716),
(32721),
(32733),
(32734),
(32735),
(32736),
(32738),
(32739),
(32740),
(32741),
(32742),
(32747),
(32748),
(32749),
(32751),
(32752),
(32759),
(32769),
(32770),
(32771),
(32772),
(32774),
(32778),
(32779),
(32784),
(32797),
(32829),
(32830),
(32831),
(32835),
(32846),
(32858),
(32860),
(32862),
(32863),
(32864),
(32889),
(32897),
(32901),
(32902),
(32903),
(32904),
(32905),
(32906),
(32907),
(32908),
(32909),
(32913),
(32915),
(32916),
(32917),
(32919),
(32921),
(32922),
(32924),
(32926),
(32935),
(32940),
(32950),
(32959),
(32960),
(32962),
(32967),
(32969),
(32971),
(32984),
(32996),
(33031),
(33040),
(33044),
(33045),
(33047),
(33049),
(33051),
(33055),
(33056),
(33068),
(33069),
(33072),
(33073),
(33074),
(33077),
(33078),
(33079),
(33080),
(33081),
(33082),
(33086),
(33096),
(33098),
(33126),
(33129),
(33130),
(33144),
(33173),
(33175),
(33196),
(33197),
(33198),
(33206),
(33227),
(33230),
(33246),
(33247),
(33324),
(33326),
(33331),
(33335),
(33346),
(33360),
(33382),
(33383),
(33385),
(33387),
(33389),
(33392),
(33401),
(33404),
(33417),
(33419),
(33462),
(33463),
(33480),
(33482),
(33483),
(33487),
(33493),
(33502),
(33526),
(33527),
(33528),
(33529),
(33534),
(33535),
(33542),
(33552),
(33553),
(33554),
(33619),
(33620),
(33625),
(33626),
(33628),
(33631),
(33632),
(33640),
(33641),
(33643),
(33659),
(33661),
(33665),
(33684),
(33688),
(33689),
(33698),
(33699),
(33700),
(33709),
(33723),
(33728),
(33731),
(33745),
(33750),
(33763),
(33768),
(33781),
(33786),
(33787),
(33789),
(33792),
(33793),
(33794),
(33813),
(33824),
(33825),
(33827),
(33832),
(33833),
(33837),
(33844),
(33849),
(33850),
(33865),
(33871),
(33876),
(33878),
(33899),
(33907),
(33910),
(33911),
(33912),
(33913),
(33914),
(33925),
(33938),
(33947),
(33951),
(33960),
(33964),
(33969),
(33970),
(33975),
(33982),
(33983),
(33985),
(33986),
(33987),
(33988),
(33989),
(34014),
(34020),
(34025),
(34036),
(34071),
(34073),
(34083),
(34087),
(34088),
(34089),
(34092),
(34093),
(34095),
(34097),
(34099),
(34107),
(34108),
(34110),
(34112),
(34113),
(34120),
(34130),
(34132),
(34135),
(34138),
(34139),
(34143),
(34149),
(34150),
(34163),
(34171),
(34172),
(34176),
(34177),
(34213),
(34214),
(34215),
(34216),
(34217),
(34218),
(34219),
(34232),
(34243),
(34259),
(34298),
(34344),
(34345),
(34346),
(34347),
(34348),
(34351),
(34352),
(34353),
(34354),
(34357),
(34361),
(34363),
(34366),
(34370),
(34379),
(34389),
(34390),
(34391),
(34394),
(34400),
(34411),
(34412),
(34413),
(34414),
(34415),
(34416),
(34417),
(34418),
(34419),
(34423),
(34425),
(34428),
(34432),
(34437),
(34438),
(34439),
(34445),
(34446),
(34447),
(34451),
(34463),
(34490),
(34510),
(34520),
(34578),
(34580),
(34587),
(34613),
(34614),
(34615),
(34616),
(34618),
(34620),
(34625),
(34626),
(34629),
(34637),
(34639),
(34640),
(34641),
(34643),
(34644),
(34645),
(34650),
(34653),
(34654),
(34655),
(34661),
(34665),
(34672),
(34694),
(34695),
(34696),
(34697),
(34709),
(34714),
(34715),
(34719),
(34722),
(34745),
(34752),
(34784),
(34786),
(34787),
(34788),
(34789),
(34793),
(34794),
(34797),
(34798),
(34799),
(34800),
(34802),
(34809),
(34811),
(34812),
(34820),
(34824),
(34828),
(34829),
(34841),
(34852),
(34856),
(34875),
(34879),
(34881),
(34883),
(34886),
(34889),
(34891),
(34893),
(34906),
(34907),
(34913),
(34914),
(34916),
(34917),
(34920),
(34922),
(34924),
(34925),
(34930),
(34931),
(34940),
(34941),
(34942),
(34945),
(34969),
(34974),
(34975),
(34976),
(34984),
(34996),
(35004),
(35010),
(35011),
(35012),
(35013),
(35033),
(35034),
(35039),
(35047),
(35049),
(35054),
(35055),
(35056),
(35062),
(35065),
(35066),
(35067),
(35069),
(35071),
(35072),
(35088),
(35089),
(35092),
(35096),
(35101),
(35105),
(35106),
(35107),
(35112),
(35115),
(35117),
(35120),
(35144),
(35147),
(35161),
(35178),
(35179),
(35180),
(35182),
(35183),
(35185),
(35189),
(35195),
(35201),
(35207),
(35229),
(35231),
(35234),
(35238),
(35243),
(35244),
(35263),
(35267),
(35273),
(35280),
(35290),
(35291),
(35292),
(35293),
(35294),
(35295),
(35313),
(35314),
(35316),
(35317),
(35318),
(35321),
(35323),
(35325),
(35326),
(35328),
(35329),
(35331),
(35332),
(35333),
(35334),
(35335),
(35339),
(35346),
(35353),
(35371),
(35376),
(35377),
(35382),
(35387),
(35389),
(35392),
(35395),
(35401),
(35410),
(35412),
(35424),
(35460),
(35466),
(35472),
(35473),
(35493),
(35499),
(35501),
(35506),
(35507),
(35510),
(35511),
(35514),
(35518),
(35519),
(35556),
(35570),
(35621),
(35686),
(35718),
(35727),
(35728),
(35735),
(35741),
(35742),
(35748),
(35759),
(35760),
(35771),
(35772),
(35780),
(35783),
(35839),
(35846),
(35851),
(35853),
(35857),
(35871),
(35873),
(35877),
(35913),
(35914),
(35916),
(35918),
(35919),
(35920),
(35927),
(35928),
(35932),
(35944),
(35945),
(35946),
(35949),
(35954),
(35955),
(35963),
(35964),
(35965),
(35966),
(35967),
(35968),
(35969),
(35970),
(35971),
(35972),
(35973),
(35974),
(35975),
(35976),
(35977),
(35978),
(35979),
(35980),
(35981),
(35982),
(35983),
(35984),
(35985),
(35986),
(35987),
(35988),
(35989),
(35990),
(35997),
(35998),
(35999),
(36002),
(36020),
(36021),
(36023),
(36025),
(36033),
(36052),
(36054),
(36073),
(36088),
(36093),
(36094),
(36095),
(36099),
(36100),
(36102),
(36115),
(36123),
(36138),
(36140),
(36141),
(36145),
(36152),
(36153),
(36170),
(36173),
(36176),
(36181),
(36207),
(36208),
(36224),
(36227),
(36228),
(36237),
(36238),
(36246),
(36247),
(36250),
(36276),
(36277),
(36279),
(36288),
(36295),
(36296),
(36299),
(36310),
(36312),
(36314),
(36328),
(36332),
(36333),
(36339),
(36340),
(36341),
(36342),
(36343),
(36344),
(36345),
(36348),
(36380),
(36398),
(36399),
(36401),
(36402),
(36404),
(36414),
(36415),
(36416),
(36417),
(36433),
(36434),
(36435),
(36436),
(36438),
(36439),
(36441),
(36447),
(36448),
(36457),
(36458),
(36461),
(36464),
(36469),
(36470),
(36475),
(36478),
(36482),
(36483),
(36488),
(36500),
(36507),
(36508),
(36509),
(36516),
(36517),
(36518),
(36527),
(36534),
(36536),
(36538),
(36539),
(36540),
(36541),
(36554),
(36558),
(36570),
(36571),
(36578),
(36586),
(36590),
(36594),
(36601),
(36604),
(36606),
(36608),
(36609),
(36612),
(36622),
(36623),
(36624),
(36625),
(36627),
(36628),
(36632),
(36638),
(36641),
(36642),
(36645),
(36646),
(36647),
(36650),
(36655),
(36656),
(36659),
(36664),
(36671),
(36677),
(36678),
(36679),
(36710),
(36711),
(36712),
(36713),
(36714),
(36732),
(36739),
(36778),
(36779),
(36780),
(36781),
(36787),
(36789),
(36791),
(36796),
(36801),
(36805),
(36806),
(36807),
(36810),
(36812),
(36814),
(36822),
(36825),
(36831),
(36832),
(36833),
(36836),
(36838),
(36839),
(36840),
(36841),
(36842),
(36843),
(36844),
(36863),
(36864),
(36866),
(36872),
(36876),
(36877),
(36886),
(36891),
(36894),
(36905),
(36906),
(36909),
(36913),
(36914),
(36916),
(36917),
(36919),
(36920),
(36921),
(36924),
(36927),
(36929),
(36947),
(36956),
(36957),
(36965),
(36966),
(36971),
(36972),
(36974),
(36979),
(36980),
(36983),
(36984),
(36986),
(36987),
(36988),
(36990),
(36991),
(37027),
(37028),
(37030),
(37031),
(37054),
(37057),
(37067),
(37073),
(37074),
(37082),
(37089),
(37104),
(37110),
(37111),
(37112),
(37113),
(37121),
(37122),
(37123),
(37126),
(37132),
(37133),
(37136),
(37138),
(37154),
(37156),
(37162),
(37176),
(37208),
(37216),
(37221),
(37249),
(37250),
(37251),
(37252),
(37254),
(37255),
(37257),
(37259),
(37260),
(37271),
(37272),
(37273),
(37274),
(37275),
(37276),
(37277),
(37320),
(37321),
(37322),
(37323),
(37328),
(37329),
(37330),
(37331),
(37332),
(37334),
(37335),
(37359),
(37361),
(37369),
(37372),
(37387),
(37389),
(37412),
(37417),
(37421),
(37450),
(37455),
(37456),
(37460),
(37462),
(37463),
(37470),
(37479),
(37486),
(37500),
(37506),
(37511),
(37527),
(37532),
(37537),
(37540),
(37548),
(37551),
(37552),
(37554),
(37563),
(37566),
(37572),
(37577),
(37578),
(37579),
(37580),
(37581),
(37589),
(37591),
(37592),
(37596),
(37597),
(37599),
(37602),
(37621),
(37628),
(37629),
(37630),
(37632),
(37634),
(37646),
(37647),
(37654),
(37661),
(37662),
(37664),
(37667),
(37668),
(37675),
(37681),
(37685),
(37695),
(37700),
(37711),
(37717),
(37718),
(37719),
(37727),
(37749),
(37770),
(37777),
(37778),
(37798),
(37800),
(37801),
(37802),
(37803),
(37804),
(37805),
(37806),
(37807),
(37808),
(37809),
(37810),
(37811),
(37813),
(37823),
(37834),
(37838),
(37839),
(37840),
(37841),
(37847),
(37850),
(37851),
(37856),
(37862),
(37865),
(37867),
(37871),
(37892),
(37894),
(37906),
(37908),
(37910),
(37921),
(37922),
(37930),
(37933),
(37937),
(37940),
(37945),
(37946),
(37950),
(37956),
(37958),
(37962),
(37965),
(37967),
(37968),
(37972),
(37973),
(37974),
(37975),
(37978),
(37979),
(37986),
(37988),
(37992),
(37998),
(38002),
(38007),
(38009),
(38010),
(38023),
(38024),
(38025),
(38027),
(38029),
(38030),
(38032),
(38034),
(38035),
(38047),
(38048),
(38051),
(38052),
(38053),
(38056),
(38058),
(38059),
(38063),
(38065),
(38066),
(38067),
(38074),
(38075),
(38076),
(38078),
(38083),
(38084),
(38085),
(38093),
(38094),
(38095),
(38107),
(38109),
(38113),
(38120),
(38122),
(38125),
(38127),
(38129),
(38133),
(38134),
(38135),
(38136),
(38145),
(38146),
(38147),
(38148),
(38149),
(38153),
(38154),
(38155),
(38167),
(38177),
(38178),
(38182),
(38183),
(38187),
(38193),
(38203),
(38204),
(38205),
(38208),
(38209),
(38210),
(38213),
(38223),
(38226),
(38233),
(38234),
(38238),
(38239),
(38240),
(38243),
(38245),
(38246),
(38252),
(38253),
(38254),
(38259),
(38260),
(38262),
(38263),
(38264),
(38265),
(38267),
(38274),
(38275),
(38276),
(38277),
(38279),
(38280),
(38285),
(38295),
(38310),
(38313),
(38324),
(38328),
(38329),
(38330),
(38333),
(38338),
(38340),
(38342),
(38344),
(38363),
(38366),
(38370),
(38372),
(38374),
(38377),
(38378),
(38383),
(38386),
(38387),
(38391),
(38400),
(38401),
(38441),
(38446),
(38461),
(38465),
(38470),
(38474),
(38495),
(38496),
(38505),
(38509),
(38510),
(38520),
(38523),
(38526),
(38534),
(38535),
(38538),
(38543),
(38554),
(38556),
(38557),
(38558),
(38559),
(38560),
(38561),
(38562),
(38563),
(38564),
(38565),
(38566),
(38567),
(38568),
(38569),
(38570),
(38572),
(38580),
(38582),
(38584),
(38585),
(38586),
(38588),
(38591),
(38595),
(38598),
(38606),
(38616),
(38617),
(38621),
(38625),
(38626),
(38628),
(38630),
(38631),
(38634),
(38636),
(38641),
(38643),
(38645),
(38657),
(38658),
(38661),
(38663),
(38669),
(38692),
(38697),
(38699),
(38704),
(38708),
(38721),
(38723),
(38731),
(38739),
(38742),
(38753),
(38760),
(38762),
(38764),
(38765),
(38767),
(38768),
(38770),
(38772),
(38775),
(38777),
(38791),
(38797),
(38798),
(38801),
(38804),
(38806),
(38807),
(38808),
(38815),
(38816),
(38817),
(38821),
(38822),
(38823),
(38824),
(38825),
(38826),
(38827),
(38846),
(38848),
(38849),
(38851),
(38852),
(38858),
(38859),
(38861),
(38863),
(38864),
(38875),
(38879),
(38880),
(38881),
(38882),
(38883),
(38884),
(38887),
(38894),
(38895),
(38896),
(38897),
(38899),
(38904),
(38907),
(38909),
(38913),
(38914),
(38915),
(38918),
(38919),
(38921),
(38923),
(38926),
(38930),
(38935),
(38940),
(38941),
(38942),
(38943),
(38945),
(38946),
(38950),
(38952),
(38959),
(38967),
(38971),
(38985),
(38986),
(38987),
(38988),
(38989),
(38990),
(38992),
(38995),
(39000),
(39002),
(39006),
(39009),
(39015),
(39016),
(39017),
(39019),
(39020),
(39021),
(39022),
(39023),
(39025),
(39026),
(39029),
(39032),
(39039),
(39044),
(39046),
(39047),
(39053),
(39054),
(39058),
(39060),
(39061),
(39062),
(39064),
(39065),
(39066),
(39068),
(39069),
(39070),
(39076),
(39077),
(39078),
(39079),
(39083),
(39087),
(39097),
(39098),
(39099),
(39101),
(39116),
(39119),
(39120),
(39121),
(39122),
(39123),
(39125),
(39129),
(39135),
(39136),
(39145),
(39153),
(39157),
(39159),
(39160),
(39164),
(39165),
(39171),
(39172),
(39174),
(39176),
(39182),
(39192),
(39196),
(39197),
(39198),
(39202),
(39204),
(39207),
(39210),
(39212),
(39214),
(39215),
(39226),
(39229),
(39230),
(39252),
(39258),
(39262),
(39267),
(39268),
(39270),
(39271),
(39285),
(39293),
(39297),
(39299),
(39309),
(39322),
(39328),
(39329),
(39332),
(39337),
(39339),
(39349),
(39367),
(39371),
(39378),
(39386),
(39396),
(39412),
(39413),
(39415),
(39419),
(39435),
(39436),
(39445),
(39449),
(39456),
(39457),
(39460),
(39474),
(39475),
(39476),
(39477),
(39512),
(39513),
(39528),
(39529),
(39544),
(39560),
(39566),
(39574),
(39582),
(39587),
(39590),
(39592),
(39595),
(39600),
(39609),
(39621),
(39622),
(39661),
(39665),
(39668),
(39669),
(39670),
(39674),
(39675),
(39676),
(39697),
(39703),
(39794),
(39796),
(39810),
(39812),
(39826),
(39830),
(39835),
(39837),
(39838),
(39857),
(39865),
(39883),
(39886),
(39901),
(39904),
(39908),
(39920),
(39928),
(39945),
(39948),
(39955),
(39956),
(39967),
(39972),
(39979),
(39980),
(39995),
(39996),
(40011),
(40019),
(40032),
(40041),
(40055),
(40057),
(40063),
(40066),
(40071),
(40074),
(40081),
(40084),
(40086),
(40097),
(40099),
(40102),
(40109),
(40119),
(40123),
(40124),
(40146),
(40157),
(40165),
(40166),
(40167),
(40173),
(40185),
(40191),
(40193),
(40197),
(40198),
(40199),
(40220),
(40225),
(40227),
(40228),
(40239),
(40248),
(40251),
(40254),
(40259),
(40279),
(40290),
(40293),
(40303),
(40310),
(40311),
(40312),
(40313),
(40317),
(40321),
(40322),
(40325),
(40327),
(40334),
(40337),
(40339),
(40344),
(40346),
(40347),
(40348),
(40351),
(40356),
(40357),
(40358),
(40363),
(40366),
(40367),
(40368),
(40384),
(40385),
(40392),
(40400),
(40406),
(40411),
(40412),
(40413),
(40414),
(40415),
(40416),
(40420),
(40423),
(40427),
(40429),
(40430),
(40431),
(40434),
(40449),
(40450),
(40471),
(40472),
(40481),
(40486),
(40489),
(40491),
(40493),
(40497),
(40504),
(40505),
(40507),
(40508),
(40509),
(40525),
(40536),
(40542),
(40554),
(40560),
(40563),
(40564),
(40565),
(40569),
(40571),
(40581),
(40585),
(40595),
(40597),
(40602),
(40604),
(40605),
(40608),
(40616),
(40620),
(40633),
(40635),
(40639),
(40641),
(40643),
(40645),
(40646),
(40651),
(40652),
(40671),
(40672),
(40685),
(40726),
(40728),
(40736),
(40739),
(40740),
(40742),
(40751),
(40758),
(40770),
(40772),
(40777),
(40778),
(40787),
(40796),
(40801),
(40810),
(40814),
(40822),
(40827),
(40835),
(40837),
(40838),
(40842),
(40843),
(40844),
(40846),
(40856),
(40859),
(40860),
(40861),
(40864),
(40872),
(40873),
(40876),
(40877),
(40881),
(40886),
(40888),
(40890),
(40892),
(40893),
(40894),
(40895),
(40901),
(40903),
(40906),
(40909),
(40917),
(40926),
(40928),
(40930),
(40935),
(40945),
(40951),
(40954),
(40958),
(40964),
(40965),
(40968),
(40969),
(40970),
(40972),
(40976),
(40991),
(41001),
(41003),
(41028),
(41029),
(41032),
(41035),
(41044),
(41047),
(41050),
(41052),
(41054),
(41055),
(41060),
(41063),
(41065),
(41069),
(41070),
(41072),
(41075),
(41080),
(41082),
(41083),
(41084),
(41092),
(41093),
(41103),
(41109),
(41115),
(41116),
(41121),
(41137),
(41139),
(41152),
(41169),
(41170),
(41171),
(41177),
(41178),
(41179),
(41180),
(41182),
(41183),
(41184),
(41186),
(41187),
(41188),
(41189),
(41190),
(41192),
(41197),
(41198),
(41213),
(41214),
(41225),
(41226),
(41227),
(41228),
(41229),
(41230),
(41231),
(41238),
(41241),
(41247),
(41250),
(41255),
(41256),
(41259),
(41264),
(41265),
(41270),
(41272),
(41278),
(41279),
(41280),
(41281),
(41283),
(41291),
(41299),
(41302),
(41332),
(41334),
(41335),
(41336),
(41338),
(41345),
(41346),
(41351),
(41352),
(41353),
(41355),
(41360),
(41363),
(41368),
(41370),
(41372),
(41373),
(41374),
(41375),
(41377),
(41378),
(41383),
(41384),
(41388),
(41389),
(41390),
(41392),
(41394),
(41395),
(41396),
(41407),
(41410),
(41411),
(41419),
(41421),
(41426),
(41439),
(41440),
(41442),
(41448),
(41450),
(41451),
(41456),
(41461),
(41467),
(41468),
(41470),
(41471),
(41472),
(41473),
(41483),
(41484),
(41485),
(41486),
(41487),
(41489),
(41490),
(41491),
(41492),
(41519),
(41526),
(41528),
(41533),
(41540),
(41543),
(41544),
(41546),
(41547),
(41548),
(41549),
(41558),
(41559),
(41563),
(41564),
(41565),
(41567),
(41568),
(41571),
(41578),
(41579),
(41580),
(41581),
(41586),
(41588),
(41592),
(41596),
(41597),
(41598),
(41601),
(41621),
(41622),
(41625),
(41626),
(41633),
(41637),
(41911),
(41914),
(41916),
(41917),
(41926),
(41931),
(41932),
(41933),
(41936),
(41937),
(41939),
(41940),
(41957),
(41958),
(41959),
(41960),
(41961),
(41964),
(41965),
(41978),
(41980),
(41984),
(41985),
(41990),
(42002),
(42003),
(42013),
(42018),
(42020),
(42021),
(42024),
(42025),
(42053),
(42058),
(42129),
(42131),
(42132),
(42133),
(42139),
(42142),
(42144),
(42149),
(42150),
(42152),
(42161),
(42165),
(42169),
(42185),
(42203),
(42246),
(42299),
(42313),
(42315),
(42319),
(42320),
(42322),
(42324),
(42325),
(42326),
(42328),
(42329),
(42330),
(42331),
(42332),
(42333),
(42337),
(42349),
(42360),
(42363),
(42368),
(42369),
(42370),
(42371),
(42372),
(42380),
(42382),
(42383),
(42384),
(42385),
(42389),
(42395),
(42396),
(42397),
(42399),
(42400),
(42401),
(42402),
(42411),
(42414),
(42426),
(42434),
(42435),
(42441),
(42443),
(42447),
(42455),
(42463),
(42476),
(42483),
(42485),
(42486),
(42488),
(42489),
(42502),
(42512),
(42514),
(42516),
(42518),
(42535),
(42537),
(42540),
(42560),
(42561),
(42574),
(42579),
(42580),
(42583),
(42587),
(42611),
(42628),
(42632),
(42633),
(42634),
(42635),
(42653),
(42658),
(42670),
(42671),
(42672),
(42696),
(42702),
(42710),
(42711),
(42717),
(42719),
(42721),
(42724),
(42725),
(42730),
(42733),
(42739),
(42740),
(42741),
(42746),
(42747),
(42756),
(42762),
(42767),
(42772),
(42780),
(42781),
(42782),
(42783),
(42785),
(42789),
(42790),
(42791),
(42793),
(42799),
(42802),
(42803),
(42804),
(42811),
(42826),
(42832),
(42833),
(42834),
(42841),
(42842),
(42843),
(42846),
(42853),
(42858),
(42859),
(42867),
(42869),
(42870),
(42872),
(42873),
(42878),
(42879),
(42880),
(42889),
(42890),
(42891),
(42894),
(42895),
(42896),
(42897),
(42902),
(42903),
(42904),
(42907),
(42908),
(42913),
(42914),
(42953),
(42964),
(42972),
(42978),
(42995),
(42999),
(43003),
(43004),
(43006),
(43036),
(43037),
(43043),
(43044),
(43058),
(43061),
(43063),
(43064),
(43065),
(43067),
(43075),
(43077),
(43083),
(43084),
(43086),
(43087),
(43090),
(43093),
(43094),
(43097),
(43100),
(43103),
(43104),
(43107),
(43108),
(43122),
(43123),
(43125),
(43128),
(43130),
(43131),
(43132),
(43133),
(43137),
(43138),
(43140),
(43150),
(43151),
(43153),
(43156),
(43157),
(43159),
(43178),
(43187),
(43191),
(43192),
(43193),
(43194),
(43195),
(43196),
(43197),
(43198),
(43199),
(43202),
(43205),
(43206),
(43225),
(43228),
(43235),
(43243),
(43245),
(43246),
(43256),
(43259),
(43260),
(43261),
(43262),
(43267),
(43268),
(43270),
(43273),
(43286),
(43287),
(43288),
(43292),
(43297),
(43298),
(43299),
(43300),
(43301),
(43303),
(43305),
(43309),
(43315),
(43325),
(43330),
(43334),
(43337),
(43340),
(43341),
(43345),
(43346),
(43347),
(43348),
(43352),
(43353),
(43354),
(43356),
(43357),
(43358),
(43359),
(43361),
(43362),
(43364),
(43365),
(43368),
(43370),
(43379),
(43380),
(43381),
(43384),
(43393),
(43398),
(43399),
(43409),
(43410),
(43411),
(43413),
(43415),
(43416),
(43417),
(43419),
(43427),
(43428),
(43433),
(43435),
(43439),
(43441),
(43445),
(43451),
(43456),
(43461),
(43469),
(43470),
(43471),
(43472),
(43473),
(43474),
(43475),
(43477),
(43483),
(43484),
(43488),
(43489),
(43492),
(43495),
(43496),
(43497),
(43501),
(43505),
(43507),
(43511),
(43512),
(43515),
(43516),
(43517),
(43518),
(43519),
(43520),
(43522),
(43523),
(43524),
(43525),
(43526),
(43528),
(43529),
(43532),
(43535),
(43543),
(43545),
(43553),
(43556),
(43560),
(43564),
(43565),
(43567),
(43569),
(43571),
(43572),
(43574),
(43575),
(43577),
(43578),
(43579),
(43581),
(43584),
(43585),
(43586),
(43591),
(43592),
(43593),
(43612),
(43613),
(43619),
(43621),
(43622),
(43644),
(43646),
(43648),
(43649),
(43650),
(43651),
(43660),
(43661),
(43663),
(43665),
(43666),
(43667),
(43671),
(43673),
(43680),
(43682),
(43683),
(43684),
(43690),
(43693),
(43695),
(43701),
(43709),
(43714),
(43715),
(43720),
(43726),
(43727),
(43728),
(43729),
(43732),
(43746),
(43767),
(43769),
(43785),
(43786),
(43789),
(43794),
(43795),
(43799),
(43804),
(43807),
(43809),
(43821),
(43834),
(43869),
(43895),
(43903),
(43906),
(43923),
(43928),
(43931),
(43932),
(43933),
(43937),
(43941),
(43948),
(43951),
(43952),
(43969),
(43971),
(43974),
(43976),
(43984),
(43988),
(43993),
(43996),
(43997),
(44000),
(44005),
(44008),
(44015),
(44016),
(44030),
(44031),
(44038),
(44053),
(44078),
(44079),
(44081),
(44082),
(44089),
(44093),
(44095),
(44120),
(44121),
(44126),
(44127),
(44137),
(44138),
(44139),
(44141),
(44142),
(44144),
(44148),
(44149),
(44152),
(44156),
(44159),
(44164),
(44165),
(44168),
(44169),
(44170),
(44171),
(44173),
(44174),
(44176),
(44181),
(44185),
(44188),
(44189),
(44202),
(44211),
(44212),
(44216),
(44219),
(44220),
(44221),
(44222),
(44223),
(44237),
(44241),
(44242),
(44247),
(44248),
(44256),
(44258),
(44262),
(44267),
(44268),
(44271),
(44274),
(44280),
(44285),
(44286),
(44289),
(44294),
(44304),
(44308),
(44310),
(44318),
(44319),
(44323),
(44325),
(44327),
(44328),
(44332),
(44339),
(44351),
(44357),
(44358),
(44361),
(44364),
(44368),
(44370),
(44382),
(44407),
(44408),
(44415),
(44424),
(44425),
(44429),
(44430),
(44454),
(44455),
(44457),
(44464),
(44473),
(44477),
(44478),
(44479),
(44481),
(44482),
(44503),
(44504),
(44512),
(44518),
(44519),
(44525),
(44530),
(44532),
(44533),
(44534),
(44536),
(44541),
(44542),
(44547),
(44553),
(44563),
(44564),
(44572),
(44577),
(44583),
(44586),
(44600),
(44602),
(44606),
(44614),
(44617),
(44618),
(44619),
(44620),
(44622),
(44639),
(44640),
(44641),
(44642),
(44654),
(44657),
(44658),
(44685),
(44732),
(44753),
(44755),
(44765),
(44780),
(44781),
(44787),
(44788),
(44789),
(44790),
(44791),
(44796),
(44808),
(44811),
(44812),
(44813),
(44817),
(44818),
(44823),
(44843),
(44848),
(44868),
(44871),
(44872),
(44876),
(44881),
(44934),
(44937),
(44945),
(44956),
(44957),
(44961),
(44966),
(44985),
(44997),
(45012),
(45017),
(45023),
(45026),
(45029),
(45031),
(45036),
(45055),
(45064),
(45071),
(45075),
(45088),
(45089),
(45090),
(45096),
(45101),
(45102),
(45105),
(45108),
(45110),
(45113),
(45123),
(45124),
(45129),
(45130),
(45133),
(45134),
(45141),
(45145),
(45185),
(45189),
(45192),
(45195),
(45197),
(45199),
(45200),
(45204),
(45205),
(45206),
(45209),
(45214),
(45215),
(45221),
(45228),
(45235),
(45251),
(45256),
(45269),
(45271),
(45274),
(45276),
(45280),
(45284),
(45286),
(45287),
(45288),
(45289),
(45290),
(45291),
(45292),
(45293),
(45294),
(45295),
(45296),
(45297),
(45298),
(45299),
(45300),
(45301),
(45302),
(45314),
(45321),
(45324),
(45327),
(45328),
(45334),
(45337),
(45344),
(45350),
(45352),
(45353),
(45356),
(45362),
(45409),
(45417),
(45419),
(45420),
(45421),
(45425),
(45428),
(45429),
(45430),
(45442),
(45444),
(45447),
(45456),
(45458),
(45462),
(45463),
(45468),
(45469),
(45472),
(45476),
(45477),
(45485),
(45487),
(45491),
(45493),
(45497),
(45504),
(45505),
(45507),
(45509),
(45511),
(45516),
(45524),
(45534),
(45537),
(45543),
(45544),
(45573),
(45576),
(45577),
(45578),
(45580),
(45587),
(45588),
(45589),
(45590),
(45600),
(45603),
(45604),
(45611),
(45625),
(45627),
(45628),
(45629),
(45632),
(45639),
(45645),
(45646),
(45647),
(45648),
(45649),
(45650),
(45659),
(45660),
(45661),
(45664),
(45693),
(45696),
(45716),
(45717),
(45719),
(45724),
(45725),
(45730),
(45739),
(45742),
(45744),
(45748),
(45773),
(45777),
(45778),
(45798),
(45799),
(45800),
(45803),
(45804),
(45815),
(45820),
(45833),
(45837),
(45854),
(45866),
(45873),
(45874),
(45875),
(45889),
(45897),
(45898),
(45899),
(45900),
(45902),
(45906),
(45913),
(45919),
(45924),
(45926),
(45931),
(45940),
(45943),
(45946),
(45947),
(45964),
(45967),
(45975),
(45980),
(45981),
(45983),
(45989),
(45992),
(46010),
(46012),
(46014),
(46015),
(46016),
(46023),
(46027),
(46028),
(46029),
(46031),
(46032),
(46033),
(46035),
(46042),
(46043),
(46044),
(46045),
(46047),
(46049),
(46057),
(46062),
(46065),
(46067),
(46070),
(46074),
(46080),
(46081),
(46083),
(46084),
(46092),
(46093),
(46098),
(46099),
(46101),
(46104),
(46119),
(46145),
(46152),
(46153),
(46155),
(46161),
(46164),
(46166),
(46167),
(46180),
(46181),
(46182),
(46183),
(46187),
(46188),
(46189),
(46190),
(46191),
(46192),
(46194),
(46198),
(46200),
(46202),
(46206),
(46221),
(46231),
(46232),
(46239),
(46260),
(46266),
(46276),
(46279),
(46280),
(46283),
(46285),
(46288),
(46291),
(46292),
(46305),
(46315),
(46323),
(46331),
(46333),
(46341),
(46357),
(46361),
(46362),
(46364),
(46365),
(46366),
(46368),
(46380),
(46381),
(46394),
(46406),
(46411),
(46420),
(46421),
(46422),
(46429),
(46430),
(46432),
(46433),
(46434),
(46440),
(46443),
(46444),
(46447),
(46448),
(46449),
(46459),
(46460),
(46466),
(46468),
(46469),
(46479),
(46480),
(46481),
(46483),
(46485),
(46486),
(46487),
(46543),
(46550),
(46556),
(46557),
(46558),
(46559),
(46560),
(46561),
(46562),
(46563),
(46566),
(46567),
(46568),
(46572),
(46579),
(46580),
(46582),
(46587),
(46590),
(46591),
(46595),
(46598),
(46602),
(46607),
(46611),
(46612),
(46613),
(46614),
(46615),
(46616),
(46617),
(46618),
(46620),
(46621),
(46624),
(46629),
(46630),
(46641),
(46642),
(46651),
(46654),
(46661),
(46664),
(46665),
(46667),
(46671),
(46672),
(46673),
(46674),
(46677),
(46681),
(46686),
(46691),
(46693),
(46696),
(46702),
(46704),
(46709),
(46711),
(46716),
(46717),
(46718),
(46719),
(46720),
(46721),
(46722),
(46723),
(46724),
(46725),
(46726),
(46727),
(46728),
(46729),
(46730),
(46731),
(46734),
(46745),
(46762),
(46764),
(46770),
(46772),
(46773),
(46787),
(46791),
(46801),
(46813),
(46816),
(46824),
(46825),
(46826),
(46841),
(46845),
(46846),
(46856),
(46857),
(46877),
(46879),
(46880),
(46887),
(46906),
(46956),
(46960),
(46962),
(46978),
(46982),
(46983),
(46987),
(46988),
(46990),
(47001),
(47003),
(47009),
(47011),
(47012),
(47014),
(47020),
(47021),
(47028),
(47029),
(47033),
(47034),
(47042),
(47043),
(47057),
(47059),
(47062),
(47063),
(47064),
(47066),
(47068),
(47069),
(47070),
(47071),
(47072),
(47074),
(47076),
(47077),
(47079),
(47081),
(47084),
(47093),
(47096),
(47098),
(47107),
(47117),
(47122),
(47139),
(47143),
(47144),
(47145),
(47146),
(47148),
(47149),
(47151),
(47152),
(47153),
(47155),
(47156),
(47157),
(47158),
(47160),
(47161),
(47162),
(47163),
(47164),
(47165),
(47166),
(47168),
(47171),
(47173),
(47176),
(47206),
(47208),
(47219),
(47244),
(47248),
(47249),
(47257),
(47272),
(47277),
(47282),
(47293),
(47299),
(47305),
(47307),
(47308),
(47316),
(47321),
(47322),
(47323),
(47326),
(47333),
(47334),
(47337),
(47338),
(47339),
(47340),
(47345),
(47380),
(47382),
(47390),
(47392),
(47394),
(47403),
(47405),
(47410),
(47413),
(47414),
(47422),
(47424),
(47431),
(47432),
(47442),
(47447),
(47449),
(47450),
(47451),
(47453),
(47465),
(47467),
(47468),
(47470),
(47471),
(47472),
(47474),
(47475),
(47476),
(47480),
(47481),
(47482),
(47485),
(47486),
(47487),
(47488),
(47489),
(47497),
(47498),
(47504),
(47516),
(47517),
(47519),
(47520),
(47528),
(47530),
(47534),
(47540),
(47541),
(47550),
(47575),
(47601),
(47604),
(47610),
(47611),
(47614),
(47629),
(47632),
(47633),
(47635),
(47637),
(47664),
(47665),
(47673),
(47674),
(47676),
(47679),
(47689),
(47695),
(47697),
(47698),
(47700),
(47702),
(47703),
(47718),
(47721),
(47722),
(47723),
(47724),
(47729),
(47739),
(47740),
(47741),
(47744),
(47749),
(47751),
(47753),
(47757),
(47758),
(47761),
(47767),
(47768),
(47777),
(47778),
(47780),
(47781),
(47782),
(47783),
(47785),
(47788),
(47808),
(47809),
(47810),
(47811),
(47812),
(47813),
(47814),
(47815),
(47824),
(47825),
(47826),
(47827),
(47835),
(47836),
(47837),
(47838),
(47841),
(47843),
(47848),
(47850),
(47851),
(47852),
(47853),
(47855),
(47857),
(47859),
(47860),
(47863),
(47864),
(47865),
(47867),
(47902),
(47914),
(47917),
(47920),
(47926),
(47928),
(47930),
(47938),
(47948),
(47960),
(47961),
(47962),
(47964),
(47968),
(47976),
(47984),
(47991),
(47992),
(47993),
(47994),
(47995),
(47996),
(48011),
(48013),
(48039),
(48045),
(48046),
(48047),
(48048),
(48053),
(48060),
(48062),
(48063),
(48065),
(48066),
(48067),
(48068),
(48070),
(48071),
(48072),
(48073),
(48084),
(48085),
(48098),
(48099),
(48100),
(48101),
(48102),
(48103),
(48104),
(48105),
(48119),
(48120),
(48122),
(48123),
(48124),
(48125),
(48126),
(48127),
(48130),
(48132),
(48133),
(48134),
(48135),
(48137),
(48140),
(48147),
(48155),
(48156),
(48157),
(48158),
(48159),
(48160),
(48161),
(48163),
(48164),
(48165),
(48169),
(48181),
(48184),
(48187),
(48192),
(48208),
(48210),
(48232),
(48245),
(48249),
(48250),
(48261),
(48262),
(48264),
(48267),
(48268),
(48282),
(48283),
(48285),
(48286),
(48287),
(48288),
(48290),
(48291),
(48292),
(48296),
(48298),
(48299),
(48300),
(48301),
(48307),
(48309),
(48310),
(48316),
(48330),
(48334),
(48360),
(48365),
(48374),
(48376),
(48377),
(48378),
(48400),
(48417),
(48423),
(48424),
(48440),
(48441),
(48442),
(48443),
(48450),
(48451),
(48459),
(48461),
(48462),
(48463),
(48464),
(48465),
(48468),
(48469),
(48479),
(48480),
(48489),
(48490),
(48491),
(48504),
(48532),
(48533),
(48540),
(48541),
(48542),
(48543),
(48548),
(48549),
(48563),
(48564),
(48565),
(48566),
(48567),
(48568),
(48569),
(48570),
(48571),
(48572),
(48573),
(48574),
(48575),
(48576),
(48577),
(48578),
(48579),
(48583),
(48585),
(48598),
(48599),
(48601),
(48603),
(48606),
(48617),
(48622),
(48628),
(48637),
(48638),
(48639),
(48640),
(48648),
(48652),
(48656),
(48657),
(48658),
(48659),
(48660),
(48661),
(48662),
(48663),
(48664),
(48665),
(48666),
(48667),
(48668),
(48669),
(48671),
(48672),
(48673),
(48674),
(48675),
(48676),
(48678),
(48679),
(48680),
(48689),
(48690),
(48691),
(48693),
(48696),
(48697),
(48698),
(48699),
(48700),
(48712),
(48714),
(48737),
(48738),
(48746),
(48747),
(48749),
(48750),
(48752),
(48753),
(48754),
(48755),
(48756),
(48759),
(48760),
(48765),
(48770),
(48772),
(48774),
(48775),
(48781),
(48782),
(48784),
(48785),
(48788),
(48800),
(48801),
(48802),
(48805),
(48806),
(48812),
(48813),
(48815),
(48820),
(48821),
(48822),
(48823),
(48824),
(48825),
(48826),
(48827),
(48828),
(48829),
(48830),
(48831),
(48832),
(48845),
(48850),
(48851),
(48852),
(48854),
(48862),
(48871),
(48872),
(48873),
(48876),
(48877),
(48878),
(48880),
(48881),
(48883),
(48895),
(48917),
(48920),
(48931),
(48932),
(48935),
(48936),
(48953),
(48960),
(48974),
(48981),
(48984),
(48995),
(48996),
(48998),
(48999),
(49000),
(49001),
(49005),
(49009),
(49010),
(49011),
(49012),
(49020),
(49021),
(49026),
(49028),
(49029),
(49037),
(49044),
(49045),
(49047),
(49048),
(49049),
(49050),
(49051),
(49052),
(49053),
(49054),
(49078),
(49084),
(49089),
(49090),
(49091),
(49092),
(49093),
(49099),
(49106),
(49110),
(49111),
(49113),
(49119),
(49124),
(49125),
(49127),
(49138),
(49143),
(49158),
(49161),
(49165),
(49177),
(49184),
(49204),
(49206),
(49213),
(49215),
(49230),
(49231),
(49232),
(49233),
(49235),
(49236),
(49237),
(49238),
(49239),
(49240),
(49242),
(49243),
(49256),
(49257),
(49266),
(49267),
(49268),
(49269),
(49270),
(49271),
(49272),
(49273),
(49275),
(49276),
(49278),
(49279),
(49282),
(49283),
(49284),
(49288),
(49294),
(49296),
(49298),
(49305),
(49309),
(49312),
(49317),
(49323),
(49324),
(49348),
(49349),
(49353),
(49354),
(49362),
(49363),
(49364),
(49372),
(49376),
(49381),
(49383),
(49387),
(49404),
(49406),
(49418),
(49427),
(49429),
(49433),
(49439),
(49446),
(49453),
(49454),
(49459),
(49463),
(49466),
(49481),
(49482),
(49485),
(49500),
(49501),
(49511),
(49512),
(49527),
(49537),
(49544),
(49546),
(49547),
(49549),
(49560),
(49576),
(49584),
(49587),
(49592),
(49613),
(49616),
(49617),
(49624),
(49637),
(49639),
(49641),
(49644),
(49675),
(49678),
(49680),
(49681),
(49686),
(49690),
(49696),
(49704),
(49705),
(49706),
(49708),
(49710),
(49711),
(49712),
(49715),
(49718),
(49719),
(49720),
(49723),
(49729),
(49734),
(49742),
(49747),
(49749),
(49753),
(49755),
(49758),
(49759),
(49771),
(49776),
(49797),
(49799),
(49800),
(49802),
(49803),
(49804),
(49805),
(49806),
(49830),
(49836),
(49840),
(49841),
(49843),
(49846),
(49848),
(49859),
(49861),
(49863),
(49865),
(49891),
(49892),
(49893),
(49894),
(49895),
(49896),
(49897),
(49903),
(49904),
(49906),
(49909),
(49913),
(49914),
(49915),
(49916),
(49917),
(49918),
(49919),
(49920),
(49921),
(49922),
(49923),
(49924),
(49926),
(49927),
(49928),
(49929),
(49930),
(49935),
(49942),
(49945),
(49956),
(49961),
(49965),
(49966),
(49967),
(49968),
(49969),
(49970),
(49971),
(49972),
(49973),
(49974),
(49975),
(49978),
(49980),
(49981),
(49985),
(49986),
(49987),
(49989),
(49991),
(49993),
(49994),
(49995),
(49996),
(49997),
(49998),
(49999),
(50004),
(50006),
(50015),
(50021),
(50027),
(50028),
(50035),
(50038),
(50046),
(50047),
(50050),
(50052),
(50064),
(50066),
(50073),
(50075),
(50084),
(50086),
(50089),
(50090),
(50091),
(50092),
(50094),
(50100),
(50101),
(50102),
(50104),
(50135),
(50144),
(50145),
(50146),
(50156),
(50165),
(50169),
(50183),
(50184),
(50185),
(50188),
(50196),
(50198),
(50205),
(50206),
(50207),
(50217),
(50231),
(50232),
(50234),
(50245),
(50251),
(50252),
(50255),
(50256),
(50257),
(50259),
(50265),
(50271),
(50273),
(50276),
(50282),
(50287),
(50288),
(50289),
(50290),
(50291),
(50293),
(50295),
(50299),
(50301),
(50303),
(50305),
(50306),
(50307),
(50319),
(50323),
(50328),
(50335),
(50341),
(50343),
(50344),
(50347),
(50349),
(50356),
(50361),
(50370),
(50375),
(50377),
(50378),
(50379),
(50380),
(50400),
(50401),
(50402),
(50403),
(50405),
(50406),
(50410),
(50411),
(50412),
(50424),
(50431),
(50432),
(50434),
(50435),
(50436),
(50437),
(50439),
(50445),
(50454),
(50455),
(50456),
(50459),
(50462),
(50463),
(50464),
(50477),
(50478),
(50479),
(50484),
(50498),
(50499),
(50500),
(50504),
(50508),
(50509),
(50510),
(50511),
(50512),
(50517),
(50518),
(50519),
(50521),
(50523),
(50533),
(50534),
(50536),
(50537),
(50538),
(50541),
(50545),
(50550),
(50559),
(50566),
(50572),
(50573),
(50578),
(50581),
(50582),
(50588),
(50597),
(50629),
(50631),
(50633),
(50634),
(50635),
(50638),
(50655),
(50658),
(50659),
(50660),
(50661),
(50662),
(50663),
(50666),
(50668),
(50673),
(50675),
(50679),
(50688),
(50691),
(50693),
(50701),
(50704),
(50705),
(50706),
(50721),
(50725),
(50729),
(50731),
(50732),
(50733),
(50737),
(50739),
(50740),
(50744),
(50761),
(50770),
(50773),
(50782),
(50783),
(50796),
(50797),
(50799),
(50804),
(50818),
(50820),
(50821),
(50830),
(50832),
(50834),
(50842),
(50843),
(50844),
(50845),
(50846),
(50853),
(50854),
(50859),
(50861),
(50874),
(50876),
(50894),
(50895),
(50900),
(50905),
(50907),
(50914),
(50918),
(50919),
(50923),
(50924),
(50926),
(50927),
(50978),
(50979),
(50992),
(50997),
(51011),
(51015),
(51016),
(51018),
(51020),
(51026),
(51035),
(51037),
(51046),
(51054),
(51055),
(51057),
(51059),
(51062),
(51064),
(51067),
(51069),
(51072),
(51077),
(51079),
(51081),
(51083),
(51085),
(51087),
(51089),
(51091),
(51093),
(51095),
(51097),
(51100),
(51102),
(51105),
(51107),
(51111),
(51120),
(51121),
(51131),
(51134),
(51135),
(51137),
(51154),
(51156),
(51157),
(51165),
(51187),
(51196),
(51197),
(51198),
(51199),
(51200),
(51203),
(51216),
(51220),
(51221),
(51226),
(51227),
(51228),
(51229),
(51232),
(51233),
(51235),
(51236),
(51240),
(51243),
(51258),
(51259),
(51270),
(51272),
(51275),
(51279),
(51285),
(51287),
(51290),
(51292),
(51298),
(51305),
(51308),
(51310),
(51315),
(51316),
(51325),
(51326),
(51327),
(51328),
(51330),
(51334),
(51339),
(51340),
(51354),
(51356),
(51363),
(51365),
(51372),
(51382),
(51399),
(51409),
(51410),
(51411),
(51413),
(51416),
(51417),
(51418),
(51419),
(51423),
(51424),
(51425),
(51426),
(51427),
(51428),
(51429),
(51430),
(51431),
(51432),
(51440),
(51442),
(51446),
(51447),
(51454),
(51460),
(51467),
(51484),
(51489),
(51491),
(51492),
(51495),
(51496),
(51500),
(51502),
(51503),
(51504),
(51505),
(51506),
(51509),
(51514),
(51515),
(51573),
(51580),
(51584),
(51585),
(51586),
(51587),
(51588),
(51591),
(51592),
(51593),
(51596),
(51598),
(51601),
(51608),
(51609),
(51610),
(51613),
(51614),
(51618),
(51656),
(51657),
(51658),
(51659),
(51662),
(51675),
(51676),
(51677),
(51680),
(51693),
(51695),
(51699),
(51714),
(51718),
(51722),
(51724),
(51726),
(51728),
(51732),
(51734),
(51735),
(51736),
(51740),
(51751),
(51756),
(51757),
(51772),
(51775),
(51776),
(51778),
(51779),
(51786),
(51787),
(51797),
(51798),
(51799),
(51803),
(51804),
(51808),
(51809),
(51811),
(51818),
(51827),
(51830),
(51842),
(51844),
(51853),
(51854),
(51855),
(51856),
(51857),
(51863),
(51864),
(51872),
(51875),
(51876),
(51877),
(51878),
(51879),
(51886),
(51888),
(51889),
(51893),
(51894),
(51895),
(51897),
(51898),
(51899),
(51901),
(51909),
(51912),
(51917),
(51918),
(51919),
(51920),
(51926),
(51934),
(51935),
(51936),
(51937),
(51940),
(51945),
(51949),
(51951),
(51961),
(51962),
(51963),
(51968),
(51973),
(51976),
(51979),
(51981),
(51989),
(51990),
(51997),
(51998),
(51999),
(52000),
(52004),
(52005),
(52007),
(52008),
(52014),
(52025),
(52026),
(52030),
(52032),
(52042),
(52043),
(52045),
(52053),
(52069),
(52078),
(52082),
(52083),
(52086),
(52088),
(52090),
(52108),
(52125),
(52139),
(52149),
(52157),
(52160),
(52163),
(52167),
(52169),
(52171),
(52187),
(52194),
(52196),
(52198),
(52199),
(52206),
(52207),
(52209),
(52210),
(52212),
(52217),
(52219),
(52221),
(52223),
(52224),
(52228),
(52229),
(52230),
(52251),
(52252),
(52253),
(52256),
(52261),
(52263),
(52265),
(52267),
(52270),
(52280),
(52282),
(52292),
(52307),
(52312),
(52318),
(52327),
(52328),
(52334),
(52345),
(52346),
(52352),
(52353),
(52355),
(52356),
(52359),
(52360),
(52361),
(52364),
(52372),
(52373),
(52374),
(52375),
(52383),
(52389),
(52391),
(52401),
(52402),
(52415),
(52425),
(52428),
(52430),
(52431),
(52433),
(52444),
(52445),
(52447),
(52460),
(52463),
(52465),
(52466),
(52468),
(52469),
(52471),
(52472),
(52473),
(52474),
(52475),
(52476),
(52486),
(52487),
(52496),
(52498),
(52499),
(52501),
(52502),
(52504),
(52506),
(52511),
(52515),
(52519),
(52521),
(52522),
(52527),
(52532),
(52534),
(52536),
(52537),
(52538),
(52540),
(52542),
(52544),
(52545),
(52546),
(52547),
(52548),
(52549),
(52554),
(52566),
(52577),
(52581),
(52583),
(52586),
(52587),
(52591),
(52594),
(52595),
(52596),
(52600),
(52601),
(52604),
(52608),
(52609),
(52610),
(52613),
(52620),
(52631),
(52633),
(52643),
(52644),
(52655),
(52657),
(52658),
(52660),
(52672),
(52675),
(52680),
(52684),
(52695),
(52696),
(52699),
(52700),
(52702),
(52705),
(52708),
(52709),
(52711),
(52713),
(52715),
(52718),
(52719),
(52721),
(52722),
(52737),
(52740),
(52741),
(52743),
(52751),
(52752),
(52754),
(52755),
(52758),
(52761),
(52762),
(52764),
(52771),
(52772),
(52773),
(52778),
(52781),
(52782),
(52784),
(52789),
(52794),
(52806),
(52807),
(52813),
(52814),
(52818),
(52825),
(52835),
(52839),
(52851),
(52856),
(52859),
(52862),
(52863),
(52864),
(52871),
(52872),
(52873),
(52883),
(52885),
(52889),
(52890),
(52904),
(52905),
(52909),
(52921),
(52926),
(52931),
(52932),
(52939),
(52943),
(52986),
(52987),
(52988),
(52992),
(52994),
(52996),
(53001),
(53002),
(53003),
(53005),
(53006),
(53007),
(53019),
(53023),
(53027),
(53031),
(53033),
(53043),
(53044),
(53045),
(53051),
(53058),
(53059),
(53060),
(53062),
(53068),
(53069),
(53070),
(53072),
(53073),
(53085),
(53086),
(53087),
(53088),
(53089),
(53094),
(53098),
(53099),
(53100),
(53101),
(53102),
(53108),
(53109),
(53111),
(53116),
(53141),
(53145),
(53148),
(53150),
(53153),
(53158),
(53174),
(53191),
(53193),
(53194),
(53195),
(53208),
(53209),
(53214),
(53254),
(53271),
(53288),
(53289),
(53301),
(53307),
(53308),
(53310),
(53311),
(53313),
(53314),
(53317),
(53318),
(53322),
(53326),
(53327),
(53329),
(53330),
(53332),
(53333),
(53335),
(53338),
(53339),
(53340),
(53346),
(53351),
(53352),
(53353),
(53357),
(53359),
(53364),
(53366),
(53372),
(53388),
(53394),
(53395),
(53396),
(53402),
(53404),
(53407),
(53408),
(53418),
(53422),
(53424),
(53425),
(53431),
(53435),
(53437),
(53438),
(53442),
(53449),
(53460),
(53477),
(53480),
(53492),
(53493),
(53498),
(53499),
(53508),
(53509),
(53526),
(53528),
(53529),
(53532),
(53533),
(53534),
(53536),
(53537),
(53538),
(53540),
(53542),
(53543),
(53544),
(53545),
(53546),
(53547),
(53548),
(53549),
(53550),
(53558),
(53559),
(53560),
(53561),
(53562),
(53564),
(53565),
(53566),
(53567),
(53568),
(53571),
(53572),
(53573),
(53574),
(53575),
(53578),
(53579),
(53580),
(53581),
(53582),
(53584),
(53586),
(53587),
(53588),
(53589),
(53595),
(53600),
(53601),
(53617),
(53618),
(53625),
(53629),
(53631),
(53633),
(53638),
(53639),
(53652),
(53653),
(53654),
(53659),
(53669),
(53697),
(53704),
(53719),
(53726),
(53733),
(53739),
(53742),
(53769),
(53772),
(53786),
(53788),
(53799),
(53807),
(53809),
(53810),
(53815),
(53821),
(53824),
(54016),
(54028),
(54029),
(54035),
(54039),
(54042),
(54049),
(54050),
(54051),
(54052),
(54053),
(54060),
(54063),
(54068),
(54070),
(54071),
(54074),
(54075),
(54076),
(54077),
(54078),
(54079),
(54080),
(54092),
(54094),
(54095),
(54096),
(54113),
(54121),
(54126),
(54129),
(54132),
(54135),
(54158),
(54169),
(54172),
(54175),
(54183),
(54185),
(54188),
(54190),
(54191),
(54195),
(54196),
(54198),
(54203),
(54216),
(54226),
(54235),
(54237),
(54238),
(54249),
(54260),
(54261),
(54273),
(54283),
(54284),
(54290),
(54299),
(54303),
(54309),
(54311),
(54315),
(54316),
(54319),
(54321),
(54324),
(54331),
(54334),
(54335),
(54337),
(54338),
(54339),
(54340),
(54345),
(54350),
(54361),
(54376),
(54378),
(54380),
(54387),
(54393),
(54394),
(54395),
(54396),
(54399),
(54416),
(54417),
(54429),
(54431),
(54433),
(54451),
(54453),
(54458),
(54459),
(54460),
(54468),
(54470),
(54479),
(54485),
(54487),
(54491),
(54495),
(54498),
(54499),
(54502),
(54504),
(54507),
(54511),
(54514),
(54518),
(54521),
(54525),
(54526),
(54527),
(54531),
(54532),
(54540),
(54549),
(54565),
(54573),
(54576),
(54577),
(54578),
(54587),
(54588),
(54593),
(54594),
(54602),
(54604),
(54609),
(54610),
(54611),
(54612),
(54613),
(54615),
(54616),
(54617),
(54618),
(54619),
(54620),
(54622),
(54624),
(54630),
(54631),
(54632),
(54634),
(54640),
(54644),
(54646),
(54648),
(54651),
(54660),
(54662),
(54663),
(54667),
(54668),
(54673),
(54675),
(54677),
(54679),
(54680),
(54688),
(54689),
(54694),
(54702),
(54703),
(54704),
(54706),
(54708),
(54709),
(54716),
(54719),
(54723),
(54755),
(54757),
(54761),
(54770),
(54772),
(54781),
(54785),
(54788),
(54790),
(54791),
(54794),
(54799),
(54801),
(54804),
(54805),
(54820),
(54822),
(54823),
(54843),
(54846),
(54880),
(54881),
(54882),
(54883),
(54884),
(54885),
(54886),
(54887),
(54900),
(54906),
(54908),
(54919),
(54920),
(54932),
(54933),
(54951),
(54956),
(54957),
(54958),
(54965),
(54970),
(54971),
(54973),
(54974),
(54975),
(54976),
(54977),
(54982),
(54983),
(54986),
(54987),
(54992),
(54997),
(55006),
(55007),
(55008),
(55009),
(55021),
(55029),
(55039),
(55041),
(55046),
(55050),
(55051),
(55054),
(55065),
(55066),
(55069),
(55070),
(55071),
(55074),
(55075),
(55078),
(55079),
(55090),
(55093),
(55095),
(55102),
(55104),
(55144),
(55160),
(55168),
(55196),
(55209),
(55210),
(55216),
(55217),
(55218),
(55219),
(55220),
(55224),
(55225),
(55226),
(55240),
(55241),
(55253),
(55255),
(55258),
(55259),
(55260),
(55261),
(55262),
(55263),
(55264),
(55265),
(55268),
(55269),
(55270),
(55271),
(55274),
(55276),
(55277),
(55281),
(55284),
(55313),
(55314),
(55317),
(55318),
(55319),
(55320),
(55321),
(55322),
(55324),
(55331),
(55334),
(55346),
(55348),
(55359),
(55360),
(55363),
(55364),
(55411),
(55412),
(55416),
(55424),
(55425),
(55430),
(55469),
(55470),
(55482),
(55483),
(55484),
(55485),
(55487),
(55488),
(55489),
(55490),
(55491),
(55492),
(55495),
(55496),
(55497),
(55498),
(55499),
(55504),
(55505),
(55506),
(55507),
(55508),
(55509),
(55511),
(55520),
(55521),
(55530),
(55536),
(55549),
(55550),
(55555),
(55556),
(55557),
(55567),
(55568),
(55569),
(55579),
(55581),
(55582),
(55597),
(55598),
(55599),
(55602),
(55604),
(55605),
(55613),
(55622),
(55624),
(55625),
(55643),
(55645),
(55646),
(55648),
(55652),
(55659),
(55700),
(55703),
(55704),
(55716),
(55719),
(55728),
(55736),
(55748),
(55749),
(55750),
(55751),
(55752),
(55753),
(55754),
(55756),
(55770),
(55771),
(55772),
(55778),
(55779),
(55780),
(55781),
(55790),
(55797),
(55802),
(55804),
(55809),
(55813),
(55815),
(55818),
(55823),
(55824),
(55838),
(55840),
(55841),
(55864),
(55874),
(55877),
(55880),
(55890),
(55894),
(55929),
(55931),
(55932),
(55933),
(55935),
(55936),
(55937),
(55939),
(55951),
(55958),
(55959),
(55960),
(55962),
(55963),
(55968),
(55973),
(55978),
(55981),
(55982),
(55983),
(55984),
(56033),
(56036),
(56038),
(56046),
(56061),
(56071),
(56072),
(56090),
(56091),
(56092),
(56098),
(56104),
(56106),
(56107),
(56112),
(56113),
(56115),
(56122),
(56123),
(56125),
(56127),
(56130),
(56131),
(56132),
(56138),
(56139),
(56141),
(56143),
(56144),
(56147),
(56149),
(56160),
(56161),
(56185),
(56190),
(56191),
(56198),
(56200),
(56211),
(56222),
(56223),
(56230),
(56236),
(56239),
(56252),
(56254),
(56260),
(56277),
(56287),
(56305),
(56320),
(56326),
(56329),
(56331),
(56332),
(56346),
(56351),
(56352),
(56361),
(56362),
(56379),
(56404),
(56405),
(56411),
(56425),
(56426),
(56430),
(56433),
(56434),
(56440),
(56442),
(56444),
(56447),
(56448),
(56485),
(56491),
(56506),
(56513),
(56515),
(56517),
(56520),
(56521),
(56525),
(56536),
(56537),
(56539),
(56545),
(56557),
(56559),
(56562),
(56564),
(56565),
(56581),
(56582),
(56584),
(56586),
(56603),
(56605),
(56606),
(56607),
(56609),
(56624),
(56626),
(56627),
(56628),
(56629),
(56630),
(56631),
(56640),
(56641),
(56645),
(56659),
(56662),
(56664),
(56666),
(56668),
(56670),
(56671),
(56672),
(56678),
(56685),
(56687),
(56698),
(56699),
(56701),
(56707),
(56715),
(56718),
(56719),
(56720),
(56721),
(56727),
(56728),
(56729),
(56730),
(56731),
(56734),
(56753),
(56754),
(56755),
(56760),
(56761),
(56770),
(56771),
(56772),
(56773),
(56774),
(56775),
(56776),
(56777),
(56780),
(56781),
(56785),
(56790),
(56791),
(56795),
(56796),
(56797),
(56815),
(56854),
(56860),
(56861),
(56862),
(56891),
(56893),
(56896),
(56898),
(56902),
(56903),
(56905),
(56906),
(56907),
(56909),
(56917),
(56918),
(56919),
(56920),
(56921),
(56922),
(56923),
(56925),
(56933),
(56937),
(56938),
(56939),
(56940),
(56966),
(56969),
(57049),
(57050),
(57052),
(57053),
(57058),
(57062),
(57063),
(57089),
(57090),
(57094),
(57095),
(57108),
(57118),
(57143),
(57292),
(57305),
(57323),
(57337),
(57346),
(57347),
(57369),
(57374),
(57376),
(57380),
(57384),
(57386),
(57388),
(57389),
(57390),
(57391),
(57392),
(57393),
(57395),
(57397),
(57402),
(57407),
(57411),
(57413),
(57420),
(57454),
(57456),
(57461),
(57464),
(57465),
(57466),
(57473),
(57480),
(57486),
(57487),
(57488),
(57490),
(57506),
(57507),
(57528),
(57530),
(57536),
(57537),
(57547),
(57548),
(57553),
(57554),
(57556),
(57573),
(57580),
(57582),
(57587),
(57589),
(57590),
(57593),
(57594),
(57596),
(57599),
(57601),
(57602),
(57603),
(57615),
(57616),
(57617),
(57620),
(57628),
(57635),
(57640),
(57641),
(57644),
(57645),
(57647),
(57648),
(57651),
(57657),
(57661),
(57665),
(57670),
(57671),
(57677),
(57679),
(57723),
(57724),
(57725),
(57745),
(57755),
(57759),
(57765),
(57766),
(57767),
(57770),
(57774),
(57775),
(57777),
(57778),
(57779),
(57780),
(57781),
(57783),
(57785),
(57787),
(57789),
(57790),
(57795),
(57799),
(57802),
(57807),
(57808),
(57823),
(57825),
(57833),
(57834),
(57838),
(57841),
(57842),
(57845),
(57846),
(57860),
(57863),
(57864),
(57871),
(57874),
(57888),
(57896),
(57897),
(57906),
(57908),
(57914),
(57921),
(57922),
(57941),
(57949),
(57951),
(57964),
(57965),
(57969),
(57970),
(57974),
(57975),
(57981),
(57984),
(57992),
(57993),
(57994),
(58012),
(58021),
(58025),
(58044),
(58054),
(58061),
(58062),
(58071),
(58106),
(58117),
(58118),
(58119),
(58151),
(58154),
(58179),
(58180),
(58181),
(58183),
(58184),
(58187),
(58194),
(58203),
(58204),
(58205),
(58207),
(58208),
(58209),
(58210),
(58211),
(58212),
(58213),
(58214),
(58215),
(58216),
(58217),
(58218),
(58219),
(58220),
(58221),
(58222),
(58223),
(58224),
(58230),
(58270),
(58282),
(58283),
(58349),
(58351),
(58352),
(58371),
(58373),
(58412),
(58418),
(58419),
(58420),
(58421),
(58438),
(58448),
(58449),
(58450),
(58451),
(58452),
(58453),
(58456),
(58457),
(58459),
(58460),
(58461),
(58462),
(58464),
(58466),
(58471),
(58475),
(58494),
(58504),
(58505),
(58508),
(58509),
(58510),
(58511),
(58513),
(58514),
(58516),
(58517),
(58518),
(58519),
(58520),
(58526),
(58529),
(58531),
(58534),
(58535),
(58537),
(58544),
(58548),
(58561),
(58563),
(58564),
(58566),
(58567),
(58597),
(58604),
(58605),
(58607),
(58608),
(58609),
(58610),
(58611),
(58612),
(58617),
(58619),
(58621),
(58622),
(58624),
(58628),
(58632),
(58633),
(58642),
(58644),
(58660),
(58663),
(58664),
(58665),
(58666),
(58667),
(58678),
(58681),
(58683),
(58684),
(58691),
(58700),
(58701),
(58702),
(58743),
(58747),
(58758),
(58769),
(58770),
(58772),
(58781),
(58782),
(58786),
(58787),
(58788),
(58797),
(58798),
(58799),
(58810),
(58811),
(58814),
(58815),
(58816),
(58817),
(58822),
(58823),
(58827),
(58829),
(58830),
(58839),
(58840),
(58843),
(58844),
(58845),
(58847),
(58849),
(58850),
(58855),
(58859),
(58861),
(58867),
(58879),
(58890),
(58896),
(58898),
(58902),
(58905),
(58912),
(58913),
(58915),
(58919),
(58921),
(58922),
(58935),
(58940),
(58941),
(58953),
(58955),
(58959),
(58961),
(58966),
(58967),
(58969),
(58971),
(58972),
(58973),
(58976),
(58978),
(58980),
(58981),
(58987),
(58988),
(58989),
(58991),
(58996),
(59001),
(59006),
(59007),
(59011),
(59013),
(59016),
(59017),
(59019),
(59020),
(59021),
(59023),
(59024),
(59025),
(59034),
(59035),
(59039),
(59040),
(59044),
(59047),
(59050),
(59051),
(59060),
(59064),
(59065),
(59069),
(59079),
(59080),
(59081),
(59082),
(59083),
(59085),
(59100),
(59102),
(59104),
(59105),
(59106),
(59109),
(59110),
(59111),
(59114),
(59119),
(59121),
(59124),
(59130),
(59131),
(59132),
(59133),
(59134),
(59138),
(59142),
(59144),
(59146),
(59147),
(59148),
(59150),
(59151),
(59153),
(59155),
(59160),
(59161),
(59163),
(59164),
(59165),
(59166),
(59167),
(59168),
(59169),
(59170),
(59171),
(59172),
(59178),
(59179),
(59180),
(59182),
(59185),
(59186),
(59187),
(59191),
(59192),
(59199),
(59209),
(59210),
(59211),
(59215),
(59220),
(59223),
(59225),
(59226),
(59228),
(59233),
(59235),
(59237),
(59239),
(59241),
(59242),
(59243),
(59244),
(59246),
(59247),
(59248),
(59249),
(59251),
(59252),
(59254),
(59256),
(59257),
(59259),
(59260),
(59261),
(59262),
(59263),
(59264),
(59265),
(59268),
(59269),
(59270),
(59271),
(59273),
(59280),
(59288),
(59290),
(59300),
(59304),
(59318),
(59319),
(59324),
(59325),
(59329),
(59330),
(59331),
(59342),
(59343),
(59344),
(59346),
(59347),
(59348),
(59350),
(59351),
(59352),
(59355),
(59357),
(59359),
(59361),
(59362),
(59364),
(59367),
(59371),
(59373),
(59374),
(59376),
(59381),
(59389),
(59391),
(59392),
(59395),
(59397),
(59398),
(59399),
(59400),
(59401),
(59402),
(59408),
(59409),
(59412),
(59413),
(59423),
(59432),
(59434),
(59439),
(59444),
(59448),
(59455),
(59460),
(59467),
(59468),
(59471),
(59482),
(59485),
(59513),
(59515),
(59517),
(59519),
(59520),
(59525),
(59530),
(59542),
(59543),
(59544),
(59545),
(59547),
(59548),
(59557),
(59558),
(59563),
(59575),
(59577),
(59590),
(59593),
(59594),
(59599),
(59603),
(59604),
(59605),
(59606),
(59607),
(59608),
(59610),
(59611),
(59616),
(59617),
(59633),
(59634),
(59637),
(59638),
(59651),
(59653),
(59656),
(59661),
(59663),
(59679),
(59682),
(59683),
(59684),
(59685),
(59691),
(59695),
(59696),
(59700),
(59703),
(59710),
(59712),
(59713),
(59715),
(59716),
(59717),
(59718),
(59723),
(59727),
(59735),
(59736),
(59742),
(59743),
(59746),
(59750),
(59760),
(59762),
(59763),
(59765),
(59766),
(59767),
(59769),
(59779),
(59795),
(59805),
(59812),
(59813),
(59814),
(59815),
(59817),
(59823),
(59826),
(59827),
(59832),
(59839),
(59840),
(59841),
(59844),
(59846),
(59851),
(59852),
(59855),
(59856),
(59863),
(59864),
(59877),
(59879),
(59881),
(59882),
(59883),
(59884),
(59885),
(59886),
(59894),
(59901),
(59921),
(59963),
(59965),
(59972),
(59974),
(59978),
(59982),
(59984),
(59985),
(59986),
(59987),
(59988),
(59989),
(59991),
(59992),
(59993),
(59994),
(59997),
(59999),
(60003),
(60004),
(60005),
(60006),
(60008),
(60009),
(60011),
(60012),
(60013),
(60015),
(60016),
(60017),
(60018),
(60032),
(60035),
(60039),
(60041),
(60043),
(60051),
(60052),
(60053),
(60067),
(60073),
(60076),
(60078),
(60079),
(60080),
(60085),
(60089),
(60100),
(60103),
(60106),
(60107),
(60111),
(60112),
(60115),
(60117),
(60122),
(60123),
(60127),
(60129),
(60181),
(60183),
(60186),
(60194),
(60195),
(60197),
(60203),
(60204),
(60210),
(60211),
(60212),
(60229),
(60233),
(60234),
(60235),
(60236),
(60239),
(60241),
(60300),
(60307),
(60309),
(60339),
(60351),
(60352),
(60428),
(60431),
(60432),
(60433),
(60440),
(60443),
(60446),
(60447),
(60450),
(60452),
(60453),
(60472),
(60474),
(60483),
(60488),
(60500),
(60504),
(60505),
(60506),
(60518),
(60526),
(60530),
(60540),
(60541),
(60542),
(60578),
(60580),
(60585),
(60588),
(60590),
(60626),
(60642),
(60644),
(60646),
(60654),
(60672),
(60678),
(60682),
(60683),
(60699),
(60708),
(60742),
(60753),
(60781),
(60782),
(60784),
(60785),
(60786),
(60790),
(60802),
(60803),
(60805),
(60809),
(60814),
(60817),
(60842),
(60844),
(60850),
(60856),
(60857),
(60859),
(60868),
(60869),
(60870),
(60871),
(60872),
(60873),
(60876),
(60880),
(60882),
(60890),
(60896),
(60897),
(60898),
(60899),
(60900),
(60901),
(60905),
(60906),
(60917),
(60918),
(60924),
(60926),
(60927),
(60930),
(60932),
(60935),
(60940),
(60941),
(60944),
(60945),
(60946),
(60947),
(60949),
(60950),
(60951),
(60952),
(60954),
(60959),
(60961),
(60962),
(60963),
(60965),
(60968),
(60972),
(60973),
(60979),
(60980),
(60981),
(60982),
(60983),
(60988),
(60991),
(60995),
(61001),
(61005),
(61006),
(61016),
(61018),
(61024),
(61025),
(61029),
(61034),
(61036),
(61039),
(61041),
(61042),
(61046),
(61048),
(61051),
(61064),
(61070),
(61077),
(61080),
(61083),
(61087),
(61091),
(61094),
(61100),
(61101),
(61103),
(61109),
(61110),
(61111),
(61115),
(61123),
(61124),
(61127),
(61129),
(61133),
(61140),
(61143),
(61159),
(61160),
(61162),
(61164),
(61166),
(61168),
(61171),
(61172),
(61173),
(61176),
(61178),
(61182),
(61186),
(61187),
(61191),
(61193),
(61194),
(61195),
(61196),
(61197),
(61198),
(61209),
(61211),
(61213),
(61215),
(61218),
(61223),
(61226),
(61242),
(61243),
(61244),
(61253),
(61259),
(61260),
(61263),
(61269),
(61272),
(61281),
(61282),
(61286),
(61287),
(61291),
(61295),
(61296),
(61299),
(61300),
(61301),
(61302),
(61305),
(61314),
(61319),
(61320),
(61326),
(61327),
(61343),
(61344),
(61347),
(61352),
(61358),
(61372),
(61373),
(61374),
(61375),
(61380),
(61381),
(61382),
(61385),
(61395),
(61398),
(61399),
(61409),
(61411),
(61415),
(61419),
(61420),
(61421),
(61423),
(61424),
(61443),
(61445),
(61448),
(61454),
(61457),
(61461),
(61466),
(61474),
(61479),
(61480),
(61486),
(61490),
(61491),
(61493),
(61507),
(61511),
(61512),
(61515),
(61528),
(61545),
(61549),
(61550),
(61552),
(61554),
(61556),
(61558),
(61561),
(61562),
(61563),
(61565),
(61567),
(61569),
(61572),
(61579),
(61584),
(61590),
(61592),
(61593),
(61596),
(61597),
(61599),
(61600),
(61601),
(61604),
(61606),
(61607),
(61613),
(61621),
(61623),
(61624),
(61626),
(61627),
(61628),
(61634),
(61635),
(61662),
(61663),
(61666),
(61667),
(61668),
(61676),
(61685),
(61696),
(61705),
(61712),
(61716),
(61721),
(61728),
(61729),
(61730),
(61733),
(61747),
(61767),
(61780),
(61781),
(61789),
(61791),
(61793),
(61794),
(61795),
(61796),
(61797),
(61798),
(61799),
(61800),
(61801),
(61802),
(61804),
(61805),
(61806),
(61807),
(61808),
(61815),
(61817),
(61819),
(61821),
(61822),
(61823),
(61824),
(61825),
(61832),
(61833),
(61834),
(61835),
(61836),
(61837),
(61838),
(61839),
(61840),
(61841),
(61842),
(61843),
(61844),
(61845),
(61849),
(61857),
(61859),
(61862),
(61866),
(61868),
(61870),
(61873),
(61879),
(61880),
(61881),
(61888),
(61893),
(61895),
(61896),
(61897),
(61903),
(61909),
(61911),
(61912),
(61923),
(61924),
(61925),
(61926),
(61927),
(61928),
(61929),
(61965),
(61967),
(61973),
(61998),
(62014),
(62026),
(62030),
(62036),
(62053),
(62063),
(62078),
(62089),
(62103),
(62105),
(62117),
(62118),
(62119),
(62120),
(62121),
(62122),
(62124),
(62128),
(62129),
(62130),
(62131),
(62138),
(62167),
(62169),
(62195),
(62198),
(62204),
(62225),
(62226),
(62249),
(62250),
(62261),
(62264),
(62265),
(62280),
(62292),
(62298),
(62305),
(62309),
(62310),
(62312),
(62315),
(62316),
(62317),
(62318),
(62322),
(62326),
(62327),
(62328),
(62331),
(62332),
(62333),
(62334),
(62335),
(62342),
(62347),
(62354),
(62356),
(62368),
(62372),
(62373),
(62382),
(62395),
(62401),
(62402),
(62415),
(62417),
(62418),
(62420),
(62441),
(62442),
(62443),
(62444),
(62445),
(62446),
(62455),
(62456),
(62466),
(62479),
(62482),
(62503),
(62507),
(62526),
(62531),
(62536),
(62540),
(62544),
(62554),
(62563),
(62575),
(62581),
(62583),
(62589),
(62601),
(62607),
(62608),
(62611),
(62613),
(62614),
(62626),
(62638),
(62648),
(62649),
(62653),
(62658),
(62672),
(62673),
(62707),
(62708),
(62711),
(62717),
(62722),
(62726),
(62732),
(62767),
(62768),
(62769),
(62793),
(62796),
(62806),
(62832),
(62836),
(62844),
(62845),
(62846),
(62854),
(62855),
(62863),
(62867),
(62874),
(62875),
(62881),
(62900),
(62901),
(62902),
(62903),
(62904),
(62928),
(62935),
(62938),
(62939),
(62960),
(62961),
(62989),
(62997),
(62998),
(63003),
(63010),
(63012),
(63028),
(63034),
(63035),
(63036),
(63047),
(63082),
(63094),
(63103),
(63104),
(63105),
(63111),
(63112),
(63120),
(63124),
(63125),
(63126),
(63127),
(63134),
(63136),
(63138),
(63147),
(63151),
(63169),
(63171),
(63172),
(63174),
(63175),
(63177),
(63178),
(63179),
(63180),
(63183),
(63184),
(63185),
(63216),
(63221),
(63226),
(63228),
(63233),
(63240),
(63242),
(63259),
(63276),
(63278),
(63301),
(63311),
(63313),
(63314),
(63315),
(63316),
(63336),
(63337),
(63338),
(63344),
(63345),
(63356),
(63359),
(63361),
(63362),
(63363),
(63380),
(63382),
(63413),
(63416),
(63418),
(63459),
(63462),
(63463),
(63464),
(63465),
(63466),
(63468),
(63477),
(63479),
(63487),
(63493),
(63494),
(63495),
(63511),
(63518),
(63519),
(63529),
(63535),
(63536),
(63544),
(63549),
(63550),
(63551),
(63553),
(63556),
(63559),
(63562),
(63564),
(63569),
(63571),
(63573),
(63575),
(63599),
(63605),
(63612),
(63615),
(63619),
(63652),
(63653),
(63654),
(63655),
(63661),
(63668),
(63669),
(63670),
(63671),
(63672),
(63673),
(63675),
(63678),
(63685),
(63689),
(63691),
(63699),
(63700),
(63716),
(63728),
(63736),
(63738),
(63754),
(63755),
(63759),
(63760),
(63789),
(63803),
(63804),
(63809),
(63815),
(63823),
(63825),
(63827),
(63845),
(63846),
(63852),
(63861),
(63913),
(63914),
(63915),
(63916),
(63917),
(63918),
(63919),
(63920),
(63921),
(63922),
(63923),
(63931),
(63980),
(63989),
(63993),
(63995),
(63997),
(63998),
(64003),
(64005),
(64006),
(64014),
(64024),
(64025),
(64026),
(64027),
(64028),
(64029),
(64030),
(64031),
(64032),
(64034),
(64036),
(64039),
(64044),
(64058),
(64065),
(64085),
(64090),
(64097),
(64102),
(64104),
(64107),
(64113),
(64114),
(64115),
(64119),
(64123),
(64128),
(64134),
(64136),
(64138),
(64142),
(64151),
(64152),
(64153),
(64156),
(64157),
(64159),
(64160),
(64186),
(64204),
(64211),
(64212),
(64213),
(64215),
(64230),
(64269),
(64324),
(64328),
(64330),
(64331),
(64332),
(64333),
(64334),
(64335),
(64336),
(64337),
(64338),
(64339),
(64342),
(64346),
(64363),
(64365),
(64367),
(64374),
(64375),
(64376),
(64377),
(64380),
(64382),
(64387),
(64388),
(64390),
(64391),
(64395),
(64396),
(64412),
(64413),
(64429),
(64430),
(64442),
(64467),
(64478),
(64496),
(64499),
(64501),
(64507),
(64528),
(64529),
(64535),
(64542),
(64552),
(64580),
(64583),
(64588),
(64590),
(64591),
(64592),
(64595),
(64627),
(64637),
(64638),
(64640),
(64646),
(64647),
(64648),
(64649),
(64654),
(64665),
(64666),
(64667),
(64668),
(64669),
(64674),
(64682),
(64686),
(64692),
(64696),
(64698),
(64699),
(64705),
(64719),
(64740),
(64757),
(64758),
(64759),
(64766),
(64768),
(64771),
(64773),
(64776),
(64780),
(64787),
(64795),
(64798),
(64801),
(64806),
(64807),
(64821),
(64841),
(64870),
(64874),
(64876),
(64888),
(64891),
(64903),
(64909),
(64918),
(64930),
(64953),
(64967),
(64970),
(64971),
(64974),
(64978),
(64991),
(65030),
(65031),
(65033),
(65035),
(65036),
(65038),
(65039),
(65040),
(65042),
(65054),
(65055),
(65056),
(65057),
(65058),
(65059),
(65061),
(65062),
(65071),
(65080),
(65081),
(65104),
(65111),
(65113),
(65122),
(65123),
(65131),
(65133),
(65147),
(65162),
(65201),
(65210),
(65240),
(65266),
(65280),
(65343),
(65351),
(65359),
(65360),
(65374),
(65378),
(65379),
(65386),
(65391),
(65392),
(65403),
(65431),
(65488),
(65490),
(65492),
(65502),
(65503),
(65512),
(65513),
(65516),
(65531),
(65532),
(65541),
(65542),
(65545),
(65546),
(65564),
(65565),
(65575),
(65576),
(65577),
(65634),
(65635),
(65636),
(65647),
(65648),
(65693),
(65694),
(65703),
(65720),
(65722),
(65723),
(65728),
(65729),
(65744),
(65754),
(65775),
(65778),
(65782),
(65790),
(65791),
(65799),
(65801),
(65807),
(65809),
(65810),
(65812),
(65813),
(65814),
(65815),
(65819),
(65820),
(65821),
(65825),
(65826),
(65854),
(65855),
(65856),
(65857),
(65859),
(65862),
(65863),
(65866),
(65867),
(65868),
(65877),
(65878),
(65881),
(65883),
(65918),
(65924),
(65926),
(65927),
(65929),
(65930),
(65931),
(65934),
(65935),
(65936),
(65940),
(65941),
(65954),
(65957),
(65960),
(65962),
(65970),
(65971),
(65972),
(65973),
(65974),
(65978),
(65987),
(65998),
(66003),
(66005),
(66007),
(66008),
(66009),
(66012),
(66017),
(66018),
(66019),
(66020),
(66021),
(66042),
(66043),
(66045),
(66047),
(66053),
(66054),
(66055),
(66056),
(66057),
(66063),
(66065),
(66066),
(66067),
(66068),
(66069),
(66070),
(66072),
(66075),
(66079),
(66081),
(66093),
(66095),
(66097),
(66099),
(66100),
(66104),
(66109),
(66112),
(66113),
(66114),
(66115),
(66116),
(66125),
(66126),
(66134),
(66154),
(66177),
(66188),
(66196),
(66197),
(66198),
(66206),
(66207),
(66209),
(66213),
(66215),
(66216),
(66217),
(66236),
(66237),
(66240),
(66243),
(66244),
(66245),
(66250),
(66259),
(66260),
(66261),
(66262),
(66265),
(66283),
(66285),
(66290),
(66291),
(66292),
(66293),
(66294),
(66295),
(66313),
(66326),
(66331),
(66334),
(66342),
(66359),
(66377),
(66378),
(66407),
(66408),
(66409),
(66410),
(66417),
(66420),
(66423),
(66425),
(66457),
(66460),
(66461),
(66474),
(66477),
(66479),
(66480),
(66481),
(66489),
(66493),
(66516),
(66528),
(66532),
(66533),
(66536),
(66537),
(66538),
(66548),
(66549),
(66588),
(66592),
(66593),
(66594),
(66595),
(66596),
(66613),
(66619),
(66620),
(66629),
(66638),
(66666),
(66668),
(66669),
(66686),
(66687),
(66688),
(66689),
(66716),
(66717),
(66719),
(66733),
(66735),
(66736),
(66742),
(66744),
(66765),
(66770),
(66773),
(66777),
(66784),
(66796),
(66797),
(66809),
(66813),
(66823),
(66824),
(66863),
(66867),
(66869),
(66879),
(66880),
(66887),
(66888),
(66890),
(66891),
(66892),
(66899),
(66903),
(66904),
(66922),
(66940),
(66941),
(66950),
(66951),
(66952),
(66953),
(66954),
(66955),
(66957),
(66958),
(66959),
(66960),
(66961),
(66962),
(66963),
(66964),
(66965),
(66972),
(66973),
(66974),
(66975),
(66976),
(66977),
(66978),
(66979),
(66988),
(66989),
(66990),
(66991),
(66992),
(66994),
(67029),
(67030),
(67031),
(67033),
(67035),
(67049),
(67050),
(67051),
(67073),
(67074),
(67075),
(67088),
(67089),
(67090),
(67097),
(67098),
(67099),
(67114),
(67148),
(67229),
(67235),
(67237),
(67247),
(67252),
(67253),
(67280),
(67289),
(67290),
(67309),
(67310),
(67311),
(67312),
(67313),
(67314),
(67324),
(67325),
(67330),
(67331),
(67333),
(67366),
(67372),
(67373),
(67387),
(67390),
(67477),
(67478),
(67479),
(67480),
(67481),
(67485),
(67518),
(67519),
(67528),
(67529),
(67530),
(67531),
(67532),
(67533),
(67534),
(67540),
(67542),
(67550),
(67554),
(67560),
(67573),
(67574),
(67577),
(67606),
(67607),
(67608),
(67612),
(67613),
(67614),
(67618),
(67619),
(67620),
(67624),
(67625),
(67626),
(67632),
(67633),
(67634),
(67650),
(67651),
(67652),
(67654),
(67655),
(67656),
(67674),
(67675),
(67676),
(67678),
(67679),
(67680),
(67686),
(67703),
(67708),
(67709),
(67710),
(67714),
(67718),
(67719),
(67721),
(67722),
(67724),
(67725),
(67730),
(67745),
(67749),
(67760),
(67767),
(67772),
(67773),
(67774),
(67793),
(67799),
(67810),
(67811),
(67817),
(67818),
(67819),
(67821),
(67823),
(67830),
(67834),
(67835),
(67836),
(67837),
(67838),
(67846),
(67847),
(67861),
(67862),
(67863),
(67878),
(67879),
(67880),
(67881),
(67882),
(67883),
(67884),
(67885),
(67891),
(67892),
(67905),
(67906),
(67907),
(67929),
(67930),
(67931),
(67932),
(67933),
(67934),
(67935),
(67936),
(67937),
(67938),
(67939),
(67940),
(67941),
(67942),
(67943),
(67944),
(67945),
(67946),
(67947),
(67948),
(67949),
(67951),
(67952),
(67953),
(67957),
(67958),
(67959),
(67965),
(67966),
(67967),
(67968),
(67969),
(67970),
(67971),
(67972),
(67973),
(67977),
(67978),
(67979),
(67980),
(67981),
(67982),
(67983),
(67984),
(67985),
(67988),
(67989),
(67990),
(67991),
(67992),
(67993),
(67994),
(67995),
(67996),
(67997),
(67998),
(67999),
(68003),
(68004),
(68005),
(68008),
(68009),
(68010),
(68011),
(68012),
(68013),
(68014),
(68015),
(68016),
(68017),
(68018),
(68019),
(68023),
(68024),
(68025),
(68026),
(68027),
(68028),
(68032),
(68033),
(68034),
(68035),
(68036),
(68037),
(68038),
(68039),
(68040),
(68042),
(68043),
(68044),
(68055),
(68073),
(68077),
(68078),
(68081),
(68088),
(68089),
(68090),
(68091),
(68092),
(68093),
(68094),
(68095),
(68096),
(68100),
(68101),
(68102),
(68106),
(68107),
(68108),
(68109),
(68110),
(68111),
(68112),
(68113),
(68114),
(68115),
(68116),
(68117),
(68118),
(68119),
(68120),
(68123),
(68124),
(68125),
(68130),
(68133),
(68134),
(68135),
(68136),
(68137),
(68138),
(68139),
(68140),
(68141),
(68148),
(68149),
(68150),
(68151),
(68152),
(68153),
(68154),
(68155),
(68156),
(68157),
(68158),
(68159),
(68272),
(68282),
(68284),
(68301),
(68306),
(68307),
(68310),
(68311),
(68313),
(68315),
(68317),
(68318),
(68319),
(68321),
(68328),
(68333),
(68334),
(68340),
(68341),
(68350),
(68357),
(68362),
(68363),
(68364),
(68365),
(68372),
(68391),
(68415),
(68458),
(68472),
(68478),
(68479),
(68498),
(68501),
(68502),
(68503),
(68504),
(68505),
(68550),
(68551),
(68586),
(68587),
(68588),
(68607),
(68621),
(68622),
(68623),
(68624),
(68625),
(68626),
(68627),
(68628),
(68629),
(68727),
(68753),
(68754),
(68755),
(68756),
(68757),
(68758),
(68762),
(68763),
(68764),
(68778),
(68781),
(68782),
(68783),
(68784),
(68788),
(68799),
(68812),
(68834),
(68839),
(68841),
(68843),
(68868),
(68879),
(68884),
(68900),
(68915),
(68927),
(68934),
(68948),
(68966),
(68971),
(68980),
(68982),
(68984),
(68985),
(68991),
(69000),
(69003),
(69021),
(69023),
(69028),
(69034),
(69038),
(69051),
(69058),
(69063),
(69065),
(69066),
(69067),
(69068),
(69088),
(69091),
(69124),
(69128),
(69130),
(69131),
(69133),
(69137),
(69138),
(69153),
(69155),
(69156),
(69158),
(69160),
(69172),
(69180),
(69181),
(69189),
(69190),
(69198),
(69200),
(69209),
(69210),
(69211),
(69212),
(69218),
(69222),
(69232),
(69243),
(69246),
(69274),
(69275),
(69276),
(69285),
(69308),
(69342),
(69352),
(69387),
(69389),
(69391),
(69397),
(69398),
(69403),
(69404),
(69405),
(69406),
(69409),
(69410),
(69416),
(69420),
(69427),
(69438),
(69445),
(69455),
(69483),
(69489),
(69492),
(69496),
(69497),
(69498),
(69499),
(69500),
(69501),
(69503),
(69504),
(69520),
(69528),
(69542),
(69543),
(69544),
(69548),
(69563),
(69564),
(69566),
(69567),
(69569),
(69570),
(69572),
(69573),
(69574),
(69576),
(69577),
(69578),
(69579),
(69581),
(69583),
(69603),
(69617),
(69623),
(69627),
(69633),
(69644),
(69651),
(69668),
(69672),
(69673),
(69675),
(69681),
(69692),
(69693),
(69696),
(69699),
(69710),
(69722),
(69724),
(69726),
(69729),
(69730),
(69731),
(69733),
(69734),
(69771),
(69772),
(69779),
(69828),
(69837),
(69856),
(69861),
(69866),
(69869),
(69871),
(69882),
(69889),
(69891),
(69892),
(69893),
(69896),
(69898),
(69899),
(69902),
(69903),
(69906),
(69910),
(69911),
(69912),
(69916),
(69917),
(69920),
(69923),
(69926),
(69927),
(69933),
(69956),
(69958),
(69961),
(69963),
(69967),
(69968),
(69969),
(69970),
(69972),
(69973),
(69974),
(69975),
(69984),
(69989),
(70002),
(70043),
(70070),
(70074),
(70080),
(70110),
(70119),
(70122),
(70126),
(70141),
(70144),
(70153),
(70161),
(70162),
(70182),
(70183),
(70191),
(70192),
(70196),
(70205),
(70208),
(70211),
(70213),
(70227),
(70269),
(70270),
(70271),
(70273),
(70275),
(70276),
(70277),
(70278),
(70279),
(70280),
(70281),
(70282),
(70285),
(70289),
(70292),
(70296),
(70302),
(70304),
(70308),
(70309),
(70320),
(70322),
(70327),
(70333),
(70337),
(70355),
(70361),
(70381),
(70386),
(70387),
(70388),
(70391),
(70393),
(70396),
(70400),
(70408),
(70409),
(70410),
(70423),
(70428),
(70429),
(70432),
(70435),
(70437),
(70445),
(70449),
(70451),
(70453),
(70495),
(70510),
(70516),
(70525),
(70538),
(70539),
(70540),
(70542),
(70583),
(70594),
(70599),
(70616),
(70639),
(70640),
(70645),
(70646),
(70648),
(70653),
(70656),
(70659),
(70698),
(70746),
(70751),
(70754),
(70772),
(70781),
(70802),
(70809),
(70821),
(70838),
(70856),
(70857),
(70858),
(70859),
(70860),
(70861),
(70864),
(70867),
(70886),
(70890),
(70895),
(70896),
(70897),
(70906),
(70917),
(70923),
(70928),
(70929),
(70942),
(70946),
(70964),
(70965),
(70971),
(70972),
(70973),
(70974),
(70980),
(71003),
(71004),
(71005),
(71006),
(71020),
(71021),
(71023),
(71038),
(71040),
(71041),
(71087),
(71089),
(71090),
(71103),
(71107),
(71108),
(71112),
(71116),
(71117),
(71119),
(71120),
(71121),
(71124),
(71126),
(71127),
(71129),
(71130),
(71131),
(71133),
(71135),
(71136),
(71138),
(71140),
(71141),
(71142),
(71143),
(71144),
(71145),
(71146),
(71148),
(71153),
(71154),
(71155),
(71157),
(71163),
(71164),
(71169),
(71203),
(71204),
(71237),
(71248),
(71253),
(71254),
(71257),
(71264),
(71289),
(71291),
(71296),
(71297),
(71298),
(71316),
(71317),
(71318),
(71319),
(71326),
(71327),
(71328),
(71330),
(71331),
(71335),
(71339),
(71340),
(71350),
(71361),
(71362),
(71363),
(71392),
(71405),
(71410),
(71420),
(71433),
(71434),
(71443),
(71446),
(71450),
(71459),
(71462),
(71466),
(71473),
(71475),
(71476),
(71477),
(71478),
(71479),
(71480),
(71488),
(71489),
(71490),
(71500),
(71501),
(71504),
(71510),
(71512),
(71522),
(71532),
(71533),
(71539),
(71544),
(71546),
(71547),
(71548),
(71549),
(71551),
(71552),
(71553),
(71554),
(71590),
(71591),
(71594),
(71595),
(71607),
(71623),
(71624),
(71625),
(71626),
(71646),
(71647),
(71686),
(71687),
(71688),
(71713),
(71715),
(71726),
(71727),
(71728),
(71729),
(71738),
(71745),
(71748),
(71750),
(71752),
(71757),
(71758),
(71759),
(71760),
(71778),
(71779),
(71780),
(71781),
(71782),
(71783),
(71784),
(71785),
(71786),
(71788),
(71789),
(71801),
(71806),
(71807),
(71815),
(71818),
(71819),
(71820),
(71821),
(71822),
(71823),
(71824),
(71825),
(71834),
(71838),
(71839),
(71841),
(71842),
(71847),
(71864),
(71866),
(71874),
(71879),
(71909),
(71923),
(71924),
(71925),
(71926),
(71927),
(71928),
(71930),
(71931),
(71932),
(71933),
(71934),
(71936),
(71937),
(71938),
(71951),
(71954),
(71955),
(71972),
(71988),
(72004),
(72005),
(72007),
(72008),
(72010),
(72021),
(72022),
(72023),
(72024),
(72057),
(72065),
(72066),
(72098),
(72106),
(72120),
(72121),
(72123),
(72124),
(72133),
(72163),
(72164),
(72166),
(72167),
(72171),
(72194),
(72196),
(72198),
(72208),
(72211),
(72218),
(72219),
(72222),
(72231),
(72258),
(72264),
(72265),
(72266),
(72267),
(72268),
(72269),
(72293),
(72301),
(72302),
(72303),
(72304),
(72313),
(72318),
(72319),
(72321),
(72322),
(72324),
(72326),
(72327),
(72329),
(72330),
(72333),
(72334),
(72335),
(72336),
(72360),
(72366),
(72367),
(72368),
(72369),
(72373),
(72400),
(72409),
(72410),
(72421),
(72422),
(72423),
(72424),
(72426),
(72427),
(72434),
(72437),
(72447),
(72448),
(72449),
(72451),
(72453),
(72457),
(72463),
(72465),
(72484),
(72485),
(72486),
(72487),
(72488),
(72489),
(72490),
(72491),
(72492),
(72501),
(72502),
(72503),
(72504),
(72531),
(72539),
(72540),
(72541),
(72551),
(72552),
(72553),
(72556),
(72558),
(72566),
(72567),
(72568),
(72569),
(72570),
(72571),
(72586),
(72588),
(72590),
(72597),
(72613),
(72617),
(72645),
(72671),
(72672),
(72688),
(72728),
(72756),
(72796),
(72797),
(72798),
(72804),
(72805),
(72806),
(72809),
(72810),
(72811),
(72847),
(72848),
(72865),
(72875),
(72876),
(72879),
(72883),
(72898),
(72901),
(72930),
(72960),
(72961),
(72963),
(72964),
(72965),
(72966),
(72967),
(72985),
(72995),
(73003),
(73040),
(73075),
(73076),
(73079),
(73395),
(73412),
(73488),
(73489),
(73491),
(73492),
(73499),
(73536),
(73574),
(73712),
(73771),
(73772),
(73782),
(73783),
(73784),
(73788),
(73789),
(73790),
(73797),
(73798),
(73799),
(73830),
(73832),
(73833),
(73879),
(73896),
(73906),
(73912),
(73913),
(73914),
(73943),
(73952),
(73985),
(74035),
(74046),
(74062),
(74080),
(74111),
(74162),
(74163),
(74164),
(74166),
(74184),
(74185),
(74222),
(74307),
(74325),
(74326),
(74327),
(74347),
(74367),
(74394),
(74395),
(74403),
(74404),
(74413),
(74414),
(74417),
(74421),
(74422),
(74424),
(74438),
(74445),
(74451),
(74453),
(74454),
(74470),
(74485),
(74502),
(74506),
(74507),
(74524),
(74562),
(74710),
(74749),
(74762),
(74768),
(74772),
(74774),
(74792),
(74797),
(74807),
(74812),
(74904),
(74905),
(74913),
(74978),
(74982),
(75055),
(75058),
(75082),
(75086),
(75088),
(75102),
(75159),
(75160),
(75161),
(75163),
(75168),
(75182),
(75185),
(75186),
(75188),
(75209),
(75213),
(75234),
(75314),
(75327),
(75329),
(75330),
(75331),
(75332),
(75362),
(75366),
(75367),
(75382),
(75383),
(75384),
(75412),
(75419),
(75421),
(75422),
(75423),
(75434),
(75459),
(75493),
(75494),
(75648),
(75731),
(75760),
(75780),
(75888),
(75889),
(75953),
(76096),
(76221),
(79187),
(79397);
CREATE TABLE `temp_cond_vals`
(
	`spellId` INT(11),
	`elseGroup` INT(11) AUTO_INCREMENT,
	`entry` INT(11),
	`dead` INT(11),
	`errorTextId` INT(11),
	`comment` VARCHAR(255),
	PRIMARY KEY (`spellId`, `elseGroup`)
) ENGINE=MYISAM;

CREATE TABLE `temp_item_spell`
(
	`itemId` INT(11),
	`spellId` INT(11),
	PRIMARY KEY (`itemId`, `spellId`)
);

CREATE TABLE `temp_item`
(
	`itemId` INT(11),
	PRIMARY KEY (`itemId`)
);

INSERT INTO `temp_item` SELECT DISTINCT `SourceEntry` FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18;
INSERT IGNORE INTO `temp_item_spell` SELECT `entry`, `spellid_1` FROM `item_template` WHERE `entry` IN (SELECT * FROM `temp_item`) AND `spellid_1` IN (SELECT * FROM `temp_convert_spells`);
INSERT IGNORE INTO `temp_item_spell` SELECT `entry`, `spellid_2` FROM `item_template` WHERE `entry` IN (SELECT * FROM `temp_item`) AND `spellid_2` IN (SELECT * FROM `temp_convert_spells`);
INSERT IGNORE INTO `temp_item_spell` SELECT `entry`, `spellid_3` FROM `item_template` WHERE `entry` IN (SELECT * FROM `temp_item`) AND `spellid_3` IN (SELECT * FROM `temp_convert_spells`);
INSERT IGNORE INTO `temp_item_spell` SELECT `entry`, `spellid_4` FROM `item_template` WHERE `entry` IN (SELECT * FROM `temp_item`) AND `spellid_4` IN (SELECT * FROM `temp_convert_spells`);
INSERT IGNORE INTO `temp_item_spell` SELECT `entry`, `spellid_5` FROM `item_template` WHERE `entry` IN (SELECT * FROM `temp_item`) AND `spellid_5` IN (SELECT * FROM `temp_convert_spells`);

INSERT INTO `temp_cond_vals` (`spellId`, `entry`, `dead`, `errorTextId`, `comment`) SELECT DISTINCT (SELECT `spellId` FROM `temp_item_spell` WHERE `itemId` = `SourceEntry`), `ConditionValue2`, (`ConditionValue1` - 1), `ErrorTextId`, `Comment` FROM `conditions`
WHERE `SourceTypeOrReferenceId` = 18;

#use CONDITION_OBJECT_ENTRY instead of CONDITION_ITEM_TARGET
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `Comment`)
SELECT DISTINCT 17, 0, `spellId`, 0, `elseGroup` - 1, 31, 1, 3, `entry`, 0, 0, `errorTextId`, `comment` FROM `temp_cond_vals`;
#for CONDITION_ITEM_TARGET with ConditionValue1 = DEAD we're adding !CONDITION_ALIVE as a second requirement
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `Comment`)
SELECT DISTINCT 17, 0, `spellId`, 0, `elseGroup` - 1, 36, 1, 0, 0, 0, 1, `errorTextId`, `comment` FROM `temp_cond_vals` WHERE `dead`;
#remove entries which could be converted by this sql
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceEntry` IN (SELECT `itemId` FROM `temp_item_spell`);
DROP TABLE `temp_convert_spells`;
DROP TABLE `temp_cond_vals`;
DROP TABLE `temp_item_spell`;
DROP TABLE `temp_item`;

ALTER TABLE conditions DROP PRIMARY KEY;
ALTER TABLE conditions ADD PRIMARY KEY (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`);
UPDATE `conditions` SET ConditionValue3 = 0, ConditionTarget = 1 WHERE ConditionTypeOrReference = 1 AND ConditionValue3 = 1;
UPDATE `conditions` SET ConditionTypeOrReference = 31, ConditionValue2 = ConditionValue1, ConditionValue1 = 3, ConditionTarget = 1 WHERE ConditionTypeOrReference = 19;
UPDATE `conditions` SET ConditionTypeOrReference = 38, ConditionValue2 = 4, ConditionTarget = 1 WHERE ConditionTypeOrReference = 20;
-- Pathing for Eye of Thrallmar
SET @NPC :=57585;
SET @PATH :=@NPC*10;
UPDATE `creature` SET `position_x`=203.191,`position_y`=2850.286,`position_z`=160.4257,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH; 
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,197.9876,2842.495,160.4257,0,0,0,100,0),
(@PATH,2,212.5493,2807.971,174.2035,0,0,0,100,0),
(@PATH,3,244.0748,2812.302,156.8424,0,0,0,100,0),
(@PATH,4,262.963,2839.935,173.5923,0,0,0,100,0),
(@PATH,5,249.0294,2865.575,155.9257,0,0,0,100,0),
(@PATH,6,223.3671,2870.441,169.5924,0,0,0,100,0),
(@PATH,7,203.191,2850.286,160.4257,0,0,0,100,0);

-- Pathing for Eye of Thrallmar
SET @NPC :=57586;
SET @PATH :=@NPC*10;
UPDATE `creature` SET `position_x`=210.6249,`position_y`=2809.285,`position_z`=208.7277,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH; 
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,213.0469,2809.036,207.1722,0,0,0,100,0),
(@PATH,2,223.5349,2797.282,213.4777,0,0,0,100,0),
(@PATH,3,238.895,2805.732,213.4777,0,0,0,100,0),
(@PATH,4,252.788,2818.183,213.4777,0,0,0,100,0),
(@PATH,5,255.2734,2839.056,213.4777,0,0,0,100,0),
(@PATH,6,245.0219,2851.84,213.4777,0,0,0,100,0),
(@PATH,7,229.2117,2860.19,213.4777,0,0,0,100,0),
(@PATH,8,213.6996,2851.376,206.5887,0,0,0,100,0),
(@PATH,9,204.457,2828.248,199.6443,0,0,0,100,0),
(@PATH,10,212.4397,2807.455,199.6443,0,0,0,100,0),
(@PATH,11,241.3802,2813.464,199.6443,0,0,0,100,0),
(@PATH,12,249.7797,2829.964,199.6443,0,0,0,100,0),
(@PATH,13,244.951,2854.129,199.6443,0,0,0,100,0),
(@PATH,14,221.8344,2856.781,199.6443,0,0,0,100,0),
(@PATH,15,210.7503,2837.578,199.6443,0,0,0,100,0),
(@PATH,16,210.6249,2809.285,208.7277,0,0,0,100,0);

-- Pathing for Eye of Thrallmar
SET @NPC :=57587;
SET @PATH :=@NPC*10;
UPDATE `creature` SET `position_x`=236.1859,`position_y`=2813.747,`position_z`=200.9708,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH; 
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,241.7692,2815.284,200.8042,0,0,0,100,0),
(@PATH,2,255.8273,2833.317,201.443,0,0,0,100,0),
(@PATH,3,247.4309,2853.592,205.1653,0,0,0,100,0),
(@PATH,4,223.9901,2858.107,208.5819,0,0,0,100,0),
(@PATH,5,208.0596,2843.793,192.3596,0,0,0,100,0),
(@PATH,6,213.9734,2816.793,188.4153,0,0,0,100,0),
(@PATH,7,236.1859,2813.747,200.9708,0,0,0,100,0);

-- Pathing for Eye of Thrallmar
SET @NPC :=57588;
SET @PATH :=@NPC*10;
UPDATE `creature` SET `position_x`=245.9259,`position_y`=2829.09,`position_z`=177.804,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH; 
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,251.6207,2841.322,177.804,0,0,0,100,0),
(@PATH,2,241.4914,2859.113,169.6652,0,0,0,100,0),
(@PATH,3,214.9913,2858.249,176.3595,0,0,0,100,0),
(@PATH,4,210.2245,2836.028,169.7762,0,0,0,100,0),
(@PATH,5,225.7556,2822.145,169.9707,0,0,0,100,0),
(@PATH,6,237.9712,2823.874,170.1096,0,0,0,100,0),
(@PATH,7,245.9259,2829.09,177.804,0,0,0,100,0);

DELETE FROM `creature` WHERE `guid`=57589;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=16598;


DELETE FROM `spell_script_names` WHERE `spell_id` in (-100,-12162,13567,17251,23019,23448,23453,25860,28089,29200,29858,30458,30507,31225,35745,37674,39090,39093,39096,42784,43723,44875,47170,49357,50243,51582,51961,52759,52845,53808,54171,54577,55004,64385,-1464,-5308,12809,23881,-1454,-50286,8171,52041,52046,52047,52048,52049,52050,52059,52060,52061,52031,52033,52034,52035,52036,58778,58779,58780,60103,-49998,-66188,-47541,52375,59134,-62900,49560,62324,31890);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(-100,'spell_warr_charge'),
(-12162,'spell_warr_deep_wounds'),
(13567,'spell_gen_dummy_trigger'),
(17251,'spell_gen_spirit_healer_res'),
(23019,'spell_item_crystal_prison_dummy_dnd'),
(23448,'spell_gen_gadgetzan_transporter_backfire'),
(23453,'spell_gen_gnomish_transporter'),
(25860,'spell_item_reindeer_transformation'),
(28089,'spell_thaddius_polarity_shift'),
(29200,'spell_item_purify_helboar_meat'),
(29858,'spell_warl_soulshatter'),
(30458,'spell_item_nigh_invulnerability'),
(30507,'spell_item_poultryizer'),
(31225,'spell_item_shimmering_vessel'),
(35745,'spell_item_socrethars_stone'),
(37674,'spell_gen_chaos_blast'),
(39090,'spell_capacitus_polarity_charge'),
(39093,'spell_capacitus_polarity_charge'),
(39096,'spell_capacitus_polarity_shift'),
(42784,'spell_astromancer_wrath_of_the_astromancer'),
(43723,'spell_item_demon_broiled_surprise'),
(44875,'spell_item_complete_raptor_capture'),
(47170,'spell_item_impale_leviroth'),
(49357,'spell_item_brewfest_mount_transformation'),
(50243,'spell_item_teach_language'),
(51582,'spell_item_rocket_boots'),
(51961,'spell_item_chicken_cover'),
(52759,'spell_sha_ancestral_awakening_proc'),
(52845,'spell_item_brewfest_mount_transformation'),
(53808,'spell_item_pygmy_oil'),
(54577,'spell_item_uded'),
(54171,'spell_pal_divine_storm_dummy'),
(55004,'spell_item_nitro_boots'),
(64385,'spell_item_unusual_compass'),
(-1464,'spell_warr_slam'),
(-5308,'spell_warr_execute'),
(12809,'spell_warr_concussion_blow'),
(23881,'spell_warr_bloodthirst'),
(-1454,'spell_warl_life_tap'),
(-50286,'spell_dru_starfall_dummy'),
(8171,'spell_sha_cleansing_totem_pulse'),
(52041,'spell_sha_healing_stream_totem'),
(52046,'spell_sha_healing_stream_totem'),
(52047,'spell_sha_healing_stream_totem'),
(52048,'spell_sha_healing_stream_totem'),
(52049,'spell_sha_healing_stream_totem'),
(52050,'spell_sha_healing_stream_totem'),
(52059,'spell_sha_healing_stream_totem'),
(52060,'spell_sha_healing_stream_totem'),
(52061,'spell_sha_healing_stream_totem'),
(52031,'spell_sha_mana_spring_totem'),
(52033,'spell_sha_mana_spring_totem'),
(52034,'spell_sha_mana_spring_totem'),
(52035,'spell_sha_mana_spring_totem'),
(52036,'spell_sha_mana_spring_totem'),
(58778,'spell_sha_mana_spring_totem'),
(58779,'spell_sha_mana_spring_totem'),
(58780,'spell_sha_mana_spring_totem'),
(60103,'spell_sha_lava_lash'),
(-49998,'spell_dk_death_strike'),
(-66188,'spell_dk_death_strike'),
(-47541,'spell_dk_death_coil'),
(52375,'spell_dk_death_coil'),
(59134,'spell_dk_death_coil'),
(-62900,'spell_dk_death_coil'),
(49560,'spell_dk_death_grip'),
(62324,'spell_vehicle_throw_passenger');
DELETE FROM `spell_dbc` WHERE `id`=31980;
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES	
(31980,0,0,328064,1024,4,268894208,0,0,0,0,0,0,0,1,0,0,101,0,0,14,14,0,13,0,-1,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22,0,0,15,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,0,4,0,0,0,0,1,0,0,0,1,"Righteous Defense Trigger Spell");
-- Gossip for Lore Keeper of Norgannon "Uldaman" for quest 2278 "The Platinum Discs"
UPDATE `creature_template` SET `gossip_menu_id`=562 WHERE `entry`=7172;

-- SAI for Lore Keeper of Norgannon
SET @ENTRY := 7172;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,576,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Lore Keeper of Norgannon - On gossip option select - close gossip'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,26,2278,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Lore Keeper of Norgannon - On gossip option select - give quest credit');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=562 AND `SourceEntry`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,562,0,0,9,2278,0,0,0,'','Show gossip option if player has quest 2278 but not complete');

DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 561 AND 576;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(561,1080),
(562,1079),
(563,1081),
(564,1082),
(565,1083),
(566,1084),
(567,1085),
(568,1086),
(569,1087),
(570,1088),
(571,1089),
(572,1090),
(573,1091),
(574,1092),
(575,1093),
(576,1094);

DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 561 AND 576;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(561,0,0,'What is a "subterranean being matrix"?',1,1,563,0,0,0,''),
(562,0,0,'Who are the Earthen?',1,1,561,0,0,0,''),
(563,0,0,'What are the anomalies you speak of?',1,1,564,0,0,0,''),
(564,0,0,'What is a "resilient foundation of construction"?',1,1,565,0,0,0,''),
(565,0,0,'So... the Earthen were made out of stone?',1,1,566,0,0,0,''),
(566,0,0,'Anything else I should know about the Earthen?',1,1,567,0,0,0,''),
(567,0,0,'I think I understand the Creators'' design intent for the Earthen now.  What are the Earthen''s anomalies that you spoke of earlier?',1,1,568,0,0,0,''),
(568,0,0,'What high-stress environments would cause the Earthen to destabilize?',1,1,569,0,0,0,''),
(569,0,0,'What happens when the Earthen destabilize?',1,1,570,0,0,0,''),
(570,0,0,'Troggs?!  Are the troggs you mention the same as the ones in the world today?',1,1,571,0,0,0,''),
(571,0,0,'You mentioned two results when the Earthen destabilize.  What is the second?',1,1,572,0,0,0,''),
(572,0,0,'Dwarves!!!  Now you''re telling me that dwarves originally came from the Earthen?!',1,1,573,0,0,0,''),
(573,0,0,'These dwarves are the same ones today, yes?  Do dwarves maintain any other links to the Earthen?',1,1,574,0,0,0,''),
(574,0,0,'Who are the Creators?',1,1,575,0,0,0,''),
(575,0,0,'This is a lot to think about.',1,1,576,0,0,0,''),
(576,0,0,'I will access the discs now.',1,1,0,0,0,0,'');-- XXXXXXXXXXXXXXXXXXXX
-- X  Rogue Trainers  X
-- XXXXXXXXXXXXXXXXXXXX

UPDATE `creature_template` SET `gossip_menu_id`=410 WHERE `entry`=1234;
UPDATE `creature_template` SET `gossip_menu_id`=85 WHERE `entry`=2122;
UPDATE `creature_template` SET `gossip_menu_id`=3984 WHERE `entry`=6707;
UPDATE `creature_template` SET `gossip_menu_id`=4512 WHERE `entry`=3328;
UPDATE `creature_template` SET `gossip_menu_id`=4575 WHERE `entry`=4215;
UPDATE `creature_template` SET `gossip_menu_id`=4577 WHERE `entry`=4214;
UPDATE `creature_template` SET `gossip_menu_id`=4658 WHERE `entry`=1411;

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 85;
SET @TEXTYES := 581;
SET @TEXTNO := 4796;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I would like to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 141;
SET @TEXTYES := 638;
SET @TEXTNO := 4793;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I would like training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 381;
SET @TEXTYES := 878;
SET @TEXTNO := 4799;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I am in need of training, Keryn.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 410;
SET @TEXTYES := 4795;
SET @TEXTNO := 4797;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I would like to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 411;
SET @TEXTYES := 908;
SET @TEXTNO := 4798;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"Good day, Hulfdan, I am looking for training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 436;
SET @TEXTYES := 934;
SET @TEXTNO := 4793;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"Hello! I am a Rogue in need of training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 3984;
SET @TEXTYES := 4838;
SET @TEXTNO := 4839;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"Yes, I have. Teach me.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4502;
SET @TEXTYES := 4835;
SET @TEXTNO := 4837;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"Can you train me how to use rogue skills?",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4512;
SET @TEXTYES := 638;
SET @TEXTNO := 4793;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I would like training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4513;
SET @TEXTYES := 638;
SET @TEXTNO := 4793;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I would like training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4540;
SET @TEXTYES := 581;
SET @TEXTNO := 4796;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I would like to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4541;
SET @TEXTYES := 581;
SET @TEXTNO := 4796;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I would like to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4542;
SET @TEXTYES := 581;
SET @TEXTNO := 4796;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I would like to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4561;
SET @TEXTYES := 5695;
SET @TEXTNO := 4833;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I'm lookin' for rogue trainin'.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4562;
SET @TEXTYES := 4834;
SET @TEXTNO := 4833;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I'm lookin' for rogue trainin'.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4575;
SET @TEXTYES := 4795;
SET @TEXTNO := 4793;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4576;
SET @TEXTYES := 4795;
SET @TEXTNO := 4793;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4577;
SET @TEXTYES := 4795;
SET @TEXTNO := 4793;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4658;
SET @TEXTYES := 6165;
SET @TEXTNO := 6164;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"Can you train me how to use rogue skills?",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4659;
SET @TEXTYES := 4835;
SET @TEXTNO := 4837;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"Can you train me how to use rogue skills?",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4676;
SET @TEXTYES := 4835;
SET @TEXTNO := 4833;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"Can you train me how to use rogue skills?",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 4690;
SET @TEXTYES := 4795;
SET @TEXTNO := 4793;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 5061;
SET @TEXTYES := 4835;
SET @TEXTNO := 4837;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"Can you train me how to use rogue skills?",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- Gossip Condition for Rogue Trainers
SET @GOSSIP := 6650;
SET @TEXTYES := 9188;
SET @TEXTNO := 9187;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,8,0,0,0,'','Show gossip text if player is a Rogue'),
(14,@GOSSIP,@TEXTNO,0,15,1527,0,0,0,'','Show gossip text if player is not a Rogue');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I require rogue training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,''),
(@GOSSIP,4,0,"<Take the letter>",1,1,0,0,0,0,'');

-- XXXXXXXXXXXXXXXXXXXXX
-- X  Hunter Trainers  X
-- XXXXXXXXXXXXXXXXXXXXX

UPDATE `creature_template` SET `gossip_menu_id`=4657 WHERE `entry`=1404;
UPDATE `creature_template` SET `gossip_menu_id`=4695 WHERE `entry`=3596;
UPDATE `creature_template` SET `gossip_menu_id`=4009 WHERE `entry`=3601;
UPDATE `creature_template` SET `gossip_menu_id`=6652 WHERE `entry`=16672;
UPDATE `creature_template` SET `gossip_menu_id`=4101 WHERE `entry`=987;

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4008;
SET @TEXTYES := 4863;
SET @TEXTNO := 4993;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I'd like to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4009;
SET @TEXTYES := 4316;
SET @TEXTNO := 4993;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I am in need of training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4010;
SET @TEXTYES := 4866;
SET @TEXTNO := 5003;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I have come for training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4011;
SET @TEXTYES := 4867;
SET @TEXTNO := 4998;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I am in need of training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4012;
SET @TEXTYES := 4868;
SET @TEXTNO := 4998;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I am a hunter and wish to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4017;
SET @TEXTYES := 4888;
SET @TEXTNO := 4888;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"Please train me.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4023;
SET @TEXTYES := 4889;
SET @TEXTNO := 4996;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I wish to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4101;
SET @TEXTYES := 5001;
SET @TEXTNO := 5002;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4472;
SET @TEXTYES := 4893;
SET @TEXTNO := 5000;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4473;
SET @TEXTYES := 4893;
SET @TEXTNO := 5000;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4474;
SET @TEXTYES := 4893;
SET @TEXTNO := 5000;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4506;
SET @TEXTYES := 4987;
SET @TEXTNO := 5004;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I wish to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4524;
SET @TEXTYES := 4997;
SET @TEXTNO := 4998;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4549;
SET @TEXTYES := 4999;
SET @TEXTNO := 5000;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4550;
SET @TEXTYES := 4890;
SET @TEXTNO := 5000;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I am here for training.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4551;
SET @TEXTYES := 4999;
SET @TEXTNO := 5000;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4647;
SET @TEXTYES := 4997;
SET @TEXTNO := 4998;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4648;
SET @TEXTYES := 4987;
SET @TEXTNO := 5004;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I wish to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4657;
SET @TEXTYES := 5001;
SET @TEXTNO := 5002;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4675;
SET @TEXTYES := 4999;
SET @TEXTNO := 5000;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4693;
SET @TEXTYES := 6160;
SET @TEXTNO := 4993;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I'd like to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 4695;
SET @TEXTYES := 4863;
SET @TEXTNO := 4993;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I'd like to train.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 6652;
SET @TEXTYES := 9190;
SET @TEXTNO := 9189;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 7262;
SET @TEXTYES := 8585;
SET @TEXTNO := 8586;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I seek training in the ways of the Hunter.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Gossip Condition for Hunter Trainers
SET @GOSSIP := 7368;
SET @TEXTYES := 8804;
SET @TEXTNO := 8823;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (14,15) AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,@GOSSIP,@TEXTYES,0,15,4,0,0,0,'','Show gossip text if player is a Hunter'),
(14,@GOSSIP,@TEXTNO,0,15,1531,0,0,0,'','Show gossip text if player is not a Hunter');
-- Add Any Missing Gossip Menu item
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTYES;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTYES);
DELETE FROM `gossip_menu` WHERE `entry`=@GOSSIP AND `text_id`=@TEXTNO;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (@GOSSIP,@TEXTNO);
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE menu_id=@GOSSIP;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(@GOSSIP,0,3,"I am a hunter in need of training, Acteon.",5,16,0,0,0,0,''),
(@GOSSIP,1,0,"I wish to unlearn my talents.",16,16,4461,0,0,0,''),
(@GOSSIP,2,0,"I wish to know about Dual Talent Specialization.",1,1,10371,0,0,0,'');

-- Add some missing gossip from sniff for Zabra'jin in Zangermarsh
UPDATE `creature_template` SET `gossip_menu_id`=7601 WHERE `entry`=18013;
UPDATE `creature_template` SET `gossip_menu_id`=7602 WHERE `entry`=18014;
UPDATE `creature_template` SET `gossip_menu_id`=7608 WHERE `entry`=18015;
UPDATE `creature_template` SET `gossip_menu_id`=7603 WHERE `entry`=18017;
UPDATE `creature_template` SET `gossip_menu_id`=7609 WHERE `entry`=18018;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=18244;
UPDATE `creature_template` SET `gossip_menu_id`=7722 WHERE `entry`=18564;

DELETE FROM `gossip_menu` WHERE `entry` IN (7601,7602,7603,7608,7609,7722,7946,9821);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(7601,9248),(7602,9249),(7603,9250),(7608,9259),
(7609,9260),(7722,9431),(7946,9752),(9821,13584);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7603,7608,7609) AND `id` IN (0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7609,7722,9821) AND `id` IN (1);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(7603,0,1,'I would like to buy from you.',3,128,0,0,0,0,''),
(7608,0,1,'I wish to purchase tradeskill supplies.',3,128,0,0,0,0,''),
(7609,0,1,'I wish to purchase fishing supplies.',3,128,0,0,0,0,''),
(7609,1,3,'Give me some pointers on my fishing technique.',5,16,0,0,0,0,''),
(7722,1,1,'I have marks to redeem!',3,128,0,0,0,0,''),
(9821,1,1,'I''m looking for a lost companion.',14,4194304,0,0,0,0,'');

-- Add some missing gossip from sniff for Thunderlord Stronghold in Blade's Edge Mountains
UPDATE `creature_template` SET `gossip_menu_id`=9856 WHERE `entry`=19471;
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=19476;
UPDATE `creature_template` SET `gossip_menu_id`=5856 WHERE `entry`=19478;
UPDATE `creature_template` SET `gossip_menu_id`=8283 WHERE `entry`=21311;
UPDATE `creature_template` SET `gossip_menu_id`=8406 WHERE `entry`=21950;
UPDATE `creature_template` SET `gossip_menu_id`=8244 WHERE `entry`=21147;
UPDATE `creature_template` SET `gossip_menu_id`=8525 WHERE `entry`=21984;
UPDATE `creature_template` SET `gossip_menu_id`=8239 WHERE `entry`=21117;

DELETE FROM `gossip_menu` WHERE `entry` IN (8283,8406,8244,8525,8239);
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(8283,10322),(8406,10508),(8244,10259),(8525,10661),(8239,10251);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9856) AND `id` IN (0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(9856,0,1,'Show me what you have for sale.',3,128,0,0,0,0,'');

DELETE FROM `spell_script_names` WHERE `spell_id` IN (52059,52060,52061);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (58759,58760,58761);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES 
(58759,'spell_sha_healing_stream_totem'),
(58760,'spell_sha_healing_stream_totem'),
(58761,'spell_sha_healing_stream_totem');
UPDATE `creature` SET `MovementType`=1 WHERE `spawndist`!=0 AND `MovementType`=2 AND `guid` IN (49123,49124,49125,49127,49128,49129,49143,49144,49145,49146,49150,49151,49154,49156,49157,49158,49167,49186,49187,49188,49318,49319,49664,49665,49751,49762,51398,51402,51422,51423,123148,127753,137490,137491,202314);
UPDATE `creature` SET `MovementType`=0 WHERE `spawndist`=0 AND `MovementType`=2 AND `guid` IN (49123,49124,49125,49127,49128,49129,49143,49144,49145,49146,49150,49151,49154,49156,49157,49158,49167,49186,49187,49188,49318,49319,49664,49665,49751,49762,51398,51402,51422,51423,123148,127753,137490,137491,202314);
UPDATE `creature_template` SET `MovementType`=0 WHERE `MovementType`=2 AND `entry` NOT IN (21657,30007);
-- Add some missing gossip to Nagrand From UDB
UPDATE `creature_template` SET `gossip_menu_id`=7675 WHERE `entry`=18261;
UPDATE `creature_template` SET `gossip_menu_id`=7723 WHERE `entry`=18333;
UPDATE `creature_template` SET `gossip_menu_id`=7719 WHERE `entry`=18417;
UPDATE `creature_template` SET `gossip_menu_id`=7724 WHERE `entry`=18581;
UPDATE `creature_template` SET `gossip_menu_id`=7625 WHERE `entry`=18265;
UPDATE `creature_template` SET `gossip_menu_id`=7626 WHERE `entry`=18276;
UPDATE `creature_template` SET `gossip_menu_id`=7631 WHERE `entry`=18335;
UPDATE `creature_template` SET `gossip_menu_id`=7699 WHERE `entry`=18471;
UPDATE `creature_template` SET `gossip_menu_id`=7563 WHERE `entry`=18074;
UPDATE `creature_template` SET `gossip_menu_id`=7592 WHERE `entry`=18200;
UPDATE `creature_template` SET `gossip_menu_id`=7579 WHERE `entry`=18180;
UPDATE `creature_template` SET `gossip_menu_id`=7607 WHERE `entry`=18218;
UPDATE `creature_template` SET `gossip_menu_id`=7704 WHERE `entry`=18482;     
UPDATE `creature_template` SET `gossip_menu_id`=8493, `npcflag`=`npcflag`|1 WHERE `entry`=22113;

DELETE FROM `gossip_menu` WHERE `entry`=7563 AND `text_id`=9181;
DELETE FROM `gossip_menu` WHERE `entry`=7578 AND `text_id`=9220;
DELETE FROM `gossip_menu` WHERE `entry`=7579 AND `text_id` IN (9219,9221,9256,9257);
DELETE FROM `gossip_menu` WHERE `entry`=7592 AND `text_id` IN (9240,9283,9284);
DELETE FROM `gossip_menu` WHERE `entry`=7607 AND `text_id` IN (9258,9286);
DELETE FROM `gossip_menu` WHERE `entry`=7625 AND `text_id`=9287;
DELETE FROM `gossip_menu` WHERE `entry`=7626 AND `text_id`=9288;
DELETE FROM `gossip_menu` WHERE `entry`=7631 AND `text_id`=9312;
DELETE FROM `gossip_menu` WHERE `entry`=7675 AND `text_id` IN (9361,9369);
DELETE FROM `gossip_menu` WHERE `entry`=7676 AND `text_id`=9368;
DELETE FROM `gossip_menu` WHERE `entry`=7677 AND `text_id`=9367;
DELETE FROM `gossip_menu` WHERE `entry`=7678 AND `text_id`=9366;
DELETE FROM `gossip_menu` WHERE `entry`=7679 AND `text_id`=9365;
DELETE FROM `gossip_menu` WHERE `entry`=7680 AND `text_id`=9364;
DELETE FROM `gossip_menu` WHERE `entry`=7681 AND `text_id`=9363;
DELETE FROM `gossip_menu` WHERE `entry`=7682 AND `text_id`=9362;
DELETE FROM `gossip_menu` WHERE `entry`=7699 AND `text_id`=9394;
DELETE FROM `gossip_menu` WHERE `entry`=7704 AND `text_id`=9405;
DELETE FROM `gossip_menu` WHERE `entry`=7705 AND `text_id`=9406;
DELETE FROM `gossip_menu` WHERE `entry`=7714 AND `text_id`=9424;
DELETE FROM `gossip_menu` WHERE `entry`=7715 AND `text_id`=9423;
DELETE FROM `gossip_menu` WHERE `entry`=7716 AND `text_id`=9422;
DELETE FROM `gossip_menu` WHERE `entry`=7717 AND `text_id`=9421;
DELETE FROM `gossip_menu` WHERE `entry`=7718 AND `text_id`=9420;
DELETE FROM `gossip_menu` WHERE `entry`=7719 AND `text_id` IN (9419,9427);
DELETE FROM `gossip_menu` WHERE `entry`=7723 AND `text_id`=9429;
DELETE FROM `gossip_menu` WHERE `entry`=7724 AND `text_id`=9433;
DELETE FROM `gossip_menu` WHERE `entry`=8393 AND `text_id`=10493;
DELETE FROM `gossip_menu` WHERE `entry`=8394 AND `text_id`=10492;
DELETE FROM `gossip_menu` WHERE `entry`=8394 AND `text_id`=10614; -- was incorrect in the db
DELETE FROM `gossip_menu` WHERE `entry`=8395 AND `text_id`=10494;
DELETE FROM `gossip_menu` WHERE `entry`=8395 AND `text_id`=10615; -- was incorrect in the db
DELETE FROM `gossip_menu` WHERE `entry`=8396 AND `text_id`=10495;
DELETE FROM `gossip_menu` WHERE `entry`=8396 AND `text_id`=10616; -- was incorrect in the db
DELETE FROM `gossip_menu` WHERE `entry`=8398 AND `text_id`=10497;
DELETE FROM `gossip_menu` WHERE `entry`=8493 AND `text_id` IN (10606,10655,10854);
DELETE FROM `gossip_menu` WHERE `entry`=8497 AND `text_id`=10616;
DELETE FROM `gossip_menu` WHERE `entry`=8498 AND `text_id`=10615;
DELETE FROM `gossip_menu` WHERE `entry`=8499 AND `text_id`=10614;
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 21296 AND 21303; -- the old menus assigned to Lantresor which were not sniffed
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 21304 AND 21309; -- the old menus assigned to Altruis which were not sniffed
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(7563,9181),
(7578,9220),
(7579,9219),(7579,9221),(7579,9256),(7579,9257),
(7592,9240),(7592,9283),(7592,9284),
(7625,9287),
(7626,9288),
(7631,9312),
(7699,9394),
(7607,9258),(7607,9286),
(7675,9361),(7675,9369),
(7676,9368),
(7677,9367),
(7678,9366),
(7679,9365),
(7680,9364),
(7681,9363),
(7682,9362),
(7704,9405),
(7705,9406),
(7714,9424),
(7715,9423),
(7716,9422),
(7717,9421),
(7718,9420),
(7719,9419),(7719,9427),
(7723,9429),
(7724,9433),
(8394,10492),
(8393,10493),
(8395,10494),
(8396,10495),
(8398,10497),
(8493,10606),(8493,10655),(8493,10854),
(8497,10616),
(8498,10615),
(8499,10614);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7579,7704,7715,7716,7717,7718,7719,8393,8394,8395,8396,8398,8497,8498,8499) AND `id`=0;
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7719,7724) AND `id`=1;
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 7675 AND 7682 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_menu_id`=8499 WHERE `menu_id`=8397; -- was incorrect
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 21296 AND 21303; -- the old options assigned to Lantresor which were not sniffed
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 21304 AND 21309; -- the old options assigned to Altruis which was not sniffed
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(7579,0,0,'Hemet Nesingwary, what are you doing here in the Outland?',1,1,7578,0,0,0,''),
(7704,0,0,'Empoor, you''re going to tell me what I want to know, or else!',1,1,0,0,0,0,''),
(7715,0,0,'Forge camps?',1,1,7714,0,0,0,''),
(7716,0,0,'How do you see them now?',1,1,7715,0,0,0,''),
(7717,0,0,'And now?',1,1,7716,0,0,0,''),
(7718,0,0,'Legion?',1,1,7717,0,0,0,''),
(7719,0,0,'I see twisted steel and smell sundered earth.',1,1,7718,0,0,0,''),
(7719,1,0,'Tell me about the demon hunter training grounds at the Ruins of Karabor.',1,1,8394,0,0,0,''),
(7724,1,1,'I have marks to redeem!',3,128,0,0,0,0,''),
(7675,0,0,'I have killed many of your ogres, Lantresor. I have no fear.',1,1,7682,0,0,0,''),
(7682,0,0,'Should I know? You look like an orc to me.',1,1,7681,0,0,0,''),
(7681,0,0,'And the other half?',1,1,7680,0,0,0,''),
(7680,0,0,'I have heard of your kind, but I never thought to see the day when I would meet a half-breed.',1,1,7679,0,0,0,''),
(7679,0,0,'My apologies. I did not mean to offend. I am here on behalf of my people.',1,1,7678,0,0,0,''),
(7678,0,0,'My people ask that you pull back your Boulderfist ogres and cease all attacks on our territories. In return, we will also pull back our forces.',1,1,7677,0,0,0,''),
(7677,0,0,'We will fight you until the end, then, Lantresor. We will not stand idly by as you pillage our towns and kill our people.',1,1,7676,0,0,0,''),
(7676,0,0,'What do I need to do?',1,1,0,0,0,0,''),
(8394,0,0,'I''m listening.',1,1,8393,0,0,0,''),
(8393,0,0,'Go on, please.',1,1,8395,0,0,0,''),
(8395,0,0,'Interesting.',1,1,8396,0,0,0,''),
(8396,0,0,'That''s quite a story.',1,1,8398,0,0,0,''),
(8398,0,0,'There was something else I wanted to ask you, Altruis.',1,1,7719,0,0,0,''),
(8499,0,0,'But you are dragons! How could orcs do this to you?',1,1,8498,0,0,0,''),
(8498,0,0,'Your mate?',1,1,8497,0,0,0,''),
(8497,0,0,'I have battled many beasts, dragon. I will help you.',1,1,0,0,0,0,'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=7579 AND `SourceEntry` IN (9221,9256,9257);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=7592 AND `SourceEntry` IN (9283,9284);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=7607 AND `SourceEntry`=9286;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=7675 AND `SourceEntry`=9369;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=7719 AND `SourceEntry`=9427;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=8493 AND `SourceEntry` IN (10655,10854);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=7675 AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (7704,7719) AND `SourceEntry`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (7719) AND `SourceEntry`=1;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21304; -- condition for Altruis' gossip that wasn't sniffed
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=21295; -- condition for Lantresor's gossip that wasn't sniffed
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,7579,9221,0,0,8,208,0,0,0,0,'','Show different gossip if player has rewarded quest 208'),
(14,7579,9256,0,0,8,9851,0,0,0,0,'','Show different gossip if player has rewarded quest 9851'),
(14,7579,9257,0,0,8,9852,0,0,0,0,'','Show different gossip if player has rewarded quest 9852'),
(14,7592,9283,0,0,8,9854,0,0,0,0,'','Show different gossip if player has rewarded quest 9854'),
(14,7592,9284,0,0,8,9856,0,0,0,0,'','Show different gossip if player has rewarded quest 9856'),
(14,7607,9286,0,0,8,9859,0,0,0,0,'','Show different gossip if player has rewarded quest 9859'),
(14,7675,9369,0,0,8,10107,0,0,0,0,'','Show different gossip if player has rewarded quest 10107'),
(14,7675,9369,0,1,8,10108,0,0,0,0,'','Show different gossip if player has rewarded quest 10108'),
(14,7719,9427,0,0,8,9991,0,0,0,0,'','Show different gossip if player has rewarded quest 9991'),
(14,8493,10655,0,0,8,10870,0,0,0,0,'','Show different gossip if player has rewarded quest 10870'),
(14,8493,10854,0,0,8,11012,0,0,0,0,'','Show different gossip if player has rewarded quest 11012'),
(15,7675,0,0,0,9,10107,0,0,0,0,'','Show gossip option if player has quest 10107 but not complete'),
(15,7675,0,0,1,9,10108,0,0,0,0,'','Show gossip option if player has quest 10108 but not complete'),
(15,7704,0,0,0,9,9978,0,0,0,0,'','Show gossip option if player has quest 9978 but not complete'),
(15,7719,0,0,0,8,9991,0,0,1,0,'','Show gossip option if player has not rewarded quest 9991'),
(15,7719,1,0,0,9,10646,0,0,0,0,'','Show gossip option if player has quest 10646 but not complete');

UPDATE `smart_scripts` SET `event_param1`=7715 WHERE `entryorguid`=18417 AND `id` IN (0,1); -- correct Altruis' script
UPDATE `smart_scripts` SET `event_param1`=8396 WHERE `entryorguid`=18417 AND `id`=2;

UPDATE `smart_scripts` SET `event_param1`=8497 WHERE `entryorguid`=21657 AND `id`=0; -- correct Neltharaku's script

UPDATE `smart_scripts` SET `link`=3, `event_param1`=7676 WHERE `entryorguid`=18261 AND `id` IN (1,2); -- correct Lantresor's script
DELETE FROM `smart_scripts` WHERE `entryorguid`=18261 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(18261,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Lantresor - On gossip select - Close gossip');
-- Fallen Hero of the Horde http://old.wowhead.com/npc=7572
DELETE FROM `gossip_menu` WHERE `entry`=840 AND `text_id`=1451;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (840,1451);
DELETE FROM `gossip_menu` WHERE `entry`=880 AND `text_id`=1452;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (880,1452);
DELETE FROM `gossip_menu` WHERE `entry`=881 AND `text_id`=1456;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (881,1456);
DELETE FROM `gossip_menu` WHERE `entry`=882 AND `text_id`=1455;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (882,1455);
DELETE FROM `gossip_menu` WHERE `entry`=883 AND `text_id`=1454;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (883,1454);
DELETE FROM `gossip_menu` WHERE `entry`=884 AND `text_id`=1453;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (884,1453);
-- Text Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=840 AND `SourceEntry` IN (1391);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,840,1391,0,8,2784,0,0,0,'','Show gossip text if player has quest 2801 or 2784 completed'), -- It's hard to imagine that so much death and despair could be confined to such a small area; yet beyond the swamp is a land plagued by chaos and destruction.$B$BWatch your step, adventurer. The Blasted Lands are the final resting place to far greater beings than you.
(14,840,1391,1,8,2801,0,0,0,'','Show gossip text if player has quest 2801 or 2784 completed'); -- It's hard to imagine that so much death and despair could be confined to such a small area; yet beyond the swamp is a land plagued by chaos and destruction.$B$BWatch your step, adventurer. The Blasted Lands are the final resting place to far greater beings than you.
-- Gossip option conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=840;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,840,0,0,9,2784,0,0,0,'','Show gossip option if player has quest 2784 but not complete'),
(15,840,1,0,9,2801,0,0,0,'','Show gossip option if player has quest 2801 but not complete'),
(15,840,2,0,9,2702,0,0,0,'','Show gossip option if player has quest 2702 but not complete');
-- Add Any Missing Gossip Option
DELETE FROM `gossip_menu_option` WHERE `menu_id`=840 AND `id` IN (0,1);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (880,881,882,883,884) AND `id` IN (0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(840,0,0,"Please continue, Hero...",1,1,880,0,0,0,''),
(840,1,0,"Please continue, Hero...",1,1,880,0,0,0,''),
(880,0,0,"What could be worse than death?",1,1,884,0,0,0,''),
(881,0,0,"I shall.",1,1,0,0,0,0,''),
(882,0,0,"You can count on me, Hero.",1,1,881,0,0,0,''),
(883,0,0,"What are the stones of binding?",1,1,882,0,0,0,''),
(884,0,0,"Subordinates?",1,1,883,0,0,0,'');
-- Fallen Hero of the Horde SAI
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=7572;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=7572 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(7572,0,0,1,62,0,100,0,881,0,0,0,26,2784,0,0,0,0,0,7,0,0,0,0,0,0,0,'Fallen Hero of the Horde - On Gossip option select - complete quest 2784'),
(7572,0,1,2,61,0,100,0,0,0,0,0,26,2801,0,0,0,0,0,7,0,0,0,0,0,0,0,'Fallen Hero of the Horde - On Gossip option select - complete quest 2801'),
(7572,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Fallen Hero of the Horde - On Gossip option select - Close Gossip'),
(7572,0,3,4,62,0,100,0,840,2,0,0,12,7750,1,180000,0,0,0,8,0,0,0,-10630.3,-2987.05,28.96,4.54,'Fallen Hero of the Horde - On Gossip option select - Spawn Corporal Thund Splithoof'),
(7572,0,4,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Fallen Hero of the Horde - On Gossip option select - Close Gossip');
-- Fix mistake in Fallen Hero of the Horde gossip update
UPDATE `conditions` SET `ConditionValue1`=2784,`Comment`='Show gossip text if player has quest 2801 or 2784 completed' WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=840 AND `ConditionValue1`=2704;
UPDATE `conditions` SET `Comment`='Show gossip text if player has quest 2801 or 2784 completed' WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=840 AND `ConditionValue1`=2801;
UPDATE `conditions` SET `ConditionValue1`=2784,`Comment`='Show gossip option if player has quest 2784 but not complete' WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=840 AND `ConditionValue1`=2704;
UPDATE `smart_scripts` SET `action_param1`=2784 WHERE `entryorguid`=7572 AND `id`=0;
-- Shadowmourne quest chain fix by nelegalno

-- Limit quests to Warrior, Paladin and Death Knight classes
UPDATE `quest_template` SET `RequiredClasses` = 35 WHERE `Id` IN (24545, 24743, 24547, 24749, 24756, 24757, 24548, 24748);

-- Quest relations
UPDATE `quest_template` SET `NextQuestId` = 24743 WHERE `Id` = 24545; -- The Sacred and the Corrupt
UPDATE `quest_template` SET `NextQuestId` = 24547 WHERE `Id` = 24743; -- Shadow's Edge
UPDATE `quest_template` SET `NextQuestId` = 24749 WHERE `Id` = 24547; -- A Feast of Souls
UPDATE `quest_template` SET `NextQuestId` = 24756 WHERE `Id` = 24749; -- Unholy Infusion
UPDATE `quest_template` SET `NextQuestId` = 24757 WHERE `Id` = 24756; -- Blood Infusion
UPDATE `quest_template` SET `NextQuestId` = 24548 WHERE `Id` = 24757; -- Frost Infusion
UPDATE `quest_template` SET `NextQuestId` = 24549 WHERE `Id` = 24548; -- The Splintered Throne
UPDATE `quest_template` SET `NextQuestId` = 24748 WHERE `Id` = 24549; -- Shadowmourne... to The Lich King's Last Stand
-- Dire Maul Book Quests

UPDATE `quest_template` SET `RequiredClasses` = 1 WHERE `Id` = 7499; -- Codex of Defense (18357/7499)
UPDATE `quest_template` SET `RequiredClasses` = 2 WHERE `Id` = 7501; -- The Light and How to Swing It (18359/7501)
UPDATE `quest_template` SET `RequiredClasses` = 4 WHERE `Id` = 7503; -- The Greatest Race of Hunters (18361/7503)
UPDATE `quest_template` SET `RequiredClasses` = 8 WHERE `Id` = 7498; -- Garona: A Study on Stealth and Treachery (18356/7498)
UPDATE `quest_template` SET `RequiredClasses` = 16 WHERE `Id` = 7504; -- Holy Bologna: What the Light Won't Tell You (18362/7504)
UPDATE `quest_template` SET `RequiredClasses` = 64 WHERE `Id` = 7505; -- Frost Shock and You (18363/7505) Closes #4727
UPDATE `quest_template` SET `RequiredClasses` = 128 WHERE `Id` = 7500; -- The Arcanist's Cookbook (18358/7500)
UPDATE `quest_template` SET `RequiredClasses` = 256 WHERE `Id` = 7502; -- Harnessing Shadows (18360/7502)
UPDATE `quest_template` SET `RequiredClasses` = 1024 WHERE `Id` = 7506; -- The Emerald Dream... (18364/7506)
-- meeting stone for UK
DELETE FROM `gameobject` WHERE `id`=188488;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(245, 188488, 571, 1, 1, 1237.301, -4948.268, 36.02063, 2.495818, 0, 0, 0.9483232, 0.3173059, 300, 0, 1);
DROP TABLE IF EXISTS `warden_checks`;

CREATE TABLE `warden_checks` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `data` varchar(48) DEFAULT NULL,
  `str` varchar(20) DEFAULT NULL,
  `address` int(10) unsigned DEFAULT NULL,
  `length` tinyint(3) unsigned DEFAULT NULL,
  `result` varchar(24) DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `warden_checks`(`id`,`type`,`data`,`str`,`address`,`length`,`result`,`comment`) VALUES 
(1,178,'07F223143C69271AA2A851FECF6DC883A9D3A7DBA6FE26CC','',710730,23,'',NULL),
(2,191,'C7D18F99DBC446A4B36E78B9130B6FA2E365B3D2D4199DF5','',28940,17,'',NULL),
(3,191,'AA1A8559776F873F26954F15E49E6041EDC2C3766AD87A59','',21826,11,'',NULL),
(4,178,'5F342A4D0EA9DB35F93FAE6E32670D810F017309817AA7C0','',676970,23,'',NULL),
(5,178,'C57BD89DD447131EA2083784AB4DA8BD58CF3E182F1D8AF6','',690106,23,'',NULL),
(6,191,'69AA85EFE8A1A990DA5ECFED4FAFD5B14F1D52EF2548FD15','',12905,36,'',NULL),
(7,191,'083ECAD073DE2D61E3564B4BF767C9D1F8F15AA0495F5A76','',41096,24,'',NULL),
(8,178,'C774D64EF60AD5A141FC56F3D02AE78AC147770FAE25D8FE','',3037164,22,'',NULL),
(9,191,'502C59CAFEA11E9584C13BFE75F85EB79936AEEE31B44165','',12194860,37,'',NULL),
(10,178,'4FBE8978A662428C616AABD71DA5562E4AC21F54BEB8ADBF','',3037164,22,'',NULL),
(11,178,'83D3F7FD7DCA144AD8219A6A4E20F0CFC6E7EA208C4144FF','',3033068,22,'',NULL),
(12,243,'','',4623652,7,'578B7D08578BF1','Pointer to realmlist address'),
(13,178,'00523153EE2298A8D80D7B26B7067CA7B26AC06FF374FE7B','',673210,23,'',NULL),
(14,191,'91BC368FA14A3FE3E13D0B1056F485F846925E613D8E8903','',12194860,37,'',NULL),
(15,243,'','',10010636,12,'8166443FFF1FFFD9565CD95E',NULL),
(16,178,'8FEFDBC58301AB0E0D0F6EBC5FBDA5ED9A7126873A9AB337','',682394,23,'',NULL),
(17,191,'B40FF92D4F092599EA9014C88B474DE4352C3F1635109882','',448492,48,'',NULL),
(18,191,'42B596FF923054531E4918DC39E08F8564FED16D559B494A','',29852,20,'',NULL),
(19,178,'24291D6733A7CEFA3D54C3BCCAE95D56D8365BAB42AEE1CE','',3037164,22,'',NULL),
(20,178,'6C4E321E2D5A153F2BB664EB6EEDF8D67FDE7ECC8076D087','',3990720,23,'',NULL),
(21,178,'FB649706C8F1AFF5990B5F3118DFE54FF6F9609C6991C161','',3045776,31,'',NULL),
(22,191,'D1B451C906B81261B048FD4025217245950C11660815367F','',28920,23,'',NULL),
(23,191,'40079A1083A6B57E3B713992BD395FB6650B631E4C4B8D4E','',29852,20,'',NULL),
(24,178,'3F8FEFE08CB358D6613656AFDB498AB8C599BA18B5574FB6','',682378,23,'',NULL),
(25,191,'EECA71B5536EE1992FD7825A5CCC4B7F9F3B413C0DA498B6','',29884,20,'',NULL),
(26,191,'B8786BFF2421ED1F1FB30F3F0BAF671FC1DAD5B3B33124C8','',28956,17,'',NULL),
(27,191,'BF0C842D635D9D8B3F6FF84EF6DF7C963C485EBAF02D17B0','',28920,23,'',NULL),
(28,191,'9672ED2A27C4972E04DF4471C95492C721024E241995170C','',36924,24,'',NULL),
(29,191,'63532B056020A261251BD24AB026BBC5D4468AF863136044','',17906,11,'',NULL),
(30,178,'7D38C80FEAB10B857A4A7BEF15D27A58FB43FD875E29C73C','',3990720,23,'',NULL),
(31,178,'B158752316672A90BF29846E7AD64BA4FD1699C638BFD3B6','',2299116,33,'',NULL),
(32,178,'4549AE7CA28700562D996CBC78FA7341DC05F644C01474E4','',3000288,31,'',NULL),
(33,178,'EE77806A4F5723FD9C6FC6F43308C8AB448E0A139CB43700','',690106,23,'',NULL),
(34,191,'046D6EA3E99E275F51CAA591BD8C478B6F964A3072018F43','',21660,15,'',NULL),
(35,178,'B1682CE919907AD7D8990F3D8272CFF24A996162565D52B4','',676970,23,'',NULL),
(36,178,'22E057649A8BF1D9672841EF47A4DA175AAC082FFEF059DA','',710730,23,'',NULL),
(37,178,'7BA62D5F5CFEB545D1AE646962F4EB9A91B93EF8FFD5D1B0','',710554,23,'',NULL),
(38,178,'702802D919D9E5C3FD42CA9188936C73E47F87CFA419025A','',3033068,22,'',NULL),
(39,178,'FDA6D997BFB8A991B57755633D1AB3C7E567A74C1EC09937','',3070052,22,'',NULL),
(40,191,'84F6BDD28490937867774E7BF8D5B78F68BF9EB43DE90F10','',477912,60,'',NULL),
(41,191,'5A5B4BA32BD937FF253016AE836DD44B794F8D05982860A6','',447736,48,'',NULL),
(42,178,'A243986665C7FCA1E60A9F209DE9431C3098D082DF1C4528','',682378,23,'',NULL),
(43,178,'7CC89374CE3A9C07DCD685006690B828931D60085EE5FEE8','',710554,23,'',NULL),
(44,191,'01F10590E6DFED79523D26C043D5424174BEF1011F3F4974','',477928,60,'',NULL),
(45,178,'C9728BDC4B77BAA7B3515AFD3628EDB0986DFA20B46917B4','',672746,23,'',NULL),
(46,191,'179B80E5E054521E44BA8F5978D5FC489CC9E514B350A3FF','',28956,17,'',NULL),
(47,243,'','',5417948,5,'7734FF2485','FrameXML Signature Check'),
(48,191,'7769A67D6E2460450873133B0CFF99B67A58CE6C404A17F8','',17282,15,'',NULL),
(49,178,'CF3896074EEBC0F93B539FD44E4D825227D4C1556B8F2279','',3990720,23,'',NULL),
(50,178,'88F2833B5267A71A0CA72509C40819B99283A6E556FD9038','',198,10,'',NULL),
(51,243,'','',8491566,5,'8B4D10890D','Lua DoString'),
(52,178,'F7229DF2D879A9E8D5BCEDCDC7046D75BAEE1C9D4DA41E55','',3638348,23,'',NULL),
(53,191,'AE78585CD862134059B13669FC416B8124752EC6471DDCE6','',28940,17,'',NULL),
(54,191,'B408E9F9B475E4B6A81F9B7F2E060824F618FFDABBFFE805','',13634,11,'',NULL),
(55,178,'A9DA016B83961F95097E08F2DEBE69517C7573FFF06D8C4B','',668874,23,'',NULL),
(56,191,'0E74160C242EF826D09BCE4ED535E9A9D251B1CD20E31891','',24812,14,'',NULL),
(57,178,'A58E4D44D952C1F9DB7B5E423167EE4C28AD02668C5B86AF','',710730,23,'',NULL),
(58,191,'35A9FC42ACBF3A147B0C8CF67BA04EC979C6534B20249B45','',28956,12,'',NULL),
(59,243,'','',5345746,7,'746583F9177760','Lua Protection Patch'),
(60,191,'1430DC4A627EA5FA2CFF9C010CE16022F259F81DB6047879','',13634,11,'',NULL),
(61,191,'85A005398AF851382267C01BB6FB04AEF2093213C20EC200','',360508,13,'',NULL),
(62,191,'96916CD89649027A9A8BBFBD28AE190CD5D590E24BBAD451','',13033,36,'',NULL),
(63,191,'056D57A5C1A46883400E1F69405750B23DE18C3032C3D91C','',27270,13,'',NULL),
(64,191,'87C641E1EDBD96D9F170C7BE0FA13F45611DCDF41AC02526','',41127,24,'',NULL),
(65,191,'1F378DF1E7BD99164DDC7401A98CA5E9551BD50B4A35D5AA','',34176,25,'',NULL),
(66,178,'B5ED443D6CA2F6095BAC8DAFDC8F3413F7B473916357C17E','',209352,75,'',NULL),
(67,191,'A2BC3FF01787A38CB88B3EF45C1CD97DA113157FC395D38C','',30012,16,'',NULL),
(68,191,'190862E5018F1428E5B12BFDAD08283ECD057B34AD722846','',41228,24,'',NULL),
(69,191,'6E0E55BE8690F64442E275559E6C9F8A3FDCAA00937D1C13','',49347,24,'',NULL),
(70,191,'B6FC4C07BB2CBE7C5C854CD99DAFEC0D1AE4101FC51460F9','',477912,60,'',NULL),
(71,178,'3B5955C3B498489869990F08A4CAE566A7D689C23990518B','',156,8,'',NULL),
(72,243,'','',7246064,6,'8950108B450C','Movement State related'),
(73,178,'F24317DAA28AA477996EEBB9538A89569ABF9B185A3EA4E4','',718842,23,'',NULL),
(74,178,'DA25A4134671325719833878E2556455EC4321A2207B6728','',198,10,'',NULL),
(75,191,'DC9490A7BEB43C64585E013B5260BE843D126EB3BCEBAC11','',50040,26,'',NULL),
(76,178,'4BB92BBD5CA8C192C9D0E1EDB6C21FF3F4A61ED1B151365F','',673210,23,'',NULL),
(77,178,'13E8DD1C9F5501A270A59CC4B61311F6D5D18DC3F2AA351A','',3037164,22,'',NULL),
(78,191,'346CFA39FF98198BDE1C23673FBF51A50CFF5ADED784F077','',17522,15,'',NULL),
(79,113,'0590FC57AB448975FA46C314A8AB75AF96DF0FD0A3D9FB23','Afd32uu',0,0,'',NULL),
(80,178,'E37D413DC96A92D3CEAB8A482B8F5397587A0E654C9A0166','',672954,23,'',NULL),
(81,178,'E7D5551799C2C7F0072BC3149A22F37D09EA1EB83F64C655','',3045912,31,'',NULL),
(82,191,'7CC5260578671130CA5B3392BA5CFD0F3DE0BE1085E556B6','',9977,32,'',NULL),
(83,191,'F44A40945F24385D089E040A733553EEFF92EFAAB0636323','',134968,32,'',NULL),
(84,178,'D3122CF30EE55310CF4A710E61B190D2B108227B746B41AD','',679578,23,'',NULL),
(85,191,'7E3CC1BC53477D84F05F623BBC94B9DE8D01A2607CA935DB','',41188,24,'',NULL),
(86,191,'DC06565CC1512B5A91A848E08BC4FBC6DA705F6503667852','',41127,24,'',NULL),
(87,191,'03DC47CDFBB14C5CF0D0010FA5424556F951585588A2180A','',29916,16,'',NULL),
(88,191,'29EC91C4D87891FECDED381CE65A86A259F00DD788833E4D','',174688,37,'',NULL),
(89,191,'31F024003681765368F6EFB667E83CE1D12799723AA99BF9','',685304,44,'',NULL),
(90,191,'6A82AC1D0BFEF5DA7385510CBC57189FACD42E45E0D2A65E','',30012,16,'',NULL),
(91,191,'3901FBD52655E12ADA4EEDED3B365B1DDFAAA925A140097F','',448492,48,'',NULL),
(92,191,'6E9991A25EC347BEA5813EDE0A842D746779C97606565B5A','',17906,11,'',NULL),
(93,191,'0AC9F2B104AC5AA9131FB14E669B98D30D056936625B0245','',27270,13,'',NULL),
(94,178,'A338B3DA78A6683CBEE08A63C5EEFBE1AF33BF54983D583D','',684876,29,'',NULL),
(95,178,'38759C29F2ACF42DA9D16EF35837A470DC7C42C3284B2A3C','',3049492,22,'',NULL),
(96,191,'F35817564FC39F4DB7994021352FEEB86E2FEE86C11B8DBB','',360508,13,'',NULL),
(97,191,'09FAC087283873DAEE0AD074ABF7DDB1B395F5CF6BC2141E','',28956,17,'',NULL),
(98,178,'87FE57916743AF3C97CC3B583B29E89B6E503D31D1747B64','',676970,23,'',NULL),
(99,178,'97D854645011BAD1F6625679511D78D1B7367A51EB0FCC6E','',668874,23,'',NULL),
(100,178,'12369F6F1B875FB5CC5E67445ADEAE2B295D196596679317','',0,9,'',NULL),
(101,191,'5034278808E93A3DFC9BEFFD8E180FEFA24DFC5056ED3BE1','',433168,48,'',NULL),
(102,178,'55EF16220A7EF3F74A9D895821610DFBD2A757FB05C792D5','',209352,75,'',NULL),
(103,191,'67445533AA0BB737D2F74C9258148C6C667794F0E3D07498','',45324,24,'',NULL),
(104,178,'AA8649100B17A9C5BE227F47F867FADE51AD242BAAD39821','',3045632,31,'',NULL),
(105,191,'85545FE9242B2474574EEBABBF452FBD11497073CB1E46A5','',41080,24,'',NULL),
(106,191,'9DACD6981681F53650B681EAE68065D26F4803682058709D','',448456,48,'',NULL),
(107,191,'96B74F1436A05E658E3282164BC3CBDF4DBBB2CF6A5B866F','',9977,32,'',NULL),
(108,191,'033BD6861DF7878DC9470EC2F699772BB2F3D5000490866F','',90202,13,'',NULL),
(109,113,'B797D0AF3164EE83167D5C054A511A5B209A70C6655C408B','IPSect',0,0,'',NULL),
(110,178,'D91A2764435C5091D3F9471AB8B5F397E609330294694488','',710730,23,'',NULL),
(111,191,'94EED02DCDB71789E50917DA401A03F4B91BDBEA050D8BCA','',3766400,37,'',NULL),
(112,178,'2DF33CBB544E2D5238FB591F2547AC507B4D8A652D789F2B','',2303444,33,'',NULL),
(113,243,'','',7860712,5,'742DF6407C',NULL),
(114,178,'81A74F35F0F887144D59F93647C18C70C5FEEF542A7F3782','',709322,22,'',NULL),
(115,178,'2E1F8A68FDDF084A950B786A1EE7E0CE43E62449A56F92A3','',3045632,31,'',NULL),
(116,191,'B1F8988B6664A90E79503FA5D843C3CB97BFDC23EB8C7690','',433168,48,'',NULL),
(117,178,'0277E26DE31814DFD675A59E526669E39080E033BAE88859','',0,9,'',NULL),
(118,243,'','',10714892,8,'BB8D243FD4D0313E','Wall Climb'),
(119,178,'09BBFC19FCADC69D6B5BF655A5BB6350B4A8120C3EB557D2','',3990720,23,'',NULL),
(120,178,'BF4ABDEB726B0060E74701C03180C3CB02170ADCB7DCB61C','',3049872,31,'',NULL),
(121,243,'','',9990741,9,'8B878000000089463C','No Fall Damage Patch'),
(122,178,'D259A46A6D1855C436BFC96FB9376BDCDF5E9FFAE8B4147C','',3045616,31,'',NULL),
(123,178,'F425A62A44097742D72A05669B6BE93AD9CEFE9E40D71E48','',3045976,31,'',NULL),
(124,191,'B134291F515D136B6576FFBC0133C7859755974611170D07','',20512,16,'',NULL),
(125,191,'125BE691985D8DB37068DC14D74EA2DA1260E4A63D3F74BF','',45324,24,'',NULL),
(126,178,'E06E3C5B356B34BA92F6765108556AD53ABB74B986D5810E','',3070052,22,'',NULL),
(127,178,'8CC87DFF61F2EC82DE033865C9879010D94E1614369FE286','',710554,23,'',NULL),
(128,191,'E1F5233450FEFFB6F0E8F2B17683047A485828FEDD3E5B80','',448456,48,'',NULL),
(129,191,'31BA6EA4DF2362676AB71F4CB60B0D40FA51A3AABD25D5CB','',36924,24,'',NULL),
(130,191,'C14630E1D519EB85C254C536FE81DC490977E869BD5CD884','',12985,36,'',NULL),
(131,191,'B337F892EEDD52A5B978C116A19D927134273626EFC4DAA3','',17890,11,'',NULL),
(132,191,'D97560108AA21A487EC9278759F7615BFA304A933776A201','',18680,35,'',NULL),
(133,178,'DA59505BA61459508532CBEAD246DCD2C8E7BF5C6D3CE676','',3037164,22,'',NULL),
(134,191,'5803CA69E5B7F1DF08D95219894D75F52EDB1AD429E562D9','',174688,37,'',NULL),
(135,178,'8A1099E19139D91573286DBB3DED2CC093A99FD178F7FEC8','',3033068,22,'',NULL),
(136,178,'0331B438B085F55C06F7F697160845BE953D9CE789AA62A4','',3000288,31,'',NULL),
(137,191,'E844078A5671FF7DB0621E7F1C7EDDF9C92F5A9FA0477FCB','',41023,24,'',NULL),
(138,178,'AAD7F47B231861913F353341FD26E5AA89AFB586FB6A5366','',672746,23,'',NULL),
(139,178,'136DFB3FE66D2830DF46EE155FCAEADC9624FFE1410088DA','',3041472,31,'',NULL),
(140,191,'C6015A0D5C9109768BA4233639A51F163CC7ED58749E5026','',25724,20,'',NULL),
(141,178,'9C668CE4D328EEA9B6AB7AD5FF54169289B35B230275A43C','',3049872,31,'',NULL),
(142,178,'FC3C95E71F968C46BD5DB5C9EF9B0A5BDCC5619B805046F5','',2299060,33,'',NULL),
(143,178,'FBE3808C0E36BFBC1D1F5A0E508CA89E81E550CD2FDEEC48','',149,5,'',NULL),
(144,178,'35A8252DBC65514E858256C497141153812EE61C724BF5A9','',710730,23,'',NULL),
(145,178,'CC79AA9AE29A52A998181D183D38974221B8BAC0AB534E7D','',0,9,'',NULL),
(146,178,'B89F25A249D295580E649F5ABE0C65EC24401F4889A4FB16','',668874,23,'',NULL),
(147,178,'742A0A9997B9E857C355AA75797466506BAE73D44D26399D','',3037164,22,'',NULL),
(148,178,'E7975701601B2FDF8262098521B7BB4FF5CCC484F8E919E7','',3045776,31,'',NULL),
(149,178,'43E81BE830F169F4EDD23B84ABFA9D15EF12C978FE134346','',60648,56,'',NULL),
(150,178,'66CA9E464A2122E301A72FAEF13A4853D8CB1A45C177E854','',178504,96,'',NULL),
(151,113,'0A3C294B0799FD2C9EC17C1CCBCD174A51B6A2ECC62FEF17','IPSect',0,0,'',NULL),
(152,178,'6E9CE81BFCAF0C250705FCC599981D2D9E4D474A7E857B37','',2299108,33,'',NULL),
(153,178,'8734D6E081D5C993DCE8161CFDFC6197F39A487E4083A3E1','',149,5,'',NULL),
(154,178,'A33355AF7B5FF3CECB3A6059F6621F30AEE695D69421EA2B','',3049492,22,'',NULL),
(155,191,'BF8CEA63013511BDE0B551DAAC492DFBB9608645140B88F7','',29916,16,'',NULL),
(156,178,'8D5D5E99EAB2ED21A104913B05D6BD7A8E63ADA56B66CDED','',3022016,31,'',NULL),
(157,191,'778256BFEF82EA60C4E0F25083655FB2BB75B83FD60A9C06','',18680,35,'',NULL),
(158,178,'43FB8007D7DD7B01FFBEEA3EF9D0242778565544281EC761','',0,9,'',NULL),
(159,191,'94DCF5D21FE2106F5303216C14AD55EEDC1B19FDC91D5F76','',28704,16,'',NULL),
(160,191,'7EBBF90F7D8462D1453479DF9AC5943AF483FE2828C74FDD','',477928,60,'',NULL),
(161,191,'A171148491E099B12CCD1708B784D8C3B09737772C7780C0','',401992,14,'',NULL),
(162,191,'5350ACB75F9FA498FE0D2A371649C9FD9716BDDE2C32F5FB','',13634,11,'',NULL),
(163,191,'85E53280630956C58D4CA7FD8DC5FE73C9A2A03314DFF294','',45223,24,'',NULL),
(164,191,'391BC8A81D4EB6D526BAF0DC3468CAA36C9207B82E194B7A','',130380,14,'',NULL),
(165,191,'0F88FA5CD9B9950F850C18FE76C948FF43CDDE3E75638FF1','',17938,11,'',NULL),
(166,178,'EB63FC60164AFF92726DA658882BF1CE47CF0BF6C80B1B97','',690106,23,'',NULL),
(167,178,'E30B2494142B416BBE95DA3DAE4A82CBDF3A020715F10E8B','',4011280,23,'',NULL),
(168,191,'6CA1C19D0E9191CBC9CA3D5BC3CF1D19764D8F17C6B54AE4','',59620,13,'',NULL),
(169,178,'4730B7A7EC70544A688211A5C754C357A090116092D3EC4D','',682378,23,'',NULL),
(170,243,'','',10000022,6,'894644894E54',NULL),
(171,191,'713A7B79619AEF3C47E44102F86EDCE0D6AFBC5ABE87F861','',13538,11,'',NULL),
(172,191,'575F1C6AF7C71085C7D9CB2291844D9F2DA3B71391C0B941','',36907,24,'',NULL),
(173,178,'296F233E4FAC4CF419D5FBF2701AC4D5AA0866CB4D0DAEC6','',3045976,31,'',NULL),
(174,178,'933C1A228C99E35DF309838B25B7D5EA3A8E961E81D81D32','',673194,23,'',NULL),
(175,191,'9EC125252C3738478CA942DCB59030097194B284A9162B32','',59620,13,'',NULL),
(176,178,'6665F3FB8DC6BE71C152C3674B5783D6E57FE8BF796D190C','',3634252,23,'',NULL),
(177,191,'E120DD63042FEFF9E7FCEC0CA44D2544F03C5D4CDBA1C008','',12985,36,'',NULL),
(178,113,'09BDABA6CB17BE561B4104124A3D0266C858D194A8765198','drvsys_mon',0,0,'',NULL),
(179,178,'3AAE69E7088E4060EA32EF95E9B6D9532460F5B84EE4EC80','',684876,29,'',NULL),
(180,191,'990D4E1C2D63C8E447F034642686D57B727064E3EDE13B00','',448500,48,'',NULL),
(181,191,'E88F31BDC5513216CF3701CAF8BE954CCC7EAE0E7AC7D942','',594348,26,'',NULL),
(182,178,'81229C1E56FA72E01B52E8CBB8BB5F55ED48A11B72E7729B','',710554,23,'',NULL),
(183,191,'B4D0CDE7D53493A1549328F711013F07DBD3A9BE88DB2EF9','',685304,44,'',NULL),
(184,178,'D6CA6F94FF248F722F97037C1AE7C8DE0191D5F4D1E3A5B8','',156,8,'',NULL),
(185,178,'9C9DF1E868BB33D43676F21096C4F75759C0807096EEB886','',60648,56,'',NULL),
(186,178,'1C79B3B5A74A4F09A1FAE19BB15CDCF26B5F917861071F1C','',198,10,'',NULL),
(187,178,'AC1AD3E831A4C758858350A8A197A24FE82583F4B0E39A85','',3049888,31,'',NULL),
(188,178,'56E4980485E3129E94F370E7066E80B07141C4A669B9FC0F','',672746,23,'',NULL),
(189,178,'C21574305E0377A3D2B72D1E1546B9D62DCFA8B1A4405F16','',3638348,23,'',NULL),
(190,178,'AA74121AF835978BC1C1BB402A8B7388CB7C075C1227C253','',3049888,31,'',NULL),
(191,178,'D6457A86DFADF9825D6093090AED2A807FE7DA6ECF5922AF','',3065956,22,'',NULL),
(192,191,'1BAB7E6B5ACBEED8F54B667EDF13A385B9E146C0C50D9FB7','',448456,48,'',NULL),
(193,243,'','',7517484,7,'7518683B010000','Follow Unit Check'),
(194,178,'01000FEAC61ED76FE04ED1169C40289D96C71A1564E38FCB','',690106,23,'',NULL),
(195,191,'F095338ED87C658C916CC604A427F4ED95309C4A07B7898C','',34176,25,'',NULL),
(196,191,'800E120187DF74A231722FB887B3944AD16A703FB8CB9D39','',28920,23,'',NULL),
(197,191,'2CFCE981C322A54724E1418B6A6D1896B95D584630EEEA43','',38300,21,'',NULL),
(198,243,'','',5081862,8,'6840AAB600C60200',NULL),
(199,178,'481751066D6C97AD5EE90173E8ED107BB1C9FD873B0CE55A','',3037164,22,'',NULL),
(200,178,'7FC57D49535798CDA7E4DC5DCEA2E085AAB9A68BF7F9469D','',149,5,'',NULL),
(201,191,'33357C112DE0195F013FAAC4D57AB1BE77417934CE03A2B9','',3766400,37,'',NULL),
(202,191,'BF8AC678DC3CD354BADBFE46C9173D34CC84D13302190EBB','',21826,11,'',NULL),
(203,178,'4E2F9721D52A7552AE2728B9695F1523DD62DC0569237C3F','',2299108,33,'',NULL),
(204,191,'9F015E7D8A11F30AA1954D9FEA7142D0247E3C09FF2BFF72','',12194860,37,'',NULL),
(205,178,'1EB5AD39B94DB5CDC3294DF49FA589DFBE2C674D07E4B211','',710730,23,'',NULL),
(206,178,'E9D67F07E035A64B89C9E91614DC1930FEF61DC3A5C1BBA6','',690106,23,'',NULL),
(207,191,'36411C2FF2C3AC51B7F6A6B8DF61DBD4E5895C27438847BE','',59620,13,'',NULL),
(208,178,'A77F30CBB8057E0DB37782367C8462FA98D4DB21DE936ECD','',3049492,22,'',NULL),
(209,243,'','',7452688,10,'8B81CC07000025000000','WoWEmuHacker Injection'),
(210,178,'A8C806E1FB7CA3625E6BB6F5E4D9E2BF0EBDBE70BA7226F7','',3049872,31,'',NULL),
(211,191,'B3DD04807DEA2679045F4F197BDDAED5C7CCEEFE19622B43','',360508,13,'',NULL),
(212,178,'B075C8B4D8C5D83FE703677319491DC816EA5103901B44A8','',682394,23,'',NULL),
(213,191,'53DB506C0341B50BEA3897E2E3C0DD74C2CA2D8F5F34A2E4','',59620,13,'',NULL),
(214,191,'E112F38956124FE0F48BF569F5E81B40E293DC6E16B544D6','',17282,15,'',NULL),
(215,191,'0363EF2B1AAE09E6C2B1FA555E706F4EE094BE678DA27598','',3766400,37,'',NULL),
(216,191,'EA256F01B6340C99E27611B39C5ED28CF2FA202436F0972F','',49564,24,'',NULL),
(217,178,'A86C95C4E58495A10F5F1C9B5B62D3365132E8DC62863E8B','',198,12,'',NULL),
(218,191,'56DD8D99991F83AFA2E169315B395BD388B248340E9C64D3','',30044,16,'',NULL),
(219,191,'684B23E010C3D6B88CC12BD9F0B6B0CE00D692C71BFB84A8','',28940,17,'',NULL),
(220,178,'83AEEFCDF4C2E80B18DDF93D99120A89F916C19206D257AB','',668874,23,'',NULL),
(221,178,'D68651921F5CD387C7E860FB7C3B143409735748E3B2FB7F','',682394,23,'',NULL),
(222,113,'A4D501A9DB9D84BD8695A8BF61FC853BF434D2D4B352C7A0','HideEx',0,0,'',NULL),
(223,191,'5E77F12C032D4FEF559F9B837B85BDB9D95ADB10C9F56649','',448504,48,'',NULL),
(224,178,'F08406AEDFA8F19B6FB7C9ADDE0BFEE82CB0D2E275593150','',2303444,33,'',NULL),
(225,178,'AC0EC72522ADA5B2BFFAFAC92D6D0A0225E1D5C727CDFFA7','',672602,23,'',NULL),
(226,178,'4D1A7D1C88AB04438510E3255184E51EAE2036BB09DB553A','',700714,23,'',NULL),
(227,178,'68BBC36F75DC763B573DACAB1D6D8F70E667638AA894BEE9','',717898,23,'',NULL),
(228,178,'2AC3C23FBDE2C1EC46C9ECFF71BD7F603F17C9DFC1328D1C','',3638348,23,'',NULL),
(229,191,'C365E9FE00580EBB14EE863A5CE3C8139B1A59A610520AE7','',3766400,37,'',NULL),
(230,178,'DB2A0451B9753100085C9D149B61CE47A195D77C8B709143','',178504,96,'',NULL),
(231,178,'0871F69205FA62C74C2DDE200A3911FC3E41A4FB8BAB9817','',682378,23,'',NULL),
(232,191,'0017307F2FF889462B0FA06018D99EB1F847F189B6CC9B99','',21826,11,'',NULL),
(233,178,'0FEFCD6B0BF8C2816A9259AB5FD7B89231AEB8D92DE53D26','',3045356,22,'',NULL),
(234,178,'87EAD79656133B3183C2E452886D8F00C5EC6C9D741673A2','',3037164,22,'',NULL),
(235,178,'C2B6C5E19FA98D121B2CDE51789BD2883A324015E7D131E0','',710554,23,'',NULL),
(236,178,'B6F3A7D557A3E3BC4833C3D9B6B0B0609255591CC8AB3B65','',3022016,31,'',NULL),
(237,243,'','',5283280,12,'558BECB8084E0000E8731DF0','AddChatMessage'),
(238,191,'AEA87B23CD9463E9693B6C053C1D9030F8E229DA308DBF29','',90202,13,'',NULL),
(239,178,'8C16C7E8EEAD49AE67E4E91E229FFBCE2F6590A48348914E','',3049888,31,'',NULL),
(240,178,'7B2DCA97CD348E45490C288EADE9303CE270CF57F28EB1E4','',690106,23,'',NULL),
(241,191,'BC10B10BE398F2397FA6962C4E59C8CF11FDD7158EC222A5','',29916,16,'',NULL),
(242,178,'8E53EC1B8ABE90C9A5C087671DE0A3007BEA4488EE5415D0','',3037164,22,'',NULL),
(243,191,'65B5CE07A794164101F7E379D21A7A544EF1EC2A3A39A2D8','',27270,13,'',NULL),
(244,191,'C6C8597824F249180A53196699421ADF7857A5C4E4F80D6F','',13033,36,'',NULL),
(245,178,'FE677759E719178BC5CB49DA252D9B635F76030FC4C9876C','',673194,23,'',NULL),
(246,243,'','',5265823,5,'72118B5518','Language Patch'),
(247,178,'BA2D161EF412084B0229A08E64D5A445C4E9F9F2645535E5','',706314,23,'',NULL),
(248,191,'0174B647A535F206711D3EEEF08D3F421BCABD7016A2F103','',17282,15,'',NULL),
(249,178,'5F5F754FD6E7BAC9650B715387646CF992813730A2BA37DA','',2303444,33,'',NULL),
(250,178,'D2CC7F98209E9A9BBA483BD1E9A916E40EB971EE2129AFF8','',3990720,23,'',NULL),
(251,178,'E8C741CC79005898FFD0026821F61A2E4E67C695C6E1CE1C','',198,10,'',NULL),
(252,191,'23B364A9012EF40A39EC4D04A91F9B60FC7EF7D85E3F240A','',18680,35,'',NULL),
(253,191,'C9363F808D37F13FC09EBB7F700AD09EEB27DA046E41FD52','',36907,24,'',NULL),
(254,191,'2D92FC5B8603E18F50D9CAA0922F5C7BB89E42A4656ED2D5','',3766400,37,'',NULL),
(255,178,'EDEDBC5B1A3D92D2A91192118898FDBF840C967C82968D70','',3045912,31,'',NULL),
(256,113,'BFEF06E80472106B57B15D711F94A25243F6ABA7FE354C95','ndis_x86',0,0,'',NULL),
(257,178,'FB20B0EB9ACF571FE37C6B69CBE86F7906F96B996D7E5EFA','',2303444,33,'',NULL),
(258,191,'917AC1C48C1FF354FD594A3705C70A2C356FE981275E7FB5','',22792,25,'',NULL),
(259,178,'48CD29D8B39DC07B0FD071FD8C643E07A8FC2C9AFC2A3083','',3045356,22,'',NULL),
(260,243,'','',11154396,8,'D893FEC0488C11C1','Jump Momentum'),
(261,191,'FB13A8360C8E23B83ED7309625A7EFBAEE7DCF737068C5A6','',174688,37,'',NULL),
(262,191,'3C8D85F85ED5DD0354561F84EACA575123DE05EE941C28D2','',56063,25,'',NULL),
(263,191,'FBC20EEA52B5882209BC016EC14818376CA7BAF28780BCED','',22792,25,'',NULL),
(264,191,'210D85A84F7BE48F3EB427E0CBCCD9C146320ABAAB5E28D8','',41096,24,'',NULL),
(265,178,'953107F9F718795B6DF9E5E5BEE0EA949800CAD0EB71F891','',3037164,22,'',NULL),
(266,113,'FBBA36D0FC5434D12EE1509E148FF908D51F18719CCBEABC','IPSect',0,0,'',NULL),
(267,178,'82CB32BA2A05B228F2F8D0313C185EB6FDC50A94340F40C8','',209352,75,'',NULL),
(268,191,'079172B91B1768A2650A87BAB06AF700BB4C9A0B5E5B983B','',17522,15,'',NULL),
(269,191,'881751DF112F817E799953E00E94543DA4610968437DB7C6','',12194860,37,'',NULL),
(270,191,'9A47B274EAAC888FA2007B4EC0623580365458E3621CC416','',28956,17,'',NULL),
(271,191,'77344CE014111FAAA66DEF35B670B2E76AE878B054F85285','',61874,42,'',NULL),
(272,191,'0A74CBD8DFF245DA5E8691C1174F037D7ABE823E265226AB','',685656,44,'',NULL),
(273,178,'0E13ADDD413B679E2984060D929440064FAC308FC2B90742','',3049872,31,'',NULL),
(274,178,'D0D8CE5001596C6F4A766FE94726FE7E337F42469CB96CA1','',3065956,22,'',NULL),
(275,191,'313C58F8401B47F716B220B88411CAD0E85966D95B301591','',13033,36,'',NULL),
(276,178,'ACBDC68A4D748C48ED1180DD3DA52632EA6FC275BFC35D5B','',0,9,'',NULL),
(277,191,'BACA83A742B9E09CD07787BC6B50389707EA94C41886BAD0','',448504,48,'',NULL),
(278,178,'549B42D266E7F17B7F30B72E301A9CB3C5E3865DE9B7E90B','',60648,56,'',NULL),
(279,178,'86DB854557D75BEEE7DA820FCA15669B08C760E8B165B06F','',3037164,22,'',NULL),
(280,178,'02D5FBD9E30D43ACED0EFD00CF16DAA69EDD262C292136AB','',178504,96,'',NULL),
(281,191,'B9D920131EFC38767012340CF0FFBFE154DBA28E6EF3B859','',61874,42,'',NULL),
(282,191,'96E6CAE70AF690F5D552E0948C29CA9AA527DEBF9731B16B','',20512,16,'',NULL),
(283,191,'375B22B4990997348A8AEDD53319897BE196398B4F1DBAC3','',30012,16,'',NULL),
(284,178,'932F4622AE9F1B3990900F1F88375FA1DD7C238F7C6133C6','',684876,29,'',NULL),
(285,178,'43583C7BCCD9DF14C64CC84710BEE44DD30E199F579890AE','',3049872,31,'',NULL),
(286,191,'97CF98F0BCABA04BC2BAD40FBD4EBFB3C1FD8A7139D5C9B9','',433168,48,'',NULL),
(287,178,'97A0E0F8F8ACE7F1E6492DAFADE8F45B366446E79C1B0419','',3049452,22,'',NULL),
(288,243,'','',5284488,9,'7507C7451400000000','Language Patch'),
(289,191,'C3546D16052E0DC1838E7A6E18936B88CC8A40C2AEC0BE3B','',21826,11,'',NULL),
(290,178,'4179D6BD8C2F11AD5D5C103A7877504074009AB53AE4D8A6','',3045356,22,'',NULL),
(291,191,'2C360CEAB996C8D6E5DE3FFAC30E412DED48E7814D1CE110','',20512,16,'',NULL),
(292,191,'6F1486BE58078BD453F1B249947BB99CB8E17E9A355CE024','',41228,24,'',NULL),
(293,178,'924F4631DC3167BCFAB02F92DDB49A871DA0C55122EF9EB8','',0,9,'',NULL),
(294,178,'411029C5B28D942ED3C7BC1F4299162D874838A661410894','',700714,23,'',NULL),
(295,191,'B9093BAED730E86AF004119B3B7258938C56902915C2E8BA','',501956,48,'',NULL),
(296,178,'63BD2D7FF6C5442795361031E5768C396A37AE38AF98DB11','',668874,23,'',NULL),
(297,191,'754A2FE56037B971E128FFAA669032C511BDA3A62524CE03','',28956,12,'',NULL),
(298,178,'9AEFDCDB62EBC2DABD6CEBF8C411C1145274FCA7CED890CB','',3037164,22,'',NULL),
(299,178,'3AC57BAC3B782AE5ADBB899CCC060D4E8F66E5217F7DF654','',676970,23,'',NULL),
(300,191,'2F0D9702A58D6D5A8599529A0A816AA101AFE581D98416B2','',56063,25,'',NULL),
(301,178,'77804219E627B4D38C9F95194301A895180B598AEFA9963F','',3022016,31,'',NULL),
(302,178,'0D1B99EDC8E458705A88E72F7FDEEE9233DB21290A0098E6','',149,5,'',NULL),
(303,191,'BB795B4069F985BF44C7418DE264C3B0E9BA6D61A116FF81','',90202,13,'',NULL),
(304,191,'5A6EEBA1E6B9EE71BD4A5F63014E9928302C36FC806DC796','',3766400,37,'',NULL),
(305,191,'BA5777AF7FFF3895935669878D662B585912A759A2DFCE68','',24812,14,'',NULL),
(306,178,'5E690DB1AD8910886334158C6D4452FA2CE896634BCDDF40','',580768,52,'',NULL),
(307,191,'42A8F651F55F697E783ADA1959A2833276F970F1EE0410C7','',41280,16,'',NULL),
(308,243,'','',5296496,12,'558BEC81ECE80D00006A0AE8','SendChatMessage'),
(309,191,'445A6894B8C1838462D7D0D29FBE6BF815B5E6C344971349','',31924,23,'',NULL),
(310,178,'C010786A38F396503B7411FBADA0C1A68795F54A7AAE228E','',679578,23,'',NULL),
(311,113,'E3185EE4428291F9D2E4080C2EB1B19ADB005AD26EF0A993','IPSect',0,0,'',NULL),
(312,243,'','',7739760,11,'01BE80000000E805B6FFFF','Jump related?'),
(313,191,'1995FA3235ADA4B25232DC6403E7463A8D1864528BF9FDD4','',12905,36,'',NULL),
(314,243,'','',5124558,5,'8BF08D4608','GetCharacterInfo'),
(315,191,'30A26827798B7F1646003A9E846E8A9A8FF10A9DF926825A','',49564,24,'',NULL),
(316,178,'A567BBE4CA9D8E976083024E8D68903CF15CEA88C47C9961','',2299060,33,'',NULL),
(317,191,'BEA7165D7DD8E24E31B1C3D791A47A28731E1BACD1189A17','',24812,14,'',NULL),
(318,191,'0971A7CEB84D392670C7B8CBB61776762C25259D8E772CA5','',13538,11,'',NULL),
(319,178,'13200A59A28561A413FADAADFFFE4521A209CB691EA199A5','',690106,23,'',NULL),
(320,243,'','',5090917,8,'E886EE1D0083C40C',NULL),
(321,191,'56CABE081991356465BDE1DA3B8DED099DF9B6E746D1B531','',25724,20,'',NULL),
(322,191,'F98469C704F8B8ABC1A251EF8FC1E4CB5CEF1E007BAB5EA5','',57602,42,'',NULL),
(323,178,'6A64BF5AC652747B47E0B8E6593B7EEAC1EF38E0A84F4F5D','',3049452,22,'',NULL),
(324,191,'978BCD17BC9C81B05A2F0A50EC2CC206EC5F6AB1FE40D38D','',28956,12,'',NULL),
(325,178,'A28EDC898CEB14FB52591754DEF981C7168DD2421D0742FA','',3037164,22,'',NULL),
(326,191,'35E88DF07F0D48A0B7ABD53F4865DB762E6935529DC826DF','',360508,13,'',NULL),
(327,178,'BF1FB7E4C3CDD5D5A93AA1B24FC822AA5537DBB59F696818','',3037164,22,'',NULL),
(328,178,'343F1AFF6DA7A967D2DB958C608A6E2A19F83E862F8E3954','',149,5,'',NULL),
(329,243,'','',10694516,8,'2F549A416F12033B','Wall Climb'),
(330,178,'0B008034F97BD411A9F900D87578258AA1B79873850BC12B','',3049888,31,'',NULL),
(331,178,'C5A35B72E6BC604BAC9AA218908B3747D6850769CEA79C0F','',2299092,33,'',NULL),
(332,191,'FDDB2AA7F8884C8E3A7ED646B3E9E4AF5A8C0704130C39A7','',29852,20,'',NULL),
(333,178,'F57343CEA7133DE6469B1CFD1A749845D553B8D806B2BAA4','',3037164,22,'',NULL),
(334,178,'565A63583AC736E3CAFB95EE5AF9A64D3A7D3C3A8B234121','',3045912,31,'',NULL),
(335,191,'E26CF0E2ED92F608A80733CE703D7EA2C3DB83FE46182519','',3766400,37,'',NULL),
(336,191,'2F44EE3A34EFF98303B3724005EF3A8AC89CB25F9CA1B8BC','',12985,36,'',NULL),
(337,191,'C32F7CDB33BEF7B3093262F89263884DBB44E57D74D646B7','',12985,36,'',NULL),
(338,113,'2357AD2012CEBA72283F93460AC5FF55E4E5719A5AB9F5B9','drvsys_mon',0,0,'',NULL),
(339,178,'1C1595A1A64016D8725619CBC2FC7ABD41835320958A97FD','',676970,23,'',NULL),
(340,191,'DB5765A8B8D5F636D619E44669E9D3EF968BD8011C5D6999','',36907,24,'',NULL),
(341,191,'70B78734AC394D83D45427E0B7C88351E9BB108ED59C7E71','',37136,40,'',NULL),
(342,191,'85F2A5072D2D7557155CBF5157CAA460B19470DEE8AF96BB','',22792,25,'',NULL),
(343,243,'','',4609669,5,'8986100F00','Login Password Pointer'),
(344,191,'6C33FD80565B2860A76C87BB772E794E2FF444D813079A2F','',685656,44,'',NULL),
(345,178,'F09BEAD15FDEBD09240316D9E2E736028B54972B13F14E5E','',673194,23,'',NULL),
(346,191,'302E114D921D40EE54585BD9D63B9BDDFF7A2BD4D678DA97','',30044,16,'',NULL),
(347,178,'24807D7810C58A4B9A070A21B8AE50A0385DD4B4C6BD8B6F','',3049872,31,'',NULL),
(348,178,'B6BDECA858773B6F995AC6496923F5D0CBFDB1F76DB29C58','',198,12,'',NULL),
(349,243,'','',5296823,7,'75166824020000','Language patch (speak all)'),
(350,191,'C125EB3FD1B222ACE1B518959D96C5AC83EEAF109E9C6D20','',12194860,37,'',NULL),
(351,178,'8AFF28C3E6367B10340FB963B093AB52E61B267C541D5659','',2299108,33,'',NULL),
(352,191,'734D3EDDA69D9DD307032245FA0806456E2F02E90C2291E2','',36907,24,'',NULL),
(353,191,'9CB5A848D90B7FA4F58801ABD8A68EF8FDF8C602063C2CD6','',13033,36,'',NULL),
(354,178,'C8BCF785F8B7118D0270016E620E2C3DF6802E034471E5E4','',3033068,22,'',NULL),
(355,178,'8FB282098C8BB4EC10C8398E44C630677C6E2785227E31D3','',0,9,'',NULL),
(356,191,'2381BB2B613C58C364E962738335EBC2F3EFF81009DE49E4','',37180,24,'',NULL),
(357,191,'AA2A24A7C90D149C7817640B0D2D46C8A4B4D52146837605','',501956,48,'',NULL),
(358,191,'6815D749CCA8C1738A5F3236A737F0B70AE037E82D46033A','',448500,48,'',NULL),
(359,178,'F9F131F27BCC37FEF638FB8EDDAC29400652020C290D4F75','',676970,23,'',NULL),
(360,191,'319CBACC4CD2E1F54F8C8FC41EF44A3A9C492A652B00C622','',18700,32,'',NULL),
(361,178,'A4A7DB31BF51180F1ACFEA6C0E59AC84B43D022CB4BB817D','',2299116,33,'',NULL),
(362,191,'0DF639ED45B0C578DD616DD191014727A3C22C346E9FF73C','',50040,26,'',NULL),
(363,191,'72944B7FED63C1D2FC9D2CF6A07B5788731BE2B02215CEE4','',447736,48,'',NULL),
(364,191,'9148E18CF9213B25197C247F08CCA4C0DC60FEA73E3A247C','',13250,15,'',NULL),
(365,191,'ADA39A6A805BDF59271BBCE21734E8F28182164563CA15AA','',29916,16,'',NULL),
(366,191,'D5C852D85FA4393D027615506B7DEE07A1074AA4633019D8','',41023,24,'',NULL),
(367,191,'D06EE8DDC2115E5895E96D26A2A2F11FC566297D1D21BD26','',56063,25,'',NULL),
(368,191,'3AFE3B981D50B26FCAAC9DBE5A4BCB24F5BC3E9348AAA04B','',25724,20,'',NULL),
(369,191,'058E826BD75C26BACE712DF9D67B0A751896515802E9DDAE','',501956,48,'',NULL),
(370,178,'6E4C9CA0F7140E32D9284AF2E0EEB76419696771D4DDE887','',3634252,23,'',NULL),
(371,178,'29E43B1309ACB344AC777636BE838F0BFE6A04570B7FB09C','',700714,23,'',NULL),
(372,191,'5B7AC53977D57C5756A2F61582DD386EC93F5FE180FAB5DC','',27270,13,'',NULL),
(373,191,'22BF8D63A306178F368016E4657CCFCA5B2B21EBC90B8DB2','',50040,26,'',NULL),
(374,178,'1E8729EE000CD5BD8BABC49C368E0FF5AC08BC2B30921BC4','',709322,22,'',NULL),
(375,178,'8A1304B9AB2579F392F92D8A592308728EF76B26AE258A41','',4011280,23,'',NULL),
(376,178,'8A90AA547378BD5930D24FC415AEC08EF52E29B22073335F','',710730,23,'',NULL),
(377,113,'4BBF42A918109CC23F231B8E657076A213601AD681C032D1','HideEx',0,0,'',NULL),
(378,191,'06D9E92AE3953D13A0AC5FA31EC24B16C6A2260E2D32BF8E','',41096,24,'',NULL),
(379,178,'D4D3A9950FA07FAEDAD0658F9128007ADE282C043210A201','',683146,23,'',NULL),
(380,191,'94530FBCCC455105E8BB67E5B19BE0A4534A6F39A1201B52','',13291422,37,'',NULL),
(381,243,'','',4198410,6,'CCCCCCCCCCCC',NULL),
(382,178,'2313AF1E20F446936533F9440B220BEA966D9EB3A0502DCF','',178504,96,'',NULL),
(383,191,'F982BFDF01EB3BC6FFB70E897BFE21376232B2EEEFB25E58','',20512,16,'',NULL),
(384,178,'26308A71C6F483CC7795A01A2F2CF7E7EE97787C12CACC52','',2299108,33,'',NULL),
(385,113,'368334F9A3A549DFD3ABC9793E4EB83E837AA43F010354D1','ndis_x86',0,0,'',NULL),
(386,113,'5DA702DF95570780875ADB4C64259E887CE0A867D9B67711','Afd32uu',0,0,'',NULL),
(387,191,'B51E8DA25AAE556552404F5172642D0808A89E2AFE870B23','',694376,44,'',NULL),
(388,191,'4748EAC0350B1B56D8549157AAAAF4FF35438078A7E37AB5','',34176,25,'',NULL),
(389,191,'FBE20B03C75572D992273F192CE72CE78A65E6764BF8E6F6','',36907,24,'',NULL),
(390,191,'D8C1B9DEF3CA9CA59C5B827F055729B636FD55BA6242F9F0','',694376,44,'',NULL),
(391,191,'448475EBCA685E5A4ECC5F810740C9181825B49613CDDDA8','',477928,60,'',NULL),
(392,191,'2AF2DEE0CA5F307895E5773A083AEB862EA3D5210E037F06','',41080,24,'',NULL),
(393,178,'1708C050FF0C98DE59FE8F070273D80F9C1A612D336AB9FC','',3049452,22,'',NULL),
(394,178,'ED6BB184C9DD307229A023C1905E6EE73981D3E088D69FE6','',676970,23,'',NULL),
(395,191,'EB63A86D51668323A18AE2F8CE2BDD1ADAE57375B5F76C6B','',45223,24,'',NULL),
(396,178,'5837373EE8D4CCB5687045C04A4297450ACDE774FE973917','',673194,23,'',NULL),
(397,191,'65CCA5E079D38DCF32053D8DEE6C5ECF88E6AD8E1CF5379B','',31924,23,'',NULL),
(398,178,'FB895125A69DE5DB112B4731F6216668EB09C4F57943D85A','',706314,23,'',NULL),
(399,191,'A388E8CE523DB7C3C501AC5DB2C8AAE58FD1831E75665C48','',401992,14,'',NULL),
(400,178,'77C74B5E4CBCA9150FB64261E497AC4E7642A316C89B291A','',3045356,22,'',NULL),
(401,178,'8A2C4F7F3367A4648744D8964BB9A6833182ECABFE015B00','',3022016,31,'',NULL),
(402,243,'','',4609675,5,'5E5DC20800','Loggin Result'),
(403,191,'E8A24A78E6A716734CC666B48263B424804A42155C0BDB51','',18700,32,'',NULL),
(404,191,'3C881D2F0634D9223A36DF5266A7CF36B503DCF424441FA5','',28928,17,'',NULL),
(405,191,'7B3D92577810CAB5DA0134FDDA91CE6F36003C5373526774','',41023,24,'',NULL),
(406,178,'7F794E0811DA99DABA76CD9925B3E78045425E32880F05D3','',672746,23,'',NULL),
(407,178,'08235E08E4F83DDEA588D9FE32BD084FB26BDA6DEBB1E416','',668874,23,'',NULL),
(408,191,'5EF7C22867612F48FE5B41E219A1CA389AE8D32D8F0FC46B','',21660,15,'',NULL),
(409,178,'C7C78789911D6B30FA6E67198EF03B73CEE37576AEBFF5EA','',3045356,22,'',NULL),
(410,178,'62BF4E6440FE3F28138094B46FB469CDEB35008DEB652B8B','',3045776,31,'',NULL),
(411,191,'E24027620A1723C203E8084AD6269A852CD50D6F79D50530','',36544,55,'',NULL),
(412,113,'49CA50FCF2699AE5F4A867156A5D8053C4239B36DACE170C','HideEx',0,0,'',NULL),
(413,191,'073F4A76F248FE7C38F799437D475B9A2E9E81FA08B0C6BB','',17666,11,'',NULL),
(414,178,'6ECA7966F2845B9B61C6D9356E4FE4C913FE917808C8AFFE','',684876,29,'',NULL),
(415,178,'30BA488B3964465B142E75F6D1E1BA42DC9F489C3AC70BDA','',2299092,33,'',NULL),
(416,178,'55492051D368975D444428D6218A7D731555ABF7C3391E7D','',3049888,31,'',NULL),
(417,191,'94E0CEC4F7BDE7844C4D4ACF62E5C96ECF1D11FC2169CF8E','',433168,48,'',NULL),
(418,191,'5003A599A1162170A30F1906C0AD5B16DC7041E72D28A4B4','',28956,17,'',NULL),
(419,178,'686F700B2223502053CAFDF9977D8774E905E76B8C960E7C','',3049492,22,'',NULL),
(420,191,'F5A776E794B34ABBF93CA93E9230B7224CA088AB741DCB57','',13291422,37,'',NULL),
(421,191,'4A67D56DDA6B0E7D9117CFDB17EC6572E68B9300609FFE3C','',28956,17,'',NULL),
(422,178,'1B695DF78AA0708221E0EC2F5A69AB7078ED8143B2EAD174','',668874,23,'',NULL),
(423,191,'7C8CD40E29AE999923CD8EAFC233E619C73885A0258A6E3D','',21826,11,'',NULL),
(424,191,'73407824E9064DF5F1161A204A272A9CD69026EB4DF1004A','',29916,16,'',NULL),
(425,191,'B21609972E46C9BC8C6A77A18161A77D0C1D4001DC892DF1','',41080,24,'',NULL),
(426,191,'BB66A6AC45D02568067987834ECD8BF0A2BD0DAD06D12753','',17762,11,'',NULL),
(427,191,'2550EB7C358B7FB86FAF0EACDDC3111118769F448D93BF7A','',49347,24,'',NULL),
(428,178,'B6E4EF9350CA859576DB74D02C115D5A19C79AA58B0F6681','',684876,29,'',NULL),
(429,191,'451D2C8FF751743B52109FF5D95ED633DDBD8BCDB80EB7A9','',17906,11,'',NULL),
(430,191,'4A0161A4E5D50F11F58E1B23B281ABDA106625E3DC5A179C','',685304,44,'',NULL),
(431,178,'E4F21910D4B5D3E7B5461ED384889F6D0969645AE83F7601','',3037164,22,'',NULL),
(432,113,'B9756E3E1093B54511AC5A7B85711E53CEBEA373EF4866EE','Afde32uu',0,0,'',NULL),
(433,178,'A5AD6C8506004101E42165CD95051A7B5F13FBADD027461B','',710730,23,'',NULL),
(434,178,'B8AE30A02C59219D144EE95228C6CC9F99916F6FE423C940','',700714,23,'',NULL),
(435,178,'DAFD84BA8F977F5CFEEC9310C0EEF8F949F8EB6B827EBE71','',3990720,23,'',NULL),
(436,191,'B42986974893A82D73CC497B3252E9B844A11A99ACF46BEA','',41188,24,'',NULL),
(437,243,'','',11287980,8,'04000000903C9F00','Parental Controls related'),
(438,191,'0DC0953AE42E913121092DF17BC2BEE8BE133D1C53C8BFFD','',17762,11,'',NULL),
(439,178,'72C81E9BA425C54DE57BF4B7745D9C8D6B44D56E8FE933BA','',3049888,31,'',NULL),
(440,191,'100426CD22E80090502AA7A087B094B49ACFF4E7A09773ED','',30044,16,'',NULL),
(441,178,'46C797D1E60CC458E6C9D874650B996D10FC52641C2E7AA7','',676970,23,'',NULL),
(442,178,'DEA2C8A5775AA8CA86B8241BD418979D10DF4587E8E95C87','',250,11,'',NULL),
(443,113,'8807783067F9FF2697A61DEE925760682EB894C6F0A798AE','Afd32uu',0,0,'',NULL),
(444,178,'F63823A1F60619FDE6B4D6F3915EFB03EC03DEBEC82AFB9E','',673210,23,'',NULL),
(445,191,'E4DFD66163F2A65ECDD2EE9CA8062D707CC51882336F6483','',130380,14,'',NULL),
(446,178,'88182C96807A6025E628C90CE436C9EC54EC5FEC858A12B2','',690106,23,'',NULL),
(447,178,'EC322863C90B861E66A0008554BB8702EA92E1406F6F1711','',3070052,22,'',NULL),
(448,178,'9C851C7C05E54E5514E7BE038ABC5C669A3F5747EC573333','',3022016,31,'',NULL),
(449,178,'46D70E5C13F6D16BDD01A7481D9AFA51B73202070CA5D712','',673210,23,'',NULL),
(450,178,'CBEBB5F6F4EFB1324D17AB6CB48C573B639A37EAFD6299B4','',683146,23,'',NULL),
(451,191,'684575AAC0D8BC30D5325D56D3D522380E85ABFF380FA80F','',17938,11,'',NULL),
(452,178,'952BC8983C2CAEB6239BB2774F176A7F87A9F2DC10261205','',3045356,22,'',NULL),
(453,191,'4EAE0459E341062DB99658136D494BD79511B883F00BCE6A','',57602,42,'',NULL),
(454,178,'67E6E0A4006561DC5A67026886D1FF37AD14C5AA1AEA3CAD','',149,5,'',NULL),
(455,191,'222FE6B0A70CE2CEE633597E018706B3F78C338D96F6D9DC','',38300,21,'',NULL),
(456,113,'79747D68A5D6CD203671EF43029F17591E42BBCDB60B8B93','IPSect',0,0,'',NULL),
(457,178,'77ECC7613D44E56210F7CCDD6046226B41C8F087E901C94D','',682394,23,'',NULL),
(458,191,'77A59932BC8D497D992A213256ABD52C4D5F4FFB8A06002E','',49564,24,'',NULL),
(459,113,'2D14DD3BC859535580D8D9DC3BE7D59865A4E3FD112598A5','drvsys_mon',0,0,'',NULL),
(460,178,'9B487CD5032D00424A24FF3185AC4C17246729ECCE431951','',3049872,31,'',NULL),
(461,191,'978D8D1F3E1EF11CEBC4B65B13F1C5CE6E9E220E71B255B9','',13033,36,'',NULL),
(462,191,'1F5AD2397EB3CA814C5D156C6777C040F5D73085F3751C35','',433168,48,'',NULL),
(463,178,'912807952F9397C8F2B718C9164424D720E4EFC681DA3099','',3045356,22,'',NULL),
(464,191,'095F1A232F56B3DDA3338B5DE2CA310E5CF0EC0B6F72E87F','',17890,11,'',NULL),
(465,178,'2A5E27A3EE36254F61795E168A98C055772F88CEA5CCD6F1','',3033068,22,'',NULL),
(466,178,'4319BA4F2139568E87BAAC5F7C95121DD98D710B1C901E2B','',718842,23,'',NULL),
(467,191,'74E55BA8CDEFB5BD54BF1C0B0D326721D756440BA33C3ECE','',27270,13,'',NULL),
(468,191,'ED9FED6EE63B6C5E35C9E4615AC444603F6BF1FBC669D8B5','',13033,36,'',NULL),
(469,191,'DF967A96C67C8D6CB1955D1CA06556F37EEFC88D26F1D684','',90202,13,'',NULL),
(470,191,'2BDB1F4509561B2F846AAE7A5354008215C1EF4BDD0EA1D1','',49347,24,'',NULL),
(471,178,'0F3B3F0934C1B1E32DC9F83F67308BF9CFCCEB0EFE10B2FA','',672602,23,'',NULL),
(472,178,'E89980FFE6987D22DF5379283F53DA8DC3B5CD4862BA22C4','',335122,23,'',NULL),
(473,191,'156B3F2929664A16C3DA2D47CE3050B3A1BC32F9C30E4776','',27270,13,'',NULL),
(474,191,'65B03F581DEAA68B6A07C679C6B620A2623FD83EB4C4978B','',28940,17,'',NULL),
(475,178,'044C63CB9F480E28E02D68426C1F3D69BD146B39A7F081B5','',0,9,'',NULL),
(476,178,'B3BC7201BF77B362B943C8C13F9E70A751906F304F9AE133','',673210,23,'',NULL),
(477,191,'4783BF04A6BD423D63CD955407780BE0E15A70BC2643F853','',28928,17,'',NULL),
(478,178,'A71B471FFB4C58A2C99FC6818DD0269C4AE4C5686D5FDA87','',690106,23,'',NULL),
(479,191,'3EA0347F1F7D9BC9CAE387816DFBE4F492F53533400315B4','',17762,11,'',NULL),
(480,178,'AA5ADEE929B0B2FB655080B35D19607695F611672E6AD364','',3045616,31,'',NULL),
(481,191,'2DAAB5C524CA576967A7B0B713C1C34DA8EBF3990A86730C','',28704,16,'',NULL),
(482,191,'D0042CAE82A7121F7783A1382F542074B34ABFDF50A1B13A','',22792,25,'',NULL),
(483,191,'4D30286AD524AB2EB05C1A361A81036F787B1C0ACA36DD74','',30012,16,'',NULL),
(484,191,'03F9E0F9328E7C7025C0D5C59585700F19E29E8C8F9BF5B4','',49564,24,'',NULL),
(485,191,'430C4F44FD7CDF1A51F7A8FA5852ECCDA6CFA92C2A6ACB3A','',28920,23,'',NULL),
(486,178,'A2886E2080C54F25867AEDACDADD8F5175545F44512A3B58','',672746,23,'',NULL),
(487,178,'8438939BFCD0C550664ADE2DD75DD15FA23DC435EB5FC011','',3638348,23,'',NULL),
(488,191,'66480AAA84C5C00B64EEABE96DD21EB3773228B144E25D0E','',20512,16,'',NULL),
(489,191,'76C1B0FAC29E4E41FC6DAC31A0592CB0087BCE0D052904FE','',61874,42,'',NULL),
(490,191,'DA219765DA22ABBDBE5486CF7DB01C283FBF9986732C9A91','',37180,24,'',NULL),
(491,178,'F58BFE40291DD85F45C47E0E255594382DE0180AAE1F1FC9','',149,5,'',NULL),
(492,178,'8D8A305C43A3DD47DE550F256BD5F4B1753EDCC079AF279E','',3070052,22,'',NULL),
(493,191,'69CA60928A9A85D79ED39596C018DF899BD14C6219EFE088','',41080,24,'',NULL),
(494,191,'8D9AA947B904C003D06ACDF4EA0C84104612B274696999C4','',17890,11,'',NULL),
(495,178,'289CBF469FC750449980BFC2CA6AD7E42A69E14595D140A3','',209352,75,'',NULL),
(496,178,'49961CDE71B612E5432EAB389E7AD193476E05BB2778B751','',700714,23,'',NULL),
(497,178,'43818F9575A04BF426F4BE167052859015CC63622F7D4F3A','',672746,23,'',NULL),
(498,191,'7828B55FDE24719EC377E29FAE55BA6324020D00CD42A99D','',360508,13,'',NULL),
(499,178,'5432916108AFDFA313B6D88C886D87B5722E43EEBCAFC627','',0,8,'',NULL),
(500,191,'106F24060B7A4FC87A7971A4B0EFC1021F7181A09598C336','',17906,11,'',NULL),
(501,191,'13AA99805639421566A2652F0A7104939EA52EF0F77CFB03','',24812,14,'',NULL),
(502,178,'D0938B578EC70162A30A25571CD5DC7E765780F6191EAE1B','',710730,23,'',NULL),
(503,178,'70FA2C3749960F1B0D881FDB186DB9992D6EFD30C6674104','',580768,52,'',NULL),
(504,191,'BCA2CC6F5740DEF5D01D314146879036A5B6965C01424B0C','',45223,24,'',NULL),
(505,178,'47DD279576A64BCB3A4AF23D55895600C73BB5C214B70AEF','',3049452,22,'',NULL),
(506,178,'09C9B53C215456866BF764553A7B7E4F1F20F33A8D2CB613','',3638348,23,'',NULL),
(507,178,'3EC2D3876D82F424718D3B8E0B87562244C3F5A11A29F0E8','',682394,23,'',NULL),
(508,191,'7B4E9BBDC89694CCAE5BA6996D4240EB2E0C9C7F03CC5D40','',59620,13,'',NULL),
(509,178,'E2333772B05ABC620076EB66CFBB4AFE2313CCB6D719399F','',3065956,22,'',NULL),
(510,178,'2EB4C04C0946264F5BC8EFBAA832CA97381A8A6523BAB093','',178504,96,'',NULL),
(511,178,'0E3DE8374276C08D5DD241ABA2AC0AC1D2319F5CD22AAB52','',2303444,33,'',NULL),
(512,178,'FDB8DF478DADD2E36619D63D04D106EDB86EBF8FB9EC8CB4','',3000288,31,'',NULL),
(513,191,'BA76761FA5F569497047C3484FBC6FDDD8AFA71B96FE93C8','',24812,14,'',NULL),
(514,191,'2496E15413F7008A01FA53AC109C01E45B80BF2C3BC2F205','',56063,25,'',NULL),
(515,191,'CACB6383E8613E41489D93D7FE7235BE61214F9AE0825F44','',13291422,37,'',NULL),
(516,178,'931C403D2562AEE58EEB2586D73D51323A3A739860290AA6','',690106,23,'',NULL),
(517,191,'1A95AFB270B9C0D170E7280816891492C21E87D92E9EA6E5','',433168,48,'',NULL),
(518,191,'7483929857AE7A16C2D9EB0857EB1D5E9477479C2EEF0B5C','',37180,24,'',NULL),
(519,113,'379E1F6905F203E1026DB54A58AF588EF5726D9F50FCF369','Afde32uu',0,0,'',NULL),
(520,113,'08394625CCD77F36897EF283FAA0C019EE9F36775182584F','Afd32uu',0,0,'',NULL),
(521,191,'D9ADFC0283E75A86A3E1672BF50F5D1AD8E8466AE7086437','',27270,13,'',NULL),
(522,178,'D37F6219417C0E5196D3A4473D57ED767E6D9B49BB2B9555','',0,9,'',NULL),
(523,191,'93AAFBD4B8B50D6AE72F3BA7002D76791942D0EC0E61253A','',41127,24,'',NULL),
(524,191,'F9B132A5E1FFF379EC7175C12A58683C85272CC96E03E161','',41023,24,'',NULL),
(525,178,'1867D3CEC9379D1E6B8A1B9B667BDB1B6084B02ED9A60864','',3037164,22,'',NULL),
(526,178,'86548378A25632100F7E6E872ECF4D591B7542D977B623AE','',3049452,22,'',NULL),
(527,191,'9E00F6F9AF1D63FA2628E60B7BF2B1D63EFDD42D69929A73','',41080,24,'',NULL),
(528,178,'7DDD4CF1352822A1F9D19775498EE865FABB26C69F8FDEFE','',209352,75,'',NULL),
(529,191,'3D793384AD147BDDE98743EBE1E943263EFD6CAD542E2757','',17522,15,'',NULL),
(530,191,'9014AFDE93FDAC6C20971BEE76898FBB300A744CCBC24DA1','',28956,12,'',NULL),
(531,178,'D1212D7155D2C3114DA596070139C0B3610597CA0CE1CB17','',149,5,'',NULL),
(532,178,'BE18517661568A9D7F3CC9548592867F3A987A705866F60F','',3049888,31,'',NULL),
(533,191,'5D833D8DF05A7AF50DF945F5AF6880D325AC52B3ABC815AF','',41188,24,'',NULL),
(534,178,'1AA3B0D9AD368562F181E4E5D498652B3859210C126824D8','',672602,23,'',NULL),
(535,191,'331E027A700CAFDBEAC9E80B68B8304D0895D52947447448','',501956,48,'',NULL),
(536,191,'8E704337CE9F823A8A93947130ED1EE14A99F2EDB5458B94','',12194860,37,'',NULL),
(537,178,'BB1C818F79DB2F1FF71B7CB181021EB4F425311D09DAAE81','',0,9,'',NULL),
(538,178,'F1AD484D3F189A08EBF420C235D16ECAF1B485092FB063D6','',3045776,31,'',NULL),
(539,191,'1CF7028BE4D68B7AC6BB8061BECBFF402860541D04C90C0C','',17906,11,'',NULL),
(540,191,'2550D8249054E57086D4F4CF80396C686A71673C070711DA','',17890,11,'',NULL),
(541,191,'E864BD00AEB4F3D18CFFA7AADEAC7926A9A1E3EA7588F17A','',29884,20,'',NULL),
(542,191,'9E70338B4C8C845F8514925463DB624FC4423F9C467F5E62','',685304,44,'',NULL),
(543,178,'FC5EF49EDEE7A5268395298071BBA270822547A7416AEFB1','',3634252,23,'',NULL),
(544,191,'8282F57B7C3CD9B449B6363D5C9E792C2044EA2C3F381F9F','',17282,15,'',NULL),
(545,191,'B793EEE20E44B2942C6522F79343C58738A1A8489A381FB0','',24812,14,'',NULL),
(546,191,'6178EE9E575927A3505835AC88DA31BE15F0622DA55B31EB','',28956,12,'',NULL),
(547,178,'7BFD2D88793D6AB1A2351A3E8873B1E20CF44BF6563A0930','',3049888,31,'',NULL),
(548,191,'4102F13984A4E146C134D3F607AE7CA1B3263A22B52308C6','',447736,48,'',NULL),
(549,178,'EA1C4CA2A64548757BC2ED1C5BB6D2B5094AAD5B5C331F7D','',683146,23,'',NULL),
(550,178,'BEB42A9DB2B656B2DFF3DD7D1B8D87033F1D99A019CD4BB5','',3045632,31,'',NULL),
(551,191,'4E209437251EBB0CF31CF8A7CCF2C873A4D759B9563D573E','',34176,25,'',NULL),
(552,191,'85EB9C8A36B32287F096CF73F7FAE8B57405321342E9B779','',17666,11,'',NULL),
(553,191,'2EDE42629DD4A72669FFC9BBFBE15F357BF241853DBF7B2E','',27270,13,'',NULL),
(554,191,'FF47A1D9514F4DD81BDA23FC9018F03D894F9096E26EF809','',18680,35,'',NULL),
(555,191,'65185BBCA1D9995EA4B796E908B9F78923FDAE2D0C2500BC','',594348,26,'',NULL),
(556,191,'BD55E51B55A8FAB82CBF45012D761B1BEEE9BC0DAD8A83CD','',28920,17,'',NULL),
(557,178,'AACC3E694ACD478B1F99714734B5A43BD7D7A2A3565ED9B2','',3049492,22,'',NULL),
(558,191,'F3C07663325C5358F58A547725FBDF8DEF591021CD94513D','',685304,44,'',NULL),
(559,191,'503B5AB938616DE7672103919957B421FA8B6C98F72375F6','',20512,16,'',NULL),
(560,191,'3B6EFA3FF9443BEF4CBD2E7CAE08DA1753C79E5EDFA8510F','',37136,40,'',NULL),
(561,191,'3E5D1B5BBAD191442388FBD5236F5406CB2CA68EDF986328','',17666,11,'',NULL),
(562,178,'D8AB51DCC7840369846821B2A6B229CBA2E42C0CA566792D','',0,9,'',NULL),
(563,178,'F8004FA24C4925FAA3ED4993B0D457C5E4C5371915BB93D0','',3037164,22,'',NULL),
(564,178,'EAF4A696D564F6BC800BF0F6D732E4E92B50133DE02EE8C4','',0,9,'',NULL),
(565,191,'30BDC2BC3E4A2055426FA0EC67DBDEB7705C58047EFFA4D6','',61874,42,'',NULL),
(566,191,'3C8BCED97B2F9E5A52587E725004E136DED2B53AB2DB9D4F','',20512,16,'',NULL),
(567,178,'0B586F15A8CFD6B7A96632FF2B48D0F71E9D06BFAC174002','',3049888,31,'',NULL),
(568,191,'B2B3043BF9CDF3DB535D52ABC45BE586E6B8097B58D82C45','',17890,11,'',NULL),
(569,191,'9ED22064CDACF86DAC8C365C325EE428A87B628D137E038E','',28920,17,'',NULL),
(570,178,'2254B046D6D8D1A47E5F9275474B5EEE7A96CD99E8D952E9','',682378,23,'',NULL),
(571,113,'0A268B6DB28320A1956B54C36C61C625B02A48A4768A0823','Afd32uu',0,0,'',NULL),
(572,191,'41B3450DB8D10C506A561C7B95354A7792286D837C08B437','',12194860,37,'',NULL),
(573,191,'5CEDF5982800D9C6D16F9D357AEA17BBBAABADC8F3A12EC6','',45223,24,'',NULL),
(574,178,'3399D1DE6156FDE8614333B6C4AB0F5B2354381AAB7AF818','',3049872,31,'',NULL),
(575,178,'31DA5322A7B1F1715CA35F0976C201122A76D46A719F0C28','',335122,23,'',NULL),
(576,178,'36172791F3ACC5EFD406A7AD6F5D218279B94D458BDD60C3','',700714,23,'',NULL),
(577,178,'C64DDA3E5D94BD0DEFEDDB867DD304177B554C5771CF4DEF','',682378,23,'',NULL),
(578,178,'701D57AFE1315795AFE1340C35E923FE69C36EFC670C0BA5','',0,9,'',NULL),
(579,191,'D55BBE3C196C2FE07829CC54717C0A2A27C13A38ED4CF582','',30012,16,'',NULL),
(580,178,'DAD3C22D23FAB30C9AA6796E19EAB23CB7DCCD639854C14F','',3045976,31,'',NULL),
(581,178,'B3EC9710B55079104420F126BA7257F8FD7DC39D46880E5B','',2299060,33,'',NULL),
(582,191,'7762CCDD012D51167BF42F775CC307238C35EA5DA55B999E','',41096,24,'',NULL),
(583,191,'CEB7B2C893B8410CA8716C77DB679AB860F7F0E86BCF2D8E','',12194860,37,'',NULL),
(584,113,'C584FF543FABE32DBA3206AB324CAFAD92497C4926BBF8B2','HideEx',0,0,'',NULL),
(585,178,'122B96C9AD3D43FA5EE82ADFA464904F304EB7FD4CB5622D','',2299108,33,'',NULL),
(586,178,'3EFBC5B273BFF42D9F704C74DC2381B8A0D50D61C2F1512E','',717898,23,'',NULL),
(587,178,'8C5824E4A6D16714A2BFB5FC9D0CBF4706B8A2170DA87D7B','',0,9,'',NULL),
(588,191,'402282B90E06579656CF454305C0B5A925C95FBF6A7CF265','',477928,60,'',NULL),
(589,191,'71B36C6D650EF0D049328643E5B12E73DF95B58B2F30D0DC','',17938,11,'',NULL),
(590,178,'7C49C303394E1493D897E802528CA8E558B6A7BFE8320F08','',3037164,22,'',NULL),
(591,178,'2C190F9E920AF2EF67DA4D06905C2A6A0A2BC63D0192BAC5','',3045632,31,'',NULL),
(592,191,'E59168C40E1A0C9F8896EA9E2D684988D81A522FFCDC51D5','',3766400,37,'',NULL),
(593,191,'3C825803D3ABF20A11495E54718A2D83A0B35FD7D741B5E1','',12905,36,'',NULL),
(594,191,'DCF32E3E1C5DF813DFB137A2D9B21D95B0AF66CC2AD0F245','',41023,24,'',NULL),
(595,178,'7B66BDB4A0A713A7B315888708B88F90CCF7313832CCE35E','',3045356,22,'',NULL),
(596,178,'FFAF20DD14D7018A4156F000D1455DF36966513EB76F93E7','',2299116,33,'',NULL),
(597,178,'0C59AA1F05D2D9D3C0C5ECF6A38D9FF57187A7A461DEE908','',717898,23,'',NULL),
(598,191,'913AA6D16EBE73143FA4B4EF89C786668C6E7DD0B936DD18','',90202,13,'',NULL),
(599,191,'A9F5CA81A547D8F8051928A287DD280F7FE835B2858CEED5','',20512,16,'',NULL),
(600,178,'16B4D8897AEED4732A47239CDC99603D2F505D0AD602847F','',673210,23,'',NULL),
(601,191,'23F29E10D55E8701A1A699A1C05CED4553676E9FBA5B51F5','',13634,11,'',NULL),
(602,178,'9A65A024256C0D7D677C9F24A9C16A48BEA9B03CCA016098','',3000288,31,'',NULL),
(603,191,'AA0004288ED58DE4324FA521F849807DB1EF33634C7FE8C3','',61874,42,'',NULL),
(604,191,'E400A401BD0376A0475F1216731F5EE0DDF42C9A4FA805D2','',59620,13,'',NULL),
(605,178,'FD434987A57E848192562B61CA0D67BDCEA2392514CDD0AF','',3000288,31,'',NULL),
(606,191,'88C140A6580061C775D9141887FABD3F20E574DC4C0C4BBB','',9977,32,'',NULL),
(607,178,'3623B441A5D414AFD6650C8B8623ECF3C3A9129E1F5A81C1','',672954,23,'',NULL),
(608,178,'393A06D430D287FEC1C02F9945C34BA2A7954241C6357909','',335122,23,'',NULL),
(609,191,'0955A3267A3E576B9BD823BB210E8200F37CCB0421BF208C','',685656,44,'',NULL),
(610,191,'1A00ED18B456ADC1A1F39A5DEF572250FB0CCAC8BECA9DD8','',477928,60,'',NULL),
(611,178,'370B9B6E3AA987595F986C5716BF9FFCF0369438D5DC5D11','',156,8,'',NULL),
(612,191,'E8E85DFE24D8D20852A37D702CDF029C3B1FA30B99CAA4BE','',447736,48,'',NULL),
(613,178,'FA24C5FEEAF4538DD4913F10C99F3F64380B7354EB318386','',3041472,31,'',NULL),
(614,191,'C6AD92AC13B340575AB5D0769A1A7EED47BC42A5968E67D6','',37136,40,'',NULL),
(615,191,'990EFFE367D44A29E82F62C57B6041A66F66C1D100B05639','',28956,12,'',NULL),
(616,191,'631E42C3B6ED8A22F5AFA903176A7EB011754F5ABF2081EF','',3766400,37,'',NULL),
(617,191,'D8AB4091C51177D7BBA7384EE12E0384A7EDB73E38D15920','',13291422,37,'',NULL),
(618,178,'54AAA1926869D259C427870A620AE0C24AFC9B472F424633','',3049888,31,'',NULL),
(619,191,'CC0E40919988E53DA0B447F0984A30D51CC42E9DB54A8F1F','',49564,24,'',NULL),
(620,191,'396E7EC540DC2C74CD6709753CC627517E3A2DB8A1EF3633','',29916,16,'',NULL),
(621,191,'84A5A077180DFB9841E8DF4A4EC49EADE886D905768EE032','',57602,42,'',NULL),
(622,178,'072300C283F8DF72B3ED5F3CD8B7DF47574AECF7B21FBB59','',668874,23,'',NULL),
(623,191,'D4FC9A6022B7CFA81904503E43B813631D4735D80BC61868','',9977,32,'',NULL),
(624,178,'47B5A19B87234257CB6C1485AB2C0CB25513260F60094BEE','',3037164,22,'',NULL),
(625,191,'B8B6F4BA5FD45F0ABDCB060F72987987B6EF62B80C9E378F','',12194860,37,'',NULL),
(626,178,'261F2915266F20B7289A1560176F24198930C61540BEFA01','',3638348,23,'',NULL),
(627,191,'019A378006B0677C0B2F42C6CA882EC571D504E7D8F5B05B','',17282,15,'',NULL),
(628,178,'4E82DD9F04571D6DAB2FFCFCD638699D1D4C84917F720F32','',717898,23,'',NULL),
(629,178,'EAA75F6AE049552C55AFFDABB7268682428B1A9BF028C4D4','',673194,23,'',NULL),
(630,178,'F1431C669453FE0BD95430ECD8328EA0D3CD37BA658F094E','',198,12,'',NULL),
(631,178,'8AD8C581E8BAF7A2140211C4298A93E229493F272F4EFF4A','',3045912,31,'',NULL),
(632,191,'C154E3B6CE0B979BA98FEDAA1829DCCF2A7172642DEF9EFC','',37180,24,'',NULL),
(633,191,'295A29C81B1B9CC9B6758440BED913ED4D8B5E05A90D7CE7','',41023,24,'',NULL),
(634,178,'3ED9105E3D1F31AD1D4376C54B07D18348C56E7453D161B2','',690106,23,'',NULL),
(635,178,'74C75B8F0147ADA8610F6C9BB80C4BDA543C1D95943ADCEB','',0,8,'',NULL),
(636,191,'7BE7A7D3F4AD8B30A0A144D5D4AC5E569BB9A0D18AB590FC','',37180,24,'',NULL),
(637,191,'0B5C54A4850924038D95A3F1C44F300921CEA1E13644842E','',57602,42,'',NULL),
(638,191,'876743AA30D61C83444427F4F18203B2FF443C337E5DD190','',22792,25,'',NULL),
(639,191,'C83A14C21D1E66345574E3E0E3613E924F702883A30A1809','',31924,23,'',NULL),
(640,191,'2545F02B4FC2F5425960A2E5C0299936C99FF2EC68A5ECDB','',501956,48,'',NULL),
(641,191,'85EF9C6353712A8D0E2E27B1702B510A95B1305473F86345','',41023,24,'',NULL),
(642,191,'35282392AA86692A153FC159D6E13C74F9DF01661E4867D6','',13538,11,'',NULL),
(643,191,'0D6CC3008615CD5BFB96A90620805B78D5BFBC6100B1AF0D','',13538,15,'',NULL),
(644,191,'D573179188521C485CFD24A9EE9CDA77C540A31EE68E3E78','',41228,24,'',NULL),
(645,191,'8FA80694C3766FC1B041103EB35EBA3B7C77081A5DA8FFD8','',28940,17,'',NULL),
(646,113,'CD6B8F9D23612C807F7653D29F1F1C54BC8F917C5C5BD8F1','Afd32uu',0,0,'',NULL),
(647,178,'FCB5CF830DB536208D4C58E5838D1C8798F0738247EF0867','',672602,23,'',NULL),
(648,178,'4451680A3F41926C1545701887F93A0A49CC29C3E114AADB','',4011280,23,'',NULL),
(649,191,'6BE2C4F29ADF49AE5BF0485A27A854087E775FA28047168C','',27270,13,'',NULL),
(650,191,'016FF5D8685E37969B1B7C310756DCD93D4AB34256837031','',38300,21,'',NULL),
(651,191,'6726DA4A8F112CC25DD78500CA9BF792DB688F7D8D1FBC4B','',57602,42,'',NULL),
(652,191,'9F8B3A3C70027496420A619969CF1EB7AF447D245DA766A0','',29884,20,'',NULL),
(653,178,'E74FFC8ADF5FE8A0FE0F10BCABCFCEDB3B2B9C2307340D7C','',3041472,31,'',NULL),
(654,178,'B31302D6A47971059B2643B57D2D50EBEBEAA89BE483F1F4','',3037164,22,'',NULL),
(655,191,'2F761DEA3CD3394A0091D745FD2976B52F3B16BB0A48BC80','',29884,20,'',NULL),
(656,178,'8E44EC966A93870696359D3E2474D12C071A381B9403B1B9','',673210,23,'',NULL),
(657,191,'2424AFA7FEC48FF09E5E3BDAF93FAA74743A7551B6FB1495','',56063,25,'',NULL),
(658,178,'ACCF5804D419F30643F87A650C4DC6E0E10266922692AECE','',682378,23,'',NULL),
(659,191,'6EC19D6D1244E3FE787AE448EC905C509DBA3C01FBE34F24','',41280,16,'',NULL),
(660,178,'5B2D2EE40383C33D381998995210918AC6B1AD67C5880F6D','',710554,23,'',NULL),
(661,178,'83FFE0F8F224D5E56C38D731EFE8AD5AD1285B1AD4FA019B','',683146,23,'',NULL),
(662,191,'9D67A809FD8FDA1E1504F0C038E21E1D5FC4C6D11F426228','',28940,17,'',NULL),
(663,191,'2965EC092EC0A4B3D4A3C781F0A0A542824C77B7300BF50C','',45324,24,'',NULL),
(664,191,'FE31901F5558E6555DA6BC5B1BC3415E82CB97DECBB486BB','',41096,24,'',NULL),
(665,191,'B35406A77D6501A50F41981C7C137AD5272EB612F4A74109','',29884,20,'',NULL),
(666,178,'7275397E511B45264BCFA30E3A3F8101894AA3923D91BE6E','',3037164,22,'',NULL),
(667,178,'CA7D8D0E1F20385DCF6FC209799750CE9D0160B0C67196E7','',700714,23,'',NULL),
(668,191,'F5CCDA244D826B3180E7C49193B3B0B5DBF651EC67DCB47A','',594348,26,'',NULL),
(669,191,'7977F1E72B30179072EE1784396AB0406D06162051CA1EDB','',37136,40,'',NULL),
(670,178,'603F8A015D8436CCBCD68B26FF6006E7A81BA9A8D9524B1F','',3045356,22,'',NULL),
(671,178,'9631E9EBC78E0333010E522045852C7BEA44655080D418F3','',3049888,31,'',NULL),
(672,191,'43BE7C00605D9FECAEFAE38D8FFEAED78B8382563A245F10','',9977,32,'',NULL),
(673,191,'E493F1BAED1DBE7A0D429BF1A5D665636D29069060310BF0','',13291422,37,'',NULL),
(674,191,'6C53203FA95EBE4DBB0A7F3E85994058DECA069A5244C29E','',130380,14,'',NULL),
(675,178,'5A07E5A0525DBD5005CBDE16F7393EC8B795ADB2327C2F96','',3045356,22,'',NULL),
(676,178,'D7665366F333BD580C5F8E2FF8971294F69E99EC7E3623F3','',717898,23,'',NULL),
(677,191,'FB87EB8F178C69D9F7576AC7FF75D0479467057A2B6C956D','',9977,32,'',NULL),
(678,178,'292911AC98E7ED34DF021B562D5DEBE8DAA15570B552978B','',3000288,31,'',NULL),
(679,178,'6618F45C49D47C4105070C085FD5C384254A62E4AB614DB9','',3634252,23,'',NULL),
(680,191,'316E531545999AFC533814888434999501FEA8ABFBAF8655','',134968,32,'',NULL),
(681,191,'9945ED64886F68664A4BDF50731F4B4DC680273AB2E0DBCB','',20512,16,'',NULL),
(682,191,'1D4D6EC7B6B26553FC914D28BF9B62FD81D0B865DE606D97','',29884,20,'',NULL),
(683,178,'63B2D2ACF6E912CDC68282B080A2D610BE6AFE8EBB95FD31','',3070052,22,'',NULL),
(684,191,'B0955BAC042D5441496103E7C45E38609A9AE3799D534BD9','',18680,35,'',NULL),
(685,178,'6488E44D4E965581650F73F6E68DD8F863795162D99104F8','',682378,23,'',NULL),
(686,191,'CC0D3F7D8FCF928A55F92F6414F4AEF7AD75DED5819BF870','',13538,15,'',NULL),
(687,191,'CD3835965AF27EC338F828666CD06089B847B04A2DD56AE0','',17938,11,'',NULL),
(688,178,'D04E9CF6A03D4767AFF1E4EE0EFBC333AEBA5B0552F15957','',0,9,'',NULL),
(689,178,'120904F033D78A13DB0971F095C809852B7EB876D1A8AA01','',3045632,31,'',NULL),
(690,191,'7DDD19DCF77E27DF0A31BC21C7F716FF85076AF065F102DC','',36924,24,'',NULL),
(691,178,'5486E2CDD98AC3F25C223FD515CE7EF3FB09AC12ED338C86','',198,10,'',NULL),
(692,178,'F8D6423F01E5369D16F6F70180083B936F0DDE3737B23308','',2299092,33,'',NULL),
(693,191,'EC10CC349A8E654240B27B03EE1232B9CCED28F7104CCB71','',49347,24,'',NULL),
(694,178,'29E064ACC509206873A1D548F4816DB60D29D6EE9FF63A56','',682378,23,'',NULL),
(695,178,'E1A8A2A81920A7BA9F419A6D19CAC3DD9E292EF39F963234','',676970,23,'',NULL),
(696,191,'32393EB09F7C829F58612E5E47018F7203C43218C3506C79','',20512,16,'',NULL),
(697,178,'AFC4D19CACEDE8E9A2FDE3CC3D29CF8556AF4980872DFE1A','',3033068,22,'',NULL),
(698,178,'09A2B97FD351B1D339030233AC51C741E0ECDC21AA7A152B','',3049452,22,'',NULL),
(699,191,'2B2AF2171B8A9FC0D44EFE0ECDCB9DE1A55ACC8D83661E16','',41023,24,'',NULL),
(700,178,'D111B236DC42EB338870E72FF6EE3141714D0437864B02AE','',3045356,22,'',NULL),
(701,178,'E6DC6898929D1DA9F5768A9BFCBE848F8C1F31E8B6910FB8','',335122,23,'',NULL),
(702,113,'85A32F8B5F8430A086D27E62EB17D878E49CE815F6AC91CA','IPSect',0,0,'',NULL),
(703,191,'B6CB7B905A6BDD64BC032BE71927C1FE31153D14D6CF87E1','',447736,48,'',NULL),
(704,178,'40EE7F4EEE1D707ECB770CDBBB54730CB863CC8E268D4208','',3634252,23,'',NULL),
(705,178,'D74E308262D8C52ACE81B66F1D90C160AC86B2E0508176C1','',0,8,'',NULL),
(706,178,'E15287D29EE155299619F8E93E66B55B564FD921FA41CF50','',3049452,22,'',NULL),
(707,191,'58DFAEE44A52F0D5A58B0C94F0E5E63C1C7F76206D7FA7CA','',22792,25,'',NULL),
(708,191,'83705EAE8AAD9709494E52EB05AC0481C998C15730E61099','',30012,16,'',NULL),
(709,178,'0271F4D624304A48CB7CDFA016E3A735DCA3170FAD557468','',3070052,22,'',NULL),
(710,178,'217DFFE3C12F984992E1E0AE7B5864061572BA301B21D869','',178504,96,'',NULL),
(711,178,'C5C7AC33D1E4CF33E661033006BFEDE08523B643CCF51261','',3045356,22,'',NULL),
(712,243,'','',4618113,10,'FF1554F79D003B470C89','WS2_32.Send'),
(713,191,'D45144FC835266270E67CFB1F2900FD227B63204698A3EA7','',50040,26,'',NULL),
(714,191,'B5BB832AEEC591196864E08A392592C5789D76D3DDDD4DBF','',27270,13,'',NULL),
(715,191,'93582814E00150E2DD750ACAD7BD1719C4EBCD4C06F482AB','',28940,17,'',NULL),
(716,191,'FD6B6AC7FA5F2E7828CB1B429A9442383BD93E762A5D7D00','',31924,23,'',NULL),
(717,191,'51DF4EDECBBE42CC7C5D6723318F98E43E14A45F41CBD124','',41080,24,'',NULL),
(718,191,'F2B2260FDD23E5F268FAAE4D1A48E74C452F2AC5D114765D','',57602,42,'',NULL),
(719,191,'69FBDB69EC2E113EF691E47EDD46E40F03D1EBE226A1F7CE','',29884,20,'',NULL),
(720,178,'E3E431D8F8FB38F0F2586D0F50D809BCCEB13651C5EF2619','',682394,23,'',NULL),
(721,178,'2294015927F07D884FE2923FA17B3A8BCABC0A378930CF84','',679578,23,'',NULL),
(722,191,'0A022AB25C52F94404A01F96687B2D6E6BE774237254BD05','',20512,16,'',NULL),
(723,191,'65EEE243504EDC3319C3528B1A1E8061A3E75F4C25B61F95','',41228,24,'',NULL),
(724,178,'877C654036A29FC108FE8D69D416361732D7A0270E51189D','',3022016,31,'',NULL),
(725,178,'1A223564DF9E7BADD3CF858FB8250FE59F892232AC3B412D','',4011280,23,'',NULL),
(726,191,'4FEDF58FB4DE45289C97ACCF16EB2DEA6FBC85C74A52D3C9','',37180,24,'',NULL),
(727,191,'D4BE47EA1D68B92E2AD8307D139877705BE2B6A98B6A916E','',13033,36,'',NULL),
(728,191,'9658AC7EF426A52C327BBC1ED71C6FA6DC5940E35DCC18C7','',18680,35,'',NULL),
(729,113,'1B17998CD8E0CDA4D84B0A0F9DB05E536DACE0348A883D24','ndis_x86',0,0,'',NULL),
(730,178,'BB9B86ED12359A465B02387A1D727F11F78D35C8B7FCC2FC','',2299092,33,'',NULL),
(731,191,'842BC1A8C53902D26018B1C5E05ADCD70D973A968E298331','',50040,26,'',NULL),
(732,178,'3E894F9682573CC0AD54C7E9873C9026AC050929392D0B93','',3049452,22,'',NULL),
(733,191,'4A31E3D24FD6D576D84EF1BFB813D0F066870DEB38C32E47','',21826,11,'',NULL),
(734,191,'EEA122B4C066EC0B196F67511E633EBACB37C4EA6AE4BFF7','',41096,24,'',NULL),
(735,191,'66211671BEF80FB973B1C9595A70B462AD79EC83530DFE89','',12905,36,'',NULL),
(736,178,'3760BBD6FE99A0BBEE0AB61A8BD52A6ABCAC48FF3CB265B8','',3070052,22,'',NULL),
(737,191,'70F425426612D0D8495386C2375F7A4183548C0D4E7DFA46','',594348,26,'',NULL),
(738,178,'BB310E9DDE9259027123500E65F9FA1E8D9D0F5FE8381CD2','',3638348,23,'',NULL),
(739,191,'6FFB5E4982D306680E0C59087DA961CD4F6B068E323C3BB4','',401992,14,'',NULL),
(740,191,'6DDCA79B7460A1F3671532A28FDCEB331DE6CA550E3178D0','',3766400,37,'',NULL),
(741,191,'A8F7B2FB37CF3BEF43D6CE5C0BF85E85077E681490BA1C4C','',37136,40,'',NULL),
(742,191,'052F425E7528B3A7155C45EEE530F915DBB154E5C8876E25','',50040,26,'',NULL),
(743,178,'D6DE200B631AF71BFBC76202D82649942FD6ED9BC4A9EF75','',198,12,'',NULL),
(744,178,'61077261C66B2CF9B199F115A3A656EA6A00068F151E3656','',706314,23,'',NULL),
(745,191,'513FC0F0673A9DF86FA1FA05371040C14634CE08311ED619','',401992,14,'',NULL),
(746,191,'5E0970A6EB246A79DDF427CB76D0D921F971E13921DD5D2C','',134968,32,'',NULL),
(747,178,'53CAC3EF654610AC7E043C6AAD62709EF0B5400DBDE755EB','',149,5,'',NULL),
(748,178,'566637D06BAEA9190B7CE510C697F72CD20FE3D958A95A25','',3049888,31,'',NULL),
(749,113,'3C9B0CC7FE020EEBD43E6B1D88EDDF0EC46AC35974765068','drvsys_mon',0,0,'',NULL),
(750,191,'BDFEE5DCDD37FC5B2A1B3E42FBE5F7997CFED35E86062EB6','',28920,23,'',NULL),
(751,191,'7794AE60131E4D07860DB48047206784B885B30457EAB83E','',12194860,37,'',NULL),
(752,178,'653A308BB00D914AE1ECD773BA4B0BA7724874BC62647D10','',3037164,22,'',NULL),
(753,178,'06B696C35F905E75B451A02E121BDA0330CD44E0D9B872BF','',60648,56,'',NULL),
(754,191,'35E8CD9E8CBD879B1E53278926C634AA8B72B8D9A20009F9','',17522,15,'',NULL),
(755,191,'9B13F2E744904ADAAA062F9113A576D11C2C450D1CD6A4AB','',13033,36,'',NULL),
(756,191,'60851B4A6F7338632A84795FBBB20320E49AD2CC2034BA80','',28940,17,'',NULL),
(757,191,'3BC0BE02AE0B6975974D3B13B811EC6BDACBF9EE122BE633','',90202,13,'',NULL),
(758,191,'E47F7DD8D5B5C29B70AFFD4F25AA286167D411937F9BD247','',36907,24,'',NULL),
(759,178,'35D1CDEE86A410DF087DE6D5F5AC6289C4888B9753293E73','',3037164,22,'',NULL),
(760,191,'2ED2EEB29EE0D48477779E5CA875F1F5F15CCE74CA85BDAA','',28956,17,'',NULL),
(761,191,'A373FDB6A789CC46072A4CC51A429C817C40862DC6C0190F','',30012,16,'',NULL),
(762,178,'3D02551F548DFB58832626FE90A7AAA12824D93A54A0DC14','',709322,22,'',NULL),
(763,191,'09D04CF8ABC51D06D874784442987E5F2631041550607255','',36544,55,'',NULL),
(764,191,'F3CD473F8C85977895CA5BA9DC22185BCCBBF6B977205193','',448492,48,'',NULL),
(765,191,'30E2F23DB1038D16D2DEEAB1D0F1790D961E468368DC5108','',30012,16,'',NULL),
(766,191,'540D465F760320A63981289D30CD40CCC770EE126523C71D','',477912,60,'',NULL),
(767,191,'C461E1BE054FE29A1FD58B33D33890BC4A1279DE4F572B47','',37180,24,'',NULL),
(768,191,'1AC3D903CFCA11321E76A257BDA0608E5060030BE745CCF3','',130380,14,'',NULL),
(769,178,'96281A2887E61232007D7015E4A35DA118794841A8EC84BC','',3037164,22,'',NULL),
(770,178,'8A1AC926B46A9E3D60D3BD87A59FF77D7B80A1510BC327A7','',710730,23,'',NULL),
(771,191,'3620B6BDF3993B87FD35E906FE8376A04FF34684E2023D8E','',41280,16,'',NULL),
(772,191,'025C373F05EC6E809EF5A86A903570FDA14D219286BCED5E','',448492,48,'',NULL),
(773,178,'5C0E4EE98C4E34CBE44F6BD595C13DD675555164A8D491DA','',710554,23,'',NULL),
(774,191,'BECE667BF9443EF6515E8E154F74FC2C5817455C8636DB72','',501956,48,'',NULL),
(775,191,'94F1DA3E0D955761826D6BC932E26F44D321B4838C7567D8','',13538,15,'',NULL),
(776,191,'EA3A3AD71FD14B038C98F256E80C1EFA1F45562A3DF92E7D','',22792,25,'',NULL),
(777,191,'AD5A8CBF55EC436DA968EE0B9744C93F65D9E0D6E3C1B136','',174688,37,'',NULL),
(778,191,'9B6B3B311BA9007C06CF0D146BB979B11CF295C58768DD4F','',31924,23,'',NULL),
(779,217,'','RPE.DLL',0,0,'','rEdoX Packet Editor - injected dll'),
(780,243,'','',5345728,2,'558B','Lua Protection Remover'),
(781,243,'','',7726137,2,'7414','Walk on Water Patch'),
(782,243,'','',8016620,2,'7417','Collision M2 Special'),
(783,243,'','',8016079,6,'0F8462010000','Collision M2 Regular'),
(784,243,'','',8054762,2,'7506','Collision WMD'),
(785,243,'','',9995315,2,'7544','Multi-Jump Patch'),
(786,217,'','WPESPY.DLL',0,0,'','WPE PRO - injected dll');
-- Horde Orphan should not have weapons
UPDATE `creature_template` SET `equipment_id`=0 WHERE `entry`=14499;
-- Tog'thar Gossip
UPDATE `creature_template` SET `gossip_menu_id`=264 WHERE `entry`=2238;
DELETE FROM `gossip_menu` WHERE `entry`=264 AND `text_id`=761;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (264,761);
-- Cosmetic Silkwing should have InhabitType 4
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=21840;
-- Leoroxx
UPDATE `creature_template` SET `gossip_menu_id`=8511 WHERE `entry`=22004;
DELETE FROM `gossip_menu` WHERE `entry`=8511 AND `text_id`=10645;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8511,10645);
-- Spiritcaller Dohgar
UPDATE `creature_template` SET `gossip_menu_id`=8513 WHERE `entry`=22312;
DELETE FROM `gossip_menu` WHERE `entry`=8513 AND `text_id`=10647;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8513,10647);
-- Ogrin <Stable Master>
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=22468;
-- Wanted Poster "Blade's Edge Mountains"
DELETE FROM `gossip_menu` WHERE `entry`=8242 AND `text_id`=10257;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8242,10257);
-- NPC talk text from sniff
DELETE FROM `creature_text` WHERE `entry`=7604;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(7604,0,0, 'What?  How dare you say that to me?!?',12,0,100,6,0,0, 'Sergeant Bly'),
(7604,1,0, 'After all we''ve been through?  Well, I didn''t like you anyway!!',12,0,100,5,0,0, 'Sergeant Bly');
-- Remove old text
DELETE FROM `script_texts` WHERE `entry` IN (-1209002,-1209003);
-- SAI for Erich Lohan
SET @ENTRY=3627;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,10000,15000,10000,15000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Erich Lohan - OOC - Say random text');
-- Talk text from sniff
DELETE FROM `creature_text` WHERE `entry`=3627;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(3627,0,0, 'Magical studies stressing your brain? Relax at the Blue Recluse!',12,7,100,0,0,0, 'Erich Lohan'),
(3627,0,1, 'Best drinks in Stormwind!',12,7,100,0,0,0, 'Erich Lohan'),
(3627,0,2, 'Come for the beer, stay for the atmosphere!',12,7,100,0,0,0, 'Erich Lohan'),
(3627,0,3, 'The only place in Stormwind where magic and spirits mix, come to the Blue Recluse!',12,7,100,0,0,0, 'Erich Lohan'),
(3627,0,4, 'Free drinks at the Blue Recluse!',12,7,100,0,0,0, 'Erich Lohan'),
(3627,0,5, 'Feeling blue? Come on down to the Blue Recluse for a good time!',12,7,100,0,0,0, 'Erich Lohan'),
(3627,0,6, 'Head on over to the Blue Recluse. Where everybody knows your name!',12,7,100,0,0,0, 'Erich Lohan');
-- Remove old waypoint text
UPDATE `waypoint_data` SET `action`=0 WHERE `id`=904450;
DELETE FROM `waypoint_scripts` WHERE `id` BETWEEN 432 AND 446;
DELETE FROM `db_script_string` WHERE `entry` BETWEEN 2000005185 AND 2000005199;
UPDATE `smart_scripts` SET `event_param3`=2*60*60*1000, `event_param4`=2*60*60*1000 WHERE `entryorguid`=18481 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `event_flags`=`event_flags`|1 WHERE `entryorguid` IN (-85175,-85176) AND `source_type`=0 AND `id`=5 AND `link`=6;
UPDATE `smart_scripts` SET `event_flags`=`event_flags`|1 WHERE `entryorguid`=30146 AND `source_type`=0 AND `id`=0;
UPDATE `smart_scripts` SET `event_flags`=`event_flags`|0x20 WHERE `entryorguid` IN (-85175,-85176) AND `source_type`=0 AND `id`=2 AND `link`=3;
-- Fix error in Scourge Deathspeaker SAI
UPDATE `smart_scripts` SET `link`=0 WHERE `entryorguid`=27615 AND `id`=14;
-- Fix up Keeper Remulos SAI
UPDATE `smart_scripts` SET `id`=3 WHERE `entryorguid`=11832 AND `id`=4;
-- Spiritcaller Dohgar
UPDATE `creature_template` SET `gossip_menu_id`=8513 WHERE `entry`=22312;
DELETE FROM `gossip_menu` WHERE `entry`=8513 AND `text_id`=10647;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (8513,10647);
# Update a typo in original data entry
UPDATE `npc_spellclick_spells` SET `quest_end`=11999 WHERE `npc_entry`=26477 AND `spell_id`=61832 AND `quest_start`=11999;
# Delete redundant data with invalid condition type
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18;

# Static Data
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,
`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
(18,24752,44363,0,8,0,11460,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,24752,44363,0,9,0,11460,0,0,0,'Required quest active for spellclick'),
(18,25596,45875,0,8,0,11690,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,25596,45875,0,9,0,11690,0,0,0,'Required quest active for spellclick'),
(18,25841,46166,0,8,0,11795,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,25841,46166,0,9,0,11795,0,0,0,'Required quest active for spellclick'),
(18,26200,39996,0,8,0,11960,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26200,39996,0,9,0,11960,0,0,0,'Required quest active for spellclick'),
(18,26200,61286,0,8,0,11960,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26200,61286,0,9,0,11960,0,0,0,'Required quest active for spellclick'),
(18,26421,47575,0,8,0,12092,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26421,47575,0,8,0,12096,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26421,47575,0,9,0,12092,0,0,0,'Required quest active for spellclick'),
(18,26421,47575,0,9,0,12096,0,0,0,'Required quest active for spellclick'),
(18,26477,47096,0,8,0,11999,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,47096,0,8,0,12000,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,47096,0,9,0,11999,0,0,0,'Required quest active for spellclick'),
(18,26477,47096,0,9,0,12000,0,0,0,'Required quest active for spellclick'),
(18,26477,61286,0,8,0,11999,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,61286,0,8,0,12000,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,61286,0,9,0,11999,0,0,0,'Required quest active for spellclick'),
(18,26477,61286,0,9,0,12000,0,0,0,'Required quest active for spellclick'),
(18,26477,61832,0,8,0,11999,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,61832,0,8,0,12000,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,61832,0,9,0,11999,0,0,0,'Required quest active for spellclick'),
(18,26477,61832,0,9,0,12000,0,0,0,'Required quest active for spellclick'),
(18,27061,47920,0,8,0,12050,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,27061,47920,0,9,0,12050,0,0,0,'Required quest active for spellclick'),
(18,27354,60944,18,8,0,12244,0,0,0,'Required quest rewarded for spellclick'),
(18,27354,60944,18,9,0,12244,0,0,0,'Required quest active for spellclick'),
(18,28161,39996,0,8,0,12532,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,39996,0,8,0,12702,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,39996,0,9,0,12532,0,0,0,'Required quest active for spellclick'),
(18,28161,39996,0,9,0,12702,0,0,0,'Required quest active for spellclick'),
(18,28161,51037,0,8,0,12532,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,51037,0,8,0,12702,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,51037,0,9,0,12532,0,0,0,'Required quest active for spellclick'),
(18,28161,51037,0,9,0,12702,0,0,0,'Required quest active for spellclick'),
(18,28161,51961,0,8,0,12532,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,51961,0,8,0,12702,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,51961,0,9,0,12532,0,0,0,'Required quest active for spellclick'),
(18,28161,51961,0,9,0,12702,0,0,0,'Required quest active for spellclick'),
(18,28162,39996,0,8,0,12519,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28162,39996,0,9,0,12519,0,0,0,'Required quest active for spellclick'),
(18,28162,50737,0,8,0,12519,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28162,50737,0,9,0,12519,0,0,0,'Required quest active for spellclick'),
(18,28162,51026,0,8,0,12519,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28162,51026,0,9,0,12519,0,0,0,'Required quest active for spellclick'),
(18,28162,61286,0,8,0,12519,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28162,61286,0,9,0,12519,0,0,0,'Required quest active for spellclick'),
(18,28202,50926,0,8,0,12527,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28202,50926,0,9,0,12527,0,0,0,'Required quest active for spellclick'),
(18,28202,50927,0,8,0,12527,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28202,50927,0,9,0,12527,0,0,0,'Required quest active for spellclick'),
(18,28203,50918,0,8,0,12527,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28203,50918,0,9,0,12527,0,0,0,'Required quest active for spellclick'),
(18,28203,50919,0,8,0,12527,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28203,50919,0,9,0,12527,0,0,0,'Required quest active for spellclick'),
(18,28222,52082,0,8,0,12546,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28222,52082,0,9,0,12546,0,0,0,'Required quest active for spellclick'),
(18,28379,51658,0,8,0,12607,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28379,51658,0,9,0,12607,0,0,0,'Required quest active for spellclick'),
(18,28389,51592,0,8,0,12605,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28389,51592,0,9,0,12605,0,0,0,'Required quest active for spellclick'),
(18,28389,51593,0,8,0,12605,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28389,51593,0,9,0,12605,0,0,0,'Required quest active for spellclick'),
(18,28782,52280,0,8,0,12687,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28782,52280,0,9,0,12687,0,0,0,'Required quest active for spellclick'),
(18,29488,54568,15,8,0,12670,0,0,0,'Required quest rewarded for spellclick'),
(18,29488,54568,15,9,0,12670,0,0,0,'Required quest active for spellclick'),
(18,29563,56795,0,8,0,1,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,29598,54768,0,8,0,12856,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,29708,55028,0,8,0,12856,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,29708,55028,0,9,0,12856,0,0,0,'Required quest active for spellclick'),
(18,29856,55363,0,8,0,12629,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,29856,55363,0,8,0,12643,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,29856,55363,0,9,0,12629,0,0,0,'Required quest active for spellclick'),
(18,29856,55363,0,9,0,12643,0,0,0,'Required quest active for spellclick'),
(18,29857,55457,0,8,0,12910,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,29857,55457,0,9,0,12910,0,0,0,'Required quest active for spellclick'),
(18,30066,43977,0,8,0,12953,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,30337,43671,0,8,0,13069,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,30337,43671,0,9,0,13069,0,0,0,'Required quest active for spellclick'),
(18,30500,56679,0,8,0,13045,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,30500,56679,0,9,0,13045,0,0,0,'Required quest active for spellclick'),
(18,30560,57347,0,1,0,57348,0,0,1,'Forbidden aura for spellclick'),
(18,31736,59592,0,8,0,13280,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,31736,59592,0,9,0,13280,0,0,0,'Required quest active for spellclick'),
(18,31785,59656,0,8,0,13283,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,31785,59656,0,9,0,13283,0,0,0,'Required quest active for spellclick'),
(18,31883,60123,0,1,0,48085,0,0,1,'Forbidden aura for spellclick'),
(18,31893,60123,0,1,0,48084,0,0,1,'Forbidden aura for spellclick'),
(18,31894,60123,0,1,0,28276,0,0,1,'Forbidden aura for spellclick'),
(18,31895,60123,0,1,0,27874,0,0,1,'Forbidden aura for spellclick'),
(18,31896,60123,0,1,0,27873,0,0,1,'Forbidden aura for spellclick'),
(18,31897,60123,0,1,0,7001,0,0,1,'Forbidden aura for spellclick'),
(18,32788,57539,17,8,0,13075,0,0,0,'Required quest rewarded for spellclick'),
(18,32788,57539,17,9,0,13075,0,0,0,'Required quest active for spellclick'),
(18,32790,57654,16,8,0,13073,0,0,0,'Required quest rewarded for spellclick'),
(18,32790,57654,16,9,0,13073,0,0,0,'Required quest active for spellclick'),
(18,33498,63126,0,8,0,13654,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,33498,63126,0,9,0,13654,0,0,0,'Required quest active for spellclick'),
(18,33790,62781,0,8,0,13690,0,0,0,'Required quest rewarded for spellclick'),
(18,33790,62781,0,8,0,13705,0,0,0,'Required quest rewarded for spellclick'),
(18,33791,62786,0,8,0,13696,0,0,0,'Required quest rewarded for spellclick'),
(18,33791,62786,0,8,0,13711,0,0,0,'Required quest rewarded for spellclick'),
(18,33792,62785,0,8,0,13694,0,0,0,'Required quest rewarded for spellclick'),
(18,33792,62785,0,8,0,13709,0,0,0,'Required quest rewarded for spellclick'),
(18,33793,62780,0,8,0,13688,0,0,0,'Required quest rewarded for spellclick'),
(18,33793,62780,0,8,0,13704,0,0,0,'Required quest rewarded for spellclick'),
(18,33794,62782,0,8,0,13689,0,0,0,'Required quest rewarded for spellclick'),
(18,33794,62782,0,8,0,13706,0,0,0,'Required quest rewarded for spellclick'),
(18,33795,62779,0,8,0,13685,0,0,0,'Required quest rewarded for spellclick'),
(18,33795,62779,0,8,0,13703,0,0,0,'Required quest rewarded for spellclick'),
(18,33796,62784,0,8,0,13693,0,0,0,'Required quest rewarded for spellclick'),
(18,33796,62784,0,8,0,13708,0,0,0,'Required quest rewarded for spellclick'),
(18,33798,62787,0,8,0,13695,0,0,0,'Required quest rewarded for spellclick'),
(18,33798,62787,0,8,0,13710,0,0,0,'Required quest rewarded for spellclick'),
(18,33799,62783,0,8,0,13691,0,0,0,'Required quest rewarded for spellclick'),
(18,33799,62783,0,8,0,13707,0,0,0,'Required quest rewarded for spellclick'),
(18,33800,62774,0,8,0,13593,0,0,0,'Required quest rewarded for spellclick'),
(18,33800,62774,0,8,0,13684,0,0,0,'Required quest rewarded for spellclick'),
(18,33842,63791,0,8,0,13668,0,0,0,'Required quest rewarded for spellclick'),
(18,33842,63791,0,8,0,13687,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,33843,63792,0,8,0,13667,0,0,0,'Required quest rewarded for spellclick'),
(18,33843,63792,0,8,0,13686,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,33870,63663,0,8,0,1,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13847,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13851,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13852,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13854,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13855,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13856,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13857,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13858,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13859,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13860,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13861,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13862,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13863,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,8,0,13864,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,34125,63215,0,9,0,13847,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13851,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13852,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13854,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13855,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13856,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13857,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13858,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13859,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13860,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13861,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13862,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13863,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,0,9,0,13864,0,0,0,'Required quest active for spellclick'),
(18,38248,71462,0,1,0,71443,0,0,1,'Forbidden aura for spellclick'),
(18,40176,74904,0,8,0,25444,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,40176,74904,0,9,0,25444,0,0,0,'Required quest active for spellclick'),
(18,40176,74905,0,8,0,25444,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,40176,74905,0,9,0,25444,0,0,0,'Required quest active for spellclick');

# Below is a procedure to dynamically convert custom content to conditions table.
# However this procedure only works for MySQL server versions >= 5.6 due to 
# a bug / missing feature in older MySQL versions.
/*

DROP PROCEDURE IF EXISTS ConvertSpellClickConditions;
DELIMITER //
CREATE PROCEDURE ConvertSpellClickConditions()
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE recordCount INT DEFAULT 0;
    DECLARE counterPlusOne INT DEFAULT 0;
    DECLARE npcEntry INT DEFAULT 0;
    DECLARE spellId INT DEFAULT 0;
    DECLARE aura INT DEFAULT 0;
    DECLARE quest INT DEFAULT 0;
    DECLARE quest2 INT DEFAULT 0;
    DECLARE questStartCanActive INT DEFAULT 0;
    DECLARE maxElseGroupId INT DEFAULT 14; # Change this for custom content
    SELECT COUNT(*) INTO recordCount FROM `npc_spellclick_spells` WHERE `aura_required` !=0;
    WHILE counter < recordCount DO
        SELECT `npc_entry`, `spell_id`, `aura_required`
        INTO npcEntry, spellId, aura
        FROM `npc_spellclick_spells` WHERE `aura_required` !=0
        LIMIT counter,1;
        INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,
        `ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`NegativeCondition`,`Comment`)
        VALUES (18,npcEntry,spellId,1,0,aura,0,0,'Required aura for spellclick');
        SET counter = counter+1;
    END WHILE;
    
    SET counter = 0;
    SET recordCount = 0;
    SELECT COUNT(*) INTO recordCount FROM `npc_spellclick_spells` WHERE `aura_forbidden` !=0;
    WHILE counter < recordCount DO
        SELECT `npc_entry`, `spell_id`, `aura_forbidden`
        INTO npcEntry, spellId, aura
        FROM `npc_spellclick_spells` WHERE `aura_forbidden` !=0
        LIMIT counter,1;
        INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,
        `ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`NegativeCondition`,`Comment`)
        VALUES (18,npcEntry,spellId,1,0,aura,0,1,'Forbidden aura for spellclick');
        SET counter = counter+1;
    END WHILE;
    
    SET counter = 0;
    SET recordCount = 0;
    SELECT COUNT(*) INTO recordCount FROM `npc_spellclick_spells` WHERE `quest_start` !=0;
    WHILE counter < recordCount DO
        SELECT `npc_entry`, `spell_id`, `quest_start`, `quest_start_active`, `quest_end`
        INTO npcEntry, spellId, quest, questStartCanActive, quest2
        FROM `npc_spellclick_spells` WHERE `quest_start` !=0
        LIMIT counter,1;
        IF questStartCanActive = 1 AND quest2 = 0 THEN 
            INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`, `ConditionTypeOrReference`,
        `ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`NegativeCondition`,`Comment`)
        VALUES (18,npcEntry,spellId,maxElseGroupId+1,9,0,quest,0,0,'Required quest active for spellclick');
        INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`, `ConditionTypeOrReference`,
        `ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`NegativeCondition`,`Comment`)
        VALUES (18,npcEntry,spellId,maxElseGroupId+1,8,0,quest,0,0,'Required quest rewarded for spellclick');
        SET maxElseGroupId = maxElseGroupId+1;
        # ELSE IF quest2 != 0 is handled in next loop (forbidden rewarded quest)
        ELSEIF questStartCanActive = 1 && quest2 = quest THEN
        INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,
        `ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`NegativeCondition`,`Comment`)
        VALUES (18,npcEntry,spellId,9,0,quest,0,0,'Required quest active for spellclick');
        # ^Adds the required active quest condition. Prohibit quest reward is done in next loop
        ELSEIF questStartCanActive = 0 THEN
        INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,
        `ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`NegativeCondition`,`Comment`)
        VALUES (18,npcEntry,spellId,8,0,quest,0,0,'Required quest rewarded for spellclick');
        END IF;
        
        SET counter = counter+1;
    END WHILE;
    
    SET counter = 0;
    SET recordCount = 0;
    SELECT COUNT(*) INTO recordCount FROM `npc_spellclick_spells` WHERE `quest_end` !=0;
    WHILE counter < recordCount DO
        SELECT `npc_entry`, `spell_id`, `quest_end`
        INTO npcEntry, spellId, quest
        FROM `npc_spellclick_spells` WHERE `quest_end` !=0
        LIMIT counter,1;
        INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,
        `ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`NegativeCondition`,`Comment`)
        VALUES (18,npcEntry,spellId,8,0,quest,0,1,'Forbidden rewarded quest for spellclick');
        SET counter = counter+1;
    END WHILE;

END//

DELIMITER ;

CALL ConvertSpellClickConditions();
DROP PROCEDURE ConvertSpellClickConditions;

*/

ALTER TABLE `npc_spellclick_spells`
    DROP COLUMN `quest_start`,
    DROP COLUMN `quest_start_active`,
    DROP COLUMN `quest_end`,
    DROP COLUMN `aura_required`,
    DROP COLUMN `aura_forbidden`
;
-- Loot for Hellfire 5-man dungeons Trash (heroic and normal) --
-- -------------------------------------------------------------

-- Hellfire Citadel: Ramparts
SET @Lootid := 17259;
-- set all lootids to same entry (normal and heroic)
UPDATE `creature_template` SET `lootid`=@Lootid WHERE `entry` IN 
(17259,17264,17269,17270,17271,17280,17281,17309,17455,17478,17517,18048,18049,18050,18051,18052,18053,18054,18055,18057,18058,18059);
-- populate trashloot table
DELETE FROM `creature_loot_template` WHERE `entry` IN 
(17259,17264,17269,17270,17271,17280,17281,17309,17455,17478,17517,18048,18049,18050,18051,18052,18053,18054,18055,18057,18058,18059);
DELETE FROM `creature_loot_template` WHERE `entry`=@Lootid;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- rough indication based on wowhead data of ALL mobs in the dungeon
(@Lootid,14047,40,1,0,1,4), -- Runecloth
(@Lootid,21877,20,1,0,1,4), -- Netherweave Cloth
(@Lootid, 8952,10,1,0,1,4), -- Roasted Quail
(@Lootid, 8766, 5,1,0,1,3), -- Morning Glory Dew
-- references for worldgreys
(@Lootid,1,5,1,0,-24000,1), -- Outland Grey Item Reference1
(@Lootid,2,5,1,0,-24002,1), -- Outland Grey Item Reference2
(@Lootid,3,5,1,0,-24003,1), -- Outland Grey Item Reference3
(@Lootid,4,5,1,0,-24011,1), -- Outland Grey Item Reference4
(@Lootid,5,5,1,0,-24022,1), -- Outland Grey Item Reference5
(@Lootid,6,5,1,0,-24023,1), -- Outland Grey Item Reference6
-- specifics
(@Lootid,5759,0.25,1,0,1,1), -- Thorium Lockbox
(@Lootid,5760,0.30,1,0,1,1), -- Eternium Lockbox
-- Scrolls
(@Lootid,7,5,1,0,-24724,1); -- Scroll of <stat> IV

-- -----------------------------------------
-- -- Hellfire Citadel: The Blood Furnace --
-- -----------------------------------------
SET @Lootid := 17370;
UPDATE `creature_template` SET `lootid`=@Lootid WHERE `entry` IN (17256,17370,17371,17395,17397,17398,17399,17414,17429,17477,17491,17624,17626,17653,18894,19016,18608,18619,18617,18615,18612,18614,18618,18603,18606,18610,18611,18609,18620,21645,21646);

DELETE FROM `creature_loot_template` WHERE `entry` IN (17370,17371,17395,17397,17398,17414,17429,17491,17624,17626,18894);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Lootid,23894,-100,1,0,1,1), -- Fel Orc Blood (quest)
-- most common items
(@Lootid,14047,40,1,0,1,4), -- Runecloth
(@Lootid,21877,20,1,0,1,4), -- Netherweave Cloth
(@Lootid, 8952,10,1,0,1,4), -- Roasted Quail
(@Lootid, 8766, 5,1,0,1,3), -- Morning Glory Dew
-- references for worldgreys
(@Lootid,1,5,1,0,-24000,1), -- Outland Grey Item Reference1
(@Lootid,2,5,1,0,-24002,1), -- Outland Grey Item Reference2
(@Lootid,3,5,1,0,-24003,1), -- Outland Grey Item Reference3
(@Lootid,4,5,1,0,-24011,1), -- Outland Grey Item Reference4
(@Lootid,5,5,1,0,-24022,1), -- Outland Grey Item Reference5
(@Lootid,6,5,1,0,-24023,1), -- Outland Grey Item Reference6
-- specifics
(@Lootid,5759,0.25,1,0,1,1), -- Thorium Lockbox
(@Lootid,5760,0.30,1,0,1,1), -- Eternium Lockbox
-- Scrolls
(@Lootid,7,5,1,0,-24724,1); -- Scroll of <stat> IV

-- -------------------------------------------
-- -- Hellfire Citadel: The Shattered Halls --
-- -------------------------------------------
SET @Lootid := 16507;
UPDATE `creature_template` SET `lootid`=@Lootid WHERE `entry` IN (17669,16507,17622,17462,17427,17420,17083,16699,16704,17695,17670,16700,16593,16594,17464,17694,17465,17461,17671,20593,20582,20576,20590,20589,20594,20567,20587,20579,20581,20595,20586,20583,20578,20574,20588,20584,20577,20580);

DELETE FROM `creature_loot_template` WHERE `entry` IN (16507,16593,16594,16699,16700,16704,17083,17420,17427,17461,17462,17464,17465,17669,17670,17671,17694,17695,17669,16594,17694,17427,17695,17461,16593,17465,17671,17464,17420,17670,16700,16699,16507,16704,17462);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Lootid,21877,40,1,0,2,3), -- Netherweave Cloth
(@Lootid,27854,20,1,0,1,1), -- Smoked Talbuk Venison
(@Lootid,27860,20,1,0,1,1), -- Purified Draenic Water
(@Lootid,31952,2.5,1,0,1,1), -- Khorium Lockbox
-- references
(@Lootid,1,5,1,1,-24002,1), -- Outland Grey Item Reference1
(@Lootid,2,2,1,1,-24009,1), -- Outland Green Reference1
(@Lootid,3,5,1,1,-24011,1), -- Outland Grey Item Reference2
(@Lootid,4,1,1,1,-24012,1), -- Outland Blue Reference1
(@Lootid,5,5,1,1,-24093,1), -- Outland Plans & patterns
-- Scrolls
(@Lootid,6,5,1,0,-24724,1); -- Scroll of <stat> IV
CREATE TABLE `temp_convert_spells`
(
	`id` INT(11),
	`effMask` INT(11),
	`onlyPlayers` TINYINT(3),
	PRIMARY KEY (`id`)
);

INSERT INTO `temp_convert_spells` VALUES
(46174,1,0),
(78002,1,1),
(78001,1,1),
(78000,1,1),
(77999,1,1),
(77984,1,1),
(76379,1,0),
(76098,1,0),
(76092,1,0),
(75920,1,1),
(75767,1,1),
(75765,1,1),
(75396,1,0),
(75389,1,1),
(75364,1,0),
(75319,1,0),
(75313,1,0),
(75244,1,0),
(75197,1,0),
(75195,1,0),
(75181,1,0),
(75107,1,0),
(75100,1,0),
(75078,1,0),
(75053,1,0),
(75018,1,0),
(74977,1,0),
(74903,1,0),
(74801,1,1),
(74758,1,0),
(74735,1,0),
(74549,1,0),
(74548,1,0),
(74486,1,0),
(74455,1,0),
(74444,1,0),
(74313,1,0),
(74285,1,0),
(74219,1,0),
(74182,1,0),
(74148,1,0),
(74098,1,0),
(74090,1,1),
(74086,1,1),
(74074,1,0),
(74033,1,0),
(73980,1,0),
(73955,1,0),
(73953,1,0),
(73886,1,0),
(73846,1,1),
(73845,1,1),
(73844,1,1),
(73843,1,1),
(73837,1,0),
(73836,1,0),
(73835,1,0),
(73787,1,0),
(73786,1,0),
(73785,1,0),
(73725,1,0),
(73659,1,0),
(73650,1,1),
(73582,1,0),
(73556,1,0),
(73555,1,0),
(73548,1,0),
(73331,1,1),
(73288,1,0),
(73165,1,0),
(73164,1,1),
(73159,1,1),
(73129,1,0),
(73128,1,0),
(73082,1,0),
(73071,1,0),
(73035,1,0),
(72959,1,1),
(72934,1,1),
(72928,1,1),
(72900,1,1),
(72830,1,1),
(72748,1,0),
(72747,1,0),
(72746,1,0),
(72745,1,0),
(72728,1,0),
(72706,1,1),
(72618,1,0),
(72595,1,1),
(72527,1,0),
(72479,1,1),
(72431,1,1),
(72429,1,1),
(72401,1,0),
(72347,1,0),
(72346,1,1),
(72280,1,0),
(72279,1,0),
(72278,1,0),
(72262,1,0),
(72260,1,0),
(72257,1,1),
(72209,1,0),
(72202,1,0),
(72099,1,0),
(72033,1,0),
(72032,1,0),
(72031,1,0),
(71952,1,0),
(71949,1,1),
(71948,1,0),
(71946,1,0),
(71848,1,0),
(71811,1,0),
(71809,1,0),
(71753,1,1),
(71693,1,0),
(71620,1,0),
(71617,1,0),
(71599,1,0),
(71538,1,1),
(71536,1,1),
(71520,1,0),
(71440,1,0),
(71415,1,0),
(71412,1,0),
(71365,1,0),
(71352,1,1),
(71322,1,0),
(71310,1,0),
(71308,1,0),
(71306,1,0),
(71281,1,0),
(71272,1,0),
(71189,1,0),
(71082,1,0),
(71081,1,0),
(71080,1,0),
(71079,1,0),
(71078,1,0),
(71075,1,0),
(71070,1,0),
(71032,1,0),
(71024,1,0),
(70995,1,0),
(70983,1,0),
(70966,1,1),
(70939,1,0),
(70936,1,0),
(70933,1,0),
(70931,1,0),
(70921,1,0),
(70881,1,0),
(70861,1,0),
(70860,1,0),
(70859,1,0),
(70858,1,0),
(70857,1,0),
(70856,1,0),
(70792,1,0),
(70790,1,0),
(70784,1,0),
(70781,1,0),
(70743,1,0),
(70713,1,1),
(70643,1,0),
(70639,1,0),
(70638,1,1),
(70636,1,1),
(70635,1,0),
(70623,1,1),
(70614,1,0),
(70611,1,0),
(70602,1,0),
(70595,1,0),
(70588,1,0),
(70586,1,0),
(70572,1,0),
(70569,1,0),
(70527,1,1),
(70525,1,0),
(70488,1,0),
(70485,1,0),
(70471,1,0),
(70466,1,0),
(70464,1,0),
(70444,1,0),
(70443,1,1),
(70403,1,0),
(70397,1,0),
(70383,1,0),
(70374,1,0),
(70366,1,0),
(70360,1,0),
(70338,1,0),
(70331,1,1),
(70299,1,0),
(70293,1,0),
(70290,1,0),
(70267,1,0),
(70266,1,0),
(70265,1,0),
(70246,1,0),
(70225,1,0),
(70224,1,0),
(70143,1,0),
(70130,1,0),
(70104,1,0),
(70100,1,0),
(70098,1,0),
(70079,1,0),
(70078,1,0),
(70053,1,0),
(70041,1,0),
(70040,1,0),
(70021,1,0),
(69960,1,0),
(69959,1,0),
(69922,1,0),
(69907,1,0),
(69886,1,0),
(69857,1,0),
(69843,1,0),
(69801,1,0),
(69798,1,0),
(69796,1,0),
(69784,1,0),
(69782,1,0),
(69768,1,0),
(69753,1,0),
(69705,1,0),
(69682,1,0),
(69614,1,0),
(69610,1,0),
(69601,1,0),
(69600,1,0),
(69593,1,0),
(69553,1,0),
(69538,1,0),
(69508,1,0),
(69431,1,0),
(69372,1,0),
(69347,1,0),
(69298,1,1),
(69171,1,0),
(69125,1,0),
(69101,1,0),
(69098,1,0),
(69097,1,0),
(69048,1,1),
(69039,1,0),
(69016,1,0),
(68957,1,0),
(68922,1,0),
(68919,1,0),
(68901,1,0),
(68881,1,0),
(68880,1,0),
(68861,1,0),
(68847,1,0),
(68842,1,0),
(68798,1,0),
(68663,1,0),
(68644,1,0),
(68617,1,0),
(68616,1,0),
(68614,1,0),
(68515,1,1),
(68471,1,1),
(68470,1,1),
(68401,1,0),
(68400,1,0),
(68360,1,0),
(68359,1,0),
(68358,1,0),
(68206,1,1),
(68198,1,1),
(68197,1,1),
(68193,1,1),
(68186,1,1),
(67888,1,0),
(67864,1,0),
(67857,1,0),
(67856,1,0),
(67855,1,0),
(67804,1,0),
(67757,1,0),
(67756,1,0),
(67755,1,0),
(67748,1,0),
(67732,1,0),
(67715,1,0),
(67705,1,0),
(67551,1,1),
(67547,1,0),
(67482,1,0),
(67400,1,0),
(67397,1,0),
(67369,1,0),
(67335,1,0),
(67328,1,0),
(67163,1,0),
(67162,1,0),
(67161,1,0),
(67160,1,0),
(67159,1,0),
(67158,1,0),
(66986,1,1),
(66810,1,1),
(66798,1,0),
(66785,1,0),
(66774,1,0),
(66718,1,1),
(66665,1,0),
(66637,1,0),
(66636,1,0),
(66630,1,0),
(66551,1,0),
(66550,1,0),
(66513,1,0),
(66512,1,0),
(66508,1,0),
(66401,1,0),
(66391,1,0),
(66390,1,0),
(66387,1,0),
(66386,1,0),
(66385,1,0),
(66384,1,0),
(66383,1,0),
(66382,1,0),
(66379,1,0),
(66357,1,0),
(66356,1,0),
(66355,1,0),
(66354,1,0),
(66353,1,0),
(66352,1,0),
(66350,1,0),
(66349,1,0),
(66348,1,0),
(66345,1,0),
(66339,1,0),
(66332,1,0),
(66314,1,1),
(66312,1,1),
(66287,1,0),
(66256,1,0),
(66193,1,0),
(66181,1,0),
(66153,1,0),
(66152,1,0),
(66141,1,0),
(66140,1,0),
(66135,1,1),
(66133,1,0),
(66132,1,0),
(65872,1,0),
(65861,1,0),
(65719,1,0),
(65718,1,0),
(65699,1,0),
(65685,1,0),
(65652,1,0),
(65614,1,0),
(65613,1,0),
(65611,1,0),
(65594,1,1),
(65589,1,0),
(65588,1,0),
(65587,1,0),
(65509,1,0),
(65357,1,0),
(65354,1,0),
(65350,1,0),
(65349,1,0),
(65346,1,1),
(65312,1,1),
(65311,1,1),
(65265,1,0),
(65258,1,0),
(65238,1,0),
(65224,1,0),
(65206,1,0),
(65200,1,0),
(65192,1,0),
(65184,1,1),
(65140,1,0),
(65109,1,0),
(65061,1,0),
(65042,1,0),
(65040,1,1),
(65034,1,0),
(65016,1,0),
(65015,1,0),
(64996,1,0),
(64995,1,0),
(64898,1,0),
(64887,1,0),
(64886,1,0),
(64880,1,0),
(64828,1,0),
(64799,1,0),
(64767,1,0),
(64623,1,0),
(64620,1,0),
(64619,1,0),
(64618,1,0),
(64597,1,0),
(64543,1,0),
(64539,1,0),
(64503,1,0),
(64499,1,0),
(64480,1,0),
(64475,1,0),
(64474,1,0),
(64466,1,0),
(64465,1,0),
(64463,1,0),
(64449,1,0),
(64444,1,0),
(64425,1,0),
(64414,1,0),
(64402,1,0),
(64397,1,0),
(64320,1,0),
(64229,1,0),
(64225,1,0),
(64224,1,0),
(64201,1,0),
(64185,1,0),
(64184,1,0),
(64183,1,0),
(64173,1,0),
(64172,1,0),
(64098,1,0),
(64069,1,0),
(64063,1,0),
(64061,1,0),
(64059,1,1),
(64032,1,0),
(64031,1,0),
(64030,1,0),
(64029,1,0),
(64028,1,0),
(64027,1,0),
(64026,1,0),
(64025,1,0),
(64024,1,0),
(64014,1,0),
(63984,1,0),
(63979,1,0),
(63947,1,0),
(63886,1,0),
(63882,1,0),
(63820,1,0),
(63813,1,0),
(63812,1,0),
(63764,1,0),
(63763,1,0),
(63762,1,0),
(63761,1,0),
(63749,1,0),
(63747,1,1),
(63745,1,1),
(63744,1,0),
(63702,1,0),
(63676,1,0),
(63659,1,0),
(63658,1,0),
(63657,1,0),
(63629,1,0),
(63628,1,0),
(63576,1,0),
(63524,1,0),
(63499,1,0),
(63446,1,0),
(63445,1,0),
(63444,1,0),
(63443,1,0),
(63442,1,0),
(63441,1,0),
(63440,1,0),
(63439,1,0),
(63438,1,0),
(63352,1,0),
(63348,1,0),
(63322,1,1),
(63274,1,0),
(63255,1,0),
(63238,1,0),
(63109,1,0),
(63037,1,0),
(63013,1,0),
(63001,1,0),
(62990,1,0),
(62978,1,0),
(62976,1,0),
(62943,1,0),
(62911,1,0),
(62909,1,0),
(62906,1,0),
(62888,1,0),
(62883,1,0),
(62882,1,0),
(62834,1,0),
(62809,1,0),
(62797,1,1),
(62778,1,0),
(62731,1,0),
(62727,1,0),
(62711,1,0),
(62708,1,0),
(62706,1,0),
(62701,1,0),
(62669,1,0),
(62646,1,0),
(62603,1,0),
(62584,1,0),
(62577,1,0),
(62567,1,0),
(62533,1,0),
(62525,1,0),
(62524,1,0),
(62521,1,0),
(62509,1,0),
(62505,1,0),
(62496,1,0),
(62488,1,0),
(62485,1,0),
(62484,1,0),
(62483,1,0),
(62480,1,0),
(62464,1,0),
(62378,1,0),
(124,1,0),
(2222,1,0),
(3730,1,0),
(4020,1,0),
(4338,1,0),
(5249,1,0),
(5251,1,0),
(5432,1,0),
(5555,1,0),
(6636,1,0),
(6672,1,0),
(6755,1,0),
(6955,1,0),
(6967,1,0),
(7022,1,0),
(7035,1,0),
(7036,1,0),
(7277,1,0),
(7393,1,0),
(7670,1,0),
(7769,1,0),
(8283,1,0),
(8593,1,0),
(8596,1,0),
(9002,1,0),
(9003,1,0),
(9004,1,0),
(9012,1,0),
(9082,1,0),
(9095,1,0),
(9455,1,0),
(9457,1,0),
(9712,1,0),
(9976,1,0),
(10113,1,0),
(10137,1,0),
(10252,1,0),
(10258,1,0),
(10259,1,0),
(10260,1,0),
(10345,1,0),
(10604,1,0),
(10727,1,0),
(10747,1,0),
(11195,1,0),
(11402,1,0),
(11440,1,0),
(11513,1,0),
(11637,1,0),
(11757,1,0),
(11893,1,0),
(12134,1,0),
(12158,1,0),
(12159,1,0),
(12347,1,0),
(12512,1,0),
(12564,1,0),
(12613,1,0),
(12623,1,0),
(12699,1,0),
(12709,1,0),
(12774,1,0),
(12938,1,0),
(13461,1,0),
(13727,1,0),
(13821,1,0),
(13951,1,0),
(13982,1,0),
(14250,1,0),
(14292,1,0),
(14806,1,0),
(14813,1,0),
(14928,1,0),
(15252,1,0),
(15281,1,0),
(15591,1,0),
(15658,1,0),
(15746,1,0),
(15958,1,0),
(16007,1,0),
(16032,1,0),
(16037,1,0),
(16053,1,0),
(16068,1,0),
(16069,1,0),
(16070,1,0),
(16074,1,0),
(16378,1,0),
(16381,1,0),
(16404,1,0),
(16556,1,0),
(16558,1,0),
(16637,1,0),
(16786,1,0),
(16807,1,0),
(17048,1,0),
(17166,1,0),
(17190,1,0),
(17202,1,0),
(17272,1,0),
(17278,1,0),
(17279,1,0),
(17471,1,0),
(17536,1,0),
(17616,1,0),
(17618,1,0),
(17652,1,0),
(17671,1,0),
(17675,1,0),
(17676,1,0),
(17677,1,0),
(17678,1,0),
(17698,1,0),
(17748,1,0),
(18110,1,0),
(18655,1,0),
(18666,1,0),
(18811,1,0),
(18969,1,0),
(19032,1,0),
(19096,1,0),
(19571,1,0),
(19593,1,0),
(19721,1,0),
(19749,1,0),
(19770,1,0),
(19773,1,0),
(19952,1,0),
(20358,1,0),
(20465,1,0),
(20619,1,0),
(21052,1,0),
(21075,1,0),
(21076,1,0),
(21391,1,0),
(21556,1,0),
(21566,1,0),
(21885,1,0),
(21950,1,0),
(22096,1,0),
(22203,1,0),
(22205,1,0),
(22393,1,0),
(22458,1,0),
(22860,1,0),
(22906,1,0),
(22966,1,0),
(23014,1,0),
(23016,1,0),
(23018,1,0),
(23019,1,0),
(23168,1,0),
(23328,1,0),
(23360,1,0),
(23389,1,0),
(23394,1,0),
(23415,1,0),
(23642,1,0),
(23951,1,0),
(23974,1,0),
(24062,1,0),
(24083,1,0),
(24172,1,0),
(24207,1,0),
(24217,1,0),
(24311,1,0),
(24322,1,0),
(24323,1,0),
(24391,1,0),
(24734,1,0),
(24744,1,0),
(24756,1,0),
(24758,1,0),
(24760,1,0),
(24763,1,0),
(24765,1,0),
(24768,1,0),
(24770,1,0),
(24772,1,0),
(24784,1,0),
(24786,1,0),
(24788,1,0),
(24789,1,0),
(24790,1,0),
(24804,1,0),
(24933,1,0),
(25030,1,0),
(25031,1,0),
(25032,1,0),
(25099,1,0),
(25145,1,0),
(25149,1,0),
(25150,1,0),
(25158,1,0),
(25201,1,0),
(25715,1,0),
(25727,1,0),
(25745,1,0),
(25822,1,0),
(25823,1,0),
(25896,1,0),
(26235,1,0),
(26344,1,0),
(26345,1,0),
(26346,1,0),
(26347,1,0),
(26348,1,0),
(26349,1,0),
(26351,1,0),
(26352,1,0),
(26353,1,0),
(26354,1,0),
(26355,1,0),
(26356,1,0),
(26462,1,0),
(26522,1,1),
(26608,1,0),
(26687,1,1),
(26879,1,0),
(27583,1,0),
(27651,1,0),
(27663,1,0),
(27745,1,0),
(27885,1,0),
(27886,1,0),
(27892,1,0),
(27893,1,0),
(27894,1,0),
(27928,1,0),
(27929,1,0),
(27935,1,0),
(27936,1,0),
(28018,1,0),
(28032,1,0),
(28056,1,0),
(28078,1,0),
(28087,1,0),
(28096,1,0),
(28111,1,0),
(28159,1,0),
(28278,1,0),
(28281,1,0),
(28309,1,0),
(28326,1,0),
(28338,1,0),
(28339,1,0),
(28365,1,0),
(28366,1,0),
(28367,1,0),
(28374,1,0),
(28392,1,0),
(28404,1,0),
(28441,1,0),
(28605,1,0),
(28697,1,0),
(28731,1,0),
(28732,1,0),
(28861,1,0),
(29070,1,0),
(29072,1,0),
(29120,1,0),
(29121,1,0),
(29122,1,0),
(29172,1,0),
(29173,1,0),
(29176,1,0),
(29328,1,1),
(29339,1,0),
(29340,1,0),
(29428,1,0),
(29437,1,0),
(29456,1,0),
(29457,1,0),
(29458,1,0),
(29459,1,0),
(29461,1,0),
(29531,1,0),
(29534,1,0),
(29612,1,0),
(29705,1,0),
(29726,1,0),
(29727,1,0),
(29769,1,0),
(29770,1,0),
(29846,1,1),
(29962,1,0),
(29966,1,0),
(29967,1,0),
(29969,1,0),
(29970,1,0),
(29972,1,0),
(29989,1,0),
(30012,1,0),
(30065,1,0),
(30107,1,0),
(30166,1,0),
(30207,1,0),
(30221,1,0),
(30232,1,0),
(30273,1,0),
(30410,1,0),
(30417,1,0),
(30418,1,0),
(30425,1,0),
(30427,1,0),
(30460,1,0),
(30462,1,0),
(30469,1,0),
(30477,1,0),
(30541,1,0),
(30544,1,0),
(30571,1,1),
(30572,1,0),
(30625,1,0),
(30631,1,1),
(30656,1,0),
(30662,1,0),
(30676,1,0),
(30690,1,0),
(30735,1,0),
(30738,1,0),
(30745,1,0),
(30751,1,0),
(30762,1,0),
(30763,1,0),
(30764,1,0),
(30765,1,0),
(30766,1,0),
(30834,1,0),
(30835,1,0),
(30875,1,0),
(30876,1,0),
(30951,1,0),
(30952,1,0),
(30964,1,0),
(30968,1,0),
(30970,1,0),
(30974,1,0),
(30985,1,0),
(30988,1,0),
(31115,1,0),
(31225,1,0),
(31315,1,0),
(31324,1,0),
(31326,1,0),
(31329,1,0),
(31336,1,0),
(31346,1,0),
(31411,1,0),
(31412,1,0),
(31413,1,0),
(31414,1,0),
(31474,1,0),
(31515,1,0),
(31532,1,0),
(31537,1,0),
(31550,1,0),
(31611,1,0),
(31628,1,0),
(31630,1,0),
(31631,1,0),
(31702,1,0),
(31727,1,0),
(31736,1,0),
(31749,1,0),
(31781,1,0),
(31793,1,0),
(31799,1,0),
(31806,1,0),
(31889,1,0),
(31902,1,0),
(31936,1,0),
(31979,1,0),
(31993,1,0),
(32040,1,0),
(32042,1,0),
(32045,1,0),
(32051,1,0),
(32052,1,0),
(32087,1,0),
(32111,1,0),
(32127,1,0),
(32146,1,0),
(32163,1,0),
(32164,1,0),
(32227,1,0),
(32228,1,0),
(32251,1,0),
(32260,1,0),
(32286,1,0),
(32301,1,0),
(32303,1,0),
(32312,1,0),
(32373,1,0),
(32396,1,0),
(32560,1,0),
(32573,1,0),
(32589,1,0),
(32622,1,0),
(32623,1,0),
(32638,1,0),
(32668,1,0),
(32708,1,1),
(32760,1,0),
(32838,1,0),
(32890,1,0),
(32928,1,0),
(32929,1,0),
(32930,1,0),
(32953,1,0),
(32958,1,0),
(32974,1,0),
(32976,1,0),
(32979,1,0),
(33067,1,0),
(33270,1,1),
(33329,1,0),
(33332,1,0),
(33336,1,0),
(33337,1,0),
(33423,1,0),
(33424,1,0),
(33425,1,0),
(33531,1,0),
(33532,1,0),
(33618,1,0),
(33644,1,0),
(33655,1,0),
(33669,1,0),
(33710,1,0),
(33716,1,1),
(33742,1,0),
(33744,1,0),
(33796,1,0),
(33805,1,0),
(33806,1,0),
(33809,1,0),
(33822,1,0),
(33831,1,0),
(33838,1,0),
(33861,1,0),
(33862,1,0),
(33918,1,0),
(33924,1,0),
(33937,1,0),
(33981,1,0),
(34011,1,0),
(34013,1,0),
(34016,1,0),
(34019,1,0),
(34023,1,0),
(34024,1,0),
(34062,1,0),
(34063,1,0),
(34076,1,0),
(34119,1,0),
(34154,1,0),
(34156,1,0),
(34209,1,0),
(34211,1,0),
(34212,1,0),
(34221,1,0),
(34239,1,0),
(34254,1,0),
(34330,1,0),
(34332,1,0),
(34367,1,0),
(34378,1,0),
(34393,1,0),
(34397,1,0),
(34430,1,0),
(34516,1,0),
(34526,1,0),
(34536,1,0),
(34581,1,0),
(34583,1,0),
(34613,1,0),
(34627,1,0),
(34646,1,0),
(34662,1,0),
(34742,1,0),
(34806,1,0),
(34874,1,0),
(34893,1,0),
(34946,1,0),
(35016,1,0),
(35040,1,0),
(35063,1,0),
(35097,1,0),
(35113,1,0),
(35137,1,0),
(35140,1,0),
(35141,1,0),
(35155,1,0),
(35160,1,0),
(35162,1,0),
(35170,1,0),
(35176,1,0),
(35190,1,0),
(35245,1,0),
(35262,1,0),
(35282,1,0),
(35301,1,0),
(35372,1,0),
(35413,1,0),
(35427,1,0),
(35515,1,0),
(35516,1,0),
(35598,1,0),
(35600,1,0),
(35673,1,0),
(35682,1,0),
(35724,1,0),
(35746,1,0),
(35756,1,0),
(35770,1,0),
(35771,1,0),
(35772,1,0),
(35782,1,0),
(35930,1,0),
(35941,1,1),
(35956,1,1),
(35960,1,0),
(35961,1,0),
(35962,1,0),
(36000,1,0),
(36035,1,0),
(36089,1,0),
(36090,1,0),
(36103,1,0),
(36167,1,0),
(36174,1,0),
(36196,1,0),
(36197,1,0),
(36198,1,0),
(36201,1,0),
(36220,1,0),
(36239,1,0),
(36241,1,0),
(36243,1,0),
(36290,1,0),
(36291,1,0),
(36293,1,0),
(36327,1,0),
(36330,1,0),
(36378,1,0),
(36384,1,0),
(36431,1,0),
(36452,1,0),
(36455,1,1),
(36456,1,0),
(36514,1,0),
(36544,1,0),
(36639,1,0),
(36651,1,0),
(36652,1,0),
(36692,1,0),
(36709,1,0),
(36717,1,1),
(36779,1,0),
(36795,1,0),
(36802,1,0),
(36803,1,0),
(36804,1,0),
(36823,1,0),
(36852,1,0),
(36854,1,0),
(36856,1,0),
(36857,1,0),
(36858,1,0),
(36859,1,0),
(36871,1,0),
(36878,1,0),
(36884,1,0),
(36896,1,0),
(36951,1,0),
(36953,1,0),
(36969,1,0),
(36995,1,0),
(37013,1,0),
(37017,1,0),
(37032,1,0),
(37033,1,0),
(37034,1,0),
(37035,1,0),
(37051,1,0),
(37052,1,0),
(37053,1,0),
(37055,1,0),
(37056,1,0),
(37071,1,0),
(37072,1,0),
(37103,1,0),
(37142,1,0),
(37143,1,0),
(37144,1,0),
(37146,1,0),
(37147,1,0),
(37148,1,0),
(37149,1,0),
(37150,1,0),
(37151,1,0),
(37152,1,0),
(37153,1,0),
(37199,1,0),
(37220,1,0),
(37226,1,0),
(37229,1,0),
(37235,1,0),
(37281,1,0),
(37285,1,0),
(37337,1,0),
(37339,1,0),
(37345,1,0),
(37348,1,0),
(37388,1,0),
(37406,1,0),
(37408,1,1),
(37413,1,0),
(37422,1,0),
(37427,1,0),
(37428,1,0),
(37448,1,1),
(37449,1,1),
(37453,1,0),
(37454,1,0),
(37459,1,0),
(37461,1,0),
(37465,1,0),
(37469,1,0),
(37471,1,0),
(37472,1,0),
(37474,1,0),
(37476,1,0),
(37498,1,0),
(37502,1,0),
(37573,1,0),
(37626,1,0),
(37645,1,0),
(37689,1,0),
(37697,1,0),
(37712,1,0),
(37720,1,0),
(37748,1,0),
(37755,1,0),
(37775,1,0),
(37784,1,0),
(37824,1,0),
(37842,1,0),
(37843,1,0),
(37848,1,0),
(37849,1,1),
(37853,1,0),
(37868,1,0),
(37893,1,0),
(37895,1,0),
(37918,1,0),
(37934,1,0),
(37936,1,0),
(37964,1,0),
(37984,1,0),
(38003,1,0),
(38014,1,0),
(38015,1,0),
(38017,1,0),
(38020,1,0),
(38053,1,0),
(38054,1,0),
(38072,1,0),
(38073,1,0),
(38112,1,0),
(38121,1,0),
(38123,1,0),
(38126,1,0),
(38128,1,0),
(38130,1,0),
(38202,1,0),
(38250,1,0),
(38269,1,0),
(38360,1,0),
(38444,1,0),
(38451,1,0),
(38452,1,0),
(38455,1,0),
(38469,1,0),
(38482,1,0),
(38508,1,0),
(38530,1,0),
(38629,1,0),
(38632,1,0),
(38691,1,0),
(38711,1,0),
(38722,1,0),
(38736,1,0),
(38738,1,0),
(38762,1,0),
(38802,1,0),
(38829,1,1),
(38966,1,0),
(38968,1,0),
(39010,1,0),
(39011,1,0),
(39043,1,0),
(39073,1,0),
(39094,1,0),
(39124,1,0),
(39126,1,0),
(39140,1,0),
(39141,1,0),
(39184,1,0),
(39185,1,0),
(39189,1,0),
(39190,1,0),
(39206,1,0),
(39211,1,0),
(39216,1,0),
(39219,1,0),
(39221,1,0),
(39248,1,0),
(39334,1,0),
(39335,1,0),
(39338,1,0),
(39341,1,0),
(39342,1,0),
(39344,1,0),
(39350,1,0),
(39352,1,0),
(39353,1,0),
(39354,1,0),
(39355,1,0),
(39356,1,0),
(39357,1,0),
(39358,1,0),
(39359,1,0),
(39360,1,0),
(39361,1,0),
(39362,1,0),
(39395,1,0),
(39495,1,0),
(39497,1,1),
(39552,1,0),
(39559,1,0),
(39583,1,0),
(39601,1,0),
(39635,1,0),
(39678,1,0),
(39687,1,0),
(39690,1,0),
(39691,1,0),
(39692,1,0),
(39696,1,0),
(39758,1,0),
(39834,1,1),
(39849,1,0),
(39851,1,1),
(39852,1,1),
(39853,1,1),
(39854,1,1),
(39873,1,0),
(39899,1,0),
(39914,1,0),
(39915,1,0),
(39919,1,0),
(39921,1,0),
(39923,1,1),
(39930,1,0),
(39938,1,0),
(39939,1,0),
(39940,1,0),
(39974,1,0),
(39977,1,0),
(39978,1,0),
(39985,1,0),
(39989,1,0),
(39993,1,0),
(39999,1,0),
(40085,1,0),
(40094,1,0),
(40106,1,0),
(40110,1,0),
(40112,1,1),
(40136,1,0),
(40147,1,0),
(40153,1,0),
(40156,1,0),
(40160,1,0),
(40187,1,0),
(40189,1,0),
(40190,1,0),
(40224,1,0),
(40281,1,0),
(40287,1,0),
(40288,1,0),
(40289,1,0),
(40309,1,0),
(40350,1,0),
(40359,1,0),
(40382,1,0),
(40383,1,0),
(40397,1,0),
(40437,1,0),
(40439,1,0),
(40454,1,0),
(40490,1,0),
(40494,1,0),
(40498,1,0),
(40499,1,0),
(40512,1,0),
(40520,1,0),
(40521,1,0),
(40523,1,0),
(40532,1,0),
(40547,1,0),
(40607,1,0),
(40638,1,0),
(40693,1,0),
(40704,1,0),
(40707,1,0),
(40708,1,0),
(40709,1,0),
(40710,1,0),
(40711,1,0),
(40712,1,0),
(40713,1,0),
(40715,1,0),
(40730,1,1),
(40738,1,0),
(40750,1,0),
(40761,1,0),
(40788,1,0),
(40821,1,0),
(40824,1,0),
(40825,1,0),
(40828,1,0),
(40830,1,0),
(40848,1,1),
(40874,1,0),
(40887,1,0),
(40978,1,0),
(40985,1,1),
(40989,1,0),
(40993,1,1),
(41007,1,1),
(41015,1,1),
(41022,1,1),
(41073,1,0),
(41077,1,0),
(41122,1,0),
(41124,1,0),
(41125,1,0),
(41128,1,0),
(41129,1,0),
(41154,1,0),
(41257,1,0),
(41268,1,0),
(41269,1,0),
(41271,1,0),
(41285,1,1),
(41295,1,0),
(41333,1,0),
(41342,1,0),
(41343,1,0),
(41344,1,0),
(41362,1,0),
(41455,1,0),
(41457,1,0),
(41477,1,0),
(41499,1,0),
(41522,1,0),
(41525,1,0),
(41537,1,0),
(41557,1,0),
(41560,1,0),
(41575,1,0),
(41602,1,0),
(41614,1,0),
(41624,1,1),
(41975,1,0),
(41976,1,0),
(41993,1,0),
(42008,1,0),
(42014,1,0),
(42138,1,1),
(42143,1,0),
(42151,1,0),
(42166,1,0),
(42167,1,0),
(42168,1,0),
(42178,1,0),
(42219,1,0),
(42222,1,0),
(42247,1,0),
(42269,1,0),
(42271,1,0),
(42272,1,0),
(42289,1,0),
(42317,1,0),
(42318,1,0),
(42321,1,0),
(42339,1,0),
(42341,1,0),
(42352,1,0),
(42356,1,0),
(42391,1,0),
(42393,1,0),
(42405,1,0),
(42410,1,0),
(42415,1,0),
(42428,1,0),
(42442,1,0),
(42447,1,0),
(42454,1,0),
(42471,1,0),
(42473,1,0),
(42482,1,0),
(42484,1,0),
(42515,1,0),
(42517,1,0),
(42530,1,0),
(42534,1,0),
(42536,1,0),
(42542,1,0),
(42550,1,0),
(42564,1,0),
(42567,1,0),
(42570,1,0),
(42577,1,0),
(42585,1,0),
(42604,1,0),
(42605,1,0),
(42616,1,0),
(42631,1,0),
(42638,1,1),
(42647,1,0),
(42654,1,0),
(42655,1,0),
(42659,1,0),
(42661,1,0),
(42664,1,0),
(42674,1,1),
(42685,1,0),
(42695,1,0),
(42697,1,0),
(42703,1,0),
(42707,1,0),
(42713,1,0),
(42720,1,0),
(42734,1,0),
(42757,1,1),
(42768,1,0),
(42793,1,0),
(42797,1,0),
(42808,1,0),
(42809,1,0),
(42813,1,0),
(42815,1,0),
(42816,1,0),
(42818,1,0),
(42821,1,0),
(42839,1,0),
(42857,1,0),
(42881,1,0),
(42882,1,0),
(42883,1,0),
(42884,1,0),
(42888,1,0),
(42905,1,0),
(42968,1,0),
(42982,1,0),
(43033,1,0),
(43035,1,0),
(43057,1,0),
(43066,1,0),
(43068,1,0),
(43069,1,0),
(43072,1,0),
(43076,1,0),
(43078,1,0),
(43079,1,0),
(43092,1,0),
(43101,1,0),
(43106,1,0),
(43109,1,0),
(43144,1,0),
(43171,1,0),
(43209,1,0),
(43210,1,0),
(43234,1,0),
(43239,1,0),
(43244,1,0),
(43255,1,0),
(43291,1,0),
(43306,1,0),
(43307,1,0),
(43333,1,0),
(43371,1,0),
(43385,1,0),
(43386,1,0),
(43403,1,0),
(43404,1,0),
(43407,1,0),
(43450,1,0),
(43458,1,0),
(43468,1,0),
(43486,1,0),
(43487,1,0),
(43515,1,0),
(43520,1,0),
(43525,1,0),
(43546,1,0),
(43559,1,0),
(43563,1,0),
(43568,1,0),
(43615,1,0),
(43647,1,0),
(43662,1,0),
(43685,1,0),
(43691,1,0),
(43711,1,0),
(43734,1,0),
(43754,1,0),
(43770,1,0),
(43791,1,0),
(43805,1,0),
(43863,1,0),
(43865,1,0),
(43867,1,0),
(43871,1,0),
(43872,1,0),
(43878,1,0),
(43882,1,0),
(43892,1,0),
(43942,1,0),
(43943,1,0),
(43949,1,0),
(43962,1,0),
(43990,1,0),
(43994,1,0),
(44014,1,0),
(44022,1,0),
(44023,1,0),
(44024,1,0),
(44026,1,0),
(44027,1,0),
(44028,1,0),
(44037,1,0),
(44145,1,0),
(44161,1,0),
(44193,1,0),
(44214,1,0),
(44224,1,1),
(44229,1,0),
(44232,1,1),
(44250,1,0),
(44255,1,0),
(44260,1,0),
(44266,1,0),
(44270,1,0),
(44283,1,0),
(44284,1,0),
(44309,1,0),
(44313,1,0),
(44329,1,0),
(44330,1,0),
(44355,1,0),
(44362,1,0),
(44365,1,0),
(44367,1,0),
(44374,1,0),
(44392,1,0),
(44411,1,0),
(44420,1,0),
(44422,1,0),
(44458,1,0),
(44550,1,0),
(44562,1,0),
(44574,1,0),
(44609,1,0),
(44610,1,0),
(44653,1,0),
(44681,1,0),
(44682,1,1),
(44749,1,0),
(44804,1,0),
(44807,1,0),
(44826,1,0),
(44837,1,0),
(44838,1,0),
(44839,1,0),
(44840,1,0),
(44841,1,0),
(44842,1,0),
(44845,1,0),
(44846,1,0),
(44849,1,1),
(44864,1,0),
(44865,1,0),
(44872,1,0),
(44877,1,0),
(44883,1,0),
(44886,1,0),
(44938,1,0),
(44939,1,0),
(44941,1,0),
(44946,1,0),
(44948,1,0),
(44963,1,0),
(44965,1,0),
(44981,1,0),
(45005,1,0),
(45008,1,0),
(45012,1,0),
(45013,1,0),
(45076,1,0),
(45086,1,0),
(45103,1,0),
(45109,1,0),
(45114,1,0),
(45115,1,0),
(45119,1,0),
(45172,1,0),
(45188,1,0),
(45191,1,0),
(45219,1,0),
(45223,1,0),
(45224,1,0),
(45229,1,0),
(45233,1,0),
(45259,1,0),
(45260,1,1),
(45264,1,0),
(45267,1,0),
(45277,1,0),
(45279,1,0),
(45307,1,0),
(45323,1,0),
(45339,1,0),
(45340,1,0),
(45351,1,0),
(45368,1,0),
(45371,1,0),
(45388,1,0),
(45389,1,0),
(45405,1,0),
(45407,1,0),
(45414,1,0),
(45437,1,0),
(45446,1,0),
(45448,1,0),
(45449,1,0),
(45465,1,0),
(45474,1,0),
(45536,1,0),
(45581,1,0),
(45583,1,0),
(45586,1,0),
(45594,1,0),
(45595,1,0),
(45596,1,0),
(45597,1,0),
(45602,1,0),
(45605,1,0),
(45606,1,0),
(45607,1,0),
(45608,1,0),
(45609,1,0),
(45622,1,0),
(45623,1,0),
(45630,1,0),
(45634,1,0),
(45644,1,1),
(45651,1,0),
(45655,1,0),
(45656,1,0),
(45666,1,0),
(45667,1,0),
(45671,1,1),
(45680,1,1),
(45692,1,0),
(45700,1,0),
(45714,1,0),
(45732,1,0),
(45735,1,0),
(45761,1,0),
(45774,1,0),
(45780,1,0),
(45788,1,0),
(45805,1,0),
(45808,1,0),
(45834,1,0),
(45835,1,0),
(45841,1,0),
(45853,1,0),
(45859,1,0),
(45863,1,0),
(45864,1,0),
(45867,1,0),
(45872,1,0),
(45888,1,0),
(45907,1,0),
(45911,1,0),
(45912,1,0),
(45914,1,0),
(45918,1,1),
(45923,1,0),
(45929,1,0),
(45930,1,0),
(45941,1,0),
(45949,1,0),
(45961,1,0),
(45968,1,0),
(45969,1,0),
(45970,1,0),
(45976,1,0),
(45979,1,0),
(45990,1,0),
(45993,1,0),
(46013,1,0),
(46018,1,1),
(46022,1,0),
(46034,1,0),
(46054,1,0),
(46058,1,0),
(46063,1,0),
(46066,1,0),
(46068,1,0),
(46085,1,0),
(46143,1,0),
(46171,1,0),
(46173,1,0),
(62377,1,0),
(46175,1,0),
(46176,1,0),
(46177,1,0),
(46178,1,0),
(46201,1,0),
(46208,1,0),
(46219,1,0),
(46222,1,0),
(46236,1,0),
(46237,1,0),
(46245,1,0),
(46246,1,0),
(46281,1,0),
(46307,1,1),
(46318,1,0),
(46319,1,0),
(46320,1,1),
(46330,1,0),
(46363,1,0),
(46372,1,1),
(46374,1,0),
(46376,1,0),
(46382,1,0),
(46385,1,0),
(46396,1,1),
(46398,1,0),
(46399,1,0),
(46400,1,0),
(46474,1,0),
(46475,1,0),
(46477,1,0),
(46482,1,0),
(46488,1,0),
(46521,1,0),
(46588,1,1),
(46592,1,0),
(46593,1,0),
(46603,1,0),
(46609,1,0),
(46610,1,0),
(46623,1,0),
(46631,1,0),
(46637,1,0),
(46650,1,0),
(46652,1,0),
(46656,1,0),
(46685,1,0),
(46692,1,0),
(46694,1,0),
(46704,1,0),
(46707,1,0),
(46732,1,1),
(46733,1,0),
(46735,1,0),
(46747,1,0),
(46793,1,0),
(46797,1,0),
(46809,1,0),
(46815,1,0),
(46818,1,0),
(46820,1,0),
(46843,1,0),
(46886,1,0),
(46895,1,0),
(46900,1,0),
(46902,1,0),
(46903,1,0),
(46904,1,0),
(46936,1,0),
(46937,1,0),
(46963,1,0),
(46964,1,0),
(46965,1,1),
(46974,1,0),
(47016,1,0),
(47026,1,0),
(47035,1,0),
(47060,1,0),
(47065,1,0),
(47104,1,0),
(47110,1,0),
(47137,1,0),
(47170,1,0),
(47176,1,0),
(47184,1,0),
(47214,1,0),
(47253,1,0),
(47254,1,0),
(47336,1,0),
(47344,1,0),
(47370,1,1),
(47374,1,0),
(47378,1,0),
(47421,1,0),
(47452,1,0),
(47460,1,0),
(47463,1,0),
(47469,1,0),
(47542,1,0),
(47547,1,0),
(47563,1,0),
(47574,1,0),
(47593,1,0),
(47594,1,0),
(47596,1,0),
(47597,1,0),
(47598,1,0),
(47599,1,0),
(47616,1,0),
(47617,1,0),
(47618,1,0),
(47619,1,0),
(47634,1,0),
(47669,1,0),
(47670,1,0),
(47681,1,0),
(47682,1,0),
(47683,1,0),
(47684,1,0),
(47685,1,0),
(47691,1,1),
(47711,1,0),
(47712,1,0),
(47713,1,0),
(47747,1,0),
(47771,1,0),
(47787,1,0),
(47799,1,0),
(47911,1,0),
(47913,1,0),
(47916,1,0),
(47933,1,0),
(47935,1,0),
(47939,1,0),
(47959,1,0),
(48009,1,0),
(48021,1,0),
(48028,1,1),
(48035,1,0),
(48115,1,0),
(48117,1,0),
(48183,1,0),
(48185,1,0),
(48188,1,0),
(48194,1,1),
(48199,1,0),
(48201,1,0),
(48202,1,0),
(48213,1,0),
(48218,1,0),
(48222,1,0),
(48223,1,0),
(48227,1,0),
(48246,1,1),
(48252,1,0),
(48293,1,0),
(48306,1,0),
(48315,1,0),
(48329,1,0),
(48344,1,0),
(48345,1,0),
(48362,1,0),
(48363,1,0),
(48375,1,0),
(48385,1,0),
(48398,1,0),
(48399,1,0),
(48425,1,0),
(48426,1,0),
(48455,1,0),
(48490,1,0),
(48497,1,0),
(48508,1,0),
(48530,1,0),
(48551,1,0),
(48597,1,0),
(48600,1,0),
(48605,1,0),
(48620,1,0),
(48623,1,0),
(48627,1,0),
(48641,1,0),
(48642,1,0),
(48646,1,0),
(48649,1,0),
(48685,1,0),
(48724,1,0),
(48726,1,0),
(48728,1,0),
(48730,1,0),
(48732,1,0),
(48748,1,0),
(48764,1,0),
(48771,1,0),
(48773,1,0),
(48790,1,0),
(48793,1,0),
(48799,1,0),
(48808,1,0),
(48811,1,0),
(48896,1,0),
(48901,1,0),
(48904,1,0),
(48929,1,0),
(48974,1,0),
(48975,1,0),
(49022,1,0),
(49030,1,0),
(49058,1,0),
(49062,1,0),
(49075,1,0),
(49080,1,0),
(49083,1,0),
(49118,1,0),
(49125,1,0),
(49128,1,0),
(49129,1,0),
(49131,1,0),
(49134,1,0),
(49135,1,0),
(49159,1,0),
(49166,1,0),
(49210,1,0),
(49211,1,0),
(49262,1,0),
(49291,1,0),
(49292,1,0),
(49313,1,0),
(49319,1,0),
(49325,1,0),
(49330,1,0),
(49332,1,0),
(49333,1,0),
(49334,1,0),
(49367,1,0),
(49370,1,0),
(49404,1,0),
(49405,1,0),
(49428,1,0),
(49434,1,0),
(49515,1,0),
(49517,1,0),
(49519,1,0),
(49524,1,0),
(49525,1,0),
(49552,1,0),
(49554,1,0),
(49555,1,0),
(49557,1,0),
(49590,1,0),
(49625,1,0),
(49634,1,0),
(49679,1,0),
(49682,1,0),
(49683,1,0),
(49684,1,0),
(49731,1,0),
(49751,1,0),
(49762,1,0),
(49825,1,0),
(49826,1,0),
(49829,1,0),
(49858,1,0),
(49862,1,0),
(49870,1,0),
(49899,1,0),
(49947,1,0),
(50036,1,0),
(50087,1,0),
(50133,1,0),
(50173,1,0),
(50174,1,0),
(50176,1,0),
(50177,1,0),
(50178,1,0),
(50179,1,0),
(50312,1,0),
(50315,1,1),
(50331,1,0),
(50350,1,0),
(50382,1,0),
(50383,1,0),
(50398,1,1),
(50430,1,0),
(50440,1,0),
(50492,1,0),
(50515,1,0),
(50524,1,0),
(50546,1,0),
(50547,1,0),
(50548,1,0),
(50554,1,0),
(50556,1,0),
(50562,1,0),
(50563,1,0),
(50568,1,0),
(50569,1,0),
(50592,1,0),
(50628,1,0),
(50669,1,0),
(50674,1,0),
(50682,1,1),
(50742,1,0),
(50775,1,0),
(50793,1,0),
(50794,1,0),
(50817,1,0),
(50835,1,0),
(50878,1,0),
(50883,1,1),
(50892,1,0),
(51001,1,0),
(51022,1,0),
(51023,1,0),
(51024,1,0),
(51025,1,0),
(51039,1,0),
(51049,1,0),
(51122,1,0),
(51136,1,0),
(51139,1,0),
(51152,1,0),
(51171,1,0),
(51172,1,0),
(51202,1,0),
(51213,1,0),
(51215,1,0),
(51234,1,0),
(51239,1,0),
(51247,1,0),
(51256,1,0),
(51276,1,0),
(51288,1,0),
(51318,1,0),
(51331,1,0),
(51332,1,0),
(51333,1,0),
(51343,1,0),
(51366,1,0),
(51368,1,0),
(51381,1,0),
(51384,1,0),
(51393,1,0),
(51396,1,0),
(51403,1,0),
(51420,1,0),
(51448,1,1),
(51516,1,0),
(51518,1,0),
(51577,1,0),
(51579,1,0),
(51590,1,0),
(51603,1,0),
(51606,1,0),
(51607,1,0),
(51616,1,0),
(51639,1,0),
(51641,1,0),
(51642,1,0),
(51643,1,0),
(51644,1,0),
(51645,1,0),
(51649,1,0),
(51650,1,0),
(51651,1,0),
(51652,1,0),
(51670,1,0),
(51694,1,0),
(51697,1,0),
(51727,1,0),
(51737,1,0),
(51739,1,0),
(51743,1,0),
(51754,1,0),
(51767,1,0),
(51769,1,0),
(51773,1,0),
(51774,1,0),
(51791,1,0),
(51794,1,0),
(51825,1,0),
(51840,1,0),
(51843,1,0),
(51858,1,0),
(51859,1,0),
(51861,1,0),
(51866,1,0),
(51870,1,0),
(51902,1,0),
(51904,1,0),
(51907,1,0),
(51910,1,0),
(51925,1,0),
(51927,1,0),
(51931,1,0),
(51932,1,0),
(51933,1,0),
(51942,1,0),
(51959,1,0),
(51964,1,0),
(51965,1,0),
(52011,1,0),
(52037,1,0),
(52059,1,0),
(52064,1,0),
(52089,1,0),
(52106,1,0),
(52122,1,0),
(52124,1,0),
(52140,1,0),
(52151,1,0),
(52164,1,0),
(52170,1,0),
(52173,1,0),
(52185,1,0),
(52227,1,0),
(52229,1,0),
(52238,1,0),
(52239,1,0),
(52242,1,0),
(52247,1,0),
(52254,1,0),
(52257,1,0),
(52259,1,0),
(52264,1,0),
(52294,1,0),
(52313,1,0),
(52322,1,0),
(52335,1,0),
(52336,1,0),
(52337,1,1),
(52340,1,0),
(52343,1,0),
(52349,1,0),
(52365,1,1),
(52369,1,0),
(52371,1,0),
(52381,1,0),
(52387,1,0),
(52388,1,0),
(52407,1,0),
(52412,1,0),
(52414,1,0),
(52427,1,0),
(52438,1,0),
(52446,1,0),
(52449,1,0),
(52452,1,0),
(52453,1,0),
(52454,1,0),
(52457,1,0),
(52458,1,0),
(52512,1,0),
(52514,1,0),
(52528,1,0),
(52576,1,0),
(52577,1,0),
(52585,1,0),
(52607,1,0),
(52632,1,0),
(52638,1,0),
(52654,1,0),
(52661,1,0),
(52676,1,0),
(52681,1,0),
(52686,1,0),
(52687,1,0),
(52688,1,0),
(52725,1,0),
(52726,1,0),
(52727,1,0),
(52728,1,0),
(52729,1,0),
(52730,1,0),
(52731,1,0),
(52732,1,0),
(52774,1,0),
(52791,1,0),
(52793,1,0),
(52805,1,0),
(52811,1,0),
(52816,1,0),
(52833,1,0),
(52834,1,0),
(52837,1,0),
(52838,1,0),
(52844,1,0),
(52850,1,0),
(52884,1,0),
(52908,1,0),
(52920,1,0),
(52930,1,0),
(52934,1,0),
(52935,1,0),
(52936,1,0),
(52937,1,0),
(52953,1,0),
(52955,1,0),
(52956,1,0),
(52981,1,0),
(52989,1,0),
(52990,1,0),
(53010,1,0),
(53020,1,0),
(53024,1,0),
(53029,1,0),
(53038,1,0),
(53083,1,0),
(53093,1,0),
(53096,1,0),
(53106,1,0),
(53110,1,0),
(53163,1,0),
(53170,1,0),
(53177,1,0),
(53185,1,0),
(53206,1,0),
(53210,1,0),
(53242,1,1),
(53272,1,0),
(53441,1,0),
(53464,1,0),
(53465,1,0),
(53466,1,0),
(53570,1,0),
(53609,1,0),
(53613,1,0),
(53626,1,0),
(53644,1,0),
(53680,1,0),
(53683,1,0),
(53684,1,0),
(53685,1,0),
(53701,1,0),
(53714,1,1),
(53717,1,0),
(53730,1,0),
(53745,1,0),
(53757,1,1),
(53778,1,0),
(53798,1,0),
(53826,1,0),
(53827,1,0),
(53828,1,0),
(53829,1,0),
(54040,1,0),
(54047,1,0),
(54089,1,0),
(54090,1,0),
(54097,1,0),
(54108,1,0),
(54112,1,0),
(54128,1,0),
(54142,1,0),
(54209,1,0),
(54236,1,0),
(54245,1,0),
(54250,1,0),
(54258,1,0),
(54264,1,0),
(54265,1,0),
(54266,1,0),
(54267,1,0),
(54269,1,0),
(54323,1,0),
(54325,1,0),
(54327,1,0),
(54328,1,0),
(54377,1,0),
(54423,1,0),
(54426,1,0),
(54430,1,0),
(54464,1,0),
(54510,1,0),
(54522,1,0),
(54539,1,0),
(54548,1,0),
(54643,1,0),
(54656,1,0),
(54664,1,0),
(54685,1,0),
(54699,1,1),
(54725,1,1),
(54728,1,0),
(54744,1,1),
(54746,1,1),
(54773,1,0),
(54796,1,0),
(54798,1,0),
(54806,1,0),
(54878,1,0),
(54899,1,0),
(54984,1,0),
(54985,1,0),
(54988,1,0),
(54991,1,0),
(55063,1,0),
(55089,1,0),
(55127,1,0),
(55134,1,0),
(55137,1,0),
(55138,1,0),
(55141,1,0),
(55145,1,0),
(55161,1,0),
(55223,1,0),
(55227,1,0),
(55229,1,0),
(55231,1,0),
(55244,1,0),
(55257,1,0),
(55287,1,0),
(55288,1,0),
(55290,1,0),
(55406,1,0),
(55418,1,0),
(55419,1,0),
(55423,1,1),
(55432,1,0),
(55465,1,0),
(55468,1,0),
(55510,1,0),
(55516,1,0),
(55519,1,0),
(55524,1,0),
(55526,1,0),
(55527,1,0),
(55571,1,0),
(55578,1,0),
(55616,1,1),
(55647,1,0),
(55660,1,0),
(55661,1,0),
(55662,1,0),
(55693,1,0),
(55720,1,0),
(55721,1,0),
(55722,1,0),
(55723,1,0),
(55724,1,0),
(55725,1,0),
(55726,1,0),
(55727,1,0),
(55785,1,0),
(55796,1,0),
(55801,1,0),
(55803,1,0),
(55805,1,0),
(55811,1,0),
(55844,1,0),
(55853,1,0),
(55868,1,0),
(55872,1,0),
(55875,1,0),
(55878,1,1),
(55881,1,1),
(55882,1,0),
(55885,1,1),
(55886,1,0),
(55887,1,1),
(55888,1,0),
(55954,1,0),
(56047,1,0),
(56066,1,0),
(56099,1,0),
(56103,1,0),
(56114,1,0),
(56117,1,0),
(56150,1,0),
(56152,1,0),
(56189,1,0),
(56227,1,0),
(56253,1,0),
(56263,1,0),
(56264,1,0),
(56265,1,0),
(56266,1,0),
(56275,1,0),
(56312,1,0),
(56387,1,0),
(56388,1,0),
(56393,1,0),
(56429,1,0),
(56458,1,0),
(56505,1,0),
(56523,1,0),
(56560,1,0),
(56563,1,0),
(56567,1,0),
(56575,1,0),
(56621,1,0),
(56622,1,0),
(56652,1,0),
(56661,1,0),
(56663,1,0),
(56665,1,0),
(56667,1,0),
(56669,1,0),
(56673,1,0),
(56677,1,0),
(56680,1,0),
(56683,1,0),
(56688,1,0),
(56691,1,0),
(56693,1,0),
(56695,1,0),
(56696,1,0),
(56711,1,0),
(56713,1,0),
(56722,1,0),
(56723,1,0),
(56724,1,0),
(56725,1,0),
(56738,1,0),
(56763,1,0),
(56764,1,0),
(56865,1,0),
(56905,1,0),
(56917,1,0),
(56941,1,1),
(57042,1,0),
(57068,1,0),
(57071,1,0),
(57072,1,0),
(57410,1,0),
(57417,1,0),
(57420,1,0),
(57422,1,0),
(57469,1,0),
(57471,1,0),
(57495,1,0),
(57523,1,0),
(57534,1,0),
(57632,1,0),
(57637,1,0),
(57638,1,0),
(57639,1,0),
(57642,1,0),
(57650,1,0),
(57659,1,0),
(57666,1,0),
(57667,1,0),
(57682,1,0),
(57732,1,0),
(57734,1,0),
(57735,1,0),
(57736,1,0),
(57737,1,0),
(57738,1,0),
(57797,1,0),
(57806,1,0),
(57809,1,0),
(57828,1,0),
(57852,1,0),
(57853,1,0),
(57885,1,0),
(57891,1,0),
(57912,1,0),
(57930,1,0),
(57962,1,0),
(57963,1,0),
(57980,1,0),
(57983,1,0),
(58036,1,0),
(58040,1,0),
(58064,1,0),
(58084,1,0),
(58103,1,0),
(58108,1,0),
(58109,1,0),
(58112,1,0),
(58114,1,0),
(58121,1,0),
(58123,1,0),
(58124,1,0),
(58131,1,0),
(58152,1,0),
(58178,1,0),
(58195,1,1),
(58196,1,1),
(58197,1,1),
(58198,1,1),
(58225,1,0),
(58350,1,0),
(58416,1,0),
(58493,1,1),
(58515,1,0),
(58533,1,0),
(58542,1,0),
(58552,1,0),
(58593,1,0),
(58641,1,0),
(58658,1,0),
(58672,1,0),
(58685,1,0),
(58793,1,0),
(58836,1,0),
(58838,1,0),
(58846,1,1),
(58858,1,0),
(58873,1,0),
(58916,1,0),
(58917,1,0),
(58945,1,0),
(58949,1,0),
(59078,1,0),
(59091,1,0),
(59098,1,0),
(59115,1,0),
(59125,1,0),
(59189,1,0),
(59190,1,0),
(59284,1,0),
(59335,1,0),
(59363,1,0),
(59375,1,0),
(59383,1,0),
(59386,1,0),
(59396,1,0),
(59449,1,0),
(59456,1,0),
(59461,1,1),
(59528,1,0),
(59534,1,0),
(59552,1,0),
(59554,1,0),
(59556,1,1),
(59579,1,0),
(59595,1,0),
(59643,1,0),
(59655,1,0),
(59668,1,0),
(59677,1,0),
(59678,1,0),
(59704,1,0),
(59729,1,0),
(59730,1,0),
(59764,1,0),
(59780,1,0),
(59781,1,0),
(59807,1,0),
(59847,1,0),
(59867,1,0),
(59871,1,0),
(59897,1,0),
(59925,1,0),
(59930,1,0),
(59951,1,0),
(59952,1,0),
(59977,1,0),
(60038,1,0),
(60045,1,0),
(60046,1,0),
(60088,1,0),
(60104,1,0),
(60178,1,1),
(60207,1,0),
(60208,1,0),
(60224,1,0),
(60243,1,0),
(60256,1,0),
(60285,1,0),
(60288,1,0),
(60291,1,1),
(60292,1,1),
(60293,1,1),
(60294,1,1),
(60295,1,1),
(60296,1,1),
(60297,1,1),
(60298,1,0),
(60310,1,0),
(60315,1,0),
(60316,1,0),
(60342,1,0),
(60422,1,0),
(60456,1,0),
(60476,1,1),
(60496,1,0),
(60499,1,1),
(60507,1,1),
(60508,1,1),
(60511,1,0),
(60516,1,0),
(60522,1,1),
(60528,1,0),
(60535,1,0),
(60536,1,0),
(60561,1,0),
(60612,1,0),
(60614,1,0),
(60713,1,0),
(60810,1,0),
(60829,1,0),
(60831,1,0),
(60834,1,0),
(60836,1,0),
(60863,1,0),
(60909,1,0),
(60912,1,1),
(60967,1,0),
(61007,1,0),
(61026,1,0),
(61028,1,0),
(61071,1,0),
(61072,1,0),
(61073,1,0),
(61074,1,0),
(61075,1,0),
(61114,1,0),
(61121,1,0),
(61151,1,0),
(61152,1,0),
(61180,1,0),
(61210,1,0),
(61219,1,0),
(61245,1,0),
(61254,1,0),
(61353,1,0),
(61355,1,0),
(61397,1,0),
(61408,1,0),
(61416,1,0),
(61487,1,0),
(61488,1,0),
(61492,1,0),
(61524,1,0),
(61537,1,0),
(61588,1,0),
(61602,1,0),
(61647,1,0),
(61652,1,0),
(61665,1,0),
(61710,1,0),
(61738,1,0),
(61764,1,0),
(61765,1,0),
(61766,1,0),
(61771,1,0),
(61816,1,1),
(61863,1,1),
(61901,1,0),
(61934,1,0),
(61942,1,0),
(61964,1,0),
(61975,1,0),
(62002,1,0),
(62016,1,0),
(62034,1,0),
(62037,1,1),
(62072,1,0),
(62082,1,0),
(62083,1,0),
(62084,1,0),
(62091,1,0),
(62102,1,0),
(62195,1,0),
(62223,1,0),
(62266,1,0),
(62272,1,0),
(62278,1,0),
(62284,1,0),
(62304,1,0),
(62323,1,0),
(62343,1,0),
(47129,2,0),
(34395,2,0),
(34387,2,0),
(32440,2,0),
(32439,2,0),
(32205,2,0),
(31538,2,0),
(30740,2,0),
(29831,2,0),
(28806,2,0),
(28353,2,0),
(27517,2,0),
(27203,2,0),
(27202,2,0),
(27201,2,0),
(27191,2,0),
(27190,2,0),
(27184,2,0),
(26560,2,0),
(26063,2,0),
(25005,2,0),
(24934,2,0),
(24871,2,0),
(24721,2,0),
(24390,2,0),
(23208,2,0),
(21127,2,0),
(18431,2,0),
(17731,2,0),
(17016,2,0),
(16613,2,0),
(16447,2,0),
(13489,2,0),
(12139,2,0),
(11792,2,0),
(9224,2,0),
(9223,2,0),
(9222,2,0),
(9221,2,0),
(8674,2,0),
(7729,2,0),
(7728,2,0),
(3921,2,0),
(35683,2,0),
(36066,2,0),
(36546,2,0),
(36851,2,0),
(37754,2,0),
(38439,2,0),
(38782,2,0),
(39050,2,0),
(40055,2,0),
(40165,2,0),
(40166,2,0),
(40167,2,0),
(40328,2,0),
(40447,2,0),
(40468,2,0),
(40632,2,0),
(40640,2,0),
(40642,2,0),
(40644,2,0),
(40675,2,0),
(40774,2,0),
(40785,2,0),
(40964,2,0),
(40965,2,0),
(40968,2,0),
(40970,2,0),
(41004,2,0),
(41145,2,0),
(41146,2,0),
(42020,2,0),
(42022,2,0),
(42323,2,0),
(42788,2,0),
(43418,2,0),
(43552,2,0),
(43723,2,0),
(43753,2,0),
(43768,2,0),
(43950,2,0),
(44307,2,0),
(44498,2,0),
(44499,2,0),
(44611,2,0),
(44686,2,0),
(44874,2,0),
(44885,2,0),
(45149,2,0),
(45222,2,0),
(45226,2,0),
(45795,2,0),
(45877,2,0),
(45971,2,0),
(46072,2,0),
(46350,2,0),
(46360,2,1),
(46584,2,0),
(76006,2,0),
(74179,2,0),
(72869,2,0),
(72868,2,0),
(72608,2,0),
(72456,2,0),
(72405,2,0),
(72340,2,1),
(71284,2,1),
(70598,2,1),
(70446,2,1),
(70346,2,0),
(70227,2,0),
(70199,2,0),
(70175,2,0),
(70173,2,0),
(69402,2,0),
(69400,2,0),
(69294,2,0),
(69157,2,0),
(67815,2,0),
(67814,2,0),
(67813,2,0),
(67812,2,0),
(67798,2,0),
(67459,2,0),
(67458,2,0),
(67448,2,0),
(67439,2,0),
(67436,2,0),
(66676,2,0),
(66672,2,0),
(66655,2,0),
(66531,2,0),
(66289,2,0),
(65209,2,0),
(64871,2,0),
(64570,2,0),
(64436,2,0),
(63618,2,0),
(63381,2,0),
(62776,2,0),
(62714,2,0),
(62635,2,0),
(62397,2,0),
(62363,2,0),
(62357,2,0),
(62355,2,0),
(62307,2,0),
(62086,2,0),
(61999,2,1),
(60289,2,0),
(60101,2,0),
(59790,2,0),
(59732,2,0),
(59576,2,0),
(58596,2,0),
(58231,2,0),
(57945,2,0),
(57619,2,0),
(57610,2,0),
(57607,2,0),
(57583,2,0),
(57575,2,0),
(57544,2,0),
(57517,2,0),
(57415,2,0),
(56790,2,0),
(56570,2,0),
(56385,2,0),
(56350,2,0),
(55934,2,0),
(55820,2,0),
(55367,2,0),
(55197,2,0),
(54712,2,0),
(54666,2,0),
(54530,2,0),
(52510,2,0),
(52408,2,0),
(52339,2,0),
(52277,2,0),
(52274,2,0),
(52115,2,0),
(51383,2,0),
(51328,2,0),
(51327,2,0),
(51326,2,0),
(51325,2,0),
(51241,2,0),
(50999,2,0),
(50319,2,0),
(50026,2,0),
(50003,2,0),
(49867,2,0),
(49860,2,0),
(49765,2,0),
(49728,2,0),
(49693,2,0),
(49689,2,0),
(49158,2,0),
(49123,2,0),
(49109,2,0),
(48794,2,0),
(48738,2,0),
(48347,2,0),
(47978,2,0),
(35246,2,0),
(42576,3,0),
(42492,3,0),
(42475,3,0),
(42433,3,0),
(42350,3,0),
(42348,3,0),
(42242,3,1),
(42228,3,0),
(42220,3,0),
(42114,3,0),
(41221,3,0),
(40961,3,0),
(40960,3,0),
(40959,3,0),
(40957,3,0),
(40885,3,0),
(40603,3,0),
(40495,3,0),
(40401,3,0),
(40380,3,0),
(40341,3,0),
(40307,3,0),
(40286,3,0),
(40285,3,0),
(40284,3,0),
(40283,3,0),
(40268,3,0),
(40247,3,0),
(40246,3,0),
(40245,3,0),
(40244,3,0),
(40240,3,0),
(40222,3,0),
(40179,3,0),
(40178,3,0),
(40177,3,0),
(40176,3,0),
(40105,3,0),
(40076,3,0),
(39932,3,0),
(39887,3,0),
(39844,3,0),
(39832,3,1),
(39831,3,0),
(39558,3,0),
(39401,3,0),
(39399,3,0),
(39398,3,0),
(39393,3,0),
(39384,3,0),
(39364,3,0),
(38866,3,0),
(38680,3,0),
(38173,3,0),
(38046,3,0),
(38044,3,0),
(37970,3,0),
(37954,3,0),
(37942,3,0),
(37919,3,0),
(37913,3,0),
(37793,3,1),
(37789,3,0),
(37750,3,1),
(37504,3,0),
(37489,3,0),
(37473,3,1),
(37366,3,0),
(37134,3,0),
(36821,3,0),
(36811,3,0),
(36450,3,0),
(36449,3,1),
(36325,3,0),
(35958,3,0),
(35776,3,0),
(35734,3,0),
(35599,3,0),
(35596,3,0),
(34303,3,0),
(34200,3,0),
(34186,3,0),
(42578,3,0),
(33814,3,0),
(33783,3,0),
(33670,3,0),
(33664,3,0),
(33365,3,0),
(33240,3,0),
(33111,3,0),
(32785,3,0),
(32314,3,0),
(32307,3,0),
(32241,3,0),
(32148,3,0),
(32067,3,0),
(31927,3,0),
(31543,3,0),
(31364,3,0),
(31363,3,0),
(31333,3,0),
(30758,3,0),
(30741,3,0),
(30284,3,0),
(29945,3,0),
(29866,3,0),
(29820,3,1),
(29460,3,0),
(28373,3,0),
(28250,3,0),
(28054,3,0),
(26521,3,0),
(26519,3,0),
(26518,3,0),
(26517,3,0),
(26516,3,0),
(26490,3,0),
(26488,3,0),
(26393,3,1),
(26373,3,0),
(26338,3,0),
(26337,3,0),
(26336,3,0),
(26335,3,0),
(26334,3,0),
(26333,3,0),
(26329,3,0),
(26328,3,0),
(26327,3,0),
(26326,3,0),
(26325,3,0),
(26304,3,0),
(26295,3,0),
(26294,3,0),
(26293,3,0),
(26292,3,0),
(26291,3,0),
(26286,3,0),
(25687,3,0),
(25183,3,0),
(25181,3,0),
(25180,3,0),
(25178,3,0),
(25177,3,0),
(24973,3,0),
(24731,3,0),
(23024,3,0),
(21086,3,0),
(21014,3,0),
(20038,3,0),
(20037,3,0),
(19873,3,0),
(17179,3,0),
(16629,3,0),
(16452,3,0),
(16337,3,0),
(15998,3,0),
(13488,3,0),
(12151,3,0),
(10860,3,0),
(10836,3,0),
(10835,3,0),
(10834,3,0),
(10805,3,0),
(9257,3,0),
(9232,3,0),
(42868,3,0),
(43233,3,0),
(43539,3,0),
(43664,3,0),
(43898,3,0),
(43954,3,0),
(43963,3,0),
(43986,3,0),
(44013,3,0),
(44132,3,0),
(44213,3,0),
(44249,3,0),
(44320,3,0),
(44321,3,0),
(44375,3,0),
(44465,3,0),
(44554,3,0),
(44565,3,0),
(44603,3,0),
(44678,3,0),
(44844,3,0),
(44884,3,0),
(45030,3,0),
(45050,3,1),
(45201,3,0),
(45203,3,0),
(45404,3,0),
(45502,3,0),
(45585,3,0),
(45633,3,0),
(45635,3,0),
(45653,3,0),
(45839,3,0),
(45885,3,1),
(46417,3,0),
(46574,3,0),
(46638,3,1),
(46852,3,0),
(46896,3,0),
(47030,3,1),
(47328,3,0),
(47510,3,0),
(47628,3,0),
(47745,3,0),
(47775,3,1),
(47800,3,0),
(48198,3,0),
(48212,3,0),
(48331,3,0),
(48431,3,0),
(48882,3,0),
(48972,3,0),
(49197,3,0),
(49300,3,0),
(49308,3,0),
(49453,3,0),
(49735,3,0),
(50313,3,1),
(50348,3,0),
(50443,3,0),
(50501,3,0),
(50626,3,0),
(50639,3,0),
(50640,3,0),
(50716,3,0),
(50790,3,0),
(50791,3,0),
(50802,3,0),
(50803,3,0),
(50825,3,0),
(50826,3,0),
(51212,3,0),
(51246,3,0),
(51395,3,0),
(51511,3,0),
(51742,3,0),
(51748,3,0),
(51805,3,0),
(51846,3,0),
(52067,3,1),
(52271,3,0),
(52305,3,0),
(52479,3,0),
(52480,3,0),
(52497,3,0),
(52603,3,0),
(52683,3,0),
(52685,3,0),
(52812,3,0),
(53677,3,0),
(53679,3,0),
(53694,3,0),
(53705,3,0),
(53706,3,0),
(54272,3,0),
(54517,3,0),
(54914,3,0),
(54961,3,0),
(54990,3,0),
(55037,3,0),
(55083,3,0),
(55365,3,0),
(55479,3,0),
(55715,3,0),
(55800,3,0),
(55889,3,1),
(56095,3,0),
(56140,3,0),
(56386,3,0),
(56389,3,0),
(56578,3,0),
(56747,3,0),
(56765,3,0),
(57586,3,0),
(57800,3,0),
(57824,3,0),
(57835,3,0),
(58766,3,0),
(58825,3,0),
(59008,3,0),
(59462,3,0),
(59464,3,0),
(59564,3,0),
(59629,3,0),
(59694,3,0),
(60639,3,0),
(61126,3,0),
(61224,3,0),
(61699,3,0),
(62000,3,0),
(62056,3,0),
(62385,3,0),
(62387,3,0),
(62399,3,0),
(62565,3,0),
(62709,3,0),
(62973,3,0),
(62991,3,0),
(63019,3,0),
(63122,3,1),
(63292,3,0),
(63294,3,0),
(63295,3,0),
(63317,3,0),
(63414,3,0),
(63528,3,0),
(63766,3,0),
(63983,3,0),
(63985,3,0),
(64021,3,0),
(65044,3,0),
(65045,3,0),
(65101,3,0),
(65585,3,0),
(65586,3,0),
(65690,3,0),
(66129,3,0),
(66170,3,0),
(66598,3,0),
(67398,3,0),
(68378,3,0),
(68902,3,0),
(69007,3,0),
(69095,3,0),
(69096,3,0),
(69708,3,0),
(69783,3,0),
(69797,3,0),
(69799,3,0),
(69802,3,0),
(69985,3,0),
(70028,3,0),
(70037,3,0),
(70194,3,0),
(70521,3,0),
(70564,3,0),
(70590,3,0),
(70997,3,0),
(70998,3,0),
(70999,3,0),
(71278,3,1),
(71621,3,0),
(71704,3,0),
(72155,3,1),
(72162,3,1),
(72274,3,1),
(72297,3,1),
(72460,3,1),
(72548,3,1),
(72549,3,1),
(72550,3,1),
(72619,3,1),
(72620,3,1),
(72679,3,0),
(72771,3,0),
(72850,3,0),
(72851,3,0),
(72852,3,0),
(74318,3,0),
(74319,3,0),
(74320,3,0),
(74472,3,0),
(75509,3,0),
(75553,3,1),
(75766,3,1),
(34012,3,0),
(74271,4,0),
(74270,4,0),
(72096,4,1),
(72034,4,1),
(71615,4,0),
(70827,4,0),
(69425,4,0),
(69164,4,0),
(69162,4,0),
(68981,4,0),
(68788,4,1),
(67816,4,0),
(67796,4,0),
(65370,4,0),
(65333,4,0),
(64626,4,0),
(62826,4,0),
(62489,4,0),
(62466,4,0),
(62457,4,0),
(62345,4,0),
(62308,4,0),
(60206,4,0),
(58185,4,0),
(55896,4,0),
(55349,4,0),
(54109,4,0),
(54107,4,0),
(51678,4,0),
(50652,4,0),
(49556,4,0),
(48610,4,0),
(48277,4,0),
(48224,4,0),
(47674,4,0),
(47109,4,0),
(45922,4,0),
(44969,4,0),
(44737,4,0),
(44687,4,0),
(44626,4,0),
(44233,4,0),
(40647,4,0),
(40259,4,0),
(39246,4,0),
(36904,4,0),
(36460,4,0),
(36374,4,0),
(30532,4,0),
(28995,4,0),
(10451,4,0),
(9735,4,0),
(8900,4,0),
(8899,4,0),
(8898,4,0),
(8202,4,0),
(74272,4,0),
(69767,5,0),
(65590,5,0),
(62386,5,0),
(55588,5,0),
(54713,5,0),
(49464,5,0),
(49460,5,0),
(49346,5,0),
(47310,5,1),
(45676,5,0),
(44217,5,0),
(43977,5,0),
(41962,5,0),
(40789,5,0),
(40503,5,0),
(38729,5,0),
(38312,5,0),
(38106,5,0),
(38105,5,0),
(38104,5,0),
(38103,5,0),
(38102,5,0),
(38101,5,0),
(38100,5,0),
(38099,5,0),
(37206,5,0),
(37205,5,0),
(37204,5,0),
(36817,5,0),
(34630,5,0),
(21866,5,0),
(21794,5,0),
(19832,5,0),
(19250,5,0),
(8913,5,0),
(67308,6,0),
(67307,6,0),
(67306,6,0),
(67305,6,0),
(67304,6,0),
(67303,6,0),
(65876,6,0),
(65875,6,0),
(63041,6,0),
(62560,6,0),
(59099,6,1),
(44608,6,0),
(43702,6,0),
(43080,6,0),
(43056,6,0),
(40902,6,0),
(40657,6,0),
(28803,6,1),
(16054,6,0),
(8712,6,0),
(75863,7,1),
(75448,7,1),
(74412,7,1),
(74323,7,0),
(74322,7,0),
(74321,7,0),
(73028,7,0),
(72622,7,1),
(72621,7,1),
(72459,7,1),
(72273,7,0),
(72272,7,0),
(71618,7,0),
(71614,7,0),
(71279,7,1),
(70982,7,0),
(70981,7,0),
(70952,7,0),
(69540,7,0),
(67751,7,0),
(66905,7,0),
(66667,7,0),
(65126,7,0),
(64218,7,0),
(63059,7,0),
(62942,7,0),
(62705,7,0),
(61920,7,0),
(61715,7,0),
(61714,7,0),
(61632,7,0),
(60532,7,0),
(60430,7,0),
(59474,7,0),
(59465,7,0),
(57409,7,0),
(57405,7,0),
(57056,7,1),
(56694,7,0),
(56454,7,0),
(54160,7,0),
(53605,7,0),
(52319,7,0),
(51719,7,0),
(50747,7,0),
(50646,7,0),
(50645,7,0),
(50627,7,0),
(50218,7,0),
(49889,7,0),
(48742,7,0),
(48552,7,0),
(46158,7,0),
(42287,7,0),
(42265,7,1),
(42079,7,0),
(42004,7,1),
(41284,7,0),
(41113,7,0),
(41112,7,0),
(41111,7,0),
(41110,7,0),
(41071,7,0),
(41064,7,1),
(40931,7,0),
(40929,7,0),
(40905,7,0),
(40900,7,0),
(40851,7,0),
(40370,7,0),
(40172,7,0),
(40171,7,0),
(40170,7,0),
(40169,7,0),
(40075,7,1),
(39698,7,0),
(39686,7,0),
(39218,7,0),
(38920,7,0),
(38774,7,0),
(38484,7,0),
(38449,7,0),
(38371,7,0),
(37076,7,0),
(35957,7,1),
(35754,7,0),
(35289,7,0),
(34350,7,0),
(34187,7,0),
(31625,7,0),
(31624,7,0),
(31617,7,0),
(30939,7,1),
(30659,7,0),
(30657,7,0),
(30531,7,0),
(30098,7,0),
(28681,7,1),
(25790,7,0),
(25029,7,0),
(23015,7,0),
(22710,7,0),
(20553,7,0),
(10732,7,0),
(10348,7,0),
(7082,7,0),
(5628,7,0),
(804,7,0),
(802,7,0),
(54069,1,0),
(56251,1,0),
(58630,1,0);

-- remove redundant entries
DELETE FROM `conditions` WHERE `ConditionTypeOrReference` = 18 AND `ConditionValue1` = 1 AND `ConditionValue2` = 0 AND `SourceEntry` IN (SELECT `id` FROM `temp_convert_spells` WHERE onlyPlayers);

-- set source group if available in db
UPDATE `conditions` SET `SourceGroup` = `ConditionValue3`, `ConditionValue3` = 0 WHERE `ConditionTypeOrReference` = 18;

-- set source group in case of old default (not set) source group
UPDATE `conditions` SET `SourceGroup` = (SELECT `effMask` FROM `temp_convert_spells` WHERE `id` = `SourceEntry`) WHERE `SourceGroup` = 0 AND  `ConditionTypeOrReference` = 18;

CREATE TABLE `temp_cond_vals`
(
	`sourceGroup` INT(11),
	`sourceEntry` INT(11),
	`conditionValue1` INT(11),
	`conditionValue2` INT(11),
	`elseGroup` INT(11) AUTO_INCREMENT,
	PRIMARY KEY (`sourceGroup`, `sourceEntry`, `elseGroup`)
) ENGINE=MYISAM;

INSERT INTO `temp_cond_vals` (`sourceGroup`, `sourceEntry`, `conditionValue1`, `conditionValue2`) SELECT `SourceGroup`, `SourceEntry`, `ConditionValue1`, `ConditionValue2` FROM `conditions` WHERE `ConditionTypeOrReference` = 18;

-- set correct else group
UPDATE `conditions` SET `ElseGroup` = (SELECT `elseGroup` FROM `temp_cond_vals` WHERE `sourceGroup` = `conditions`.`SourceGroup` AND `sourceEntry` = `conditions`.`SourceEntry`  AND `conditionValue1` = `conditions`.`ConditionValue1` AND `conditionValue2` = `conditions`.`ConditionValue2`)-1 WHERE `ConditionTypeOrReference` = 18;

-- old condition type 3 (caster's minion)
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`)
SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, 33, 0, 1, 3 FROM `conditions` WHERE `ConditionTypeOrReference` = 18 AND `ConditionValue1` = 3;

UPDATE `conditions` SET `ConditionTypeOrReference` = 31 WHERE `ConditionTypeOrReference` = 18 AND `ConditionValue1` = 3;

-- old condition type 2 (dead creature)
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `NegativeCondition`)
SELECT `SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, 36, 0, 0, 0, 1 FROM `conditions` WHERE `ConditionTypeOrReference` = 18 AND `ConditionValue1` = 2;

UPDATE `conditions` SET `ConditionTypeOrReference` = 31, `ConditionValue1` = 3 WHERE `ConditionTypeOrReference` = 18 AND `ConditionValue1` = 2;

-- old condition type 1 (creature)
UPDATE `conditions` SET `ConditionTypeOrReference` = 31, `ConditionValue1` = 3 WHERE `ConditionTypeOrReference` = 18 AND `ConditionValue1` = 1 AND `ConditionValue2`;

-- old condition type 1 (player)
UPDATE `conditions` SET `ConditionTypeOrReference` = 32, `ConditionValue1` = 0x90 WHERE `ConditionTypeOrReference` = 18 AND `ConditionValue1` = 1 AND NOT `ConditionValue2`;

-- old condition type 0 (gameobject)
UPDATE `conditions` SET `ConditionTypeOrReference` = 31, `ConditionValue1` = 5 WHERE `ConditionTypeOrReference` = 18 AND `ConditionValue1` = 0;

DROP TABLE `temp_convert_spells`;
DROP TABLE `temp_cond_vals`;UPDATE `creature_template` SET `lootid`=`entry`  WHERE `entry` IN (38032,37917,38016,38023,37214,38030,38006,37984);
DELETE FROM `creature_loot_template` WHERE `entry`IN (38032,37917,38016,38023,37214,38030,38006,37984);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(38032,1,100,1,0,-45009,1), -- Crown Sprayer
(37917,1,100,1,0,-45009,1), -- Crown Thug
(38016,1,100,1,0,-45009,1), -- Crown Agent
(38023,1,100,1,0,-45009,1), -- Crown Sprinkler
(37214,1,100,1,0,-45009,1), -- Crown Lackey
(38030,1,100,1,0,-45009,1), -- Crown Underling
(38006,1,100,1,0,-45009,1), -- Crown Hoodlum (level 1??)
(37984,1,100,1,0,-45009,1); -- Crown Duster  (level 1??)
-- Razormane Hunter Warrior's Boots 32% to 3.2%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=3.2996 WHERE `entry`=3265 AND `item`=2967;
-- Razormane Hunter Hunting Cloak 11% to 1.1%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=1.1855 WHERE `entry`=3265 AND `item`=4689;
-- Razormane Defender Pioneer Buckler 87% to 0.8%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.8789 WHERE `entry`=3266 AND `item`=7109;
-- Razormane Defender Spellbinder Belt 77% to 0.7%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.7717 WHERE `entry`=3266 AND `item`=4684;
-- Razormane Geomancer Simple Shoes 77% to 0.7%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.7791 WHERE `entry`=3269 AND `item`=9743;
-- Razormane Geomancer Veteran Bracers 73% to 0.7%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.7364 WHERE `entry`=3269 AND `item`=3213;
-- Venture Co. Supervisor Burnt Leather Belt 85% to 0.8%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.8511 WHERE `entry`=2979 AND `item`=4666;
-- Venture Co. Supervisor Warrior's Gloves 74% to 0.7%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.7433 WHERE `entry`=2979 AND `item`=2968;
-- Venture Co. Supervisor Pioneer Bracers 55% to 0.5%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.5593 WHERE `entry`=2979 AND `item`=6519;
-- Venture Co. Supervisor Journeyman's Gloves 43% to 0.4%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.4348 WHERE `entry`=2979 AND `item`=2960;
-- Venture Co. Worker Warrior's Bracers 72% to 0.7%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.7226 WHERE `entry`=2978 AND `item`=3214;
-- Venture Co. Worker Fine Scimitar 64% to 0.6%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.6492 WHERE `entry`=2978 AND `item`=4560;
-- Venture Co. Worker Warrior's Girdle 24% to 0.2%
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=0.2458 WHERE `entry`=2978 AND `item`=4659;
SET @ENTRY := 30409; -- Apprentice Osterkilgr
DELETE FROM `creature_loot_template` WHERE entry=@ENTRY;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Quest related Items
(@ENTRY,43089,-100,1,0,1,1), -- Vrykul Bones
(@ENTRY,42772,-100,1,0,1,1), -- Dr Terrible's "Building a Better Flesh Giant"
(@ENTRY,42422,-50,1,0,1,1), -- Jotunheim Cage Key
-- Other random stuff
(@ENTRY,33470,20,1,0,1,4), -- Frostweave Cloth
(@ENTRY,43851,20,1,0,1,1), -- Fur Clothing Scraps
(@ENTRY,43852,20,1,0,1,1), -- Thick Fur Clothing Scraps
-- References for world drops
(@ENTRY,1,10,1,0,-35063,1), -- Northrend Grey Items
(@ENTRY,2,5,1,0,-35066,1), -- Northrend Green Items
-- hatebook
(@ENTRY,45912,0.1,1,0,1,1); -- Book Glyph of Mastery (honestly screw that thing)
-- SAI for Lothos Riftwaker
SET @ENTRY=14387;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Lothos Riftwaker - On Gossip Option select - close gossip'),
(@ENTRY,0,1,0,61,0,100,0,5750,0,0,0,62,409,0,0,0,0,0,7,0,0,0,1096,-467,-104.6,3.64,'Lothos Riftwaker - On Gossip Option select - teleport player');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (5750);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(5750,0,0,'Teleport me to the Molten Core, Lothos.',1,1,0,0,0,0,'');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (5750);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,5750,0,0,0,8,7848,0,0,0,0,'','Show gossip option if player has quest 7848 completed');

-- SAI for Zamael Lunthistle
SET @ENTRY=8436;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,1285,0,0,0,26,3377,0,0,0,0,0,7,0,0,0,0,0,0,0,'Zamael Lunthistle - On Gossip Option select - quest credit'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Zamael Lunthistle - On Gossip Option select - close gossip');

DELETE FROM `gossip_menu` WHERE `entry`=1285 AND `text_id`=1920;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1285,1920);
DELETE FROM `gossip_menu` WHERE `entry`=1286 AND `text_id`=1922;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1286,1922);
DELETE FROM `gossip_menu` WHERE `entry`=1287 AND `text_id`=1921;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1287,1921);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1285,1286,1287);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(1285,0,0,'I wish to hear your tale.',1,1,1287,0,0,0,''),
(1286,0,0,'Let me think about it, Zamael.',1,1,1285,0,0,0,''),
(1287,0,0,'Please continue, Zamael.',1,1,1286,0,0,0,'');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (1285);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,1285,0,0,0,9,3377,0,0,0,0,'','Show gossip option if player has quest 3377 but not complete');
-- Gossip Update from Pitcrawler
-- Creature Gossip_menu_id Update from sniff
UPDATE `creature_template` SET `gossip_menu_id`=7692 WHERE `entry`=18424;
UPDATE `creature_template` SET `gossip_menu_id`=9033 WHERE `entry`=24838;
UPDATE `creature_template` SET `gossip_menu_id`=9038 WHERE `entry`=24833;
UPDATE `creature_template` SET `gossip_menu_id`=9066 WHERE `entry`=25011;
UPDATE `creature_template` SET `gossip_menu_id`=9067 WHERE `entry`=25015;
UPDATE `creature_template` SET `gossip_menu_id`=9068 WHERE `entry`=25009;
UPDATE `creature_template` SET `gossip_menu_id`=9069 WHERE `entry`=25017;
UPDATE `creature_template` SET `gossip_menu_id`=9070 WHERE `entry`=25018;
UPDATE `creature_template` SET `gossip_menu_id`=9071 WHERE `entry`=25016;
UPDATE `creature_template` SET `gossip_menu_id`=9072 WHERE `entry` IN (25013,25014);
UPDATE `creature_template` SET `gossip_menu_id`=9091 WHERE `entry`=25076;
UPDATE `creature_template` SET `gossip_menu_id`=9107 WHERE `entry`=24929;
UPDATE `creature_template` SET `gossip_menu_id`=9109 WHERE `entry`=24927;
UPDATE `creature_template` SET `gossip_menu_id`=9110 WHERE `entry`=24924;
UPDATE `creature_template` SET `gossip_menu_id`=9116 WHERE `entry`=25105;
UPDATE `creature_template` SET `gossip_menu_id`=9117 WHERE `entry`=25100;
UPDATE `creature_template` SET `gossip_menu_id`=9118 WHERE `entry`=25104;
UPDATE `creature_template` SET `gossip_menu_id`=9120 WHERE `entry`=25107;
UPDATE `creature_template` SET `gossip_menu_id`=9121 WHERE `entry` IN (25101,25102,25103);
UPDATE `creature_template` SET `gossip_menu_id`=9122 WHERE `entry`=25106;
UPDATE `creature_template` SET `gossip_menu_id`=9349 WHERE `entry`=26539;
UPDATE `creature_template` SET `gossip_menu_id`=10120 WHERE `entry` IN (31704,31705,31706,31720,31723,31724);
UPDATE `creature_template` SET `gossip_menu_id`=10259 WHERE `entry`=31716;

-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=7692 AND `text_id`=9383;
DELETE FROM `gossip_menu` WHERE `entry`=7696 AND `text_id`=9444;
DELETE FROM `gossip_menu` WHERE `entry`=7704 AND `text_id`=9425;
DELETE FROM `gossip_menu` WHERE `entry`=7726 AND `text_id`=9437;
DELETE FROM `gossip_menu` WHERE `entry`=7727 AND `text_id`=9438;
DELETE FROM `gossip_menu` WHERE `entry`=7728 AND `text_id`=9439;
DELETE FROM `gossip_menu` WHERE `entry`=9033 AND `text_id`=12211;
DELETE FROM `gossip_menu` WHERE `entry`=9038 AND `text_id`=12216;
DELETE FROM `gossip_menu` WHERE `entry`=9040 AND `text_id`=12217;
DELETE FROM `gossip_menu` WHERE `entry`=9041 AND `text_id`=12218;
DELETE FROM `gossip_menu` WHERE `entry`=9042 AND `text_id`=12219;
DELETE FROM `gossip_menu` WHERE `entry`=9043 AND `text_id`=12220;
DELETE FROM `gossip_menu` WHERE `entry`=9066 AND `text_id`=12262;
DELETE FROM `gossip_menu` WHERE `entry`=9067 AND `text_id`=12263;
DELETE FROM `gossip_menu` WHERE `entry`=9068 AND `text_id`=12264;
DELETE FROM `gossip_menu` WHERE `entry`=9069 AND `text_id`=12266;
DELETE FROM `gossip_menu` WHERE `entry`=9070 AND `text_id`=12267;
DELETE FROM `gossip_menu` WHERE `entry`=9091 AND `text_id`=12292;
DELETE FROM `gossip_menu` WHERE `entry`=9109 AND `text_id`=12317;
DELETE FROM `gossip_menu` WHERE `entry`=9110 AND `text_id`=12318;
DELETE FROM `gossip_menu` WHERE `entry`=9116 AND `text_id`=12327;
DELETE FROM `gossip_menu` WHERE `entry`=9117 AND `text_id`=12328;
DELETE FROM `gossip_menu` WHERE `entry`=9118 AND `text_id`=12329;
DELETE FROM `gossip_menu` WHERE `entry`=9120 AND `text_id`=12331;
DELETE FROM `gossip_menu` WHERE `entry`=9121 AND `text_id`=12332;
DELETE FROM `gossip_menu` WHERE `entry`=9122 AND `text_id`=12333;
DELETE FROM `gossip_menu` WHERE `entry`=9349 AND `text_id`=12649;
DELETE FROM `gossip_menu` WHERE `entry`=10120 AND `text_id`=14047;
DELETE FROM `gossip_menu` WHERE `entry`=10259 AND `text_id`=14248;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(7692,9383),
(7696,9444),
(7704,9425),
(7726,9437),
(7727,9438),
(7728,9439),
(9033,12211),
(9038,12216),
(9040,12217),
(9041,12218),
(9042,12219),
(9043,12220),
(9066,12262),
(9067,12263),
(9068,12264),
(9069,12266),
(9070,12267),
(9091,12292),
(9109,12317),
(9110,12318),
(9116,12327),
(9117,12328),
(9118,12329),
(9120,12331),
(9121,12332),
(9122,12333),
(9349,12649),
(10120,14047),
(10259,14248);

-- Insert npc_text from sniff
DELETE FROM `npc_text` WHERE `ID` IN (9437,9438,9439,12211,12266);
INSERT INTO `npc_text` (`ID`,`text0_0`,`text0_1`,`lang0`,`prob0`,`em0_0`,`em0_1`,`em0_2`,`em0_3`,`em0_4`,`em0_5`,`text1_0`,`text1_1`,`lang1`,`prob1`,`em1_0`,`em1_1`,`em1_2`,`em1_3`,`em1_4`,`em1_5`,`text2_0`,`text2_1`,`lang2`,`prob2`,`em2_0`,`em2_1`,`em2_2`,`em2_3`,`em2_4`,`em2_5`,`text3_0`,`text3_1`,`lang3`,`prob3`,`em3_0`,`em3_1`,`em3_2`,`em3_3`,`em3_4`,`em3_5`,`text4_0`,`text4_1`,`lang4`,`prob4`,`em4_0`,`em4_1`,`em4_2`,`em4_3`,`em4_4`,`em4_5`,`text5_0`,`text5_1`,`lang5`,`prob5`,`em5_0`,`em5_1`,`em5_2`,`em5_3`,`em5_4`,`em5_5`,`text6_0`,`text6_1`,`lang6`,`prob6`,`em6_0`,`em6_1`,`em6_2`,`em6_3`,`em6_4`,`em6_5`,`text7_0`,`text7_1`,`lang7`,`prob7`,`em7_0`,`em7_1`,`em7_2`,`em7_3`,`em7_4`,`em7_5`,`WDBVerified`) VALUES
(9437,'<Warden Treelos looks at you funny and then pauses a moment, clearly struggling.>$B$BZangarmarsh... too close to truth.$B$B<His face goes crazy again.>$B$BIs he still watching!?','',0,1,1000,1,1000,6,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(9438,'What''s that?  Zangarmarsh?  Why would I want to go there?$B$B<Treelos looks thoughtful.>$B$BYes, Zangarmarsh... we... the druids there are getting close to figuring out why the water level is dropping.  It''s destroying everything!$B$B<You can see the insanity creep back in behind the warden''s eyes.>$B$BDestroyed us all!  Bright light!  BOOM!!','',0,1,0,6,1000,1,1000,5,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(9439,'The Firewing blood elves... for some reason they want to stop us.$B$B<Warden Treelos visibly struggles to keep his wits about him for a few more seconds.>$B$BThey... they sent one of the Broken as ... as an emissary....  But he had a bomb!$B$BThey died, they all died!  They tried to run away!  The lucky ones didn''t even know.$B$BI must have been at the edge of the blast.  It was horr...IT''S WATCHING US AGAIN!$B$B<Treelos becomes despondent and looks straight through you as if you''re not there.>','',0,1,0,18,1000,18,1000,5,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(12211,'Fine day fer sailin'', innit?','',7,1,0,1,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340),
(12266,'','I''m almost jealous of our Mr. Wavesinger. Why, he may well be prettier than me!',7,1,0,1,3,11,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,'','',0,0,0,0,0,0,0,0,12340);

-- Creature Gossip_menu_option insert from sniff
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7692,7726,7727) AND `id`=0;
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9038,9040,9041,9042,9043) AND `id` IN (0,1,2);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=9038 AND `id`=3;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(7692,0,0,'Treelos, I know that the truth is somewhere inside you.  Tell me what it is.',1,1,7726,0,0,0,''),
(7726,0,0,'Keep it together man!  What about Zangarmarsh?',1,1,7727,0,0,0,''),
(7727,0,0,'I don''t have time for this!  Warden, what happened?!',1,1,7728,0,0,0,''),
(9038,0,0,'The Lady Mehley',1,1,9040,0,0,0,''),
(9038,1,0,'Food & Drink',1,1,9041,0,0,0,''),
(9038,2,0,'Goods & Gear',1,1,9042,0,0,0,''),
(9038,3,0,'"Stash?"',1,1,9043,0,0,0,''),
(9040,0,0,'Food & Drink',1,1,9041,0,0,0,''),
(9040,1,0,'Goods & Gear',1,1,9042,0,0,0,''),
(9040,2,0,'"Stash?',1,1,9043,0,0,0,''),
(9041,0,0,'The Lady Mehley',1,1,9040,0,0,0,''),
(9041,1,0,'Goods & Gear',1,1,9042,0,0,0,''),
(9041,2,0,'"Stash?',1,1,9043,0,0,0,''),
(9042,0,0,'The Lady Mehley',1,1,9040,0,0,0,''),
(9042,1,0,'Food & Drink',1,1,9041,0,0,0,''),
(9042,2,0,'"Stash?',1,1,9043,0,0,0,''),
(9043,0,0,'The Lady Mehley',1,1,9040,0,0,0,''),
(9043,1,0,'Food & Drink',1,1,9041,0,0,0,''),
(9043,2,0,'Goods & Gear',1,1,9042,0,0,0,'');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=7704 AND `SourceEntry`=9425;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=7696 AND `SourceEntry`=9444;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (7704,7692);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(14,7696,9444,0,0,8,10005,0,0,0,0,'','Show different gossip if player has rewarded quest 10005'),
(14,7696,9444,0,1,8,10006,0,0,0,0,'','Show different gossip if player has rewarded quest 10006'),
(14,7704,9425,0,0,8,9978,0,0,0,0,'','Show different gossip if player has rewarded quest 9978'),
(15,7704,0,0,0,9,9978,0,0,0,0,'','Show gossip option if player has quest 9978 but not complete'),
(15,7692,0,0,0,8,10006,0,0,0,0,'','Show gossip option if player has rewarded quest 10006'),
(15,7692,0,0,1,8,10005,0,0,0,0,'','Show gossip option if player has rewarded quest 10005');

-- Gossip Update from Malcrom
DELETE FROM `gossip_menu` WHERE `entry` IN (1042,1043,1044,1045,1046,1047,1048,1049,1050,1052,1053);  	
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(1042,1635),(1043,1640),(1044,1644),(1045,1643),(1045,1753),
(1046,1648),(1047,1754),(1048,1650),(1049,1755),
(1050,1651),(1050,1756),(1052,1652),(1053,1653);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1045,1047,1049,1050);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(1045,0,0,'Acquire Higher Level Access Card',1,1,0,0,0,0,''),
(1047,0,0,'Acquire Higher Level Access Card',1,1,0,0,0,0,''),
(1049,0,0,'Acquire Higher Level Access Card',1,1,0,0,0,0,''),
(1050,0,0,'Acquire high level data card.',1,1,0,0,0,0,'');

DELETE FROM `gossip_menu` WHERE `entry`=1080 AND `text_id`=1693;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1080,1693);
DELETE FROM `gossip_menu` WHERE `entry`=1100 AND `text_id`=1713;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1100,1713);
DELETE FROM `gossip_menu` WHERE `entry`=1143 AND `text_id`=1759;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1143,1759);
DELETE FROM `gossip_menu` WHERE `entry`=1161 AND `text_id`=1793;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1161,1793);
DELETE FROM `gossip_menu` WHERE `entry`=1162 AND `text_id`=1794;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1162,1794);
DELETE FROM `gossip_menu` WHERE `entry`=1201 AND `text_id`=1833;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1201,1833);
DELETE FROM `gossip_menu` WHERE `entry`=1281 AND `text_id`=1916;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1281,1916);
DELETE FROM `gossip_menu` WHERE `entry`=1282 AND `text_id`=1918;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1282,1918);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1282);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(1282,0,0,'Touch the Suntara stone and call forth Lathoric the Black and his guardian, Obsidion.',1,1,0,0,0,0,'');

DELETE FROM `gossip_menu` WHERE `entry`=1301 AND `text_id`=1933;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1301,1933);
DELETE FROM `gossip_menu` WHERE `entry`=1301 AND `text_id`=1934;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1301,1934);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1301);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(1301,0,0,'I wish to browse your wares.',3,128,0,0,0,0,'');

DELETE FROM `gossip_menu` WHERE `entry`=1302 AND `text_id`=1935;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1302,1935);
DELETE FROM `gossip_menu` WHERE `entry`=1321 AND `text_id`=1955;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1321,1955);
DELETE FROM `gossip_menu` WHERE `entry`=1322 AND `text_id`=1954;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1322,1954);
DELETE FROM `gossip_menu` WHERE `entry`=1362 AND `text_id`=1994;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (1362,1994);
-- SAI for Kalaran Windblade
SET @ENTRY=8479;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI
(@ENTRY,0,0,1,62,0,100,0,1321,0,0,0,26,3441,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kalaran Windblade - On Gossip Option select - quest credit'),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kalaran Windblade - On Gossip Option select - close gossip'),
(@ENTRY,0,2,3,62,0,100,0,1323,2,0,0,11,19797,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kalaran Windblade - On Gossip Option select - cast 19797'),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kalaran Windblade - On Gossip Option select - close gossip'),
(@ENTRY,0,4,0,62,0,100,0,1323,3,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kalaran Windblade - On Gossip Option select - run script'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kalaran Windblade - script - close gossip'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kalaran Windblade - script - remove npc flags'),
(@ENTRY*100,9,2,0,0,0,100,0,1000,1000,1000,1000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kalaran Windblade - script - say 0'),
(@ENTRY*100,9,3,0,0,0,100,0,1000,1000,1000,1000,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kalaran Windblade - script - emotestate usestanding'),
(@ENTRY*100,9,4,0,0,0,100,0,60000,60000,60000,60000,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kalaran Windblade - script - emotestate none'),
(@ENTRY*100,9,5,0,0,0,100,0,1000,1000,1000,1000,26,3453,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kalaran Windblade - script - give quest credit'),
(@ENTRY*100,9,6,0,0,0,100,0,1000,1000,1000,1000,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kalaran Windblade - script - add npc flags');
-- npc text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@ENTRY,0,0,'Please be patient, $N',12,0,100,0,0,0,'Kalaran Windblade');
-- Gossip options
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1321,1322,1323);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(1321,0,0,'Let me confer with my colleagues.',1,1,0,0,0,0,''),
(1322,0,0,'Continue please.',1,1,1321,0,0,0,''),
(1323,0,0,'Tell me what drives this vengeance?',1,1,1322,0,0,0,''),
(1323,2,0,'Kalaran, I have misplaced my torch. I require another.',1,1,0,0,0,0,''),
(1323,3,0,'Kalaran, please enchant the torch.',1,1,0,0,0,0,'');
-- Gossip option conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (1323);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,1323,0,0,0,9,3441,0,0,0,0,'','Show gossip option if player has quest 3441 but not complete'),
(15,1323,2,0,0,8,3454,0,0,0,0,'','Show gossip option if player has quest 3441 complete'),
(15,1323,2,0,0,2,10515,0,1,0,0,'','Show gossip option if player does not have item 10515'),
(15,1323,3,0,0,9,3453,0,0,0,0,'','Show gossip option if player has quest 3453 but not complete');
-- Invisible Stalker text for Wintergrasp from sniff
DELETE FROM `creature_text` WHERE `entry`=15214;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(15214,0,0, 'Let the battle begin!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,1,0, 'The Broken Temple siege workshop has been attacked by the Horde!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,2,0, 'The Broken Temple siege workshop has been captured by the Horde!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,3,0, 'The Broken Temple siege workshop has been attacked by the Alliance!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,4,0, 'The Broken Temple siege workshop has been captured by the Alliance!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,5,0, 'The Sunken Ring siege workshop has been attacked by the Horde!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,6,0, 'The Sunken Ring siege workshop has been captured by the Horde!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,7,0, 'The Sunken Ring siege workshop has been attacked by the Alliance!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,8,0, 'The Sunken Ring siege workshop has been captured by the Alliance!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,9,0, 'The Eastspark siege workshop has been attacked by the Horde!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,10,0, 'The Eastspark siege workshop has been captured by the Horde!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,11,0, 'The Eastspark siege workshop has been attacked by the Alliance!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,12,0, 'The Eastspark siege workshop has been captured by the Alliance!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,13,0, 'The Westspark siege workshop has been attacked by the Horde!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,14,0, 'The Westspark siege workshop has been captured by the Horde!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,15,0, 'The Westspark siege workshop has been attacked by the Alliance!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,16,0, 'The Westspark siege workshop has been captured by the Alliance!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,17,0, 'The north-western keep tower has been damaged!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,18,0, 'The north-western keep tower has been destroyed!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,19,0, 'The south-eastern keep tower has been damaged!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,20,0, 'The south-eastern keep tower has been destroyed!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,21,0, 'The western tower has been damaged!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,22,0, 'The western tower has been destroyed!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,23,0, 'The southern tower has been damaged!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,24,0, 'The southern tower has been destroyed!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,25,0, 'The eastern tower has been damaged!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,26,0, 'The eastern tower has been destroyed!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,27,0, 'The Horde has defended Wintergrasp Fortress!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,28,0, 'The Horde has captured Wintergrasp Fortress!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,29,0, 'The Alliance has defended Wintergrasp Fortress!',41,0,100,0,0,0, 'Invisible Stalker'),
(15214,30,0, 'The Alliance has captured Wintergrasp Fortress!',41,0,100,0,0,0, 'Invisible Stalker');-- Mounting Hodir's Helm (12987)

-- cleanup after Discovered
-- clean all related to npc Hodir's Helm KC Bunny
DELETE FROM `smart_scripts` WHERE `entryorguid`=30210 AND `source_type`=0;
DELETE FROM `creature` WHERE `id`=30210;
DELETE FROM `creature_text` WHERE `entry`=30210;

SET @HELM                     := 192080; -- Hodir's Helm
SET @TEMP                     := 300230; -- TEMP Northern Ice Spike
SET @BUNNY_TARGET             := 30215; -- Ice Spike Target Bunny
SET @GUID_GO                  := 270; -- set by TDB
SET @GUID_NPC                 := 40514; -- set by TDB
SET @SPELL_READ_PRONOUNCEMENT := 56278;
SET @QUEST                    := 12987;
SET @AREA                     := 4438; -- Dun Niffelem
SET @SPELL_AREA               := 56305; -- See Quest Invisibility 1 (Ice Spike Bunny)
SET @QUEST                    := 13006; -- Polishing the Helm

UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432|256,`InhabitType`=7,`flags_extra`=`flags_extra`|128 WHERE `entry`=@BUNNY_TARGET;

UPDATE `gameobject_template` SET `flags`=`flags`|32 WHERE `entry`=@HELM;
UPDATE `gameobject` SET `phaseMask`=4 WHERE `id`=@TEMP;

DELETE FROM `gameobject` WHERE `guid`=@GUID_GO;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@GUID_GO,@HELM,571,1,4,7390.143,-2725.382,874.2561,-3.089183,0,0,-0.9996567,0.02620165,600,255,1);

DELETE FROM `creature` WHERE `guid` BETWEEN @GUID_NPC+0 AND @GUID_NPC+1;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID_NPC+0,@BUNNY_TARGET,571,1,4,0,0,7386.51,-2726.489,872.5089,5.88176,300,0,0,4979,0,0,0,0,0),
(@GUID_NPC+1,@BUNNY_TARGET,571,1,4,0,0,7388.424,-2724.909,869.8643,0.5934119,300,0,0,4979,0,0,0,0,0);

DELETE FROM `creature_template_addon` WHERE `entry`=@BUNNY_TARGET;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@BUNNY_TARGET,0,0,65536,1,0, '61333 56304 61334'); -- Gigantic Helm Sparkle / Hodir's Helm Bunny: Invisibility / Extra Large Helm Sparkle

DELETE FROM `spell_script_names` WHERE `spell_id`=@SPELL_READ_PRONOUNCEMENT;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(@SPELL_READ_PRONOUNCEMENT, 'spell_q12987_read_pronouncement');

DELETE FROM `spell_area` WHERE `spell`=@SPELL_AREA;
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(@SPELL_AREA,@AREA,@QUEST,1,@QUEST,0,0,2,1);

-- relation for the daily quest that should be available after finishing Mounting Hodir's Helm

-- removing flag 4 or else player can't interract with Q giver
UPDATE `gameobject_template` SET `flags`=`flags`&~4 WHERE `entry`=@HELM;

DELETE FROM `gameobject_questrelation` WHERE `id`=@HELM;
INSERT INTO `gameobject_questrelation` (`id`,`quest`) VALUES
(@HELM,@QUEST);

DELETE FROM `gameobject_involvedrelation` WHERE `id`=@HELM;
INSERT INTO `gameobject_involvedrelation` (`id`,`quest`) VALUES
(@HELM,@QUEST);
UPDATE `conditions` SET `SourceTypeOrReferenceId`=13 WHERE `SourceTypeOrReferenceId`=17 AND `SourceGroup`=1;
UPDATE `conditions` SET `ConditionValue2`=1 WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=1323 AND `SourceEntry`=2 AND `ConditionTypeOrReference`=2;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=1 AND `SourceGroup`=17465 AND `SourceEntry`=22554 AND `ConditionTypeOrReference`=7;
DELETE FROM `spell_script_names` WHERE `spell_id` in (11885,11886,11887,11888,11889);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(11885,'spell_item_muisek_vessel'),
(11886,'spell_item_muisek_vessel'),
(11887,'spell_item_muisek_vessel'),
(11888,'spell_item_muisek_vessel'),
(11889,'spell_item_muisek_vessel');
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (28058,28074,28088,28064,28082,28096) AND `item`=49908;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Deathbringer's Cache
(28058,49908,20,1,0,1,1), -- Primordial Saronite 10H
(28074,49908,20,1,0,1,1), -- Primordial Saronite 25N
(28088,49908,20,1,0,1,1), -- Primordial Saronite 25H
-- Cache of the Dreamwalker
(28064,49908,20,1,0,1,1), -- Primordial Saronite 10H
(28082,49908,20,1,0,1,1), -- Primordial Saronite 25N
(28096,49908,20,1,0,1,1); -- Primordial Saronite 25H
-- Fix for quest "You've Really Done It This Time, Kul" 14096 Alliance / 14142 Horde
-- SAI for Black Cage
SET @ENTRY=195310;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=1);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Black Cage - On activate - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,6000,6000,6000,6000,32,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Black Cage - Script - set go state');
-- SAI for Captive Aspirant
SET @ENTRY=34716;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,66531,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captive Aspirant - On spellhit - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captive Aspirant - Script - Say random text'),
(@ENTRY*100,9,1,0,0,0,100,0,2000,2000,2000,2000,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,'Captive Aspirant - Script - Kill credit'),
(@ENTRY*100,9,2,0,0,0,100,0,2000,2000,2000,2000,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captive Aspirant - Script - move 10 yards'),
(@ENTRY*100,9,3,0,0,0,100,0,4000,4000,4000,4000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captive Aspirant - Script - despawn');
-- SAI for Kul the Reckless
SET @ENTRY=34956;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,66531,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kul the Reckless - On spellhit - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kul the Reckless - Script - Say random text'),
(@ENTRY*100,9,1,0,0,0,100,0,2000,2000,2000,2000,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,'Kul the Reckless - Script - Kill credit'),
(@ENTRY*100,9,2,0,0,0,100,0,2000,2000,2000,2000,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kul the Reckless - Script - move 10 yards'),
(@ENTRY*100,9,3,0,0,0,100,0,4000,4000,4000,4000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Kul the Reckless - Script - despawn');
-- Captive Aspirant & Kul the Reckless text from sniff
DELETE FROM `creature_text` WHERE `entry` IN (34716,34956);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(34716,0,0, 'Thank you, $c.',12,0,100,5,0,0, 'Captive Aspirant'),
(34716,0,1, 'They''re killing the prisoners! Hurry, help the others.',12,0,100,5,0,0, 'Captive Aspirant'),
(34716,0,2, 'I knew I shouldn''t have come to the tournament!',12,0,100,5,0,0, 'Captive Aspirant'),
(34716,0,3, 'I thought I was going to die in there!',12,0,100,5,0,0, 'Captive Aspirant'),
(34956,0,0, 'They were seconds from strapping me to one of those altars and sucking my soul out. Let''s get out of here!',12,0,100,5,0,0, 'Kul the Reckless');
-- Target conditions for spell 66531
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=66531;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,2,66531,0,0,31,3,34716,0,0,0,'','Spell 66531 targets npc 34716 or npc 34956'),
(13,2,66531,0,1,31,3,34956,0,0,0,'','Spell 66531 targets npc 34716 or npc 34956');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_collision_filter';
DELETE FROM `command` WHERE `name` IN ('group','group leader','group disband','group remove');
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('group', 3, 'Syntax: .group $subcommand\nType .group to see the list of possible subcommands or .help group $subcommand to see info on subcommands'),
('group leader', 3, 'Syntax: .group leader [$characterName]\n\nSets the given character as his group''s leader.'),
('group disband', 3, 'Syntax: .group disband [$characterName]\n\nDisbands the given character''s group.'),
('group remove', 3, 'Syntax: .group remove [$characterName]\n\nRemoves the given character from his group.');
DELETE FROM `spell_script_names` WHERE `spell_id` IN (61698);
INSERT INTO `spell_script_names`(`spell_id`,`ScriptName`) VALUES
(61698,'spell_gen_ds_flush_knockback');

DELETE FROM `spell_dbc` WHERE `id`=61698;
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
(61698,0,0,536871296,269058048,67108868,268894272,2048,0,1024,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,-1,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Flush - Knockback effect');

UPDATE `battleground_template` SET `HordeStartO`=3.14159 WHERE `id`=10;

UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry`=28567;
-- Fix for Quest: 12843 "They Took Our Men!" 
-- SAI for Rusty Cage
SET @ENTRY=191544;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=1);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,1,70,0,100,0,2,0,0,0,45,0,1,0,0,0,0,11,29466,5,0,0,0,0,0,'Rusty Cage - On activate - set data on Goblin Prisoner'),
(@ENTRY,1,1,0,61,0,100,0,0,0,0,0,33,29466,0,0,0,0,0,7,0,0,0,0,0,0,0,'Rusty Cage - On activate - quest credit');
-- SAI for Goblin Prisoner
SET @ENTRY=29466;
UPDATE `creature` SET `modelid`=0,`spawntimesecs`=120,`curhealth`=1 WHERE `id`=29466;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,32,0,0,0,0,0,0,15,191544,5,0,0,0,0,0,'Goblin Prisoner - On respawn - reset cage'),
(@ENTRY,0,1,0,38,0,100,0,0,1,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Goblin Prisoner - On dataset - Run Script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Goblin Prisoner - Script - set data 0'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,1000,1000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Goblin Prisoner - Script - Say random text'),
(@ENTRY*100,9,2,0,0,0,100,0,2000,2000,2000,2000,46,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Goblin Prisoner - Script - move 10 yards'),
(@ENTRY*100,9,3,0,0,0,100,0,4000,4000,4000,4000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Goblin Prisoner - Script - despawn');
-- Goblin Prisoner
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'I can''t believe it! I''m free to go!',12,0,100,5,0,0, 'Goblin Prisoner'),
(@ENTRY,0,1, 'I''m free? I''m free!',12,0,100,5,0,0, 'Goblin Prisoner'),
(@ENTRY,0,2, 'Time to hightail it! Thanks, friend!',12,0,100,5,0,0, 'Goblin Prisoner');
UPDATE `spell_area` SET `quest_start`=12987,`quest_end`=12987 WHERE `spell`=56305;

DELETE FROM `reference_loot_template` WHERE `entry` IN (28058,28074,28088,28064,28082,28096) AND `item`=49908; -- bad data
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (28058,28074,28088,28064,28082,28096) AND `item`=49908;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Deathbringer's Cache
(28058,49908,20,1,0,1,1), -- Primordial Saronite 10H
(28074,49908,20,1,0,1,1), -- Primordial Saronite 25N
(28088,49908,20,1,0,1,1), -- Primordial Saronite 25H
-- Cache of the Dreamwalker
(28064,49908,20,1,0,1,1), -- Primordial Saronite 10H
(28082,49908,20,1,0,1,1), -- Primordial Saronite 25N
(28096,49908,20,1,0,1,1); -- Primordial Saronite 25H
DELETE FROM `spell_script_names` WHERE `spell_id` IN (48018, 48020);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(48018,'spell_warl_demonic_circle_summon'), 
(48020,'spell_warl_demonic_circle_teleport');
-- Update gold drops in ICC bosses based on old.wowhead.com data
UPDATE `creature_template` SET `mingold`=250000,`maxgold`=300000 WHERE `entry` IN(36612,37957,37958,37959); -- Lord Marrowgar
UPDATE `creature_template` SET `mingold`=175000,`maxgold`=225000 WHERE `entry` IN (36626,37504,37505,37506); -- Festergut
UPDATE `creature_template` SET `mingold`=400000,`maxgold`=500000 WHERE `entry` IN (36627,38390,38549,38550); -- Rotface
UPDATE `creature_template` SET `mingold`=400000,`maxgold`=500000 WHERE `entry` IN (36678,38431,38585,38586); -- Professor Putricide
UPDATE `creature_template` SET `mingold`=300000,`maxgold`=350000 WHERE `entry` IN (37955,38434,38435,38436); -- Blood-Queen Lana'thel
UPDATE `creature_template` SET `mingold`=1330000,`maxgold`=1400000 WHERE `entry` IN (36853,38265,38266,38267); -- Sindragosa
UPDATE `creature_template` SET `mingold`=1300000,`maxgold`=1500000 WHERE `entry` IN (36597,39166,39167,39168); -- The Lich King
-- Delete unused creature_data rows
DELETE FROM `creature_addon` WHERE `guid` IN (131728,131282,131283,131284,131285,131286,131287,131288,131289,131290,131291,131292,131293,131294,131295,131296,131297,131298,131299,131300,131301,131302,131303,131304,131305,131306,131307,131308,131309,131310,131311,131312,131313,131314,131315,131316,131317,131318,131319,131320,131321,131322,131326,131327,131328,131350,131351,131352,131353,131354,131376,131377,131378,131379,131380,131392,131437,131458,131631,131632,131633,131634,131635,131636,131706,131727,13128,131729,131730,131731);

-- Replace Wintergrasp spawns with properly phased spawns
SET @GUID := 88310;
DELETE FROM `creature` WHERE `id` IN (31841,31842,30400,30499,30489,30869,31036,31051,31052,31054,31108,31109,31153,39172,30870,31053,31091,31101,31102,31106,31107,31151,32294,39173,32296,30488);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
-- Taunka Spirit Guide (Horde)
(@GUID+0,31841,571,1,0x00000010,0,0,4318.436,2408.06738,392.675751,6.23082542,120,0,0,1,0,0), -- Eastspark Workshop
(@GUID+1,31841,571,1,0x00000010,0,0,4336.25439,3235.51978,390.334,0.628318548,120,0,0,1,0,0), -- Westspark Workshop
(@GUID+2,31841,571,1,0x00000010,0,0,5104.753,2300.9458,368.568054,0.7330383,120,0,0,1,0,0), -- The Sunken Ring
(@GUID+3,31841,571,1,0x00000010,0,0,5103.133,3462.128,368.568054,5.270895,120,0,0,1,0,0), -- The Chilled Quagmire "Outside broker Temple"
(@GUID+4,31841,571,1,0x00000040,0,0,5537.482,2898.90674,517.2589,4.86946869,120,0,0,1,0,0), -- Fortress
(@GUID+5,31841,571,1,0x00000001,0,0,5031.84131,3710.74878,372.4835,0,120,5,0,1,0,0), -- Horde Landing Zone
-- Dwarven Spirit Guide (Alliance)
(@GUID+6,31842,571,1,0x00000020,0,0,4318.436,2408.06738,392.675751,6.23082542,120,0,0,1,0,0), -- Eastspark Workshop
(@GUID+7,31842,571,1,0x00000020,0,0,4336.25439,3235.51978,390.334,0.628318548,120,0,0,1,0,0), -- Westspark Workshop
(@GUID+8,31842,571,1,0x00000020,0,0,5104.753,2300.9458,368.568054,0.7330383,120,0,0,1,0,0), -- The Sunken Ring
(@GUID+9,31842,571,1,0x00000020,0,0,5103.133,3462.128,368.568054,5.270895,120,0,0,1,0,0), -- The Chilled Quagmire "Outside The Broken Temple"
(@GUID+10,31842,571,1,0x00000080,0,0,5537.482,2898.90674,517.2589,4.86946869,120,0,0,1,0,0), -- Fortress
(@GUID+11,31842,571,1,0x00000001,0,0,5140.7876,2179.12451,390.9512,1.97222209,120,0,0,1,0,0), -- Aliance Landing Zone
-- Goblin Mechanic <Demolisher Engineer> (Horde)
(@GUID+12,30400,571,1,0x00000010,0,0,4964.89,3383.06,382.911,6.12611,180,0,0,1,0,0), -- The Broken Temple
(@GUID+13,30400,571,1,0x00000010,0,0,4939.76,2389.06,326.153,3.26377,180,0,0,1,0,0), -- The Sunken Ring
(@GUID+14,30400,571,1,0x00000010,0,0,4357.67,2357.99,382.007,1.67552,180,0,0,1,0,0), -- Eastspark Workshop
(@GUID+15,30400,571,1,0x00000010,0,0,4354.15,3312.82,378.046,1.67552,180,0,0,1,0,0), -- Westspark Workshop
(@GUID+16,30400,571,1,0x00000040,0,0,5391.61,2707.72,415.051,4.55531,180,0,0,1,0,0), -- Wintergrasp Fortress
(@GUID+17,30400,571,1,0x00000040,0,0,5392.91,2975.26,415.223,4.55531,180,0,0,1,0,0), -- Wintergrasp Fortress
-- Gnomish Engineer <Demolisher Engineer> (Alliance)
(@GUID+18,30499,571,1,0x00000020,0,0,4964.89,3383.06,382.911,6.12611,180,0,0,1,0,0), -- The Broken Temple
(@GUID+19,30499,571,1,0x00000020,0,0,4939.76,2389.06,326.153,3.26377,180,0,0,1,0,0), -- The Sunken Ring
(@GUID+20,30499,571,1,0x00000020,0,0,4357.67,2357.99,382.007,1.67552,180,0,0,1,0,0), -- Eastspark Workshop
(@GUID+21,30499,571,1,0x00000020,0,0,4354.15,3312.82,378.046,1.67552,180,0,0,1,0,0), -- Westspark Workshop
(@GUID+22,30499,571,1,0x00000080,0,0,5391.61,2707.72,415.051,4.55531,180,0,0,1,0,0), -- Wintergrasp Fortress
(@GUID+23,30499,571,1,0x00000080,0,0,5392.91,2975.26,415.223,4.55531,180,0,0,1,0,0), -- Wintergrasp Fortress
-- Alliance NPC's
(@GUID+24,30489,571,1,0x00000080,0,0,5369.973,2874.83081,409.3225,3.12413931,120,0,0,1,0,0), -- Morgan Day <Jewelcrafter>
(@GUID+25,30869,571,1,0x00000001,0,0,5102.75049,2187.82837,365.707855,3.996804,120,0,0,1,0,0), -- Arzo Safeflight <Flight Master>
(@GUID+26,31036,571,1,0x00000040,0,0,5078.281,2183.704,365.028564,1.46607661,120,0,0,1,0,0), -- Commander Zanneth
(@GUID+27,31036,571,1,0x00000080,0,0,5358.641,2841.76416,409.3225,1.13262534,120,0,0,1,0,0),
(@GUID+28,31051,571,1,0x00000040,0,0,5081.697,2173.73,365.8777,0.8552113,120,0,0,1,0,0), -- Sorceress Kaylana <Enchantress>
(@GUID+29,31051,571,1,0x00000080,0,0,5296.869,2887.67114,409.274658,5.60250664,120,0,0,1,0,0),
(@GUID+30,31052,571,1,0x00000040,0,0,5100.06543,2168.89,365.7788,1.97222209,120,0,0,1,0,0), -- Bowyer Randolph
(@GUID+31,31052,571,1,0x00000080,0,0,5302.57373,2750.40332,409.274658,5.46288061,120,0,0,1,0,0),
(@GUID+32,31054,571,1,0x00000040,0,0,5088.611,2167.66235,365.688751,0.6806784,120,0,0,1,0,0), -- Anchorite Tessa
(@GUID+33,31054,571,1,0x00000080,0,0,5372.05859,3028.33618,409.206024,0.012565271,120,0,0,1,0,0),
(@GUID+34,31108,571,1,0x00000040,0,0,5095.673,2193.284,365.9236,4.939282,120,0,0,1,0,0), -- Siege Master Stouthandle
(@GUID+35,31108,571,1,0x00000080,0,0,5298.267,2924.97632,409.274658,0.9075712,120,0,0,1,0,0),
(@GUID+36,31109,571,1,0x00000040,0,0,5080.403,2199.00244,359.4894,2.96705961,120,0,0,1,0,0), -- Senior Demolitionist Legoso
(@GUID+37,31109,571,1,0x00000080,0,0,5228.2915,2809.888,409.274658,3.19395256,120,0,0,1,0,0),
(@GUID+38,31153,571,1,0x00000040,0,0,5088.48633,2188.17871,365.646973,5.253441,120,0,0,1,0,0), -- Tactical Officer Ahbramis
(@GUID+39,31153,571,1,0x00000080,0,0,5364.784,2835.135,409.3225,3.12413931,120,0,0,1,0,0),
(@GUID+40,32294,571,1,0x00000080,0,0,5374.568,2790.784,409.3225,2.72271371,120,0,0,1,0,0), -- Knight Dameron <Wintergrasp Quartermaster>
(@GUID+41,39172,571,1,0x00000080,0,0,5372.672,2786.74048,409.4423,2.80998015,120,0,0,1,0,0), -- Marshal Magruder <Wintergrasp Quartermaster>
(@GUID+42,30488,571,1,0x00000080,0,0,5370.428,2814.274,409.3225,3.054326,120,0,0,1,0,0), -- Travis Day <Legacy Weaponsmith>
-- Horde NPC's
(@GUID+43,30870,571,1,0x00000001,0,0,5023.4043,3686.03345,363.1192,5.131268,120,0,0,1,0,0), -- Herzo Safeflight <Flight Master>
(@GUID+44,31053,571,1,0x00000040,0,0,5379.875,3027.43359,409.206024,0,120,0,0,1,0,0), -- Primalist Mulfort
(@GUID+45,31053,571,1,0x00000080,0,0,5034.703125,3666.703125,363.273865,4.310963,120,0,0,1,0,0),
(@GUID+46,31091,571,1,0x00000040,0,0,5347.7915,2837.38574,409.3466,2.62603331,120,0,0,1,0,0), -- Commander Dardosh
(@GUID+47,31091,571,1,0x00000080,0,0,5018.662109,3672.279541,362.862885,2.209141,120,0,0,1,0,0),
(@GUID+48,31101,571,1,0x00000040,0,0,5296.564,2789.87378,409.274658,0.7330383,120,0,0,1,0,0), -- Hoodoo Master Fu'jin <Master Hexxer>
(@GUID+49,31101,571,1,0x00000080,0,0,5014.065430,3678.846436,362.995575,5.096361,120,0,0,1,0,0),
(@GUID+50,31102,571,1,0x00000040,0,0,5295.455,2732.87549,409.274658,4.7211113,120,0,0,1,0,0), -- Vieron Blazefeather
(@GUID+51,31102,571,1,0x00000080,0,0,5031.676270,3655.820801,362.234558,5.131268,120,0,0,1,0,0),
(@GUID+52,31106,571,1,0x00000040,0,0,5295.56348,2926.67188,409.274658,0.87266463,120,0,0,1,0,0), -- Siegesmith Stronghoof
(@GUID+53,31106,571,1,0x00000080,0,0,5037.602051,3675.459717,363.147888,3.176499,120,0,0,1,0,0),
(@GUID+54,31107,571,1,0x00000040,0,0,5230.09033,2876.635,409.316254,-2.19854617,120,0,0,1,0,0), -- Lieutenant Murp
(@GUID+55,31107,571,1,0x00000080,0,0,5004.455078,3661.089111,361.335785,3.979351,120,0,0,1,0,0),
(@GUID+56,31151,571,1,0x00000040,0,0,5363.2876,2834.52954,409.3606,2.76273036,120,0,0,1,0,0), -- Tactical Officer Kilrath
(@GUID+57,31151,571,1,0x00000080,0,0,5034.698242,3683.268799,363.129120,4.310963,120,0,0,1,0,0),
(@GUID+58,32296,571,1,0x00000040,0,0,5374.568,2790.784,409.3225,2.60054,120,0,0,1,0,0), -- Stone Guard Mukar <Wintergrasp Quartermaster>
-- Missing noc in fortress
(@GUID+60,39173,571,1,0x00000040,0,0,5372.672,2786.74048,409.4423,2.80998015,120,0,0,1,0,0); -- Champion Ros'slai <Wintergrasp Quartermaster>

-- corrects previously inserted creature
UPDATE `creature` SET `spawndist`=0 WHERE `guid`=88315;

-- Pathing for Anchorite Tessa Entry: 31054
SET @NPC := @GUID+33;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5382.507,3028.468,409.206,0,0,0,100,0),
(@PATH,2,5392.744,3028.737,409.206,0,0,0,100,0),
(@PATH,3,5382.507,3028.468,409.206,0,0,0,100,0),
(@PATH,4,5371.491,3028.329,409.206,0,0,0,100,0),
(@PATH,5,5360.032,3028.516,409.3161,0,0,0,100,0),
(@PATH,6,5371.491,3028.329,409.206,0,0,0,100,0);

-- Pathing for Commander Zanneth Entry: 31036
SET @NPC := @GUID+27;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=5358.854,`position_y`=2859.232,`position_z`=409.5425 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,14337, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5359.788,2846.359,409.3642,0,0,0,100,0),
(@PATH,2,5359.187,2839.211,409.3642,0,0,0,100,0),
(@PATH,3,5360.083,2823.116,409.5381,0,0,0,100,0),
(@PATH,4,5359.187,2839.211,409.3642,0,0,0,100,0),
(@PATH,5,5359.788,2846.359,409.3642,0,0,0,100,0),
(@PATH,6,5358.854,2859.232,409.5425,0,0,0,100,0);

-- Pathing for Commander Dardosh Entry: 31091
SET @NPC := @GUID+46;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `MovementType`=2,`position_x`=5359.546,`position_y`=2858.049,`position_z`=409.3642 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5359.202,2843.208,409.3642,0,0,0,100,0),
(@PATH,2,5358.997,2827.974,409.3639,0,0,0,100,0),
(@PATH,3,5359.202,2843.208,409.3642,0,0,0,100,0),
(@PATH,4,5359.546,2858.049,409.3642,0,0,0,100,0);

-- Pathing for Commander Dardosh Entry: 31091
SET @NPC := @GUID+47;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `MovementType`=2,`position_x`=5018.411133,`position_y`=3672.615967,`position_z`=362.863525 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5022.827637,3666.665771,362.205750,0,0,0,100,0),
(@PATH,2,5024.270508,3658.739258,361.705750,0,0,0,100,0),
(@PATH,3,5022.827637,3666.665771,362.205750,0,0,0,100,0),
(@PATH,4,5018.411133,3672.615967,362.863525,0,0,0,100,0);

-- Pathing for Primalist Mulfort Entry: 31053
SET @NPC := @GUID+44;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,257,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5390.624,3027.994,409.206,0,0,0,100,0),
(@PATH,2,5379.875,3027.434,409.206,0,0,0,100,0),
(@PATH,3,5371.404,3026.511,409.206,0,0,0,100,0),
(@PATH,4,5379.875,3027.434,409.206,0,0,0,100,0);

-- Pathing for Vieron Blazefeather Entry: 31102
SET @NPC := @GUID+50;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `MovementType`=2,`position_x`=5296.644,`position_y`=2731.107,`position_z`=409.3163 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,5295.544,2722.631,409.3163,0,0,0,100,0),
(@PATH,2,5296.644,2731.107,409.3163,0,0,0,100,0),
(@PATH,3,5297.874,2738.155,409.3163,0,0,0,100,0),
(@PATH,4,5305.192,2746.161,409.3061,0,0,0,100,0),
(@PATH,5,5297.874,2738.155,409.3163,0,0,0,100,0),
(@PATH,6,5296.644,2731.107,409.3163,0,0,0,100,0);

-- Guards "Alliance" (Valiance Expedition Champion)
SET @GUID := 88371;
DELETE FROM `creature` WHERE `id`=30740;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
-- Fortress
(@GUID+0,30740,571,1,0x00000080,0,0,5150.26855,2786.02173,409.5469,3.22885919,120,0,0,1,0,0),
(@GUID+1,30740,571,1,0x00000080,0,0,5150.657,2777.9502,409.4053,2.94960642,120,0,0,1,0,0),
(@GUID+2,30740,571,1,0x00000080,0,0,5193.632,2734.172,409.272552,4.694936,120,0,0,1,0,0),
(@GUID+3,30740,571,1,0x00000080,0,0,5200.497,2733.88843,409.272552,4.677482,120,0,0,1,0,0),
(@GUID+4,30740,571,1,0x00000080,0,0,5264.64648,2670.1936,409.1819,3.07177949,120,0,0,1,0,0),
(@GUID+5,30740,571,1,0x00000080,0,0,5265.30566,2663.15381,409.1819,3.12413931,120,0,0,1,0,0),
(@GUID+6,30740,571,1,0x00000080,0,0,5307.02051,2613.89771,409.172363,4.694936,120,0,0,1,0,0),
(@GUID+7,30740,571,1,0x00000080,0,0,5311.133,3061.04248,408.809937,1.50098312,120,0,0,1,0,0),
(@GUID+8,30740,571,1,0x00000080,0,0,5315.87354,2614.21924,408.972748,4.677482,120,0,0,1,0,0),
(@GUID+9,30740,571,1,0x00000080,0,0,5318.09,3060.634,408.882782,1.62315619,120,0,0,1,0,0),
(@GUID+10,30740,571,1,0x00000080,0,0,5149.395,2897.044,409.304443,3.03687286,120,0,0,1,0,0),
(@GUID+11,30740,571,1,0x00000080,0,0,5149.51953,2904.19336,409.276062,3.07177949,120,0,0,1,0,0),
(@GUID+12,30740,571,1,0x00000080,0,0,5192.79248,2948.454,409.2746,1.50098312,120,0,0,1,0,0),
(@GUID+13,30740,571,1,0x00000080,0,0,5201.645,2948.77612,409.2746,1.62315619,120,0,0,1,0,0),
(@GUID+14,30740,571,1,0x00000080,0,0,5265.28,3010.10083,408.895782,2.82743335,120,0,0,1,0,0),
(@GUID+15,30740,571,1,0x00000080,0,0,5265.47559,3017.39941,408.582977,3.07177949,120,0,0,1,0,0),
(@GUID+16,30740,571,1,0x00000080,0,0,5367.91455,2826.52026,409.3225,3.33357882,120,0,0,1,0,0),
(@GUID+17,30740,571,1,0x00000080,0,0,5368.71338,2856.36035,409.3225,2.94960642,120,0,0,1,0,0),
(@GUID+18,30740,571,1,0x00000080,0,0,5388.56,2834.76782,418.7585,3.07177949,120,0,0,1,0,0),
(@GUID+19,30740,571,1,0x00000080,0,0,5389.272,2847.36816,418.7585,3.106686,120,0,0,1,0,0),
(@GUID+20,30740,571,1,0x00000080,0,0,4684.475,2414.28979,369.9621,-2.85779858,120,0,0,1,0,0),
(@GUID+21,30740,571,1,0x00000080,0,0,4692.75635,2392.88574,369.0177,-2.82921553,120,0,0,1,0,0),
(@GUID+22,30740,571,1,0x00000080,0,0,5327.264648,2659.455322,409.178711,3.069901,120,0,0,1,0,0), -- F1307814000A2DAD path
(@GUID+23,30740,571,1,0x00000080,0,0,5154.225586,2833.824219,409.262451,3.124139,120,0,0,1,0,0),
(@GUID+24,30740,571,1,0x00000080,0,0,5154.119629,2847.892822,409.247559,3.071779,120,0,0,1,0,0),
(@GUID+25,30740,571,1,0x00000080,0,0,5179.111328,2837.129639,409.274658,3.211406,120,0,0,1,0,0),
(@GUID+26,30740,571,1,0x00000080,0,0,5179.666504,2846.597900,409.274658,3.089233,120,0,0,1,0,0),
(@GUID+27,30740,571,1,0x00000080,0,0,5270.163086,2833.479248,409.274658,3.124139,120,0,0,1,0,0),
(@GUID+28,30740,571,1,0x00000080,0,0,5270.057129,2847.547607,409.274658,3.071779,120,0,0,1,0,0),
(@GUID+29,30740,571,1,0x00000080,0,0,5307.750000,3008.872559,409.193024,4.781681,120,0,0,1,0,0), -- F1307814000A43AE path
(@GUID+30,30740,571,1,0x00000080,0,0,5335.117188,2916.802002,409.443756,1.500983,120,0,0,1,0,0),
(@GUID+31,30740,571,1,0x00000080,0,0,5350.681152,2917.011719,409.274658,1.466077,120,0,0,1,0,0),
(@GUID+32,30740,571,1,0x00000080,0,0,5335.306152,2764.110352,409.274567,4.834562,120,0,0,1,0,0),
(@GUID+33,30740,571,1,0x00000080,0,0,5349.811523,2763.634766,409.333374,4.660029,120,0,0,1,0,0),
-- Eastspark Workshop
(@GUID+34,30740,571,1,0x00000080,0,0,4349.537,2411.25781,374.743317,2.05948853,120,0,0,1,0,0),
(@GUID+35,30740,571,1,0x00000080,0,0,4388.13135,2411.97827,374.743317,1.6406095,120,0,0,1,0,0),
(@GUID+36,30740,571,1,0x00000080,0,0,4391.6665,2300.60913,374.7433,4.92182827,120,0,0,1,0,0),
(@GUID+37,30740,571,1,0x00000080,0,0,4413.42969,2393.44946,376.3599,1.06465089,120,0,0,1,0,0),
(@GUID+38,30740,571,1,0x00000080,0,0,4417.92,2331.237,370.9189,5.846853,120,0,0,1,0,0),
(@GUID+39,30740,571,1,0x00000080,0,0,4349.11768,2299.27954,374.7433,4.904375,120,0,0,1,0,0),
(@GUID+40,30740,571,1,0x00000080,0,0,4418.608,2355.28735,372.4907,6.02138567,120,0,0,1,0,0);

-- banners
SET @OGUID := 75939;
DELETE FROM `gameobject` WHERE `id` IN (192254,192255,192269,192284,192285,192286,192287,192292,192299,192304,192305,192306,192307,192308,192309,192310,192312,192313,192314,192316,192317,192318,192319,192320,192321,
                                        192322,192323,192324,192325,192326,192327,192328,192329,192330,192331,192332,192333,192334,192335,192336,192338,192339,192349,192350,192351,192352,192353,192354,192355,192356,
										192357,192358,192359,192360,192361,192362,192363,192364,192366,192367,192368,192369,192370,192371,192372,192373,192374,192375,192376,192377,192378,192379,192487,192488,192501,
										192502);
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID AND @OGUID+115;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
-- Fortress Banners "Alliance"
(@OGUID+0,192286,571,1,128,5371.44873,2820.79346,409.426575,3.124123,0,0,0,0,120,0,1),
(@OGUID+1,192287,571,1,128,5372.42432,2862.47925,409.3659,3.14159274,0,0,0,0,120,0,1),
(@OGUID+2,192292,571,1,128,5154.35059,2862.08423,445.0105,3.14159274,0,0,0,0,120,0,1),
(@OGUID+3,192299,571,1,128,5155.21631,2820.63013,444.9789,-3.115388,0,0,0,0,120,0,1),
(@OGUID+4,192304,571,1,128,5398.03564,2873.013,455.203552,3.132858,0,0,0,0,120,0,1),
(@OGUID+5,192305,571,1,128,5397.31348,2809.264,455.101624,3.132858,0,0,0,0,120,0,1),
(@OGUID+6,192306,571,1,128,5270.55469,2861.68237,444.917236,-3.124123,0,0,0,0,120,0,1),
(@OGUID+7,192307,571,1,128,5271.16064,2820.10864,445.109,-3.132858,0,0,0,0,120,0,1),
(@OGUID+8,192308,571,1,128,5235.12744,2942.12329,444.2792,1.58824873,0,0,0,0,120,0,1),
(@OGUID+9,192309,571,1,128,5272.549,2976.54175,444.493,3.132858,0,0,0,0,120,0,1),
(@OGUID+10,192310,571,1,128,5352.19775,3055.0166,444.5646,1.57952213,0,0,0,0,120,0,1),
(@OGUID+11,192312,571,1,128,5236.315,2739.21533,444.992828,-1.60570168,0,0,0,0,120,0,1),
(@OGUID+12,192313,571,1,128,5271.634,2704.829,445.182617,-3.124123,0,0,0,0,120,0,1),
(@OGUID+13,192314,571,1,128,5350.905,2622.48,444.649323,-1.56206989,0,0,0,0,120,0,1),
(@OGUID+14,192316,571,1,128,5322.013,2781.13281,435.6727,1.57952213,0,0,0,0,120,0,1),
(@OGUID+15,192317,571,1,128,5363.387,2781.27856,435.634125,1.58824873,0,0,0,0,120,0,1),
(@OGUID+16,192318,571,1,128,5322.24854,2898.94629,435.642975,-1.57952213,0,0,0,0,120,0,1),
(@OGUID+17,192319,571,1,128,5364.30371,2899.216,435.690826,-1.55334139,0,0,0,0,120,0,1),
(@OGUID+18,192320,571,1,128,5289.048,2820.22656,435.6738,0,0,0,0,0,120,0,1),
(@OGUID+19,192321,571,1,128,5288.847,2861.82128,435.590485,0.0261791088,0,0,0,0,120,0,1),
(@OGUID+20,192322,571,1,128,5322.89258,2917.14233,445.1543,1.56206989,0,0,0,0,120,0,1),
(@OGUID+21,192323,571,1,128,5364.283,2917.264,445.332184,1.58824611,0,0,0,0,120,0,1),
(@OGUID+22,192324,571,1,128,5290.514,2976.56177,435.087463,0.008724241,0,0,0,0,120,0,1),
(@OGUID+23,192325,571,1,128,5352.37744,3036.95483,435.111053,-1.56206989,0,0,0,0,120,0,1),
(@OGUID+24,192326,571,1,128,5392.64063,3036.967,433.648682,-1.51843357,0,0,0,0,120,0,1),
(@OGUID+25,192327,571,1,128,5172.336,2862.57544,435.65802,0,0,0,0,0,120,0,1),
(@OGUID+26,192328,571,1,128,5173.12842,2820.95654,435.657623,0.0261791088,0,0,0,0,120,0,1),
(@OGUID+27,192329,571,1,128,5235.32227,2924.31079,434.8981,-1.56206989,0,0,0,0,120,0,1),
(@OGUID+28,192330,571,1,128,5237.02344,2757.35669,435.625641,1.55334139,0,0,0,0,120,0,1),
(@OGUID+29,192331,571,1,128,5289.78125,2704.62158,435.714325,0.008724241,0,0,0,0,120,0,1),
(@OGUID+30,192332,571,1,128,5350.93945,2640.43066,435.2642,1.56206989,0,0,0,0,120,0,1),
(@OGUID+31,192333,571,1,128,5392.28027,2639.84033,435.207916,1.52716041,0,0,0,0,120,0,1),
(@OGUID+32,192334,571,1,128,5322.17041,2763.20142,444.9744,-1.56206715,0,0,0,0,120,0,1),
(@OGUID+33,192335,571,1,128,5363.71631,2763.24731,445.023132,-1.54461551,0,0,0,0,120,0,1),
(@OGUID+34,192487,571,1,128,5145.11133,2934.948,433.254852,-3.10665226,0,0,0,0,120,0,1),
(@OGUID+35,192487,571,1,128,5146.04443,2747.30249,433.527039,3.124123,0,0,0,0,120,0,1),
(@OGUID+36,192487,571,1,128,5158.71,2882.90161,431.27417,3.14159274,0,0,0,0,120,0,1),
(@OGUID+37,192487,571,1,128,5160.28369,2798.59766,430.6037,-3.124123,0,0,0,0,120,0,1),
(@OGUID+38,192487,571,1,128,5162.90674,2952.59766,433.368,1.57079577,0,0,0,0,120,0,1),
(@OGUID+39,192487,571,1,128,5163.85,2729.677,433.327545,-1.60570168,0,0,0,0,120,0,1),
(@OGUID+40,192487,571,1,128,5260.82471,2631.81763,433.181061,3.124123,0,0,0,0,120,0,1),
(@OGUID+41,192487,571,1,128,5262.544,3047.93018,431.96524,3.124123,0,0,0,0,120,0,1),
(@OGUID+42,192487,571,1,128,5278.43066,2613.83276,433.294434,-1.62315571,0,0,0,0,120,0,1),
(@OGUID+43,192487,571,1,128,5280.894,3064.95386,431.9758,1.55334139,0,0,0,0,120,0,1),
-- Fortress Banners "Horde"
(@OGUID+44,192269,571,1,64,4526.46,2810.18,391.2,-2.99322,0,0,0,1,180,0,1),
(@OGUID+45,192284,571,1,64,5372.48,2862.5,409.049,3.14159,0,0,0,1,180,0,1),
(@OGUID+46,192285,571,1,64,5371.49,2820.8,409.177,3.14159,0,0,0,1,180,0,1),
(@OGUID+47,192338,571,1,64,5397.76,2873.08,455.461,3.10665,0,0,0,1,180,0,1),
(@OGUID+48,192339,571,1,64,5397.39,2809.33,455.344,3.10665,0,0,0,1,180,0,1),
(@OGUID+49,192349,571,1,64,5155.31,2820.74,444.979,-3.13286,0,0,0,1,180,0,1),
(@OGUID+50,192350,571,1,64,5270.69,2861.78,445.058,-3.11539,0,0,0,1,180,0,1),
(@OGUID+51,192351,571,1,64,5271.28,2820.16,445.201,-3.13286,0,0,0,1,180,0,1),
(@OGUID+52,192352,571,1,64,5173.02,2820.93,435.72,0.017452,0,0,0,1,180,0,1),
(@OGUID+53,192353,571,1,64,5172.11,2862.57,435.721,0.017452,0,0,0,1,180,0,1),
(@OGUID+54,192354,571,1,64,5288.41,2861.79,435.721,0.017452,0,0,0,1,180,0,1),
(@OGUID+55,192355,571,1,64,5288.92,2820.22,435.721,0.017452,0,0,0,1,180,0,1),
(@OGUID+56,192356,571,1,64,5237.07,2757.03,435.796,1.51844,0,0,0,1,180,0,1),
(@OGUID+57,192357,571,1,64,5235.34,2924.34,435.04,-1.5708,0,0,0,1,180,0,1),
(@OGUID+58,192358,571,1,64,5322.23,2899.43,435.808,-1.58825,0,0,0,1,180,0,1),
(@OGUID+59,192359,571,1,64,5364.35,2899.4,435.839,-1.5708,0,0,0,1,180,0,1),
(@OGUID+60,192360,571,1,64,5352.37,3037.09,435.252,-1.5708,0,0,0,1,180,0,1),
(@OGUID+61,192361,571,1,64,5392.65,3037.11,433.713,-1.52716,0,0,0,1,180,0,1),
(@OGUID+62,192362,571,1,64,5322.12,2763.61,444.974,-1.55334,0,0,0,1,180,0,1),
(@OGUID+63,192363,571,1,64,5363.61,2763.39,445.024,-1.54462,0,0,0,1,180,0,1),
(@OGUID+64,192364,571,1,64,5350.88,2622.72,444.686,-1.5708,0,0,0,1,180,0,1),
(@OGUID+65,192366,571,1,64,5236.27,2739.46,444.992,-1.59698,0,0,0,1,180,0,1),
(@OGUID+66,192367,571,1,64,5271.8,2704.87,445.183,-3.13286,0,0,0,1,180,0,1),
(@OGUID+67,192368,571,1,64,5289.46,2704.68,435.875,-0.017451,0,0,0,1,180,0,1),
(@OGUID+68,192369,571,1,64,5350.95,2640.36,435.408,1.5708,0,0,0,1,180,0,1),
(@OGUID+69,192370,571,1,64,5392.27,2639.74,435.331,1.50971,0,0,0,1,180,0,1),
(@OGUID+70,192371,571,1,64,5364.29,2916.94,445.331,1.57952,0,0,0,1,180,0,1),
(@OGUID+71,192372,571,1,64,5322.86,2916.95,445.154,1.56207,0,0,0,1,180,0,1),
(@OGUID+72,192373,571,1,64,5290.35,2976.56,435.221,0.017452,0,0,0,1,180,0,1),
(@OGUID+73,192374,571,1,64,5272.94,2976.55,444.492,3.12412,0,0,0,1,180,0,1),
(@OGUID+74,192375,571,1,64,5235.19,2941.9,444.278,1.58825,0,0,0,1,180,0,1),
(@OGUID+75,192376,571,1,64,5352.19775,3055.0166,444.5646,1.57952,0,0,0,0,120,0,1),
(@OGUID+76,192377,571,1,64,5414.19,3069.8,415.187,1.64061,0,0,0,1,180,0,1),
(@OGUID+77,192378,571,1,64,5322.02,2781.13,435.811,1.5708,0,0,0,1,180,0,1),
(@OGUID+78,192379,571,1,64,5363.42,2781.03,435.763,1.5708,0,0,0,1,180,0,1),
(@OGUID+79,192254,571,1,64,5154.46,2828.94,409.189,3.14159,0,0,0,1,180,0,1),
(@OGUID+80,192255,571,1,64,5154.52,2853.31,409.183,3.14159,0,0,0,1,180,0,1),
(@OGUID+81,192336,571,1,64,5154.49,2862.15,445.012,3.14159,0,0,0,1,180,0,1),
(@OGUID+82,192488,571,1,64,5160.34,2798.61,430.769,3.14159,0,0,0,1,180,0,1),
(@OGUID+83,192488,571,1,64,5158.81,2883.13,431.618,3.14159,0,0,0,1,180,0,1),
(@OGUID+84,192488,571,1,64,5278.38,2613.83,433.409,-1.58825,0,0,0,1,180,0,1),
(@OGUID+85,192488,571,1,64,5260.82,2631.8,433.324,3.05433,0,0,0,1,180,0,1),
(@OGUID+86,192488,571,1,64,5163.13,2952.59,433.503,1.53589,0,0,0,1,180,0,1),
(@OGUID+87,192488,571,1,64,5145.11,2935,433.386,3.14159,0,0,0,1,180,0,1),
(@OGUID+88,192488,571,1,64,5262.54,3047.95,432.055,3.10665,0,0,0,1,180,0,1),
(@OGUID+89,192488,571,1,64,5146.04,2747.21,433.584,3.07177,0,0,0,1,180,0,1),
(@OGUID+90,192488,571,1,64,5163.78,2729.68,433.394,-1.58825,0,0,0,1,180,0,1),
(@OGUID+91,192488,571,1,64,5280.894,3064.95386,431.9758,1.55334139,0,0,0,0,120,0,1),
-- Tower Banners "Alliance"
(@OGUID+92,192501,571,1,64,4398.82,2804.7,429.792,-1.58825,0,0,0,1,180,0,1),
(@OGUID+93,192501,571,1,64,4416,2822.67,429.851,-0.017452,0,0,0,1,180,0,1),
(@OGUID+94,192501,571,1,64,4559.11,3606.22,419.999,-1.48353,0,0,0,1,180,0,1),
(@OGUID+95,192501,571,1,64,4539.42,3622.49,420.034,-3.07177,0,0,0,1,180,0,1),
(@OGUID+96,192501,571,1,64,4555.26,3641.65,419.974,1.67551,0,0,0,1,180,0,1),
(@OGUID+97,192501,571,1,64,4574.87,3625.91,420.079,0.087266,0,0,0,1,180,0,1),
(@OGUID+98,192501,571,1,64,4466.79,1960.42,459.144,1.15192,0,0,0,1,180,0,1),
(@OGUID+99,192501,571,1,64,4475.35,1937.03,459.07,-0.436332,0,0,0,1,180,0,1),
(@OGUID+100,192501,571,1,64,4451.76,1928.1,459.076,-2.00713,0,0,0,1,180,0,1),
(@OGUID+101,192501,571,1,64,4442.99,1951.9,459.093,2.74016,0,0,0,1,180,0,1),
(@OGUID+102,192501,571,1,64,4380.36328,2822.38013,429.8818,-3.106652,0,0,0,0,120,0,1),
(@OGUID+103,192501,571,1,64,4397.6626,2840.299,429.921661,1.58824873,0,0,0,0,120,0,1),
-- Tower Banners "Horde"
(@OGUID+104,192502,571,1,128,4398.82,2804.7,429.792,-1.58825,0,0,0,1,180,0,1),
(@OGUID+105,192502,571,1,128,4416,2822.67,429.851,-0.017452,0,0,0,1,180,0,1),
(@OGUID+106,192502,571,1,128,4559.11,3606.22,419.999,-1.48353,0,0,0,1,180,0,1),
(@OGUID+107,192502,571,1,128,4539.42,3622.49,420.034,-3.07177,0,0,0,1,180,0,1),
(@OGUID+108,192502,571,1,128,4555.26,3641.65,419.974,1.67551,0,0,0,1,180,0,1),
(@OGUID+109,192502,571,1,128,4574.87,3625.91,420.079,0.087266,0,0,0,1,180,0,1),
(@OGUID+110,192502,571,1,128,4466.79,1960.42,459.144,1.15192,0,0,0,1,180,0,1),
(@OGUID+111,192502,571,1,128,4475.35,1937.03,459.07,-0.436332,0,0,0,1,180,0,1),
(@OGUID+112,192502,571,1,128,4451.76,1928.1,459.076,-2.00713,0,0,0,1,180,0,1),
(@OGUID+113,192502,571,1,128,4442.99,1951.9,459.093,2.74016,0,0,0,1,180,0,1),
(@OGUID+114,192502,571,1,128,4380.36328,2822.38013,429.8818,-3.106652,0,0,0,0,120,0,1),
(@OGUID+115,192502,571,1,128,4397.6626,2840.299,429.921661,1.58824873,0,0,0,0,120,0,1);

SET @OGUID := 17780;
DELETE FROM `gameobject` WHERE `id` IN (192458,192459,192460,192461,192289,192290,192434,192435,192280,192283,192425,192426,192427,192428,192288,192291,192400,192401,192281,192282);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
-- The Sunken Ring "Horde"
(@OGUID+0,192458,571,1,16,4811.4,2441.9,358.207,-2.0333,0,0,0,1,180,0,1),
(@OGUID+1,192459,571,1,16,4805.67,2407.48,358.191,1.78023,0,0,0,1,180,0,1),
(@OGUID+2,192460,571,1,16,5004.35,2486.36,358.449,2.17294,0,0,0,1,180,0,1),
(@OGUID+3,192461,571,1,16,4983.28,2503.09,358.177,-0.427603,0,0,0,1,180,0,1),
(@OGUID+4,192289,571,1,16,4778.19,2438.06,345.644,-2.94088,0,0,0,1,180,0,1),
(@OGUID+5,192290,571,1,16,5024.57,2532.75,344.023,-1.93732,0,0,0,1,180,0,1),
-- The Sunken Ring "Alliance"
(@OGUID+6,192425,571,1,32,4811.435,2441.84546,357.982483,-2.02457881,0,0,0,0,120,0,1),
(@OGUID+7,192426,571,1,32,4805.514,2407.84375,357.940765,1.7715075,0,0,0,0,120,0,1),
(@OGUID+8,192427,571,1,32,5004.35,2486.36,358.449,2.17294,0,0,0,1,180,0,1),
(@OGUID+9,192428,571,1,32,4983.221,2503.27271,357.959534,-0.43633157,0,0,0,0,120,0,1),
(@OGUID+10,192288,571,1,32,4778.065,2438.02441,345.7063,-2.932139,0,0,0,0,120,0,1),
(@OGUID+11,192291,571,1,32,5024.608,2532.72583,344.4308,-1.94604158,0,0,0,0,120,0,1),
-- The Broken Temple "Horde"
(@OGUID+12,192434,571,1,16,5041.61,3294.4,382.15,-1.63188,0,0,0,1,180,0,1),
(@OGUID+13,192435,571,1,16,4855.63,3297.62,376.739,-3.13286,0,0,0,1,180,0,1),
(@OGUID+14,192280,571,1,16,4857.97,3335.44,368.881,-2.94959,0,0,0,1,180,0,1),
(@OGUID+15,192283,571,1,16,5006.34,3280.4,371.163,2.22529,0,0,0,1,180,0,1),
-- The Broken Temple "Alliance"
(@OGUID+16,192400,571,1,32,5041.650879,3294.318604,381.919952,-1.605702,0,0,0,1,180,0,1),
(@OGUID+17,192401,571,1,32,4855.444336,3297.600830,376.495758,-3.115388,0,0,0,1,180,0,1),
(@OGUID+18,192281,571,1,32,4857.971191,3335.415771,369.291901,-2.888511,0,0,0,1,180,0,1),
(@OGUID+19,192282,571,1,32,5006.322754,3280.362061,371.242249,2.242746,0,0,0,1,180,0,1);DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup` IN(34125,33796,33798,33799,33791,33792,33790,
33795,33793,33800,33794,33843,33842,26421,26477,28161,29856,32788,32790);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,
`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
-- Stabled Campagin Warhorse Requires Any of the Dailies
(18,34125,63215,1,9,0,13847,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,2,9,0,13851,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,3,9,0,13852,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,4,9,0,13854,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,5,9,0,13855,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,6,9,0,13856,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,7,9,0,13857,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,8,9,0,13858,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,9,9,0,13859,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,10,9,0,13860,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,11,9,0,13861,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,12,9,0,13862,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,13,9,0,13863,0,0,0,'Required quest active for spellclick'),
(18,34125,63215,14,9,0,13864,0,0,0,'Required quest active for spellclick'),
-- Raptor requires (A) Valiant of Sen'Jin
(18,33796,62784,1,8,0,13693,0,0,0,'Required quest rewarded for spellclick'),
(18,33796,62784,2,8,0,13708,0,0,0,'Required quest rewarded for spellclick'),
-- Forsaken Warhorse requires (A) Valiant of Undercity
(18,33798,62787,1,8,0,13695,0,0,0,'Required quest rewarded for spellclick'),
(18,33798,62787,2,8,0,13710,0,0,0,'Required quest rewarded for spellclick'),
-- Orgrimmar Wolf requires (A) Valiant of Orgrimmar
(18,33799,62783,1,8,0,13691,0,0,0,'Required quest rewarded for spellclick'),
(18,33799,62783,2,8,0,13707,0,0,0,'Required quest rewarded for spellclick'),
-- Silvermoon Hawkstrider requires (A) Valiant of Silvermoon
(18,33791,62786,1,8,0,13696,0,0,0,'Required quest rewarded for spellclick'),
(18,33791,62786,2,8,0,13711,0,0,0,'Required quest rewarded for spellclick'),
-- Thunder Bluff Kodo requires (A) Valiant of Thunder Bluff
(18,33792,62785,1,8,0,13694,0,0,0,'Required quest rewarded for spellclick'),
(18,33792,62785,2,8,0,13709,0,0,0,'Required quest rewarded for spellclick'),
-- Exodar Elekk requires (A) Valiant of the Exodar
(18,33790,62781,1,8,0,13690,0,0,0,'Required quest rewarded for spellclick'),
(18,33790,62781,2,8,0,13705,0,0,0,'Required quest rewarded for spellclick'),
-- Ironforge Ram requires (A) Valiant of Ironforge
(18,33795,62779,1,8,0,13685,0,0,0,'Required quest rewarded for spellclick'),
(18,33795,62779,2,8,0,13703,0,0,0,'Required quest rewarded for spellclick'),
-- Gnomeregan Mechanostrider requires (A) Valiant of Gnomeregan
(18,33793,62780,1,8,0,13688,0,0,0,'Required quest rewarded for spellclick'),
(18,33793,62780,2,8,0,13704,0,0,0,'Required quest rewarded for spellclick'),
-- Stormwind Steed requires (A) Valiant of Stormwind
(18,33800,62774,1,8,0,13593,0,0,0,'Required quest rewarded for spellclick'),
(18,33800,62774,2,8,0,13684,0,0,0,'Required quest rewarded for spellclick'),
-- Darnassian Nightsaber requires (A) Valiant of Darnassus
(18,33794,62782,1,8,0,13689,0,0,0,'Required quest rewarded for spellclick'),
(18,33794,62782,2,8,0,13706,0,0,0,'Required quest rewarded for spellclick'),
-- Stabled Quel'Dorei steeds requires The Argent Tournament rewarded
(18,33843,63792,0,8,0,13667,0,0,0,'Required quest rewarded for spellclick'),
-- Stabled Quel'Dorei steed forbids Alliance Eligibility Marker rewarded
(18,33843,63792,0,8,0,13686,0,0,1,'Forbidden rewarded quest for spellclick'),
-- Sunreaver Hawkstrider requires The Argent Tournament rewarded
(18,33842,63791,0,8,0,13668,0,0,0,'Required quest rewarded for spellclick'),
-- Sunreaver Hawkstrider forbids Horde Eligibility Marker rewarded
(18,33842,63791,0,8,0,13687,0,0,1,'Forbidden rewarded quest for spellclick'),
-- Misc
(18,26421,47575,0,8,0,12092,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26421,47575,0,8,0,12096,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26421,47575,1,9,0,12092,0,0,0,'Required quest active for spellclick'),
(18,26421,47575,2,9,0,12096,0,0,0,'Required quest active for spellclick'),
(18,26477,47096,0,8,0,11999,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,47096,0,8,0,12000,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,61286,0,8,0,11999,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,61286,0,8,0,12000,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,61832,0,8,0,11999,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,61832,0,8,0,12000,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,26477,61286,1,9,0,11999,0,0,0,'Required quest active for spellclick'),
(18,26477,61286,2,9,0,12000,0,0,0,'Required quest active for spellclick'),
(18,26477,47096,1,9,0,11999,0,0,0,'Required quest active for spellclick'),
(18,26477,47096,2,9,0,12000,0,0,0,'Required quest active for spellclick'),
(18,26477,61832,1,9,0,11999,0,0,0,'Required quest active for spellclick'),
(18,26477,61832,2,9,0,12000,0,0,0,'Required quest active for spellclick'),
(18,28161,39996,0,8,0,12532,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,39996,0,8,0,12702,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,39996,1,9,0,12532,0,0,0,'Required quest active for spellclick'),
(18,28161,39996,2,9,0,12702,0,0,0,'Required quest active for spellclick'),
(18,28161,51037,0,8,0,12532,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,51037,0,8,0,12702,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,51037,1,9,0,12532,0,0,0,'Required quest active for spellclick'),	
(18,28161,51037,2,9,0,12702,0,0,0,'Required quest active for spellclick'),
(18,28161,51961,0,8,0,12532,0,0,1,'Forbidden rewarded quest for spellclick'),	
(18,28161,51961,0,8,0,12702,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,28161,51961,1,9,0,12532,0,0,0,'Required quest active for spellclick'),
(18,28161,51961,2,9,0,12702,0,0,0,'Required quest active for spellclick'),
(18,29856,55363,0,8,0,12629,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,29856,55363,0,8,0,12643,0,0,1,'Forbidden rewarded quest for spellclick'),
(18,29856,55363,1,9,0,12629,0,0,0,'Required quest active for spellclick'),
(18,29856,55363,2,9,0,12643,0,0,0,'Required quest active for spellclick'),
(18,32788,57539,1,8,0,13075,0,0,0,'Required quest rewarded for spellclick'),
(18,32788,57539,2,9,0,13075,0,0,0,'Required quest active for spellclick'),
(18,32790,57654,1,8,0,13073,0,0,0,'Required quest rewarded for spellclick'),
(18,32790,57654,2,9,0,13073,0,0,0,'Required quest active for spellclick');

-- Remove duplicate entries in npc_spellclick_spells (leave 1)
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN(34125,26421,26477,28161,
31157,33790,33791,33792,33793,33794,33795,33796,33798,33799,33800,34944,29856,30564,29414,31269);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(26477,47096,2,0),
(26477,61286,2,0),
(26477,61832,0,0),
(29414,18277,1,0),
(29856,55363,2,0),
(31269,46598,1,0),
(33794,62782,1,0),
(28161,51037,2,0),
(28161,39996,1,0),
(30564,57401,1,0),
(34125,63215,1,0),
(34944,68458,1,0),
(33790,62781,1,0),
(33793,62780,1,0),
(33795,62779,1,0),
(33800,62774,1,0),
(33798,62787,1,0),
(31157,46598,1,0),
(26421,47575,1,0),
(28161,51961,1,0),
(33791,62786,1,0),
(33792,62785,1,0),
(33796,62784,1,0),
(33799,62783,1,0);

-- If this query fails, fix your custom content
ALTER TABLE `npc_spellclick_spells` ADD PRIMARY KEY(`npc_entry`,`spell_id`);DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=29488 AND `SourceEntry`=54568;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,
`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
(18,29488,54568,15,8,0,12670,0,0,0,'Required quest rewarded for spellclick'),
(18,29488,54568,15,9,0,12670,0,0,0,'Required quest active for spellclick');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=29488 AND `SourceEntry`=54568;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,
`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
(18,29488,54568,1,8,0,12670,0,0,0,'Required quest rewarded for spellclick'),
(18,29488,54568,2,9,0,12670,0,0,0,'Required quest active for spellclick');
-- NPC talk text insert from sniff
DELETE FROM `script_texts` WHERE `npc_entry`=28923;
DELETE FROM `creature_text` WHERE `entry`=28923;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28923,0,0, 'I have witnessed the rise and fall of empires... the birth and extinction of entire species... Over countless millennia the foolishness of mortals has remained the only constant. Your presence here confirms this.',14,0,100,0,0,14160, 'Loken'),
(28923,1,0, 'My master has shown me the future, and you have no place in it. Azeroth will be reborn in darkness. Yogg-Saron shall be released! The Pantheon shall fall!',14,0,100,0,0,14161, 'Loken'),
(28923,2,0, 'What hope is there for you? None!',14,0,100,0,0,14162, 'Loken'),
(28923,3,0, 'You cannot hide from fate!',14,0,100,0,0,14163, 'Loken'),
(28923,3,1, 'Come closer. I will make it quick.',14,0,100,0,0,14164, 'Loken'),
(28923,3,2, 'Your flesh cannot hold out for long.',14,0,100,0,0,14165, 'Loken'),
(28923,4,0, 'Only mortal...',14,0,100,0,0,14166, 'Loken'),
(28923,4,1, 'I... am... FOREVER!',14,0,100,0,0,14167, 'Loken'),
(28923,4,2, 'What little time you had, you wasted!',14,0,100,0,0,14168, 'Loken'),
(28923,5,0, 'You stare blindly into the abyss!',14,0,100,0,0,14169, 'Loken'),
(28923,6,0, 'Your ignorance is profound. Can you not see where this path leads?',14,0,100,0,0,14170, 'Loken'),
(28923,7,0, 'You cross the precipice of oblivion!',14,0,100,0,0,14171, 'Loken'),
(28923,8,0, 'My death... heralds the end of this world.',14,0,100,0,0,14172, 'Loken'),
(28923,9,0, '%s begins to cast Lightning Nova!',41,0,100,0,0,0, 'Loken');
-- NPC talk text insert from sniff
DELETE FROM `script_texts` WHERE `npc_entry`=28546;
DELETE FROM `creature_text` WHERE `entry`=28546;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28546,0,0, 'You wish to confront the master? You must first weather the storm!',14,0,100,0,0,14453, 'Ionar'),
(28546,1,0, 'The slightest spark shall be your undoing.',14,0,100,0,0,14454, 'Ionar'),
(28546,1,1, 'No one is safe!',14,0,100,0,0,14455, 'Ionar'),
(28546,2,0, 'Shocking ... I know!',14,0,100,0,0,14456, 'Ionar'),
(28546,2,1, 'You atempt the unpossible.',14,0,100,0,0,14457, 'Ionar'),
(28546,2,2, 'Your spark of light is ... extinguish.',14,0,100,0,0,14458, 'Ionar'),
(28546,3,0, 'Master... you have guests.',14,0,100,0,0,14459, 'Ionar');
-- NPC talk text insert from sniff
DELETE FROM `script_texts` WHERE `npc_entry`=28587;
DELETE FROM `creature_text` WHERE `entry`=28587;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28587,0,0, 'It is you who have destroyed my children? You... shall... pay!',14,0,100,0,0,13960, 'Volkhan'),
(28587,1,0, 'Life from lifelessness... death for you.',14,0,100,0,0,13961, 'Volkhan'),
(28587,1,1, 'Nothing is wasted in the process. You will see....',14,0,100,0,0,13962, 'Volkhan'),
(28587,2,0, 'I will crush you beneath my boots!',14,0,100,0,0,13963, 'Volkhan'),
(28587,2,1, 'All my work... undone!',14,0,100,0,0,13964, 'Volkhan'),
(28587,3,0, 'The armies of iron will conquer all!',14,0,100,0,0,13965, 'Volkhan'),
(28587,3,1, 'Ha, pathetic!',14,0,100,0,0,13966, 'Volkhan'),
(28587,3,2, 'You have cost me too much work!',14,0,100,0,0,13967, 'Volkhan'),
(28587,4,0, 'The master was right... to be concerned.',14,0,100,0,0,13968, 'Volkhan'),
(28587,5,0, '%s runs to his anvil!',41,0,100,0,0,0, 'Volkhan'),
(28587,6,0, '%s prepares to shatter his Brittle Golems!',41,0,100,0,0,0, 'Volkhan');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=29488 AND `SourceEntry`=54568;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,
`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`Comment`) VALUES
(18,29488,54568,1,8,0,12670,0,0,0,'Required quest rewarded for spellclick'),
(18,29488,54568,2,28,0,12670,0,0,0,'Required quest completed for spellclick');
-- NPC talk text insert from sniff
DELETE FROM `script_texts` WHERE `npc_entry`=28586;
DELETE FROM `creature_text` WHERE `entry`=28586;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(28586,0,0, 'I am the greatest of my father''s sons! Your end has come!',14,0,100,0,0,14149, 'General Bjarngrim'),
(28586,1,0, 'Give me your worst!',14,0,100,0,0,14150, 'General Bjarngrim'),
(28586,2,0, 'Defend yourself, for all the good it will do!',14,0,100,0,0,14151, 'General Bjarngrim'),
(28586,3,0, 'GRAAAAAH! Behold the fury of iron and steel!',14,0,100,0,0,14152, 'General Bjarngrim'),
(28586,4,0, 'So ends your curse!',14,0,100,0,0,14153, 'General Bjarngrim'),
(28586,4,1, 'Flesh... is... weak!',14,0,100,0,0,14154, 'General Bjarngrim'),
(28586,4,2, '...',14,0,100,0,0,14155, 'General Bjarngrim'),
(28586,5,0, 'How can it be...? Flesh is not... stronger!',14,0,100,0,0,14156, 'General Bjarngrim'),
(28586,6,0, '%s switches to Defensive Stance!',41,0,100,0,0,0, 'General Bjarngrim'),
(28586,7,0, '%s switches to Battle Stance!',41,0,100,0,0,0, 'General Bjarngrim'),
(28586,8,0, '%s switches to Berserker Stance!',41,0,100,0,0,0, 'General Bjarngrim');
DROP TABLE IF EXISTS `locales_creature_text`;
CREATE TABLE `locales_creature_text` (
  `entry` int(10) UNSIGNED NOT NULL,
  `textGroup` tinyint(3) UNSIGNED NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `text_loc1` text,
  `text_loc2` text,
  `text_loc3` text,
  `text_loc4` text,
  `text_loc5` text,
  `text_loc6` text,
  `text_loc7` text,
  `text_loc8` text,
  PRIMARY KEY (`entry`,`textGroup`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DELETE FROM `command` WHERE `name` LIKE 'debug moveflags';
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('debug moveflags',3,'Syntax: .debug moveflags [$newMoveFlags [$newMoveFlags2]]\r\nNo params given will output the current moveflags of the target');

DELETE FROM `trinity_string` WHERE `entry` IN(1143,1144);
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(1143,'Target''s moveFlags: %u, moveFlagsExtra: %u.'),
(1144,'Target''s moveFlags set to: %u, moveFlagsExtra to: %u');

-- Spotlight aura for spotlight NPC
DELETE FROM `creature_template_addon` WHERE `entry`=19913;
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(19913,0,0,0,0,'39312');

-- Scriptnames for areatriggers
SET @AT_AREA_52_SOUTH := 4472;
SET @AT_AREA_52_NORTH := 4466;
SET @AT_AREA_52_WEST := 4471;
SET @AT_AREA_52_EAST := 4422;
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (@AT_AREA_52_SOUTH,@AT_AREA_52_NORTH,@AT_AREA_52_WEST,@AT_AREA_52_EAST);
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(@AT_AREA_52_SOUTH,"at_area_52_entrance"),(@AT_AREA_52_NORTH,"at_area_52_entrance"),(@AT_AREA_52_WEST,"at_area_52_entrance"),(@AT_AREA_52_EAST,"at_area_52_entrance");
-- Add Area trigger scripts
DELETE FROM `areatrigger_scripts` WHERE `entry` IN (4422,4466,4471,4472);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(4422,'at_area_52_entrance'),
(4466,'at_area_52_entrance'),
(4471,'at_area_52_entrance'),
(4472,'at_area_52_entrance');
DELETE FROM `command` WHERE `name` = 'reload locales_creature_text';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('reload locales_creature_text', 3, 'Syntax: .reload locales_creature_text\nReload locales_creature_text Table.');ALTER TABLE `warden_checks` ENGINE=MYISAM;
ALTER TABLE `achievement_dbc` ENGINE=MYISAM;
ALTER TABLE `creature_text` ENGINE=MYISAM;
ALTER TABLE `game_event_seasonal_questrelation` ENGINE=MYISAM;
DROP TABLE IF EXISTS `character_queststatus_seasonal`;
-- SAI for Elrodan
SET @ENTRY=18743;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY AND `source_type`=0);
DELETE FROM `smart_scripts` WHERE (`entryorguid`=@ENTRY*100 AND `source_type`=9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,5000,8000,15000,25000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elrodan - OOC - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,11,18744,20,0,0,0,0,0,'Elrodan - Script - Aurosalia say random'),
(@ENTRY*100,9,1,0,0,0,100,0,3000,3000,3000,3000,11,32826,0,0,0,0,0,1,0,0,0,0,0,0,0,'Elrodan - Script - cast Polymorph Cast Visual');
-- Aurosalia fix model
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid`=18145;
-- Aurosalia text
DELETE FROM `creature_text` WHERE `entry`=18744;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(18744,0,0, 'Stop!',1,0,100,5,0,0, 'Aurosalia'),
(18744,0,1, 'Will you stop--',1,0,100,274,0,0, 'Aurosalia'),
(18744,0,2, '',1,0,100,6,0,0, 'Aurosalia');
-- Aurosalia text
DELETE FROM `creature_text` WHERE `entry`=18744;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(18744,0,0, 'Stop!',12,1,100,5,0,0, 'Aurosalia'),
(18744,0,1, 'Will you stop--',12,1,100,6,0,0, 'Aurosalia'),
(18744,0,2, '',12,1,100,274,0,0, 'Aurosalia');
DELETE FROM `trinity_string` WHERE `entry`=175;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(175, 'Liquid level: %f, ground: %f, type: %u, flags %u, status: %d.');-- Add some missing guids
SET @GUID := 42153;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+4;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@GUID,32666,530,1,1,0,0,9830.201,-7389.711,13.68803,5.532694,120,0,0,1,0,0),
(@GUID+1,32667,530,1,1,0,0,9859.044,-7406.975,13.7113,1.658063,120,0,0,1,0,0),
(@GUID+2,31144,530,1,1,0,0,9869.401,-7389.657,13.69022,3.90953755,120,0,0,1,0,0),
(@GUID+3,31144,530,1,1,0,0,9871.973,-7392.763,13.6818113,3.35103226,120,0,0,1,0,0),
(@GUID+4,31146,530,1,1,0,0,9850.529,-7395.442,13.72216,4.694936,120,0,0,1,0,0);
-- Addons
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @GUID AND @GUID+4;
DELETE FROM `creature_addon` WHERE `guid`=66686;
INSERT INTO `creature_addon` (`guid`,`bytes2`,`auras`) VALUES
(@GUID,1, '7056 61573'),
(@GUID+1,1, '7056 61573'),
(@GUID+2,1, '7056 61573'),
(@GUID+3,1, '7056 61573'),
(@GUID+4,1, '7056 61573'),
(66686,1, '7056');
-- convert npc to trigger
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|128 WHERE `entry`=18504;
-- SAI for Champion Vranesh
SET @ENTRY=18146;
UPDATE `creature` SET `position_x`=9834.044,`position_y`=-7480.845,`position_z`=14.93467 WHERE `id`=@ENTRY;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `mount`=0 WHERE `entry`=@ENTRY; -- 19085
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100,@ENTRY*100+1,@ENTRY*100+2,@ENTRY*100+3,@ENTRY*100+4);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
-- AI
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On respawn - load path'),
(@ENTRY,0,1,2,40,0,100,0,7,@ENTRY,0,0,54,6000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,3,4,40,0,100,0,11,@ENTRY,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,5,6,40,0,100,0,25,@ENTRY,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,7,8,40,0,100,0,34,@ENTRY,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,9,10,40,0,100,0,50,@ENTRY,0,0,54,7000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Run Script'),
(@ENTRY,0,11,0,40,0,100,0,57,@ENTRY,0,0,54,600000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - On waypoint reached - Pause Path'),
-- Script 0
(@ENTRY*100,9,0,0,0,0,100,0,3500,3500,3500,3500,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 0 - emote bow'),
-- Script 1
(@ENTRY*100+1,9,0,0,0,0,100,0,100,100,100,100,43,0,19085,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 1 - mount horse'),
(@ENTRY*100+1,9,1,0,0,0,100,0,100,100,100,100,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 1 - say 0'),
(@ENTRY*100+1,9,2,0,0,0,100,0,100,100,100,100,5,16,0,0,0,0,0,11,16222,10,0,0,0,0,0,'Champion Vranesh - Script 1 - Silvermoon City Guardian emote bow'),
(@ENTRY*100+1,9,3,0,0,0,100,0,100,100,100,100,1,0,0,0,0,0,0,19,16222,10,0,0,0,0,0,'Champion Vranesh - Script 1 - Silvermoon City Guardian say 0'),
-- Script 2
(@ENTRY*100+2,9,0,0,0,0,100,0,3000,3000,3000,3000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 2 - say 1'),
(@ENTRY*100+2,9,1,0,0,0,100,0,100,100,100,100,5,16,0,0,0,0,0,11,16222,18,0,0,0,0,0,'Champion Vranesh - Script 2 - Silvermoon City Guardian emote bow'),
(@ENTRY*100+2,9,2,0,0,0,100,0,100,100,100,100,1,1,0,0,0,0,0,19,16222,18,0,0,0,0,0,'Champion Vranesh - Script 2 - Silvermoon City Guardian say 1'),
-- Script 3
(@ENTRY*100+3,9,0,0,0,0,100,0,3000,3000,3000,3000,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 3 - say 2'),
(@ENTRY*100+3,9,1,0,0,0,100,0,100,100,100,100,5,16,0,0,0,0,0,11,16222,30,0,0,0,0,0,'Champion Vranesh - Script 3 - Silvermoon City Guardian emote bow'),
-- Script 4
(@ENTRY*100+4,9,0,0,0,0,100,0,1000,1000,1000,1000,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 4 - dismount horse'),
(@ENTRY*100+4,9,1,0,0,0,100,0,1000,1000,1000,1000,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Champion Vranesh - Script 3 - say 3');

-- NPC talk text for Champion Vranesh and Silvermoon City Guardian
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY,16222);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Champion Vranesh inclines his head slightly to the pair of guardians in greeting.',16,1,100,0,0,0, 'Champion Vranesh'),
(@ENTRY,1,0, 'Champion Vranesh arches a scrulpled brow at the guards. a disapproving scowl on his face',16,1,100,0,0,0, 'Champion Vranesh'),
(@ENTRY,2,0, 'Champion Vranesh glances from guard to guard.',16,1,100,0,0,0, 'Champion Vranesh'),
(@ENTRY,3,0, 'Champion Vranesh surveys the small ranger practice ground with a condescending smirk.',16,1,100,0,0,0, 'Champion Vranesh'),
(16222,0,0, 'Glory to the Sun K-- ah... Silvermoon!',12,1,100,0,0,0, 'Silvermoon City Guardian'),
(16222,1,0, 'Our lives are yours, Blood Knight.',12,1,100,0,0,0, 'Silvermoon City Guardian');

-- Pathing for Champion Vranesh
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,9834.044,-7480.845,14.93467, 'Champion Vranesh'),
(@ENTRY,2,9829.106,-7493.609,14.93653, 'Champion Vranesh'),
(@ENTRY,3,9826.172,-7516.15,19.73714, 'Champion Vranesh'),
(@ENTRY,4,9841.332,-7518.849,19.70547, 'Champion Vranesh'),
(@ENTRY,5,9845.063,-7512.885,19.68096, 'Champion Vranesh'),
(@ENTRY,6,9850.942,-7512.470,19.71548, 'Champion Vranesh'),
(@ENTRY,7,9850.934,-7513.604,19.71813, 'Champion Vranesh'), -- pause 6000
(@ENTRY,8,9872.733,-7517.256,19.75283, 'Champion Vranesh'),
(@ENTRY,9,9872.419,-7489.979,14.91272, 'Champion Vranesh'),
(@ENTRY,10,9851.401,-7490.209,14.93464, 'Champion Vranesh'),
(@ENTRY,11,9850.948,-7470.096,14.91403, 'Champion Vranesh'), -- pause 1000
(@ENTRY,12,9851.16,-7469.154,14.91319, 'Champion Vranesh'),
(@ENTRY,13,9849.688,-7442.579,13.50931, 'Champion Vranesh'),
(@ENTRY,14,9848.726,-7423.561,13.31949, 'Champion Vranesh'),
(@ENTRY,15,9816.583,-7423.817,13.30332, 'Champion Vranesh'),
(@ENTRY,16,9794.673,-7424.877,13.50989, 'Champion Vranesh'),
(@ENTRY,17,9794.48,-7442.293,14.40225, 'Champion Vranesh'),
(@ENTRY,18,9767.989,-7442.611,14.39258, 'Champion Vranesh'),
(@ENTRY,19,9767.406,-7422.982,13.35852, 'Champion Vranesh'),
(@ENTRY,20,9739.563,-7422.83,13.28878, 'Champion Vranesh'),
(@ENTRY,21,9736.46,-7440.873,13.53963, 'Champion Vranesh'),
(@ENTRY,22,9740.345,-7464.682,13.57483, 'Champion Vranesh'),
(@ENTRY,23,9746.739,-7482.594,13.55744, 'Champion Vranesh'),
(@ENTRY,24,9748.767,-7486.576,13.54981, 'Champion Vranesh'),
(@ENTRY,25,9753.25,-7486.52,13.5461, 'Champion Vranesh'), -- pause 8000
(@ENTRY,26,9720.037,-7486.478,13.52865, 'Champion Vranesh'),
(@ENTRY,27,9681.502,-7475.868,13.52783, 'Champion Vranesh'),
(@ENTRY,28,9666.59,-7479.547,13.53783, 'Champion Vranesh'),
(@ENTRY,29,9638.033,-7492.629,13.50889, 'Champion Vranesh'),
(@ENTRY,30,9620.123,-7488.486,13.53853, 'Champion Vranesh'),
(@ENTRY,31,9605.795,-7475.276,13.55774, 'Champion Vranesh'),
(@ENTRY,32,9597.921,-7460.307,13.54336, 'Champion Vranesh'),
(@ENTRY,33,9594.605,-7450.369,13.5353, 'Champion Vranesh'),
(@ENTRY,34,9592.944,-7450.381,13.53116, 'Champion Vranesh'), -- pause 8000
(@ENTRY,35,9594.605,-7450.369,13.5353, 'Champion Vranesh'),
(@ENTRY,36,9615.793,-7419.515,13.30549, 'Champion Vranesh'),
(@ENTRY,37,9654.939,-7420.383,13.29342, 'Champion Vranesh'),
(@ENTRY,38,9673.072,-7429.818,13.2933, 'Champion Vranesh'),
(@ENTRY,39,9689.373,-7431.429,13.2933, 'Champion Vranesh'),
(@ENTRY,40,9709.577,-7422.25,13.2933, 'Champion Vranesh'),
(@ENTRY,41,9722.3,-7415.217,13.39988, 'Champion Vranesh'),
(@ENTRY,42,9748.049,-7414.597,13.32135, 'Champion Vranesh'),
(@ENTRY,43,9766.792,-7413.542,13.38617, 'Champion Vranesh'),
(@ENTRY,44,9767.26,-7396.828,14.43101, 'Champion Vranesh'),
(@ENTRY,45,9793.145,-7395.393,14.3936, 'Champion Vranesh'),
(@ENTRY,46,9794.217,-7415.122,13.48684, 'Champion Vranesh'),
(@ENTRY,47,9817.575,-7415.299,13.30596, 'Champion Vranesh'),
(@ENTRY,48,9837.021,-7414.861,13.30863, 'Champion Vranesh'),
(@ENTRY,49,9848.048,-7414.794,13.31137, 'Champion Vranesh'),
(@ENTRY,50,9848.199,-7414.07,13.31068, 'Champion Vranesh'), -- pause 7000
(@ENTRY,51,9847.695,-7415.903,13.31243, 'Champion Vranesh'),
(@ENTRY,52,9848.259,-7428.576,13.33225, 'Champion Vranesh'),
(@ENTRY,53,9846.748,-7446.964,13.56501, 'Champion Vranesh'),
(@ENTRY,54,9850.373,-7465.03,14.9097, 'Champion Vranesh'),
(@ENTRY,55,9850.84,-7480.409,14.93768, 'Champion Vranesh'),
(@ENTRY,56,9840.165,-7480.267,14.92917, 'Champion Vranesh'),
(@ENTRY,57,9843.284,-7480.133,14.92655, 'Champion Vranesh'); -- pause 60000

-- SAI for Silvermoon Farstrider
SET @ENTRY=18507;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - Reset - Set Phase 1'),
(@ENTRY,0,1,2,1,1,100,0,3000,3000,5000,5000,11,36802,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - OOC - Cast Spell (Phase 1)'),
(@ENTRY,0,2,0,61,1,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - OOC - Set Phase 2 (Phase 1)'),
(@ENTRY,0,3,4,1,2,100,0,3000,3000,5000,5000,11,36803,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - OOC - Cast Spell (Phase 2)'),
(@ENTRY,0,4,0,61,2,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Farstrider - OOC - Set Phase 1 (Phase 2)');
-- SAI for Silvermoon Ranger
SET @ENTRY=18147;
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-64950,-64951,-64952,-64953);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-64950,0,0,0,1,0,100,0,18000,22000,18000,22000,11,29121,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Ranger - OOC - Cast Spell'),
(-64951,0,0,0,1,0,100,0,18000,22000,18000,22000,11,29121,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Ranger - OOC - Cast Spell'),
(-64952,0,0,0,1,0,100,0,18000,22000,18000,22000,11,29120,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Ranger - OOC - Cast Spell'),
(-64953,0,0,0,1,0,100,0,18000,22000,18000,22000,11,29122,0,0,0,0,0,1,0,0,0,0,0,0,0,'Silvermoon Ranger - OOC - Cast Spell');
-- Silvermoon City Guardian pathing
SET @NPC := 56902;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=9595.755,`position_y`=-7366.754,`position_z`=13.50131 WHERE `guid`=@NPC;
UPDATE `creature_addon` SET `path_id`=@PATH WHERE `guid`=@NPC;
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,9595.755,-7366.754,13.50131,0,0,0,100,0),
(@PATH,2,9594.553,-7336.536,14.15131,0,0,0,100,0),
(@PATH,3,9586.897,-7325.241,14.1312,0,0,0,100,0),
(@PATH,4,9561.705,-7326.179,14.05934,0,0,0,100,0),
(@PATH,5,9519.901,-7327.064,14.12175,0,0,0,100,0),
(@PATH,6,9508.228,-7352.014,14.33403,0,0,0,100,0),
(@PATH,7,9505.697,-7394.406,14.32095,0,0,0,100,0),
(@PATH,8,9535.751,-7396.176,16.8303,0,0,0,100,0),
(@PATH,9,9564.451,-7396.184,16.84703,0,0,0,100,0),
(@PATH,10,9563.777,-7415.961,19.47212,0,0,0,100,0),
(@PATH,11,9559.149,-7418.953,19.47643,0,0,0,100,0),
(@PATH,12,9563.34,-7432.895,15.4851,0,0,0,100,0),
(@PATH,13,9564.645,-7464.229,15.51088,0,0,0,100,0),
(@PATH,14,9588.409,-7464.643,13.52051,0,0,0,100,0),
(@PATH,15,9603.896,-7430.126,13.30448,0,0,0,100,0),
(@PATH,16,9595.137,-7387.862,13.52731,0,0,0,100,0),
(@PATH,17,9572.599,-7384.971,14.39343,0,0,0,100,0),
(@PATH,18,9573.106,-7369.531,14.40827,0,0,0,100,0);
-- Coilfang Guardian

DELETE FROM `smart_scripts` WHERE `entryorguid`=21873 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(21873, 0, 0, 0, 0, 0, 0, 0, 5000, 5000, 15000, 15000, 11, 28168, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Guardian - IC - Cast Arcing Smash'),
(21873, 0, 1, 0, 0, 0, 0, 0, 2000, 2000, 10000, 10000, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Guardian - IC - Cast Harmstring'),
(21873, 0, 2, 0, 0, 0, 50, 0, 3000, 4000, 10000, 20000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Guardian - IC - Say 0'); -- randomly guessed timers

DELETE FROM `creature_text` WHERE `entry`=21873;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(21873, 0, 0, 'By Nazjatar''s Depths!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian'),
(21873, 0, 1, 'Die, warmblood!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian'),
(21873, 0, 2, 'For the Master!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian'),
(21873, 0, 3, 'Illidan reigns!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian'),
(21873, 0, 4, 'My blood is like venom!', 12, 0, 0, 0, 0, 0, 'Coilfang Guardian');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=21873;

-- Coilfang Strider

DELETE FROM `smart_scripts` WHERE `entryorguid`=22056 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22056, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 11, 38257, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Strider - On Reset - Cast Panic Periodic'),
(22056, 0, 1, 0, 0, 0, 0, 0, 8000, 8000, 30000, 40000, 11, 38259, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Strider - IC - Cast Mind Blast');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=22056;

-- Coilfang Elite

DELETE FROM `smart_scripts` WHERE `entryorguid`=22055 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(22055, 0, 0, 0, 0, 0, 0, 0, 5000, 5000, 15000, 20000, 11, 38260, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Elite - IC - Cast Cleave'),
(22055, 0, 1, 0, 0, 0, 0, 0, 2000, 2000, 10000, 10000, 11, 38262, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Coilfang Elite - IC - Cast Harmstring');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=22055;

-- Core Hound

DELETE FROM `smart_scripts` WHERE `entryorguid`=11673 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` BETWEEN 11673*100+0 AND 11673*100+5 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(11673, 0, 0, 0, 0, 0, 0, 0, 10000, 10000, 7000, 7000, 11, 19272, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - IC - Cast Lava Breath'),
(11673, 0, 1, 0, 0, 0, 0, 0, 4000, 4000, 6000, 6000, 11, 19319, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - IC - Cast Vicious Bite'),
(11673, 0, 2, 0, 0, 0, 0, 0, 15000, 15000, 24000, 24000, 88, 11673*100+0, 11673*100+5, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - IC - Call random script'),
(11673*100+0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19364, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 0 - Cast Ground Stomp'),
(11673*100+1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19366, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 1 - Cast Cauterizing Flames'),
(11673*100+2, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19367, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 2 - Cast Withering Heat'),
(11673*100+3, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19369, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 3 - Cast Ancient Despair'),
(11673*100+4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19372, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 4 - Cast Ancient Hysteria'),
(11673*100+5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19365, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Core Hound - Random 5 - Cast Ancient Dread');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=11673;

-- Shadow of Aran

DELETE FROM `smart_scripts` WHERE `entryorguid`=18254 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(18254, 0, 0, 0, 0, 0, 0, 0, 1000, 1000, 5000, 5000, 11, 29978, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Shadow of Aran - IC - Cast Pyro Blast');

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=18254;
ALTER TABLE `creature_template` ADD COLUMN `HoverHeight` FLOAT NOT NULL DEFAULT 1 AFTER `InhabitType`;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=72257;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,72257,0,0,32,0,144,0,0,0,0,'','Remove Marks of the Fallen Champion - target player');
UPDATE `gameobject_template` SET `flags`=0x32 WHERE `entry` IN (202239,202240,202238,202241,201959,202339,202338,202340);

-- Set Deathbringer's Cache spawned by default
UPDATE `gameobject` SET `spawntimesecs`=604800 WHERE `id` IN (202239,202240,202238,202241);
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_deathbringer_remove_marks';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(72257,'spell_deathbringer_remove_marks');
UPDATE `creature_addon` SET `bytes1`=0x3000000 WHERE `guid`=207210;
UPDATE `creature_addon` SET `bytes1`=0x3000000 WHERE `guid`=207211;
-- SAI for Unrestrained Dragonhawk
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=25236;
DELETE FROM `smart_scripts` WHERE (`entryorguid`=25236 AND `source_type`=0);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25236,0,0,1,62,0,100,0,9143,0,0,0,11,45353,0,0,0,0,0,7,0,0,0,0,0,0,0,'Unrestrained Dragonhawk - On Gossip option select - cast "Quest - Sunwell Daily - Ship Bombing Run Return" on player'),
(25236,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Unrestrained Dragonhawk - On Gossip option select - Close Gossip');
-- Unrestrained Dragonhawk Gossip
UPDATE `creature_template` SET `gossip_menu_id`=9143 WHERE `entry`=25236;
-- Gossip_menu from UDB
DELETE FROM `gossip_menu` WHERE `entry`=9143;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9143,12371);
-- Gossip_menu_option Update from UDB
DELETE FROM `gossip_menu_option` WHERE `menu_id`=9143;
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`) VALUES
(9143,0,0, '<Ride the dragonhawk to Sun''s Reach.>',1,1,0,0,0,0, '');
-- Gossip option Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9143;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,9143,0,0,9,11542,0,0,0,'','Show gossip option if player has quest 11542 but not complete'),
(15,9143,0,1,9,11543,0,0,0,'','Show gossip option if player has quest 11543 but not complete');
-- Creature Gossip_menu_id Update from sniff
UPDATE `creature_template` SET `gossip_menu_id`=9052 WHERE `entry`=24965; -- Vindicator Xayann 
UPDATE `creature_template` SET `gossip_menu_id`=9050 WHERE `entry`=24975; -- Mar'nah 
UPDATE `creature_template` SET `gossip_menu_id`=9126 WHERE `entry`=25032; -- Eldara Dawnrunner 
UPDATE `creature_template` SET `gossip_menu_id`=9087 WHERE `entry`=25046; -- Smith Hauthaa 
UPDATE `creature_template` SET `gossip_menu_id`=9064 WHERE `entry`=25057; -- Battlemage Arynna 
UPDATE `creature_template` SET `gossip_menu_id`=9062, `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=25059; -- Ayren Cloudbreaker 
UPDATE `creature_template` SET `gossip_menu_id`=9063 WHERE `entry`=25061; -- Harbinger Inuuro 
UPDATE `creature_template` SET `gossip_menu_id`=9127 WHERE `entry`=25069; -- Magister Ilastar 
UPDATE `creature_template` SET `gossip_menu_id`=9115 WHERE `entry`=25112; -- Anchorite Ayuri 
UPDATE `creature_template` SET `gossip_menu_id`=9105 WHERE `entry`=25169; -- Archmage Ne'thul
UPDATE `creature_template` SET `gossip_menu_id`=9286 WHERE `entry`=25632; -- Vindicator Moorba
UPDATE `creature_template` SET `gossip_menu_id`=9285 WHERE `entry`=25638; -- Captain Selana
UPDATE `creature_template` SET `gossip_menu_id`=9198 WHERE `entry`=25950; -- Shaani

-- Gossip Menu insert from sniff
DELETE FROM `gossip_menu` WHERE `entry`=9050 AND `text_id`=12237;
DELETE FROM `gossip_menu` WHERE `entry`=9052 AND `text_id`=12241;
DELETE FROM `gossip_menu` WHERE `entry`=9062 AND `text_id`=12252;
DELETE FROM `gossip_menu` WHERE `entry`=9063 AND `text_id`=12256;
DELETE FROM `gossip_menu` WHERE `entry`=9064 AND `text_id`=12258;
DELETE FROM `gossip_menu` WHERE `entry`=9087 AND `text_id`=12286;
DELETE FROM `gossip_menu` WHERE `entry`=9115 AND `text_id`=12323;
DELETE FROM `gossip_menu` WHERE `entry`=9126 AND `text_id`=12338;
DELETE FROM `gossip_menu` WHERE `entry`=9127 AND `text_id`=12340;
DELETE FROM `gossip_menu` WHERE `entry`=9198 AND `text_id`=12497;
DELETE FROM `gossip_menu` WHERE `entry`=9285 AND `text_id`=12596;
DELETE FROM `gossip_menu` WHERE `entry`=9286 AND `text_id`=12597;
DELETE FROM `gossip_menu` WHERE `entry`=9287 AND `text_id`=12598;
DELETE FROM `gossip_menu` WHERE `entry`=9288 AND `text_id`=12599;
DELETE FROM `gossip_menu` WHERE `entry`=9289 AND `text_id`=12600;
DELETE FROM `gossip_menu` WHERE `entry`=9290 AND `text_id`=12601;
DELETE FROM `gossip_menu` WHERE `entry`=9293 AND `text_id`=12604;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES
(9050,12237),
(9052,12241),
(9062,12252),
(9063,12256),
(9064,12258),
(9087,12286),
(9115,12323),
(9126,12338),
(9127,12340),
(9198,12497),
(9285,12596),
(9286,12597),
(9287,12598),
(9288,12599),
(9289,12600),
(9290,12601),
(9293,12604);

-- Creature Gossip_menu_option insert from sniff
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9050,9087,9126,9198,9285,9287,9288,9289) AND `id`=0;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=9062 AND `id` IN (0,1);
DELETE FROM `gossip_menu_option` WHERE `menu_id`=9286 AND `id`=2;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`box_coded`,`box_money`,`box_text`)VALUES
(9050,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(9062,0,0,'Speaking of action, I''ve been ordered to undertake an air strike.',1,1,0,0,0,0,''), 
(9062,1,0,'I need to intercept the Dawnblade reinforcements.',1,1,0,0,0,0,''),
(9087,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(9126,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(9198,0,1,'Let me browse your goods.',3,128,0,0,0,0,''),
(9285,0,0,'Give me a situation report, Captain.',1,1,9287,0,0,0,''),
(9286,2,0,'What is the current state of the Sunwell''s Gates?',1,1,9293,0,0,0,''), 
(9287,0,0,'What went wrong?',1,1,9288,0,0,0,''),
(9288,0,0,'Why did they stop?',1,1,9289,0,0,0,''),
(9289,0,0,'Your insight is appreciated.',1,1,9290,0,0,0,'');

-- Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9062 AND `SourceEntry` IN (0,1);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,9062,0,0,0,9,11532,0,0,0,0,'','Show gossip option only if player has taken quest 11532'),
(15,9062,0,0,1,9,11533,0,0,0,0,'','Show gossip option only if player has taken quest 11533'),
(15,9062,1,0,0,9,11542,0,0,0,0,'','Show gossip option only if player has taken quest 11542'),
(15,9062,1,0,1,9,11543,0,0,0,0,'','Show gossip option only if player has taken quest 11543');

-- SmartAI
DELETE FROM `smart_scripts` WHERE `entryorguid`=25059 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(25059,0,0,2,62,0,100,0,9062,0,0,0,11,45071,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ayren Cloudbreaker - On Gossip option select - Cast "Quest - Sunwell Daily - Dead Scar Bombing Run" on player'),
(25059,0,1,2,62,0,100,0,9062,1,0,0,11,45113,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ayren Cloudbreaker - On Gossip option select - Cast "Quest - Sunwell Daily - Ship Bombing Run" on player'),
(25059,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Ayren Cloudbreaker - On Gossip option select - Close Gossip');

-- Spell scripts from sniff
DELETE FROM `spell_scripts` WHERE `id`=45071;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(45071,2,0,16,12318,1,0,0,0,0,0); -- Play sound
-- ToC missing trigger spawns

SET @GUID            := 88412;
SET @NPC_TRIGGER1    := 34704; -- Val'kyr Twins Bullet Stalker Dark
SET @NPC_TRIGGER2    := 34720; -- Val'kyr Twins Bullet Stalker Light

UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry` IN (@NPC_TRIGGER1,@NPC_TRIGGER2);
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID+0 AND @GUID+61;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@GUID+0,@NPC_TRIGGER1,649,15,1,0,0,619.771,143.71,395.244,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+1,@NPC_TRIGGER1,649,15,1,0,0,515.352,115.349,395.288,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+2,@NPC_TRIGGER1,649,15,1,0,0,605.514,103.863,395.29,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+3,@NPC_TRIGGER1,649,15,1,0,0,615.137,156.997,395.28,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+4,@NPC_TRIGGER1,649,15,1,0,0,539.179,184.132,395.282,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+5,@NPC_TRIGGER1,649,15,1,0,0,547.76,184.634,395.289,2.93215,7200,0,0,1,0,0,0,0,0),
(@GUID+6,@NPC_TRIGGER1,649,15,1,0,0,549.764,86.4444,395.266,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+7,@NPC_TRIGGER1,649,15,1,0,0,511.417,127.158,395.266,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+8,@NPC_TRIGGER1,649,15,1,0,0,597.38,183.672,395.28,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+9,@NPC_TRIGGER1,649,15,1,0,0,573.578,187.665,395.492,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+10,@NPC_TRIGGER1,649,15,1,0,0,620.465,134.66,395.233,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+11,@NPC_TRIGGER1,649,15,1,0,0,560.484,187.743,395.959,2.93215,7200,0,0,1,0,0,0,0,0),
(@GUID+12,@NPC_TRIGGER1,649,15,1,0,0,577.299,186.854,395.289,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+13,@NPC_TRIGGER1,649,15,1,0,0,563.467,81.9323,395.288,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+14,@NPC_TRIGGER1,649,15,1,0,0,534.748,92.6424,395.289,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+15,@NPC_TRIGGER1,649,15,1,0,0,518.503,170.649,395.289,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+16,@NPC_TRIGGER1,649,15,1,0,0,514.566,159.918,395.287,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+17,@NPC_TRIGGER1,649,15,1,0,0,568.049,187.67,395.563,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+18,@NPC_TRIGGER1,649,15,1,0,0,522.955,102.127,395.29,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+19,@NPC_TRIGGER1,649,15,1,0,0,611.656,114.281,395.288,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+20,@NPC_TRIGGER1,649,15,1,0,0,616.432,126.418,395.264,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+21,@NPC_TRIGGER1,649,15,1,0,0,526.833,181.783,395.285,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+22,@NPC_TRIGGER1,649,15,1,0,0,578.722,87.4444,395.272,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+23,@NPC_TRIGGER1,649,15,1,0,0,509.743,149.005,395.253,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+24,@NPC_TRIGGER1,649,15,1,0,0,592.736,93.6667,395.289,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+25,@NPC_TRIGGER1,649,15,1,0,0,506.038,139.517,395.288,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+26,@NPC_TRIGGER1,649,15,1,0,0,608.116,171.731,395.289,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+27,@NPC_TRIGGER1,649,15,1,0,0,586.344,184.078,395.283,4.60767,7200,0,0,1,0,0,0,0,0),
(@GUID+28,@NPC_TRIGGER1,649,15,1,0,0,554.818,187.568,395.288,2.93215,7200,0,0,1,0,0,0,0,0),
(@GUID+29,@NPC_TRIGGER2,649,15,1,0,0,557.743,187.729,395.915,0,7200,0,0,1,0,0,0,0,0),
(@GUID+30,@NPC_TRIGGER2,649,15,1,0,0,544.094,184.648,395.286,0,7200,0,0,1,0,0,0,0,0),
(@GUID+31,@NPC_TRIGGER2,649,15,1,0,0,551.328,187.646,395.596,0,7200,0,0,1,0,0,0,0,0),
(@GUID+32,@NPC_TRIGGER2,649,15,1,0,0,615.137,150.818,395.269,0,7200,0,0,1,0,0,0,0,0),
(@GUID+33,@NPC_TRIGGER2,649,15,1,0,0,571.158,187.691,395.629,0,7200,0,0,1,0,0,0,0,0),
(@GUID+34,@NPC_TRIGGER2,649,15,1,0,0,606.686,106.731,395.289,0,7200,0,0,1,0,0,0,0,0),
(@GUID+35,@NPC_TRIGGER2,649,15,1,0,0,612.118,118.844,395.287,0,7200,0,0,1,0,0,0,0,0),
(@GUID+36,@NPC_TRIGGER2,649,15,1,0,0,546.057,88.7691,395.284,0,7200,0,0,1,0,0,0,0,0),
(@GUID+37,@NPC_TRIGGER2,649,15,1,0,0,517.722,169.069,395.289,0,7200,0,0,1,0,0,0,0,0),
(@GUID+38,@NPC_TRIGGER2,649,15,1,0,0,507.181,142.285,395.255,0,7200,0,0,1,0,0,0,0,0),
(@GUID+39,@NPC_TRIGGER2,649,15,1,0,0,515.399,159.75,395.287,0,7200,0,0,1,0,0,0,0,0),
(@GUID+40,@NPC_TRIGGER2,649,15,1,0,0,592.151,183.8,395.279,0,7200,0,0,1,0,0,0,0,0),
(@GUID+41,@NPC_TRIGGER2,649,15,1,0,0,510.759,127.333,395.263,0,7200,0,0,1,0,0,0,0,0),
(@GUID+42,@NPC_TRIGGER2,649,15,1,0,0,524.257,178.134,395.29,0,7200,0,0,1,0,0,0,0,0),
(@GUID+43,@NPC_TRIGGER2,649,15,1,0,0,570.779,86.2986,395.253,0,7200,0,0,1,0,0,0,0,0),
(@GUID+44,@NPC_TRIGGER2,649,15,1,0,0,588.675,93.0938,395.289,0,7200,0,0,1,0,0,0,0,0),
(@GUID+45,@NPC_TRIGGER2,649,15,1,0,0,603.528,175.476,395.289,0,7200,0,0,1,0,0,0,0,0),
(@GUID+46,@NPC_TRIGGER2,649,15,1,0,0,509.639,133.26,395.247,0,7200,0,0,1,0,0,0,0,0),
(@GUID+47,@NPC_TRIGGER2,649,15,1,0,0,618.965,139.174,395.288,0,7200,0,0,1,0,0,0,0,0),
(@GUID+48,@NPC_TRIGGER2,649,15,1,0,0,514.785,118.731,395.287,0,7200,0,0,1,0,0,0,0,0),
(@GUID+49,@NPC_TRIGGER2,649,15,1,0,0,581.243,184.062,395.287,0,7200,0,0,1,0,0,0,0,0),
(@GUID+50,@NPC_TRIGGER2,649,15,1,0,0,577.757,184.436,395.289,0,7200,0,0,1,0,0,0,0,0),
(@GUID+51,@NPC_TRIGGER2,649,15,1,0,0,580.486,89.691,395.287,0,7200,0,0,1,0,0,0,0,0),
(@GUID+52,@NPC_TRIGGER2,649,15,1,0,0,511.132,151.156,395.264,0,7200,0,0,1,0,0,0,0,0),
(@GUID+53,@NPC_TRIGGER2,649,15,1,0,0,615.401,130.816,395.263,0,7200,0,0,1,0,0,0,0,0),
(@GUID+54,@NPC_TRIGGER2,649,15,1,0,0,599.307,98.8003,395.29,0,7200,0,0,1,0,0,0,0,0),
(@GUID+55,@NPC_TRIGGER2,649,15,1,0,0,520.212,108.429,395.289,0,7200,0,0,1,0,0,0,0,0),
(@GUID+56,@NPC_TRIGGER2,649,15,1,0,0,610.983,164.696,395.288,0,7200,0,0,1,0,0,0,0,0),
(@GUID+57,@NPC_TRIGGER2,649,15,1,0,0,526.337,99.5556,395.29,0,7200,0,0,1,0,0,0,0,0),
(@GUID+58,@NPC_TRIGGER2,649,15,1,0,0,563.997,187.644,395.489,0,7200,0,0,1,0,0,0,0,0),
(@GUID+59,@NPC_TRIGGER2,649,15,1,0,0,555.695,86.0208,395.253,0,7200,0,0,1,0,0,0,0,0),
(@GUID+60,@NPC_TRIGGER2,649,15,1,0,0,535.924,184.207,395.279,0,7200,0,0,1,0,0,0,0,0),
(@GUID+61,@NPC_TRIGGER2,649,15,1,0,0,538.024,92.441,395.289,0,7200,0,0,1,0,0,0,0,0);
-- Flame Sphere should not be visible to players(only their visual)
UPDATE `creature_template` SET `flags_extra`=128 WHERE `entry` IN (30106,31686,31687);
-- Manual: Heavy Frostweave Bandage should be lootable if you have at least 390 skills in First Aid
UPDATE `conditions` SET `ConditionValue2`=390 WHERE `SourceTypeOrReferenceId`=1 AND `SourceEntry`=39152 AND `ConditionTypeOrReference`=7 AND `ConditionValue1`=129;
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
-- Beam Visual
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=60342;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,60342,0,0,31,0,3,29308,0,0,0,'','Beam Visual target Prince Taldaram');

-- script texts for Prince Taldaram
DELETE FROM `creature_text` WHERE `entry`=29308;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(29308,0,0,'The hum of magic energy in the air diminishes...',16,0,100,0,0,0,'prince taldaram SAY_1'),
(29308,1,0,'Intruders! Who trespasses in the Old Kingdom?',14,0,100,0,0,0,'prince taldaram SAY_WARNING'),
(29308,2,0,'I will feast on your remains.',14,0,100,0,0,14360,'prince taldaram SAY_AGGRO'),
(29308,3,0,'',14,10,100,0,0,14365,'prince taldaram SAY_SLAY_0'),
(29308,3,1,'I will drink no blood before it''s time.',14,0,100,0,0,14366,'prince taldaram SAY_SLAY_1'),
(29308,3,2,'One final embrace.',14,0,100,0,0,14367,'prince taldaram SAY_SLAY_2'),
(29308,4,0,'Still I hunger. Still... I... thirst.',14,0,100,0,0,14368,'prince taldaram SAY_DEATH'),
(29308,5,0,'So... appetizing.',14,0,100,0,0,14363,'prince taldaram SAY_FEED1'),
(29308,5,1,'Fresh, warm blood. It has been too long.',14,0,100,0,0,14364,'prince taldaram SAY_FEED2'),
(29308,6,0,'Your heartbeat is... music to my ears.',14,0,100,0,0,14361,'prince taldaram SAY_VANISH1'),
(29308,6,1,'I am nowhere... I am everywhere. I am the watcher, unseen.',14,0,100,0,0,14362,'prince taldaram SAY_VANISH2');

-- cleanup
DELETE FROM `script_texts` WHERE `npc_entry`=29308;
-- -----------------------------------
-- --  Loot for The Siege of Ulduar -- 
-- -----------------------------------

-- Old Cleanups:
DELETE FROM `reference_loot_template` WHERE `entry` IN ( 34116,34117,34118,34119,34120,34121,34157,34158,34159,34160,34161,34162);
-- -------------------
-- -- Set Variables --
-- -------------------
-- 10 man mode npcids
SET @FlameLevi10 :=33113;
SET @IgnisFM10 :=33118;
SET @Razorscale10 :=33186;
SET @XT002_10 :=33293;
-- 25 man mode npcids (via procedure)
call `sp_get_npc_diffentry`(@FlameLevi10,1,@FlameLevi25);
call `sp_get_npc_diffentry`(@IgnisFM10,1,@IgnisFM25);
call `sp_get_npc_diffentry`(@Razorscale10,1,@Razorscale25);
call `sp_get_npc_diffentry`(@XT002_10,1,@XT002_25);

SET @Emblem := 47241;
SET @Orb := 45087;
-- -------------------------------------
-- -- Set Reference Loot Template ids --
-- -------------------------------------

SET @EmblemRef := 34349; -- First Free ID
SET @OrbRef := @EmblemRef+1;
SET @Flame10Ref := @EmblemRef+2;
SET @Flame25Ref := @EmblemRef+3;
SET @Ignis10Ref := @EmblemRef+4;
SET @Ignis25Ref := @EmblemRef+5;
SET @Razor10Ref := @EmblemRef+6;
SET @Razor25Ref := @EmblemRef+7;
SET @XT002_10Ref := @EmblemRef+8;
SET @XT002_25Ref := @EmblemRef+9;
-- Flame Levithian
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @EmblemRef AND @EmblemRef+9;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Emblem Ref
(@EmblemRef,47241,0,1,1,1,1), -- Emblem of Triumph 1x
-- OrbRef
(@OrbRef,45087,0,1,1,1,1), -- Runed Orb 1x
-- Flame Levithian 10man
(@Flame10Ref,45286,0,1,1,1,1), -- Pyrite Infuser
(@Flame10Ref,45287,0,1,1,1,1), -- Firesoul
(@Flame10Ref,45288,0,1,1,1,1), -- Firestrider Chestguard
(@Flame10Ref,45289,0,1,1,1,1), -- Lifespark Visage
(@Flame10Ref,45291,0,1,1,1,1), -- Combustion Bracers
(@Flame10Ref,45284,0,1,1,1,1), -- Kinetic Ripper
(@Flame10Ref,45282,0,1,1,1,1), -- Ironsoul
(@Flame10Ref,45285,0,1,1,1,1), -- Might of the Leviathan
(@Flame10Ref,45292,0,1,1,1,1), -- Energy Siphon
(@Flame10Ref,45283,0,1,1,1,1), -- Flamewatch Armguards
-- Flame Levithian 25man
(@Flame25Ref,45117,0,1,1,1,1), -- Constructors Handwraps
(@Flame25Ref,45119,0,1,1,1,1), -- Embrace of the Leviathan
(@Flame25Ref,45113,0,1,1,1,1), -- Glowing Ring of Reclamation
(@Flame25Ref,45115,0,1,1,1,1), -- Leviathan Fueling Manual
(@Flame25Ref,45108,0,1,1,1,1), -- Mechanists Bindings
(@Flame25Ref,45106,0,1,1,1,1), -- Strenght of the Automaton
(@Flame25Ref,45109,0,1,1,1,1), -- Gloves of the Fiery Behemoth
(@Flame25Ref,45114,0,1,1,1,1), -- Steamcallers Totem
(@Flame25Ref,45118,0,1,1,1,1), -- Steamworkers Goggles
(@Flame25Ref,45116,0,1,1,1,1), -- Freya's Choker of Warding
(@Flame25Ref,45111,0,1,1,1,1), -- Mimiron's Inferno Couplings
(@Flame25Ref,45112,0,1,1,1,1), -- The Leviathan's Coil
(@Flame25Ref,45107,0,1,1,1,1), -- Iron Riveted War Helm

-- Ignis the Furnace Master 10man
(@Ignis10Ref,45309,0,1,1,1,1), -- Rifle of the Platinum Guard
(@Ignis10Ref,45310,0,1,1,1,1), -- Gauntlets of the Iron Furnace
(@Ignis10Ref,45311,0,1,1,1,1), -- Relentless Edge
(@Ignis10Ref,45312,0,1,1,1,1), -- Gloves of Smoldering Touch
(@Ignis10Ref,45313,0,1,1,1,1), -- Furnace Stone
(@Ignis10Ref,45314,0,1,1,1,1), -- Igniter Rod
(@Ignis10Ref,45316,0,1,1,1,1), -- Armbraces of the Vibrant Flame
(@Ignis10Ref,45317,0,1,1,1,1), -- Shawl of the Caretaker
(@Ignis10Ref,45318,0,1,1,1,1), -- Drape of Fuming Anger
(@Ignis10Ref,45321,0,1,1,1,1), -- Pauldrons of Tempered Will
-- Ignis the Furnace Master 25man
(@Ignis25Ref,45157,0,1,1,1,1), -- Cindershard Ring
(@Ignis25Ref,45158,0,1,1,1,1), -- Heart of Iron
(@Ignis25Ref,45161,0,1,1,1,1), -- Girdle of Embers
(@Ignis25Ref,45162,0,1,1,1,1), -- Flamestalker Boots
(@Ignis25Ref,45164,0,1,1,1,1), -- Helm of the Furnace Master
(@Ignis25Ref,45165,0,1,1,1,1), -- Worldcarver
(@Ignis25Ref,45166,0,1,1,1,1), -- Charred Saronite Greaves
(@Ignis25Ref,45167,0,1,1,1,1), -- Lifeforge Breastplate
(@Ignis25Ref,45168,0,1,1,1,1), -- Pyrelight Circle
(@Ignis25Ref,45169,0,1,1,1,1), -- Totem of the Dancing Flame
(@Ignis25Ref,45170,0,1,1,1,1), -- Scepter of Creation
(@Ignis25Ref,45171,0,1,1,1,1), -- Intensity
(@Ignis25Ref,45185,0,1,1,1,1), -- Flamewrought Cinch
(@Ignis25Ref,45186,0,1,1,1,1), -- Soot-Covered Mantle
(@Ignis25Ref,45187,0,1,1,1,1), -- Wristguards of the Firetender

-- Razorscale 10man
(@Razor10Ref,45298,0,1,1,1,1), -- RazoRazorcale Talon
(@Razor10Ref,45299,0,1,1,1,1), -- Dragonsteel Faceplate
(@Razor10Ref,45301,0,1,1,1,1), -- BraceRazor of the Smothering Inferno
(@Razor10Ref,45302,0,1,1,1,1), -- Treads of the Invader
(@Razor10Ref,45303,0,1,1,1,1), -- Band of Draconic Guile
(@Razor10Ref,45304,0,1,1,1,1), -- Stormtempered Girdle
(@Razor10Ref,45305,0,1,1,1,1), -- Breastplate of the Afterlife
(@Razor10Ref,45306,0,1,1,1,1), -- Binding of the Dragon Matriarch
(@Razor10Ref,45307,0,1,1,1,1), -- Ironscale Leggings
(@Razor10Ref,45308,0,1,1,1,1), -- Eye of the Broodmother
-- Razorscale 25man
(@Razor25Ref,45137,0,1,1,1,1), -- Veranus' Bane
(@Razor25Ref,45138,0,1,1,1,1), -- Drape of the Drakerider
(@Razor25Ref,45139,0,1,1,1,1), -- Dragonslayer's Brace
(@Razor25Ref,45140,0,1,1,1,1), -- RazoRazorcale Shoulderguards
(@Razor25Ref,45141,0,1,1,1,1), -- Proto-hide Leggings
(@Razor25Ref,45142,0,1,1,1,1), -- RemoRazore
(@Razor25Ref,45143,0,1,1,1,1), -- Saronite Mesh Legguards
(@Razor25Ref,45144,0,1,1,1,1), -- Sigil of Deflection
(@Razor25Ref,45146,0,1,1,1,1), -- Shackles of the Odalisque
(@Razor25Ref,45147,0,1,1,1,1), -- Guiding Star
(@Razor25Ref,45148,0,1,1,1,1), -- Living Flame
(@Razor25Ref,45149,0,1,1,1,1), -- BraceRazor of the Broodmother
(@Razor25Ref,45150,0,1,1,1,1), -- Collar of the Wyrmhunter
(@Razor25Ref,45151,0,1,1,1,1), -- Belt of the Fallen Wyrm
(@Razor25Ref,45510,0,1,1,1,1), -- Libram of Discord
 
-- XT-002 Deconstructor 10man
(@XT002_10Ref,45675,0,1,1,1,1), -- Power Enchancing Loop
(@XT002_10Ref,45676,0,1,1,1,1), -- Chestplate of Vicious Potency
(@XT002_10Ref,45677,0,1,1,1,1), -- Treacherous shoulderpads
(@XT002_10Ref,45679,0,1,1,1,1), -- Gloves of Taut grip
(@XT002_10Ref,45680,0,1,1,1,1), -- Armbands of the construct
(@XT002_10Ref,45682,0,1,1,1,1), -- Pulsing spellshield
(@XT002_10Ref,45685,0,1,1,1,1), -- Plasma Foil
(@XT002_10Ref,45686,0,1,1,1,1), -- Vest of the glowing Cresent
(@XT002_10Ref,45687,0,1,1,1,1), -- Helm of Veiled Energies
(@XT002_10Ref,45694,0,1,1,1,1), -- Conductive cord
(@XT002_10Ref,45867,0,2,2,1,1), -- Breasktplate of the Stoneshaper
(@XT002_10Ref,45868,0,2,2,1,1), -- Aesir's Edge
(@XT002_10Ref,45869,0,2,2,1,1), -- Fluxing Energy Coils
(@XT002_10Ref,45870,0,2,2,1,1), -- Magnetized Projectile Emitter
(@XT002_10Ref,45871,0,2,2,1,1), -- Seal of Ulduar
-- XT-002 Deconstructor 25man
(@XT002_25Ref,45254,0,1,1,1,1), -- Sigil of the Vengeful Heart
(@XT002_25Ref,45251,0,1,1,1,1), -- Shoulderplates of the Deconstructor
(@XT002_25Ref,45247,0,1,1,1,1), -- Signet of the Earthshaker
(@XT002_25Ref,45256,0,1,1,1,1), -- Twisted Visage
(@XT002_25Ref,45250,0,1,1,1,1), -- Crazed Construct Ring
(@XT002_25Ref,45257,0,1,1,1,1), -- Quartz Crystal Wand
(@XT002_25Ref,45260,0,1,1,1,1), -- Boots of Hasty Revival
(@XT002_25Ref,45252,0,1,1,1,1), -- Horologist's Wristguards
(@XT002_25Ref,45253,0,1,1,1,1), -- Mantle of Wavering Calm
(@XT002_25Ref,45258,0,1,1,1,1), -- Sandals of Rash Temperament
(@XT002_25Ref,45249,0,1,1,1,1), -- Brass-lined Boots
(@XT002_25Ref,45246,0,1,1,1,1), -- Golem-Shard Sticker
(@XT002_25Ref,45248,0,1,1,1,1), -- Clockwork Legplates
(@XT002_25Ref,45259,0,1,1,1,1), -- Quartz-studded Harness
(@XT002_25Ref,45255,0,1,1,1,1); -- Thunderfall Totem
-- -----------------------------------------------------------------------------------------------
-- -- END OF REFERENCES -- -- END OF REFERENCES -- -- END OF REFERENCES -- -- END OF REFERENCES -- 
-- -- END OF REFERENCES -- -- END OF REFERENCES -- -- END OF REFERENCES -- -- END OF REFERENCES --
-- -- END OF REFERENCES -- -- END OF REFERENCES -- -- END OF REFERENCES -- -- END OF REFERENCES --
-- -----------------------------------------------------------------------------------------------

-- Flame Levithian 10Man:
-- NORMAL MODE : 2x [Normal Loot Item] + 1x [Emblem of Valor]
-- ONE TOWER : 2x [Normal Loot Item] + 2x [Emblem of Conquest] + CHANCE TO [Recipe]
-- TWO TOWERS : 2x [Normal Loot Item] + 2x [Emblem of Conquest] + 1x [Runed Orb] + CHANCE TO [Recipe]
-- THREE TOWERS: 2x [Normal Loot Item] + 3x [Emblem of Conquest] + 1x [Runed Orb] + CHANCE TO [Recipe] + 1x [Recipe]
-- FOUR TOWERS : 2x [Normal Loot Item] + 3x [Emblem of Conquest] + 1x [Runed Orb] + CHANCE TO [Recipe] + 1x [Recipe] + 1x [Hard Loot Item]
-- Flame Levithian 25 man
-- NORMAL MODE : 3x [Normal Loot Item] + 1x [Emblem of Conquest] + CHANCE TO [Runed Orb] + CHANCE TO [Recipe]
-- ONE TOWER : 3x [Normal Loot Item] + 2x [Emblem of Conquest] + CHANCE TO [Runed Orb] + CHANCE TO [Recipe]
-- TWO TOWERS : 3x [Normal Loot Item] + 2x [Emblem of Conquest] + CHANCE TO [Runed Orb] + CHANCE TO [Recipe] + 2x [Runed Orb]
-- THREE TOWERS: 3x [Normal Loot Item] + 3x [Emblem of Conquest] + CHANCE TO [Runed Orb] + CHANCE TO [Recipe] + 2x [Runed Orb] + [Recipe]
-- FOUR TOWERS : 3x [Normal Loot Item] + 3x [Emblem of Conquest] + CHANCE TO [Runed Orb] + CHANCE TO [Recipe] + 2x [Runed Orb] + [Recipe] + 1x [Hard Loot Item]

DELETE FROM `creature_loot_template` WHERE `entry` IN (@FlameLevi10,@FlameLevi25,@IgnisFM10,@IgnisFM25,@Razorscale10,@Razorscale25,@XT002_10,@XT002_25);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- ---------------------------
-- -- Flame Levithian 10man -- 
-- ---------------------------
(@FlameLevi10,1,100,1,0,-@EmblemRef,1), -- 1x emblem
(@FlameLevi10,2,100,1,0,-@Flame10Ref,2), -- 2 from 10man reference
-- Hardmode: 1 tower left
(@FlameLevi10,3,100,2,0,-@EmblemRef,2), -- 2x emblem
(@FlameLevi10,4,100,2,0,-@Flame10Ref,2), -- 2 from 10man reference
-- Hardmode: 2 towers left
(@FlameLevi10,5,100,4,0,-@EmblemRef,2), -- 2x emblem
(@FlameLevi10,6,100,4,0,-@Flame10Ref,2), -- 2 from 10man reference
-- Hardmode: 3 towers left
(@FlameLevi10,7,100,8,0,-@EmblemRef,3), -- 3x emblem
(@FlameLevi10,8,100,8,0,-@Flame10Ref,2), -- 2 from 10man reference
-- Hardmode: 4 towers left
(@FlameLevi10,9,100,16,0,-@EmblemRef,3), -- 3x emblem
(@FlameLevi10,10,100,16,0,-@Flame10Ref,2), -- 2 from 10man reference
-- one from hardmodeloot:
(@FlameLevi10,45296,0,16,1,1,1), -- Twirling Blades
(@FlameLevi10,45293,0,16,1,1,1), -- Handguards of Potent Cures
(@FlameLevi10,45295,0,16,1,1,1), -- Gilded Steel Legplates
(@FlameLevi10,45300,0,16,1,1,1), -- Mantle of Fiery Vengeance
(@FlameLevi10,45297,0,16,1,1,1), -- Shimmering Seal
-- Shared Loot over the modes (masked)
-- Non-Normal (Modes 2|4|8|16) 
(@FlameLevi10,11,5,30,0,-34154,1), -- 1 from recepies (chanced) 
-- More then 1 tower up (Modes 4|8|16)
(@FlameLevi10,@Orb,100,28,0,1,3), -- Runed Orb (1-3)
-- More then 2 towers up (Modes 8|16)
(@FlameLevi10,12,100,24,0,-34154,1), -- 1 from recepies
-- ---------------------------
-- -- Flame Levithian 25man -- 
-- ---------------------------
(@FlameLevi25,1,100,1,0,-@EmblemRef,1), -- 1x emblem
(@FlameLevi25,2,100,1,0,-@Flame25Ref,3), -- 3 from 25man reference
-- Hardmode: 1 tower left
(@FlameLevi25,3,100,2,0,-@EmblemRef,2), -- 2x emblem
(@FlameLevi25,4,100,2,0,-@Flame25Ref,3), -- 3 from 25man reference
-- Hardmode: 2 towers left
(@FlameLevi25,5,100,4,0,-@EmblemRef,2), -- 2x emblem
(@FlameLevi25,6,100,4,0,-@Flame25Ref,3), -- 3 from 25man reference
-- Hardmode: 3 towers left
(@FlameLevi25,7,100,8,0,-@EmblemRef,3), -- 3x emblem
(@FlameLevi25,8,100,8,0,-@Flame25Ref,3), -- 3 from 25man reference
-- Hardmode: 4 towers left
(@FlameLevi25,9,100,16,0,-@EmblemRef,3), -- 3x emblem
(@FlameLevi25,10,100,16,0,-@Flame25Ref,3), -- 3 from 25man reference
-- one from hardmodeloot:
(@FlameLevi25,45132,0,16,1,1,1), -- Golden Saronite Dragon
(@FlameLevi25,45133,0,16,1,1,1), -- Pendant of Fiery Havoc
(@FlameLevi25,45134,0,16,1,1,1), -- Plated Leggings of Ruination
(@FlameLevi25,45135,0,16,1,1,1), -- Boots of Fiery Resolution
(@FlameLevi25,45136,0,16,1,1,1), -- Shoulderpads of Dormant Energies
(@FlameLevi25,45086,0,16,1,1,1), -- Rising Sun
(@FlameLevi25,45110,0,16,1,1,1), -- Titanguard
-- Shared Loot over the modes (masked)
-- All Modes (1|2|4|8|16):
(@FlameLevi25,11,5,31,0,-@OrbRef,1), -- Runed Orb (1x Chanced)
(@FlameLevi25,45038,8,1,0,1,1), -- Fragment of Val'anyr (quest only!?)
(@FlameLevi25,12,5,31,0,-34154,1), -- 1 from recepies (chanced) 
-- More then 1 tower up (Modes 4|8|16)
(@FlameLevi25,13,100,28,0,-@OrbRef,2), -- Runed Orb (2x garanteed)
-- More then 2 towers up (Modes 8|16)
(@FlameLevi25,14,100,24,0,-34154,1), -- 1 from recepies
-- ------------------------------
-- -- IGNIS THE FURNACE MASTER --
-- ------------------------------
-- Ignis the Furnace Master 10man
(@IgnisFM10,1,100,1,0,-@Ignis10Ref,2), -- 2 items from Ref loot
(@IgnisFM10,@Emblem,100,1,0,1,1), -- 1 Emblem
-- Ignis the Furnace Master 25man
(@IgnisFM25,1,100,1,0,-@Ignis25Ref,3), -- 3 items from Ref loot
(@IgnisFM25,@Emblem,100,1,0,2,2), -- 2 Emblem
(@IgnisFM25,3,10,1,0,-34154,1), -- 1 from recepies
(@IgnisFM25,45038,8,1,0,1,1), -- Fragment of Val'anyr (quest only!?)
(@IgnisFM25,45087,75,1,0,1,1), -- Runed Orb
-- ----------------
-- -- RAZORSCALE --
-- ----------------
-- Razorscale 10man
(@Razorscale10,1,100,1,0,-@Razor10Ref ,2), -- 2 items from ref loot
(@Razorscale10,@Emblem,100,1,0,1,1), -- Emblem of Triumph
-- Razorscale 25man
(@Razorscale25,1,100,1,0,-@Razor25Ref,3), -- 3 items from Ref loot
(@Razorscale25,@Emblem,100,1,0,1,2), -- 2 Emblems
(@Razorscale25,2,10,1,0,-34154,1), -- 1 from recepies
(@Razorscale25,45038,8,1,0,1,1), -- Fragment of Val'anyr (quest only!?)
(@Razorscale25,45087,75,1,0,1,1), -- Runed Orb
-- -------------------------
-- -- XT002 DECONSTRUCTOR --
-- -------------------------
-- X002 Deconstructor 10man (and hardmode)
(@XT002_10,1,100,3,0,-@XT002_10Ref,2), -- 2items from Ref loot
(@XT002_10,@Emblem,100,3,0,1,1), -- 1x Emblem 
-- Hard mode 10man only:
(@XT002_10,45442,0,2,1,1,1), -- Sorthalis,Hammer of the Watchers
(@XT002_10,45443,0,2,1,1,1), -- Charm of Meticulous Timing
(@XT002_10,45444,0,2,1,1,1), -- Gloves of the Steady Hand
(@XT002_10,45445,0,2,1,1,1), -- Breastplate of the Devoted
(@XT002_10,45446,0,2,1,1,1), -- Grasps of Reason
-- X002 Deconstructor 25man (and hardmode)
(@XT002_25,1,100,3,0,-@XT002_25Ref,3), -- 3 items from Ref loot
(@XT002_25,2,10,3,0,-34154,1), -- 1 from recepies
(@XT002_25,45038,8,3,0,1,1), -- Fragment of Val'anyr (quest only!?)
(@XT002_25,45087,75,3,0,1,1), -- Runed Orb
(@XT002_25,47241,100,3,0,1,2), -- 2 Emblem of Triumph
-- Hard Mode 25man only:
(@XT002_25,45442,0,2,1,1,1), -- Sorthalis,Hammer of the Watchers
(@XT002_25,45443,0,2,1,1,1), -- Charm of Meticulous Timing
(@XT002_25,45444,0,2,1,1,1), -- Gloves of the Steady Hand
(@XT002_25,45445,0,2,1,1,1), -- Breastplate of the Devoted
(@XT002_25,45446,0,2,1,1,1); -- Grasps of Reason
-- (re) Add reference 26042
SET @NEC := 26042; -- Northrend Emotion Cooking Recipe Reference
DELETE FROM `reference_loot_template` WHERE `entry`=@NEC;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@NEC,43507,0,1,1,1,1), -- Recipe: Tasty cupcake
(@NEC,43508,0,1,1,1,1), -- Recipe: Last Week's Mammoth
(@NEC,43509,0,1,1,1,1), -- Recipe: Bad Clams
(@NEC,43510,0,1,1,1,1); -- Recipe: Haunted Herring

DELETE FROM `creature_loot_template` WHERE `entry` IN (2436,5928,5936,12239,12240,12241,12242,12243,14527,14529,14531,16506,16836,17307,21166,23809,23954,23963,23964,23983,24175,25234,28027,28113,28138,28494,29554,30177,30954,31779,40419);
UPDATE `creature_template`SET `lootid`=entry WHERE `entry` IN (2436,5928,5936,12239,12240,12241,12242,12243,14527,14529,14531,16506,16836,21166,23809,23963,23964,23983,25234,28027,28138,28494,29554,30954,31779,40419);
UPDATE `creature_template` SET `lootid`=0 WHERE `entry` IN (17307,23954,24175,28113,30177);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Farmer Kent (friendly?)
(2436,3692,-100,1,0,1,1), -- Hilsbrad Human Skull
-- Sorrow Wing
(5928,5808,-50,1,0,1,1), --  Pridewing Venom Sac
(5928,5137,80,1,0,1,1), -- Bright Eyeball
(5928,5136,10,1,0,1,1), -- Torn Furry Ear
(5928,1,100,1,0,-@NEC,1), -- Random world green drop ilvl 25-30
-- Orca
(5936,26000,3,1,1,-26000,1), -- Northrend World Grey Reference #1
(5936,26001,3,1,1,-26001,1), -- Northrend World Grey Reference #2
(5936,26003,1,1,1,-26003,1), -- Northrend World Green Reference #1
(5936,26004,1,1,1,-26004,1), -- Northrend World Green Reference #2
(5936,26005,1,1,1,-26005,1), -- Northrend World Green Reference #3
(5936,26006,1,1,1,-26006,1), -- Northrend World Green Reference #4
(5936,26017,0.5,1,1,-26017,1), -- Northrend World Blue Reference #1
(5936,26018,0.5,1,1,-26018,1), -- Northrend World Blue Reference #2
(5936,26019,0.5,1,1,-26019,1), -- Northrend World Blue Reference #3
(5936,26020,0.5,1,1,-26020,1), -- Northrend World Blue Reference #4
-- Add Theradric Crystal Carving (17684) to the following creatures
(12239,17684,-25,1,0,1,1), -- Spirit of Gelk
(12240,17684,-25,1,0,1,1), -- Spirit of Kolk
(12241,17684,-25,1,0,1,1), -- Spirit of Magra
(12242,17684,-25,1,0,1,1), -- Spirit of Maraudos
(12243,17684,-25,1,0,1,1), -- Spirit of Veng
(14527,18952,-100,1,0,1,1), -- Simone the Inconspicuous - Simone's Head
(14529,18953,-100,1,0,1,1), -- Franklin the Friendly - Klinfran's Head
(14531,18955,-100,1,0,1,1), -- Artorius the Amiable - Artorius's Head
(16506,22708,-100,1,0,1,1), -- Naxxramas Worshipper - Fate of Ramaladni
(16836,23460,-100,1,0,1,1), -- Escaped Dreghood - Broken Blood Sample
(21166,30451,-15,1,0,1,1), -- Illidari Dreadlord - Lohn'goron, Bow of the Torn-heart
-- Vengeance Landing Cannoneer
(23809,26000,3,1,1,-26000,1), -- Northrend World Grey Reference #1
(23809,26001,3,1,1,-26001,1), -- Northrend World Grey Reference #2
(23809,26005,1,1,1,-26005,1), -- Northrend World Green Reference #3
-- Sergeant Lorric
(23963,26000,3,1,1,-26000,1), -- Northrend World Grey Reference #1
(23963,26001,3,1,1,-26001,1), -- Northrend World Grey Reference #2
(23963,26003,1,1,1,-26003,1), -- Northrend World Green Reference #1
(23963,26004,1,1,1,-26004,1), -- Northrend World Green Reference #2
(23963,26017,0.5,1,1,-26017,1), -- Northrend World Blue Reference #1
(23963,26018,0.5,1,1,-26018,1), -- Northrend World Blue Reference #2
(23963,26044,2,1,0,-@NEC,1), -- Northrend Emotion Cooking Recipes
-- Lieutenant Celeyne
(23964,26000,3,1,1,-26000,1), -- Northrend World Grey Reference #1
(23964,26001,3,1,1,-26001,1), -- Northrend World Grey Reference #2
(23964,26003,1,1,1,-26003,1), -- Northrend World Green Reference #1
(23964,26004,1,1,1,-26004,1), -- Northrend World Green Reference #2
(23964,26017,0.5,1,1,-26017,1), -- Northrend World Blue Reference #1
(23964,26018,0.5,1,1,-26018,1), -- Northrend World Blue Reference #2
(23964,26044,2,1,0,-@NEC,1), -- Northrend Emotion Cooking Recipes
-- North Fleet Marine
(23983,26000,3,1,1,-26000,1), -- Northrend World Grey Reference #1
(23983,26001,3,1,1,-26001,1), -- Northrend World Grey Reference #2
(23983,26003,1,1,1,-26003,1), -- Northrend World Green Reference #1
(23983,26004,1,1,1,-26004,1), -- Northrend World Green Reference #2
(23983,26017,0.5,1,1,-26017,1), -- Northrend World Blue Reference #1
(23983,26018,0.5,1,1,-26018,1), -- Northrend World Blue Reference #2
(23983,26044,2,1,0,-@NEC,1), -- Northrend Emotion Cooking Recipes
-- Stormfleet Deckhand
(25234,26000,3,1,1,-26000,1), -- Northrend World Grey Reference #1
(25234,26003,1,1,1,-26003,1), -- Northrend World Green Reference #1
-- High-Oracle Soo-say
(28027,17058,50,1,0,1,1), -- Fish Oil
(28027,17057,30,1,0,1,1), -- Shiny Fish Scales
(28027,33470,15,1,0,2,4), -- Frostweave Cloth
(28027,35951,10,1,0,1,3), -- Poached Emperor Salmon
(28027,38642,-1,1,0,1,1), -- Golden Engagement Ring
-- Elder Harkek
(28138,33470,40,1,0,2,4), -- Frostweave Cloth
(28138,33447,4,1,0,1,1), -- Runic Healing Potion
(28138,38642,-1,1,0,1,1), -- Golden Engagement Ring
-- Kutube'sa
(28494,26001,3,1,1,-26001,1), -- Northrend World Grey Reference #2
(28494,26002,3,1,1,-26002,1), -- Northrend World Grey Reference #3
(28494,26010,1,1,1,-26010,1), -- Northrend World Green Reference #4
(28494,26011,1,1,1,-26011,1), -- Northrend World Green Reference #5
(28494,26012,1,1,1,-26012,1), -- Northrend World Green Reference #6
(28494,26023,0.5,1,1,-26023,1), -- Northrend World Blue Reference #3
(28494,26025,0.5,1,1,-26025,1), -- Northrend World Blue Reference #4
(28494,26026,0.5,1,1,-26026,1), -- Northrend World Blue Reference #5
(28494,26044,2,1,0,-@NEC,1), -- Northrend Emotion Cooking Recipes
(28494,39152,35,1,0,1,1), -- Manual: Heavy Frostweave Bandage
(28494,43297,1,1,0,1,1), -- Damaged Necklace
-- Snowblind Devotee
(29554,26001,3,1,1,-26001,1), -- Northrend World Grey Reference #2
(29554,26002,3,1,1,-26002,1), -- Northrend World Grey Reference #3
(29554,26009,1,1,1,-26009,1), -- Northrend World Green Reference #3
(29554,26010,1,1,1,-26010,1), -- Northrend World Green Reference #4
(29554,26011,1,1,1,-26011,1), -- Northrend World Green Reference #5
(29554,26012,1,1,1,-26012,1), -- Northrend World Green Reference #6
(29554,26013,1,1,1,-26013,1), -- Northrend World Green Reference #7
(29554,26023,0.5,1,1,-26023,1), -- Northrend World Blue Reference #3
(29554,26024,0.5,1,1,-26024,1), -- Northrend World Blue Reference #4
(29554,26025,0.5,1,1,-26025,1), -- Northrend World Blue Reference #5
(29554,26026,0.5,1,1,-26026,1), -- Northrend World Blue Reference #6
(29554,26044,2,1,0,-@NEC,1), -- Northrend Emotion Cooking Recipes
(29554,39152,35,1,0,1,1), -- Manual: Heavy Frostweave Bandage
(29554,43297,1,1,0,1,1), -- Damaged Necklace
-- Rokir
(30954,26001,6,1,1,-26001,1), -- Northrend World Grey Reference #2
(30954,26002,6,1,1,-26002,1), -- Northrend World Grey Reference #3
(30954,26014,2,1,1,-26014,1), -- Northrend World Green Reference #8
(30954,26015,2,1,1,-26015,1), -- Northrend World Green Reference #9
-- Skeletal Archmage
(31779,26001,3,1,1,-26001,1), -- Northrend World Grey Reference #2
(31779,26002,3,1,1,-26002,1), -- Northrend World Grey Reference #3
(31779,26013,1,1,1,-26013,1), -- Northrend World Green Reference #7
(31779,26014,1,1,1,-26014,1), -- Northrend World Green Reference #8
(31779,26015,1,1,1,-26015,1), -- Northrend World Green Reference #9
(31779,26028,0.5,1,1,-26028,1), -- Northrend World Blue Reference #8
(31779,39152,50,1,0,1,1), -- Manual: Heavy Frostweave Bandage
(31779,43297,1,1,0,1,1), -- Damaged Necklace
-- Charscale Assaulter
(40419,26001,6,1,1,-26001,1), -- Northrend World Grey Reference #2
(40419,26002,6,1,1,-26002,1), -- Northrend World Grey Reference #3
(40419,26015,2,1,1,-26015,1), -- Northrend World Green Reference #9
(40419,26016,2,1,1,-26016,1); -- Northrend World Green Reference #10
-- conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceGroup` IN (28494,29554,31779);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(1,28494,39152,7,129,390,'Manual: Heavy Frostweave Bandage will drop only if the player has first aid at 390'),
(1,29554,39152,7,129,390,'Manual: Heavy Frostweave Bandage will drop only if the player has first aid at 390'),
(1,31779,39152,7,129,390,'Manual: Heavy Frostweave Bandage will drop only if the player has first aid at 390');
-- darkmoon faerie resync, again
UPDATE `game_event` SET `start_time`='2012-04-01 00:01:00' WHERE `eventEntry`=5;
UPDATE `game_event` SET `start_time`='2012-05-06 00:01:00' WHERE `eventEntry`=3;
UPDATE `game_event` SET `start_time`='2012-06-03 00:01:00' WHERE `eventEntry`=4;
UPDATE `creature_template` SET `HoverHeight`=10.8, `VehicleId`=232 WHERE `entry`=30393;
UPDATE `creature_template` SET `HoverHeight`=10.8, `VehicleId`=237 WHERE `entry`=30461;
UPDATE `creature_template` SET `HoverHeight`=10 WHERE `entry`=27530;
UPDATE `creature_template` SET `HoverHeight`=10 WHERE `entry`=26277;
UPDATE `creature_template` SET `HoverHeight`=10 WHERE `entry`=26276;
UPDATE `creature_template` SET `HoverHeight`=1.2 WHERE `entry`=31070;
UPDATE `creature_template` SET `HoverHeight`=12 WHERE `entry`=37126;
UPDATE `creature_template` SET `HoverHeight`=15 WHERE `entry`=27608;
UPDATE `creature_template` SET `HoverHeight`=15 WHERE `entry`=27608;
UPDATE `creature_template` SET `HoverHeight`=1.6 WHERE `entry`=38392;
UPDATE `creature_template` SET `HoverHeight`=2.25 WHERE `entry`=30272;
UPDATE `creature_template` SET `HoverHeight`=2.58, `Scale`=1.72 WHERE `entry`=26607;
UPDATE `creature_template` SET `HoverHeight`=25 WHERE `entry`=37755;
UPDATE `creature_template` SET `HoverHeight`=26 WHERE `entry`=29790;
UPDATE `creature_template` SET `HoverHeight`=2.7 WHERE `entry`=25451;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=29048;
UPDATE `creature_template` SET `HoverHeight`=2, `VehicleId`=234 WHERE `entry`=30228;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=25445;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=26761;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=26761;
UPDATE `creature_template` SET `HoverHeight`=2 WHERE `entry`=25721;
UPDATE `creature_template` SET `HoverHeight`=35 WHERE `entry`=27789;
UPDATE `creature_template` SET `HoverHeight`=3 WHERE `entry`=34567;
UPDATE `creature_template` SET `HoverHeight`=3 WHERE `entry`=26668;
UPDATE `creature_template` SET `HoverHeight`=3, `VehicleId`=390 WHERE `entry`=34120;
UPDATE `creature_template` SET `HoverHeight`=3, `VehicleId`=108 WHERE `entry`=24083;
UPDATE `creature_template` SET `HoverHeight`=3, `VehicleId`=270 WHERE `entry`=31137;
UPDATE `creature_template` SET `HoverHeight`=4 WHERE `entry`=24272;
UPDATE `creature_template` SET `HoverHeight`=4 WHERE `entry`=37098;
UPDATE `creature_template` SET `HoverHeight`=4 WHERE `entry`=28534;
UPDATE `creature_template` SET `HoverHeight`=4 WHERE `entry`=28511;
UPDATE `creature_template` SET `HoverHeight`=5.85 WHERE `entry`=26736;
UPDATE `creature_template` SET `HoverHeight`=5.85 WHERE `entry`=26736;
UPDATE `creature_template` SET `HoverHeight`=5.85 WHERE `entry`=32534;
UPDATE `creature_template` SET `HoverHeight`=5, `VehicleId`=348 WHERE `entry`=33214;
UPDATE `creature_template` SET `HoverHeight`=5 WHERE `entry`=27693;
UPDATE `creature_template` SET `HoverHeight`=5 WHERE `entry`=34203;
UPDATE `creature_template` SET `HoverHeight`=6.25 WHERE `entry`=40083;
UPDATE `creature_template` SET `HoverHeight`=6.25 WHERE `entry`=40100;
UPDATE `creature_template` SET `HoverHeight`=6 WHERE `entry`=34496;
UPDATE `creature_template` SET `HoverHeight`=6 WHERE `entry`=34496;
UPDATE `creature_template` SET `HoverHeight`=6 WHERE `entry`=34497;
UPDATE `creature_template` SET `HoverHeight`=7.5 WHERE `entry`=26933;
UPDATE `creature_template` SET `HoverHeight`=8.4, `VehicleId`=232 WHERE `entry`=30420;
UPDATE `creature_template` SET `HoverHeight`=8 WHERE `entry`=33186;
UPDATE `creature_template` SET `HoverHeight`=9 WHERE `entry`=26933;
UPDATE `creature_template` SET `HoverHeight`=9  WHERE `entry`=37528;
UPDATE `creature_template` SET `HoverHeight`=9  WHERE `entry`=37230;
UPDATE `creature_template` SET `HoverHeight`=9, `VehicleId`=375 WHERE `entry`=33687;
UPDATE `creature_template` SET `HoverHeight`=9, `VehicleId`=535 WHERE `entry`=36661;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=10.8, `VehicleId`=232 WHERE `entry`=30393;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=10 WHERE `entry`=27608;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=10 WHERE `entry`=27608;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=15 WHERE `entry`=32630;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=1.6 WHERE `entry`=38391;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2.25, `VehicleId`=247 WHERE `entry`=30564;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2.25 WHERE `entry`=30272;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2 WHERE `entry`=25721;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2 WHERE `entry`=29570;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=2 WHERE `entry`=26761;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=3.12, `Scale`=2.08 WHERE `entry`=26607;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=3 WHERE `entry`=26668;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=3, `VehicleId`=108 WHERE `entry`=24083;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=4 WHERE `entry`=37098;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=4  WHERE `entry`=30945;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=5.85 WHERE `entry`=26736;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=5.85 WHERE `entry`=26736;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=5, `VehicleId`=276 WHERE `entry`=31432;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=6 WHERE `entry`=30501;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=7.5 WHERE `entry`=26933;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=8.4, `VehicleId`=232 WHERE `entry`=30420;
UPDATE `creature_template` SET `InhabitType`=0x4, `HoverHeight`=9 WHERE `entry`=26933;

DELETE FROM `spell_script_names` WHERE `spell_id` IN (34477, 35079);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(34477,'spell_hun_misdirection'), 
(35079,'spell_hun_misdirection_proc');
ALTER TABLE `battleground_template` CHANGE `Weight` `Weight` tinyint(3) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `conditions` CHANGE `SourceId` `SourceId` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `creature` CHANGE `equipment_id` `equipment_id` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `creature_addon` CHANGE `path_id` `path_id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_ai_scripts` CHANGE `id` `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier';
ALTER TABLE `creature_ai_scripts` CHANGE `creature_id` `creature_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature Template Identifier';
ALTER TABLE `creature_ai_scripts` CHANGE `event_type` `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type';
ALTER TABLE `creature_ai_scripts` CHANGE `event_chance` `event_chance` int(10) unsigned NOT NULL DEFAULT '100';
ALTER TABLE `creature_ai_scripts` CHANGE `event_flags` `event_flags` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_ai_scripts` CHANGE `action1_type` `action1_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Action Type';
ALTER TABLE `creature_ai_scripts` CHANGE `action2_type` `action2_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Action Type';
ALTER TABLE `creature_ai_scripts` CHANGE `action3_type` `action3_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Action Type';
ALTER TABLE `creature_ai_summons` CHANGE `id` `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Location Identifier';
ALTER TABLE `creature_ai_summons` CHANGE `spawntimesecs` `spawntimesecs` int(10) unsigned NOT NULL DEFAULT '120';
ALTER TABLE `creature_classlevelstats` CHANGE `level` `level` tinyint(4) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `class` `class` tinyint(4) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basehp0` `basehp0` smallint(6) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basehp1` `basehp1` smallint(6) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basehp2` `basehp2` smallint(6) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basemana` `basemana` smallint(6) NOT NULL;
ALTER TABLE `creature_classlevelstats` CHANGE `basearmor` `basearmor` smallint(6) NOT NULL;
ALTER TABLE `creature_formations` CHANGE `leaderGUID` `leaderGUID` int(10) unsigned NOT NULL;
ALTER TABLE `creature_formations` CHANGE `memberGUID` `memberGUID` int(10) unsigned NOT NULL;
ALTER TABLE `creature_formations` CHANGE `groupAI` `groupAI` int(10) unsigned NOT NULL;
ALTER TABLE `creature_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `creature_onkill_reputation` CHANGE `RewOnKillRepValue1` `RewOnKillRepValue1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `KillCredit1` `KillCredit1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `KillCredit2` `KillCredit2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `exp` `exp` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance1` `resistance1` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance2` `resistance2` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance3` `resistance3` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance4` `resistance4` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance5` `resistance5` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `resistance6` `resistance6` smallint(6) NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem1` `questItem1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem2` `questItem2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem3` `questItem3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem4` `questItem4` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem5` `questItem5` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `questItem6` `questItem6` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_template` CHANGE `WDBVerified` `WDBVerified` smallint(6) NULL DEFAULT '1';
ALTER TABLE `creature_template_addon` CHANGE `path_id` `path_id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `creature_transport` CHANGE `guid` `guid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'GUID of NPC on transport - not the same as creature.guid';
ALTER TABLE `creature_transport` CHANGE `transport_entry` `transport_entry` int(11) NOT NULL COMMENT 'Transport entry';
ALTER TABLE `creature_transport` CHANGE `npc_entry` `npc_entry` int(11) NOT NULL COMMENT 'NPC entry';
ALTER TABLE `creature_transport` CHANGE `emote` `emote` int(11) NOT NULL;
ALTER TABLE `db_script_string` CHANGE `entry` `entry` int(10) unsigned NOT NULL DEFAULT '0';  
  ALTER TABLE `exploration_basexp` CHANGE `level` `level` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `exploration_basexp` CHANGE `basexp` `basexp` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `fishing_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `game_event_creature` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `game_event_gameobject` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `game_event_model_equip` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_npc_vendor` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_pool` CHANGE `eventEntry` `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `gameobject_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `gameobject_template` CHANGE `WDBVerified` `WDBVerified` smallint(6) NULL DEFAULT '1';
ALTER TABLE `gossip_menu` CHANGE `entry` `entry` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `menu_id` `menu_id` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `id` `id` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `box_money` `box_money` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `gossip_menu_option` CHANGE `action_menu_id` `action_menu_id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `instance_template` CHANGE `allowMount` `allowMount` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `ip2nation` CHANGE `ip` `ip` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `item_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `item_set_names` CHANGE `WDBVerified` `WDBVerified` smallint(6) NOT NULL DEFAULT '1';
ALTER TABLE `item_template` CHANGE `spellcharges_1` `spellcharges_1` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `spellcharges_2` `spellcharges_2` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `spellcharges_3` `spellcharges_3` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `spellcharges_4` `spellcharges_4` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `spellcharges_5` `spellcharges_5` smallint(6) NULL DEFAULT NULL;
ALTER TABLE `item_template` CHANGE `BagFamily` `BagFamily` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `TotemCategory` `TotemCategory` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `socketContent_1` `socketContent_1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `socketContent_2` `socketContent_2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `socketContent_3` `socketContent_3` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `socketBonus` `socketBonus` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `GemProperties` `GemProperties` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `item_template` CHANGE `WDBVerified` `WDBVerified` smallint(6) NULL DEFAULT '1';
ALTER TABLE `item_template` CHANGE `ScalingStatValue` `ScalingStatValue` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `mail_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `milling_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `npc_spellclick_spells` CHANGE `user_type` `user_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'relation with summoner: 0-no 1-friendly 2-raid 3-party player can click';
ALTER TABLE `outdoorpvp_template` CHANGE `TypeId` `TypeId` tinyint(3) unsigned NOT NULL;
ALTER TABLE `page_text` CHANGE `WDBVerified` `WDBVerified` smallint(6) NULL DEFAULT '1';
ALTER TABLE `pet_name_generation` CHANGE `half` `half` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `pickpocketing_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `player_factionchange_achievement` CHANGE `alliance_id` `alliance_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_achievement` CHANGE `horde_id` `horde_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_items` CHANGE `race_A` `race_A` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_items` CHANGE `alliance_id` `alliance_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_items` CHANGE `race_H` `race_H` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_items` CHANGE `horde_id` `horde_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_reputations` CHANGE `alliance_id` `alliance_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_reputations` CHANGE `horde_id` `horde_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_spells` CHANGE `alliance_id` `alliance_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_factionchange_spells` CHANGE `horde_id` `horde_id` int(10) unsigned NOT NULL; -- also changed to unsigned
ALTER TABLE `player_xp_for_level` CHANGE `lvl` `lvl` tinyint(3) unsigned NOT NULL; -- also changed from int to tinyint
ALTER TABLE `playercreateinfo_action` CHANGE `action` `action` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `playercreateinfo_item` CHANGE `amount` `amount` tinyint(4) NOT NULL DEFAULT '1';
ALTER TABLE `playercreateinfo_spell_custom` DROP `Active`; -- delete field, it's not used anywhere
ALTER TABLE `prospecting_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `quest_poi` CHANGE `objIndex` `objIndex` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_poi_points` CHANGE `x` `x` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_poi_points` CHANGE `y` `y` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredFactionValue1` `RequiredFactionValue1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredFactionValue2` `RequiredFactionValue2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredMinRepValue` `RequiredMinRepValue` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredMinRepValue` `RequiredMinRepValue` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredMaxRepValue` `RequiredMaxRepValue` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `PrevQuestId` `PrevQuestId` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `NextQuestId` `NextQuestId` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `ExclusiveGroup` `ExclusiveGroup` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardSpellCast` `RewardSpellCast` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardHonor` `RewardHonor` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardXPId` `RewardXPId` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId1` `RewardFactionValueId1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId2` `RewardFactionValueId2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId3` `RewardFactionValueId3` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId4` `RewardFactionValueId4` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueId5` `RewardFactionValueId5` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride1` `RewardFactionValueIdOverride1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride2` `RewardFactionValueIdOverride2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride3` `RewardFactionValueIdOverride3` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride4` `RewardFactionValueIdOverride4` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RewardFactionValueIdOverride5` `RewardFactionValueIdOverride5` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredNpcOrGo1` `RequiredNpcOrGo1` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredNpcOrGo2` `RequiredNpcOrGo2` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredNpcOrGo3` `RequiredNpcOrGo3` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `RequiredNpcOrGo4` `RequiredNpcOrGo4` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `Unknown0` `Unknown0` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `DetailsEmoteDelay1` `DetailsEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `DetailsEmoteDelay2` `DetailsEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `DetailsEmoteDelay3` `DetailsEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `DetailsEmoteDelay4` `DetailsEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `OfferRewardEmoteDelay1` `OfferRewardEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `OfferRewardEmoteDelay2` `OfferRewardEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `OfferRewardEmoteDelay3` `OfferRewardEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `OfferRewardEmoteDelay4` `OfferRewardEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `quest_template` CHANGE `WDBVerified` `WDBVerified` smallint(6) NOT NULL DEFAULT '1';
ALTER TABLE `reference_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `reputation_spillover_template` CHANGE `faction` `faction` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction entry';
ALTER TABLE `reputation_spillover_template` CHANGE `faction1` `faction1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction to give spillover for';
ALTER TABLE `reputation_spillover_template` CHANGE `faction2` `faction2` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `reputation_spillover_template` CHANGE `faction3` `faction3` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `reputation_spillover_template` CHANGE `faction4` `faction4` smallint(5) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `skinning_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `spell_area` CHANGE `quest_start_active` `quest_start_active` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_area` CHANGE `gender` `gender` tinyint(3) unsigned NOT NULL DEFAULT '2';
ALTER TABLE `spell_area` CHANGE `autocast` `autocast` tinyint(3) unsigned NOT NULL DEFAULT '0';
-- All the fields in spell_dbc where changed to full int32 since the DBC structure is used
ALTER TABLE `spell_dbc` CHANGE `Dispel` `Dispel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `Mechanic` `Mechanic` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `CastingTimeIndex` `CastingTimeIndex` int(10) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `spell_dbc` CHANGE `DurationIndex` `DurationIndex` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `ProcChance` `ProcChance` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `ProcCharges` `ProcCharges` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `BaseLevel` `BaseLevel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `MaxLevel` `MaxLevel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `SpellLevel` `SpellLevel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `RangeIndex` `RangeIndex` int(10) unsigned NOT NULL DEFAULT '1';
ALTER TABLE `spell_dbc` CHANGE `Effect1` `Effect1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `Effect2` `Effect2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `Effect3` `Effect3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectMechanic1` `EffectMechanic1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectMechanic2` `EffectMechanic2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectMechanic3` `EffectMechanic3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetA1` `EffectImplicitTargetA1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetA2` `EffectImplicitTargetA2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetA3` `EffectImplicitTargetA3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetB1` `EffectImplicitTargetB1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetB2` `EffectImplicitTargetB2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectImplicitTargetB3` `EffectImplicitTargetB3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectRadiusIndex1` `EffectRadiusIndex1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectRadiusIndex2` `EffectRadiusIndex2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectRadiusIndex3` `EffectRadiusIndex3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectApplyAuraName1` `EffectApplyAuraName1` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectApplyAuraName2` `EffectApplyAuraName2` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `EffectApplyAuraName3` `EffectApplyAuraName3` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `MaxTargetLevel` `MaxTargetLevel` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `SpellFamilyName` `SpellFamilyName` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `MaxAffectedTargets` `MaxAffectedTargets` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `DmgClass` `DmgClass` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `PreventionType` `PreventionType` int(10) unsigned NOT NULL DEFAULT '0';
--
ALTER TABLE `spell_group` CHANGE `id` `id` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `spell_loot_template` CHANGE `mincountOrRef` `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1';
ALTER TABLE `spell_proc` CHANGE `spellPhaseMask` `spellPhaseMask` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `spell_proc` CHANGE `hitMask` `hitMask` int(11) NOT NULL DEFAULT '0';
ALTER TABLE `spell_enchant_proc_data` CHANGE `procEx` `procEx` int(10) unsigned NOT NULL DEFAULT '0'; -- changed from float to int
ALTER TABLE `spell_required` CHANGE `spell_id` `spell_id` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `spell_required` CHANGE `req_spell` `req_spell` mediumint(8) NOT NULL DEFAULT '0';
ALTER TABLE `spell_threat` CHANGE `flatMod` `flatMod` int(11) NULL DEFAULT NULL;
ALTER TABLE `vehicle_accessory` CHANGE `seat_id` `seat_id` tinyint(4) NOT NULL DEFAULT '0';
ALTER TABLE `vehicle_accessory` CHANGE `minion` `minion` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `vehicle_template_accessory` CHANGE `seat_id` `seat_id` tinyint(4) NOT NULL DEFAULT '0';
ALTER TABLE `vehicle_template_accessory` CHANGE `minion` `minion` tinyint(3) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `version` CHANGE `cache_id` `cache_id` int(11) NULL DEFAULT '0';
ALTER TABLE `waypoint_data` CHANGE `move_flag` `move_flag` tinyint(4) NOT NULL DEFAULT '0';
ALTER TABLE `spell_dbc` CHANGE `StackAmount` `StackAmount` int(10) unsigned NOT NULL DEFAULT '0';
ALTER TABLE `waypoint_data` CHANGE `action_chance` `action_chance` smallint(6) NOT NULL DEFAULT '100';
ALTER TABLE `item_loot_template` CHANGE `maxcount` `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1';
-- Hunter Volley
UPDATE `spell_bonus_data` SET `ap_bonus`=0.0837 WHERE `entry`=42243;
-- revised from Unholys original works
-- quest 12702 chicken party!
-- quest 12532 flown the coop!
-- 
SET @ENTRY := 28161; -- the chicken
SET @PARTY := 12702; -- chicken party quest
SET @COOP := 12532; -- flown the coop quest
SET @LIFE := 900000; -- minutes

-- set up required spells for the spells to work as they should
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=@ENTRY;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES 
(@ENTRY,39996,1,0), -- cover spell (dummy)
(@ENTRY,51037,2,0); -- creates item in players back pack

-- set npc up to use event script
UPDATE `creature_template` SET `AIName`='SmartAI'  WHERE `entry`=@ENTRY;

-- convert over to smart script
DELETE FROM `creature_ai_scripts` WHERE `id`=@ENTRY; -- delete old eai scripts
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,2000,3000,89,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'create random movement every 2-3 secs'),
(@ENTRY,0,1,0,8,0,100,0,51951,0,0,0,11,50839,0,0,0,0,0,1,0,0,0,0,0,0,0, 'when hit with net cast self stun'),
(@ENTRY,0,2,0,8,0,100,0,39996,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'force despawn @1 sec when hit with dummy spell');

-- Remove previous scripts that may interfere with this work
DELETE FROM `quest_start_scripts` WHERE `id` IN (@PARTY,@COOP);

-- start script for quest chicken party (they do not all spawn at same time)
UPDATE `quest_template` SET `StartScript`=@PARTY WHERE `id`=@PARTY; -- 12072
INSERT INTO `quest_start_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(@PARTY,1,10,@ENTRY,@LIFE, 0,5251.09,4413.76,-96.086,4.8714),
(@PARTY,2,10,@ENTRY,@LIFE, 0,5251.22,4419.74,-95.8995,3.58335),
(@PARTY,23,10,@ENTRY,@LIFE, 0,5257.58,4421.77,-95.9072,2.62124),
(@PARTY,4,10,@ENTRY,@LIFE,0, 5255.97,4420.37,-95.9999,0.0451326),
(@PARTY,5,10,@ENTRY,@LIFE,0, 5256.78,4420.63,-95.9957,0.320021),
(@PARTY,6,10,@ENTRY,@LIFE,0, 5257.58,4421.77,-95.9072,0.956194),
(@PARTY,27,10,@ENTRY,@LIFE,0, 5258.54,4420.49,-96.0195,0.551714),
(@PARTY,8,10,@ENTRY,@LIFE,0, 5250.67,4417.98,-95.9787,4.39231),
(@PARTY,9,10,@ENTRY,@LIFE,0, 5273.53,4430.32,-96.0241,1.0897),
(@PARTY,40,10,@ENTRY,@LIFE,0, 5158.3,4605.25,-130.988,3.7522),
(@PARTY,21,10,@ENTRY,@LIFE,0, 5164.6,4609.43,-130.427,3.70115),
(@PARTY,22,10,@ENTRY,@LIFE,0, 5169.53,4612.44,-130.817,4.05065),
(@PARTY,23,10,@ENTRY,@LIFE,0, 5188.49,4627.85,-132.485,3.60691),
(@PARTY,44,10,@ENTRY,@LIFE,0, 5203.19,4631.63,-132.611,2.849),
(@PARTY,25,10,@ENTRY,@LIFE,0, 5219.62,4632.46,-134.232,0.378917),
(@PARTY,26,10,@ENTRY,@LIFE,0, 5219.62,4632.46,-134.232,0.66166),
(@PARTY,27,10,@ENTRY,@LIFE,0, 5203.5,4595.02,-111.327,5.51542),
(@PARTY,48,10,@ENTRY,@LIFE,0, 5179.35,4558,-100.344,0.579192),
(@PARTY,29,10,@ENTRY,@LIFE,0, 5179.35,4558,-100.344,1.09756),
(@PARTY,30,10,@ENTRY,@LIFE,0, 5172.43,4533.25,-97.3836,1.15253),
(@PARTY,41,10,@ENTRY,@LIFE,0, 5186.29,4522.69,-91.0957,3.02571),
(@PARTY,32,10,@ENTRY,@LIFE,0, 5214.67,4485.22,-91.3113,2.40524),
(@PARTY,33,10,@ENTRY,@LIFE,0, 5221.85,4475.99,-96.8801,4.89495),
(@PARTY,34,10,@ENTRY,@LIFE,0, 5222.95,4438.1,-96.8062,1.6277),
(@PARTY,35,10,@ENTRY,@LIFE,0, 5224.36,4427.83,-96.9221,2.63301),
(@PARTY,36,10,@ENTRY,@LIFE,0, 5234.72,4406.44,-95.2917,0.0647549),
(@PARTY,47,10,@ENTRY,@LIFE,0, 5227.28,4407.01,-95.3888,3.79933),
(@PARTY,38,10,@ENTRY,@LIFE,0, 5227.28,4407.01,-95.3888,4.29414),
(@PARTY,39,10,@ENTRY,@LIFE,0, 5251.09,4413.76,-96.086,3.90536),
(@PARTY,40,10,@ENTRY,@LIFE,0, 5251.09,4413.76,-96.086,4.36089);

-- start script for quest flown the coop (they do not all spawn at same time)
UPDATE `quest_template` SET `StartScript`=@COOP WHERE `id`=@COOP; -- 12532
INSERT INTO `quest_start_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES 
(@COOP,23,10,@ENTRY,@LIFE,0, 5257.58,4421.77,-95.9072,2.62124),
(@COOP,4,10,@ENTRY,@LIFE,0, 5255.97,4420.37,-95.9999,0.0451326),
(@COOP,5,10,@ENTRY,@LIFE,0, 5256.78,4420.63,-95.9957,0.320021),
(@COOP,6,10,@ENTRY,@LIFE,0, 5257.58,4421.77,-95.9072,0.956194),
(@COOP,27,10,@ENTRY,@LIFE,0, 5258.54,4420.49,-96.0195,0.551714),
(@COOP,8,10,@ENTRY,@LIFE,0, 5250.67,4417.98,-95.9787,4.39231),
(@COOP,9,10,@ENTRY,@LIFE,0, 5273.53,4430.32,-96.0241,1.0897),
(@COOP,40,10,@ENTRY,@LIFE,0, 5158.3,4605.25,-130.988,3.7522),
(@COOP,21,10,@ENTRY,@LIFE,0, 5164.6,4609.43,-130.427,3.70115),
(@COOP,22,10,@ENTRY,@LIFE,0, 5169.53,4612.44,-130.817,4.05065),
(@COOP,23,10,@ENTRY,@LIFE,0, 5188.49,4627.85,-132.485,3.60691),
(@COOP,44,10,@ENTRY,@LIFE,0, 5203.19,4631.63,-132.611,2.849),
(@COOP,25,10,@ENTRY,@LIFE,0, 5219.62,4632.46,-134.232,0.378917),
(@COOP,26,10,@ENTRY,@LIFE,0, 5219.62,4632.46,-134.232,0.66166),
(@COOP,27,10,@ENTRY,@LIFE,0, 5203.5,4595.02,-111.327,5.51542),
(@COOP,48,10,@ENTRY,@LIFE,0, 5179.35,4558,-100.344,0.579192),
(@COOP,29,10,@ENTRY,@LIFE,0, 5179.35,4558,-100.344,1.09756),
(@COOP,30,10,@ENTRY,@LIFE,0, 5172.43,4533.25,-97.3836,1.15253),
(@COOP,41,10,@ENTRY,@LIFE,0, 5186.29,4522.69,-91.0957,3.02571),
(@COOP,32,10,@ENTRY,@LIFE,0, 5214.67,4485.22,-91.3113,2.40524),
(@COOP,33,10,@ENTRY,@LIFE,0, 5221.85,4475.99,-96.8801,4.89495),
(@COOP,34,10,@ENTRY,@LIFE,0, 5222.95,4438.1,-96.8062,1.6277),
(@COOP,35,10,@ENTRY,@LIFE,0, 5224.36,4427.83,-96.9221,2.63301),
(@COOP,36,10,@ENTRY,@LIFE,0, 5234.72,4406.44,-95.2917,0.0647549),
(@COOP,47,10,@ENTRY,@LIFE,0, 5227.28,4407.01,-95.3888,3.79933),
(@COOP,38,10,@ENTRY,@LIFE,0, 5227.28,4407.01,-95.3888,4.29414),
(@COOP,39,10,@ENTRY,@LIFE,0, 5251.09,4413.76,-96.086,3.90536),
(@COOP,40,10,@ENTRY,@LIFE,0, 5251.09,4413.76,-96.086,4.36089);
-- -------------------------------
-- -- The Antechamber of Ulduar --
-- -------------------------------
-- Creatures
SET @Brundir10 :=32857;
call `sp_get_npc_diffentry`(@Brundir10,1,@Brundir25); -- Get 25man id using procedure
SET @Molgeim10 :=32927;
call `sp_get_npc_diffentry`(@Molgeim10,1,@Molgeim25); -- Get 25man id using procedure
SET @Steelbreaker10 :=32867;
call `sp_get_npc_diffentry`(@Steelbreaker10,1,@Steelbreaker25); -- Get 25man id using procedure
SET @Auriaya10 :=33515;
call `sp_get_npc_diffentry`(@Auriaya10,1,@Auriaya25); -- Get 25man id using procedure
-- Gameobjects
SET @Kologarn10 := 195046; -- Cache of the Living Stone 10man
CALL `sp_get_go_lootid`(@Kologarn10,@CacheLivingStone10); -- Get Lootid from data1 field using procedure
SET @Kologarn25 := 195047; -- Cache of the Living Stone 25man
CALL `sp_get_go_lootid`(@Kologarn25,@CacheLivingStone25); -- Get Lootid from data1 field using procedure
-- bosses
SET @Assembly10Ref := 34359;
SET @Assembly25Ref := @Assembly10Ref+1;
SET @Kologarn10Ref := @Assembly10Ref+2;
SET @Kologarn25Ref := @Assembly10Ref+3;
SET @Auriaya10Ref := @Assembly10Ref+4;
SET @Auriaya25Ref := @Assembly10Ref+5;

-- ------------------------------
-- -- Reference Loot Templates --
-- ------------------------------
-- Delete previous templates if existing
DELETE FROM `reference_loot_template` WHERE `entry` IN (12019,34122,34123,34124,34163,34216);
-- Delete the current if existing & add
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @Assembly10Ref AND @Assembly10Ref+5;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Assembly Of Iron 10man
(@Assembly10Ref,45322,0,1,1,1,1), -- Cloak of the Iron Council
(@Assembly10Ref,45324,0,1,1,1,1), -- Leggings of Swift Reflexes
(@Assembly10Ref,45329,0,1,1,1,1), -- Circlet of True Sight
(@Assembly10Ref,45330,0,1,1,1,1), -- Greaves of Iron Intensity
(@Assembly10Ref,45331,0,1,1,1,1), -- Rune-Etched Nightblade
(@Assembly10Ref,45332,0,1,1,1,1), -- Stormtip
(@Assembly10Ref,45333,0,1,1,1,1), -- Belt of the Iron Servant
(@Assembly10Ref,45378,0,1,1,1,1), -- Boots of the Petrified Forest
(@Assembly10Ref,45418,0,1,1,1,1), -- Lady Maye's Sapphire Ring
(@Assembly10Ref,45423,0,1,1,1,1), -- Runetouch Wristwraps
-- Assembly Of Iron 25man
(@Assembly25Ref,45233,0,1,1,1,1), -- Stormrune Edge
(@Assembly25Ref,45234,0,1,1,1,1), -- Rapture
(@Assembly25Ref,45237,0,1,1,1,1), -- Phaelia's Vestments of the Sprouting Seed
(@Assembly25Ref,45193,0,1,1,1,1), -- Insurmountable Fervor
(@Assembly25Ref,45236,0,1,1,1,1), -- Unblinking Eye
(@Assembly25Ref,45225,0,1,1,1,1), -- Steelbreaker's Embrace
(@Assembly25Ref,45240,0,1,1,1,1), -- Raiments of the Iron Council
(@Assembly25Ref,45226,0,1,1,1,1), -- Ancient Iron Heaume
(@Assembly25Ref,45235,0,1,1,1,1), -- Radiant Seal
(@Assembly25Ref,45227,0,1,1,1,1), -- Iron-studded Mantle
(@Assembly25Ref,45239,0,1,1,1,1), -- Runeshaper's Gloves
(@Assembly25Ref,45224,0,1,1,1,1), -- Drape of the Lithe
(@Assembly25Ref,45232,0,1,1,1,1), -- Runed Ironhide Boots
(@Assembly25Ref,45228,0,1,1,1,1), -- Handguards of the Enclave
(@Assembly25Ref,45238,0,1,1,1,1), -- Overload Legwraps
-- Cache of Living Stone 10man
(@Kologarn10Ref,45701,0,1,1,1,1), -- Greaves of the Earthbinder
(@Kologarn10Ref,45965,0,1,1,1,1), -- Spire of Withering Dreams
(@Kologarn10Ref,45702,0,1,1,1,1), -- Emerald Signet Ring
(@Kologarn10Ref,45696,0,1,1,1,1), -- Mark of the Unyielding
(@Kologarn10Ref,45698,0,1,1,1,1), -- Sabatons of the Iron Watcher
(@Kologarn10Ref,45697,0,1,1,1,1), -- Shoulderguards of the Solemn Watch
(@Kologarn10Ref,45703,0,2,2,1,1), -- Spark of Hope
(@Kologarn10Ref,45700,0,2,2,1,1), -- Stoneguard
(@Kologarn10Ref,45699,0,2,2,1,1), -- Pendant of the Piercing Glare
(@Kologarn10Ref,45704,0,2,2,1,1), -- Shawl of the Shattered Giant
-- Cache of Living Stone 25man
(@Kologarn25Ref,45261,0,1,1,1,1), -- Giant's Bane
(@Kologarn25Ref,45266,0,1,1,1,1), -- Malice
(@Kologarn25Ref,45274,0,1,1,1,1), -- Leggings of the Stoneweaver
(@Kologarn25Ref,45269,0,1,1,1,1), -- Unfaltering Armguards
(@Kologarn25Ref,45268,0,1,1,1,1), -- Gloves of the Pythonic Guardian
(@Kologarn25Ref,45262,0,1,1,1,1), -- Necklace of Unerring Mettle
(@Kologarn25Ref,45275,0,1,1,1,1), -- Bracers of Unleashed Magic
(@Kologarn25Ref,45272,0,1,1,1,1), -- Robes of the Umbral Brute
(@Kologarn25Ref,45267,0,1,1,1,1), -- Saronite Plated Legguards
(@Kologarn25Ref,45263,0,1,1,1,1), -- Wrathstone
(@Kologarn25Ref,45271,0,1,1,1,1), -- Ironmender
(@Kologarn25Ref,45264,0,1,1,1,1), -- Decimator's Armguards
(@Kologarn25Ref,45265,0,1,1,1,1), -- Shoulderpads of the Monolith
(@Kologarn25Ref,45273,0,1,1,1,1), -- Handwraps of Plentiful Recovery
(@Kologarn25Ref,45270,0,1,1,1,1), -- Idol of the Crying Wind
-- Auriaya 10man
(@Auriaya10Ref,45707,0,1,1,1,1), -- Shieldwall of the Breaker
(@Auriaya10Ref,45708,0,1,1,1,1), -- Archaedas' Lost Legplates
(@Auriaya10Ref,45709,0,1,1,1,1), -- Nimble Climber's Belt
(@Auriaya10Ref,45711,0,1,1,1,1), -- Ironaya's Discarded Mantle
(@Auriaya10Ref,45712,0,1,1,1,1), -- Chestplate of Titanic Fury
(@Auriaya10Ref,45713,0,1,1,1,1), -- Nurturing Touch
(@Auriaya10Ref,45832,0,1,1,1,1), -- Mantle of the Preserver
(@Auriaya10Ref,45864,0,1,1,1,1), -- Cover of the Keepers
(@Auriaya10Ref,45865,0,1,1,1,1), -- Raiments of the Corrupted
(@Auriaya10Ref,45866,0,1,1,1,1), -- Elemental Focus Stone
-- Auriaya 25man
(@Auriaya25Ref,45327,0,1,1,1,1), -- Siren's Cry
(@Auriaya25Ref,45437,0,1,1,1,1), -- Runescribed Blade
(@Auriaya25Ref,45315,0,1,1,1,1), -- Stonerender
(@Auriaya25Ref,45439,0,1,1,1,1), -- Unwavering Stare
(@Auriaya25Ref,45326,0,1,1,1,1), -- Platinum Band of the Aesir
(@Auriaya25Ref,45441,0,1,1,1,1), -- Sandals of the Ancient Keeper
(@Auriaya25Ref,45435,0,1,1,1,1), -- Cowl of the Absolute
(@Auriaya25Ref,45438,0,1,1,1,1), -- Ring of the Faithful Servant
(@Auriaya25Ref,45434,0,1,1,1,1), -- Greaves of the Rockmender
(@Auriaya25Ref,45320,0,1,1,1,1), -- Shoulderplates of the Eternal
(@Auriaya25Ref,45325,0,1,1,1,1), -- Gloves of the Stonereaper
(@Auriaya25Ref,45440,0,1,1,1,1), -- Amice of the Stoic Watch
(@Auriaya25Ref,45334,0,1,1,1,1), -- Unbreakable Chestguard
(@Auriaya25Ref,45319,0,1,1,1,1), -- Cloak of the Makers
(@Auriaya25Ref,45436,0,1,1,1,1); -- Libram of the Resolute

-- ---------------------------
-- -- ASSIGN CREATURE LOOTS -- 
-- ---------------------------
UPDATE `creature_template` SET `lootid`=`entry` WHERE `entry` IN (@Brundir10,@Molgeim10,@Steelbreaker10,@Brundir25,@Molgeim25,@Steelbreaker25,@Auriaya10,@Auriaya25);
DELETE FROM `creature_loot_template` WHERE `entry` IN (@Brundir10,@Molgeim10,@Steelbreaker10,@Brundir25,@Molgeim25,@Steelbreaker25);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- ASSEMBLY OF IRON 10-man
-- Stormcaller Brundir killed last
(@Brundir10,1,100,1,0,-@Assembly10Ref,2), -- 2 items from reference loot
(@Brundir10,47241,100,1,0,1,1), -- 1 Emblem of Triumph
-- Runemaster Molgeim killed last
(@Molgeim10,1,100,1,0,-@Assembly10Ref,2), -- 2 items from reference loot
(@Molgeim10,47241,100,1,0,2,2), -- 2 Emblem of Triumph
(@Molgeim10,45506,100,2,0,1,1), -- Archivum Data Disc
(@Molgeim10,45087,75,1,0,1,1), -- Runed Orb
-- Steelbreaker killed last
(@Steelbreaker10,1,100,1,0,-@Assembly10Ref,2), -- 2 items from reference loot
(@Steelbreaker10,47241,100,1,0,2,2), -- 2 Emblem of Triumph
(@Steelbreaker10,45087,75,1,0,1,1), -- Runed Orb
(@Steelbreaker10,45506,100,1,0,1,1), -- Archivum Data Disc for Quest 
(@Steelbreaker10,25455,0,1,1,1,1), -- Belt fo the Crystal Tree
(@Steelbreaker10,45447,0,1,1,1,1), -- Watchful Eye of Fate
(@Steelbreaker10,45456,0,1,1,1,1), -- Loop of the Agile
(@Steelbreaker10,45449,0,1,1,1,1), -- The Masticator
(@Steelbreaker10,45448,0,1,1,1,1), -- Perilous Bite
-- ASSEMBLY OF IRON 25-man
-- Stormcaller Brundir killed last
(@Brundir25,1,100,1,0,-@Assembly25Ref,3), -- 3 items from reference loot
(@Brundir25,2,10,1,0,-34154,1), -- Chance on Recipe
(@Brundir25,45038,8,1,0,1,1), -- Fragment of Val'anyr
(@Brundir25,45087,75,1,0,1,1), -- Runed Orb
(@Brundir25,47241,100,1,0,1,2), --  2 Emblems of Triumph
-- Runemaster Molgeim killed last
(@Molgeim25,1,100,1,0,-@Assembly25Ref,3), -- 3 items from reference loot
(@Molgeim25,2,10,1,0,-34154,1), -- Chance on Recipe
(@Molgeim25,45038,8,1,0,1,1), -- Fragment of Val'anyr
(@Molgeim25,45087,75,1,0,1,1), -- Runed Orb
(@Molgeim25,47241,100,1,0,2,2), -- 2 Emblems of Triumph
(@Molgeim25,45506,100,1,0,1,1), -- Archivum Data Disc
-- Steelbreaker killed last
(@Steelbreaker25,1,100,1,0,-@Assembly25Ref,3), -- 3 items from reference loot
(@Steelbreaker25,2,10,1,0,-34154,1), -- Chance on Recipe
(@Steelbreaker25,45038,18,1,0,1,1), -- Fragment of Val'anyr
(@Steelbreaker25,45087,75,1,0,2,2), -- 2x Runed Orb
(@Steelbreaker25,47241,100,1,0,2,2), -- 2 Emblems of Triumph
(@Steelbreaker25,45506,100,1,0,1,1), -- Archivum Data Disc
(@Steelbreaker25,45241,0,1,1,1,1), -- Belt of Colossal Rage
(@Steelbreaker25,45242,0,1,1,1,1), -- Drape of Mortal Downfall
(@Steelbreaker25,45607,0,1,1,1,1), -- Fang of Oblivion
(@Steelbreaker25,45244,0,1,1,1,1), -- Greaves of Swift Vengeance
(@Steelbreaker25,45243,0,1,1,1,1), -- Sapphire Amulet of Renewal
(@Steelbreaker25,45245,0,1,1,1,1); -- Shoulderpads of the Intruder

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (@CacheLivingStone10,@CacheLivingStone25);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- KOLOGARN 10-man
(@CacheLivingStone10,1,100,1,0,-@Kologarn10Ref,2), -- 2 items from reference loot
(@CacheLivingStone10,47241,100,1,0,1,1), -- 1 Emblem of Triumph
-- KOLOGARN 25-Man
(@CacheLivingStone25,1,100,1,0,-@Kologarn25Ref,3), -- 3 items from reference loot
(@CacheLivingStone25,2,10,1,0,-34154,1), -- Chance on Recipe
(@CacheLivingStone25,45038,8,1,0,1,1), -- Fragment of Val'anyr
(@CacheLivingStone25,45087,50,1,0,1,1), -- Runed Orb
(@CacheLivingStone25,47241,100,1,0,1,2); -- 2 Emblems of Triumph

DELETE FROM `creature_loot_template` WHERE `entry` IN (@Auriaya10,@Auriaya25);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- AURIAYA 10-man
(@Auriaya10,1,100,1,0,-@Auriaya10Ref,2), -- 2 items from reference loot
(@Auriaya10,47241,100,1,0,1,1), -- 1 Emblem of Triumph
-- AURIAYA 25-man
(@Auriaya25,1,100,1,0,-@Auriaya25Ref,3), -- 3 items from reference loot
(@Auriaya25,2,10,1,0,-34154,1), -- Chance on Recipe
(@Auriaya25,45038,8,1,0,1,1), -- Fragment of Val'anyr
(@Auriaya25,45087,75,1,0,1,1), -- Runed Orb
(@Auriaya25,47241,100,1,0,1,2); -- 2 Emblems of Triumph
-- Add missing spawns to db
DELETE FROM `creature` WHERE `guid` IN (4764,28648,40266,40267,40470,40471,40510,40516,40517,40518,40601,40602,40603,41320);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`) VALUES 
(4764,33608,530,1,1,-2263.63,5559.49,67.0918,5.91667,180,0,9156), -- Alchemy
(28648,33609,530,1,1,-2262.64,5561.96,67.0948,5.89921,180,0,9156), -- Blacksmithing
(40266,33610,530,1,1,-2261.59,5564.54,67.095,5.93412,180,0,9156), -- Enchanting
(40267,33611,530,1,1,-2260.64,5567.08,67.092,5.93412,180,0,9156), -- Engineering
(40470,33612,530,1,1,-2264.54,5562.77,67.0939,2.79253,180,0,9156), -- Leatherworking
(40471,33613,530,1,1,-2265.57,5560.32,67.0911,2.80998,180,0,9156), -- Tailoring
(40510,33614,530,1,1,-2263.47,5565.35,67.0937,2.80998,180,0,9156), -- Jewelcrafting
(40516,33615,530,1,1,-2262.36,5567.8,67.0909,2.79253,180,0,9156), -- Inscription
(40517,33616,530,1,1,-2268.1,5563.18,67.0919,5.89921,180,0,9156), -- Herbalism
(40518,33617,530,1,1,-2266.98,5565.78,67.0927,5.89921,180,0,9156), -- Mining
(40601,33618,530,1,1,-2265.86,5568.36,67.0911,5.84685,180,0,9156), -- Skinning
(40602,33619,530,1,1,-2267.52,5569.19,67.0896,2.74017,180,0,9156), -- Cooking
(40603,33621,530,1,1,-2269.93,5564.2,67.09,2.75762,180,0,9156), -- First Aid
(41320,33623,530,1,1,-2268.81,5566.68,67.0905,2.74017,180,0,9156); -- Fishing
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_spinning_pain_spike';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(66316,'spell_spinning_pain_spike'),
(67100,'spell_spinning_pain_spike'),
(67101,'spell_spinning_pain_spike'),
(67102,'spell_spinning_pain_spike');
-- Re-add deleted data
DELETE FROM `creature` WHERE `guid` IN (4764,28648,40266,40267,40470,40471,40510,40516,40517,40518,40601,40602,40603,41320);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(4764,26796,576,2,1,0,0,424.547,185.962,-34.9367,4.72984,3600,0,0,1,0,0,0,0,0),
(28648,17148,530,1,1,0,0,-2910.22,6473.03,82.4898,2.49669,300,0,0,5914,0,0,0,0,0),
(40267,37671,1,1,1,0,0,1391.2,-4486.23,31.4544,3.3355,300,0,0,42,0,0,0,0,0),
(40470,37671,1,1,1,0,0,1392.66,-4481.87,31.3782,1.97284,300,0,0,42,0,0,0,0,0),
(40471,37671,1,1,1,0,0,1393.92,-4489.57,31.4737,4.93701,300,0,0,42,0,0,0,0,0);

-- Add missing spawns to db (trainers)
DELETE FROM `creature` WHERE `guid` IN (40266,40510,40516,40517,40518,40601,40602,40603,41320,41674,41723,41775,41779,41780);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`curhealth`) VALUES 
(40266,33608,530,1,1,-2263.63,5559.49,67.0918,5.91667,180,0,1), -- Alchemy
(40510,33609,530,1,1,-2262.64,5561.96,67.0948,5.89921,180,0,1), -- Blacksmithing
(40516,33610,530,1,1,-2261.59,5564.54,67.095,5.93412,180,0,1), -- Enchanting
(40517,33611,530,1,1,-2260.64,5567.08,67.092,5.93412,180,0,1), -- Engineering
(40518,33612,530,1,1,-2264.54,5562.77,67.0939,2.79253,180,0,1), -- Leatherworking
(40601,33613,530,1,1,-2265.57,5560.32,67.0911,2.80998,180,0,1), -- Tailoring
(40602,33614,530,1,1,-2263.47,5565.35,67.0937,2.80998,180,0,1), -- Jewelcrafting
(40603,33615,530,1,1,-2262.36,5567.8,67.0909,2.79253,180,0,1), -- Inscription
(41320,33616,530,1,1,-2268.1,5563.18,67.0919,5.89921,180,0,1), -- Herbalism
(41674,33617,530,1,1,-2266.98,5565.78,67.0927,5.89921,180,0,1), -- Mining
(41723,33618,530,1,1,-2265.86,5568.36,67.0911,5.84685,180,0,1), -- Skinning
(41775,33619,530,1,1,-2267.52,5569.19,67.0896,2.74017,180,0,1), -- Cooking
(41779,33621,530,1,1,-2269.93,5564.2,67.09,2.75762,180,0,1), -- First Aid
(41780,33623,530,1,1,-2268.81,5566.68,67.0905,2.74017,180,0,1); -- Fishing
-- Greater Blessing of Wisdom and Mana Spring Totem should not stack (hotfix)
SET @GROUP := 1117;
DELETE FROM `spell_group` WHERE id=@GROUP;
INSERT INTO `spell_group`(`id`,`spell_id`) VALUES
(@GROUP,25894), -- Greater Blessing of Wisdom
(@GROUP,5677); -- Mana Spring (cast by Mana Spring Totem)
DELETE FROM `spell_group_stack_rules` WHERE `group_id`=@GROUP;
INSERT INTO `spell_group_stack_rules`(`group_id`,`stack_rule`) VALUES 
(@GROUP,3); -- Make them SPELL_GROUP_STACK_RULE_EXCLUSIVE_SAME_EFFECT
-- Template updates
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33608; -- Alchemy
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16/*80*/,`trainer_type`=2 WHERE `entry`=33609; -- Blacksmithing
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33610; -- Enchanting
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33611; -- Engineering
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33612; -- Leatherworking
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16 WHERE `entry`=33613; -- Tailoring
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33614; -- Jewelcrafting
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33616; -- Herbalism
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33618; -- Skinning (guessed)
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33617; -- Mining (guessed)
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16 WHERE `entry`=33619; -- Cooking (guessed)
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16 WHERE `entry`=33621; -- First Aid (guessed)
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33615; -- Inscription (guessed)
UPDATE `creature_template` SET `faction_A`=1744,`faction_H`=1744,`npcflag`=`npcflag`|16,`trainer_type`=2 WHERE `entry`=33623; -- Fishing (guessed)

-- Model data
UPDATE `creature_model_info` SET `bounding_radius`=0.11,`combat_reach`=0,`gender`=2 WHERE `modelid`=28738; -- shared by many
UPDATE `creature_model_info` SET `bounding_radius`=0.14,`combat_reach`=0,`gender`=2 WHERE `modelid`=28758; -- shared by many

-- Addon data
DELETE FROM `creature_template_addon` WHERE `entry` IN (33608,33609,33610,33611,33612,33613,33614,33616,33618,33617,33619,33621,33615,33623);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33608,0,0,1,0, NULL), -- Alchemy
(33609,0,0,1,0, NULL), -- Blacksmithing
(33610,0,0,1,0, NULL), -- Enchanting
(33611,0,0,1,0, NULL), -- Engineering
(33612,0,0,1,0, NULL), -- Leatherworking
(33613,0,0,1,0, NULL), -- Tailoring
(33614,0,0,1,0, NULL), -- Jewelcrafting
(33616,0,0,1,0, NULL), -- Herbalism
(33618,0,0,1,0, NULL), -- Skinning (guessed)
(33617,0,0,1,0, NULL), -- Mining (guessed)
(33619,0,0,1,0, NULL), -- Cooking (guessed)
(33621,0,0,1,0, NULL), -- First Aid (guessed)
(33615,0,0,1,0, NULL), -- Inscription (guessed)
(33623,0,0,1,0, NULL); -- Fishing (guessed)

-- Trainer spells
DELETE FROM `npc_trainer` WHERE `entry` IN (33608,33609,33610,33611,33612,33613,33614,33616,33618,33617,33619,33621,33615,33623);
INSERT INTO `npc_trainer` (`entry`, `spell`, `spellcost`, `reqskill`, `reqskillvalue`, `reqlevel`) VALUES 
(33608, -201001, 0, 0, 0, 0), -- Alchemy
(33608, -201002, 0, 0, 0, 0), -- Alchemy
(33608, -201003, 0, 0, 0, 0), -- Alchemy
(33609, -201004, 0, 0, 0, 0), -- Blacksmithing
(33609, -201005, 0, 0, 0, 0), -- Blacksmithing
(33609, -201006, 0, 0, 0, 0), -- Blacksmithing
(33610, -201009, 0, 0, 0, 0), -- Enchanting
(33610, -201010, 0, 0, 0, 0), -- Enchanting
(33610, -201011, 0, 0, 0, 0), -- Enchanting
(33611, -201012, 0, 0, 0, 0), -- Engineering
(33611, -201013, 0, 0, 0, 0), -- Engineering
(33611, -201014, 0, 0, 0, 0), -- Engineering
(33612, -201027, 0, 0, 0, 0), -- Leatherworking
(33612, -201028, 0, 0, 0, 0), -- Leatherworking
(33612, -201029, 0, 0, 0, 0), -- Leatherworking
(33613, -201039, 0, 0, 0, 0), -- Tailoring
(33613, -201040, 0, 0, 0, 0), -- Tailoring
(33613, -201041, 0, 0, 0, 0), -- Tailoring
(33614, -201024, 0, 0, 0, 0), -- Jewelcrafting
(33614, -201025, 0, 0, 0, 0), -- Jewelcrafting
(33614, -201026, 0, 0, 0, 0), -- Jewelcrafting
(33616, -201018, 0, 0, 0, 0), -- Herbalism
(33616, -201019, 0, 0, 0, 0), -- Herbalism
(33616, -201020, 0, 0, 0, 0), -- Herbalism
(33618, -201036, 0, 0, 0, 0), -- Skinning
(33618, -201037, 0, 0, 0, 0), -- Skinning
(33618, -201038, 0, 0, 0, 0), -- Skinning
(33617, -201033, 0, 0, 0, 0), -- Mining
(33617, -201034, 0, 0, 0, 0), -- Mining
(33617, -201035, 0, 0, 0, 0), -- Mining
(33619, -202004, 0, 0, 0, 0), -- Cooking
(33619, -202005, 0, 0, 0, 0), -- Cooking
(33619, -202006, 0, 0, 0, 0), -- Cooking
(33621, -202007, 0, 0, 0, 0), -- First Aid
(33621, -202008, 0, 0, 0, 0), -- First Aid
(33621, -202009, 0, 0, 0, 0), -- First Aid
(33615, -201021, 0, 0, 0, 0), -- Inscription
(33615, -201022, 0, 0, 0, 0), -- Inscription
(33615, -201023, 0, 0, 0, 0), -- Inscription
(33623, -202001, 0, 0, 0, 0), -- Fishing
(33623, -202002, 0, 0, 0, 0), -- Fishing
(33623, -202003, 0, 0, 0, 0); -- Fishing
-- Quest: Blending In (11633)
-- Spell from Cape only Appliable in City Area
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=45614;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,45614,11633,23,4125,0,0,0, '', 'Shroud of the Scourge - Temple City of En''kilah');
-- CREATURE_FLAG_EXTRA_NO_XP_AT_KILL
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|64 WHERE `entry`=21267; -- Mana Beast
-- Fix quest 11468 - Falcon versus hawk
SET @entry := 24747; -- Fjord Hawk
UPDATE creature_template SET AIName='SmartAI' WHERE entry=@entry;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@entry AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@entry,0,0,1,8,0,100,0,44407,0,0,0,11,44408,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Fjord Hawk - On Spellhit - Cast spell on invoker'),
(@entry,0,1,0,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fjord Hawk - On Spellhit - Despawn');
UPDATE `conditions` SET `ElseGroup`=0 WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=45614; -- typo fix for previous commit
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=47431;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,47431,0,23,4195,0,0,64,'','Capture Jormungar Spawn can only be used in Ice Heart Cavern');
DELETE FROM `spell_script_names` WHERE `spell_id` = 36444;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(36444, 'spell_gen_wg_water');
-- Will of Sartharion should only target the drakes and Sartharion
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=61254;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13, 1, 61254, 0, 0, 31, 0, 3, 30449, 0, 0, 0, '', 'Will of Sartharion'),
(13, 1, 61254, 0, 1, 31, 0, 3, 30451, 0, 0, 0, '', 'Will of Sartharion'),
(13, 1, 61254, 0, 2, 31, 0, 3, 30452, 0, 0, 0, '', 'Will of Sartharion'),
(13, 1, 61254, 0, 3, 31, 0, 3, 28860, 0, 0, 0, '', 'Will of Sartharion');
UPDATE `spell_dbc` SET `EffectApplyAuraName1`=4 WHERE `Id`=56817;
DELETE FROM `gameobject_template` WHERE `entry`=202931;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `WDBVerified`) VALUES
(202931, 5, 9463, 'Serpent Offering', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.17, 0, 0, 0, 0, 0, 0, 12340); -- -Unknown-

UPDATE `gameobject_template` SET `questItem1`=30527, `questItem2`=30524, `questItem3`=30525, `questItem4`=30526 WHERE `entry`=184815; -- Sealed Coffin
-- UPDATE `gameobject_template` SET `data0`=2061, `WDBVerified`=12340 WHERE `entry`=151951; -- Idol Oven Fire
-- UPDATE `gameobject_template` SET `type`=5, `data3`=0, `data5`=0 WHERE `entry`=188187; -- Snow Pile
UPDATE `gameobject_template` SET `size`=0.45 WHERE `entry`=190169; -- Tiger Lily
UPDATE `gameobject_template` SET `unk1`='' WHERE `entry`=190549; -- The Zephyr
-- UPDATE `gameobject_template` SET `data0`=2061 WHERE `entry`=191300; -- Fire
UPDATE `gameobject_template` SET `displayId`=7836 WHERE `entry`=196485; -- Saronite Rock
--  UPDATE `gameobject_template` SET `data0`=2061 WHERE `entry`=126337; -- 126337
--  UPDATE `gameobject_template` SET `data0`=2061 WHERE `entry`=126338; -- 126338
--  UPDATE `gameobject_template` SET `data0`=2061 WHERE `entry`=126339; -- 126339
--  UPDATE `gameobject_template` SET `data0`=2061 WHERE `entry`=126340; -- 126340
--  UPDATE `gameobject_template` SET `data0`=2061 WHERE `entry`=126341; -- 126341
--  UPDATE `gameobject_template` SET `data0`=2061 WHERE `entry`=126345; -- 126345
UPDATE `gameobject_template` SET `data2`=23787, `data7`=3605, `data19`=0 WHERE `entry`=202443; -- Dedication of Honor
UPDATE `gameobject_template` SET `type`=10 WHERE `entry`=166872; -- Supply Crate
UPDATE `gameobject_template` SET `data6`=-1000 WHERE `entry`=178559; -- Larva Spewer

/*
GameObject (Entry: 126337 GoType: 8) have data0=2061 but SpellFocus (Id: 2061) not exist.
GameObject (Entry: 126338 GoType: 8) have data0=2061 but SpellFocus (Id: 2061) not exist.
GameObject (Entry: 126339 GoType: 8) have data0=2061 but SpellFocus (Id: 2061) not exist.
GameObject (Entry: 126340 GoType: 8) have data0=2061 but SpellFocus (Id: 2061) not exist.
GameObject (Entry: 126341 GoType: 8) have data0=2061 but SpellFocus (Id: 2061) not exist.
GameObject (Entry: 126345 GoType: 8) have data0=2061 but SpellFocus (Id: 2061) not exist.
GameObject (Entry: 151951 GoType: 8) have data0=2061 but SpellFocus (Id: 2061) not exist.
GameObject (Entry: 191300 GoType: 8) have data0=2061 but SpellFocus (Id: 2061) not exist.
Gameobject (Entry: 188192 GoType: 3) have data7=188187 but GO (Entry 188187) have not GAMEOBJECT_TYPE_TRAP (6) type.
*/
DELETE FROM `spell_script_names` WHERE `spell_id` in (7384,7887,11584,11585);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(7384,	'spell_warr_overpower'),
(7887,	'spell_warr_overpower'),
(11584,	'spell_warr_overpower'),
(11585,	'spell_warr_overpower');
UPDATE `spell_proc_event` SET `SpellFamilyMask0`=0x80000000, `SpellFamilyMask1`=0 WHERE `entry`=67363; -- Fixes Libram of Veracity proc

UPDATE `spell_proc_event` SET `SpellFamilyMask0`=0x10 WHERE `entry`=60132; -- Oblit/Scourge Strike Runic Power Up (T7 4s)
DELETE FROM `spell_dbc` WHERE `Id`=64748; -- Item - Death Knight T8 Tank 4P Bonus
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(64748,1,0,384,0,0,0,0,131080,0,0,0,0,0,1,0,0,101,0,0,80,80,28,1,0,-1,0,0,6,0,0,1,0,1,'0','0','0',-11,0,-11,0,0,0,1,0,0,0,0,0,0,0,0,87,0,0,0,0,0,'0','0','0',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16777829,0,0,0,15,0,0,0,0,0,0,'1','1','1',0,32,'Item - Death Knight T8 Tank 4P Bonus');
-- GO required by spell 70477 - Cleanse Quel'Delar
DELETE FROM `gameobject_template` WHERE `entry`=300246;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
(300246, 8, 0, 'TEMP Sunwell', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1641, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 1);
DELETE FROM `spell_dbc` WHERE `Id`=64934; -- Item - Warrior T8 Protection 4P Bonus
INSERT INTO `spell_dbc`(`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(64934,1,0,384,0,0,0,0,131080,0,0,0,0,0,1,0,0,101,0,0,80,80,28,1,0,-1,0,0,6,0,0,1,0,1,'0','0','0',-21,0,-11,0,0,0,1,0,0,0,0,0,0,0,0,87,0,0,0,0,0,'0','0','0',126,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16777829,0,0,0,4,0,0,0,0,0,0,'1','1','1',0,32, 'Item - Warrior T8 Protection 4P Bonus');
DELETE FROM `page_text` WHERE entry IN (2177,2295,2296,2297,2301,2302,2303,2308,2309,3036,3045,3046,3047,3049,3050,3051,3052,3053,3378,3544,3563,3564,3565);
INSERT INTO `page_text` (`entry`, `text`, `next_page`) VALUES
(2177, 'Valea Twinblades \nWarrior of the Scarlet Crusade\nCitizen of Alterac \nLast seen deep in the Eastern Plaguelands', 0),
(2295, 'Before the Age of Memory, the gentle Earthmother breathed upon the golden mists of dawn. Where the amber clouds came to rest, there were endless fields of flowing wheat and barley. This was the basin of her works - the great basket of life and hope.', 2296),
(2296, 'The Earthmother\'s eyes shone down upon the lands she had breathed into creation. Her right eye, An\'she (the sun), gave warmth and light to the land. Her left eye, Mu\'sha (the moon), gave peace and sleep to the stirring creatures of the dawning. Such was the power of her gaze that the Earthmother closed one dreaming eye for every turning of the sky. Thus, her loving gaze turned day into night for the first dawning of the world.   $B', 2297),
(2297, 'While the right eye shone down upon the golden dawn, the Earthmother\'s gentle hands spread out across the golden plains. Wherever the shadow of her arms passed, a noble people arose from the rich soil. The Shu\'halo (the tauren) arose to give thanks and prayer to their loving mother. There, in the endless fields of dawn, the children of the earth swore themselves to her grace and vowed to bless her name until the final darkening of the world.', 0),
(2301, 'Into the brave hearts of her pure children, the Earthmother placed the love of the hunt. For the creatures of the first dawn were savage and fierce. They hid from the Earthmother, finding solace in the shadows and the wild places of the land. The Shu\'halo hunted these beasts wherever they could be found and tamed them with the Earthmother\'s blessing. ', 2302),
(2302, 'One great spirit eluded them, however. Apa\'ro (known as Malorne to the night elves), was a proud stag of snow white fur. His antlers scraped the roof of the heavens and his mighty hooves stamped out the deep places of the world. The Shu\'halo hunted Apa\'ro to the corners of the dawning world - and closed in to snare the proud stag.', 2303),
(2303, 'Seeking to escape, the great stag leapt into the sky. Yet, as his escape seemed assured, his mighty antlers tangled in the stars which held him fast. Though he kicked and struggled, Apa\'ro could not loose himself from the heavens. It was then that Mu\'sha found him as she chased her brother, An\'she, towards the dawn. Mu\'sha saw the mighty stag as he struggled and fell in love with him immediately. ', 2304),
(2308, 'As the mists of dawn faded and the Age of Memory advanced, the demigod, Cenarius, went his own way through the fields of the world. The Shu\'halo (tauren) were sorrowful at his passing and forgot much of the druidism he had taught them. As the generations passed, they forgot how to speak with the trees and the wild things of the land. The dark whispers from the deeps of the world drifted up to their ears once again.', 2309),
(2309, 'Though the children of the earth closed out the evil whisperings, a terrible curse befell their roaming tribes. Out of the black lands of the west came a horde of murderous creatures - the centaur. Cannibals and ravagers, the centaur fell upon the Shu\'halo like a plague. Though the braves and hunters fought with the Earthmother\'s blessing in their hearts, the centaur could not be defeated.', 2310),
(3544, 'You have found the wreckage of a mysterious object. Beyond the flames, you are able to make out an insignia marked "M:1815212085". You wonder what world this object must be from...', 0),
(3378, 'INVINCIBLE$B$BBeloved steed of Prince Arthas Menethil$B$BLoyal and great of heart in life, may you find peace in death.$B$BPure streams and green pastures, devoted friend.', 0),
(3565, 'Gritting his teeth, Marcus gestured as light flashed over him, restoring his strength.$B$BTavi stared anxiously as he rose to his full height, engulfing her in his shadow.  He thrust his hand forward, sending a wave of righteous force through her.  Eyes rolled back as she wavered for several seconds before regaining consciousness.$B$B"I\'ve recently taken the path of... retribution."$B$BThe mischievous smirk returned to her face, "Well then, this is going to be fun."$B$B<The remaining pages have a level 99 requirement to read.>', 0),
(3564, 'Marcus took both her hands in one of his as he reassured her, "It\'s fine.  What is your specialization?"$B$BHer head snapped up, eyes burning with renewed life as shadowy energy channeled through her hands into Marcus, dropping him to his knees in agony.$B$B"Affliction, actually."$B', 3565),
(3563, '"Interested in some more company?" she purred as her hands weaved through a complex summoning ritual, stopping only when she felt the warmth of a new presence behind her.$B$BAll color drained from Marcus\'s face as he struggled to protest.  "I... I don\'t think that\'s appropriate."$B$BConfused, Tavi turned to see what was wrong.  A hideous fel hound stood ready, drooling onto the floor as it stared intently at the half-armored paladin.$B$B"No!  No that\'s not what I meant." she stammered as she dispelled the hungry demon.  "I\'m sorry, that\'s not really my specialization...."', 3564),
(3045, 'First Watch, Eight Bells$BWatches changed.  All is well.', 3046),
(3046, 'Middle Watch, One Bell$BCedric found attempting to break into Captain\'s wine cabinet.  Disciplined.', 3047),
(3047, 'Middle Watch, Two Bells$BCedric climbed rigging, became tangled and fell.  Attended by ship\'s surgeon.  Sent below to sober up.', 3049),
(3049, 'Middle Watch, Four Bells$BBottle of rum found in Cedric\'s pants.  Disciplined.', 3050),
(3050, 'Middle Watch, Five Bells$BCedric\'s clothes found.  Cedric found separately.  Cedric disciplined.', 3051),
(3051, 'Middle Watch, Six Bells$BCedric singing loudly.  Woke Captain.  Cedric disciplined by Captain.', 3052),
(3052, 'Middle Watch, Eight Bells$BWatches changed.  All quiet.  Two men sent to locate Cedric.$B', 3053),
(3053, 'Morning Watch, One Bell$BFire in Captain\'s quarters.  All hands roused.  Throwing powder overboard. ', 0),
(3036, 'The mighty creature\'s maw opened wide, tossing bolts of icy water toward our vessel. Those terrible jaws clamped down upon the bow of our ship, tearing it from the hull. Sailors and cargo were thrown violently into the sea as the remnants of the ship disappeared beneath the waves.$B$BThe last thing I remember was flying from the broken hull, hitting the inky waters, and plunging beneath the waves. The world went dark and I thought for certain I\'d drawn my last breath. When I awoke in Theramore\'s infirmary, I knew someone had to tell our story.', 0);
UPDATE `gameobject_template` SET `faction`=54 WHERE `entry`=178164;
SET @GUID := 247;
DELETE FROM `gameobject` WHERE `guid`=@GUID;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@GUID,178164,409,1,1,736.6528,-1176.32,-118.0967,-0.6806787,0,0,0,1,120,255,1); -- Hot Coal, damage
UPDATE `game_event` SET `start_time` = '2012-04-08 00:01:00' WHERE `eventEntry` =9; -- Noblegarden
UPDATE `game_event` SET `start_time` = '2012-04-29 00:01:00' WHERE `eventEntry` =10; -- Children's Week
UPDATE `spell_proc_event` SET `procFlags`=0 WHERE `entry`=70805;
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_ice_tomb_dummy';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(69712,'spell_sindragosa_ice_tomb_dummy');
-- Gymer <King of Storm Giants>
UPDATE `creature_template` SET `unit_class`=4,`spell1`=55426,`spell2`=55429,`spell3`=55516,`spell4`=55421,`VehicleId`=205 WHERE `entry`=29884;
DELETE FROM `spell_dbc` WHERE `Id`=31934; -- Blessed Life
INSERT INTO `spell_dbc` (`Id`,`Dispel`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`Stances`,`StancesNot`,`Targets`,`CastingTimeIndex`,`AuraInterruptFlags`,`ProcFlags`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`RangeIndex`,`StackAmount`,`EquippedItemClass`,`EquippedItemSubClassMask`,`EquippedItemInventoryTypeMask`,`Effect1`,`Effect2`,`Effect3`,`EffectDieSides1`,`EffectDieSides2`,`EffectDieSides3`,`EffectRealPointsPerLevel1`,`EffectRealPointsPerLevel2`,`EffectRealPointsPerLevel3`,`EffectBasePoints1`,`EffectBasePoints2`,`EffectBasePoints3`,`EffectMechanic1`,`EffectMechanic2`,`EffectMechanic3`,`EffectImplicitTargetA1`,`EffectImplicitTargetA2`,`EffectImplicitTargetA3`,`EffectImplicitTargetB1`,`EffectImplicitTargetB2`,`EffectImplicitTargetB3`,`EffectRadiusIndex1`,`EffectRadiusIndex2`,`EffectRadiusIndex3`,`EffectApplyAuraName1`,`EffectApplyAuraName2`,`EffectApplyAuraName3`,`EffectAmplitude1`,`EffectAmplitude2`,`EffectAmplitude3`,`EffectMultipleValue1`,`EffectMultipleValue2`,`EffectMultipleValue3`,`EffectMiscValue1`,`EffectMiscValue2`,`EffectMiscValue3`,`EffectMiscValueB1`,`EffectMiscValueB2`,`EffectMiscValueB3`,`EffectTriggerSpell1`,`EffectTriggerSpell2`,`EffectTriggerSpell3`,`EffectSpellClassMaskA1`,`EffectSpellClassMaskA2`,`EffectSpellClassMaskA3`,`EffectSpellClassMaskB1`,`EffectSpellClassMaskB2`,`EffectSpellClassMaskB3`,`EffectSpellClassMaskC1`,`EffectSpellClassMaskC2`,`EffectSpellClassMaskC3`,`MaxTargetLevel`,`SpellFamilyName`,`SpellFamilyFlags1`,`SpellFamilyFlags2`,`SpellFamilyFlags3`,`MaxAffectedTargets`,`DmgClass`,`PreventionType`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`AreaGroupId`,`SchoolMask`,`Comment`) VALUES
(31934,0,0,384,0,0,0,0,0,0,0,131072,0,0,1,0,1048576,100,1,0,0,0,21,1,0,-1,0,0,6,0,0,1,0,0,'0','0','0',-51,0,0,0,0,0,1,0,0,0,0,0,0,0,0,87,0,0,0,0,0,'0','0','0',127,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'1','0','0',0,0,'Blessed Life');
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_sindragosa_mystic_buffet';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(70127,'spell_sindragosa_mystic_buffet'),
(72528,'spell_sindragosa_mystic_buffet'),
(72529,'spell_sindragosa_mystic_buffet'),
(72530,'spell_sindragosa_mystic_buffet');
DELETE FROM `spell_script_names` WHERE `spell_id`=-1064;
INSERT INTO `spell_script_names` VALUES
(-1064, 'spell_sha_chain_heal');
-- Update proper modelid for Celestial Steed (31957 is wrong)
UPDATE `creature_template` SET `modelid1`=31958,`modelid2`=0 WHERE `entry`=40625;
UPDATE `creature_template` SET `WDBVerified`=12340 WHERE `entry`=40624; -- Verified

-- Remove temp entry 68686 and replace with wdb verified 38686
UPDATE `creature_template` SET `difficulty_entry_3`=38686 WHERE `entry`=36950;
UPDATE `creature_template` SET `minlevel`=82,`maxlevel`=82,`exp`=2,`faction_A`=84,`faction_H`=84,`mindmg`=488,`maxdmg`=642,`attackpower`=782,`unit_flags`=32832,`dynamicflags`=8,`minrangedmg`=363,`maxrangedmg`=521,`rangedattackpower`=121 WHERE `entry`=38686;
DELETE FROM `creature_template` WHERE `entry`=68686;
-- Druid
UPDATE `spell_bonus_data` SET `direct_bonus`=0,`dot_bonus`=0 WHERE `entry` IN (779,1822,60089);
DELETE FROM `spell_bonus_data` WHERE `entry` IN (1079,9007,22568);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(1079,0,0,-1,-1, 'Druid - Rip'),
(9007,0,0,-1,-1, 'Druid - Pounce Bleed'),
(22568,0,0,-1,-1, 'Druid - Ferocious Bite');

-- Hunter
UPDATE `spell_bonus_data` SET `direct_bonus`=0,`dot_bonus`=0 WHERE `entry` IN (3044,3674,53352,13812,13797,1978,42243);
UPDATE `spell_bonus_data` SET `ap_dot_bonus`=0.1 WHERE `entry`=13812;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (24131,53353);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(24131,0,0,-1,-1, 'Hunter - Wyvern Sting (triggered)'),
(53353,0,0,-1,-1, 'Hunter - Chimera Shot (Serpent)');
DELETE FROM `spell_ranks` WHERE `first_spell_id`=24131;
INSERT INTO `spell_ranks` VALUES
(24131,24131,1),
(24131,24134,2),
(24131,24135,3),
(24131,27069,4),
(24131,49009,5),
(24131,49010,6);

-- Rogue
UPDATE `spell_bonus_data` SET `direct_bonus`=0,`dot_bonus`=0 WHERE `entry` IN (2818,2819,11353,11354,25349,26968,27187,57969,57970);

-- Howling blast
UPDATE `spell_bonus_data` SET `ap_bonus`=0.2 WHERE `entry`=49184;
-- Fixes some spell power stacking exploits
DELETE FROM `spell_bonus_data` WHERE `entry` IN (44525,18798,16614,7712,13897);
INSERT INTO `spell_bonus_data` (`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES
(44525,0,0,-1,-1, 'Enchant Weapon - Icebreaker'),
(18798,0,0,-1,-1, 'Item - Freezing Band'),
(16614,0,0,-1,-1, 'Item - Storm Gauntlets'),
(7712,0,0,-1,-1, 'Item - Fiery Retributer | Blazefury Medallion'),
(13897,0,0,-1,-1, 'Enchant Weapon - Fiery Weapon');
-- Update modelid for Invincible (with not bugged animation)
UPDATE `creature_template` SET `modelid1`=31007,`modelid2`=0,`WDBVerified`=-12340 WHERE `entry`=38545;
DELETE FROM `trinity_string` WHERE `entry` IN(555,556);
DELETE FROM `command` WHERE `name`='hover';
UPDATE `smart_scripts` SET `target_type`=`action_param6` WHERE
(`entryorguid`=369200 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=369201 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=3692 AND `source_type`=0 AND `id`=2) OR
(`entryorguid`=3692 AND `source_type`=0 AND `id`=3) OR
(`entryorguid`=3584 AND `source_type`=0 AND `id`=3) OR
(`entryorguid`=3584 AND `source_type`=0 AND `id`=4) OR
(`entryorguid`=954600 AND `source_type`=9 AND `id`=2) OR
(`entryorguid`=954600 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=7207 AND `source_type`=0 AND `id`=1) OR
(`entryorguid`=7207 AND `source_type`=0 AND `id`=2) OR
(`entryorguid`=911700 AND `source_type`=9 AND `id`=3);

UPDATE `smart_scripts` SET `action_param6`=0 WHERE
(`entryorguid`=369200 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=369201 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=3692 AND `source_type`=0 AND `id`=2) OR
(`entryorguid`=3692 AND `source_type`=0 AND `id`=3) OR
(`entryorguid`=3584 AND `source_type`=0 AND `id`=3) OR
(`entryorguid`=3584 AND `source_type`=0 AND `id`=4) OR
(`entryorguid`=954600 AND `source_type`=9 AND `id`=2) OR
(`entryorguid`=954600 AND `source_type`=9 AND `id`=3) OR
(`entryorguid`=7207 AND `source_type`=0 AND `id`=1) OR
(`entryorguid`=7207 AND `source_type`=0 AND `id`=2) OR
(`entryorguid`=911700 AND `source_type`=9 AND `id`=3);
-- Gnomish Playback Device (item 52709) Targeting condition -- by norfik closes #2169
DELETE FROM `conditions` WHERE `SourceEntry`=74222 AND `ConditionValue2` IN (1268, 7955, 6119);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 74222, 1, 31, 3, 1268, 0, 63, '', 'Gnomish Playback Device on Ozzie Togglevolt'),
(17, 0, 74222, 2, 31, 3, 7955, 0, 63, '', 'Gnomish Playback Device on Milli Featherwhistle'),
(17, 0, 74222, 3, 31, 3, 6119, 0, 63, '', 'Gnomish Playback Device on Tog Rustsprocket');

-- fix revenge ap coeff -- by ric101 closes #3344
UPDATE `spell_bonus_data` SET `ap_bonus` = 0.310 WHERE `entry` = 6572; 

-- fix life seed sp coeff -- by warpten closes #4162
DELETE FROM `spell_bonus_data` WHERE `entry`=48503;
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
(48503,0,0,0,0, 'Druid - Living Seed Heal');

-- fix glyph of shadowflame proc only allow on damage. by kandera closes #3530
UPDATE `spell_proc_event` SET `procEx` = procEx|262144 WHERE`entry` = 63310; -- Glyph of shadowflame fix

-- Disable deprecated quests /in 2.4/ from Midsummer Festival - The Festival of Fire {A/H} by trista closes #5982
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` in (9367,9368);
INSERT INTO `disables` (`sourceType`,`entry`,`flags`,`params_0`,`params_1`,`comment`) VALUES
(1,9367,0,0,0,'Disable quest The Festival of Fire {A}/Deprecated after 2.4 Midsummer Festival revamp/'),
(1,9368,0,0,0,'Disable quest The Festival of Fire {H}/Deprecated after 2.4 Midsummer Festival revamp/');

-- fix gameobject spawn for just maces sign -- by mrsmite closes #5849
DELETE FROM `gameobject` WHERE `guid` = 10714;
UPDATE `gameobject` SET `guid` = 10714 WHERE `guid` = 61895 AND `id` = 2157;

-- update npc texts. by helias closes #6098
DELETE FROM `npc_text` WHERE `ID` IN (10719,10782,10783,10787,10788,2838,9072,9110,10310,13293,13641,14089,15077,15155,15240,15412,15866,15873,15877,8663,8244,8254,8255,8282,8291,8296,8298,11093,3464,4776,4713,12130,13002,9984,12977,12978,10918,10999,10986,10991);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`) VALUES 
(10719, '<The chime of A"dal"s voice echoes reassuringly through your mind.>$B$BWorry not, child.  Look in your pack and you will find it once more.', NULL, 0, 1, 0, 0, 0, 0, 0, 0),
(10782, 'Sayoc, da ugly orc here, teach you daggers. You want teaching in other places, you talk to Ileda in da Farstrider Square of Silvermoon or Archibald in the War Quarter of Undercity, hokay?', 'Sayoc, da ugly orc here, teach you daggers. You want teaching in other places, you talk to Ileda in da Farstrider Square of Silvermoon or Archibald in the War Quarter of Undercity, hokay?', 1, 1, 0, 0, 0, 0, 0, 0),
(10783, 'You want to punch things, yah? Talk to Sayoc right here. He teach you.', 'You want to punch things, yah? Talk to Sayoc right here. He teach you.', 1, 1, 0, 0, 0, 0, 0, 0),
(10787, 'Ileda of da blood elves, in Farstrider Square of Silvermoon, train her students in both one and two-handed swords. Archibald, da Undercity"s weapon master, also train you, mon. He in da War Quarter.', 'Ileda of da blood elves, in Farstrider Square of Silvermoon, train her students in both one and two-handed swords. Archibald, da Undercity"s weapon master, also train you, mon. He in da War Quarter.', 1, 1, 0, 0, 0, 0, 0, 0),
(10788, 'Hanashi here knows staves. If you want a sturdier instructor, go to Thunder Bluff. Ansekhwa will teach you on the lower central rise there.', '', 1, 1, 0, 0, 0, 0, 0, 0),
(2838, '', 'Sure thing, $N. Here"s another for you.', 0, 1, 0, 0, 0, 0, 0, 0),
(9072, 'A search of the corpse"s clothing and equipment reveals the insignia you need, undamaged by the battle and foul environment.', '', 0, 1, 0, 0, 0, 0, 0, 0),
(9110, 'Say, you happen to see that arch in the lake to the west?  I wonder where that goes?  I should go divin" over there.', '', 0, 1, 0, 1, 0, 0, 0, 0),
(10310, 'You must be exalted with the blood elves before I will teach you a riding skill, $c.', '', 1, 1, 0, 1, 0, 0, 0, 0),
(13293, 'Please hurry, $N. I am in a great deal of pain and time is running out.', '', 0, 1, 0, 0, 0, 0, 0, 0),
(13641, '<Brann looks at you expectantly.>', '', 0, 1, 0, 0, 0, 0, 0, 0),
(14089, 'I"ve got a lead on Norgannon"s keystone, which guards access to Ulduar"s archives, but the Titans divided it into two pieces and secreted them away.$B$BOne of the pieces, the keystone"s shell, is held within the Inventor"s Library on the northern coast, south of Ulduar itself. The first thing you"ll need to do is retrieve the fragments of an access disk from the library"s guardians.', '', 0, 1, 0, 0, 0, 0, 0, 0),
(15077, 'There you are! I was beginning to think that the Sunreavers had intercepted you. Are you ready to deliver the tome to our representatives in Icecrown?', '', 0, 1, 0, 0, 0, 0, 0, 0),
(15155, 'These appear to be the remains of Thalorien Dawnseeker, the last wielder of Quel"Delar.', '', 0, 1, 0, 0, 0, 0, 0, 0),
(15240, 'I will escort you into the Sunwell when you"re ready.', 'I will escort you into the Sunwell when you"re ready.', 0, 1, 0, 0, 0, 0, 0, 0),
(15412, 'We got the final barrier blockin" entry to Frostwing Halls down, $g lad:lass;. Only Sindragosa stands between the Lich King and divine retribution! What are ye waitin" for?!', '', 0, 1, 0, 5, 0, 0, 0, 0),
(15866, 'De Darkspears have a home again! An" we couldn"t have done it wit"out ya helpin", $N. Now, we celebrate!', '', 0, 1, 0, 1, 0, 1, 0, 0),
(15873, 'Vol"jin told me ta keep hittin" da drum till he gets back.  If ya be waitin" for him, he"d be back soon to take back da Isles.$B$BJust wait here and enjoy da music!', '', 0, 1, 0, 0, 0, 0, 0, 0),
(15877, 'We require da help of allies on da islands.$B$BZen"tabra has been watching over da animals of de Islands for some time now.  We"d need her help and da help of da animal creatures.$B$BBwonsamdi is a powerful loa dat controls de spirits of de dead on da islands.  His blessing is crucial for our attack.$B$BOnce our allies have joined us, Zalazane and his army of mind-controlled trolls will have no chance!  Then, da Echo Isles will be de Darkspears!', '', 0, 1, 0, 0, 0, 0, 0, 0),
(8663, 'Thank you for delivering that list!  My leg is almost recovered enough that I"ll be able to walk back to the crash site.', '', 0, 1, 0, 0, 0, 0, 0, 0),
(8244, 'We"ve been so wrapped up in this war, some of us forgot to make time for love.', '', 0, 1, 0, 0, 0, 0, 0, 0),
(8254, 'You work with machines for so long, sometimes you forget about real hearts.', '', 0, 1, 0, 0, 0, 0, 0, 0),
(8255, '', 'When you have lived as long as I, it becomes easy to forget about love for years. It is always good to be reminded.', 0, 1, 0, 0, 0, 0, 0, 0),
(8282, '', 'You look like you"ve had your heart broken. Come back when you"re not so sad.', 0, 1, 0, 25, 0, 153, 0, 0),
(8291, 'What, you don"t have a token to give me? Don"t you love me?', '', 0, 1, 0, 18, 0, 0, 0, 0),
(8296, 'It looks like you"ve already found love. You can give me a love token, but I"m not giving you anything nice. I"m waiting for someone special.', 'It looks like you"ve already found love. You can give me a love token, but I"m not giving you anything nice. I"m waiting for someone special.', 0, 1, 0, 1, 0, 0, 0, 0),
(8298, 'I"d like you better if you would apply some perfume.', 'I"d like you better if you would apply some perfume.', 0, 1, 0, 24, 0, 0, 0, 0),
(11093, 'Let"s get out of here!', '', 0, 1, 0, 5, 0, 0, 0, 0),
(3464, '', 'You do fine work, but it"s a bit rough around the edges. Don"t worry about it, it will come with practice. Speaking of which, how about we see what you"ve been working on?', 7, 1, 0, 0, 0, 0, 0, 0),
(4776, 'The battle is over, and the people of Darrowshire are saved.', '', 0, 1, 0, 0, 0, 0, 0, 0),
(4713, 'The Nightmare is finally over!  Darrowshire, forgive me!', '', 0, 1, 0, 15, 0, 0, 0, 0),
(12130, '<Old Icefin eyes you warily, his fishy eye blinking as he bobs his head up and down once in a curt dismissal.>', '', 0, 1, 0, 0, 0, 0, 0, 0),
(13002, 'There ya go, mon. Try ta be more careful with this one, won"t ya?$b$bNow head down ta Drak"Zin Ruins and drink it near the pedestal!', NULL, 0, 1, 0, 0, 0, 0, 0, 0),
(9984, 'What are ye doin" here?! Get yer chatty self ta Alterac Vallery, where ye"re needed!', '', 7, 1, 1, 5, 0, 0, 0, 0),
(12977, 'Blight, Blight, Blight... that"s all I hear about around here. I miss the diversity!$b$bHere, here. You have pets, yes? Of course you do. Of course. Little pets. I have a mixture for them. It will make them ca-- ah, clever and strong creatures, yes. Yes. ', '', 1, 1, 396, 5, 0, 0, 0, 0),
(12978, 'Careful with it. It"s unstable and loses its potency quickly. Use it soon! And... preferably within eyesight, yes...', '', 1, 1, 5, 0, 0, 0, 0, 0),
(10918, 'The boy"s too stupid still to say it -- not enough crystal exposure yet -- but, he"s thankful for what you did in getting him those flasks.$B$BNow, only nine more sons to go.  Gah!$B$B<Both of Torkus"s heads sigh.>$B$BWant to take one of them off of our hands?  We"ll sell him to you cheap.', '', 0, 1, 0, 1, 0, 5, 0, 6),
(10999, 'Friend! It"s been too long.  What can we get for you?', '', 0, 1, 1, 1, 0, 0, 0, 0),
(10986, 'Our drinks should quench even the mightiest of thirsts.', '', 0, 1, 1, 396, 0, 0, 0, 0),
(10991, 'What can I say, $N?  Yer the finest o" the Sha"tari Skyguard!$B$BJust don"t be lettin" that go ta yer head.  I can still teach ya a thing or two, $G lad : lass;!$B$B<Sky Commander Keller grins at you and winks.>', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Fix Kor'kron War Rider flying by trista closes #5569
UPDATE `creature_template` SET `inhabittype`=5,`speed_walk`=1, `speed_run`=1 WHERE `entry`=26813;

-- Gretta the Arbiter (Storm Peaks, Brunhilldar) by mweinelt closes #5493
-- Daily Quest Pooling
-- Source: http://www.wowwiki.com/Gretta_the_Arbiter
SET @pool_id := 354;

DELETE FROM `pool_template` WHERE `entry` = @pool_id;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(@pool_id, 1, 'Gretta the Arbiter - Daily Quests');

DELETE FROM `pool_quest` WHERE `entry` IN (13424, 13423, 13422, 13425);
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES
(13424, @pool_id, 'Back to the Pit'),
(13423, @pool_id, 'Defending Your Title'),
(13422, @pool_id, 'Maintaining Discipline'),
(13425, @pool_id, 'The Aberrations Must Die');

-- Pathing for Arzeth the Merciless Entry: 19354 by kiperr closes #5510
SET @NPC := 69051;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-617.6182,`position_y`=4800.323,`position_z`=38.53064 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`mount`,`auras`) VALUES (@NPC,@PATH,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-546.5514,4799.893,33.83914,0,0,0,100,0),
(@PATH,2,-512.5808,4799.929,32.09928,0,0,0,100,0),
(@PATH,3,-480.9247,4799.97,28.25657,0,0,0,100,0),
(@PATH,4,-512.6269,4799.873,32.09928,0,0,0,100,0),
(@PATH,5,-542.1885,4799.724,33.71414,0,0,0,100,0),
(@PATH,6,-570.3811,4800.449,34.60215,0,0,0,100,0),
(@PATH,7,-592.3809,4800.299,35.85215,0,0,0,100,0),
(@PATH,8,-617.6182,4800.323,38.53064,0,0,0,100,0),
(@PATH,9,-659.4124,4799.819,49.09505,0,0,0,100,0),
(@PATH,10,-582.4199,4800.242,34.97715,0,0,0,100,0),
(@PATH,11,-546.5514,4799.893,33.83914,0,0,0,100,0),
(@PATH,12,-542.1885,4799.724,33.71414,0,0,0,100,0),
(@PATH,13,-570.3811,4800.449,34.60215,0,0,0,100,0),
(@PATH,14,-592.3809,4800.299,35.85215,0,0,0,100,0),
(@PATH,15,-617.6182,4800.323,38.53064,0,0,0,100,0),
(@PATH,16,-659.4124,4799.819,49.09505,0,0,0,100,0),
(@PATH,17,-512.5808,4799.929,32.09928,0,0,0,100,0),
(@PATH,18,-480.9247,4799.97,28.25657,0,0,0,100,0),
(@PATH,19,-512.6269,4799.873,32.09928,0,0,0,100,0),
(@PATH,20,-542.1885,4799.724,33.71414,0,0,0,100,0),
(@PATH,21,-570.3811,4800.449,34.60215,0,0,0,100,0),
(@PATH,22,-592.3809,4800.299,35.85215,0,0,0,100,0),
(@PATH,23,-617.6182,4800.323,38.53064,0,0,0,100,0),
(@PATH,24,-659.4124,4799.819,49.09505,0,0,0,100,0),
(@PATH,25,-582.4199,4800.242,34.97715,0,0,0,100,0),
(@PATH,26,-512.6269,4799.873,32.09928,0,0,0,100,0),
(@PATH,27,-542.1885,4799.724,33.71414,0,0,0,100,0),
(@PATH,28,-570.3811,4800.449,34.60215,0,0,0,100,0),
(@PATH,29,-592.3809,4800.299,35.85215,0,0,0,100,0),
(@PATH,30,-617.6182,4800.323,38.53064,0,0,0,100,0);

-- Dark Portal - corrects the entry position and orientation by cdawg closes #5470
UPDATE `areatrigger_teleport` SET `target_position_x`=-248.149292, `target_position_y`=921.874953, `target_position_z`=84.388448, `target_orientation`=1.584155 WHERE `id`=4354;

-- Add pamphlets to mail loot by gecko32 closes #5408
DELETE FROM `mail_loot_template` WHERE `entry` BETWEEN 224 AND 233;
INSERT INTO `mail_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES 
(224, 46875, 100, 1, 0, 1, 1), -- Riding Training Pamphlet Elwynn Forest
(225, 46876, 100, 1, 0, 1, 1), -- Riding Training Pamphlet Darnassus
(226, 46877, 100, 1, 0, 1, 1), -- Riding Training Pamphlet Dun Morogh drawf
(227, 46879, 100, 1, 0, 1, 1), -- Riding Training Pamphlet Azuremyst Isle
(228, 46878, 100, 1, 0, 1, 1), -- Riding Training Pamphlet Dun Morogh gnome
(229, 46884, 100, 1, 0, 1, 1), -- Riding Training Pamphlet Mulgore
(230, 46883, 100, 1, 0, 1, 1), -- Riding Training Pamphlet Durator
(231, 46880, 100, 1, 0, 1, 1), -- Riding Training Pamphlet Orgrimmar
(232, 46882, 100, 1, 0, 1, 1), -- Riding Training Pamphlet Eversong Woods
(233, 46881, 100, 1, 0, 1, 1); -- Riding Training Pamphlet Tirisfal Glades

-- fix coordinates for cannoneer whessan by mosoo closes #5406
UPDATE `creature` SET `position_x`=-2093.53, `position_y`=-3496.47, `position_z`=130.084, `orientation`=3.008 WHERE `id`=3455 LIMIT 1;

-- fix quest requirement for the last of her kind by shlomi 1515 closes #4875
UPDATE `quest_template` SET `PrevQuestID` = 12900 WHERE `id` = 12983;

-- Add rep reward to ICC25 Trash by gecko32 closes #5457
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (37655,38031,38057,38058,38059,38061,38062,38063,38064,38072,38073,38074,38075,38076,38098,38099,38100,38101,38102,38103,38105,38108,38110,38126,38130,38131,38132,38133,38139,38151,38219,38220,38418,38445,38446,38479,38480,38481);
INSERT INTO `creature_onkill_reputation` (`creature_id`, `RewOnKillRepFaction1`, `RewOnKillRepFaction2`, `MaxStanding1`, `IsTeamAward1`, `RewOnKillRepValue1`, `MaxStanding2`, `IsTeamAward2`, `RewOnKillRepValue2`, `TeamDependent`) VALUES
(37655, 1156, 0, 7, 0, 45, 0, 0, 0, 0), -- Decaying colossus
(38031, 1156, 0, 7, 0, 45, 0, 0, 0, 0), -- Deathbound Ward
(38057, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Servant of the throne
(38058, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Nerub'ar Broodkeeper
(38059, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ancient Skeletal Soldier
(38061, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- The Damned
(38062, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Plague Scientist
(38063, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Vengeful Fleshreaper
(38064, 1156, 0, 7, 0, 150, 0, 0, 0, 0), -- Stinky
(38072, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Deathspeacker Attedent
(38073, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Deathspeacker Disciple
(38074, 1156, 0, 7, 0, 45, 0, 0, 0, 0), -- Deathspeacker High Preist
(38075, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Deathspeacker Servant
(38076, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Deathspeacker Zealot
(38098, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Advisor
(38099, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Archmage
(38100, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Blood Knight
(38101, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Lieutenant
(38102, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Commander
(38103, 1156, 0, 7, 0, 150, 0, 0, 0, 0), -- Precious
(38105, 1156, 0, 7, 0, 2, 0, 0, 0, 0), -- Plagued Zombie
(38108, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Blighted Abomination
(38110, 1156, 0, 7, 0, 30, 0, 0, 0, 0), -- Pustulating Horror
(38126, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Frostbinder
(38130, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Deathbringer
(38131, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Huntress
(38132, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Battle-Maiden
(38133, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Ymirjar Warlord
(38139, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Frostwarden Handler
(38151, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Frostwing Whelp
(38219, 1156, 0, 7, 0, 150, 0, 0, 0, 0), -- Spinestalker
(38220, 1156, 0, 7, 0, 150, 0, 0, 0, 0), -- Rimefang
(38418, 1156, 0, 7, 0, 45, 0, 0, 0, 0), -- Val'kyr Herald
(38445, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Spire Minion
(38446, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Frenzied Abomination
(38479, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Tactician
(38480, 1156, 0, 7, 0, 15, 0, 0, 0, 0), -- Darkfallen Noble
(38481, 1156, 0, 7, 0, 15, 0, 0, 0, 0); -- Spire Gargoyle

-- fix procs by warpten closes #4467 for 
-- Needle-Encrusted Scorpion
DELETE FROM `spell_proc_event` WHERE `entry`=71404;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(71404,0,0,0,0,0,0,2,0,0,50);

-- Black Magic
DELETE FROM `spell_proc_event` WHERE `entry`=59630;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(59630,0,0,0,0,0,0,0,0,0,35);

-- Environment Creature Hight Update by shlomi1515 closes #4043
UPDATE `creature` SET `position_z`=558.210022 WHERE `guid` IN (85141,85143,85154,85153,85142,85151,85152,85150);
UPDATE `creature` SET `position_z`=586.302 WHERE `guid` IN (85145,85144,85146);
UPDATE `creature` SET `position_z`=586.263 WHERE `guid` IN (85147,85148,85149);

-- fix winterskorn raider not landing by nayd closes #3899
UPDATE `creature_template` SET `InhabitType`=`InhabitType`|1 WHERE `entry`=23665;

-- fix head of onyxia's loot closes by kandera #3851
UPDATE `item_template` SET `flags` = flags|4096 WHERE `entry` IN (18422,18423,49644,49643);

-- fix visual for plagued dragonsflayer tribesman by shlomi1515 closes #3518
DELETE FROM `creature_addon` WHERE `guid` = 97540;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (38308,38309,37824); -- Professor Putricide triggers
UPDATE `creature_template` SET `ScriptName`='npc_gas_cloud' WHERE `entry`=37562; -- Gas Cloud
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_putricide_ooze_summon';
DELETE FROM `spell_target_position` WHERE `id` IN (71413,71414);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(71414,631,4335.00,3206.75,389.399,0),
(71413,631,4380.43,3206.55,389.398,0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (71615,71618,71412,71415);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,4,71615,31,3,37690,'Putricide - Tear Gas on Slime Puddle'),
(13,1,71618,31,3,37562,'Putricide - Tear Gas on Gas Cloud'),
(13,2,71618,31,3,37697,'Putricide - Tear Gas on Volatile Ooze'),
(13,4,71618,31,3,38159,'Putricide - Tear Gas on Choking Gas Bomb');

UPDATE `spell_script_names` SET `ScriptName`='spell_putricide_clear_aura_effect_value' WHERE `ScriptName`='spell_putricide_clear_mutated_plague';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(71620,'spell_putricide_clear_aura_effect_value');
ALTER TABLE `battleground_template` ADD `StartMaxDist` float NOT NULL DEFAULT 0 AFTER `HordeStartO`;

UPDATE `battleground_template` SET `StartMaxDist`=200 WHERE `id`=30; -- IC
UPDATE `battleground_template` SET `StartMaxDist`=100 WHERE `id`=1; -- AV
UPDATE `battleground_template` SET `StartMaxDist`=75 WHERE `id` IN (2,3,7); -- WSG, AB, EotS

UPDATE `battleground_template` SET `MinLvl`=1 WHERE `id`=32;
-- Blackened Naaru Silver proc cooldown
DELETE FROM `spell_proc_event` WHERE `entry`=45355;
INSERT INTO `spell_proc_event`(`entry`,`schoolmask`,`spellfamilyname`,`spellfamilymask0`,`spellfamilymask1`,`spellfamilymask2`,`procflags`,`procex`,`ppmrate`,`customchance`,`cooldown`) VALUES
(45355,0,0,0,0,0,0,0,0,0,45);-- Add Bogblossom to this Bogblossom object for the druid quest (other one already contains it)
DELETE FROM `gameobject_loot_template` WHERE (`entry`=10961) AND (`item`=31950);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES (10961,31950,-100,0,0,1,1);
-- Add missing gameobject_loot_templates to prevent startup errors
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (3458,3459,3460,3461,15920,16841,26878,27725);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES 
(3458,4594,100,0,0,1,1), -- Rockscale Cod on Feast Fish
(3459,3771,100,0,0,1,1), -- Wild Hog Shank On Feast Boar
(3460,4538,100,0,0,1,1), -- Snapvine Watermelon on Feast Fruit
(3461,1708,100,0,0,1,1), -- Sweet Nectar on Feast Goblet
(15920,17822,-100,0,0,1,1), -- Weird Map on weird object
(16841,18950,-100,0,0,1,1), -- Chambermaid Pillaclenchers Pillow on Pillaclencher's Ornate Pillow
(26878,45062,100,0,0,1,1), -- Dusty Journal on Dusty Journal (different ID)
(27725,49648,100,0,0,1,1); -- Borrowed Tabard on Clean Laundry (might need condition!)
UPDATE `creature_template_addon` SET `auras`='50453' WHERE `entry`=28017;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=28017;
UPDATE `creature_template` SET `ainame` = '' WHERE `entry`=28017;UPDATE `spell_bonus_data` SET `direct_bonus`=0.8930 WHERE `entry`=51505;
DELETE FROM `spell_proc_event` WHERE `entry`=53601;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(53601, 0, 0, 0x00000000, 0x00000000, 0x00000000, 0, 0, 0, 0, 6);
DELETE FROM `spell_proc_event` WHERE `entry` IN (51486,51485,51483);
SET @Event = 26; -- Pilgrim's Bounty
DELETE FROM `game_event` WHERE `eventEntry`=@Event;
INSERT INTO `game_event` (`eventEntry`,`start_time`,`end_time`,`occurence`,`length`,`holiday`,`description`,`world_event`) VALUES
(@Event,'2012-11-18 01:00:00','2020-12-31 05:00:00',525600,10020,404,'Pilgrim\'s Bounty',0);
SET @GUID1 := 41781;
SET @GUID2 := 41783;

DELETE FROM creature WHERE guid IN (@GUID1,@GUID2);
INSERT INTO `creature`
(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`)
VALUES
(@GUID1  ,38453,571,1,1,3561.821,-2736.367,136.0317,0), -- Arcturis in Grizzly Hills
(@GUID2,35189,571,1,1,7101.845,-1443.734,924.2609,0.178631); -- Skoll in The Storm Peaks

UPDATE `creature_template` SET `faction_A` = 190, `faction_H`=190 WHERE `entry` IN (38453,35189);

SET @NPC= @GUID1*10;
-- Add pathing for Arcturis
DELETE FROM `creature_addon` WHERE `guid` = @GUID1;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@GUID1,@NPC,0,0,0,0,''); -- Add path for Acturis
-- Add waypoint data for the path:
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3563.499,-2737.698,137.1898),
(@NPC,2,3565.249,-2738.698,138.4398),
(@NPC,3,3566.749,-2739.948,139.9398),
(@NPC,4,3568.249,-2740.698,140.6898),
(@NPC,5,3567.839,-2741.380,141.9256),
(@NPC,6,3569.999,-2741.948,142.1898),
(@NPC,7,3570.749,-2742.448,143.1898),
(@NPC,8,3572.676,-2743.528,144.8479);
UPDATE `npc_spellclick_spells` SET `spell_id`=57053 WHERE `npc_entry`=30066 AND `spell_id`=56678;
UPDATE `creature_template` SET `spell1`=55812 WHERE `entry`=30066;
UPDATE `creature` SET `spawntimesecs`=39600 WHERE `guid` IN (41781,41783); -- Set the spawntime to 11 hours for Arcturis & Skoll
-- ----------------------
-- -- Various Cleanups --
-- ----------------------
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=10 AND `SourceGroup`=34105; 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=4 AND `SourceGroup` IN (27081,27085,27073,26963,26955);
DELETE FROM `reference_loot_template` WHERE `entry` IN (12020,12021,12022,34105,34125,34126,34127,34128,34129,34130);
DELETE FROM `gameobject_loot_template` WHERE `entry`=10961; -- Bad Bogblossom fix was bad
UPDATE `gameobject_template` SET `data1`=26956 WHERE `entry`=194315;
-- -------------------------------
-- -- Variables and definitions -- 
-- -------------------------------
-- Freya 10 man
SET @Freya10k0ID := 194324; -- Freyas Gift 10man ALL elders alive
SET @Freya10k1ID := 194326; -- Freyas Gift 10man killed 1 elder
SET @Freya10k2ID := 194328; -- Freyas Gift 10man killed 2 elder
SET @Freya10k3ID := 194330; -- Freyas Gift 10man killed 3 elder
-- Freya 25 man
SET @Freya25k0ID := 194325; -- Freyas Gift 25man ALL elders alive
SET @Freya25k1ID := 194327; -- Freyas Gift 25man killed 1 elder
SET @Freya25k2ID := 194329; -- Freyas Gift 25man killed 2 elder
SET @Freya25k3ID := 194331; -- Freyas Gift 25man killed 3 elder
-- Hodir
SET @Hodir10nID := 194307; -- Cache of Winter 10man
SET @Hodir10hID := 194200; -- Rare Cache of Winter 10man
SET @Hodir25nID := 194308; -- Cache of Winter 25man
SET @Hodir25hID := 194201; -- Rare Cache of Winter 25man
-- Mimiron
SET @Mimiron10nID := 194789; -- Cache of Innovations 10man
SET @Mimiron25nID := 194956; -- Cache of Innovations 25man
SET @Mimiron10hID := 194957; -- Cache of Innovation 10 man Hardmode
SET @Mimiron25hID := 194958; -- Cache of Innovation 25 man Hardmode
-- Thorim
SET @Thorim10nID := 194312; -- Cache of Storms 10man
SET @Thorim10hID := 194313; -- Cache of Storms 10 man Hardmode
SET @Thorim25nID := 194314; -- Cache of Storms 25man
SET @Thorim25hID := 194315; -- Cache of Storms 25 man Hardmode

-- Use procedure to get Lootid from data1 field and assign it to a variable
-- Freya 10
CALL `sp_get_go_lootid`(@Freya10k0ID,@Freya10k0);
CALL `sp_get_go_lootid`(@Freya10k1ID,@Freya10k1);
CALL `sp_get_go_lootid`(@Freya10k2ID,@Freya10k2);
CALL `sp_get_go_lootid`(@Freya10k3ID,@Freya10k3);
-- Freya 25
CALL `sp_get_go_lootid`(@Freya25k0ID,@Freya25k0);
CALL `sp_get_go_lootid`(@Freya25k1ID,@Freya25k1);
CALL `sp_get_go_lootid`(@Freya25k2ID,@Freya25k2);
CALL `sp_get_go_lootid`(@Freya25k3ID,@Freya25k3);
-- Hodir 10
CALL `sp_get_go_lootid`(@Hodir10nID,@Hodir10n);
CALL `sp_get_go_lootid`(@Hodir10hID,@Hodir10h);
-- Hodir 25
CALL `sp_get_go_lootid`(@Hodir25nID,@Hodir25n);
CALL `sp_get_go_lootid`(@Hodir25hID,@Hodir25h);
-- Mimiron
CALL `sp_get_go_lootid`(@Mimiron10nID,@Mimiron10n);
CALL `sp_get_go_lootid`(@Mimiron10hID,@Mimiron10h);
CALL `sp_get_go_lootid`(@Mimiron25nID,@Mimiron25n);
CALL `sp_get_go_lootid`(@Mimiron25hID,@Mimiron25h);
-- Thorim
CALL `sp_get_go_lootid`(@Thorim10nID,@Thorim10n);
CALL `sp_get_go_lootid`(@Thorim10hID,@Thorim10h);
CALL `sp_get_go_lootid`(@Thorim25nID,@Thorim25n);
CALL `sp_get_go_lootid`(@Thorim25hID,@Thorim25h);
-- Set References
SET @Freya10Ref := 34365; 
SET @Freya25Ref := @Freya10Ref+1;
SET @Hodir10Ref := @Freya10Ref+2; 
SET @Hodir25Ref := @Freya10Ref+3;
SET @Mimiron10Ref := @Freya10Ref+4;
SET @Mimiron25Ref := @Freya10Ref+5;
SET @Thorim10Ref := @Freya10Ref+6;
SET @Thorim25Ref := @Freya10Ref+7;
SET @HandToken := 12026; 
SET @LegToken := @HandToken+1;
SET @LegsToken := @HandToken+2;
SET @ChestToken := @HandToken+3;
SET @HeadToken := @HandToken+4;
SET @GloveToken := @HandToken+5;
SET @ShoulderToken := @HandToken+6;
SET @HelmToken := @HandToken+7;
SET @Recipe := 34154;
-- -------------------------
-- -- Reference Templates --
-- -------------------------
-- Delete previous templates if existing
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @Freya10Ref AND @Freya10Ref+7;
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @HandToken AND @HandToken+7;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Freya 10 man
(@Freya10Ref,45934,0,1,1,1,1), -- Unraveling Reach	
(@Freya10Ref,45935,0,1,1,1,1), -- Ironbark Faceguard
(@Freya10Ref,45941,0,1,1,1,1), -- Chestguard of the Lasher
(@Freya10Ref,45936,0,1,1,1,1), -- Legplates of Flourishing Resolve
(@Freya10Ref,45940,0,1,1,1,1), -- Tunic of the Limber Stalker
-- Freya 25 man
(@Freya25Ref,45483,0,1,1,1,1), -- Boots of the Servant
(@Freya25Ref,45482,0,1,1,1,1), -- Leggings of the Lifetender
(@Freya25Ref,45481,0,1,1,1,1), -- Gauntlets of Ruthless Reprisal
(@Freya25Ref,45480,0,1,1,1,1), -- Nymph Heart Charm
(@Freya25Ref,45479,0,1,1,1,1), -- The Lifebinder
-- Freya Tokens
(@HandToken,45644,0,1,1,1,1), -- Gloves of the Wayward Conqueror
(@HandToken,45645,0,1,1,1,1), -- Gloves of the Wayward Protector
(@HandToken,45646,0,1,1,1,1), -- Gloves of the Wayward Vanquisher
(@LegToken,45653,0,1,1,1,1), -- Legplates of the Wayward Conqueror
(@LegToken,45654,0,1,1,1,1), -- Legplates of the Wayward Protector
(@LegToken,45655,0,1,1,1,1), -- Legplates of the Wayward Vanquisher
-- Hodir 10 man
(@Hodir10Ref,45874,0,1,1,1,1), -- Signet of Winter
(@Hodir10Ref,45458,0,1,1,1,1), -- Stormedge
(@Hodir10Ref,45873,0,1,1,1,1), -- Winter's Frigid Embrace
(@Hodir10Ref,45872,0,1,1,1,1), -- Avalanche
(@Hodir10Ref,45454,0,1,1,1,1), -- Cowl of Icy Breaths
-- Hodir 25 man
(@Hodir25Ref,45452,0,1,1,1,1), -- Frostplate Greaves
(@Hodir25Ref,45454,0,1,1,1,1), -- Frost-Bound Chain Bracers
(@Hodir25Ref,45453,0,1,1,1,1), -- Winter's Icy Embrace
(@Hodir25Ref,45450,0,1,1,1,1), -- Northern Barrier
(@Hodir25Ref,45451,0,1,1,1,1), -- Frozen Loop
-- Hodir Tokens
(@LegsToken,45650,0,1,1,1,1), -- Leggings of the Wayward Conqueror
(@LegsToken,45651,0,1,1,1,1), -- Leggings of the Wayward Protector
(@LegsToken,45652,0,1,1,1,1), -- Leggings of the Wayward Vanquisher
(@ChestToken,45632,0,1,1,1,1), -- Breastplate of the Wayward Conqueror
(@ChestToken,45633,0,1,1,1,1), -- Breastplate of the Wayward Protector
(@ChestToken,45634,0,1,1,1,1), -- Breastplate of the Wayward Vanquisher
-- Mimiron 10 man
(@Mimiron10Ref,45974,0,1,1,1,1), -- Shoulderguards of Assimilation
(@Mimiron10Ref,45976,0,1,1,1,1), -- Static Charge Handwraps
(@Mimiron10Ref,45972,0,1,1,1,1), -- Pulse Baton
(@Mimiron10Ref,45973,0,1,1,1,1), -- Stylish Power Cape
(@Mimiron10Ref,45975,0,1,1,1,1), -- Cable of the Metrognome
-- Mimiron 25 man
(@Mimiron25Ref,45492,0,1,1,1,1), -- Malleable Steelweave Mantle
(@Mimiron25Ref,45493,0,1,1,1,1), -- Asimov's Drape
(@Mimiron25Ref,45490,0,1,1,1,1), -- Pandora's Plea
(@Mimiron25Ref,45491,0,1,1,1,1), -- Waistguard of the Creator
(@Mimiron25Ref,45489,0,1,1,1,1), -- Insanity's Grip
-- Mimiron Tokens
(@HeadToken,45647,0,1,1,1,1), -- Helm of the Wayward Conqueror
(@HeadToken,45648,0,1,1,1,1), -- Helm of the Wayward Protector
(@HeadToken,45649,0,1,1,1,1), -- Helm of the Wayward Vanquisher
(@GloveToken,45641,0,1,1,1,1), -- Gauntlets of the Wayward Conqueror
(@GloveToken,45642,0,1,1,1,1), -- Gauntlets of the Wayward Protector
(@GloveToken,45643,0,1,1,1,1), -- Gauntlets of the Wayward Vanquisher
-- Thorim 10 man
(@Thorim10Ref,45927,0,1,1,1,1), -- Handwraps of Resonance
(@Thorim10Ref,45894,0,1,1,1,1), -- Leggings of Unstable Discharge
(@Thorim10Ref,45895,0,1,1,1,1), -- Belt of the Blood Pit
(@Thorim10Ref,45893,0,1,1,1,1), -- Guise of the Midgard Serpent
(@Thorim10Ref,45892,0,1,1,1,1), -- Legacy of Thunder
-- Throim 25 man
(@Thorim25Ref,45468,0,1,1,1,1), -- Leggings of Lost Love
(@Thorim25Ref,45466,0,1,1,1,1), -- Scale of Fates
(@Thorim25Ref,45467,0,1,1,1,1), -- Belt of the Betrayed
(@Thorim25Ref,45469,0,1,1,1,1), -- Sif's Promise
(@Thorim25Ref,45463,0,1,1,1,1), -- Vulmir, the Northern Tempest
-- Thorim Tokens
(@ShoulderToken,45659,0,1,1,1,1), -- Spaulders of the Wayward Conqueror
(@ShoulderToken,45660,0,1,1,1,1), -- Spaulders of the Wayward Protector
(@ShoulderToken,45661,0,1,1,1,1), -- Spaulders of the Wayward Vanquisher
(@HelmToken,45638,0,1,1,1,1), --  Crown of the Wayward Conqueror
(@HelmToken,45639,0,1,1,1,1), --  Crown of the Wayward Protector
(@HelmToken,45640,0,1,1,1,1); --  Crown of the Wayward Vanquisher
-- -------------------------------
-- -- Gameobject Loot Templates --
-- -------------------------------
-- Delete previous templates if existing
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (@Freya10k3,@Freya10k2,@Freya10k1,@Freya10k0,@Freya25k3,@Freya25k2,@Freya25k1,@Freya25k0,@Hodir10n,@Hodir10h,@Hodir25n,@Hodir25h,@Mimiron10n,@Mimiron10h,@Mimiron25n,@Mimiron25h,@Thorim10n,@Thorim10h,@Thorim25n,@Thorim25h);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- ------------------
-- -- Freya 10 man --
-- ------------------
-- Normal Mode:
(@Freya10k3,1,100,1,0,-@Freya10Ref,1), -- 1 from normal loot
(@Freya10k3,2,100,1,0,-@HandToken,1), -- 1 from tokens
(@Freya10k3,46110,100,1,0,1,1), -- Alchemist's Cache
(@Freya10k3,47241,100,1,0,1,1), -- 1x Emblem of Triumph
-- Hard Mode: 1 elder alive
(@Freya10k2,1,100,1,0,-@Freya10Ref,1), -- 1 from normal loot
(@Freya10k2,2,100,1,0,-@HandToken,1), -- 1 from tokens
(@Freya10k2,46110,100,1,0,1,1), -- Alchemist's Cache
(@Freya10k2,47241,100,1,0,2,2), -- 2x Emblem of Triumph
(@Freya10k2,45087,100,1,0,1,1), -- Runed Orb
(@Freya10k2,3,100,1,0,-34349,1), -- 1x Emblem of Triumph for Alive Elders
-- Hard Mode: 2 elders alive
(@Freya10k1,1,100,1,0,-@Freya10Ref,1), -- 1 from normal loot
(@Freya10k1,2,100,1,0,-@HandToken,1), -- 1 from tokens
(@Freya10k1,46110,100,1,0,1,1), -- Alchemist's Cache
(@Freya10k1,47241,100,1,0,3,3), -- 3x Emblem of Triumph
(@Freya10k1,45087,100,1,0,1,1), -- Runed Orb
(@Freya10k1,3,100,1,0,-@Recipe,1), -- 1 from Recipe
(@Freya10k1,4,100,1,0,-34349,2), -- 2x Emblem of Triumph for Alive Elders
-- Hard Mode: 3 elders alive
(@Freya10k0,1,100,1,0,-@Freya10Ref,1), -- 1 from normal loot
(@Freya10k0,2,100,1,0,-@HandToken,1), -- 1 from tokens
(@Freya10k0,46110,100,1,0,1,1), -- Alchemist's Cache
(@Freya10k0,47241,100,1,0,3,3), -- 3x Emblem of Triumph (self)
(@Freya10k0,45087,100,1,0,1,1), -- Runed Orb
(@Freya10k0,3,100,1,0,-@Recipe,1), -- 1 from Recipe
(@Freya10k0,45788,-100,1,0,1,1), -- Freya's Sigil 10 man QUEST ONLY
(@Freya10k0,4,100,1,0,-34349,1), -- 3x Emblem of Triumph for Alive Elders
-- 1 from Hardmode items:
(@Freya10k0,45943,0,1,1,1,1), -- Gloves of Whispering Winds
(@Freya10k0,45946,0,1,1,1,1), -- Fire Orchid Signet
(@Freya10k0,45945,0,1,1,1,1), -- Seed of Budding Carnage
(@Freya10k0,45947,0,1,1,1,1), -- Serilas, Blood Blade of Invar One-Arm
(@Freya10k0,45294,0,1,1,1,1), -- Petrified Ivy Sprig
-- ------------------ 
-- -- Freya 25 man -- 
-- ------------------
-- Normal Mode:
(@Freya25k3,1,100,1,0,-@Freya25Ref,1), -- 1 from normal loot
(@Freya25k3,2,100,1,0,-@LegToken,2), -- 2 from tokens
(@Freya25k3,47241,100,1,0,1,1), -- 1x Emblem of Triumph
(@Freya25k3,46110,100,1,0,1,1), -- Alchemist's Cache
(@Freya25k3,3,10,1,0,-@Recipe,1), -- Chance on Recipe
(@Freya25k3,45087,10,1,0,1,1), -- Chance on Runed Orb
(@Freya25k3,45083,5,1,0,1,1), -- Fragment of Val'anyr
-- Hard Mode: 1 elder alive
(@Freya25k2,1,100,1,0,-@Freya25Ref,1), -- 1 from normal loot
(@Freya25k2,2,100,1,0,-@LegToken,2), -- 2 from tokens
(@Freya25k2,47241,100,1,0,2,2), -- 2x Emblem of Triumph
(@Freya25k2,46110,100,1,0,1,1), -- Alchemist's Cache
(@Freya25k2,3,10,1,0,-@Recipe,1), -- Chance on Recipe
(@Freya25k2,4,10,1,0,-34350,1), -- Chance on Runed Orb
(@Freya25k2,45087,100,1,0,2,2), -- 2x Runed Orb
(@Freya25k2,45083,7,1,0,1,1), -- Fragment of Val'anyr
(@Freya25k2,5,100,1,0,-34349,1), -- 1x Emblem of Triumph for Alive Elder
-- Hard Mode: 2 elders alive
(@Freya25k1,1,100,1,0,-@Freya25Ref,1), -- 1 from normal loot
(@Freya25k1,2,100,1,0,-@LegToken,2), -- 2 from tokens
(@Freya25k1,47241,100,1,0,3,3), -- 3x Emblem of Triumph
(@Freya25k1,46110,100,1,0,1,1), -- Alchemist's Cache
(@Freya25k1,3,10,1,0,-34350,1), -- Chance on Runed Orb
(@Freya25k1,45087,100,1,0,2,2), -- 2x Runed Orb
(@Freya25k1,4,100,1,0,-@Recipe,1), -- Recipe
(@Freya25k1,5,10,1,0,-@Recipe,1), -- Chance on Recipe
(@Freya25k1,45083,9,1,0,1,1), -- Fragment of Val'anyr
(@Freya25k1,6,100,1,0,-34349,2), -- 2x Emblem of Triumph for Alive Elder
-- Hard Mode: 3 elders alive
(@Freya25k0,1,100,1,0,-@Freya25Ref,1), -- 1 from normal loot
(@Freya25k0,2,100,1,0,-@LegToken,2), -- 2 from tokens
(@Freya25k0,47241,100,1,0,3,3), -- 3x Emblem of Triumph
(@Freya25k0,46110,100,1,0,1,1), -- Alchemist's Cache
(@Freya25k0,3,10,1,0,-34350,1), -- Chance on Runed Orb
(@Freya25k0,45087,100,1,0,2,2), -- 2x Runed Orb
(@Freya25k0,4,100,1,0,-@Recipe,1), -- Recipe
(@Freya25k0,5,10,1,0,-@Recipe,1), -- Chance on Recipe
(@Freya25k0,45814,-100,1,0,1,1), -- Freya's Sigil 25 man QUEST ONLY
(@Freya25k0,45083,20,1,0,1,1), -- Fragment of Val'anyr
(@Freya25k2,6,100,1,0,-34349,3), -- 3x Emblem of Triumph for Alive Elder
-- 1 from Hardmode items
(@Freya25k0,45484,0,1,1,1,1), -- Bladetwister
(@Freya25k0,45486,0,1,1,1,1), -- Drape of the Sullen Goddess
(@Freya25k0,45487,0,1,1,1,1), -- Handguards of Revitalization
(@Freya25k0,45488,0,1,1,1,1), -- Leggings of the Enslaved Idol
(@Freya25k0,45613,0,1,1,1,1), -- Dreambinder
(@Freya25k0,45485,0,1,1,1,1), -- Bronze Pendant of the Vanir
-- ------------------
-- -- Hodir 10 man -- 
-- ------------------
(@Hodir10n,1,100,1,0,-@Hodir10Ref,1), -- 1x Normal Loot Item
(@Hodir10n,2,100,1,0,-@LegsToken,1), -- 1x Token
(@Hodir10n,47241,100,1,0,1,1), -- Emblem of Triumph
-- Hard mode:
(@Hodir10h,1,100,1,0,-@Hodir10Ref,1), -- 1x Normal Loot Item
(@Hodir10h,2,100,1,0,-@LegsToken,1), -- 1x Token
(@Hodir10h,47241,100,1,0,1,1), -- Emblem of Triumph
(@Hodir10h,45786,-100,1,0,1,1), -- Hodir's Sigil
-- 1 from Hardmode items
(@Hodir10h,45887,0,1,1,1,1), -- Ice Layered Barrier
(@Hodir10h,45888,0,1,1,1,1), -- Bitter Cold Armguards
(@Hodir10h,45886,0,1,1,1,1), -- Icecore Staff
(@Hodir10h,45876,0,1,1,1,1), -- Shiver
(@Hodir10h,45877,0,1,1,1,1), -- The Boreal Guard
-- ------------------
-- -- Hodir 25 man -- 
-- ------------------
(@Hodir25n,1,100,1,0,-@Hodir25Ref,1), -- 1x Normal Loot Item
(@Hodir25n,2,100,1,0,-@ChestToken,1), -- 1x Token
(@Hodir25n,47241,100,1,0,1,1), -- Emblem of Triumph
(@Hodir25n,3,10,1,0,-@Recipe,1), -- Chance on Recipe
(@Hodir25n,45087,10,1,0,1,1), -- Chance on Runed Orb
(@Hodir25n,45083,10,1,0,1,1), -- Fragment of Val'anyr
-- Hard mode:
(@Hodir25h,1,100,1,0,-@Hodir25Ref,1), -- 1x Normal Loot Item
(@Hodir25h,2,100,1,0,-@ChestToken,2), -- 2x Token
(@Hodir25h,47241,100,1,0,1,1), -- Emblem of Triumph
(@Hodir25h,45815,-100,1,0,1,1), -- Hodir's Sigil
(@Hodir25h,3,10,1,0,-@Recipe,1), -- Chance on Recipe
(@Hodir25h,45087,10,1,0,1,1), -- Chance on Runed Orb
(@Hodir25h,45083,20,1,0,1,1), -- Fragment of Val'anyr
-- --------------------
-- -- Mimiron 10 man --
-- --------------------
(@Mimiron10n,1,100,1,0,-@Mimiron10Ref,1), -- 1x Normal Loot Item
(@Mimiron10n,2,100,1,0,-@HeadToken,1), -- 1x Token
(@Mimiron10n,47241,100,1,0,1,1), -- 1x Emblem of Triumph
-- Hardmode 10 man
(@Mimiron10h,1,100,1,0,-@Mimiron10Ref,1), -- 1x Normal Loot Item
(@Mimiron10h,2,100,1,0,-@HeadToken,1), -- 1x Token
(@Mimiron10h,47241,100,1,0,1,1), -- 1x Emblem of Triumph
(@Mimiron10h,45787,-100,1,0,1,1), -- Mimiron's Sigel (QUEST ONLY, HARDMODE ONLY)
-- 1 from Hardmode items
(@Mimiron10h,45989,0,1,1,1,1), -- Tempered Mercury Greaves
(@Mimiron10h,45982,0,1,1,1,1), -- Fused Alloy Legplates
(@Mimiron10h,45993,0,1,1,1,1), -- Mimiron's Flight Goggles
(@Mimiron10h,45988,0,1,1,1,1), -- Greaves of the Iron Army
(@Mimiron10h,45990,0,1,1,1,1), -- Fusion Blade
-- --------------------
-- -- Mimiron 25 man --
-- --------------------
(@Mimiron25n,1,100,1,0,-@Mimiron25Ref,1), -- 1x Normal Loot Item
(@Mimiron25n,2,100,1,0,-@GloveToken,2), -- 2x Token
(@Mimiron25n,47241,100,1,0,1,1), -- 1x Emblem of Triumph
(@Mimiron25n,3,10,1,0,-@Recipe,1), -- Chance on Recipe
(@Mimiron25n,45087,10,1,0,1,1), -- Chance on Runed Orb
(@Mimiron25n,45083,8,1,0,1,1), -- Fragment of Val'anyr Normal
-- Hard Mode 25 man
(@Mimiron25h,1,100,1,0,-@Mimiron25Ref,1), -- 1x Normal Loot Item
(@Mimiron25h,2,100,1,0,-@GloveToken,2), -- 2x Token
(@Mimiron25h,47241,100,1,0,1,1), -- 1x Emblem of Triumph
(@Mimiron25h,3,10,1,0,-@Recipe,1), -- Chance on Recipe
(@Mimiron25h,45087,10,1,0,1,1), -- Chance on Runed Orb
(@Mimiron25h,45816,-100,1,0,1,1), -- Mimiron's Sigel (QUEST ONLY, HARDMODE ONLY)
(@Mimiron25h,45083,18,1,0,1,1), -- Fragment of Val'anyr Hardmode
-- 1 from Hardmode items
(@Mimiron25h,45496,0,1,1,1,1), -- Titanskin Cloak
(@Mimiron25h,45494,0,1,1,1,1), -- Delirium's Touch
(@Mimiron25h,45663,0,1,1,1,1), -- Armbands of Bedlam
(@Mimiron25h,45620,0,1,1,1,1), -- Starshard Edge
(@Mimiron25h,45495,0,1,1,1,1), -- Conductive Seal
(@Mimiron25h,45497,0,1,1,1,1), -- Crown of Luminescence
-- -------------------
-- -- Thorim 10 man -- 
-- -------------------
(@Thorim10n,1,100,1,0,-@Thorim10Ref,1), -- 1x Normal Loot Item
(@Thorim10n,2,100,1,0,-@ShoulderToken,1), -- 1x Token
(@Thorim10n,47241,100,1,0,1,1), -- 1x Emblem of Triumph
-- Hardmode 10 man
(@Thorim10h,1,100,1,0,-@Thorim10Ref,1), -- 1x Normal Loot Item
(@Thorim10h,2,100,1,0,-@ShoulderToken,1), -- 1x Token
(@Thorim10h,47241,100,1,0,1,1), -- 1x Emblem of Triumph
(@Thorim10h,45784,-100,2,0,1,1), -- Thorim's Sigil (QUEST ONLY, HARDMODE ONLY)
-- 1 from Hardmode items
(@Thorim10h,45933,0,2,1,1,1), -- Pendant of the Shallow Grave
(@Thorim10h,45929,0,2,1,1,1), -- Sif's Remembrance
(@Thorim10h,45928,0,2,1,1,1), -- Gauntlets of the Thunder God
(@Thorim10h,45931,0,2,1,1,1), -- Mjolnir Runestone
(@Thorim10h,45930,0,2,1,1,1), -- Combatant's Bootblade
-- -------------------
-- -- Thorim 25 man -- 
-- -------------------
(@Thorim25n,1,100,3,0,-@Thorim25Ref,1), -- 1x Normal Loot Item
(@Thorim25n,2,100,3,0,-@HelmToken,2), -- 2x Token
(@Thorim25n,47241,100,3,0,1,1), -- 1x Emblem of Triumph
(@Thorim25n,3,10,3,0,-@Recipe,1), -- Chance on Recipe
(@Thorim25n,45087,10,3,0,1,1), -- Chance on Runed Orb
(@Thorim25n,45083,8,1,0,1,1), -- Fragment of Val'anyr Normal
-- Hardmode 25 man
(@Thorim25h,1,100,3,0,-@Thorim25Ref,1), -- 1x Normal Loot Item
(@Thorim25h,2,100,3,0,-@HelmToken,2), -- 2x Token
(@Thorim25h,47241,100,3,0,1,1), -- 1x Emblem of Triumph
(@Thorim25h,3,10,3,0,-@Recipe,1), -- Chance on Recipe
(@Thorim25h,45087,10,3,0,1,1), -- Chance on Runed Orb
(@Thorim25h,45817,-100,1,0,1,1), -- Thorim's Sigil (QUEST ONLY, HARDMODE ONLY)
(@Thorim25h,45083,18,1,0,1,1), -- Fragment of Val'anyr Hardmode
-- 1 from Hardmode items
(@Thorim25h,45471,0,1,1,1,1), -- Fate's Clutch
(@Thorim25h,45570,0,1,1,1,1), -- Skyforge Crossbow
(@Thorim25h,45472,0,1,1,1,1), -- Warhelm of the Champion
(@Thorim25h,45474,0,1,1,1,1), -- Pauldrons of the Combatant
(@Thorim25h,45470,0,1,1,1,1), -- Wisdom's Hold
(@Thorim25h,45473,0,1,1,1,1); -- Embrace of the Gladiator

-- Increase dropchance for Venture Co. Explosives
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-10 WHERE `entry` IN(28123,28124) AND `item`=39651;
-- implement missing Northrend pickpocket loot
-- reference IDs
SET @NEWREF0 := 10026;
SET @NEWREF1 := @NEWREF0+1;
SET @NEWREF2 := @NEWREF0+2;
SET @NEWREF3 := @NEWREF0+3;
SET @NEWREF4 := @NEWREF0+4;
SET @NEWREF5 := @NEWREF0+5;
SET @NEWREF6 := @NEWREF0+6;
SET @NEWREF7 := @NEWREF0+7;
SET @NEWREF8 := @NEWREF0+8;
SET @NEWREF9 := @NEWREF0+9;
-- new references
DELETE FROM `reference_loot_template` WHERE entry IN (@NEWREF0, @NEWREF1, @NEWREF2, @NEWREF3, @NEWREF4, @NEWREF5, @NEWREF6, @NEWREF7, @NEWREF8, @NEWREF9);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`mincountOrRef`,`maxcount`) VALUES
(@NEWREF0,33447,25,1,1),-- Runic Healing Potion
(@NEWREF0,35953,30,1,1),-- Mead Basted Caribou
(@NEWREF0,38260,50,1,1),-- Empty Tobacco Pouch
(@NEWREF0,43575,80,1,1),-- Reinforced Junkbox
(@NEWREF1,36862,4,1,1),-- Wrogn Troll Dice
(@NEWREF1,40202,20,1,1),-- Sizzling Grizzly Flank
(@NEWREF2,33452,30,1,1),-- Honey-Spiced Lichen
(@NEWREF2,38269,35,1,1),-- Soggy Handkerchief
(@NEWREF3,33454,15,1,1),-- Salted Venison
(@NEWREF3,38261,13,1,1),-- Ben House Key
(@NEWREF4,38263,19,1,1),-- Too-Small Amband
(@NEWREF4,38264,18,1,1),-- A Very Pretty Rock
(@NEWREF5,29448,9,1,1),-- Mag'har Mild Cheese
(@NEWREF5,29450,13,1,1),-- Telaari Grapes
(@NEWREF5,37467,40,1,1),-- A Steamy Romance Novel: Forbidden Love
(@NEWREF6,35947,25,1,1),-- Sparkling Frostcap
(@NEWREF6,38269,40,1,1),-- Soggy Handkerchief
(@NEWREF7,33447,25,1,1),-- Runic Healing Potion
(@NEWREF7,35947,25,1,1),-- Sparkling Frostcap
(@NEWREF7,38269,40,1,1),-- Soggy Handkerchief
(@NEWREF7,43575,80,1,1),-- Reinforced Junkbox
(@NEWREF8,35948,11,1,1),-- Savory Snowplum
(@NEWREF8,35950,9,1,1),-- Sweet Potato Bread
(@NEWREF8,35952,8,1,1),-- Briny Hardcheese
(@NEWREF9,33447,25,1,1),-- Runic Healing Potion
(@NEWREF9,38260,50,1,1),-- Empty Tobacco Pouch
(@NEWREF9,43575,80,1,1); -- Reinforced Junkbox
-- implement pickpokect loot
UPDATE `creature_template` SET `pickpocketloot`=entry WHERE `entry` IN (25800,23667,23674,23760,23796,23865,23875,23963,24069,24262,24400,24460,25351,25427,25428,25429,25430,25601,25801,26073,26202,26334,26413,26447,26480,26481,26620,26621,26624,26626,26635,26636,26637,26639,26658,26681,26696,26727,26729,26800,26802,26836,26948,27105,27210,27211,/**/27234,27235,27247,27278,27289,27334,27342,27431,27533,27580,27639,27640,27699,27800,27859,27860,27961,27964,27965,28494,28496,28565,28803,28837,28838,28848,28961,28965,29369,29407,29553,29554,29656,29793,29820,29822,29836,29874,29875,29885,29920,30283,30319,30856,30868,31396,31554,32263);
UPDATE `creature_template` SET `pickpocketloot`=25430 WHERE `entry` IN (23654,23656,23663,23665,25434,26728,26827,26926,27554,32572);
UPDATE `creature_template` SET `pickpocketloot`=26481 WHERE `entry` IN (23662,23940,24016,24161,26493,26655,27007,27009);
UPDATE `creature_template` SET `pickpocketloot`=25351 WHERE `entry` IN (23993,24540,25224,25383,26343,26492,26891,26946,27224,27226,27283,27360,27552,27799,27823,27826,28564,28750);
UPDATE `creature_template` SET `pickpocketloot`=27533 WHERE `entry` IN (26555,26669,26670,26694,26830,27871,28022,28108,28242,28268,28419,29123,29133,29722,29738,30701,30894,30922,30949,31139,31150,31779,31847,32278,32505);
UPDATE `creature_template` SET `pickpocketloot`=30319 WHERE `entry` IN (30111,30179);
DELETE FROM `pickpocketing_loot_template` WHERE entry IN (25800,23656,23662,23663,23665,23667,23674,23760,23796,23865,23875,23940,23963,23993,24016,24069,24161,24262,24400,24460,24540,25224,25351,25383,25427,25428,25429,25430,25434,25601,25801,26073,26202,26334,26343,26413,26447,26480,26481,26492,26493,26555,26620,26621,26624,26626,26635,26636,26637,26639,26655,26658,26669,26670,26681,26694,26696,26727,26728,26729,26800,26802,26827,26830,26836,26891,26926,26946,26948,27007,27009,27105,27210,27211,27224,27226,27234,27235,27247,27278,27283,27289,27334,27342,27360,27431,27533,27552,27554,27580,27639,27640,27699,27799,27800,27823,27826,27859,27860,27871,27961,27964,27965,28022,28108,28242,28268,28419,28494,28496,28564,28565,28750,28803,28837,28838,28848,28961,28965,29123,29133,29369,29407,29553,29554,29656,29722,29738,29793,29820,29822,29836,29874,29875,29885,29920,30111,30179,30283,30319,30701,30856,30868,30894,30922,30949,31139,31150,31396,31554,31779,31847,32263,32278,32505,32572);
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Plague Walker
(30283,43575,100,0,1,1),-- Reinforced Junkbox
(30283,0,100,0,-@NEWREF6,1),
-- Twilight Darkcaster
(30319,0,100,0,-@NEWREF0,1),
(30319,33449,11,0,1,1),-- Crusty Flatbread
(30319,1,100,0,-@NEWREF1,1),
(30319,2,100,0,-@NEWREF3,1),
-- High Priest Talet-Kha
(26073,43575,58,0,1,1),-- Reinforced Junkbox
(26073,0,100,0,-@NEWREF5,1),
(26073,33449,8,0,1,1),-- Crusty Flatbread
(26073,33447,8,0,1,1),-- Runic Healing Potion
-- Nedar, Lord of Rhinos
(25801,0,100,0,-@NEWREF5,1),
(25801,33447,6,0,1,1),-- Runic Healing Potion
(25801,38261,6,0,1,1),-- Bent House Key
-- Clam Master K
(25800,43575,47,0,1,1),-- Reinforced Junkbox
(25800,0,100,0,-@NEWREF5,1),
(25800,38261,15,0,1,1),-- Bent House Key
(25800,33449,5,0,1,1),-- Crusty Flatbread
(25800,33447,5,0,1,1),-- Runic Healing Potion
-- Magmothregar
(25430,0,100,0,-@NEWREF3,1),
(25430,1,100,0,-@NEWREF9,1),
(25430,33449,7,0,1,1),-- Crusty Flatbread
(25430,36862,4,0,1,1),-- Wrogn Troll Dice
-- Kaganishu
(25427,43575,43,0,1,1),-- Reinforced Junkbox
(25427,33454,35,0,1,1),-- Salted Venison
(25427,0,100,0,-@NEWREF4,1),
(25427,33447,8,0,1,1),-- Runic Healing Potion
-- Prince Valanar
(25601,43575,43,0,1,1),-- Reinforced Junkbox
(25601,37467,39,0,1,1),-- A Steamy Romance Novel: Forbidden Love
(25601,33447,9,0,1,1),-- Runic Healing Potion
(25601,38261,9,0,1,1),-- Bent House Key
(25601,33449,4,0,1,1),-- Crusty Flatbread
(25601,29450,4,0,1,1),-- Telaari Grapes
-- Ghostly Sage
(25351,43575,42,0,1,1),-- Reinforced Junkbox
(25351,0,100,0,-@NEWREF2,1),
(25351,33447,10,0,1,1),-- Runic Healing Potion
-- Luthion the Vile
(27860,43575,42,0,1,1),-- Reinforced Junkbox
(27860,0,100,0,-@NEWREF5,1),
(27860,38261,13,0,1,1),-- Bent House Key
(27860,33449,6,0,1,1),-- Crusty Flatbread
(27860,33447,6,0,1,1),-- Runic Healing Potion
-- Reckless Scavenger
(26658,0,100,0,-@NEWREF2,1),
(26658,43575,40,0,1,1),-- Reinforced Junkbox
-- Ziggurat Defender
(26202,43575,40,0,1,1),-- Reinforced Junkbox
(26202,0,100,0,-@NEWREF2,1),
(26202,33447,7,0,1,1),-- Runic Healing Potion
(26202,29569,3,0,1,1),-- Strong Junkbox
-- Magmoth Forager
(25429,43575,39,0,1,1),-- Reinforced Junkbox
(25429,33454,27,0,1,1),-- Salted Venison
(25429,0,100,0,-@NEWREF4,1),
(25429,33447,10,0,1,1),-- Runic Healing Potion
(25429,38266,0.5,0,1,1),-- Rotund Relic
-- Magmoth Shaman
(25428,43575,39,0,1,1),-- Reinforced Junkbox
(25428,33454,28,0,1,1),-- Salted Venison
(25428,0,100,0,-@NEWREF4,1),
(25428,33447,9,0,1,1),-- Runic Healing Potion
(25428,38266,0.5,0,1,1),-- Rotund Relic
-- Vanthryn the Merciless
(27859,43575,39,0,1,1),-- Reinforced Junkbox
(27859,0,100,0,-@NEWREF5,1),
(27859,33449,12,0,1,1),-- Crusty Flatbread
(27859,38261,12,0,1,1),-- Bent House Key
(27859,33447,3,0,1,1),-- Runic Healing Potion
-- Unbound Corrupter
(30868,43575,47,0,1,1),-- Reinforced Junkbox
(30868,40202,18,0,1,1),-- Sizzling Grizzly Flank
(30868,33447,16,0,1,1),-- Runic Healing Potion
(30868,0,100,0,-@NEWREF4,1),
-- Unbound Trickster
(30856,43575,38,0,1,1),-- Reinforced Junkbox
(30856,0,100,0,-@NEWREF4,1),
(30856,33447,19,0,1,1),-- Runic Healing Potion
(30856,40202,14,0,1,1),-- Sizzling Grizzly Flank
-- Kreug Oathbreaker
(27105,43575,63,0,1,1),-- Reinforced Junkbox
(27105,33447,25,0,1,1),-- Runic Healing Potion
(27105,38269,13,0,1,1),-- Soggy Handkerchief
-- Lead Cannoneer Zierhut
(27235,43575,53,0,1,1),-- Reinforced Junkbox
(27235,0,100,0,-@NEWREF5,1),
(27235,33447,8,0,1,1),-- Runic Healing Potion
(27235,38261,8,0,1,1),-- Bent House Key
-- Devout Bodyguard
(27247,43575,50,0,1,1),-- Reinforced Junkbox
(27247,37467,42,0,1,1),-- A Steamy Romance Novel: Forbidden Love
(27247,33447,8,0,1,1),-- Runic Healing Potion
(27247,29450,8,0,1,1),-- Telaari Grapes
(27247,38261,8,0,1,1),-- Bent House Key
-- Magnataur Alpha
(26481,0,100,0,-@NEWREF9,1),
(26481,1,100,0,-@NEWREF3,1),
(26481,33449,5,0,1,1),-- Crusty Flatbread
-- High General Abbendis
(27210,43575,48,0,1,1),-- Reinforced Junkbox
(27210,0,100,0,-@NEWREF5,1),
(27210,33449,10,0,1,1),-- Crusty Flatbread
(27210,33447,10,0,1,1),-- Runic Healing Potion
(27210,38261,8,0,1,1),-- Bent House Key
-- Anub'ar Dreadweaver
(26413,43575,44,0,1,1),-- Reinforced Junkbox
(26413,43576,22,0,1,1),-- Chitin Polish
(26413,33452,11,0,1,1),-- Honey-Spiced Lichen
(26413,33447,11,0,1,1),-- Runic Healing Potion
(26413,43577,11,0,1,1),-- Carapace Cleanser
-- Naxxramas Necrolord
(27289,33452,44,0,1,1),-- Honey-Spiced Lichen
(27289,43575,44,0,1,1),-- Reinforced Junkbox
(27289,33447,11,0,1,1),-- Runic Healing Potion
-- Onslaught Commander Iustus
(27334,37467,50,0,1,1),-- A Steamy Romance Novel: Forbidden Love
(27334,43575,44,0,1,1),-- Reinforced Junkbox
(27334,29448,13,0,1,1),-- Mag'har Mild Cheese
(27334,38261,6,0,1,1),-- Bent House Key
-- Blacksmith Goodman
(27234,43575,41,0,1,1),-- Reinforced Junkbox
(27234,0,100,0,-@NEWREF5,1),
(27234,38261,13,0,1,1),-- Bent House Key
(27234,33447,9,0,1,1),-- Runic Healing Potion
(27234,33449,7,0,1,1),-- Crusty Flatbread
-- Magnataur Youngling
(26480,33449,19,0,1,1),-- Crusty Flatbread
(26480,0,100,0,-@NEWREF3,1),
(26480,1,100,0,-@NEWREF9,1),
-- Bloodpaw Warrior
(27342,43575,40,0,1,1),-- Reinforced Junkbox
(27342,33454,26,0,1,1),-- Salted Venison
(27342,0,100,0,-@NEWREF4,1),
(27342,33447,11,0,1,1),-- Runic Healing Potion
(27342,38266,0.6,0,1,1),-- Rotund Relic
-- Frigid Geist
(27533,0,100,0,-@NEWREF7,1),
-- Snowplain Zealot
(27278,43575,40,0,1,1),-- Reinforced Junkbox
(27278,33454,22,0,1,1),-- Salted Venison
(27278,0,100,0,-@NEWREF4,1),
(27278,33447,12,0,1,1),-- Runic Healing Potion
(27278,38266,0.3,0,1,1),-- Rotund Relic
-- Hulking Atrocity
(26948,43575,39,0,1,1),-- Reinforced Junkbox
(26948,0,100,0,-@NEWREF2,1),
(26948,33447,9,0,1,1),-- Runic Healing Potion
(26948,29569,0.3,0,1,1),-- Strong Junkbox
(26948,38268,0.3,0,1,1),-- Spare Hand
-- Onslaught Executioner
(27211,43575,39,0,1,1),-- Reinforced Junkbox
(27211,0,100,0,-@NEWREF5,1),
(27211,33449,12,0,1,1),-- Crusty Flatbread
(27211,38261,11,0,1,1),-- Bent House Key
(27211,33447,5,0,1,1),-- Runic Healing Potion
-- Gigantaur
(26836,0,100,0,-@NEWREF9,1),
(26836,1,100,0,-@NEWREF3,1),
(26836,33449,12,0,1,1),-- Crusty Flatbread
-- Leprous Servant
(27800,43575,38,0,1,1),-- Reinforced Junkbox
(27800,0,100,0,-@NEWREF2,1),
(27800,33447,7,0,1,1),-- Runic Healing Potion
(27800,38268,2,0,1,1),-- Spare Hand
-- Wretched Belcher
(26624,43575,100,0,1,1),-- Reinforced Junkbox
(26624,0,100,0,-@NEWREF2,1),
(26624,33447,25,0,1,1),-- Runic Healing Potion
(26624,35947,25,0,1,1),-- Sparkling Frostcap
-- Drakkari Commander
(27431,43575,90,0,1,1),-- Reinforced Junkbox
(27431,0,100,0,-@NEWREF2,1),
(27431,33447,26,0,1,1),-- Runic Healing Potion
(27431,35947,10,0,1,1),-- Sparkling Frostcap
-- Drakkari Guardian
(26620,0,100,0,-@NEWREF0,1),
(26620,33454,17,0,1,1),-- Salted Venison
(26620,33449,9,0,1,1),-- Crusty Flatbread
(26620,38261,9,0,1,1),-- Bent House Key
(26620,1,100,0,-@NEWREF1,1),
-- Risen Drakkari Soulmage
(26636,43575,85,0,1,1),-- Reinforced Junkbox
(26636,0,100,0,-@NEWREF2,1),
(26636,35947,21,0,1,1),-- Sparkling Frostcap
(26636,33447,16,0,1,1),-- Runic Healing Potion
-- Ghoul Tormentor
(26621,43575,81,0,1,1),-- Reinforced Junkbox
(26621,0,100,0,-@NEWREF2,1),
(26621,35947,24,0,1,1),-- Sparkling Frostcap
(26621,33447,14,0,1,1),-- Runic Healing Potion
-- Risen Drakkari Warrior
(26635,43575,71,0,1,1),-- Reinforced Junkbox
(26635,0,100,0,-@NEWREF2,1),
(26635,33447,29,0,1,1),-- Runic Healing Potion
(26635,35947,18,0,1,1),-- Sparkling Frostcap
(26635,38268,0.8,0,1,1),-- Spare Hand
-- Risen Drakkari Handler
(26637,0,100,0,-@NEWREF2,1),
(26637,43575,67,0,1,1),-- Reinforced Junkbox
(26637,33447,30,0,1,1),-- Runic Healing Potion
(26637,35947,18,0,1,1),-- Sparkling Frostcap
-- Scourge Reanimator
(26626,0,100,0,-@NEWREF2,1),
(26626,43575,67,0,1,1),-- Reinforced Junkbox
(26626,33447,21,0,1,1),-- Runic Healing Potion
(26626,35947,21,0,1,1),-- Sparkling Frostcap
-- Drakkari Shaman
(26639,0,100,0,-@NEWREF0,1),
(26639,33449,18,0,1,1),-- Crusty Flatbread
(26639,1,100,0,-@NEWREF3,1),
(26639,40202,11,0,1,1),-- Sizzling Grizzly Flank
-- Selas
(27580,43575,50,0,1,1),-- Reinforced Junkbox
(27580,0,100,0,-@NEWREF3,1),
(27580,38260,20,0,1,1),-- Empty Tobacco Pouch
-- Forgemaster Damrath
(26334,43575,48,0,1,1),-- Reinforced Junkbox
(26334,0,100,0,-@NEWREF5,1),
(26334,33447,9,0,1,1),-- Runic Healing Potion
(26334,38261,9,0,1,1),-- Bent House Key
-- Grumbald One-Eye
(26681,43575,39,0,1,1),-- Reinforced Junkbox
(26681,33454,28,0,1,1),-- Salted Venison
(26681,0,100,0,-@NEWREF4,1),
(26681,33447,9,0,1,1),-- Runic Healing Potion
-- Drakkari Shaman
(26447,0,100,0,-@NEWREF9,1),
(26447,1,100,0,-@NEWREF3,1),
(26447,33449,10,0,1,1),-- Crusty Flatbread
(26447,35799,0.2,0,1,1),-- Frozen Mojo
(26447,36862,0.2,0,1,1),-- Wrogn Troll Dice
-- Drakkari God Hunter
(29820,0,100,0,-@NEWREF0,1),
(29820,1,100,0,-@NEWREF1,1),
-- Drakkari Battle Rider
(29836,0,100,0,-@NEWREF0,1),
(29836,40202,18,0,1,1),-- Sizzling Grizzly Flank
-- Ruins Dweller
(29920,43575,71,0,1,1),-- Reinforced Junkbox
(29920,37452,69,0,1,1),-- Fatty Bluefin
(29920,38274,58,0,1,1),-- Large Snail Shell
(29920,38273,35,0,1,1),-- Brain Coral
(29920,33447,16,0,1,1),-- Runic Healing Potion
-- Drakkari Fire Weaver
(29822,0,100,0,-@NEWREF0,1),
(29822,40202,24,0,1,1),-- Sizzling Grizzly Flank
-- Drakkari Inciter
(29874,0,100,0,-@NEWREF0,1),
(29874,36862,16,0,1,1),-- Wrogn Troll Dice
(29874,40202,12,0,1,1),-- Sizzling Grizzly Flank
-- Titanium Siegebreaker
(28961,0,100,0,-@NEWREF0,1),
(28961,40202,35,0,1,1),-- Sizzling Grizzly Flank
-- Stormforged Sentinel
(28837,0,100,0,-@NEWREF0,1),
(28837,40202,16,0,1,1),-- Sizzling Grizzly Flank
-- Titanium Thunderer
(28965,0,100,0,-@NEWREF0,1),
(28965,40202,44,0,1,1),-- Sizzling Grizzly Flank
-- Titanium Vanguard
(28838,0,100,0,-@NEWREF0,1),
(28838,40202,27,0,1,1),-- Sizzling Grizzly Flank
-- Dark Rune Scholar
(27964,0,100,0,-@NEWREF9,1),
(27964,1,100,0,-@NEWREF1,1),
-- Dark Rune Worker
(27961,0,100,0,-@NEWREF0,1),
(27961,40202,29,0,1,1),-- Sizzling Grizzly Flank
(27961,36862,4,0,1,1),-- Wrogn Troll Dice
-- Dark Rune Shaper
(27965,0,100,0,-@NEWREF0,1),
(27965,40202,28,0,1,1),-- Sizzling Grizzly Flank
-- Steel Gate Archaeologist
(24400,0,100,0,-@NEWREF0,1),
(24400,1,100,0,-@NEWREF5,1),
(24400,33449,7,0,1,1),-- Crusty Flatbread
(24400,38261,9,0,1,1),-- Bent House Key
-- Blacksouled Keeper
(23875,0,100,0,-@NEWREF0,1),
(23875,1,100,0,-@NEWREF3,1),
(23875,33449,14,0,1,1),-- Crusty Flatbread
-- Winterskorn Rune-Seer
(23667,0,100,0,-@NEWREF0,1),
(23667,33449,7,0,1,1),-- Crusty Flatbread
(23667,33454,7,0,1,1),-- Salted Venison
-- Sergeant Lorric
(23963,43575,45,0,1,1),-- Reinforced Junkbox
(23963,0,100,0,-@NEWREF5,1),
(23963,33447,13,0,1,1),-- Runic Healing Potion
(23963,38261,11,0,1,1),-- Bent House Key
(23963,33449,7,0,1,1),-- Crusty Flatbread
-- Gjalerhorn Scavenger
(27699,0,100,0,-@NEWREF4,1),
(27699,43575,43,0,1,1),-- Reinforced Junkbox
(27699,33454,22,0,1,1),-- Salted Venison
(27699,33447,7,0,1,1),-- Runic Healing Potion
(27699,29569,0.8,0,1,1),-- Strong Junkbox
-- Iron Rune Binder
(23796,0,100,0,-@NEWREF5,1),
(23796,43575,42,0,1,1),-- Reinforced Junkbox
(23796,38261,12,0,1,1),-- Bent House Key
(23796,33449,11,0,1,1),-- Crusty Flatbread
(23796,33447,9,0,1,1),-- Runic Healing Potion
(23796,29569,0.5,0,1,1),-- Strong Junkbox
-- Forsaken Plaguebringer
(23760,0,100,0,-@NEWREF2,1),
(23760,43575,41,0,1,1),-- Reinforced Junkbox
(23760,33447,10,0,1,1),-- Runic Healing Potion
(23760,38268,0.3,0,1,1),-- Spare Hand
-- Chillmere Tidehunter
(24460,43575,40,0,1,1),-- Reinforced Junkbox
(24460,38274,33,0,1,1),-- Large Snail Shell
(24460,37452,18,0,1,1),-- Fatty Bluefin
(24460,38273,15,0,1,1),-- Brain Coral
(24460,33447,7,0,1,1),-- Runic Healing Potion
-- Vrykul Soul
(24262,0,100,0,-@NEWREF2,1),
(24262,43575,40,0,1,1),-- Reinforced Junkbox
(24262,33447,3,0,1,1),-- Runic Healing Potion
-- Iron Rune Sage
(23674,0,100,0,-@NEWREF5,1),
(23674,43575,39,0,1,1),-- Reinforced Junkbox
(23674,38261,13,0,1,1),-- Bent House Key
(23674,33449,9,0,1,1),-- Crusty Flatbread
(23674,33447,6,0,1,1),-- Runic Healing Potion
-- Vengeance Bringer
(23865,43575,39,0,1,1),-- Reinforced Junkbox
(23865,0,100,0,-@NEWREF2,1),
-- Restless Lookout
(31554,43575,80,0,1,1),-- Reinforced Junkbox
(31554,35947,40,0,1,1),-- Sparkling Frostcap
-- Val'kyr Taskmistress
(31396,43575,56,0,1,1),-- Reinforced Junkbox
(31396,35947,38,0,1,1),-- Sparkling Frostcap
(31396,33447,15,0,1,1),-- Runic Healing Potion
-- Overseer Veraj
(32263,43575,42,0,1,1),-- Reinforced Junkbox
(32263,37467,28,0,1,1),-- A Steamy Romance Novel: Forbidden Love
(32263,38261,15,0,1,1),-- Bent House Key
(32263,33447,13,0,1,1),-- Runic Healing Potion
(32263,0,100,0,-@NEWREF8,1),
-- Steward
(26729,0,100,0,-@NEWREF0,1),
(26729,1,100,0,-@NEWREF3,1),
(26729,33449,31,0,1,1),-- Crusty Flatbread
(26729,29569,0.5,0,1,1),-- Strong Junkbox
-- Alliance Berserker
(26800,43575,62,0,1,1),-- Reinforced Junkbox
(26800,33449,19,0,1,1),-- Crusty Flatbread
(26800,38261,16,0,1,1),-- Bent House Key
(26800,33447,10,0,1,1),-- Runic Healing Potion
(26800,0,100,0,-@NEWREF5,1),
-- Alliance Ranger
(26802,0,100,0,-@NEWREF5,1),
(26802,43575,60,0,1,1),-- Reinforced Junkbox
(26802,38261,34,0,1,1),-- Bent House Key
(26802,33449,24,0,1,1),-- Crusty Flatbread
(26802,33447,12,0,1,1),-- Runic Healing Potion
-- Mage Hunter Ascendant
(26727,0,100,0,-@NEWREF0,1),
(26727,1,100,0,-@NEWREF3,1),
(26727,33449,29,0,1,1),-- Crusty Flatbread
-- Ring-Lord Sorceress
(27639,43575,87,0,1,1),-- Reinforced Junkbox
(27639,37467,46,0,1,1),-- A Steamy Romance Novel: Forbidden Love
(27639,38261,28,0,1,1),-- Bent House Key
(27639,33447,19,0,1,1),-- Runic Healing Potion
(27639,0,100,0,-@NEWREF8,1),
(27639,36863,1.6,0,1,1),-- Decahedral Dwarven Dice
-- Ring-Lord Conjurer
(27640,37467,67,0,1,1),-- A Steamy Romance Novel: Forbidden Love
(27640,43575,64,0,1,1),-- Reinforced Junkbox
(27640,33447,30,0,1,1),-- Runic Healing Potion
(27640,38261,26,0,1,1),-- Bent House Key
(27640,0,100,0,-@NEWREF8,1),
-- Mildred the Cruel
(29885,0,100,0,-@NEWREF0,1),
(29885,40202,13,0,1,1),-- Sizzling Grizzly Flank
-- Snowblind Devotee
(29407,43575,42,0,1,1),-- Reinforced Junkbox
(29407,40202,29,0,1,1),-- Sizzling Grizzly Flank
(29407,0,100,0,-@NEWREF4,1),
(29407,33447,12,0,1,1),-- Runic Healing Potion
-- Snowblind Devotee
(29554,43575,43,0,1,1),-- Reinforced Junkbox
(29554,40202,27,0,1,1),-- Sizzling Grizzly Flank
(29554,0,100,0,-@NEWREF4,1),
(29554,33447,12,0,1,1),-- Runic Healing Potion
(29554,38266,0.2,0,1,1),-- Rotund Relic
-- Frostfeather Witch
(29793,43575,40,0,1,1),-- Reinforced Junkbox
(29793,40202,21,0,1,1),-- Sizzling Grizzly Flank
(29793,0,100,0,-@NEWREF4,1),
(29793,33447,16,0,1,1),-- Runic Healing Potion
-- Icemane Yeti
(29875,43575,39,0,1,1),-- Reinforced Junkbox
(29875,40202,23,0,1,1),-- Sizzling Grizzly Flank
(29875,0,100,0,-@NEWREF4,1),
(29875,33447,15,0,1,1),-- Runic Healing Potion
(29875,38266,0.3,0,1,1),-- Rotund Relic
-- Garm Watcher
(29553,0,100,0,-@NEWREF0,1),
(29553,1,100,0,-@NEWREF1,1),
(29553,24231,0.3,0,2,2),-- Coarse Snuff
-- Stormforged Taskmaster
(29369,43575,38,0,1,1),-- Reinforced Junkbox
(29369,37467,34,0,1,1),-- A Steamy Romance Novel: Forbidden Love
(29369,33447,13,0,1,1),-- Runic Healing Potion
(29369,38261,6,0,1,1),-- Bent House Key
(29369,0,100,0,-@NEWREF8,1),
-- Dragonflayer Bonecrusher
(24069,0,100,0,-@NEWREF0,1),
(24069,1,100,0,-@NEWREF1,1),
(24069,29569,47,0,1,1),-- Strong Junkbox
(24069,29570,34,0,1,1),-- A Gnome Effigy
(24069,27855,22,0,1,1),-- Mag'har Grainbread
(24069,27854,19,0,1,1),-- Smoked Talbuk Venison
(24069,22829,10,0,1,1),-- Super Healing Potion
(24069,23438,1.2,0,1,1),-- Star of Elune
-- Ymirjar Berserker
(26696,0,100,0,-@NEWREF7,1),
(26696,29569,1.1,0,1,1),-- Strong Junkbox
-- Kutube'sa
(28494,0,100,0,-@NEWREF0,1),
(28494,1,100,0,-@NEWREF1,1),
-- Chulo the Mad
(28496,0,100,0,-@NEWREF0,1),
(28496,40202,6,0,1,1),-- Sizzling Grizzly Flank
-- Drakuru's Guard
(28803,43575,50,0,1,1),-- Reinforced Junkbox
(28803,33447,33,0,1,1),-- Runic Healing Potion
(28803,38269,17,0,1,1),-- Soggy Handkerchief
-- Prophet of Har'koa
(28848,0,100,0,-@NEWREF0,1),
(28848,40202,3,0,1,1),-- Sizzling Grizzly Flank
-- Decaying Ghoul
(28565,0,100,0,-@NEWREF7,1),
(28565,22829,0.9,0,1,1),-- Super Healing Potion
-- Drakuru Berserker
(29656,0,100,0,-@NEWREF0,1),
(29656,1,100,0,-@NEWREF3,1),
(29656,33449,11,0,1,1),-- Crusty Flatbread
(29656,29569,0.9,0,1,1); -- Strong Junkbox
-- Add condition to the Lovely Charm aura
DELETE FROM conditions WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`= 69511;
INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ElseGroup, ConditionTypeOrReference, ConditionValue1, ConditionValue2, ConditionValue3, ErrorTextId, ScriptName, COMMENT) VALUES
(17,0,69511,0,12,8,0,0,0, '', 'Lovely Charm - Only during event');
-- Remove Skinning loot from Blackwing Spellbinder
UPDATE `creature_template` SET `skinloot`=0 WHERE `entry`=12457;
-- update wrong area.
UPDATE `fishing_loot_template` SET `entry`=4560 WHERE `entry`=4395 AND `item`=11026;
-- Add loot for Hrothgar's Landing
DELETE FROM `creature_loot_template` WHERE `entry` IN (34980,34838,34839,34965);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- AURIAYA 10-man
-- Drottinn Hrothgar - http://old.wowhead.com/npc=34980
(34980,46859,-100,1,0,1,1), -- Stolen Tallstrider Leg
-- Kvaldir Reaver
(34838,46859,-100,1,0,1,1), -- Stolen Tallstrider Leg
(34838,49676,5,1,0,1,1), -- Kvaldir Attack Plans
(34838,33470,35,1,0,1,4), -- 1-4x Frostweave Cloth
(34838,1,10,1,0,-24727,1), -- 1 of Northrend scrolls
(34838,2,10,1,0,-26002,1), -- Northrend Grey Item Reference1
(34838,3,2,1,0,-35080,1), -- Northrend Green Item Reference
-- Kvaldir Mist Binder
(34839,46859,-100,1,0,1,1), -- Stolen Tallstrider Leg
(34839,49676,5,1,0,1,1), -- Kvaldir Attack Plans
(34839,33470,35,1,0,1,4), -- 1-4x Frostweave Cloth
(34839,1,10,1,0,-24727,1), -- 1 of Northrend scrolls
(34839,2,10,1,0,-26002,1), -- Northrend Grey Item Reference1
(34839,3, 2,1,0,-35080,1), -- Northrend Green Item Reference
-- Mistcaller Yngvar
(34965,46859,-100,1,0,1,1); -- Stolen Tallstrider Leg
-- update Plague Slime & Marauding Geist to naxx25 trash lootid
UPDATE `creature_template` SET `lootid`=100005 WHERE `entry` IN(29575,30424); 
--  update Plague Slime & Marauding Geist to naxx10 trash lootid
UPDATE `creature_template` SET `lootid`=100003 WHERE `entry` IN(16243,30083); 
DELETE FROM `creature_loot_template` WHERE `entry` IN(30424,29575,16243,30083);
-- Remove scraps for naxx10 from creature creature_loot_template
DELETE FROM `creature_loot_template` WHERE `item` IN (22373,22374,22375,22376);
-- Fix to add pickpocketing loot for humoniods in borean tundra
SET @GORLOCREF := 25100;
SET @BERYLREF := @GORLOCREF+1;
SET @BLOODREF := @GORLOCREF+2;
SET @CHIEFREF := @GORLOCREF+3;
SET @CULTREF := @GORLOCREF+4;
SET @KVALDIRREF := @GORLOCREF+5;
SET @CLAXREF := @GORLOCREF+6;
SET @MAGMOTHREF := @GORLOCREF+7;
-- Create reference templates
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @GORLOCREF AND @GORLOCREF+7;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES 
(@GORLOCREF,29576,57,1,0,1,1), -- Shark Bait
(@GORLOCREF,29569,30,1,0,1,1), -- Strong Junkbox
(@GORLOCREF,27858,8,1,0,1,1), -- Sunspring Carp
(@GORLOCREF,22829,3,1,0,1,1), -- Super Healing Potion
(@GORLOCREF,23436,0.5,1,0,1,1), -- Living Ruby
(@GORLOCREF,23437,0.5,1,0,1,1), -- Talasite
(@GORLOCREF,23440,0.5,1,0,1,1), -- Dawnstone
(@GORLOCREF,23438,0.5,1,0,1,1), -- Star of Elune
(@GORLOCREF,23439,0.5,1,0,1,1), -- Noble Topaz
-- --------------------------------------------------
(@BERYLREF,37467,32.5,1,0,1,1), -- A Steamy Romance Novel: Forbidden Love
(@BERYLREF,43575,31,1,0,1,1), -- Reinforced Junkbox
(@BERYLREF,38261,10,1,0,1,1), -- Bent House Key
(@BERYLREF,29448,7,1,0,1,1), -- Mag'har Mild Cheese
(@BERYLREF,29450,7,1,0,1,1), -- Telaari Grapes
(@BERYLREF,33447,6,1,0,1,1), -- Runic Healing Potion
(@BERYLREF,33449,6,1,0,1,1), -- Crusty Flatbread
(@BERYLREF,36863,0.5,1,0,1,1), -- Decahedral Dwarven Dice
-- --------------------------------------------------
(@BLOODREF,29572,37,1,0,1,1), -- Aboriginal Carvings
(@BLOODREF,29569,33,1,0,1,1), -- Strong Junkbox
(@BLOODREF,8952,20,1,0,1,1), -- Roasted Quail
(@BLOODREF,22829,8,1,0,1,1), -- Super Healing Potion
(@BLOODREF,23438,0.5,1,0,1,1), -- Star of Elune
(@BLOODREF,23436,0.5,1,0,1,1), -- Living Ruby
(@BLOODREF,23441,0.5,1,0,1,1), -- Nightseye
(@BLOODREF,23437,0.5,1,0,1,1), -- Talasite
(@BLOODREF,23440,0.5,1,0,1,1), -- Dawnstone
-- --------------------------------------------------
(@CHIEFREF,29569,50,1,0,1,1), -- Strong Junkbox
(@CHIEFREF,27858,20,1,0,1,1), -- Sunspring Carp
(@CHIEFREF,29576,20,1,0,1,1), -- Shark Bait
(@CHIEFREF,22829,10,1,0,1,1), -- Super Healing Potion
-- --------------------------------------------------
(@CULTREF,29569,40,1,0,1,1), -- Strong Junkbox
(@CULTREF,29571,37,1,0,1,1), -- A Steamy Romance Novel
(@CULTREF,30458,8,1,0,1,1), -- Stromgarde Muenster
(@CULTREF,27855,7,1,0,1,1), -- Mag'har Grainbread
(@CULTREF,27856,6,1,0,1,1), -- Skethyl Berries
(@CULTREF,22829,2,1,0,1,1), -- Super Healing Potion
(@CULTREF,36863,0.5,1,0,1,1), -- Decahedral Dwarven Dice
-- --------------------------------------------------
(@KVALDIRREF,29569,39,1,0,1,1), -- Strong Junkbox
(@KVALDIRREF,29570,28,1,0,1,1), -- A Gnome Effigy
(@KVALDIRREF,27855,12,1,0,1,1), -- Mag'har Grainbread
(@KVALDIRREF,27854,12,1,0,1,1), -- Smoked Talbuk Venison
(@KVALDIRREF,22829,7,1,0,1,1), -- Super Healing Potion
(@KVALDIRREF,23436,0.5,1,0,1,1), -- Living Ruby
(@KVALDIRREF,23441,0.5,1,0,1,1), -- Nightseye
(@KVALDIRREF,23440,0.5,1,0,1,1), -- Dawnstone
(@KVALDIRREF,23439,0.5,1,0,1,1), -- Noble Topaz
(@KVALDIRREF,23437,0.5,1,0,1,1), -- Talasite
-- --------------------------------------------------
(@CLAXREF,43575,28,1,0,1,1), -- Reinforced Junkbox
(@CLAXREF,38273,26,1,0,1,1), -- Brain Coral
(@CLAXREF,38274,23,1,0,1,1), -- Large Snail Shell
(@CLAXREF,37452,17,1,0,1,1), -- Fatty Bluefin
(@CLAXREF,33447,6,1,0,1,1), -- Runic Healing Potion
-- --------------------------------------------------
(@MAGMOTHREF,38260,33,1,0,1,1), -- Empty Tobacco Pouch
(@MAGMOTHREF,38261,21,1,0,1,1), -- Bent House Key
(@MAGMOTHREF,33449,16,1,0,1,1), -- Crusty Flatbread
(@MAGMOTHREF,43575,16,1,0,1,1), -- Reinforced Junkbox
(@MAGMOTHREF,33454,9,1,0,1,1), -- Salted Venison
(@MAGMOTHREF,33447,5,1,0,1,1), -- Runic Healing Potion
(@MAGMOTHREF,36862,1,1,0,1,1); -- Worn Troll Dice
-- -------------------
-- -- NPC Variables --
-- -------------------
SET @NPC := 25686;
SET @NPC1 := 25700;
SET @NPC2 := 25687;
SET @NPC3 := 25685;
SET @NPC4 := 25449;
SET @NPC5 := 25316;
SET @NPC6 := 25353;
SET @NPC7 := 25719;
SET @NPC8 := 25804;
SET @NPC9 := 25392;
SET @NPC10 := 25651;
SET @NPC11 := 25836;
SET @NPC12 := 25979;
SET @NPC13 := 25806;
SET @NPC14 := 25720;
SET @NPC15 := 25803;
SET @NPC16 := 25880;
SET @NPC17 := 25618;
SET @NPC18 := 25839;
SET @NPC19 := 25470;
SET @NPC20 := 24567;
SET @NPC21 := 25467;
SET @NPC22 := 25468;
SET @NPC23 := 25501;
SET @NPC24 := 25726;
SET @NPC25 := 25701;
SET @NPC26 := 25725;
SET @NPC27 := 25699;
SET @NPC28 := 24576;
SET @NPC29 := 25605;
SET @NPC30 := 25609;
SET @NPC31 := 25378;
SET @NPC32 := 25843;
SET @NPC33 := 25496;
SET @NPC34 := 25479;
SET @NPC35 := 25760;
SET @NPC36 := 26266;
SET @NPC37 := 26451;
SET @NPC38 := 25521;
SET @NPC39 := 25613;
SET @NPC40 := 25522;
SET @NPC41 := 25520;
SET @NPC42 := 25209;
SET @NPC43 := 25210;
SET @NPC44 := 25216;
SET @NPC45 := 25215;
SET @NPC46 := 25217;
SET @NPC47 := 25789;
SET @NPC48 := 24469;
SET @NPC49 := 25432;
SET @NPC50 := 25433;
SET @NPC51 := 25615;
SET @NPC52 := 25523;
-- ----------------------
-- -- Assign the loots --
-- ----------------------
UPDATE `creature_template` SET `pickpocketloot`=`entry` WHERE `entry` IN (@NPC,@NPC1,@NPC2,@NPC3,@NPC4,@NPC5,@NPC6,@NPC7,@NPC8,@NPC9,@NPC10,@NPC11,@NPC12,@NPC13,@NPC14,@NPC15,@NPC16,@NPC17,@NPC18,@NPC19,@NPC20,@NPC21,@NPC22,@NPC23,@NPC24,@NPC25,@NPC26,@NPC27,@NPC28,@NPC29,@NPC30,@NPC31,@NPC32,@NPC33,@NPC34,@NPC35,@NPC36,@NPC37,@NPC38,@NPC39,@NPC40,@NPC41,@NPC42,@NPC43,@NPC44,@NPC45,@NPC46,@NPC47,@NPC48,@NPC49,@NPC50,@NPC51,@NPC52);
DELETE FROM `pickpocketing_loot_template` WHERE `entry` IN (@NPC,@NPC1,@NPC2,@NPC3,@NPC4,@NPC5,@NPC6,@NPC7,@NPC8,@NPC9,@NPC10,@NPC11,@NPC12,@NPC13,@NPC14,@NPC15,@NPC16,@NPC17,@NPC18,@NPC19,@NPC20,@NPC21,@NPC22,@NPC23,@NPC24,@NPC25,@NPC26,@NPC27,@NPC28,@NPC29,@NPC30,@NPC31,@NPC32,@NPC33,@NPC34,@NPC35,@NPC36,@NPC37,@NPC38,@NPC39,@NPC40,@NPC41,@NPC42,@NPC43,@NPC44,@NPC45,@NPC46,@NPC47,@NPC48,@NPC49,@NPC50,@NPC51,@NPC52);
INSERT INTO `pickpocketing_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES 
-- -----------------------------------------------------------------------------------------------
(@NPC,1,100,1,0,-@GORLOCREF,1), -- Gorloc ref loot template on Gorloc Gibberer
(@NPC1,1,100,1,0,-@GORLOCREF,1), -- Gorloc ref loot template on Gorloc Hunter
(@NPC2,1,100,1,0,-@GORLOCREF,1), -- Gorloc ref loot template on Gorloc Steam Belcher
(@NPC3,1,100,1,0,-@GORLOCREF,1), -- Gorloc ref loot template on Gorloc Waddler
-- -----------------------------------------------------------------------------------------------
(@NPC4,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Beryl Reclaimer
(@NPC5,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Beryl Sorcerer
(@NPC6,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Beryl Treasure Hunter
(@NPC7,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Coldarra Spellbinder
(@NPC8,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Harold Lane <The Fur Baron>
(@NPC9,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on High Priest Andorath
(@NPC10,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Cultist Necrolyte
(@NPC11,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Loot Crazed Diver
(@NPC12,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Loot Crazed Hunter
(@NPC13,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Loot Crazed Poacher
(@NPC14,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Inquisitor Caleras
(@NPC15,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Karen "I Don't Caribou" the Culler
(@NPC16,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Minion of Kaw
(@NPC17,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Varidus the Flenser
(@NPC18,1,100,1,0,-@BERYLREF,1), -- Beryl ref loot template on Northsea Mercenary
-- -----------------------------------------------------------------------------------------------
(@NPC19,1,100,1,0,-@BLOODREF,1), -- Bloodspore ref loot template on Bloodspore Firestarter
(@NPC20,1,100,1,0,-@BLOODREF,1), -- Bloodspore ref loot template on Den Vermin
(@NPC21,1,100,1,0,-@BLOODREF,1), -- Bloodspore ref loot template on Bloodspore Harvester
(@NPC22,1,100,1,0,-@BLOODREF,1), -- Bloodspore ref loot template on Bloodspore Roaster
(@NPC23,1,100,1,0,-@BLOODREF,1), -- Bloodspore ref loot template on Gammoth Tender
-- -----------------------------------------------------------------------------------------------
(@NPC24,1,100,1,0,-@CHIEFREF,1), -- Chieftian ref loot template on Chieftain Burblegobble
(@NPC25,1,100,1,0,-@CHIEFREF,1), -- Chieftian ref loot template on Gorloc Dredger
(@NPC26,1,100,1,0,-@CHIEFREF,1), -- Chieftian ref loot template on Chieftain GurgleBoggle
(@NPC27,1,100,1,0,-@CHIEFREF,1), -- Chieftian ref loot template on Gorloc Mud Splasher
(@NPC28,1,100,1,0,-@CHIEFREF,1), -- Chieftian ref loot template on Riplash Myrmidon
-- -----------------------------------------------------------------------------------------------
(@NPC29,1,100,1,0,-@CULTREF,1), -- Cultist ref loot template on Clandestine Cultist <Cult of the Damned>
(@NPC30,1,100,1,0,-@CULTREF,1), -- Cultist ref loot template on En'kilah Necrolord <Cult of the Damned>
(@NPC31,1,100,1,0,-@CULTREF,1), -- Cultist ref loot template on En'kilah Necromancer <Cult of the Damned>
(@NPC32,1,100,1,0,-@CULTREF,1), -- Cultist ref loot template on Northsea Thug
-- -----------------------------------------------------------------------------------------------
(@NPC33,1,100,1,0,-@KVALDIRREF,1), -- Kvaldir ref loot template on Kvaldir Mist Lord
(@NPC34,1,100,1,0,-@KVALDIRREF,1), -- Kvaldir ref loot template on Kvaldir Mistweaver
(@NPC35,1,100,1,0,-@KVALDIRREF,1), -- Kvaldir ref loot template on Kvaldir Raider
(@NPC36,1,100,1,0,-@KVALDIRREF,1), -- Kvaldir ref loot template on Heigarr the Horrible
(@NPC37,1,100,1,0,-@KVALDIRREF,1), -- Kvaldir ref loot template on Ragnar Drakkarlund
(@NPC37,35774,-100,1,0,1,1), -- Trident of Naz'jan on Ragnar Drakkarlund 
(@NPC38,1,100,1,0,-@KVALDIRREF,1), -- Kvaldir ref loot template on Skadir Longboatsman
(@NPC39,1,100,1,0,-@KVALDIRREF,1), -- Kvaldir ref loot template on Skadir Mistweaver
(@NPC40,1,100,1,0,-@KVALDIRREF,1), -- Kvaldir ref loot template on Skadir Raider
(@NPC41,1,100,1,0,-@KVALDIRREF,1), -- Kvaldir ref loot template on Skadir Runecaster
-- -----------------------------------------------------------------------------------------------
(@NPC42,1,100,1,0,-@CLAXREF,1), -- Clax ref loot template on Claximus
(@NPC43,1,100,1,0,-@CLAXREF,1), -- Clax ref loot template on Keymaster Urmgrgl
(@NPC44,1,100,1,0,-@CLAXREF,1), -- Clax ref loot template on Winterfin Oracle
(@NPC45,1,100,1,0,-@CLAXREF,1), -- Clax ref loot template on Winterfin Shorestriker
(@NPC46,1,100,1,0,-@CLAXREF,1), -- Clax ref loot template on Winterfin Warrior
-- -----------------------------------------------------------------------------------------------
(@NPC47,1,100,1,0,-@MAGMOTHREF,1), -- Magmoth2 ref loot template on Gammothra the Tormentor
(@NPC48,1,100,1,0,-@MAGMOTHREF,1), -- Magmoth ref loot template on Magnataur Huntress <Mate of Gammothra>
(@NPC49,1,100,1,0,-@MAGMOTHREF,1), -- Magmoth ref loot template on Mate of Magmothregar
(@NPC50,1,100,1,0,-@MAGMOTHREF,1), -- Magmoth ref loot template on Offspring of Magmothregar
(@NPC51,1,100,1,0,-@MAGMOTHREF,1), -- Magmoth ref loot template on Plagued Magnataur
(@NPC52,1,100,1,0,-@MAGMOTHREF,1); -- Magmoth ref loot template on Skadir Mariner
-- fix DB-error on startup
DELETE FROM `creature_loot_template` WHERE `entry` IN (34965,34980); 
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1603019 AND -1603000;
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName` IN ('boss_algalon','mob_collapsing_star');

-- Difficulty linking
UPDATE `creature_template` SET `difficulty_entry_1`=34296 WHERE `entry`=32953; -- Black Hole

UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`faction_A`=35,`faction_H`=35,`unit_flags`=0x8300,`equipment_id`=2478 WHERE `entry`=34064; -- Brann Bronzebeard
UPDATE `creature_template` SET `speed_walk`=4,`speed_run`=2.14286,`exp`=2,`minlevel`=83,`maxlevel`=83,`faction_A`=190,`faction_H`=190,`unit_flags`=0x8100,`BaseAttackTime`=1000,`equipment_id`=2479 WHERE `entry` IN (32871,33070); -- Algalon the Observer
UPDATE `creature_template` SET `faction_A`=190,`faction_H`=190,`exp`=2,`minlevel`=83,`maxlevel`=83,`unit_flags`=0x2000000,`speed_run`=1,`InhabitType`=4 WHERE `entry`=34246; -- Azeroth
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`exp`=2,`minlevel`=74,`maxlevel`=74,`unit_flags`=0x2000000,`flags_extra`=0x80,`InhabitType`=4 WHERE `entry`=33086; -- Algalon Stalker
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`unit_flags`=0x2008000,`speed_run`=1,`equipment_id`=2480,`InhabitType`=4 WHERE `entry` IN (33052,33116); -- Living Constellation
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`speed_run`=1,`RegenHealth`=0 WHERE `entry` IN (32955,34215); -- Collapsing Star
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`exp`=2,`minlevel`=80,`maxlevel`=80,`unit_flags`=0x2000000,`speed_run`=1,`InhabitType`=4 WHERE `entry` IN (32953,34296); -- Black Hole
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`minlevel`=81,`maxlevel`=81,`unit_flags`=0x8000,`speed_walk`=4,`speed_run`=1.42857,`InhabitType`=4 WHERE `entry` IN(33089,34097,34221,34222); -- Dark Matter
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`unit_flags`=0x2000000,`flags_extra`=0x80 WHERE `entry`=34100; -- Algalon Void Zone Visual Stalker
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`unit_flags`=0x2000000,`speed_run`=1,`InhabitType`=4 WHERE `entry`=34099; -- Worm Hole
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`exp`=2,`minlevel`=74,`maxlevel`=74,`unit_flags`=0x2000000,`flags_extra`=0x80,`InhabitType`=4 WHERE `entry`=33104; -- Algalon Stalker Asteroid Target 01
UPDATE `creature_template` SET `faction_A`=14,`faction_H`=14,`exp`=2,`minlevel`=74,`maxlevel`=74,`unit_flags`=0x2000000,`flags_extra`=0x80,`InhabitType`=4 WHERE `entry`=33105; -- Algalon Stalker Asteroid Target 02

UPDATE `creature_model_info` SET `bounding_radius`=0.93,`combat_reach`=9,`gender`=0 WHERE `modelid`=28641; -- Algalon the Observer
UPDATE `creature_model_info` SET `bounding_radius`=0.02,`combat_reach`=0.2,`gender`=2 WHERE `modelid`=29133; -- Azeroth
UPDATE `creature_model_info` SET `bounding_radius`=0.62,`combat_reach`=0,`gender`=2 WHERE `modelid`=28741; -- Living Constellation
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=2 WHERE `modelid`=28988; -- Collapsing Star
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=2 WHERE `modelid`=28460; -- Black Hole

UPDATE `gameobject_template` SET `faction`=114,`flags`=32 WHERE `entry`=194910; -- Doodad_UL_SigilDoor_03
UPDATE `gameobject_template` SET `data0`=579 WHERE `entry`=194628; -- Celestial Planetarium Access

UPDATE `creature_template` SET `ScriptName`='boss_algalon_the_observer' WHERE `entry`=32871; -- Algalon the Observer
UPDATE `creature_template` SET `ScriptName`='npc_living_constellation' WHERE `entry`=33052; -- Living Constellation
UPDATE `creature_template` SET `ScriptName`='npc_collapsing_star' WHERE `entry`=32955; -- Collapsing Star
UPDATE `creature_template` SET `ScriptName`='npc_brann_bronzebeard_algalon' WHERE `entry`=34064; -- Brann Bronzebeard
UPDATE `gameobject_template` SET `ScriptName`='go_celestial_planetarium_access' WHERE `entry` IN (194628,194752); -- Celestial Planetarium Access
UPDATE `creature_template` SET `AIName`='NullCreatureAI' WHERE `entry` IN (32953,34099); -- Black Hole

DELETE FROM `creature` WHERE `guid` IN (41781,41783,41790,41811,41812,41814,41819,41820,41821,41822,41823,41875);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`MovementType`) VALUES
(41781,33086,603,3,1,1627.400,-339.4133,417.4044,1.378810,7200,0,0), -- Algalon Stalker
(41783,33086,603,3,1,1622.681,-344.2576,417.3955,1.378810,7200,0,0), -- Algalon Stalker
(41790,33086,603,3,1,1629.984,-271.4798,417.4045,4.782202,7200,0,0), -- Algalon Stalker
(41811,33086,603,3,1,1630.005,-345.5189,417.3955,1.378810,7200,0,0), -- Algalon Stalker
(41812,33089,603,3,16,1622.451,-321.1563,417.6188,4.677482,7200,20,1), -- Dark Matter
(41814,33089,603,3,16,1649.438,-319.8127,418.3941,1.082104,7200,20,1), -- Dark Matter
(41819,33089,603,3,16,1615.060,-291.6816,417.7796,3.490659,7200,20,1), -- Dark Matter
(41820,33089,603,3,16,1647.005,-288.6790,417.3955,3.490659,7200,20,1), -- Dark Matter
(41821,33089,603,3,16,1622.451,-321.1563,417.6188,4.677482,7200,20,1), -- Dark Matter
(41822,33089,603,3,16,1649.438,-319.8127,418.3941,1.082104,7200,20,1), -- Dark Matter
(41823,33089,603,3,16,1615.060,-291.6816,417.7796,3.490659,7200,20,1), -- Dark Matter
(41875,33089,603,3,16,1647.005,-288.6790,417.3955,3.490659,7200,20,1); -- Dark Matter

SET @OGUID := 252;
DELETE FROM `gameobject` WHERE `id` IN (194767,194910,194911,194715,194716,194148,194253,194628,194752,194821,194822);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@OGUID+00,194767,603,3,17,1632.024,-182.9211,427.6681,0.000000,0,0,8.742278E-08,1, 604800,255,1), -- Doodad_UL_SigilDoor_01
(@OGUID+04,194911,603,3,17,1632.024,-182.9211,408.4224,3.141593,0,0,8.742278E-08,1, 604800,255,1), -- Doodad_UL_SigilDoor_02
(@OGUID+10,194910,603,3,17,1632.053,-266.1495,438.5608,0.000000,0,0,8.742278E-08,1, 604800,255,0), -- Doodad_UL_SigilDoor_03
(@OGUID+12,194715,603,3,17,1632.053,-307.6541,417.3211,0.000000,0,0,8.742278E-08,1, 604800,255,0), -- Doodad_UL_UniverseFloor_01
(@OGUID+19,194716,603,3,17,1632.251,-307.5483,416.2641,0.000000,0,0,8.742278E-08,1, 604800,255,1), -- Doodad_UL_UniverseFloor_02
(@OGUID+22,194148,603,3,17,1632.053,-307.6541,417.3211,0.000000,0,0,8.742278E-08,1, 604800,255,1), -- Doodad_UL_UniverseGlobe01
(@OGUID+24,194253,603,3,17,1631.908,-246.4970,417.3211,0.000000,0,0,8.742278E-08,1, 604800,255,1), -- Doodad_UL_Ulduar_Trapdoor_03
(@OGUID+29,194628,603,1, 1,1646.182,-174.6881,427.2536,1.553341,0,0,0.000000E-00,1, 604800,255,1), -- Celestial Planetarium Access
(@OGUID+33,194752,603,2, 1,1646.182,-174.6881,427.2536,1.553341,0,0,0.000000E-00,1, 604800,255,1), -- Celestial Planetarium Access
(@OGUID+37,194821,603,1, 1,1632.099,-306.5609,417.3210,4.694937,0,0,0.000000E-00,1,-604800,255,1), -- Gift of the Observer (10 man)
(@OGUID+46,194822,603,2, 1,1632.099,-306.5609,417.3210,4.694937,0,0,0.000000E-00,1,-604800,255,1); -- Gift of the Observer (25 man)

DELETE FROM `creature_equip_template` WHERE `entry` IN (2478,2479,2480);
INSERT INTO `creature_equip_template` (`entry`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(2478,1903,25972,0),
(2479,45985,45985,0),
(2480,44952,0,0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (32871,33070,33052,33116,33089,34221,34097,34222,33105);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`auras`) VALUES
(32871,0,0x0000000,0x0,NULL), -- Algalon the Observer
(33070,0,0x0000000,0x0,NULL), -- Algalon the Observer
(33052,0,0x3000000,0x1,NULL), -- Living Constellation
(33116,0,0x3000000,0x1,NULL), -- Living Constellation
(33089,0,0x3000000,0x1,NULL), -- Dark Matter
(34221,0,0x3000000,0x1,NULL), -- Dark Matter
(34097,0,0x3000000,0x1,NULL), -- Unleashed Dark Matter
(34222,0,0x3000000,0x1,NULL), -- Unleashed Dark Matter
(33105,0,0x3000000,0x1,NULL); -- Algalon Stalker Asteroid Target 02

DELETE FROM `creature_text` WHERE `entry` IN (32871,34064);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`sound`,`emote`,`comment`) VALUES
(34064,0,0,'We did it, lads! We got here before Algalon''s arrival. Maybe we can rig the systems to interfere with his analysis--',14,15824,0,'Brann Bronzebeard - SAY_BRANN_ALGALON_INTRO_1'),
(34064,1,0,'I''ll head back to the Archivum and see if I can jam his signal. I might be able to buy us some time while you take care of him.',12,15825,0,'Brann Bronzebeard - SAY_BRANN_ALGALON_INTRO_2'),
(34064,2,0,'I know just the place. Will you be all right?',14,15823,6,'Brann Bronzebeard - SAY_BRANN_ALGALON_OUTRO'),
(32871,0,0,'Translocation complete. Commencing planetary analysis of Azeroth.',12,15405,0,'Algalon the Observer - SAY_ALGALON_INTRO_1'),
(32871,1,0,'Stand back, mortals. I''m not here to fight you.',12,15406,0,'Algalon the Observer - SAY_ALGALON_INTRO_2'),
(32871,2,0,'It is in the universe''s best interest to re-originate this planet should my analysis find systemic corruption. Do not interfere.',12,15407,0,'Algalon the Observer - SAY_ALGALON_INTRO_3'),
(32871,3,0,'Your actions are illogical. All possible results for this encounter have been calculated. The Pantheon will receive the Observer''s message regardless of outcome.',14,15386,0,'Algalon the Observer - SAY_ALGALON_START_TIMER'),
(32871,4,0,'See your world through my eyes: A universe so vast as to be immeasurable - incomprehensible even to your greatest minds.',14,15390,1,'Algalon the Observer - SAY_ALGALON_AGGRO'),
(32871,5,0,'The stars come to my aid!',14,15392,0,'Algalon the Observer - SAY_ALGALON_COLLAPSING_STAR'),
(32871,6,0,'%s begins to Summon Collapsing Stars!',41,0,0,'Algalon the Observer - EMOTE_ALGALON_COLLAPSING_STAR'),
(32871,7,0,'Witness the fury of the cosmos!',14,15396,0,'Algalon the Observer - SAY_ALGALONG_BIG_BANG'),
(32871,8,0,'%s begins to cast Big Bang!',41,0,0,'Algalon the Observer - EMOTE_ALGALON_BIG_BANG'),
(32871,9,0,'You are out of time.',14,15394,0,'Algalon the Observer - SAY_ALGALON_ASCEND'),
(32871,10,0,'%s begins to cast Cosmic Smash!',41,0,0,'Algalon the Observer - EMOTE_ALGALON_COSMIC_SMASH'),
(32871,11,0,'Behold the tools of creation!',14,15397,0,'Algalon the Observer - SAY_ALGALON_PHASE_TWO'),
(32871,12,0,'I have seen worlds bathed in the Makers'' flames, their denizens fading without as much as a whimper. Entire planetary systems born and razed in the time that it takes your mortal hearts to beat once. Yet all throughout, my own heart devoid of emotion... of empathy. I. Have. Felt. Nothing. A million-million lives wasted. Had they all held within them your tenacity? Had they all loved life as you do?',14,15393,1,'Algalon the Observer - SAY_ALGALON_OUTRO_1'),
(32871,13,0,'Perhaps it is your imperfections... that which grants you free will... that allows you to persevere against all cosmically calculated odds. You prevail where the Titan''s own perfect creations have failed.',14,15401,1,'Algalon the Observer - SAY_ALGALON_OUTRO_2'),
(32871,14,0,'I''ve rearranged the reply code - your planet will be spared. I cannot be certain of my own calculations anymore.',14,15402,1,'Algalon the Observer - SAY_ALGALON_OUTRO_3'),
(32871,15,0,'I lack the strength to transmit the signal. You must... hurry... find a place of power... close to the skies.',14,15403,1,'Algalon the Observer - SAY_ALGALON_OUTRO_4'),
(32871,16,0,'Do not worry about my fate, Bronzen. If the signal is not transmitted in time, re-origination will proceed regardless. Save... your world...',14,15404,1,'Algalon the Observer - SAY_ALGALON_OUTRO_5'),
(32871,17,0,'Analysis complete. There is partial corruption in the planet''s life-support systems as well as complete corruption in most of the planet''s defense mechanisms.',12,15398,0,'Algalon the Observer - SAY_ALGALON_DESPAWN_1'),
(32871,18,0,'Begin uplink: Reply Code: ''Omega''. Planetary re-origination requested.',12,15399,0,'Algalon the Observer - SAY_ALGALON_DESPAWN_2'),
(32871,19,0,'Farewell, mortals. Your bravery is admirable, for such flawed creatures.',12,15400,0,'Algalon the Observer - SAY_ALGALON_DESPAWN_3'),
(32871,20,0,'Loss of life unavoidable.',14,15387,0,'Algalon the Observer - SAY_ALGALON_KILL'),
(32871,20,1,'I do what I must.',14,15388,0,'Algalon the Observer - SAY_ALGALON_KILL');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (64996,62266,65509,62304,64597);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,1,64996,31,3,34246,'Algalon the Observer - Reorigination on Azeroth'),
(13,1,62266,31,3,33052,'Algalon Stalker - target Living Constellation'),
(13,1,65509,31,3,33052,'Black Hole - target Living Constellation'),
(13,1,62304,31,3,33104,'Cosmic Smash - target trigger'),
(13,1,64597,31,3,33104,'Cosmic Smash - target trigger');

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_phase_punch';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_arcane_barrage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_trigger_3_adds';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_collapse';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_big_bang';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_remove_phase';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_cosmic_smash';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_cosmic_smash_damage';
DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_algalon_supermassive_fail';
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64412,'spell_algalon_phase_punch'),
(64599,'spell_algalon_arcane_barrage'),
(64607,'spell_algalon_arcane_barrage'),
(62266,'spell_algalon_trigger_3_adds'),
(62018,'spell_algalon_collapse'),
(64443,'spell_algalon_big_bang'),
(64584,'spell_algalon_big_bang'),
(64445,'spell_algalon_remove_phase'),
(62295,'spell_algalon_cosmic_smash'),
(62311,'spell_algalon_cosmic_smash_damage'),
(64596,'spell_algalon_cosmic_smash_damage'),
(65311,'spell_algalon_supermassive_fail');

SET @DIFF_ID := 3262;
DELETE FROM `spelldifficulty_dbc` WHERE `id` BETWEEN @DIFF_ID AND @DIFF_ID+5;
INSERT INTO `spelldifficulty_dbc` (`id`,`spellid0`,`spellid1`) VALUES
(@DIFF_ID+0,64395,64592),
(@DIFF_ID+1,64599,64607),
(@DIFF_ID+2,64443,64584),
(@DIFF_ID+3,64122,65108),
(@DIFF_ID+4,62301,64598),
(@DIFF_ID+5,62304,64597);

UPDATE `instance_encounters` SET `creditType`=1,`creditEntry`=65184 WHERE `entry` IN (757,771); -- Algalon the Observer

DELETE FROM `disables` WHERE `sourceType`=4 AND `entry` IN (10565,10566,10678,9990,9991,10567,10569,10698,10780,10781,10782,10783,10568,10570);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10565,10566,10678,9990,9991,10567,10569,10698,10780,10781,10782,10783,10568,10570);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(10565,12,0,0,''), -- Algalon the Observer kills (Ulduar 10 player)
(10566,12,1,0,''), -- Algalon the Observer kills (Ulduar 25 player)
(10678,12,0,0,''), -- Herald of the Titans
(10678,18,0,0,''), -- Herald of the Titans
(9990,12,0,0,''), -- Lich King 10-player bosses killed
(9991,12,1,0,''), -- Lich King 25-player bosses killed
(10567,12,0,0,''), -- Observed (10 player)
(10569,12,1,0,''), -- Observed (25 player)
(10698,12,1,0,''), -- Realm First! Celestial Defender
(10780,12,0,0,''), -- Supermassive (10 player)
(10781,12,0,0,''), -- Supermassive (10 player)
(10782,12,1,0,''), -- Supermassive (25 player)
(10783,12,1,0,''), -- Supermassive (25 player)
(10568,11,0,0,'achievement_he_feeds_on_your_tears'), -- He Feeds On Your Tears (10 player)
(10568,12,0,0,''), -- He Feeds On Your Tears (10 player)
(10570,11,0,0,'achievement_he_feeds_on_your_tears'), -- He Feeds On Your Tears (25 player)
(10570,12,1,0,''); -- He Feeds On Your Tears (25 player)
SET @Ref := 12002; 
DELETE FROM `reference_loot_template` WHERE `entry`=@Ref;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Ref,47242,100,1,0,1,1);
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (195668,195667,195666,195665,195672,195671,195670,195669) AND `item`=47242;
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (195668,195667,195666,195665,195672,195671,195670,195669) AND `mincountOrRef` = -@Ref;
INSERT INTO gameobject_loot_template (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(195665,5,100,1,0,-@Ref,4), -- 10 man,50 attempts
(195666,3,100,1,0,-@Ref,4), -- 10 man,45+ attempts
(195667,3,100,1,0,-@Ref,2), -- 10 man,25+ attempts
(195668,1,100,1,0,-@Ref,2), -- 10 man,0+ attempts
(195669,6,100,1,0,-@Ref,4), -- 25 man,50 attempts
(195670,4,100,1,0,-@Ref,4), -- 25 man,45+ attempts
(195671,4,100,1,0,-@Ref,2), -- 25 man,25+ attempts
(195672,2,100,1,0,-@Ref,2); -- 25 man,0+ attempts
SET @Bag := 52676;
DELETE FROM `item_loot_template` WHERE `entry`=@Bag;
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(@Bag,36933,0,1,1,1,3),-- Forest Emerald
(@Bag,36918,0,1,1,1,3),-- Scarlet Ruby
(@Bag,36921,0,1,1,1,3),-- Autumn's Glow
(@Bag,36930,0,1,1,1,3),-- Monarch Topaz
(@Bag,36924,0,1,1,1,3),-- Sky Sapphire
(@Bag,36927,0,1,1,1,3),-- Twilight Opal
(@Bag,43953,5,1,0,1,1); -- Reins of the Blue Drake
DELETE FROM `creature_loot_template` WHERE `entry` IN (31702,32297) AND `item`=44564;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(31702,44564,0.5,1,0,1,1), -- Recipe: Mighty Arcane Protection Potion on Frostbrood Spawn
(32297,44564,0.5,1,0,1,1); -- Recipe: Mighty Arcane Protection Potion on Cult Researcher
-- SAI for Tabard Vendor Elizabeth Ross
SET @ROSS := 28776;
SET @GOSSIP := 9832;

UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ROSS;

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP AND `id`>0 AND `id`<11;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(@GOSSIP, 1, 0, 'I''ve lost my Blood Knight Tabard.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 2, 0, 'I''ve lost my Tabard of the Hand.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 3, 0, 'I''ve lost my Tabard of the Protector.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 4, 0, 'I''ve lost my Green Trophy Tabard of the Illidari.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 5, 0, 'I''ve lost my Purple Trophy Tabard of the Illidari.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 6, 0, 'I''ve lost my Tabard of Summer Skies.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 7, 0, 'I''ve lost my Tabard of Summer Flames.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 8, 0, 'I''ve lost my Loremaster''s Colors.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 9, 0, 'I''ve lost my Tabard of the Explorer.', 1, 1, 0, 0, 0, 0, ''),
(@GOSSIP, 10, 0, 'I''ve lost my Tabard of the Achiever.', 1, 1, 0, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ROSS AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ROSS, 0, 0, 10, 62, 0, 100, 0, @GOSSIP, 1, 0, 0, 11, 54974, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Blood Knight Tabard'),
(@ROSS, 0, 1, 10, 62, 0, 100, 0, @GOSSIP, 2, 0, 0, 11, 54976, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of the Hand'),
(@ROSS, 0, 2, 10, 62, 0, 100, 0, @GOSSIP, 3, 0, 0, 11, 55008, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of the Protector'),
(@ROSS, 0, 3, 10, 62, 0, 100, 0, @GOSSIP, 4, 0, 0, 11, 54977, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Green Trophy Tabard of the Illidari'),
(@ROSS, 0, 4, 10, 62, 0, 100, 0, @GOSSIP, 5, 0, 0, 11, 54982, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Purple Trophy Tabard of the Illidari'),
(@ROSS, 0, 5, 10, 62, 0, 100, 0, @GOSSIP, 6, 0, 0, 11, 62768, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of Summer Skies'),
(@ROSS, 0, 6, 10, 62, 0, 100, 0, @GOSSIP, 7, 0, 0, 11, 62769, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of Summer Flames'),
(@ROSS, 0, 7, 10, 62, 0, 100, 0, @GOSSIP, 8, 0, 0, 11, 58194, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Loremaster''s Colors'),
(@ROSS, 0, 8, 10, 62, 0, 100, 0, @GOSSIP, 9, 0, 0, 11, 58224, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of the Explorer'),
(@ROSS, 0, 9, 10, 62, 0, 100, 0, @GOSSIP, 10, 0, 0, 11, 55006, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Cast Spell Create Tabard of the Achiever'),
(@ROSS, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Elizabeth Ross - On Gossip Select - Close Gossip');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@GOSSIP,1,0,2,25549,1,1,1,0,'','Only show gossip if player doesn''t have Blood Knight Tabard'),
(15,@GOSSIP,1,0,8,9737,0,0,0,0,'','Only show gossip if player already finished quest True Masters of Light'),
(15,@GOSSIP,2,0,2,24344,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of the Hand'),
(15,@GOSSIP,2,0,8,9762,0,0,0,0,'','Only show gossip if player already finished quest The Unwritten Prophecy'),
(15,@GOSSIP,3,0,2,28788,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of the protector'),
(15,@GOSSIP,3,0,8,10259,0,0,0,0,'','Only show gossip if player already finished quest Into the Breach'),
(15,@GOSSIP,4,0,2,31404,1,1,1,0,'','Only show gossip if player doesn''t have Green Trophy Tabard of Illidari'),
(15,@GOSSIP,4,0,2,31405,1,1,1,0,'','Only show gossip if player doesn''t have Purple Trophy Tabard of Illidari'),
(15,@GOSSIP,4,0,2,31408,1,1,1,0,'','Only show gossip if player doesn''t have Offering of the Sha''tar'),
(15,@GOSSIP,4,0,8,10781,0,0,0,0,'','Only show gossip if player already finished quest Battle of the Crimson Watch'),
(15,@GOSSIP,5,0,2,31404,1,1,1,0,'','Only show gossip if player doesn''t have Green Trophy Tabard of Illidari'),
(15,@GOSSIP,5,0,2,31405,1,1,1,0,'','Only show gossip if player doesn''t have Purple Trophy Tabard of Illidari'),
(15,@GOSSIP,5,0,2,31408,1,1,1,0,'','Only show gossip if player doesn''t have Offering of the Sha''tar'),
(15,@GOSSIP,5,0,8,10781,0,0,0,0,'','Only show gossip if player already finished quest Battle of the Crimson Watch'),
(15,@GOSSIP,6,0,2,35279,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of Summer Skies'),
(15,@GOSSIP,6,0,2,35280,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of Summer Flames'),
(15,@GOSSIP,6,0,8,11972,0,0,0,0,'','Only show gossip if player already finished quest Shards of Ahune'),
(15,@GOSSIP,7,0,2,35279,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of Summer Skies'),
(15,@GOSSIP,7,0,2,35280,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of Summer Flames'),
(15,@GOSSIP,7,0,8,11972,0,0,0,0,'','Only show gossip if player already finished quest Shards of Ahune'),
(15,@GOSSIP,8,0,2,43300,1,1,1,0,'','Only show gossip if player doesn''t have Loremaster''s Colors'),
(15,@GOSSIP,8,0,17,1681,0,0,0,0,'','Only show gossip if player have achievement Loremaster (A)'),
(15,@GOSSIP,8,1,2,43300,1,1,1,0,'','Only show gossip if player doesn''t have Loremaster''s Colors'),
(15,@GOSSIP,8,1,17,1682,0,0,0,0,'','Only show gossip if player have achievement Loremaster (H)'),
(15,@GOSSIP,9,0,2,43348,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of the Explorer'),
(15,@GOSSIP,9,0,17,45,0,0,0,0,'','Only show gossip if player have achievement Explore Northrend'),
(15,@GOSSIP,10,0,2,40643,1,1,1,0,'','Only show gossip if player doesn''t have Tabard of the Explorer'),
(15,@GOSSIP,10,0,17,1021,0,0,0,0,'','Only show gossip if player have achievement Twenty-Five Tabards');
UPDATE `creature_template` SET `flags_extra`=0x82,`ModelId1`=1126,`ModelId2`=16925 WHERE `entry` IN (38008,38641,38773,38774); -- Blood Orb Controller
UPDATE `creature_template` SET `flags_extra`=0x80,`ModelId1`=19725,`ModelId2`=31095,`baseattacktime`=2000,`speed_walk`=0.8,`speed_run`=0.28571 WHERE `entry` IN (38454,38775,38776,38777); -- Kinetic Bomb
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`ModelId1`=19725,`ModelId2`=21342 WHERE `entry`=38458; -- Kinetic Bomb Target
UPDATE `creature_template` SET `baseattacktime`=2000,`speed_walk`=4.4,`ModelId1`=19725,`ModelId2`=26767 WHERE `entry` IN (38332,38451); -- Ball of Flame
UPDATE `creature_template` SET `flags_extra`=0x80 WHERE `entry`=37950; -- Valithria Dreamwalker
UPDATE `creature_template` SET `InhabitType`=4 WHERE `InhabitType`&4 AND `flags_extra`&0x80; -- make flying triggers fly
UPDATE `creature_template` SET `InhabitType`=4,`HoverHeight`=12 WHERE `entry`=37126; -- Sister Svalna
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=37950; -- Valithria Dreamwalker
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=0,`gender`=0 WHERE `modelid`=31095; -- Kinetic Bomb
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=0 WHERE `modelid`=21342; -- Kinetic Bomb Target
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=0 WHERE `modelid`=26767; -- Ball of Flame
UPDATE `creature_template_addon` SET `bytes1`=50331648,`bytes2`=1,`mount`=0,`emote`=0,`auras`=NULL WHERE `entry`=38454; -- Kinetic Bomb
-- setup alternate conditions for spell 46488
DELETE FROM `conditions` WHERE `SourceEntry` = 46488 AND `ElseGroup` = 1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,46488,0,1,31,1,3,26817,0,0,0,'',''),
(13,1,46488,0,1,36,1,0,0,0,1,0,'','');
SET @TinRef := 13000; 
SET @TBC1 := @TinRef+1;
SET @TBC2 := @TinRef+2;
SET @WOTLK1 := @TinRef+3;
SET @WOTLK2 := @TinRef+4;
SET @WOTLK3 := @TinRef+5;

SET @Copper := 2770;
SET @Tin := 2771;
SET @Iron := 2772; 
SET @Mithril := 3858;
SET @Thorium := 10620;
SET @FelIron := 23424; 
SET @Adamantite := 23425; 
SET @Cobalt := 36909; 
SET @Saronite := 36912;
SET @Titanium := 36910;

-- Reference Loot Templates
DELETE FROM `reference_loot_template` WHERE `entry` BETWEEN @TinRef AND @TinRef+5;
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES 
-- Stupid Tin
(@TinRef,1529,0,1,1,1,1),  -- Jade
(@TinRef,3864,0,1,1,1,1),  -- Citrine
(@TinRef,7909,0,1,1,1,1),  -- Aquamarine
-- TBC Greens
(@TBC1,21929,0,1,1,1,2), -- Flame Spessarite
(@TBC1,23077,0,1,1,1,2), -- Blood Garnet
(@TBC1,23079,0,1,1,1,2), -- Deep Peridot
(@TBC1,23107,0,1,1,1,2), -- Shadow Draenite
(@TBC1,23112,0,1,1,1,2), -- Golden Draenite
(@TBC1,23117,0,1,1,1,2), -- Azure Moonstone
-- TBC Blues
(@TBC2,23436,0,1,1,1,1), -- Living Ruby
(@TBC2,23437,0,1,1,1,1), -- Talasite
(@TBC2,23438,0,1,1,1,1), -- Star of Elune
(@TBC2,23439,0,1,1,1,1), -- Noble Topaz
(@TBC2,23440,0,1,1,1,1), -- Dawnstone 
(@TBC2,23441,0,1,1,1,1), -- Nightseye
-- WOTLK Greens
(@WOTLK1,36917,0,1,1,1,2), -- Bloodstone
(@WOTLK1,36920,0,1,1,1,2), -- Sun Crystal
(@WOTLK1,36923,0,1,1,1,2), -- Chalcedony
(@WOTLK1,36926,0,1,1,1,2), -- Shadow Crystal
(@WOTLK1,36929,0,1,1,1,2), -- Huge Citrine
(@WOTLK1,36932,0,1,1,1,2), -- Dark Jade
-- WOTLK Blues
(@WOTLK2,36918,0,1,1,1,2), -- Scarlet Ruby
(@WOTLK2,36921,0,1,1,1,2), -- Autumn's Glow
(@WOTLK2,36924,0,1,1,1,2), -- Sky Sapphire
(@WOTLK2,36927,0,1,1,1,2), -- Twilight Opal
(@WOTLK2,36930,0,1,1,1,2), -- Monarch Topaz
(@WOTLK2,36933,0,1,1,1,2), -- Forest Emerald
-- WOTLK Epics
(@WOTLK3,36919,0,1,1,1,1), -- Cardinal Ruby
(@WOTLK3,36922,0,1,1,1,1), -- King's Amber
(@WOTLK3,36925,0,1,1,1,1), -- Majestic Zircon
(@WOTLK3,36928,0,1,1,1,1), -- Dreadstone
(@WOTLK3,36931,0,1,1,1,1), -- Ametrine
(@WOTLK3,36934,0,1,1,1,1); -- Eye of Zul
-- --------------------------------------------------------
-- Prospecting Loot Templates
DELETE FROM `prospecting_loot_template` WHERE `entry` IN (@Copper,@Tin,@Iron,@Mithril,@Thorium,@FelIron,@Adamantite,@Cobalt,@Saronite,@Titanium);
INSERT INTO `prospecting_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES 
-- Copper Ore
(@Copper,774,0,1,1,1,1), -- Malachite
(@Copper,818,0,1,1,1,1), -- Tigerseye
(@Copper,1210,10,1,0,1,1), -- Shadowgem
-- Tin Ore
(@Tin,1210,0,1,1,1,2),  -- Shadowgem
(@Tin,1705,0,1,1,1,2),  -- Lesser Moonstone
(@Tin,1206,0,1,1,1,2), -- Moss Agate
(@Tin,1,10,1,0,-@TinRef,1), -- One Rare gem chance
-- Iron Ore
(@Iron,1529,30,1,1,1,2), -- Jade
(@Iron,1705,30,1,1,1,2), -- Lesser Moonstone
(@Iron,3864,30,1,1,1,2), -- Citrine
(@Iron,7909,5,1,1,1,1), -- Aquamarine
(@Iron,7910,5,1,1,1,1), -- Star Ruby
-- Mithril Ore
(@Mithril,3864,30,1,1,1,2), -- Citrine
(@Mithril,7909,30,1,1,1,2), -- Aquamarine
(@Mithril,7910,30,1,1,1,2), -- Star Ruby
(@Mithril,12361,2.5,1,1,1,1), -- Blue Sapphire
(@Mithril,12364,2.5,1,1,1,1), -- Huge Emerald
(@Mithril,12799,2.5,1,1,1,1), -- Large Opal
(@Mithril,12800,2.5,1,1,1,1), -- Azerothian Diamond
-- Thorium Ore
(@Thorium,7910,30,1,1,1,2), -- Star Ruby
(@Thorium,12361,15,1,1,1,2), -- Blue Sapphire
(@Thorium,12364,15,1,1,1,2), -- Huge Emerald
(@Thorium,12799,15,1,1,1,2), -- Large Opal
(@Thorium,12800,15,1,1,1,2), -- Azerothian Diamond
(@Thorium,1,10,1,1,-@TBC1,1), -- one from TBC Greens
-- Fel Iron Ore
(@FelIron,1,95,1,1,-@TBC1,1), -- One from TBC Greens
(@FelIron,2,05,1,1,-@TBC2,1), -- One from TBC Blues
-- Adamantite Ore
(@Adamantite,24243,100,1,0,1,1), -- Adamantite Powder
(@Adamantite,1,100,1,1,-@TBC1,1), -- One from TBC Greens
(@Adamantite,2, 10,1,1,-@TBC2,1), -- One from TBC Blues
-- Cobalt Ore
(@Cobalt,1,95,1,1,-@WOTLK1,1), -- One from WOTLK Greens
(@Cobalt,2,05,1,1,-@WOTLK2,1), -- One from WOTLK Blues
-- Saronite Ore
(@Saronite,1,85,1,1,-@WOTLK1,2), -- One from WOTLK Greens
(@Saronite,2,15,1,1,-@WOTLK2,1), -- One from WOTLK Blues
-- Titanium Ore
(@Titanium,46849,75,1,0,1,1), -- Titanium Powder
(@Titanium,1,75,1,1,-@WOTLK1,2), -- Two from WOTLK Greens
(@Titanium,2,25,1,1,-@WOTLK2,1), -- One from WOTLK Blues
(@Titanium,3,20,1,0,-@WOTLK3,1); -- One from WOTLK Epics
UPDATE `creature_template` SET `skinloot`=entry WHERE `entry` IN (30260, 32517, 27641, 28860);
UPDATE `creature_template` SET `skinloot`=70202 WHERE `entry` IN (25774,29693);
UPDATE `creature_template` SET `skinloot`=70203 WHERE `entry`=28257;
UPDATE `creature_template` SET `skinloot`=70207 WHERE `entry`=34137;
UPDATE `creature_template` SET `skinloot`=70208 WHERE `entry` IN (32572,25448,25716,25713);
UPDATE `creature_template` SET `skinloot`=70210 WHERE `entry` IN (33528,40419,26723,31134,36891);
UPDATE `creature_template` SET `skinloot`=70211 WHERE `entry` IN (28847,30206,29875,29931,28203,30432);
UPDATE `creature_template` SET `skinloot`=70212 WHERE `entry` IN (27645,32377,29838,26628,26622,32490,38453,32485,26633,32400,32361,29768,29735,26641,27644,27642,26735,26730,26722,33776,35189,26716,26672,29664,29774);
UPDATE `creature_template` SET `skinloot`=70213 WHERE `entry` IN (27483,29312);
UPDATE `creature_template` SET `skinloot`=70214 WHERE `entry` IN (37217,34564);
UPDATE `creature_template` SET `skinloot`=27641 WHERE `entry` IN (31385,34269,34270,27641,30905,30353);

DELETE FROM `skinning_loot_template` WHERE entry IN (30260,32517,70212,70213,70214,28860,27641);
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- Stoic Mammoth
(30260,33568,100,0,1,3), -- Borean Leather
(30260,42542,-50,0,1,1), -- Stoic Mammoth Hide
-- Loque'nahak
(32517,33568,0,1,1,3), -- Borean Leather
(32517,44128,2,1,1,1), -- Arctic Fur
(32517,44687,100,0,1,1), -- Loque'Nahak's Pelt
-- skinloot 70212
(70212,33568,0,1,1,3), -- Borean Leather
(70212,44128,1,1,1,1), -- Arctic Fur
-- skinloot 70213
(70213,33568,0,1,5,12), -- Borean Leather
(70213,44128,1,1,1,1), -- Arctic Fur
-- skinloot 70214
(70214,33568,0,1,12,16), -- Borean Leather
(70214,44128,25,1,1,1), -- Arctic Fur
-- Sartharion
(28860,33568,0,1,8,12), -- Borean Leather
(28860,38557,0,1,8,12),-- Icy Dragonscale
(28860,44128,1,1,1,1), -- Arctic Fur
--  Centrifuge Construct
(27641,41337,85,0,1,3), -- Whizzed-Out Gizmo
(27641,41338,80,0,1,3), -- Sprung Whirlygig
(27641,39690,15,0,1,3), -- Volatile Blasting Trigger
(27641,39684,8,0,1,1), -- Hair Trigger
(27641,36813,8,0,1,3), -- Sprung Sprocket
(27641,39681,8,0,2,4), -- Handful of Cobalt Bolts
(27641,49050,2,0,1,1), -- Schematic: Jeeves
(27641,39682,1,0,1,1), -- Overcharged Capacitor
(27641,39685,1,0,1,1); -- Indestructible Frame
-- Correct dropchance for Mote of Life, wowhead was wrong (as usual)
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=18.5307 WHERE `entry`=22307 AND `item`=22575;
-- Update the dropchance to 100% if on quest
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=21477 AND `item`=31372; -- Rocknail Flayer Carcass
UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=21478 AND `item`=31373; -- Rocknail Flayer Giblets
DELETE FROM `command` WHERE `name` IN ('modify tp','modify bwalk','modify swim','modify fly','modify arena','modify aspeed','modify morph');
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('modify speed all', 1, 'Syntax: .modify aspeed #rate\r\n\r\nModify all speeds -run,swim,run back,swim back- of the selected player to "normalbase speed for this move type"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 50.'),
('modify speed backwalk', 1, 'Syntax: .modify speed backwalk #rate\r\n\r\nModify the speed of the selected player while running backwards to "normal walk back speed"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 50.'),
('modify speed fly', 1, '.modify speed fly #rate\nModify the flying speed of the selected player to "normal flying speed"*rate. If no player is selected, modify your speed.\n #rate may range from 0.1 to 50.'),
('modify speed swim', 1, 'Syntax: .modify speed swim #rate\r\n\r\nModify the swim speed of the selected player to "normal swim speed"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 50.'),
('modify speed walk', 1, 'Syntax: .modify speed bwalk #rate\r\n\r\nModify the speed of the selected player while running to "normal walk speed"*rate. If no player is selected, modify your speed.\r\n\r\n #rate may range from 0.1 to 50.'),
('modify talentpoints', 1, 'Syntax: .modify talentpoints #amount\r\n\r\nSet free talent points for selected character or character\'s pet. It will be reset to default expected at next levelup/login/quest reward.'),
('morph', 2, 'Syntax: .morph #displayid\r\n\r\nChange your current model id to #displayid.'),
('modify arenapoints', 1, 'Syntax: .modify arenapoints #value\r\nAdd $amount arena points to the selected player.');
UPDATE `command` SET `help`='Syntax: .modify speed $speedtype #rate\r\n\r\nModify the running speed of the selected player to "normal base run speed"= 1. If no player is selected, modify your speed.\r\n\r\n$speedtypes may be fly, all, walk, backwalk, or swim.\r\n\r\n #rate may range from 0.1 to 50.' WHERE `name`='modify speed' LIMIT 1;
-- Honor Among Thieves proc chance
UPDATE `spell_proc_event` SET `CustomChance`=33 WHERE `entry`=51698; -- Rank 1
UPDATE `spell_proc_event` SET `CustomChance`=66 WHERE `entry`=51700; -- Rank 2
UPDATE `spell_proc_event` SET `CustomChance`=100 WHERE `entry`=51701; -- Rank 3
UPDATE `warden_checks` SET `comment`='Swimming_FallCalc - movement state' WHERE `id`=15;
UPDATE `warden_checks` SET `comment`='CreateMovementStatus' WHERE `id`=72;
UPDATE `warden_checks` SET `comment`='OnStartSwim  OnSplineStartSwim - movement state' WHERE `id`=170;
UPDATE `warden_checks` SET `comment`='DefaultServerLogin - account name' WHERE `id`=198;
UPDATE `warden_checks` SET `comment`='Login Checksum - authentication process' WHERE `id`=320;
UPDATE `warden_checks` SET `comment`='CalcFallStartElevation - (some kind of wall climb)' WHERE `id`=329;
UPDATE `warden_checks` SET `comment`='Code injection at 0x40100A' WHERE `id`=381;
UPDATE `warden_checks` SET `comment`='Login State - (May be false positive)' WHERE `id`=437;
-- Earthen Power
DELETE FROM `spell_script_names` WHERE `spell_id`=59566;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(59566,'spell_sha_earthen_power');
 -- Rogue T9 2P - Should proc only from Rupture ticks.
DELETE FROM `spell_proc_event` WHERE `entry` IN(67209);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`) VALUES 
(67209, 0x01, 8, 0x100000, 0x50000);
-- Apply same loot template to below mentioned Bloodsail NPCs as that of Bloodsail Raider 1561
-- (Mage 1562, Swashbuckler 1563, Warlock 1564, Sea Dog 1565)
UPDATE `creature_template` SET `lootid`=1561 WHERE `entry` IN (1562,1563,1564,1565);
-- Remove Loot from `creature_loot_template` for above mentioned NPCs because it contains only 2 items.
-- Those 2 items, along with complete loot template for these mobs is applied in query above.
DELETE FROM `creature_loot_template` WHERE `entry` IN (1562,1563,1564,1565);
-- Remove loot and gold drop from Bloodsail Warlock's Minions
UPDATE `creature_template` SET `lootid`=0, `mingold`=0 AND `maxgold`=0 WHERE `entry` IN (10928,12922);
DELETE FROM `creature_loot_template` WHERE `entry` IN (10928,12922);
DELETE FROM `spell_script_names` WHERE `spell_id` = 46485;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(46485,'spell_item_greatmothers_soulcatcher');

DELETE FROM `conditions` WHERE `SourceEntry` IN (46485,46488);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,46485,0,1,31,1,3,26817,0,0,0,'',''),
(13,1,46485,0,1,36,1,0,0,0,1,0,'',''),
(13,1,46488,0,1,31,1,3,26817,0,0,0,'',''),
(13,1,46488,0,1,36,1,0,0,0,1,0,'','');

-- Gnome Soul SAI
SET @ENTRY := 26096;
SET @SPELL_ARCANE_EXPLOSION := 35426;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gnome Soul - On Just Summoned - Quest Credit"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,25814,10,1,0,0,0,0,"Gnome Soul - On Just Summoned - Set Data Fizzcrank Mechagnome"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,69,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gnome Soul - On Just Summoned - Move to Summoner"),

(@ENTRY,0,3,4,34,0,100,0,1,0,0,0,11,@SPELL_ARCANE_EXPLOSION,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnome Soul - Reached Summoner - Cast Arcane Explosion Visual"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gnome Soul - Reached Summoner - Forced Despawn");

-- Fizzcrank Mechagnome SAI
SET @ENTRY := 25814;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,1,1,10000,0,0,0,0,0,0,0,0,0,0,0,0,"Fizzcrank Mechagnome - Chance Say on Aggro"),
(@ENTRY,1,0,0,38,0,100,0,1,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fizzcrank Mechagnome - On Data Set - Forced Despawn");
UPDATE `smart_scripts` SET `source_type`=0,`id`=1 WHERE `entryorguid`=24814 AND `source_type`=1 AND `event_type`=38;
UPDATE `conditions` SET `SourceTypeOrReferenceId`=17 WHERE `SourceEntry` IN (46485,46488);
UPDATE `conditions` SET `ElseGroup`=0 WHERE `SourceEntry` IN (46485,46488) AND `ConditionValue1`=26817;
DELETE FROM `spell_script_names` WHERE `spell_id` = 33110;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(33110,'spell_pri_prayer_of_mending_heal');DELETE FROM `spell_scripts` WHERE `id` IN (15998,25952,29435,45980,51592,51910,52267,54420);
DELETE FROM `spell_script_names` WHERE `spell_id` IN (15998,25952,29435,45980,51592,51910,52267,54420);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(15998, 'spell_gen_despawn_self'),
(25952, 'spell_gen_despawn_self'),
(29435, 'spell_gen_despawn_self'),
(45980, 'spell_gen_despawn_self'),
(51592, 'spell_gen_despawn_self'),
(51910, 'spell_gen_despawn_self'),
(52267, 'spell_gen_despawn_self'),
(54420, 'spell_gen_despawn_self');DELETE FROM `spell_group` WHERE `id` IN (1117,1118);
INSERT INTO `spell_group` (`id`,`spell_id`) VALUES
(1117,25898),
(1117,25899),
(1118,20911),
(1118,20217);

DELETE FROM `spell_group_stack_rules` WHERE `group_id` in (1117,1118);
INSERT INTO `spell_group_stack_rules` (`group_id`,`stack_rule`) VALUES
(1117,3),
(1118,3);
UPDATE `conditions` SET `ElseGroup` = 0, `SourceGroup` = 0 WHERE `SourceEntry` IN (46485,46488);
UPDATE `smart_scripts` SET `source_type` = 0, `id` = 1 WHERE `entryorguid` = 25814 AND `source_type` = 1 AND `id` = 0;
DELETE FROM `creature_text` WHERE `entry`=37813 AND `groupid`=14;
INSERT INTO `creature_text` (`entry`,`groupid`,`text`,`type`,`comment`) VALUES (37813,14,'%s''s Blood Beasts gain the scent of blood!',41,'Deathbringer Saurfang - EMOTE_SCENT_OF_BLOOD');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=72771;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,3,72771,31,3,38508,'Deathbringer Saurfang - Scent of Blood on Blood Beast');
-- The Descent into Madness
-- References
-- -------------------------------
-- -- Variables and definitions --
-- -------------------------------
-- Set References
SET @Vezax10Ref := 34373;
SET @Vezax25Ref := @Vezax10Ref+1;
SET @Yogg10Ref := @Vezax10Ref+2;
SET @Yogg25Ref := @Vezax10Ref+3;
SET @Chest := 12034;
SET @Shoulder := 12035;
SET @EmblemRef := 34349; 
SET @Recipe := 34154;
SET @Vezax10 := 33271;
SET @Vezax25 := 33449;
SET @Yogg10 := 33288;
SET @Yogg25 := 33955;

-- -------------------------
-- -- Reference Templates --
-- -------------------------
-- Delete previous templates if existing
DELETE FROM `reference_loot_template` WHERE `entry` IN (34131,34132,34133,34164,34165);
DELETE FROM `reference_loot_template` WHERE `entry` IN (@Vezax10Ref,@Vezax25Ref,@Yogg10Ref,@Yogg25Ref,@Chest,@Shoulder);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Vezax 10 man
(@Vezax10Ref,46014,0,1,1,1,1), -- Saronite Animus Cloak
(@Vezax10Ref,46008,0,1,1,1,1), -- Choker of the Abyss
(@Vezax10Ref,46010,0,1,1,1,1), -- Darkstone Ring
(@Vezax10Ref,45996,0,1,1,1,1), -- Hoperender
(@Vezax10Ref,46015,0,1,1,1,1), -- Pendant of Endless Despair
(@Vezax10Ref,46013,0,1,1,1,1), -- Underworld Mantle
(@Vezax10Ref,46012,0,1,1,1,1), -- Vestments of the Piercing Light
(@Vezax10Ref,46009,0,1,1,1,1), -- Bindings of the Depths
(@Vezax10Ref,45997,0,1,1,1,1), -- Gauntlets of the Wretched
(@Vezax10Ref,46011,0,1,1,1,1), -- Shadowbite
-- Vezax 25 man
(@Vezax25Ref,45513,0,1,1,1,1), -- Boots of the Forgotten Dephts
(@Vezax25Ref,45509,0,1,1,1,1), -- Idol of the Corruptor
(@Vezax25Ref,45501,0,1,1,1,1), -- Boots of the Underdweller
(@Vezax25Ref,45512,0,1,1,1,1), -- Grips of the Unbroken
(@Vezax25Ref,45503,0,1,1,1,1), -- Metallic Loop of the Sufferer
(@Vezax25Ref,45505,0,1,1,1,1), -- Belt of Clinging Hope
(@Vezax25Ref,45502,0,1,1,1,1), -- Helm of the Faceless
(@Vezax25Ref,45145,0,1,1,1,1), -- Libram of the Sacred Shield
(@Vezax25Ref,45508,0,1,1,1,1), -- Belt of the Darkspeaker
(@Vezax25Ref,45504,0,1,1,1,1), -- Darkcore Leggings
(@Vezax25Ref,45514,0,1,1,1,1), -- Mantle of the Unknowing
(@Vezax25Ref,45515,0,1,1,1,1), -- Ring of the Vacant Eye
(@Vezax25Ref,45507,0,1,1,1,1), -- The General's Heart
-- Yogg 10 man
(@Yogg10Ref,46016,0,1,1,1,1), -- Abaddon
(@Yogg10Ref,46018,0,1,1,1,1), -- Deliverance
(@Yogg10Ref,46019,0,1,1,1,1), -- Leggings of the Insatiable
(@Yogg10Ref,46021,0,1,1,1,1), -- Royal Seal of King Llane
(@Yogg10Ref,46022,0,1,1,1,1), -- Pendant of a Thousand Maws
(@Yogg10Ref,46024,0,1,1,1,1), -- Kingsbane
(@Yogg10Ref,46025,0,1,1,1,1), -- Devotion
(@Yogg10Ref,46028,0,1,1,1,1), -- Faceguard of the Eyeless Horror
(@Yogg10Ref,46030,0,1,1,1,1), -- Threads of the Dragon Council
(@Yogg10Ref,46031,0,1,1,1,1), -- Touch of Madness
-- Yogg 25 man
(@Yogg25Ref,45521,0,1,1,1,1), -- Earthshaper
(@Yogg25Ref,45522,0,1,1,1,1), -- Blood of the Old God
(@Yogg25Ref,45523,0,1,1,1,1), -- Garona's Guise
(@Yogg25Ref,45524,0,1,1,1,1), -- Chestguard of Insidious Intent
(@Yogg25Ref,45525,0,1,1,1,1), -- Godbane Signet
(@Yogg25Ref,45527,0,1,1,1,1), -- Soulscribe
(@Yogg25Ref,45529,0,1,1,1,1), -- Shawl of Haunted Memories
(@Yogg25Ref,45530,0,1,1,1,1), -- Sanity's Bond
(@Yogg25Ref,45531,0,1,1,1,1), -- Chestguard of the Fallen God
(@Yogg25Ref,45532,0,1,1,1,1), -- Cowl of Dark Whispers
-- Chest for Yogg
(@Chest,45635,0,1,1,1,1), -- Chestguard of the Wayward Conqueror
(@Chest,45636,0,1,1,1,1), -- Chestguard of the Wayward Protector
(@Chest,45637,0,1,1,1,1), -- Chestguard of the Wayward Vanquisher
(@Shoulder,45656,0,1,1,1,1), -- Mantle of the Wayward Conqueror
(@Shoulder,45657,0,1,1,1,1), -- Mantle of the Wayward Protector
(@Shoulder,45658,0,1,1,1,1); -- Mantle of the Wayward Vanquisher

DELETE FROM `creature_loot_template` WHERE `entry` IN(@Vezax10,@Vezax25,@Yogg10,@Yogg25);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- ----------------------------------------------------------
-- General Vezax
-- ----------------------------------------------------------
-- 10 man mode
(@Vezax10,1,100,3,0,-@Vezax10Ref,2), -- 2x Normal Loot Item
(@Vezax10,47241,100,3,0,1,1), -- 1x Emblem of Triumph
-- hardmode loot 10
(@Vezax10,46032,0,2,1,1,1), -- Drape of the Faceless General
(@Vezax10,46034,0,2,1,1,1), -- Leggings of Profound Darkness
(@Vezax10,46033,0,2,1,1,1), -- Tortured Earth
(@Vezax10,46035,0,2,1,1,1), -- Aesuga, Hand of the Ardent Champion
(@Vezax10,46036,0,2,1,1,1), -- Void Sabre
-- 25 man mode
(@Vezax25,1,100,3,0,-@Vezax25Ref,3), -- 3x Normal Loot Item
(@Vezax25,47241,100,3,0,1,1), -- 1x Emblem of Triumph
(@Vezax25,2,10,1,0,-@Recipe,1), -- Chance on Recipe
(@Vezax25,3,10,1,0,-34350,1), -- Chance on Runed Orb
-- hardmode loot 25
(@Vezax25,45498,0,2,1,1,1), -- Lotrafen, Spear of the Damned
(@Vezax25,45511,0,2,1,1,1), -- Scepter of Lost Souls
(@Vezax25,45516,0,2,1,1,1), -- Voldrethar, Dark Blade of Oblivion
(@Vezax25,45517,0,2,1,1,1), -- Pendulum of Infinity
(@Vezax25,45519,0,2,1,1,1), -- Vestments of the Blind Denizen
(@Vezax25,45518,0,2,1,1,1), -- Flare of the Heavens
(@Vezax25,45520,0,2,1,1,1), -- Handwraps of the Vigilant
-- ----------------------------------------------------------
-- Yogg Saron
-- ----------------------------------------------------------
-- 10 man 
-- All modes
(@Yogg10,1,100,31,0,-@Yogg10Ref,1), -- 1x Normal Loot item for modes 0&1&2&3&4
(@Yogg10,2,100,31,0,-@Chest,1), -- 1x Tier token for modes 0&1&2&3&4
(@Yogg10,47241,100,31,0,1,1), -- 1x Emblem of Triumph for modes 0&1&2&3&4
-- Extra for <3 watchers
(@Yogg10,3,100,30,0,-@EmblemRef,1), -- additional Emblem for modes2&3 
-- Extra for <2 watchers
(@Yogg10,4,100,28,0,-34350,1), -- Runed Orb for 0&1&2
(@Yogg10,5,10,28,0,-@Recipe,1), -- Chance on Recipe for 0&1&2
-- Extra for <1 watchers
(@Yogg10,6,100,24,0,-@EmblemRef,1), -- additional Emblem for 0&1 
(@Yogg10,7,100,24,0,-@Recipe,1), -- Garanteed Recipe for 0&1
-- Hardmode 10 loot
(@Yogg10,46067,0,24,1,1,1), -- Hammer of Crushing Whispers
(@Yogg10,46068,0,24,1,1,1), -- Amice of Inconceivable Horror
(@Yogg10,46095,0,24,1,1,1), -- Soul-Devouring Cinch
(@Yogg10,46096,0,24,1,1,1), -- Signet of Soft Lament
(@Yogg10,46097,0,24,1,1,1), -- Caress of Insanity
-- Extra for 0 watchers
(@Yogg10,46312,100,16,0,1,1), -- Vanquished Clutches of Yogg-Saron
-- 25 man mode
-- All modes
(@Yogg25,1,100,31,0,-@Yogg25Ref,2), -- 2x Normal Loot item for modes 0&1&2&3&4
(@Yogg25,2,100,31,0,-@Shoulder,2), -- 2x Tier token for modes 0&1&2&3&4
(@Yogg25,47241,100,31,0,1,1), -- 1x Emblem of Triumph for modes 0&1&2&3&4
(@Yogg25,3,10,31,0,-34350,1), -- Chance on Runed Orb for modes 0&1&2&3&4
(@Yogg25,4,10,31,0,-@Recipe,1), -- Chance on Recipe for 0&1&2&3&4
(@Yogg25,45897,100,31,0,1,1), -- Fragment of Val'anyr
-- Extra for <3 watchers
(@Yogg25,5,100,30,0,-@EmblemRef,1), -- additional Emblem for modes2&3
-- Extra for <2 watchers
(@Yogg25,6,100,28,0,-34350,1), -- Runed Orb for 0&1&2
-- Extra for <1 watchers
(@Yogg25,7,100,24,0,-@EmblemRef,1), -- additional Emblem for 0&1 
(@Yogg25,8,100,24,0,-@Recipe,1), -- Garanteed Recipe for 0&1
-- Hardmode 25 loot
(@Yogg25,45533,0,24,1,1,1), -- Dark Edge of Depravity
(@Yogg25,45534,0,24,1,1,1), -- Seal of the Betrayed King
(@Yogg25,45535,0,24,1,1,1), -- Show of Faith
(@Yogg25,45536,0,24,1,1,1), -- Legguards of Cunning Deception
(@Yogg25,45537,0,24,1,1,1), -- Threads of the False Oracle
-- Extra for 0 watchers
(@Yogg25,45693,100,16,0,1,1); -- Mimiron's Head

-- Cleanups
DELETE FROM `conditions` WHERE `SourceEntry`=45897 AND `SourceGroup`=33955;SET @Triumph :=47241;
-- Cleanup some unneeded references
DELETE FROM `reference_loot_template` WHERE `entry` IN (34167,34168,34169);
UPDATE `creature_loot_template` SET `mincountOrRef`=-34349 WHERE `mincountOrRef` IN (-34167,-34168,-34169);
-- Fix this weird defined reference for ulduar
UPDATE `reference_loot_template` SET `ChanceOrQuestChance`=100,`groupid`=0 WHERE `entry`=34349;
-- Remove Emblem of Triumph from reference_loot
DELETE FROM `reference_loot_template` WHERE `item`=@Triumph AND `entry`IN (12025,35034,35040,35049);
-- Actual Emblem on creature as it should be
DELETE FROM `creature_loot_template` WHERE `entry` IN (30397,30398,31365,31367,31656,31679) AND `item`=@Triumph;
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(30397,@Triumph,100,1,0,1,1), -- Commander Kolurg (1)
(30398,@Triumph,100,1,0,1,1), -- Commander Stoutbeard (1)
(31365,@Triumph,100,1,0,1,1), -- Drakkari Colossus (1)
(31367,@Triumph,100,1,0,1,1), -- Drakkari Elemental (1)
(31656,@Triumph,100,1,0,1,1), -- Dalronn the Controller (1)
(31679,@Triumph,100,1,0,1,1); -- Skarvald the Constructor (1)
-- Similar action for gameobjects
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (27416,27417) AND `item`=@Triumph;
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27417,@Triumph,100,1,0,1,1), -- Confessor's Cache
(27416,@Triumph,100,1,0,1,1); -- Eadric's Cache
-- Add missing Challe & Orphan Matron Aria Spawns
SET @GUID := 41876;
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID AND @GUID+1;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES 
(@GUID,23101,530,1,1,0,0,-480.4989,7499.029,181.2889,3.560472,120,0,0,1,0,0), 
(@GUID+1,34365,571,1,1,0,0,5716.604,642.8611,646.2927,5.88176,120,0,0,1,0,0);
-- Add to game event creature
DELETE FROM `game_event_creature` WHERE `guid`=@GUID+1;
INSERT INTO `game_event_creature` (`eventEntry`,`guid`) VALUES (10,@GUID+1);
DELETE FROM `creature_loot_template` WHERE `entry` IN(38064,38103);
INSERT INTO `creature_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Precious 25 man
(38103,1,100,1,0,-35069,2), -- Two From ICC Trashgenerated on Precious
(38103,52019,30,1,0,1,1), -- Precious Ribbon on Precious
(38064,1,100,1,0,-35069,2); -- Two From ICC Trashgenerated on Stinky
-- add skinning loot for Stinky & Precious
UPDATE `creature_template` SET `skinloot`=70214 WHERE `entry` IN (37025,38064,37217,38103);
SET @GUID1 := 42158;
SET @GUID2 := 42159;
-- add creature
DELETE FROM creature WHERE guid IN (@GUID1,@GUID2);
INSERT INTO `creature`
(`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`)
VALUES
(@GUID1 ,38453,571,1,1,3561.821,-2736.367,136.0317,0), -- Arcturis in Grizzly Hills
(@GUID2,35189,571,1,1,7101.845,-1443.734,924.2609,0.178631); -- Skoll in The Storm Peaks
-- Update template
UPDATE `creature_template` SET `faction_A` = 190, `faction_H`=190 WHERE `entry` IN (38453,35189);
SET @NPC= @GUID1*10;
-- Add pathing for Arcturis
DELETE FROM `creature_addon` WHERE `guid` = @GUID1;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@GUID1,@NPC,0,0,0,0,''); -- Add path for Acturis
-- Add waypoint data for the path:
DELETE FROM `waypoint_data` WHERE `id`=@NPC;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`) VALUES
(@NPC,1,3563.499,-2737.698,137.1898),
(@NPC,2,3565.249,-2738.698,138.4398),
(@NPC,3,3566.749,-2739.948,139.9398),
(@NPC,4,3568.249,-2740.698,140.6898),
(@NPC,5,3567.839,-2741.380,141.9256),
(@NPC,6,3569.999,-2741.948,142.1898),
(@NPC,7,3570.749,-2742.448,143.1898),
(@NPC,8,3572.676,-2743.528,144.8479);
-- Spawntimefix
UPDATE `creature` SET `spawntimesecs`=39600 WHERE `guid` IN (@GUID1,@GUID2); -- Set the spawntime to 11 hours for Arcturis & Skoll
UPDATE `script_texts` SET `emote` = 432 WHERE `entry` IN (-1595111);
UPDATE `script_texts` SET `emote` = 396 WHERE `entry` IN (-1595070,-1595075,-1595078,-1595079,-1595088,-1595103,-1595106,-1595107,-1595108,-1595109,-1595113,-1595114,-1595115,-1595116);
UPDATE `script_texts` SET `emote` = 397 WHERE `entry` IN (-1595071,-1595084,-1595093);
UPDATE `script_texts` SET `emote` = 274 WHERE `entry` IN (-1595091);
UPDATE `script_texts` SET `emote` = 5 WHERE `entry` IN (-1595073,-1595118);
UPDATE `script_texts` SET `emote` = 6 WHERE `entry` IN (-1595076);
UPDATE `script_texts` SET `emote` = 1 WHERE `entry` IN (-1595083,-1595100,-1595104,-1595120);
UPDATE `script_texts` SET `emote` = 0 WHERE `entry` IN (-1595009,-1595010,-1595081,-1595082,-1595085,-1595119);

UPDATE `script_texts` SET `type` = 1 WHERE `entry` IN (-1595009,-1595010,-1595087,-1595094,-1595095,-1595093);
UPDATE `script_texts` SET `type` = 0 WHERE `entry` IN (-1595077,-1595078,-1595119);

UPDATE `script_texts` SET `content_default` = "Champions, meet me at the Town Hall at once. We must take the fight to Mal'Ganis." WHERE `entry` = -1595095;
UPDATE `script_texts` SET `content_default` = "Follow me, I know the way through." WHERE `entry` = -1595096;
UPDATE `script_texts` SET `content_default` = "Take position here, and I will lead a small force inside Stratholme to begin the culling. We must contain and purge the infected for the sake of all of Lordaeron!" WHERE entry = -1595087;
UPDATE `script_texts` SET `content_default` = "Ah, you've finally arrived Prince Arthas. You're here just in the nick of time." WHERE `entry` = -1595097;
UPDATE `script_texts` SET `content_default` = "Yes, I'm glad I could get to you before the plague." WHERE `entry` = -1595098;
UPDATE `script_texts` SET `content_default` = "As if I could forget. Listen, Uther, there's something about the plague you should know..." WHERE `entry` = -1595072;
UPDATE `script_texts` SET `content_default` = "There's no need for you to understand, Arthas. All you need to do is die." WHERE `entry` = -1595100;
UPDATE `script_texts` SET `content_default` = "More vile sorcery! Be ready for anything!" WHERE `entry` = -1595102;
UPDATE `script_texts` SET `content_default` = "Watch your backs: they have us surrounded in this hall." WHERE `entry` = -1595104;
UPDATE `script_texts` SET `content_default` = "Mal'Ganis is not making this easy." WHERE `entry` = -1595106;
UPDATE `script_texts` SET `content_default` = "What else can he put in my way?" WHERE `entry` = -1595108;
UPDATE `script_texts` SET `content_default` = "I do what I must for Lordaeron, and neither your words nor your actions will stop me." WHERE `entry` = -1595109;
UPDATE `script_texts` SET `content_default` = "The quickest path to Mal'Ganis lies behind that bookshelf ahead." WHERE `entry` = -1595110;
UPDATE `script_texts` SET `content_default` = "I'm relieved this secret passage still works." WHERE `entry` = -1595112;
UPDATE `script_texts` SET `content_default` = "Let's move through here as quickly as possible. If the undead don't kill us, the fires might." WHERE `entry` = -1595113;
UPDATE `script_texts` SET `content_default` = "Rest a moment and clear your lungs, but we must move again soon." WHERE `entry` = -1595114;
UPDATE `script_texts` SET `content_default` = "That's enough; we must move again. Mal'Ganis awaits." WHERE `entry` = -1595115;
UPDATE `script_texts` SET `content_default` = "At last some good luck. Market Row has not caught fire yet. Mal'Ganis is supposed to be in Crusaders' Square, which is just ahead. Tell me when you're ready to move forward." WHERE `entry` = -1595116;
UPDATE `script_texts` SET `content_default` = "Justice will be done." WHERE `entry` = -1595117;
UPDATE `script_texts` SET `content_default` = "We're going to finish this right now, Mal'Ganis. Just you... and me." WHERE `entry` = -1595118;

UPDATE `script_texts` SET `comment` = concat(`comment`,". NEEDS VERIFICATION") WHERE `entry` IN (-1595101,-1595105);

SET @GUID := 88474;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, 
`MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
(@GUID+00,27737,595,3,1,25543,0,2319.89,1285.78,131.407,1.72169,60,10,0,630,0,1,0,0,0),
(@GUID+01,27737,595,3,1,10979,0,2308.12,1304.21,127.601,4.39662,60,10,0,630,0,1,0,0,0),
(@GUID+02,27737,595,3,1,25542,0,2335.47,1262.04,132.921,1.42079,60,10,0,630,0,1,0,0,0),
(@GUID+03,27737,595,3,1,25543,0,2297.73,1338.75,124.622,2.5574,60,10,0,630,0,1,0,0,0),
(@GUID+04,27737,595,3,1,10979,0,2322.65,1265.39,133.033,5.6524,60,10,0,630,0,1,0,0,0),
(@GUID+05,27737,595,3,1,10973,0,2277.83,1331.92,124.19,3.48045,60,10,0,630,0,1,0,0,0),
(@GUID+06,27737,595,3,1,25543,0,2294.18,1316.93,125.672,6.05649,60,10,0,630,0,1,0,0,0),
(@GUID+07,27737,595,3,1,10973,0,2310.56,1369,128.372,5.03364,60,10,0,630,0,1,0,0,0),
(@GUID+08,27737,595,3,1,10979,0,2306.15,1322.85,125.708,4.99133,60,10,0,630,0,1,0,0,0),
(@GUID+09,27737,595,3,1,10973,0,2320.14,1297.48,129.694,1.35248,60,10,0,630,0,1,0,0,0),
(@GUID+10,27737,595,3,1,25542,0,2291.57,1327.27,124.545,5.32358,60,10,0,630,0,1,0,0,0),
(@GUID+11,27737,595,3,1,25542,0,2308.04,1352.65,126.907,5.83741,60,10,0,630,0,1,0,0,0),
(@GUID+12,27737,595,3,1,10979,0,2329.44,1281.11,132.636,2.25207,60,10,0,630,0,1,0,0,0),
(@GUID+13,27737,595,3,1,0,0,2407.32,1423.8,131.522,6.24743,60,10,0,706,0,1,0,0,0),
(@GUID+14,27737,595,3,1,0,0,2417.26,1428.41,131.652,6.20423,60,10,0,730,0,1,0,0,0),
(@GUID+15,27737,595,3,1,0,0,2420.48,1419.99,130.716,0.0977616,60,10,0,706,0,1,0,0,0),
(@GUID+16,27737,595,3,1,0,0,2426.63,1413.41,130.464,0.404064,60,10,0,730,0,1,0,0,0),
(@GUID+17,27737,595,3,1,0,0,2430.46,1417.6,130.557,0.125247,60,10,0,730,0,1,0,0,0),
(@GUID+18,27737,595,3,1,0,0,2433.94,1427.03,131.18,0.0584885,60,10,0,706,0,1,0,0,0),
(@GUID+19,27737,595,3,1,0,0,2446.5,1428.37,131.013,6.10606,60,10,0,756,0,1,0,0,0),
(@GUID+20,27737,595,3,1,0,0,2449.49,1423.35,130.588,5.77619,60,10,0,706,0,1,0,0,0),
(@GUID+21,27737,595,3,1,0,0,2441.92,1424.41,130.606,6.07857,60,10,0,706,0,1,0,0,0),
(@GUID+22,27737,595,3,1,0,0,2450.6,1438.61,132.213,4.74889,60,10,0,730,0,1,0,0,0),
(@GUID+23,27737,595,3,1,0,0,2460.17,1436.46,131.501,4.73711,60,10,0,756,0,1,0,0,0),
(@GUID+24,27737,595,3,1,0,0,2444.68,1421.68,130.324,6.01338,60,10,0,756,0,1,0,0,0),
(@GUID+25,27737,595,3,1,0,0,2456.87,1419.07,130.488,5.39763,60,10,0,706,0,1,0,0,0),
(@GUID+26,27737,595,3,1,0,0,2464.27,1422.15,130.976,5.22092,60,10,0,756,0,1,0,0,0),
(@GUID+27,27737,595,3,1,0,0,2468.21,1403.06,130.39,5.6364,60,10,0,756,0,1,0,0,0),
(@GUID+28,27737,595,3,1,0,0,2460.88,1406.8,130.508,5.96234,60,10,0,756,0,1,0,0,0),
(@GUID+29,27737,595,3,1,0,0,2485.77,1398.35,130.795,4.71591,60,10,0,756,0,1,0,0,0),
(@GUID+30,27737,595,3,1,0,0,2485.79,1380.46,130.15,5.02928,60,10,0,730,0,1,0,0,0),
(@GUID+31,27737,595,3,1,0,0,2475.77,1396.31,130.124,4.84079,60,10,0,730,0,1,0,0,0),
(@GUID+32,27737,595,3,1,0,0,2476.92,1387.21,129.401,5.05128,60,10,0,730,0,1,0,0,0),
(@GUID+33,27737,595,3,1,0,0,2483.24,1389.37,130.123,4.74104,60,10,0,730,0,1,0,0,0),
(@GUID+34,27737,595,3,1,0,0,2480.2,1370.15,129.533,5.79583,60,10,0,706,0,1,0,0,0),
(@GUID+35,27737,595,3,1,0,0,2481.54,1375.11,129.642,5.4644,60,10,0,730,0,1,0,0,0),
(@GUID+36,27737,595,3,1,0,0,2489.44,1359.42,131.233,5.378,60,10,0,730,0,1,0,0,0),
(@GUID+37,27737,595,3,1,0,0,2486.59,1356.19,131.876,5.7275,60,10,0,756,0,1,0,0,0),
(@GUID+38,27737,595,3,1,0,0,2495.53,1348.61,133.072,5.52722,60,10,0,730,0,1,0,0,0),
(@GUID+39,27737,595,3,1,0,0,2504.48,1349.65,132.856,5.11881,60,10,0,730,0,1,0,0,0),
(@GUID+40,27737,595,3,1,0,0,2493.11,1380.29,130.24,4.93189,60,10,0,706,0,1,0,0,0),
(@GUID+41,27737,595,3,1,0,0,2487.18,1392.64,130.512,4.93818,60,10,0,706,0,1,0,0,0),
(@GUID+42,27737,595,3,1,0,0,2506.49,1336.89,132.794,5.19343,60,10,0,756,0,1,0,0,0),
(@GUID+43,27737,595,3,1,0,0,2518.2,1306.39,130.623,4.81723,60,10,0,756,0,1,0,0,0),
(@GUID+44,27737,595,3,1,0,0,2513.4,1299.67,130.868,4.4206,60,10,0,756,0,1,0,0,0),
(@GUID+45,27737,595,3,1,0,0,2511.45,1291.47,130.808,5.00729,60,10,0,756,0,1,0,0,0),
(@GUID+46,27737,595,3,1,0,0,2518.56,1292.32,130.528,5.16438,60,10,0,756,0,1,0,0,0),
(@GUID+47,27737,595,3,1,0,0,2515.49,1279.85,129.214,5.28847,60,10,0,730,0,1,0,0,0),
(@GUID+48,27737,595,3,1,0,0,2514.37,1285.92,129.934,5.70473,60,10,0,706,0,1,0,0,0),
(@GUID+49,27737,595,3,1,0,0,2522.65,1274.29,128.576,5.44634,60,10,0,706,0,1,0,0,0),
(@GUID+50,27737,595,3,1,0,0,2535.38,1275.77,127.42,5.49817,60,10,0,756,0,1,0,0,0),
(@GUID+51,27737,595,3,1,0,0,2537.59,1273.1,127.05,5.02693,60,10,0,730,0,1,0,0,0),
(@GUID+52,27737,595,3,1,0,0,2547.49,1261.7,126.44,4.78425,60,10,0,730,0,1,0,0,0),
(@GUID+53,27737,595,3,1,0,0,2534.36,1261.06,127.125,4.3994,60,10,0,756,0,1,0,0,0),
(@GUID+54,27737,595,3,1,0,0,2532.69,1251.44,127.452,5.4479,60,10,0,730,0,1,0,0,0),
(@GUID+55,27737,595,3,1,0,0,2551.84,1252.35,125.455,5.04342,60,10,0,706,0,1,0,0,0),
(@GUID+56,27737,595,3,1,0,0,2536.1,1244,126.928,5.16515,60,10,0,756,0,1,0,0,0),
(@GUID+57,27737,595,3,1,0,0,2543.63,1247.23,126.131,5.19735,60,10,0,706,0,1,0,0,0),
(@GUID+58,27737,595,3,1,0,0,2554.21,1238.95,125.475,4.64836,60,10,0,730,0,1,0,0,0),
(@GUID+59,27737,595,3,1,0,0,2548.89,1227.37,126.375,5.31517,60,10,0,756,0,1,0,0,0),
(@GUID+60,27737,595,3,1,0,0,2560.46,1225.4,125.496,4.85335,60,10,0,706,0,1,0,0,0),
(@GUID+61,27737,595,3,1,0,0,2555.11,1218.55,125.944,5.11646,60,10,0,730,0,1,0,0,0),
(@GUID+62,27737,595,3,1,0,0,2561.91,1211.56,125.38,5.5877,60,10,0,730,0,1,0,0,0),
(@GUID+63,27737,595,3,1,0,0,2568.67,1202.96,125.509,4.96095,60,10,0,756,0,1,0,0,0),
(@GUID+64,27737,595,3,1,0,0,2571.93,1193.48,125.619,5.07641,60,10,0,756,0,1,0,0,0),
(@GUID+65,27737,595,3,1,0,0,2577.77,1180.88,125.562,4.64522,60,10,0,756,0,1,0,0,0),
(@GUID+66,27737,595,3,1,0,0,2574.2,1166.63,126.089,4.44966,60,10,0,706,0,1,0,0,0),
(@GUID+67,27737,595,3,1,0,0,2564.78,1166.82,127.092,4.2266,60,10,0,756,0,1,0,0,0),
(@GUID+68,27737,595,3,1,0,0,2577.56,1158.41,126.385,4.07738,60,10,0,756,0,1,0,0,0),
(@GUID+69,27737,595,3,1,0,0,2567.93,1176.56,126.2,4.7489,60,10,0,706,0,1,0,0,0),
(@GUID+70,27737,595,3,1,0,0,2559.28,1189.46,126.642,4.73319,60,10,0,756,0,1,0,0,0),
(@GUID+71,27737,595,3,1,0,0,2554.14,1213.37,126.599,5.13845,60,10,0,706,0,1,0,0,0),
(@GUID+72,27737,595,3,1,0,0,2560.58,1218.48,125.281,4.97351,60,10,0,730,0,1,0,0,0),
(@GUID+73,27737,595,3,1,0,0,2570.2,1170.58,126.311,4.64365,60,10,0,756,0,1,0,0,0),
(@GUID+74,27729,595,3,1,0,0,2496.57,1354.66,132.217,5.13691,120,5,0,63000,0,1,0,0,0),
(@GUID+75,27729,595,3,1,0,0,2494.22,1365.17,130.812,5.15654,120,5,0,63000,0,1,0,0,0),
(@GUID+76,27729,595,3,1,0,0,2440.41,1434.46,131.456,5.69372,120,5,0,63000,0,1,0,0,0),
(@GUID+77,27729,595,3,1,0,0,2433.18,1421.13,130.644,0.046706,120,5,0,63000,0,1,0,0,0),
(@GUID+78,27734,595,3,1,0,0,2546.07,1239.17,125.945,5.07801,120,5,0,63000,0,1,0,0,0),
(@GUID+79,27734,595,3,1,0,0,2458.58,1426.22,131.056,5.42984,120,5,0,63000,0,1,0,0,0),
(@GUID+80,27736,595,3,1,0,0,2488.11,1364.91,130.402,5.35524,120,5,0,130330,0,1,0,0,0),
(@GUID+81,28199,595,3,1,0,0,2527.63,1267.59,128.168,5.12906,120,5,0,63000,0,1,0,0,0),
(@GUID+82,28199,595,3,1,0,0,2528.06,1284.34,128.877,5.14869,120,5,0,63000,0,1,0,0,0),
(@GUID+83,28199,595,3,1,0,0,2466.27,1414.57,130.977,5.18637,120,5,0,63000,0,1,0,0,0),
(@GUID+84,28200,595,3,1,0,0,2570.51,1181.4,125.809,4.61855,120,5,0,50400,44070,1,0,0,0),
(@GUID+85,28200,595,3,1,0,0,2560.45,1202.05,126.031,4.85417,120,5,0,50400,44070,1,0,0,0),
(@GUID+86,28200,595,3,1,0,0,2487.85,1373.29,130.236,5.078,120,5,0,50400,44070,1,0,0,0),
(@GUID+87,28200,595,3,1,0,0,2416.7,1416.52,130.379,0.191224,120,5,0,50400,44070,1,0,0,0),
(@GUID+88,28200,595,3,1,0,0,2424.42,1422.68,130.868,0.25327,120,5,0,50400,44070,1,0,0,0),
(@GUID+89,28201,595,3,1,0,0,2540.67,1254.82,126.274,4.97198,120,5,0,130330,0,1,0,0,0),
(@GUID+90,28201,595,3,1,0,0,2410.03,1417.19,130.577,0.191229,120,5,0,130330,0,1,0,0,0),
(@GUID+91,28249,595,3,1,0,0,2562.66,1177.9,126.716,4.77171,120,5,0,63000,0,1,0,0,0),
(@GUID+92,28249,595,3,1,0,0,2566.72,1190.41,125.837,4.7992,120,5,0,63000,0,1,0,0,0),
(@GUID+93,28249,595,3,1,0,0,2472.34,1404.76,130.752,5.20601,120,5,0,63000,0,1,0,0,0),
(@GUID+94,28249,595,3,1,0,0,2460.59,1413.26,130.46,5.4377,120,5,0,63000,0,1,0,0,0),
(@GUID+95,28249,595,3,1,0,0,2415.04,1423.52,131.111,0.214785,120,5,0,63000,0,1,0,0,0);

DELETE FROM `script_texts` WHERE entry BETWEEN -1595052 AND -1595048;
INSERT INTO `script_texts` (npc_entry,entry, content_default, comment) VALUES
(27913,-1595048, "Scourge forces have been spotted near the Elder's Square Gate!","Spawns near elder's square gate."),
(27913,-1595059, "Scourge forces have been spotted near the Town Hall!","Spawns near town hall."),
(27913,-1595050, "Scourge forces have been spotted near the King's Square fountain!","Spawns near king's square."),
(27913,-1595051, "Scourge forces have been spotted near the Market Row Gate!", "Spawns near market row gate."),
(27913,-1595052, "Scourge forces have been spotted near the Festival Lane Gate!", "Spawns near festval lane gate.");

UPDATE `creature_template` SET `dynamicflags` = 0 WHERE `entry` IN (32273,32313);
UPDATE `areatrigger_teleport` SET id = 5181 WHERE id = 5148;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 20562;
UPDATE `script_waypoint` SET location_x = 2449.32, location_y = 1191.09 WHERE entry = 26499 AND pointid = 26;

UPDATE `creature_template` SET `lootid` = 32273 WHERE `entry` IN (32273, 32313);

-- thx warpten (fix for credit spell)
UPDATE `spell_dbc` SET `Attributes` = '8388992', `AttributesEx2` = '5', `AttributesEx3` = '269484288' WHERE `Id` = 58630;
-- Wolvar Orphan quest order
UPDATE `quest_template` SET `prevquestid`=13927,`exclusivegroup`=-13930 WHERE `id` IN (13930,13934,13951);
UPDATE `quest_template` SET `prevquestid`=13930,`exclusivegroup`=-13955 WHERE `id` IN (13955,13957);
UPDATE `quest_template` SET `prevquestid`=13955,`exclusivegroup`=0 WHERE `id`=13938;
UPDATE `quest_template` SET `prevquestid`=13938,`exclusivegroup`=0 WHERE `id`=13960;
-- Oracle Orphan quest order
UPDATE `quest_template` SET `prevquestid`=13926,`exclusivegroup`=-13929 WHERE `id` IN (13929,13933,13950);
UPDATE `quest_template` SET `prevquestid`=13929,`exclusivegroup`=-13954 WHERE `id` IN (13954,13956);
UPDATE `quest_template` SET `prevquestid`=13954,`exclusivegroup`=0 WHERE `id`=13937;
UPDATE `quest_template` SET `prevquestid`=13937,`exclusivegroup`=0 WHERE `id`=13959;
-- Human Orphan quest order
UPDATE `quest_template` SET `prevquestid`=1468,`exclusivegroup`=-1479 WHERE `id` IN (1479,1558,1687);
UPDATE `quest_template` SET `prevquestid`=1479,`exclusivegroup`=-558 WHERE `id` IN (558,4822);
UPDATE `quest_template` SET `prevquestid`=558,`exclusivegroup`=0 WHERE `id`=171;
-- Orcish Orphan quest order
UPDATE `quest_template` SET `prevquestid`=172,`exclusivegroup`=-910 WHERE `id` IN (910,911,1800);
UPDATE `quest_template` SET `prevquestid`=910,`exclusivegroup`=-915 WHERE `id` IN (915,925);
UPDATE `quest_template` SET `prevquestid`=915,`exclusivegroup`=0 WHERE `id`=5502;
-- Draenei Orphan quest order
UPDATE `quest_template` SET `prevquestid`=10943,`exclusivegroup`=-10950 WHERE `id` IN (10950,10952,10954);
UPDATE `quest_template` SET `prevquestid`=10950,`exclusivegroup`=-10956 WHERE `id` IN (10956,10962);
UPDATE `quest_template` SET `NextQuestIdChain`=10968 WHERE `id`=10956;
UPDATE `quest_template` SET `prevquestid`=10968,`exclusivegroup`=0 WHERE `id`=10966;
-- Blood Elf Orphan quest order
UPDATE `quest_template` SET `prevquestid`=10942,`exclusivegroup`=-10945 WHERE `id` IN (10945,10951,10953);
UPDATE `quest_template` SET `prevquestid`=10945,`exclusivegroup`=-10960 WHERE `id` IN (10960,10963);
UPDATE `quest_template` SET `prevquestid`=10960,`exclusivegroup`=0 WHERE `id`=11975;
UPDATE `quest_template` SET `prevquestid`=11975,`exclusivegroup`=0 WHERE `id`=10967;
-- Set correct NPC for A Warden of the Alliance
UPDATE `creature_questrelation` SET `id`=14305 WHERE `quest`=171;
DELETE FROM `creature_questrelation` WHERE `id` IN (14305,14444,22817,22818,33532,33533,34365); 
DELETE FROM `game_event_creature_quest` WHERE `eventEntry`=10;
INSERT INTO `game_event_creature_quest` (`eventEntry`,`id`,`quest`) VALUES
-- Alliance
(10,14450,1468), -- Orphan Matron Nightingale - Children's Week
(10,14305,1479), -- Human Orphan - The Bough of the Eternals
(10,14305,1558), -- Human Orphan - The Stonewrought Dam
(10,14305,1687), -- Human Orphan - Spooky Lighthouse
(10,14305,558), -- Human Orphan - Jaina's Autograph
(10,14305,4822), -- Human Orphan - You Scream, I Scream...
-- Horde 
(10,14451,172), -- Orphan Matron Battlewail - Children's Week
(10,14444,910), -- Orcish Orphan - Down at the Docks
(10,14444,911), -- Orcish Orphan - Gateway to the Frontier
(10,14444,1800), -- Orcish Orphan - Lordaeron Throne Room
(10,14444,915), -- Orcish Orphan - You Scream, I Scream...
(10,14444,925), -- Orcish Orphan - Cairne's Hoofprint
(10,14444,5502), -- Orcish Orphan - A Warden of the Horde
-- Outlands: Blood Elfs
(10,22819,10942), -- Orphan Matron Mercy - Children's Week
(10,22817,10945), -- Blood Elf Orphan - Hch'uu and the Mushroom People
(10,22817,10951), -- Blood Elf Orphan - A Trip to the Dark Portal
(10,22817,10953), -- Blood Elf Orphan - Visit the Throne of the Elements
(10,22817,11975), -- Blood Elf Orphan - Now, When I Grow Up...
(10,22817,10963), -- Blood Elf Orphan - Time to Visit the Caverns
(10,22817,10967), -- Blood Elf Orphan - Back to the Orphanage
-- Outlands: Draenei
(10,22819,10943), -- Orphan Matron Mercy - Children's Week
(10,22818,10950), -- Draenei Orphan - Auchindoun and the Ring of Observance
(10,22818,10952), -- Draenei Orphan - A Trip to the Dark Portal
(10,22818,10954), -- Draenei Orphan - Jheel is at Aeris Landing!
(10,22818,10956), -- Draenei Orphan - The Seat of the Naaru
(10,22818,10962), -- Draenei Orphan - Time to Visit the Caverns
(10,22818,10966), -- Draenei Orphan - Back to the Orphanage
-- Northrend: Wolvar
(10,34365,13927), -- Orphan Matron Aria - Little Orphan Kekek Of The Wolvar
(10,33532,13930), -- Wolvar Orphan - Home Of The Bear-Men
(10,33532,13934), -- Wolvar Orphan - The Bronze Dragonshrine
(10,33532,13951), -- Wolvar Orphan - Playmates!
(10,33532,13955), -- Wolvar Orphan - The Dragon Queen
(10,33532,13957), -- Wolvar Orphan - The Mighty Hemet Nesingwary
(10,33532,13960), -- Wolvar Orphan - Back To The Orphanage
-- Northrend: Oracles
(10,34365,13926), -- Orphan Matron Aria - Little Orphan Roo Of The Oracles
(10,33533,13929), -- Oracle Orphan - The Biggest Tree Ever!
(10,33533,13933), -- Oracle Orphan - The Bronze Dragonshrine
(10,33533,13937), -- Oracle Orphan - A Trip To The Wonderworks
(10,33533,13950), -- Oracle Orphan - Playmates!
(10,33533,13954), -- Oracle Orphan - The Dragon Queen
(10,33533,13956), -- Oracle Orphan - Meeting a Great One
(10,33533,13959); -- Oracle Orphan - Back To The Orphanage

-- Removed "When I Grow Up..." and replace it with "Now, When I Grow Up..." 
UPDATE `quest_template` SET `prevquestid`=10945,`exclusivegroup`=-11975 WHERE `id` IN (11975,10963);
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry`=10960;
INSERT INTO `disables` (`sourceType`,`entry`,`flags`,`params_0`,`params_1`,`comment`) VALUES
(1,10960,0,'','','Deprecated quest: When I grow up...');
-- Thrallmar Grunt pathing
SET @NPC := 57505;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=168.3949,`position_y`=2641.357,`position_z`=86.32077 WHERE `guid`=@NPC;
UPDATE `creature_addon` SET `path_id`=@PATH WHERE `guid`=@NPC;
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,168.3949,2641.357,86.32077,0,0,0,100,0),
(@PATH,2,186.5067,2615.882,87.28357,0,0,0,100,0),
(@PATH,3,188.9113,2601.655,87.28357,0,0,0,100,0),
(@PATH,4,198.3909,2602.661,87.28357,0,0,0,100,0),
(@PATH,5,201.5686,2609.845,87.28357,0,0,0,100,0),
(@PATH,6,187.2484,2616.44,87.28357,0,0,0,100,0),
(@PATH,7,168.7871,2641.268,86.32077,0,0,0,100,0),
(@PATH,8,155.2003,2681.998,84.82113,0,0,0,100,0),
(@PATH,9,194.6133,2692.07,90.61374,0,0,0,100,0),
(@PATH,10,215.4427,2693.589,90.69872,0,0,0,100,0),
(@PATH,11,219.0203,2692.25,90.69665,0,0,0,100,0),
(@PATH,12,225.5117,2680.063,90.68996,0,0,0,100,0),
(@PATH,13,235.309,2679.308,90.69373,0,0,0,100,0),
(@PATH,14,246.9184,2682.646,90.70419,0,0,0,100,0),
(@PATH,15,252.4411,2688.479,90.70386,0,0,0,100,0),
(@PATH,16,255.0155,2699.197,90.70283,0,0,0,100,0),
(@PATH,17,251.5234,2707.998,90.70486,0,0,0,100,0),
(@PATH,18,243.2346,2712.791,90.70392,0,0,0,100,0),
(@PATH,19,231.9871,2713.626,90.70399,0,0,0,100,0),
(@PATH,20,221.1457,2709.591,90.69753,0,0,0,100,0),
(@PATH,21,218.8803,2695.845,90.69318,0,0,0,100,0),
(@PATH,22,215.4517,2693.612,90.69869,0,0,0,100,0),
(@PATH,23,194.7944,2692.039,90.65273,0,0,0,100,0),
(@PATH,24,175.8115,2687.591,86.68189,0,0,0,100,0),
(@PATH,25,155.2143,2682.375,84.82113,0,0,0,100,0),
(@PATH,26,131.8727,2679.832,84.56969,0,0,0,100,0),
(@PATH,27,130.0859,2666.262,84.1262,0,0,0,100,0),
(@PATH,28,153.1291,2650.22,86.15128,0,0,0,100,0);

-- Remove dup Thrallmar Grunt spawn
DELETE FROM `creature` WHERE `guid`=57532;
DELETE FROM `creature_addon` WHERE `guid`=57532;

-- Bat Rider Guard pathing
SET @NPC := 54840;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=156.9029,`position_y`=2554.784,`position_z`=170.8949 WHERE `guid`=@NPC;
UPDATE `creature_addon` SET `path_id`=@PATH WHERE `guid`=@NPC;
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,156.9029,2554.784,170.8949,0,0,0,100,0),
(@PATH,2,52.51677,2602.816,139.7838,0,0,0,100,0),
(@PATH,3,42.10146,2627.056,139.7838,0,0,0,100,0),
(@PATH,4,37.17329,2663.729,139.7838,0,0,0,100,0),
(@PATH,5,62.91933,2687.96,139.7838,0,0,0,100,0),
(@PATH,6,96.1871,2688.141,148.4226,0,0,0,100,0),
(@PATH,7,129.818,2690.786,151.256,0,0,0,100,0),
(@PATH,8,165.6888,2715.398,170.8949,0,0,0,100,0),
(@PATH,9,199.7751,2744.93,170.8949,0,0,0,100,0),
(@PATH,10,246.0857,2761.154,170.8949,0,0,0,100,0),
(@PATH,11,295.0904,2757.991,170.8949,0,0,0,100,0),
(@PATH,12,309.3468,2726.089,170.8949,0,0,0,100,0),
(@PATH,13,303.8448,2682.588,170.8949,0,0,0,100,0),
(@PATH,14,289.3104,2650.866,170.8949,0,0,0,100,0),
(@PATH,15,261.2743,2618.831,170.8949,0,0,0,100,0),
(@PATH,16,233.6436,2578.997,170.8949,0,0,0,100,0),
(@PATH,17,199.3375,2546.226,170.8949,0,0,0,100,0);

-- Bat Rider Guard pathing
SET @NPC := 54841;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=65.97776,`position_y`=2661.205,`position_z`=163.6752 WHERE `guid`=@NPC;
UPDATE `creature_addon` SET `path_id`=@PATH WHERE `guid`=@NPC;
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,65.97776,2661.205,163.6752,0,0,0,100,0),
(@PATH,2,85.52612,2668.312,163.6752,0,0,0,100,0),
(@PATH,3,119.9537,2689.26,163.6752,0,0,0,100,0),
(@PATH,4,121.8238,2721.88,163.6752,0,0,0,100,0),
(@PATH,5,142.6907,2750.891,163.6752,0,0,0,100,0),
(@PATH,6,149.9812,2788.504,163.6752,0,0,0,100,0),
(@PATH,7,142.9353,2830.464,163.6752,0,0,0,100,0),
(@PATH,8,115.1711,2822.444,163.6752,0,0,0,100,0),
(@PATH,9,57.16672,2791.644,163.6752,0,0,0,100,0),
(@PATH,10,38.80463,2758.823,163.6752,0,0,0,100,0),
(@PATH,11,19.69282,2714.784,163.6752,0,0,0,100,0),
(@PATH,12,23.22027,2677.714,163.6752,0,0,0,100,0);

-- Bat Rider Guard pathing
SET @NPC := 54842;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=263.5968,`position_y`=2694.818,`position_z`=169.7312 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,4097);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,263.5968,2694.818,169.7312,0,0,0,100,0),
(@PATH,2,184.0861,2784.899,154.4534,0,0,0,100,0),
(@PATH,3,154.2815,2754.787,154.3701,0,0,0,100,0),
(@PATH,4,127.0308,2740.488,154.3701,0,0,0,100,0),
(@PATH,5,118.0444,2706.509,154.3701,0,0,0,100,0),
(@PATH,6,115.7577,2669.386,158.6756,0,0,0,100,0),
(@PATH,7,131.4314,2622.531,162.1478,0,0,0,100,0),
(@PATH,8,154.8241,2607.207,164.4812,0,0,0,100,0),
(@PATH,9,176.3283,2571.343,168.5645,0,0,0,100,0),
(@PATH,10,221.6267,2559.683,172.1201,0,0,0,100,0),
(@PATH,11,245.392,2593.423,169.8978,0,0,0,100,0),
(@PATH,12,251.0069,2617.749,169.7312,0,0,0,100,0),
(@PATH,13,263.0581,2644.614,169.7312,0,0,0,100,0);

-- Bat Rider Guard pathing
SET @NPC := 54843;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=62.42025,`position_y`=2785.719,`position_z`=192.1124 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,4097);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,62.42025,2785.719,192.1124,0,0,0,100,0),
(@PATH,2,159.9371,2842.977,208.279,0,0,0,100,0),
(@PATH,3,183.0578,2845.035,208.279,0,0,0,100,0),
(@PATH,4,211.2432,2864.757,214.2235,0,0,0,100,0),
(@PATH,5,238.1182,2871.979,220.9457,0,0,0,100,0),
(@PATH,6,252.9173,2853.913,220.9457,0,0,0,100,0),
(@PATH,7,255.0203,2812.634,220.9457,0,0,0,100,0),
(@PATH,8,240.4993,2780.929,220.9457,0,0,0,100,0),
(@PATH,9,195.4901,2773.965,209.3901,0,0,0,100,0),
(@PATH,10,162.1341,2742.294,212.9179,0,0,0,100,0),
(@PATH,11,125.4935,2720.611,197.9457,0,0,0,100,0),
(@PATH,12,93.49241,2699.757,192.1124,0,0,0,100,0),
(@PATH,13,58.35324,2681.49,192.1124,0,0,0,100,0),
(@PATH,14,22.8833,2715.123,192.1124,0,0,0,100,0),
(@PATH,15,30.10514,2764.5,192.1124,0,0,0,100,0);

-- Fix Bat Rider Guard InhabitType
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=15242;

-- Remove dup Bat Rider Guard spawns
DELETE FROM `creature` WHERE `guid` IN (54839,54844,54845);
DELETE FROM `creature_addon` WHERE `guid` IN (54839,54844,54845);
-- Speech by Martik Tor'seldoi, Thrallmar
SET @ENTRY := 16577;
UPDATE `creature_template` SET `AIName`= 'SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,30000,50000,360000,360000,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Martik Tor''seldoi - OOC - Load script every 6 min ooc'),
(@ENTRY,0,1,0,25,0,100,0,0,0,0,0,11,18100,32,0,0,0,0,1,0,0,0,0,0,0,0, 'Martik Tor''seldoi - Reset - Cast Frost Armor'),
(@ENTRY*100,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi Say text 0'),
(@ENTRY*100,9,1,0,0,0,100,0,3000,3000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi emote'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,5,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi emote'),
(@ENTRY*100,9,3,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Blood Elf Pilgrim Say text 0'),
(@ENTRY*100,9,4,0,0,0,100,0,3000,3000,0,0,5,6,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Blood Elf Pilgrim emote'),
(@ENTRY*100,9,5,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Martik Tor''seldoi turn to'),
(@ENTRY*100,9,6,0,0,0,100,0,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi Say text 1'),
(@ENTRY*100,9,7,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Blood Elf Pilgrim Say text 1'),
(@ENTRY*100,9,8,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi Say text 2'),
(@ENTRY*100,9,9,0,0,0,100,0,3000,3000,0,0,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi emote'),
(@ENTRY*100,9,10,0,0,0,100,0,3000,3000,0,0,5,273,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi emote'),
(@ENTRY*100,9,11,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,10,57487,16578,0,0,0,0,0,'Blood Elf Pilgrim Say text 2'),
(@ENTRY*100,9,12,0,0,0,100,0,1000,1000,0,0,5,15,0,0,0,0,0,9,16578,0,20,0,0,0,0,'Blood Elf Pilgrim emote'),
(@ENTRY*100,9,13,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Martik Tor''seldoi turn to');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry` IN (16577,16578);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(16577,0,0, 'Brothers and sisters, I have been to the promised land. I have tasted in the sublim energy. I have felt bliss - bliss so engrossing and all encompassing that I was left wondering if I had stumbled upon the dreams of gods.!',12,0,100,5,0,0, 'Martik Tor''seldoi'),
(16577,1,0, 'In paradise, you merely reach out and take from the Nether.',12,0,100,1,0,0, 'Martik Tor''seldoi'),
(16577,2,0, 'From the very air! Tendrils of arcane energy light up the obsidian sky as plumes of raw magic rise up from fissures in the land. Kneel and drink from the fissure as you do from a stream or well. Pluck a tendril from the heavens as if it were an apple hanging from a branch.',12,0,100,5,0,0, 'Martik Tor''seldoi'),
(16578,0,0, 'Tell us more, Martik. What is it? What does it feel like?',12,0,100,1,0,0, 'Blood Elf Pilgrim'),
(16578,1,0, 'But how?',12,0,100,6,0,0, 'Blood Elf Pilgrim'),
(16578,2,0, '%s smiles/gasps.',16,0,100,0,0,0, 'Blood Elf Pilgrim');
-- Forge of Souls Trash update

-- Npc Updates

-- Spiteful Apparition
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36551;
UPDATE `creature` SET `spawndist`=20,`MovementType`=1,`curhealth`=1,`curmana`=0 WHERE `id`=36551;
DELETE FROM `creature_template_addon` WHERE `entry`=36551;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (36551,1, '69105 69136');
-- Spiteful Apparition (Ambient)
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36967;
UPDATE `creature` SET  `spawndist`=20,`MovementType`=1,`curhealth`=1,`curmana`=0 WHERE `id`=36967;
DELETE FROM `creature_template_addon` WHERE `entry`=36967;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES (36967,1, '69663 69658');
-- Spectral Warden
UPDATE `creature_addon` SET `auras`='69144' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=36666);

-- SAI Updates

-- Spiteful Apparition SAI
SET @ENTRY   := 36551; -- NPC entry
SET @SPELL1  := 41253; -- Greater Invisibility
SET @SPELL2  := 68895; -- Spite (Normal)
SET @SPELL3  := 70212; -- Spite (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,6,0,0,0,0,11,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Spiteful Apparition - On Reset - Cast Greater Invisibility'),
(@ENTRY,0,1,0,10,0,100,6,0,10,3000,4000,28,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Spiteful Apparition - OOC range - Remove Greater Invisibility'),
(@ENTRY,0,2,0,0,0,100,2,7000,9000,7000,9000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Spiteful Apparition - Combat - Cast Spite "Normal"'),
(@ENTRY,0,3,0,0,0,100,4,7000,9000,7000,9000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Spiteful Apparition - Combat - Cast Spite "Heroic"');

-- Soulguard Reaper SAI
SET @ENTRY   := 36499; -- NPC entry
SET @SPELL1  := 68797; -- Soulguard Channel
SET @SPELL2  := 69058; -- Shadow Lance
SET @SPELL3  := 69060; -- Frost Nova (Normal)
SET @SPELL4  := 70209; -- Frost Nova (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,0,0,0,0,11,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Reaper - OOC - Cast Soulguard Channel'),
(@ENTRY,0,1,0,0,0,100,6,5000,6000,7000,9000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Reaper - Combat - Cast Shadow Lance'),
(@ENTRY,0,2,0,0,0,100,2,7000,9000,8000,10000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Reaper - Combat - Cast Frost Nova "Normal"'),
(@ENTRY,0,3,0,0,0,100,4,7000,9000,8000,10000,11,@SPELL4,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Reaper - Combat - Cast Frost Nova "Heroic"'),
(@ENTRY,0,4,0,4,0,100,6,0,0,0,0,39,30,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Reaper - Aggro - Call for help');

-- Soulguard Beam Focus Target
SET @ENTRY   := 36508; -- NPC entry
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (-201770,-201785,-201741);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(-201770,0,0,0,1,0,100,6,1000,1000,5000,5000,45,0,1,0,0,0,0,19,36620,60,0,0,0,0,0, 'Soulguard Beam Focus Target - OOC - Set data on Soulguard Adept'),
(-201785,0,0,0,1,0,100,6,1000,1000,5000,5000,45,0,1,0,0,0,0,19,36620,60,0,0,0,0,0, 'Soulguard Beam Focus Target - OOC - Set data on Soulguard Adept'),
(-201741,0,0,0,1,0,100,6,1000,1000,5000,5000,45,0,1,0,0,0,0,19,36620,60,0,0,0,0,0, 'Soulguard Beam Focus Target - OOC - Set data on Soulguard Adept'),
(-201741,0,1,0,1,0,100,6,1000,1000,5000,5000,45,0,1,0,0,0,0,19,36564,60,0,0,0,0,0, 'Soulguard Beam Focus Target - OOC - Set data on Soulguard Bonecaster');

-- Spectral Warden SAI
SET @ENTRY   := 36666; -- NPC entry
SET @SPELL1  := 69633; -- Veil of Shadow
SET @SPELL2  := 69148; -- Wail of Souls (Normal)
SET @SPELL3  := 70210; -- Wail of Souls (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,5000,6000,9000,10000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Spectral Warden - Combat - Cast Veil of Shadow'),
(@ENTRY,0,1,0,0,0,100,2,9000,11000,5000,6000,11,@SPELL1,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Spectral Warden - Combat - Cast Wail of Souls'),
(@ENTRY,0,2,0,0,0,100,4,9000,11000,5000,6000,11,@SPELL2,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Spectral Warden - Combat - Cast Wail of Souls');

-- Soulguard Watchman SAI
SET @ENTRY   := 36478; -- NPC entry
SET @SPELL1  := 69056; -- Shroud of Runes
SET @SPELL2  := 69053; -- Unholy Rage
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,50,6,0,10000,16000,20000,11,@SPELL1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Watchman - Combat - Cast Shroud of Runes'),
(@ENTRY,0,1,2,0,0,100,6,8000,16000,32000,40000,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Watchman - Combat - Cast Unholy Rage'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Watchman - Combat - Say 0'),
(@ENTRY,0,3,0,4,0,100,6,0,0,0,0,39,20,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Watchman - Aggro - Call for help');
-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, '%s goes into a frenzy!',16,0,100,0,0,0, 'Soulguard Watchman');

-- Soul Horror SAI
SET @ENTRY   := 36522; -- NPC entry
SET @SPELL1  := 69088; -- Soul Strike (Normal)
SET @SPELL2  := 70211; -- Soul Strike (Heroic)
SET @SPELL3  := 69107; -- Killing Spree Invis Aura
SET @SPELL4  := 69106; -- Killing Spree Aura
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5000,6000,5000,6000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soul Horror - Combat - Cast Soul Strike'),
(@ENTRY,0,1,0,0,0,100,4,5000,6000,5000,6000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soul Horror - Combat - Cast Soul Strike'),
(@ENTRY,0,4,0,4,0,100,6,0,0,0,0,39,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soul Horror - Aggro - Call for help');

-- Soulguard Animator SAI
SET @ENTRY   := 36516; -- NPC entry
SET @SPELL1  := 68834; -- Soulguard Channel Beam02
SET @SPELL2  := 69562; -- Raise Dead
SET @SPELL3  := 69131; -- Soul Sickness
SET @SPELL4  := 69128; -- Soul Siphon
SET @SPELL5  := 69068; -- Shadow Bolt (Normal)
SET @SPELL6  := 70208; -- Shadow Bolt (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,1000,1000,1000,1000,11,@SPELL1,0,0,0,0,0,9,36522,1,15,0,0,0,0, 'Soulguard Animator - OOC - Cast Soulguard Channel Beam02'),
(@ENTRY,0,1,0,0,1,100,6,20000,25000,20000,25000,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Raise Dead'),
(@ENTRY,0,2,0,0,0,100,6,7000,9000,9000,11000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Soul Sickness'),
(@ENTRY,0,3,0,0,0,100,6,9000,11000,7000,9000,11,@SPELL4,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Soul Siphon'),
(@ENTRY,0,4,0,0,0,100,2,4000,5000,3500,4500,11,@SPELL5,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Shadow Bolt "Normal"'),
(@ENTRY,0,5,0,0,0,100,4,4000,5000,3500,4500,11,@SPELL6,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Animator - Combat - Cast Shadow Bolt "Heroic"'),
(@ENTRY,0,6,7,4,0,100,6,0,0,0,0,39,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Aggro - Call for help'),
(@ENTRY,0,7,0,61,0,100,6,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Aggro - Set phase 1'),
(@ENTRY,0,8,9,38,0,100,7,0,2,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Data set 2 - Set data'),
(@ENTRY,0,9,0,61,0,100,6,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Data set 2 - Set phase 2'),
(@ENTRY,0,10,11,38,0,100,7,0,3,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Data set 3 - Set data'),
(@ENTRY,0,11,0,61,0,100,6,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Animator - Data set 3 - Set phase 1');

-- Soulguard Adept SAI
SET @ENTRY   := 36620; -- NPC entry
SET @SPELL1  := 68834; -- Soulguard Channel Beam02
SET @SPELL2  := 69562; -- Raise Dead
SET @SPELL3  := 69068; -- Shadow Bolt (Normal)
SET @SPELL4  := 70208; -- Shadow Bolt (Heroic)
SET @SPELL5  := 69066; -- Drain Life (Normal)
SET @SPELL6  := 70213; -- Drain Life (Heroic)
SET @SPELL7  := 69564; -- Shadow Mend (Normal)
SET @SPELL8  := 70205; -- Shadow Mend (Heroic)
SET @SPELL9  := 68797; -- Soulguard Channel
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,1000,1000,1000,1000,11,@SPELL1,0,0,0,0,0,9,36522,1,15,0,0,0,0, 'Soulguard Adept - OOC - Cast Soulguard Channel Beam02'),
(@ENTRY,0,1,0,0,4,100,6,20000,25000,20000,25000,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Raise Dead'),
(@ENTRY,0,2,0,0,0,100,2,7000,8000,3500,4500,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Shadow Bolt "Normal"'),
(@ENTRY,0,3,0,0,0,100,4,7000,8000,3500,4500,11,@SPELL4,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Shadow Bolt "Heroic"'),
(@ENTRY,0,4,0,0,0,100,2,6000,7000,8000,10000,11,@SPELL5,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Drain Life "Normal"'),
(@ENTRY,0,5,0,0,0,100,4,6000,7000,8000,10000,11,@SPELL6,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Drain Life "Heroic"'),
(@ENTRY,0,6,0,0,0,100,2,30000,35000,18000,22000,11,@SPELL7,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Shadow Mend "Normal"'),
(@ENTRY,0,7,0,0,0,100,4,30000,35000,18000,22000,11,@SPELL8,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Adept - Combat - Cast Shadow Mend "Heroic"'),
(@ENTRY,0,8,0,25,0,100,6,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - On Reset - Set phase 1'),
(@ENTRY,0,9,0,38,1,100,6,0,1,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - On dataset 0 1 - Set phase 2'),
(@ENTRY,0,10,0,1,2,100,7,0,0,0,0,11,@SPELL9,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - OOC - Cast Soulguard Channel'),
(@ENTRY,0,11,12,4,0,100,6,0,0,0,0,39,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Aggro - Call for help'),
(@ENTRY,0,12,0,61,0,100,6,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Aggro - Set phase 3'),
(@ENTRY,0,13,14,38,0,100,7,0,2,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Data set 2 - Set data'),
(@ENTRY,0,14,0,61,0,100,6,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Data set 2 - Set phase 4'),
(@ENTRY,0,15,16,38,0,100,7,0,3,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Data set 3 - Set data'),
(@ENTRY,0,16,0,61,0,100,6,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Adept - Data set 3 - Set phase 3');

-- Soulguard Bonecaster SAI
SET @ENTRY   := 36564; -- NPC entry
SET @SPELL1  := 68834; -- Soulguard Channel Beam02
SET @SPELL2  := 69562; -- Raise Dead
SET @SPELL3  := 69080; -- Bone Volley (Normal)
SET @SPELL4  := 70206; -- Bone Volley (Heroic)
SET @SPELL5  := 69069; -- Shield of Bones (Normal)
SET @SPELL6  := 70207; -- Shield of Bones (Heroic)
SET @SPELL7  := 68797; -- Soulguard Channel
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,1000,1000,1000,1000,11,@SPELL1,0,0,0,0,0,9,36522,1,15,0,0,0,0, 'Soulguard Bonecaster - OOC - Cast Soulguard Channel Beam02'),
(@ENTRY,0,1,0,0,4,100,6,20000,25000,20000,25000,11,@SPELL2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Raise Dead'),
(@ENTRY,0,2,0,0,0,100,2,5000,7000,6000,8000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Bone Volley "Normal"'),
(@ENTRY,0,3,0,0,0,100,4,5000,7000,6000,8000,11,@SPELL4,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Bone Volley "Heroic"'),
(@ENTRY,0,4,0,0,0,100,2,5000,7000,7000,9000,11,@SPELL5,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Shield of Bones "Normal"'),
(@ENTRY,0,5,0,0,0,100,4,5000,7000,7000,9000,11,@SPELL6,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Combat - Cast Shield of Bones "Heroic"'),
(@ENTRY,0,6,0,25,0,100,6,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - On Reset - Set phase 1'),
(@ENTRY,0,7,0,38,1,100,6,0,1,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - On dataset 0 1 - Set phase 2'),
(@ENTRY,0,8,0,1,2,100,7,0,0,0,0,11,@SPELL7,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - OOC - Cast Soulguard Channel'),
(@ENTRY,0,9,10,4,0,100,6,0,0,0,0,39,35,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Aggro - Call for help'),
(@ENTRY,0,10,0,61,0,100,6,0,0,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Aggro - Set phase 3'),
(@ENTRY,0,11,12,38,0,100,7,0,2,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Data set 2 - Set data'),
(@ENTRY,0,12,0,61,0,100,6,0,0,0,0,22,4,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Data set 2 - Set phase 4'),
(@ENTRY,0,13,14,38,0,100,7,0,3,0,0,45,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Data set 3 - Set data'),
(@ENTRY,0,14,0,61,0,100,6,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Soulguard Bonecaster - Data set 3 - Set phase 3');

-- Ghoul Minion SAI
SET @ENTRY   := 36916; -- NPC entry
SET @SPELL1  := 69088; -- Soul Strike (Normal)
SET @SPELL2  := 70211; -- Soul Strike (Heroic)
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,6,0,0,0,0,45,0,2,0,0,0,0,23,0,0,0,0,0,0,0, 'Ghoul Minion - Just Summoned - Set Data Summoner'),
(@ENTRY,0,1,0,61,0,100,6,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ghoul Minion - Just Summoned - Set Random Movement'),
(@ENTRY,0,2,0,0,0,100,6,115000,115000,115000,115000,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ghoul Minion - combat - die after 2 min'),
(@ENTRY,0,3,0,1,0,100,6,15000,15000,15000,15000,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ghoul Minion - OOC - die after 15 sec'),
(@ENTRY,0,4,5,6,0,100,6,15000,15000,15000,15000,45,0,3,0,0,0,0,23,0,0,0,0,0,0,0, 'Ghoul Minion - on Death - Set data summoner'),
(@ENTRY,0,5,0,61,0,100,6,15000,15000,15000,15000,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Ghoul Minion - on Death - despawn after 3 sec');
-- Set proper faction for Ymirjar Skycaller (Heroic)
UPDATE `creature_template` SET `faction_A`=1885,`faction_H`=1885 WHERE `entry`=37643;
-- Add some missing Blood of Heroes spawns
SET @GUID := 5276;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @GUID AND @GUID+5;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(@GUID,176213,0,1,1,1529.10242,-1427.06946,65.49049,-3.001947,0,0,-0.9975634,0.06976615,7200,100,1),
(@GUID+1,176213,0,1,1,1705.87439,-4690.138,48.9742165,-3.08918333,0,0,-0.9996567,0.02620165,7200,100,1),
(@GUID+2,176213,0,1,1,1846.79382,-3825.265,135.5159,1.83259487,0,0,0.7933531,0.6087617,7200,100,1),
(@GUID+3,176213,0,1,1,1748.16333,-4453.13525,74.26272,-2.0594883,0,0,0,0,7200,100,1),
(@GUID+4,176213,0,1,1,2159.835,-2442.754,62.0804,-0.4886912,0,0,-0.2419214,0.9702958,7200,100,1),
(@GUID+5,176213,0,1,1,1342.557,-1382.568,46.89193,2.775069,0,0,0.9832544,0.182238,7200,100,1);
-- Wrathbone Laborer SAI
SET @ENTRY   := 36830; -- NPC entry
SET @SPELL1  := 70302; -- Blinding Dirt
SET @SPELL2  := 70278; -- Puncture Wound (Normal)
SET @SPELL3  := 70279; -- Puncture Wound (Heroic)
SET @SPELL4  := 69572; -- Shovelled! (Normal)
SET @SPELL5  := 70280; -- Shovelled! (Heroic)
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,7000,8000,10000,11000,11,@SPELL1,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Blinding Dirt'),
(@ENTRY,0,1,0,0,0,100,2,8000,9000,9000,10000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Puncture Wound (Normal)'),
(@ENTRY,0,2,0,0,0,100,4,8000,9000,9000,10000,11,@SPELL3,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Puncture Wound (Heroic)'),
(@ENTRY,0,3,0,0,0,100,2,5000,6000,7000,8000,11,@SPELL4,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Shovelled! (Normal)'),
(@ENTRY,0,4,0,0,0,100,4,5000,6000,7000,8000,11,@SPELL5,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Shovelled! (Heroic)'),
(@ENTRY,0,5,0,1,0,100,6,1000,3000,3000,3000,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Wrathbone Laborer - OOC - emote');
-- Fix InhabitType for Eye of the Lich King
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36913;
-- Updates From CDawg
-- Wrathbone Laborer (heroic) - fix hostility and adds equipment
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256,`equipment_id`=104 WHERE `entry`=37638;
-- Wrathbone Siegesmith (Heroic) add equipment
UPDATE `creature_template` SET `equipment_id`=122 WHERE `entry`=37639;
-- Fallen Warrior add equipment
UPDATE `creature_template` SET `equipment_id`=2328 WHERE `entry`=37612;
-- Forgemaster Garfrost add equipment
UPDATE `creature_template` SET `equipment_id`=2325 WHERE `entry`=37613;
-- Deathwhisper Necrolyte add equipment
UPDATE `creature_template` SET `equipment_id`=2365 WHERE `entry`=37609;
-- Deathwhisper Shadowcaster - add equipment
UPDATE `creature_template` SET `equipment_id`=2365 WHERE `entry`=38025;
-- Alliance slaves add equipments
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=37645;
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=37646;
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=37647;
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=37648;
-- horde slaves add equipments
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=37649;
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=37650;
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=37651;
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=37652;
-- Ymirjar Skycaller (heroic) - Fix unit flags and add equipment
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32832,`equipment_id`=2438 WHERE `entry`=37643;
-- Fix skillup on some target dummys
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|262144 WHERE `entry` IN (31144,2674,2673);
-- Wrathbone Laborer SAI
SET @ENTRY   := 36830; -- NPC entry
SET @SPELL1  := 70302; -- Blinding Dirt
SET @SPELL2  := 70278; -- Puncture Wound
SET @SPELL3  := 69572; -- Shovelled!
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `creature_ai_scripts` WHERE `creature_id`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,7000,8000,10000,11000,11,@SPELL1,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Blinding Dirt'),
(@ENTRY,0,1,0,0,0,100,6,8000,9000,9000,10000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Puncture Wound (Normal)'),
(@ENTRY,0,2,0,0,0,100,6,5000,6000,7000,8000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Shovelled! (Normal)'),
(@ENTRY,0,3,0,1,0,100,6,1000,3000,3000,3000,5,38,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Wrathbone Laborer - OOC - emote');
-- Gold for Toc based on old.wowhead
UPDATE `creature_template` SET `mingold`=850000,`maxgold`=950000 WHERE `entry` IN(34797,35447,35448,35449); -- Icehowl
UPDATE `creature_template` SET `mingold`=550000,`maxgold`=650000 WHERE `entry` IN(34780,35216,35268,35269); -- Lord Jaraxxus
UPDATE `creature_template` SET `mingold`=650000,`maxgold`=700000 WHERE `entry` IN(34497,35350,35351,35352,34496,35347,35348,35359); -- Fjola Lightbane & Eydis Darkbane
UPDATE `creature_template` SET `mingold`=500000,`maxgold`=600000 WHERE `entry` IN(34564,34566,35615,35616); -- Anub'arak
-- Based on old.wowhead.com
UPDATE `creature_template` SET `mingold`=1600000,`maxgold`=1800000 WHERE `entry` IN (33113,34003); -- Flame Levithian
UPDATE `creature_template` SET `mingold`=1100000,`maxgold`=1300000 WHERE `entry` IN (33118,33190); -- Ignis the Furnace Master
UPDATE `creature_template` SET `mingold`=280000,`maxgold`=360000 WHERE `entry` IN (33186,33724); -- Razorscale
UPDATE `creature_template` SET `mingold`=670000,`maxgold`=750000 WHERE `entry` IN (33293,33885); -- XT-002 Deconstructor
UPDATE `creature_template` SET `mingold`=1680000,`maxgold`=1900000 WHERE `entry` IN (32857,33694); -- Stormcaller Brundir
UPDATE `creature_template` SET `mingold`=1680000,`maxgold`=1900000 WHERE `entry` IN (32927,33692); -- Runemaster Molgeim
UPDATE `creature_template` SET `mingold`=1680000,`maxgold`=1900000 WHERE `entry` IN (32867,33693); -- Steelbreaker
UPDATE `creature_template` SET `mingold`=1220000,`maxgold`=1500000 WHERE `entry` IN (33515,34175); -- Auriaya
UPDATE `creature_template` SET `mingold`=1650000,`maxgold`=1950000 WHERE `entry` IN (33271,33449); -- General Vezax
UPDATE `creature_template` SET `mingold`=2020000,`maxgold`=2220000 WHERE `entry` IN (33288,33955); -- Yogg-Saron
-- Wrathbone Siegesmith pathing
SET @NPC := 202159;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=646.5851,`position_y`=-191.1892,`position_z`=526.8476 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,646.5851,-191.1892,526.8476,0,0,0,100,0),
(@PATH,2,648.8837,-181.967,526.7226,0,0,0,100,0),
(@PATH,3,649.4167,-179.4531,526.7226,14000,0,0,100,0),
(@PATH,4,652.1736,-183.3594,526.7226,0,0,0,100,0),
(@PATH,5,648.5643,-188.309,526.8476,0,0,0,100,0),
(@PATH,6,642.5313,-193.4826,527.3874,0,0,0,100,0),
(@PATH,7,633.688,-200.741,528.941,12000,0,0,100,0),
(@PATH,8,641.9254,-196.5747,528.9726,0,0,0,100,0);

-- Wrathbone Siegesmith pathing
SET @NPC := 201855;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=723.5469,`position_y`=-170.9497,`position_z`=527.5121 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,723.5469,-170.9497,527.5121,13000,0,0,100,0),
(@PATH,2,726.6484,-173.3438,527.1627,0,0,0,100,0),
(@PATH,3,726.6484,-174.3438,527.1627,0,0,0,100,0),
(@PATH,4,725.25,-175.2379,526.8134,0,0,0,100,0),
(@PATH,5,722.0521,-181.5122,526.8134,0,0,0,100,0),
(@PATH,6,721.2031,-187.8142,526.8134,0,0,0,100,0),
(@PATH,7,717.7917,-194.4358,526.8134,0,0,0,100,0),
(@PATH,8,719.3073,-202.2691,527.1509,0,0,0,100,0),
(@PATH,9,720.3403,-206.1198,527.7932,12000,0,0,100,0),
(@PATH,10,717.6111,-199.5035,526.9384,0,0,0,100,0),
(@PATH,11,717.566,-189.0642,526.8134,0,0,0,100,0),
(@PATH,12,718.5764,-182.3958,526.8134,0,0,0,100,0),
(@PATH,13,719.9531,-176.0729,526.8134,0,0,0,100,0);

-- Forgemaster Garfrost pathing
SET @NPC := 201992;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=712.1371,`position_y`=-215.7014,`position_z`=527.066 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`,`auras`) VALUES (@NPC,@PATH,1,'68792');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,712.1371,-215.7014,527.066,0,0,0,100,0),
(@PATH,2,719.507,-227.8559,527.066,3000,0,0,100,0),
(@PATH,3,712.1371,-215.7014,527.066,0,0,0,100,0),
(@PATH,4,685.1805,-207.349,526.8424,0,0,0,100,0),
(@PATH,5,664.5191,-203.3472,526.816,0,0,0,100,0),
(@PATH,6,645.033,-208.5295,528.941,0,0,0,100,0),
(@PATH,7,653.0729,-194.3681,526.7226,0,0,0,100,0),
(@PATH,8,664.8646,-195.2135,526.7226,0,0,0,100,0),
(@PATH,9,686.0816,-213.8264,526.8424,0,0,0,100,0),
(@PATH,10,697.9757,-221.6215,526.8424,0,0,0,100,0),
(@PATH,11,708.0903,-211.908,527.066,0,0,0,100,0),
(@PATH,12,717.8924,-204.6979,527.191,0,0,0,100,0),
(@PATH,13,699.0504,-201.3438,526.8424,0,0,0,100,0),
(@PATH,14,672.066,-201.1493,526.8424,0,0,0,100,0),
(@PATH,15,655.9496,-203.4931,526.816,0,0,0,100,0),
(@PATH,16,672.066,-201.1493,526.8424,0,0,0,100,0),
(@PATH,17,699.0504,-201.3438,526.8424,0,0,0,100,0),
(@PATH,18,717.8924,-204.6979,527.191,0,0,0,100,0),
(@PATH,19,708.0903,-211.908,527.066,0,0,0,100,0),
(@PATH,20,697.9757,-221.6215,526.8424,0,0,0,100,0),
(@PATH,21,686.0816,-213.8264,526.8424,0,0,0,100,0),
(@PATH,22,664.8646,-195.2135,526.7226,0,0,0,100,0),
(@PATH,23,653.0729,-194.3681,526.7226,0,0,0,100,0),
(@PATH,24,645.033,-208.5295,528.941,0,0,0,100,0),
(@PATH,25,664.5191,-203.3472,526.816,0,0,0,100,0),
(@PATH,26,685.1805,-207.349,526.8424,0,0,0,100,0);
-- Ymirjar Skycaller SAI addition
SET @ENTRY   := 31260; -- NPC entry
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,0,25,0,100,6,0,0,0,0,11,46598,0,0,0,0,0,19,36891,20,0,0,0,0,0, 'Ymirjar Skycaller - Reset - Cast Ride Vehicle Hardcoded');

-- Wrathbone Laborer SAI
SET @ENTRY   := -201800; -- NPC entry
SET @SPELL1  := 70302; -- Blinding Dirt
SET @SPELL2  := 70278; -- Puncture Wound
SET @SPELL3  := 69572; -- Shovelled!
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,7000,8000,10000,11000,11,@SPELL1,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Blinding Dirt'),
(@ENTRY,0,1,0,0,0,100,6,8000,9000,9000,10000,11,@SPELL2,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Puncture Wound (Normal)'),
(@ENTRY,0,2,0,0,0,100,6,5000,6000,7000,8000,11,@SPELL3,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Wrathbone Laborer - Combat - Cast Shovelled! (Normal)');

-- Wrathbone Laborer pathing
SET @NPC := 201800;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=584.4202,`position_y`=188.9149,`position_z`=509.6726 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,584.4202,188.9149,509.6726,0,0,0,100,0),
(@PATH,2,583.6736,193.9653,509.7404,3000,0,48,100,0),
(@PATH,3,583.6736,193.9653,509.7404,3000,0,48,100,0),
(@PATH,4,583.6736,193.9653,509.7404,3000,0,48,100,0),
(@PATH,5,583.6736,193.9653,509.7404,3000,0,48,100,0),
(@PATH,6,594.0781,190.2622,508.8613,0,0,0,100,0),
(@PATH,7,604.9809,191.5451,507.6583,0,0,0,100,0),
(@PATH,8,617.8438,191.3455,507.5206,0,0,0,100,0),
(@PATH,9,633.1597,186.8281,508.6275,3000,0,48,100,0),
(@PATH,10,633.1597,186.8281,508.6275,3000,0,48,100,0),
(@PATH,11,624.3472,190.9705,507.7706,0,0,0,100,0),
(@PATH,12,613.3229,189.9236,507.3956,0,0,0,100,0),
(@PATH,13,604.5156,189.651,507.3956,0,0,0,100,0),
(@PATH,14,593.9844,187.4479,508.9778,0,0,0,100,0),
(@PATH,15,584.4202,188.9149,509.6726,0,0,0,100,0);
DELETE FROM `waypoint_scripts` WHERE `id`=48;
INSERT INTO `waypoint_scripts` (`id`,`delay`,`command`,`datalong`,`guid`) VALUES
(48,0,1,38,67);

-- Add Overlord Drakuru riders to Stonespine Gargoyle
UPDATE creature_template SET InhabitType=4,`flags_extra`=`flags_extra`|128 WHERE entry=28717;
DELETE FROM `creature` WHERE `id`=28717 AND `map`=658;
DELETE FROM `vehicle_template_accessory` WHERE `entry`=36896;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(36896,28717,1,0, 'Overlord Drakuru on Stonespine Gargoyle',6,30000);
-- [Q] Arelion's Mistress
-- Viera Sunwhisper SAI
-- Twinkle SAI
SET @ENTRY_VIERA := 17226;
SET @ENTRY_TWINKLE := 17230;
SET @QUEST_PLEASURES := 9483;
SET @SPELL_RETRIBUTION := 30077;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@ENTRY_VIERA,@ENTRY_TWINKLE);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY_VIERA,@ENTRY_TWINKLE,@ENTRY_VIERA*100,@ENTRY_VIERA*100+1);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY_VIERA,0,0,0,20,0,100,0,@QUEST_PLEASURES,0,0,0,80,@ENTRY_VIERA*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Quest Finish - Run Script'),
(@ENTRY_VIERA*100,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Viera Sunwhisper - On Script - Remove Quest Flag"),
(@ENTRY_VIERA*100,9,1,0,0,0,100,0,2000,2000,0,0,53,0,@ENTRY_VIERA,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Start WP 1'),
(@ENTRY_VIERA*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 0'),
(@ENTRY_VIERA*100,9,3,0,0,0,100,0,0,0,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Stand Up'),
(@ENTRY_VIERA*100,9,4,0,0,0,100,0,6500,6500,0,0,45,0,1,0,0,0,0,10,61963,@ENTRY_TWINKLE,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Data 0 1 Twinkle'),
(@ENTRY_VIERA,0,1,2,40,0,100,0,10,@ENTRY_VIERA,0,0,66,0,0,0,0,0,0,11,@ENTRY_TWINKLE,15,0,0,0,0,0,'Viera Sunwhisper - On WP 10 - Face Twinkle'),
(@ENTRY_VIERA,0,2,0,61,0,100,0,0,0,0,0,54,1000000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On WP 10 - Pause WP'),

(@ENTRY_TWINKLE,0,0,0,38,0,100,0,0,1,0,0,53,1,@ENTRY_TWINKLE,0,0,0,0,1,0,0,0,0,0,0,0,'Twinkle - On Data 0 1 Set - Start WP 1 (run)'),
(@ENTRY_TWINKLE,0,1,0,40,0,100,0,13,@ENTRY_TWINKLE,0,0,54,1000000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Twinkle - On WP 13 - Pause WP'),
(@ENTRY_TWINKLE,0,2,0,38,0,100,0,1,2,0,0,53,1,@ENTRY_TWINKLE*10,0,0,0,0,1,0,0,0,0,0,0,0,'Twinkle - On Data Set 1 2 - Start WP 2 (run)'),
(@ENTRY_TWINKLE,0,3,0,40,0,100,0,4,@ENTRY_TWINKLE*10,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On WP 4 (2) - Force Despawn'),

(@ENTRY_VIERA,0,3,0,8,0,100,0,@SPELL_RETRIBUTION,0,0,0,80,@ENTRY_VIERA*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Spellhit - Run Second Script'),
(@ENTRY_VIERA*100+1,9,0,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 1'),
(@ENTRY_VIERA*100+1,9,1,0,0,0,100,0,0,0,0,0,33,@ENTRY_VIERA,0,0,0,0,0,7,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Quest Credit'),
(@ENTRY_VIERA*100+1,9,2,0,0,0,100,0,3000,3000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 2'),
(@ENTRY_VIERA*100+1,9,3,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,9,@ENTRY_TWINKLE,0,25,0,0,0,0,'Twinkle - On Script - Say Line 0'),
(@ENTRY_VIERA*100+1,9,4,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Say Line 3'),
(@ENTRY_VIERA*100+1,9,5,0,0,0,100,0,0,0,0,0,45,1,2,0,0,0,0,10,61963,@ENTRY_TWINKLE,0,0,0,0,0,'Viera Sunwhisper - On Script - Set Data 1 2 Twinkle'),
(@ENTRY_VIERA*100+1,9,6,0,0,0,100,0,0,0,0,0,53,1,@ENTRY_VIERA*10,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On Script - Start WP 2 (run)'),
(@ENTRY_VIERA,0,4,0,40,0,100,0,4,@ENTRY_VIERA*10,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Viera Sunwhisper - On WP 4 (2) - Force Despawn');

-- Waypoints for Viera Sunwhisper
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY_VIERA,@ENTRY_VIERA*10);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY_VIERA,1,-653.739197,4145.138184,64.200729,'Viera Sunwhisper'),
(@ENTRY_VIERA,2,-658.875732,4147.715332,64.168304,'Viera Sunwhisper'),
(@ENTRY_VIERA,3,-681.465088,4147.636230,64.118073,'Viera Sunwhisper'),
(@ENTRY_VIERA,4,-686.400696,4161.865234,59.707859,'Viera Sunwhisper'),
(@ENTRY_VIERA,5,-695.956909,4179.237305,57.618931,'Viera Sunwhisper'),
(@ENTRY_VIERA,6,-699.832153,4189.959473,57.503750,'Viera Sunwhisper'),
(@ENTRY_VIERA,7,-708.518616,4184.436035,55.275894,'Viera Sunwhisper'),
(@ENTRY_VIERA,8,-716.137268,4178.130371,52.637508,'Viera Sunwhisper'),
(@ENTRY_VIERA,9,-719.865295,4174.992676,51.554867,'Viera Sunwhisper'),
(@ENTRY_VIERA,10,-720.839417,4162.232422,50.805923,'Viera Sunwhisper'),

(@ENTRY_VIERA*10,1,-722.323486,4147.936523,50.337898,'Viera Sunwhisper'),
(@ENTRY_VIERA*10,2,-726.639343,4125.156250,48.479683,'Viera Sunwhisper'),
(@ENTRY_VIERA*10,3,-727.648315,4109.684082,47.528461,'Viera Sunwhisper'),
(@ENTRY_VIERA*10,4,-727.874329,4093.438721,46.446579,'Viera Sunwhisper');

-- Waypoints for Twinkle
DELETE FROM `waypoints` WHERE `entry` IN (@ENTRY_TWINKLE,@ENTRY_TWINKLE*10);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY_TWINKLE,1,-605.445190,4165.205078,64.081802,'Twinkle'),
(@ENTRY_TWINKLE,2,-619.293335,4161.776855,63.217815,'Twinkle'),
(@ENTRY_TWINKLE,3,-629.536560,4153.708984,64.067123,'Twinkle'),
(@ENTRY_TWINKLE,4,-644.773438,4151.062988,64.174675,'Twinkle'),
(@ENTRY_TWINKLE,5,-658.875732,4147.715332,64.168304,'Twinkle'),
(@ENTRY_TWINKLE,6,-681.465088,4147.636230,64.118073,'Twinkle'),
(@ENTRY_TWINKLE,7,-686.400696,4161.865234,59.707859,'Twinkle'),
(@ENTRY_TWINKLE,8,-695.956909,4179.237305,57.618931,'Twinkle'),
(@ENTRY_TWINKLE,9,-699.832153,4189.959473,57.503750,'Twinkle'),
(@ENTRY_TWINKLE,10,-708.518616,4184.436035,55.275894,'Twinkle'),
(@ENTRY_TWINKLE,11,-716.137268,4178.130371,52.637508,'Twinkle'),
(@ENTRY_TWINKLE,12,-719.865295,4174.992676,51.554867,'Twinkle'),
(@ENTRY_TWINKLE,13,-720.636292,4166.637695,50.815567,'Twinkle'),

(@ENTRY_TWINKLE*10,1,-722.323486,4147.936523,50.337898,'Twinkle'),
(@ENTRY_TWINKLE*10,2,-726.639343,4125.156250,48.479683,'Twinkle'),
(@ENTRY_TWINKLE*10,3,-727.648315,4109.684082,47.528461,'Twinkle'),
(@ENTRY_TWINKLE*10,4,-727.874329,4093.438721,46.446579,'Twinkle');

-- Spawn spell focus object on correct position
DELETE FROM `gameobject` WHERE `id`=300071 AND `guid`=303;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(303,300071,530,1,1,-720.803,4162.77,50.7916,4.61029,0,0,0.742267,-0.670104,300,0,1);

-- Texts
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY_VIERA,@ENTRY_TWINKLE);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY_VIERA,0,0,"Ok, let's go. I know just the perfect spot!",12,0,100,0,0,0,'Viera Sunwhisper'),
(@ENTRY_VIERA,1,0,"I can't wait to try this wine!",12,0,100,0,0,0,'Viera Sunwhisper'),
(@ENTRY_VIERA,2,0,"What... is happening... to me? Get this cat away from me!",12,0,100,0,0,0,'Viera Sunwhisper'),
(@ENTRY_VIERA,3,0,"%s scurries away, attempting to flee from Twinkle",16,0,100,0,0,0,'Viera Sunwhisper'),

(@ENTRY_TWINKLE,0,0,"%s looks at Viera Sunwhisper with very hungry eyes",16,0,100,0,0,0,'Twinkle');
-- Add Missing Ice Wall, Pit of Saron
SET @GUID := 305;
DELETE FROM `gameobject` WHERE `guid`=@GUID;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(@GUID,201885,658,3,1,932.2674,-80.6684,591.6761,2.286379,0,0,0,0,300,100,1);
-- Spell area spells for entering POS
DELETE FROM `spell_area` WHERE `spell` IN (70056,70057);
INSERT INTO `spell_area` (`spell`,`area`,`quest_start`,`quest_start_active`,`quest_end`,`aura_spell`,`racemask`,`gender`,`autocast`) VALUES
(70056,4904,0,0,0,0,690,2,1), -- Send Script Event (22717)
(70057,4904,0,0,0,0,1101,2,1); -- Send Script Event (22718)

-- Fix flags and equipment for Ymirjar Deathbringer
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~256 WHERE `entry` IN (36892,37641);
UPDATE `creature_template` SET `equipment_id`=2444 WHERE `entry`=37641;
DELETE FROM `spell_target_position` WHERE `id` IN (67834, 68081);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(67834, 571, 3167.01, 5586.04, 880.067, 0),
(68081, 571, 5857.252, 516.8015, 599.82, 2.987);

UPDATE `spell_target_position` SET `target_position_x`=6136.89,`target_position_y`=4785.55,`target_position_z`=100.673 WHERE `id`=67835;
UPDATE `spell_target_position` SET `target_position_x`=8301.39,`target_position_y`=1501.34,`target_position_z`=870.555 WHERE `id`=67836;
DELETE FROM `trinity_string` WHERE `entry` = 555;
INSERT INTO `trinity_string` (`entry`,`content_default`) VALUES
(555,"SetData performed on [GUID: %u, entry: %u, name: %s] Field: %u, Data: %u, with %s");

DELETE FROM `command` WHERE `name` = "npc set data";
INSERT INTO `command` (`name`,`security`,`help`) VALUES
("npc set data", 3, "Syntax: .npc set data $field $data
Sets data for the selected creature. Used for testing Scripting");
-- Fixup for Quest Quest:The Path to the Citadel "Alliance and Horde"

-- Alliance slave add missing equipments
UPDATE `creature_template` SET `equipment_id`=254 WHERE `entry`=36767;

-- Horde Slave SAI
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN (36770,36771,36772,36773);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (36770,36771,36772,36773);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (3677000);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(36770,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Reset - Emotestate'),
(36771,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Reset - Emotestate'),
(36772,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Reset - Emotestate'),
(36773,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Reset - Emotestate'),
(36770,0,1,0,8,0,100,7,71281,0,0,0,80,3677000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Spellhit - Run Script'),
(36771,0,1,0,8,0,100,7,71281,0,0,0,80,3677000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Spellhit - Run Script'),
(36772,0,1,0,8,0,100,7,71281,0,0,0,80,3677000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Spellhit - Run Script'),
(36773,0,1,0,8,0,100,7,71281,0,0,0,80,3677000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - On Spellhit - Run Script'),
-- Script
(3677000,9,0,0,0,0,100,0,500,500,500,500,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Horde Slave - Script - Turnto envoker'),
(3677000,9,1,0,0,0,100,0,500,500,500,500,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - say text'),
(3677000,9,2,0,0,0,100,0,100,100,100,100,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - set unitflag'),
(3677000,9,3,0,0,0,100,0,100,100,100,100,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - set faction'),
(3677000,9,4,0,0,0,100,0,100,100,100,100,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - set Emotestate'),
(3677000,9,5,0,0,0,100,0,100,100,100,100,33,36770,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Horde Slave - Script - give quest credit'),
(3677000,9,6,0,0,0,100,0,100,100,100,100,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - set run on'),
(3677000,9,7,0,0,0,100,0,500,500,500,500,69,1,0,0,0,0,0,19,23837,70,0,0,0,0,0, 'Horde Slave - Script - move to closest trigger'),
(3677000,9,8,0,0,0,100,0,8000,8000,8000,8000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Horde Slave - Script - despawn');

-- Alliance Slave SAI
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='' WHERE `entry` IN (36764,36765,36766,36767);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (36764,36765,36766,36767);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (3676400);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(36764,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Reset - Emotestate'),
(36765,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Reset - Emotestate'),
(36766,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Reset - Emotestate'),
(36767,0,0,0,11,0,100,6,0,0,0,0,17,233,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Reset - Emotestate'),
(36764,0,1,0,8,0,100,7,71281,0,0,0,80,3676400,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Spellhit - Run Script'),
(36765,0,1,0,8,0,100,7,71281,0,0,0,80,3676400,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Spellhit - Run Script'),
(36766,0,1,0,8,0,100,7,71281,0,0,0,80,3676400,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Spellhit - Run Script'),
(36767,0,1,0,8,0,100,7,71281,0,0,0,80,3676400,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - On Spellhit - Run Script'),
-- Script
(3676400,9,0,0,0,0,100,0,500,500,500,500,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Alliance Slave - Script - Turnto envoker'),
(3676400,9,1,0,0,0,100,0,500,500,500,500,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - say text'),
(3676400,9,2,0,0,0,100,0,100,100,100,100,18,512,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - set unitflag'),
(3676400,9,3,0,0,0,100,0,100,100,100,100,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - set faction'),
(3676400,9,4,0,0,0,100,0,100,100,100,100,17,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - set Emotestate'),
(3676400,9,5,0,0,0,100,0,100,100,100,100,33,36764,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Alliance Slave - Script - give quest credit'),
(3676400,9,6,0,0,0,100,0,100,100,100,100,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - set run on'),
(3676400,9,7,0,0,0,100,0,500,500,500,500,69,1,0,0,0,0,0,19,23837,70,0,0,0,0,0, 'Alliance Slave - Script - move to closest trigger'),
(3676400,9,8,0,0,0,100,0,8000,8000,8000,8000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Alliance Slave - Script - despawn');

-- Ball and chain SAI
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (201969);
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid` IN (201969);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(201969,1,0,0,64,0,100,6,0,0,0,0,85,71281,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Ball and chain - On Gossip Hello - Envoker cast on self');

-- Spell Conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=71281;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,71281,0,31,3,36770,0,0,'','Spell 71281 targets entry 36770'),
(13,1,71281,1,31,3,36771,0,0,'','Spell 71281 targets entry 36771'),
(13,1,71281,2,31,3,36772,0,0,'','Spell 71281 targets entry 36772'),
(13,1,71281,3,31,3,36773,0,0,'','Spell 71281 targets entry 36773'),
(13,1,71281,4,31,3,36764,0,0,'','Spell 71281 targets entry 36764'),
(13,1,71281,5,31,3,36765,0,0,'','Spell 71281 targets entry 36765'),
(13,1,71281,6,31,3,36766,0,0,'','Spell 71281 targets entry 36766'),
(13,1,71281,7,31,3,36767,0,0,'','Spell 71281 targets entry 36767');

-- Creature text from sniff
DELETE FROM `creature_text` WHERE `entry` IN (36770,36771,36772,36773,36764,36765,36766,36767);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
-- Alliance Slaves
(36764,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Alliance Slave'),
(36764,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Alliance Slave'),
(36764,0,2, 'Have my babies.',12,0,100,0,0,0, 'Alliance Slave'),
(36764,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Alliance Slave'),
(36764,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Alliance Slave'),
(36765,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Alliance Slave'),
(36765,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Alliance Slave'),
(36765,0,2, 'Have my babies.',12,0,100,0,0,0, 'Alliance Slave'),
(36765,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Alliance Slave'),
(36765,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Alliance Slave'),
(36766,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Alliance Slave'),
(36766,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Alliance Slave'),
(36766,0,2, 'Have my babies.',12,0,100,0,0,0, 'Alliance Slave'),
(36766,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Alliance Slave'),
(36766,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Alliance Slave'),
(36767,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Alliance Slave'),
(36767,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Alliance Slave'),
(36767,0,2, 'Have my babies.',12,0,100,0,0,0, 'Alliance Slave'),
(36767,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Alliance Slave'),
(36767,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Alliance Slave'),
-- Horde Slaves
(36770,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Horde Slave'),
(36770,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Horde Slave'),
(36770,0,2, 'Have my babies.',12,0,100,0,0,0, 'Horde Slave'),
(36770,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Horde Slave'),
(36770,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Horde Slave'),
(36771,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Horde Slave'),
(36771,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Horde Slave'),
(36771,0,2, 'Have my babies.',12,0,100,0,0,0, 'Horde Slave'),
(36771,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Horde Slave'),
(36771,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Horde Slave'),
(36772,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Horde Slave'),
(36772,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Horde Slave'),
(36772,0,2, 'Have my babies.',12,0,100,0,0,0, 'Horde Slave'),
(36772,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Horde Slave'),
(36772,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Horde Slave'),
(36773,0,0, 'You''re a beautiful sight... you have no idea.',12,0,100,0,0,0, 'Horde Slave'),
(36773,0,1, '%s lets his mining pick drag on the ground as she approaches, clearly exhausted.',16,0,100,0,0,0, 'Horde Slave'),
(36773,0,2, 'Have my babies.',12,0,100,0,0,0, 'Horde Slave'),
(36773,0,3, 'If by life or death I can repay you, I will.',12,0,100,0,0,0, 'Horde Slave'),
(36773,0,4, 'I''m going to return to the front of the quarry. Kill a few extra for me.',12,0,100,0,0,0, 'Horde Slave');
-- Update Scourgelord Tyrannus "Make him fly"
UPDATE `creature_template_addon` SET `bytes1`=50331648 WHERE `entry`=36794;

-- Put Rimefang in the air and make him fly
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36661;
UPDATE `creature_template_addon` SET `bytes1`=50331648 WHERE `entry`=36661;

-- Deathwhisper Necrolyte SAI
SET @ENTRY   := 36788; -- NPC entry
SET @SPELL1  := 69577; -- Shadow Bolt
SET @SPELL2  := 69578; -- Conversion Beam
SET @SPELL3  := 45104; -- Shadow Channelling
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,100,100,3000,3000,11,@SPELL1,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Deathwhisper Necrolyte - Combat - Cast Shadow Bolt'),
(@ENTRY,0,1,0,0,0,100,6,9000,9000,24000,24000,11,@SPELL2,0,0,0,0,0,5,0,0,0,0,0,0,0, 'Deathwhisper Necrolyte - Combat - Cast Conversion Beam');

-- Deathwhisper Necrolyte pathing
SET @NPC := 202231;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=592.975,`position_y`=176.104,`position_z`=508.746 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,596.0208,175.5243,508.3654,0,0,0,100,0),
(@PATH,2,605.2656,157.7101,507.2126,0,0,0,100,0),
(@PATH,3,604.4063,146.283,507.3376,0,0,0,100,0),
(@PATH,4,592.2899,131.4271,507.8163,0,0,0,100,0),
(@PATH,5,577.4531,118.224,508.3163,0,0,0,100,0),
(@PATH,6,563.0695,103.7309,514.1504,0,0,0,100,0),
(@PATH,7,557.7743,89.41319,523.1727,0,0,0,100,0),
(@PATH,8,560.9583,77.65278,525.4227,0,0,0,100,0),
(@PATH,9,560.9583,77.65278,525.4227,0,0,0,100,0),
(@PATH,10,571.0139,69.43403,525.2753,0,0,0,100,0),
(@PATH,11,560.9583,77.65278,525.4227,0,0,0,100,0),
(@PATH,12,557.7743,89.41319,523.1727,0,0,0,100,0),
(@PATH,13,563.0695,103.7309,514.1504,0,0,0,100,0),
(@PATH,14,577.4531,118.224,508.3163,0,0,0,100,0),
(@PATH,15,592.2899,131.4271,507.8163,0,0,0,100,0),
(@PATH,16,604.4063,146.283,507.3376,0,0,0,100,0),
(@PATH,17,605.2656,157.7101,507.2126,0,0,0,100,0),
(@PATH,18,596.0208,175.5243,508.3654,0,0,0,100,0);

DELETE FROM `creature_formations` WHERE `leaderGUID`=202231;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(202231,202231,0,0,2),
(202231,202099,7,288,2),
(202231,202282,7,324,2),
(202231,202125,7,360,2),
(202231,202203,7,36,2),
(202231,201960,7,72,2);

-- Remove a dupe spawn
DELETE FROM `creature` WHERE `guid`=201998;
DELETE FROM `creature_addon` WHERE `guid`=201998;
-- [Q] See You on the Other Side

-- Gan'jo SAI
SET @ENTRY := 26924;
SET @QUEST := 12121;
SET @GOSSIP := 10220;
SET @SPELL_RESURRECT := 61613;
UPDATE `creature_template` SET `npcflag`=3,`AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,@GOSSIP,0,0,0,11,@SPELL_RESURRECT,1,0,0,0,0,7,0,0,0,0,0,0,0,"Gan'jo - On Gossip Select - Cast Ganjo Resurrection"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gan'jo - On Gossip Select - Close Gossip");

-- Essence of Warlord Jin'arrak SAI
SET @ENTRY := 26902;
SET @SPELL_DIE_EFFECT := 61611;
SET @SPELL_CAMERA_SHAKE := 47533;
UPDATE `creature_template` SET `AIName`='SmartAI',`flags_extra`=128 WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY,@ENTRY*100) AND `source_type` IN (0,9);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Just Summoned - Run Script"),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,85,@SPELL_CAMERA_SHAKE,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Invoker Cast Camera Shake - Small"),
(@ENTRY*100,9,1,0,0,0,100,0,4000,4000,0,0,33,@ENTRY,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Killed Monster Credit"),
(@ENTRY*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Monster Whisper Line 0"),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,85,@SPELL_CAMERA_SHAKE,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Invoker Cast Camera Shake - Small"),
(@ENTRY*100,9,4,0,0,0,100,0,3000,3000,0,0,85,@SPELL_DIE_EFFECT,0,0,0,0,0,7,0,0,0,0,0,0,0,"Essence of Warlord Jin'arrak - On Script - Invoker Cast On The Other Side");

-- Essence of Warlord Jin'arrak text
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES 
(@ENTRY,0,0,"How dare you summon me without an offering!",42,0,0,0,0,0,"Essence of Warlord Jin'arrak");

-- Ganjo's Resurrection removes On The Other Side
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=@SPELL_RESURRECT;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(@SPELL_RESURRECT,-@SPELL_DIE_EFFECT,1,"Ganjo's Resurrection removes On The Other Side");

-- Conditions for Gan'jo's gossip option
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@GOSSIP;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTarget`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`comment`) VALUES
(15,@GOSSIP,0,0,0,1,@SPELL_DIE_EFFECT,0,"Ganjo's Gossip - requires aura See You On The Other Side"),
(15,@GOSSIP,0,0,1,9,@QUEST,0,"Ganjo's Gossip - requires quest See You On The Other Side to be rewarded");
-- [Q] Leave Nothing to Chance

-- Lower Wintergarde Mine Shaft and Upper Wintergarde Mine Shaft
UPDATE `creature_template` SET `MovementType`=0,`flags_extra`=`flags_extra`|128 WHERE `entry`IN (27437,27436);
UPDATE `creature` SET `MovementType`=0,`spawndist`=0 WHERE `id` IN (27437,27436);

-- Wintergarde Mine Bomb SAI
SET @ENTRY := 27435;
SET @SPELL_EXPLOSION := 48742;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,1,14000,14000,0,0,11,@SPELL_EXPLOSION,2,0,0,0,0,1,0,0,0,0,0,0,0,"Wintergarde Mine Bomb - Out of Combat - Cast Wintergarde Mine Explosion"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wintergarde Mine Bomb - On Wintergarde Mine Explosion Cast - Forced Despawn");

-- Spawn missing spell focus object for upper mine
DELETE FROM `gameobject` WHERE `id`=188711 AND `guid`=370;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(370,188711,571,1,1,3898.18,-881.748,119.533,0.421023,0,0,0.20896,0.977924,300,0,1);

-- Spawn missing Upper Wintergarde Mine Shaft
DELETE FROM `creature` WHERE `id`=27436 AND `guid`=42576;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(42576,27436,571,1,1,0,0,3899.86,-883.613,119.536,0.0636665,300,0,0,42,0,0,0,0,0);

-- Spellscriptname
DELETE FROM `spell_script_names` WHERE `spell_id`=@SPELL_EXPLOSION;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(@SPELL_EXPLOSION,'spell_q12277_wintergarde_mine_explosion');

-- The conditions will make it works exactly like it should. Thanks a lot Josh.
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=@SPELL_EXPLOSION;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(13,1,@SPELL_EXPLOSION,0,31,3,27437,0,0,'',"Wintergarde Mine Explosion - Lower Wintergarde Mine Shaft"), -- Effect 0 - SPELL_EFFECT_DUMMY
(13,1,@SPELL_EXPLOSION,1,31,3,27436,0,0,'',"Wintergarde Mine Explosion - Upper Wintergarde Mine Shaft"), -- Effect 0 - SPELL_EFFECT_DUMMY
(13,2,@SPELL_EXPLOSION,0,31,4,0,0,0,'',"Wintergarde Mine Explosion - Targets Players"),                          -- Effect 1 - SPELL_EFFECT_KNOCK_BACK
(13,4,@SPELL_EXPLOSION,0,31,5,188712,0,0,'',"Wintergarde Mine Explosion - Wintergarde Mine Cave In (2)");    -- Effect 2 - SPELL_EFFECT_ACTIVATE_OBJECT
-- fix creauture_template loot id for infinite corruptor. could have sworn this was already in the db.
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (32313,32273);
 -- Remove obsolete requirement 'cooking profession' from quest 'Beer Basted Boar Ribs' (thx tifkat) closes #5198
UPDATE `quest_template` SET `RequiredSkillId`=0, `RequiredSkillPoints`=0 WHERE `Id`=384;

-- Fix proc for Death's Verdict/Choice (author: kandera) closes #6041
UPDATE `spell_proc_event` SET `procFlags` = 0, `procEx` = `procEx`|262144 WHERE `entry` in (67702, 67771);

-- Disables quest "Desperate Research" for all factions author trista closes #5285
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` in (12782,12783,12811,12784,12752,12775,12777,12753,12808,12772);
INSERT INTO `disables` (`sourceType`,`entry`,`flags`,`params_0`,`params_1`,`comment`) VALUES
(1,12782,0,0,0,'Disable quest from Scourge Invasion for Blood Elves'),
(1,12783,0,0,0,'Disable quest from Scourge Invasion for Orcs'),
(1,12811,0,0,0,'Disable quest from Scourge Invasion for Trolls'),
(1,12784,0,0,0,'Disable quest from Scourge Invasion for Tauren'),
(1,12752,0,0,0,'Disable quest from Scourge Invasion for undead'),
(1,12775,0,0,0,'Disable quest from Scourge Invasion for Human'),
(1,12777,0,0,0,'Disable quest from Scourge Invasion for Draenei'),
(1,12753,0,0,0,'Disable quest from Scourge Invasion for Dwarves'),
(1,12808,0,0,0,'Disable quest from Scourge Invasion for Gnomes'),
(1,12772,0,0,0,'Disable quest from Scourge Invasion for Night Elves');
-- Disables scourge invasion connected quests listed below
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` in (12788,12812,12785,12786,12787,12774,12776,12771,12809,12773);
INSERT INTO `disables` (`sourceType`,`entry`,`flags`,`params_0`,`params_1`,`comment`) VALUES
(1,12788,0,0,0,'Disable quest from Scourge Invasion for Blood Elves'),
(1,12812,0,0,0,'Disable quest from Scourge Invasion for Orcs'),
(1,12785,0,0,0,'Disable quest from Scourge Invasion for Trolls'),
(1,12786,0,0,0,'Disable quest from Scourge Invasion for Tauren'),
(1,12787,0,0,0,'Disable quest from Scourge Invasion for undead'),
(1,12774,0,0,0,'Disable quest from Scourge Invasion for Human'),
(1,12776,0,0,0,'Disable quest from Scourge Invasion for Draenei'),
(1,12771,0,0,0,'Disable quest from Scourge Invasion for Dwarves'),
(1,12809,0,0,0,'Disable quest from Scourge Invasion for Gnomes'),
(1,12773,0,0,0,'Disable quest from Scourge Invasion for Night Elves');

-- Limit Bloodgem Shard use to Netherstorm Cristal Target author: nelegalno closes #4165
DELETE FROM `conditions` WHERE (`SourceEntry`=34367 AND `SourceTypeOrReferenceId`=17 AND `ConditionTypeOrReference`=29);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,34367,0,29,19421,15,0,64,'','Limit Bloodgem Shard use to Netherstorm Cristal Target');

-- Path of xx and A Change of Heart (Ashen Band rings) author: studioworks closes #2544
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `id` IN
(24827,24834,24835,24823,24828,24829,25239,25240,25242,24826,24832,24833,24825,24830,24831,24819,24820,24821,24822,24836,24837,24838,24839,24840,24841,24842,24843,24844,24845,24846,24847,25246,25247,25248,25249);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=19 AND `SourceEntry` IN
-- Paths
(24827,24834,24835,24823,24828,24829,25239,25240,25242,24826,24832,24833,24825,24830,24831,
-- A Change of Heart
24819,24820,24821,24822,24836,24837,24838,24839,24840,24841,24842,24843,24844,24845,24846,24847,25246,25247,25248,25249);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`Comment`) VALUES
-- Path of Courage
(19,0,24827,0,2,50375,1,0,'Path of Courage 1'),
(19,0,24834,0,2,50388,1,0,'Path of Courage 2'),
(19,0,24835,0,2,50403,1,0,'Path of Courage 3'),
-- Path of Destruction
(19,0,24823,0,2,50384,1,0,'Path of Destruction 1'),
(19,0,24828,0,2,50377,1,0,'Path of Destruction 2'),
(19,0,24829,0,2,50397,1,0,'Path of Destruction 3'),
-- Path of Might
(19,0,25239,0,2,52569,1,0,'Path of Might 1'),
(19,0,25240,0,2,52570,1,0,'Path of Might 2'),
(19,0,25242,0,2,52571,1,0,'Path of Might 3'),
-- Path of Vengeance
(19,0,24826,0,2,50376,1,0,'Path of Vengeance 1'),
(19,0,24832,0,2,50387,1,0,'Path of Vengeance 2'),
(19,0,24833,0,2,50401,1,0,'Path of Vengeance 3'),
-- Path of Wisdom
(19,0,24825,0,2,50378,1,0,'Path of Wisdom 1'),
(19,0,24830,0,2,50386,1,0,'Path of Wisdom 2'),
(19,0,24831,0,2,50399,1,0,'Path of Wisdom 3'),
-- A Change of Heart
(19,0,24819,0,2,50377,1,0,'A Change of Heart'),
(19,0,24820,0,2,50376,1,0,'A Change of Heart'),
(19,0,24821,0,2,50375,1,0,'A Change of Heart'),
(19,0,24822,0,2,50378,1,0,'A Change of Heart'),
(19,0,24836,0,2,50384,1,0,'A Change of Heart'),
(19,0,24837,0,2,50386,1,0,'A Change of Heart'),
(19,0,24838,0,2,50387,1,0,'A Change of Heart'),
(19,0,24839,0,2,50388,1,0,'A Change of Heart'),
(19,0,24840,0,2,50397,1,0,'A Change of Heart'),
(19,0,24841,0,2,50399,1,0,'A Change of Heart'),
(19,0,24842,0,2,50401,1,0,'A Change of Heart'),
(19,0,24843,0,2,50403,1,0,'A Change of Heart'),
(19,0,24844,0,2,50398,1,0,'A Change of Heart'),
(19,0,24845,0,2,50400,1,0,'A Change of Heart'),
(19,0,24846,0,2,50402,1,0,'A Change of Heart'),
(19,0,24847,0,2,50404,1,0,'A Change of Heart'),
(19,0,25246,0,2,52572,1,0,'A Change of Heart'),
(19,0,25247,0,2,52569,1,0,'A Change of Heart'),
(19,0,25248,0,2,52570,1,0,'A Change of Heart'),
(19,0,25249,0,2,52571,1,0,'A Change of Heart');

-- spawn farmer torp author: zxbiohazardzx closes #6256
SET @guid := 42652; 
DELETE FROM `creature` WHERE `guid`=@guid;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`)
VALUES
(@guid,25607,571,1,1,2886.325,6385.55,92.96985,1.4512,120); -- Farmer Torp

-- Disgusting Oozeling aura author: gecko32 closes #6197
UPDATE `creature_template_addon` SET `auras`='25163' WHERE `entry`=15429;
-- Mr. Chilly
-- Add aura chilly for Periodic slide
DELETE FROM `creature_template_addon` WHERE `entry`=29726;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(29726, 0, 0, 0, 0, 0, '61811');

-- Update to Change <name> to $n in page text author: gecko32 closes #5930
UPDATE `page_text` SET `text`='This proof of deed is to verify that $n slew Margol the Rager, scourge of the searing gorge.$B$BThe Ironforge museum recognizes this achievement and thanks the bearer for their generous contribution.$B$B-Head Curator Thorius Stonetender' WHERE `entry`=1231;

-- Update frost shock and you to only be for shamans. author: whit33r closes #4727
UPDATE `quest_template` SET `RequiredClasses`=64 WHERE `id` = 7505;

-- fixes ashen band of destruction proc author: kandera
DELETE FROM `spell_proc_event` WHERE `entry` = 72417;
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(72417,0,0,0,0,0,327680,0,0,0,60);

-- fixes quest credit from Fel reaver no thanks! author: tREAk & shlomi1515 closes #3715
UPDATE `spell_dbc` SET `Effect1`=16,`EffectMiscValue1`=10855 WHERE `id`=38758;
DELETE FROM `creature_ai_scripts` WHERE creature_id=22293;

-- fix areatrigger for wickerman camp author: boomper closes #3549
DELETE FROM `areatrigger_involvedrelation` WHERE `id` =3991;
INSERT INTO `areatrigger_involvedrelation` (`id`, `quest`) 
VALUES (3991,1658);

-- yous have da darkrune should be daily author: kaelima closes #3457
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags` | 1 WHERE `id` = 11027;

-- fix infinite corruptor loot id author: vincent-michael
UPDATE `creature_template` SET `lootid` = 32313 WHERE `entry` =32313;
-- Spawn Disturbed Glacial Revenant
DELETE FROM `creature` WHERE `guid`=201998;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`, `position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(201998,36874,658,2,1,0,0,1053.894,-93.05556,632.8575,4.223697,86400,0,0,1,0,0,0,0,0);
DELETE FROM `creature_addon` WHERE `guid`=201998;
INSERT INTO `creature_addon` (`guid`,`bytes2`) VALUES
(201998,1);

-- Disturbed Glacial Revenant SAI
SET @ENTRY := 36874; -- NPC entry
UPDATE `creature_template` SET `AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,4,0,0,12000,15000,11,55216,0,0,0,0,0,2,0,0,0,0,0,0,0, 'Disturbed Glacial Revenant - Combat - Cast Avalanche');
-- Deathwhisper Necrolyte pathing
SET @NPC := 202103;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,555.3976,303.5347,507.6232,0,0,0,100,0),
(@PATH,2,568.4896,297.9913,506.9572,0,0,0,100,0),
(@PATH,3,586.1476,292.5486,506.3322,0,0,0,100,0),
(@PATH,4,598.5833,292.6007,506.3322,0,0,0,100,0),
(@PATH,5,602.3438,300.2135,506.9457,0,0,0,100,0),
(@PATH,6,603.0573,307.5399,507.6957,0,0,0,100,0),
(@PATH,7,611.7239,316.1129,508.4457,0,0,0,100,0),
(@PATH,8,620.0677,312.684,508.1957,0,0,0,100,0),
(@PATH,9,622.184,305.0868,508.3207,0,0,0,100,0),
(@PATH,10,616.684,295.2083,507.8819,0,0,0,100,0),
(@PATH,11,613.9236,287.4288,507.0737,0,0,0,100,0),
(@PATH,12,618.5174,272.882,507.6097,0,0,0,100,0),
(@PATH,13,621.4445,263.4861,507.9438,0,0,0,100,0),
(@PATH,14,618.5174,272.882,507.6097,0,0,0,100,0),
(@PATH,15,613.9236,287.4288,507.0737,0,0,0,100,0),
(@PATH,16,616.684,295.2083,507.8819,0,0,0,100,0),
(@PATH,17,622.184,305.0868,508.3207,0,0,0,100,0),
(@PATH,18,620.0677,312.684,508.1,0,0,0,100,0),
(@PATH,19,611.7239,316.1129,508.4457,0,0,0,100,0),
(@PATH,20,603.0573,307.5399,507.6629,0,0,0,100,0),
(@PATH,21,602.3438,300.2135,506.8405,0,0,0,100,0),
(@PATH,22,598.5833,292.6007,506.3498,0,0,0,100,0),
(@PATH,23,586.1476,292.5486,506.3322,0,0,0,100,0),
(@PATH,24,568.4896,297.9913,506.9572,0,0,0,100,0);
DELETE FROM `creature_formations` WHERE `leaderGUID`=@NPC;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@NPC,@NPC,0,0,2),
(@NPC,201819,7,270,2),
(@NPC,201934,7,306,2),
(@NPC,202121,7,342,2),
(@NPC,202196,7,18,2),
(@NPC,202098,7,54,2),
(@NPC,201954,7,90,2);

-- Deathwhisper Necrolyte pathing
SET @NPC := 202273;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
UPDATE `creature` SET `position_x`=611.9375,`position_y`=117.441,`position_z`=508.0308 WHERE `guid` IN (202273,202054,201845,201914,202145,202227,201988);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,611.9375,117.441,508.0308,0,0,0,100,0),
(@PATH,2,620.9531,139.3004,506.531,0,0,0,100,0),
(@PATH,3,624.3854,153.9531,507.3376,0,0,0,100,0),
(@PATH,4,625.8316,167.6233,507.4478,0,0,0,100,0),
(@PATH,5,622.8368,183.6788,507.7706,0,0,0,100,0),
(@PATH,6,625.8316,167.6233,507.4478,0,0,0,100,0),
(@PATH,7,624.3854,153.9531,507.3376,0,0,0,100,0),
(@PATH,8,620.9531,139.3004,506.531,0,0,0,100,0),
(@PATH,9,611.9375,117.441,508.0308,0,0,0,100,0),
(@PATH,10,610.8828,99.47656,510.0737,0,0,0,100,0);
DELETE FROM `creature_formations` WHERE `leaderGUID`=@NPC;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@NPC,@NPC,0,0,2),
(@NPC,202054,7,270,2),
(@NPC,201845,7,306,2),
(@NPC,201914,7,342,2),
(@NPC,202145,7,18,2),
(@NPC,202227,7,54,2),
(@NPC,201988,7,90,2);

-- Fix previous creature removal
DELETE FROM `creature` WHERE `id`=42160;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`, `position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(42160,36881,658,3,1,0,0,592.975,176.104,510.1582,508.746,86400,0,0,1,0,0);
UPDATE `creature` SET `position_x`=611.9375,`position_y`=117.441,`position_z`=508.0308 WHERE `guid` IN (202273,202054,201845,201914,202145,202227,201988);
DELETE FROM `creature_formations` WHERE `leaderGUID`=202231;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(202231,202231,0,0,2),
(202231,202099,7,270,2),
(202231,202282,7,306,2),
(202231,202125,7,342,2),
(202231,202203,7,18,2),
(202231,201960,7,54,2),
(202231,42160,7,90,2);

-- Update Scourgelord Tyrannus "Make him fly"
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry`=36794;
-- Deathwhisper Necrolyte pathing
SET @NPC := 202063;
SET @PATH := @NPC*10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
UPDATE `creature` SET `position_x`=631.8229,`position_y`=229.7292,`position_z`=508.0604 WHERE `guid` IN (202028,202000,201957,201820,202122,202199);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes2`) VALUES (@NPC,@PATH,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,631.8229,229.7292,508.0604,0,0,0,100,0),
(@PATH,2,643.8733,215.2674,508.2268,0,0,0,100,0),
(@PATH,3,659.0139,215.9635,507.8518,0,0,0,100,0),
(@PATH,4,674.184,213.5833,508.8467,0,0,0,100,0),
(@PATH,5,678.8004,201.066,508.4717,0,0,0,100,0),
(@PATH,6,662.4636,183.0694,507.9585,0,0,0,100,0),
(@PATH,7,650.8941,171.5642,507.7085,0,0,0,100,0),
(@PATH,8,637.7292,155.2569,507.9196,0,0,0,100,0),
(@PATH,9,644.6389,130.2639,510.4212,0,0,0,100,0),
(@PATH,10,654.9896,121.3038,511.9212,0,0,0,100,0),
(@PATH,11,677.7448,136.6528,512.7715,0,0,0,100,0),
(@PATH,12,678.2847,149.1233,507.8965,0,0,0,100,0),
(@PATH,13,677.7448,136.6528,512.7715,0,0,0,100,0),
(@PATH,14,654.9896,121.3038,511.9212,0,0,0,100,0),
(@PATH,15,644.6389,130.2639,510.4212,0,0,0,100,0),
(@PATH,16,637.7292,155.2569,507.9196,0,0,0,100,0),
(@PATH,17,650.8941,171.5642,507.7085,0,0,0,100,0),
(@PATH,18,662.4636,183.0694,507.9585,0,0,0,100,0),
(@PATH,19,678.8004,201.066,508.4717,0,0,0,100,0),
(@PATH,20,674.184,213.5833,508.8467,0,0,0,100,0),
(@PATH,21,659.0139,215.9635,507.8518,0,0,0,100,0),
(@PATH,22,643.8733,215.2674,508.2268,0,0,0,100,0);
DELETE FROM `creature_formations` WHERE `leaderGUID`=@NPC;
INSERT INTO `creature_formations` (`leaderGUID`,`memberGUID`,`dist`,`angle`,`groupAI`) VALUES
(@NPC,@NPC,0,0,2),
(@NPC,202028,7,270,2),
(@NPC,202000,7,306,2),
(@NPC,201957,7,342,2),
(@NPC,201820,7,18,2),
(@NPC,202122,7,54,2),
(@NPC,202199,7,90,2);
-- Scourgelord Tyrannus pathing
SET @NPC := 201951;
SET @PATH := @NPC*10;
UPDATE `creature` SET `position_x`=873.783,`position_y`=136.9774,`position_z`=623.6115,`spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`bytes1`,`bytes2`) VALUES (@NPC,@PATH,50331648,1);
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`delay`,`move_flag`,`action`,`action_chance`,`wpguid`) VALUE
(@PATH,1,873.783,136.9774,623.6115,0,0,0,100,0),
(@PATH,2,872.9045,139.2743,622.4446,0,0,0,100,0),
(@PATH,3,888.7917,171.3403,591.3615,0,0,0,100,0),
(@PATH,4,861.3073,209.8455,591.3615,0,0,0,100,0),
(@PATH,5,830.4913,254.5556,591.3615,0,0,0,100,0),
(@PATH,6,780.4844,277.6406,591.3615,0,0,0,100,0),
(@PATH,7,732.6771,272.4635,591.3615,0,0,0,100,0),
(@PATH,8,683.9028,265.276,591.3615,0,0,0,100,0),
(@PATH,9,612.3368,284.7934,553.4998,0,0,0,100,0),
(@PATH,10,554.816,303.1858,553.4998,0,0,0,100,0),
(@PATH,11,498.1024,309.0625,553.4998,0,0,0,100,0),
(@PATH,12,470.4167,230.0174,553.4998,0,0,0,100,0),
(@PATH,13,454.0087,175.2135,553.4998,0,0,0,100,0),
(@PATH,14,492.4288,127.1806,583.1108,0,0,0,100,0),
(@PATH,15,551.2604,121.6354,583.1108,0,0,0,100,0),
(@PATH,16,647.5573,126.3542,583.1108,0,0,0,100,0),
(@PATH,17,766.2222,130.9254,583.1108,0,0,0,100,0),
(@PATH,18,829.408,42.33854,583.1108,0,0,0,100,0),
(@PATH,19,746.7101,-53.03299,583.1108,0,0,0,100,0),
(@PATH,20,663.2379,-77.32291,583.1108,0,0,0,100,0),
(@PATH,21,618.6389,3.369792,583.1108,0,0,0,100,0),
(@PATH,22,641.8559,89.27604,583.1108,0,0,0,100,0),
(@PATH,23,794.1667,115.6858,583.1108,0,0,0,100,0);
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
DELETE FROM `item_loot_template` WHERE `entry` BETWEEN 51999 AND 52005;
INSERT INTO `item_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Satchel of Helpfull Goods (level 0-25)
(51999,51964,0,1,1,1,1), -- Vigorous Belt
(51999,51968,0,1,1,1,1), -- Enumerated Wrap
(51999,51978,0,1,1,1,1), -- Earthbound Girdle
(51999,51994,25,1,1,1,1), -- Tumultuous Cloak
-- Satchel of Helpfull Goods (level 26-35)
(52000,51965,0,1,1,1,1), -- Vigorous Handguards
(52000,51973,0,1,1,1,1), -- Enumerated Handwraps
(52000,51980,0,1,1,1,1), -- Earthbound Handgrips
(52000,51996,25,1,1,1,1), -- Tumultuous Necklace
-- Satchel of Helpfull Goods (level 36-45)
(52001,51966,0,1,1,1,1), -- Vigorous Spaulders
(52001,51974,0,1,1,1,1), -- Enumerated Shoulderpads
(52001,51976,0,1,1,1,1), -- Earthbound Shoulderguards
(52001,51984,0,1,1,1,1), -- Stalwart Shoulderpads
(52001,51992,25,1,1,1,1), -- Tumultuous Ring
-- Satchel of Helpfull Goods (level 46-55)
(52002,51962,0,1,1,1,1), -- Vigorous Bracers
(52002,51963,0,1,1,1,1), -- Vigorous Stompers
(52002,51967,0,1,1,1,1), -- Enumerated Sandals
(52002,51972,0,1,1,1,1), -- Enumerated Bracers
(52002,51981,0,1,1,1,1), -- Earthbound Wristguards
(52002,51982,0,1,1,1,1), -- Earthbound Boots
(52002,51989,0,1,1,1,1), -- Stalwart Bands
(52002,51990,0,1,1,1,1), -- Stalwart Treads
-- Satchel of Helpfull Goods (level 56-60)
(52003,51959,0,1,1,1,1), -- Vigorous Belt
(52003,51971,0,1,1,1,1), -- Enumerated Belt
(52003,51977,0,1,1,1,1), -- Earthbound Girdle
(52003,51985,0,1,1,1,1), -- Stalwart Belt
(52003,51993,25,1,1,1,1), -- Turbulent Cloak
-- Satchel of Helpfull Goods (level 61-64)
(52004,51960,0,1,1,1,1), -- Vigorous Gloves
(52004,51970,0,1,1,1,1), -- Enumerated Gloves
(52004,51979,0,1,1,1,1), -- Earthbound Grips
(52004,51987,0,1,1,1,1), -- Stalwart Grips
(52004,51995,25,1,1,1,1), -- Turbulent Necklace
-- Satchel of Helpfull Goods (level 65-70)
(52005,51961,0,1,1,1,1), -- Vigorous Shoulderguards
(52005,51969,0,1,1,1,1), -- Enumerated Shoulders
(52005,51975,0,1,1,1,1), -- Earthbound Shoulders
(52005,51983,0,1,1,1,1), -- Stalwart Shoulderguards
(52005,51991,25,1,0,1,1); -- Turbulent Signet
-- -------------------------------------------------------------------
-- Set some Parameters
-- -------------------------------------------------------------------
SET @Cloth := 400; -- Class Bitmask: 16 (Priest) +128 (Mage) +256 (Warlock)
SET @Leather1 := 1100; -- Class Bitmask: 4 (Hunter) +8 (Rogue) +64 (Shaman) +1024 (Druid)
SET @Leather2 := 1032; -- Class Bitmask: 8 (Rogue) +1024 (Druid)
SET @Mail1 := 3; -- Class Bitmask: 1 (Warrior) +2 (Paladin)
SET @Mail2 := 68; -- Class Bitmask: 4 (Hunter) +8 (Shaman)
SET @Plate := 35; -- Class Bitmask: 1 (Warrior) +2 (Paladin) +32 (DeathKnight)
-- Add conditions to make sure everyone gets beneficial loot for their class
-- -------------------------------------------------------------------
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=5 AND `SourceGroup` BETWEEN 51999 AND 52005 ;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
-- Cloth Items
(5,51999,51968,0,0,15,0,@Cloth,0,0,0,0,'','SOHG: Enumerated Wrap only for clothusers'),
(5,52000,51973,0,0,15,0,@Cloth,0,0,0,0,'','SOHG: Enumerated Handwraps only for clothusers'),
(5,52001,51974,0,0,15,0,@Cloth,0,0,0,0,'','SOHG: Enumerated Shoulderpads only for clothusers'),
(5,52002,51967,0,0,15,0,@Cloth,0,0,0,0,'','SOHG: Enumerated Sandals only for clothusers'),
(5,52002,51972,0,0,15,0,@Cloth,0,0,0,0,'','SOHG: Enumerated Bracers only for clothusers'),
(5,52003,51971,0,0,15,0,@Cloth,0,0,0,0,'','SOHG: Enumerated Belt only for clothusers'),
(5,52004,51970,0,0,15,0,@Cloth,0,0,0,0,'','SOHG: Enumerated Gloves only for clothusers'),
(5,52005,51969,0,0,15,0,@Cloth,0,0,0,0,'','SOHG: Enumerated Shoulders only for clothusers'),
-- Leather Items
(5,51999,51964,0,0,15,0,@Leather1,0,0,0,0,'','SOHG: Vigorous Belt only for leatherusers'),
(5,52000,51965,0,0,15,0,@Leather1,0,0,0,0,'','SOHG: Vigorous Handguards only for leatherusers'),
(5,52001,51966,0,0,15,0,@Leather2,0,0,0,0,'','SOHG: Vigorous Spaulders only for leatherusers'),
(5,52002,51962,0,0,15,0,@Leather2,0,0,0,0,'','SOHG: Vigorous Bracers only for leatherusers'),
(5,52002,51963,0,0,15,0,@Leather2,0,0,0,0,'','SOHG: Vigorous Stompers only for leatherusers'),
(5,52003,51959,0,0,15,0,@Leather2,0,0,0,0,'','SOHG: Vigorous Belt only for leatherusers'),
(5,52004,51960,0,0,15,0,@Leather2,0,0,0,0,'','SOHG: Vigorous Gloves only for leatherusers'),
(5,52005,51961,0,0,15,0,@Leather2,0,0,0,0,'','SOHG: Vigorous Shoulderguards only for leatherusers'),
-- Mail Items
(5,51999,51978,0,0,15,0,@Mail1,0,0,0,0,'','SOHG: Earthbound Girdle only for mail users'),
(5,52000,51980,0,0,15,0,@Mail1,0,0,0,0,'','SOHG: Earthbound Handgrips only for mail users'),
(5,52001,51976,0,0,15,0,@Mail2,0,0,0,0,'','SOHG: Earthbound Shoulderguards only for mail users'),
(5,52002,51982,0,0,15,0,@Mail2,0,0,0,0,'','SOHG: Earthbound Boots only for mail users'),
(5,52002,51981,0,0,15,0,@Mail2,0,0,0,0,'','SOHG: Earthbound Wristguards only for mail users'),
(5,52003,51977,0,0,15,0,@Mail2,0,0,0,0,'','SOHG: Earthbound Girdle only for mail users'),
(5,52004,51979,0,0,15,0,@Mail2,0,0,0,0,'','SOHG: Earthbound Grips only for mail users'),
(5,52005,51975,0,0,15,0,@Mail2,0,0,0,0,'','SOHG: Earthbound Shoulders only for mail users'),
-- Plate Items
(5,52001,51984,0,0,15,0,@Plate,0,0,0,0,'','SOHG: Stalwart Shoulderpads only for plate users'),
(5,52002,51989,0,0,15,0,@Plate,0,0,0,0,'','SOHG: Stalwart Bands only for plate users'),
(5,52002,51990,0,0,15,0,@Plate,0,0,0,0,'','SOHG: Stalwart Treads only for plate users'),
(5,52003,51985,0,0,15,0,@Plate,0,0,0,0,'','SOHG: Stalwart Belt only for plate users'),
(5,52004,51987,0,0,15,0,@Plate,0,0,0,0,'','SOHG: Stalwart Grips only for plate users'),
(5,52005,51983,0,0,15,0,@Plate,0,0,0,0,'','SOHG: Stalwart Shoulderguards only for plate users');
-- Add Reference Loots
SET @RefNormal := 35091;
SET @RefHeroic := 35092;
DELETE FROM `reference_loot_template` WHERE `entry` IN (@RefNormal,@RefHeroic);
INSERT INTO `reference_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
-- Normal Loot
(@RefNormal,49839,0,1,1,1,1), -- Mourning Malice
(@RefNormal,49840,0,1,1,1,1), -- Hate-Forged Cleaver
(@RefNormal,49841,0,1,1,1,1), -- Blackened Geist Ribs
(@RefNormal,49842,0,1,1,1,1), -- Tapestry of the Frozen Throne
(@RefNormal,49843,0,1,1,1,1), -- Crystalline Citadel Gauntlets
(@RefNormal,49844,0,1,1,1,1), -- Crypt Fiend Slayer
(@RefNormal,49845,0,1,1,1,1), -- Bone Golem Scapula
(@RefNormal,49846,0,1,1,1,1), -- Chilled Heart of the Glacier
(@RefNormal,49847,0,1,1,1,1), -- Legguards of Untimely Demise
(@RefNormal,49848,0,1,1,1,1), -- Grim Lasher Shoulderguards
(@RefNormal,49849,0,1,1,1,1), -- Tattered Glacial-Woven Hood
(@RefNormal,49851,0,1,1,1,1), -- Greathelm of the Silver Hand
-- Heroic Loot
(@RefHeroic,50303,0,1,1,1,1), -- Black Icicle
(@RefHeroic,50302,0,1,1,1,1), -- Liar's Tongue
(@RefHeroic,50311,0,1,1,1,1), -- Second Helm of the Executioner
(@RefHeroic,50312,0,1,1,1,1), -- Chestguard of Broken Branches
(@RefHeroic,50310,0,1,1,1,1), -- Fossilized Ammonite Choker
(@RefHeroic,50313,0,1,1,1,1), -- Oath of Empress Zoe
(@RefHeroic,50309,0,1,1,1,1), -- Shriveled Heart
(@RefHeroic,50314,0,1,1,1,1), -- Strip of Remorse
(@RefHeroic,50308,0,1,1,1,1), -- Blighted Leather Footpads
(@RefHeroic,50305,0,1,1,1,1), -- Grinning Skull Boots
(@RefHeroic,50306,0,1,1,1,1), -- The Lady's Promise
(@RefHeroic,50304,0,1,1,1,1); -- Hoarfrost Gauntlets
-- Assign to the chest
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (27985,27993);
INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES
(27985,1,100,1,0,-@RefNormal,2), -- Two from Normal Reference Loot 
(27993,1,100,1,0,-@RefHeroic,2), -- Two from Heroic Reference Loot
(27993,43102,85,1,0,1,1); -- Frozen Orb
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=36494;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(36494,0,0, 'Tiny creatures under feet, you bring Garfrost something good to eat!',14,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,1,0, 'Axe too weak. Garfrost make better and CRUSH YOU.',14,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,2,0, 'Garfrost tired of puny mortals. Now your bones will freeze!',14,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,3,0, 'Garfrost hope giant underpants clean. Save boss great shame. For later.',14,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,4,0, 'Will save for snack. For later.',12,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,4,1, 'That one maybe not so good to eat now. Stupid Garfrost! BAD! BAD!',12,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,5,0, '%s hurls a massive saronite boulder at you!',16,0,100,0,0,0, 'Forgemaster Garfrost'),
(36494,6,0, '%s casts |cFF00AACCDeep Freeze|r at $n.',41,0,100,0,0,0, 'Forgemaster Garfrost');
-- Remove old script text
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1658006 AND -1658001;
-- NPC talk text insert for Sara
DELETE FROM `creature_text` WHERE `entry`=33134;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(33134,0,0, 'Help me! Please get them off me!',14,0,100,0,0,15771, 'Sara YELL_PREFIGHT'),
(33134,0,1, 'What do you want from me? Leave me alone!',14,0,100,0,0,15772, 'Sara YELL_PREFIGHT'),
(33134,1,0, 'Yes! YES! Show them no mercy! Give no pause to your attacks!',14,0,100,0,0,15773, 'Sara YELL_COMBAT_PHASE_1'),
(33134,1,1, 'Let hatred and rage guide your blows!',14,0,100,0,0,15774, 'Sara YELL_COMBAT_PHASE_1'),
(33134,1,2, 'The time to strike at the head of the beast will soon be upon us! Focus your anger and hatred on his minions!',14,0,100,457,0,15775, 'Sara YELL_COMBAT_PHASE_1'),
(33134,2,0, 'Suffocate upon your own hate!',14,0,100,0,0,15776, 'Sara YELL_COMBAT_PHASE_2'),
(33134,2,1, 'Tremble, mortals, before the coming of the end!',14,0,100,0,0,15777, 'Sara YELL_COMBAT_PHASE_2'),
(33134,3,0, 'Powerless to act...',14,0,100,0,0,15778, 'Sara YELL_SLAY'),
(33134,3,1, 'Could they have been saved?',14,0,100,0,0,15779, 'YELL SAY_SLAY');
-- remove script text
DELETE FROM script_texts WHERE entry BETWEEN -1603319 AND -1603310;
-- Add script to Dragonspire Hall Runes "UBRS"
UPDATE `gameobject_template` SET `ScriptName`= 'go_dragonspire_hall_rune' WHERE `entry` BETWEEN 175194 AND 175200;
