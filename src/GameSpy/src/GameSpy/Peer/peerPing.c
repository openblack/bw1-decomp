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
#include <stdlib.h>
#include <stdio.h>
#include "peerPlayers.h"
#include "peerPing.h"
#include "peerGlobalCallbacks.h"
#include "peerCallbacks.h"
#include "peerMangle.h"

/************
** DEFINES **
************/
#define PI_PING_TIMEOUT            5000
#define PI_PINGER_PORT             13139
#define PI_XPING_NUM_BUCKETS       128
#define PI_MAX_PINGS_LOST          6
#define PI_PINGS_LOST_DELAY        60000
#define PI_MIN_PING_DELAY          2000

#define PEER_CONNECTION_DATA       piConnection * connection;\
	                               assert(data);\
                                   assert(data->peer);\
                                   connection = (piConnection *)data->peer;


/**********
** TYPES **
**********/
typedef struct piXping
{
	char nicks[2][PI_NICK_MAX_LEN];
	int ping;
} piXping;

typedef struct piQueuedPing
{
	char * nick;
	unsigned int IP;
} piQueuedPing;

/***************
** PROTOTYPES **
***************/
static int piXpingTableHashFn
(
	const void *param,
	int numBuckets
);

static int piXpingTableCompareFn
(
	const void *param1,
	const void *param2
);

static void piXpingTableElementFreeFn
(
	void *param
);

static void piPingQueueElementFreeFn
(
	void *elem
);

static void piPinged
(
	unsigned int IP,
	unsigned short port,
	int ping,
	const char * data,
	int len,
	PEER peer
);

static void piPingerReply
(
	unsigned int IP,
	unsigned short port,
	int ping,
	const char * pingData,
	int pingDataLen,
	PEER peer
);

static void piPingerReplyMapFn
(
	void *elem,
	void *clientdata
);

static void piPingThinkMapFn
(
	void *elem,
	void *clientdata
);

static void piQueuePing
(
	PEER peer,
	piPlayer * player
);

static void piPingPlayerLeftRoomTableMapFn
(
	void *elem,
	void *clientdata
);

static void piRemoveXping
(
	PEER peer,
	piXping * xping
);

static piXping * piAddXping
(
	PEER peer,
	const char * nick1,
	const char * nick2
);

static piXping * piFindXping
(
	PEER peer,
	const char * nick1,
	const char * nick2
);

/**************
** FUNCTIONS **
**************/
PEERBool piPingInit
(
	PEER peer,
	PEERBool pingRooms[NumRooms],
	PEERBool crossPingRooms[NumRooms]
)
{
	PEER_CONNECTION;

	// Init the xping table.
	////////////////////////
	connection->xpings = TableNew(sizeof(piXping), PI_XPING_NUM_BUCKETS, piXpingTableHashFn, piXpingTableCompareFn, piXpingTableElementFreeFn);
	if(!connection->xpings)
		return PEERFalse;

	// Set the ping rooms.
	//////////////////////
	memcpy(connection->pingRoom, pingRooms, sizeof(PEERBool) * NumRooms);
	memcpy(connection->xpingRoom, crossPingRooms, sizeof(PEERBool) * NumRooms);

	// Init pinger.
	///////////////
	if(!pingerInit(NULL, PI_PINGER_PORT, piPinged, peer, NULL, NULL))
		return PEERFalse;

	// Init the ping queue.
	///////////////////////
	connection->pingQueue = ArrayNew(sizeof(piQueuedPing), 0, piPingQueueElementFreeFn);
	if(!connection->pingQueue)
	{
		pingerShutdown();
		return PEERFalse;
	}

	// No pings yet.
	////////////////
	connection->lastPingTime = 0;

	// Init the random number generator.
	////////////////////////////////////
	srand(current_time());

	return PEERTrue;
}

static int piXpingTableHashFn
(
	const void *param,
	int numBuckets
)
{
	piXping * xping = (piXping *)param;
	int i;
	int c;
	const char * str;
	int hash = 0;
	const char * nicks[2];

	assert(xping);
	assert(xping->nicks[0][0]);
	assert(xping->nicks[1][0]);

	nicks[0] = xping->nicks[0];
	nicks[1] = xping->nicks[1];

	// Reverse the order if the second is smaller.
	//////////////////////////////////////////////
	if(strcmp(nicks[1], nicks[0]) < 0)
	{
		const char * temp = nicks[0];
		nicks[0] = nicks[1];
		nicks[1] = temp;
	}

	// Get the hash.
	////////////////
	for(i = 0 ; i < 2 ; i++)
	{
		str = nicks[i];
		while((c = *str++) != '\0')
			hash += tolower(c);
		hash %= numBuckets;
	}

	return hash;
}

