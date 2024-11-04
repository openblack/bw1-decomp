#ifndef BW1_DECOMP_PLANNED_TOWN_CENTRE_INCLUDED_H
#define BW1_DECOMP_PLANNED_TOWN_CENTRE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "PlannedAbode.h" /* For struct PlannedAbode */

// Forward Declares

struct GAbodeInfo;
struct MapCoords;
struct Town;

struct PlannedTownCentre
{
  struct PlannedAbode super;  /* 0x0 */
};
static_assert(sizeof(struct PlannedTownCentre) == 0x4c, "Data type is of wrong size");

static struct GameThingWithPosVftable* const __vt__17PlannedTownCentre = (struct GameThingWithPosVftable* const)0x008e46dc;

// Static methods

// win1.41 007444d0 mac 1055a160 PlannedTownCentre::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedTownCentre* __cdecl Create__17PlannedTownCentreFRC9MapCoordsPC10GAbodeInfoP4Townff(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float param_4, float param_5);

// Constructors

// win1.41 00744460 mac 103e51a0 PlannedTownCentre::PlannedTownCentre(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedTownCentre* __fastcall __ct__17PlannedTownCentreFRC9MapCoordsPC10GAbodeInfoP4Townff(struct PlannedTownCentre* this, const void* edx, const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float param_4, float param_5);

#endif /* BW1_DECOMP_PLANNED_TOWN_CENTRE_INCLUDED_H */
