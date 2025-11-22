#pragma once
#ifndef __ENUM_H__
#define __ENUM_H__
// From https://github.com/Daniels118/blackandwhite/tree/main/chlasm/headers
// Last Saved,#2001-11-15 15:39:30#,"Jonty Barnes"

//*****************************************************************************
// ENUM Values: VARIABLES
//*****************************************************************************
enum     VARIABLES
{
    NUMBER_OF_STORY_LANDS                           =  5 ,
};

//*****************************************************************************
// ENUM Values: OBJECT_TYPE
//*****************************************************************************
enum     OBJECT_TYPE
{
    OBJECT_TYPE_INVALID                             = -2 ,
    OBJECT_TYPE_ANY                                 = -1 ,
    OBJECT_TYPE_ABODE                               =  0 ,
    OBJECT_TYPE_CREATURE                            =  1 ,
    OBJECT_TYPE_VILLAGER                            =  2 ,
    OBJECT_TYPE_MAGIC                               =  3 ,
    OBJECT_TYPE_ANIMAL                              =  4 ,
    OBJECT_TYPE_LIGHTNING                           =  5 ,
    OBJECT_TYPE_FOREST_TREE                         =  6 ,
    OBJECT_TYPE_FIREWALL_SECTION                    =  7 ,
    OBJECT_TYPE_CITADEL                             =  8 ,
    OBJECT_TYPE_TERRAIN                             =  9 ,
    OBJECT_TYPE_MAGIC_LIVING                        =  10 ,
    OBJECT_TYPE_WALL_SECTION                        =  11 ,
    OBJECT_TYPE_FAKE_WALL_SECTION                   =  12 ,
    OBJECT_TYPE_SPELL                               =  13 ,
    OBJECT_TYPE_BOUNDRY                             =  14 ,
    OBJECT_TYPE_BALL                                =  15 ,
    OBJECT_TYPE_SHOT                                =  16 ,
    OBJECT_TYPE_COMPUTER_PLAYER                     =  17 ,
    OBJECT_TYPE_FIELD                               =  18 ,
    OBJECT_TYPE_FEATURE                             =  19 ,
    OBJECT_TYPE_MOBILE_OBJECT                       =  20 ,
    OBJECT_TYPE_POT                                 =  21 ,
    OBJECT_TYPE_FOOTBALL                            =  22 ,
    OBJECT_TYPE_GROUND                              =  23 ,
    OBJECT_TYPE_PRAYER                              =  24 ,
    OBJECT_TYPE_SHOW_NEED                           =  25 ,
    OBJECT_TYPE_PFOOTBALL                           =  26 ,
    OBJECT_TYPE_PBALL                               =  27 ,
    OBJECT_TYPE_MOBILE_STATIC                       =  28 ,
    OBJECT_TYPE_DUMMY                               =  29 ,
    OBJECT_TYPE_HELP_SPIRIT                         =  30 ,
    OBJECT_TYPE_TOTEM_STATUE                        =  31 ,
    OBJECT_TYPE_BIG_FOREST                          =  32 ,
    OBJECT_TYPE_FISH_FARM                           =  33 ,
    OBJECT_TYPE_REWARD                              =  34 ,
    OBJECT_TYPE_SCRIPT_HIGHLIGHT                    =  35 ,
    OBJECT_TYPE_WATERFALL                           =  36 ,
    OBJECT_TYPE_HELP_ORB                            =  37 ,
    OBJECT_TYPE_LEASH_SELECTOR                      =  38 ,
    OBJECT_TYPE_ONE_OFF_SPELL                       =  39 ,
    OBJECT_TYPE_FURNITURE                           =  40 ,
    OBJECT_TYPE_FLOWERS                             =  41 ,
    OBJECT_TYPE_FIREFLY                             =  42 ,
    OBJECT_TYPE_ARENA_SPELL_ICON                    =  43 ,
    OBJECT_TYPE_MAP_SHIELD                          =  44 ,
    OBJECT_TYPE_CREATURE_ISLES_BUILDING             =  45 ,
    OBJECT_TYPE_LAST                                =  46 ,
};

//*****************************************************************************
// ENUM Values: VILLAGER_JOB
//*****************************************************************************
enum     VILLAGER_JOB
{
    VILLAGER_JOB_NONE                               =  0 ,
    VILLAGER_JOB_FISHERMAN                          =  1 ,
    VILLAGER_JOB_FIRST                              =  1 ,
    VILLAGER_JOB_FORESTER                           =  2 ,
    VILLAGER_JOB_FARMER                             =  3 ,
    VILLAGER_JOB_SHEPHERD                           =  4 ,
    VILLAGER_JOB_LEADER                             =  5 ,
    VILLAGER_JOB_HOUSEWIFE                          =  6 ,
    VILLAGER_JOB_TRADER                             =  7 ,
    VILLAGER_JOB_LAST                               =  8 ,
};

//*****************************************************************************
// ENUM Values: ABODE_TYPE
//*****************************************************************************
enum     ABODE_TYPE
{
    ABODE_TYPE_GENERAL                              =  1 ,
    ABODE_TYPE_LIVING_QUARTERS                      =  2 ,
    ABODE_TYPE_CIVIC                                =  4 ,
    ABODE_TYPE_WINDMILL                             =  10 ,
    ABODE_TYPE_TOTEM                                =  20 ,
    ABODE_TYPE_STORAGE_PIT                          =  36 ,
    ABODE_TYPE_CRECHE                               =  68 ,
    ABODE_TYPE_WORKSHOP                             =  132 ,
    ABODE_TYPE_WONDER                               =  256 ,
    ABODE_TYPE_GRAVEYARD                            =  516 ,
    ABODE_TYPE_TOWN_CENTRE                          =  1028 ,
    ABODE_TYPE_CITADEL                              =  2052 ,
    ABODE_TYPE_FOOTBALL_PITCH                       =  4100 ,
    ABODE_TYPE_SPELL_DISPENSER                      =  8196 ,
    ABODE_TYPE_FIELD                                =  16388 ,
    ABODE_TYPE_ANY                                  =  32767 ,
    ABODE_TYPE_LAST                                 =  32768 ,
};

//*****************************************************************************
// ENUM Values: LIVING_TYPE
//*****************************************************************************
enum     LIVING_TYPE
{
    LIVING_TYPE_ANY                                 = -1 ,
    LIVING_TYPE_LION                                =  0 ,
    LIVING_TYPE_TIGER                               =  1 ,
    LIVING_TYPE_WOLF                                =  2 ,
    LIVING_TYPE_LEOPARD                             =  3 ,
    LIVING_TYPE_SHEEP                               =  4 ,
    LIVING_TYPE_GOAT                                =  5 ,
    LIVING_TYPE_TORTOISE                            =  6 ,
    LIVING_TYPE_ZEBRA                               =  7 ,
    LIVING_TYPE_COW                                 =  8 ,
    LIVING_TYPE_HORSE                               =  9 ,
    LIVING_TYPE_PIG                                 =  10 ,
    LIVING_TYPE_CROW                                =  11 ,
    LIVING_TYPE_DOVE                                =  12 ,
    LIVING_TYPE_SWALLOW                             =  13 ,
    LIVING_TYPE_PIGEON                              =  14 ,
    LIVING_TYPE_SEAGULL                             =  15 ,
    LIVING_TYPE_BAT                                 =  16 ,
    LIVING_TYPE_VULTURE                             =  17 ,
    LIVING_TYPE_APES                                =  18 ,
    LIVING_TYPE_BEAR                                =  19 ,
    LIVING_TYPE_HELP_SPIRIT                         =  20 ,
    LIVING_TYPE_VILLAGER                            =  21 ,
    LIVING_TYPE_LAST                                =  22 ,
};

//*****************************************************************************
// ENUM Values: ANIMAL_INFO
//*****************************************************************************
enum     ANIMAL_INFO
{
    ANIMAL_INFO_NONE                                = -1 ,
    ANIMAL_INFO_LION                                =  0 ,
    ANIMAL_INFO_TIGER                               =  1 ,
    ANIMAL_INFO_WOLF                                =  2 ,
    ANIMAL_INFO_LEOPARD                             =  3 ,
    ANIMAL_INFO_SHEEP                               =  4 ,
    ANIMAL_INFO_GOAT                                =  5 ,
    ANIMAL_INFO_TORTOISE                            =  6 ,
    ANIMAL_INFO_ZEBRA                               =  7 ,
    ANIMAL_INFO_COW                                 =  8 ,
    ANIMAL_INFO_HORSE                               =  9 ,
    ANIMAL_INFO_PIG                                 =  10 ,
    ANIMAL_INFO_CROW                                =  11 ,
    ANIMAL_INFO_DOVE                                =  12 ,
    ANIMAL_INFO_SWALLOW                             =  13 ,
    ANIMAL_INFO_PIGEON                              =  14 ,
    ANIMAL_INFO_SEAGULL                             =  15 ,
    ANIMAL_INFO_BAT                                 =  16 ,
    ANIMAL_INFO_VULTURE                             =  17 ,
    ANIMAL_INFO_CITADEL_DOVE                        =  18 ,
    ANIMAL_INFO_CITADEL_BAT                         =  19 ,
    ANIMAL_INFO_SPELL_DOVE                          =  20 ,
    ANIMAL_INFO_SPELL_BAT                           =  21 ,
    ANIMAL_INFO_SPELL_WOLF                          =  22 ,
    ANIMAL_INFO_PUZZLE_LION                         =  23 ,
    ANIMAL_INFO_PUZZLE_SHEEP                        =  24 ,
    ANIMAL_INFO_PUZZLE_WOLF                         =  25 ,
    ANIMAL_INFO_PUZZLE_VILLAGER                     =  26 ,
    ANIMAL_INFO_PUZZLE_HORSE                        =  27 ,
    ANIMAL_INFO_PUZZLE_COW                          =  28 ,
    ANIMAL_INFO_PUZZLE_TORTOISE                     =  29 ,
    ANIMAL_INFO_PUZZLE_PIG                          =  30 ,
    ANIMAL_INFO_LAST                                =  31 ,
};

//*****************************************************************************
// ENUM Values: TRIBE_TYPE
//*****************************************************************************
enum     TRIBE_TYPE
{
    TRIBE_TYPE_NONE                                 = -1 ,
    TRIBE_TYPE_FIRST                                =  0 ,
    TRIBE_TYPE_CELTIC                               =  0 ,
    TRIBE_TYPE_AFRICAN                              =  1 ,
    TRIBE_TYPE_AZTEC                                =  2 ,
    TRIBE_TYPE_JAPANESE                             =  3 ,
    TRIBE_TYPE_INDIAN                               =  4 ,
    TRIBE_TYPE_EGYPTIAN                             =  5 ,
    TRIBE_TYPE_GREEK                                =  6 ,
    TRIBE_TYPE_NORSE                                =  7 ,
    TRIBE_TYPE_TIBETAN                              =  8 ,
    TRIBE_TYPE_LAST                                 =  9 ,
};

//*****************************************************************************
// ENUM Values: ABODE_NUMBER
//*****************************************************************************
enum     ABODE_NUMBER
{
    ABODE_NUMBER_INVALID                            = -1 ,
    ABODE_NUMBER_A                                  =  0 ,
    ABODE_NUMBER_B                                  =  1 ,
    ABODE_NUMBER_C                                  =  2 ,
    ABODE_NUMBER_D                                  =  3 ,
    ABODE_NUMBER_E                                  =  4 ,
    ABODE_NUMBER_F                                  =  5 ,
    ABODE_NUMBER_TOTEM                              =  6 ,
    ABODE_NUMBER_STORAGE_PIT                        =  7 ,
    ABODE_NUMBER_CRECHE                             =  8 ,
    ABODE_NUMBER_WORKSHOP                           =  9 ,
    ABODE_NUMBER_WONDER                             =  10 ,
    ABODE_NUMBER_GRAVEYARD                          =  11 ,
    ABODE_NUMBER_TOWN_CENTRE                        =  12 ,
    ABODE_NUMBER_FOOTBALL_PITCH                     =  13 ,
    ABODE_NUMBER_SPELL_DISPENSER                    =  14 ,
    ABODE_NUMBER_FIELD                              =  15 ,
    ABODE_NUMBER_LAST                               =  16 ,
};

//*****************************************************************************
// ENUM Values: SPELL_SYSTEM_INFO
//*****************************************************************************
enum     SPELL_SYSTEM_INFO
{
    SPELL_SYSTEM_INFO_FIRST                         =  0 ,
    SPELL_SYSTEM_INFO_LAST                          =  1 ,
};

//*****************************************************************************
// ENUM Values: SPELL_SEED_TYPE
//*****************************************************************************
enum     SPELL_SEED_TYPE
{
    SPELL_SEED_TYPE_NONE                            = -1 ,
    SPELL_SEED_TYPE_FIRST                           =  0 ,
    SPELL_SEED_TYPE_STORM                           =  0 ,
    SPELL_SEED_TYPE_NATURE                          =  1 ,
    SPELL_SEED_TYPE_FIRE                            =  2 ,
    SPELL_SEED_TYPE_FOOD                            =  3 ,
    SPELL_SEED_TYPE_SHIELD                          =  4 ,
    SPELL_SEED_TYPE_PHYSICAL_SHIELD                 =  5 ,
    SPELL_SEED_TYPE_LIGHTNING_BOLT                  =  6 ,
    SPELL_SEED_TYPE_HEAL                            =  7 ,
    SPELL_SEED_TYPE_WOOD                            =  8 ,
    SPELL_SEED_TYPE_WATER                           =  9 ,
    SPELL_SEED_TYPE_FLOCK_FLYING                    =  10 ,
    SPELL_SEED_TYPE_FLOCK_GROUND                    =  11 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_FREEZE           =  12 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_SMALL            =  13 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_BIG              =  14 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_WEAK             =  15 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_STRONG           =  16 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_FAT              =  17 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_THIN             =  18 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_INVISIBLE        =  19 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_COMPASSION       =  20 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_ANGRY            =  21 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_HUNGRY           =  22 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_FRIGHTENE        =  23 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_TIRED            =  24 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_ILL              =  25 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_THIRSTY          =  26 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_ITCHY            =  27 ,
    SPELL_SEED_TYPE_TELEPORT                        =  28 ,
    SPELL_SEED_TYPE_BEAM_EXPLOSION                  =  29 ,
    SPELL_SEED_TYPE_LAST_141                        =  30 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_ANTI_SPELL       =  30 ,
    SPELL_SEED_TYPE_CREATURE_SPELL_FAST             =  31 ,
    SPELL_SEED_TYPE_LAST_CI                         =  32 ,
};

//*****************************************************************************
// ENUM Values: GESTURE_TYPE
//*****************************************************************************
enum     GESTURE_TYPE
{
    GESTURE_TYPE_NONE                               =  0 ,
    GESTURE_TYPE_SPIRAL                             =  1 ,
    GESTURE_TYPE_INVERSE_SPIRAL                     =  2 ,
    GESTURE_TYPE_S_SHAPE                            =  3 ,
    GESTURE_TYPE_CIRCLE                             =  4 ,
    GESTURE_TYPE_SCRIBBLE                           =  5 ,
    GESTURE_TYPE_THREE                              =  6 ,
    GESTURE_TYPE_VERTICAL_SCRIBBLE                  =  7 ,
    GESTURE_TYPE_STAR                               =  8 ,
    GESTURE_TYPE_FORK_RIGHT                         =  9 ,
    GESTURE_TYPE_FORK_UP                            =  10 ,
    GESTURE_TYPE_FORK_LEFT                          =  11 ,
    GESTURE_TYPE_FORK_DOWN                          =  12 ,
    GESTURE_TYPE_HEART                              =  13 ,
    GESTURE_TYPE_R_SHAPE                            =  14 ,
    GESTURE_TYPE_SQUARE_SPIRIAL                     =  15 ,
    GESTURE_TYPE_CYRILLIC_L                         =  16 ,
    GESTURE_TYPE_E_SHAPE                            =  17 ,
    GESTURE_TYPE_REVERSE_S                          =  18 ,
    GESTURE_TYPE_INFINITY                           =  19 ,
    GESTURE_TYPE_W_SHAPE                            =  20 ,
    GESTURE_TYPE_HOUSE                              =  21 ,
    GESTURE_TYPE_INVERSE_SQUARE_SPIRAL              =  22 ,
    GESTURE_TYPE_SQUARE_WAVE                        =  23 ,
    GESTURE_TYPE_LAST                               =  24 ,
};

//*****************************************************************************
// ENUM Values: FIELD_TYPE_INFO
//*****************************************************************************
enum     FIELD_TYPE_INFO
{
    FIELD_INFO_TYPE_WHEAT                           =  0 ,
    FIELD_INFO_TYPE_WHEAT_WITH_FENCE                =  1 ,
    FIELD_INFO_TYPE_CORN                            =  2 ,
    FIELD_INFO_TYPE_CORN_WITH_FENCE                 =  3 ,
    FIELD_INFO_TYPE_CEREAL                          =  4 ,
    FIELD_INFO_TYPE_CEREAL_WITH_FENCE               =  5 ,
    FIELD_INFO_TYPE_SPECIAL_CROP                    =  6 ,
    FIELD_INFO_TYPE_LAST                            =  7 ,
};

//*****************************************************************************
// ENUM Values: MAGIC_FIREBALL_TYPE
//*****************************************************************************
enum     MAGIC_FIREBALL_TYPE
{
    MAGIC_FIREBALL_TYPE_FIRST                       =  0 ,
    MAGIC_FIREBALL_TYPE_NORMAL                      =  0 ,
    MAGIC_FIREBALL_TYPE_PU1                         =  1 ,
    MAGIC_FIREBALL_TYPE_PU2                         =  2 ,
    MAGIC_FIREBALL_TYPE_LAST                        =  3 ,
};

//*****************************************************************************
// ENUM Values: VORTEX_STAT_TYPE
//*****************************************************************************
enum     VORTEX_STAT_TYPE
{
    VORTEX_STAT_TYPE_TOTAL_OBJECTS                  =  0 ,
    VORTEX_STAT_TYPE_RESOURCE_FOOD                  =  1 ,
    VORTEX_STAT_TYPE_RESOURCE_WOOD                  =  2 ,
    VORTEX_STAT_TYPE_VILLAGER                       =  3 ,
    VORTEX_STAT_TYPE_ONESHOT                        =  4 ,
    VORTEX_STAT_TYPE_LAST                           =  5 ,
};

//*****************************************************************************
// ENUM Values: VORTEX_STATE_TYPE
//*****************************************************************************
enum     VORTEX_STATE_TYPE
{
    VORTEX_STATE_INACTIVE                           =  0 ,
    VORTEX_STATE_ACTIVE                             =  1 ,
    VORTEX_STATE_FADE_IN                            =  2 ,
    VORTEX_STATE_FADE_OUT                           =  3 ,
};

//*****************************************************************************
// ENUM Values: VORTEX_TYPE
//*****************************************************************************
enum     VORTEX_TYPE
{
    VORTEX_TYPE_IN                                  =  0 ,
    VORTEX_TYPE_OUT                                 =  1 ,
    VORTEX_TYPE_VOLCANO                             =  2 ,
    VORTEX_TYPE_LAST                                =  3 ,
};

