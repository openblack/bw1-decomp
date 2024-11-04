#ifndef BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H
#define BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct NewProfileBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x14];
};
static_assert(sizeof(struct NewProfileBox) == 0x24, "Data type is of wrong size");

static struct DialogBoxBaseVftable* __vt__13NewProfileBox = (struct DialogBoxBaseVftable*)0x008dec1c;

#endif /* BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H */
