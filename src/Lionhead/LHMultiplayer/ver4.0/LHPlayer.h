#ifndef BW1_DECOMP_LH_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include "LHPacketisableObject.h" /* For struct LHPacketisableObject */
#include "LHNetUser.h"            /* For LH_USER_ID */
#include "LHTransportInfo.h"      /* For struct LHTransportInfo */

class LH_MULTIPLAYER_API LHPlayer : public LHPacketisableObject
{
public:
	char            UserFilename[0x104]; /* 0x4 */
	void*           user_data;           /* 0x108 */
	uint32_t        UserDataLen;
	char16_t        name[0x32]; /* 0x110 */
	uint32_t        PlayerId;   /* 0x174 */
	LH_USER_ID      UserId;
	void*           SystemData;
	LHTransportInfo transport_info;   /* 0x180 */
	uint32_t        TeamMemberNumber; // +1f4; ordinal, not a Boolean flag.
	uint32_t        TeamNumber;       // +1f8; zero is unassigned.
	uint32_t        ClanID;

	// BW1W120 100019c0
	LHPlayer() { ClearAllData(); }
	// BW1W120 10019eb0
	~LHPlayer();
	// BW1W120 10019b40
	LH_RETURN SetDetails(char16_t* player_name, LH_USER_ID user_id, long player_id);
	// BW1W120 10001aa0 BW1M119 0132c480
	LHTransportInfo* GetTransportInfo()
	{
		if (transport_info.type == LH_TRANSPORT_TYPE_TCP)
			return &transport_info;
		return NULL;
	}
	// BW1W120 10001ac0 BW1M119 0132c410
	char16_t* GetName() { return name; }
	// BW1W120 10001ad0 BW1M119 01139c40
	LH_USER_ID GetUserID() { return UserId; }
	// BW1W120 10001b10 BW1M119 0132c440
	long GetPlayerID() { return PlayerId; }

	// BW1W120 10001b40 BW1M119 010f12e0 (LHCombined Release)
	void* GetSystemData() { return SystemData; }

	// BW1W120 10019cf0 BW1M119 01107bb0 (LHCombined Release)
	LHPlayer(LHPlayer* player);
	// BW1W120 10019e40 BW1M119 01107ad0 (LHCombined Release)
	LHPlayer(LHNetUser* user);
	// BW1W120 10019b80 BW1M119 01107ee0 (LHCombined Release)
	LH_RETURN SetDetails(LHPlayer* player);
	// BW1W120 1001a070 BW1M119 01107380 (LHCombined Release)
	void* AllocSystemData(unsigned long size);
	// BW1W120 10019cd0 BW1M119 01107d20 (LHCombined Release)
	void SetUserFile(const char* file_name);
	// BW1W120 10019ed0 BW1M119 01107930 (LHCombined Release)
	void SetUserData(void* data, unsigned long length);
	// BW1W120 1001a020 BW1M119 01107420 (LHCombined Release)
	unsigned long Compare(LHPlayer* player);
	// BW1W120 10019f30 BW1M119 01107800 (LHCombined Release)
	static LHPlayer* GetPlayer(LH_USER_ID user_id, LHLinkedList<LHPlayer*>* list);
	// BW1W120 10019f90 BW1M119 01107510 (LHCombined Release)
	static LH_RETURN CopyPlayerList(LHLinkedList<LHPlayer*>* destination, LHLinkedList<LHPlayer*>* source);
	// BW1W120 1001a2d0 BW1M119 01106d90 (LHCombined Release)
	static LHPlayer* Create();
	// BW1W120 10019f60 BW1M119 01005660 (LHCombined Release)
	static LHPlayer* GetPlayerFromPlayerNumber(unsigned long number, LHLinkedList<LHPlayer*>* list);

protected:
	// BW1W120 10019c70
	void ClearAllData();

public:
	// BW1W120 1001a0f0
	virtual unsigned long GetEncodedLength(unsigned long options, void* context);
	// BW1W120 1001a160
	virtual unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context);
	// BW1W120 1001a210
	virtual unsigned char* DecodeFromBuffer(unsigned char* buffer);
	// BW1W120 1001a330
	virtual void ClearObject();
};

static_assert(sizeof(LHPlayer) == 0x200, "LHPlayer size is incorrect");

#endif /* BW1_DECOMP_LH_PLAYER_INCLUDED_H */
