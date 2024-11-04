#ifndef BW1_DECOMP_CITADEL_INCLUDED_H
#define BW1_DECOMP_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "Container.h" /* For struct Container */

// Forward Declares

struct CitadelHeart;
struct GCitadelHeartInfo;
struct GTribeInfo;
struct LH3DMesh;
struct Living;
struct MapCoords;
struct Town;
struct WorshipSite;

struct Citadel
{
  struct Container super;  /* 0x0 */
  struct CitadelHeart* heart;  /* 0x30 */
  struct WorshipSite* worship_sites[0x6];
  struct LHListHead__CitadelPart part_list;  /* 0x4c */
  uint32_t field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
  uint32_t field_0x60;
  uint32_t field_0x64;
  uint32_t field_0x68;
  float influence;
  uint32_t field_0x70;
  uint32_t field_0x74;
  uint32_t field_0x78;
  struct Living* living;
};
static_assert(sizeof(struct Citadel) == 0x80, "Data type is of wrong size");

static struct ContainerVftable* __vt__7Citadel = (struct ContainerVftable*)0x008c7e68;

// Static methods

// win1.41 00463240 mac 101b9230 Citadel::CreateCitadel(MapCoords const &, GCitadelHeartInfo const *, unsigned char, float, float)
struct Citadel* __cdecl CreateCitadel__7CitadelFRC9MapCoordsPC17GCitadelHeartInfoUcff(struct MapCoords* coords, struct GCitadelHeartInfo* info, uint8_t param_3, float param_4, float param_5);

// Non-virtual methods

// win1.41 00463130 mac 101b9680 Citadel::AddTown(Town*)
void* __fastcall AddTown__7CitadelFP4Town(struct Citadel* this, const void* edx, struct Town* town);
// win1.41 00463220 mac 101b9420 Citadel::FindOrCreateWorshipSite(GTribeInfo const *)
struct WorshipSite* __fastcall FindOrCreateWorshipSite__7CitadelFPC10GTribeInfo(struct Citadel* this, const void* edx, struct GTribeInfo* tribe_info);

// win1.41 004699c0 mac 101c4740 CPController::Init(LH3DMesh*)
void __cdecl Init__12CPControllerFP8LH3DMesh(struct LH3DMesh* mesh);
// win1.41 00469990 mac 101c4ca0 CPController::Init(void)
void __stdcall Init__12CPControllerFv(void);

#endif /* BW1_DECOMP_CITADEL_INCLUDED_H */
