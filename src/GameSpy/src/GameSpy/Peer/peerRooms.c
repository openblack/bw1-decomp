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

/*************
** INCLUDES **
*************/
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "peerRooms.h"
#include "peerPlayers.h"
#include "peerMangle.h"
#include "peerCallbacks.h"
#include "peerGlobalCallbacks.h"

/************
** DEFINES **
************/
#define PI_QUERYPORT    6500

/**************
** FUNCTIONS **
**************/
PEERBool piRoomsInit
(
	PEER peer
)
{
	RoomType roomType;

	PEER_CONNECTION;

	// Init rooms.
	//////////////
	for(roomType = 0 ; roomType < NumRooms ; roomType++)
	{
		ROOM[0] = '\0';
		NAME[0] = '\0';
		ENTERING_ROOM = PEERFalse;
		IN_ROOM = PEERFalse;
		connection->cancelJoinRoom[roomType] = PEERFalse;
	}
	connection->groupID = 0;

	return PEERTrue;
}

void piRoomsCleanup
(
	PEER peer
)
{
	RoomType roomType;

	PEER_CONNECTION;

	// Check all the rooms.
	///////////////////////
	for(roomType = 0 ; roomType < NumRooms ; roomType++)
	{
		// Are we in or entering the room?
		//////////////////////////////////
		if(ENTERING_ROOM || IN_ROOM)
		{
			// Leave it.
			////////////
			piLeaveRoom(peer, roomType);
		}
		ROOM[0] = '\0';
		ENTERING_ROOM = PEERFalse;
		IN_ROOM = PEERFalse;
		NAME[0] = '\0';
		connection->cancelJoinRoom[roomType] = PEERFalse;
	}
}

void piStartedEnteringRoom
(
	PEER peer,
	RoomType roomType,
	const char * room
)
{
	PEER_CONNECTION;

	ASSERT_ROOMTYPE(roomType);
	assert(room);
	assert(room[0]);
	assert(strlen(room) < PI_ROOM_MAX_LEN);
	if(strlen(room) >= PI_ROOM_MAX_LEN)
		return;

	// Check that we're not entering, or in, this room.
	///////////////////////////////////////////////////
	assert(!ROOM[0]);
	assert(!ENTERING_ROOM);
	assert(!IN_ROOM);

	// Start entering.
	//////////////////
	strcpy(ROOM, room);
	ENTERING_ROOM = PEERTrue;
}

void piFinishedEnteringRoom
(
	PEER peer,
	RoomType roomType,
	const char * name
)
{
	PEER_CONNECTION;

	ASSERT_ROOMTYPE(roomType);

	if(!name)
		name = "";

	// Check that we're entering.
	/////////////////////////////
	assert(ROOM[0]);
	assert(ENTERING_ROOM);
	assert(!IN_ROOM);
	assert(strlen(name) < PI_ROOM_MAX_LEN);

	// We're in.
	////////////
	IN_ROOM = PEERTrue;
	ENTERING_ROOM = PEERFalse;
	strzcpy(NAME, name, PI_NAME_MAX_LEN);

	// Let everyone in the staging room know our info.
	//////////////////////////////////////////////////
	if(roomType == StagingRoom)
		piSendInfo(peer, NULL, PEERFalse, PEERFalse);
}

PEERBool piStartHosting
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Check that we're not hosting.
	////////////////////////////////
	assert(!connection->hosting);
	if(connection->hosting)
		return PEERFalse;

	// Set states.
	//////////////
	connection->hosting = PEERTrue;
	strcpy(connection->gamename, connection->title);
	if(connection->inRoom[GroupRoom])
		connection->reportingGroupID = connection->groupID;
	else
		connection->reportingGroupID = 0;

	// Start reporting.
	///////////////////
	piStartReporting(peer);

	return PEERTrue;
}

void piResetHosting
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Check that we're hosting.
	////////////////////////////
	assert(connection->hosting);
	if(!connection->hosting)
		return;

	// Reset.
	/////////
	assert(connection->queryReporting);
	qr_send_statechanged(connection->queryReporting);
}

