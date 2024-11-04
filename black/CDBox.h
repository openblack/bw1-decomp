#ifndef BW1_DECOMP_CD_BOX_INCLUDED_H
#define BW1_DECOMP_CD_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct CDBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x24];
};
static_assert(sizeof(struct CDBox) == 0x34, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__5CDBox = (struct DialogBoxBaseVftable* const)0x008deb04;

#endif /* BW1_DECOMP_CD_BOX_INCLUDED_H */
