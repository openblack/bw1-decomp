#ifndef BW1_DECOMP_LH_SESSION_INCLUDED_H
#define BW1_DECOMP_LH_SESSION_INCLUDED_H

#include "LHConnection.h"
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

class LHPlayer;

// Only the established prefix is declared. Do not allocate using sizeof(LHSession).
// The original DLL constructor at 10003090 establishes LHConnection inheritance.
class LHSession : public LHConnection
{
public:
	LHLinkedList<LHPlayer*> Players; /* 0x90 */
	uint32_t                field_0x98;
	uint32_t                field_0x9c;
	uint32_t                field_0xa0;
	uint32_t                field_0xa4;
	uint32_t                field_0xa8;
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
	// BW1W120 1001e2b0, import 008a945c
	LH_MULTIPLAYER_API LH_RETURN SetIdlePeriod(unsigned long period);
};

#endif
