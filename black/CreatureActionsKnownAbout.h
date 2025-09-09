#ifndef BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct CreatureActionsKnownAbout
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8[0x2][0x2];
};
static_assert(sizeof(struct CreatureActionsKnownAbout) == 0x18, "Data type is of wrong size");

// Override methods

// win1.41 004e2230 mac 10266a40 CreatureActionsKnownAbout::_dt(void)
void __fastcall __dt__25CreatureActionsKnownAboutFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureActionsKnownAbout@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H */
