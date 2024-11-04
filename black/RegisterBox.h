#ifndef BW1_DECOMP_REGISTER_BOX_INCLUDED_H
#define BW1_DECOMP_REGISTER_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct RegisterBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x18];
};
static_assert(sizeof(struct RegisterBox) == 0x28, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__11RegisterBox = (struct DialogBoxBaseVftable* const)0x008debcc;

#endif /* BW1_DECOMP_REGISTER_BOX_INCLUDED_H */
