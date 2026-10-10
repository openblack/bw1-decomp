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
#include "peerPlayers.h"
#include "peerPing.h"
#include "peerCallbacks.h"

/************
** DEFINES **
************/
#define PI_PLAYERS_NUM_BUCKETS     128
#define PI_PLAYER_INFO_SIZE        (sizeof(piPlayer) - PI_NICK_MAX_LEN)
#define PI_PLAYER_INFO(player)     ((char *)(player) + PI_NICK_MAX_LEN)

/***************
** PROTOTYPES **
***************/
static int piPlayersTableHashFn
(
	const void *elem,
	int numBuckets
);

static int piPlayersTableCompareFn
(
	const void *elem1,
	const void *elem2
);

static void piPlayersTableElementFreeFn
(
	void *elem
);

static piPlayer * piAddPlayer
(
	PEER peer,
	const char * nick,
	PEERBool initialize
);

static void piRemovePlayer
(
	PEER peer,
	piPlayer * player
);

static void piLeftRoomMapFn
(
	void *elem,
	void *clientdata
);

/**************
** FUNCTIONS **
**************/
PEERBool piPlayersInit
(
	PEER peer
)
{
	int i;

	PEER_CONNECTION;

	// Setup the player table.
	//////////////////////////
	connection->players = TableNew(sizeof(piPlayer), PI_PLAYERS_NUM_BUCKETS, piPlayersTableHashFn, piPlayersTableCompareFn, piPlayersTableElementFreeFn);
	if(!connection->players)
		return PEERFalse;

	// No players in any room.
	//////////////////////////
	for(i = 0 ; i < NumRooms ; i++)
		connection->numPlayers[i] = 0;

	return PEERTrue;
}

static int piPlayersTableHashFn
(
	const void *elem,
	int numBuckets
)
{
	piPlayer * player = (piPlayer *)elem;
	int c;
	const char * str;
	int hash;

	assert(player);
	assert(player->nick[0]);

	// Get the hash.
	////////////////
	str = player->nick;
	hash = 0;
	while((c = *str++) != '\0')
		hash += tolower(c);
	hash %= numBuckets;

	return hash;
}

static int piPlayersTableCompareFn
(
	const void *elem1,
	const void *elem2
)
{
	piPlayer * player1 = (piPlayer *)elem1;
	piPlayer * player2 = (piPlayer *)elem2;
	assert(player1);
	assert(player1->nick[0]);
	assert(player2);
	assert(player2->nick[0]);

	return strcasecmp(player1->nick, player2->nick);
}

static void piPlayersTableElementFreeFn
(
	void *elem
)
{
	piPlayer * player = (piPlayer *)elem;
	assert(player);
	assert(player->nick);
}

void piPlayersCleanup
(
	PEER peer
)
{
	int i;

	PEER_CONNECTION;

	// Free the player table.
	/////////////////////////
	if(connection->players)
		TableFree(connection->players);
	connection->players = NULL;
	for(i = 0 ; i < NumRooms ; i++)
		connection->numPlayers[i] = 0;
}

void piPlayerJoinedRoom
(
	PEER peer,
	const char * nick,
	RoomType roomType,
	PEERBool host
)
{
	piPlayer * player;

	PEER_CONNECTION;

	assert(nick);
	assert(nick[0]);
	ASSERT_ROOMTYPE(roomType);
	assert(IN_ROOM || ENTERING_ROOM);

	// Check that we're in/entering this room.
	//////////////////////////////////////////
	if(!IN_ROOM && !ENTERING_ROOM)
		return;

	// Find the player.
	///////////////////
	player = piGetPlayer(peer, nick);

	// Is it a new player?
	//////////////////////
	if(!player)
	{
		// Add the player.
		//////////////////
		player = piAddPlayer(peer, nick, PEERTrue);
	}

	// In this room.
	////////////////
	assert(!player->inRoom[roomType]);
	player->inRoom[roomType] = PEERTrue;
	connection->numPlayers[roomType]++;
	player->host[roomType] = host;

	// Do ping stuff.
	/////////////////
	piPingPlayerJoinedRoom(peer, player, roomType);
}

