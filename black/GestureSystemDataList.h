#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Base.h" /* For struct Base */

struct GestureSystemDataList
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x8];
};
static_assert(sizeof(struct GestureSystemDataList) == 0x10, "Data type is of wrong size");

// win1.41 008df7bc mac 10733088 GestureSystemDataList::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__21GestureSystemDataList asm("??_R4GestureSystemDataList@@6B@");

// win1.41 008df7c0 mac 10733090 GestureSystemDataList::`vftable'
extern const struct BaseVftable __vt__21GestureSystemDataList asm("??_7GestureSystemDataList@@6B@");

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H */
