#ifndef BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H
#define BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct HelpSpiritInfo
{
  struct GLivingInfo super;  /* 0x0 */
};
static_assert(sizeof(struct HelpSpiritInfo) == 0x1f4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf0be8 mac inlined HelpSpiritInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14HelpSpiritInfo asm("??_R0?AVHelpSpiritInfo@@@8");
// win1.41 009b1298 mac inlined HelpSpiritInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14HelpSpiritInfo asm("??_R1A@?0A@A@HelpSpiritInfo@@8");
// win1.41 009b12b0 mac inlined HelpSpiritInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14HelpSpiritInfo asm("??_R2HelpSpiritInfo@@8");
// win1.41 009b12d0 mac inlined HelpSpiritInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14HelpSpiritInfo asm("??_R3HelpSpiritInfo@@8");

// Override methods

// win1.41 005c4a70 mac 1034c8b0 HelpSpiritInfo::_dt(void)
void __fastcall __dt__14HelpSpiritInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GHelpSpiritInfo@@UAEPAXI@Z");
// win1.41 005c4a00 mac 1034c9c0 HelpSpiritInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14HelpSpiritInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@HelpSpiritInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H */
