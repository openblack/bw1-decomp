#ifndef BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

#ifdef __cplusplus

// Forward Declares

class Base;

// win1.41 00be0008 mac inlined CreatureMimicInfo::`RTTI Type Descriptor'
// win1.41 009ab128 mac inlined CreatureMimicInfo::`RTTI Base Class Descriptor'
// win1.41 009ab140 mac inlined CreatureMimicInfo::`RTTI Base Class Array'
// win1.41 009ab150 mac inlined CreatureMimicInfo::`RTTI Class Hierarchy Descriptor'
class CreatureMimicInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 004e9cf0 mac 1026ea60 CreatureMimicInfo::_dt(void)
    virtual ~CreatureMimicInfo();
    // win1.41 004e9c80 mac 1026ff90 CreatureMimicInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#else // __cplusplus

// Forward Declares

struct Base;

struct CreatureMimicInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureMimicInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be0008 mac inlined CreatureMimicInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17CreatureMimicInfo asm("??_R0?AVCreatureMimicInfo@@@8");
// win1.41 009ab128 mac inlined CreatureMimicInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17CreatureMimicInfo asm("??_R1A@?0A@A@CreatureMimicInfo@@8");
// win1.41 009ab140 mac inlined CreatureMimicInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17CreatureMimicInfo asm("??_R2CreatureMimicInfo@@8");
// win1.41 009ab150 mac inlined CreatureMimicInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17CreatureMimicInfo asm("??_R3CreatureMimicInfo@@8");

// Override methods

// win1.41 004e9cf0 mac 1026ea60 CreatureMimicInfo::_dt(void)
void __fastcall __dt__17CreatureMimicInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureMimicInfo@@UAEPAXI@Z");
// win1.41 004e9c80 mac 1026ff90 CreatureMimicInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__17CreatureMimicInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureMimicInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H */
