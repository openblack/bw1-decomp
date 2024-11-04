#ifndef BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H
#define BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct TattooEditor
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x3218];
};
static_assert(sizeof(struct TattooEditor) == 0x3228, "Data type is of wrong size");

static struct DialogBoxBaseVftable* __vt__12TattooEditor = (struct DialogBoxBaseVftable*)0x008debf4;

#endif /* BW1_DECOMP_TATTOO_EDITOR_INCLUDED_H */
