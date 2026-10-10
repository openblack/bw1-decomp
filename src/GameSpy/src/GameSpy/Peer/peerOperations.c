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
#include <stdio.h>
#include <limits.h>
#include <stdlib.h>
#include "peerOperations.h"
#include "peerCallbacks.h"
#include "peerGlobalCallbacks.h"
#include "peerMangle.h"
#include "peerRooms.h"
#include "peerPlayers.h"
#include "peerCEngine.h"
#if defined(applec) || defined(THINK_C) || defined(__MWERKS__) && !defined(__KATANA__) && !defined(__mips64)
	#include "::md5.h"
#else
	#include "../md5.h"
#endif

/************
** DEFINES **
************/
#define PI_CHAT_SERVER_ADDRESS    "peerchat.gamespy.com"
#define PI_CHAT_SERVER_PORT       6667

#define PEER_CONNECTION_OP        piConnection * connection;\
                                  PEER peer;\
                                  assert(operation);\
								  assert(operation->peer);\
								  peer = operation->peer;\
                                  connection = (piConnection *)peer;
#if 0
PEER peer; // for Visual Assist
#endif

/**********
** TYPES **
**********/
typedef struct piOperationContainer
{
	piOperation * operation;
} piOperationContainer;

/***************
** PROTOTYPES **
***************/
static void piOperationsListFree(void *elem1);

static int piRemoveCompareCallback
(
 const void *elem1,
 const void *elem2
);

static int piIsOperationFinishedCompareCallback
(
	const void *elem1,
	const void *elem2
);

static piOperation * piAddOperation
(
	PEER peer,
	piOperationType type,
	void * data,
	void * callback,
	void * callbackParam,
	int opID
);

static void piConnectConnectCallback
(
	CHAT chat,
	CHATBool success,
	void *param
);

static void piConnectNickErrorCallback
(
	CHAT chat,
	int type,
	const char * nick,
	void *param
);

static void piConnectFillInUserCallback
(
	CHAT chat,
	unsigned int IP,
	char user[128],
	void * param
);

/**************
** FUNCTIONS **
**************/
PEERBool piOperationsInit
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Init data.
	/////////////
	connection->operationsStarted = 0;
	connection->operationsFinished = 0;

	// Init the list.
	/////////////////
	connection->operationList = ArrayNew(sizeof(piOperationContainer), 0, piOperationsListFree);
	if(!connection->operationList)
		return PEERFalse;

	return PEERTrue;
}

static void piOperationsListFree(void *elem1)
{
	piOperationContainer * container = (piOperationContainer *)elem1;
	piOperation * operation;

	assert(container);
	assert(container->operation);

	operation = container->operation;

	// gsifree the name.
	/////////////////
	gsifree(operation->name);

	// gsifree the user data.
	//////////////////////
	gsifree(operation->data);

	// gsifree the operation.
	//////////////////////
	gsifree(operation);
}

void piOperationsCleanup
(
	PEER peer
)
{
	PEER_CONNECTION;

	// Cleanup the list.
	////////////////////
	if(connection->operationList)
		ArrayFree(connection->operationList);
}

void piRemoveOperation
(
	PEER peer,
	piOperation * operation
)
{
	piOperationContainer container;
	int index;

	PEER_CONNECTION;

	// Find this operation.
	///////////////////////
	container.operation = operation;
	index = ArraySearch(connection->operationList, &container, piRemoveCompareCallback, 0, 0);
	if(index == NOT_FOUND)
		return;

	// Remove it.
	/////////////
	ArrayDeleteAt(connection->operationList, index);

	// One more finished.
	/////////////////////
	connection->operationsFinished++;
}

static int piRemoveCompareCallback
(
 const void *elem1,
 const void *elem2
)
{
	piOperationContainer * container1 = (piOperationContainer *)elem1;
	piOperationContainer * container2 = (piOperationContainer *)elem2;
	assert(container1);
	assert(container2);

	return (container1->operation - container2->operation);
}

