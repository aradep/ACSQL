-- Classes start with all blizzlike weapon skills.
-- ---------------------------------------------------------------------------------- --

-- Skills --
REPLACE INTO playercreateinfo_skills (`racemask`, `classmask`, `skill`, `rank`, `comment`) VALUES
(0, 431,  43,  0, '1h Sword Skill'),
(0, 39,   55,  0, '2h Sword Skill'),
(0, 1147, 54,  0, '1h Mace Skill'),
(0, 1123, 160, 0, '2h Mace Skill'),
(0, 111,  44,  0, '1h Axe Skill'),
(0, 103,  172, 0, '2h Axe Skill'),
(0, 1063, 229, 0, 'Polearm Skill'),
(0, 1493, 136, 0, 'Staff Skill'),
(0, 13,   45,  0, 'Bow Skill'),
(0, 13,   226, 0, 'Crossbow Skill'),
(0, 13,   46,  0, 'Gun Skill'),
(0, 13,   176, 0, 'Thrown Skill'),
(0, 1501, 173, 0, 'Dagger Skill'),
(0, 1493, 228, 0, 'Wand Skill'),
(0, 1501, 162, 0, 'Unarmed Skill'),
(0, 0,    95,  0, 'Defense Skill');

-- Spells --
REPLACE INTO playercreateinfo_spell_custom (`classmask`, `Spell`, `Note`) VALUES
(431,  201,   '1h Swords'),
(39,   202,   '2h Swords'),
(1147, 198,   '1h Maces'),
(1123, 199,   '2h Maces'),
(111,  196,   '1h Axes'),
(103,  197,   '2h Axe'),
(1063, 200,   'Polearm'),
(1493, 227,   'Staff'),
(13,   264,   'Bows'),
(13,   5011,  'Crossbows'),
(13,   266,   'Guns'),
(13,   2764,  'Throw'),
(13,   2567,  'Thrown'),
(1501, 1180,  'Daggers'),
(9,    3018,  'Shoot'),
(1101, 15590, 'Fist Weapons');
