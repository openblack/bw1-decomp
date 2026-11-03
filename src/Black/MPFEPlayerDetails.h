#ifndef BW1_DECOMP_MPFE_PLAYER_DETAILS_INCLUDED_H
#define BW1_DECOMP_MPFE_PLAYER_DETAILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <wchar.h>  /* For wchar_t */

#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h> /* For struct LH_USER_ID */

struct MPFEPlayerDetails
{
	enum
	{
		NAME_SIZE = 0x80
	};

	wchar_t       Name[NAME_SIZE];
	bool          IsHost;       /* 0x100 */
	int           PlayerNumber; /* 0x104 */
	LH_USER_ID    ID;           /* 0x108 */
	unsigned long JoinTime;     /* 0x10c */
	int           Team;         /* 0x110 */
	unsigned long TeamNumber;   /* 0x114 */
	bool          IsTeamLeader; /* 0x118 */
	bool          field_0x119;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	bool HasCreature; /* 0x11a */
#endif
	int Ping; /* 0x11c */
#if defined(VERSION_BW1W100)
	LH_USER_ID DatabaseID; /* 0x120 */
#elif defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
	bool       ReceivedDatabaseID; /* 0x120 */
	LH_USER_ID DatabaseID;         /* 0x124 */
#else
	bool       ReceivedDatabaseID; /* 0x120 */
	bool       Ready;
	uint8_t    field_0x122[0x6];
	LH_USER_ID DatabaseID; /* 0x128 */
#endif

	// Non-virtual methods

	// BW1W120 00632670 BW1M119 013b08f0
	wchar_t* GetName();
};

#endif /* BW1_DECOMP_MPFE_PLAYER_DETAILS_INCLUDED_H */
