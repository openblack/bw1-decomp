#ifndef BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEMapErrorMessage : public MPFEMessageObject
{
public:
	// Static methods

	// BW1W120 00631540 BW1M119 013aff10
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// Constructors

	// BW1W120 006314c0 BW1M119 013affc0
	MPFEMapErrorMessage();
};

#endif /* BW1_DECOMP_MPFE_MAP_ERROR_MESSAGE_INCLUDED_H */
