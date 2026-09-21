#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEKickMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00627980 BW1M119 013a1a60
	virtual ~MPFEKickMessage();
};

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H */
