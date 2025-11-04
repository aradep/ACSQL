-- Entry IDs
SET
@Paladin    = 999901,
@Warrior    = 999902,
@Hunter     = 999903,
@HunterPet  = 999904,
@Shaman     = 999905,
@Priest     = 999906,
@Rogue      = 999907,
@Warlock    = 999908,
@WarlockPet = 999909,
@Druid      = 999910,
@Mage       = 999911,
@MagePet    = 999912,

-- Paladin
@Model      = 16066,
@Name       = "Wing Commander Brighton",
@Title      = "Paladin Trainer",
@TrainClass = 2,
@Icon       = "",
@GossipMenu = 6647,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 179,
@Scale      = 1.1,
@Rank       = 1,
@Class      = 2;
DELETE FROM `creature_template` WHERE `entry` = @Paladin;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `scale`, `rank`, `unit_class`, `trainer_class`) VALUES (@Paladin, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, @Scale, @Rank, @Class, @TrainClass);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Paladin;
INSERT INTO `creature_template_model` VALUES (@Paladin, 0, @Model, @Scale, 1, 12340);

-- Warrior
SET
@Model      = 18686,
@Name       = "Warlord Felcarez",
@Title      = "Warrior Trainer",
@TrainClass = 1,
@Icon       = "",
@GossipMenu = 4509,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 179,
@Scale      = 0.75,
@Rank       = 1,
@Class      = 2;
DELETE FROM `creature_template` WHERE `entry` = @Warrior;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `scale`, `rank`, `unit_class`, `trainer_class`) VALUES (@Warrior, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, @Scale, @Rank, @Class, @TrainClass);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Warrior;
INSERT INTO `creature_template_model` VALUES (@Warrior, 0, @Model, @Scale, 1, 12340);

-- Hunter
SET
@Model      = 21519,
@Name       = "Santhus the Wanderer",
@Title      = "Hunter Trainer",
@TrainClass = 3,
@Icon       = "",
@GossipMenu = 4023,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 179,
@Scale      = 0.78,
@Rank       = 1,
@Class      = 2;
DELETE FROM `creature_template` WHERE `entry` = @Hunter;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `scale`, `rank`, `unit_class`, `trainer_class`) VALUES (@Hunter, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, @Scale, @Rank, @Class, @TrainClass);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Hunter;
INSERT INTO `creature_template_model` VALUES (@Hunter, 0, @Model, @Scale, 1, 12340);

    -- Hunter Pet
    SET
    @Model      = 26684,
    @Name       = "Nova",
    @Title      = "Santhus\' Companion",
    @Icon       = "",
    @MinLevel   = 80,
    @MaxLevel   = 80,
    @Faction    = 35,
    @Scale      = 0.78,
    @Rank       = 1,
    @Class      = 2;
    DELETE FROM `creature_template` WHERE `entry` = @HunterPet;
    INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `faction`, `scale`, `rank`, `unit_class`, `unit_flags`) VALUES (@HunterPet, @Name, @Title, @Icon, @MinLevel, @MaxLevel, @Faction, @Scale, @Rank, @Class, @UnitFlags);
    DELETE FROM `creature_template_model` WHERE `CreatureID` = @HunterPet;
    INSERT INTO `creature_template_model` VALUES (@HunterPet, 0, @Model, @Scale, 1, 12340);
    
    -- Hunter pet sleeping visual
    DELETE FROM `creature_template_addon` WHERE `entry` = @HunterPet;
    INSERT INTO `creature_template_addon` VALUES (@HunterPet, 0, 0, 3, 1, 0, 0, 55474);

-- Shaman
SET
@Model      = 23197,
@Name       = "King Hailex",
@Title      = "Shaman Trainer",
@TrainClass = 7,
@Icon       = "",
@GossipMenu = 4529,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 179,
@Scale      = 0.78,
@Rank       = 1,
@Class      = 2;
DELETE FROM `creature_template` WHERE `entry` = @Shaman;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `scale`, `rank`, `unit_class`, `trainer_class`) VALUES (@Shaman, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, @Scale, @Rank, @Class, @TrainClass);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Shaman;
INSERT INTO `creature_template_model` VALUES (@Shaman, 0, @Model, @Scale, 1, 12340);

-- Priest
SET
@Model      = 24965,
@Name       = "Battle-Priest Pandora",
@Title      = "Priest Trainer",
@TrainClass = 5,
@Icon       = "",
@GossipMenu = 4466,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 179,
@Scale      = 1.05,
@Rank       = 1,
@Class      = 8;
DELETE FROM `creature_template` WHERE `entry` = @Priest;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `scale`, `rank`, `unit_class`, `trainer_class`) VALUES (@Priest, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, @Scale, @Rank, @Class, @TrainClass);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Priest;
INSERT INTO `creature_template_model` VALUES (@Priest, 0, @Model, @Scale, 1, 12340);

