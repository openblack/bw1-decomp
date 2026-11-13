#ifndef BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEPublicChatMessage : public MPFEMessageObject
{
public:
	// BW1W120 00626e00 BW1M119 0139fa90
	virtual ~MPFEPublicChatMessage() {}

	// BW1W120 00626e30 BW1M119 inlined
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00626d90 BW1M119 013a2ee0
	MPFEPublicChatMessage(wchar_t* message);
};

#endif /* BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H */
