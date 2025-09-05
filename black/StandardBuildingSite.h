#ifndef BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "BuildingSite.h" /* For struct BuildingSite */

// Forward Declares

struct Pot;

struct StandardBuildingSite
{
  struct BuildingSite super;  /* 0x0 */
  struct Pot* wood_pile;  /* 0x644 */
};
static_assert(sizeof(struct StandardBuildingSite) == 0x648, "Data type is of wrong size");

// win1.41 008c6df0 mac 10739334 StandardBuildingSite::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__20StandardBuildingSite asm("??_R4StandardBuildingSite@@6B@");

// win1.41 008c6df4 mac 1073933c StandardBuildingSite::`vftable'
extern const struct BuildingSiteVftable __vt__20StandardBuildingSite asm("??_7StandardBuildingSite@@6B@");

#endif /* BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H */
