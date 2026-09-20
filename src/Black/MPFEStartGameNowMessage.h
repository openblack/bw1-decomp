#ifndef BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEStartGameNowMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00630170 BW1M100 10396930 MPFEStartGameNowMessage::_dt(void)
	virtual ~MPFEStartGameNowMessage();
};

#endif /* BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H */
