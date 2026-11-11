#ifndef BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEData.h"          /* For enum TeamEnums */
#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEInviteToTeamMessage : public MPFEMessageObject
{
public:
	// BW1W120 00627440 BW1M119 inlined
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 006273b0 BW1M119 013a2660
	MPFEInviteToTeamMessage(TeamEnums team);
};

#endif /* BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H */
