UPDATE `creature_template` SET `npcflag`=`npcflag`|0x1000000,`VehicleId`=165,`spell1`=54420,`AIName`='SmartAI',`InhabitType`=5 WHERE `entry`=29403;
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=29403;
INSERT INTO `npc_spellclick_spells` VALUES
(29403,49641,0,0,0,1,0,0,0);

DELETE FROM `spell_scripts` WHERE `id`=54420;
INSERT INTO `spell_scripts` (`id`,`effIndex`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(54420,1,0,18,0,0,0,0,0,0,0);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12747,12748,12749) AND `type`=12;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(12747,12,1,0,''),
(12748,12,1,0,''),
(12749,12,1,0,'');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (12740,12741,12744,12993) AND `type`=12;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(12740,12,0,0,''),
(12741,12,0,0,''),
(12744,12,0,0,''),
(12993,12,1,0,'');
DELETE FROM `spell_script_names` WHERE `spell_id`=64414;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64414,'spell_load_into_catapult');

-- Update a wrongly entered spell
UPDATE `creature_template` SET `spell6`=64414 WHERE `entry`=33167;
DELETE FROM `spell_script_names` WHERE `spell_id`=58886;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(58886,'spell_magic_eater_food');
DELETE FROM `spell_script_names` WHERE `spell_id`=61889;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(61889,'spell_assembly_meltdown');
DELETE FROM `spell_script_names` WHERE `spell_id`=20577;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(20577,'spell_gen_cannibalize');
UPDATE `creature_template` SET `AIName`='', `ScriptName`='npc_kelthuzad_abomination' WHERE `entry`=16428;

DELETE FROM `creature_ai_scripts` WHERE `creature_id`=16428;

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7614, 7615) AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(7614,11,0,0,'achievement_just_cant_get_enough'),
(7615,11,0,0,'achievement_just_cant_get_enough');

DELETE FROM `disables` WHERE `entry` IN (7614, 7615);
DELETE FROM `command` WHERE `name` = 'go xyz';
INSERT INTO `command` VALUES
('go xyz',1,'Syntax: .go xyz #x #y [#z [#mapid [#orientation]]]\r\n\r\nTeleport player to point with (#x,#y,#z) coordinates at map #mapid with orientation #orientation. If z is not provided, ground/water level will be used. If mapid is not provided, the current map will be used. If #orientation is not provided, the current orientation will be used.');
DELETE FROM `command` WHERE `name` = 'go xy';
DELETE FROM `trinity_string` WHERE `entry`=1136;
INSERT INTO `trinity_string` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`)
VALUES
(1136,'Character %s has never been banned!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
DELETE FROM `creature_equip_template` WHERE `entry`=2475;
INSERT INTO `creature_equip_template` (`entry`,`itemEntry1`,`itemEntry2`,`itemEntry3`) VALUES
(2475,39659,0,0);
-- Resync Darkmoon Faerie
UPDATE `game_event` SET `start_time`='2011-10-02 00:01:00' WHERE `eventEntry`=5; 
UPDATE `game_event` SET `start_time`='2011-11-06 00:01:00' WHERE `eventEntry`=3;
DELETE FROM `conditions` WHERE `SourceEntry`=32146;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`)
VALUES
(13,0,32146,0,18,1,18240,0,0,'','Spell Liquid Fire can only be cast at Sunspring Villager');
DELETE FROM `spell_script_names` WHERE `spell_id`=32146;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(32146,'spell_q9874_liquid_fire');
DELETE FROM `spell_script_names` WHERE `spell_id`=54190;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(54190,'spell_q12805_lifeblood_dummy');
UPDATE access_requirement SET level_min=75 WHERE mapId=632 AND difficulty=0;
UPDATE access_requirement SET level_min=75 WHERE mapId=658 AND difficulty=0;
UPDATE access_requirement SET level_min=75 WHERE mapId=668 AND difficulty=0;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7636,7740) AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(7636,11,0,0,'achievement_bg_sa_defense_of_ancients'),
(7740,11,0,0,'achievement_bg_sa_defense_of_ancients');
UPDATE `creature_template` SET `difficulty_entry_1`=35529 WHERE `entry`=35049; -- Memory of Heigan
UPDATE `creature_template` SET `unit_class`=2 WHERE `entry`=35310; -- Argent Lightwielder
UPDATE `creature_template` SET `unit_class`=2 WHERE `entry`=35308; -- Argent Priestess (1)
