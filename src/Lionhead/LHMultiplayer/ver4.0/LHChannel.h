#ifndef BW1_DECOMP_LH_CHANNEL_INCLUDED_H
#define BW1_DECOMP_LH_CHANNEL_INCLUDED_H
#include <assert.h>
#include <stddef.h>
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include "LHPacketisableObject.h"
#include "LHMultiplayerExport.h"

class LHPlayer;
// DLL copy constructor establishes inheritance; vector-deleting stride is 0x78.
class LHChannel : public LHPacketisableObject
{
public:
	char                                      Name[49];
	char                                      Password[49];
	void*                                     GameData;
	unsigned long                             GameDataLength;
	LHLinkedList<LHPlayer*>                   Players;
	virtual LH_MULTIPLAYER_API unsigned long  GetEncodedLength(unsigned long options, void* context);
	virtual LH_MULTIPLAYER_API unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options,
	                                                         void* context);
	virtual LH_MULTIPLAYER_API unsigned char* DecodeFromBuffer(unsigned char* buffer);
	virtual LH_MULTIPLAYER_API void           ClearObject();
	// BW1W120 10004350, fifth vtable slot (100502ec).
	virtual LH_MULTIPLAYER_API ~LHChannel();
	// BW1W120 100023a0 BW1M100 104f3fc0 LHChannel::GetGameData(void)
	void* GetGameData() { return GameData; }
	// BW1W120 100023b0 BW1M100 100a6750 LHChannel::GetGameDataLength(void)
	unsigned long GetGameDataLength() { return GameDataLength; }
};
static_assert(offsetof(LHChannel, GameData) == 0x68, "LHChannel game data offset is incorrect");
static_assert(sizeof(LHChannel) == 0x78, "LHChannel size is incorrect");
#endif
