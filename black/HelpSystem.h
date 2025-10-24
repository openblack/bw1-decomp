#ifndef BW1_DECOMP_HELP_SYSTEM_INCLUDED_H
#define BW1_DECOMP_HELP_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

// Forward Declares

struct Bubble;
struct GameThingWithPos;
struct HelpDudeControl;
struct HelpSpirit;

enum HELP_SET_CATEGORY
{
  HELP_SET_CATEGORY_0 = 0x0,
  _HELP_SET_CATEGORY_COUNT = 0x1
};
static_assert(sizeof(enum HELP_SET_CATEGORY) == 0x4, "Data type is of wrong size");

static const char* HELP_SET_CATEGORY_strs[_HELP_SET_CATEGORY_COUNT] = {
  "HELP_SET_CATEGORY_0",
};

enum HELP_SYSTEM_MESSAGE_SET
{
  HELP_SYSTEM_MESSAGE_SET_0 = 0x0,
  _HELP_SYSTEM_MESSAGE_SET_COUNT = 0x1
};
static_assert(sizeof(enum HELP_SYSTEM_MESSAGE_SET) == 0x4, "Data type is of wrong size");

static const char* HELP_SYSTEM_MESSAGE_SET_strs[_HELP_SYSTEM_MESSAGE_SET_COUNT] = {
  "HELP_SYSTEM_MESSAGE_SET_0",
};

enum HELP_EVENT_TYPE
{
  HELP_EVENT_TYPE_0 = 0x0,
  _HELP_EVENT_TYPE_COUNT = 0x1
};
static_assert(sizeof(enum HELP_EVENT_TYPE) == 0x4, "Data type is of wrong size");

static const char* HELP_EVENT_TYPE_strs[_HELP_EVENT_TYPE_COUNT] = {
  "HELP_EVENT_TYPE_0",
};

