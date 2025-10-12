#ifndef BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEMapErrorMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEMapErrorMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfdbd0 mac inlined MPFEMapErrorMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19MPFEMapErrorMessage asm("??_R0?AVMPFEMapErrorMessage@@@8");
// win1.41 009b2be0 mac inlined MPFEMapErrorMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19MPFEMapErrorMessage asm("??_R1A@?0A@A@MPFEMapErrorMessage@@8");
// win1.41 009b2bf8 mac inlined MPFEMapErrorMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19MPFEMapErrorMessage asm("??_R2MPFEMapErrorMessage@@8");
// win1.41 009b2c08 mac inlined MPFEMapErrorMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19MPFEMapErrorMessage asm("??_R3MPFEMapErrorMessage@@8");

// Override methods

// win1.41 00631510 mac 103a4050 MPFEMapErrorMessage::_dt(void)
void __fastcall __dt__19MPFEMapErrorMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEMapErrorMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H */
