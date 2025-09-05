#ifndef BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H
#define BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct NewProfileBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x14];
};
static_assert(sizeof(struct NewProfileBox) == 0x24, "Data type is of wrong size");

// win1.41 008dec18 mac 109ed914 NewProfileBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__13NewProfileBox asm("??_R4NewProfileBox@@6B@");

// win1.41 008dec1c mac 109ed91c NewProfileBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__13NewProfileBox asm("??_7NewProfileBox@@6B@");

#endif /* BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H */
