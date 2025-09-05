#ifndef BW1_DECOMP_FOOTBALL_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Abode.h" /* For struct Abode */

struct Football
{
  struct Abode super;  /* 0x0 */
  uint8_t field_0xc4[0x254];
};
static_assert(sizeof(struct Football) == 0x318, "Data type is of wrong size");

// win1.41 008dd644 mac 109993e8 Football::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8Football asm("??_R4Football@@6B@");

// win1.41 008dd648 mac 109993f0 Football::`vftable'
extern const struct AbodeVftable __vt__8Football asm("??_7Football@@6B@");

#endif /* BW1_DECOMP_FOOTBALL_INCLUDED_H */
