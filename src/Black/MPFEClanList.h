#ifndef BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEClanList : public MPFEMessageObject
{
public:
	// BW1W120 0062bf30 BW1M119 0139e470
	virtual ~MPFEClanList() {}

	// BW1W120 0062bf60 BW1M119 013a8240
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// BW1W120 0062bba0 BW1M119 013a84a0
	MPFEClanList();
};

#endif /* BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H */
