#ifndef BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GShowNeedsInfo
{
  struct GObjectInfo super;  /* 0x0 */
  uint8_t field_0x100[0x14];
};
static_assert(sizeof(struct GShowNeedsInfo) == 0x114, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22148 mac inlined GShowNeedsInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GShowNeedsInfo asm("??_R0?AVGShowNeedsInfo@@@8");
// win1.41 009b9060 mac inlined GShowNeedsInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GShowNeedsInfo asm("??_R1A@?0A@A@GShowNeedsInfo@@8");
// win1.41 009b9078 mac inlined GShowNeedsInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GShowNeedsInfo asm("??_R2GShowNeedsInfo@@8");
// win1.41 009b9090 mac inlined GShowNeedsInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GShowNeedsInfo asm("??_R3GShowNeedsInfo@@8");
// win1.41 009572c4 mac 1075b5a8 GShowNeedsInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14GShowNeedsInfo asm("??_R4GShowNeedsInfo@@6B@");
// win1.41 009572c8 mac 1075b5b0 GShowNeedsInfo::`vftable'
extern const struct ObjectVftable __vt__14GShowNeedsInfo asm("??_7GShowNeedsInfo@@6B@");

// Override methods

// win1.41 00719a80 mac 10146040 GShowNeedsInfo::_dt(void)
void __fastcall __dt__14GShowNeedsInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGShowNeedsInfo@@UAEPAXI@Z");
// win1.41 00719a10 mac 101461f0 GShowNeedsInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GShowNeedsInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GShowNeedsInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 00719a00 mac 10144960 GShowNeedsInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__14GShowNeedsInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GShowNeedsInfo@@UBEIXZ");

#endif /* BW1_DECOMP_SHOW_NEEDS_INFO_INCLUDED_H */
