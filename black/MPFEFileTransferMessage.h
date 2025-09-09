#ifndef BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEFileTransferMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEFileTransferMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 0062f4a0 mac 103a5220 MPFEFileTransferMessage::_dt(void)
void __fastcall __dt__23MPFEFileTransferMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEFileTransferMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H */
