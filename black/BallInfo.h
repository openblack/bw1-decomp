#ifndef BW1_DECOMP_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GBallInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
  uint8_t field_0x114[0x2c];
};
static_assert(sizeof(struct GBallInfo) == 0x140, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd058 mac inlined GBallInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GBallInfo asm("??_R0?AVGBallInfo@@@8");
// win1.41 009a82c8 mac inlined GBallInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GBallInfo asm("??_R1A@?0A@A@GBallInfo@@8");
// win1.41 009a82e0 mac inlined GBallInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GBallInfo asm("??_R2GBallInfo@@8");
// win1.41 009a8300 mac inlined GBallInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GBallInfo asm("??_R3GBallInfo@@8");
// win1.41 008c4f30 mac 10737af4 GBallInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GBallInfo asm("??_R4GBallInfo@@6B@");
// win1.41 008c4f34 mac 10737afc GBallInfo::`vftable'
extern const struct GBaseInfoVftable __vt__9GBallInfo asm("??_7GBallInfo@@6B@");

// Override methods

// win1.41 00435980 mac 100b0ff0 GBallInfo::_dt(void)
void __fastcall __dt__9GBallInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGBallInfo@@UAEPAXI@Z");
// win1.41 00435930 mac 100b1090 GBallInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__9GBallInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GBallInfo@@UAEPAVGBaseInfo@@AAI@Z");

struct GPBallInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GPBallInfo) == 0x114, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfe048 mac inlined GPBallInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GPBallInfo asm("??_R0?AVGPBallInfo@@@8");
// win1.41 009b2ed0 mac inlined GPBallInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GPBallInfo asm("??_R1A@?0A@A@GPBallInfo@@8");
// win1.41 009b2ee8 mac inlined GPBallInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GPBallInfo asm("??_R2GPBallInfo@@8");
// win1.41 009b2f08 mac inlined GPBallInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GPBallInfo asm("??_R3GPBallInfo@@8");

// Override methods

// win1.41 0063e8c0 mac 10110ff0 GPBallInfo::_dt(void)
void __fastcall __dt__10GPBallInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPBallInfo@@UAEPAXI@Z");
// win1.41 0063e870 mac 10111090 GPBallInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__10GPBallInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPBallInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_BALL_INFO_INCLUDED_H */
