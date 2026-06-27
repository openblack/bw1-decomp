#ifndef BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEStartGameTransferFilesMessage: public MPFEMessageObject
{
public:

    // Override methods

    // BW1W120 00630050 BW1M100 103a6e30 MPFEStartGameTransferFilesMessage::_dt(void)
    virtual ~MPFEStartGameTransferFilesMessage();
};

#endif /* BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H */
