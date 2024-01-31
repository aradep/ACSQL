-- SmartAI Teleport NPC
-- --------------------------------------------------------------------------------------- --
SET
@NPC_EntryID                := 500001,
@NPC_DisplayID              := 29133,
@NPC_Name                   := 'Teleport NPC',
@NPC_Title                  := "",
@NPC_Icon                   := "Speak",
@NPC_Greetings_NPCTextID    := 5001,
@NPC_Greetings_BcastTextID  := 5002,
@NPC_GossipMenu_ID          := 5003,
@NPC_Greetings_Text         := 'Where do you want to go?',
@NPC_MinLevel               := 1,
@NPC_MaxLevel               := 1,
@NPC_Class                  := 1,
@NPC_Faction                := 35,
@NPC_Scale                  := 1,
@NPC_Rank                   := 0,
@NPC_Type                   := 7,
@NPC_TypeFlags              := 0,
@NPC_UnitFlags              := 0,
@NPC_UnitFlags2             := 0,
@NPC_NPCFlag                := 1,
@NPC_FlagsExtra             := 2,
@NPC_AIName                 := "SmartAI",

@Tele_Option1_ID            := 1,
@Tele_Option1_TextID        := 5004,
@Tele_Option1_Text          := 'Teleport to Stormwind.',
@Tele_Option1_Target_x      := -8833.38,
@Tele_Option1_Target_y      := 628.628,
@Tele_Option1_Target_z      := 94.0066,
@Tele_Option1_Target_o      := 1.06535,
@Tele_Option1_Target_map    := 0,
@Tele_Option1_Comment       := 'On Gossip Option 1 Selected - Teleport Invoker to Stormwind',

@Tele_Option2_ID            := 2,
@Tele_Option2_TextID        := 5005,
@Tele_Option2_Text          := 'Teleport to Orgrimmar.',
@Tele_Option2_Target_x      := 1629.36,
@Tele_Option2_Target_y      := -4373.39,
@Tele_Option2_Target_z      := 31.2564,
@Tele_Option2_Target_o      := 3.54839,
@Tele_Option2_Target_map    := 1,
@Tele_Option2_Comment       := 'On Gossip Option 2 Selected - Teleport Invoker to Orgrimmar',

@Tele_Option3_ID            := 3,
@Tele_Option3_TextID        := 5006,
@Tele_Option3_Text          := 'Teleport to _. (Placeholder. Comment-out if unused.)',
@Tele_Option3_Target_x      := 0.00,
@Tele_Option3_Target_y      := 0.00,
@Tele_Option3_Target_z      := 0.00,
@Tele_Option3_Target_o      := 0.00,
@Tele_Option3_Target_map    := 1,
@Tele_Option3_Comment       := 'On Gossip Option 3 Selected - Teleport Invoker to _',

@Tele_Option4_ID            := 4,
@Tele_Option4_TextID        := 5007,
@Tele_Option4_Text          := 'Teleport to _. (Placeholder. Comment-out if unused.)',
@Tele_Option4_Target_x      := 0.00,
@Tele_Option4_Target_y      := 0.00,
@Tele_Option4_Target_z      := 0.00,
@Tele_Option4_Target_o      := 0.00,
@Tele_Option4_Target_map    := 1,
@Tele_Option4_Comment       := 'On Gossip Option 4 Selected - Teleport Invoker to _',

@Tele_Option5_ID            := 5,
@Tele_Option5_TextID        := 5008,
@Tele_Option5_Text          := 'Teleport to _. (Placeholder. Comment-out if unused.)',
@Tele_Option5_Target_x      := 0.00,
@Tele_Option5_Target_y      := 0.00,
@Tele_Option5_Target_z      := 0.00,
@Tele_Option5_Target_o      := 0.00,
@Tele_Option5_Target_map    := 1,
@Tele_Option5_Comment       := 'On Gossip Option 5 Selected - Teleport Invoker to _',

@Tele_Option6_ID            := 6,
@Tele_Option6_TextID        := 5009,
@Tele_Option6_Text          := 'Teleport to _. (Placeholder. Comment-out if unused.)',
@Tele_Option6_Target_x      := 0.00,
@Tele_Option6_Target_y      := 0.00,
@Tele_Option6_Target_z      := 0.00,
@Tele_Option6_Target_o      := 0.00,
@Tele_Option6_Target_map    := 1,
@Tele_Option6_Comment       := 'On Gossip Option 6 Selected - Teleport Invoker to _',