//*****************************************************************************
// ENUM Values: PARTICLE_TYPE
//*****************************************************************************
enum     PARTICLE_TYPE
{
    PARTICLE_TYPE_NONE                              =  0 ,
    PARTICLE_TYPE_TORNADO                           =  1 ,
    PARTICLE_TYPE_FIREWORK                          =  2 ,
    PARTICLE_TYPE_FIREWORK_SINGLE                   =  3 ,
    PARTICLE_TYPE_LEAVES                            =  4 ,
    PARTICLE_TYPE_MAGICBALL                         =  5 ,
    PARTICLE_TYPE_LIGHTNING                         =  6 ,
    PARTICLE_TYPE_LIGHTNING_BOLT                    =  7 ,
    PARTICLE_TYPE_EXPLOSION_1                       =  8 ,
    PARTICLE_TYPE_FOOD                              =  9 ,
    PARTICLE_TYPE_FOOD_POISONED                     =  10 ,
    PARTICLE_TYPE_EXPLOSION_ONE                     =  11 ,
    PARTICLE_TYPE_EXPLOSION_ONE_PU_ONE              =  12 ,
    PARTICLE_TYPE_EXPLOSION_ONE_PU_TWO              =  13 ,
    PARTICLE_TYPE_EXPLOSION_CITADEL                 =  14 ,
    PARTICLE_TYPE_WOOD                              =  15 ,
    PARTICLE_TYPE_WATER                             =  16 ,
    PARTICLE_TYPE_WATER_PU_ONE                      =  17 ,
    PARTICLE_TYPE_WATER_ON_HOLDER                   =  18 ,
    PARTICLE_TYPE_WATER_IN_HAND                     =  19 ,
    PARTICLE_TYPE_WATER_IN_HAND_PU_ONE              =  20 ,
    PARTICLE_TYPE_HEAL                              =  21 ,
    PARTICLE_TYPE_MANA_PATH                         =  22 ,
    PARTICLE_TYPE_EXPLODE_OBJECT                    =  23 ,
    PARTICLE_TYPE_BELIEF_SPRITE                     =  24 ,
    PARTICLE_TYPE_TOWN_BELIEF                       =  25 ,
    PARTICLE_TYPE_SPELL_FAIL                        =  26 ,
    PARTICLE_TYPE_SPELL_SUCCEED                     =  27 ,
    PARTICLE_TYPE_SPELL_SELECTION                   =  28 ,
    PARTICLE_TYPE_GRIP_LANDSCAPE                    =  29 ,
    PARTICLE_TYPE_MAGIC_OBJECT_CREATED              =  30 ,
    PARTICLE_TYPE_CREATURE_GESTURE                  =  31 ,
    PARTICLE_TYPE_VILLAGER_TELEPORT                 =  32 ,
    PARTICLE_TYPE_CREATURE_TARGET                   =  33 ,
    PARTICLE_TYPE_CREATURE_CAST_VISUAL              =  34 ,
    PARTICLE_TYPE_GESTURE                           =  35 ,
    PARTICLE_TYPE_KB_TEST                           =  36 ,
    PARTICLE_TYPE_ON_FIRE                           =  37 ,
    PARTICLE_TYPE_MAGIC_FX                          =  38 ,
    PARTICLE_TYPE_MAGIC_FX_ON_OBJECT                =  39 ,
    PARTICLE_TYPE_MAGIC_FX_ON_CITADEL               =  40 ,
    PARTICLE_TYPE_FIRE_FX                           =  41 ,
    PARTICLE_TYPE_FIRE_FX_ON_OBJECT                 =  42 ,
    PARTICLE_TYPE_FIREBALL                          =  43 ,
    PARTICLE_TYPE_FIREBALL_IN_HAND                  =  44 ,
    PARTICLE_TYPE_FIREBALL_IN_HAND_PU_ONE           =  45 ,
    PARTICLE_TYPE_FIREBALL_IN_HAND_PU_TWO           =  46 ,
    PARTICLE_TYPE_FIREBALL_ON_HOLDER                =  47 ,
    PARTICLE_TYPE_GESTURE_LOCAL                     =  48 ,
    PARTICLE_TYPE_MAGIC_SYSTEM                      =  49 ,
    PARTICLE_TYPE_HEAL_IN_HAND                      =  50 ,
    PARTICLE_TYPE_HEAL_ON_HOLDER                    =  51 ,
    PARTICLE_TYPE_FIREBALL_PU_ONE                   =  52 ,
    PARTICLE_TYPE_FIREBALL_PU_TWO                   =  53 ,
    PARTICLE_TYPE_HEAL_PU_ONE                       =  54 ,
    PARTICLE_TYPE_LIGHTNING_STORM_IN_HAND           =  55 ,
    PARTICLE_TYPE_LIGHTNING_STORM_IN_HAND_PU_ONE    =  56 ,
    PARTICLE_TYPE_LIGHTNING_STORM_IN_HAND_PU_TWO    =  57 ,
    PARTICLE_TYPE_LIGHTNING_STORM_ON_HOLDER         =  58 ,
    PARTICLE_TYPE_LIGHTNING_BOLT_IN_HAND            =  59 ,
    PARTICLE_TYPE_LIGHTNING_BOLT_ON_HOLDER          =  60 ,
    PARTICLE_TYPE_LIGHTNING_STRIKE                  =  61 ,
    PARTICLE_TYPE_LIGHTNING_SINGLE_STRIKE           =  62 ,
    PARTICLE_TYPE_FOOD_IN_HAND                      =  63 ,
    PARTICLE_TYPE_SHIELD                            =  64 ,
    PARTICLE_TYPE_SHIELD_IN_HAND                    =  65 ,
    PARTICLE_TYPE_SHIELD_ON_HOLDER                  =  66 ,
    PARTICLE_TYPE_PHYSICAL_SHIELD_FX                =  67 ,
    PARTICLE_TYPE_LIGHTNING_BOLT_PU_ONE             =  68 ,
    PARTICLE_TYPE_LIGHTNING_BOLT_PU_TWO             =  69 ,
    PARTICLE_TYPE_LIGHTNING_BOLT_IN_HAND_PU_ONE     =  70 ,
    PARTICLE_TYPE_LIGHTNING_BOLT_IN_HAND_PU_TWO     =  71 ,
    PARTICLE_TYPE_TELEPORT                          =  72 ,
    PARTICLE_TYPE_TELEPORT_VORTEX                   =  73 ,
    PARTICLE_TYPE_TELEPORT_ON_HOLDER                =  74 ,
    PARTICLE_TYPE_TELEPORT_IN_HAND                  =  75 ,
    PARTICLE_TYPE_LANDSCAPE_VORTEX_OBJECT_MOVER     =  76 ,
    PARTICLE_TYPE_LANDSCAPE_VORTEX_LIGHTMAP         =  77 ,
    PARTICLE_TYPE_LANDSCAPE_VORTEX_IN_BEFORE        =  78 ,
    PARTICLE_TYPE_LANDSCAPE_VORTEX_IN_AFTER         =  79 ,
    PARTICLE_TYPE_LANDSCAPE_VORTEX_OUT_BEFORE       =  80 ,
    PARTICLE_TYPE_LANDSCAPE_VORTEX_OUT_AFTER        =  81 ,
    PARTICLE_TYPE_VOLCANO_VORTEX_BEFORE             =  82 ,
    PARTICLE_TYPE_VOLCANO_VORTEX_AFTER              =  83 ,
    PARTICLE_TYPE_VOLCANO_VORTEX_LIGHTMAP           =  84 ,
    PARTICLE_TYPE_CREATURE_SPELL_PHYSICAL           =  85 ,
    PARTICLE_TYPE_CREATURE_SPELL_MENTAL             =  86 ,
    PARTICLE_TYPE_CREATURE_SPELL_ITCHY              =  87 ,
    PARTICLE_TYPE_CREATURE_SPELL_ITCHY_IN_HAND      =  88 ,
    PARTICLE_TYPE_CREATURE_SPELL_ITCHY_ON_HOLDER    =  89 ,
    PARTICLE_TYPE_CREATURE_SPELL_FREEZE             =  90 ,
    PARTICLE_TYPE_CREATURE_SPELL_FREEZE_IN_HAND     =  91 ,
    PARTICLE_TYPE_CREATURE_SPELL_FREEZE_ON_HOLDER   =  92 ,
    PARTICLE_TYPE_CREATURE_SPELL_COMPASSION         =  93 ,
    PARTICLE_TYPE_CREATURE_SPELL_COMPASSION_IN_HAND =  94 ,
    PARTICLE_TYPE_CREATURE_SPELL_COMPASSION_ON_HOLDER
                                                    =  95 ,
    PARTICLE_TYPE_CREATURE_SPELL_WEAK               =  96 ,
    PARTICLE_TYPE_CREATURE_SPELL_WEAK_IN_HAND       =  97 ,
    PARTICLE_TYPE_CREATURE_SPELL_WEAK_ON_HOLDER     =  98 ,
    PARTICLE_TYPE_SCRIPT_HIGHLIGHT_GOLD_GLINTS      =  99 ,
    PARTICLE_TYPE_SCRIPT_HIGHLIGHT_SILVER_GLINTS    =  100 ,
    PARTICLE_TYPE_SCRIPT_HIGHLIGHT_BRONZE_GLINTS    =  101 ,
    PARTICLE_TYPE_SCRIPT_HIGHLIGHT_GOLD_ACTIVE      =  102 ,
    PARTICLE_TYPE_SCRIPT_HIGHLIGHT_SILVER_ACTIVE    =  103 ,
    PARTICLE_TYPE_FLOCK_FLYING                      =  104 ,
    PARTICLE_TYPE_FLOCK_GROUND                      =  105 ,
    PARTICLE_TYPE_STORM_CAST                        =  106 ,
    PARTICLE_TYPE_FOOD_PICKUP                       =  107 ,
    PARTICLE_TYPE_FOOD_PICKUP_POISONED              =  108 ,
    PARTICLE_TYPE_FOOD_PICKUP_FISH                  =  109 ,
    PARTICLE_TYPE_WOOD_PICKUP                       =  110 ,
    PARTICLE_TYPE_FOOD_PUTDOWN_POISONED             =  111 ,
    PARTICLE_TYPE_WOOD_PUTDOWN                      =  112 ,
    PARTICLE_TYPE_FOOD_PUTDOWN                      =  113 ,
    PARTICLE_TYPE_STEAM                             =  114 ,
    PARTICLE_TYPE_SMOKE                             =  115 ,
    PARTICLE_TYPE_BONFIRE                           =  116 ,
    PARTICLE_TYPE_EVIL_SMOKE                        =  117 ,
    PARTICLE_TYPE_DUST                              =  118 ,
    PARTICLE_TYPE_MAGIC_BEAM                        =  119 ,
    PARTICLE_TYPE_MAGIC_BEAM_ON_CITADEL             =  120 ,
    PARTICLE_TYPE_MAGIC_BEAM_CREATURE_SWAP          =  121 ,
    PARTICLE_TYPE_FLOCK_FLYING_CAST_GOOD            =  122 ,
    PARTICLE_TYPE_FLOCK_FLYING_CAST_EVIL            =  123 ,
    PARTICLE_TYPE_FLOCK_FLYING_RAIN_GOOD            =  124 ,
    PARTICLE_TYPE_FLOCK_FLYING_RAIN_EVIL            =  125 ,
    PARTICLE_TYPE_FLOCK_GROUND_DUST                 =  126 ,
    PARTICLE_TYPE_BUTTERFLIES                       =  127 ,
    PARTICLE_TYPE_BUTTERFLIES_ON_OBJECT             =  128 ,
    PARTICLE_TYPE_FLIES                             =  129 ,
    PARTICLE_TYPE_FLIES_ON_OBJECT                   =  130 ,
    PARTICLE_TYPE_OBJECT_APPEAR                     =  131 ,
    PARTICLE_TYPE_OBJECT_DISAPPEAR                  =  132 ,
    PARTICLE_TYPE_SING_STONES_GLOW                  =  133 ,
    PARTICLE_TYPE_PLAYER_ICON_FOUNTAIN              =  134 ,
    PARTICLE_TYPE_BANG                              =  135 ,
    PARTICLE_TYPE_HEAL_FX                           =  136 ,
    PARTICLE_TYPE_HIGHLIGHT_ON_OBJECT               =  137 ,
    PARTICLE_TYPE_BEAM_EXPLOSION_FX                 =  138 ,
    PARTICLE_TYPE_FLASH                             =  139 ,
    PARTICLE_TYPE_TICKER_TAPE                       =  140 ,
    PARTICLE_TYPE_FOREST_CREATED                    =  141 ,
    PARTICLE_TYPE_SINGING_STONES_HEAL               =  142 ,
    PARTICLE_TYPE_PILEFOOD_SPEEDUP                  =  143 ,
    PARTICLE_TYPE_SPELLDISPENSER_VORTEX             =  144 ,
    PARTICLE_TYPE_SEE_THIS_BEAM                     =  145 ,
    PARTICLE_TYPE_SEE_THIS_BEAM2                    =  146 ,
    PARTICLE_TYPE_TEST                              =  147 ,
    PARTICLE_TYPE_TEST2                             =  148 ,
    PARTICLE_TYPE_TEST3                             =  149 ,
    PARTICLE_TYPE_LAST                              =  150 ,
};

