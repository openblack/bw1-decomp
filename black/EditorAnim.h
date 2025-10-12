#ifndef BW1_DECOMP_EDITOR_ANIM_INCLUDED_H
#define BW1_DECOMP_EDITOR_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */
#include <lionhead/lh3dlib/development/Prss.h> /* For struct Prss */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

struct AnimEdit
{
  struct Prss super;  /* 0x0 */
};
static_assert(sizeof(struct AnimEdit) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8f68 mac inlined AnimEdit::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8AnimEdit asm("??_R0?AVAnimEdit@@@8");
// win1.41 009abae8 mac inlined AnimEdit::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8AnimEdit asm("??_R1A@?0A@A@AnimEdit@@8");
// win1.41 009abb00 mac inlined AnimEdit::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8AnimEdit asm("??_R2AnimEdit@@8");
// win1.41 009abb10 mac inlined AnimEdit::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8AnimEdit asm("??_R3AnimEdit@@8");

// Override methods

// win1.41 0051cde0 mac inlined AnimEdit::ProcessTurn(void)
int __fastcall ProcessTurn__8AnimEditFv(struct Prss* this) asm("?ProcessTurn@AnimEdit@@UAEHXZ");
// win1.41 0051d460 mac inlined AnimEdit::Display(void)
void __fastcall Display__8AnimEditFv(struct Prss* this) asm("?Display@AnimEdit@@UAEXXZ");
// win1.41 0051de20 mac inlined AnimEdit::PrssKey(LH_KEY, unsigned short)
void __fastcall PrssKey__8AnimEditF6LH_KEYUs(struct Prss* this, const void* edx, enum LH_KEY param_1, uint16_t param_2) asm("?PrssKey@AnimEdit@@UAEXW4LH_KEY@@G@Z");
// win1.41 0051e370 mac inlined AnimEdit::ClickFunction(int, int, int)
void __fastcall ClickFunction__8AnimEditFiii(struct Prss* this, const void* edx, int param_1, int param_2, int param_3) asm("?ClickFunction@AnimEdit@@UAEXHHH@Z");

#endif /* BW1_DECOMP_EDITOR_ANIM_INCLUDED_H */
