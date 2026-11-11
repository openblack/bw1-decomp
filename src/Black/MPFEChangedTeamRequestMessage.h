#ifndef BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEData.h"          /* For enum TeamEnums */
#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEChangedTeamRequestMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00632d50 BW1M119 013b36c0
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// BW1W120 00632cd0 BW1M119 013b3810
	MPFEChangedTeamRequestMessage(TeamEnums team);
};

#endif /* BW1_DECOMP_MPFE_CHANGED_TEAM_REQUEST_MESSAGE_INCLUDED_H */
