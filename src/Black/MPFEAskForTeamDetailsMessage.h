#ifndef BW1_DECOMP_MPFE_ASK_FOR_TEAM_DETAILS_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_ASK_FOR_TEAM_DETAILS_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEAskForTeamDetailsMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 006332a0 BW1M119 0139c310
	virtual ~MPFEAskForTeamDetailsMessage() {}

	// Constructors

	// BW1W120 00633260 BW1M119 013b3010
	MPFEAskForTeamDetailsMessage();
};

#endif /* BW1_DECOMP_MPFE_ASK_FOR_TEAM_DETAILS_MESSAGE_INCLUDED_H */
