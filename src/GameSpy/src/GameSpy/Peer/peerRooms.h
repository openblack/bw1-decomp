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

#ifndef _PEERROOMS_H_
#define _PEERROOMS_H_

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
PEERBool piRoomsInit
(
	PEER peer
);

void piRoomsCleanup
(
	PEER peer
);

void piStartedEnteringRoom
(
	PEER peer,
	RoomType roomType,
	const char * room
);

void piFinishedEnteringRoom
(
	PEER peer,
	RoomType roomType,
	const char * name
);

PEERBool piStartHosting
(
	PEER peer
);

void piResetHosting
(
	PEER peer
);

void piStopHosting
(
	PEER peer
);

PEERBool piStartReporting
(
	PEER peer
);

void piStopReporting
(
	PEER peer
);

void piLeaveRoom
(
	PEER peer,
	RoomType roomType
);

PEERBool piRoomToType
(
	PEER peer,
	const char * room,
	RoomType * roomType
);

#ifdef __cplusplus
}
#endif

#endif
