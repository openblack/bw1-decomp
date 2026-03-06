#ifndef BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H
#define BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

#ifdef __cplusplus

// Forward Declares

class Base;

// win1.41 00bf19d0 mac inlined GToolTipsInfo::`RTTI Type Descriptor'
// win1.41 009b13f0 mac inlined GToolTipsInfo::`RTTI Base Class Descriptor'
// win1.41 009b1408 mac inlined GToolTipsInfo::`RTTI Base Class Array'
// win1.41 009b1418 mac inlined GToolTipsInfo::`RTTI Class Hierarchy Descriptor'
class GToolTipsInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 005c9a40 mac 10354310 GToolTipsInfo::_dt(void)
    virtual ~GToolTipsInfo();
    // win1.41 005c99e0 mac 10354720 GToolTipsInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#else // __cplusplus

// Forward Declares

struct Base;

struct GToolTipsInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GToolTipsInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf19d0 mac inlined GToolTipsInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13GToolTipsInfo asm("??_R0?AVGToolTipsInfo@@@8");
// win1.41 009b13f0 mac inlined GToolTipsInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13GToolTipsInfo asm("??_R1A@?0A@A@GToolTipsInfo@@8");
// win1.41 009b1408 mac inlined GToolTipsInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13GToolTipsInfo asm("??_R2GToolTipsInfo@@8");
// win1.41 009b1418 mac inlined GToolTipsInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13GToolTipsInfo asm("??_R3GToolTipsInfo@@8");

// Override methods

// win1.41 005c9a40 mac 10354310 GToolTipsInfo::_dt(void)
void __fastcall __dt__13GToolTipsInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGToolTipsInfo@@UAEPAXI@Z");
// win1.41 005c99e0 mac 10354720 GToolTipsInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__13GToolTipsInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GToolTipsInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H */
