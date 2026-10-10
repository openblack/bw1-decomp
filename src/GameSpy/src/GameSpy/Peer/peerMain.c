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
#include <limits.h>
#include "peer.h"
#include "peerMain.h"
#include "peerCallbacks.h"
#include "peerGlobalCallbacks.h"
#include "peerOperations.h"
#include "peerPlayers.h"
#include "peerRooms.h"
#include "peerPing.h"
#include "peerCEngine.h"
#include "peerMangle.h"

/************
** DEFINES **
************/
#define PEER_CONNECTED         assert(connection->connected);

#define PI_CHECK_DISCONNECT    if(connection->disconnect && (connection->callbackDepth == 0))\
                               {\
                                   peerDisconnect(peer);\
                               }

#define PI_CHECK_SHUTDOWN      if(connection->shutdown && (connection->callbackDepth == 0))\
                               {\
                                   peerShutdown(peer);\
                               }

#define PI_INIT_FAILED         {\
                                   piShutdownCleanup(peer);\
                                   return NULL;\
                               }

#define PI_DO_BLOCKING         if(blocking)\
                               {\
                                   do\
                                   {\
                                       msleep(1);\
                                       piThink(peer, opID);\
                                   }\
                                   while(!piCheckBlockingID(peer, opID));\
								   PI_CHECK_DISCONNECT\
								   PI_CHECK_SHUTDOWN\
                               }

#define PI_OP_ID               int opID = piGetNextID(peer)
#if 0
int opID;  // for visual assist
#endif

/***************
** PROTOTYPES **
***************/
static PEERBool piCheckBlockingID(PEER peer, int ID);
static int piGetNextID(PEER peer);
static void piShutdownCleanup(PEER peer);
static void piDisconnectCleanup(PEER peer);
static void piThink(PEER peer,int ID);
void Util_RandSeed(unsigned long seed);

/************
** GENERAL **
************/
PEER peerInitialize
(
	PEERCallbacks * callbacks
)
{
	PEER peer;
	piConnection * connection;

	assert(callbacks);

	// Seed the random number generator.
	////////////////////////////////////
	Util_RandSeed(current_time());

	// Init sockets.
	////////////////
	SocketStartUp();

	// Create an object.
	////////////////////
	connection = (piConnection *)gsimalloc(sizeof(piConnection));
	if(!connection)
		return NULL;
	memset(connection, 0, sizeof(piConnection));
	peer = (PEER)connection;

	// Chat.
	////////
	connection->chat = NULL;
	connection->nick[0] = '\0';
	connection->connecting = PEERFalse;
	connection->connected = PEERFalse;

	// Game.
	////////
	connection->title[0] = '\0';

	// ID.
	//////
	connection->nextID = 0;

	// Operations.
	//////////////
	if(!piOperationsInit(peer))
		PI_INIT_FAILED

	// Callbacks.
	/////////////
	connection->callbacks = *callbacks;
	if(!piCallbacksInit(peer))
		PI_INIT_FAILED

	// Misc.
	////////
	connection->shutdown = PEERFalse;

	return peer;
}

void peerConnect
(
	PEER peer,
	const char * nick,
	const char * user,
	const char * serverAddress,
	int port,
	int profileID,
	peerNickErrorCallback nickErrorCallback,
	peerConnectCallback connectCallback,
	void * param,
	PEERBool blocking
)
{
	PI_OP_ID;
	PEER_CONNECTION;

	assert(nick);
	assert(nick[0]);
	assert(profileID >= 0);
	assert(connectCallback);
	assert(strlen(nick) < PI_NICK_MAX_LEN);

	// Are we already connecting or connected?
	//////////////////////////////////////////
	if(connection->connected || connection->connecting)
	{
		piAddConnectCallback(peer, PEERFalse, connectCallback, param, opID);
		return;
	}

	// Chat.
	////////
	connection->chat = NULL;
	strzcpy(connection->nick, nick, PI_NICK_MAX_LEN);
	connection->connected = PEERFalse;
	connection->disconnect = PEERFalse;
	connection->nickErrorCallback = nickErrorCallback;

	// Misc.
	////////
	connection->profileID = profileID;
	connection->connecting = PEERTrue;

	// Start connecting.
	////////////////////
	if(!piNewConnectOperation(peer, nick, user, serverAddress, port, connectCallback, param, opID))
	{
		piDisconnectCleanup(peer);
		piAddConnectCallback(peer, PEERFalse, connectCallback, param, opID);
		return;
	}

	PI_DO_BLOCKING;
}

static PEERBool piCheckBlockingID
(
	PEER peer,
	int ID
)
{
	return (piIsOperationFinished(peer, ID) && piIsCallbackFinished(peer, ID));
}

static int piGetNextID
(
	PEER peer
)
{
	int ID;

	PEER_CONNECTION;

	// Get the ID.
	//////////////
	ID = connection->nextID;

	// Increment.
	/////////////
	connection->nextID++;
	if(connection->nextID < 0)
		connection->nextID = 0;

	return ID;
}

