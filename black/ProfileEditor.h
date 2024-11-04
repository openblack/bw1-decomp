#ifndef BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H
#define BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct ProfileEditor
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0x48];
};
static_assert(sizeof(struct ProfileEditor) == 0x58, "Data type is of wrong size");

static struct DialogBoxBaseVftable* const __vt__13ProfileEditor = (struct DialogBoxBaseVftable* const)0x008dec6c;

#endif /* BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H */
