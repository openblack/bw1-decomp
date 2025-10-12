#ifndef BW1_DECOMP_FELLED_TREE_INCLUDED_H
#define BW1_DECOMP_FELLED_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DeadTree.h" /* For struct DeadTree */

// Forward Declares

struct Base;
struct GameThing;

struct FelledTree
{
  struct DeadTree super;  /* 0x0 */
};
static_assert(sizeof(struct FelledTree) == 0xa0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8a50 mac inlined FelledTree::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10FelledTree asm("??_R0?AVFelledTree@@@8");
// win1.41 009ab858 mac inlined FelledTree::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10FelledTree asm("??_R1A@?0A@A@FelledTree@@8");
// win1.41 009ab870 mac inlined FelledTree::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10FelledTree asm("??_R2FelledTree@@8");
// win1.41 009ab8a0 mac inlined FelledTree::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10FelledTree asm("??_R3FelledTree@@8");
// win1.41 008d6978 mac 1073a888 FelledTree::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10FelledTree asm("??_R4FelledTree@@6B@");
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
