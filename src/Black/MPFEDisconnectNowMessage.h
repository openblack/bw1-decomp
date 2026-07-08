#ifndef BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEDisconnectNowMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 006302c0 BW1M100 10393c20 MPFEDisconnectNowMessage::_dt(void)
	virtual ~MPFEDisconnectNowMessage();
};

#endif /* BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H */
