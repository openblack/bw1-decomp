#ifndef BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H
#define BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;

struct GTotemStatueInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint32_t field_0x120;
};
static_assert(sizeof(struct GTotemStatueInfo) == 0x124, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22b48 mac inlined GTotemStatueInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GTotemStatueInfo asm("??_R0?AVGTotemStatueInfo@@@8");
// win1.41 009b9990 mac inlined GTotemStatueInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GTotemStatueInfo asm("??_R1A@?0A@A@GTotemStatueInfo@@8");
// win1.41 009b99a8 mac inlined GTotemStatueInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GTotemStatueInfo asm("??_R2GTotemStatueInfo@@8");
// win1.41 009b99c0 mac inlined GTotemStatueInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GTotemStatueInfo asm("??_R3GTotemStatueInfo@@8");
// win1.41 00999a44 mac 109e33a8 GTotemStatueInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16GTotemStatueInfo asm("??_R4GTotemStatueInfo@@6B@");
// win1.41 00999a48 mac 109e33b0 GTotemStatueInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__16GTotemStatueInfo asm("??_7GTotemStatueInfo@@6B@");

// Override methods

// win1.41 00737af0 mac 10545400 GTotemStatueInfo::_dt(void)
void __fastcall __dt__16GTotemStatueInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGTotemStatueInfo@@UAEPAXI@Z");
// win1.41 00737a80 mac 10545af0 GTotemStatueInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GTotemStatueInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GTotemStatueInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 00737a70 mac 10543c90 GTotemStatueInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__16GTotemStatueInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GTotemStatueInfo@@UBEIXZ");

#endif /* BW1_DECOMP_TOTEM_STATUE_INFO_INCLUDED_H */
