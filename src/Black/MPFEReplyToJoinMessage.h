#ifndef BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEReplyToJoinMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 006270a0 BW1M100 10394150 MPFEReplyToJoinMessage::_dt(void)
	virtual ~MPFEReplyToJoinMessage();
};

#endif /* BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H */