static piPlayer * piAddPlayer
(
	PEER peer,
	const char * nick,
	PEERBool initialize
)
{
	piPlayer * player;
	piPlayer playerMatch;

	PEER_CONNECTION;

	assert(!piGetPlayer(peer, nick));

	// Setup the player.
	////////////////////
	player = &playerMatch;
	memset(player, 0, sizeof(piPlayer));
	strzcpy(player->nick, nick, PI_NICK_MAX_LEN);
	if(initialize)
	{
		RoomType roomType;
		player->local = (strcasecmp(nick, connection->nick) == 0);

		for(roomType = 0 ; roomType < NumRooms ; roomType++)
		{
			player->inRoom[roomType] = PEERFalse;
			player->host[roomType] = PEERFalse;
		}

		player->profileID = 0;
		player->gotProfileID = PEERFalse;
		player->IP = 0;
		player->gotIP = PEERFalse;
		player->ready = PEERFalse;

		if(!piPingInitPlayer(peer, player))
			return NULL;
	}

	// Add the player.
	//////////////////
	TableEnter(connection->players, player);

	player = piGetPlayer(peer, nick);
	assert(player);

	return player;
}

void piPlayerLeftRoom
(
	PEER peer,
	const char * nick,
	RoomType roomType
)
{
	piPlayer * player;

	PEER_CONNECTION;

	assert(nick);
	assert(nick[0]);
	ASSERT_ROOMTYPE(roomType);

	// Find the player.
	///////////////////
	player = piGetPlayer(peer, nick);
	assert(player);
	assert(strcasecmp(player->nick, nick) == 0);
	if(!player)
		return;

	// Leave the room.
	//////////////////
	assert(player->inRoom[roomType]);
	player->inRoom[roomType] = PEERFalse;
	connection->numPlayers[roomType]--;

	// Do ping stuff.
	/////////////////
	piPingPlayerLeftRoom(peer, player, roomType);

	// Are we not in any rooms now?
	///////////////////////////////
	if(!player->inRoom[0] && !player->inRoom[1] && !player->inRoom[2])
	{
		// This player is out.
		//////////////////////
		piRemovePlayer(peer, player);
	}
	else if(roomType == StagingRoom)
	{
		// Not ready anymore.
		/////////////////////
		player->ready = PEERFalse;
	}
}

static void piRemovePlayer
(
	PEER peer,
	piPlayer * player
)
{
	PEER_CONNECTION;

	assert(player);

	// Cleanup the ping stuff.
	//////////////////////////
	piPingCleanupPlayer(peer, player);

	// Remove it.
	/////////////
	TableRemove(connection->players, player);
}

void piPlayerChangedNick
(
	PEER peer,
	const char * oldNick,
	const char * newNick
)
{
	char playerInfoBuffer[PI_PLAYER_INFO_SIZE];
	piPlayer * player;

	assert(oldNick);
	assert(oldNick[0]);
	assert(newNick);
	assert(newNick[0]);

	// Find the player.
	///////////////////
	player = piGetPlayer(peer, oldNick);

	// Check if we can't find this player
	// (we could have already done the nick change
	// if we're in more than one channel together).
	///////////////////////////////////////////////
	if(!player)
		return;

	// Save off the player info.
	////////////////////////////
	memcpy(playerInfoBuffer, PI_PLAYER_INFO(player), PI_PLAYER_INFO_SIZE);

	// Remove the old nick.
	///////////////////////
	piRemovePlayer(peer, player);

	// Add the new one.
	///////////////////
	player = piAddPlayer(peer, newNick, PEERFalse);
	assert(player);
	if(!player)
		return;

	// Copy the player info back in.
	////////////////////////////////
	memcpy(PI_PLAYER_INFO(player), playerInfoBuffer, PI_PLAYER_INFO_SIZE);
}

typedef struct piLeftRoomData
{
	PEER peer;
	RoomType roomType;
} piLeftRoomData;

