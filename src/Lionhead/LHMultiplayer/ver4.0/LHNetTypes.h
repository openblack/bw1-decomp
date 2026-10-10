#ifndef BW1_DECOMP_LH_NET_TYPES_INCLUDED_H
#define BW1_DECOMP_LH_NET_TYPES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#ifdef _LH_MULTIPLAYER_LIB_
class LHTimer;
#endif
#include <Lionhead/LHLib/ver5.0/LHTimer.h>
#include "LHMultiplayerExport.h"
#include "LHNetUser.h"            /* For LH_USER_ID */
#include "LHPacketisableObject.h" /* For LHPacketisableObject */
#include "LHTransportInfo.h"      /* For LHTransportInfo */

class LHPlayer;

class LH_MULTIPLAYER_API LHLocalLobbyInfo : public LHPacketisableObject
{
public:
	char                    Name[LH_MAX_LOBBY_NAME_LENGTH + 1]; /* 0x4 */
	long                    LastHeardTime;                      /* 0x48 */
	LHTransportInfo         ConnectionAcceptor;                 /* 0x4c */
	LHTransportInfo         BroadcastListener;                  /* 0xc0 */
	bool32_t                GameStarted;                        /* 0x134 */
	LHLinkedList<LHPlayer*> Players;                            /* 0x138 */
	LH_USER_ID::CATEGORY    Category;                           /* 0x140 */

#ifdef _LH_MULTIPLAYER_LIB_
	// BW1W120 10069468 BW1M119 01357824 (LHCombined Release)
	static LHTimer Timer;
#endif

	// BW1W120 10002570 BW1M119 inlined
	LHLocalLobbyInfo() { ClearAllData(); }
	// BW1W120 10002610 BW1M119 inlined
	LHLocalLobbyInfo(char* name, LHTransportInfo* connection_acceptor, LHTransportInfo* broadcast_listener,
	                 LHLinkedList<LHPlayer*>* players, LH_USER_ID::CATEGORY category, bool32_t game_started)
	{
		Initialise(name, connection_acceptor, broadcast_listener, players, category, game_started);
	}
	// BW1W120 10017460 BW1M119 01102420 (LHCombined Release)
	LHLocalLobbyInfo(LHLocalLobbyInfo* other);
	// BW1W120 10017730 BW1M119 01101fc0 (LHCombined Release)
	~LHLocalLobbyInfo();

	// BW1W120 100172e0 BW1M119 01102520 (LHCombined Release)
	void ClearAllData();
	// BW1W120 10017520 BW1M119 011022a0 (LHCombined Release)
	void Initialise(char* name, LHTransportInfo* connection_acceptor, LHTransportInfo* broadcast_listener,
	                LHLinkedList<LHPlayer*>* players, LH_USER_ID::CATEGORY category, bool32_t game_started);
	// BW1W120 100175d0 BW1M119 01102090 (LHCombined Release)
	bool32_t UpdateLocalLobbyInfoDetails(LHLocalLobbyInfo* other);

	// BW1W120 100177e0 BW1M119 01101ed0 (LHCombined Release)
	virtual unsigned long GetEncodedLength(unsigned long options, void* context);
	// BW1W120 10017840 BW1M119 01101db0 (LHCombined Release)
	virtual unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context);
	// BW1W120 100178e0 BW1M119 01101c80 (LHCombined Release)
	virtual unsigned char* DecodeFromBuffer(unsigned char* buffer);
	// BW1W120 10017980 BW1M119 01101c20 (LHCombined Release)
	virtual void ClearObject();
};
static_assert(offsetof(LHLocalLobbyInfo, LastHeardTime) == 0x48, "LHLocalLobbyInfo time offset is incorrect");
static_assert(offsetof(LHLocalLobbyInfo, Category) == 0x140, "LHLocalLobbyInfo category offset is incorrect");
static_assert(sizeof(LHLocalLobbyInfo) == 0x144, "LHLocalLobbyInfo size is incorrect");

struct LHChannelPlayerSystemInfo
{
	// BW1W120 10017990 BW1M119 01101ba0 (LHCombined Release)
	~LHChannelPlayerSystemInfo();
};

// BW1W120 10018370 BW1M119 01106230 (LHCombined Release)
LH_MULTIPLAYER_API LHLocalLobbyInfo* LHNetFindLocalLobby(LHLinkedList<LHLocalLobbyInfo*>* list,
                                                         LHTransportInfo*                 transport_info);
// BW1W120 100183c0 BW1M119 01106150 (LHCombined Release)
LH_MULTIPLAYER_API LHLocalLobbyInfo* LHNetFindLocalLobby(LHLinkedList<LHLocalLobbyInfo*>* list, char* name);

#endif /* BW1_DECOMP_LH_NET_TYPES_INCLUDED_H */
