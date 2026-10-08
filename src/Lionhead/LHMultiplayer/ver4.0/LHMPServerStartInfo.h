#ifndef BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H
#define BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHConnection.h" /* For enum LH_OPERATING_MODE */
#include "LHNetUser.h"    /* For LH_USER_ID */

// Forward Declares

class LHNetUser;
class LHTransportInfo;

struct LHMPServerStartInfo
{
	LHNetUser*       user; /* 0x0 */
	LHTransportInfo* ListenerAddress;
	char*            RegisteredName;
	char*            ServerName; /* 0xc; copied by LHLobbyServer::Start */
	uint32_t         field_0x10; /* stored by LHLobbyServer::Start */
	// The lobby server listens with ListenerAddress (broadcast) and +0x14 (acceptor); the message
	// server with +0x14 (broadcast) and +0x18 (acceptor). LHLobby::OpenLocalLobby takes the message
	// server's acceptor from +0x18 and LHLobby::StartInternalMessageServer fills both.
	// TODO: names follow the message server's use of the two fields.
	LHTransportInfo*       BroadcastInfo; /* 0x14 */
	LHTransportInfo*       AcceptorInfo;  /* 0x18 */
	uint32_t               field_0x1c;
	uint32_t               field_0x20;
	char*                  UserFile; /* 0x24 */
	char*                  GameFile;
	enum LH_OPERATING_MODE OperatingMode;
	bool32_t               RunMessageServer;        /* 0x30 */
	bool32_t               IsGlobalServer;          /* 0x34; LHLobbyServer::Start registers as a global server */
	unsigned long          GameTurn;                /* 0x38 */
	unsigned short         PlayerNames[0x20][0x30]; /* 0x3c */
	LH_USER_ID             PlayerIDs[0x20];         /* 0xc3c */
};
static_assert(sizeof(LHMPServerStartInfo) == 0xcbc, "Data type is of wrong size");

#endif /* BW1_DECOMP_LHMP_SERVER_START_INFO_INCLUDED_H */