static int piXpingTableCompareFn
(
	const void *param1,
	const void *param2
)
{
	piXping * xping1 = (piXping *)param1;
	piXping * xping2 = (piXping *)param2;

	int i;
	int rcode;
	const char * nicks[2][2];

	assert(xping1);
	assert(xping1->nicks[0][0]);
	assert(xping1->nicks[1][0]);
	assert(xping2);
	assert(xping2->nicks[0][0]);
	assert(xping2->nicks[1][0]);

	nicks[0][0] = xping1->nicks[0];
	nicks[0][1] = xping1->nicks[1];
	nicks[1][0] = xping2->nicks[0];
	nicks[1][1] = xping2->nicks[1];

	// Reverse the order if the second is smaller.
	//////////////////////////////////////////////
	for(i = 0 ; i < 2 ; i++)
	{
		if(strcmp(nicks[i][1], nicks[i][0]) < 0)
		{
			const char * temp = nicks[i][0];
			nicks[i][0] = nicks[i][1];
			nicks[i][1] = temp;
		}
	}

	for(i = 0 ; i < 2 ; i++)
	{
		rcode = strcasecmp(nicks[0][i], nicks[1][i]);
		if(rcode != 0)
			return rcode;
	}

	return 0;
}

static void piXpingTableElementFreeFn
(
	void *param
)
{
	piXping * xping = (piXping *)param;
	assert(xping);
	assert(xping->nicks[0][0]);
	assert(xping->nicks[1][0]);
}

static void piPingQueueElementFreeFn
(
	void *elem
)
{
	piQueuedPing * queuedPing = (piQueuedPing *)elem;
	assert(queuedPing);

	gsifree(queuedPing->nick);
}

static void piPinged
(
	unsigned int IP,
	unsigned short port,
	int ping,
	const char * data,
	int len,
	PEER peer
)
{
}

void piPingCleanup
(
	PEER peer
)
{
	RoomType roomType;

	PEER_CONNECTION;

	// Free the ping queue.
	///////////////////////
	if(connection->pingQueue)
		ArrayFree(connection->pingQueue);
	connection->pingQueue = NULL;

	// Clear timing stuff.
	//////////////////////
	connection->lastPingTime = 0;

	// Reset ping/xping rooms.
	//////////////////////////
	for(roomType = 0 ; roomType < NumRooms ; roomType++)
	{
		connection->pingRoom[roomType] = PEERFalse;
		connection->xpingRoom[roomType] = PEERFalse;
	}

	// Free the xping table.
	////////////////////////
	if(connection->xpings)
		TableFree(connection->xpings);
	connection->xpings = NULL;

	// Cleanup pinger.
	//////////////////
	pingerShutdown();
}

void piPingThink
(
	PEER peer
)
{
	unsigned long now;
	unsigned long pingTime;
	int numPings;
	int len;
	int i;
	piQueuedPing * queuedPing;
	piPlayer * player;

	PEER_CONNECTION;

	// Check if we're not doing pings.
	//////////////////////////////////
	if(!connection->pingQueue)
		return;

	// Get the current time.
	////////////////////////
	now = current_time();

	// Queue up anyone who needs a ping.
	////////////////////////////////////
	TableMap(connection->players, piPingThinkMapFn, peer);

	// Figure out how many pings to send (one per second).
	//////////////////////////////////////////////////////
	pingTime = (now / 1000);
	numPings = (pingTime - connection->lastPingTime);
	connection->lastPingTime = pingTime;
	len = ArrayLength(connection->pingQueue);
	if(len < numPings)
		numPings = len;

	// Send the pings.
	//////////////////
	for(i = 0 ; i < numPings ; i++)
	{
		queuedPing = (piQueuedPing *)ArrayNth(connection->pingQueue, 0);

		// Make sure the player is still around.
		////////////////////////////////////////
		player = piGetPlayer(peer, queuedPing->nick);
		if(player)
		{
			// Do the ping.
			///////////////
			pingerPing(queuedPing->IP, PI_PINGER_PORT, piPingerReply, peer, PINGERFalse, PI_PING_TIMEOUT);

			// Waiting for a ping to return.
			////////////////////////////////
			player->pingQueued = PEERFalse;
			player->pingsSent++;
			player->waitingForPing = PEERTrue;
		}

		// Remove it from the queue.
		////////////////////////////
		ArrayDeleteAt(connection->pingQueue, 0);
	}

	// Let pinger think.
	////////////////////
	pingerThink();
}

