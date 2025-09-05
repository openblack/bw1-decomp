#ifndef BW1_DECOMP_PILE_RESOURCE_INCLUDED_H
#define BW1_DECOMP_PILE_RESOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PotStructure.h" /* For struct PotStructure */

// Forward Declares

struct GPotInfo;
struct MapCoords;
struct MultiMapFixed;
struct Town;

struct PileResource
{
  struct PotStructure super;  /* 0x0 */
  float field_0x84;
  float field_0x88;
  uint32_t field_0x8c;
  uint32_t field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  float field_0xa0;
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t field_0xac;
  uint32_t field_0xb0;
};
static_assert(sizeof(struct PileResource) == 0xb4, "Data type is of wrong size");

// win1.41 009338d0 mac 107481fc PileResource::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12PileResource asm("??_R4PileResource@@6B@");

// win1.41 009338d4 mac 10748244 PileResource::`vftable'
extern const struct PotVftable __vt__12PileResource asm("??_7PileResource@@6B@");

// Constructors

// win1.41 0066ec70 mac 10117e50 PileResource::PileResource(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
struct PileResource* __fastcall __ct__12PileResourceFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff(struct PileResource* this, const void* edx, struct MapCoords* param_1, struct GPotInfo* info, uint32_t param_3, struct MultiMapFixed* param_4, struct Town* param_5, int param_6, float param_7, float param_8);

// Override methods

// win1.41 0066e300 mac 10119a80 PileResource::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__12PileResourceFRC9MapCoords(struct PileResource* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@PileResource@@UAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_PILE_RESOURCE_INCLUDED_H */
