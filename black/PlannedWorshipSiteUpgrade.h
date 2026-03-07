#ifndef BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H
#define BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "PlannedFeature.h" /* For struct PlannedFeature */

#ifdef __cplusplus

// Forward Declares

class Base;
class MultiMapFixed;
class PlannedMultiMapFixed;

// win1.41 00c24de0 mac inlined PlannedWorshipSiteUpgrade::`RTTI Type Descriptor'
// win1.41 009ba448 mac inlined PlannedWorshipSiteUpgrade::`RTTI Base Class Descriptor'
// win1.41 009ba460 mac inlined PlannedWorshipSiteUpgrade::`RTTI Base Class Array'
// win1.41 009ba480 mac inlined PlannedWorshipSiteUpgrade::`RTTI Class Hierarchy Descriptor'
class PlannedWorshipSiteUpgrade: public PlannedFeature
{
public:

    // Override methods

    // win1.41 0077ee70 mac inlined PlannedWorshipSiteUpgrade::_dt(void)
    virtual ~PlannedWorshipSiteUpgrade();
    // win1.41 0077eea0 mac inlined PlannedWorshipSiteUpgrade::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
};

#else // __cplusplus

// Forward Declares

struct Base;
struct MultiMapFixed;
struct PlannedMultiMapFixed;

struct PlannedWorshipSiteUpgrade
{
  struct PlannedFeature super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedWorshipSiteUpgrade) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24de0 mac inlined PlannedWorshipSiteUpgrade::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25PlannedWorshipSiteUpgrade asm("??_R0?AVPlannedWorshipSiteUpgrade@@@8");
// win1.41 009ba448 mac inlined PlannedWorshipSiteUpgrade::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25PlannedWorshipSiteUpgrade asm("??_R1A@?0A@A@PlannedWorshipSiteUpgrade@@8");
// win1.41 009ba460 mac inlined PlannedWorshipSiteUpgrade::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25PlannedWorshipSiteUpgrade asm("??_R2PlannedWorshipSiteUpgrade@@8");
// win1.41 009ba480 mac inlined PlannedWorshipSiteUpgrade::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25PlannedWorshipSiteUpgrade asm("??_R3PlannedWorshipSiteUpgrade@@8");

// Override methods

// win1.41 0077ee70 mac inlined PlannedWorshipSiteUpgrade::_dt(void)
void __fastcall __dt__25PlannedWorshipSiteUpgradeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedWorshipSiteUpgrade@@UAEPAXI@Z");
// win1.41 0077eea0 mac inlined PlannedWorshipSiteUpgrade::CreatePlanned(float)
struct MultiMapFixed* __fastcall CreatePlanned__25PlannedWorshipSiteUpgradeFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlanned@PlannedWorshipSiteUpgrade@@UAEPAVMultiMapFixed@@M@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H */
