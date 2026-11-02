#ifndef BW1_DECOMP_MPFE_CHANNEL_DETAILS_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANNEL_DETAILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <wchar.h>  /* For wchar_t */

#include <GameSpy/CEngine/goaceng.h> /* For GServer */

struct MPFEChannelDetails
{
	uint8_t       field_0x0[0x100];
	wchar_t       MapName[0x100]; /* 0x100 */
	unsigned long MapID;          /* 0x300 */
	uint8_t       field_0x304[0x195];
	bool          HasPassword;
	uint8_t       field_0x49a[0x2];
	GServer       Server;
	uint8_t       field_0x4a0[0x8];
	int           NumPlayers;
	uint8_t       field_0x4ac[0x4];
	unsigned long NumTeams; /* 0x4b0 */
	uint8_t       field_0x4b4[0x8];
	int           MaxPlayers;
};

#endif /* BW1_DECOMP_MPFE_CHANNEL_DETAILS_INCLUDED_H */
