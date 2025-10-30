#ifndef BW1_DECOMP_GAME_THING_INCLUDED_H
#define BW1_DECOMP_GAME_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base, struct BaseVftable */

// Forward Declares

struct Abode;
struct Creature;
struct GFootpath;
struct GFootpathLink;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct Living;
struct MapCoords;
struct MultiMapFixed;
struct PSysProcessInfo;
struct Spell;
struct SpellIcon;
struct SpellSeed;
struct Town;
struct Tree;
struct Villager;

enum GAME_THING_TYPE
{
  GAME_THING_TYPE_UNUSED_000 = 0x0,
  GAME_THING_TYPE_GFOOTPATH = 0x1,
  GAME_THING_TYPE_GFOOTPATH_LINK = 0x2,
  GAME_THING_TYPE_GFOOTPATH_NODE = 0x3,
  GAME_THING_TYPE_GFOOTPATH_LINK_SAVE = 0x4,
  GAME_THING_TYPE_GFOOTPATH_FINDER = 0x5,
  GAME_THING_TYPE_VILLAGER = 0x6,
  GAME_THING_TYPE_ABODE = 0x7,
  GAME_THING_TYPE_STORAGE_PIT = 0x8,
  GAME_THING_TYPE_SPELL = 0x9,
  GAME_THING_TYPE_SPELL_RESOURCE = 0xa,
  GAME_THING_TYPE_SPELL_WATER = 0xb,
  GAME_THING_TYPE_SPELL_FLOCK = 0xc,
  GAME_THING_TYPE_SPELL_FLOCK_FLYING = 0xd,
  GAME_THING_TYPE_SPELL_FLOCK_GROUND = 0xe,
  GAME_THING_TYPE_SPELL_FOREST = 0xf,
  GAME_THING_TYPE_SPELL_STORM_AND_TORNADO = 0x10,
  GAME_THING_TYPE_SPELL_SHIELD = 0x11,
  GAME_THING_TYPE_SPELL_HEAL = 0x12,
  GAME_THING_TYPE_SPELL_CREATURE = 0x13,
  GAME_THING_TYPE_SPELL_WITH_OBJECTS = 0x14,
  GAME_THING_TYPE_SPELL_TELEPORT = 0x15,
  GAME_THING_TYPE_PSYS_SOUND = 0x16,
  GAME_THING_TYPE_PHYSICAL_SHIELD = 0x17,
  GAME_THING_TYPE_MAGIC_SHIELD = 0x18,
  GAME_THING_TYPE_MAGIC_TELEPORT = 0x19,
  GAME_THING_TYPE_LANDSCAPE_VORTEX_VOLC = 0x1a,
  GAME_THING_TYPE_LANDSCAPE_VORTEX_IN = 0x1b,
  GAME_THING_TYPE_LANDSCAPE_VORTEX_OUT = 0x1c,
  GAME_THING_TYPE_MAGIC_TREE = 0x1d,
  GAME_THING_TYPE_MAGIC_FOOD = 0x1e,
  GAME_THING_TYPE_MAGIC_WOOD = 0x1f,
  GAME_THING_TYPE_MAGIC_FIREBALL = 0x20,
  GAME_THING_TYPE_MAGIC_WOOD_OLD = 0x21,
  GAME_THING_TYPE_HELP_ORB_HOLDER_OLD = 0x22,
  GAME_THING_TYPE_SPELL_SEED_GRAPHIC = 0x23,
  GAME_THING_TYPE_SPELL_SEED = 0x24,
  GAME_THING_TYPE_ONE_OFF_SPELL_SEED = 0x25,
  GAME_THING_TYPE_REACTION = 0x26,
  GAME_THING_TYPE_DANCE = 0x27,
  GAME_THING_TYPE_TOWN = 0x28,
  GAME_THING_TYPE_FIRE_EFFECT = 0x29,
  GAME_THING_TYPE_FIREFLY = 0x2a,
  GAME_THING_TYPE_TOTEM = 0x2b,
  GAME_THING_TYPE_PUZZLE_GAME = 0x2c,
  GAME_THING_TYPE_PUZZLE_SHEEP = 0x2d,
  GAME_THING_TYPE_PUZZLE_LION = 0x2e,
  GAME_THING_TYPE_PUZZLE_VILLAGER = 0x2f,
  GAME_THING_TYPE_HANOI_BLOCK = 0x30,
  GAME_THING_TYPE_PUZZLE_TOTEM = 0x31,
  GAME_THING_TYPE_FIELD = 0x32,
  GAME_THING_TYPE_FIELD_CONTENTS = 0x33,
  GAME_THING_TYPE_FIELD_CONTENTS_ROW = 0x34,
  GAME_THING_TYPE_CITADEL = 0x35,
  GAME_THING_TYPE_CITADEL_PART = 0x36,
  GAME_THING_TYPE_PLANNED_CITADEL_PART = 0x37,
  GAME_THING_TYPE_PLANNED_MULTI_MAP_FIXED = 0x38,
  GAME_THING_TYPE_PLANNED_TOWN_CITADEL_HEART = 0x39,
  GAME_THING_TYPE_CITADEL_HEART_1 = 0x3a,
  GAME_THING_TYPE_CITADEL_HEART_2 = 0x3b,
  GAME_THING_TYPE_WORSHIP_SITE = 0x3c,
  GAME_THING_TYPE_SHOW_NEEDS_VISUALS = 0x3d,
  GAME_THING_TYPE_SHOW_NEEDS = 0x3e,
  GAME_THING_TYPE_SCRIPT_HIGHLIGHT = 0x3f,
  GAME_THING_TYPE_GWATERFALL = 0x40,
  GAME_THING_TYPE_GARENA = 0x41,
  GAME_THING_TYPE_ARENA_SPELL_ICON = 0x42,
  GAME_THING_TYPE_WEATHER_THING = 0x43,
  GAME_THING_TYPE_BALL = 0x44,
  GAME_THING_TYPE_FOOTBALL = 0x45,
  GAME_THING_TYPE_REWARD = 0x46,
  GAME_THING_TYPE_GSTREAM = 0x47,
  GAME_THING_TYPE_MIST = 0x48,
  GAME_THING_TYPE_INFLUENCE_RING = 0x49,
  GAME_THING_TYPE_UNUSED_04A = 0x4a,
  GAME_THING_TYPE_UNUSED_04B = 0x4b,
  GAME_THING_TYPE_TOWN_DESIRE_FLAGS = 0x4c,
  GAME_THING_TYPE_BIG_FOREST = 0x4d,
  GAME_THING_TYPE_FOREST = 0x4e,
  GAME_THING_TYPE_TREE = 0x4f,
  GAME_THING_TYPE_CRECHE = 0x50,
  GAME_THING_TYPE_GRAVEYARD = 0x51,
  GAME_THING_TYPE_WORKSHIP = 0x52,
  GAME_THING_TYPE_MOBILE_OBJECT = 0x53,
  GAME_THING_TYPE_MOBILE_STATIC = 0x54,
  GAME_THING_TYPE_TOWN_SPELL_ICON = 0x55,
  GAME_THING_TYPE_TOWN_CENTRE_SPELL_ICON = 0x56,
  GAME_THING_TYPE_REWARD_SPELL_ICON_OLD = 0x57,
  GAME_THING_TYPE_POT = 0x58,
  GAME_THING_TYPE_PILE_FOOD = 0x59,
  GAME_THING_TYPE_PILE_WOOD = 0x5a,
  GAME_THING_TYPE_PILE_FISH_FARM = 0x5b,
  GAME_THING_TYPE_STANDARD_BUILDING_SITE = 0x5c,
  GAME_THING_TYPE_CITADEL_BUILDING_SITE = 0x5d,
  GAME_THING_TYPE_WORKSHOP_BUILDING_SITE = 0x5e,
  GAME_THING_TYPE_SCAFFOLD = 0x5f,
  GAME_THING_TYPE_TOWN_CENTRE = 0x60,
  GAME_THING_TYPE_PLANNED_ABODE = 0x61,
  GAME_THING_TYPE_PLANNED_TOWN_CENTRE = 0x62,
  GAME_THING_TYPE_GPLAYER = 0x63,
  GAME_THING_TYPE_GPLAYER_INTERFACE = 0x64,
  GAME_THING_TYPE_GPLAYER_INTERFACE_STATUS = 0x65,
  GAME_THING_TYPE_GCOMPUTER_PLAYER = 0x66,
  GAME_THING_TYPE_GCOMPUTER_SEEN = 0x67,
  GAME_THING_TYPE_GCOMPUTER_SPELL_CAST = 0x68,
  GAME_THING_TYPE_CREATURE = 0x69,
  GAME_THING_TYPE_GGAME = 0x6a,
  GAME_THING_TYPE_POO = 0x6b,
  GAME_THING_TYPE_FIELD_CROP = 0x6c,
  GAME_THING_TYPE_CREED = 0x6d,
  GAME_THING_TYPE_GPARTICLE_CONTAINER = 0x6e,
  GAME_THING_TYPE_ROCK = 0x6f,
  GAME_THING_TYPE_DEAD_TREE = 0x70,
  GAME_THING_TYPE_FELLED_TREE = 0x71,
  GAME_THING_TYPE_BONFIRE = 0x72,
  GAME_THING_TYPE_PLANNED_FEATURE = 0x73,
  GAME_THING_TYPE_FEATURE = 0x74,
  GAME_THING_TYPE_ANIMATED_STATIC = 0x75,
  GAME_THING_TYPE_SPECIAL_VILLAGER = 0x76,
  GAME_THING_TYPE_GCAMERA = 0x77,
  GAME_THING_TYPE_WORSHIP_SPELL_ICON = 0x78,
  GAME_THING_TYPE_DANCE_KEY_ACTION = 0x79,
  GAME_THING_TYPE_DANCE_KEY_FRAME = 0x7a,
  GAME_THING_TYPE_DANCE_GROUP = 0x7b,
  GAME_THING_TYPE_SCRIPT_MARKER = 0x7c,
  GAME_THING_TYPE_SCRIPT_TIMER = 0x7d,
  GAME_THING_TYPE_FLOCK = 0x7e,
  GAME_THING_TYPE_TOTEM_STATUE = 0x7f,
  GAME_THING_TYPE_WONDER = 0x80,
  GAME_THING_TYPE_UNUSED_081 = 0x81,
  GAME_THING_TYPE_COW = 0x82,
  GAME_THING_TYPE_SHEEP = 0x83,
  GAME_THING_TYPE_GOAT = 0x84,
  GAME_THING_TYPE_HORSE = 0x85,
  GAME_THING_TYPE_ZEBRA = 0x86,
  GAME_THING_TYPE_PIG = 0x87,
  GAME_THING_TYPE_TORTOISE = 0x88,
  GAME_THING_TYPE_LION = 0x89,
  GAME_THING_TYPE_LEOPARD = 0x8a,
  GAME_THING_TYPE_TIGER = 0x8b,
  GAME_THING_TYPE_WOLF = 0x8c,
  GAME_THING_TYPE_SPELL_WOLF = 0x8d,
  GAME_THING_TYPE_DOVE = 0x8e,
  GAME_THING_TYPE_CROW = 0x8f,
  GAME_THING_TYPE_SPELL_DOVE = 0x90,
  GAME_THING_TYPE_SWALLOW = 0x91,
  GAME_THING_TYPE_PIGEON = 0x92,
  GAME_THING_TYPE_SEAGULL = 0x93,
  GAME_THING_TYPE_BAT = 0x94,
  GAME_THING_TYPE_SPELL_BAT = 0x95,
  GAME_THING_TYPE_VULTURE = 0x96,
  GAME_THING_TYPE_WHALE = 0x97,
  GAME_THING_TYPE_WORSHIP_TOTEM = 0x98,
  GAME_THING_TYPE_DATA_PATH = 0x99,
  GAME_THING_TYPE_PIECE_LION = 0x9a,
  GAME_THING_TYPE_PIECE_SHEEP = 0x9b,
  GAME_THING_TYPE_PIECE_WOLF = 0x9c,
  GAME_THING_TYPE_PIECE_VILLAGER = 0x9d,
  GAME_THING_TYPE_MISSIONARY_CONTROL = 0x9e,
  GAME_THING_TYPE_GAME_STATS = 0x9f,
  GAME_THING_TYPE_UNUSED_0A0 = 0xa0,
  GAME_THING_TYPE_WAYPOINT = 0xa1,
  GAME_THING_TYPE_ATOM_CORE = 0xa2,
  GAME_THING_TYPE_ATOM_COLLECTION = 0xa3,
  GAME_THING_TYPE_PSYS_MANAGER = 0xa4,
  GAME_THING_TYPE_GJPSYS_INTERFACE = 0xa5,
  GAME_THING_TYPE_DRAW_OFFSET_LT = 0xa6,
  GAME_THING_TYPE_DRAW_OFFSET_DECAY = 0xa7,
  GAME_THING_TYPE_PARTICLE_3D_PNT = 0xa8,
  GAME_THING_TYPE_PARTICLE_3D_OBJ = 0xa9,
  GAME_THING_TYPE_PARTICLE_LIGHT_MAP = 0xaa,
  GAME_THING_TYPE_RENDER_PARTICLE_MIST = 0xab,
  GAME_THING_TYPE_PARTICLE_3D_ANIM = 0xac,
  GAME_THING_TYPE_PARTICLE_3D_ANIM_WITH_CAMERA = 0xad,
  GAME_THING_TYPE_PARTICLE_3D_OBJ_ANIM_TEXTURED = 0xae,
  GAME_THING_TYPE_RENDER_PARTICLE_CREATURE_REF = 0xaf,
  GAME_THING_TYPE_RENDER_PARTICLE_GAME_OBJECT_REF = 0xb0,
  GAME_THING_TYPE_RENDER_PARTICLE_GOLDEN_SHOWER = 0xb1,
  GAME_THING_TYPE_RENDER_PARTICLE_GAME_OBJECT = 0xb2,
  GAME_THING_TYPE_RENDER_PARTICLE_CHAIN_JOINT = 0xb3,
  GAME_THING_TYPE_RENDER_PARTICLE_3D_SPRITE = 0xb4,
  GAME_THING_TYPE_RENDER_PARTICLE_PLAYER_SYMBOL = 0xb5,
  GAME_THING_TYPE_CHAIN = 0xb6,
  GAME_THING_TYPE_DEFENSIVE_SPHERE = 0xb7,
  GAME_THING_TYPE_SPELL_POINT_INF = 0xb8,
  GAME_THING_TYPE_UR_SIMPLE_BEAM_SUB_COLLECTION_DATA = 0xb9,
  GAME_THING_TYPE_UR_PLASMA_INF = 0xba,
  GAME_THING_TYPE_UR_VOL_FX_ON_OBJECT_ATOM_DATA = 0xbb,
  GAME_THING_TYPE_UR_PLASMA_SUB_COLLECTION_DATA = 0xbc,
  GAME_THING_TYPE_UR_PLASMA_ATOM_DATA = 0xbd,
  GAME_THING_TYPE_UR_BELIEF_SPRITE_ATOM_DATA = 0xbe,
  GAME_THING_TYPE_UR_SIMPLE_BEAM_ATOM_DATA = 0xbf,
  GAME_THING_TYPE_UR_MANA_PATH_NEW_ATOM_DATA = 0xc0,
  GAME_THING_TYPE_UR_CREATURE_SPELL_GENERIC_COLLECTION_DATA = 0xc1,
  GAME_THING_TYPE_UR_CREATURE_SPELL_GENERIC_ATOM_DATA = 0xc2,
  GAME_THING_TYPE_UR_ORIENT_SPRITE_WITH_VELOCITY_ATOM_DATA = 0xc3,
  GAME_THING_TYPE_UR_ATOMS_AT_EP_TARGET_COLLECTION_DATA = 0xc4,
  GAME_THING_TYPE_UR_CREATURE_SPELL_COMPASSION_COLLECTION_DATA = 0xc5,
  GAME_THING_TYPE_UR_CREATURE_SPELL_COLLECTION_DATA = 0xc6,
  GAME_THING_TYPE_UR_CREATURE_SPELL_ITCH_COLLECTION_DATA = 0xc7,
  GAME_THING_TYPE_UR_CREATURE_SPELL_FREEZE_COLLECTION_DATA = 0xc8,
  GAME_THING_TYPE_UR_VORTEX_ATTRACT_ATOM_DATA = 0xc9,
  GAME_THING_TYPE_VORTEX_OBJECT_INFO = 0xca,
  GAME_THING_TYPE_UR_SPHERE_SURFACE_TRACER_ATOM_DATA = 0xcb,
  GAME_THING_TYPE_CHECK_SHIELD_DEFLECTIONS_ATOM_DATA = 0xcc,
  GAME_THING_TYPE_UR_FOREST_PATH_ATOM_DATA = 0xcd,
  GAME_THING_TYPE_UR_EXPLOSION_ATOM_DATA = 0xce,
  GAME_THING_TYPE_UR_EXPLOSION_COLLECTION_DATA = 0xcf,
  GAME_THING_TYPE_UR_FLOCKING_COLLECTION_DATA = 0xd0,
  GAME_THING_TYPE_UR_CLOUD_MOVER_NEW_COLLECTION_DATA = 0xd1,
  GAME_THING_TYPE_UR_CLOUD_GATHER_COLLECTION_DATA = 0xd2,
  GAME_THING_TYPE_UR_CLOUD_GATHER_ATOM_DATA = 0xd3,
  GAME_THING_TYPE_UR_TORNADO_FLYING_ATOM_DATA = 0xd4,
  GAME_THING_TYPE_UR_TORNADO_DEBRIS_COLLECTION_DATA = 0xd5,
  GAME_THING_TYPE_UR_TORNADO_FLYING_COLLECTION_DATA = 0xd6,
  GAME_THING_TYPE_UR_TORNADO_COLLECTION_DATA = 0xd7,
  GAME_THING_TYPE_UR_LIGHTNING_COLLECTION_DATA = 0xd8,
  GAME_THING_TYPE_EMITTER_RULE_LIGHTNING_SPRITE_COLLECTION_DATA = 0xd9,
  GAME_THING_TYPE_AR_FADE_OUT_ONCE_CONDITION_TRUE_ATOM_DATA = 0xda,
  GAME_THING_TYPE_ATTATCH_FIREBALL_TO_ATOM_ATOM_DATA = 0xdb,
  GAME_THING_TYPE_ADD_SOUND_TO_ATOM_ATOM_DATA = 0xdc,
  GAME_THING_TYPE_REMOVE_SOUND_FROM_ATOM_ATOM_DATA = 0xdd,
  GAME_THING_TYPE_UPDATE_RULE_GRAVITY_WITH_FLOOR_ATOM_DATA_RIPPLE = 0xde,
  GAME_THING_TYPE_UR_BANKED_TURNING_ATOM_DATA = 0xdf,
  GAME_THING_TYPE_UPDATE_RULE_SHIELD_SPARK_ATOM_DATA = 0xe0,
  GAME_THING_TYPE_UR_VAPOUR_END_EFFECT_ATOM_DATA = 0xe1,
  GAME_THING_TYPE_ADD_SUB_COLLECTIONS_TO_ATOM_ATOM_DATA = 0xe2,
  GAME_THING_TYPE_CREATE_NEW_BASE_ATOM_ATOM_DATA = 0xe3,
  GAME_THING_TYPE_ER_GLINTS_ON_TARGET_PARENT_ATOM_DATA = 0xe4,
  GAME_THING_TYPE_ER_GLINTS_ON_TARGET_ATOM_DATA = 0xe5,
  GAME_THING_TYPE_UR_ORIENT_SPRITE_WITH_RANDOM_ANGLE_ATOM_DATA = 0xe6,
  GAME_THING_TYPE_UR_SIDE_SPIN_ATOM_DATA = 0xe7,
  GAME_THING_TYPE_UR_INITIAL_SPIN_ATOM_DATA = 0xe8,
  GAME_THING_TYPE_REMOVE_RULE_AFTER_CONDITION_TRUE_ATOM_DATA = 0xe9,
  GAME_THING_TYPE_UR_ORIENT_WITH_VELOCITY_ATOM_DATA = 0xea,
  GAME_THING_TYPE_UR_FOLLOW_TARGETS_ATOM_DATA = 0xeb,
  GAME_THING_TYPE_UR_ADD_DEFENSIVE_SPHERE_COLLECTION_DATA = 0xec,
  GAME_THING_TYPE_EMITTER_RULE_COLLECTION_DATA = 0xed,
  GAME_THING_TYPE_UR_WILLOW_WISP_COLLECTION_DATA = 0xee,
  GAME_THING_TYPE_UR_BURST_FROM_PARENT_ATOM_COLLECTION_DATA = 0xef,
  GAME_THING_TYPE_ER_EMIT_FROM_PARENT_ATOM_COLLECTION_DATA = 0xf0,
  GAME_THING_TYPE_UR_FOLLOW_TARGETS_COLLECTION_DATA = 0xf1,
  GAME_THING_TYPE_UR_HEAL_SPELL_CHAKRA_ATOM_DATA = 0xf2,
  GAME_THING_TYPE_UR_TRAIL_COLLECTION_DATA = 0xf3,
  GAME_THING_TYPE_LIGHTNING_FORK_FLICKER_COLLECTION_DATA = 0xf4,
  GAME_THING_TYPE_UR_HAND_SPRINKLE_COLLECTION_DATA = 0xf5,
  GAME_THING_TYPE_GBASE_ONLY = 0xf6,
  GAME_THING_TYPE_FRAGMENT = 0xf7,
  GAME_THING_TYPE_WINDMILL = 0xf8,
  GAME_THING_TYPE_PLAYER_ACTION_STATE = 0xf9,
  GAME_THING_TYPE_PLAYER_SUB_ACTION = 0xfa,
  GAME_THING_TYPE_PLAYER_SUB_ACTION_ARGUMENT = 0xfb,
  GAME_THING_TYPE_GCLIMATE = 0xfc,
  GAME_THING_TYPE_GMAGIC_HAND_1 = 0xfd,
  GAME_THING_TYPE_GSTREET_LANTERN = 0xfe,
  GAME_THING_TYPE_GSTREET_LIGHT = 0xff,
  GAME_THING_TYPE_UNUSED_100 = 0x100,
  GAME_THING_TYPE_GMAGIC_HAND_2 = 0x101,
  GAME_THING_TYPE_GVIRTUAL_INFLUENCE = 0x102,
  GAME_THING_TYPE_TOWN_ARTIFACT = 0x103,
  GAME_THING_TYPE_UNUSED_104 = 0x104,
  GAME_THING_TYPE_DATA_FOR_SCRIPT_REMIND = 0x105,
  GAME_THING_TYPE_VORTEX_SAVE = 0x106,
  GAME_THING_TYPE_PUZZLE_GRAIN = 0x107,
  GAME_THING_TYPE_PUZZLE_MOBILE_OBJECT = 0x108,
  GAME_THING_TYPE_THING_MUSIC_INFO = 0x109,
  GAME_THING_TYPE_FLOWERS = 0x10a,
  GAME_THING_TYPE_SPELL_DISPENSER = 0x10b,
  GAME_THING_TYPE_GCOMPUTER_PLAYER_QUEUE = 0x10c,
  GAME_THING_TYPE_GCOMPUTER_ATTITUDE_TO_PLAYER = 0x10d,
  GAME_THING_TYPE_UR_LIGHT_SHEET_ON_OBJECT_ATOM_DATA = 0x10e,
  GAME_THING_TYPE_UR_LIGHT_SHEET_ON_OBJECT_COLLECTION_DATA = 0x10f,
  GAME_THING_TYPE_CITADEL_ENTRANCE = 0x110,
  _GAME_THING_TYPE_COUNT = 0x111
};
static_assert(sizeof(enum GAME_THING_TYPE) == 0x4, "Data type is of wrong size");

