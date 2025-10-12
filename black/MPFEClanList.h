#ifndef BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEClanList
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEClanList) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4bb8 mac inlined MPFEClanList::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12MPFEClanList asm("??_R0?AVMPFEClanList@@@8");
// win1.41 009b25e8 mac inlined MPFEClanList::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12MPFEClanList asm("??_R1A@?0A@A@MPFEClanList@@8");
// win1.41 009b2600 mac inlined MPFEClanList::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12MPFEClanList asm("??_R2MPFEClanList@@8");
// win1.41 009b2610 mac inlined MPFEClanList::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12MPFEClanList asm("??_R3MPFEClanList@@8");

// Override methods

// win1.41 0062bf30 mac 10396a90 MPFEClanList::_dt(void)
void __fastcall __dt__12MPFEClanListFv(struct MPFEMessageObject* this) asm("??_GMPFEClanList@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H */
