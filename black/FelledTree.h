#ifndef BW1_DECOMP_FELLED_TREE_INCLUDED_H
#define BW1_DECOMP_FELLED_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DeadTree.h" /* For struct DeadTree */

// Forward Declares

struct Base;
struct GameThing;

struct FelledTree
{
  struct DeadTree super;  /* 0x0 */
};
static_assert(sizeof(struct FelledTree) == 0xa0, "Data type is of wrong size");

// win1.41 008d6978 mac 1073a888 FelledTree::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10FelledTree asm("??_R4FelledTree@@6B@");

// win1.41 008d697c mac 1073a890 FelledTree::`vftable'
extern const struct RockVftable __vt__10FelledTree asm("??_7FelledTree@@6B@");

// Override methods

// win1.41 005118e0 mac 100c0cc0 FelledTree::_dt(void)
void __fastcall __dt__10FelledTreeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFelledTree@@UAEPAXI@Z");
// win1.41 005118d0 mac 100c0de0 FelledTree::GetDebugText(void)
char* __fastcall GetDebugText__10FelledTreeFv(struct GameThing* this) asm("?GetDebugText@FelledTree@@UAEPADXZ");
// win1.41 005118c0 mac 100c0da0 FelledTree::GetSaveType(void)
uint32_t __fastcall GetSaveType__10FelledTreeFv(struct GameThing* this) asm("?GetSaveType@FelledTree@@UAEIXZ");

#endif /* BW1_DECOMP_FELLED_TREE_INCLUDED_H */
