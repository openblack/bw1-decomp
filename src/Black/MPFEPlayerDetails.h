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

	wchar_t Name[NAME_SIZE];
	bool    IsHost;
	uint8_t field_0x101[0x1b];
	int     Ping; /* 0x11c */
#if defined(VERSION_BW1W100)
	LH_USER_ID ID;
#elif defined(VERSION_BW1W110)
	uint8_t    field_0x120[0x4];
	LH_USER_ID ID;
#else
	uint8_t    field_0x120[0x8];
	LH_USER_ID ID;
#endif

	// Non-virtual methods

	// BW1W120 00632670 BW1M119 013b08f0
	wchar_t* GetName();
};

#endif /* BW1_DECOMP_MPFE_PLAYER_DETAILS_INCLUDED_H */
