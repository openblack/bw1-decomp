#ifndef BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GMagicFireBallInfo
{
  struct GObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicFireBallInfo) == 0x100, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c023c0 mac inlined GMagicFireBallInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18GMagicFireBallInfo asm("??_R0?AVGMagicFireBallInfo@@@8");
// win1.41 009b3ac8 mac inlined GMagicFireBallInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18GMagicFireBallInfo asm("??_R1A@?0A@A@GMagicFireBallInfo@@8");
// win1.41 009b3ae0 mac inlined GMagicFireBallInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18GMagicFireBallInfo asm("??_R2GMagicFireBallInfo@@8");
// win1.41 009b3af8 mac inlined GMagicFireBallInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18GMagicFireBallInfo asm("??_R3GMagicFireBallInfo@@8");

// Override methods

// win1.41 00682910 mac 103fbe00 GMagicFireBallInfo::_dt(void)
void __fastcall __dt__18GMagicFireBallInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicFireBallInfo@@UAEPAXI@Z");
// win1.41 006828a0 mac 103fce80 GMagicFireBallInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__18GMagicFireBallInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GMagicFireBallInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_MAGIC_FIRE_BALL_INFO_INCLUDED_H */