typedef struct piPingerReplyData
{
	PEER peer;
	unsigned int IP;
	int ping;
} piPingerReplyData;

static void piPingerReply
(
	unsigned int IP,
	unsigned short port,
	int ping,
	const char * pingData,
	int pingDataLen,
	PEER peer
)
{
	piPingerReplyData data;

	PEER_CONNECTION;

	// Find who sent the ping.
	//////////////////////////
	data.peer = peer;
	data.IP = IP;
	data.ping = ping;
	TableMap(connection->players, piPingerReplyMapFn, &data);
}

static void piPingerReplyMapFn
(
	void *elem,
	void *clientdata
)
{
	piPlayer * player = (piPlayer *)elem;
	piPingerReplyData * data = (piPingerReplyData *)clientdata;

	PEER_CONNECTION_DATA;

	assert(player);

	// Check if waiting for a ping.
	///////////////////////////////
	if(!player->waitingForPing)
		return;

	// Check the IP.
	////////////////
	if(!player->gotIP || (player->IP != data->IP))
		return;

	// Not waiting anymore.
	///////////////////////
	player->waitingForPing = PEERFalse;

	// Check timeout.
	/////////////////
	if(data->ping == PINGER_TIMEOUT)
	{
		// One more lost.
		/////////////////
		player->pingsLost++;
		player->pingsLostConsecutive++;

		// Slow down pings if a lot have been lost.
		///////////////////////////////////////////
		if(player->pingsLostConsecutive >= PI_MAX_PINGS_LOST)
			player->nextPing = (current_time() + PI_PINGS_LOST_DELAY);
		else
			player->nextPing = 0;
	}
	else
	{
		int i;
		int total;
		int change;
		int delay;

		// One more returned.
		/////////////////////
		player->pingsReturned++;
		player->pingsLostConsecutive = 0;
		player->gotPing = PEERTrue;

		// Update the ping history.
		///////////////////////////
		if(player->pingHistoryNum > 0)
			memmove(player->pingHistory + 1, player->pingHistory, min(player->pingHistoryNum, PI_PING_HISTORY_LEN - 1) * sizeof(int));
		player->pingHistory[0] = data->ping;
		if(player->pingHistoryNum < PI_PING_HISTORY_LEN)
			player->pingHistoryNum++;

		// How much did the ping change?
		////////////////////////////////
		change = (player->pingAverage - data->ping);
		if(change < 0)
			change = -change;

		// Recompute the ping average.
		//////////////////////////////
		total = 0;
		for(i = 0 ; i < player->pingHistoryNum ; i++)
			total += player->pingHistory[i];
		player->pingAverage = (total / player->pingHistoryNum);

		// Add a ping callback.
		///////////////////////
		piAddPingCallback(data->peer, player->nick, player->pingAverage);

		// Figure out when to ping again.
		/////////////////////////////////
		if(player->pingsReturned < 4)
		{
			player->nextPing = (current_time() + PI_PING_TIMEOUT + ((PI_PING_TIMEOUT * rand()) / RAND_MAX));
		}
		else
		{
			delay = (40 * (250 - change));
			if(delay <= PI_MIN_PING_DELAY)
				delay = PI_MIN_PING_DELAY;
			player->nextPing = (current_time() + delay);
		}

		// Send the crossping.
		//////////////////////
		if(player->inXpingRoom)
		{
			RoomType roomType;
			char message[(PI_NICK_MAX_LEN * 2) + 32];
			char encodedIP[11];

			// Setup the message.
			/////////////////////
			piMangleIP(encodedIP, player->IP);
			sprintf(message, "%s %d", encodedIP, player->pingAverage);

			// Send it in every xping room the player is in.
			////////////////////////////////////////////////
			for(roomType = 0 ; roomType < NumRooms ; roomType++)
			{
				if(player->inRoom[roomType] && connection->xpingRoom[roomType])
				{
					if(IN_ROOM || ENTERING_ROOM)
						piSendChannelUTM(data->peer, ROOM, PI_UTM_XPING, message);
				}
			}
		}
	}
}

