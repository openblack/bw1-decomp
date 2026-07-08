#ifndef BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEPrivateChatMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00626ed0 BW1M100 10398140 MPFEPrivateChatMessage::_dt(void)
	virtual ~MPFEPrivateChatMessage();
};

#endif /* BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H */