void peerRetryWithNick
(
	PEER peer,
	const char * nick
)
{
	PEER_CONNECTION;

	// Check that we're connecting.
	///////////////////////////////
	assert(connection->connecting);
	if(!connection->connecting)
		return;

	// Set the new nick we're using.
	////////////////////////////////
	if(nick && nick[0])
		strzcpy(connection->nick, nick, PI_NICK_MAX_LEN);

	// Retry with the new nick.
	///////////////////////////
	chatRetryWithNick(connection->chat, nick);
}

PEERBool peerIsConnected(PEER peer)
{
	PEER_CONNECTION;

	return connection->connected;
}

PEERBool peerSetTitle
(
	PEER peer,
	const char * title,
	const char * qrSecretKey,
	const char * engineName,
	const char * engineSecretKey,
	int engineMaxUpdates,
	PEERBool pingRooms[NumRooms],
	PEERBool crossPingRooms[NumRooms]
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(title);
	assert(title[0]);
	assert(strlen(title) < PI_TITLE_MAX_LEN);
	assert(qrSecretKey);
	assert(engineName);
	assert(engineName[0]);
	assert(engineSecretKey);

	// Must be connected to set a title.
	////////////////////////////////////
	if(!connection->connected)
		return PEERFalse;

	// Check if a title is set.
	///////////////////////////
	if(connection->title[0])
		peerClearTitle(peer);

	// Game.
	////////
	strcpy(connection->title, title);

	// Rooms.
	/////////
	if(!piRoomsInit(peer))
	{
		peerClearTitle(peer);
		return PEERFalse;
	}

	// Players.
	///////////
	if(!piPlayersInit(peer))
	{
		peerClearTitle(peer);
		return PEERFalse;
	}

	// Ping.
	////////
	piPingInit(peer, pingRooms, crossPingRooms);

	// Hosting.
	///////////
	connection->queryReporting = NULL;
	strcpy(connection->qrSecretKey, qrSecretKey);
	if(connection->hosting)
		piStopHosting(peer);
	connection->hosting = PEERFalse;
	connection->reporting = PEERFalse;
	connection->playing = PEERFalse;
	connection->exiting = PEERFalse;

	// Game states.
	///////////////
	connection->ready = PEERFalse;

	// CEngine.
	///////////
	if(!piCEngineInit(peer, engineName, engineSecretKey, engineMaxUpdates))
	{
		peerClearTitle(peer);
		return PEERFalse;
	}

	return PEERTrue;
}

void peerClearTitle
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Check for a connection.
	//////////////////////////
	if(!connection->connected)
		return;

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Stop hosting if we are.
	//////////////////////////
	if(connection->hosting)
		piStopHosting(peer);

	// CEngine.
	///////////
	piCEngineCleanup(peer);

	// Rooms.
	/////////
	piRoomsCleanup(peer);

	// Players.
	///////////
	piPlayersCleanup(peer);

	// Ping.
	////////
	piPingCleanup(peer);

	// Cleanup game.
	////////////////
	connection->title[0] = '\0';

	// Cleanup qr secret key.
	/////////////////////////
	connection->qrSecretKey[0] = '\0';
}

static void piDisconnectCleanup
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Chat.
	////////
	if(connection->chat)
		chatDisconnect(connection->chat);
	connection->chat = NULL;
	connection->nick[0] = '\0';
	connection->connecting = PEERFalse;
	connection->connected = PEERFalse;

	// Away.
	////////
	connection->away = PEERFalse;
	connection->awayReason[0] = '\0';

	// We're not trying to disconnect.
	//////////////////////////////////
	connection->disconnect = PEERFalse;
}

void peerDisconnect
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Are we within a callback?
	////////////////////////////
	if(connection->callbackDepth > 0)
	{
		// Flag for disconnect later.
		/////////////////////////////
		connection->disconnect = PEERTrue;

		return;
	}

	// Cleanup title if needed.
	///////////////////////////
	if(connection->title[0])
		peerClearTitle(peer);

	// Cleanup the connection.
	//////////////////////////
	piDisconnectCleanup(peer);

	// Think to make sure the disconnected callback gets called.
	////////////////////////////////////////////////////////////
	piThink(peer, -1);
}

static void piShutdownCleanup
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Operations.
	//////////////
	piOperationsCleanup(peer);

	// Callbacks.
	/////////////
	piCallbacksCleanup(peer);

	// Shut down sockets.
	/////////////////////
	SocketShutDown();

	// Free the connection.
	///////////////////////
	gsifree(connection);
}

