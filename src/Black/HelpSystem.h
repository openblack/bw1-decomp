#ifndef BW1_DECOMP_HELP_SYSTEM_INCLUDED_H
#define BW1_DECOMP_HELP_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

enum HELP_SET_CATEGORY
{
  HELP_SET_CATEGORY_0 = 0x0,
  HELP_SET_CATEGORY_1 = 0x1,
  HELP_SET_CATEGORY_2 = 0x2,
  HELP_SET_CATEGORY_3 = 0x3,
  HELP_SET_CATEGORY_4 = 0x4,
  HELP_SET_CATEGORY_5 = 0x5,
  HELP_SET_CATEGORY_6 = 0x6,
  HELP_SET_CATEGORY_7 = 0x7,
  HELP_SET_CATEGORY_8 = 0x8,
  _HELP_SET_CATEGORY_COUNT = 0x9
};

// Real names + values from the game's localized help data (infotxtzspell/InfoHelp1.txt,
// "ENUM_HELP_SYSTEM_MESSAGE_SET"). HelpSystem::RunMessageSet() indexes a 0x14-stride
// definition table at 0xbf0d68 by this value. The _FIRST/_LAST entries are the game's
// own range sentinels (intentional duplicate values).
enum HELP_SYSTEM_MESSAGE_SET
{
  HELP_SYSTEM_MESSAGE_SET_NONE                             = 0,
  HELP_SYSTEM_MESSAGE_BANTER_SET_FIRST                     = 1,
  HELP_SYSTEM_MESSAGE_BANTER_SET_1                         = 1,
  HELP_SYSTEM_MESSAGE_BANTER_SET_2                         = 2,
  HELP_SYSTEM_MESSAGE_BANTER_SET_3                         = 3,
  HELP_SYSTEM_MESSAGE_BANTER_SET_4                         = 4,
  HELP_SYSTEM_MESSAGE_BANTER_SET_5                         = 5,
  HELP_SYSTEM_MESSAGE_BANTER_SET_6                         = 6,
  HELP_SYSTEM_MESSAGE_BANTER_SET_7                         = 7,
  HELP_SYSTEM_MESSAGE_BANTER_SET_8                         = 8,
  HELP_SYSTEM_MESSAGE_BANTER_SET_9                         = 9,
  HELP_SYSTEM_MESSAGE_BANTER_SET_10                        = 10,
  HELP_SYSTEM_MESSAGE_BANTER_SET_11                        = 11,
  HELP_SYSTEM_MESSAGE_BANTER_SET_12                        = 12,
  HELP_SYSTEM_MESSAGE_BANTER_SET_13                        = 13,
  HELP_SYSTEM_MESSAGE_BANTER_SET_14                        = 14,
  HELP_SYSTEM_MESSAGE_BANTER_SET_15                        = 15,
  HELP_SYSTEM_MESSAGE_BANTER_SET_16                        = 16,
  HELP_SYSTEM_MESSAGE_BANTER_SET_17                        = 17,
  HELP_SYSTEM_MESSAGE_BANTER_SET_18                        = 18,
  HELP_SYSTEM_MESSAGE_BANTER_SET_19                        = 19,
  HELP_SYSTEM_MESSAGE_BANTER_SET_20                        = 20,
  HELP_SYSTEM_MESSAGE_BANTER_SET_21                        = 21,
  HELP_SYSTEM_MESSAGE_BANTER_SET_22                        = 22,
  HELP_SYSTEM_MESSAGE_BANTER_SET_23                        = 23,
  HELP_SYSTEM_MESSAGE_BANTER_SET_24                        = 24,
  HELP_SYSTEM_MESSAGE_BANTER_SET_25                        = 25,
  HELP_SYSTEM_MESSAGE_BANTER_SET_LAST                      = 26,
  HELP_SYSTEM_MESSAGE_INTERFACE_SET_FIRST                  = 26,
  HELP_SYSTEM_MESSAGE_INTERFACE_SET_LOOK_CLOSE_AT_LAND     = 26,
  HELP_SYSTEM_MESSAGE_INTERFACE_SET_COLLIDE_WITH_INCLUSION = 27,
  HELP_SYSTEM_MESSAGE_INTERFACE_SET_LOOK_AT_SKY            = 28,
  HELP_SYSTEM_MESSAGE_INTERFACE_SET_01                     = 29,
  HELP_SYSTEM_MESSAGE_INTERFACE_SET_02                     = 30,
  HELP_SYSTEM_MESSAGE_INTERFACE_SET_03                     = 31,
  HELP_SYSTEM_MESSAGE_INTERFACE_SET_04                     = 32,
  HELP_SYSTEM_MESSAGE_INTERFACE_SET_LAST                   = 33,
  HELP_SYSTEM_MESSAGE_SET_NOT_INTERESTED                   = 33,
  HELP_SYSTEM_MESSAGE_SET_NON_BELIEVER                     = 34,
  HELP_SYSTEM_MESSAGE_SET_CHILDREN                         = 35,
  HELP_SYSTEM_MESSAGE_SET_SCROLL_HIGHLIGHT                 = 36,
  HELP_SYSTEM_MESSAGE_SET_SCROLL_RANDOM_HIGHLIGHT          = 37,
  HELP_SYSTEM_MESSAGE_SET_VAGRANT                          = 38,
  HELP_SYSTEM_MESSAGE_SET_DISCIPLE_01                      = 39,
  HELP_SYSTEM_MESSAGE_SET_DISCIPLE_02                      = 40,
  HELP_SYSTEM_MESSAGE_SET_DISCIPLE_03                      = 41,
  HELP_SYSTEM_MESSAGE_SET_DISCIPLE_04                      = 42,
  HELP_SYSTEM_MESSAGE_SET_DISCIPLE_05                      = 43,
  HELP_SYSTEM_MESSAGE_SET_DISCIPLE_06                      = 44,
  HELP_SYSTEM_MESSAGE_SET_DISCIPLE_07                      = 45,
  HELP_SYSTEM_MESSAGE_SET_DISCIPLE_08                      = 46,
  HELP_SYSTEM_MESSAGE_SET_TEST                             = 47,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_FIREBALL                  = 48,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_FIREBALL_P1               = 49,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_FIREBALL_P2               = 50,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_LIGHTNING                 = 51,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_LIGHTNING_P1              = 52,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_LIGHTNING_P2              = 53,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_EXPLOSION                 = 54,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_EXPLOSION_P1              = 55,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_HEAL                      = 56,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_HELP_P1                   = 57,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_TELEPORT                  = 58,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_FOREST                    = 59,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_FOOD                      = 60,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_STORM                     = 61,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_STORM_WIND                = 62,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_STORM_WIND_RAIN_LIGHNING  = 63,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_TORNADO                   = 64,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_SHIELD                    = 65,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_SHIELD_P1                 = 66,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_PHYSICALSHIELD            = 67,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_WOOD                      = 68,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_CREATURE_FREEZE           = 69,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_CREATURE_SMALL            = 70,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_CREATURE_BIG              = 71,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_CREATURE_WEAK             = 72,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_CREATURE_STRONG           = 73,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_CREATURE_INVISIBLE        = 74,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_CREATURE_COMPASSION       = 75,
  HELP_SYSTEM_MESSAGE_SET_EFFECT_CREATURE_ITCHY            = 76,
  HELP_SYSTEM_MESSAGE_SET_SEED_STORM                       = 77,
  HELP_SYSTEM_MESSAGE_SET_SEED_NATURE                      = 78,
  HELP_SYSTEM_MESSAGE_SET_SEED_FIRE                        = 79,
  HELP_SYSTEM_MESSAGE_SET_SEED_FOOD                        = 80,
  HELP_SYSTEM_MESSAGE_SET_SEED_SHIELD                      = 81,
  HELP_SYSTEM_MESSAGE_SET_SEED_PHYSICAL_SHIELD             = 82,
  HELP_SYSTEM_MESSAGE_SET_SEED_LIGHTNING_BOLT              = 83,
  HELP_SYSTEM_MESSAGE_SET_SEED_HEAL                        = 84,
  HELP_SYSTEM_MESSAGE_SET_SEED_WOOD                        = 85,
  HELP_SYSTEM_MESSAGE_SET_SEED_CREATURE_FREEZE             = 86,
  HELP_SYSTEM_MESSAGE_SET_SEED_CREATURE_SMALL              = 87,
  HELP_SYSTEM_MESSAGE_SET_SEED_CREATURE_BIG                = 88,
  HELP_SYSTEM_MESSAGE_SET_SEED_CREATURE_WEAK               = 89,
  HELP_SYSTEM_MESSAGE_SET_SEED_CREATURE_STRING             = 90,
  HELP_SYSTEM_MESSAGE_SET_SEED_CREATURE_INVISIBLE          = 91,
  HELP_SYSTEM_MESSAGE_SET_SEED_CREATURE_COMPASSION         = 92,
  HELP_SYSTEM_MESSAGE_SET_SEED_CREATURE_ANGRY              = 93,
  HELP_SYSTEM_MESSAGE_SET_SEED_CREATURE_ITCHY              = 94,
  HELP_SYSTEM_MESSAGE_SET_SEED_TELEPORT                    = 95,
  HELP_SYSTEM_MESSAGE_SET_SEED_BEAM_EXPLOSION              = 96,
  HELP_SYSTEM_MESSAGE_SET_WONDER_GENERAL                   = 97,
  HELP_SYSTEM_MESSAGE_SET_WONDER_CELTIC                    = 98,
  HELP_SYSTEM_MESSAGE_SET_WONDER_AFRICAN                   = 99,
  HELP_SYSTEM_MESSAGE_SET_WONDER_AZTEC                     = 100,
  HELP_SYSTEM_MESSAGE_SET_WONDER_JAPANESE                  = 101,
  HELP_SYSTEM_MESSAGE_SET_WONDER_INDIAN                    = 102,
  HELP_SYSTEM_MESSAGE_SET_WONDER_EGYPTIAN                  = 103,
  HELP_SYSTEM_MESSAGE_SET_WONDER_GREEK                     = 104,
  HELP_SYSTEM_MESSAGE_SET_WONDER_NORSE                     = 105,
  HELP_SYSTEM_MESSAGE_SET_WONDER_TIBETAN                   = 106,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_LION                     = 107,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_TIGER                    = 108,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_WOLF                     = 109,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_LEOPARD                  = 110,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SHEEP                    = 111,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_TORTOISE                 = 112,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_ZEBRA                    = 113,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_COW                      = 114,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_HORSE                    = 115,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_PIG                      = 116,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_STORM               = 117,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_NATURE              = 118,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_FIRE                = 119,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_FOOD                = 120,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_SHIELD              = 121,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_PHYSICAL_SHIELD     = 122,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_LIGHTNING_BOLT      = 123,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_HEAL                = 124,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_WOOD                = 125,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_CREATURE_FREEZE     = 126,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_CREATURE_SMALL      = 127,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_CREATURE_BIG        = 128,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_CREATURE_WEAK       = 129,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_CREATURE_STRONG     = 130,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_CREATURE_INVISIBLE  = 131,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_CREATURE_COMPASSION = 132,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_CREATURE_ANGRY      = 133,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_CREATURE_ITCHY      = 134,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_TELEPORT            = 135,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SEED_BEAM_EXPLOSION      = 136,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_FUNGUS                   = 137,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_MAGIC_MUSHROOOM          = 138,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_FOOD                     = 139,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_POO                      = 140,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_BALL                     = 141,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_SCAFFOLD                 = 142,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_ROCKS                    = 143,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_TREE                     = 144,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_WOOD                     = 145,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_FIRE                     = 146,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_VILLAGER                 = 147,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_ORB                      = 148,
  HELP_SYSTEM_MESSAGE_SET_IN_HAND_FIRST_TIME               = 149,
  HELP_SYSTEM_MESSAGE_SET_SPECIAL_TOWN_CENTRE_GUIDE        = 150,
  HELP_SYSTEM_MESSAGE_SET_SPECIAL_CITADEL                  = 151,
  HELP_SYSTEM_MESSAGE_SET_LAST                             = 152,
};

