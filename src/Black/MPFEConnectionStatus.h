#ifndef BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H
#define BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h> /* For enum LOBBY_TYPE */

class MPFEConnectionType;

struct MPFEConnectionStatus
{
	// Descriptive singleton name; extracted storage.
	// BW1W120 00d40e20
	static MPFEConnectionStatus Status;
	LOBBY_TYPE                  type;

	// Non-virtual methods

	// BW1W120 0062da90 BW1M119 013a93d0
	void StartGame();
	// BW1W120 0062dab0 BW1M119 013a9380
	bool IsLanLobby();
	// BW1W120 0062dac0 BW1M119 013a9330
	bool IsInternetLobby();
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

#endif /* BW1_DECOMP_MPFE_CONNECTION_STATUS_INCLUDED_H */
