#ifndef BW1_DECOMP_SKIP_BOX_INCLUDED_H
#define BW1_DECOMP_SKIP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SkipBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x14];
};
static_assert(sizeof(struct SkipBox) == 0x24, "Data type is of wrong size");

// win1.41 008dead8 mac 109ed6d4 SkipBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__7SkipBox asm("??_R4SkipBox@@6B@");

// win1.41 008deadc mac 109ed6dc SkipBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__7SkipBox asm("??_7SkipBox@@6B@");

#endif /* BW1_DECOMP_SKIP_BOX_INCLUDED_H */
