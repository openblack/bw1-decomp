#ifndef BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H
#define BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupRect.h" /* For struct SetupRect */
#include "SetupThing.h" /* For enum BBSTYLE */

struct SetupCheckBox
{
  struct SetupButton super;  /* 0x0 */
  uint32_t text_position;  /* 0x244 */
  enum BBSTYLE style;
  bool checked;
  struct SetupRect inner_rect;  /* 0x250 */
};
static_assert(sizeof(struct SetupCheckBox) == 0x260, "Data type is of wrong size");

static struct SetupControlVftable* __vt__13SetupCheckBox = (struct SetupControlVftable*)0x008ab588;

// Constructors

// win1.41 00410f10 mac 1058b890 SetupCheckBox::SetupCheckBox(int, int, int, bool, int, wchar_t *, int)
struct SetupCheckBox* __fastcall __ct__13SetupCheckBoxFiiibiPwi(struct SetupCheckBox* this, const void* edx, int id, int x, int y, bool checked, enum BBSTYLE style, const char16_t* label, int size);

// Override methods

// win1.41 00410f90 mac 10112370 SetupCheckBox::HitTest(int, int)
bool __fastcall HitTest__13SetupCheckBoxFii(struct SetupCheckBox* this, const void* edx, int x, int y);
// win1.41 00410b80 mac 103c4a20 SetupCheckBox::Draw(bool, bool)
void __fastcall Draw__13SetupCheckBoxFbb(struct SetupCheckBox* this, const void* edx, bool hovered, bool selected);
// win1.41 00411020 mac 103dbde0 SetupCheckBox::Click(int, int)
void __fastcall Click__13SetupCheckBoxFii(struct SetupCheckBox* this, const void* edx, int x, int y);
// win1.41 00411050 mac 10599580 SetupCheckBox::KeyDown(int, int)
void __fastcall KeyDown__13SetupCheckBoxFii(struct SetupCheckBox* this, const void* edx, enum LHKey key, enum LHKeyMod mod);
// win1.41 00411070 mac 105893e0 SetupCheckBox::~SetupCheckBox(void)
struct SetupCheckBox* __fastcall __dt__13SetupCheckBoxFb(struct SetupCheckBox* this, const void* edx, bool param_1);

#endif /* BW1_DECOMP_SETUP_CHECK_BOX_INCLUDED_H */
