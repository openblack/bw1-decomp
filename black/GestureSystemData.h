#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Base.h" /* For struct Base */

struct GestureSystemData
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x654];
};
static_assert(sizeof(struct GestureSystemData) == 0x65c, "Data type is of wrong size");

// win1.41 008df7dc mac 107330c0 GestureSystemData::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17GestureSystemData asm("??_R4GestureSystemData@@6B@");

// win1.41 008df7e0 mac 107330c8 GestureSystemData::`vftable'
extern const struct BaseVftable __vt__17GestureSystemData asm("??_7GestureSystemData@@6B@");

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H */
