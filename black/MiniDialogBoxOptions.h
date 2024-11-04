#ifndef BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupSlider;
struct SetupStaticText;

struct MiniDialogBoxOptions
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupSlider* field_0x10;
  struct SetupSlider* field_0x14;
  struct SetupBigButton* field_0x18;
  struct SetupBigButton* field_0x1c;
  struct SetupBigButton* field_0x20;
  struct SetupBigButton* field_0x24;
  struct SetupStaticText* field_0x28;
  struct SetupStaticText* field_0x2c;
  struct SetupStaticText* field_0x30;
  struct SetupCheckBox* field_0x34;
  struct SetupCheckBox* field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  struct SetupButton* field_0x44;
};
static_assert(sizeof(struct MiniDialogBoxOptions) == 0x48, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__20MiniDialogBoxOptions = (struct DialogBoxBaseVftable* const)0x008d866c;

// Constructors

// win1.41 00514f20 mac inlined MiniDialogBoxOptions::MiniDialogBoxOptions(void)
struct MiniDialogBoxOptions* __fastcall __ct__20MiniDialogBoxOptions(struct MiniDialogBoxOptions* this);

#endif /* BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H */
