#ifndef BW1_DECOMP_WORKSHOP_INCLUDED_H
#define BW1_DECOMP_WORKSHOP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Abode.h" /* For struct Abode */

struct Workshop
{
  struct Abode super;  /* 0x0 */
  uint8_t field_0xc4[0x24];
};
static_assert(sizeof(struct Workshop) == 0xe8, "Data type is of wrong size");

// win1.41 0099bb1c mac 1075a25c Workshop::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8Workshop asm("??_R4Workshop@@6B@");

// win1.41 0099bb20 mac 106f651c Workshop::`vftable'
extern const struct AbodeVftable __vt__8Workshop asm("??_7Workshop@@6B@");

#endif /* BW1_DECOMP_WORKSHOP_INCLUDED_H */
