#ifndef BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEStartGameTransferFilesMessage
{
  struct MPFEMessageObject super;  /* 0x0 */
};
static_assert(sizeof(struct MPFEStartGameTransferFilesMessage) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00630050 mac 103a6e30 MPFEStartGameTransferFilesMessage::_dt(void)
void __fastcall __dt__33MPFEStartGameTransferFilesMessageFv(struct MPFEMessageObject* this) asm("??_GMPFEStartGameTransferFilesMessage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H */
