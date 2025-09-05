#ifndef BW1_DECOMP_SCAFFOLD_INCLUDED_H
#define BW1_DECOMP_SCAFFOLD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MobileObject.h" /* For struct MobileObject */

struct Scaffold
{
  struct MobileObject super;  /* 0x0 */
  uint8_t field_0x68[0x34];
};
static_assert(sizeof(struct Scaffold) == 0x9c, "Data type is of wrong size");

// win1.41 008e5528 mac 1075a2f8 Scaffold::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8Scaffold asm("??_R4Scaffold@@6B@");

// win1.41 008e552c mac 1075a300 Scaffold::`vftable'
extern const struct MobileObjectVftable __vt__8Scaffold asm("??_7Scaffold@@6B@");

#endif /* BW1_DECOMP_SCAFFOLD_INCLUDED_H */
