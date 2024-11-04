#ifndef BW1_DECOMP_SETUP_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include "SetupControl.h" /* For struct SetupControl */

struct SetupButton
{
  struct SetupControl super;  /* 0x0 */
  bool pressed;  /* 0x23c */
  int field_0x240;
};
static_assert(sizeof(struct SetupButton) == 0x244, "Data type is of wrong size");

static struct SetupControlVftable* const __vt__11SetupButton = (struct SetupControlVftable* const)0x008ab2b4;

// Constructors

// win1.41 004098b0 mac 103dd710 SetupButton::SetupButton(int, int, int, int, int, wchar_t *, int)
struct SetupButton* __fastcall __ct__10SetupButtonFiiiiiPwi(struct SetupButton* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, int param_8);

// Override methods

// win1.41 004097a0 mac 100c7c90 SetupButton::Draw(bool, bool)
void __fastcall Draw__11SetupButtonFbb(struct SetupButton* this, const void* edx, bool hovered, bool selected);
// win1.41 00409900 mac 101104d0 SetupButton::MouseDown(int, int, bool)
void __fastcall MouseDown__10SetupButtonFiib(struct SetupButton* this, const void* edx, int x, int y, bool param_3);
// win1.41 00409910 mac 10172660 SetupButton::MouseUp(int, int, bool)
void __fastcall MouseUp__10SetupButtonFiib(struct SetupButton* this, const void* edx, int x, int y, bool param_3);
// win1.41 00409920 mac 1034a2d0 SetupButton::KeyDown(int, int)
void __fastcall KeyDown__11SetupButtonFii(struct SetupButton* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
// win1.41 00409940 mac 10594240 SetupButton::~SetupButton(void)
struct SetupButton* __fastcall __dt__11SetupButtonFb(struct SetupButton* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_BUTTON_INCLUDED_H */
