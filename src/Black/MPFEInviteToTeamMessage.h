#ifndef BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEInviteToTeamMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00627410 BW1M119 0139f1a0
	virtual ~MPFEInviteToTeamMessage();
};

#endif /* BW1_DECOMP_MPFE_INVITE_TO_TEAM_MESSAGE_INCLUDED_H */
