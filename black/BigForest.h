#ifndef BW1_DECOMP_BIG_FOREST_INCLUDED_H
#define BW1_DECOMP_BIG_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */

// Forward Declares

struct Forest;
struct GBigForestInfo;
struct GameOSFile;
struct MapCoords;

struct BigForest
{
  struct MultiMapFixed super;  /* 0x0 */
  uint32_t field_0x80;  /* 0x7c */
  struct Forest* forest;  /* 0x80 */
  uint32_t field_0x84;
};
static_assert(sizeof(struct BigForest) == 0x88, "Data type is of wrong size");

static struct GMultiMapFixedInfoVftable* const __vt__9BigForest = (struct GMultiMapFixedInfoVftable* const)0x008c5904;

// Static methods

// win1.41 00438ec0 mac 100b3590 BigForest::Create(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
struct BigForest* __cdecl Create__9BigForestFRC9MapCoordsPC14GBigForestInfoUlff(struct MapCoords* coords, struct GBigForestInfo* info, uint32_t param_3, float param_4, float param_5);

// Constructors

// win1.41 00438ce0 mac 100b3a20 BigForest::BigForest(MapCoords const &, GBigForestInfo const *, unsigned long, float, float)
struct BigForest* __fastcall __ct__9BigForestFRC9MapCoordsPC14GBigForestInfoUlff(struct BigForest* this, const void* edx, const struct MapCoords* coords, const struct GBigForestInfo* info, uint32_t param_3, float param_4, float param_5);

// Override methods

// win1.41 004394e0 mac 100b2760 BigForest::Load(GameOSFile &)
bool __fastcall Load__9BigForestFR10GameOSFile(struct BigForest* this, const void* edx, struct GameOSFile* file);

DECLARE_LH_LIST_HEAD(BigForest);

#endif /* BW1_DECOMP_BIG_FOREST_INCLUDED_H */
