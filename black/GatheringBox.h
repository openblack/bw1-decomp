#ifndef BW1_DECOMP_GATHERING_BOX_INCLUDED_H
#define BW1_DECOMP_GATHERING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct GatheringBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xe0];
};
static_assert(sizeof(struct GatheringBox) == 0xf0, "Data type is of wrong size");

// win1.41 008deb28 mac 1099afbc GatheringBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12GatheringBox asm("??_R4GatheringBox@@6B@");

// win1.41 008deb2c mac 1099afc4 GatheringBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__12GatheringBox asm("??_7GatheringBox@@6B@");

#endif /* BW1_DECOMP_GATHERING_BOX_INCLUDED_H */