//*****************************************************************************
// ENUM Values: LEASH_SELECTOR_TYPE
//*****************************************************************************
enum     LEASH_SELECTOR_TYPE
{
    LEASH_INFO_SELECTOR                             =  0 ,
    LEASH_INFO_SELECTOR_LAST                        =  1 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_ISLES_BUILDINGS_INFO
//*****************************************************************************
enum     CREATURE_ISLES_BUILDINGS_INFO
{
    CREATURE_ISLES_BUILDINGS_INFO_DOJO              =  0 ,
    CREATURE_ISLES_BUILDINGS_INFO_STADIUM           =  1 ,
    CREATURE_ISLES_BUILDINGS_INFO_LAST              =  2 ,
};

//*****************************************************************************
// ENUM Values: LEASH_TYPE
//*****************************************************************************
enum     LEASH_TYPE
{
    LEASH_TYPE_NONE                                 = -1 ,
    LEASH_TYPE_FIRST                                =  0 ,
    LEASH_TYPE_EVIL                                 =  1 ,
    LEASH_TYPE_ROPE                                 =  2 ,
    LEASH_TYPE_GOOD                                 =  3 ,
    // LEASH_TYPE_LAST                                 =  4 ,
    LEASH_TYPE_LAST                                 =  3 , // Seems like every named type is offset by 1
};

//*****************************************************************************
// ENUM Values: FEATURE_INFO
//*****************************************************************************
enum     FEATURE_INFO
{
    FEATURE_INFO_NONE                               = -1 ,
    FEATURE_INFO_AZTC_OLMECHEAD                     =  0 ,
    FEATURE_INFO_AZTC_STATUE                        =  1 ,
    FEATURE_INFO_AZTC_SUNTEMPLE                     =  2 ,
    FEATURE_INFO_AZTC_TEMPLE                        =  3 ,
    FEATURE_INFO_EGPT_NEEDLE                        =  4 ,
    FEATURE_INFO_EGPT_PYRAMID                       =  5 ,
    FEATURE_INFO_EGPT_WELL                          =  6 ,
    FEATURE_INFO_GREK_ACROPOLIS                     =  7 ,
    FEATURE_INFO_TIBT_LARGE_PILLER                  =  8 ,
    FEATURE_INFO_TIBT_TEMPLE                        =  9 ,
    FEATURE_INFO_MINE_ENTRANCE                      =  10 ,
    FEATURE_INFO_PRISON_PILLAR_1                    =  11 ,
    FEATURE_INFO_PRISON_PILLAR_2                    =  12 ,
    FEATURE_INFO_PRISON_PILLAR_3                    =  13 ,
    FEATURE_INFO_OLD_4                              =  14 ,
    FEATURE_INFO_OLD_5                              =  15 ,
    FEATURE_INFO_OLD_6                              =  16 ,
    FEATURE_INFO_OLD_7                              =  17 ,
    FEATURE_INFO_OLD_8                              =  18 ,
    FEATURE_INFO_OLD_9                              =  19 ,
    FEATURE_INFO_OLD_10                             =  20 ,
    FEATURE_INFO_OLD_11                             =  21 ,
    FEATURE_INFO_OLD_12                             =  22 ,
    FEATURE_INFO_FAT_PILAR_CHALK                    =  23 ,
    FEATURE_INFO_FAT_PILAR_LIME                     =  24 ,
    FEATURE_INFO_FAT_PILAR_SAND                     =  25 ,
    FEATURE_INFO_FAT_PILAR_VOLCANIC                 =  26 ,
    FEATURE_INFO_F_PIPER_CAVE                       =  27 ,
    FEATURE_INFO_F_PIPER_CAVE_ROCK                  =  28 ,
    FEATURE_INFO_PILAR2_CHALK                       =  29 ,
    FEATURE_INFO_PILAR2_LIME                        =  30 ,
    FEATURE_INFO_PILAR2_SAND                        =  31 ,
    FEATURE_INFO_PILAR2_VOLCANIC                    =  32 ,
    FEATURE_INFO_PILAR3_CHALK                       =  33 ,
    FEATURE_INFO_PILAR3_LIME                        =  34 ,
    FEATURE_INFO_PILAR3_SAND                        =  35 ,
    FEATURE_INFO_PILAR3_VOLCANIC                    =  36 ,
    FEATURE_INFO_PILAR_CHALK                        =  37 ,
    FEATURE_INFO_PILAR_LIME                         =  38 ,
    FEATURE_INFO_PILAR_SAND                         =  39 ,
    FEATURE_INFO_PILAR_VOLCANIC                     =  40 ,
    FEATURE_INFO_SPIKEY_PILAR_CHALK                 =  41 ,
    FEATURE_INFO_SPIKEY_PILAR_LIME                  =  42 ,
    FEATURE_INFO_SPIKEY_PILAR_SAND                  =  43 ,
    FEATURE_INFO_SPIKEY_PILAR_VOLCANIC              =  44 ,
    FEATURE_INFO_CHAMPI                             =  45 ,
    FEATURE_INFO_OLD_13                             =  46 ,
    FEATURE_INFO_OLD_14                             =  47 ,
    FEATURE_INFO_OLD_15                             =  48 ,
    FEATURE_INFO_OLD_16                             =  49 ,
    FEATURE_INFO_OLD_17                             =  50 ,
    FEATURE_INFO_OLD_18                             =  51 ,
    FEATURE_INFO_OLD_19                             =  52 ,
    FEATURE_INFO_OLD_20                             =  53 ,
    FEATURE_INFO_MAGIC_MUSHROOM                     =  54 ,
    FEATURE_INFO_OLD_21                             =  55 ,
    FEATURE_INFO_OLD_22                             =  56 ,
    FEATURE_INFO_OLD_23                             =  57 ,
    FEATURE_INFO_OLD_24                             =  58 ,
    FEATURE_INFO_OLD_25                             =  59 ,
    FEATURE_INFO_OLD_26                             =  60 ,
    FEATURE_INFO_OLD_27                             =  61 ,
    FEATURE_INFO_OLD_28                             =  62 ,
    FEATURE_INFO_OLD_29                             =  63 ,
    FEATURE_INFO_OLD_30                             =  64 ,
    FEATURE_INFO_OLD_31                             =  65 ,
    FEATURE_INFO_OLD_32                             =  66 ,
    FEATURE_INFO_TOADSTOOL                          =  67 ,
    FEATURE_INFO_ARK                                =  68 ,
    FEATURE_INFO_ARK_DRY_DOCK                       =  69 ,
    FEATURE_INFO_ARK_WRECK                          =  70 ,
    FEATURE_INFO_WHALE                              =  71 ,
    FEATURE_INFO_PHONE_BOX                          =  72 ,
    FEATURE_INFO_PIER                               =  73 ,
    FEATURE_INFO_CRATER                             =  74 ,
    FEATURE_INFO_TOMBSTONE                          =  75 ,
    FEATURE_INFO_STONE_ICON_APE                     =  76 ,
    FEATURE_INFO_STONE_ICON_BEAR                    =  77 ,
    FEATURE_INFO_STONE_ICON_COW                     =  78 ,
    FEATURE_INFO_STONE_ICON_HORSE                   =  79 ,
    FEATURE_INFO_STONE_ICON_LEOPARD                 =  80 ,
    FEATURE_INFO_STONE_ICON_LION                    =  81 ,
    FEATURE_INFO_STONE_ICON_POLARBEAR               =  82 ,
    FEATURE_INFO_STONE_ICON_SHEEP                   =  83 ,
    FEATURE_INFO_STONE_ICON_TIGER                   =  84 ,
    FEATURE_INFO_STONE_ICON_TORTOISE                =  85 ,
    FEATURE_INFO_STONE_ICON_WOLF                    =  86 ,
    FEATURE_INFO_STONE_ICON_ZEBRA                   =  87 ,
    FEATURE_INFO_MARBLE_BASE_DO_NOT_USE             =  88 ,
    FEATURE_INFO_EGG_TREE                           =  89 ,
    FEATURE_INFO_CREATURE_RACE_PILLAR               =  90 ,
    FEATURE_INFO_EGG_TREE_2                         =  91 ,
    FEATURE_INFO_EGG_TREE_3                         =  92 ,
    FEATURE_INFO_EGG_TREE_4                         =  93 ,
    FEATURE_INFO_POINTER_HAND                       =  94 ,
    FEATURE_INFO_BOWLING_END                        =  95 ,
    FEATURE_INFO_LAST                               =  96 ,
};

//*****************************************************************************
// ENUM Values: FLOWERS_INFO
//*****************************************************************************
enum     FLOWERS_INFO
{
    FLOWERS_INFO_WHITE_ONE                          =  0 ,
    FLOWERS_INFO_PINK                               =  1 ,
    FLOWERS_INFO_SUN                                =  2 ,
    FLOWERS_INFO_LAST                               =  3 ,
};

//*****************************************************************************
// ENUM Values: ANIMATED_STATIC_INFO
//*****************************************************************************
enum     ANIMATED_STATIC_INFO
{
    ANIMATED_STATIC_INFO_NONE                       = -1 ,
    ANIMATED_STATIC_INFO_NORS_GATE                  =  0 ,
    ANIMATED_STATIC_INFO_GATE_STONE_PLINTH          =  1 ,
    ANIMATED_STATIC_INFO_PIPER_CAVE_ENTRANCE        =  2 ,
    ANIMATED_STATIC_INFO_CHESS_PION_TEAMA           =  3 ,
    ANIMATED_STATIC_INFO_CHESS_PION_TEAMB           =  4 ,
    ANIMATED_STATIC_INFO_CHESS_TOWER_TEAMA          =  5 ,
    ANIMATED_STATIC_INFO_CHESS_TOWER_TEAMB          =  6 ,
    ANIMATED_STATIC_INFO_CHESS_KNIGHT_TEAMA         =  7 ,
    ANIMATED_STATIC_INFO_CHESS_KNIGHT_TEAMB         =  8 ,
    ANIMATED_STATIC_INFO_CHESS_MAD_TEAMA            =  9 ,
    ANIMATED_STATIC_INFO_CHESS_MAD_TEAMB            =  10 ,
    ANIMATED_STATIC_INFO_CHESS_QUEEN_TEAMA          =  11 ,
    ANIMATED_STATIC_INFO_CHESS_QUEEN_TEAMB          =  12 ,
    ANIMATED_STATIC_INFO_CHESS_KING_TEAMA           =  13 ,
    ANIMATED_STATIC_INFO_CHESS_KING_TEAMB           =  14 ,
    ANIMATED_STATIC_INFO_PHONE_BOX                  =  15 ,
    ANIMATED_STATIC_INFO_BALISTA                    =  16 ,
    ANIMATED_STATIC_INFO_LAST                       =  17 ,
};

//*****************************************************************************
// ENUM Values: MAGIC_TYPE
//*****************************************************************************
enum     MAGIC_TYPE
{
    MAGIC_TYPE_NONE                                 =  0 ,
    MAGIC_TYPE_FIREBALL                             =  1 ,
    MAGIC_TYPE_FIREBALL_PU_ONE                      =  2 ,
    MAGIC_TYPE_FIREBALL_PU_TWO                      =  3 ,
    MAGIC_TYPE_LIGHTNING_BOLT                       =  4 ,
    MAGIC_TYPE_LIGHTNING_BOLT_PU_ONE                =  5 ,
    MAGIC_TYPE_LIGHTNING_BOLT_PU_TWO                =  6 ,
    MAGIC_TYPE_EXPLOSION_ONE                        =  7 ,
    MAGIC_TYPE_EXPLOSION_ONE_PU_ONE                 =  8 ,
    MAGIC_TYPE_EXPLOSION_ONE_PU_TWO                 =  9 ,
    MAGIC_TYPE_HEAL                                 =  10 ,
    MAGIC_TYPE_HEAL_PU_ONE                          =  11 ,
    MAGIC_TYPE_TELEPORT                             =  12 ,
    MAGIC_TYPE_FOREST                               =  13 ,
    MAGIC_TYPE_FOOD                                 =  14 ,
    MAGIC_TYPE_FOOD_PU_ONE                          =  15 ,
    MAGIC_TYPE_STORM_WIND_RAIN                      =  16 ,
    MAGIC_TYPE_STORM_WIND_RAIN_LIGHTNING            =  17 ,
    MAGIC_TYPE_TORNADO                              =  18 ,
    MAGIC_TYPE_SHIELD                               =  19 ,
    MAGIC_TYPE_PHYSICAL_SHIELD                      =  20 ,
    MAGIC_TYPE_WOOD                                 =  21 ,
    MAGIC_TYPE_WATER                                =  22 ,
    MAGIC_TYPE_WATER_PU_ONE                         =  23 ,
    MAGIC_TYPE_FLOCK_FLYING                         =  24 ,
    MAGIC_TYPE_FLOCK_GROUND                         =  25 ,
    MAGIC_TYPE_CREATURE_SPELL_FREEZE                =  26 ,
    MAGIC_TYPE_CREATURE_SPELL_SMALL                 =  27 ,
    MAGIC_TYPE_CREATURE_SPELL_BIG                   =  28 ,
    MAGIC_TYPE_CREATURE_SPELL_WEAK                  =  29 ,
    MAGIC_TYPE_CREATURE_SPELL_STRONG                =  30 ,
    MAGIC_TYPE_CREATURE_SPELL_FAT                   =  31 ,
    MAGIC_TYPE_CREATURE_SPELL_THIN                  =  32 ,
    MAGIC_TYPE_CREATURE_SPELL_INVISIBLE             =  33 ,
    MAGIC_TYPE_CREATURE_SPELL_COMPASSION            =  34 ,
    MAGIC_TYPE_CREATURE_SPELL_ANGRY                 =  35 ,
    MAGIC_TYPE_CREATURE_SPELL_HUNGRY                =  36 ,
    MAGIC_TYPE_CREATURE_SPELL_FRIGHTENE             =  37 ,
    MAGIC_TYPE_CREATURE_SPELL_TIRED                 =  38 ,
    MAGIC_TYPE_CREATURE_SPELL_ILL                   =  39 ,
    MAGIC_TYPE_CREATURE_SPELL_THIRSTY               =  40 ,
    MAGIC_TYPE_CREATURE_SPELL_ITCHY                 =  41 ,
    MAGIC_TYPE_LAST_142                             =  42 ,
    MAGIC_TYPE_CREATURE_SPELL_ANTI_SPELL            =  42 ,
    MAGIC_TYPE_CREATURE_SPELL_FAST                  =  43 ,
    MAGIC_TYPE_LAST_CI                              =  44 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_RECEIVE_SPELL_TYPE
//*****************************************************************************
enum     CREATURE_RECEIVE_SPELL_TYPE
{
    CREATURE_RECEIVE_SPELL_FREEZE                   =  0 ,
    CREATURE_RECEIVE_SPELL_SMALL                    =  1 ,
    CREATURE_RECEIVE_SPELL_BIG                      =  2 ,
    CREATURE_RECEIVE_SPELL_WEAK                     =  3 ,
    CREATURE_RECEIVE_SPELL_STRONG                   =  4 ,
    CREATURE_RECEIVE_SPELL_FAT                      =  5 ,
    CREATURE_RECEIVE_SPELL_THIN                     =  6 ,
    CREATURE_RECEIVE_SPELL_INVISIBLE                =  7 ,
    CREATURE_RECEIVE_SPELL_COMPASSIONATE            =  8 ,
    CREATURE_RECEIVE_SPELL_ANGRY                    =  9 ,
    CREATURE_RECEIVE_SPELL_HUNGRY                   =  10 ,
    CREATURE_RECEIVE_SPELL_FRIGHTENED               =  11 ,
    CREATURE_RECEIVE_SPELL_TIRED                    =  12 ,
    CREATURE_RECEIVE_SPELL_ILL                      =  13 ,
    CREATURE_RECEIVE_SPELL_THIRSTY                  =  14 ,
    CREATURE_RECEIVE_SPELL_ITCHY                    =  15 ,
    CREATURE_RECEIVE_SPELL_ANTI_SPELL               =  16 ,
    CREATURE_RECEIVE_SPELL_FAST                     =  17 ,
    CREATURE_RECEIVE_SPELL_LAST                     =  18 ,
};

//*****************************************************************************
// ENUM Values: TERRAIN_MATERIAL_TYPE
//*****************************************************************************
enum     TERRAIN_MATERIAL_TYPE
{
    TERRAIN_MATERIAL_TYPE_NONE                      =  0 ,
    TERRAIN_MATERIAL_TYPE_DEEP_WATER                =  1 ,
    TERRAIN_MATERIAL_TYPE_SHALLOW_WATER             =  2 ,
    TERRAIN_MATERIAL_TYPE_RIVER_MUD                 =  3 ,
    TERRAIN_MATERIAL_TYPE_WET_EARTH                 =  4 ,
    TERRAIN_MATERIAL_TYPE_EARTH                     =  5 ,
    TERRAIN_MATERIAL_TYPE_HARD_EARTH                =  6 ,
    TERRAIN_MATERIAL_TYPE_SAND                      =  7 ,
    TERRAIN_MATERIAL_TYPE_WET_SAND                  =  8 ,
    TERRAIN_MATERIAL_TYPE_GRAVEL                    =  9 ,
    TERRAIN_MATERIAL_TYPE_WET_GRAVEL                =  10 ,
    TERRAIN_MATERIAL_TYPE_SMALL_ROCKS               =  11 ,
    TERRAIN_MATERIAL_TYPE_SMALL_ROCKS_IN_SHALLOW_WATER
                                                    =  12 ,
    TERRAIN_MATERIAL_TYPE_SMALL_LOOSE_ROCKS_ON_SOLID_ROCK
                                                    =  13 ,
    TERRAIN_MATERIAL_TYPE_LARGE_ROCKS               =  14 ,
    TERRAIN_MATERIAL_TYPE_SOLID_ROCK                =  15 ,
    TERRAIN_MATERIAL_TYPE_WET_SOLID_ROCK            =  16 ,
    TERRAIN_MATERIAL_TYPE_UNSTABLE_SOLID_ROCK       =  17 ,
    TERRAIN_MATERIAL_TYPE_GRASS                     =  18 ,
    TERRAIN_MATERIAL_TYPE_WET_GRASS                 =  19 ,
    TERRAIN_MATERIAL_TYPE_DRY_GRASS                 =  20 ,
    TERRAIN_MATERIAL_TYPE_RUSHES                    =  21 ,
    TERRAIN_MATERIAL_TYPE_FERNS                     =  22 ,
    TERRAIN_MATERIAL_TYPE_CORN                      =  23 ,
    TERRAIN_MATERIAL_TYPE_SCRUB                     =  24 ,
    TERRAIN_MATERIAL_TYPE_HEATHER                   =  25 ,
    TERRAIN_MATERIAL_TYPE_FOREST_UNDERGROWTH        =  26 ,
    TERRAIN_MATERIAL_TYPE_SNOW                      =  27 ,
    TERRAIN_MATERIAL_TYPE_PACK_ICE                  =  28 ,
    TERRAIN_MATERIAL_TYPE_SOLID_ICE                 =  29 ,
    TERRAIN_MATERIAL_TYPE_SNOWY_MOUNTAIN_TOPS       =  30 ,
    TERRAIN_MATERIAL_TYPE_PAVEMENT                  =  31 ,
    TERRAIN_MATERIAL_TYPE_WET_PAVEMENT              =  32 ,
    TERRAIN_MATERIAL_TYPE_CRYSTAL                   =  33 ,
    TERRAIN_MATERIAL_TYPE_METAL                     =  34 ,
    TERRAIN_MATERIAL_TYPE_HOLLOW_METAL              =  35 ,
    TERRAIN_MATERIAL_TYPE_FLESH                     =  36 ,
    TERRAIN_MATERIAL_TYPE_GROANING_FLESH            =  37 ,
    TERRAIN_MATERIAL_TYPE_TIMBER                    =  38 ,
    TERRAIN_MATERIAL_TYPE_SCALES                    =  39 ,
    TERRAIN_MATERIAL_TYPE_CLOUD                     =  40 ,
    TERRAIN_MATERIAL_TYPE_HAIR                      =  41 ,
    TERRAIN_MATERIAL_JUNGLE_FLOOR                   =  42 ,
    TERRAIN_MATERIAL_TYPE_LAST                      =  43 ,
};

//*****************************************************************************
// ENUM Values: SOUND_SURFACE_TYPE
//*****************************************************************************
enum     SOUND_SURFACE_TYPE
{
    SOUND_SURFACE_TYPE_NONE                         =  0 ,
    SOUND_SURFACE_TYPE_GRASS                        =  1 ,
    SOUND_SURFACE_TYPE_GRAVEL                       =  2 ,
    SOUND_SURFACE_TYPE_HARD                         =  3 ,
    SOUND_SURFACE_TYPE_MUD                          =  4 ,
    SOUND_SURFACE_TYPE_SNOW                         =  5 ,
    SOUND_SURFACE_TYPE_DEEP_WATER                   =  6 ,
    SOUND_SURFACE_TYPE_SHALLOW_WATER                =  7 ,
    SOUND_SURFACE_TYPE_LOOSE_FOLIAGE                =  8 ,
    SOUND_SURFACE_TYPE_LAST                         =  9 ,
};

//*****************************************************************************
// ENUM Values: REACTION
//*****************************************************************************
enum     REACTION
{
    REACTION_NONE                                   = -1 ,
    REACTION_FLEE_FROM_OBJECT                       =  0 ,
    REACTION_LOOK_AT_OBJECT                         =  1 ,
    REACTION_FOLLOW_OBJECT                          =  2 ,
    REACTION_FLEE_FROM_SPELL                        =  3 ,
    REACTION_LOOK_AT_SPELL                          =  4 ,
    REACTION_FOLLOW_SPELL                           =  5 ,
    REACTION_REACT_TO_CREATURE                      =  6 ,
    REACTION_REACT_TO_FOOD                          =  7 ,
    REACTION_REACT_TO_MAGIC_TREE                    =  8 ,
    REACTION_REACT_TO_FLYING_OBJECT                 =  9 ,
    REACTION_REACT_TO_FIRE                          =  10 ,
    REACTION_REACT_TO_BALL                          =  11 ,
    REACTION_REACT_TO_WOOD                          =  12 ,
    REACTION_REACT_TO_MAGIC_SHIELD                  =  13 ,
    REACTION_REACT_TO_GIFT_FROM_CREATURE            =  14 ,
    REACTION_REACT_TO_NEW_BUILDING                  =  15 ,
    REACTION_REACT_TO_HAND_PICK_UP                  =  16 ,
    REACTION_REACT_TO_HAND_USING_TOTEM              =  17 ,
    REACTION_REACT_TO_OBJECT_CRUSHED                =  18 ,
    REACTION_REACT_TO_FIGHT                         =  19 ,
    REACTION_REACT_TO_TELEPORT                      =  20 ,
    REACTION_LOOK_AT_NICE_SPELL                     =  21 ,
    REACTION_REACT_TO_HAND_PUTTING_STUFF_IN_STORAGE_PIT
                                                    =  22 ,
    REACTION_REACT_TO_DEATH                         =  23 ,
    REACTION_REACT_TO_DROPPED_BY_HAND               =  24 ,
    REACTION_FAINTING                               =  25 ,
    REACTION_CONFUSED                               =  26 ,
    REACTION_AVOID_FALLING_TREE                     =  27 ,
    REACTION_FLEE_FROM_PREDATOR                     =  28 ,
    REACTION_CROWD_AROUND                           =  29 ,
    REACTION_REACT_TO_BREEDER                       =  30 ,
    REACTION_REACT_TO_TOWN_CELEBRATION              =  31 ,
    REACTION_REACT_TO_VILLAGER_IN_HAND              =  32 ,
    REACTION_REACT_TO_BURNING_OBJECT_IN_HAND        =  33 ,
    REACTION_REACT_TO_MAGIC_WATER_PUTTING_OUT_FIRE  =  34 ,
    REACTION_REACT_TO_MAGIC_SHIELD_STRUCK           =  35 ,
    REACTION_REACT_TO_MAGIC_SHIELD_DESTROYED        =  36 ,
    REACTION_REACT_TO_IMPRESSIVE_SPELL              =  37 ,
    REACTION_REACT_TO_SCAFFOLD                      =  38 ,
    REACTION_REACT_TO_MISSIONARY                    =  39 ,
    REACTION_REACT_TO_FIGHT_WON                     =  40 ,
    NUM_REACTION_FUNCTIONS                          =  41 ,
};

//*****************************************************************************
// ENUM Values: IMPRESSIVE_TYPE
//*****************************************************************************
enum     IMPRESSIVE_TYPE
{
    IMPRESSIVE_TYPE_FIREBALL                        =  0 ,
    IMPRESSIVE_TYPE_FIREBALL_PU_ONE                 =  1 ,
    IMPRESSIVE_TYPE_FIREBALL_PU_TWO                 =  2 ,
    IMPRESSIVE_TYPE_LIGHTNING_STORM                 =  3 ,
    IMPRESSIVE_TYPE_LIGHTNING_BOLT                  =  4 ,
    IMPRESSIVE_TYPE_LIGHTNING_BOLT_PU_ONE           =  5 ,
    IMPRESSIVE_TYPE_LIGHTNING_BOLT_PU_TWO           =  6 ,
    IMPRESSIVE_TYPE_EXPLOSION_ONE                   =  7 ,
    IMPRESSIVE_TYPE_FOOTBALL                        =  8 ,
    IMPRESSIVE_TYPE_HEAL                            =  9 ,
    IMPRESSIVE_TYPE_HEAL_PU_ONE                     =  10 ,
    IMPRESSIVE_TYPE_TORNADO                         =  11 ,
    IMPRESSIVE_TYPE_WALL                            =  12 ,
    IMPRESSIVE_TYPE_FIREWORK                        =  13 ,
    IMPRESSIVE_TYPE_MAGIC_TREE                      =  14 ,
    IMPRESSIVE_TYPE_PRIEST                          =  15 ,
    IMPRESSIVE_TYPE_MAGIC_FOOD                      =  16 ,
    IMPRESSIVE_TYPE_MAGIC_FOOD_PU_ONE               =  17 ,
    IMPRESSIVE_TYPE_MAGIC_FOOD_PU_TWO               =  18 ,
    IMPRESSIVE_TYPE_SHIELD_ONE                      =  19 ,
    IMPRESSIVE_TYPE_MAGIC_WOOD                      =  20 ,
    IMPRESSIVE_TYPE_MAGIC_WATER                     =  21 ,
    IMPRESSIVE_TYPE_GIVE_VILLAGERS_FOOD             =  22 ,
    IMPRESSIVE_TYPE_GIVE_VILLAGERS_WOOD             =  23 ,
    IMPRESSIVE_TYPE_CREATURE_NOT_IMPRESSIVE         =  24 ,
    IMPRESSIVE_TYPE_CREATURE_QUITE_IMPRESSIVE       =  25 ,
    IMPRESSIVE_TYPE_CREATURE_VERY_IMPRESSIVE        =  26 ,
    IMPRESSIVE_TYPE_NOT_IMPRESSIVE_AT_ALL           =  27 ,
    IMPRESSIVE_TYPE_SKELETON_ARMY                   =  28 ,
    NUM_IMPRESSIVE_TYPES                            =  29 ,
};

//*****************************************************************************
// ENUM Values: EFFECT_TYPE
//*****************************************************************************
enum     EFFECT_TYPE
{
    EFFECT_TYPE_BURN                                =  0 ,
    EFFECT_TYPE_CRUSH                               =  1 ,
    EFFECT_TYPE_HIT                                 =  2 ,
    EFFECT_TYPE_HEAL                                =  3 ,
    EFFECT_TYPE_APPLY_FORCE                         =  4 ,
    EFFECT_TYPE_ALIGNMENT_MODIFICATION              =  5 ,
    EFFECT_TYPE_BELIEF_MODIFICATION                 =  6 ,
    EFFECT_TYPE_LAST                                =  7 ,
};

//*****************************************************************************
// ENUM Values: LIVING_STATES
//*****************************************************************************
enum     LIVING_STATES
{
    LIVING_INVALID                                  =  0 ,
    LIVING_MOVE_TO_POS                              =  1 ,
    LIVING_MOVE_TO_OBJECT                           =  2 ,
    LIVING_MOVE_ON_STRUCTURE                        =  3 ,
    LIVING_IN_SCRIPT                                =  4 ,
    LIVING_IN_DANCE                                 =  5 ,
    LIVING_FLEE_FROM_OBJECT_REACTION                =  6 ,
    LIVING_LOOK_AT_OBJECT_REACTION                  =  7 ,
    LIVING_FOLLOW_OBJECT_REACTION                   =  8 ,
    LIVING_INSPECT_OBJECT_REACTION                  =  9 ,
    LIVING_FLYING                                   =  10 ,
    LIVING_LANDED                                   =  11 ,
    LIVING_LOOK_AT_FLYING_OBJECT_REACTION           =  12 ,
    LIVING_SET_DYING                                =  13 ,
    LIVING_DYING                                    =  14 ,
    LIVING_DEAD                                     =  15 ,
    LIVING_DROWNING                                 =  16 ,
    LIVING_DOWNED                                   =  17 ,
    LIVING_BEING_EATEN                              =  18 ,
    LIVING_GOTO_FOOD_REACTION                       =  19 ,
    LIVING_ARRIVES_AT_FOOD_REACTION                 =  20 ,
    LIVING_GOTO_WOOD_REACTION                       =  21 ,
    LIVING_ARRIVES_AT_WOOD_REACTION                 =  22 ,
    LIVING_WAIT_FOR_ANIMATION                       =  23 ,
    LIVING_IN_HAND                                  =  24 ,
    LIVING_GOTO_PICKUP_BALL_REACTION                =  25 ,
    LIVING_ARRIVES_AT_PICKUP_BALL_REACTION          =  26 ,
    LIVING_MOVE_IN_FLOCK                            =  27 ,
    LIVING_MOVE_ALONG_PATH                          =  28 ,
    LIVING_MOVE_ON_PATH                             =  29 ,
    LIVING_FLEEING_LOOK_AT_OBJECT_REACTION          =  30 ,
    LIVING_LAST                                     =  31 ,
};

//*****************************************************************************
// ENUM Values: ALIGNMENT_TYPE
//*****************************************************************************
enum     ALIGNMENT_TYPE
{
    ALIGNMENT_TYPE_ANIMAL_NICE                      =  0 ,
    ALIGNMENT_TYPE_ANIMAL_NASTY                     =  1 ,
    ALIGNMENT_TYPE_CREATURE                         =  2 ,
    ALIGNMENT_TYPE_PRIEST                           =  3 ,
    ALIGNMENT_TYPE_SKELETON                         =  4 ,
    ALIGNMENT_TYPE_VILLAGER                         =  5 ,
    ALIGNMENT_TYPE_BUILDING                         =  6 ,
    ALIGNMENT_TYPE_PLANT                            =  7 ,
    ALIGNMENT_TYPE_FIELD                            =  8 ,
    ALIGNMENT_TYPE_FEATURE                          =  9 ,
    ALIGNMENT_TYPE_MOBILE_OBJECT                    =  10 ,
    ALIGNMENT_TYPE_LAND                             =  11 ,
    ALIGNMENT_TYPE_SCRIPT                           =  12 ,
    ALIGNMENT_TYPE_UNIMPORTANT                      =  13 ,
    ALIGNMENT_TYPE_LAST                             =  14 ,
};

//*****************************************************************************
// ENUM Values: SPELL_ICON_INFO
//*****************************************************************************
enum     SPELL_ICON_INFO
{
    SPELL_ICON_INFO_BASIC                           =  0 ,
    SPELL_ICON_INFO_TOWN_CENTRE                     =  1 ,
    SPELL_ICON_INFO_LAST                            =  2 ,
};

//*****************************************************************************
// ENUM Values: WORSHIP_SITE_INFO
//*****************************************************************************
enum     WORSHIP_SITE_INFO
{
    WORSHIP_SITE_INFO_CELTIC                        =  0 ,
    WORSHIP_SITE_INFO_AFRICAN                       =  1 ,
    WORSHIP_SITE_INFO_AZTEC                         =  2 ,
    WORSHIP_SITE_INFO_JAPANESE                      =  3 ,
    WORSHIP_SITE_INFO_INDIAN                        =  4 ,
    WORSHIP_SITE_INFO_EGYPTIAN                      =  5 ,
    WORSHIP_SITE_INFO_GREEK                         =  6 ,
    WORSHIP_SITE_INFO_NORSE                         =  7 ,
    WORSHIP_SITE_INFO_TIBETAN                       =  8 ,
    WORSHIP_SITE_INFO_LAST                          =  9 ,
};

//*****************************************************************************
// ENUM Values: MOBILE_OBJECT_INFO
//*****************************************************************************
enum     MOBILE_OBJECT_INFO
{
    MOBILE_OBJECT_INFO_NONE                         = -1 ,
    MOBILE_OBJECT_INFO_EGPT_BARREL                  =  0 ,
    MOBILE_OBJECT_INFO_EGPT_CART                    =  1 ,
    MOBILE_OBJECT_INFO_EGPT_POT_A                   =  2 ,
    MOBILE_OBJECT_INFO_EGPT_POT_B                   =  3 ,
    MOBILE_OBJECT_INFO_MAGIC_FOOD                   =  4 ,
    MOBILE_OBJECT_INFO_LUMP_OF_POO                  =  5 ,
    MOBILE_OBJECT_INFO_WATER_JUG                    =  6 ,
    MOBILE_OBJECT_INFO_ARROW                        =  7 ,
    MOBILE_OBJECT_INFO_BALL                         =  8 ,
    MOBILE_OBJECT_INFO_CART                         =  9 ,
    MOBILE_OBJECT_INFO_FOOD_POT                     =  10 ,
    MOBILE_OBJECT_INFO_WOOD_POT                     =  11 ,
    MOBILE_OBJECT_INFO_PILE_FOOD                    =  12 ,
    MOBILE_OBJECT_INFO_PILE_WOOD                    =  13 ,
    MOBILE_OBJECT_INFO_MAGIC_WOOD                   =  14 ,
    MOBILE_OBJECT_INFO_CROP                         =  15 ,
    MOBILE_OBJECT_INFO_OLD_SCAFFOLD                 =  16 ,
    MOBILE_OBJECT_INFO_CHAMPI                       =  17 ,
    MOBILE_OBJECT_INFO_MAGIC_MUSHROOM               =  18 ,
    MOBILE_OBJECT_INFO_TOADSTOOL                    =  19 ,
    MOBILE_OBJECT_INFO_CREATURE_SWAP_ORB            =  20 ,
    MOBILE_OBJECT_INFO_CREED                        =  21 ,
    MOBILE_OBJECT_INFO_EYES                         =  22 ,
    MOBILE_OBJECT_INFO_ARK                          =  23 ,
    MOBILE_OBJECT_INFO_WHALE                        =  24 ,
    MOBILE_OBJECT_INFO_ONEOFF_SPELLSEED             =  25 ,
    MOBILE_OBJECT_HANOI_PUZZLE_BASE                 =  26 ,
    MOBILE_OBJECT_HANOI_PUZZLE_PART1                =  27 ,
    MOBILE_OBJECT_HANOI_PUZZLE_PART2                =  28 ,
    MOBILE_OBJECT_HANOI_PUZZLE_PART3                =  29 ,
    MOBILE_OBJECT_HANOI_PUZZLE_PART4                =  30 ,
    MOBILE_OBJECT_CAULDRON                          =  31 ,
    MOBILE_OBJECT_DOLPHIN                           =  32 ,
    MOBILE_OBJECT_CROC_1                            =  33 ,
    MOBILE_OBJECT_CROC_2                            =  34 ,
    MOBILE_OBJECT_CROC_3                            =  35 ,
    MOBILE_OBJECT_BROTHERHOOD_RING_1                =  36 ,
    MOBILE_OBJECT_BROTHERHOOD_RING_2                =  37 ,
    MOBILE_OBJECT_BROTHERHOOD_RING_3                =  38 ,
    MOBILE_OBJECT_MOSES_BASKET                      =  39 ,
    MOBILE_OBJECT_BROTHERHOOD_PUCK                  =  40 ,
    MOBILE_OBJECT_INFO_LAST                         =  41 ,
};

//*****************************************************************************
// ENUM Values: POT_INFO
//*****************************************************************************
enum     POT_INFO
{
    POT_INFO_FOOD_POT                               =  0 ,
    POT_INFO_WOOD_POT                               =  1 ,
    POT_INFO_STORAGE_PIT_FOOD_PILE                  =  2 ,
    POT_INFO_WOOD_PILE_1                            =  3 ,
    POT_INFO_WOOD_PILE_2                            =  4 ,
    POT_INFO_WOOD_PILE_3                            =  5 ,
    POT_INFO_WOOD_PILE_4                            =  6 ,
    POT_INFO_WOOD_PILE_5                            =  7 ,
    POT_INFO_FOOD_PILE                              =  8 ,
    POT_INFO_MAGIC_WOOD                             =  9 ,
    POT_INFO_MAGIC_FOOD                             =  10 ,
    POT_INFO_HAND_WOOD                              =  11 ,
    POT_INFO_HAND_FOOD                              =  12 ,
    POT_INFO_TREE_BRANCH_EVERGREEN_IN_HAND          =  13 ,
    POT_INFO_TREE_BRANCH_HARDWOOD_IN_HAND           =  14 ,
    POT_INFO_TREE_FRUIT_IN_HAND                     =  15 ,
    POT_INFO_TREE_LOGS_IN_HAND                      =  16 ,
    POT_INFO_WHEAT_IN_HAND                          =  17 ,
    POT_INFO_FISH                                   =  18 ,
    POT_INFO_LAST                                   =  19 ,
};

//*****************************************************************************
// ENUM Values: POT_TYPE
//*****************************************************************************
enum     POT_TYPE
{
    POT_TYPE_POT                                    =  0 ,
    POT_TYPE_PILE_FOOD                              =  1 ,
    POT_TYPE_PILE_WOOD                              =  2 ,
};

//*****************************************************************************
// ENUM Values: MISC_INFO
//*****************************************************************************
enum     MISC_INFO
{
    MISC_INFO_HELP_ORB                              =  0 ,
    MISC_INFO_HELP_ORB_HOLDER                       =  1 ,
    MISC_INFO_FIREFLY                               =  2 ,
    MISC_INFO_ARENA_SPELL_ICON                      =  3 ,
    MISC_INFO_LAST                                  =  4 ,
};

//*****************************************************************************
// ENUM Values: SPOOKY_ENUM
//*****************************************************************************
enum     SPOOKY_ENUM
{
    SPOOKY_NAME_01                                  =  0 ,
    SPOOKY_NAME_02                                  =  1 ,
    SPOOKY_NAME_03                                  =  2 ,
    SPOOKY_NAME_04                                  =  3 ,
    SPOOKY_NAME_05                                  =  4 ,
    NUM_SPOOKY_NAMES                                =  5 ,
};

//*****************************************************************************
// ENUM Values: HIGHLIGHT_INFO
//*****************************************************************************
enum     HIGHLIGHT_INFO
{
    SCRIPT_HIGHLIGHT_INFO_SCRIPT_BRONZE             =  0 ,
    SCRIPT_HIGHLIGHT_INFO_SCRIPT_SILVER             =  1 ,
    SCRIPT_HIGHLIGHT_INFO_SCRIPT_GOLD               =  2 ,
    SCRIPT_HIGHLIGHT_INFO_SCOREBOARD                =  3 ,
    SCRIPT_HIGHLIGHT_INFO_SCOREBOARD_BIG            =  4 ,
    SCRIPT_HIGHLIGHT_INFO_SCRIPT_SILVER_CANCEL      =  5 ,
    SCRIPT_HIGHLIGHT_INFO_SCRIPT_GOLD_CANCEL        =  6 ,
    SCRIPT_HIGHLIGHT_INFO_SCRIPT_SWAP_CREATURE      =  7 ,
    SCRIPT_HIGHLIGHT_INFO_SCRIPT_FIGHT_CREATURE     =  8 ,
    SCRIPT_HIGHLIGHT_INFO_BROTHERHOOD               =  9 ,
    SCRIPT_HIGHLIGHT_INFO_LAST                      =  10 ,
};

//*****************************************************************************
// ENUM Values: MAP_SHIELD_INFO
//*****************************************************************************
enum     MAP_SHIELD_INFO
{
    MAP_SHIELD_INFO_MAGIC                           =  0 ,
    MAP_SHIELD_INFO_PHYSICAL                        =  1 ,
    MAP_SHIELD_INFO_LAST                            =  2 ,
};

//*****************************************************************************
// ENUM Values: MAGIC_TREE_TYPE
//*****************************************************************************
enum     MAGIC_TREE_TYPE
{
    MAGIC_TREE_TYPE_FIRST                           =  0 ,
    MAGIC_TREE_TYPE_LAST                            =  4 ,
};

//*****************************************************************************
// ENUM Values: TREE_INFO
//*****************************************************************************
enum     TREE_INFO
{
    TREE_INFO_BEECH                                 =  0 ,
    TREE_INFO_BIRCH                                 =  1 ,
    TREE_INFO_CEDAR                                 =  2 ,
    TREE_INFO_CONIFER                               =  3 ,
    TREE_INFO_CONIFER_A                             =  4 ,
    TREE_INFO_OAK                                   =  5 ,
    TREE_INFO_OAK_A                                 =  6 ,
    TREE_INFO_OLIVE                                 =  7 ,
    TREE_INFO_PALM                                  =  8 ,
    TREE_INFO_PALM_A                                =  9 ,
    TREE_INFO_PALM_B                                =  10 ,
    TREE_INFO_PALM_C                                =  11 ,
    TREE_INFO_PINE                                  =  12 ,
    TREE_INFO_BUSH                                  =  13 ,
    TREE_INFO_BUSH_A                                =  14 ,
    TREE_INFO_BUSH_B                                =  15 ,
    TREE_INFO_CYPRESS                               =  16 ,
    TREE_INFO_CYPRESS_A                             =  17 ,
    TREE_INFO_COPSE                                 =  18 ,
    TREE_INFO_COPSE_A                               =  19 ,
    TREE_INFO_HEDGE                                 =  20 ,
    TREE_INFO_HEDGE_A                               =  21 ,
    TREE_INFO_BURNT                                 =  22 ,
    TREE_INFO_LAST                                  =  23 ,
};

//*****************************************************************************
// ENUM Values: RESOURCE_TYPE
//*****************************************************************************
enum     RESOURCE_TYPE
{
    RESOURCE_TYPE_ANY                               = -2 ,
    RESOURCE_TYPE_NONE                              = -1 ,
    RESOURCE_TYPE_FOOD                              =  0 ,
    RESOURCE_TYPE_WOOD                              =  1 ,
    RESOURCE_TYPE_LAST                              =  2 ,
};

//*****************************************************************************
// ENUM Values: FOOTBALL_INFO
//*****************************************************************************
enum     FOOTBALL_INFO
{
    FOOTBALL_INFO_FOOTBALL_PITCH                    =  0 ,
    FOOTBALL_INFO_LAST                              =  1 ,
};

//*****************************************************************************
// ENUM Values: FOOTBALL_POSITION_INFO
//*****************************************************************************
enum     FOOTBALL_POSITION_INFO
{
    FOOTBALL_POSITION_INFO_NONE_FREE                = -1 ,
    FOOTBALL_POSITION_INFO_LEFT_ATTACK_1            =  0 ,
    FOOTBALL_POSITION_INFO_LEFT_ATTACK_2            =  1 ,
    FOOTBALL_POSITION_INFO_GOAL_1                   =  2 ,
    FOOTBALL_POSITION_INFO_GOAL_2                   =  3 ,
    FOOTBALL_POSITION_INFO_LEFT_DEFENCE_1           =  4 ,
    FOOTBALL_POSITION_INFO_LEFT_DEFENCE_2           =  5 ,
    FOOTBALL_POSITION_INFO_RIGHT_ATTACK_1           =  6 ,
    FOOTBALL_POSITION_INFO_RIGHT_ATTACK_2           =  7 ,
    FOOTBALL_POSITION_INFO_RIGHT_DEFENCE_1          =  8 ,
    FOOTBALL_POSITION_INFO_RIGHT_DEFENCE_2          =  9 ,
    FOOTBALL_POSITION_INFO_LAST                     =  10 ,
};

//*****************************************************************************
// ENUM Values: PFOOTBALL_POSITION_INFO
//*****************************************************************************
enum     PFOOTBALL_POSITION_INFO
{
    PFOOTBALL_POSITION_INFO_NONE_FREE               = -1 ,
    PFOOTBALL_POSITION_INFO_LEFT_ATTACK_1           =  0 ,
    PFOOTBALL_POSITION_INFO_LEFT_ATTACK_2           =  1 ,
    PFOOTBALL_POSITION_INFO_GOAL_1                  =  2 ,
    PFOOTBALL_POSITION_INFO_GOAL_2                  =  3 ,
    PFOOTBALL_POSITION_INFO_LEFT_DEFENCE_1          =  4 ,
    PFOOTBALL_POSITION_INFO_LEFT_DEFENCE_2          =  5 ,
    PFOOTBALL_POSITION_INFO_RIGHT_ATTACK_1          =  6 ,
    PFOOTBALL_POSITION_INFO_RIGHT_ATTACK_2          =  7 ,
    PFOOTBALL_POSITION_INFO_RIGHT_DEFENCE_1         =  8 ,
    PFOOTBALL_POSITION_INFO_RIGHT_DEFENCE_2         =  9 ,
    PFOOTBALL_POSITION_INFO_LAST                    =  10 ,
};

//*****************************************************************************
// ENUM Values: PLAYTIME_INFO
//*****************************************************************************
enum     PLAYTIME_INFO
{
    PLAYTIME_INFO_NONE                              = -1 ,
    PLAYTIME_INFO_MARRAGE                           =  0 ,
    PLAYTIME_INFO_FUNERAL                           =  1 ,
    PLAYTIME_INFO_MAYPOLE                           =  2 ,
    PLAYTIME_INFO_FOOTBALL                          =  3 ,
    PLAYTIME_INFO_PFOOTBALL                         =  4 ,
    PLAYTIME_INFO_LAST                              =  5 ,
};

//*****************************************************************************
// ENUM Values: GROUND_INFO
//*****************************************************************************
enum     GROUND_INFO
{
    GROUND_INFO_NONE                                = -1 ,
    GROUND_INFO_NORMAL                              =  0 ,
    GROUND_INFO_ABODE                               =  1 ,
    GROUND_INFO_LAST                                =  2 ,
};

//*****************************************************************************
// ENUM Values: COUNTRY_LIST
//*****************************************************************************
enum     COUNTRY_LIST
{
    COUNTRY_LIST_NONE                               =  0 ,
    COUNTRY_LIST_1                                  =  1 ,
    COUNTRY_LIST_2                                  =  2 ,
    COUNTRY_LIST_3                                  =  3 ,
    COUNTRY_LIST_4                                  =  4 ,
    COUNTRY_LIST_5                                  =  5 ,
    COUNTRY_LIST_6                                  =  6 ,
    COUNTRY_LIST_7                                  =  7 ,
    COUNTRY_LIST_8                                  =  8 ,
    COUNTRY_LIST_END                                =  9 ,
};

//*****************************************************************************
// ENUM Values: PRAYER_ICON_INFO
//*****************************************************************************
enum     PRAYER_ICON_INFO
{
    PRAYER_ICON_INFO_NONE                           = -1 ,
    PRAYER_ICON_INFO_NORMAL                         =  0 ,
    PRAYER_ICON_INFO_LAST                           =  1 ,
};

//*****************************************************************************
// ENUM Values: PRAYER_SITE_INFO
//*****************************************************************************
enum     PRAYER_SITE_INFO
{
    PRAYER_SITE_INFO_NORMAL                         =  0 ,
    PRAYER_SITE_INFO_LAST                           =  1 ,
};

//*****************************************************************************
// ENUM Values: LEADER_ANIMATION
//*****************************************************************************
enum     LEADER_ANIMATION
{
    LEADER_ANIMATION_NORMAL                         =  0 ,
    LEADER_ANIMATION_FAST                           =  1 ,
    LEADER_ANIMATION_FRANTIC                        =  2 ,
    LEADER_ANIMATION_LAST                           =  3 ,
};

//*****************************************************************************
// ENUM Values: SPELL_CAST_TYPE
//*****************************************************************************
enum     SPELL_CAST_TYPE
{
    SPELL_CAST_IN_HAND                              =  0 ,
    SPELL_CAST_HAND_GESTURE                         =  1 ,
    SPELL_CAST_HAND_POSITION                        =  2 ,
};

//*****************************************************************************
// ENUM Values: JOB_ACTIVITY
//*****************************************************************************
enum     JOB_ACTIVITY
{
    JOB_ACTIVITY_NONE                               =  0 ,
    JOB_ACTIVITY_NURTURE                            =  1 ,
    JOB_ACTIVITY_HARVEST                            =  2 ,
    JOB_ACTIVITY_PLAN                               =  3 ,
    JOB_ACTIVITY_EXECUTE                            =  4 ,
    JOB_ACTIVITY_LAST                               =  5 ,
};

//*****************************************************************************
// ENUM Values: JOB_INFO
//*****************************************************************************
enum     JOB_INFO
{
    JOB_INFO_POOR_FISHERMAN                         =  0 ,
    JOB_INFO_NORMAL_FISHERMAN                       =  1 ,
    JOB_INFO_GOOD_FISHERMAN                         =  2 ,
    JOB_INFO_POOR_FORESTER                          =  3 ,
    JOB_INFO_NORMAL_FORESTER                        =  4 ,
    JOB_INFO_GOOD_FORESTER                          =  5 ,
    JOB_INFO_POOR_FARMER                            =  6 ,
    JOB_INFO_NORMAL_FARMER                          =  7 ,
    JOB_INFO_GOOD_FARMER                            =  8 ,
    JOB_INFO_POOR_SHEPHERD                          =  9 ,
    JOB_INFO_NORMAL_SHEPHERD                        =  10 ,
    JOB_INFO_GOOD_SHEPHERD                          =  11 ,
    JOB_INFO_NORMAL_LEADER                          =  12 ,
    JOB_INFO_NORMAL_HOUSEWIFE                       =  13 ,
    JOB_INFO_NORMAL_TRADER                          =  14 ,
    JOB_INFO_NORMAL_NO_JOB                          =  15 ,
    JOB_INFO_LAST                                   =  16 ,
};

//*****************************************************************************
// ENUM Values: EFFECT_INFO
//*****************************************************************************
enum     EFFECT_INFO
{
    EFFECT_INFO_NONE                                = -1 ,
    EFFECT_INFO_HIT                                 =  0 ,
    EFFECT_INFO_ARROW                               =  1 ,
    EFFECT_INFO_BURN                                =  2 ,
    EFFECT_INFO_CRUSH                               =  3 ,
    EFFECT_INFO_WATER_PAIL                          =  4 ,
    EFFECT_INFO_BUILD                               =  5 ,
    EFFECT_INFO_CHOP                                =  6 ,
    EFFECT_INFO_DIG                                 =  7 ,
    EFFECT_INFO_CITADEL_HIT                         =  8 ,
    EFFECT_INFO_NURTURE                             =  9 ,
    EFFECT_INFO_FIELD_CROP_GROW                     =  10 ,
    EFFECT_INFO_WEATHER_LIGHTNING                   =  11 ,
    EFFECT_INFO_LAST                                =  12 ,
};

//*****************************************************************************
// ENUM Values: SEX_TYPE
//*****************************************************************************
enum     SEX_TYPE
{
    SEX_NONE                                        = -1 ,
    SEX_MALE                                        =  0 ,
    SEX_FEMALE                                      =  1 ,
    SEX_TYPE_LAST                                   =  2 ,
};

//*****************************************************************************
// ENUM Values: SEASON
//*****************************************************************************
enum     SEASON
{
    SEASON_SPRING                                   =  0 ,
    SEASON_SUMMER                                   =  1 ,
    SEASON_AUTUMN                                   =  2 ,
    SEASON_WINTER                                   =  3 ,
    SEASON_LAST                                     =  4 ,
};

//*****************************************************************************
// ENUM Values: SHOW_NEEDS_INFO
//*****************************************************************************
enum     SHOW_NEEDS_INFO
{
    SHOW_NEEDS_INFO_HUNGER                          =  0 ,
    SHOW_NEEDS_INFO_LIFE                            =  1 ,
    SHOW_NEEDS_INFO_HIDING                          =  2 ,
    SHOW_WORSHIP_NEEDS_INFO_LAST                    =  3 ,
    SHOW_NEEDS_INFO_WORKSHOP_WOOD                   =  3 ,
    SHOW_NEEDS_INFO_LAST                            =  4 ,
};

//*****************************************************************************
// ENUM Values: TOWN_HAPPINESS_CONSIDERATION
//*****************************************************************************
enum     TOWN_HAPPINESS_CONSIDERATION
{
    TOWN_HAPPINESS_CONSIDERATION_AMOUNT_OF_FOOD     =  0 ,
    TOWN_HAPPINESS_CONSIDERATION_AMOUNT_OF_WOOD     =  1 ,
    TOWN_HAPPINESS_CONSIDERATION_NUMBER_OF_BUILDINGS=  2 ,
    TOWN_HAPPINESS_CONSIDERATION_NUMBER_OF_PEOPLE   =  3 ,
    NUM_TOWN_HAPPINESS_CONSIDERATIONS               =  4 ,
};

//*****************************************************************************
// ENUM Values: TOWN_DESIRE_INFO
//*****************************************************************************
enum     TOWN_DESIRE_INFO
{
    TOWN_DESIRE_INFO_NONE                           = -1 ,
    TOWN_DESIRE_INFO_FIRST                          =  0 ,
    TOWN_DESIRE_INFO_FOR_FOOD                       =  0 ,
    TOWN_DESIRE_INFO_FOR_WOOD                       =  1 ,
    TOWN_DESIRE_INFO_FOR_PLAYTIME                   =  2 ,
    TOWN_DESIRE_INFO_FOR_PROTECTION                 =  3 ,
    TOWN_DESIRE_INFO_FOR_MERCY                      =  4 ,
    TOWN_DESIRE_INFO_FOR_ABODES                     =  5 ,
    TOWN_DESIRE_INFO_FOR_CIVIC_BUILDING             =  6 ,
    TOWN_DESIRE_INFO_FOR_SUPPLY_WORSHIP             =  7 ,
    TOWN_DESIRE_INFO_FOR_CHILDREN                   =  8 ,
    TOWN_DESIRE_INFO_TO_BUILD                       =  9 ,
    TOWN_DESIRE_INFO_FOR_RAIN                       =  10 ,
    TOWN_DESIRE_INFO_FOR_SUN                        =  11 ,
    TOWN_DESIRE_INFO_TO_REPAIR                      =  12 ,
    TOWN_DESIRE_INFO_TO_SUPPLY_WORKSHOP             =  13 ,
    TOWN_DESIRE_INFO_TO_BUILD_WONDER                =  14 ,
    TOWN_DESIRE_INFO_FOR_RELAXATION                 =  15 ,
    TOWN_DESIRE_INFO_FOR_SLEEP                      =  16 ,
    TOWN_DESIRE_INFO_LAST                           =  17 ,
};

//*****************************************************************************
// ENUM Values: WORSHIP_SITE_UPGRADE_INFO
//*****************************************************************************
enum     WORSHIP_SITE_UPGRADE_INFO
{
    WORSHIP_SITE_UPGRADE_INFO_FAST_FOOD             =  0 ,
    WORSHIP_SITE_UPGRADE_INFO_LAST                  =  1 ,
};

//*****************************************************************************
// ENUM Values: VILLAGER_INFO
//*****************************************************************************
enum     VILLAGER_INFO
{
    VILLAGER_INFO_FIRST                             =  0 ,
    VILLAGER_INFO_CELTIC_HOUSEWIFE_FEMALE           =  0 ,
    VILLAGER_INFO_CELTIC_FORESTER_MALE              =  1 ,
    VILLAGER_INFO_CELTIC_FISHERMAN_MALE             =  2 ,
    VILLAGER_INFO_CELTIC_FARMER_MALE                =  3 ,
    VILLAGER_INFO_CELTIC_SHEPHERD_MALE              =  4 ,
    VILLAGER_INFO_CELTIC_LEADER_MALE                =  5 ,
    VILLAGER_INFO_CELTIC_TRADER_MALE                =  6 ,
    VILLAGER_INFO_AFRICAN_HOUSEWIFE_FEMALE          =  7 ,
    VILLAGER_INFO_AFRICAN_FORESTER_MALE             =  8 ,
    VILLAGER_INFO_AFRICAN_FISHERMAN_MALE            =  9 ,
    VILLAGER_INFO_AFRICAN_FARMER_MALE               =  10 ,
    VILLAGER_INFO_AFRICAN_SHEPHERD_MALE             =  11 ,
    VILLAGER_INFO_AFRICAN_LEADER_MALE               =  12 ,
    VILLAGER_INFO_AFRICAN_TRADER_MALE               =  13 ,
    VILLAGER_INFO_AZTEC_HOUSEWIFE_FEMALE            =  14 ,
    VILLAGER_INFO_AZTEC_FORESTER_MALE               =  15 ,
    VILLAGER_INFO_AZTEC_FISHERMAN_MALE              =  16 ,
    VILLAGER_INFO_AZTEC_FARMER_MALE                 =  17 ,
    VILLAGER_INFO_AZTEC_SHEPHERD_MALE               =  18 ,
    VILLAGER_INFO_AZTEC_LEADER_MALE                 =  19 ,
    VILLAGER_INFO_AZTEC_TRADER_MALE                 =  20 ,
    VILLAGER_INFO_JAPANESE_HOUSEWIFE_FEMALE         =  21 ,
    VILLAGER_INFO_JAPANESE_FORESTER_MALE            =  22 ,
    VILLAGER_INFO_JAPANESE_FISHERMAN_MALE           =  23 ,
    VILLAGER_INFO_JAPANESE_FARMER_MALE              =  24 ,
    VILLAGER_INFO_JAPANESE_SHEPHERD_MALE            =  25 ,
    VILLAGER_INFO_JAPANESE_LEADER_MALE              =  26 ,
    VILLAGER_INFO_JAPANESE_TRADER_MALE              =  27 ,
    VILLAGER_INFO_INDIAN_HOUSEWIFE_FEMALE           =  28 ,
    VILLAGER_INFO_INDIAN_FORESTER_MALE              =  29 ,
    VILLAGER_INFO_INDIAN_FISHERMAN_MALE             =  30 ,
    VILLAGER_INFO_INDIAN_FARMER_MALE                =  31 ,
    VILLAGER_INFO_INDIAN_SHEPHERD_MALE              =  32 ,
    VILLAGER_INFO_INDIAN_LEADER_MALE                =  33 ,
    VILLAGER_INFO_INDIAN_TRADER_MALE                =  34 ,
    VILLAGER_INFO_EGYPTIAN_HOUSEWIFE_FEMALE         =  35 ,
    VILLAGER_INFO_EGYPTIAN_FORESTER_MALE            =  36 ,
    VILLAGER_INFO_EGYPTIAN_FISHERMAN_MALE           =  37 ,
    VILLAGER_INFO_EGYPTIAN_FARMER_MALE              =  38 ,
    VILLAGER_INFO_EGYPTIAN_SHEPHERD_MALE            =  39 ,
    VILLAGER_INFO_EGYPTIAN_LEADER_MALE              =  40 ,
    VILLAGER_INFO_EGYPTIAN_TRADER_MALE              =  41 ,
    VILLAGER_INFO_GREEK_HOUSEWIFE_FEMALE            =  42 ,
    VILLAGER_INFO_GREEK_FORESTER_MALE               =  43 ,
    VILLAGER_INFO_GREEK_FISHERMAN_MALE              =  44 ,
    VILLAGER_INFO_GREEK_FARMER_MALE                 =  45 ,
    VILLAGER_INFO_GREEK_SHEPHERD_MALE               =  46 ,
    VILLAGER_INFO_GREEK_LEADER_MALE                 =  47 ,
    VILLAGER_INFO_GREEK_TRADER_MALE                 =  48 ,
    VILLAGER_INFO_NORSE_HOUSEWIFE_FEMALE            =  49 ,
    VILLAGER_INFO_NORSE_FORESTER_MALE               =  50 ,
    VILLAGER_INFO_NORSE_FISHERMAN_MALE              =  51 ,
    VILLAGER_INFO_NORSE_FARMER_MALE                 =  52 ,
    VILLAGER_INFO_NORSE_SHEPHERD_MALE               =  53 ,
    VILLAGER_INFO_NORSE_LEADER_MALE                 =  54 ,
    VILLAGER_INFO_NORSE_TRADER_MALE                 =  55 ,
    VILLAGER_INFO_TIBETAN_HOUSEWIFE_FEMALE          =  56 ,
    VILLAGER_INFO_TIBETAN_FORESTER_MALE             =  57 ,
    VILLAGER_INFO_TIBETAN_FISHERMAN_MALE            =  58 ,
    VILLAGER_INFO_TIBETAN_FARMER_MALE               =  59 ,
    VILLAGER_INFO_TIBETAN_SHEPHERD_MALE             =  60 ,
    VILLAGER_INFO_TIBETAN_LEADER_MALE               =  61 ,
    VILLAGER_INFO_TIBETAN_TRADER_MALE               =  62 ,
    VILLAGER_INFO_PIED_PIPER                        =  63 ,
    VILLAGER_INFO_SHAOLIN                           =  64 ,
    VILLAGER_INFO_IDOL_BUILDER                      =  65 ,
    VILLAGER_INFO_HERMIT                            =  66 ,
    VILLAGER_INFO_HIPPY                             =  67 ,
    VILLAGER_INFO_PRIEST                            =  68 ,
    VILLAGER_INFO_PRIESTESS                         =  69 ,
    VILLAGER_INFO_MARAUDER                          =  70 ,
    VILLAGER_INFO_FOOTBALLER_1                      =  71 ,
    VILLAGER_INFO_FOOTBALLER_2                      =  72 ,
    VILLAGER_INFO_ENGINEER                          =  73 ,
    VILLAGER_INFO_SHEPERED                          =  74 ,
    VILLAGER_INFO_NOMADE                            =  75 ,
    VILLAGER_INFO_AZTEC_LEADER                      =  76 ,
    VILLAGER_INFO_CREATURE_TRAINER                  =  77 ,
    VILLAGER_INFO_NORSE_SAILOR                      =  78 ,
    VILLAGER_INFO_BREEDER                           =  79 ,
    VILLAGER_INFO_HEALER                            =  80 ,
    VILLAGER_INFO_SCULPTOR                          =  81 ,
    VILLAGER_INFO_CRUSADER                          =  82 ,
    VILLAGER_INFO_SAILOR_ACCORDIAN                  =  83 ,
    VILLAGER_INFO_LAST                              =  84 ,

