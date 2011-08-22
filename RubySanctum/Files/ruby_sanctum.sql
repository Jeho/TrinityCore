UPDATE `creature_template` SET `ScriptName` = 'boss_halion' WHERE `entry`= '39863';
UPDATE `creature_template` SET `ScriptName` = 'boss_twilight_halion' WHERE `entry` = '40142';
UPDATE `creature_template` SET `ScriptName` = 'npc_meteor_strike', `flags_extra`=128 WHERE `entry` = '40041';
UPDATE `creature_template` SET `ScriptName` = 'npc_meteor_flame', `flags_extra`=128 WHERE `entry` = '40042';
UPDATE `creature_template` SET `ScriptName` = 'npc_spell_meteor_strike', `flags_extra`=128 WHERE `entry` = '40029';
UPDATE `creature_template` SET `ScriptName` = 'npc_summon_halion', `flags_extra`=128 WHERE `entry` = '40044';
UPDATE `creature_template` SET `ScriptName` = 'npc_combustion' WHERE `entry` = '40001';
INSERT INTO `spell_linked_spell` VALUES (-74562, 74610, 0, 'Fiery Combustion removed -> Combustion');
INSERT INTO `spell_linked_spell` VALUES (-74792, 74800, 0, 'Soul Consumption removed -> Consumption');
INSERT INTO `creature`(id, map, spawnMask, phaseMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, MovementType, npcflag, unit_flags, dynamicflags)
VALUES (39863,724,15,65535,0,0,3144.93,527.233,72.8887,0.110395,604800,0,0,11156000,0,0,0,0,0);
INSERT INTO `spell_script_names` VALUES (74812,'spell_halion_portal');
UPDATE `gameobject_template` SET `data10`=74807 WHERE `entry`=202794;
