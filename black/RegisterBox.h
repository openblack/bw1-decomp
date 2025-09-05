#ifndef BW1_DECOMP_REGISTER_BOX_INCLUDED_H
#define BW1_DECOMP_REGISTER_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct RegisterBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x18];
};
static_assert(sizeof(struct RegisterBox) == 0x28, "Data type is of wrong size");

// win1.41 008debc8 mac 109ed854 RegisterBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__11RegisterBox asm("??_R4RegisterBox@@6B@");

// win1.41 008debcc mac 109ed85c RegisterBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__11RegisterBox asm("??_7RegisterBox@@6B@");

#endif /* BW1_DECOMP_REGISTER_BOX_INCLUDED_H */