void peerShutdown
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Cleanup the connection?
	//////////////////////////
	if(connection->connected || connection->connecting)
	{
		peerDisconnectedCallback callback;

		// We don't want the disconnected callback
		// called if we're being explicitly shutdown.
		/////////////////////////////////////////////
		callback = connection->callbacks.disconnected;
		connection->callbacks.disconnected = NULL;
		peerDisconnect(peer);
		connection->callbacks.disconnected = callback;
	}

	// Are we within a callback?
	////////////////////////////
	if(connection->callbackDepth > 0)
	{
		// Flag for shutdown later.
		///////////////////////////
		connection->shutdown = PEERTrue;

		return;
	}

	// Cleanup.
	///////////
	piShutdownCleanup(peer);
}

static void piThink
(
	PEER peer,
	int opID
)
{
	unsigned long now;
	PEER_CONNECTION;

	// Let chat think.
	//////////////////
	if(connection->connected || connection->connecting)
	{
		chatThink(connection->chat);

		// Is a title set?
		//////////////////
		if(connection->title[0])
		{
			// Do ping stuff.
			/////////////////
			piPingThink(peer);

			// Let CEngine think.
			/////////////////////
			piCEngineThink(peer);
		}

		// Are we connected?
		////////////////////
		if(connection->connected)
		{
			// Ge the current time.
			///////////////////////
			now = current_time();

			// Check if we need to ping the chat server.
			////////////////////////////////////////////
			if((now - connection->lastChatPing) > PI_CHAT_PING_TIME)
			{
				// Send the ping.
				/////////////////
				chatSendRaw(connection->chat, "PING");

				// Store the current time.
				//////////////////////////
				connection->lastChatPing = now;
			}
		}
	}

	// Are we hosting?
	//////////////////
	if(connection->hosting)
	{
		// Let GOA think.
		/////////////////
		if(connection->queryReporting)
			qr_process_queries(connection->queryReporting);
	}

	// Let the callbacks think.
	///////////////////////////
	piCallbacksThink(peer, opID);
}

void peerThink
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Think.
	/////////
	piThink(peer, -1);

	PI_CHECK_DISCONNECT
	PI_CHECK_SHUTDOWN
}

CHAT peerGetChat
(
	PEER peer
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	// Check if connected.
	//////////////////////
	if(!connection->connected)
		return NULL;

	// Return it.
	/////////////
	return connection->chat;
}

unsigned int peerGetLocalIP
(
	PEER peer
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	// Check if connected.
	//////////////////////
	if(!connection->connected)
		return 0;

	// Return it.
	/////////////
	return connection->IP;
}

void peerChangeNick
(
	PEER peer,
	const char * newNick,
	peerChangeNickCallback callback,
	void * param,
	PEERBool blocking
)
{
	PI_OP_ID;
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(callback);

	// Start the operation.
	///////////////////////
	if(!piNewChangeNickOperation(peer, newNick, callback, param, opID))
		piAddChangeNickCallback(peer, PEERFalse, connection->nick, newNick, callback, param, opID);

	PI_DO_BLOCKING;
}

void peerSetQuietMode
(
	PEER peer,
	PEERBool quiet
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	chatSetQuietMode(connection->chat, quiet);
}

void peerSetAwayMode
(
	PEER peer,
	const char * reason
)
{
	char buffer[PI_AWAY_MAX_LEN + 6];
	PEER_CONNECTION;
	PEER_CONNECTED;

	if(!reason)
		reason = "";

	// Store the setting.
	/////////////////////
	connection->away = (reason[0] != '\0');
	strzcpy(connection->awayReason, reason, PI_AWAY_MAX_LEN);

	// Send our info.
	/////////////////
	piSendInfo(peer, NULL, PEERFalse, PEERFalse);

	// Send the chat command.
	/////////////////////////
	sprintf(buffer, "AWAY :%s", reason);
	chatSendRaw(connection->chat, buffer);
}

/**********
** ROOMS **
**********/
void peerJoinTitleRoom
(
	PEER peer,
	peerJoinRoomCallback callback,
	void * param,
	PEERBool blocking
)
{
	PEERBool success = PEERTrue;
	char buffer[PI_ROOM_MAX_LEN];

	PI_OP_ID;
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(callback);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		success = PEERFalse;

	// Check if we're in the title room.
	////////////////////////////////////
	assert(!connection->enteringRoom[TitleRoom] && !connection->inRoom[TitleRoom]);
	if(success && connection->enteringRoom[TitleRoom] || connection->inRoom[TitleRoom])
		success = PEERFalse;

	// Get the room name.
	/////////////////////
	piMangleTitleRoom(buffer, connection->title);

	// Start the operation.
	///////////////////////
	if(success && !piNewJoinRoomOperation(peer, TitleRoom, buffer, callback, param, opID))
		success = PEERFalse;

	// Check for failure.
	/////////////////////
	if(!success)
		piAddJoinRoomCallback(peer, PEERFalse, TitleRoom, callback, param, opID);

	PI_DO_BLOCKING;
}

