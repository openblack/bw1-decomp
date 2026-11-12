#ifndef BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEPrivateChatMessage : public MPFEMessageObject
{
public:
	// BW1W120 00626ed0 BW1M119 0139fb40
	virtual ~MPFEPrivateChatMessage() {}

	// BW1W120 00626f00 BW1M119 inlined
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00626e50 BW1M119 013a2df0
	MPFEPrivateChatMessage(wchar_t* message, bool is_team);
};

#endif /* BW1_DECOMP_MPFE_PRIVATE_CHAT_MESSAGE_INCLUDED_H */
