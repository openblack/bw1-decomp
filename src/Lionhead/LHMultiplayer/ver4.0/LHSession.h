#ifndef BW1_DECOMP_LH_SESSION_INCLUDED_H
#define BW1_DECOMP_LH_SESSION_INCLUDED_H

#include "LHConnection.h"
#include "LHChannel.h"
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

class LHPlayer;

struct LHSessionGamePlayerInfo
{
	unsigned long UserID;
	unsigned long ClanID;
};

class LHSession : public LHConnection
{
public:
	LHLinkedList<LHPlayer*> Players;
	uint32_t                field_0x98;
	uint32_t                field_0x9c;
	LHChannel*              Channel;
	uint32_t                field_0xa4;
	uint32_t                field_0xa8;
	long                    SuperPacketGameTurn;
	uint8_t                 field_0xb0[0x9c];
	LHPlayer*               LocalPlayer;
	uint8_t                 field_0x150[0x18c];
	LHSessionGamePlayerInfo GamePlayerInfo[4][4];

	// BW1W120 1001dab0 BW1M119 0101f490 (LHCombined Release)
	LH_MULTIPLAYER_API int IsSinglePlayer();
	// BW1W120 10003260
	LH_MULTIPLAYER_API void* GetGameData();
	// BW1W120 10003270
	LH_MULTIPLAYER_API unsigned long GetGameDataLength();
	// BW1W120 1001e5e0
	LH_MULTIPLAYER_API int NextPacketIsSuperpacket();
	// BW1W120 1001ccc0
	LH_MULTIPLAYER_API void SetupGamePlayerInfo();
	// BW1W120 1001e170
	LH_MULTIPLAYER_API LH_RETURN SyncAllAndStartSession(unsigned long timeout);
	// IAT 008a9484.
	// BW1W120 1001cc50
	LH_MULTIPLAYER_API LH_RETURN Write(void* packet, unsigned long length);
	// IAT 008a945c.
	// BW1W120 1001e2b0
	LH_MULTIPLAYER_API LH_RETURN SetIdlePeriod(unsigned long period);
	// IAT 008a9460.
	// BW1W120 1001e6b0
	LH_MULTIPLAYER_API void EmptyEventQ();
};

#endif