static const char* GAME_THING_TYPE_strs[_GAME_THING_TYPE_COUNT] = {
  "GAME_THING_TYPE_UNUSED_000",
  "GAME_THING_TYPE_GFOOTPATH",
  "GAME_THING_TYPE_GFOOTPATH_LINK",
  "GAME_THING_TYPE_GFOOTPATH_NODE",
  "GAME_THING_TYPE_GFOOTPATH_LINK_SAVE",
  "GAME_THING_TYPE_GFOOTPATH_FINDER",
  "GAME_THING_TYPE_VILLAGER",
  "GAME_THING_TYPE_ABODE",
  "GAME_THING_TYPE_STORAGE_PIT",
  "GAME_THING_TYPE_SPELL",
  "GAME_THING_TYPE_SPELL_RESOURCE",
  "GAME_THING_TYPE_SPELL_WATER",
  "GAME_THING_TYPE_SPELL_FLOCK",
  "GAME_THING_TYPE_SPELL_FLOCK_FLYING",
  "GAME_THING_TYPE_SPELL_FLOCK_GROUND",
  "GAME_THING_TYPE_SPELL_FOREST",
  "GAME_THING_TYPE_SPELL_STORM_AND_TORNADO",
  "GAME_THING_TYPE_SPELL_SHIELD",
  "GAME_THING_TYPE_SPELL_HEAL",
  "GAME_THING_TYPE_SPELL_CREATURE",
  "GAME_THING_TYPE_SPELL_WITH_OBJECTS",
  "GAME_THING_TYPE_SPELL_TELEPORT",
  "GAME_THING_TYPE_PSYS_SOUND",
  "GAME_THING_TYPE_PHYSICAL_SHIELD",
  "GAME_THING_TYPE_MAGIC_SHIELD",
  "GAME_THING_TYPE_MAGIC_TELEPORT",
  "GAME_THING_TYPE_LANDSCAPE_VORTEX_VOLC",
  "GAME_THING_TYPE_LANDSCAPE_VORTEX_IN",
  "GAME_THING_TYPE_LANDSCAPE_VORTEX_OUT",
  "GAME_THING_TYPE_MAGIC_TREE",
  "GAME_THING_TYPE_MAGIC_FOOD",
  "GAME_THING_TYPE_MAGIC_WOOD",
  "GAME_THING_TYPE_MAGIC_FIREBALL",
  "GAME_THING_TYPE_MAGIC_WOOD_OLD",
  "GAME_THING_TYPE_HELP_ORB_HOLDER_OLD",
  "GAME_THING_TYPE_SPELL_SEED_GRAPHIC",
  "GAME_THING_TYPE_SPELL_SEED",
  "GAME_THING_TYPE_ONE_OFF_SPELL_SEED",
  "GAME_THING_TYPE_REACTION",
  "GAME_THING_TYPE_DANCE",
  "GAME_THING_TYPE_TOWN",
  "GAME_THING_TYPE_FIRE_EFFECT",
  "GAME_THING_TYPE_FIREFLY",
  "GAME_THING_TYPE_TOTEM",
  "GAME_THING_TYPE_PUZZLE_GAME",
  "GAME_THING_TYPE_PUZZLE_SHEEP",
  "GAME_THING_TYPE_PUZZLE_LION",
  "GAME_THING_TYPE_PUZZLE_VILLAGER",
  "GAME_THING_TYPE_HANOI_BLOCK",
  "GAME_THING_TYPE_PUZZLE_TOTEM",
  "GAME_THING_TYPE_FIELD",
  "GAME_THING_TYPE_FIELD_CONTENTS",
  "GAME_THING_TYPE_FIELD_CONTENTS_ROW",
  "GAME_THING_TYPE_CITADEL",
  "GAME_THING_TYPE_CITADEL_PART",
  "GAME_THING_TYPE_PLANNED_CITADEL_PART",
  "GAME_THING_TYPE_PLANNED_MULTI_MAP_FIXED",
  "GAME_THING_TYPE_PLANNED_TOWN_CITADEL_HEART",
  "GAME_THING_TYPE_CITADEL_HEART_1",
  "GAME_THING_TYPE_CITADEL_HEART_2",
  "GAME_THING_TYPE_WORSHIP_SITE",
  "GAME_THING_TYPE_SHOW_NEEDS_VISUALS",
  "GAME_THING_TYPE_SHOW_NEEDS",
  "GAME_THING_TYPE_SCRIPT_HIGHLIGHT",
  "GAME_THING_TYPE_GWATERFALL",
  "GAME_THING_TYPE_GARENA",
  "GAME_THING_TYPE_ARENA_SPELL_ICON",
  "GAME_THING_TYPE_WEATHER_THING",
  "GAME_THING_TYPE_BALL",
  "GAME_THING_TYPE_FOOTBALL",
  "GAME_THING_TYPE_REWARD",
  "GAME_THING_TYPE_GSTREAM",
  "GAME_THING_TYPE_MIST",
  "GAME_THING_TYPE_INFLUENCE_RING",
  "GAME_THING_TYPE_UNUSED_04A",
  "GAME_THING_TYPE_UNUSED_04B",
  "GAME_THING_TYPE_TOWN_DESIRE_FLAGS",
  "GAME_THING_TYPE_BIG_FOREST",
  "GAME_THING_TYPE_FOREST",
  "GAME_THING_TYPE_TREE",
  "GAME_THING_TYPE_CRECHE",
  "GAME_THING_TYPE_GRAVEYARD",
  "GAME_THING_TYPE_WORKSHIP",
  "GAME_THING_TYPE_MOBILE_OBJECT",
  "GAME_THING_TYPE_MOBILE_STATIC",
  "GAME_THING_TYPE_TOWN_SPELL_ICON",
  "GAME_THING_TYPE_TOWN_CENTRE_SPELL_ICON",
  "GAME_THING_TYPE_REWARD_SPELL_ICON_OLD",
  "GAME_THING_TYPE_POT",
  "GAME_THING_TYPE_PILE_FOOD",
  "GAME_THING_TYPE_PILE_WOOD",
  "GAME_THING_TYPE_PILE_FISH_FARM",
  "GAME_THING_TYPE_STANDARD_BUILDING_SITE",
  "GAME_THING_TYPE_CITADEL_BUILDING_SITE",
  "GAME_THING_TYPE_WORKSHOP_BUILDING_SITE",
  "GAME_THING_TYPE_SCAFFOLD",
  "GAME_THING_TYPE_TOWN_CENTRE",
  "GAME_THING_TYPE_PLANNED_ABODE",
  "GAME_THING_TYPE_PLANNED_TOWN_CENTRE",
  "GAME_THING_TYPE_GPLAYER",
  "GAME_THING_TYPE_GPLAYER_INTERFACE",
  "GAME_THING_TYPE_GPLAYER_INTERFACE_STATUS",
  "GAME_THING_TYPE_GCOMPUTER_PLAYER",
  "GAME_THING_TYPE_GCOMPUTER_SEEN",
  "GAME_THING_TYPE_GCOMPUTER_SPELL_CAST",
  "GAME_THING_TYPE_CREATURE",
  "GAME_THING_TYPE_GGAME",
  "GAME_THING_TYPE_POO",
  "GAME_THING_TYPE_FIELD_CROP",
  "GAME_THING_TYPE_CREED",
  "GAME_THING_TYPE_GPARTICLE_CONTAINER",
  "GAME_THING_TYPE_ROCK",
  "GAME_THING_TYPE_DEAD_TREE",
  "GAME_THING_TYPE_FELLED_TREE",
  "GAME_THING_TYPE_BONFIRE",
  "GAME_THING_TYPE_PLANNED_FEATURE",
  "GAME_THING_TYPE_FEATURE",
  "GAME_THING_TYPE_ANIMATED_STATIC",
  "GAME_THING_TYPE_SPECIAL_VILLAGER",
  "GAME_THING_TYPE_GCAMERA",
  "GAME_THING_TYPE_WORSHIP_SPELL_ICON",
  "GAME_THING_TYPE_DANCE_KEY_ACTION",
  "GAME_THING_TYPE_DANCE_KEY_FRAME",
  "GAME_THING_TYPE_DANCE_GROUP",
  "GAME_THING_TYPE_SCRIPT_MARKER",
  "GAME_THING_TYPE_SCRIPT_TIMER",
  "GAME_THING_TYPE_FLOCK",
  "GAME_THING_TYPE_TOTEM_STATUE",
  "GAME_THING_TYPE_WONDER",
  "GAME_THING_TYPE_UNUSED_081",
  "GAME_THING_TYPE_COW",
  "GAME_THING_TYPE_SHEEP",
  "GAME_THING_TYPE_GOAT",
  "GAME_THING_TYPE_HORSE",
  "GAME_THING_TYPE_ZEBRA",
  "GAME_THING_TYPE_PIG",
  "GAME_THING_TYPE_TORTOISE",
  "GAME_THING_TYPE_LION",
  "GAME_THING_TYPE_LEOPARD",
  "GAME_THING_TYPE_TIGER",
  "GAME_THING_TYPE_WOLF",
  "GAME_THING_TYPE_SPELL_WOLF",
  "GAME_THING_TYPE_DOVE",
  "GAME_THING_TYPE_CROW",
  "GAME_THING_TYPE_SPELL_DOVE",
  "GAME_THING_TYPE_SWALLOW",
  "GAME_THING_TYPE_PIGEON",
  "GAME_THING_TYPE_SEAGULL",
  "GAME_THING_TYPE_BAT",
  "GAME_THING_TYPE_SPELL_BAT",
  "GAME_THING_TYPE_VULTURE",
  "GAME_THING_TYPE_WHALE",
  "GAME_THING_TYPE_WORSHIP_TOTEM",
  "GAME_THING_TYPE_DATA_PATH",
  "GAME_THING_TYPE_PIECE_LION",
  "GAME_THING_TYPE_PIECE_SHEEP",
  "GAME_THING_TYPE_PIECE_WOLF",
  "GAME_THING_TYPE_PIECE_VILLAGER",
  "GAME_THING_TYPE_MISSIONARY_CONTROL",
  "GAME_THING_TYPE_GAME_STATS",
  "GAME_THING_TYPE_UNUSED_0A0",
  "GAME_THING_TYPE_WAYPOINT",
  "GAME_THING_TYPE_ATOM_CORE",
  "GAME_THING_TYPE_ATOM_COLLECTION",
  "GAME_THING_TYPE_PSYS_MANAGER",
  "GAME_THING_TYPE_GJPSYS_INTERFACE",
  "GAME_THING_TYPE_DRAW_OFFSET_LT",
  "GAME_THING_TYPE_DRAW_OFFSET_DECAY",
  "GAME_THING_TYPE_PARTICLE_3D_PNT",
  "GAME_THING_TYPE_PARTICLE_3D_OBJ",
  "GAME_THING_TYPE_PARTICLE_LIGHT_MAP",
  "GAME_THING_TYPE_RENDER_PARTICLE_MIST",
  "GAME_THING_TYPE_PARTICLE_3D_ANIM",
  "GAME_THING_TYPE_PARTICLE_3D_ANIM_WITH_CAMERA",
  "GAME_THING_TYPE_PARTICLE_3D_OBJ_ANIM_TEXTURED",
  "GAME_THING_TYPE_RENDER_PARTICLE_CREATURE_REF",
  "GAME_THING_TYPE_RENDER_PARTICLE_GAME_OBJECT_REF",
  "GAME_THING_TYPE_RENDER_PARTICLE_GOLDEN_SHOWER",
  "GAME_THING_TYPE_RENDER_PARTICLE_GAME_OBJECT",
  "GAME_THING_TYPE_RENDER_PARTICLE_CHAIN_JOINT",
  "GAME_THING_TYPE_RENDER_PARTICLE_3D_SPRITE",
  "GAME_THING_TYPE_RENDER_PARTICLE_PLAYER_SYMBOL",
  "GAME_THING_TYPE_CHAIN",
  "GAME_THING_TYPE_DEFENSIVE_SPHERE",
  "GAME_THING_TYPE_SPELL_POINT_INF",
  "GAME_THING_TYPE_UR_SIMPLE_BEAM_SUB_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_PLASMA_INF",
  "GAME_THING_TYPE_UR_VOL_FX_ON_OBJECT_ATOM_DATA",
  "GAME_THING_TYPE_UR_PLASMA_SUB_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_PLASMA_ATOM_DATA",
  "GAME_THING_TYPE_UR_BELIEF_SPRITE_ATOM_DATA",
  "GAME_THING_TYPE_UR_SIMPLE_BEAM_ATOM_DATA",
  "GAME_THING_TYPE_UR_MANA_PATH_NEW_ATOM_DATA",
  "GAME_THING_TYPE_UR_CREATURE_SPELL_GENERIC_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_CREATURE_SPELL_GENERIC_ATOM_DATA",
  "GAME_THING_TYPE_UR_ORIENT_SPRITE_WITH_VELOCITY_ATOM_DATA",
  "GAME_THING_TYPE_UR_ATOMS_AT_EP_TARGET_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_CREATURE_SPELL_COMPASSION_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_CREATURE_SPELL_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_CREATURE_SPELL_ITCH_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_CREATURE_SPELL_FREEZE_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_VORTEX_ATTRACT_ATOM_DATA",
  "GAME_THING_TYPE_VORTEX_OBJECT_INFO",
  "GAME_THING_TYPE_UR_SPHERE_SURFACE_TRACER_ATOM_DATA",
  "GAME_THING_TYPE_CHECK_SHIELD_DEFLECTIONS_ATOM_DATA",
  "GAME_THING_TYPE_UR_FOREST_PATH_ATOM_DATA",
  "GAME_THING_TYPE_UR_EXPLOSION_ATOM_DATA",
  "GAME_THING_TYPE_UR_EXPLOSION_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_FLOCKING_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_CLOUD_MOVER_NEW_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_CLOUD_GATHER_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_CLOUD_GATHER_ATOM_DATA",
  "GAME_THING_TYPE_UR_TORNADO_FLYING_ATOM_DATA",
  "GAME_THING_TYPE_UR_TORNADO_DEBRIS_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_TORNADO_FLYING_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_TORNADO_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_LIGHTNING_COLLECTION_DATA",
  "GAME_THING_TYPE_EMITTER_RULE_LIGHTNING_SPRITE_COLLECTION_DATA",
  "GAME_THING_TYPE_AR_FADE_OUT_ONCE_CONDITION_TRUE_ATOM_DATA",
  "GAME_THING_TYPE_ATTATCH_FIREBALL_TO_ATOM_ATOM_DATA",
  "GAME_THING_TYPE_ADD_SOUND_TO_ATOM_ATOM_DATA",
  "GAME_THING_TYPE_REMOVE_SOUND_FROM_ATOM_ATOM_DATA",
  "GAME_THING_TYPE_UPDATE_RULE_GRAVITY_WITH_FLOOR_ATOM_DATA_RIPPLE",
  "GAME_THING_TYPE_UR_BANKED_TURNING_ATOM_DATA",
  "GAME_THING_TYPE_UPDATE_RULE_SHIELD_SPARK_ATOM_DATA",
  "GAME_THING_TYPE_UR_VAPOUR_END_EFFECT_ATOM_DATA",
  "GAME_THING_TYPE_ADD_SUB_COLLECTIONS_TO_ATOM_ATOM_DATA",
  "GAME_THING_TYPE_CREATE_NEW_BASE_ATOM_ATOM_DATA",
  "GAME_THING_TYPE_ER_GLINTS_ON_TARGET_PARENT_ATOM_DATA",
  "GAME_THING_TYPE_ER_GLINTS_ON_TARGET_ATOM_DATA",
  "GAME_THING_TYPE_UR_ORIENT_SPRITE_WITH_RANDOM_ANGLE_ATOM_DATA",
  "GAME_THING_TYPE_UR_SIDE_SPIN_ATOM_DATA",
  "GAME_THING_TYPE_UR_INITIAL_SPIN_ATOM_DATA",
  "GAME_THING_TYPE_REMOVE_RULE_AFTER_CONDITION_TRUE_ATOM_DATA",
  "GAME_THING_TYPE_UR_ORIENT_WITH_VELOCITY_ATOM_DATA",
  "GAME_THING_TYPE_UR_FOLLOW_TARGETS_ATOM_DATA",
  "GAME_THING_TYPE_UR_ADD_DEFENSIVE_SPHERE_COLLECTION_DATA",
  "GAME_THING_TYPE_EMITTER_RULE_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_WILLOW_WISP_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_BURST_FROM_PARENT_ATOM_COLLECTION_DATA",
  "GAME_THING_TYPE_ER_EMIT_FROM_PARENT_ATOM_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_FOLLOW_TARGETS_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_HEAL_SPELL_CHAKRA_ATOM_DATA",
  "GAME_THING_TYPE_UR_TRAIL_COLLECTION_DATA",
  "GAME_THING_TYPE_LIGHTNING_FORK_FLICKER_COLLECTION_DATA",
  "GAME_THING_TYPE_UR_HAND_SPRINKLE_COLLECTION_DATA",
  "GAME_THING_TYPE_GBASE_ONLY",
  "GAME_THING_TYPE_FRAGMENT",
  "GAME_THING_TYPE_WINDMILL",
  "GAME_THING_TYPE_PLAYER_ACTION_STATE",
  "GAME_THING_TYPE_PLAYER_SUB_ACTION",
  "GAME_THING_TYPE_PLAYER_SUB_ACTION_ARGUMENT",
  "GAME_THING_TYPE_GCLIMATE",
  "GAME_THING_TYPE_GMAGIC_HAND_1",
  "GAME_THING_TYPE_GSTREET_LANTERN",
  "GAME_THING_TYPE_GSTREET_LIGHT",
  "GAME_THING_TYPE_UNUSED_100",
  "GAME_THING_TYPE_GMAGIC_HAND_2",
  "GAME_THING_TYPE_GVIRTUAL_INFLUENCE",
  "GAME_THING_TYPE_TOWN_ARTIFACT",
  "GAME_THING_TYPE_UNUSED_104",
  "GAME_THING_TYPE_DATA_FOR_SCRIPT_REMIND",
  "GAME_THING_TYPE_VORTEX_SAVE",
  "GAME_THING_TYPE_PUZZLE_GRAIN",
  "GAME_THING_TYPE_PUZZLE_MOBILE_OBJECT",
  "GAME_THING_TYPE_THING_MUSIC_INFO",
  "GAME_THING_TYPE_FLOWERS",
  "GAME_THING_TYPE_SPELL_DISPENSER",
  "GAME_THING_TYPE_GCOMPUTER_PLAYER_QUEUE",
  "GAME_THING_TYPE_GCOMPUTER_ATTITUDE_TO_PLAYER",
  "GAME_THING_TYPE_UR_LIGHT_SHEET_ON_OBJECT_ATOM_DATA",
  "GAME_THING_TYPE_UR_LIGHT_SHEET_ON_OBJECT_COLLECTION_DATA",
  "GAME_THING_TYPE_CITADEL_ENTRANCE",
};

