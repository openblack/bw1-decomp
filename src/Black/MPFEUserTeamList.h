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

	// BW1W120 00633050 BW1M119 0139da70
	virtual ~MPFEUserTeamList();
	// BW1W120 00626a00 BW1M119 inlined
	virtual void Send(MPFEPlayerDetails* param_1);
};

#endif /* BW1_DECOMP_MPFE_USER_TEAM_LIST_INCLUDED_H */
