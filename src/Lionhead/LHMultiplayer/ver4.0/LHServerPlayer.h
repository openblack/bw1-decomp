#ifndef BW1_DECOMP_LH_SERVER_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_SERVER_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHPlayer.h" /* For struct LHPlayer */

// Forward Declares

class LHConnection;

class LHServerPlayer : public LHPlayer
{
public:
	uint8_t       field_0x200[0x10];
	LHConnection* connection; /* 0x210 */
	uint32_t      field_0x214;
	bool32_t      runs_message_server;
};

#endif /* BW1_DECOMP_LH_SERVER_PLAYER_INCLUDED_H */
