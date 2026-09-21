#ifndef BW1_DECOMP_LH_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include "LHPacketisableObject.h" /* For struct LHPacketisableObject */
#include "LHNetUser.h"            /* For LH_USER_ID */
#include "LHTransportInfo.h"      /* For struct LHTransportInfo */

class LHPlayer : public LHPacketisableObject
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
	LH_MULTIPLAYER_API LHPlayer();
	// Nonvirtual.
	// BW1W120 10019eb0
	LH_MULTIPLAYER_API ~LHPlayer();
	// BW1W120 1001a0f0
	virtual LH_MULTIPLAYER_API unsigned long GetEncodedLength(unsigned long options, void* context);
	// BW1W120 1001a160
	virtual LH_MULTIPLAYER_API unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options,
	                                                         void* context);
	// BW1W120 1001a210
	virtual LH_MULTIPLAYER_API unsigned char* DecodeFromBuffer(unsigned char* buffer);
	// BW1W120 1001a330
	virtual LH_MULTIPLAYER_API void ClearObject();
};

static_assert(sizeof(LHPlayer) == 0x200, "LHPlayer size is incorrect");

#endif /* BW1_DECOMP_LH_PLAYER_INCLUDED_H */
