#ifndef BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct DialogBoxImmersion;
struct MiniDialogBoxOptions;
struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupSlider;

struct DialogBoxOptions
{
  struct DialogBoxBase super;  /* 0x0 */
  struct SetupButton* field_0x10;
  struct SetupBigButton* field_0x14;
  struct SetupBigButton* field_0x18;
  struct SetupButton* field_0x1c;
  struct SetupBigButton* field_0x20;
  struct SetupBigButton* field_0x24;
  struct SetupBigButton* field_0x28;
  struct SetupBigButton* field_0x2c;
  struct SetupBigButton* field_0x30;
  struct SetupCheckBox* field_0x34;
  struct SetupCheckBox* field_0x38;
  struct SetupCheckBox* field_0x3c;
  struct SetupSlider* field_0x40;
  struct SetupBigButton* field_0x44;
  int field_0x48;
  int field_0x4c;
  int field_0x50;
  uint32_t* field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
  struct MiniDialogBoxOptions* mini;  /* 0x60 */
  struct DialogBoxImmersion* immersion;
};
static_assert(sizeof(struct DialogBoxOptions) == 0x68, "Data type is of wrong size");

// win1.41 008d8618 mac 109990e8 DialogBoxOptions::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__16DialogBoxOptions asm("??_R4DialogBoxOptions@@6B@");

// win1.41 008d861c mac 109990f0 DialogBoxOptions::`vftable'
extern const struct DialogBoxBaseVftable __vt__16DialogBoxOptions asm("??_7DialogBoxOptions@@6B@");

// Constructors

// win1.41 00513810 mac 102b5740 DialogBoxOptions::DialogBoxOptions(void)
struct DialogBoxOptions* __fastcall __ct__16DialogBoxOptionsFv(struct DialogBoxOptions* this);

#endif /* BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H */
