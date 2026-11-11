#ifndef BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEUserTeamList : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00633080 BW1M119 013b30c0
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// BW1W120 00632e10 BW1M119 013b33d0
	MPFEUserTeamList();
};

#endif /* BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H */
