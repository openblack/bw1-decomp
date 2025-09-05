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

// win1.41 008f702c mac 10747800 StoragePit::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10StoragePit asm("??_R4StoragePit@@6B@");

// win1.41 008f7030 mac 106f604c StoragePit::`vftable'
extern const struct MultiMapFixedVftable __vt__10StoragePit asm("??_7StoragePit@@6B@");

#endif /* BW1_DECOMP_STORAGE_PIT_INCLUDED_H */
