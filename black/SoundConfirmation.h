#ifndef BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H
#define BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct GConfirmation
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct GConfirmation) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 0071a4e0 mac 1050d010 GConfirmation::_dt(void)
void __fastcall __dt__13GConfirmationFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGConfirmation@@UAEPAXI@Z");

#endif /* BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H */
