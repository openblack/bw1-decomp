#ifndef BW1_DECOMP_LH_SESSION_INCLUDED_H
#define BW1_DECOMP_LH_SESSION_INCLUDED_H

#include "LHConnection.h"

// Only the established prefix is declared. Do not allocate using sizeof(LHSession).
// The original DLL constructor at 10003090 establishes LHConnection inheritance.
class LHSession : public LHConnection
{
public:
	uint32_t field_0x90; /* Player list head; full list declaration is not recovered here. */
	uint32_t field_0x94;
	uint32_t field_0x98;
	uint32_t field_0x9c;
	uint32_t field_0xa0;
	uint32_t field_0xa4;
	uint32_t field_0xa8;
	// Original GetSuperPacketGameTurn at 10003170 reads this signed long.
	long SuperPacketGameTurn; /* 0xac */

	// BW1W120 1001dab0 BW1M100 10036a3c LHSession::IsSinglePlayer(void)
	LH_MULTIPLAYER_API int IsSinglePlayer();
	// BW1W120 1001e5e0
	LH_MULTIPLAYER_API int NextPacketIsSuperpacket();
	// BW1W120 1001ccc0
	LH_MULTIPLAYER_API void SetupGamePlayerInfo();
	// BW1W120 1001e170
	LH_MULTIPLAYER_API LH_RETURN SyncAllAndStartSession(unsigned long timeout);
	// BW1W120 import 008a9484
	LH_MULTIPLAYER_API LH_RETURN Write(void* packet, unsigned long length);
};

#endif