static void piPingThinkMapFn
(
	void *elem,
	void *clientdata
)
{
	piPlayer * player = (piPlayer *)elem;
	PEER peer = (PEER)clientdata;

	// Don't ping the local player.
	///////////////////////////////
	if(player->local)
		return;

	// Don't have an IP?
	////////////////////
	if(!player->gotIP)
		return;

	// Not pinging?
	///////////////
	if(!player->inPingRoom)
		return;

	// Already queued or waiting?
	/////////////////////////////
	if(player->pingQueued || player->waitingForPing)
		return;

	// Time to ping?
	////////////////
	if(player->nextPing < current_time())
		piQueuePing(peer, player);
}

static void piQueuePing
(
	PEER peer,
	piPlayer * player
)
{
	piQueuedPing queuedPing;

	PEER_CONNECTION;

	if(!player)
		return;
	if(!player->gotIP)
		return;
	if(player->pingQueued || player->waitingForPing)
		return;

	// Setup the queued ping.
	/////////////////////////
	queuedPing.IP = player->IP;
	queuedPing.nick = _strdup(player->nick);
	if(!queuedPing.nick)
		return;

	// Add it.
	//////////
	ArrayAppend(connection->pingQueue, &queuedPing);
	player->pingQueued = PEERTrue;
}

PEERBool piPingInitPlayer
(
	PEER peer,
	piPlayer * player
)
{
	int i;

	assert(player);

	player->nextPing = 0;
	player->waitingForPing = PEERFalse;
	player->pingsSent = 0;
	player->pingsReturned = 0;
	player->pingsLost = 0;
	player->pingsLostConsecutive = 0;
	player->field_0xc8 = 0;
	player->pingAverage = 0;
	for(i = 0 ; i < PI_PING_HISTORY_LEN ; i++)
		player->pingHistory[i] = 0;
	player->pingHistoryNum = 0;
	player->gotPing = PEERFalse;
	player->pingQueued = PEERFalse;
	player->inPingRoom = PEERFalse;
	player->inXpingRoom = PEERFalse;

	return PEERTrue;
}

void piPingCleanupPlayer
(
	PEER peer,
	piPlayer * player
)
{
	int i;
	piQueuedPing * queuedPing;

	PEER_CONNECTION;

	if(!connection->pingQueue)
		return;

	// Remove any queued pings for this player.
	///////////////////////////////////////////
	for(i = (ArrayLength(connection->pingQueue) - 1) ; i >= 0 ; i--)
	{
		queuedPing = (piQueuedPing *)ArrayNth(connection->pingQueue, i);
		if(strcasecmp(player->nick, queuedPing->nick) == 0)
			ArrayDeleteAt(connection->pingQueue, i);
	}
}

void piPingPlayerJoinedRoom
(
	PEER peer,
	piPlayer * player,
	RoomType roomType
)
{
	PEER_CONNECTION;

	assert(player);
	ASSERT_ROOMTYPE(roomType);

	// Is this a ping room?
	///////////////////////
	if(connection->pingRoom[roomType])
		player->inPingRoom = PEERTrue;

	// Is this an xping room?
	/////////////////////////
	if(connection->xpingRoom[roomType])
		player->inXpingRoom = PEERTrue;
}

typedef struct piPingPlayerLeftRoomData
{
	PEER peer;
	const char * nick;
} piPingPlayerLeftRoomData;

void piPingPlayerLeftRoom
(
	PEER peer,
	piPlayer * player,
	RoomType roomType
)
{
	PEER_CONNECTION;

	assert(player);
	ASSERT_ROOMTYPE(roomType);

	// Was this player in a ping room?
	//////////////////////////////////
	if(player->inPingRoom)
	{
		int i;
		PEERBool inPingRoom = PEERFalse;

		// Is he still in a ping room?
		//////////////////////////////
		for(i = 0 ; i < NumRooms ; i++)
		{
			if(player->inRoom[i] && connection->pingRoom[i])
				inPingRoom = PEERTrue;
		}
		player->inPingRoom = inPingRoom;
	}

	// Was this player in an xping room?
	////////////////////////////////////
	if(player->inXpingRoom)
	{
		int i;
		PEERBool inXpingRoom = PEERFalse;

		// Is he still in a ping room?
		//////////////////////////////
		for(i = 0 ; i < NumRooms ; i++)
		{
			if(player->inRoom[i] && connection->xpingRoom[i])
				inXpingRoom = PEERTrue;
		}
		player->inXpingRoom = inXpingRoom;

		if(!player->inXpingRoom)
		{
			piPingPlayerLeftRoomData data;
			data.peer = peer;
			data.nick = player->nick;

			// Get rid of all this players xpings.
			//////////////////////////////////////
			TableMapSafe(connection->xpings, piPingPlayerLeftRoomTableMapFn, &data);
		}
	}
}

