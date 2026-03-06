#ifndef BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

#ifdef __cplusplus

// Forward Declares

class Base;
class GBaseInfo;

// win1.41 00c24d68 mac inlined GWorshipSiteUpgradeInfo::`RTTI Type Descriptor'
// win1.41 009ba380 mac inlined GWorshipSiteUpgradeInfo::`RTTI Base Class Descriptor'
// win1.41 009ba398 mac inlined GWorshipSiteUpgradeInfo::`RTTI Base Class Array'
// win1.41 009ba3b8 mac inlined GWorshipSiteUpgradeInfo::`RTTI Class Hierarchy Descriptor'
class GWorshipSiteUpgradeInfo: public GFeatureInfo
{
public:

    // Override methods

    // win1.41 0077ebc0 mac 105b4170 GWorshipSiteUpgradeInfo::_dt(void)
    virtual ~GWorshipSiteUpgradeInfo();
    // win1.41 0077eb70 mac 105b4210 GWorshipSiteUpgradeInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#else // __cplusplus

// Forward Declares

struct Base;
struct GBaseInfo;

struct GWorshipSiteUpgradeInfo
{
  struct GFeatureInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GWorshipSiteUpgradeInfo) == 0x120, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24d68 mac inlined GWorshipSiteUpgradeInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23GWorshipSiteUpgradeInfo asm("??_R0?AVGWorshipSiteUpgradeInfo@@@8");
// win1.41 009ba380 mac inlined GWorshipSiteUpgradeInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23GWorshipSiteUpgradeInfo asm("??_R1A@?0A@A@GWorshipSiteUpgradeInfo@@8");
// win1.41 009ba398 mac inlined GWorshipSiteUpgradeInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23GWorshipSiteUpgradeInfo asm("??_R2GWorshipSiteUpgradeInfo@@8");
// win1.41 009ba3b8 mac inlined GWorshipSiteUpgradeInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23GWorshipSiteUpgradeInfo asm("??_R3GWorshipSiteUpgradeInfo@@8");

// Override methods

// win1.41 0077ebc0 mac 105b4170 GWorshipSiteUpgradeInfo::_dt(void)
void __fastcall __dt__23GWorshipSiteUpgradeInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGWorshipSiteUpgradeInfo@@UAEPAXI@Z");
// win1.41 0077eb70 mac 105b4210 GWorshipSiteUpgradeInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__23GWorshipSiteUpgradeInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GWorshipSiteUpgradeInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H */
