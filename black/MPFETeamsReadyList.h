#ifndef BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFETeamsReadyList
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFETeamsReadyList) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf49f8 mac inlined MPFETeamsReadyList::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18MPFETeamsReadyList asm("??_R0?AVMPFETeamsReadyList@@@8");
// win1.41 009b2458 mac inlined MPFETeamsReadyList::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18MPFETeamsReadyList asm("??_R1A@?0A@A@MPFETeamsReadyList@@8");
// win1.41 009b2470 mac inlined MPFETeamsReadyList::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18MPFETeamsReadyList asm("??_R2MPFETeamsReadyList@@8");
// win1.41 009b2480 mac inlined MPFETeamsReadyList::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18MPFETeamsReadyList asm("??_R3MPFETeamsReadyList@@8");

// Override methods

// win1.41 00627ee0 mac inlined MPFETeamsReadyList::_dt(void)
void __fastcall __dt__18MPFETeamsReadyListFv(struct MPFEMessageObject* this) asm("??_GMPFETeamsReadyList@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H */
