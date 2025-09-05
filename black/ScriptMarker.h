#ifndef BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H
#define BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct ScriptMarker
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct ScriptMarker) == 0x28, "Data type is of wrong size");

// win1.41 008e10ac mac 109c17cc ScriptMarker::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12ScriptMarker asm("??_R4ScriptMarker@@6B@");

// win1.41 008e10b0 mac 106fa474 ScriptMarker::`vftable'
extern const struct GameThingWithPosVftable __vt__12ScriptMarker asm("??_7ScriptMarker@@6B@");

#endif /* BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H */