void piStopHosting
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Check that we're hosting.
	////////////////////////////
	assert(connection->hosting);
	if(!connection->hosting)
		return;

	// Stop reporting.
	//////////////////
	if(connection->reporting)
		piStopReporting(peer);

	// Reset states.
	////////////////
	connection->hosting = PEERFalse;
	connection->playing = PEERFalse;
	connection->ready = PEERFalse;

	// Send our info.
	/////////////////
	piSendInfo(peer, NULL, PEERFalse, PEERFalse);
}

PEERBool piStartReporting
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Check that we're not reporting.
	//////////////////////////////////
	assert(!connection->reporting);
	if(connection->reporting)
		piStopReporting(peer);

	// Init goa.
	////////////
	if(qr_init(&connection->queryReporting, NULL, PI_QUERYPORT, connection->title, connection->qrSecretKey,
		piGOABasicCallback,
		piGOAInfoCallback,
		piGOARulesCallback,
		piGOAPlayersCallback,
		peer) != 0)
	{
		return PEERFalse;
	}

	// We're reporting.
	///////////////////
	connection->reporting = PEERTrue;

	return PEERTrue;
}

void piStopReporting
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Check that we're reporting.
	//////////////////////////////
	if(!connection->reporting)
		return;

	// Let the master know we're exiting.
	/////////////////////////////////////
	assert(connection->queryReporting);
	connection->exiting = PEERTrue;
	qr_send_statechanged(connection->queryReporting);

	// Clean up GOA.
	////////////////
	qr_shutdown(connection->queryReporting);
	connection->queryReporting = NULL;
	connection->exiting = PEERFalse;
	connection->reporting = PEERFalse;
}

void piLeaveRoom
(
	PEER peer,
	RoomType roomType
)
{
	PEER_CONNECTION;

	ASSERT_ROOMTYPE(roomType);

	assert(ROOM[0]);

	// Check that we're in/entering this room.
	//////////////////////////////////////////
	if(!IN_ROOM && !ENTERING_ROOM)
	{
		assert(0);
		return;
	}

	// Leave the channel.
	/////////////////////
	chatLeaveChannel(connection->chat, ROOM);

	// Clear all the players out of this room.
	//////////////////////////////////////////
	piClearRoomPlayers(peer, roomType);

	// Reset in/entering states.
	////////////////////////////
	if(IN_ROOM)
	{
		assert(!ENTERING_ROOM);
		IN_ROOM = PEERFalse;
	}
	else
	{
		assert(ENTERING_ROOM);
		ENTERING_ROOM = PEERFalse;
	}

	// Clear the room/name.
	///////////////////////
	ROOM[0] = '\0';
	NAME[0] = '\0';

	// Staging room?
	////////////////
	if(roomType == StagingRoom)
	{
		// Hosting?
		///////////
		if(connection->hosting)
		{
			// Are we playing without reporting, or reporting?
			//////////////////////////////////////////////////
			if((connection->playing && !connection->reporting) || connection->reporting)
			{
				// Stop hosting.
				////////////////
				piStopHosting(peer);
			}
		}

		// No game server.
		//////////////////
		connection->gameServer = NULL;

		// No server IP.
		////////////////
		connection->serverIP = INADDR_NONE;

		// Turn ready off.
		//////////////////
		connection->ready = PEERFalse;

		// Send our info.
		/////////////////
		piSendInfo(peer, NULL, PEERFalse, PEERFalse);
	}
}

PEERBool piRoomToType
(
	PEER peer,
	const char * room,
	RoomType * roomType
)
{
	int i;

	PEER_CONNECTION;

	for(i = 0 ; i < NumRooms ; i++)
	{
		if(strcasecmp(room, ROOMS[i]) == 0)
		{
			*roomType = (RoomType)i;
			return PEERTrue;
		}
	}

	return PEERFalse;
}
