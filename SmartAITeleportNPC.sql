-- SmartAI Teleport NPC
-- ------------------------

-- Creature
SET
@Entry      := 482001,
@Model      := 29133,
@Name       := "Holo-globe",
@Title      := "Teleporter",
@Icon       := "Speak",
@GossipMenu := 48201,
@Broadcast  := 148201,
@NpcText    := 48201,
@MinLevel   := 80,
@MaxLevel   := 80,
@Faction    := 35,
@NPCFlags   := 1,
@Scale      := 0.655,
@Rank       := 0,
@Class      := 1,
@UnitFlags  := 2,
@UnitFlags2 := 32768,
@Type       := 0,
@TypeFlags  := 0,
@FlagsExtra := 0,
@AIName     := "SmartAI",
@Script     := "";
DELETE FROM creature_template WHERE entry = @Entry;
INSERT INTO creature_template (entry, name, subname, IconName, gossip_menu_id, minlevel, maxlevel, faction, npcflag, speed_walk, speed_run, scale, `rank`, unit_class, unit_flags, type, type_flags, RegenHealth, flags_extra, AiName, ScriptName) VALUES (@Entry, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, 1, 1.14286, @Scale, @Rank, @Class, @UnitFlags, @Type, @TypeFlags, 1, @FlagsExtra, @AIName, @Script);
DELETE FROM creature_template_model WHERE CreatureID = @Entry;
INSERT INTO creature_template_model VALUES (@Entry, 0, @Model, @Scale, 1, 12340);

-- Teleports
SET
-- Base menu
@Root := 'Images of a far-off land flash before your eyes.',
-- Option 1
@SelectIcon_Option1  := 7, -- 0-Chatbubble(   ) || 7-Chatbubble (...) || 1-BrownBag || 6-BrownBagW/gold || 2-Flight || 3-Book || 4-Wheel || 8-Tabard || 9-Swords || 10-Yellow dot
@Select_Option1      := 'Orgrimmar.',
@Explain_Option1     := 'Orgrimmar is the capital of the Horde.',
@ConfirmIcon_Option1 := 2, 
@Confirm_Option1     := 'Teleport to Orgrimmar.',
@Map_Option1 := 1, @X_Option1 := 1629.85, @Y_Option1 := -4373.64, @Z_Option1 := 31.557, @O_Option1 := 3.69,
-- Option 2
@SelectIcon_Option2  := 7, 
@Select_Option2      := 'Stormwind',
@Explain_Option2     := 'Stormwind is the capital of the Alliance.',
@ConfirmIcon_Option2 := 2, 
@Confirm_Option2     := 'Teleport to Stormwind.',
@Map_Option2 := 0, @X_Option2 := -8830.208, @Y_Option2 := 627.217, @Z_Option2 := 94.01, @O_Option2 := 4.04,
-- Option 3
@SelectIcon_Option3  := 7, 
@Select_Option3      := 'Shattrath',
@Explain_Option3     := 'Shattrath is the capital of Outland.',
@ConfirmIcon_Option3 := 2, 
@Confirm_Option3     := 'Teleport to Shattrath',
@Map_Option3 := 530, @X_Option3 := -1849.218, @Y_Option3 := 5400.13, @Z_Option3 := -12.43, @O_Option3 := 1.97,
-- Back
@Back := 'Back.';

-- --------------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------

-- Broadcast texts
REPLACE INTO `broadcast_text` VALUES 
-- Base menu
(@Broadcast,   0, @Root,                @Root,              1,0,0,0,0,0,0,0,1,18019),
-- Option 1
(@Broadcast+1, 0, @Explain_Option1,     @Explain_Option1,   1,0,0,0,0,0,0,0,1,18019),
(@Broadcast+2, 0, @Select_Option1,      @Select_Option1,    0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+3, 0, @Confirm_Option1,     @Confirm_Option1,   0,0,0,0,0,0,0,0,1,18019),
-- Option 2
(@Broadcast+4, 0, @Explain_Option2,     @Explain_Option2,   1,0,0,0,0,0,0,0,1,18019),
(@Broadcast+5, 0, @Select_Option2,      @Select_Option2,    0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+6, 0, @Confirm_Option2,     @Confirm_Option2,   0,0,0,0,0,0,0,0,1,18019),
-- Option 3
(@Broadcast+7, 0, @Explain_Option3,     @Explain_Option3,   1,0,0,0,0,0,0,0,1,18019),
(@Broadcast+8, 0, @Select_Option3,      @Select_Option3,    0,0,0,0,0,0,0,0,1,18019),
(@Broadcast+9, 0, @Confirm_Option3,     @Confirm_Option3,   0,0,0,0,0,0,0,0,1,18019),
-- Back
(@Broadcast+10, 0, @Back,               @Back,              0,0,0,0,0,0,0,0,1,18019);

