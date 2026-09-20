#ifndef BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEStartGameReadyMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 0062fd00 BW1M100 103a7130 MPFEStartGameReadyMessage::_dt(void)
	virtual ~MPFEStartGameReadyMessage();
};

#endif /* BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H */
