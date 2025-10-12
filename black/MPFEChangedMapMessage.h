#ifndef BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEChangedMapMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEChangedMapMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfdb58 mac inlined MPFEChangedMapMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21MPFEChangedMapMessage asm("??_R0?AVMPFEChangedMapMessage@@@8");
// win1.41 009b2b90 mac inlined MPFEChangedMapMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21MPFEChangedMapMessage asm("??_R1A@?0A@A@MPFEChangedMapMessage@@8");
// win1.41 009b2ba8 mac inlined MPFEChangedMapMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21MPFEChangedMapMessage asm("??_R2MPFEChangedMapMessage@@8");
// win1.41 009b2bb8 mac inlined MPFEChangedMapMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21MPFEChangedMapMessage asm("??_R3MPFEChangedMapMessage@@8");

// Override methods

// win1.41 00631270 mac 103969e0 MPFEChangedMapMessage::_dt(void)
void __fastcall __dt__21MPFEChangedMapMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEChangedMapMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H */
