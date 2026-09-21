#ifndef BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H
#define BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h> /* For enum LOBBY_TYPE */

struct MPFEConnectionStatus
{
	// Descriptive singleton name; extracted storage.
	// BW1W120 00d40e20
	static MPFEConnectionStatus Status;
	LOBBY_TYPE                  type; /* 0x0 */

	// Non-virtual methods

	// BW1W120 0062dab0 BW1M119 013a9380
	bool IsLanLobby();
	// BW1W120 0062dac0 BW1M119 013a9330
	bool IsInternetLobby();
};

#endif /* BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H */
