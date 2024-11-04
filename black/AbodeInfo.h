#ifndef BW1_DECOMP_ABODE_INFO_INCLUDED_H
#define BW1_DECOMP_ABODE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_NUMBER, enum ABODE_TYPE, enum DYK_CATEGORY, enum TRIBE_TYPE */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "Name.h" /* For struct Name */

// Forward Declares

struct LHFile;
struct MapCoords;
struct Town;

struct GAbodeInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  enum ABODE_TYPE abodeType;  /* 0x120 */
  enum ABODE_NUMBER abodeNumber;
  struct Name description;
  uint32_t field_0x148;
  uint32_t field_0x14c;
  uint32_t field_0x150;
  uint32_t field_0x154;
  enum TRIBE_TYPE tribe_type;
  uint32_t meshId;
  uint32_t canBePhysicallyDamaged;  /* 0x160 */
  float startLife;
  uint32_t startStrength;
  float startDefence;
  uint32_t startInfluence;  /* 0x170 */
  int maxVillagersInAbode;
  int maxChildrenInAbode;
  uint32_t startVillagersInAbode;
  uint32_t startChildrenInAbode;  /* 0x180 */
  uint32_t startFood;
  uint32_t startFoodRAnd;
  uint32_t startWood;
  uint32_t startWoodRAnd;  /* 0x190 */
  uint32_t howLongRuinLastsFor;
  uint32_t potForResourceFood;
  uint32_t potForResourceWood;
  float percentTooCrowded;  /* 0x1a0 */
  int producesMobileObject;
  float maxNumMobileObjectsToProduce;
  float timeEachMobileObjectTakesToProduce;
  float emptyAbodeLifeReducer;  /* 0x1b0 */
  int populationWhenNeeded;
  float thresholdForStopBeingFunctional;
  int toolTipsForBuild;
  int didYouKnow;  /* 0x1c0 */
  enum DYK_CATEGORY dykCategory;
};
static_assert(sizeof(struct GAbodeInfo) == 0x1c8, "Data type is of wrong size");

static struct GObjectInfoVftable* const __vt__10GAbodeInfo = (struct GObjectInfoVftable* const)0x008a99f8;

// Static methods

// win1.41 00405a70 mac 101ca0c0 GAbodeInfo::GetInfoFromText(char *)
int __cdecl GetInfoFromText__10GAbodeInfoFPc(const char* text);
// win1.41 00405b30 mac 1006f680 GAbodeInfo::Find(TRIBE_TYPE, ABODE_NUMBER)
struct GAbodeInfo* __cdecl Find__10GAbodeInfoF10TRIBE_TYPE12ABODE_NUMBER(enum TRIBE_TYPE tribe_type, enum ABODE_NUMBER abode_number);

// Non-virtual methods

// win1.41 00404b10 mac 1015a260 GAbodeInfo::IsOkToCreateAtPos(MapCoords const &, float, float, Town *) const
bool __fastcall IsOkToCreateAtPos__10GAbodeInfoCFRC9MapCoordsffP4Town(const struct GAbodeInfo* this, const void* edx, const struct MapCoords* coords, float param_2, float param_3, struct Town* town);
// win1.41 0042e520 mac inlined GAbodeInfo::LoadBinary(LHFile *)
void __fastcall LoadBinary__10GAbodeInfoFP6LHFile(struct GAbodeInfo* this, const void* edx, struct LHFile* file);

#endif /* BW1_DECOMP_ABODE_INFO_INCLUDED_H */
