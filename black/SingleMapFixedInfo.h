#ifndef BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H
#define BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "ObjectInfo.h" /* For struct GObjectInfo, struct GObjectInfoVftable */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GSingleMapFixedInfoVftable
{
  struct GObjectInfoVftable super;  /* 0x0 */
};
static_assert(sizeof(struct GSingleMapFixedInfoVftable) == 0x3c, "Data type is of wrong size");

union GSingleMapFixedInfoBase
{
  struct GObjectInfo super;
  struct GSingleMapFixedInfoVftable* vftable;
};
static_assert(sizeof(union GSingleMapFixedInfoBase) == 0x100, "Data type is of wrong size");

struct GSingleMapFixedInfo
{
  union GSingleMapFixedInfoBase base;  /* 0x0 */
};
static_assert(sizeof(struct GSingleMapFixedInfo) == 0x100, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9e88 mac inlined GSingleMapFixedInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19GSingleMapFixedInfo asm("??_R0?AVGSingleMapFixedInfo@@@8");
// win1.41 009ac3a0 mac inlined GSingleMapFixedInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19GSingleMapFixedInfo asm("??_R1A@?0A@A@GSingleMapFixedInfo@@8");
// win1.41 009ac3b8 mac inlined GSingleMapFixedInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19GSingleMapFixedInfo asm("??_R2GSingleMapFixedInfo@@8");
// win1.41 009ac3d0 mac inlined GSingleMapFixedInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19GSingleMapFixedInfo asm("??_R3GSingleMapFixedInfo@@8");
// win1.41 008db6d8 mac 10740ce8 GSingleMapFixedInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__19GSingleMapFixedInfo asm("??_R4GSingleMapFixedInfo@@6B@");
// win1.41 008db6dc mac 10740cf0 GSingleMapFixedInfo::`vftable'
extern const struct GSingleMapFixedInfoVftable __vt__19GSingleMapFixedInfo asm("??_7GSingleMapFixedInfo@@6B@");

// Override methods

// win1.41 0052dd50 mac 100e2210 GSingleMapFixedInfo::_dt(void)
void __fastcall __dt__19GSingleMapFixedInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSingleMapFixedInfo@@UAEPAXI@Z");
// win1.41 0052dce0 mac 100e3150 GSingleMapFixedInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__19GSingleMapFixedInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSingleMapFixedInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 0052dcd0 mac 100c3840 GSingleMapFixedInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__19GSingleMapFixedInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GSingleMapFixedInfo@@UBEIXZ");

#endif /* BW1_DECOMP_SINGLE_MAP_FIXED_INFO_INCLUDED_H */
