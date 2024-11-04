#ifndef BW1_DECOMP_SETUP_TAB_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_TAB_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "SetupButton.h" /* For struct SetupButton */

struct SetupTabButton
{
  struct SetupButton super;  /* 0x0 */
  bool32_t selected;  /* 0x244 */
  bool32_t first_in_row;
  bool32_t last_in_row;
  struct LH3DColor color;  /* 0x250 */
};
static_assert(sizeof(struct SetupTabButton) == 0x254, "Data type is of wrong size");

static struct SetupControlVftable* __vt__14SetupTabButton = (struct SetupControlVftable*)0x008ab4d0;

// Constructors

// win1.41 0040f5e0 mac 101995b0 SetupTabButton::SetupTabButton(int, int, int, int, int, wchar_t *, int, int, int)
struct SetupTabButton* __fastcall __ct__14SetupTabButtonFiiiiiPwiii(struct SetupTabButton* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, bool selected, bool first_in_row, bool last_in_row);

// Override methods

// win1.41 0040f3a0 mac 104081c0 SetupTabButton::Draw(bool, bool)
void __fastcall Draw__14SetupTabButtonFbb(struct SetupTabButton* this, const void* edx, bool hovered, bool selected);
// win1.41 0040f670 mac 1037abd0 SetupTabButton::KeyDown(int, int)
void __fastcall KeyDown__14SetupTabButtonFii(struct SetupTabButton* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
// win1.41 0040f690 mac 10369440 SetupTabButton::~SetupTabButton(void)
struct SetupTabButton* __fastcall __dt__14SetupTabButtonFb(struct SetupTabButton* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_TAB_BUTTON_INCLUDED_H */
