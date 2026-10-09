#ifndef BW1_DECOMP_LH_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdlib.h> /* For _MAX_PATH */
#include <wchar.h>  /* For wchar_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include "LHPacketisableObject.h" /* For struct LHPacketisableObject */
#include "LHNetUser.h"            /* For LH_USER_ID */
#include "LHTransportInfo.h"      /* For struct LHTransportInfo */

enum
{
	LH_PLAYER_MAX_USER_DATA_LENGTH = 40000,
};

class LH_MULTIPLAYER_API LHPlayer : public LHPacketisableObject
{
public:
	char            UserFilename[_MAX_PATH];      /* 0x004 */
	void*           UserData;                     /* 0x108 */
	unsigned long   UserDataLen;                  /* 0x10c */
	wchar_t         Name[LH_MAX_NAME_LENGTH + 1]; /* 0x110 */
	long            PlayerId;                     /* 0x174 */
	LH_USER_ID      UserId;                       /* 0x178 */
	void*           SystemData;                   /* 0x17c */
	LHTransportInfo TransportInfo;                /* 0x180 */
	unsigned long   TeamMemberNumber;             /* 0x1f4 */
	unsigned long   TeamNumber;                   /* 0x1f8 */
	unsigned long   ClanID;                       /* 0x1fc */

	// BW1W120 100019c0 BW1M119 010e2430 (LHCombined Release)
	LHPlayer() { ClearAllData(); }
	// BW1W120 10001a10 BW1M119 inlined
	static LH_USER_ID GetPlayerID(LH_USER_ID user_id, LHLinkedList<LHPlayer*>* list)
	{
		LHPlayer* player = GetPlayer(user_id, list);
		return player != NULL ? player->PlayerId : LH_ALL_USERS_ID;
	}
#ifdef LH_MULTIPLAYER_EXPORTS
	// BW1W120 10001a40 BW1M119 inlined
	void SetTransportInfo(LHTransportInfo* transport_info) { TransportInfo = *transport_info; }
#endif
	// BW1W120 10001aa0 BW1M119 010fd800 (LHCombined Release)
	LHTransportInfo* GetTransportInfo()
	{
		if (TransportInfo.type == LH_TRANSPORT_TYPE_TCP)
			return &TransportInfo;
		return NULL;
	}
	// BW1W120 10001ac0 BW1M119 0132c410
	wchar_t* GetName() { return Name; }
	// BW1W120 10001ad0 BW1M119 010dfcb0 (LHCombined Release)
	LH_USER_ID GetUserID() { return UserId; }
	// BW1W120 10001ae0 BW1M119 inlined
	bool32_t IsServer() { return UserId.IsServer(); }
	// BW1W120 10001b10 BW1M119 0110efe0 (LHCombined Release)
	long GetPlayerID() { return PlayerId; }
	// BW1W120 10001b20 BW1M119 inlined
	void SetPlayerID(long player_id) { PlayerId = player_id; }
	// BW1W120 10001b30 BW1M119 inlined
	const char* GetUserFileName() { return UserFilename; }
	// BW1W120 10001b40 BW1M119 010f12e0 (LHCombined Release)
	void* GetSystemData() { return SystemData; }
	// BW1W120 10001b50 BW1M119 inlined
	void* GetUserData() { return UserData; }
	// BW1W120 10001b60 BW1M119 inlined
	unsigned long GetUserDataLen() { return UserDataLen; }
	// BW1W120 10001b70 BW1M119 inlined
	bool IsHost() { return TransportInfo.type == LH_TRANSPORT_TYPE_ASYNC; }

	// BW1W120 10019b40 BW1M119 01107fe0 (LHCombined Release)
	LH_RETURN SetDetails(wchar_t* name, LH_USER_ID user_id, long player_id);
	// BW1W120 10019b80 BW1M119 01107ee0 (LHCombined Release)
	LH_RETURN SetDetails(LHPlayer* player);
	// BW1W120 10019c40 BW1M119 01107e40 (LHCombined Release)
	LH_RETURN SetDetails(LHNetUser* user);
	// BW1W120 10019cd0 BW1M119 01107d20 (LHCombined Release)
	void SetUserFile(const char* file_name);
	// BW1W120 10019cf0 BW1M119 01107bb0 (LHCombined Release)
	LHPlayer(LHPlayer* player);
	// BW1W120 10019e40 BW1M119 01107ad0 (LHCombined Release)
	LHPlayer(LHNetUser* user);
	// BW1W120 10019eb0 BW1M119 01107a10 (LHCombined Release)
	~LHPlayer();
	// BW1W120 10019ed0 BW1M119 01107930 (LHCombined Release)
	void SetUserData(void* data, unsigned long length);
	// BW1W120 10019f30 BW1M119 01107800 (LHCombined Release)
	static LHPlayer* GetPlayer(LH_USER_ID user_id, LHLinkedList<LHPlayer*>* list);
	// BW1W120 10019f60 BW1M119 01005660 (LHCombined Release)
	static LHPlayer* GetPlayerFromPlayerNumber(unsigned long number, LHLinkedList<LHPlayer*>* list);
	// BW1W120 10019f90 BW1M119 01107510 (LHCombined Release)
	static LH_RETURN CopyPlayerList(LHLinkedList<LHPlayer*>* destination, LHLinkedList<LHPlayer*>* source);
	// BW1W120 1001a020 BW1M119 01107420 (LHCombined Release)
	unsigned long Compare(LHPlayer* player);
	// BW1W120 1001a070 BW1M119 01107380 (LHCombined Release)
	void* AllocSystemData(unsigned long size);
	// BW1W120 1001a090 BW1M119 01107300 (LHCombined Release)
	void FreeSystemData();
	// BW1W120 1001a0c0 BW1M119 01107280 (LHCombined Release)
	void FreeUserData();
	// BW1W120 1001a2d0 BW1M119 01106d90 (LHCombined Release)
	static LHPlayer* Create();

	// BW1W120 1001a0f0 BW1M119 011071b0 (LHCombined Release)
	virtual unsigned long GetEncodedLength(unsigned long options, void* context);
	// BW1W120 1001a160 BW1M119 01107030 (LHCombined Release)
	virtual unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context);
	// BW1W120 1001a210 BW1M119 01106e70 (LHCombined Release)
	virtual unsigned char* DecodeFromBuffer(unsigned char* buffer);
	// BW1W120 1001a330 BW1M119 01106d40 (LHCombined Release)
	virtual void ClearObject();

protected:
	// BW1W120 10019c70 BW1M119 01107d80 (LHCombined Release)
	void ClearAllData();
};

static_assert(sizeof(LHPlayer) == 0x200, "LHPlayer size is incorrect");

#endif /* BW1_DECOMP_LH_PLAYER_INCLUDED_H */
