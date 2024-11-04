#ifndef BW1_DECOMP_HELP_SYSTEM_INCLUDED_H
#define BW1_DECOMP_HELP_SYSTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

// Forward Declares

struct Bubble;
struct HelpDudeControl;
struct HelpSpirit;

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

static struct BaseVftable* const __vt__10HelpSystem = (struct BaseVftable* const)0x0092a47c;

// Constructors

// win1.41 005c5410 mac 103519a0 HelpSystem::HelpSystem(void)
struct HelpSystem* __fastcall __ct__10HelpSystemFv(struct HelpSystem* this);

// Non-virtual methods

// win1.41 005c5460 mac 103518b0 HelpSystem::SetToZero(void)
void __fastcall SetToZero__10HelpSystemFv(struct HelpSystem* this);
// win1.41 005c54e0 mac 103517f0 HelpSystem::ClearTextDisplayed(void)
void __fastcall ClearTextDisplayed__10HelpSystemFv(struct HelpSystem* this);
// win1.41 005c5550 mac 10351760 HelpSystem::ClearAllText(void)
void __fastcall ClearAllText__10HelpSystemFv(struct HelpSystem* this);
// win1.41 005c5580 mac 10351660 HelpSystem::Reset(void)
void __fastcall Reset__10HelpSystemFv(struct HelpSystem* this);
// win1.41 005c5610 mac 103515b0 HelpSystem::ResetIcons(void)
void __fastcall ResetIcons__10HelpSystemFv(struct HelpSystem* this);
// win1.41 005c67e0 mac 1034f730 HelpSystem::ClearDialogueControl(void)
void __fastcall ClearDialogueControl__10HelpSystemFv(struct HelpSystem* this);
// win1.41 005c6ad0 mac 1034f2c0 HelpSystem::SetWideScreen(int, ulong)
void __fastcall SetWideScreen__10HelpSystemFiUl(struct HelpSystem* this, const void* edx, int32_t param_2, uint32_t param_3);
// win1.41 005c6b60 mac 1001d4b0 HelpSystem::GetWideScreenPercentage(void) const
float __fastcall GetWideScreenPercentage__10HelpSystemCFv(const struct HelpSystem* this);

#endif /* BW1_DECOMP_HELP_SYSTEM_INCLUDED_H */
