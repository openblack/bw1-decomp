#ifndef BW1_DECOMP_CREATURE_DIRECT_CONTROL_INCLUDED_H
#define BW1_DECOMP_CREATURE_DIRECT_CONTROL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct CreatureCommand
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureCommand) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004c7420 mac inlined CreatureCommand::_dt(void)
void __fastcall __dt__15CreatureCommandFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureCommand@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_DIRECT_CONTROL_INCLUDED_H */
