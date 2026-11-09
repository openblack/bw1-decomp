#ifndef BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEChangeClanRequest : public MPFEMessageObject
{
public:
	// BW1W120 0062c160 BW1M119 0139ebe0
	virtual ~MPFEChangeClanRequest() {}

	// BW1W120 0062c190 BW1M119 013a7f50
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// BW1W120 0062c100 BW1M119 013a8170
	MPFEChangeClanRequest(unsigned long clan_id, wchar_t* clan_name);
};

#endif /* BW1_DECOMP_MPFE_CHANGE_CLAN_REQUEST_INCLUDED_H */
