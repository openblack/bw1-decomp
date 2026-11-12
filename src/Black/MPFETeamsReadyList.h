#ifndef BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFETeamsReadyList : public MPFEMessageObject
{
public:
	// BW1W120 00627f10 BW1M119 null
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00627df0 BW1M119 null
	MPFETeamsReadyList();
};

#endif /* BW1_DECOMP_MPFE_TEAMS_READY_LIST_INCLUDED_H */
