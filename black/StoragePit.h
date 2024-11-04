#ifndef BW1_DECOMP_STORAGE_PIT_INCLUDED_H
#define BW1_DECOMP_STORAGE_PIT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct PileFood;
struct PileResource;
struct PileWood;

struct StoragePit
{
  struct Abode super;  /* 0x0 */
  struct PileFood* pile_food;  /* 0xc4 */
  struct PileWood* pile_wood;
  struct PileResource* field_0xcc;
  struct PileResource* field_0xd0;
  struct PileResource* field_0xd4;
  struct PileResource* field_0xd8;
};
static_assert(sizeof(struct StoragePit) == 0xdc, "Data type is of wrong size");

static struct MultiMapFixedVftable* __vt__10StoragePit = (struct MultiMapFixedVftable*)0x008f7030;

#endif /* BW1_DECOMP_STORAGE_PIT_INCLUDED_H */