@Tele_Option7_ID            := 7,
@Tele_Option7_TextID        := 5010,
@Tele_Option7_Text          := 'Teleport to _. (Placeholder. Comment-out if unused.)',
@Tele_Option7_Target_x      := 0.00,
@Tele_Option7_Target_y      := 0.00,
@Tele_Option7_Target_z      := 0.00,
@Tele_Option7_Target_o      := 0.00,
@Tele_Option7_Target_map    := 1,
@Tele_Option7_Comment       := 'On Gossip Option 7 Selected - Teleport Invoker to _',

@Tele_Option8_ID            := 8,
@Tele_Option8_TextID        := 5011,
@Tele_Option8_Text          := 'Teleport to _. (Placeholder. Comment-out if unused.)',
@Tele_Option8_Target_x      := 0.00,
@Tele_Option8_Target_y      := 0.00,
@Tele_Option8_Target_z      := 0.00,
@Tele_Option8_Target_o      := 0.00,
@Tele_Option8_Target_map    := 1,
@Tele_Option8_Comment       := 'On Gossip Option 8 Selected - Teleport Invoker to _';

-- --------------------------------------------------------------------------------------- --
-- --------------------------------------------------------------------------------------- --

-- NPC --
DELETE FROM creature_template       WHERE entry = @NPC_EntryID;
INSERT INTO creature_template       (`entry`,`modelid1`,`name`,`subname`,`IconName`,`gossip_menu_id`,`minlevel`,`maxlevel`,`faction`,`npcflag`,`speed_walk`,`speed_run`,`scale`,`rank`,`unit_class`,`unit_flags`,`type`,`type_flags`,`RegenHealth`,`flags_extra`,`AIName`) VALUES(@NPC_EntryID,@NPC_DisplayID,@NPC_Name,@NPC_Title,@NPC_Icon,@NPC_GossipMenu_ID,@NPC_MinLevel,@NPC_MaxLevel,@NPC_Faction,@NPC_NPCFlag,1,1.14286,@NPC_Scale,@NPC_Rank,@NPC_Class,@NPC_UnitFlags,@NPC_Type,@NPC_TypeFlags,1,@NPC_FlagsExtra,@NPC_AIName);
DELETE FROM broadcast_text          WHERE id IN (@NPC_Greetings_BcastTextID);
INSERT INTO broadcast_text          VALUES (@NPC_Greetings_BcastTextID, 0, @NPC_Greetings_Text, @NPC_Greetings_Text, 1, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
DELETE FROM gossip_menu             WHERE menuID = @NPC_GossipMenu_ID;
INSERT INTO gossip_menu             (MenuID, TextID) VALUES (@NPC_GossipMenu_ID, @NPC_Greetings_NPCTextID);
DELETE FROM npc_text                WHERE id = @NPC_Greetings_NPCTextID;
INSERT INTO npc_text                VALUES (@NPC_Greetings_NPCTextID, @NPC_Greetings_Text, @NPC_Greetings_Text, @NPC_Greetings_BcastTextID, 0, 1, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);
-- Option 1 --
DELETE FROM broadcast_text          WHERE id IN (@Tele_Option1_TextID);
INSERT INTO broadcast_text          VALUES (@Tele_Option1_TextID, 0, @Tele_Option1_Text, @Tele_Option1_Text, 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
DELETE FROM gossip_menu_option      WHERE menuID = @NPC_GossipMenu_ID AND OptionID = @Tele_Option1_ID;
INSERT INTO gossip_menu_option      VALUES (@NPC_GossipMenu_ID, @Tele_Option1_ID, 9, @Tele_Option1_Text, @Tele_Option1_TextID, 1, 1, @NPC_GossipMenu_ID, 0, 0, 0, NULL, 0, 0);
DELETE FROM smart_scripts           WHERE entryorguid = @NPC_EntryID AND id = @Tele_Option1_ID;
INSERT INTO smart_scripts           VALUES (@NPC_EntryID, 0, @Tele_Option1_ID, 0, 62, 0, 100, 0, @NPC_GossipMenu_ID, @Tele_Option1_ID, 0, 0, 0, 62, @Tele_Option1_Target_map, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @Tele_Option1_Target_x, @Tele_Option1_Target_y, @Tele_Option1_Target_z, @Tele_Option1_Target_o, @Tele_Option1_Comment);
-- Option 2 --
DELETE FROM broadcast_text          WHERE id IN (@Tele_Option2_TextID);
INSERT INTO broadcast_text          VALUES (@Tele_Option2_TextID, 0, @Tele_Option2_Text, @Tele_Option2_Text, 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
DELETE FROM gossip_menu_option      WHERE menuID = @NPC_GossipMenu_ID AND OptionID = @Tele_Option2_ID;
INSERT INTO gossip_menu_option      VALUES (@NPC_GossipMenu_ID, @Tele_Option2_ID, 9, @Tele_Option2_Text, @Tele_Option2_TextID, 1, 1, @NPC_GossipMenu_ID, 0, 0, 0, NULL, 0, 0);
DELETE FROM smart_scripts           WHERE entryorguid = @NPC_EntryID AND id = @Tele_Option2_ID;
INSERT INTO smart_scripts           VALUES (@NPC_EntryID, 0, @Tele_Option2_ID, 0, 62, 0, 100, 0, @NPC_GossipMenu_ID, @Tele_Option2_ID, 0, 0, 0, 62, @Tele_Option2_Target_map, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @Tele_Option2_Target_x, @Tele_Option2_Target_y, @Tele_Option2_Target_z, @Tele_Option2_Target_o, @Tele_Option2_Comment);
-- Option 3 --
DELETE FROM broadcast_text          WHERE id IN (@Tele_Option3_TextID);
INSERT INTO broadcast_text          VALUES (@Tele_Option3_TextID, 0, @Tele_Option3_Text, @Tele_Option3_Text, 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
DELETE FROM gossip_menu_option      WHERE menuID = @NPC_GossipMenu_ID AND OptionID = @Tele_Option3_ID;
INSERT INTO gossip_menu_option      VALUES (@NPC_GossipMenu_ID, @Tele_Option3_ID, 9, @Tele_Option3_Text, @Tele_Option3_TextID, 1, 1, @NPC_GossipMenu_ID, 0, 0, 0, NULL, 0, 0);
DELETE FROM smart_scripts           WHERE entryorguid = @NPC_EntryID AND id = @Tele_Option3_ID;
INSERT INTO smart_scripts           VALUES (@NPC_EntryID, 0, @Tele_Option3_ID, 0, 62, 0, 100, 0, @NPC_GossipMenu_ID, @Tele_Option3_ID, 0, 0, 0, 62, @Tele_Option3_Target_map, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @Tele_Option3_Target_x, @Tele_Option3_Target_y, @Tele_Option3_Target_z, @Tele_Option3_Target_o, @Tele_Option3_Comment);
-- Option 4 --
DELETE FROM broadcast_text          WHERE id IN (@Tele_Option4_TextID);
INSERT INTO broadcast_text          VALUES (@Tele_Option4_TextID, 0, @Tele_Option4_Text, @Tele_Option4_Text, 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
DELETE FROM gossip_menu_option      WHERE menuID = @NPC_GossipMenu_ID AND OptionID = @Tele_Option4_ID;
INSERT INTO gossip_menu_option      VALUES (@NPC_GossipMenu_ID, @Tele_Option4_ID, 9, @Tele_Option4_Text, @Tele_Option4_TextID, 1, 1, @NPC_GossipMenu_ID, 0, 0, 0, NULL, 0, 0);
DELETE FROM smart_scripts           WHERE entryorguid = @NPC_EntryID AND id = @Tele_Option4_ID;
INSERT INTO smart_scripts           VALUES (@NPC_EntryID, 0, @Tele_Option4_ID, 0, 62, 0, 100, 0, @NPC_GossipMenu_ID, @Tele_Option4_ID, 0, 0, 0, 62, @Tele_Option4_Target_map, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @Tele_Option4_Target_x, @Tele_Option4_Target_y, @Tele_Option4_Target_z, @Tele_Option4_Target_o, @Tele_Option4_Comment);
-- Option 5 --
DELETE FROM broadcast_text          WHERE id IN (@Tele_Option5_TextID);
INSERT INTO broadcast_text          VALUES (@Tele_Option5_TextID, 0, @Tele_Option5_Text, @Tele_Option5_Text, 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
DELETE FROM gossip_menu_option      WHERE menuID = @NPC_GossipMenu_ID AND OptionID = @Tele_Option5_ID;
INSERT INTO gossip_menu_option      VALUES (@NPC_GossipMenu_ID, @Tele_Option5_ID, 9, @Tele_Option5_Text, @Tele_Option5_TextID, 1, 1, @NPC_GossipMenu_ID, 0, 0, 0, NULL, 0, 0);
DELETE FROM smart_scripts           WHERE entryorguid = @NPC_EntryID AND id = @Tele_Option5_ID;
INSERT INTO smart_scripts           VALUES (@NPC_EntryID, 0, @Tele_Option5_ID, 0, 62, 0, 100, 0, @NPC_GossipMenu_ID, @Tele_Option5_ID, 0, 0, 0, 62, @Tele_Option5_Target_map, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @Tele_Option5_Target_x, @Tele_Option5_Target_y, @Tele_Option5_Target_z, @Tele_Option5_Target_o, @Tele_Option5_Comment);
-- Option 6 --
DELETE FROM broadcast_text          WHERE id IN (@Tele_Option6_TextID);
INSERT INTO broadcast_text          VALUES (@Tele_Option6_TextID, 0, @Tele_Option6_Text, @Tele_Option6_Text, 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
DELETE FROM gossip_menu_option      WHERE menuID = @NPC_GossipMenu_ID AND OptionID = @Tele_Option6_ID;
INSERT INTO gossip_menu_option      VALUES (@NPC_GossipMenu_ID, @Tele_Option6_ID, 9, @Tele_Option6_Text, @Tele_Option6_TextID, 1, 1, @NPC_GossipMenu_ID, 0, 0, 0, NULL, 0, 0);
DELETE FROM smart_scripts           WHERE entryorguid = @NPC_EntryID AND id = @Tele_Option6_ID;
INSERT INTO smart_scripts           VALUES (@NPC_EntryID, 0, @Tele_Option6_ID, 0, 62, 0, 100, 0, @NPC_GossipMenu_ID, @Tele_Option6_ID, 0, 0, 0, 62, @Tele_Option6_Target_map, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @Tele_Option6_Target_x, @Tele_Option6_Target_y, @Tele_Option6_Target_z, @Tele_Option6_Target_o, @Tele_Option6_Comment);
-- Option 7 --
DELETE FROM broadcast_text          WHERE id IN (@Tele_Option7_TextID);
INSERT INTO broadcast_text          VALUES (@Tele_Option7_TextID, 0, @Tele_Option7_Text, @Tele_Option7_Text, 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
DELETE FROM gossip_menu_option      WHERE menuID = @NPC_GossipMenu_ID AND OptionID = @Tele_Option7_ID;
INSERT INTO gossip_menu_option      VALUES (@NPC_GossipMenu_ID, @Tele_Option7_ID, 9, @Tele_Option7_Text, @Tele_Option7_TextID, 1, 1, @NPC_GossipMenu_ID, 0, 0, 0, NULL, 0, 0);
DELETE FROM smart_scripts           WHERE entryorguid = @NPC_EntryID AND id = @Tele_Option7_ID;
INSERT INTO smart_scripts           VALUES (@NPC_EntryID, 0, @Tele_Option7_ID, 0, 62, 0, 100, 0, @NPC_GossipMenu_ID, @Tele_Option7_ID, 0, 0, 0, 62, @Tele_Option7_Target_map, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @Tele_Option7_Target_x, @Tele_Option7_Target_y, @Tele_Option7_Target_z, @Tele_Option7_Target_o, @Tele_Option7_Comment);
-- Option 8 --
DELETE FROM broadcast_text          WHERE id IN (@Tele_Option8_TextID);
INSERT INTO broadcast_text          VALUES (@Tele_Option8_TextID, 0, @Tele_Option8_Text, @Tele_Option8_Text, 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);
DELETE FROM gossip_menu_option      WHERE menuID = @NPC_GossipMenu_ID AND OptionID = @Tele_Option8_ID;
INSERT INTO gossip_menu_option      VALUES (@NPC_GossipMenu_ID, @Tele_Option8_ID, 9, @Tele_Option8_Text, @Tele_Option8_TextID, 1, 1, @NPC_GossipMenu_ID, 0, 0, 0, NULL, 0, 0);
DELETE FROM smart_scripts           WHERE entryorguid = @NPC_EntryID AND id = @Tele_Option8_ID;
INSERT INTO smart_scripts           VALUES (@NPC_EntryID, 0, @Tele_Option8_ID, 0, 62, 0, 100, 0, @NPC_GossipMenu_ID, @Tele_Option8_ID, 0, 0, 0, 62, @Tele_Option8_Target_map, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, @Tele_Option8_Target_x, @Tele_Option8_Target_y, @Tele_Option8_Target_z, @Tele_Option8_Target_o, @Tele_Option8_Comment);