void peerJoinGroupRoom
(
	PEER peer,
	int groupID,
	peerJoinRoomCallback callback,
	void * param,
	PEERBool blocking
)
{
	PEERBool success = PEERTrue;
	char room[PI_ROOM_MAX_LEN];

	PI_OP_ID;
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(callback);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		success = PEERFalse;

	// Check the ID.
	////////////////
	assert(groupID);
	if(success && !groupID)
		success = PEERFalse;

	// Check if we're in a group room.
	//////////////////////////////////
	if(success && (connection->enteringRoom[GroupRoom] || connection->inRoom[GroupRoom]))
		success = PEERFalse;

	// Create the name.
	///////////////////
	piMangleGroupRoom(room, groupID);

	// Save off the group id.
	/////////////////////////
	connection->groupID = groupID;

	// Start the operation.
	///////////////////////
	if(success && !piNewJoinRoomOperation(peer, GroupRoom, room, callback, param, opID))
		success = PEERFalse;

	// Check for failure.
	/////////////////////
	if(!success)
		piAddJoinRoomCallback(peer, PEERFalse, GroupRoom, callback, param, opID);

	PI_DO_BLOCKING;
}

// Either the server or the IP must be set, but not both.
void piJoinStagingRoom
(
	PEER peer,
	unsigned int IP,
	GServer server,
	const char password[PEER_PASSWORD_LEN],
	peerJoinRoomCallback callback,
	void * param,
	PEERBool blocking
)
{
	char room[PI_ROOM_MAX_LEN];
	PEERBool success = PEERTrue;

	PI_OP_ID;
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(callback);

	// NULL password is the same as empty password.
	///////////////////////////////////////////////
	if(!password)
		password = "";

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		success = PEERFalse;

	// Check if we're in a staging room.
	////////////////////////////////////
	if(success && (connection->enteringRoom[StagingRoom] || connection->inRoom[StagingRoom]))
		success = PEERFalse;

	// Check for converting a server to an IP.
	//////////////////////////////////////////
	assert((server && !IP) || (IP && !server));
	if(success && !IP)
	{
		if(!server)
			success = PEERFalse;
		else if(!connection->listingGamesOperation)
			success = PEERFalse;
		else
			IP = inet_addr(ServerGetAddress(server));
	}

	// Stop hosting.
	////////////////
	if(success && connection->hosting)
		piStopHosting(peer);

	// Check for a bad IP.
	//////////////////////
	assert(IP);
	if(success && !IP)
		success = PEERTrue;

	// Get the staging room.
	////////////////////////
	if(success)
		piMangleStagingRoom(room, connection->title, IP);

	// Save off the password.
	/////////////////////////
	strncpy(connection->password, password, PEER_PASSWORD_LEN - 1);

	// Start the operation.
	///////////////////////
	if(success	&& !piNewJoinRoomOperation(peer, StagingRoom, room, callback, param, opID))
		success = PEERFalse;

	if(success)
		connection->serverIP = IP;
	else
		piAddJoinRoomCallback(peer, PEERFalse, StagingRoom, callback, param, opID);

	PI_DO_BLOCKING;
}

void peerJoinStagingRoom
(
	PEER peer,
	GServer server,
	const char password[PEER_PASSWORD_LEN],
	peerJoinRoomCallback callback,
	void * param,
	PEERBool blocking
)
{
	piJoinStagingRoom(peer, 0, server, password, callback, param, blocking);
}

void peerJoinStagingRoomByIP
(
	PEER peer,
	unsigned int IP,
	const char password[PEER_PASSWORD_LEN],
	peerJoinRoomCallback callback,
	void * param,
	PEERBool blocking
)
{
	piJoinStagingRoom(peer, IP, NULL, password, callback, param, blocking);
}

void peerCreateStagingRoom
(
	PEER peer,
	const char * name,
	int maxPlayers,
	const char password[PEER_PASSWORD_LEN],
	peerJoinRoomCallback callback,
	void * param,
	PEERBool blocking
)
{
	PEERBool success = PEERTrue;
	PI_OP_ID;

	PEER_CONNECTION;

	assert(name);
	assert(connection->title[0]);
	assert(callback);
	assert(maxPlayers >= 0);

	// NULL password is the same as empty password.
	///////////////////////////////////////////////
	if(!password)
		password = "";

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		success = PEERFalse;

	// Check if we're in a staging room.
	////////////////////////////////////
	if(success && (connection->enteringRoom[StagingRoom] || connection->inRoom[StagingRoom]))
		success = PEERFalse;

	// Stop hosting.
	////////////////
	if(success && connection->hosting)
		piStopHosting(peer);

	// Save off the maxplayers.
	///////////////////////////
	connection->maxPlayers = maxPlayers;

	// Save off the password.
	/////////////////////////
	strncpy(connection->password, password, PEER_PASSWORD_LEN - 1);

	// Start the operation.
	///////////////////////
	if(success && !piNewCreateStagingRoomOperation(peer, name, callback, param, opID))
		success = PEERFalse;

	// Add callback if error.
	/////////////////////////
	if(!success)
		piAddJoinRoomCallback(peer, PEERFalse, StagingRoom, callback, param, opID);

	PI_DO_BLOCKING;
}

