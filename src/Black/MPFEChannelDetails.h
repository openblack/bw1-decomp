#ifndef BW1_DECOMP_MPFE_CHANNEL_DETAILS_INCLUDED_H
#define BW1_DECOMP_MPFE_CHANNEL_DETAILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <wchar.h>  /* For wchar_t */

#include <GameSpy/CEngine/goaceng.h> /* For GServer */

class LHLocalLobbyInfo;

struct MPFEChannelDetails
{
	wchar_t           Name[0x80];
	wchar_t           MapName[0x100]; /* 0x100 */
	unsigned long     MapID;          /* 0x300 */
	uint8_t           field_0x304[0x194];
	bool              Closed; /* 0x498 */
	bool              HasPassword;
	GServer           Server;    /* 0x49c */
	LHLocalLobbyInfo* LobbyInfo; /* 0x4a0 */
	uint8_t           field_0x4a4[0x4];
	int               NumPlayers;  /* 0x4a8 */
	unsigned long     GameVersion; /* 0x4ac */
	unsigned long     NumTeams;    /* 0x4b0 */
#if !defined(VERSION_BW1W100)
	int field_0x4b4;
	int field_0x4b8;
	int MaxPlayers; /* 0x4bc */
#endif
	char Host[0x100];
};
#if defined(VERSION_BW1W100)
static_assert(sizeof(MPFEChannelDetails) == 0x5b4, "MPFEChannelDetails size is incorrect");
#else
static_assert(sizeof(MPFEChannelDetails) == 0x5c0, "MPFEChannelDetails size is incorrect");
#endif

#endif /* BW1_DECOMP_MPFE_CHANNEL_DETAILS_INCLUDED_H */
