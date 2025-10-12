#ifndef BW1_DECOMP_PLAYTIME_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;

struct Playtime
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct Playtime) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c01fb8 mac inlined Playtime::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Playtime asm("??_R0?AVPlaytime@@@8");
// win1.41 009b3348 mac inlined Playtime::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Playtime asm("??_R1A@?0A@A@Playtime@@8");
// win1.41 009b3360 mac inlined Playtime::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Playtime asm("??_R2Playtime@@8");
// win1.41 009b3370 mac inlined Playtime::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Playtime asm("??_R3Playtime@@8");

// Override methods

// win1.41 0066c410 mac inlined Playtime::_dt(void)
void __fastcall __dt__8PlaytimeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPlaytime@@UAEPAXI@Z");

#endif /* BW1_DECOMP_PLAYTIME_INCLUDED_H */
