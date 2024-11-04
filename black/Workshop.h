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

static struct AbodeVftable* const __vt__8Workshop = (struct AbodeVftable* const)0x0099bb20;

#endif /* BW1_DECOMP_WORKSHOP_INCLUDED_H */
