#ifndef BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H
#define BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GHelpSpritesGuidance
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GHelpSpritesGuidance) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c221d8 mac inlined GHelpSpritesGuidance::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20GHelpSpritesGuidance asm("??_R0?AVGHelpSpritesGuidance@@@8");
// win1.41 009b9108 mac inlined GHelpSpritesGuidance::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20GHelpSpritesGuidance asm("??_R1A@?0A@A@GHelpSpritesGuidance@@8");
// win1.41 009b9120 mac inlined GHelpSpritesGuidance::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20GHelpSpritesGuidance asm("??_R2GHelpSpritesGuidance@@8");
// win1.41 009b9130 mac inlined GHelpSpritesGuidance::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20GHelpSpritesGuidance asm("??_R3GHelpSpritesGuidance@@8");

// Non-virtual methods

// win1.41 0071d300 mac 1050d290 GHelpSpritesGuidance::GetRandomSample(void) const
uint32_t __fastcall GetRandomSample__20GHelpSpritesGuidanceCFv(const struct GHelpSpritesGuidance* this) asm("?GetRandomSample@GHelpSpritesGuidance@@QBEIXZ");

// Override methods

// win1.41 0071aa60 mac 1050d8c0 GHelpSpritesGuidance::_dt(void)
void __fastcall __dt__20GHelpSpritesGuidanceFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGHelpSpritesGuidance@@UAEPAXI@Z");
// win1.41 0071a9f0 mac 105128d0 GHelpSpritesGuidance::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__20GHelpSpritesGuidanceFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GHelpSpritesGuidance@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H */
