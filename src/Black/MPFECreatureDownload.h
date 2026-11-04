#ifndef BW1_DECOMP_MPFE_CREATURE_DOWNLOAD_INCLUDED_H
#define BW1_DECOMP_MPFE_CREATURE_DOWNLOAD_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHMultiplayer/ver4.0/LHDatabase.h> /* For struct DBInfo */

#include <re_common.h> /* For bool32_t */

enum MPFE_CREATURE_DOWNLOAD_RESULT
{
	MPFE_CREATURE_DOWNLOAD_RESULT_IDLE = 0,
	MPFE_CREATURE_DOWNLOAD_RESULT_PENDING = 1,
	MPFE_CREATURE_DOWNLOAD_RESULT_ERROR = 2,
	MPFE_CREATURE_DOWNLOAD_RESULT_COMPLETE = 3,
};

class MPFECreatureDownload
{
public:
	// BW1W120 0062db80 BW1M119 013ab1c0
	MPFECreatureDownload();
	// BW1W120 0062dbd0 BW1M119 013ab0c0
	~MPFECreatureDownload();
	// BW1W120 0062dc30 BW1M119 013ab000
	void Stop();
	// BW1W120 0062dc80 BW1M119 013aaf40
	MPFE_CREATURE_DOWNLOAD_RESULT Start(unsigned long id);
	// BW1W120 0062dcf0 BW1M119 013aac50
	MPFE_CREATURE_DOWNLOAD_RESULT Refresh();

	DBInfo        Query;
	bool32_t      Querying;         /* 0x4c */
	char*         CreatureFile;     /* 0x50 */
	unsigned long CreatureFileSize; /* 0x54 */
	char*         UserData;         /* 0x58 */
	unsigned long UserDataLen;      /* 0x5c */
	float         Alignment;        /* 0x60 */
};

static_assert(sizeof(MPFECreatureDownload) == 0x64, "MPFECreatureDownload size is incorrect");

#endif /* BW1_DECOMP_MPFE_CREATURE_DOWNLOAD_INCLUDED_H */
