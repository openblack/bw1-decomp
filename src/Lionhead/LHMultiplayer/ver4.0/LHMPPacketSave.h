#ifndef BW1_DECOMP_LHMP_PACKET_SAVE_INCLUDED_H
#define BW1_DECOMP_LHMP_PACKET_SAVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <string.h> /* For memset */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHMultiplayerExport.h"

// Forward Declares

class LHNetEvent;
class LHPlayer;
class LHSession;

// Where a session's packets come from. LHMPPacketSave::Open creates the save file for 1 and
// opens an existing one for 2.
// TODO: enumerator names fabricated.
enum LH_PACKET_SOURCE
{
	LH_PACKET_SOURCE_NETWORK = 0x0,
	LH_PACKET_SOURCE_RECORD = 0x1,
	LH_PACKET_SOURCE_PLAYBACK = 0x2,
};

// Header of a saved packet file.
// TODO: layout only partly known; LHMPPacketSave::Open sets NumberOfPlayers from the session.
struct LHReplayPacketInfo
{
	unsigned long field_0x0;
	unsigned long field_0x4;
	unsigned long NumberOfPlayers; /* 0x8 */
};

// Records a session's incoming events to a file, or plays them back. Embedded in every
// LHLobbyChannel (+0x90).
// The whole class is exported: its constructor, destructor and operator= are DLL exports.
class LH_MULTIPLAYER_API LHMPPacketSave
{
public:
	LHLinkedList<LHPlayer*> OriginalPlayerList; /* 0x0 */
	void*                   File;               /* 0x8; HANDLE */
	LH_PACKET_SOURCE        Source;             /* 0xc */
	int                     EventUnread;        /* 0x10 */
	int                     Opened;             /* 0x14 */
	LHReplayPacketInfo      Info;               /* 0x18 */

	// TODO: Mac clears the first word of Info before clearing the whole object; how the original
	// spelled that is unknown.
	// BW1W120 100024f0 BW1M119 010ebfd0 (LHCombined Release)
	LHMPPacketSave()
	{
		memset(&Info, 0, sizeof(Info.field_0x0));
		memset(this, 0, sizeof(*this));
	}
	// BW1W120 10002560 BW1M119 010ebf60 (LHCombined Release)
	~LHMPPacketSave() {}

	// BW1W120 10002520 BW1M119 inlined
	void UnReadEvent() { EventUnread = 1; }
	// BW1W120 10002530 BW1M119 inlined
	int IsOpen() { return Opened; }

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
