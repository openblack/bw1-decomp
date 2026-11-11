#ifndef BW1_DECOMP_MPFE_CHANGED_TYKE_STATUS_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANGED_TYKE_STATUS_INCLUDED_H

#include <wchar.h> /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEChangedTykeStatus : public MPFEMessageObject
{
public:
	// BW1WCI 00649400 BW1MCI119 01632910
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
};

#endif /* BW1_DECOMP_MPFE_CHANGED_TYKE_STATUS_INCLUDED_H */
