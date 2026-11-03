#ifndef BW1_DECOMP_MPFE_CREATURE_DOWNLOAD_INCLUDED_H
#define BW1_DECOMP_MPFE_CREATURE_DOWNLOAD_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHMultiplayer/ver4.0/LHDatabase.h> /* For struct DBInfo */

class MPFECreatureDownload
{
public:
	DBInfo        Query;
	int           Status;           /* 0x4c */
	char*         CreatureFile;     /* 0x50 */
	unsigned long CreatureFileSize; /* 0x54 */
	char*         UserData;         /* 0x58 */
	unsigned long UserDataLen;      /* 0x5c */
	float         field_0x60;
};

static_assert(sizeof(MPFECreatureDownload) == 0x64, "MPFECreatureDownload size is incorrect");

#endif /* BW1_DECOMP_MPFE_CREATURE_DOWNLOAD_INCLUDED_H */
