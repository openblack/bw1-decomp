#ifndef BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFECancelStartMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00627640 BW1M119 013a3470
	virtual ~MPFECancelStartMessage();
};

#endif /* BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H */