PEERBool piIsOperationFinished
(
	PEER peer,
	int opID
)
{
	piOperationContainer container;
	piOperation operation;
	int index;

	PEER_CONNECTION;

	// Find this operation.
	///////////////////////
	container.operation = &operation;
	operation.ID = opID;
	index = ArraySearch(connection->operationList, &container, piIsOperationFinishedCompareCallback, 0, 0);

	// Did we find it?
	//////////////////
	return (index == NOT_FOUND);
}

static int piIsOperationFinishedCompareCallback
(
	const void *elem1,
	const void *elem2
)
{
	piOperationContainer * container1 = (piOperationContainer *)elem1;
	piOperationContainer * container2 = (piOperationContainer *)elem2;
	assert(container1);
	assert(container2);
	assert(container1->operation);
	assert(container2->operation);

	return (container1->operation->ID - container2->operation->ID);
}

/***************
** OPERATIONS **
***************/

/* Connect.
**********/
PEERBool piNewConnectOperation
(
	PEER peer,
	const char * nick,
	const char * user,
	const char * serverAddress,
	int port,
	peerConnectCallback callback,
	void * callbackParam,
	int opID
)
{
	piOperation * operation;
	chatGlobalCallbacks globalCallbacks;
	const char * uniqueID;
	char encodedUniqueID[33];

	PEER_CONNECTION;

	assert(nick);
	assert(nick[0]);
	assert(callback);

	// Add an operation.
	////////////////////
	operation = piAddOperation(peer, PI_CONNECT_OPERATION, NULL, callback, callbackParam, opID);
	if(!operation)
		return PEERFalse;

	// Setup the global callbacks.
	//////////////////////////////
	memset(&globalCallbacks, 0, sizeof(chatGlobalCallbacks));
	globalCallbacks.disconnected = piChatDisconnected;
	globalCallbacks.privateMessage = piChatPrivateMessage;
	globalCallbacks.param = peer;

	// Encode the unique ID.
	////////////////////////
	uniqueID = GOAGetUniqueID();
	MD5Digest((unsigned char *)uniqueID, strlen(uniqueID), encodedUniqueID);

	// Connect to chat.
	///////////////////
	connection->chat = chatConnectSpecial(
		serverAddress,
		port,
		nick,
		user,
		&globalCallbacks,
		connection->nickErrorCallback ? piConnectNickErrorCallback : NULL,
		piConnectFillInUserCallback,
		piConnectConnectCallback,
		operation,
		CHATFalse);
	if(!connection->chat)
	{
		piRemoveOperation(peer, operation);
		return PEERFalse;
	}

	return PEERTrue;
}

static piOperation * piAddOperation
(
	PEER peer,
	piOperationType type,
	void * data,
	void * callback,
	void * callbackParam,
	int opID
)
{
	piOperation * operation;
	piOperationContainer container;

	PEER_CONNECTION;

	assert(type >= 0);
	assert(type < PI_NUM_OPERATION_TYPES);

	// Alloc the operaiton.
	///////////////////////
	operation = (piOperation *)gsimalloc(sizeof(piOperation));
	if(!operation)
		return NULL;

	// Fill in the operation.
	/////////////////////////
	memset(operation, 0, sizeof(piOperation));
	operation->peer = peer;
	operation->type = type;
	operation->data = data;
	operation->ID = opID;
	operation->callback = callback;
	operation->callbackParam = callbackParam;
	operation->name = NULL;
	operation->cancel = PEERFalse;

	// Add the operation to the list.
	/////////////////////////////////
	container.operation = operation;
	ArrayAppend(connection->operationList, &container);

	// One more op.
	///////////////
	connection->operationsStarted++;

	return operation;
}

static void piConnectConnectCallback
(
	CHAT chat,
	CHATBool success,
	void *param
)
{
	piOperation * operation = (piOperation *)param;
	PEER_CONNECTION_OP;

	// Connection attempt finished.
	///////////////////////////////
	connection->connecting = PEERFalse;
	connection->connected = (PEERBool)success;

	if(success)
	{
		// Setup server pinging.
		////////////////////////
		connection->lastChatPing = current_time();
	}
	else
	{
		// Set the disconnect flag.
		///////////////////////////
		connection->disconnect = PEERTrue;
	}

	// Add the callback.
	////////////////////
	piAddConnectCallback(peer, success, operation->callback, operation->callbackParam, operation->ID);

	// Remove the operation.
	////////////////////////
	piRemoveOperation(peer, operation);
}

