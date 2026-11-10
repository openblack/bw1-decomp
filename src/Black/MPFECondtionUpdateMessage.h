#ifndef BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFECondtionUpdateMessage : public MPFEMessageObject
{
public:
	// BW1W120 0062c860 BW1M119 inlined
	virtual ~MPFECondtionUpdateMessage() {}

	// BW1W120 0062c890 BW1M119 null
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// BW1W120 0062c700 BW1M119 null
	MPFECondtionUpdateMessage();
};

#endif /* BW1_DECOMP_MPFE_CONDTION_UPDATE_MESSAGE_INCLUDED_H */
