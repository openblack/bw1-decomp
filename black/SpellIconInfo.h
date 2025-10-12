#ifndef BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;

struct GSpellIconInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint32_t field_0x120;
  uint32_t field_0x124;
  uint32_t field_0x128;
};
static_assert(sizeof(struct GSpellIconInfo) == 0x12c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22668 mac inlined GSpellIconInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GSpellIconInfo asm("??_R0?AVGSpellIconInfo@@@8");
// win1.41 009b9398 mac inlined GSpellIconInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GSpellIconInfo asm("??_R1A@?0A@A@GSpellIconInfo@@8");
// win1.41 009b93b0 mac inlined GSpellIconInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GSpellIconInfo asm("??_R2GSpellIconInfo@@8");
// win1.41 009b93c8 mac inlined GSpellIconInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GSpellIconInfo asm("??_R3GSpellIconInfo@@8");
// win1.41 00981a54 mac 109dc3c4 GSpellIconInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14GSpellIconInfo asm("??_R4GSpellIconInfo@@6B@");
// win1.41 00981a58 mac 109dc3cc GSpellIconInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__14GSpellIconInfo asm("??_7GSpellIconInfo@@6B@");

// Override methods

// win1.41 00725fb0 mac 10525b60 GSpellIconInfo::_dt(void)
void __fastcall __dt__14GSpellIconInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpellIconInfo@@UAEPAXI@Z");
// win1.41 00725f40 mac 10525c70 GSpellIconInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GSpellIconInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpellIconInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 00725f30 mac 10524c10 GSpellIconInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__14GSpellIconInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GSpellIconInfo@@UBEIXZ");

#endif /* BW1_DECOMP_SPELL_ICON_INFO_INCLUDED_H */
