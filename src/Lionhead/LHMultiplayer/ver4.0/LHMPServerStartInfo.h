#ifndef BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H
#define BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For wchar_t */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "LHConnection.h" /* For enum LH_OPERATING_MODE */
#include "LHNetUser.h"    /* For LH_USER_ID, LH_MAX_NAME_LENGTH */

class LHNetUser;
class LHTransportInfo;

enum
{
	LH_MAX_GAME_PLAYERS = 32,
};

struct LHMPServerStartInfo
{
	LHNetUser*             User;                                                 /* 0x0 */
	LHTransportInfo*       ListenerAddress;                                      /* 0x4 */
	char*                  RegisteredName;                                       /* 0x8 */
	char*                  ServerName;                                           /* 0xc */
	uint32_t               UserData;                                             /* 0x10 */
	LHTransportInfo*       BroadcastInfo;                                        /* 0x14 */
	LHTransportInfo*       AcceptorInfo;                                         /* 0x18 */
	uint32_t               Reserved[2];                                          /* 0x1c */
	char*                  UserFile;                                             /* 0x24 */
	char*                  GameFile;                                             /* 0x28 */
	enum LH_OPERATING_MODE OperatingMode;                                        /* 0x2c */
	bool32_t               RunMessageServer;                                     /* 0x30 */
	bool32_t               IsGlobalServer;                                       /* 0x34 */
	unsigned long          GameTurn;                                             /* 0x38 */
	wchar_t                PlayerNames[LH_MAX_GAME_PLAYERS][LH_MAX_NAME_LENGTH]; /* 0x3c */
	LH_USER_ID             PlayerIDs[LH_MAX_GAME_PLAYERS];                       /* 0xc3c */
};
static_assert(sizeof(LHMPServerStartInfo) == 0xcbc, "Data type is of wrong size");

#endif /* BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H */
