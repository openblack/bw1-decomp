#ifndef BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEFileTransferMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 0062f4a0 mac 103a5220 MPFEFileTransferMessage::_dt(void)
    virtual ~MPFEFileTransferMessage();
};

#endif /* BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H */
