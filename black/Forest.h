#ifndef BW1_DECOMP_FOREST_INCLUDED_H
#define BW1_DECOMP_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "Container.h" /* For struct Container, struct ContainerVftable */
#include "Tree.h" /* For struct Tree */

// Forward Declares

struct GameOSFile;
struct MapCoords;

struct ForestVftable
{
  struct ContainerVftable super;  /* 0x0 */
};
static_assert(sizeof(struct ForestVftable) == 0x500, "Data type is of wrong size");

union ForestBase
{
  struct Container super;
  struct ForestVftable* vftable;
};
static_assert(sizeof(union ForestBase) == 0x30, "Data type is of wrong size");

struct Forest
{
  union ForestBase base;  /* 0x0 */
  uint8_t field_0x30[0x10];
  uint32_t id;  /* 0x40 */
  struct Forest* next;
  struct LHLinkedList__Tree trees_0;
  struct LHLinkedList__Tree trees_1;  /* 0x50 */
};
static_assert(sizeof(struct Forest) == 0x58, "Data type is of wrong size");

static struct ForestVftable* const __vt__6Forest = (struct ForestVftable* const)0x008de41c;

// Constructors

// win1.41 00539bd0 mac 100f2620 Forest::Forest(MapCoords const&, unsigned long)
struct Forest* __fastcall __ct__6ForestFRC9MapCoordsUl(struct Forest* this, const void* edx, const struct MapCoords* coords, uint32_t param_2);

// Non-virtual methods

// win1.41 0053a310 mac 100f16f0 Forest::AddTree(Tree*)
void __fastcall AddTree__6ForestFP4Tree(struct Forest* this, const void* edx, struct Tree* tree);
// win1.41 0053abf0 mac 100f0a00 Forest::GetForestCentreTree(void)
struct Tree* __fastcall GetForestCentreTree__6ForestFv(struct Forest* this);

// Override methods

// win1.41 0053b070 mac 100ef950 Forest::Load(GameOSFile &)
bool __fastcall Load__6ForestFR10GameOSFile(struct Forest* this, const void* edx, struct GameOSFile* file);

DECLARE_LH_LIST_HEAD(Forest);

#endif /* BW1_DECOMP_FOREST_INCLUDED_H */
