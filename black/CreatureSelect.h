#ifndef BW1_DECOMP_CREATURE_SELECT_INCLUDED_H
#define BW1_DECOMP_CREATURE_SELECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

struct CreatureSelect
{
  struct Prss super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureSelect) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be0a98 mac inlined CreatureSelect::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14CreatureSelect asm("??_R0?AVCreatureSelect@@@8");
// win1.41 009ab3e0 mac inlined CreatureSelect::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14CreatureSelect asm("??_R1A@?0A@A@CreatureSelect@@8");
// win1.41 009ab3f8 mac inlined CreatureSelect::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14CreatureSelect asm("??_R2CreatureSelect@@8");
// win1.41 009ab408 mac inlined CreatureSelect::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14CreatureSelect asm("??_R3CreatureSelect@@8");

// Override methods

// win1.41 004f7210 mac inlined CreatureSelect::ProcessTurn(void)
int __fastcall ProcessTurn__14CreatureSelectFv(struct Prss* this) asm("?ProcessTurn@CreatureSelect@@UAEHXZ");
// win1.41 004f7250 mac inlined CreatureSelect::Display(void)
void __fastcall Display__14CreatureSelectFv(struct Prss* this) asm("?Display@CreatureSelect@@UAEXXZ");
// win1.41 004f74d0 mac inlined CreatureSelect::ClickFunction(int, int, int)
void __fastcall ClickFunction__14CreatureSelectFiii(struct Prss* this, const void* edx, int param_1, int param_2, int param_3) asm("?ClickFunction@CreatureSelect@@UAEXHHH@Z");

#endif /* BW1_DECOMP_CREATURE_SELECT_INCLUDED_H */
