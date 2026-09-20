#ifndef BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEDatabaseID : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 00627b00 BW1M100 1039bb00 MPFEDatabaseID::_dt(void)
	virtual ~MPFEDatabaseID();
};

#endif /* BW1_DECOMP_MPFE_DATABASE_ID_INCLUDED_H */