void piClearRoomPlayers
(
	PEER peer,
	RoomType roomType
)
{
	piLeftRoomData data;

	PEER_CONNECTION;

	ASSERT_ROOMTYPE(roomType);

	// Go through all the players.
	//////////////////////////////
	data.peer = peer;
	data.roomType = roomType;
	TableMapSafe(connection->players, piLeftRoomMapFn, &data);
}

static void piLeftRoomMapFn
(
	void *elem,
	void *clientdata
)
{
	piPlayer * player = (piPlayer *)elem;
	piLeftRoomData * data = (piLeftRoomData *)clientdata;
	assert(player);
	assert(player->nick);
	assert(data);

	// Is the player in this room?
	//////////////////////////////
	if(player->inRoom[data->roomType])
	{
		// Leave the room.
		//////////////////
		piPlayerLeftRoom(data->peer, player->nick, data->roomType);
	}
}

piPlayer * piGetPlayer
(
	PEER peer,
	const char * nick
)
{
	piPlayer playerMatch;
	piPlayer * player;

	PEER_CONNECTION;

	assert(nick);
	assert(nick[0]);

	// Check for no table.
	//////////////////////
	if(!connection->players)
		return NULL;

	// Lookup this player.
	//////////////////////
	strzcpy(playerMatch.nick, nick, PI_NICK_MAX_LEN);
	player = TableLookup(connection->players, &playerMatch);

	return player;
}

typedef struct piEnumRoomPlayersData
{
	PEER peer;
	RoomType roomType;
	int count;
	piEnumRoomPlayersCallback callback;
	void * param;
} piEnumRoomPlayersData;

void piEnumRoomPlayersMap
(
	void *elem,
	void *clientdata
)
{
	piPlayer * player = (piPlayer *)elem;
	piEnumRoomPlayersData * data = (piEnumRoomPlayersData *)clientdata;
	// Is this player in the room?
	//////////////////////////////
	if(player->inRoom[data->roomType])
	{
		// Call the callback.
		/////////////////////
		data->callback(data->peer, data->roomType, player, data->count, data->param);

		// One more player.
		///////////////////
		data->count++;
	}
}

void piEnumRoomPlayers
(
	PEER peer,
	RoomType roomType,
	piEnumRoomPlayersCallback callback,
	void * param
)
{
	piEnumRoomPlayersData data;

	PEER_CONNECTION;

	ASSERT_ROOMTYPE(roomType);
	assert(callback);

	// Init the data.
	/////////////////
	data.peer = peer;
	data.roomType = roomType;
	data.count = 0;
	data.callback = callback;
	data.param = param;

	// Enum through the players.
	////////////////////////////
	TableMap(connection->players, piEnumRoomPlayersMap, &data);
}

int piFindPlayersByIPMap
(
	void * elem,
	void * clientdata
)
{
	piPlayer * player = (piPlayer *)elem;
	unsigned int IP;

	IP = *(unsigned int *)clientdata;

	// Is this the same IP?
	///////////////////////
	if(player->gotIP && (player->IP == IP))
		return 0;

	return 1;
}

piPlayer * piFindPlayerByIP
(
	PEER peer,
	unsigned int IP
)
{
	PEER_CONNECTION;

	return (piPlayer *)TableMap2(connection->players, piFindPlayersByIPMap, &IP);
}

void piSetPlayerIPAndProfileID
(
	PEER peer,
	const char * nick,
	unsigned int IP,
	int profileID
)
{
	piPlayer * player;

	assert(nick);
	assert(nick[0]);

	if(!nick)
		return;

	// Cache the info.
	//////////////////
	player = piGetPlayer(peer, nick);
	if(player)
	{
		// Let the app know about it.
		/////////////////////////////
		if(!player->gotIP)
			piAddPlayerInfoCallback(peer, nick, IP, profileID);

		player->profileID = profileID;
		player->IP = IP;
		player->gotIP = PEERTrue;
		player->gotProfileID = PEERTrue;
	}
}
