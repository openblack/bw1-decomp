#ifndef BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEAskJoinMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00626f90 BW1M100 10397e50 MPFEAskJoinMessage::_dt(void)
	virtual ~MPFEAskJoinMessage();
};

#endif /* BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H */