enum HELP_EVENT_TYPE
{
  HELP_EVENT_TYPE_0 = 0x0,
  HELP_EVENT_TYPE_1 = 0x1,
  HELP_EVENT_TYPE_2 = 0x2,
  HELP_EVENT_TYPE_3 = 0x3,
  HELP_EVENT_TYPE_4 = 0x4,
  HELP_EVENT_TYPE_5 = 0x5,
  HELP_EVENT_TYPE_6 = 0x6,
  HELP_EVENT_TYPE_7 = 0x7,
  HELP_EVENT_TYPE_8 = 0x8,
  HELP_EVENT_TYPE_9 = 0x9,
  HELP_EVENT_TYPE_10 = 0xa,
  HELP_EVENT_TYPE_11 = 0xb,
  HELP_EVENT_TYPE_12 = 0xc,
  HELP_EVENT_TYPE_13 = 0xd,
  HELP_EVENT_TYPE_14 = 0xe,
  HELP_EVENT_TYPE_15 = 0xf,
  HELP_EVENT_TYPE_16 = 0x10,
  HELP_EVENT_TYPE_17 = 0x11,
  HELP_EVENT_TYPE_18 = 0x12,
  HELP_EVENT_TYPE_19 = 0x13,
  HELP_EVENT_TYPE_20 = 0x14,
  HELP_EVENT_TYPE_21 = 0x15,
  HELP_EVENT_TYPE_22 = 0x16,
  HELP_EVENT_TYPE_23 = 0x17,
  HELP_EVENT_TYPE_24 = 0x18,
  HELP_EVENT_TYPE_25 = 0x19,
  HELP_EVENT_TYPE_26 = 0x1a,
  HELP_EVENT_TYPE_27 = 0x1b,
  HELP_EVENT_TYPE_28 = 0x1c,
  HELP_EVENT_TYPE_29 = 0x1d,
  HELP_EVENT_TYPE_30 = 0x1e,
  HELP_EVENT_TYPE_31 = 0x1f,
  HELP_EVENT_TYPE_32 = 0x20,
  HELP_EVENT_TYPE_33 = 0x21,
  HELP_EVENT_TYPE_34 = 0x22,
  HELP_EVENT_TYPE_35 = 0x23,
  HELP_EVENT_TYPE_36 = 0x24,
  HELP_EVENT_TYPE_37 = 0x25,
  HELP_EVENT_TYPE_38 = 0x26,
  HELP_EVENT_TYPE_39 = 0x27,
  HELP_EVENT_TYPE_40 = 0x28,
  HELP_EVENT_TYPE_41 = 0x29,
  HELP_EVENT_TYPE_42 = 0x2a,
  HELP_EVENT_TYPE_43 = 0x2b,
  HELP_EVENT_TYPE_44 = 0x2c,
  HELP_EVENT_TYPE_45 = 0x2d,
  HELP_EVENT_TYPE_46 = 0x2e,
  HELP_EVENT_TYPE_47 = 0x2f,
  HELP_EVENT_TYPE_48 = 0x30,
  _HELP_EVENT_TYPE_COUNT = 0x31
};

