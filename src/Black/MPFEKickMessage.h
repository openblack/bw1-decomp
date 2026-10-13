#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEKickMessage : public MPFEMessageObject
{
public:
	// Constructors

	// BW1W120 00627910 BW1M119 013a1df0
	MPFEKickMessage(MPFEPlayerDetails* player, MPFEPlayerDetails* by);
};

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H */
