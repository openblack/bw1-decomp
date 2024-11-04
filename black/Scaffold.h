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

static struct MobileObjectVftable* const __vt__8Scaffold = (struct MobileObjectVftable* const)0x008e552c;

#endif /* BW1_DECOMP_SCAFFOLD_INCLUDED_H */