void peerLeaveRoom
(
	PEER peer,
	RoomType roomType
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	ASSERT_ROOMTYPE(roomType);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Check if we're in or entering.
	/////////////////////////////////
	if(!ENTERING_ROOM && !IN_ROOM)
		return;

	// If we're leaving a group, list games outside the group.
	//////////////////////////////////////////////////////////
	if((roomType == GroupRoom) && connection->listingGames)
		piRestartListingGames(peer);

	// Are we entering?
	///////////////////
	if(ENTERING_ROOM)
	{
		// Cancel it.
		/////////////
		connection->cancelJoinRoom[roomType] = PEERTrue;
		connection->cancelJoinRoomError[roomType] = PEERFalse;
	}
	else
	{
		// Leave.
		/////////
		piLeaveRoom(peer, roomType);
	}
}

void peerListGroupRooms
(
	PEER peer,
	peerListGroupRoomsCallback callback,
	void * param,
	PEERBool blocking
)
{
	PEERBool success = PEERTrue;
	PI_OP_ID;
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(callback);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		success = PEERFalse;

	// Are we already listing groups?
	/////////////////////////////////
	if(connection->listingGroups)
		piCEngineStopListingGroups(peer);

	// Start the operation.
	///////////////////////
	if(success && !piNewListGroupRoomsOperation(peer, callback, param, opID))
		success = PEERFalse;

	// Call the callback if failed.
	///////////////////////////////
	if(!success)
		piAddListGroupRoomsCallback(peer, PEERFalse, 0, NULL, 0, 0, 0, 0, callback, param, opID);

	PI_DO_BLOCKING;
}

void peerStartListingGames
(
	PEER peer,
	peerListingGamesCallback callback,
	void * param
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(callback);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Make sure we're not already listing rooms.
	/////////////////////////////////////////////
	if(connection->listingGamesOperation)
		peerStopListingGames(peer);

	// Start the operation.
	///////////////////////
	if(!piNewListingGamesOperation(peer, callback, param))
		piAddListingGamesCallback(peer, PEERFalse, NULL, NULL, PEERFalse, 0, 0, callback, param);
}

void peerStopListingGames
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Check that we're listing rooms.
	//////////////////////////////////
	if(!connection->listingGamesOperation)
		return;

	// Leave the updates channel.
	/////////////////////////////
	chatLeaveChannel(connection->chat, connection->updatesRoom);

	// Clear the list of servers.
	/////////////////////////////
	piCEngineStopListingGames(peer);

	// Only remove the op if it has finished starting up.
	// Otherwise, it'll detect it was cancelled and remove itself.
	//////////////////////////////////////////////////////////////
	if(connection->listingGames)
		piRemoveOperation(peer, connection->listingGamesOperation);
	else
		connection->listingGamesOperation->cancel = PEERTrue;
	connection->listingGamesOperation = NULL;
	connection->listingGames = PEERFalse;
}

void peerMessageRoom
(
	PEER peer,
	RoomType roomType,
	const char * message,
	MessageType messageType
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	ASSERT_ROOMTYPE(roomType);
	ASSERT_MESSAGETYPE(messageType);

	// Check for no message.
	////////////////////////
	if(!message || !message[0])
		return;

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Check that we're in this room.
	/////////////////////////////////
	assert(IN_ROOM);
	if(!IN_ROOM)
		return;

	// Send the message.
	////////////////////
	chatSendChannelMessage(connection->chat, ROOM, message, (int)messageType);
}

void peerUTMRoom
(
	PEER peer,
	RoomType roomType,
	const char * command,
	const char * parameters
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	ASSERT_ROOMTYPE(roomType);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Check that we're in this room.
	/////////////////////////////////
	assert(IN_ROOM);
	if(!IN_ROOM)
		return;

	// Send it.
	///////////
	piSendChannelUTM(peer, ROOM, command, parameters);
}

void peerSetPassword
(
	PEER peer,
	RoomType roomType,
	const char password[PEER_PASSWORD_LEN]
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	ASSERT_ROOMTYPE(roomType);
	assert(roomType == StagingRoom);

	// NULL password is the same as empty password.
	///////////////////////////////////////////////
	if(!password)
		password = "";

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Check if we're in or entering.
	/////////////////////////////////
	if(!ENTERING_ROOM && !IN_ROOM)
		return;

	// Make sure we're hosting.
	///////////////////////////
	assert(connection->hosting);
	if(!connection->hosting)
		return;

	// Are we clearing a clear password?
	////////////////////////////////////
	if(!password[0] && !connection->password[0])
		return;

	// If we're not in the room yet, just copy it.
	//////////////////////////////////////////////
	if(!IN_ROOM)
	{
		strncpy(connection->password, password, PEER_PASSWORD_LEN - 1);
		return;
	}

	// Do we need to clear a previous password?
	// If we're just entering, it'll get set when done entering.
	////////////////////////////////////////////////////////////
	if(connection->password[0])
		chatSetChannelPassword(connection->chat, ROOM, CHATFalse, connection->password);

	// Copy off the password.
	/////////////////////////
	strncpy(connection->password, password, PEER_PASSWORD_LEN - 1);

	// Set it if not clear.
	// If we're just entering, it'll get set when done entering.
	////////////////////////////////////////////////////////////
	if(password)
		chatSetChannelPassword(connection->chat, ROOM, CHATTrue, password);

	// Do we need to send a state-changed?
	//////////////////////////////////////
	if(connection->queryReporting)
		qr_send_statechanged(connection->queryReporting);
}

