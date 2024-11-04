#ifndef BW1_DECOMP_CITADEL_PART_INCLUDED_H
#define BW1_DECOMP_CITADEL_PART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct Citadel;
struct GCitadelPartInfo;
struct GameOSFile;
struct GameThing;
struct MapCoords;

struct CitadelPart
{
  struct MultiMapFixed super;  /* 0x0 */
  float field_0x7c;
  struct Citadel* citadel;  /* 0x80 */
  struct CitadelPart* next;
  struct GameThing* game_thing_0x88;
};
static_assert(sizeof(struct CitadelPart) == 0x8c, "Data type is of wrong size");

static struct MultiMapFixedVftable* const __vt__11CitadelPart = (struct MultiMapFixedVftable* const)0x008cab00;

// Constructors

// win1.41 inlined mac 1030de40 CitadelPart::CitadelPart(void)
struct CitadelPart* __fastcall __ct__11CitadelPartFv(struct CitadelPart* this);
// win1.41 004693f0 mac 101c35b0 CitadelPart::CitadelPart(MapCoords const &, GCitadelPartInfo const *, Citadel *, float, float, float, int)
struct CitadelPart* __fastcall __ct__11CitadelPartFRC9MapCoordsPC16GCitadelPartInfoP7Citadelfffi(struct CitadelPart* this, const void* edx, struct MapCoords* coords, struct GCitadelPartInfo* info, struct Citadel* citadel, float y_angle, float scale, float param_6, int param_7);

// Override methods

// win1.41 004698b0 mac 101c2780 CitadelPart::Load(GameOSFile &)
uint32_t __fastcall Load__11CitadelPartFR10GameOSFile(struct CitadelPart* this, const void* edx, struct GameOSFile* file);

DECLARE_LH_LIST_HEAD(CitadelPart);

#endif /* BW1_DECOMP_CITADEL_PART_INCLUDED_H */
