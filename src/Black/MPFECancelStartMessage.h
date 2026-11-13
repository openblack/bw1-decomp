#ifndef BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFECancelStartMessage : public MPFEMessageObject
{
public:
	// BW1W120 00627670 BW1M119 013a21c0
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 006275e0 BW1M119 013a2300
	MPFECancelStartMessage();
};

#endif /* BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H */
