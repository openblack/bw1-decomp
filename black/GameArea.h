#ifndef BW1_DECOMP_GAME_AREA_INCLUDED_H
#define BW1_DECOMP_GAME_AREA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct GameArea
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct GameArea) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec930 mac inlined GameArea::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8GameArea asm("??_R0?AVGameArea@@@8");
// win1.41 009ad380 mac inlined GameArea::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8GameArea asm("??_R1A@?0A@A@GameArea@@8");
// win1.41 009ad398 mac inlined GameArea::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8GameArea asm("??_R2GameArea@@8");
// win1.41 009ad3a8 mac inlined GameArea::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8GameArea asm("??_R3GameArea@@8");

// Override methods

// win1.41 00557220 mac 102fe950 GameArea::_dt(void)
void __fastcall __dt__8GameAreaFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGameArea@@UAEPAXI@Z");

#endif /* BW1_DECOMP_GAME_AREA_INCLUDED_H */
