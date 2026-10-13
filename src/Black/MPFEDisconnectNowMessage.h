#ifndef BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEDisconnectNowMessage : public MPFEMessageObject
{
public:
	// Constructors

	// BW1W120 00630270 BW1M119 013ae360
	MPFEDisconnectNowMessage();
};

#endif /* BW1_DECOMP_MPFE_DISCONNECT_NOW_MESSAGE_INCLUDED_H */
