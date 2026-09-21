#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEKickMessageRequest : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00627790 BW1M119 0139f440
	virtual ~MPFEKickMessageRequest();
};

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H */
