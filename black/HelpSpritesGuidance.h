#ifndef BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H
#define BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GHelpSpritesGuidance
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GHelpSpritesGuidance) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 0071aa60 mac 1050d8c0 GHelpSpritesGuidance::_dt(void)
void __fastcall __dt__20GHelpSpritesGuidanceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGHelpSpritesGuidance@@UAEPAXI@Z");
// win1.41 0071a9f0 mac 105128d0 GHelpSpritesGuidance::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__20GHelpSpritesGuidanceFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GHelpSpritesGuidance@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H */
