#ifndef BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H
#define BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

struct GSpookyVoices
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct GSpookyVoices) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 0072e250 mac 10148e30 GSpookyVoices::_dt(void)
void __fastcall __dt__13GSpookyVoicesFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpookyVoices@@UAEPAXI@Z");

#endif /* BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H */
