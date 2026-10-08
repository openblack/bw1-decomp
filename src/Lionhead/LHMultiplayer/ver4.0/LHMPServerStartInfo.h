#ifndef BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H
#define BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHLobby.h" /* For enum LH_OPERATING_MODE */

// Forward Declares

class LHNetUser;
struct LHTransportInfo;

struct LHMPServerStartInfo
{
	LHNetUser*              user;
	struct LHTransportInfo* ListenerAddress;
	char*                   RegisteredName;
	uint8_t                 field_0xc[0x18];
	char*                   UserFile;
	char*                   GameFile;
	enum LH_OPERATING_MODE  OperatingMode;
	bool32_t                RunMessageServer;
	uint8_t                 field_0x34[0xc88];
};
static_assert(sizeof(LHMPServerStartInfo) == 0xcbc, "Data type is of wrong size");

#endif /* BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H */
