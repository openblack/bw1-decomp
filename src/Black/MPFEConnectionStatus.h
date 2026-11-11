#ifndef BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H
#define BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */

#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h> /* For enum LOBBY_TYPE */

class MPFEConnectionType;

struct MPFEConnectionStatus
{
	// BW1W120 00d40e20
	static MPFEConnectionStatus Status;

	LOBBY_TYPE          type;       /* 0x0 */
	MPFEConnectionType* Connection; /* 0x4 */

	// BW1W120 inlined BW1M119 inlined
	MPFEConnectionStatus()
	{
		type = _LOBBY_TYPE_COUNT;
		Connection = NULL;
	}

	// BW1W120 inlined BW1M119 0139b0a0
	MPFEConnectionType* GetConnection() { return Connection; }

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	// BW1W120 0062d800 BW1M119 null
	bool UsingInternetLobby();
	// BW1W120 0062d810 BW1M119 013a9a90
	bool UsingLanLobby();
	// BW1W120 0062d820 BW1M119 null
	bool UsingDialupConnection();
	// BW1W120 0062d840 BW1M119 null
	bool UsingLanConnection();
#endif
	// BW1W120 0062da90 BW1M119 013a93d0
	void StartGame();
	// BW1W120 0062dab0 BW1M119 013a9380
	bool IsLanLobby();
	// BW1W120 0062dac0 BW1M119 013a9330
	bool IsInternetLobby();
	// BW1W120 0062dad0 BW1M119 013a92e0
	bool IsInALobby();
	// BW1W120 0062d860 BW1M119 013a99d0
	void SetConnection(MPFEConnectionType* connection);
	// BW1W120 0062d8a0 BW1M119 013a98e0
	void SetLobbyType(LOBBY_TYPE lobby_type);
	// BW1W120 0062d8f0 BW1M119 013a9820
	void LeaveLobbyScreen();
	// BW1W120 0062d930 BW1M119 013a9750
	void LeaveLoginScreen();
	// BW1W120 0062d980 BW1M119 013a96d0
	void LeaveLobbyTypeScreen();
	// BW1W120 0062d9a0 BW1M119 013a9650
	void LeaveConnectionScreen();
	// BW1W120 0062d9c0 BW1M119 013a95d0
	void DoLogin();
	// BW1W120 0062d9e0 BW1M119 013a94d0
	void ReEnterMultiplayerScreens();
	// BW1W120 0062da60 BW1M119 013a9440
	void StartMultiplayerScreens();
};

static_assert(sizeof(MPFEConnectionStatus) == 0x8, "MPFEConnectionStatus size is incorrect");

#endif /* BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H */
