#ifndef BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MobileInfo.h" /* For struct GMobileInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;

struct GMobileObjectInfo
{
  struct GMobileInfo super;  /* 0x0 */
  uint8_t field_0x104[0x10];
};
static_assert(sizeof(struct GMobileObjectInfo) == 0x114, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9658 mac inlined GMobileObjectInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17GMobileObjectInfo asm("??_R0?AVGMobileObjectInfo@@@8");
// win1.41 009a7ae8 mac inlined GMobileObjectInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17GMobileObjectInfo asm("??_R1A@?0A@A@GMobileObjectInfo@@8");
// win1.41 009b1fe8 mac inlined GMobileObjectInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17GMobileObjectInfo asm("??_R2GMobileObjectInfo@@8");
// win1.41 009b2000 mac inlined GMobileObjectInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17GMobileObjectInfo asm("??_R3GMobileObjectInfo@@8");
// win1.41 009305c8 mac 10736eec GMobileObjectInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17GMobileObjectInfo asm("??_R4GMobileObjectInfo@@6B@");
// win1.41 009305cc mac 10736ef4 GMobileObjectInfo::`vftable'
extern const struct GBaseInfoVftable __vt__17GMobileObjectInfo asm("??_7GMobileObjectInfo@@6B@");

// Constructors

// win1.41 inlined mac 100ad720 GMobileObjectInfo::GMobileObjectInfo(void)
struct GMobileObjectInfo* __fastcall __ct__17GMobileObjectInfoFv(struct GMobileObjectInfo* this) asm("??0GMobileObjectInfo@@QAE@XZ");

// Override methods

// win1.41 00606e10 mac 100ad680 GMobileObjectInfo::_dt(void)
void __fastcall __dt__17GMobileObjectInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMobileObjectInfo@@UAEPAXI@Z");
// win1.41 00606da0 mac 100ad7d0 GMobileObjectInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__17GMobileObjectInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GMobileObjectInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 00425920 mac 100ad790 GMobileObjectInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__17GMobileObjectInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GMobileObjectInfo@@UBEIXZ");

#endif /* BW1_DECOMP_MOBILE_OBJECT_INFO_INCLUDED_H */
