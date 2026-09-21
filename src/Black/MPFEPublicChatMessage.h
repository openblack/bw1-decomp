#ifndef BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEPublicChatMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00626e00 BW1M119 0139fa90
	virtual ~MPFEPublicChatMessage();
};

#endif /* BW1_DECOMP_MPFE_PUBLIC_CHAT_MESSAGE_INCLUDED_H */
