#ifndef BW1_DECOMP_LHMP_PACKET_SAVE_INCLUDED_H
#define BW1_DECOMP_LHMP_PACKET_SAVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <string.h> /* For memset */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

class LHNetEvent;
class LHPlayer;
class LHSession;

enum LH_PACKET_SOURCE
{
	LH_PACKET_SOURCE_NETWORK = 0x0,
	LH_PACKET_SOURCE_RECORD = 0x1,
	LH_PACKET_SOURCE_PLAYBACK = 0x2,
};

struct LHReplayPacketInfo
{
	unsigned long NumberOfSuperPackets; /* 0x0 */
	unsigned long OutOfSyncGameTurn;    /* 0x4 */
	unsigned long NumberOfPlayers;      /* 0x8 */
};

class LH_MULTIPLAYER_API LHMPPacketSave
{
public:
	LHLinkedList<LHPlayer*> OriginalPlayerList; /* 0x0 */
	void*                   File;               /* 0x8 */
	LH_PACKET_SOURCE        Source;             /* 0xc */
	bool32_t                EventUnread;        /* 0x10 */
	bool32_t                Opened;             /* 0x14 */
	LHReplayPacketInfo      Info;               /* 0x18 */

	// BW1W120 100024f0 BW1M119 010ebfd0 (LHCombined Release)
	LHMPPacketSave()
	{
		memset(&Info, 0, sizeof(Info.NumberOfSuperPackets));
		memset(this, 0, sizeof(*this));
	}
	// BW1W120 10002560 BW1M119 010ebf60 (LHCombined Release)
	~LHMPPacketSave() {}

	// BW1W120 10002520 BW1M119 inlined
	void UnReadEvent() { EventUnread = true; }
	// BW1W120 10002530 BW1M119 inlined
	bool32_t IsOpen() { return Opened; }

	// BW1W120 10015ab0 BW1M119 010ff2a0 (LHCombined Release)
	void Open(LH_PACKET_SOURCE source, LHSession* session);
	// BW1W120 10015b70 BW1M119 010fee90 (LHCombined Release)
	void ProcessHeader(LHSession* session);
	// BW1W120 10015eb0 BW1M119 010fece0 (LHCombined Release)
	void RestoreOriginalPlayerList(LHSession* session);
	// BW1W120 10015f10 BW1M119 010feba0 (LHCombined Release)
	static LH_RETURN CheckSavedPacketsAvail(LHReplayPacketInfo* info);
	// BW1W120 10015f90 BW1M119 010fe880 (LHCombined Release)
	LHNetEvent* ReadEventFromFile();
	// BW1W120 10016090 BW1M119 010fe6e0 (LHCombined Release)
	void WriteEventToFile(LHNetEvent* net_event);
	// BW1W120 100160e0 BW1M119 010fe590 (LHCombined Release)
	void UpdateInfoBlock();
	// BW1W120 10016170 BW1M119 010fe520 (LHCombined Release)
	void Close();
};
static_assert(sizeof(LHMPPacketSave) == 0x24, "LHMPPacketSave size is incorrect");

#endif /* BW1_DECOMP_LHMP_PACKET_SAVE_INCLUDED_H */
