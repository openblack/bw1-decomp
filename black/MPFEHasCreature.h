#ifndef BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H
#define BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEHasCreature
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEHasCreature) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00628010 mac inlined MPFEHasCreature::_dt(void)
void __fastcall __dt__15MPFEHasCreatureFv(struct MPFEMessageObject* this) asm("??_GMPFEHasCreature@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H */
