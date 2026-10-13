#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEKickMessageRequest : public MPFEMessageObject
{
public:
	// Constructors

	// BW1W120 00627730 BW1M119 013a20e0
	MPFEKickMessageRequest(MPFEPlayerDetails* player);
};

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_REQUEST_INCLUDED_H */
