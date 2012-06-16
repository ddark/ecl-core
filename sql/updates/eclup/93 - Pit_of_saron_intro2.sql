update gameobject_template set ScriptName = '' where entry = 201969;
update creature_template set ScriptName = '' where entry IN (36765, 36771);

UPDATE creature_template SET scriptname = "pos_intro" WHERE entry IN (36990, 36993);

INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5578,'at_ymirjar_flamebearer_pos');

DELETE FROM `areatrigger_scripts` where `entry`= 5579;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5579,'at_fallen_warrior_pos');

DELETE FROM `areatrigger_scripts` where `entry`= 5580;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5580,'at_ice_cicle_pos');

DELETE FROM `areatrigger_scripts` where `entry`= 5573;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5573,'at_pos_intro');

DELETE FROM `areatrigger_scripts` where `entry`= 5598;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5598,'at_slave_rescued_pos');

DELETE FROM `areatrigger_scripts` where `entry`= 5599;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5599,'at_geist_ambusher_pos');

UPDATE creature_template SET Scriptname = 'pos_outro' WHERE entry IN (38189, 38188)

UPDATE creature_template set Scriptname = '' where entry = 36886;

SET @ENTRY1=36840;
SET @ENTRY2=36892;
SET @ENTRY3=36893;
SET @ENTRY4=36841;
SET @ENTRY5=36842;
SET @ENTRY6=37584;
SET @ENTRY7=37588;
SET @ENTRY8=37587;
SET @ENTRY9=37496;
SET @ENTRY10=37497;
SET @ENTRY11=37729;
SET @ENTRY12=37728;
SET @ENTRY13=36877;
DELETE FROM creature WHERE id IN (@ENTRY1, @ENTRY2, @ENTRY3, @ENTRY4, @ENTRY5, @ENTRY6, @ENTRY7, @ENTRY8, @ENTRY9, @ENTRY10, @ENTRY11, @ENTRY12, @ENTRY13);

DELETE FROM script_texts WHERE entry IN(-1658022, -1658023);
INSERT INTO script_texts (entry,content_default,sound,type,language,emote,comment) VALUES
(-1658022,'%s lance un rocher saronite massive sur vous !',0,5,0,0,'garfrost EMOTE_THROW_SARONITE'), -- TODO emote only displayed to target
(-1658023,'%s jette Deep Freeze sur $N.',0,3,0,0,'garfrost EMOTE_DEEP_FREEZE');

DELETE FROM `script_texts` WHERE entry = -1658071;
INSERT INTO `script_texts` (`npc_entry`,`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
(36888,-1658071,'Par Ici ! Nous sommes sur le point de monter à l\'assaut de l\'antre du Seigneur du Fléau Tyrannus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'SAY_RESCOUD_HORDE_ALLIANCE');

update creature_template set unit_flags = 32832, faction_A = 21, faction_H = 21 where entryIN(36830, 36892);

UPDATE gameobject_template set flags = 1, faction = 1375 WHERE entry = 201848;

UPDATE creature_template SET scriptname = '' WHERE entry IN (36794);

UPDATE creature_template SET MovementType = 2 where entry IN (36788, 367880);