-- Rogue
SET
@Model      = 21711,
@Name       = "Sapper Morton",
@Title      = "Rogue Trainer",
@TrainClass = 4,
@Icon       = "",
@GossipMenu = 4562,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 179,
@Scale      = 1.0,
@Rank       = 1,
@Class      = 2; 
DELETE FROM `creature_template` WHERE `entry` = @Rogue;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `scale`, `rank`, `unit_class`, `trainer_class`) VALUES (@Rogue, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, @Scale, @Rank, @Class, @TrainClass);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Rogue;
INSERT INTO `creature_template_model` VALUES (@Rogue, 0, @Model, @Scale, 1, 12340);

-- Warlock
SET
@Model      = 20879,
@Name       = "Nemesis",
@Title      = "Warlock Trainer",
@TrainClass = 9,
@Icon       = "",
@GossipMenu = 2384,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 179,
@Scale      = 0.6,
@Rank       = 1,
@Class      = 8;
DELETE FROM `creature_template` WHERE `entry` = @Warlock;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `scale`, `rank`, `unit_class`, `trainer_class`) VALUES (@Warlock, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, @Scale, @Rank, @Class, @TrainClass);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Warlock;
INSERT INTO `creature_template_model` VALUES (@Warlock, 0, @Model, @Scale, 1, 12340);

    -- Warlock Pet
    SET
    @Model      = 4449,
    @Name       = "Ziglop",
    @Title      = "",
    @Icon       = "",
    @MinLevel   = 80,
    @MaxLevel   = 80,
    @Faction    = 35,
    @Scale      = 0.78,
    @Rank       = 1,
    @Class      = 2;
    DELETE FROM `creature_template` WHERE `entry` = @WarlockPet;
    INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `faction`, `scale`, `rank`, `unit_class`, `unit_flags`) VALUES (@WarlockPet, @Name, @Title, @Icon, @MinLevel, @MaxLevel, @Faction, @Scale, @Rank, @Class, @UnitFlags);
    DELETE FROM `creature_template_model` WHERE `CreatureID` = @WarlockPet;
    INSERT INTO `creature_template_model` VALUES (@WarlockPet, 0, @Model, @Scale, 1, 12340);

-- Druid
SET
@Model      = 17783, 
@Name       = "Warden Grylls",
@Title      = "Druid Trainer",
@TrainClass = 11,
@Icon       = "",
@GossipMenu = 4687,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 179,
@Scale      = 1.0,
@Rank       = 1,
@Class      = 8;
DELETE FROM `creature_template` WHERE `entry` = @Druid;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `scale`, `rank`, `unit_class`, `trainer_class`) VALUES (@Druid, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, @Scale, @Rank, @Class, @TrainClass);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Druid;
INSERT INTO `creature_template_model` VALUES (@Druid, 0, @Model, @Scale, 1, 12340);

-- Mage
SET
@Mage       = 5146,
@Model      = 24121,
@Name       = "Android #17",
@Title      = "Mage Trainer",
@TrainClass = 8,
@Icon       = "",
@GossipMenu = 4552,
@MinLevel   = 80,
@MaxLevel   = 80,
@Faction    = 35,
@NPCFlags   = 179,
@Scale      = 1.4,
@Rank       = 1,
@Class      = 8;
DELETE FROM `creature_template` WHERE `entry` = @Mage;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `scale`, `rank`, `unit_class`, `trainer_class`) VALUES (@Mage, @Name, @Title, @Icon, @GossipMenu, @MinLevel, @MaxLevel, @Faction, @NPCFlags, @Scale, @Rank, @Class, @TrainClass);
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Mage;
INSERT INTO `creature_template_model` VALUES (@Mage, 0, @Model, @Scale, 1, 12340);

    -- Mage Pet
    SET
    @Model      = 15438,
    @Name       = "Conjured Arcane Wraith",
    @Title      = "Android #17\'s Guardian",
    @Icon       = "",
    @MinLevel   = 80,
    @MaxLevel   = 80,
    @Faction    = 35,
    @Scale      = 0.78,
    @Rank       = 1,
    @Class      = 2;
    DELETE FROM `creature_template` WHERE `entry` = @MagePet;
    INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `faction`, `scale`, `rank`, `unit_class`, `unit_flags`) VALUES (@MagePet, @Name, @Title, @Icon, @MinLevel, @MaxLevel, @Faction, @Scale, @Rank, @Class, @UnitFlags);
    DELETE FROM `creature_template_model` WHERE `CreatureID` = @MagePet;
    INSERT INTO `creature_template_model` VALUES (@MagePet, 0, @Model, @Scale, 1, 12340);

