#ifndef BW1_DECOMP_LH_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

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
	uint32_t        field_0x1fc;

	// BW1W120 100019c0
	LHPlayer() { ClearAllData(); }
	// Nonvirtual.
	// BW1W120 10019eb0
	~LHPlayer();
	// BW1W120 10019b40
	LH_RETURN SetDetails(char16_t* player_name, LH_USER_ID user_id, long player_id);
	// BW1W120 inlined BW1M119 0132c440
	unsigned long GetPlayerID() { return PlayerId; }
	// BW1W120 inlined BW1M119 01139c40
	LH_USER_ID GetUserID() { return UserId; }

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
