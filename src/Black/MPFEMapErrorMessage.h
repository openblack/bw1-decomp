#ifndef BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEMapErrorMessage : public MPFEMessageObject
{
public:
	// Constructors

	// BW1W120 006314c0 BW1M119 013affc0
	MPFEMapErrorMessage();
};

#endif /* BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H */
