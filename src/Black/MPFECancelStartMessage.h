#ifndef BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFECancelStartMessage : public MPFEMessageObject
{
public:
	// Constructors

	// BW1W120 006275e0 BW1M119 013a2300
	MPFECancelStartMessage();
};

#endif /* BW1_DECOMP_MPFE_CANCEL_START_MESSAGE_INCLUDED_H */
