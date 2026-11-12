#ifndef BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H
#define BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEHasCreature : public MPFEMessageObject
{
public:
	// BW1W120 00628010 BW1M119 null
	virtual ~MPFEHasCreature() {}
	// BW1W120 00628040 BW1M119 null
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00627f80 BW1M119 null
	MPFEHasCreature();
};

#endif /* BW1_DECOMP_MPFE_HAS_CREATURE_INCLUDED_H */