void peerSetRoomName
(
	PEER peer,
	RoomType roomType,
	const char * name
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	ASSERT_ROOMTYPE(roomType);
	assert(roomType == StagingRoom);

	// NULL name is the same as empty name.
	///////////////////////////////////////
	if(!name)
		name = "";

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Check if we're in or entering.
	/////////////////////////////////
	if(!ENTERING_ROOM && !IN_ROOM)
		return;

	// Make sure we're hosting.
	///////////////////////////
	assert(connection->hosting);
	if(!connection->hosting)
		return;

	// Set it.
	//////////
	chatSetChannelTopic(connection->chat, ROOM, name);
}

const char * peerGetRoomName
(
	PEER peer,
	RoomType roomType
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	ASSERT_ROOMTYPE(roomType);

	assert(IN_ROOM);
	if(!IN_ROOM)
		return NULL;

	return NAME;
}

const char * peerGetRoomChannel
(
	PEER peer,
	RoomType roomType
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	ASSERT_ROOMTYPE(roomType);

	assert(IN_ROOM);
	if(!IN_ROOM)
		return NULL;

	return ROOM;
}

PEERBool peerInRoom
(
	PEER peer,
	RoomType roomType
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	ASSERT_ROOMTYPE(roomType);

	return IN_ROOM;
}

/************
** PLAYERS **
************/
typedef struct piEnumPlayersData
{
	peerEnumPlayersCallback callback;
	void * param;
} piEnumPlayersData;

static void piEnumPlayersEnumRoomPlayersCallback
(
	PEER peer,
	RoomType roomType,
	piPlayer * player,
	int index,
	void *param
);

void peerEnumPlayers
(
	PEER peer,
	RoomType roomType,
	peerEnumPlayersCallback callback,
	void * param
)
{
	PI_OP_ID;
	piEnumPlayersData data;

	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(callback);
	ASSERT_ROOMTYPE(roomType);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Check that we're in this room.
	/////////////////////////////////
	assert(IN_ROOM);
	if(!IN_ROOM)
	{
		// Call the callback.
		/////////////////////
		callback(peer, PEERFalse, roomType, -1, NULL, PEERFalse, param);
		return;
	}

	// Enumerate through the players, using a local copy.
	/////////////////////////////////////////////////////
	data.callback = callback;
	data.param = param;
	piEnumRoomPlayers(peer, roomType, piEnumPlayersEnumRoomPlayersCallback, &data);
}

static void piEnumPlayersEnumRoomPlayersCallback
(
	PEER peer,
	RoomType roomType,
	piPlayer * player,
	int index,
	void *param
)
{
	piEnumPlayersData * data = (piEnumPlayersData *)param;

	// Call the callback.
	/////////////////////
	data->callback(peer, PEERTrue, roomType, index, player->nick, player->host[roomType], data->param);
}

void peerMessagePlayer
(
	PEER peer,
	const char * nick,
	const char * message,
	MessageType messageType
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	ASSERT_MESSAGETYPE(messageType);
	assert(nick);
	assert(nick[0]);

	// Check for connection succeeded.
	//////////////////////////////////
	if(!connection->connected)
		return;

	// Check for no message.
	////////////////////////
	if(!message || !message[0])
		return;

	// Send the message to this player.
	///////////////////////////////////
	chatSendUserMessage(connection->chat, nick, message, (int)messageType);
}

void peerUTMPlayer
(
	PEER peer,
	const char * nick,
	const char * command,
	const char * parameters
)
{
	// Send it.
	///////////
	piSendPlayerUTM(peer, nick, command, parameters);
}

PEERBool peerGetPlayerPing
(
	PEER peer,
	const char * nick,
	int * ping
)
{
	piPlayer * player;

	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(nick);
	assert(nick[0]);
	assert(ping);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return PEERFalse;

	// Get the player.
	//////////////////
	player = piGetPlayer(peer, nick);
	if(!player)
		return PEERFalse;

	// Is it the local player?
	//////////////////////////
	if(player->local)
	{
		*ping = 0;
	}
	else
	{
		// Check if there's a ping.
		///////////////////////////
		if(!player->gotPing)
			return PEERFalse;

		*ping = player->pingAverage;
	}

	return PEERTrue;
}