static void piConnectNickErrorCallback
(
	CHAT chat,
	int type,
	const char * nick,
	void *param
)
{
	piOperation * operation = (piOperation *)param;
	PEER_CONNECTION_OP;

	// Add the peer callback.
	/////////////////////////
	piAddNickErrorCallback(peer, type, nick, operation->callbackParam, operation->ID);
}

static void piConnectFillInUserCallback
(
	CHAT chat,
	unsigned int IP,
	char user[128],
	void * param
)
{
	piOperation * operation = (piOperation *)param;
	PEER_CONNECTION_OP;

	connection->IP = IP;
	piMangleUser(user, connection->IP, connection->profileID);
}

/* Create Staging Room.
**********************/
static void piCreateStagingRoomEnumUsersCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	int numUsers,
	const char ** users,
	int * modes,
	void *param
);

static void piCreateStagingRoomEnterChannelCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	void *param
);

PEERBool piNewCreateStagingRoomOperation
(
	PEER peer,
	const char * name,
	peerJoinRoomCallback callback,
	void * callbackParam,
	int opID
)
{
	piOperation * operation;
	chatChannelCallbacks channelCallbacks;
	char room[PI_ROOM_MAX_LEN];

	PEER_CONNECTION;

	assert(name);
	if(!name)
		name = "";

	assert(callback);
	if(!callback)
		return PEERFalse;

	// Get the room name.
	/////////////////////
	piMangleStagingRoom(room, connection->title, connection->IP);
	assert(room[0]);

	// Add the operation.
	/////////////////////
	operation = piAddOperation(peer, PI_CREATE_ROOM_OPERATION, NULL, callback, callbackParam, opID);
	if(!operation)
		return PEERFalse;
	operation->name = _strdup(name);
	if(!operation->name)
	{
		piRemoveOperation(peer, operation);
		return PEERFalse;
	}

	// Set the callbacks.
	/////////////////////
	piSetChannelCallbacks(peer, &channelCallbacks);

	// Create the room.
	///////////////////
	piStartedEnteringRoom(peer, StagingRoom, room);
	chatEnterChannel(connection->chat, room, NULL, &channelCallbacks, piCreateStagingRoomEnterChannelCallback, operation, CHATFalse);

	return PEERTrue;
}

static void piCreateStagingRoomEnterChannelCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	void *param
)
{
	piOperation * operation = (piOperation *)param;
	PEERBool callCallback = PEERTrue;

	PEER_CONNECTION_OP;

	assert(channel);
	assert(channel[0]);

	// Check for cancel.
	////////////////////
	if(connection->cancelJoinRoom[StagingRoom])
	{
		// Failed.
		//////////
		success = CHATFalse;
		callCallback = connection->cancelJoinRoomError[StagingRoom];

		// Clear the flag.
		//////////////////
		connection->cancelJoinRoom[StagingRoom] = PEERFalse;
		connection->cancelJoinRoomError[StagingRoom] = PEERFalse;
	}

	if(success)
	{
		// How many users?
		//////////////////
		chatEnumUsers(chat, channel, piCreateStagingRoomEnumUsersCallback, operation, CHATFalse);
	}
	else
	{
		// Not entering.
		////////////////
		piLeaveRoom(peer, StagingRoom);

		// Add the callback.
		////////////////////
		if(callCallback)
			piAddJoinRoomCallback(peer, PEERFalse, StagingRoom, operation->callback, operation->callbackParam, operation->ID);

		// Remove the operation.
		////////////////////////
		piRemoveOperation(peer, operation);
	}
}

static void piCreateStagingRoomEnumUsersCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	int numUsers,
	const char ** users,
	int * modes,
	void *param
)
{
	piOperation * operation = (piOperation *)param;
	PEERBool callCallback = PEERTrue;

	PEER_CONNECTION_OP;

	// Check for cancel.
	////////////////////
	if(connection->cancelJoinRoom[StagingRoom])
	{
		// Failed.
		//////////
		callCallback = connection->cancelJoinRoomError[StagingRoom];
		success = CHATFalse;

		// Clear the flag.
		//////////////////
		connection->cancelJoinRoom[StagingRoom] = PEERFalse;
		connection->cancelJoinRoomError[StagingRoom] = PEERFalse;
	}

	// We should be the only one in the room, and an op.
	////////////////////////////////////////////////////
	if(success && ((numUsers != 1) || (modes[0] != CHAT_OP)))
		success = CHATFalse;

	// Setup GOA.
	/////////////
	if(success && !piStartHosting(peer))
		success = CHATFalse;

	// Do stuff based on success.
	/////////////////////////////
	if(success)
	{
		CHATChannelMode mode;

		// Done entering.
		/////////////////
		piFinishedEnteringRoom(peer, StagingRoom, operation->name);

		// Add us to the room.
		//////////////////////
		piPlayerJoinedRoom(peer, users[0], StagingRoom, PEERTrue);

		// Set the name.
		////////////////
		chatSetChannelTopic(connection->chat, channel, operation->name);

		// Set the password.
		////////////////////
		if(connection->password[0])
			chatSetChannelPassword(connection->chat, channel, CHATTrue, connection->password);

		// Set the mode.
		////////////////
		memset(&mode, 0, sizeof(CHATChannelMode));
		mode.Secret = CHATTrue;
		mode.Private = CHATTrue;
		mode.NoExternalMessages = CHATTrue;
		mode.OnlyOpsChangeTopic = CHATTrue;
		mode.Limit = connection->maxPlayers;
		chatSetChannelMode(connection->chat, channel, &mode);
	}
	else
	{
		// Leave the room.
		//////////////////
		piLeaveRoom(peer, StagingRoom);
	}

	// Add the callback.
	////////////////////
	if(callCallback)
		piAddJoinRoomCallback(peer, (PEERBool)success, StagingRoom, operation->callback, operation->callbackParam, operation->ID);

	// Remove the operation.
	////////////////////////
	piRemoveOperation(peer, operation);
}

/* Join Room.
************/
static void piJoinRoomEnterChannelCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	void *param
);

static void piJoinRoomEnumUsersCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	int numUsers,
	const char ** users,
	int * modes,
	void * param
);

static char * piGetGroupRoomName
(
	PEER peer
);

static void piGetBasicUserInfoCallback
(
	CHAT chat,
	CHATBool success,
	const char * nick,
	const char * user,
	const char * address,
	void * param
);

PEERBool piNewJoinRoomOperation
(
	PEER peer,
	RoomType roomType,
	const char * channel,
	peerJoinRoomCallback callback,
	void * callbackParam,
	int opID
)
{
	piOperation * operation;
	chatChannelCallbacks channelCallbacks;
	const char * password;

	PEER_CONNECTION;

	ASSERT_ROOMTYPE(roomType);
	assert(callback);

	// Check that the name isn't too long.
	//////////////////////////////////////
	assert(strlen(channel) < PI_ROOM_MAX_LEN);
	if(strlen(channel) >= PI_ROOM_MAX_LEN)
		return PEERFalse;

	// Check the name.
	//////////////////
	assert(channel);
	assert(channel[0]);
	if(!channel || !channel[0])
		return PEERFalse;

	// Add the operation.
	/////////////////////
	operation = piAddOperation(peer, PI_JOIN_ROOM_OPERATION, NULL, callback, callbackParam, opID);
	if(!operation)
		return PEERFalse;
	operation->roomType = roomType;

	// Set the callbacks.
	/////////////////////
	piSetChannelCallbacks(peer, &channelCallbacks);

	// Set the password for staging rooms.
	//////////////////////////////////////
	if((roomType == StagingRoom) && connection->password[0])
		password = connection->password;
	else
		password = NULL;

	// Join the room.
	/////////////////
	piStartedEnteringRoom(peer, roomType, channel);
	chatEnterChannel(connection->chat, channel, password, &channelCallbacks, piJoinRoomEnterChannelCallback, operation, CHATFalse);

	return PEERTrue;
}

static void piJoinRoomEnterChannelCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	void *param
)
{
	piOperation * operation = (piOperation *)param;
	PEERBool callCallback = PEERTrue;

	PEER_CONNECTION_OP;

	assert(channel);
	assert(channel[0]);

	// Check for cancel.
	////////////////////
	if(connection->cancelJoinRoom[operation->roomType])
	{
		// Failed.
		//////////
		success = CHATFalse;
		callCallback = connection->cancelJoinRoomError[operation->roomType];

		// Clear the flag.
		//////////////////
		connection->cancelJoinRoom[operation->roomType] = PEERFalse;
		connection->cancelJoinRoomError[operation->roomType] = PEERFalse;
	}

	if(success)
	{
		// How many users?
		//////////////////
		chatEnumUsers(chat, channel, piJoinRoomEnumUsersCallback, operation, CHATFalse);
	}
	else
	{
		// Not entering.
		////////////////
		piLeaveRoom(peer, operation->roomType);

		// Add the callback.
		////////////////////
		if(callCallback)
			piAddJoinRoomCallback(peer, PEERFalse, operation->roomType, operation->callback, operation->callbackParam, operation->ID);

		// Remove the operation.
		////////////////////////
		piRemoveOperation(peer, operation);
	}
}

static void piJoinRoomEnumUsersCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	int numUsers,
	const char ** users,
	int * modes,
	void * param
)
{
	char * name;
	piOperation * operation = (piOperation *)param;

	PEERBool callCallback = PEERTrue;

	PEER_CONNECTION_OP;

	// Check for cancel.
	////////////////////
	if(connection->cancelJoinRoom[operation->roomType])
	{
		// Failed.
		//////////
		callCallback = connection->cancelJoinRoomError[operation->roomType];

		// Clear the flag.
		//////////////////
		connection->cancelJoinRoom[operation->roomType] = PEERFalse;
		success = CHATFalse;
		connection->cancelJoinRoomError[operation->roomType] = PEERFalse;
	}

	// Check for success.
	/////////////////////
	if(success)
	{
		int i;

		// Add all these people to the room.
		////////////////////////////////////
		for(i = 0 ; i < numUsers ; i++)
			piPlayerJoinedRoom(peer, users[i], operation->roomType, (modes[i] == CHAT_OP));

		// Get everyone's IP and profile ID if we're pinging.
		/////////////////////////////////////////////////////
		if(connection->pingRoom[operation->roomType])
			chatGetChannelBasicUserInfo(connection->chat, channel, piGetBasicUserInfoCallback, peer, CHATFalse);

		// Send our info.
		/////////////////
		piSendInfo(peer, channel, PEERFalse, PEERTrue);

		// Get the name.
		////////////////
		if(operation->roomType == GroupRoom)
			name = piGetGroupRoomName(peer);
		else
			name = "";

		// Finished entering the room.
		//////////////////////////////
		piFinishedEnteringRoom(peer, operation->roomType, name);

		// If we just joined a group, list the group's games.
		/////////////////////////////////////////////////////
		if(connection->listingGames && (operation->roomType == GroupRoom))
			piRestartListingGames(peer);
	}
	else
	{
		// Leave the room.
		//////////////////
		piLeaveRoom(peer, operation->roomType);
	}

	// Add the callback.
	////////////////////
	if(callCallback)
		piAddJoinRoomCallback(peer, (PEERBool)success, operation->roomType, operation->callback, operation->callbackParam, operation->ID);

	// Remove the operation.
	////////////////////////
	piRemoveOperation(peer, operation);
}

static char * piGetGroupRoomName
(
	PEER peer
)
{
	int i;
	int count;
	GServer server;
	int id;
	static char * noName = "(No Name)";

	PEER_CONNECTION;

	// Go through the list of groups until we find the right one.
	/////////////////////////////////////////////////////////////
	count = ServerListCount(connection->groupList);
	for(i = 0 ; i < count ; i++)
	{
		server = ServerListGetServer(connection->groupList, i);
		id = ServerGetIntValue(server, "groupid", -1);
		if(id == connection->groupID)
			return ServerGetStringValue(server, "hostname", "noName");
	}

	return noName;
}

