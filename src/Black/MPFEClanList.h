#ifndef BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H
#define BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEClanList : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 0062bf30 BW1M119 0139e470
	virtual ~MPFEClanList();
};

#endif /* BW1_DECOMP_MPFE_CLAN_LIST_INCLUDED_H */
