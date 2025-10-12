#ifndef BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H
#define BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEHasCreature
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEHasCreature) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4a20 mac inlined MPFEHasCreature::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15MPFEHasCreature asm("??_R0?AVMPFEHasCreature@@@8");
// win1.41 009b24a8 mac inlined MPFEHasCreature::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15MPFEHasCreature asm("??_R1A@?0A@A@MPFEHasCreature@@8");
// win1.41 009b24c0 mac inlined MPFEHasCreature::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15MPFEHasCreature asm("??_R2MPFEHasCreature@@8");
// win1.41 009b24d0 mac inlined MPFEHasCreature::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15MPFEHasCreature asm("??_R3MPFEHasCreature@@8");

// Override methods

// win1.41 00628010 mac inlined MPFEHasCreature::_dt(void)
void __fastcall __dt__15MPFEHasCreatureFv(struct MPFEMessageObject* this) asm("??_GMPFEHasCreature@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H */