static void piGetBasicUserInfoCallback
(
	CHAT chat,
	CHATBool success,
	const char * nick,
	const char * user,
	const char * address,
	void * param
)
{
	PEER peer = (PEER)param;
	unsigned int IP;
	int profileID;

	if(!success)
		return;

	// Get the IP and profile ID.
	/////////////////////////////
	if(!piDemangleUser(user, &IP, &profileID))
		return;

	// Cache the info.
	//////////////////
	piSetPlayerIPAndProfileID(peer, nick, IP, profileID);
}

/* List Group Rooms.
*******************/
PEERBool piNewListGroupRoomsOperation
(
	PEER peer,
	peerListGroupRoomsCallback callback,
	void * param,
	int opID
)
{
	piOperation * operation;

	PEER_CONNECTION;

	assert(callback);

	// Add the operation.
	/////////////////////
	operation = connection->listingGroupsOperation = piAddOperation(peer, PI_LIST_GROUP_ROOMS_OPERATION, NULL, callback, param, opID);
	if(!operation)
		return PEERFalse;

	// Start the listing.
	/////////////////////
	return piCEngineStartListingGroups(peer);
}

/* ListingGames.
***************/
static void piListingGamesEnterChannelCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	void * param
);

PEERBool piNewListingGamesOperation
(
	PEER peer,
	peerListingGamesCallback callback,
	void * param
)
{
	piOperation * operation;
	chatChannelCallbacks callbacks;
	int groupID;

	PEER_CONNECTION;

	assert(callback);
	assert(!connection->listingGamesOperation);

	// Add the operation.
	/////////////////////
	operation = connection->listingGamesOperation = piAddOperation(peer, PI_LIST_STAGING_ROOMS_OPERATION, NULL, callback, param, -1);
	if(!operation)
		return PEERFalse;

	// Set the channel callbacks.
	/////////////////////////////
	memset(&callbacks, 0, sizeof(chatChannelCallbacks));
	callbacks.param = peer;
	callbacks.channelMessage = piListingGamesChannelMessage;
	callbacks.kicked = piListingGamesChannelKicked;

	// Join the updates room.
	/////////////////////////
	if(connection->inRoom[GroupRoom])
		groupID = connection->groupID;
	else
		groupID = 0;
	piMangleUpdatesRoom(connection->updatesRoom, connection->title, groupID);
	chatEnterChannel(connection->chat, connection->updatesRoom, "", &callbacks, piListingGamesEnterChannelCallback, operation, CHATFalse);

	return PEERTrue;
}

static void piListingGamesEnterChannelCallback
(
	CHAT chat,
	CHATBool success,
	const char * channel,
	void * param
)
{
	piOperation * operation = (piOperation *)param;
	PEER_CONNECTION_OP;

	// Check for a cancelled operation.
	///////////////////////////////////
	if(operation->cancel)
	{
		piRemoveOperation(peer, operation);
		return;
	}

	// Start listing the servers.
	/////////////////////////////
	if(success && !piCEngineStartListingGames(peer))
		success = CHATFalse;

	// Check for success.
	/////////////////////
	if(success)
	{
		// We're listing games.
		///////////////////////
		connection->listingGames = PEERTrue;

		// Clear the list.
		//////////////////
		piAddListingGamesCallback(peer, PEERTrue, NULL, NULL, PEERFalse, PEER_CLEAR, 0, operation->callback, operation->callbackParam);
	}
	else
	{
		// Leave the channel.
		/////////////////////
		chatLeaveChannel(connection->chat, channel);

		// Add the callback.
		////////////////////
		piAddListingGamesCallback(peer, PEERFalse, NULL, NULL, PEERFalse, 0, 0, operation->callback, operation->callbackParam);

		// Clear the operation.
		///////////////////////
		piRemoveOperation(peer, operation);
		connection->listingGamesOperation = NULL;
	}
}