struct GameThingVftable
{
  struct BaseVftable super;  /* 0x0 */
  struct GPlayer* (__fastcall* GetPlayer)(struct GameThing* this);  /* 0x1c */
  void (__fastcall* SetPlayer)(struct GameThing* this, const void* edx, struct GPlayer* player);  /* 0x20 */
  float (__fastcall* CalculateInfluence)(struct GameThing* this, const void* edx, const struct MapCoords* param_1);
  void (__fastcall* RemoveDance)(struct GameThing* this);
  bool (__fastcall* IsAvailable)(struct GameThing* this);
  bool (__fastcall* IsCreature_0)(struct GameThing* this, const void* edx, struct Creature* param_1);  /* 0x30 */
  bool (__fastcall* IsCreature_1)(struct GameThing* this);
  bool (__fastcall* IsCreatureNotTooNear)(struct GameThing* this, const void* edx, struct Creature* param_1);
  float (__fastcall* GetDrawImportance)(struct GameThing* this);
  float (__fastcall* GetMaxAlignmentChangePerGameTurn)(struct GameThing* this);  /* 0x40 */
  bool (__fastcall* GetComputerSeen)(struct GameThing* this);
  struct Town* (__fastcall* GetTown)(struct GameThing* this);
  float (__fastcall* GetVillagerActivityDesire)(struct GameThing* this, const void* edx, struct Villager* param_1);
  uint32_t (__fastcall* SetVillagerActivity)(struct GameThing* this, const void* edx, struct Villager* param_1);  /* 0x50 */
  uint32_t (__fastcall* UpdateVillagerActivityEffect)(struct GameThing* this, const void* edx, struct Villager* param_1);
  void (__fastcall* MaintainSpell)(struct GameThing* this, const void* edx, uint32_t param_1, float param_2);
  void (__fastcall* UpdateSpellInfo)(struct GameThing* this, const void* edx, struct Spell* param_1, struct PSysProcessInfo* param_2);
  float (__fastcall* GetRadius)(struct GameThing* this);  /* 0x60 */
  float (__fastcall* Get2DRadius)(struct GameThing* this);
  struct GPlayer* (__fastcall* GetPlayerWhoLastPickedMeUp)(struct GameThing* this);
  struct GPlayer* (__fastcall* GetPlayerWhoLastDroppedMe)(struct GameThing* this);
  bool32_t (__fastcall* IsFootpathLink)(struct GameThing* this);  /* 0x70 */
  struct GFootpathLink* (__fastcall* GetFootpathLink)(struct GameThing* this);
  uint32_t (__fastcall* AddFootpathLink)(struct GameThing* this, const void* edx, struct GFootpath* param_1);
  uint32_t (__fastcall* GetNearestPathTo)(struct GameThing* this, const void* edx, const struct MapCoords* param_1, float param_2, int param_3);
  void (__fastcall* UseFootpathIfNecessary)(struct GameThing* this, const void* edx, struct Living* param_1, const struct MapCoords* param_2, unsigned char param_3);  /* 0x80 */
  uint32_t (__fastcall* AddFootpath)(struct GameThing* this, const void* edx, struct GFootpath* param_1);
  uint32_t (__fastcall* RemoveFootpath)(struct GameThing* this, const void* edx, struct GFootpath* param_1);
  uint32_t (__fastcall* JustAddResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool param_3);
  uint32_t (__fastcall* JustRemoveResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);  /* 0x90 */
  uint32_t (__fastcall* JustGetResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3);
  uint32_t (__fastcall* GetResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type);
  uint32_t (__fastcall* AddResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* coords, int param_6);
  uint32_t (__fastcall* RemoveResource)(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4);  /* 0xa0 */
  struct Creature* (__fastcall* CastCreature)(struct GameThing* this);
  struct GPlayer* (__fastcall* CastPlayer)(struct GameThing* this);
  struct SpellSeed* (__fastcall* CastOneOffSpellSeed)(struct GameThing* this);
  struct Abode* (__fastcall* CastAbode)(struct GameThing* this);  /* 0xb0 */
  struct MultiMapFixed* (__fastcall* CastMultiMapFixed)(struct GameThing* this);
  struct SpellIcon* (__fastcall* CastSpellIcon)(struct GameThing* this);
  struct Tree* (__fastcall* CastTree)(struct GameThing* this);
  bool32_t (__fastcall* IsDeletedOnNewMap)(struct GameThing* this);  /* 0xc0 */
  uint16_t (__fastcall* GetNumberOfInstanceForGlobalList)(struct GameThing* this);
  float (__fastcall* GetTownArtifactValue)(struct GameThing* this);
  bool (__fastcall* CanBecomeArtifact)(struct GameThing* this);
  void (__fastcall* DrawInHand)(struct GameThing* this, const void* edx, struct GInterfaceStatus* param_1);  /* 0xd0 */
  bool (__fastcall* IsFunctional)(struct GameThing* this);
  char* (__fastcall* GetDebugText)(struct GameThing* this);
  uint32_t (__fastcall* GetSampleForAttack)(struct GameThing* this);
  uint32_t (__fastcall* GetGuidanceResourceType)(struct GameThing* this);  /* 0xe0 */
  uint32_t (__fastcall* GetShowNeedsPos)(struct GameThing* this, const void* edx, uint32_t param_1, struct MapCoords* param_2);
  uint32_t (__fastcall* Load)(struct GameThing* this, const void* edx, struct GameOSFile* file);
  uint32_t (__fastcall* Save)(struct GameThing* this, const void* edx, struct GameOSFile* file);
  uint32_t (__fastcall* GetSaveType)(struct GameThing* this);  /* 0xf0 */
  void (__fastcall* SaveExtraData)(struct GameThing* this, const void* edx, struct GameOSFile* file);
  void (__fastcall* ResolveLoad)(struct GameThing* this);
};
static_assert(sizeof(struct GameThingVftable) == 0xfc, "Data type is of wrong size");

