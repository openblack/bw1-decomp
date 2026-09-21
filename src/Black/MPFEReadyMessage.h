#ifndef BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEReadyMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00627d80 BW1M119 inlined
	virtual ~MPFEReadyMessage();
};

#endif /* BW1_DECOMP_MPFE_READY_MESSAGE_INCLUDED_H */