struct HelpSystem
{
  struct Base super;  /* 0x0 */
  struct HelpSpirit* spirit_type_2;
  struct HelpSpirit* spirit_type_1;
  struct HelpDudeControl* help_dude_control;  /* 0x10 */
  uint32_t help_text;
  struct Bubble* bubble;
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
};
static_assert(sizeof(struct HelpSystem) == 0x4614, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf0ca8 mac inlined HelpSystem::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10HelpSystem asm("??_R0?AVHelpSystem@@@8");
// win1.41 009b13a0 mac inlined HelpSystem::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10HelpSystem asm("??_R1A@?0A@A@HelpSystem@@8");
// win1.41 009b13b8 mac inlined HelpSystem::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10HelpSystem asm("??_R2HelpSystem@@8");
// win1.41 009b13c8 mac inlined HelpSystem::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10HelpSystem asm("??_R3HelpSystem@@8");
// win1.41 0092a478 mac 1099cab4 HelpSystem::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10HelpSystem asm("??_R4HelpSystem@@6B@");
// win1.41 0092a47c mac 1099cabc HelpSystem::`vftable'
extern const struct BaseVftable __vt__10HelpSystem asm("??_7HelpSystem@@6B@");

// Constructors

// win1.41 005c5410 mac 103519a0 HelpSystem::HelpSystem(void)
struct HelpSystem* __fastcall __ct__10HelpSystemFv(struct HelpSystem* this) asm("??0HelpSystem@@QAE@XZ");

// Non-virtual methods

// win1.41 005c5460 mac 103518b0 HelpSystem::SetToZero(void)
void __fastcall SetToZero__10HelpSystemFv(struct HelpSystem* this) asm("?SetToZero@HelpSystem@@QAEXXZ");
// win1.41 005c54e0 mac 103517f0 HelpSystem::ClearTextDisplayed(void)
void __fastcall ClearTextDisplayed__10HelpSystemFv(struct HelpSystem* this) asm("?ClearTextDisplayed@HelpSystem@@QAEXXZ");
// win1.41 005c5550 mac 10351760 HelpSystem::ClearAllText(void)
void __fastcall ClearAllText__10HelpSystemFv(struct HelpSystem* this) asm("?ClearAllText@HelpSystem@@QAEXXZ");
// win1.41 005c5580 mac 10351660 HelpSystem::Reset(void)
void __fastcall Reset__10HelpSystemFv(struct HelpSystem* this) asm("?Reset@HelpSystem@@QAEXXZ");
// win1.41 005c5610 mac 103515b0 HelpSystem::ResetIcons(void)
void __fastcall ResetIcons__10HelpSystemFv(struct HelpSystem* this) asm("?ResetIcons@HelpSystem@@QAEXXZ");
// win1.41 005c5eb0 mac 10091a40 HelpSystem::PostDrawProcess(void)
void __fastcall PostDrawProcess__10HelpSystemFv(struct HelpSystem* this) asm("?PostDrawProcess@HelpSystem@@QAEXXZ");
// win1.41 005c67e0 mac 1034f730 HelpSystem::ClearDialogueControl(void)
void __fastcall ClearDialogueControl__10HelpSystemFv(struct HelpSystem* this) asm("?ClearDialogueControl@HelpSystem@@QAEXXZ");
// win1.41 005c6ad0 mac 1034f2c0 HelpSystem::SetWideScreen(int, ulong)
void __fastcall SetWideScreen__10HelpSystemFiUl(struct HelpSystem* this, const void* edx, int param_2, uint32_t param_3) asm("?SetWideScreen@HelpSystem@@QAEXHK@Z");
// win1.41 005c6b60 mac 1001d4b0 HelpSystem::GetWideScreenPercentage(void) const
float __fastcall GetWideScreenPercentage__10HelpSystemCFv(const struct HelpSystem* this) asm("?GetWideScreenPercentage@HelpSystem@@QBEMXZ");
// win1.41 005c8280 mac 10351b90 HelpSystem::TriggerCategory(HELP_SET_CATEGORY)
void __fastcall TriggerCategory__10HelpSystemF17HELP_SET_CATEGORY(struct HelpSystem* this, const void* edx, enum HELP_SET_CATEGORY param_1) asm("?TriggerCategory@HelpSystem@@QAEXW4HELP_SET_CATEGORY@@@Z");
// win1.41 005c8b80 mac 10353090 HelpSystem::RunMessageSet(HELP_SYSTEM_MESSAGE_SET, GameThingWithPos *)
uint32_t __fastcall RunMessageSet__10HelpSystemF23HELP_SYSTEM_MESSAGE_SETP16GameThingWithPos(struct HelpSystem* this, const void* edx, enum HELP_SYSTEM_MESSAGE_SET param_1, struct GameThingWithPos* param_2) asm("?RunMessageSet@HelpSystem@@QAEIW4HELP_SYSTEM_MESSAGE_SET@@PAVGameThingWithPos@@@Z");
// win1.41 005c8c40 mac 10352f40 HelpSystem::StopHelpScriptsForNewHelp(void)
uint32_t __fastcall StopHelpScriptsForNewHelp__10HelpSystemFv(struct HelpSystem* this) asm("?StopHelpScriptsForNewHelp@HelpSystem@@QAEIXZ");
// win1.41 005c8c80 mac 10352ee0 HelpSystem::StopRunningScripts(void)
uint32_t __fastcall StopRunningScripts__10HelpSystemFv(struct HelpSystem* this) asm("?StopRunningScripts@HelpSystem@@QAEIXZ");
// win1.41 005c8ce0 mac 10352cf0 HelpSystem::RunMessage(unsigned long, unsigned long, char *)
uint32_t __fastcall RunMessage__10HelpSystemFUlUlPc(struct HelpSystem* this, const void* edx, unsigned long param_1, unsigned long param_2, char* param_3) asm("?RunMessage@HelpSystem@@QAEIKKPAD@Z");
// win1.41 005c94a0 mac 10353ce0 HelpSystem::GetHelpQueryOnGameThingWithPos(GameThingWithPos *)
void __fastcall GetHelpQueryOnGameThingWithPos__10HelpSystemFP16GameThingWithPos(struct HelpSystem* this, const void* edx, struct GameThingWithPos* param_1) asm("?GetHelpQueryOnGameThingWithPos@HelpSystem@@QAEXPAVGameThingWithPos@@@Z");
// win1.41 005c98e0 mac 10353970 HelpSystem::HelpQuery(void)
void __fastcall HelpQuery__10HelpSystemFv(struct HelpSystem* this) asm("?HelpQuery@HelpSystem@@QAEXXZ");

// Override methods

// win1.41 005c5430 mac 10351450 HelpSystem::_dt(void)
void __fastcall __dt__10HelpSystemFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GHelpSystem@@UAEPAXI@Z");

#endif /* BW1_DECOMP_HELP_SYSTEM_INCLUDED_H */