PEERBool peerGetPlayersCrossPing
(
	PEER peer,
	const char * nick1,
	const char * nick2,
	int * crossPing
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(nick1);
	assert(nick1[0]);
	assert(nick2);
	assert(nick2[0]);
	assert(crossPing);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return PEERFalse;

	// Do it.
	/////////
	return piGetXping(peer, nick1, nick2, crossPing);
}

void peerGetPlayerProfileID
(
	PEER peer,
	const char * nick,
	peerGetPlayerProfileIDCallback callback,
	void * param,
	PEERBool blocking
)
{
	piPlayer * player;

	PI_OP_ID;
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(callback);
	assert(nick);
	assert(nick[0]);
	assert(callback);

	// Find the player.
	///////////////////
	player = piGetPlayer(peer, nick);

	// See if we already have it.
	/////////////////////////////
	if(player && player->gotProfileID)
	{
		piAddGetPlayerProfileIDCallback(peer, PEERTrue, nick, player->profileID, callback, param, opID);
	}
	else
	{
		// Start an op to get it.
		/////////////////////////
		if(!piNewGetProfileIDOperation(peer, nick, callback, param, opID))
			piAddGetPlayerProfileIDCallback(peer, PEERFalse, nick, 0, callback, param, opID);
	}

	PI_DO_BLOCKING;
}

void peerGetPlayerIP
(
	PEER peer,
	const char * nick,
	peerGetPlayerIPCallback callback,
	void * param,
	PEERBool blocking
)
{
	piPlayer * player;

	PI_OP_ID;
	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(callback);
	assert(nick);
	assert(nick[0]);
	assert(callback);

	// Find the player.
	///////////////////
	player = piGetPlayer(peer, nick);

	// Check if we already have it.
	///////////////////////////////
	if(player && player->gotIP)
	{
		piAddGetPlayerIPCallback(peer, PEERTrue, nick, player->IP, callback, param, opID);
	}
	else
	{
		// Start an op to get it.
		/////////////////////////
		if(!piNewGetIPOperation(peer, nick, callback, param, opID))
			piAddGetPlayerIPCallback(peer, PEERFalse, nick, 0, callback, param, opID);
	}

	PI_DO_BLOCKING;
}

PEERBool peerIsPlayerHost
(
	PEER peer,
	const char * nick,
	RoomType roomType
)
{
	piPlayer * player;

	PEER_CONNECTION;
	PEER_CONNECTED;

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return PEERFalse;

	// Are we in this type of room?
	///////////////////////////////
	assert(IN_ROOM);
	if(!IN_ROOM)
		return PEERFalse;

	// Get the player.
	//////////////////
	player = piGetPlayer(peer, nick);
	if(!player)
		return PEERFalse;

	// Is he host?
	//////////////
	return player->host[roomType];
}

/*********
** GAME **
*********/
void peerSetReady
(
	PEER peer,
	PEERBool ready
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Are we in a staging room?
	////////////////////////////
	assert(connection->inRoom[StagingRoom]);
	if(!connection->inRoom[StagingRoom])
		return;

	// Don't do anything if the state isn't changing.
	/////////////////////////////////////////////////
	if(connection->ready == ready)
		return;

	// Set it.
	//////////
	connection->ready = ready;

	// Let everyone know.
	/////////////////////
	piSendInfo(peer, connection->rooms[StagingRoom], PEERFalse, PEERFalse);
}

PEERBool peerGetReady
(
	PEER peer,
	const char * nick,
	PEERBool * ready
)
{
	piPlayer * player;

	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(nick);
	assert(nick[0]);
	assert(ready);

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return PEERFalse;

	// Are we in a staging room?
	////////////////////////////
	assert(connection->inRoom[StagingRoom]);
	if(!connection->inRoom[StagingRoom])
		return PEERFalse;

	// Get the player.
	//////////////////
	player = piGetPlayer(peer, nick);
	if(!player || !player->inRoom[StagingRoom])
		return PEERFalse;

	*ready = player->ready;

	return PEERTrue;
}

static void piAreAllReadyEnumRoomPlayersCallback
(
	PEER peer,
	RoomType roomType,
	piPlayer * player,
	int index,
	void *param
);

PEERBool peerAreAllReady
(
	PEER peer
)
{
	PEERBool allReady;

	PEER_CONNECTION;
	PEER_CONNECTED;

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return PEERFalse;

	// Are we in a staging room?
	////////////////////////////
	assert(connection->inRoom[StagingRoom]);
	if(!connection->inRoom[StagingRoom])
		return PEERFalse;

	// Enum through all the room's players.
	///////////////////////////////////////
	allReady = PEERTrue;
	piEnumRoomPlayers(peer, StagingRoom, piAreAllReadyEnumRoomPlayersCallback, &allReady);

	return allReady;
}

