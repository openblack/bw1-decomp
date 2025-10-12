#ifndef BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEDatabaseID
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEDatabaseID) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4978 mac inlined MPFEDatabaseID::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14MPFEDatabaseID asm("??_R0?AVMPFEDatabaseID@@@8");
// win1.41 009b23b8 mac inlined MPFEDatabaseID::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14MPFEDatabaseID asm("??_R1A@?0A@A@MPFEDatabaseID@@8");
// win1.41 009b23d0 mac inlined MPFEDatabaseID::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14MPFEDatabaseID asm("??_R2MPFEDatabaseID@@8");
// win1.41 009b23e0 mac inlined MPFEDatabaseID::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14MPFEDatabaseID asm("??_R3MPFEDatabaseID@@8");

// Override methods

// win1.41 00627b00 mac 1039bb00 MPFEDatabaseID::_dt(void)
void __fastcall __dt__14MPFEDatabaseIDFv(struct MPFEMessageObject* this) asm("??_GMPFEDatabaseID@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H */