    // Creature Isle???
    VILLAGER_INFO_MULE_HEAD                         =  84 ,
    VILLAGER_INFO_EGYPTIAN_BIG_EYES                 =  85 ,
    VILLAGER_INFO_GIANT                             =  86 ,
};

//*****************************************************************************
// ENUM Values: VILLAGER_BASIC_INFO
//*****************************************************************************
enum     VILLAGER_BASIC_INFO
{
    VILLAGER_BASIC_INFO_NONE                        = -1 ,
    VILLAGER_BASIC_INFO_FIRST                       =  0 ,
    VILLAGER_BASIC_INFO_HOUSEWIFE_FEMALE            =  0 ,
    VILLAGER_BASIC_INFO_FORESTER_MALE               =  1 ,
    VILLAGER_BASIC_INFO_FISHERMAN_MALE              =  2 ,
    VILLAGER_BASIC_INFO_FARMER_MALE                 =  3 ,
    VILLAGER_BASIC_INFO_SHEPHERD_MALE               =  4 ,
    VILLAGER_BASIC_INFO_LEADER_MALE                 =  5 ,
    VILLAGER_BASIC_INFO_TRADER_MALE                 =  6 ,
    VILLAGER_BASIC_INFO_LAST                        =  7 ,
};

//*****************************************************************************
// ENUM Values: SPOT_VISUAL_TYPE
//*****************************************************************************
enum     SPOT_VISUAL_TYPE
{
    SPOT_VISUAL_NONE                                =  0 ,
    SPOT_VISUAL_APPLY_SPELL_EFFECT                  =  1 ,
    SPOT_VISUAL_GRIP_LANDSCAPE                      =  2 ,
    SPOT_VISUAL_SPELL_SUCCEED_CAST                  =  3 ,
    SPOT_VISUAL_SPELL_FAIL_CAST                     =  4 ,
    SPOT_VISUAL_SINGLE_FIREWORK                     =  5 ,
    SPOT_VISUAL_TOWN_FIREWORKS                      =  6 ,
    SPOT_VISUAL_TOWN_FIREWORKS_PU1                  =  7 ,
    SPOT_VISUAL_TOWN_FIREWORKS_PU2                  =  8 ,
    SPOT_VISUAL_MAGIC_OBJECT_CREATED                =  9 ,
    SPOT_VISUAL_COMMAND_SUCCEED                     =  10 ,
    SPOT_VISUAL_COMMAND_FAIL                        =  11 ,
    SPOT_VISUAL_CREATURE_TARGET                     =  12 ,
    SPOT_VISUAL_CREATURE_CAST_VISUAL                =  13 ,
    SPOT_VISUAL_VILLAGER_TELEPORT                   =  14 ,
    SPOT_VISUAL_FIRE_FX                             =  15 ,
    SPOT_VISUAL_FIRE_FX_ON_OBJECT                   =  16 ,
    SPOT_VISUAL_MAGIC_FX                            =  17 ,
    SPOT_VISUAL_MAGIC_FX_ON_OBJECT                  =  18 ,
    SPOT_VISUAL_MAGIC_FX_ON_CITADEL                 =  19 ,
    SPOT_VISUAL_MAGIC_BEAM                          =  20 ,
    SPOT_VISUAL_MAGIC_BEAM_ON_CITADEL               =  21 ,
    SPOT_VISUAL_STEAM                               =  22 ,
    SPOT_VISUAL_SMOKE                               =  23 ,
    SPOT_VISUAL_DUST                                =  24 ,
    SPOT_VISUAL_BONFIRE                             =  25 ,
    SPOT_VISUAL_EVIL_SMOKE                          =  26 ,
    SPOT_VISUAL_OBJECT_APPEAR                       =  27 ,
    SPOT_VISUAL_OBJECT_DISAPPEAR                    =  28 ,
    SPOT_VISUAL_BANG                                =  29 ,
    SPOT_VISUAL_SING_STONES_GLOW                    =  30 ,
    SPOT_VISUAL_PLAYER_ICON_FOUNTAIN                =  31 ,
    SPOT_VISUAL_EXPLOSION_CITADEL                   =  32 ,
    SPOT_VISUAL_HEAL_FX                             =  33 ,
    SPOT_VISUAL_HIGHLIGHT_ON_OBJECT                 =  34 ,
    SPOT_VISUAL_LIGHTNING_SINGLE_STRIKE             =  35 ,
    SPOT_VISUAL_BEAM_EXPLOSION_FX                   =  36 ,
    SPOT_VISUAL_BUTTERFLIES                         =  37 ,
    SPOT_VISUAL_BUTTERFLIES_ON_OBJECT               =  38 ,
    SPOT_VISUAL_FLIES                               =  39 ,
    SPOT_VISUAL_FLIES_ON_OBJECT                     =  40 ,
    SPOT_VISUAL_MAGIC_BEAM_CREATURE_SWAP            =  41 ,
    SPOT_VISUAL_FLASH                               =  42 ,
    SPOT_VISUAL_TICKER_TAPE                         =  43 ,
    SPOT_VISUAL_FOREST_CREATED                      =  44 ,
    SPOT_VISUAL_SINGING_STONES_HEAL                 =  45 ,
    SPOT_VISUAL_PILEFOOD_SPEEDUP                    =  46 ,
    SPOT_VISUAL_SEE_THIS_BEAM                       =  47 ,
    SPOT_VISUAL_SEE_THIS_BEAM2                      =  48 ,
    SPOT_VISUAL_TEST                                =  49 ,
    SPOT_VISUAL_TYPE_LAST                           =  50 ,
};

//*****************************************************************************
// ENUM Values: WALL_SECTION_TYPE
//*****************************************************************************
enum     WALL_SECTION_TYPE
{
    WALL_SECTION_INFO_NONE                          = -1 ,
    WALL_SECTION_INFO_BASIC                         =  0 ,
    WALL_SECTION_INFO_LAST                          =  1 ,
};

//*****************************************************************************
// ENUM Values: CAST_RULE_TYPE
//*****************************************************************************
enum     CAST_RULE_TYPE
{
    CAST_RULE_ANYWHERE                              =  0 ,
    CAST_RULE_ON_LAND                               =  1 ,
    CAST_RULE_IN_INFLUENCE                          =  2 ,
    CAST_RULE_ON_LAND_IN_INFLUENCE                  =  3 ,
    CAST_RULE_LAST                                  =  4 ,
};

//*****************************************************************************
// ENUM Values: ABODE_INFO
//*****************************************************************************
enum     ABODE_INFO
{
    ABODE_INFO_NONE                                 = -1 ,
    ABODE_INFO_CELTIC_HUT                           =  0 ,
    ABODE_INFO_CELTIC_TENT                          =  1 ,
    ABODE_INFO_CELTIC_SHACK_X                       =  2 ,
    ABODE_INFO_CELTIC_SHACK_Y                       =  3 ,
    ABODE_INFO_CELTIC_TEMPLE_X                      =  4 ,
    ABODE_INFO_CELTIC_TEMPLE_Y                      =  5 ,
    ABODE_INFO_CELTIC_TOTEM                         =  6 ,
    ABODE_INFO_CELTIC_STORAGE_PIT                   =  7 ,
    ABODE_INFO_CELTIC_CRECHE                        =  8 ,
    ABODE_INFO_CELTIC_WORKSHOP                      =  9 ,
    ABODE_INFO_CELTIC_WONDER                        =  10 ,
    ABODE_INFO_CELTIC_GRAVEYARD                     =  11 ,
    ABODE_INFO_CELTIC_TOWN_CENTRE                   =  12 ,
    ABODE_INFO_CELTIC_FOOTBALL_PITCH                =  13 ,
    ABODE_INFO_CELTIC_SPELL_DISPENSER               =  14 ,
    ABODE_INFO_CELTIC_FIELD                         =  15 ,
    ABODE_INFO_AFRICAN_HUT                          =  16 ,
    ABODE_INFO_AFRICAN_TENT                         =  17 ,
    ABODE_INFO_AFRICAN_SHACK_X                      =  18 ,
    ABODE_INFO_AFRICAN_SHACK_Y                      =  19 ,
    ABODE_INFO_AFRICAN_TEMPLE_X                     =  20 ,
    ABODE_INFO_AFRICAN_TEMPLE_Y                     =  21 ,
    ABODE_INFO_AFRICAN_TOTEM                        =  22 ,
    ABODE_INFO_AFRICAN_STORAGE_PIT                  =  23 ,
    ABODE_INFO_AFRICAN_CRECHE                       =  24 ,
    ABODE_INFO_AFRICAN_WORKSHOP                     =  25 ,
    ABODE_INFO_AFRICAN_WONDER                       =  26 ,
    ABODE_INFO_AFRICAN_GRAVEYARD                    =  27 ,
    ABODE_INFO_AFRICAN_TOWN_CENTRE                  =  28 ,
    ABODE_INFO_AFRICAN_FOOTBALL_PITCH               =  29 ,
    ABODE_INFO_AFRICAN_SPELL_DISPENSER              =  30 ,
    ABODE_INFO_AFRICAN_FIELD                        =  31 ,
    ABODE_INFO_AZTEC_HUT                            =  32 ,
    ABODE_INFO_AZTEC_TENT                           =  33 ,
    ABODE_INFO_AZTEC_SHACK_X                        =  34 ,
    ABODE_INFO_AZTEC_SHACK_Y                        =  35 ,
    ABODE_INFO_AZTEC_TEMPLE_X                       =  36 ,
    ABODE_INFO_AZTEC_TEMPLE_Y                       =  37 ,
    ABODE_INFO_AZTEC_TOTEM                          =  38 ,
    ABODE_INFO_AZTEC_STORAGE_PIT                    =  39 ,
    ABODE_INFO_AZTEC_CRECHE                         =  40 ,
    ABODE_INFO_AZTEC_WORKSHOP                       =  41 ,
    ABODE_INFO_AZTEC_WONDER                         =  42 ,
    ABODE_INFO_AZTEC_GRAVEYARD                      =  43 ,
    ABODE_INFO_AZTEC_TOWN_CENTRE                    =  44 ,
    ABODE_INFO_AZTEC_FOOTBALL_PITCH                 =  45 ,
    ABODE_INFO_AZTEC_SPELL_DISPENSER                =  46 ,
    ABODE_INFO_AZTEC_FIELD                          =  47 ,
    ABODE_INFO_JAPANESE_HUT                         =  48 ,
    ABODE_INFO_JAPANESE_TENT                        =  49 ,
    ABODE_INFO_JAPANESE_SHACK_X                     =  50 ,
    ABODE_INFO_JAPANESE_SHACK_Y                     =  51 ,
    ABODE_INFO_JAPANESE_TEMPLE_X                    =  52 ,
    ABODE_INFO_JAPANESE_TEMPLE_Y                    =  53 ,
    ABODE_INFO_JAPANESE_TOTEM                       =  54 ,
    ABODE_INFO_JAPANESE_STORAGE_PIT                 =  55 ,
    ABODE_INFO_JAPANESE_CRECHE                      =  56 ,
    ABODE_INFO_JAPANESE_WORKSHOP                    =  57 ,
    ABODE_INFO_JAPANESE_WONDER                      =  58 ,
    ABODE_INFO_JAPANESE_GRAVEYARD                   =  59 ,
    ABODE_INFO_JAPANESE_TOWN_CENTRE                 =  60 ,
    ABODE_INFO_JAPANESE_FOOTBALL_PITCH              =  61 ,
    ABODE_INFO_JAPANESE_SPELL_DISPENSER             =  62 ,
    ABODE_INFO_JAPANESE_FIELD                       =  63 ,
    ABODE_INFO_INDIAN_HUT                           =  64 ,
    ABODE_INFO_INDIAN_TENT                          =  65 ,
    ABODE_INFO_INDIAN_SHACK_X                       =  66 ,
    ABODE_INFO_INDIAN_SHACK_Y                       =  67 ,
    ABODE_INFO_INDIAN_TEMPLE_X                      =  68 ,
    ABODE_INFO_INDIAN_TEMPLE_Y                      =  69 ,
    ABODE_INFO_INDIAN_TOTEM                         =  70 ,
    ABODE_INFO_INDIAN_STORAGE_PIT                   =  71 ,
    ABODE_INFO_INDIAN_CRECHE                        =  72 ,
    ABODE_INFO_INDIAN_WORKSHOP                      =  73 ,
    ABODE_INFO_INDIAN_WONDER                        =  74 ,
    ABODE_INFO_INDIAN_GRAVEYARD                     =  75 ,
    ABODE_INFO_INDIAN_TOWN_CENTRE                   =  76 ,
    ABODE_INFO_INDIAN_FOOTBALL_PITCH                =  77 ,
    ABODE_INFO_INDIAN_SPELL_DISPENSER               =  78 ,
    ABODE_INFO_INDIAN_FIELD                         =  79 ,
    ABODE_INFO_EGYPTIAN_HUT                         =  80 ,
    ABODE_INFO_EGYPTIAN_TENT                        =  81 ,
    ABODE_INFO_EGYPTIAN_SHACK_X                     =  82 ,
    ABODE_INFO_EGYPTIAN_SHACK_Y                     =  83 ,
    ABODE_INFO_EGYPTIAN_TEMPLE_X                    =  84 ,
    ABODE_INFO_EGYPTIAN_TEMPLE_Y                    =  85 ,
    ABODE_INFO_EGYPTIAN_TOTEM                       =  86 ,
    ABODE_INFO_EGYPTIAN_STORAGE_PIT                 =  87 ,
    ABODE_INFO_EGYPTIAN_CRECHE                      =  88 ,
    ABODE_INFO_EGYPTIAN_WORKSHOP                    =  89 ,
    ABODE_INFO_EGYPTIAN_WONDER                      =  90 ,
    ABODE_INFO_EGYPTIAN_GRAVEYARD                   =  91 ,
    ABODE_INFO_EGYPTIAN_TOWN_CENTRE                 =  92 ,
    ABODE_INFO_EGYPTIAN_FOOTBALL_PITCH              =  93 ,
    ABODE_INFO_EGYPTIAN_SPELL_DISPENSER             =  94 ,
    ABODE_INFO_EGYPTIAN_FIELD                       =  95 ,
    ABODE_INFO_GREEK_HUT                            =  96 ,
    ABODE_INFO_GREEK_TENT                           =  97 ,
    ABODE_INFO_GREEK_SHACK_X                        =  98 ,
    ABODE_INFO_GREEK_SHACK_Y                        =  99 ,
    ABODE_INFO_GREEK_TEMPLE_X                       =  100 ,
    ABODE_INFO_GREEK_TEMPLE_Y                       =  101 ,
    ABODE_INFO_GREEK_TOTEM                          =  102 ,
    ABODE_INFO_GREEK_STORAGE_PIT                    =  103 ,
    ABODE_INFO_GREEK_CRECHE                         =  104 ,
    ABODE_INFO_GREEK_WORKSHOP                       =  105 ,
    ABODE_INFO_GREEK_WONDER                         =  106 ,
    ABODE_INFO_GREEK_GRAVEYARD                      =  107 ,
    ABODE_INFO_GREEK_TOWN_CENTRE                    =  108 ,
    ABODE_INFO_GREEK_FOOTBALL_PITCH                 =  109 ,
    ABODE_INFO_GREEK_SPELL_DISPENSER                =  110 ,
    ABODE_INFO_GREEK_FIELD                          =  111 ,
    ABODE_INFO_NORSE_HUT                            =  112 ,
    ABODE_INFO_NORSE_TENT                           =  113 ,
    ABODE_INFO_NORSE_SHACK_X                        =  114 ,
    ABODE_INFO_NORSE_SHACK_Y                        =  115 ,
    ABODE_INFO_NORSE_TEMPLE_X                       =  116 ,
    ABODE_INFO_NORSE_TEMPLE_Y                       =  117 ,
    ABODE_INFO_NORSE_TOTEM                          =  118 ,
    ABODE_INFO_NORSE_STORAGE_PIT                    =  119 ,
    ABODE_INFO_NORSE_CRECHE                         =  120 ,
    ABODE_INFO_NORSE_WORKSHOP                       =  121 ,
    ABODE_INFO_NORSE_WONDER                         =  122 ,
    ABODE_INFO_NORSE_GRAVEYARD                      =  123 ,
    ABODE_INFO_NORSE_TOWN_CENTRE                    =  124 ,
    ABODE_INFO_NORSE_FOOTBALL_PITCH                 =  125 ,
    ABODE_INFO_NORSE_SPELL_DISPENSER                =  126 ,
    ABODE_INFO_NORSE_FIELD                          =  127 ,
    ABODE_INFO_TIBETAN_HUT                          =  128 ,
    ABODE_INFO_TIBETAN_TENT                         =  129 ,
    ABODE_INFO_TIBETAN_SHACK_X                      =  130 ,
    ABODE_INFO_TIBETAN_SHACK_Y                      =  131 ,
    ABODE_INFO_TIBETAN_TEMPLE_X                     =  132 ,
    ABODE_INFO_TIBETAN_TEMPLE_Y                     =  133 ,
    ABODE_INFO_TIBETAN_TOTEM                        =  134 ,
    ABODE_INFO_TIBETAN_STORAGE_PIT                  =  135 ,
    ABODE_INFO_TIBETAN_CRECHE                       =  136 ,
    ABODE_INFO_TIBETAN_WORKSHOP                     =  137 ,
    ABODE_INFO_TIBETAN_WONDER                       =  138 ,
    ABODE_INFO_TIBETAN_GRAVEYARD                    =  139 ,
    ABODE_INFO_TIBETAN_TOWN_CENTRE                  =  140 ,
    ABODE_INFO_TIBETAN_FOOTBALL_PITCH               =  141 ,
    ABODE_INFO_TIBETAN_SPELL_DISPENSER              =  142 ,
    ABODE_INFO_TIBETAN_FIELD                        =  143 ,
    ABODE_INFO_ARK_DRY_DOCK                         =  144 ,
    ABODE_INFO_ARK_WRECK                            =  145 ,
    ABODE_INFO_BELLTOWER                            =  146 ,
    ABODE_INFO_LAST                                 =  147 ,
};

//*****************************************************************************
// ENUM Values: VILLAGER_NUMBER
//*****************************************************************************
enum     VILLAGER_NUMBER
{
    VILLAGER_NUMBER_HOUSEWIFE                       =  0 ,
    VILLAGER_NUMBER_FORESTER                        =  1 ,
    VILLAGER_NUMBER_FISHERMAN                       =  2 ,
    VILLAGER_NUMBER_FARMER                          =  3 ,
    VILLAGER_NUMBER_SHEPHERD                        =  4 ,
    VILLAGER_NUMBER_LEADER                          =  5 ,
    VILLAGER_NUMBER_TRADER                          =  6 ,
    VILLAGER_NUMBER_LAST                            =  7 ,
};

//*****************************************************************************
// ENUM Values: CARRIED_OBJECT
//*****************************************************************************
enum     CARRIED_OBJECT
{
    CARRIED_OBJECT_NO_CHANGE                        =  0 ,
    CARRIED_OBJECT_NONE                             =  1 ,
    CARRIED_OBJECT_AXE                              =  2 ,
    CARRIED_OBJECT_FISHING_ROD                      =  3 ,
    CARRIED_OBJECT_CROOK                            =  4 ,
    CARRIED_OBJECT_SAW                              =  5 ,
    CARRIED_OBJECT_BAG                              =  6 ,
    CARRIED_OBJECT_BALL                             =  7 ,
    CARRIED_OBJECT_HAMMER                           =  8 ,
    CARRIED_OBJECT_MALLET_HEAVY                     =  9 ,
    CARRIED_OBJECT_SCYTHE                           =  10 ,
    CARRIED_OBJECT_SPADE                            =  11 ,
    CARRIED_OBJECT_WOOD                             =  12 ,
    CARRIED_OBJECT_TREE_1                           =  13 ,
    CARRIED_OBJECT_TREE_2                           =  14 ,
    CARRIED_OBJECT_TREE_3                           =  15 ,
    CARRIED_OBJECT_LAST                             =  16 ,
};

//*****************************************************************************
// ENUM Values: DISCRETE_ALIGNMENT_VALUES
//*****************************************************************************
enum     DISCRETE_ALIGNMENT_VALUES
{
    ALIGNMENT_DEVILISH                              =  0 ,
    ALIGNMENT_EVIL                                  =  1 ,
    ALIGNMENT_BAD                                   =  2 ,
    ALIGNMENT_NEUTRAL                               =  3 ,
    ALIGNMENT_NICE                                  =  4 ,
    ALIGNMENT_GOOD                                  =  5 ,
    ALIGNMENT_ANGELIC                               =  6 ,
    NUM_DISCRETE_ALIGNMENTS                         =  7 ,
};

//*****************************************************************************
// ENUM Values: HELP_SPIRIT_TYPE
//*****************************************************************************
enum     HELP_SPIRIT_TYPE
{
    HELP_SPIRIT_TYPE_NONE                           =  0 ,
    HELP_SPIRIT_TYPE_GOOD                           =  1 ,
    HELP_SPIRIT_TYPE_EVIL                           =  2 ,
    HELP_SPIRIT_TYPE_LAST                           =  3 ,
};

//*****************************************************************************
// ENUM Values: DETAIL_LEVEL
//*****************************************************************************
enum     DETAIL_LEVEL
{
    DETAIL_LEVEL_HIGH                               =  0 ,
    DETAIL_LEVEL_NORMAL                             =  1 ,
    DETAIL_LEVEL_LOW                                =  2 ,
    DETAIL_LEVEL_LAST                               =  3 ,
};

//*****************************************************************************
// ENUM Values: MOBILE_STATIC_INFO
//*****************************************************************************
enum     MOBILE_STATIC_INFO
{
    MOBILE_STATIC_INFO_NONE                         = -1 ,
    MOBILE_STATIC_INFO_CELT_FENCE_SHORT             =  0 ,
    MOBILE_STATIC_INFO_CELT_FENCE_TALL              =  1 ,
    MOBILE_STATIC_INFO_ROCK                         =  2 ,
    MOBILE_STATIC_INFO_DEAD_TREE                    =  3 ,
    MOBILE_STATIC_INFO_PHYSICAL_SHIELD              =  4 ,
    MOBILE_STATIC_INFO_SINGING_STONE_1              =  5 ,
    MOBILE_STATIC_INFO_SINGING_STONE_BASE           =  6 ,
    MOBILE_STATIC_INFO_STREET_LANTERN               =  7 ,
    MOBILE_STATIC_INFO_BONFIRE                      =  8 ,
    MOBILE_STATIC_INFO_CREATURE_CAGE                =  9 ,
    MOBILE_STATIC_INFO_IDOL                         =  10 ,
    MOBILE_STATIC_INFO_IDOL_REWARD                  =  11 ,
    MOBILE_STATIC_INFO_VORTEX                       =  12 ,
    MOBILE_STATIC_INFO_TELEPORT                     =  13 ,
    MOBILE_STATIC_INFO_WEEPING_STONE                =  14 ,
    MOBILE_STATIC_INFO_WEEPING_STONE_REWARD         =  15 ,
    MOBILE_STATIC_INFO_BOULDER1_CHALK               =  16 ,
    MOBILE_STATIC_INFO_BOULDER1_LIME                =  17 ,
    MOBILE_STATIC_INFO_BOULDER1_SAND                =  18 ,
    MOBILE_STATIC_INFO_BOULDER1_VOLCANIC            =  19 ,
    MOBILE_STATIC_INFO_BOULDER2_CHALK               =  20 ,
    MOBILE_STATIC_INFO_BOULDER2_LIME                =  21 ,
    MOBILE_STATIC_INFO_BOULDER2_SAND                =  22 ,
    MOBILE_STATIC_INFO_BOULDER2_VOLCANIC            =  23 ,
    MOBILE_STATIC_INFO_BOULDER3_CHALK               =  24 ,
    MOBILE_STATIC_INFO_BOULDER3_LIME                =  25 ,
    MOBILE_STATIC_INFO_BOULDER3_SAND                =  26 ,
    MOBILE_STATIC_INFO_BOULDER3_VOLCANIC            =  27 ,
    MOBILE_STATIC_INFO_FLATROCK_CHALK               =  28 ,
    MOBILE_STATIC_INFO_FLATROCK_LIMESTONE           =  29 ,
    MOBILE_STATIC_INFO_FLATROCK_SANDSTONE           =  30 ,
    MOBILE_STATIC_INFO_FLATROCK_VOLCANIC            =  31 ,
    MOBILE_STATIC_INFO_LONGROCK_CHALK               =  32 ,
    MOBILE_STATIC_INFO_LONGROCK_LIMESTONE           =  33 ,
    MOBILE_STATIC_INFO_LONGROCK_SANDSTONE           =  34 ,
    MOBILE_STATIC_INFO_LONGROCK_VOLCANIC            =  35 ,
    MOBILE_STATIC_INFO_ROCK_CHALK                   =  36 ,
    MOBILE_STATIC_INFO_ROCK_LIMESTONE               =  37 ,
    MOBILE_STATIC_INFO_ROCK_SANDSTONE               =  38 ,
    MOBILE_STATIC_INFO_ROCK_VOLCANIC                =  39 ,
    MOBILE_STATIC_INFO_SHARPROCK_CHALK              =  40 ,
    MOBILE_STATIC_INFO_SHARPROCK_LIMESTONE          =  41 ,
    MOBILE_STATIC_INFO_SHARPROCK_SANDSTONE          =  42 ,
    MOBILE_STATIC_INFO_SHARPROCK_VOLCANIC           =  43 ,
    MOBILE_STATIC_INFO_SQUAREROCK_CHALK             =  44 ,
    MOBILE_STATIC_INFO_SQUAREROCK_LIMESTONE         =  45 ,
    MOBILE_STATIC_INFO_SQUAREROCK_SANDSTONE         =  46 ,
    MOBILE_STATIC_INFO_SQUAREROCK_VOLCANIC          =  47 ,
    MOBILE_STATIC_INFO_STANDALONE_ALTAR             =  48 ,
    MOBILE_STATIC_INFO_GATE_TOTEM_APE               =  49 ,
    MOBILE_STATIC_INFO_GATE_TOTEM_BLANK             =  50 ,
    MOBILE_STATIC_INFO_GATE_TOTEM_COW               =  51 ,
    MOBILE_STATIC_INFO_GATE_TOTEM_TIGER             =  52 ,
    MOBILE_STATIC_INFO_TOY_BALL                     =  53 ,
    MOBILE_STATIC_INFO_TOY_CUDDLY                   =  54 ,
    MOBILE_STATIC_INFO_TOY_DIE                      =  55 ,
    MOBILE_STATIC_INFO_TOY_SKITTLE                  =  56 ,
    MOBILE_STATIC_INFO_TOY_BOWLING_BALL             =  57 ,
    MOBILE_STATIC_INFO_SCULPTURE_IN_PROGRESS        =  58 ,
    MOBILE_STATIC_INFO_COUNTRY_LANTERN              =  59 ,
    MOBILE_STATIC_INFO_METEOR                       =  60 ,
    MOBILE_STATIC_INFO_MARBLE1                      =  61 ,
    MOBILE_STATIC_INFO_MARBLE2                      =  62 ,
    MOBILE_STATIC_INFO_MARBLE3                      =  63 ,
    MOBILE_STATIC_INFO_MARBLE4                      =  64 ,
    MOBILE_STATIC_INFO_MARBLE5                      =  65 ,
    MOBILE_STATIC_INFO_MARBLE6                      =  66 ,
    MOBILE_STATIC_INFO_MARBLE7                      =  67 ,
    MOBILE_STATIC_INFO_MARBLE8                      =  68 ,
    MOBILE_STATIC_INFO_MARBLE9                      =  69 ,
    MOBILE_STATIC_INFO_MARBLE10                     =  70 ,
    MOBILE_STATIC_INFO_MARBLE11                     =  71 ,
    MOBILE_STATIC_INFO_MARBLE12                     =  72 ,
    MOBILE_STATIC_INFO_EGG                          =  73 ,
    MOBILE_STATIC_INFO_SOFT_BALL                    =  74 ,
    MOBILE_STATIC_INFO_BASE_ONLY_BATS               =  75 ,
    MOBILE_STATIC_INFO_BASE_ONLY_CREATURE_FIGHT     =  76 ,
    MOBILE_STATIC_INFO_BASE_ONLY_CREATURE_SPEED     =  77 ,
    MOBILE_STATIC_INFO_BASE_ONLY_FUNGUS             =  78 ,
    MOBILE_STATIC_INFO_BASE_ONLY_ICE                =  79 ,
    MOBILE_STATIC_INFO_BASE_ONLY_NO_ENCOUNTER       =  80 ,
    MOBILE_STATIC_INFO_BASE_ONLY_SWAMP              =  81 ,
    MOBILE_STATIC_INFO_BASE_ONLY_TELEPORT           =  82 ,
    MOBILE_STATIC_INFO_BASE_ONLY_SWAP               =  83 ,
    MOBILE_STATIC_INFO_BASE_ONLY_BROTHERHOOD        =  84 ,
    MOBILE_STATIC_INFO_BASE_ONLY_BROTHERHOOD_SMALL  =  85 ,
    MOBILE_STATIC_INFO_WATER_CANNON                 =  86 ,
    MOBILE_STATIC_INFO_WATER_CANNON_AMMO            =  87 ,
    MOBILE_STATIC_INFO_BASE_ONLY_MARBLE_BASE        =  88 ,
    MOBILE_STATIC_INFO_LAST                         =  89 ,
};

//*****************************************************************************
// ENUM Values: SPEED_THRESHOLD
//*****************************************************************************
enum     SPEED_THRESHOLD
{
    SPEED_THRESHOLD_VILLAGER_NORMAL                 =  0 ,
    SPEED_THRESHOLD_VILLAGER_MAN                    =  1 ,
    SPEED_THRESHOLD_ANIMAL_COW                      =  2 ,
    SPEED_THRESHOLD_ANIMAL_HORSE                    =  3 ,
    SPEED_THRESHOLD_ANIMAL_SHEEP                    =  4 ,
    SPEED_THRESHOLD_ANIMAL_PIG                      =  5 ,
    SPEED_THRESHOLD_ANIMAL_LION                     =  6 ,
    SPEED_THRESHOLD_ANIMAL_TIGER                    =  7 ,
    SPEED_THRESHOLD_ANIMAL_LEOPARD                  =  8 ,
    SPEED_THRESHOLD_ANIMAL_WOLF                     =  9 ,
    SPEED_THRESHOLD_LAST                            =  10 ,
};

//*****************************************************************************
// ENUM Values: SPEED_MAX
//*****************************************************************************
enum     SPEED_MAX
{
    SPEED_MAX_WALK                                  =  0 ,
    SPEED_MAX_RUN                                   =  1 ,
};

//*****************************************************************************
// ENUM Values: SPEED_ID
//*****************************************************************************
enum     SPEED_ID
{
    SPEED_ID_DEFAULT                                =  0 ,
    SPEED_ID_FLEEING                                =  1 ,
    SPEED_ID_BRISK_WALK                             =  2 ,
    SPEED_ID_DANCING                                =  3 ,
    SPEED_ID_STALKING                               =  2 ,
    SPEED_ID_ATTACK                                 =  3 ,
    SPEED_ID_HUNTING                                =  4 ,
    SPEED_ID_WANDER                                 =  4 ,
    SPEED_ID_RUNNING                                =  5 ,
    SPEED_ID_LAST                                   =  6 ,
};

//*****************************************************************************
// ENUM Values: DANCE_INFO
//*****************************************************************************
enum     DANCE_INFO
{
    DANCE_INFO_NONE                                 = -1 ,
    DANCE_INFO_WORSHIP                              =  0 ,
    DANCE_INFO_CREATURE                             =  1 ,
    DANCE_INFO_MEETING                              =  2 ,
    DANCE_INFO_HOUSEWIFE                            =  3 ,
    DANCE_INFO_BUILDING_SMALL                       =  4 ,
    DANCE_INFO_BUILDING_LARGE                       =  5 ,
    DANCE_INFO_DANCE_AROUND_PERSON                  =  6 ,
    DANCE_INFO_DANCE_PRAY_INWARDS                   =  7 ,
    DANCE_INFO_DANCE_TOWN_CELEBRATION               =  8 ,
    DANCE_INFO_CREATURE_TELLING_STORY               =  9 ,
    DANCE_INFO_CREATURE_PLAYING_GAME_WITH_VILLAGERS =  10 ,
    DANCE_INFO_CREATURE_DANCE_WITH_VILLAGERS_WATCHING
                                                    =  11 ,
    DANCE_INFO_CREATURE_DANCE_TO_IMPRESS_VILLAGERS  =  12 ,
    DANCE_INFO_CREATURE_DANCE_AMOROUS               =  13 ,
    DANCE_INFO_NEW_DANCE_AROUND_PERSON              =  14 ,
    DANCE_INFO_DANCE_AROUND_OBJECT_DIAMETER_LESS_7  =  15 ,
    DANCE_INFO_DANCE_AROUND_OBJECT_DIAMETER_LESS_10 =  16 ,
    DANCE_INFO_DANCE_AROUND_OBJECT_DIAMETER_LESS_20 =  17 ,
    DANCE_INFO_DANCE_AROUND_OBJECT_DIAMETER_GREATER_20
                                                    =  18 ,
    DANCE_INFO_CITADEL_DANCE_1                      =  19 ,
    DANCE_INFO_CITADEL_DANCE_2                      =  20 ,
    DANCE_INFO_CITADEL_DANCE_3                      =  21 ,
    DANCE_INFO_CITADEL_DANCE_4                      =  22 ,
    DANCE_INFO_CITADEL_DANCE_5                      =  23 ,
    DANCE_INFO_CITADEL_DANCE_6                      =  24 ,
    DANCE_INFO_LAST                                 =  25 ,
};

//*****************************************************************************
// ENUM Values: VILLAGER_AVAILABLE
//*****************************************************************************
enum     VILLAGER_AVAILABLE
{
    VILLAGER_AVAILABLE_FREE                         =  1 ,
    VILLAGER_AVAILABLE_AT_HOME                      =  3 ,
    VILLAGER_AVAILABLE_NOT_FREE                     =  4 ,
};

//*****************************************************************************
// ENUM Values: VILLAGER_MUSTBE
//*****************************************************************************
enum     VILLAGER_MUSTBE
{
    VILLAGER_MUSTBE_DONT_CARE                       =  0 ,
    VILLAGER_MUSTBE_AT_HOME                         =  1 ,
    VILLAGER_MUSTBE_NOT_AT_HOME                     =  2 ,
};

//*****************************************************************************
// ENUM Values: VILLAGER_MAKE_DINNER
//*****************************************************************************
enum     VILLAGER_MAKE_DINNER
{
    VILLAGER_MAKE_DINNER_YES                        =  0 ,
    VILLAGER_MAKE_DINNER_MAKING                     =  1 ,
    VILLAGER_MAKE_DINNER_NO                         =  2 ,
    VILLAGER_MAKE_DINNER_NOT_YET                    =  3 ,
};

//*****************************************************************************
// ENUM Values: POWER_UP_TYPE
//*****************************************************************************
enum     POWER_UP_TYPE
{
    POWER_UP_TYPE_NONE                              = -1 ,
    POWER_UP_TYPE_ONE                               =  0 ,
    POWER_UP_TYPE_TWO                               =  1 ,
    POWER_UP_TYPE_THREE                             =  2 ,
    POWER_UP_TYPE_LAST                              =  3 ,
};

//*****************************************************************************
// ENUM Values: BIG_FOREST_INFO
//*****************************************************************************
enum     BIG_FOREST_INFO
{
    BIG_FOREST_INFO_NONE                            = -1 ,
    BIG_FOREST_INFO_1                               =  0 ,
    BIG_FOREST_INFO_2                               =  1 ,
    BIG_FOREST_INFO_3                               =  2 ,
    BIG_FOREST_INFO_4                               =  3 ,
    BIG_FOREST_INFO_LAST                            =  4 ,
};

//*****************************************************************************
// ENUM Values: FURNITURE_INFO
//*****************************************************************************
enum     FURNITURE_INFO
{
    FURNITURE_INFO_NONE                             = -1 ,
    FURNITURE_INFO_AXE                              =  0 ,
    FURNITURE_INFO_BAG                              =  1 ,
    FURNITURE_INFO_BALL                             =  2 ,
    FURNITURE_INFO_BENCH                            =  3 ,
    FURNITURE_INFO_BUCKET                           =  4 ,
    FURNITURE_INFO_BUCKET02                         =  5 ,
    FURNITURE_INFO_CHEST                            =  6 ,
    FURNITURE_INFO_CHEST_TOP                        =  7 ,
    FURNITURE_INFO_CROOK                            =  8 ,
    FURNITURE_INFO_FISHING_ROD                      =  9 ,
    FURNITURE_INFO_FRAME                            =  10 ,
    FURNITURE_INFO_FRAME_SKIN                       =  11 ,
    FURNITURE_INFO_HAMMER                           =  12 ,
    FURNITURE_INFO_MALLET_HEAVY                     =  13 ,
    FURNITURE_INFO_SAW                              =  14 ,
    FURNITURE_INFO_SCYTHE                           =  15 ,
    FURNITURE_INFO_SPADE                            =  16 ,
    FURNITURE_INFO_STOOL                            =  17 ,
    FURNITURE_INFO_STOOL01                          =  18 ,
    FURNITURE_INFO_TABLE                            =  19 ,
    FURNITURE_INFO_TROUGH                           =  20 ,
    FURNITURE_INFO_WASHING_LINE_AMCN                =  21 ,
    FURNITURE_INFO_WASHING_LINE_AZTC                =  22 ,
    FURNITURE_INFO_WASHING_LINE_CELT                =  23 ,
    FURNITURE_INFO_WASHING_LINE_EGPT                =  24 ,
    FURNITURE_INFO_WASHING_LINE_GREK                =  25 ,
    FURNITURE_INFO_WASHING_LINE_JAPN                =  26 ,
    FURNITURE_INFO_WASHING_LINE_NORS                =  27 ,
    FURNITURE_INFO_WASHING_LINE_TIBT                =  28 ,
    FURNITURE_INFO_WELL                             =  29 ,
    FURNITURE_INFO_WELL_COVERED                     =  30 ,
    FURNITURE_INFO_LAST                             =  31 ,
};

//*****************************************************************************
// ENUM Values: FISH_FARM_INFO
//*****************************************************************************
enum     FISH_FARM_INFO
{
    FISH_FARM_INFO_NONE                             = -1 ,
    FISH_FARM_INFO_NORMAL                           =  0 ,
    FISH_FARM_INFO_LAST                             =  1 ,
};

//*****************************************************************************
// ENUM Values: WEATHER_INFO
//*****************************************************************************
enum     WEATHER_INFO
{
    WEATHER_INFO_NONE                               = -1 ,
    WEATHER_INFO_MONSOON                            =  0 ,
    WEATHER_INFO_RAIN                               =  1 ,
    WEATHER_INFO_DRIZZLE                            =  2 ,
    WEATHER_INFO_SLEET                              =  3 ,
    WEATHER_INFO_SNOW_NO_SETTLE                     =  4 ,
    WEATHER_INFO_SNOW                               =  5 ,
    WEATHER_INFO_BLIZZARD                           =  6 ,
    WEATHER_INFO_LAST                               =  7 ,
};

//*****************************************************************************
// ENUM Values: CLIMATE_INFO
//*****************************************************************************
enum     CLIMATE_INFO
{
    CLIMATE_INFO_NONE                               = -1 ,
    CLIMATE_INFO_WORLD_DEFAULT                      =  0 ,
    CLIMATE_INFO_DESERT                             =  1 ,
    CLIMATE_INFO_POLAR                              =  2 ,
    CLIMATE_INFO_JUNGLE                             =  3 ,
    CLIMATE_INFO_GENERAL_SNOW                       =  4 ,
    CLIMATE_INFO_COLD_RAIN                          =  5 ,
    CLIMATE_INFO_INTERNET                           =  6 ,
    CLIMATE_INFO_LAST                               =  7 ,
};

//*****************************************************************************
// ENUM Values: REWARD_OBJECT_INFO
//*****************************************************************************
enum     REWARD_OBJECT_INFO
{
    REWARD_OBJECT_INFO_NONE                         =  0 ,
    REWARD_OBJECT_INFO_HEAL_PU1                     =  1 ,
    REWARD_OBJECT_INFO_HEAL_PU2                     =  2 ,
    REWARD_OBJECT_INFO_SMALL_FOOD                   =  3 ,
    REWARD_OBJECT_INFO_MEDIUM_FOOD                  =  4 ,
    REWARD_OBJECT_INFO_LARGE_FOOD                   =  5 ,
    REWARD_OBJECT_INFO_SMALL_WOOD                   =  6 ,
    REWARD_OBJECT_INFO_MEDIUM_WOOD                  =  7 ,
    REWARD_OBJECT_INFO_LARGE_WOOD                   =  8 ,
    REWARD_OBJECT_INFO_SPELL_SEED_FIREBALL          =  9 ,
    REWARD_OBJECT_INFO_SPELL_FIREBALL_PU1           =  10 ,
    REWARD_OBJECT_INFO_SPELL_FIREBALL_PU2           =  11 ,
    REWARD_OBJECT_INFO_SPELL_SEED_BOLT              =  12 ,
    REWARD_OBJECT_INFO_SPELL_BOLT_PU1               =  13 ,
    REWARD_OBJECT_INFO_SPELL_BOLT_PU2               =  14 ,
    REWARD_OBJECT_INFO_SPELL_SEED_EXPLOSION         =  15 ,
    REWARD_OBJECT_INFO_SPELL_EXPLOSION_PU1          =  16 ,
    REWARD_OBJECT_INFO_SPELL_SEED_HEAL              =  17 ,
    REWARD_OBJECT_INFO_SPELL_HEAL_PU1               =  18 ,
    REWARD_OBJECT_INFO_SPELL_SEED_TELEPORT          =  19 ,
    REWARD_OBJECT_INFO_SPELL_SEED_FOOD              =  20 ,
    REWARD_OBJECT_INFO_SPELL_SEED_STORM             =  21 ,
    REWARD_OBJECT_INFO_SPELL_STORM_PU1              =  22 ,
    REWARD_OBJECT_INFO_SPELL_STORM_PU2              =  23 ,
    REWARD_OBJECT_INFO_SPELL_STORM_PU3              =  24 ,
    REWARD_OBJECT_INFO_SPELL_SEED_SHIELD            =  25 ,
    REWARD_OBJECT_INFO_SPELL_SHIELD_PU1             =  26 ,
    REWARD_OBJECT_INFO_SPELL_SEED_PHYSICAL_SHIELD   =  27 ,
    REWARD_OBJECT_INFO_SPELL_SEED_WOOD              =  28 ,
    REWARD_OBJECT_INFO_SPELL_SEED_SKELETON          =  29 ,
    REWARD_OBJECT_INFO_SPELL_SKELETON_PU1           =  30 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_FREEZE   =  31 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_SMALL    =  32 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_BIG      =  33 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_WEAK     =  34 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_STRONG   =  35 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_FAT      =  36 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_THIN     =  37 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_INVISIBLE=  38 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_COMPASSION
                                                    =  39 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_ANGRY    =  40 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_HUNGRY   =  41 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_FRIGHTENE=  42 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_TRIED    =  43 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_ILL      =  44 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_THIRSTY  =  45 ,
    REWARD_OBJECT_INFO_SPELL_SEED_CREATURE_ITCHY    =  46 ,
    REWARD_OBJECT_INFO_SMALL_BELIEF                 =  47 ,
    REWARD_OBJECT_INFO_MEDIUM_BELIEF                =  48 ,
    REWARD_OBJECT_INFO_LARGE_BELIEF                 =  49 ,
    REWARD_OBJECT_INFO_INCREMENT                    =  50 ,
    REWARD_OBJECT_INFO_SINGING_STONE                =  51 ,
    REWARD_OBJECT_INFO_IDOL                         =  52 ,
    REWARD_OBJECT_INFO_WEEPING_STONE                =  53 ,
    REWARD_OBJECT_INFO_SCAFFOLD                     =  54 ,
    REWARD_OBJECT_INFO_SPELL_SEED_WATER             =  55 ,
    REWARD_OBJECT_INFO_SPELL_SEED_FLOCK_FLYING      =  56 ,
    REWARD_OBJECT_INFO_SPELL_SEED_FLOCK_GROUND      =  57 ,
    REWARD_OBJECT_TOY_BALL                          =  58 ,
    REWARD_OBJECT_TOY_CUDDLY                        =  59 ,
    REWARD_OBJECT_TOY_DIE                           =  60 ,
    REWARD_OBJECT_INFO_LAST                         =  61 ,
};

//*****************************************************************************
// ENUM Values: REWARD_PROGRESS_GOOD
//*****************************************************************************
enum     REWARD_PROGRESS_GOOD
{
    REWARD_INFO_PROGRESS_GOOD_1                     =  0 ,
    REWARD_INFO_PROGRESS_GOOD_2                     =  1 ,
    REWARD_INFO_PROGRESS_GOOD_3                     =  2 ,
    REWARD_INFO_PROGRESS_GOOD_4                     =  3 ,
    REWARD_INFO_PROGRESS_GOOD_5                     =  4 ,
    REWARD_INFO_PROGRESS_GOOD_6                     =  5 ,
    REWARD_INFO_PROGRESS_GOOD_7                     =  6 ,
    REWARD_INFO_PROGRESS_GOOD_8                     =  7 ,
    REWARD_INFO_PROGRESS_GOOD_9                     =  8 ,
    REWARD_INFO_PROGRESS_GOOD_10                    =  9 ,
    REWARD_INFO_PROGRESS_GOOD_11                    =  10 ,
    REWARD_INFO_PROGRESS_GOOD_12                    =  11 ,
    REWARD_INFO_PROGRESS_GOOD_13                    =  12 ,
    REWARD_INFO_PROGRESS_GOOD_14                    =  13 ,
    REWARD_INFO_PROGRESS_GOOD_15                    =  14 ,
    REWARD_INFO_PROGRESS_GOOD_16                    =  15 ,
    REWARD_INFO_PROGRESS_GOOD_17                    =  16 ,
    REWARD_INFO_PROGRESS_GOOD_18                    =  17 ,
    REWARD_INFO_PROGRESS_GOOD_19                    =  18 ,
    REWARD_INFO_PROGRESS_GOOD_20                    =  19 ,
    REWARD_INFO_PROGRESS_GOOD_21                    =  20 ,
    REWARD_INFO_PROGRESS_GOOD_22                    =  21 ,
    REWARD_INFO_PROGRESS_GOOD_23                    =  22 ,
    REWARD_INFO_PROGRESS_GOOD_24                    =  23 ,
    REWARD_INFO_PROGRESS_GOOD_25                    =  24 ,
    REWARD_INFO_PROGRESS_GOOD_26                    =  25 ,
    REWARD_INFO_PROGRESS_GOOD_27                    =  26 ,
    REWARD_INFO_PROGRESS_GOOD_28                    =  27 ,
    REWARD_INFO_PROGRESS_GOOD_29                    =  28 ,
    REWARD_INFO_PROGRESS_GOOD_30                    =  29 ,
    REWARD_INFO_PROGRESS_GOOD_LAST                  =  30 ,
};

//*****************************************************************************
// ENUM Values: REWARD_PROGRESS_EVIL
//*****************************************************************************
enum     REWARD_PROGRESS_EVIL
{
    REWARD_INFO_PROGRESS_EVIL_1                     =  0 ,
    REWARD_INFO_PROGRESS_EVIL_2                     =  1 ,
    REWARD_INFO_PROGRESS_EVIL_3                     =  2 ,
    REWARD_INFO_PROGRESS_EVIL_4                     =  3 ,
    REWARD_INFO_PROGRESS_EVIL_5                     =  4 ,
    REWARD_INFO_PROGRESS_EVIL_6                     =  5 ,
    REWARD_INFO_PROGRESS_EVIL_7                     =  6 ,
    REWARD_INFO_PROGRESS_EVIL_8                     =  7 ,
    REWARD_INFO_PROGRESS_EVIL_9                     =  8 ,
    REWARD_INFO_PROGRESS_EVIL_10                    =  9 ,
    REWARD_INFO_PROGRESS_EVIL_11                    =  10 ,
    REWARD_INFO_PROGRESS_EVIL_12                    =  11 ,
    REWARD_INFO_PROGRESS_EVIL_13                    =  12 ,
    REWARD_INFO_PROGRESS_EVIL_14                    =  13 ,
    REWARD_INFO_PROGRESS_EVIL_15                    =  14 ,
    REWARD_INFO_PROGRESS_EVIL_16                    =  15 ,
    REWARD_INFO_PROGRESS_EVIL_17                    =  16 ,
    REWARD_INFO_PROGRESS_EVIL_18                    =  17 ,
    REWARD_INFO_PROGRESS_EVIL_19                    =  18 ,
    REWARD_INFO_PROGRESS_EVIL_20                    =  19 ,
    REWARD_INFO_PROGRESS_EVIL_21                    =  20 ,
    REWARD_INFO_PROGRESS_EVIL_22                    =  21 ,
    REWARD_INFO_PROGRESS_EVIL_23                    =  22 ,
    REWARD_INFO_PROGRESS_EVIL_24                    =  23 ,
    REWARD_INFO_PROGRESS_EVIL_25                    =  24 ,
    REWARD_INFO_PROGRESS_EVIL_26                    =  25 ,
    REWARD_INFO_PROGRESS_EVIL_27                    =  26 ,
    REWARD_INFO_PROGRESS_EVIL_28                    =  27 ,
    REWARD_INFO_PROGRESS_EVIL_29                    =  28 ,
    REWARD_INFO_PROGRESS_EVIL_30                    =  29 ,
    REWARD_INFO_PROGRESS_EVIL_LAST                  =  30 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_ACTION_LEARNING_TYPE
//*****************************************************************************
enum     CREATURE_ACTION_LEARNING_TYPE
{
    CREATURE_ACTION_LEARNING_TYPE_NORMAL            =  0 ,
    CREATURE_ACTION_LEARNING_TYPE_FIRST             =  0 ,
    CREATURE_ACTION_LEARNING_TYPE_MAGIC             =  1 ,
    CREATURE_ACTION_LEARNING_TYPE_LAST              =  2 ,
    CREATURE_ACTION_LEARNING_TYPE_NONE              =  2 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_ACTION_KNOWN_ABOUT
//*****************************************************************************
enum     CREATURE_ACTION_KNOWN_ABOUT
{
    CREATURE_ACTION_KNOWN_ABOUT_BUILD               =  0 ,
    CREATURE_ACTION_KNOWN_ABOUT_USE_FIELD           =  1 ,
    CREATURE_ACTION_KNOWN_ABOUT_USE_TOTEM           =  2 ,
    CREATURE_ACTION_KNOWN_ABOUT_USE_STORAGE_PIT     =  3 ,
    CREATURE_ACTION_KNOWN_ABOUT_FISH                =  4 ,
    CREATURE_ACTION_KNOWN_ABOUT_DANCE               =  5 ,
    CREATURE_ACTION_KNOWN_ABOUT_LAST                =  6 ,
    CREATURE_ACTION_KNOWN_ABOUT_NONE                =  6 ,
};

//*****************************************************************************
// ENUM Values: LANDED_TYPES
//*****************************************************************************
enum     LANDED_TYPES
{
    LANDED_STANDING                                 =  0 ,
    LANDED_ON_FRONT                                 =  1 ,
    LANDED_ON_BACK                                  =  2 ,
    LANDED_ON_RIGHT_SIDE                            =  1 ,
    LANDED_ON_LEFT_SIDE                             =  2 ,
    LANDED_DEFAULT                                  =  3 ,
};

//*****************************************************************************
// ENUM Values: MAGIC_LIVING_INFO
//*****************************************************************************
enum     MAGIC_LIVING_INFO
{
    MAGIC_LIVING_INFO_PRIEST                        =  0 ,
    MAGIC_LIVING_INFO_SKELETON                      =  1 ,
    MAGIC_LIVING_INFO_LAST                          =  2 ,
};

//*****************************************************************************
// ENUM Values: PLAYER_INFO
//*****************************************************************************
enum     PLAYER_INFO
{
    PLAYER_INFO_NORMAL                              =  0 ,
    PLAYER_INFO_LAST                                =  1 ,
};

//*****************************************************************************
// ENUM Values: CREATURE_DESIRES
//*****************************************************************************
enum     CREATURE_DESIRES
{
    CREATURE_DESIRE_TO_IMPRESS                      =  0 ,
    FIRST_CREATURE_DESIRE                           =  0 ,
    CREATURE_DESIRE_COMPASSION                      =  1 ,
    CREATURE_DESIRE_ANGER                           =  2 ,
    CREATURE_DESIRE_TO_PLAY                         =  3 ,
    CREATURE_DESIRE_HUNGER                          =  4 ,
    CREATURE_DESIRE_FEAR                            =  5 ,
    CREATURE_DESIRE_CURIOSITY                       =  6 ,
    CREATURE_DESIRE_TO_POO                          =  7 ,
    CREATURE_DESIRE_TIREDNESS                       =  8 ,
    CREATURE_DESIRE_TO_IDLE_AROUND_WITH_PLAYER      =  9 ,
    CREATURE_DESIRE_WANDERLUST                      =  10 ,
    CREATURE_DESIRE_TO_PUKE                         =  11 ,
    CREATURE_DESIRE_TO_BUILD_HOME                   =  12 ,
    CREATURE_DESIRE_TO_BRING_STUFF_HOME             =  13 ,
    CREATURE_DESIRE_FOR_WATER                       =  14 ,
    CREATURE_DESIRE_TO_RESTORE_HEALTH               =  15 ,
    CREATURE_DESIRE_TO_BE_FRIENDS                   =  16 ,
    CREATURE_DESIRE_TO_ATTRACT_PLAYERS_ATTENTION    =  17 ,
    CREATURE_DESIRE_TO_MANIFEST_STATE               =  18 ,
    CREATURE_DESIRE_TO_GET_WARMER                   =  19 ,
    CREATURE_DESIRE_TO_GET_COLDER                   =  20 ,
    CREATURE_DESIRE_TO_SCRATCH                      =  21 ,
    CREATURE_DESIRE_TO_RUN_AWAY_FROM_PLAYER         =  22 ,
    CREATURE_DESIRE_TO_REST                         =  23 ,
    CREATURE_DESIRE_TO_OBEY_PLAYER                  =  24 ,
    CREATURE_DESIRE_ILLNESS                         =  25 ,
    CREATURE_DESIRE_TO_OBEY_CREATURE                =  26 ,
    CREATURE_DESIRE_SADNESS                         =  27 ,
    CREATURE_DESIRE_TO_STAY_NEAR_HOME               =  28 ,
    CREATURE_DESIRE_TO_TELL_PLAYER_WHAT_YOU_THINK_OF_HIM
                                                    =  29 ,
    CREATURE_DESIRE_TO_PLAY_WITH_PLAYER             =  30 ,
    CREATURE_DESIRE_TO_TELL_CREATURE_WHAT_YOU_THINK_OF_HIM
                                                    =  31 ,
    CREATURE_DESIRE_TO_EDUCATE_FRIEND               =  32 ,
    CREATURE_DESIRE_TO_FOLLOW_PLAYER_DESIRE         =  33 ,
    CREATURE_DESIRE_TO_GET_HIGH                     =  34 ,
    CREATURE_DESIRE_TO_HANG_AROUND_AT_HOME          =  35 ,
    CREATURE_DESIRE_MENTAL_ILLNESS                  =  36 ,
    CREATURE_DESIRE_MISS_FRIEND                     =  37 ,
    CREATURE_DESIRE_TO_LOOK_AROUND                  =  38 ,
    CREATURE_DESIRE_TO_STEAL                        =  39 ,
    NUM_CREATURE_DESIRES                            =  40 ,
    INVALID_CREATURE_DESIRE                         =  40 ,
    ANY_CREATURE_DESIRE                             =  41 ,
    NO_CREATURE_DESIRE                              =  42 ,
};

//*****************************************************************************
// ENUM Values: SOUND_COLLISION_TYPE
//*****************************************************************************
enum     SOUND_COLLISION_TYPE
{
    SOUND_COLLISION_TYPE_DEFAULT                    =  0 ,
    SOUND_COLLISION_TYPE_FLESH                      =  1 ,
    SOUND_COLLISION_TYPE_BUSH                       =  2 ,
    SOUND_COLLISION_TYPE_FIR_TREE                   =  3 ,
    SOUND_COLLISION_TYPE_ENGLISH_TREE               =  4 ,
    SOUND_COLLISION_TYPE_BURNT_TREE                 =  5 ,
    SOUND_COLLISION_TYPE_PALM_TREE                  =  6 ,
    SOUND_COLLISION_TYPE_FABRIC_BUILDING            =  7 ,
    SOUND_COLLISION_TYPE_MUD_BUILDING               =  8 ,
    SOUND_COLLISION_TYPE_WOODEN_BUILDING            =  9 ,
    SOUND_COLLISION_TYPE_BRICK_BUILDING             =  10 ,
    SOUND_COLLISION_TYPE_GRAIN                      =  11 ,
    SOUND_COLLISION_TYPE_SOLID_WOOD                 =  12 ,
    SOUND_COLLISION_TYPE_SOLID_METAL                =  13 ,
    SOUND_COLLISION_TYPE_SOLID_STONE                =  14 ,
    SOUND_COLLISION_TYPE_BRITTLE_STONE              =  15 ,
    SOUND_COLLISION_TYPE_FLINT_STONE                =  16 ,
    SOUND_COLLISION_TYPE_CHALK_STONE                =  17 ,
    SOUND_COLLISION_TYPE_HOLLOW_WOOD                =  18 ,
    SOUND_COLLISION_TYPE_HOLLOW_METAL               =  19 ,
    SOUND_COLLISION_TYPE_FUNGUS                     =  20 ,
    SOUND_COLLISION_TYPE_CART                       =  21 ,
    SOUND_COLLISION_TYPE_MUCK                       =  22 ,
    SOUND_COLLISION_TYPE_POTTERY                    =  23 ,
    SOUND_COLLISION_TYPE_FOOTBALL                   =  24 ,
    SOUND_COLLISION_TYPE_FURNITURE                  =  25 ,
    SOUND_COLLISION_TYPE_TOOLS                      =  26 ,
    SOUND_COLLISION_TYPE_GROUND                     =  27 ,
    SOUND_COLLISION_TYPE_PHYSICAL_SHIELD            =  28 ,
    SOUND_COLLISION_TYPE_WATER                      =  29 ,
    SOUND_COLLISION_TYPE_SPELL_BUBBLE               =  30 ,
    SOUND_COLLISION_TYPE_FRAGMENT                   =  31 ,
    SOUND_COLLISION_TYPE_SCAFFOLD                   =  32 ,
    SOUND_COLLISION_TYPE_SKITTLE                    =  33 ,
    SOUND_COLLISION_TYPE_LAST                       =  34 ,
};

//*****************************************************************************
// ENUM Values: SPECIAL_VILLAGER_INFO
//*****************************************************************************
enum     SPECIAL_VILLAGER_INFO
{
    SPECIAL_VILLAGER_INFO_LAST                      =  68 ,
};

//*****************************************************************************
// ENUM Values: TOOLTIPS_TYPE
//*****************************************************************************
enum     TOOLTIPS_TYPE
{
    TOOLTIPS_TYPE_NONE                              = -1 ,
    TOOLTIPS_TYPE_1                                 =  0 ,
    TOOLTIPS_TYPE_2                                 =  1 ,
    TOOLTIPS_TYPE_3                                 =  2 ,
    TOOLTIPS_TYPE_4                                 =  3 ,
    TOOLTIPS_TYPE_5                                 =  4 ,
    TOOLTIPS_TYPE_6                                 =  5 ,
    TOOLTIPS_TYPE_7                                 =  6 ,
    TOOLTIPS_TYPE_8                                 =  7 ,
    TOOLTIPS_TYPE_9                                 =  8 ,
    TOOLTIPS_TYPE_10                                =  9 ,
    TOOLTIPS_TYPE_11                                =  10 ,
    TOOLTIPS_TYPE_12                                =  11 ,
    TOOLTIPS_TYPE_13                                =  12 ,
    TOOLTIPS_TYPE_14                                =  13 ,
    TOOLTIPS_TYPE_15                                =  14 ,
    TOOLTIPS_TYPE_16                                =  15 ,
    TOOLTIPS_TYPE_17                                =  16 ,
    TOOLTIPS_TYPE_18                                =  17 ,
    TOOLTIPS_TYPE_19                                =  18 ,
    TOOLTIPS_TYPE_20                                =  19 ,
    TOOLTIPS_TYPE_21                                =  20 ,
    TOOLTIPS_TYPE_22                                =  21 ,
    TOOLTIPS_TYPE_23                                =  22 ,
    TOOLTIPS_TYPE_24                                =  23 ,
    TOOLTIPS_TYPE_25                                =  24 ,
    TOOLTIPS_TYPE_26                                =  25 ,
    TOOLTIPS_TYPE_27                                =  26 ,
    TOOLTIPS_TYPE_28                                =  27 ,
    TOOLTIPS_TYPE_29                                =  28 ,
    TOOLTIPS_TYPE_30                                =  29 ,
    TOOLTIPS_TYPE_31                                =  30 ,
    TOOLTIPS_TYPE_32                                =  31 ,
    TOOLTIPS_TYPE_33                                =  32 ,
    TOOLTIPS_TYPE_34                                =  33 ,
    TOOLTIPS_TYPE_35                                =  34 ,
    TOOLTIPS_TYPE_36                                =  35 ,
    TOOLTIPS_TYPE_37                                =  36 ,
    TOOLTIPS_TYPE_38                                =  37 ,
    TOOLTIPS_TYPE_39                                =  38 ,
    TOOLTIPS_TYPE_40                                =  39 ,
    TOOLTIPS_TYPE_41                                =  40 ,
    TOOLTIPS_TYPE_42                                =  41 ,
    TOOLTIPS_TYPE_43                                =  42 ,
    TOOLTIPS_TYPE_44                                =  43 ,
    TOOLTIPS_TYPE_45                                =  44 ,
    TOOLTIPS_TYPE_46                                =  45 ,
    TOOLTIPS_TYPE_47                                =  46 ,
    TOOLTIPS_TYPE_48                                =  47 ,
    TOOLTIPS_TYPE_49                                =  48 ,
    TOOLTIPS_TYPE_50                                =  49 ,
    TOOLTIPS_TYPE_51                                =  50 ,
    TOOLTIPS_TYPE_52                                =  51 ,
    TOOLTIPS_TYPE_53                                =  52 ,
    TOOLTIPS_TYPE_54                                =  53 ,
    TOOLTIPS_TYPE_55                                =  54 ,
    TOOLTIPS_TYPE_56                                =  55 ,
    TOOLTIPS_TYPE_57                                =  56 ,
    TOOLTIPS_TYPE_58                                =  57 ,
    TOOLTIPS_TYPE_59                                =  58 ,
    TOOLTIPS_TYPE_60                                =  59 ,
    TOOLTIPS_TYPE_61                                =  60 ,
    TOOLTIPS_TYPE_62                                =  61 ,
    TOOLTIPS_TYPE_63                                =  62 ,
    TOOLTIPS_TYPE_64                                =  63 ,
    TOOLTIPS_TYPE_65                                =  64 ,
    TOOLTIPS_TYPE_66                                =  65 ,
    TOOLTIPS_TYPE_67                                =  66 ,
    TOOLTIPS_TYPE_68                                =  67 ,
    TOOLTIPS_TYPE_69                                =  68 ,
    TOOLTIPS_TYPE_70                                =  69 ,
    TOOLTIPS_TYPE_71                                =  70 ,
    TOOLTIPS_TYPE_72                                =  71 ,
    TOOLTIPS_TYPE_73                                =  72 ,
    TOOLTIPS_TYPE_74                                =  73 ,
    TOOLTIPS_TYPE_75                                =  74 ,
    TOOLTIPS_TYPE_76                                =  75 ,
    TOOLTIPS_TYPE_77                                =  76 ,
    TOOLTIPS_TYPE_78                                =  77 ,
    TOOLTIPS_TYPE_79                                =  78 ,
    TOOLTIPS_TYPE_80                                =  79 ,
    TOOLTIPS_TYPE_81                                =  80 ,
    TOOLTIPS_TYPE_82                                =  81 ,
    TOOLTIPS_TYPE_83                                =  82 ,
    TOOLTIPS_TYPE_84                                =  83 ,
    TOOLTIPS_TYPE_85                                =  84 ,
    TOOLTIPS_TYPE_86                                =  85 ,
    TOOLTIPS_TYPE_87                                =  86 ,
    TOOLTIPS_TYPE_88                                =  87 ,
    TOOLTIPS_TYPE_89                                =  88 ,
    TOOLTIPS_TYPE_90                                =  89 ,
    TOOLTIPS_TYPE_91                                =  90 ,
    TOOLTIPS_TYPE_92                                =  91 ,
    TOOLTIPS_TYPE_93                                =  92 ,
    TOOLTIPS_TYPE_94                                =  93 ,
    TOOLTIPS_TYPE_95                                =  94 ,
    TOOLTIPS_TYPE_96                                =  95 ,
    TOOLTIPS_TYPE_97                                =  96 ,
    TOOLTIPS_TYPE_98                                =  97 ,
    TOOLTIPS_TYPE_99                                =  98 ,
    TOOLTIPS_TYPE_100                               =  99 ,
    TOOLTIPS_TYPE_101                               =  100 ,
    TOOLTIPS_TYPE_102                               =  101 ,
    TOOLTIPS_TYPE_103                               =  102 ,
    TOOLTIPS_TYPE_104                               =  103 ,
    TOOLTIPS_TYPE_105                               =  104 ,
    TOOLTIPS_TYPE_106                               =  105 ,
    TOOLTIPS_TYPE_107                               =  106 ,
    TOOLTIPS_TYPE_108                               =  107 ,
    TOOLTIPS_TYPE_109                               =  108 ,
    TOOLTIPS_TYPE_110                               =  109 ,
    TOOLTIPS_TYPE_111                               =  110 ,
    TOOLTIPS_TYPE_112                               =  111 ,
    TOOLTIPS_TYPE_113                               =  112 ,
    TOOLTIPS_TYPE_114                               =  113 ,
    TOOLTIPS_TYPE_115                               =  114 ,
    TOOLTIPS_TYPE_116                               =  115 ,
    TOOLTIPS_TYPE_117                               =  116 ,
    TOOLTIPS_TYPE_118                               =  117 ,
    TOOLTIPS_TYPE_119                               =  118 ,
    TOOLTIPS_TYPE_120                               =  119 ,
    TOOLTIPS_TYPE_121                               =  120 ,
    TOOLTIPS_TYPE_122                               =  121 ,
    TOOLTIPS_TYPE_123                               =  122 ,
    TOOLTIPS_TYPE_124                               =  123 ,
    TOOLTIPS_TYPE_125                               =  124 ,
    TOOLTIPS_TYPE_126                               =  125 ,
    TOOLTIPS_TYPE_127                               =  126 ,
    TOOLTIPS_TYPE_128                               =  127 ,
    TOOLTIPS_TYPE_129                               =  128 ,
    TOOLTIPS_TYPE_130                               =  129 ,
    TOOLTIPS_TYPE_131                               =  130 ,
    TOOLTIPS_TYPE_132                               =  131 ,
    TOOLTIPS_TYPE_133                               =  132 ,
    TOOLTIPS_TYPE_134                               =  133 ,
    TOOLTIPS_TYPE_135                               =  134 ,
    TOOLTIPS_TYPE_136                               =  135 ,
    TOOLTIPS_TYPE_137                               =  136 ,
    TOOLTIPS_TYPE_138                               =  137 ,
    TOOLTIPS_TYPE_139                               =  138 ,
    TOOLTIPS_TYPE_140                               =  139 ,
    TOOLTIPS_TYPE_141                               =  140 ,
    TOOLTIPS_TYPE_142                               =  141 ,
    TOOLTIPS_TYPE_143                               =  142 ,
    TOOLTIPS_TYPE_144                               =  143 ,
    TOOLTIPS_TYPE_145                               =  144 ,
    TOOLTIPS_TYPE_146                               =  145 ,
    TOOLTIPS_TYPE_147                               =  146 ,
    TOOLTIPS_TYPE_148                               =  147 ,
    TOOLTIPS_TYPE_149                               =  148 ,
    TOOLTIPS_TYPE_150                               =  149 ,
    TOOLTIPS_TYPE_151                               =  150 ,
    TOOLTIPS_TYPE_152                               =  151 ,
    TOOLTIPS_TYPE_153                               =  152 ,
    TOOLTIPS_TYPE_154                               =  153 ,
    TOOLTIPS_TYPE_155                               =  154 ,
    TOOLTIPS_TYPE_156                               =  155 ,
    TOOLTIPS_TYPE_157                               =  156 ,
    TOOLTIPS_TYPE_158                               =  157 ,
    TOOLTIPS_TYPE_159                               =  158 ,
    TOOLTIPS_TYPE_160                               =  159 ,
    TOOLTIPS_TYPE_161                               =  160 ,
    TOOLTIPS_TYPE_162                               =  161 ,
    TOOLTIPS_TYPE_163                               =  162 ,
    TOOLTIPS_TYPE_164                               =  163 ,
    TOOLTIPS_TYPE_165                               =  164 ,
    TOOLTIPS_TYPE_166                               =  165 ,
    TOOLTIPS_TYPE_167                               =  166 ,
    TOOLTIPS_TYPE_168                               =  167 ,
    TOOLTIPS_TYPE_169                               =  168 ,
    TOOLTIPS_TYPE_170                               =  169 ,
    TOOLTIPS_TYPE_LAST                              =  170 ,
};

//*****************************************************************************
// ENUM Values: CARRIED_TREE_TYPE
//*****************************************************************************
enum     CARRIED_TREE_TYPE
{
    CARRIED_TREE_TYPE_NONE                          =  0 ,
    CARRIED_TREE_TYPE_EVERGREEN                     =  1 ,
    CARRIED_TREE_TYPE_FRUIT                         =  2 ,
    CARRIED_TREE_TYPE_HARDWOOD                      =  3 ,
};

//*****************************************************************************
// ENUM Values: VILLAGER_DISCIPLE
//*****************************************************************************
enum     VILLAGER_DISCIPLE
{
    VILLAGER_DISCIPLE_NONE                          =  0 ,
    VILLAGER_DISCIPLE_FARMER                        =  1 ,
    VILLAGER_DISCIPLE_FORESTER                      =  2 ,
    VILLAGER_DISCIPLE_FISHERMAN                     =  3 ,
    VILLAGER_DISCIPLE_BUILDER                       =  4 ,
    VILLAGER_DISCIPLE_BREEDER                       =  5 ,
    VILLAGER_DISCIPLE_PROTECTION                    =  6 ,
    VILLAGER_DISCIPLE_MISSIONARY                    =  7 ,
    VILLAGER_DISCIPLE_CRAFTSMAN                     =  8 ,
    VILLAGER_DISCIPLE_TRADER                        =  9 ,
    VILLAGER_DISCIPLE_CHANGE_HOUSE                  =  10 ,
    VILLAGER_DISCIPLE_WORSHIP                       =  11 ,
    VILLAGER_DISCIPLE_FROM_VORTEX                   =  12 ,
    VILLAGER_DISCIPLE_LAST                          =  13 ,
};

//*****************************************************************************
// ENUM Values: HOLD_TYPE
//*****************************************************************************
enum     HOLD_TYPE
{
    HOLD_TYPE_NONE                                  =  0 ,
    HOLD_TYPE_ABOVE                                 =  1 ,
    HOLD_TYPE_MAGIC                                 =  2 ,
    HOLD_TYPE_GRAIN                                 =  3 ,
    HOLD_TYPE_FINGERS                               =  4 ,
    HOLD_TYPE_TREE                                  =  5 ,
    HOLD_TYPE_SIDE                                  =  6 ,
    HOLD_TYPE_VILLAGER                              =  7 ,
    HOLD_TYPE_LAST                                  =  8 ,
};

//*****************************************************************************
// ENUM Values: SCAFFOLD_INFO
//*****************************************************************************
enum     SCAFFOLD_INFO
{
    SCAFFOLD_INFO_NORMAL                            =  0 ,
    SCAFFOLD_INFO_LAST                              =  1 ,
};

//*****************************************************************************
// ENUM Values: HELP_SPRITES_GUIDANCE
//*****************************************************************************
enum     HELP_SPRITES_GUIDANCE
{
    HELP_SPRITES_GUIDANCE_FIRST                     =  0 ,
    HELP_SPRITES_GUIDANCE_TOWN_BEING_ATTACKED       =  0 ,
    HELP_SPRITES_GUIDANCE_CREATURE_BEING_ATTACKED   =  1 ,
    HELP_SPRITES_GUIDANCE_CREATURE_ATTACKING_THEM   =  2 ,
    HELP_SPRITES_GUIDANCE_LOSING_VILLAGERS          =  3 ,
    HELP_SPRITES_GUIDANCE_ATTACKING_TOWN            =  4 ,
    HELP_SPRITES_GUIDANCE_LOW_ON_FOOD               =  5 ,
    HELP_SPRITES_GUIDANCE_LOW_ON_WOOD               =  6 ,
    HELP_SPRITES_GUIDANCE_INJURED_PEOPLE            =  7 ,
    HELP_SPRITES_GUIDANCE_LOW_ON_PEOPLE             =  8 ,
    HELP_SPRITES_GUIDANCE_VILLAGERS_UNHAPPY         =  9 ,
    HELP_SPRITES_GUIDANCE_LOSING_BELIEF             =  10 ,
    HELP_SPRITES_GUIDANCE_OTHER_VILLAGES            =  11 ,
    HELP_SPRITES_GUIDANCE_CREATURE_FIGHT            =  12 ,
    HELP_SPRITES_GUIDANCE_GENERAL_BAD               =  13 ,
    HELP_SPRITES_GUIDANCE_GENERAL_GOOD              =  14 ,
    HELP_SPRITES_GUIDANCE_KILLING_PEOPLE            =  15 ,
    HELP_SPRITES_GUIDANCE_GOOD_BEING_EVIL           =  16 ,
    HELP_SPRITES_GUIDANCE_EVIL_BEING_GOOD           =  17 ,
    HELP_SPRITES_GUIDANCE_WORSHIPPERS_DYING         =  18 ,
    HELP_SPRITES_GUIDANCE_VERY_GOOD                 =  19 ,
    HELP_SPRITES_GUIDANCE_VERY_EVIL                 =  20 ,
    HELP_SPRITES_GUIDANCE_DESTROY_BUILDING          =  21 ,
    HELP_SPRITES_GUIDANCE_LAST                      =  22 ,
};

//*****************************************************************************
// ENUM Values: DYK_CATEGORY
//*****************************************************************************
enum     DYK_CATEGORY
{
    DYK_NAVIGATION                                  =  0 ,
    DYK_CREATURE                                    =  1 ,
    DYK_VILLAGE_LIFE                                =  2 ,
    DYK_MIRACLES                                    =  3 ,
    DYK_MISC                                        =  4 ,
    DYK_LAST                                        =  5 ,
};

//*****************************************************************************
// ENUM Values: DEATH_REASON
//*****************************************************************************
enum     DEATH_REASON
{
    DEATH_REASON_NONE                               =  0 ,
    DEATH_REASON_STARVING                           =  1 ,
    DEATH_REASON_SPELL                              =  2 ,
    DEATH_REASON_ANIMAL                             =  3 ,
    DEATH_REASON_CHANT                              =  4 ,
    DEATH_REASON_PLAYER_INTERACTION                 =  5 ,
    DEATH_REASON_PLAYER_INTERACTION_DROWN           =  6 ,
    DEATH_REASON_SACRIFICE                          =  7 ,
    DEATH_REASON_EXHAUSTION                         =  8 ,
    DEATH_REASON_OLD_AGE                            =  9 ,
    DEATH_REASON_LAST                               =  10 ,
};

//*****************************************************************************
// ENUM Values: IMMERSION_EFFECT_TYPE
//*****************************************************************************
enum     IMMERSION_EFFECT_TYPE
{
    IMMERSION_EFFECT_TYPE_NONE                      = -1 ,
    IMMERSION_EFFECT_TYPE_FIRST                     =  0 ,
    IMMERSION_EFFECT_TYPE_FUR                       =  0 ,
    IMMERSION_EFFECT_TYPE_SLAP                      =  1 ,
    IMMERSION_EFFECT_TYPE_HIT                       =  2 ,
    IMMERSION_EFFECT_TYPE_GESTURE_SUCCESS           =  3 ,
    IMMERSION_EFFECT_TYPE_GRIP_FORCE                =  4 ,
    IMMERSION_EFFECT_TYPE_UPROOT                    =  5 ,
    IMMERSION_EFFECT_TYPE_HAND_HIT_INFLUENCE        =  6 ,
    IMMERSION_EFFECT_TYPE_LEASH_PULL                =  7 ,
    IMMERSION_EFFECT_TYPE_GESTURE_TRAIL             =  8 ,
    IMMERSION_EFFECT_TYPE_SPELL_CRACKLE             =  9 ,
    IMMERSION_EFFECT_TYPE_MISC_HEART                =  10 ,
    IMMERSION_EFFECT_TYPE_SPRINKLE_FOOD             =  11 ,
    IMMERSION_EFFECT_TYPE_SPRINKLE_WOOD             =  12 ,
    IMMERSION_EFFECT_TYPE_BURNING                   =  13 ,
    IMMERSION_EFFECT_TYPE_ONE_SHOT_SPELL_POP        =  14 ,
    IMMERSION_EFFECT_TYPE_HEAVY                     =  15 ,
    IMMERSION_EFFECT_TYPE_TRADEMARK                 =  16 ,
    IMMERSION_EFFECT_TYPE_MUSHROOM_CHALLENGE        =  17 ,
    IMMERSION_EFFECT_TYPE_FIREBALL_L1               =  18 ,
    IMMERSION_EFFECT_TYPE_FIREBALL_L2               =  19 ,
    IMMERSION_EFFECT_TYPE_FIREBALL_L3               =  20 ,
    IMMERSION_EFFECT_TYPE_LIGHTNING_BOLT            =  21 ,
    IMMERSION_EFFECT_TYPE_ANIMATING_IN_HAND         =  22 ,
    IMMERSION_EFFECT_TYPE_GENERAL_SPELL_CAST        =  23 ,
    IMMERSION_EFFECT_TYPE_SHIELD                    =  24 ,
    IMMERSION_EFFECT_TYPE_SPRINKLE_WATER            =  25 ,
    IMMERSION_EFFECT_TYPE_FLOCK_FLYING              =  26 ,
    IMMERSION_EFFECT_TYPE_FLOCK_ON_GROUND           =  27 ,
    IMMERSION_EFFECT_TYPE_CREATURE_SPELL            =  28 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_SPELL           =  29 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_GENERAL         =  30 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_STRAW           =  31 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_SMOOTH          =  32 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_WOOD            =  33 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_CANVAS          =  34 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_CHALLENGE_SCROLL=  35 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_STORY_SCROLL    =  36 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_FOLIAGE         =  37 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_CREED           =  38 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_SINGING_STONES  =  39 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_VORTEX          =  40 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_CITADEL         =  41 ,
    IMMERSION_EFFECT_TYPE_HIT_EXCLUSION             =  42 ,
    IMMERSION_EFFECT_TYPE_MOVING_FISH               =  43 ,
    IMMERSION_EFFECT_TYPE_COMMAND_SUCCESS           =  44 ,
    IMMERSION_EFFECT_TYPE_HANOI                     =  45 ,
    IMMERSION_EFFECT_TYPE_PLANT_OBJECT              =  46 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_TELEPORT        =  47 ,
    IMMERSION_EFFECT_TYPE_HAND_OVER_SPECIAL_CROPS   =  48 ,
    IMMERSION_EFFECT_TYPE_CANNON_FIRE               =  49 ,
    IMMERSION_EFFECT_TYPE_LAST                      =  50 ,
};

//*****************************************************************************
// ENUM Values: GUIDANCE_ALIGNMENT
//*****************************************************************************
enum     GUIDANCE_ALIGNMENT
{
    GUIDANCE_ALIGNMENT_NONE                         =  0 ,
    GUIDANCE_ALIGNMENT_GOOD                         =  1 ,
    GUIDANCE_ALIGNMENT_EVIL                         =  2 ,
};

//*****************************************************************************
// ENUM Values: LOADER_VERSIONS
//*****************************************************************************
enum     LOADER_VERSIONS
{
    LOADER_VERSIONS_MAIN                            =  0 ,
    LOADER_VERSIONS_PATCH1                          =  1 ,
    LOADER_VERSIONS_ADDON1                          =  2 ,
    LOADER_VERSIONS_LAST                            =  3 ,
};

#endif
