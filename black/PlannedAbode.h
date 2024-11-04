#ifndef BW1_DECOMP_PLANNED_ABODE_INCLUDED_H
#define BW1_DECOMP_PLANNED_ABODE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

struct GMultiMapFixedInfo;
struct MapCoords;
struct Town;

struct PlannedAbode
{
  struct PlannedMultiMapFixed super;  /* 0x0 */
  struct Town* town;  /* 0x48 */
};
static_assert(sizeof(struct PlannedAbode) == 0x4c, "Data type is of wrong size");

static struct GameThingWithPosVftable* __vt__12PlannedAbode = (struct GameThingWithPosVftable*)0x008aa3bc;

// Static methods

// win1.41 00405600 mac 10479fb0 PlannedAbode::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedAbode* __cdecl Create__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct MapCoords* coords, struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5);

// Constructors

// win1.41 00405080 mac 103e51a0 PlannedAbode::PlannedAbode(MapCoords const &, GAbodeInfo const *, Town *, float, float)
struct PlannedAbode* __fastcall __ct__12PlannedAbodeFRC9MapCoordsPC10GAbodeInfoP4Townff(struct PlannedAbode* this, const void* edx, const struct MapCoords* coords, const struct GMultiMapFixedInfo* info, struct Town* town, float param_4, float param_5);

// Non-virtual methods

// win1.41 004055a0 mac 103e5560 PlannedAbode::Init(Town *)
void __fastcall Init__12PlannedAbodeFP4Town(struct PlannedAbode* this, const void* edx, struct Town* town);

#endif /* BW1_DECOMP_PLANNED_ABODE_INCLUDED_H */