-- Equip weapons
DELETE FROM `creature_equip_template` WHERE `creatureID` IN (@Paladin, @Warrior, @Rogue, @Shaman, @Priest, @DeathKnight, @Warlock, @Mage, @Druid, @Hunter);
REPLACE INTO `creature_equip_template` VALUES
(@Paladin, 1, 28429,     0, 0, 18019),
(@Warrior, 1,  6975,     0, 0, 18019),
(@Hunter,  1, 27987,     0, 0, 18019),
(@Shaman,  1, 32500,     0, 0, 18019),
(@Priest,  1, 32450,     0, 0, 18019),
(@Rogue,   1, 32471, 32471, 0, 18019),
(@Warlock, 1, 32374,     0, 0, 18019),
(@Druid,   1,      0,    0, 0, 18019),
(@Mage,    1,      0,    0, 0, 18019);

-- Sheath weapons
DELETE FROM `creature_template_addon` WHERE `entry` IN (@Paladin, @Warrior, @Rogue, @Shaman, @Priest, @Warlock, @Mage, @Druid, @Hunter);
INSERT INTO `creature_template_addon` (`entry`) VALUES (@Paladin), (@Warrior), (@Rogue), (@Shaman), (@Priest), (@Warlock), (@Mage), (@Druid), (@Hunter);

-- Class trainer gossip
UPDATE `npc_text` SET `lang0`=0 WHERE `lang0`>0;
UPDATE `broadcast_text` SET `maletext`='Can''t help ya, $r. I only train rogues.', `femaletext`=`maletext` WHERE `id` = 7482;
UPDATE `npc_text` SET `text0_0` = 'Can''t help ya, $r. I only train rogues.', `text0_1` = 'Can''t help ya, $r. I only train rogues.' WHERE `id` = 4833;
UPDATE `broadcast_text` SET `maletext`='May the spirits be with you, $c.', `femaletext`=`maletext` WHERE `id` = 15446;
UPDATE `npc_text` SET `text0_0` = 'May the spirits be with you, $c.', `text0_1` = 'May the spirits be with you, $c.' WHERE `id` = 5006;
UPDATE `broadcast_text` SET `maletext`='Arcane user detected. Loading training program...$b$bGreetings, $r. What is your request?', `femaletext`=`maletext` WHERE `id` = 2525;
UPDATE `npc_text` SET `text0_0` = 'Arcane user detected. Loading training program...$b$bGreetings, $r. What is your request?', `text0_1` = 'Arcane user detected. Loading training program...$b$bGreetings, $r. What is your request?' WHERE `id` = 560;
UPDATE `broadcast_text` SET `maletext`='ERROR. You do not meet the requirements to access this training program. Please seek help from a...$b$bSCANNING$b$b...$c trainer.', `femaletext`=`maletext` WHERE `id` = 2526;
UPDATE `npc_text` SET `text0_0` = 'ERROR. You do not meet the requirements to access this training program. Please seek help from a...$b$bSCANNING$b$b...$c trainer.' WHERE `id` = 561;
UPDATE `broadcast_text` SET `maletext`='All things are connected, $r. If the beasts were gone from the land, our kind would die from a great loneliness of spirit, for whatever happens to the Azeroth befalls all those who inhabit her.', `femaletext`=`maletext` WHERE `id` = 7555;
UPDATE `npc_text` SET `text0_0` = 'All things are connected, $r. If the beasts were gone from the land, our kind would die from a great loneliness of spirit, for whatever happens to the Azeroth befalls all those who inhabit her.' WHERE `id` = 4889;

