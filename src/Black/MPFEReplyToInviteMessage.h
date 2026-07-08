#ifndef BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEReplyToInviteMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 006274f0 BW1M100 10397500 MPFEReplyToInviteMessage::_dt(void)
	virtual ~MPFEReplyToInviteMessage();
};

#endif /* BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H */
