#ifndef BW1_DECOMP_MPFE_DATABASE_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */

struct LandscapeDetails;

class MPFEDatabase
{
public:
	// BW1W120 00d40eb8
	static LHLinkedList<LandscapeDetails*> Landscapes;
	// BW1W120 00bfd83c
	static char* OnlineMapsPath;

	float ProgressPercentage; /* 0x4 */
	bool  Querying;           /* 0x8 */

	// Override methods

	// BW1W120 0062e4f0 BW1M119 013ab330
	virtual void DatabaseError();
	// BW1W120 0062e510 BW1M119 013ab270
	virtual void DatabaseComplete();

	// Constructors

	// BW1W120 0062e100 BW1M119 013aba60
	MPFEDatabase();

	// BW1W120 0062e140 BW1M119 013ab840
	void RefreshDatabase();
	// BW1W120 0062e200 BW1M119 013ab780
	void RepopulateDatabase();
	// BW1W120 0062e240 BW1M119 013ab6f0
	void StopQuerying();
};

#endif /* BW1_DECOMP_MPFE_DATABASE_INCLUDED_H */
