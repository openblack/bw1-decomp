#ifndef BW1_DECOMP_MPFE_DATABASE_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

class MPFEDatabase
{
public:
	float    ProgressPercentage; /* 0x4 */
	bool32_t populated;

	// Override methods

	// BW1W120 0062e4f0 BW1M100 103a35b0 MPFEDatabase::DatabaseError(void)
	virtual void DatabaseError();
	// BW1W120 0062e510 BW1M100 103a3520 MPFEDatabase::DatabaseComplete(void)
	virtual void DatabaseComplete();

	// Constructors

	// BW1W120 0062e100 BW1M100 103a3ce0 MPFEDatabase::MPFEDatabase(void)
	MPFEDatabase();
};

#endif /* BW1_DECOMP_MPFE_DATABASE_INCLUDED_H */
