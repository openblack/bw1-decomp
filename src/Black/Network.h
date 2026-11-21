#ifndef BW1_DECOMP_NETWORK_INCLUDED_H
#define BW1_DECOMP_NETWORK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stddef.h> /* For NULL */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

// Forward Declares

class LHLobby;
class LHLobbyChannel;
class LHNetEvent;
class LHSession;
class GBWPlayers;
class GPacket;

#define NETWORK_DEFAULT_SAVE_GAME_LOG_FREQUENCY 100
#define NETWORK_LOBBY_PING_INTERVAL             20000UL
#define NETWORK_MAIL_NAME_LENGTH                250
#define NETWORK_SPEED_FROM_IDLE_TIME            100.0
#define NETWORK_DATA_PACKET_SCORES              0
#define NETWORK_DATA_PACKET_OUT_OF_SYNC_MAP     1
#define NETWORK_MAX_SPEECH_LENGTH               0x200
#define NETWORK_SPECIAL_PREFIX_LENGTH           9
#define NETWORK_IGNORE_SPECIAL                  5
#define NETWORK_EXTERNAL_SPEECH_FLAGS           2

struct GNetwork
{
	uint32_t                  field_0x0;
	float                     Speed;
	LHLinkedList<GBWPlayers*> Players; /* 0x8; descriptive member name */
	LHSession*                session; /* 0x10 */
	uint32_t                  field_0x14;
	LHLobby*                  InternalLobby;
	LHLobbyChannel*           Channel;
	bool                      SaveGameLog;
	unsigned long             SaveGameLogFrequency;
	unsigned long             SaveGameLogStartTurn;
	long                      ReloadDebugIndex;

	GNetwork()
	{
		session = NULL;
		field_0x14 = 0;
		InternalLobby = NULL;
		Channel = NULL;
		field_0x0 = 50;
		SaveGameLog = false;
		SaveGameLogFrequency = NETWORK_DEFAULT_SAVE_GAME_LOG_FREQUENCY;
		SaveGameLogStartTurn = 0;
		ReloadDebugIndex = 0;
	}
	// BW1W120 inlined BW1M119 01390f00
	~GNetwork();
	// BW1W120 00635450 BW1M119 01098c40
	LH_RETURN SendPacket(GPacket* packet, unsigned long size);

	// BW1W120 00d4139c
	static char LobbyServerAddress[0x100];

	// BW1W120 00634450 BW1M119 01116950
	void PrepareCheckSum(void* checksum);
	// BW1W120 006345e0 BW1M119 01019df0
	static void ResetStateDebug();

	// BW1W120 00634640 BW1M119 011166c0
	LH_RETURN Open(char* name, char* application, char* channel, char* password);

	// BW1W120 00635dc0 BW1M119 01114b90
	void ProcessSpeechPacket(LHNetEvent* net_event);
	// BW1W120 006360b0 BW1M119 01090650
	void UpdateDebug();

	// BW1W120 006349f0 BW1M119 01115a20
	uint32_t ProcessOnePacket();
	// BW1W120 00635290 BW1M119 01025570
	uint32_t ProcessOneSuperpacket();
	// BW1W120 00635650 BW1M119 01021aa0
	void ProcessLobbyPackets();
	// BW1W120 00635430 BW1M119 01115840
	bool32_t Close();
};

#endif /* BW1_DECOMP_NETWORK_INCLUDED_H */