-- Vendor list
DELETE FROM `npc_vendor` WHERE `Entry` = @Paladin;
INSERT INTO `npc_vendor` (`Entry`, `Slot`, `ExtendedCost`, `Item`) VALUES
(@Paladin, 1, 0, 41092), -- Glyph of Judgement
(@Paladin, 1, 0, 41094), -- Glyph of Seal of Command
(@Paladin, 1, 0, 41095), -- Glyph of Hammer of Justice
(@Paladin, 1, 0, 41096), -- Glyph of Spiritual Attunement
(@Paladin, 1, 0, 41097), -- Glyph of Hammer of Wrath
(@Paladin, 1, 0, 41098), -- Glyph of Crusader Strike
(@Paladin, 1, 0, 41099), -- Glyph of Consecration
(@Paladin, 1, 0, 41100), -- Glyph of Righteous Defense
(@Paladin, 1, 0, 41101), -- Glyph of Avenger's Shield
(@Paladin, 1, 0, 41102), -- Glyph of Turn Evil
(@Paladin, 1, 0, 41103), -- Glyph of Exorcism
(@Paladin, 1, 0, 41105), -- Glyph of Flash of Light
(@Paladin, 1, 0, 41106), -- Glyph of Holy Light
(@Paladin, 1, 0, 41108), -- Glyph of Divinity
(@Paladin, 1, 0, 41109), -- Glyph of Seal of Wisdom
(@Paladin, 1, 0, 41110), -- Glyph of Seal of Light
(@Paladin, 1, 0, 43867), -- Glyph of Holy Wrath
(@Paladin, 1, 0, 43868), -- Glyph of Seal of Righteousness
(@Paladin, 1, 0, 43869), -- Glyph of Seal of Vengeance
(@Paladin, 1, 0, 45746), -- Glyph of Holy Shock
(@Paladin, 1, 0, 45747), -- Glyph of Salvation
(@Paladin, 1, 0, 43340), -- Glyph of Blessing of Might
(@Paladin, 1, 0, 43365), -- Glyph of Blessing of Kings
(@Paladin, 1, 0, 43366), -- Glyph of Blessing of Wisdom
(@Paladin, 1, 0, 43367), -- Glyph of Lay on Hands
(@Paladin, 1, 0, 43368), -- Glyph of Sense Undead
(@Paladin, 1, 0, 43369); -- Glyph of the Wise
DELETE FROM `npc_vendor` WHERE `Entry` = @Warrior;
INSERT INTO `npc_vendor` (`Entry`, `Slot`, `ExtendedCost`, `Item`) VALUES
(@Warrior, 1, 0, 43413), -- Glyph of Rapid Charge
(@Warrior, 1, 0, 43414), -- Glyph of Cleaving
(@Warrior, 1, 0, 43416), -- Glyph of Execution
(@Warrior, 1, 0, 43417), -- Glyph of Hamstring
(@Warrior, 1, 0, 43418), -- Glyph of Heroic Strike
(@Warrior, 1, 0, 43420), -- Glyph of Barbaric Insults
(@Warrior, 1, 0, 43422), -- Glyph of Overpower
(@Warrior, 1, 0, 43423), -- Glyph of Rending
(@Warrior, 1, 0, 43424), -- Glyph of Revenge
(@Warrior, 1, 0, 43425), -- Glyph of Blocking
(@Warrior, 1, 0, 43426), -- Glyph of Last Stand
(@Warrior, 1, 0, 43427), -- Glyph of Sunder Armor
(@Warrior, 1, 0, 43429), -- Glyph of Taunt
(@Warrior, 1, 0, 43430), -- Glyph of Resonating Power
(@Warrior, 1, 0, 43431), -- Glyph of Victory Rush
(@Warrior, 1, 0, 43400), -- Glyph of Enduring Victory
(@Warrior, 1, 0, 43395), -- Glyph of Battle
(@Warrior, 1, 0, 43396), -- Glyph of Bloodrage
(@Warrior, 1, 0, 43397), -- Glyph of Charge
(@Warrior, 1, 0, 43398), -- Glyph of Mocking Blow
(@Warrior, 1, 0, 43399), -- Glyph of Thunder Clap
(@Warrior, 1, 0, 49084); -- Glyph of Command
DELETE FROM `npc_vendor` WHERE `Entry` = @Hunter;
INSERT INTO `npc_vendor` (`Entry`, `Slot`, `ExtendedCost`, `Item`) VALUES
(@Hunter, 1, 0, 42897), -- Glyph of Aimed Shot
(@Hunter, 1, 0, 42898), -- Glyph of Arcane Shot
(@Hunter, 1, 0, 42899), -- Glyph of the Beast
(@Hunter, 1, 0, 42901), -- Glyph of Aspect of the Viper
(@Hunter, 1, 0, 42902), -- Glyph of Bestial Wrath
(@Hunter, 1, 0, 42903), -- Glyph of Deterrence
(@Hunter, 1, 0, 42904), -- Glyph of Disengage
(@Hunter, 1, 0, 42905), -- Glyph of Freezing Trap
(@Hunter, 1, 0, 42906), -- Glyph of Frost Trap
(@Hunter, 1, 0, 42907), -- Glyph of Hunter's Mark
(@Hunter, 1, 0, 42908), -- Glyph of Immolation Trap
(@Hunter, 1, 0, 42909), -- Glyph of the Hawk
(@Hunter, 1, 0, 42910), -- Glyph of Multi-Shot
(@Hunter, 1, 0, 42911), -- Glyph of Rapid Fire
(@Hunter, 1, 0, 42912), -- Glyph of Serpent Sting
(@Hunter, 1, 0, 42914), -- Glyph of Steady Shot
(@Hunter, 1, 0, 42916), -- Glyph of Volley
(@Hunter, 1, 0, 45625), -- Glyph of Chimera Shot
(@Hunter, 1, 0, 45734), -- Glyph of Scatter Shot
(@Hunter, 1, 0, 45735), -- Glyph of Raptor Strike
(@Hunter, 1, 0, 43338), -- Glyph of Revive Pet
(@Hunter, 1, 0, 43350), -- Glyph of Mend Pet
(@Hunter, 1, 0, 43351), -- Glyph of Feign Death
(@Hunter, 1, 0, 43354), -- Glyph of Possessed Strength
(@Hunter, 1, 0, 43355), -- Glyph of the Pack
(@Hunter, 1, 0, 43356); -- Glyph of Scare Beast
DELETE FROM `npc_vendor` WHERE `Entry` = @Rogue;
INSERT INTO `npc_vendor` (`Entry`, `Slot`, `ExtendedCost`, `Item`) VALUES
(@Rogue, 0, 0, 5060),  -- Thieves Tools
(@Rogue, 1, 0, 42955), -- Glyph of Ambush
(@Rogue, 1, 0, 42956), -- Glyph of Backstab
(@Rogue, 1, 0, 42958), -- Glyph of Crippling Poison
(@Rogue, 1, 0, 42960), -- Glyph of Evasion
(@Rogue, 1, 0, 42961), -- Glyph of Eviscerate
(@Rogue, 1, 0, 42962), -- Glyph of Expose Armor
(@Rogue, 1, 0, 42963), -- Glyph of Feint
(@Rogue, 1, 0, 42964), -- Glyph of Garrote
(@Rogue, 1, 0, 42965), -- Glyph of Ghostly Strike
(@Rogue, 1, 0, 42966), -- Glyph of Gouge
(@Rogue, 1, 0, 42967), -- Glyph of Hemorrhage
(@Rogue, 1, 0, 42969), -- Glyph of Rupture
(@Rogue, 1, 0, 42970), -- Glyph of Sap
(@Rogue, 1, 0, 42971), -- Glyph of Vigor
(@Rogue, 1, 0, 42972), -- Glyph of Sinister Strike
(@Rogue, 1, 0, 42973), -- Glyph of Slice and Dice
(@Rogue, 1, 0, 42974), -- Glyph of Sprint
(@Rogue, 1, 0, 43343), -- Glyph of Pick Pocket
(@Rogue, 1, 0, 43376), -- Glyph of Distract
(@Rogue, 1, 0, 43377), -- Glyph of Pick Lock
(@Rogue, 1, 0, 43378), -- Glyph of Safe Fall
(@Rogue, 1, 0, 43379), -- Glyph of Blurred Speed
(@Rogue, 1, 0, 43380); -- Glyph of Vanish
DELETE FROM `npc_vendor` WHERE `Entry` = @Priest;
INSERT INTO `npc_vendor` (`Entry`, `Slot`, `ExtendedCost`, `Item`) VALUES
(@Priest, 0, 0, 17056), -- Light Feather
(@Priest, 1, 0, 42397), -- Glyph of Dispel Magic
(@Priest, 1, 0, 42398), -- Glyph of Fade
(@Priest, 1, 0, 42399), -- Glyph of Fear Ward
(@Priest, 1, 0, 42400), -- Glyph of Flash Heal
(@Priest, 1, 0, 42401), -- Glyph of Holy Nova
(@Priest, 1, 0, 42402), -- Glyph of Inner Fire
(@Priest, 1, 0, 42406), -- Glyph of Shadow Word: Pain
(@Priest, 1, 0, 42407), -- Glyph of Shadow
(@Priest, 1, 0, 42408), -- Glyph of Power Word: Shield
(@Priest, 1, 0, 42409), -- Glyph of Prayer of Healing
(@Priest, 1, 0, 42410), -- Glyph of Psychic Scream
(@Priest, 1, 0, 42411), -- Glyph of Renew
(@Priest, 1, 0, 42412), -- Glyph of Scourge Imprisonment
(@Priest, 1, 0, 42414), -- Glyph of Shadow Word: Death
(@Priest, 1, 0, 42415), -- Glyph of Mind Flay
(@Priest, 1, 0, 42416), -- Glyph of Smite
(@Priest, 1, 0, 42417), -- Glyph of Spirit of Redemption
(@Priest, 1, 0, 43342), -- Glyph of Fading
(@Priest, 1, 0, 43370), -- Glyph of Levitate
(@Priest, 1, 0, 43371), -- Glyph of Fortitude
(@Priest, 1, 0, 43372), -- Glyph of Shadow Protection
(@Priest, 1, 0, 43373), -- Glyph of Shackle Undead
(@Priest, 1, 0, 43374); -- Glyph of Shadowfiend
DELETE FROM `npc_vendor` WHERE `Entry` = @Shaman;
INSERT INTO `npc_vendor` (`Entry`, `Slot`, `ExtendedCost`, `Item`) VALUES
(@Shaman, 0, 0, 5175), -- Totem
(@Shaman, 0, 0, 5176), -- Totem
(@Shaman, 0, 0, 5177), -- Totem
(@Shaman, 0, 0, 5178), -- Totem
(@Shaman, 0, 0, 17057), -- Fish Scales
(@Shaman, 0, 0, 17058), -- Fish Oil
(@Shaman, 1, 0, 41517), -- Glyph of Chain Heal
(@Shaman, 1, 0, 41518), -- Glyph of Chain Lightning
(@Shaman, 1, 0, 41524), -- Glyph of Lava
(@Shaman, 1, 0, 41526), -- Glyph of Shocking
(@Shaman, 1, 0, 41527), -- Glyph of Earthliving Weapon
(@Shaman, 1, 0, 41529), -- Glyph of Fire Elemental Totem
(@Shaman, 1, 0, 41530), -- Glyph of Fire Nova
(@Shaman, 1, 0, 41531), -- Glyph of Flame Shock
(@Shaman, 1, 0, 41532), -- Glyph of Flametongue Weapon
(@Shaman, 1, 0, 41533), -- Glyph of Healing Stream Totem
(@Shaman, 1, 0, 41534), -- Glyph of Healing Wave
(@Shaman, 1, 0, 41535), -- Glyph of Lesser Healing Wave
(@Shaman, 1, 0, 41536), -- Glyph of Lightning Bolt
(@Shaman, 1, 0, 41537), -- Glyph of Lightning Shield
(@Shaman, 1, 0, 41538), -- Glyph of Mana Tide Totem
(@Shaman, 1, 0, 41539), -- Glyph of Stormstrike
(@Shaman, 1, 0, 41540), -- Glyph of Lava Lash
(@Shaman, 1, 0, 41541), -- Glyph of Water Mastery
(@Shaman, 1, 0, 41542), -- Glyph of Windfury Weapon
(@Shaman, 1, 0, 41547), -- Glyph of Frost Shock
(@Shaman, 1, 0, 41552), -- Glyph of Elemental Mastery
(@Shaman, 1, 0, 45770), -- Glyph of Thunder
(@Shaman, 1, 0, 45771), -- Glyph of Feral Spirit
(@Shaman, 1, 0, 45772), -- Glyph of Riptide
(@Shaman, 1, 0, 45775), -- Glyph of Earth Shield
(@Shaman, 1, 0, 45776), -- Glyph of Totem of Wrath
(@Shaman, 1, 0, 45777), -- Glyph of Hex
(@Shaman, 1, 0, 45778), -- Glyph of Stoneclaw Totem
(@Shaman, 1, 0, 43344), -- Glyph of Water Breathing
(@Shaman, 1, 0, 43381), -- Glyph of Astral Recall
(@Shaman, 1, 0, 43385), -- Glyph of Renewed Life
(@Shaman, 1, 0, 43386), -- Glyph of Water Shield
(@Shaman, 1, 0, 43388), -- Glyph of Water Walking
(@Shaman, 1, 0, 43725), -- Glyph of Ghost Wolf
(@Shaman, 1, 0, 44923); -- Glyph of Thunderstorm
DELETE FROM `npc_vendor` WHERE `Entry` = @Mage;
INSERT INTO `npc_vendor` (`Entry`, `Slot`, `ExtendedCost`, `Item`) VALUES
(@Mage, 0, 0, 17056), -- Light Feather
(@Mage, 1, 0, 42734), -- Glyph of Arcane Explosion
(@Mage, 1, 0, 42735), -- Glyph of Arcane Missiles
(@Mage, 1, 0, 42736), -- Glyph of Arcane Power
(@Mage, 1, 0, 42737), -- Glyph of Blink
(@Mage, 1, 0, 42738), -- Glyph of Evocation
(@Mage, 1, 0, 42739), -- Glyph of Fireball
(@Mage, 1, 0, 42740), -- Glyph of Fire Blast
(@Mage, 1, 0, 42741), -- Glyph of Frost Nova
(@Mage, 1, 0, 42742), -- Glyph of Frostbolt
(@Mage, 1, 0, 42743), -- Glyph of Ice Armor
(@Mage, 1, 0, 42744), -- Glyph of Ice Block
(@Mage, 1, 0, 42745), -- Glyph of Ice Lance
(@Mage, 1, 0, 42746), -- Glyph of Icy Veins
(@Mage, 1, 0, 42747), -- Glyph of Scorch
(@Mage, 1, 0, 42748), -- Glyph of Invisibility
(@Mage, 1, 0, 42749), -- Glyph of Mage Armor
(@Mage, 1, 0, 42750), -- Glyph of Mana Gem
(@Mage, 1, 0, 42751), -- Glyph of Molten Armor
(@Mage, 1, 0, 42752), -- Glyph of Polymorph
(@Mage, 1, 0, 42753), -- Glyph of Remove Curse
(@Mage, 1, 0, 42754), -- Glyph of Water Elemental
(@Mage, 1, 0, 44684), -- Glyph of Frostfire
(@Mage, 1, 0, 44955), -- Glyph of Arcane Blast
(@Mage, 1, 0, 45736), -- Glyph of Deep Freeze
(@Mage, 1, 0, 45737), -- Glyph of Living Bomb
(@Mage, 1, 0, 45738), -- Glyph of Arcane Barrage
(@Mage, 1, 0, 45739), -- Glyph of Mirror Image
(@Mage, 1, 0, 45740), -- Glyph of Ice Barrier
(@Mage, 1, 0, 50045), -- Glyph of Eternal Water
(@Mage, 1, 0, 43339), -- Glyph of Arcane Intellect
(@Mage, 1, 0, 43357), -- Glyph of Fire Ward
(@Mage, 1, 0, 43359), -- Glyph of Frost Armor
(@Mage, 1, 0, 43360), -- Glyph of Frost Ward
(@Mage, 1, 0, 43361), -- Glyph of the Penguin
(@Mage, 1, 0, 43362), -- Glyph of the Bear Cub
(@Mage, 1, 0, 43364), -- Glyph of Slow Fall
(@Mage, 1, 0, 44920); -- Glyph of Blast Wave
DELETE FROM `npc_vendor` WHERE `Entry` = @Warlock;
INSERT INTO `npc_vendor` (`Entry`, `Slot`, `ExtendedCost`, `Item`) VALUES
(@Warlock, 0, 0,  6265), -- Soul Shard
(@Warlock, 1, 0, 42453), -- Glyph of Incinerate
(@Warlock, 1, 0, 42454), -- Glyph of Conflagrate
(@Warlock, 1, 0, 42455), -- Glyph of Corruption
(@Warlock, 1, 0, 42456), -- Glyph of Curse of Agony
(@Warlock, 1, 0, 42457), -- Glyph of Death Coil
(@Warlock, 1, 0, 42458), -- Glyph of Fear
(@Warlock, 1, 0, 42459), -- Glyph of Felguard
(@Warlock, 1, 0, 42460), -- Glyph of Felhunter
(@Warlock, 1, 0, 42461), -- Glyph of Health Funnel
(@Warlock, 1, 0, 42462), -- Glyph of Healthstone
(@Warlock, 1, 0, 42463), -- Glyph of Howl of Terror
(@Warlock, 1, 0, 42464), -- Glyph of Immolate
(@Warlock, 1, 0, 42465), -- Glyph of Imp
(@Warlock, 1, 0, 42466), -- Glyph of Searing Pain
(@Warlock, 1, 0, 42467), -- Glyph of Shadow Bolt
(@Warlock, 1, 0, 42468), -- Glyph of Shadowburn
(@Warlock, 1, 0, 42469), -- Glyph of Siphon Life
(@Warlock, 1, 0, 42470), -- Glyph of Soulstone
(@Warlock, 1, 0, 42471), -- Glyph of Succubus
(@Warlock, 1, 0, 42472), -- Glyph of Unstable Affliction
(@Warlock, 1, 0, 42473), -- Glyph of Voidwalker
(@Warlock, 1, 0, 45779), -- Glyph of Haunt
(@Warlock, 1, 0, 45780), -- Glyph of Metamorphosis
(@Warlock, 1, 0, 45781), -- Glyph of Chaos Bolt
(@Warlock, 1, 0, 45782), -- Glyph of Demonic Circle
(@Warlock, 1, 0, 45783), -- Glyph of Shadowflame
(@Warlock, 1, 0, 45785), -- Glyph of Life Tap
(@Warlock, 1, 0, 45789), -- Glyph of Soul Link
(@Warlock, 1, 0, 50077), -- Glyph of Quick Decay
(@Warlock, 1, 0, 43389), -- Glyph of Unending Breath
(@Warlock, 1, 0, 43390), -- Glyph of Drain Soul
(@Warlock, 1, 0, 43391), -- Glyph of Kilrogg
(@Warlock, 1, 0, 43392), -- Glyph of Curse of Exhaustion
(@Warlock, 1, 0, 43393), -- Glyph of Enslave Demon
(@Warlock, 1, 0, 43394); -- Glyph of Souls
DELETE FROM `npc_vendor` WHERE `Entry` = @Druid;
INSERT INTO `npc_vendor` (`Entry`, `Slot`, `ExtendedCost`, `Item`) VALUES
(@Druid, 0, 0, 17034), -- Maple Seed
(@Druid, 1, 0, 40896), -- Glyph of Frenzied Regeneration
(@Druid, 1, 0, 40897), -- Glyph of Maul
(@Druid, 1, 0, 40899), -- Glyph of Growl
(@Druid, 1, 0, 40900), -- Glyph of Mangle
(@Druid, 1, 0, 40901), -- Glyph of Shred
(@Druid, 1, 0, 40902), -- Glyph of Rip
(@Druid, 1, 0, 40903), -- Glyph of Rake
(@Druid, 1, 0, 40906), -- Glyph of Swiftmend
(@Druid, 1, 0, 40908), -- Glyph of Innervate
(@Druid, 1, 0, 40909), -- Glyph of Rebirth
(@Druid, 1, 0, 40912), -- Glyph of Regrowth
(@Druid, 1, 0, 40913), -- Glyph of Rejuvenation
(@Druid, 1, 0, 40914), -- Glyph of Healing Touch
(@Druid, 1, 0, 40915), -- Glyph of Lifebloom
(@Druid, 1, 0, 40916), -- Glyph of Starfire
(@Druid, 1, 0, 40919), -- Glyph of Insect Swarm
(@Druid, 1, 0, 40920), -- Glyph of Hurricane
(@Druid, 1, 0, 40921), -- Glyph of Starfall
(@Druid, 1, 0, 40922), -- Glyph of Wrath
(@Druid, 1, 0, 40923), -- Glyph of Moonfire
(@Druid, 1, 0, 40924), -- Glyph of Entangling Roots
(@Druid, 1, 0, 44928), -- Glyph of Focus
(@Druid, 1, 0, 45601), -- Glyph of Berserk
(@Druid, 1, 0, 45602), -- Glyph of Wild Growth
(@Druid, 1, 0, 45603), -- Glyph of Nourish
(@Druid, 1, 0, 45604), -- Glyph of Savage Roar
(@Druid, 1, 0, 45622), -- Glyph of Monsoon
(@Druid, 1, 0, 45623), -- Glyph of Barkskin
(@Druid, 1, 0, 46372), -- Glyph of Survival Instincts
(@Druid, 1, 0, 48720), -- Glyph of Claw
(@Druid, 1, 0, 50125), -- Glyph of Rapid Rejuvenation
(@Druid, 1, 0, 43316), -- Glyph of Aquatic Form
(@Druid, 1, 0, 43331), -- Glyph of Unburdened Rebirth
(@Druid, 1, 0, 43332), -- Glyph of Thorns
(@Druid, 1, 0, 43334), -- Glyph of Challenging Roar
(@Druid, 1, 0, 43335), -- Glyph of the Wild
(@Druid, 1, 0, 43674), -- Glyph of Dash
(@Druid, 1, 0, 44922); -- Glyph of Typhoon

