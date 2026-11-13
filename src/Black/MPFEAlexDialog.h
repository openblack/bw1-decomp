#ifndef BW1_DECOMP_MPFE_ALEX_DIALOG_INCLUDED_H
#define BW1_DECOMP_MPFE_ALEX_DIALOG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t, wcsncpy */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHWin.h>        /* For operator new(size_t, const char*, uint32_t) */

#include "ChannelBox.h" /* For ChannelBox */
#include "MPFEData.h"   /* For enum TeamEnums */

enum MPFEREQUESTER_ENUM
{
	MPFEREQUESTER_WANTS_TO_JOIN = 0,
	MPFEREQUESTER_DENIED_JOIN = 1,
	MPFEREQUESTER_KICKED_YOU = 2,
	MPFEREQUESTER_KICKED_YOU_GAME = 3,
	MPFEREQUESTER_KICK_FAILED = 4,
	MPFEREQUESTER_INVITES_YOU = 5,
	MPFEREQUESTER_COULD_NOT_QUERY_DATABASE = 6,
	MPFEREQUESTER_NOT_FOUND_IN_DATABASE = 7,
	MPFEREQUESTER_COULD_NOT_DOWNLOAD_MAP = 8,
	MPFEREQUESTER_COULD_NOT_DOWNLOAD_THUMB = 9,
	MPFEREQUESTER_PERSON_COULD_NOT_DOWNLOAD = 10,
	MPFEREQUESTER_STILL_DOWNLOADING = 11,
	MPFEREQUESTER_TRANSFERRING_FILES = 13,
	MPFEREQUESTER_HOST_WAIT_START = 14,
	MPFEREQUESTER_CLIENT_WAIT_START = 15,
	MPFEREQUESTER_I_AM_DOWNLOADING = 16,
	MPFEREQUESTER_OTHER_PEOPLE_DOWNLOADING = 17,
	MPFEREQUESTER_CREATURE_ERROR = 19,
	MPFEREQUESTER_CREATURE_UPLOADED_NEXT_TIME = 20,
	MPFEREQUESTER_CREATURE_CONDITIONS = 21,
};

class MPFERequesterQ
{
public:
	MPFEREQUESTER_ENUM Type;
	unsigned long      Colour;
	wchar_t            Name[0x100];
	TeamEnums          Team; /* 0x208 */

	// BW1W120 00625830 BW1M119 01391f50
	MPFERequesterQ(MPFEREQUESTER_ENUM type, wchar_t* name, TeamEnums team, unsigned long colour)
	{
		Colour = colour;
		Type = type;
		if (name != NULL)
		{
			wcsncpy(Name, name, 0xff);
		}
		else
		{
			Name[0] = L'\0';
		}
		Team = team;
		Name[0xff] = L'\0';
	}
};

static_assert(sizeof(MPFERequesterQ) == 0x20c, "MPFERequesterQ size is incorrect");

// BW1W120 inlined BW1M119 inlined
inline void AddRequester(ChannelBox* box, MPFEREQUESTER_ENUM type, wchar_t* name, TeamEnums team, unsigned long colour)
{
	box->Requesters.AddToEnd(NEW(166) MPFERequesterQ(type, name, team, colour));
}

#endif /* BW1_DECOMP_MPFE_ALEX_DIALOG_INCLUDED_H */