static void piPingPlayerLeftRoomTableMapFn
(
	void *elem,
	void *clientdata
)
{
	piXping * xping = (piXping *)elem;
	piPingPlayerLeftRoomData * data = (piPingPlayerLeftRoomData *)clientdata;
	assert(xping);
	assert(data);

	// Check if this player is part of this xping.
	//////////////////////////////////////////////
	if((strcmp(xping->nicks[0], data->nick) == 0) || (strcmp(xping->nicks[1], data->nick) == 0))
		piRemoveXping(data->peer, xping);
}

static void piRemoveXping
(
	PEER peer,
	piXping * xping
)
{
	PEER_CONNECTION;

	assert(xping);

	TableRemove(connection->xpings, xping);
}

void piUpdateXping
(
	PEER peer,
	const char * nick1,
	const char * nick2,
	int ping
)
{
	piPlayer * player1;
	piPlayer * player2;
	piXping * xping;

	assert(nick1);
	assert(nick1[0]);
	assert(piGetPlayer(peer, nick1));
	assert(nick2);
	assert(nick2[0]);
	assert(piGetPlayer(peer, nick2));
	assert(ping >= 0);

	player1 = piGetPlayer(peer, nick1);
	if(!player1)
		return;
	if(!player1->inXpingRoom)
		return;
	player2 = piGetPlayer(peer, nick2);
	if(!player2)
		return;
	if(!player2->inXpingRoom)
		return;

	// Add it.
	//////////
	xping = piAddXping(peer, nick1, nick2);
	assert(xping);
	if(!xping)
		return;

	// Update.
	//////////
	xping->ping = ping;
}

static piXping * piAddXping
(
	PEER peer,
	const char * nick1,
	const char * nick2
)
{
	piXping xpingMatch;
	piXping * xping;

	PEER_CONNECTION;

	assert(nick1);
	assert(nick1[0]);
	assert(piGetPlayer(peer, nick1));
	assert(nick2);
	assert(nick2[0]);
	assert(piGetPlayer(peer, nick2));

	// Setup the one to add.
	////////////////////////
	xping = &xpingMatch;
	strzcpy(xping->nicks[0], nick1, PI_NICK_MAX_LEN);
	_strlwr(xping->nicks[0]);
	strzcpy(xping->nicks[1], nick2, PI_NICK_MAX_LEN);
	_strlwr(xping->nicks[1]);

	// Add it.
	//////////
	TableEnter(connection->xpings, xping);

	// Get it.
	//////////
	xping = TableLookup(connection->xpings, &xpingMatch);

	// Return it.
	/////////////
	return xping;
}

PEERBool piGetXping
(
	PEER peer,
	const char * nick1,
	const char * nick2,
	int * ping
)
{
	piXping * xping;

	assert(nick1);
	assert(nick1[0]);
	assert(piGetPlayer(peer, nick1));
	assert(nick2);
	assert(nick2[0]);
	assert(piGetPlayer(peer, nick2));
	assert(ping);

	// Get the xping.
	/////////////////
	xping = piFindXping(peer, nick1, nick2);
	assert(xping);
	if(!xping)
		return PEERFalse;

	// Return the ping.
	///////////////////
	*ping = xping->ping;

	return PEERTrue;
}

static piXping * piFindXping
(
	PEER peer,
	const char * nick1,
	const char * nick2
)
{
	piXping xpingMatch;

	PEER_CONNECTION;

	assert(nick1);
	assert(nick1[0]);
	assert(piGetPlayer(peer, nick1));
	assert(nick2);
	assert(nick2[0]);
	assert(piGetPlayer(peer, nick2));

	// Setup the xping match.
	/////////////////////////
	strzcpy(xpingMatch.nicks[0], nick1, PI_NICK_MAX_LEN);
	_strlwr(xpingMatch.nicks[0]);
	strzcpy(xpingMatch.nicks[1], nick2, PI_NICK_MAX_LEN);
	_strlwr(xpingMatch.nicks[0]);

	// Find the xping.
	//////////////////
	return TableLookup(connection->xpings, &xpingMatch);
}
