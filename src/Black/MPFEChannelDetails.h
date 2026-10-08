#ifndef BW1_DECOMP_MPFE_CHANNEL_DETAILS_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANNEL_DETAILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <GameSpy/CEngine/goaceng.h> /* For GServer */

struct MPFEChannelDetails
{
	uint8_t field_0x0[0x499];
	bool    HasPassword;
	uint8_t field_0x49a[0x2];
	GServer Server;
	uint8_t field_0x4a0[0x8];
	int     NumPlayers;
	uint8_t field_0x4ac[0x10];
	int     MaxPlayers;
};

#endif /* BW1_DECOMP_MPFE_CHANNEL_DETAILS_INCLUDED_H */