-- NPC texts
REPLACE INTO `npc_text` VALUES 
(@NpcText,   @Root,            @Root,            @Broadcast,  0,0,0,1,0,0,0,0, NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,1),
(@NpcText+1, @Explain_Option1, @Explain_Option1, @Broadcast+1,0,0,0,1,0,0,0,0, NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,1),
(@NpcText+2, @Explain_Option2, @Explain_Option2, @Broadcast+4,0,0,0,1,0,0,0,0, NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,1),
(@NpcText+3, @Explain_Option3, @Explain_Option3, @Broadcast+7,0,0,0,1,0,0,0,0, NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,0,1);

-- Gossip menus
DELETE FROM `gossip_menu` WHERE `menuID` BETWEEN @GossipMenu AND @GossipMenu+3;
INSERT INTO `gossip_menu` VALUES 
(@GossipMenu, @GossipMenu),
(@GossipMenu+1, @GossipMenu+1),
(@GossipMenu+2, @GossipMenu+2),
(@GossipMenu+3, @GossipMenu+3);

-- Gossip menu options
DELETE FROM `gossip_menu_option` WHERE `menuID` BETWEEN @GossipMenu AND @GossipMenu+3;
INSERT INTO `gossip_menu_option` VALUES 
-- Option 1
(@GossipMenu,   1, @SelectIcon_Option1,     @Select_Option1,      @Broadcast+2,   1,1,    @GossipMenu+1,    0,0,0,NULL,0,0),
(@GossipMenu+1, 1, @ConfirmIcon_Option1,    @Confirm_Option1,     @Broadcast+3,   1,1,                      0,0,0,0,NULL,0,0),
(@GossipMenu+1, 2, 0,                       @Back,                @Broadcast+10,  1,1,    @GossipMenu,      0,0,0,NULL,0,0),
-- Option 2
(@GossipMenu,   2, @SelectIcon_Option2,     @Select_Option2,      @Broadcast+5,   1,1,    @GossipMenu+2,    0,0,0,NULL,0,0),
(@GossipMenu+2, 1, @ConfirmIcon_Option2,    @Confirm_Option2,     @Broadcast+6,   1,1,                      0,0,0,0,NULL,0,0),
(@GossipMenu+2, 2, 0,                       @Back,                @Broadcast+10,  1,1,    @GossipMenu,      ,0,0,NULL,0,0),
-- Option 3
(@GossipMenu,   3, @SelectIcon_Option3,     @Select_Option3,      @Broadcast+8,   1,1,    @GossipMenu+3,    0,0,0,NULL,0,0),
(@GossipMenu+3, 1, @ConfirmIcon_Option3,    @Confirm_Option3,     @Broadcast+9,   1,1,    0,                0,0,0,NULL,0,0),
(@GossipMenu+3, 2, 0,                       @Back,                @Broadcast+10,  1,1,    @GossipMenu,      0,0,0,NULL,0,0);

-- Smart scripts
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Entry;
INSERT INTO `smart_scripts` 
(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@Entry, 0, 1, 0, 62, 0, 100, 0, @GossipMenu+1, 1, 0, 0, 0, 62, @Map_Option1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Option1, @Y_Option1, @Z_Option1, @O_Option1, 'Option 1'),
(@Entry, 0, 2, 0, 62, 0, 100, 0, @GossipMenu+2, 1, 0, 0, 0, 62, @Map_Option2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Option2, @Y_Option2, @Z_Option2, @O_Option2, 'Option 2'),
(@Entry, 0, 3, 0, 62, 0, 100, 0, @GossipMenu+3, 1, 0, 0, 0, 62, @Map_Option3, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @X_Option3, @Y_Option3, @Z_Option3, @O_Option3, 'Option 3');