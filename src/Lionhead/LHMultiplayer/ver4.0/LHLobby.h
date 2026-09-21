#ifndef BW1_DECOMP_LH_LOBBY_INCLUDED_H
#define BW1_DECOMP_LH_LOBBY_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHConnection.h" /* For struct LHConnection */

enum LOBBY_TYPE
{
	LOBBY_TYPE_INTERNET = 0x0,
	LOBBY_TYPE_LAN = 0x1,
	_LOBBY_TYPE_COUNT = 0x2
};

enum LH_OPERATING_MODE
{
	LH_OPERATING_MODE_0 = 0x0,
	_LH_OPERATING_MODE_COUNT = 0x1
};

// Forward Declares

struct LHMPServerStartInfo;
class LHNetEvent;

struct LHLobby
{
	LHConnection connection; /* 0x0 */

	// Non-virtual methods

	// BW1W120 1000cb00 BW1M119 010efc50 (LHCombined Release)
	LH_RETURN OpenLocalLobby(LHMPServerStartInfo* info);
	// BW1W120 1000d440 BW1M119 010eedb0 (LHCombined Release)
	LH_RETURN ProcessLobbyPlayerList(LHNetEvent* net_event);
	// BW1W120 005ea900 BW1M119 010eccb0 (LHCombined Release)
	void _dt();
	// BW1W120 007c549c BW1M119 010ec830 (LHCombined Release)
	void Close();
	// BW1W120 007c54a2 BW1M119 010ef4a0 (LHCombined Release)
	LH_RETURN ProcessEvent(LHNetEvent* param_1);
};

#endif /* BW1_DECOMP_LH_LOBBY_INCLUDED_H */
