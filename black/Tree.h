#ifndef BW1_DECOMP_TREE_INCLUDED_H
#define BW1_DECOMP_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t */

#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "Fixed.h" /* For struct SingleMapFixed, struct SingleMapFixedVftable */

// Forward Declares

struct Forest;
struct GTreeInfo;
struct MapCoords;
struct Tree;

struct TreeVftable
{
  struct SingleMapFixedVftable super;  /* 0x0 */
  void (__fastcall* GetWoodValueMultiplier)(struct Tree* this);  /* 0x868 */
  struct Forest* (__fastcall* GetForest)(struct Tree* this);
  void (__fastcall* SetOnFire)(struct Tree* this, const void* edx, float param_1);  /* 0x870 */
};
static_assert(sizeof(struct TreeVftable) == 0x874, "Data type is of wrong size");

struct Tree
{
  struct SingleMapFixed super;  /* 0x0 */
  uint32_t field_0x5c;
  int16_t field_0x60;
  float field_0x64;
  struct Forest* forest;
};
static_assert(sizeof(struct Tree) == 0x6c, "Data type is of wrong size");

static struct TreeVftable* const __vt__4Tree = (struct TreeVftable* const)0x008e92f4;

// Static methods

// win1.41 00749ee0 mac 10158ff0 Tree::Create(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
struct Tree* __cdecl Create__4TreeFRC9MapCoordsPC9GTreeInfoP6Forestfff(struct MapCoords* coords, const struct GTreeInfo* info, struct Forest* forest, float param_4, float param_5, float param_6);

// Constructors

// win1.41 00749e00 mac 101591d0 Tree::Tree(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
struct Tree* __fastcall __ct__4TreeFRC9MapCoordsPC9GTreeInfoP6Forestfff(struct Tree* this, const void* edx, const struct MapCoords* coords, const struct GTreeInfo* info, struct Forest* forest, float param_4, float param_5, float param_6);

// Override methods

// win1.41 0074c5f0 mac 101559c0 Tree::CreateCollideData(void)
void __fastcall CreateCollideData__4TreeFv(struct Tree* this);
// win1.41 0074b810 mac 10157550 Tree::GetWoodValueMultiplier(void)
float __fastcall GetWoodValueMultiplier__4TreeFv(struct Tree* this);
// win1.41 0055d910 mac 100f0c30 Tree::GetForest(void)
struct Forest* __fastcall GetForest__4TreeFv(struct Tree* this);
// win1.41 0074c140 mac 10156370 Tree::SetOnFire(float)
void __fastcall SetOnFire__4TreeFf(struct Tree* this, const void* edx, float param_1);

DECLARE_LH_LINKED_LIST(Tree);

#endif /* BW1_DECOMP_TREE_INCLUDED_H */
