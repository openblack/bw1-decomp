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

static struct BuildingSiteVftable* __vt__20StandardBuildingSite = (struct BuildingSiteVftable*)0x008c6df4;

#endif /* BW1_DECOMP_STANDARD_BUILDING_SITE_INCLUDED_H */
