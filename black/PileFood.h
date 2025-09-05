#ifndef BW1_DECOMP_PILE_FOOD_INCLUDED_H
#define BW1_DECOMP_PILE_FOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "PileResource.h" /* For struct PileResource */

// Forward Declares

struct GPotInfo;
struct MapCoords;
struct MultiMapFixed;
struct Town;

struct PileFood
{
  struct PileResource super;  /* 0x0 */
  struct PileFood* next;  /* 0xb4 */
  uint32_t field_0xb8;
};
static_assert(sizeof(struct PileFood) == 0xbc, "Data type is of wrong size");

// win1.41 00933058 mac 1074939c PileFood::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8PileFood asm("??_R4PileFood@@6B@");

// win1.41 0093305c mac 107493a4 PileFood::`vftable'
extern const struct PotVftable __vt__8PileFood asm("??_7PileFood@@6B@");

// Constructors

// win1.41 0066dfe0 mac 1011a450 PileFood::PileFood(void)
struct PileFood* __fastcall __ct__8PileFoodFv(struct PileFood* this);
// win1.41 0066e070 mac 1011a2b0 PileFood::PileFood(MapCoords const &, GPotInfo const *, unsigned long, MultiMapFixed *, Town *, int, float, float)
struct PileFood* __fastcall __ct__8PileFoodFRC9MapCoordsPC8GPotInfoUlP13MultiMapFixedP4Towniff(struct PileFood* this, const void* edx, struct MapCoords* coords, struct GPotInfo* param_2, uint32_t param_3, struct MultiMapFixed* param_4, struct Town* param_5, int param_6, float param_7, float param_8);

DECLARE_LH_LIST_HEAD(PileFood);

#endif /* BW1_DECOMP_PILE_FOOD_INCLUDED_H */