// Forward Declares

struct Bubble;
class GameThingWithPos;
struct HelpDudeControl;
class HelpSpirit;

class HelpSystem: public Base
{
public:
    HelpSpirit* spirit_type_2; /* 0x8 */
    HelpSpirit* spirit_type_1;
    HelpDudeControl* help_dude_control; /* 0x10 */
    uint32_t help_text;
    Bubble* bubble;
    uint32_t field_0x1c;
    uint32_t field_0x20;
    uint32_t icon0;
    uint32_t icon1;
    uint32_t icon2;
    uint8_t field_0x30[0x48];
    uint32_t field_0x78[0x98];
    uint32_t field_0x2d8[0x9];
    uint32_t field_0x2fc[0x98];
    uint32_t field_0x55c;
    uint32_t field_0x560;
    uint8_t field_0x564;
    uint8_t field_0x565;
    uint8_t field_0x566;
    uint8_t field_0x567;
    uint32_t field_0x568;
    uint16_t field_0x56c;
    uint8_t field_0x56e;
    uint8_t field_0x56f;
    uint32_t field_0x570;
    uint32_t field_0x574;
    uint32_t field_0x578;
    uint32_t field_0x57c;
    uint32_t field_0x580;
    uint32_t field_0x584[0x6];
    uint8_t field_0x59c[0x4028];
    uint32_t field_0x45c4;
    uint32_t field_0x45c8;
    uint32_t field_0x45cc;
    uint32_t field_0x45d0;
    uint8_t field_0x45d4;
    uint8_t field_0x45d5;
    uint8_t field_0x45d6;
    uint8_t field_0x45d7;
    uint32_t field_0x45d8;
    uint32_t field_0x45dc;
    uint32_t field_0x45e0;
    uint32_t field_0x45e4;
    int field_0x45e8;
    int field_0x45ec;
    float field_0x45f0;
    int field_0x45f4;
    int field_0x45f8;
    uint32_t field_0x45fc;
    uint8_t field_0x4600;
    uint8_t field_0x4601;
    uint8_t field_0x4602;
    uint8_t field_0x4603;
    uint8_t field_0x4604;
    uint8_t field_0x4605;
    uint8_t field_0x4606;
    uint8_t field_0x4607;
    uint32_t field_0x4608;
    uint32_t field_0x460c;
    uint8_t field_0x4610;
    uint8_t field_0x4611;
    uint8_t field_0x4612;
    uint8_t field_0x4613;

