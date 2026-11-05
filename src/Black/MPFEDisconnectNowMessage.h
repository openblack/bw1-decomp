#ifndef BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEDisconnectNowMessage : public MPFEMessageObject
{
public:
#ifndef VERSION_BW1W100
	// Static methods

	// BW1W120 006302f0 BW1M119 null
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

#endif
	// Constructors

	// BW1W120 00630270 BW1M119 013ae360
	MPFEDisconnectNowMessage();
};

#endif /* BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H */
