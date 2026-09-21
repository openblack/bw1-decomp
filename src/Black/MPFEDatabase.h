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

	// BW1W120 0062e4f0 BW1M119 013ab330
	virtual void DatabaseError();
	// BW1W120 0062e510 BW1M119 013ab270
	virtual void DatabaseComplete();

	// Constructors

	// BW1W120 0062e100 BW1M119 013aba60
	MPFEDatabase();
};

#endif /* BW1_DECOMP_MPFE_DATABASE_INCLUDED_H */