    // Override methods

    // win1.41 005c5430 mac 10351450 HelpSystem::_dt(void)
    virtual ~HelpSystem();

    // Constructors

    // win1.41 005c5410 mac 103519a0 HelpSystem::HelpSystem(void)
    HelpSystem();

    // Non-virtual methods

    // win1.41 005c5460 mac 103518b0 HelpSystem::SetToZero(void)
    void SetToZero();
    // win1.41 005c54e0 mac 103517f0 HelpSystem::ClearTextDisplayed(void)
    void ClearTextDisplayed();
    // win1.41 005c5550 mac 10351760 HelpSystem::ClearAllText(void)
    void ClearAllText();
    // win1.41 005c5580 mac 10351660 HelpSystem::Reset(void)
    void Reset();
    // win1.41 005c5610 mac 103515b0 HelpSystem::ResetIcons(void)
    void ResetIcons();
    // win1.41 005c5eb0 mac 10091a40 HelpSystem::PostDrawProcess(void)
    void PostDrawProcess();
    // win1.41 005c67e0 mac 1034f730 HelpSystem::ClearDialogueControl(void)
    void ClearDialogueControl();
    // win1.41 005c6ad0 mac 1034f2c0 HelpSystem::SetWideScreen(int, ulong)
    void SetWideScreen(int param_2, uint32_t param_3);
    // win1.41 005c6b60 mac 1001d4b0 HelpSystem::GetWideScreenPercentage(void) const
    float GetWideScreenPercentage();
    // win1.41 005c8280 mac 10351b90 HelpSystem::TriggerCategory(HELP_SET_CATEGORY)
    void TriggerCategory(HELP_SET_CATEGORY param_1);
    // win1.41 005c8b80 mac 10353090 HelpSystem::RunMessageSet(HELP_SYSTEM_MESSAGE_SET, GameThingWithPos *)
    uint32_t RunMessageSet(HELP_SYSTEM_MESSAGE_SET param_1, GameThingWithPos* param_2);
    // win1.41 005c8c40 mac 10352f40 HelpSystem::StopHelpScriptsForNewHelp(void)
    uint32_t StopHelpScriptsForNewHelp();
    // win1.41 005c8c80 mac 10352ee0 HelpSystem::StopRunningScripts(void)
    uint32_t StopRunningScripts();
    // win1.41 005c8ce0 mac 10352cf0 HelpSystem::RunMessage(unsigned long, unsigned long, char *)
    uint32_t RunMessage(unsigned long param_1, unsigned long param_2, char* param_3);
    // win1.41 005c94a0 mac 10353ce0 HelpSystem::GetHelpQueryOnGameThingWithPos(GameThingWithPos *)
    void GetHelpQueryOnGameThingWithPos(GameThingWithPos* param_1);
    // win1.41 005c98e0 mac 10353970 HelpSystem::HelpQuery(void)
    void HelpQuery();
};

#endif /* BW1_DECOMP_HELP_SYSTEM_INCLUDED_H */
