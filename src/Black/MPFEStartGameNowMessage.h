#ifndef BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEStartGameNowMessage: public MPFEMessageObject
{
public:

    // Override methods

    // win1.41 00630170 mac 10396930 MPFEStartGameNowMessage::_dt(void)
    virtual ~MPFEStartGameNowMessage();
};

#endif /* BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H */
