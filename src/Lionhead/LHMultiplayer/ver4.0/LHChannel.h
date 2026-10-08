#ifndef BW1_DECOMP_LH_CHANNEL_INCLUDED_H
#define BW1_DECOMP_LH_CHANNEL_INCLUDED_H
#include <assert.h>
#include <stddef.h>
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include "LHPacketisableObject.h"
#include "LHMultiplayerExport.h"

#include <string.h> /* For strncpy */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHNetUser.h" /* For LH_USER_ID */

class LHPlayer;

// Name of the channel every lobby client joins first. A plain `const char*`: the target symbol is
// ?LH_CHANNEL_DEFAULT_NAME@@3PBDB (`const char* const` would mangle as 3QBDB).
// BW1W120 100610d8 BW1M119 011d186c (LHCombined Release)
LH_MULTIPLAYER_API extern const char* LH_CHANNEL_DEFAULT_NAME;

// DLL copy constructor establishes inheritance; vector-deleting stride is 0x78.
class LHChannel : public LHPacketisableObject
{
public:
	char                    Name[49];
	char                    Password[49];
	void*                   GameData;
	unsigned long           GameDataLength;
	LHLinkedList<LHPlayer*> Players;

	// BW1W120 10002240 BW1M119 010ec1b0 (LHCombined Release)
	LHChannel() { ClearAllData(); }
	// BW1W120 100022f0 BW1M119 010ebf00 (LHCombined Release)
	void SetName(const char* name) { strncpy(Name, name, 0x30); }
	// BW1W120 10002310 BW1M119 inlined
	void SetPassword(const char* password) { strncpy(Password, password, 0x30); }
	// BW1W120 10002330 BW1M119 inlined
	char* GetName() { return Name; }
	// BW1W120 10002340 BW1M119 010f2420 (LHCombined Release)
	LHLinkedList<LHPlayer*>* GetPlayerList() { return &Players; }
	// BW1W120 10002350 BW1M119 inlined
	LHPlayer* GetNextPlayer(LHPlayer* player) { return Players.FindNext(player); }
	// BW1W120 10002390 BW1M119 inlined
	unsigned long GetSize() { return Players.count; }

	// BW1W120 10004120 BW1M119 010dbd40 (LHCombined Release)
	LH_MULTIPLAYER_API static LHChannel* FindChannel(char* name, LHLinkedList<LHChannel*>* list);

protected:
	// BW1W120 10004180 BW1M119 010dbc70 (LHCombined Release)
	LH_MULTIPLAYER_API void ClearAllData();

public:
	// BW1W120 10004210 BW1M119 010db920 (LHCombined Release)
	LH_MULTIPLAYER_API LHPlayer* GetPlayer(LH_USER_ID user_id);
	// BW1W120 10004240 BW1M119 010db760 (LHCombined Release)
	LH_MULTIPLAYER_API LH_RETURN AddPlayer(LHPlayer* player, char* password);
	// BW1W120 100042e0 BW1M119 010db5c0 (LHCombined Release)
	LH_MULTIPLAYER_API LH_RETURN RemovePlayer(LHPlayer* player);
	// BW1W120 100043f0 BW1M119 010db340 (LHCombined Release)
	LH_MULTIPLAYER_API LH_RETURN SetGameData(unsigned long length, void* data);
	// BW1W120 10004450 BW1M119 010db150 (LHCombined Release)
	LH_MULTIPLAYER_API LH_USER_ID GetFirstUserID();

	virtual LH_MULTIPLAYER_API unsigned long  GetEncodedLength(unsigned long options, void* context);
	virtual LH_MULTIPLAYER_API unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options,
	                                                         void* context);
	virtual LH_MULTIPLAYER_API unsigned char* DecodeFromBuffer(unsigned char* buffer);
	virtual LH_MULTIPLAYER_API void           ClearObject();
	// Fifth vtable slot (100502ec).
	// BW1W120 10004350
	virtual LH_MULTIPLAYER_API ~LHChannel();
	// BW1W120 100023a0 BW1M119 014fd580
	void* GetGameData() { return GameData; }
	// BW1W120 100023b0 BW1M119 0116e700
	unsigned long GetGameDataLength() { return GameDataLength; }
};
static_assert(offsetof(LHChannel, GameData) == 0x68, "LHChannel game data offset is incorrect");
static_assert(sizeof(LHChannel) == 0x78, "LHChannel size is incorrect");
#endif
