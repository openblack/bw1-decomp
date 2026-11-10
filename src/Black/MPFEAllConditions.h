#ifndef BW1_DECOMP_MPFE_ALL_CONDITIONS_INCLUDED_H
#define BW1_DECOMP_MPFE_ALL_CONDITIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class WinCondition;
struct MPFEPlayerDetails;

class MPFEAllConditions : public MPFEMessageObject
{
public:
	// BW1W120 0062cb70 BW1M119 null
	virtual ~MPFEAllConditions() {}

	// BW1W120 0062cba0 BW1M119 null
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// BW1W120 0062cac0 BW1M119 null
	MPFEAllConditions(WinCondition* conditions, bool* enabled);
};

#endif /* BW1_DECOMP_MPFE_ALL_CONDITIONS_INCLUDED_H */
