#ifndef BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEStartGameReadyMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 0062fd00 mac 103a7130 MPFEStartGameReadyMessage::_dt(void)
    virtual ~MPFEStartGameReadyMessage();
};

#endif /* BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H */
