#ifndef BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

struct MPFEPlayerDetails;

class MPFEDatabaseID : public MPFEMessageObject
{
public:
	// BW1W120 00627b00 BW1M119 013a3520
	virtual ~MPFEDatabaseID() {}
	// BW1W120 00627b30 BW1M119 013a1850
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);
	// BW1W120 00627a90 BW1M119 013a1b10
	MPFEDatabaseID();
};

#endif /* BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H */
