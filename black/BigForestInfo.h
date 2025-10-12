#ifndef BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;
struct GObjectInfo;

struct GBigForestInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint8_t field_0x120[0x8];
};
static_assert(sizeof(struct GBigForestInfo) == 0x128, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd2a0 mac inlined GBigForestInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GBigForestInfo asm("??_R0?AVGBigForestInfo@@@8");
// win1.41 009a8440 mac inlined GBigForestInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GBigForestInfo asm("??_R1A@?0A@A@GBigForestInfo@@8");
// win1.41 009a8458 mac inlined GBigForestInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GBigForestInfo asm("??_R2GBigForestInfo@@8");
// win1.41 009a8470 mac inlined GBigForestInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GBigForestInfo asm("??_R3GBigForestInfo@@8");
// win1.41 008c58b4 mac 1073865c GBigForestInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14GBigForestInfo asm("??_R4GBigForestInfo@@6B@");
// win1.41 008c58b8 mac 10738664 GBigForestInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__14GBigForestInfo asm("??_7GBigForestInfo@@6B@");

// Override methods

// win1.41 00438cb0 mac 100b33d0 GBigForestInfo::_dt(void)
void __fastcall __dt__14GBigForestInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGBigForestInfo@@UAEPAXI@Z");
// win1.41 00438c50 mac 100b2530 GBigForestInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__14GBigForestInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GBigForestInfo@@UBEIXZ");

#endif /* BW1_DECOMP_BIG_FOREST_INFO_INCLUDED_H */
