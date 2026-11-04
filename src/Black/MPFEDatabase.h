#ifndef BW1_DECOMP_MPFE_DATABASE_INCLUDED_H
#define BW1_DECOMP_MPFE_DATABASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>       /* For class LHLinkedList */
#include <Lionhead/LHMultiplayer/ver4.0/LHDatabase.h> /* For struct DBInfo */

struct LandscapeDetails;

enum MPFE_DATABASE_RESULT
{
	MPFE_DATABASE_RESULT_ERROR = 0,
	MPFE_DATABASE_RESULT_COMPLETE = 1,
	MPFE_DATABASE_RESULT_PENDING = 2,
	MPFE_DATABASE_RESULT_IDLE = 3,
};

class MPFEDatabase
{
public:
	// BW1W120 00d40eb8
	static LHLinkedList<LandscapeDetails*> Landscapes;
	// BW1W120 00bfd83c
	static char* OnlineMapsPath;
	// BW1W120 00d40e68
	static DBInfo Query;

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
	// BW1W120 0062e120 BW1M119 013ab9e0
	~MPFEDatabase();

	// BW1W120 0062e140 BW1M119 013ab840
	MPFE_DATABASE_RESULT RefreshDatabase();
	// BW1W120 0062e200 BW1M119 013ab780
	MPFE_DATABASE_RESULT RepopulateDatabase();
	// BW1W120 0062e240 BW1M119 013ab6f0
	void StopQuerying();
	// BW1W120 0062e130 BW1M119 013ab980
	void InitFromDisk();
	// BW1W120 0062e1e0 BW1M119 null
	void SaveToDisk();
	// BW1W120 0062e270 BW1M119 013ab630
	LandscapeDetails* GetLandscapeDetailsforNumber(unsigned long id);
	// BW1W120 0062e2a0 BW1M119 013ab3b0
	void ParseDatabaseInformation();
};

#endif /* BW1_DECOMP_MPFE_DATABASE_INCLUDED_H */
