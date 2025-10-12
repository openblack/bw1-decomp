#ifndef BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEFileTransferMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEFileTransferMessage) == 0x4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfd8c8 mac inlined MPFEFileTransferMessage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23MPFEFileTransferMessage asm("??_R0?AVMPFEFileTransferMessage@@@8");
// win1.41 009b2870 mac inlined MPFEFileTransferMessage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23MPFEFileTransferMessage asm("??_R1A@?0A@A@MPFEFileTransferMessage@@8");
// win1.41 009b2888 mac inlined MPFEFileTransferMessage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23MPFEFileTransferMessage asm("??_R2MPFEFileTransferMessage@@8");
// win1.41 009b2898 mac inlined MPFEFileTransferMessage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23MPFEFileTransferMessage asm("??_R3MPFEFileTransferMessage@@8");

// Override methods

// win1.41 0062f4a0 mac 103a5220 MPFEFileTransferMessage::_dt(void)
void __fastcall __dt__23MPFEFileTransferMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEFileTransferMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H */
