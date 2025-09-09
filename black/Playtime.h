#ifndef BW1_DECOMP_PLAYTIME_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;

struct Playtime
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct Playtime) == 0x14, "Data type is of wrong size");

// Override methods

// win1.41 0066c410 mac inlined Playtime::_dt(void)
void __fastcall __dt__8PlaytimeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlaytime@@UAEPAXI@Z");

#endif /* BW1_DECOMP_PLAYTIME_INCLUDED_H */
