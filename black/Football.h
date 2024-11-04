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

static struct AbodeVftable* __vt__8Football = (struct AbodeVftable*)0x008dd648;

#endif /* BW1_DECOMP_FOOTBALL_INCLUDED_H */
