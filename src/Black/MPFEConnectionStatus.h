#ifndef BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H
#define BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h> /* For enum LOBBY_TYPE */

struct MPFEConnectionStatus
{
	LOBBY_TYPE type; /* 0x0 */

	// Non-virtual methods

	// BW1W120 0062dab0 BW1M100 103a1860 MPFEConnectionStatus::IsLanLobby(void)
	bool IsLanLobby();
	// BW1W120 0062dac0 BW1M100 103a1810 MPFEConnectionStatus::IsInternetLobby(void)
	bool IsInternetLobby();
};

#endif /* BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H */
