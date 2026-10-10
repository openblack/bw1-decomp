/*
GameSpy Peer SDK 
Dan "Mr. Pants" Schoenblum
dan@gamespy.com

Copyright 1999-2001 GameSpy Industries, Inc

18002 Skypark Circle
Irvine, California 92614
949.798.4200 (Tel)
949.798.4299 (Fax)
devsupport@gamespy.com
*/

#ifndef _PEERCENGINE_H_
#define _PEERCENGINE_H_

#ifdef __cplusplus
extern "C" {
#endif

/*************
** INCLUDES **
*************/
#include "peerMain.h"

/**************
** FUNCTIONS **
**************/
PEERBool piCEngineInit
(
	PEER peer,
	const char * engineName,
	const char * engineSecretKey,
	int engineMaxUpdates
);

void piCEngineCleanup
(
	PEER peer
);

PEERBool piCEngineStartListingGames
(
	PEER peer
);

void piCEngineStopListingGames
(
	PEER peer
);

void piListingGamesChannelMessage
(
	CHAT chat,
	const char * channel,
	const char * user,
	const char * message,
	int type,
	PEER peer
);

void piListingGamesChannelKicked
(
	CHAT chat,
	const char * channel,
	const char * user,
	const char * reason,
	PEER peer
);

void piRestartListingGames
(
	PEER peer
);

PEERBool piCEngineStartListingGroups
(
	PEER peer
);

void piCEngineStopListingGroups
(
	PEER peer
);

void piCEngineThink
(
	PEER peer
);

#ifdef __cplusplus
}
#endif

#endif
