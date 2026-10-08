#ifndef BW1_DECOMP_MPFE_DATA_INCLUDED_H
#define BW1_DECOMP_MPFE_DATA_INCLUDED_H

#include <stdint.h>
#include <wchar.h> /* For wchar_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>        /* For LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h> /* For LHOrderedLinkedList */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>   /* For struct LH_USER_ID */

#include "WinCondition.h"

class ChannelBox;
class LayerCommunication;
struct MPFEChannelDetails;
struct MPFEPlayerDetails;

class MPFEData
{
public:
	enum
	{
		MAX_TEAMS = 5,
		PLAYER_NAME_SIZE = 0x80
	};

	LHOrderedLinkedList<MPFEPlayerDetails> Teams[MAX_TEAMS];
	uint8_t                                field_0x28[0xa34];
	MPFEChannelDetails*                    CurrentChannel;
	LayerCommunication*                    Layer;
	ChannelBox*                            ActiveDialog;
	uint8_t                                field_0xa68[0x6c];
	LHLinkedList<MPFEPlayerDetails*>       UnassignedPlayers;
	uint8_t                                field_0xadc[0xae8];
	bool                                   IsOOSGame;
	bool                                   InGameChannel;
	bool                                   IsHost;
#ifdef VERSION_BW1W120
	uint8_t      field_0x15c7[0xa];
	bool         GameStarting;
	WinCondition Conditions[WC_LAST];
	uint8_t      field_0x16c4[0x74];
	uint32_t     LocalPlayerID;
	wchar_t      LocalPlayerName[PLAYER_NAME_SIZE];
#else
	uint8_t  field_0x15c7[0x7];
	bool     GameStarting;
	uint8_t  field_0x15cf[0x69];
	uint32_t LocalPlayerID;
	wchar_t  LocalPlayerName[PLAYER_NAME_SIZE];
#endif

	// BW1W120 00d3f038
	static MPFEData Data;
	// BW1W120 00d408a0
	static uint64_t InfoFileChecksum2;
	// BW1W120 00d408a8
	static uint64_t InfoFileChecksum;
	// BW1W120 00d408b0
	static uint64_t CreatureFileChecksum;
	// BW1W120 00d408b8
	static uint64_t OOSChecksum;
	// BW1W120 00bf456c
	static unsigned long TeamColors[MAX_TEAMS];

	// BW1W120 006227c0 BW1M119 013a02f0
	void Reset();
#ifdef VERSION_BW1W120
	// BW1W120 00622a60 BW1M119 null
	void ResetConditions();
#endif
	// BW1W120 00622c10 BW1M119 013a0150
	void A2D_LeaveGameChannel();
	// BW1W120 00622d40 BW1M119 013a00f0
	MPFEPlayerDetails* GetLocalPlayer();
	// BW1W120 00622e60 BW1M119 0139fcd0
	MPFEPlayerDetails* GetPlayerDetailsFromDatabaseID(LH_USER_ID id);
	// BW1W120 00620770 BW1M119 01392db0
	void D2A_YouWereKickedGame(wchar_t* name);
	// BW1W120 006241f0 BW1M119 0139d6f0
	void D_PlayerJoined(const char* nick, LH_USER_ID id);
	// BW1W120 006244a0 BW1M119 0139cad0
	void D_PlayerLeft(LH_USER_ID id, wchar_t* name);
	// BW1W120 00624b50 BW1M119 0139c660
	void D_IJoinedRoom(const wchar_t* name, bool host, LH_USER_ID id);
	// BW1W120 00624df0 BW1M119 0139c5c0
	void D_FinishedPlayerEnumeration(int count);
	// BW1W120 00624f20 BW1M119 0139bfb0
	void D_EnumeratingPlayersAdd(const char* nick, bool host, LH_USER_ID id);
	// BW1W120 00626360 BW1M119 01399ee0
	uint64_t GetOOSChecksum();
};

#endif /* BW1_DECOMP_MPFE_DATA_INCLUDED_H */
