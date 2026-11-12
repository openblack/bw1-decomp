#ifndef BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEData.h"          /* For enum TeamEnums */
#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEReplyToJoinMessage : public MPFEMessageObject
{
public:
	// BW1W120 006270a0 BW1M119 0139ba80
	virtual ~MPFEReplyToJoinMessage() {}

	// BW1W120 006270d0 BW1M119 013a2720
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00627040 BW1M119 013a2b60
	MPFEReplyToJoinMessage(wchar_t reply, TeamEnums team);
};

#endif /* BW1_DECOMP_MPFE_REPLY_TO_JOIN_MESSAGE_INCLUDED_H */
