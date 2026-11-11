#ifndef BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEData.h"          /* For enum TeamEnums */
#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEAskJoinMessage : public MPFEMessageObject
{
public:
	// BW1W120 00626fc0 BW1M119 013a2c30
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00626f30 BW1M119 013a2d30
	MPFEAskJoinMessage(TeamEnums team);
};

#endif /* BW1_DECOMP_MPFE_ASK_JOIN_MESSAGE_INCLUDED_H */
