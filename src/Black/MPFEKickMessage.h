#ifndef BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEKickMessage : public MPFEMessageObject
{
public:
	// BW1W120 006279b0 BW1M119 013a1bd0
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00627910 BW1M119 013a1df0
	MPFEKickMessage(MPFEPlayerDetails* player, MPFEPlayerDetails* by);
};

#endif /* BW1_DECOMP_MPFE_KICK_MESSAGE_INCLUDED_H */
