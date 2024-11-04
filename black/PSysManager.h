#ifndef BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H
#define BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "PSysBase.h" /* For struct PSysBase */

struct PSysManager
{
  struct PSysBase super;  /* 0x0 */
  uint8_t field_0x14[0xd0];
};
static_assert(sizeof(struct PSysManager) == 0xe4, "Data type is of wrong size");

static struct GameThingVftable* __vt__11PSysManager = (struct GameThingVftable*)0x009353c0;

#endif /* BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H */
