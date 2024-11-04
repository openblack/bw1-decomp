#ifndef BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupRect.h" /* For struct SetupRect */
#include "SetupThing.h" /* For enum BBSTYLE */

struct SetupBigButton
{
  struct SetupButton super;  /* 0x0 */
  uint32_t text_position;  /* 0x244 */
  enum BBSTYLE style;
  struct SetupRect inner_rect;
};
static_assert(sizeof(struct SetupBigButton) == 0x25c, "Data type is of wrong size");

static struct SetupControlVftable* __vt__14SetupBigButton = (struct SetupControlVftable*)0x008ab3e0;

// Constructors

// win1.41 0040d260 mac 100fd210 SetupBigButton::SetupBigButton(int, int, int, wchar_t *, int, int, int)
struct SetupBigButton* __fastcall __ct__14SetupBigButtonFiiiPwiii(struct SetupBigButton* this, const void* edx, int id, int x, int y, const char16_t* label, int size, uint32_t text_position, enum BBSTYLE style);

// Override methods

// win1.41 0040d310 mac 101670b0 SetupBigButton::HitTest(int, int)
bool __fastcall HitTest__14SetupBigButtonFii(struct SetupBigButton* this, const void* edx, int x, int y);
// win1.41 0040ceb0 mac 103deac0 SetupBigButton::Draw(bool, bool)
void __fastcall Draw__14SetupBigButtonFbb(struct SetupBigButton* this, const void* edx, bool hovered, bool selected);
// win1.41 0040d2f0 mac 101689f0 SetupBigButton::KeyDown(int, int)
void __fastcall KeyDown__14SetupBigButtonFii(struct SetupBigButton* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
// win1.41 0040d360 mac 1010fca0 SetupBigButton::~SetupBigButton(void)
struct SetupBigButton* __fastcall __dt__14SetupBigButtonFb(struct SetupBigButton* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H */
