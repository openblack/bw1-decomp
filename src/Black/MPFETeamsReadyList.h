#ifndef BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFETeamsReadyList : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00627ee0 BW1M119 inlined
	virtual ~MPFETeamsReadyList();
};

#endif /* BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H */
