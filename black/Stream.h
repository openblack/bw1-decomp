#ifndef BW1_DECOMP_STREAM_INCLUDED_H
#define BW1_DECOMP_STREAM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThing.h" /* For struct GameThing */

struct GStream
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x14];
};
static_assert(sizeof(struct GStream) == 0x28, "Data type is of wrong size");

// win1.41 008ebb44 mac 1075dd20 GStream::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__7GStream asm("??_R4GStream@@6B@");

// win1.41 008ebb48 mac 1075dd28 GStream::`vftable'
extern const struct GameThingVftable __vt__7GStream asm("??_7GStream@@6B@");

// Static methods

// win1.41 00733ff0 mac 10154580 GStream::CreateAll(void)
void __cdecl CreateAll__7GStreamFv(void);

DECLARE_LH_LIST_HEAD(GStream);

#endif /* BW1_DECOMP_STREAM_INCLUDED_H */
