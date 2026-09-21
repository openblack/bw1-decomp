#ifndef BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEChangedMapMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00631270 BW1M119 0139e3c0
	virtual ~MPFEChangedMapMessage();
};

#endif /* BW1_DECOMP_MPFE_CHANGED_MAP_MESSAGE_INCLUDED_H */
