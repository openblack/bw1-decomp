#ifndef BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

struct MPFEUserTeamList
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEUserTeamList) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfdcd0 mac inlined MPFEUserTeamList::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16MPFEUserTeamList asm("??_R0?AVMPFEUserTeamList@@@8");
// win1.41 009b2c80 mac inlined MPFEUserTeamList::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16MPFEUserTeamList asm("??_R1A@?0A@A@MPFEUserTeamList@@8");
// win1.41 009b2c98 mac inlined MPFEUserTeamList::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16MPFEUserTeamList asm("??_R2MPFEUserTeamList@@8");
// win1.41 009b2ca8 mac inlined MPFEUserTeamList::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16MPFEUserTeamList asm("??_R3MPFEUserTeamList@@8");

// Override methods

// win1.41 00633050 mac 10396090 MPFEUserTeamList::_dt(void)
void __fastcall __dt__16MPFEUserTeamListFv(struct MPFEMessageObject* this) asm("??_GMPFEUserTeamList@@UAEPAXI@Z");
// win1.41 00626a00 mac inlined MPFEUserTeamList::Send(MPFEPlayerDetails *)
void __fastcall Send__16MPFEUserTeamListFP17MPFEPlayerDetails(struct MPFEMessageObject* this, const void* edx, struct MPFEPlayerDetails* param_1) asm("?Send@MPFEUserTeamList@@UAEXPAUMPFEPlayerDetails@@@Z");

#endif /* BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H */