union GameThingBase
{
  struct Base super;
  struct GameThingVftable* vftable;
};
static_assert(sizeof(union GameThingBase) == 0x8, "Data type is of wrong size");

struct GameThing
{
  union GameThingBase base;  /* 0x0 */
  uint16_t field_0x8;
  uint8_t field_0xa;
  uint16_t field_0xc;
  struct GameThing* next;  /* 0x10 */
};
static_assert(sizeof(struct GameThing) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c7f18 mac inlined GameThing::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GameThing asm("??_R0?AVGameThing@@@8");
// win1.41 009a63c0 mac inlined GameThing::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GameThing asm("??_R1A@?0A@A@GameThing@@8");
// win1.41 009b0510 mac inlined GameThing::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GameThing asm("??_R2GameThing@@8");
// win1.41 009b0520 mac inlined GameThing::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GameThing asm("??_R3GameThing@@8");
// win1.41 008fff4c mac 10731394 GameThing::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GameThing asm("??_R4GameThing@@6B@");
// win1.41 008fff50 mac 107313a4 GameThing::`vftable'
extern const struct GameThingVftable __vt__9GameThing asm("??_7GameThing@@6B@");

// Static methods

// win1.41 0056fb10 mac 1008e550 GameThing::ProcessDeadList(int)
void __stdcall ProcessDeadList__9GameThingFi(int param_1);

// Constructors

// win1.41 0056fa10 mac 10088880 GameThing::GameThing(void)
struct GameThing* __fastcall __ct__9GameThingFv(struct GameThing* this) asm("??0GameThing@@QAE@XZ");

// Non-virtual Destructors

// win1.41 0056fa50 mac 10086e30 GameThing::~GameThing(void)
void __fastcall __dt__9GameThingFv(struct GameThing* this, const void* edx, uint8_t param_1) asm("??1GameThing@@UAE@XZ");

// Non-virtual methods

// win1.41 0056faa0 mac 10492500 GameThing::ProcessDead(int)
void __fastcall ProcessDead__9GameThingFi(struct GameThing* this, const void* edx, int param_1) asm("?ProcessDead@GameThing@@QAEXH@Z");
// win1.41 0056fef0 mac 103c2300 GameThing::CheckAndSetSaved(void)
bool __fastcall CheckAndSetSaved__9GameThingFv(struct GameThing* this) asm("?CheckAndSetSaved@GameThing@@QAE_NXZ");

// Override methods

// win1.41 0056fb70 mac 10380a20 GameThing::ToBeDeleted(int)
void __fastcall ToBeDeleted__9GameThingFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@GameThing@@UAEXH@Z");
// win1.41 00570130 mac 10364e60 GameThing::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9GameThingFv(struct GameThing* this) asm("?GetPlayer@GameThing@@QAEPAVGPlayer@@XZ");
// win1.41 00570150 mac 10359980 GameThing::SetPlayer(GPlayer *)
void __fastcall SetPlayer__9GameThingFP7GPlayer(struct GameThing* this, const void* edx, struct GPlayer* param_1) asm("?SetPlayer@GameThing@@QAEXPAVGPlayer@@@Z");
// win1.41 004017f0 mac 1010bb00 GameThing::CalculateInfluence(MapCoords const &)
float __fastcall CalculateInfluence__9GameThingFRC9MapCoords(struct GameThing* this, const void* edx, const struct MapCoords* param_1) asm("?CalculateInfluence@GameThing@@QAEMABUMapCoords@@@Z");
// win1.41 00401800 mac 10494700 GameThing::RemoveDance(void)
void __fastcall RemoveDance__9GameThingFv(struct GameThing* this) asm("?RemoveDance@GameThing@@QAEXXZ");
// win1.41 00401810 mac 100512d0 GameThing::IsAvailable(void)
bool __fastcall IsAvailable__9GameThingFv(struct GameThing* this) asm("?IsAvailable@GameThing@@QAE_NXZ");
// win1.41 00401820 mac 10494880 GameThing::IsCreature(Creature *)
bool __fastcall IsCreature__9GameThingFP8Creature(struct GameThing* this, const void* edx, struct Creature* param_1) asm("?IsCreature@GameThing@@QAE_NPAVCreature@@@Z");
// win1.41 00401830 mac 1002c400 GameThing::IsCreature(void)
bool __fastcall IsCreature__9GameThingFv(struct GameThing* this) asm("?IsCreature@GameThing@@UAE_NXZ");
// win1.41 00401840 mac 104948c0 GameThing::IsCreatureNotTooNear(Creature *)
bool __fastcall IsCreatureNotTooNear__9GameThingFP8Creature(struct GameThing* this, const void* edx, struct Creature* param_1) asm("?IsCreatureNotTooNear@GameThing@@UAE_NPAVCreature@@@Z");
// win1.41 00405130 mac 10169a70 GameThing::GetDrawImportance(void)
float __fastcall GetDrawImportance__9GameThingFv(struct GameThing* this) asm("?GetDrawImportance@GameThing@@QAEMXZ");
// win1.41 00401850 mac 10428ff0 GameThing::GetMaxAlignmentChangePerGameTurn(void)
float __fastcall GetMaxAlignmentChangePerGameTurn__9GameThingFv(struct GameThing* this) asm("?GetMaxAlignmentChangePerGameTurn@GameThing@@UAEMXZ");
// win1.41 00401860 mac 10425a40 GameThing::GetComputerSeen(void)
bool __fastcall GetComputerSeen__9GameThingFv(struct GameThing* this) asm("?GetComputerSeen@GameThing@@UAE_NXZ");
// win1.41 0056ff10 mac 103c22d0 GameThing::GetTown(void)
struct Town* __fastcall GetTown__9GameThingFv(struct GameThing* this) asm("?GetTown@GameThing@@QAEPAVTown@@XZ");
// win1.41 00401870 mac 103f1450 GameThing::GetVillagerActivityDesire(Villager *)
float __fastcall GetVillagerActivityDesire__9GameThingFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?GetVillagerActivityDesire@GameThing@@QAEMPAVVillager@@@Z");
// win1.41 00401880 mac 10389ac0 GameThing::SetVillagerActivity(Villager *)
uint32_t __fastcall SetVillagerActivity__9GameThingFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?SetVillagerActivity@GameThing@@UAEXPAVVillager@@@Z");
// win1.41 00401890 mac 1037f2e0 GameThing::UpdateVillagerActivityEffect(Villager *)
uint32_t __fastcall UpdateVillagerActivityEffect__9GameThingFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?UpdateVillagerActivityEffect@GameThing@@QAEIPAVVillager@@@Z");
// win1.41 0056fed0 mac 10160960 GameThing::MaintainSpell(Spell *, float)
void __fastcall MaintainSpell__9GameThingFP5Spellf(struct GameThing* this, const void* edx, uint32_t param_1, float param_2) asm("?MaintainSpell@GameThing@@UAEXIM@Z");
// win1.41 0056fee0 mac 100fc510 GameThing::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void __fastcall UpdateSpellInfo__9GameThingFP5SpellP15PSysProcessInfo(struct GameThing* this, const void* edx, struct Spell* param_1, struct PSysProcessInfo* param_2) asm("?UpdateSpellInfo@GameThing@@QAEXPAVSpell@@PAVPSysProcessInfo@@@Z");
// win1.41 00405140 mac 104e9450 GameThing::GetRadius(void)
float __fastcall GetRadius__9GameThingFv(struct GameThing* this) asm("?GetRadius@GameThing@@QAEMXZ");
// win1.41 00405150 mac 1034f3d0 GameThing::Get2DRadius(void)
float __fastcall Get2DRadius__9GameThingFv(struct GameThing* this) asm("?Get2DRadius@GameThing@@QAEMXZ");
// win1.41 004018a0 mac 101664f0 GameThing::GetPlayerWhoLastPickedMeUp(void)
struct GPlayer* __fastcall GetPlayerWhoLastPickedMeUp__9GameThingFv(struct GameThing* this) asm("?GetPlayerWhoLastPickedMeUp@GameThing@@QAEPAVGPlayer@@XZ");
// win1.41 004018b0 mac 10381da0 GameThing::GetPlayerWhoLastDroppedMe(void)
struct GPlayer* __fastcall GetPlayerWhoLastDroppedMe__9GameThingFv(struct GameThing* this) asm("?GetPlayerWhoLastDroppedMe@GameThing@@QAEPAVGPlayer@@XZ");
// win1.41 00405160 mac 103c36e0 GameThing::IsFootpathLink(void)
bool32_t __fastcall IsFootpathLink__9GameThingFv(struct GameThing* this) asm("?IsFootpathLink@GameThing@@QAE_NXZ");
// win1.41 00405170 mac 1056c160 GameThing::GetFootpathLink(void)
struct GFootpathLink* __fastcall GetFootpathLink__9GameThingFv(struct GameThing* this) asm("?GetFootpathLink@GameThing@@QAEPAVGFootpathLink@@XZ");
// win1.41 004018c0 mac 101063a0 GameThing::AddFootpathLink(GFootpath *)
uint32_t __fastcall AddFootpathLink__9GameThingFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?AddFootpathLink@GameThing@@QAEXPAVGFootpath@@@Z");
// win1.41 00405180 mac 104788b0 GameThing::GetNearestPathTo(MapCoords const &, float, int)
uint32_t __fastcall GetNearestPathTo__9GameThingFRC9MapCoordsfi(struct GameThing* this, const void* edx, const struct MapCoords* param_1, float param_2, int param_3) asm("?GetNearestPathTo@GameThing@@QAEIABUMapCoords@@MH@Z");
// win1.41 00570330 mac 100e4740 GameThing::UseFootpathIfNecessary(Living *, MapCoords const &, unsigned char)
void __fastcall UseFootpathIfNecessary__9GameThingFP6LivingRC9MapCoordsUc(struct GameThing* this, const void* edx, struct Living* param_1, const struct MapCoords* param_2, unsigned char param_3) asm("?UseFootpathIfNecessary@GameThing@@QAEXPAVLiving@@ABUMapCoords@@E@Z");
// win1.41 00405190 mac 103dffc0 GameThing::AddFootpath(GFootpath *)
uint32_t __fastcall AddFootpath__9GameThingFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?AddFootpath@GameThing@@QAEIPAVGFootpath@@@Z");
// win1.41 004051a0 mac 103dff70 GameThing::RemoveFootpath(GFootpath *)
uint32_t __fastcall RemoveFootpath__9GameThingFP9GFootpath(struct GameThing* this, const void* edx, struct GFootpath* param_1) asm("?RemoveFootpath@GameThing@@QAEIPAVGFootpath@@@Z");
// win1.41 005705f0 mac 10560530 GameThing::JustAddResource(RESOURCE_TYPE, unsigned long, bool)
uint32_t __fastcall JustAddResource__9GameThingF13RESOURCE_TYPEUlb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool param_3) asm("?JustAddResource@GameThing@@QAEIW4RESOURCE_TYPE@@K_N@Z");
// win1.41 00570600 mac 1054a9d0 GameThing::JustRemoveResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t __fastcall JustRemoveResource__9GameThingF13RESOURCE_TYPEUlPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3) asm("?JustRemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z");
// win1.41 00570610 mac 101669d0 GameThing::JustGetResource(RESOURCE_TYPE, unsigned long, bool *)
uint32_t __fastcall JustGetResource__9GameThingF13RESOURCE_TYPEUlPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, bool* param_3) asm("?JustGetResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPA_N@Z");
// win1.41 004051b0 mac 1056c950 GameThing::GetResource(RESOURCE_TYPE)
uint32_t __fastcall GetResource__9GameThingF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type) asm("?GetResource@GameThing@@QAEIW4RESOURCE_TYPE@@@Z");
// win1.41 004051c0 mac 1056c9a0 GameThing::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__9GameThingF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* coords, int param_6) asm("?AddResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@_NABUMapCoords@@H@Z");
// win1.41 004051d0 mac 104f8b20 GameThing::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__9GameThingF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE type, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@GameThing@@QAEIW4RESOURCE_TYPE@@KPAVGInterfaceStatus@@PA_N@Z");
// win1.41 004018d0 mac 103dd790 GameThing::CastCreature(void)
struct Creature* __fastcall CastCreature__9GameThingFv(struct GameThing* this) asm("?CastCreature@GameThing@@QAEPAVCreature@@XZ");
// win1.41 004018e0 mac 103dd5d0 GameThing::CastPlayer(void)
struct GPlayer* __fastcall CastPlayer__9GameThingFv(struct GameThing* this) asm("?CastPlayer@GameThing@@QAEPAVGPlayer@@XZ");
// win1.41 004018f0 mac 104fb790 GameThing::CastOneOffSpellSeed(void)
struct SpellSeed* __fastcall CastOneOffSpellSeed__9GameThingFv(struct GameThing* this) asm("?CastOneOffSpellSeed@GameThing@@UAEIXZ");
// win1.41 004051e0 mac 1017ebc0 GameThing::CastAbode(void)
struct Abode* __fastcall CastAbode__9GameThingFv(struct GameThing* this) asm("?CastAbode@GameThing@@QAEPAVAbode@@XZ");
// win1.41 004051f0 mac 10199740 GameThing::CastMultiMapFixed(void)
struct MultiMapFixed* __fastcall CastMultiMapFixed__9GameThingFv(struct GameThing* this) asm("?CastMultiMapFixed@GameThing@@QAEPAVMultiMapFixed@@XZ");
// win1.41 00401900 mac 100a0a70 GameThing::CastSpellIcon(void)
struct SpellIcon* __fastcall CastSpellIcon__9GameThingFv(struct GameThing* this) asm("?CastSpellIcon@GameThing@@UAEIXZ");
// win1.41 00401910 mac 101c8320 GameThing::CastTree(void)
struct Tree* __fastcall CastTree__9GameThingFv(struct GameThing* this) asm("?CastTree@GameThing@@UAEIXZ");
// win1.41 00401920 mac 1019e2b0 GameThing::IsDeletedOnNewMap(void)
bool32_t __fastcall IsDeletedOnNewMap__9GameThingFv(struct GameThing* this) asm("?IsDeletedOnNewMap@GameThing@@QAE_NXZ");
// win1.41 00405200 mac 100ac9a0 GameThing::GetNumberOfInstanceForGlobalList(void)
uint16_t __fastcall GetNumberOfInstanceForGlobalList__9GameThingFv(struct GameThing* this) asm("?GetNumberOfInstanceForGlobalList@GameThing@@QAEGXZ");
// win1.41 00405210 mac 1019aa00 GameThing::GetTownArtifactValue(void)
float __fastcall GetTownArtifactValue__9GameThingFv(struct GameThing* this) asm("?GetTownArtifactValue@GameThing@@QAEMXZ");
// win1.41 00405220 mac 10199de0 GameThing::CanBecomeArtifact(void)
bool __fastcall CanBecomeArtifact__9GameThingFv(struct GameThing* this) asm("?CanBecomeArtifact@GameThing@@QAE_NXZ");
// win1.41 00405230 mac 10199e20 GameThing::DrawInHand(GInterfaceStatus *)
void __fastcall DrawInHand__9GameThingFP16GInterfaceStatus(struct GameThing* this, const void* edx, struct GInterfaceStatus* param_1) asm("?DrawInHand@GameThing@@QAEXPAVGInterfaceStatus@@@Z");
// win1.41 00405240 mac 10067860 GameThing::IsFunctional(void)
bool __fastcall IsFunctional__9GameThingFv(struct GameThing* this) asm("?IsFunctional@GameThing@@QAE_NXZ");
// win1.41 00425da0 mac 1054ef00 GameThing::GetDebugText(void)
char* __fastcall GetDebugText__9GameThingFv(struct GameThing* this) asm("?GetDebugText@GameThing@@QAEPADXZ");
// win1.41 0071bc20 mac 1050ff50 GameThing::GetSampleForAttack(void)
uint32_t __fastcall GetSampleForAttack__9GameThingFv(struct GameThing* this) asm("?GetSampleForAttack@GameThing@@UAEIXZ");
// win1.41 0071bdd0 mac 1050fc90 GameThing::GetGuidanceResourceType(void)
uint32_t __fastcall GetGuidanceResourceType__9GameThingFv(struct GameThing* this) asm("?GetGuidanceResourceType@GameThing@@UAEIXZ");
// win1.41 00401930 mac 1017a550 GameThing::GetShowNeedsPos(unsigned long, MapCoords *)
uint32_t __fastcall GetShowNeedsPos__9GameThingFUlP9MapCoords(struct GameThing* this, const void* edx, uint32_t param_1, struct MapCoords* param_2) asm("?GetShowNeedsPos@MultiMapFixed@@UAEIKPAUMapCoords@@@Z");
// win1.41 0056fcf0 mac 103807f0 GameThing::Load(GameOSFile &)
uint32_t __fastcall Load__9GameThingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Load@GameThing@@QAEIAAVGGameOSFile@@@Z");
// win1.41 0056fbe0 mac 101724b0 GameThing::Save(GameOSFile &)
uint32_t __fastcall Save__9GameThingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?Save@GameThing@@QAEIAAVGGameOSFile@@@Z");
// win1.41 0056fd90 mac 101361c0 GameThing::GetSaveType(void)
uint32_t __fastcall GetSaveType__9GameThingFv(struct GameThing* this) asm("?GetSaveType@GameThing@@UAEIXZ");
// win1.41 0056fda0 mac 100bc180 GameThing::SaveExtraData(GameOSFile &)
void __fastcall SaveExtraData__9GameThingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* file) asm("?SaveExtraData@GameThing@@QAEXAAVGameOSFile@@@Z");
// win1.41 00405250 mac 1057b140 GameThing::ResolveLoad(void)
void __fastcall ResolveLoad__9GameThingFv(struct GameThing* this) asm("?ResolveLoad@GameThing@@QAEXXZ");

DECLARE_LH_LINKED_LIST(GameThing);

DECLARE_LH_LIST_HEAD(GameThing);

#endif /* BW1_DECOMP_GAME_THING_INCLUDED_H */
