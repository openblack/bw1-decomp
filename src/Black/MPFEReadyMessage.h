#ifndef BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEReadyMessage : public MPFEMessageObject
{
public:
	// BW1W120 00627db0 BW1M119 null
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00627d20 BW1M119 null
	MPFEReadyMessage(bool ready);
};

#endif /* BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H */