/* Get Player Info.
*******************/
void piGetPlayerInfoCallback
(
	CHAT chat,
	CHATBool success,
	const char * nick,
	const char * user,
	const char * address,
	void * param
)
{
	piOperation * operation = (piOperation *)param;
	int profileID = 0;
	unsigned int IP = 0;

	PEER_CONNECTION_OP;

	assert(nick);
	assert(nick[0]);

	// Check for success.
	/////////////////////
	if(success)
	{
		assert(user);
		assert(user[0]);

		// Get the info.
		////////////////
		if(!piDemangleUser(user, &IP, &profileID))
			success = PEERFalse;

		// Cache the info.
		//////////////////
		if(success)
			piSetPlayerIPAndProfileID(peer, nick, IP, profileID);
	}
	if(!success)
	{
		profileID = 0;
		IP = 0;
	}

	// Add the callback.
	////////////////////
	if(operation->callback)
	{
		if(operation->type == PI_GET_PROFILE_ID_OPERATION)
			piAddGetPlayerProfileIDCallback(peer, success, nick, profileID, operation->callback, operation->callbackParam, operation->ID);
		else if(operation->type == PI_GET_IP_OPERATION)
			piAddGetPlayerIPCallback(peer, success, nick, IP, operation->callback, operation->callbackParam, operation->ID);
		else
			assert(0);
	}

	// Remove the operation.
	////////////////////////
	piRemoveOperation(peer, operation);
}

PEERBool piNewGetProfileIDOperation
(
	PEER peer,
	const char * nick,
	peerGetPlayerProfileIDCallback callback,
	void * param,
	int opID
)
{
	piOperation * operation;

	PEER_CONNECTION;

	assert(nick);
	assert(nick[0]);

	// Add the operation.
	/////////////////////
	operation = piAddOperation(peer, PI_GET_PROFILE_ID_OPERATION, NULL, callback, param, opID);
	if(!operation)
		return PEERFalse;

	// Get the user's info.
	///////////////////////
	chatGetBasicUserInfo(connection->chat, nick, piGetPlayerInfoCallback, operation, CHATFalse);

	return PEERTrue;
}

PEERBool piNewGetIPOperation
(
	PEER peer,
	const char * nick,
	peerGetPlayerIPCallback callback,
	void * param,
	int opID
)
{
	piOperation * operation;

	PEER_CONNECTION;

	assert(nick);
	assert(nick[0]);

	// Add the operation.
	/////////////////////
	operation = piAddOperation(peer, PI_GET_IP_OPERATION, NULL, callback, param, opID);
	if(!operation)
		return PEERFalse;

	// Get the user's info.
	///////////////////////
	chatGetBasicUserInfo(connection->chat, nick, piGetPlayerInfoCallback, operation, CHATFalse);

	return PEERTrue;
}

/* Change Nick.
**************/
void piChangeNickCallback
(
	CHAT chat,
	CHATBool success,
	const char * oldNick,
	const char * newNick,
	void * param
)
{
	piOperation * operation = (piOperation *)param;

	PEER_CONNECTION_OP;

	// Check for success.
	/////////////////////
	if(success)
	{
		// Update the nick locally.
		///////////////////////////
		strcpy(connection->nick, newNick);
	}

	// Add the callback.
	////////////////////
	if(operation->callback)
		piAddChangeNickCallback(peer, success, oldNick, newNick, operation->callback, operation->callbackParam, operation->ID);

	// Remove the operation.
	////////////////////////
	piRemoveOperation(peer, operation);
}

PEERBool piNewChangeNickOperation
(
	PEER peer,
	const char * newNick,
	peerChangeNickCallback callback,
	void * param,
	int opID
)
{
	piOperation * operation;

	PEER_CONNECTION;

	assert(newNick);
	assert(newNick[0]);

	// Add the operation.
	/////////////////////
	operation = piAddOperation(peer, PI_CHANGE_NICK_OPERATION, NULL, callback, param, opID);
	if(!operation)
		return PEERFalse;

	// Change the nick.
	///////////////////
	chatChangeNick(connection->chat, newNick, piChangeNickCallback, operation, CHATFalse);

	return PEERTrue;
}
