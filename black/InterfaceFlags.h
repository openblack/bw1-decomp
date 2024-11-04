#ifndef BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H
#define BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct GInterfaceFlags
{
  struct Base super;  /* 0x0 */
  int field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
};
static_assert(sizeof(struct GInterfaceFlags) == 0x14, "Data type is of wrong size");

static struct BaseVftable* __vt__15GInterfaceFlags = (struct BaseVftable*)0x0092ab04;

#endif /* BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H */
