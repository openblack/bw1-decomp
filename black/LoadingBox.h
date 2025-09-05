#ifndef BW1_DECOMP_LOADING_BOX_INCLUDED_H
#define BW1_DECOMP_LOADING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LoadingBox
{
  struct DialogBoxBase super;  /* 0x0 */
};
static_assert(sizeof(struct LoadingBox) == 0x10, "Data type is of wrong size");

// win1.41 008deb50 mac 109ed8d4 LoadingBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10LoadingBox asm("??_R4LoadingBox@@6B@");

// win1.41 008deb54 mac 109ed8dc LoadingBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10LoadingBox asm("??_7LoadingBox@@6B@");

#endif /* BW1_DECOMP_LOADING_BOX_INCLUDED_H */
