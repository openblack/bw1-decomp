#ifndef BW1_DECOMP_HELP_SYSTEM_INCLUDED_H
#define BW1_DECOMP_HELP_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

enum HELP_SET_CATEGORY
{
  HELP_SET_CATEGORY_0 = 0x0,
  _HELP_SET_CATEGORY_COUNT = 0x1
};

enum HELP_SYSTEM_MESSAGE_SET
{
  HELP_SYSTEM_MESSAGE_SET_0 = 0x0,
  _HELP_SYSTEM_MESSAGE_SET_COUNT = 0x1
};

enum HELP_EVENT_TYPE
{
  HELP_EVENT_TYPE_0 = 0x0,
  _HELP_EVENT_TYPE_COUNT = 0x1
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
