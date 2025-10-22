#ifndef BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;

struct GMobileStaticInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint8_t field_0x120[0xc];
};
static_assert(sizeof(struct GMobileStaticInfo) == 0x12c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4260 mac inlined GMobileStaticInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17GMobileStaticInfo asm("??_R0?AVGMobileStaticInfo@@@8");
// win1.41 009b2028 mac inlined GMobileStaticInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17GMobileStaticInfo asm("??_R1A@?0A@A@GMobileStaticInfo@@8");
// win1.41 009b2040 mac inlined GMobileStaticInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17GMobileStaticInfo asm("??_R2GMobileStaticInfo@@8");
// win1.41 009b2058 mac inlined GMobileStaticInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17GMobileStaticInfo asm("??_R3GMobileStaticInfo@@8");
// win1.41 00930608 mac 109acc58 GMobileStaticInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17GMobileStaticInfo asm("??_R4GMobileStaticInfo@@6B@");
// win1.41 0093060c mac 109acc60 GMobileStaticInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__17GMobileStaticInfo asm("??_7GMobileStaticInfo@@6B@");

// Static methods

// win1.41 005ff2f0 mac 103c1190 GMobileStaticInfo::GetInfo(void)
struct GMobileStaticInfo* __cdecl GetInfo__17GMobileStaticInfoFv(void) asm("?GetInfo@GMobileStaticInfo@@SAPAV1@XZ");

// Override methods

// win1.41 00608560 mac 103be790 GMobileStaticInfo::_dt(void)
void __fastcall __dt__17GMobileStaticInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMobileStaticInfo@@UAEPAXI@Z");
// win1.41 006084f0 mac 103c1240 GMobileStaticInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__17GMobileStaticInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GMobileStaticInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 006084e0 mac 10050090 GMobileStaticInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__17GMobileStaticInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GMobileStaticInfo@@UBEIXZ");

#endif /* BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H */
