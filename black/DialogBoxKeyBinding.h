#ifndef BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupList;

struct DialogBoxKeyBinding
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10;
  uint8_t field_0x11;
  uint8_t field_0x12;
  uint8_t field_0x13;
  uint8_t field_0x14;
  uint8_t field_0x15;
  uint8_t field_0x16;
  uint8_t field_0x17;
  struct SetupList* list;
};
static_assert(sizeof(struct DialogBoxKeyBinding) == 0x1c, "Data type is of wrong size");

// win1.41 008d859c mac 10998f98 DialogBoxKeyBinding::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__19DialogBoxKeyBinding asm("??_R4DialogBoxKeyBinding@@6B@");

// win1.41 008d85a0 mac 10998fa0 DialogBoxKeyBinding::`vftable'
extern const struct DialogBoxBaseVftable __vt__19DialogBoxKeyBinding asm("??_7DialogBoxKeyBinding@@6B@");

// Constructors

// win1.41 005127b0 mac 102b1e90 DialogBoxKeyBinding::DialogBoxKeyBinding(void)
struct DialogBoxKeyBinding* __fastcall __ct__19DialogBoxKeyBindingFv(struct DialogBoxKeyBinding* this);

// Override methods

// win1.41 00512bd0 mac 102b1750 DialogBoxKeyBinding::InitControls(void)
void __fastcall InitControls__19DialogBoxKeyBindingFv(struct DialogBoxBase* this);

#endif /* BW1_DECOMP_DIALOG_BOX_KEY_BINDING_INCLUDED_H */