static void piAreAllReadyEnumRoomPlayersCallback
(
	PEER peer,
	RoomType roomType,
	piPlayer * player,
	int index,
	void *param
)
{
	PEERBool * allReadyPtr = (PEERBool *)param;

	// If this player's not ready, set the flag.
	////////////////////////////////////////////
	if(!player->ready)
		*allReadyPtr = PEERFalse;
}

void peerStartGame
(
	PEER peer,
	const char * message,
	PEERBool stopReporting
)
{
	PEER_CONNECTION;
	PEER_CONNECTED;

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return;

	// Check that we're in a staging room.
	//////////////////////////////////////
	assert(connection->inRoom[StagingRoom]);
	if(!connection->inRoom[StagingRoom])
		return;

	// Make sure we're the host.
	////////////////////////////
	assert(connection->hosting);
	if(!connection->hosting)
		return;

	// Change NULL messages to empty messages.
	//////////////////////////////////////////
	if(!message)
		message = "";

	// Send the launch UTM.
	///////////////////////
	piSendChannelUTM(peer, connection->rooms[StagingRoom], PI_UTM_LAUNCH, message);

	// We're playing.
	/////////////////
	connection->playing = PEERTrue;

	// Send our info.
	/////////////////
	piSendInfo(peer, NULL, PEERFalse, PEERFalse);

	// Check if we should stop GOA reporting.
	/////////////////////////////////////////
	if(stopReporting)
	{
		// Stop.
		////////
		piStopReporting(peer);
	}
	else if(connection->reporting)
	{
		// Send a state changed.
		////////////////////////
		assert(connection->queryReporting);
		qr_send_statechanged(connection->queryReporting);
	}
}

PEERBool peerStartReporting
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Check for a title.
	/////////////////////
	if(!connection->title[0])
		return PEERFalse;

	// Make sure we're not alredy hosting.
	//////////////////////////////////////
	assert(!connection->hosting);
	if(connection->hosting)
		return PEERFalse;

	// Make sure we're not in a staging room.
	/////////////////////////////////////////
	assert(!connection->inRoom[StagingRoom]);
	if(connection->inRoom[StagingRoom])
		return PEERFalse;

	// Start.
	/////////
	piStartHosting(peer);

	return PEERTrue;
}

void peerStopGame
(
	PEER peer
)
{
	PEER_CONNECTION;

	// We're done playing.
	//////////////////////
	connection->playing = PEERFalse;

	// Send our info.
	/////////////////
	piSendInfo(peer, NULL, PEERFalse, PEERFalse);

	// Are we hosting?
	//////////////////
	if(connection->hosting)
	{
		// Are we still in the staging room?
		////////////////////////////////////
		if(connection->inRoom[StagingRoom])
			piResetHosting(peer);
		else
			piStopHosting(peer);
	}
}

void peerStateChanged
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Make sure we're reporting.
	/////////////////////////////
	if(!connection->queryReporting)
		return;

	// Do the state change.
	///////////////////////
	qr_send_statechanged(connection->queryReporting);
}

void piSendChannelUTM
(
	PEER peer,
	const char * channel,
	const char * command,
	const char * parameters
)
{
	char buffer[512];

	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(channel && channel[0]);
	assert(command && command[0]);
	assert(parameters);

	// Check for connection succeeded.
	//////////////////////////////////
	if(!connection->connected)
		return;

	// Check for no channel.
	////////////////////////
	if(!channel || !channel[0])
		return;

	// Check for no command.
	////////////////////////
	if(!command || !command[0])
		return;

	// Check for no parameters.
	///////////////////////////
	if(!parameters)
		parameters = "";

	// Make sure this UTM isn't too long.
	/////////////////////////////////////
	if((strlen(command) + strlen(parameters) + 5) > sizeof(buffer))
		return;

	// Form the message.
	////////////////////
	sprintf(buffer, "@@@%s %s", command, parameters);

	// Send it.
	///////////
	chatSendChannelMessage(connection->chat, channel, buffer, CHAT_MESSAGE);
}

void piSendPlayerUTM
(
	PEER peer,
	const char * nick,
	const char * command,
	const char * parameters
)
{
	char buffer[512];

	PEER_CONNECTION;
	PEER_CONNECTED;

	assert(nick && nick[0]);
	assert(command && command[0]);
	assert(parameters);

	// Check for connection succeeded.
	//////////////////////////////////
	if(!connection->connected)
		return;

	// Check for no nick.
	/////////////////////
	if(!nick || !nick[0])
		return;

	// Check for no command.
	////////////////////////
	if(!command || !command[0])
		return;

	// Check for no parameters.
	///////////////////////////
	if(!parameters)
		parameters = "";

	// Make sure this UTM isn't too long.
	/////////////////////////////////////
	if((strlen(command) + strlen(parameters) + 5) > sizeof(buffer))
		return;

	// Form the message.
	////////////////////
	sprintf(buffer, "@@@%s %s", command, parameters);

	// Send it.
	///////////
	chatSendUserMessage(connection->chat, nick, buffer, CHAT_MESSAGE);
}
