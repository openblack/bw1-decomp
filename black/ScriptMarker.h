#ifndef BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H
#define BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct ScriptMarker
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct ScriptMarker) == 0x28, "Data type is of wrong size");

static struct GameThingWithPosVftable* __vt__12ScriptMarker = (struct GameThingWithPosVftable*)0x008e10b0;

#endif /* BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H */
