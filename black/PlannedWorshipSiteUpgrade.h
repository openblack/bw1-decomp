#ifndef BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H
#define BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedFeature.h" /* For struct PlannedFeature */

// Forward Declares

struct Base;
struct MultiMapFixed;
struct PlannedMultiMapFixed;

struct PlannedWorshipSiteUpgrade
{
  struct PlannedFeature super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedWorshipSiteUpgrade) == 0x48, "Data type is of wrong size");

// Override methods

// win1.41 0077ee70 mac inlined PlannedWorshipSiteUpgrade::_dt(void)
void __fastcall __dt__25PlannedWorshipSiteUpgradeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlannedWorshipSiteUpgrade@@UAEPAXI@Z");
// win1.41 0077eea0 mac inlined PlannedWorshipSiteUpgrade::CreatePlanned(float)
struct MultiMapFixed* __fastcall CreatePlanned__25PlannedWorshipSiteUpgradeFf(struct PlannedMultiMapFixed* this, const void* edx, float param_1) asm("?CreatePlanned@PlannedWorshipSiteUpgrade@@UAEPAVMultiMapFixed@@M@Z");

#endif /* BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H */
