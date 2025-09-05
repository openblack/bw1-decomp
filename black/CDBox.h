#ifndef BW1_DECOMP_CD_BOX_INCLUDED_H
#define BW1_DECOMP_CD_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct CDBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x24];
};
static_assert(sizeof(struct CDBox) == 0x34, "Data type is of wrong size");

// win1.41 008deb00 mac 109ed714 CDBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__5CDBox asm("??_R4CDBox@@6B@");

// win1.41 008deb04 mac 109ed71c CDBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__5CDBox asm("??_7CDBox@@6B@");

#endif /* BW1_DECOMP_CD_BOX_INCLUDED_H */
