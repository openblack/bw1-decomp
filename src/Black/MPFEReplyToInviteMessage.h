#ifndef BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEData.h"          /* For enum TeamEnums */
#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEReplyToInviteMessage : public MPFEMessageObject
{
public:
	// BW1W120 006274f0 BW1M119 0139eee0
	virtual ~MPFEReplyToInviteMessage() {}

	// BW1W120 00627520 BW1M119 013a23c0
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00627480 BW1M119 013a2580
	MPFEReplyToInviteMessage(bool accept, TeamEnums team);
};

#endif /* BW1_DECOMP_MPFE_REPLY_TO_INVITE_MESSAGE_INCLUDED_H */