-- Glyph/Reagent gossip option
UPDATE `broadcast_text` SET `maletext`='I need Glyphs and Reagents.', `femaletext`=`maletext` WHERE `id`=17573;
UPDATE `broadcast_text` SET `maletext`='I need Glyphs and Reagents.', `femaletext`=`maletext` WHERE `id`=17574;
DELETE FROM `gossip_menu_option` WHERE `menuid` IN (6647,4509,4023,4529,4466,4562,2384,4687,4552) AND `optionid` = 3;
INSERT INTO `gossip_menu_option` (`menuid`, `optionid`, `optionicon`, `optiontext`, `optionbroadcasttextid`, `optiontype`, `optionnpcflag`, `actionmenuid`) VALUES
(6647, 3, 1, 'I need Glyphs.', 17573, 3, 128, 0), -- Paladin
(4509, 3, 1, 'I need Glyphs.', 17573, 3, 128, 0), -- Warrior
(4023, 3, 1, 'I need Glyphs.', 17573, 3, 128, 0), -- Hunter
(4529, 3, 1, 'I need Glyphs and Reagents.', 17574, 3, 128, 0), -- Shaman
(4466, 3, 1, 'I need Glyphs and Reagents.', 17574, 3, 128, 0), -- Priest
(4562, 3, 1, 'I need Glyphs and Reagents.', 17574, 3, 128, 0), -- Rogue
(2384, 3, 1, 'I need Glyphs and Reagents.', 17574, 3, 128, 0), -- Warlock
(4687, 3, 1, 'I need Glyphs and Reagents.', 17574, 3, 128, 0), -- Druid
(4552, 3, 1, 'I need Glyphs and Reagents.', 17574, 3, 128, 0); -- Mage

-- Make emote talk when interacted with
UPDATE `npc_text` SET `em0_0` = 1, `em0_1` = 1 WHERE `id` IN (@Paladin, @Priest, @Warrior, @Shaman, @Rogue);
UPDATE `broadcast_text` SET `emoteid1`=1 WHERE `id` IN (52388,7155,7631,7482,15446);

-- Disable <Take Letter> for Rogues
UPDATE `conditions` SET `ConditionValue1`='100' WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4577 AND `SourceEntry`=4 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=27 AND `ConditionTarget`=0 AND `ConditionValue1`=24 AND `ConditionValue2`=3 AND `ConditionValue3`=0;

-- Disable Dar'orahil quest for Warlocks
UPDATE `quest_template` SET `minlevel` = 81 WHERE `ID` IN (4969,4968,4967,4965);
