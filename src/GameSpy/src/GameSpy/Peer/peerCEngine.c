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
#include "peerMain.h"
#include "peerOperations.h"
#include "peerCEngine.h"
#include "peerCallbacks.h"
#include "peerMangle.h"
#include "peerRooms.h"

/************
** DEFINES **
************/
#define PI_LISTED_GAMES_NUM_BUCKETS        1024

/**********
** TYPES **
**********/
typedef struct piListedGame
{
	GServer server;
} piListedGame;

/***************
** PROTOTYPES **
***************/
static int piListedGamesHash
(
	const void *elem,
	int numBuckets
);

static int piListedGamesCompare
(
 const void *elem1,
 const void *elem2
);

static void piListingGamesCEngineCallback
(
	GServerList gameList,
	int msg,
	PEER peer,
	void * param1,
	void * param2
);

static void piCEngineUpdateServer
(
	PEER peer,
	GServer server,
	PEERBool * update
);

static void piCEngineRemoveServer
(
	PEER peer,
	GServer server,
	PEERBool * existed
);

static void piListingGroupsCEngineCallback
(
	GServerList groupList,
	int msg,
	PEER peer,
	void * param1,
	void * param2
);

/**************
** FUNCTIONS **
**************/
PEERBool piCEngineInit
(
	PEER peer,
	const char * engineName,
	const char * engineSecretKey,
	int engineMaxUpdates
)
{
	PEER_CONNECTION;

	// Init CEngine.
	////////////////
	connection->updatesRoom[0] = '\0';
	connection->gameList = ServerListNew(connection->title, engineName, engineSecretKey, engineMaxUpdates, piListingGamesCEngineCallback, GCALLBACK_FUNCTION, peer);
	if(!connection->gameList)
		return PEERFalse;
	connection->listingGamesOperation = NULL;
	connection->listingGames = PEERFalse;
	connection->listedGames = NULL;
	connection->gameServer = NULL;
	connection->groupList = ServerListNew(connection->title, engineName, engineSecretKey, engineMaxUpdates, piListingGroupsCEngineCallback, GCALLBACK_FUNCTION, peer);
	if(!connection->groupList)
	{
		ServerListFree(connection->gameList);
		return PEERFalse;
	}
	connection->listingGroupsOperation = NULL;
	connection->listingGroups = PEERFalse;

	return PEERTrue;
}

void piCEngineCleanup
(
	PEER peer
)
{
	PEER_CONNECTION;

	// If we're listing rooms, stop.
	////////////////////////////////
	if(connection->listingGamesOperation)
		peerStopListingGames(peer);

	// Leave the updates channel.
	/////////////////////////////
	connection->updatesRoom[0] = '\0';

	// Cleanup CEngine.
	///////////////////
	if(connection->gameList)
		ServerListFree(connection->gameList);
	connection->gameList = NULL;
	if(connection->listedGames)
		TableFree(connection->listedGames);
	connection->listedGames = NULL;
	connection->gameServer = NULL;

	if(connection->listingGroups)
		piCEngineStopListingGroups(peer);
	if(connection->groupList)
		ServerListFree(connection->groupList);
}

PEERBool piCEngineStartListingGames
(
	PEER peer
)
{
	char groupFilter[32];

	PEER_CONNECTION;

	// If we're already listing, stop the previous listing.
	///////////////////////////////////////////////////////
	assert(!connection->listedGames);
	if(connection->listedGames)
		piCEngineStopListingGames(peer);

	// Create the local server table.
	/////////////////////////////////
	connection->listedGames = TableNew(sizeof(piListedGame), PI_LISTED_GAMES_NUM_BUCKETS, piListedGamesHash, piListedGamesCompare, NULL);
	assert(connection->listedGames);
	if(!connection->listedGames)
		return PEERFalse;

	// No progress yet.
	///////////////////
	connection->listingGamesProgress = 0;

	// Clear the list.
	//////////////////
	if(ServerListClear(connection->gameList) != GE_NOERROR)
	{
		piCEngineStopListingGames(peer);
		return PEERFalse;
	}

	// Filter by group if in one.
	/////////////////////////////
	if(connection->inRoom[GroupRoom])
		sprintf(groupFilter, "groupid=%d", connection->groupID);
	else
		strcpy(groupFilter, "groupid is null");

	// Start updating the list.
	///////////////////////////
	if(ServerListUpdate2(connection->gameList, 1, groupFilter, qt_status) != GE_NOERROR)
	{
		piCEngineStopListingGames(peer);
		return PEERFalse;
	}

	return PEERTrue;
}

static int piListedGamesHash
(
	const void *elem,
	int numBuckets
)
{
	piListedGame * listedGame = (piListedGame *)elem;
	unsigned int hash;

	assert(listedGame);

	hash = ((unsigned int)listedGame->server % PI_LISTED_GAMES_NUM_BUCKETS);

	return hash;
}

static int piListedGamesCompare
(
 const void *elem1,
 const void *elem2
)
{
	piListedGame * listedGame1 = (piListedGame *)elem1;
	piListedGame * listedGame2 = (piListedGame *)elem2;

	assert(listedGame1);
	assert(listedGame2);

	return ((unsigned int)listedGame1->server - (unsigned int)listedGame2->server);
}

void piCEngineStopListingGames
(
	PEER peer
)
{
	PEER_CONNECTION;

	// If we're still getting stuff from the cengine, stop it.
	//////////////////////////////////////////////////////////
	if(ServerListState(connection->gameList) != sl_idle)
	{
		// Halt the current list.
		/////////////////////////
		ServerListHalt(connection->gameList);
		while(ServerListState(connection->gameList) != sl_idle)
		{
			msleep(1);
			ServerListThink(connection->gameList);
		}
	}

	// Free the local server list.
	//////////////////////////////
	if(connection->listedGames)
		TableFree(connection->listedGames);
	connection->listedGames = NULL;

	// Reset progress meter.
	////////////////////////
	connection->listingGamesProgress = 0;
}

static void piListingGamesCEngineCallback
(
	GServerList gameList,
	int msg,
	PEER peer,
	void * param1,
	void * param2
)
{
	// Server Add/Update?
	/////////////////////
	if(msg == LIST_PROGRESS)
	{
		GServer server = (GServer)param1;
		int progress = (int)param2;
		const char * name;
		const char * gamemode;
		PEERBool staging;
		int msg;
		PEERBool update;
		piOperation * operation;

		PEER_CONNECTION;

		operation = connection->listingGamesOperation;
		assert(operation);
		assert(connection->listingGames);

		// Update the list.
		///////////////////
		piCEngineUpdateServer(peer, server, &update);

		// Update the progress.
		///////////////////////
		if(!update && (progress > connection->listingGamesProgress))
			connection->listingGamesProgress = progress;

		// Add the callback.
		////////////////////
		name = ServerGetStringValue(server, "hostname", "(No Name)");
		gamemode = ServerGetStringValue(server, "gamemode", "");
		staging = (strcasecmp(gamemode, "openstaging") == 0);
		if(update)
			msg = PEER_UPDATE;
		else
			msg = PEER_ADD;
		piAddListingGamesCallback(peer, PEERTrue, name, server, staging, msg, connection->listingGamesProgress, operation->callback, operation->callbackParam);
	}
}

static void piCEngineUpdateServer
(
	PEER peer,
	GServer server,
	PEERBool * update
)
{
	piListedGame * listedGame;
	piListedGame listedGameTemp;

	PEER_CONNECTION;

	assert(update);

	// Setup the template.
	//////////////////////
	listedGameTemp.server = server;

	// See if it exists.
	////////////////////
	listedGame = (piListedGame *)TableLookup(connection->listedGames, &listedGameTemp);
	if(!listedGame)
	{
		*update = PEERFalse;

		// Add it.
		//////////
		TableEnter(connection->listedGames, &listedGameTemp);

		// Get it.
		//////////
		listedGame = TableLookup(connection->listedGames, &listedGameTemp);
		assert(listedGame);
	}
	else
	{
		*update = PEERTrue;
	}
}

void piListingGamesChannelMessage
(
	CHAT chat,
	const char * channel,
	const char * user,
	const char * message,
	int type,
	PEER peer
)
{
	char * hostaddr;
	PEERBool remove;
	char * colon;
	char * slash;
	char * endIP;
	char *temp;
	char ip[16];
	int ipLen;
	int port;
	int count;
	int i;
	GServer server;
	PEERBool foundServer = PEERFalse;
	char * name;
	char * gamemode;
	PEERBool staging;

	PEER_CONNECTION;

	// Only accept messages from users with the nicks spybot[0-9]
	/////////////////////////////////////////////////////////////
	if(strncasecmp(user, "spybot", 6) != 0)
		return;
	if(user[6] && (!isdigit(user[6]) || user[7]))
		return;

	// Check if we're not actually listing yet.
	///////////////////////////////////////////
	if(!connection->listingGames)
		return;

	// Find the host address.
	/////////////////////////
	hostaddr = strstr(message, "\\hostaddr\\");
	if(!hostaddr)
		return;

	// Skip \hostaddr\.
	///////////////////
	hostaddr += 10;

	// Check for remove.
	////////////////////
	temp = strstr(message, "\\delete\\");
	if (temp == NULL)
		remove = PEERFalse;
	else
		remove = PEERTrue;

	// Get the IP and port.
	///////////////////////
	slash = strchr(hostaddr, '\\');
	if(!slash)
		slash = (hostaddr + strlen(hostaddr));
	colon = strchr(hostaddr, ':');
	if(colon && (colon < slash))
	{
		endIP = colon;
		port = atoi(colon + 1);
	}
	else
	{
		endIP = slash;
		port = 0;
	}
	ipLen = (endIP - hostaddr);
	assert(ipLen < 16);
	if(ipLen >= 16)
		return;
	memcpy(ip, hostaddr, ipLen);
	ip[ipLen] = '\0';

	// Remove?
	//////////
	if(remove)
	{
		PEERBool existed;

		// Find this server.
		////////////////////
		count = ServerListCount(connection->gameList);
		for(i = 0 ; i < count ; i++)
		{
			// Get the server.
			//////////////////
			server = ServerListGetServer(connection->gameList, i);
			assert(server);
			if(!server)
				return;

			// Check if it's the same server.
			/////////////////////////////////
			if((strcmp(ip, ServerGetAddress(server)) == 0) && (port == ServerGetQueryPort(server)))
			{
				foundServer = PEERTrue;
				break;
			}
		}

		// Check it it's not on the list.
		/////////////////////////////////
		if(!foundServer)
			return;

		// Remove it from the list.
		///////////////////////////
		piCEngineRemoveServer(peer, server, &existed);

		// If it wasn't on our list, get out.
		/////////////////////////////////////
		if(!existed)
			return;

		// Add the callback.
		////////////////////
		name = ServerGetStringValue(server, "hostname", "(No Name)");
		gamemode = ServerGetStringValue(server, "gamemode", "");
		staging = (strcasecmp(gamemode, "openstaging") == 0);
		piAddListingGamesCallback(peer, PEERTrue, name, server, staging, PEER_REMOVE, connection->listingGamesProgress, connection->listingGamesOperation->callback, connection->listingGamesOperation->callbackParam);

		// Do something if we're on this server.
		////////////////////////////////////////
		if(server == connection->gameServer)
		{
			// Are we entering?
			///////////////////
			if(connection->enteringRoom[StagingRoom])
			{
				// Cancel it!
				/////////////
				connection->cancelJoinRoom[StagingRoom] = PEERTrue;
				connection->cancelJoinRoomError[StagingRoom] = PEERTrue;
			}
			// We're in.
			////////////
			else
			{
				// No staging room server.
				//////////////////////////
				connection->gameServer = NULL;
			}
		}
	}
	else
	{
		// Update.
		//////////
		ServerListAuxUpdate(connection->gameList, ip, port, 1, qt_status);
	}
}

static void piCEngineRemoveServer
(
	PEER peer,
	GServer server,
	PEERBool * existed
)
{
	piListedGame listedGameTemp;

	PEER_CONNECTION;

	// Setup the template.
	//////////////////////
	listedGameTemp.server = server;

	// Remove it.
	/////////////
	*existed = TableRemove(connection->listedGames, &listedGameTemp);
}

void piListingGamesChannelKicked
(
	CHAT chat,
	const char * channel,
	const char * user,
	const char * reason,
	PEER peer
)
{
	// Get back into the updates room.
	//////////////////////////////////
	piRestartListingGames(peer);
}

void piRestartListingGames
(
	PEER peer
)
{
	peerListingGamesCallback callback;
	void * param;

	PEER_CONNECTION;

	assert(connection->listingGamesOperation);

	// Save off the callback.
	/////////////////////////
	callback = (peerListingGamesCallback)connection->listingGamesOperation->callback;
	param = connection->listingGamesOperation->callbackParam;

	// Stop listing.
	////////////////
	peerStopListingGames(peer);

	// Start listing again.
	///////////////////////
	peerStartListingGames(peer, callback, param);
}

PEERBool piCEngineStartListingGroups
(
	PEER peer
)
{
	PEER_CONNECTION;

	assert(!connection->listingGroups);

	connection->listingGroups = PEERTrue;

	// Clear the list.
	//////////////////
	if(ServerListClear(connection->groupList) != GE_NOERROR)
	{
		piCEngineStopListingGroups(peer);
		return PEERFalse;
	}

	// Start updating the list.
	///////////////////////////
	if(ServerListUpdate2(connection->groupList, 1, NULL, qt_grouprooms) != GE_NOERROR)
	{
		piCEngineStopListingGroups(peer);
		return PEERFalse;
	}

	return PEERTrue;
}

void piCEngineStopListingGroups
(
	PEER peer
)
{
	PEER_CONNECTION;

	if(!connection->listingGroups)
		return;

	// If we're still getting stuff from the cengine, stop it.
	//////////////////////////////////////////////////////////
	if(ServerListState(connection->groupList) != sl_idle)
	{
		// Halt the current list.
		/////////////////////////
		ServerListHalt(connection->groupList);
		while(ServerListState(connection->groupList) != sl_idle)
		{
			msleep(1);
			ServerListThink(connection->groupList);
		}
	}

	if(connection->listingGroupsOperation)
		piRemoveOperation(peer, connection->listingGroupsOperation);
	connection->listingGroups = PEERFalse;
}

static void piListingGroupsCEngineCallback
(
	GServerList groupList,
	int msg,
	PEER peer,
	void * param1,
	void * param2
)
{
	piOperation * operation;

	PEER_CONNECTION;

	operation = connection->listingGroupsOperation;

	// Add group?
	/////////////
	if(msg == LIST_PROGRESS)
	{
		GServer server = (GServer)param1;
		int groupID;
		const char * name;
		int numWaiting;
		int maxWaiting;
		int numGames;
		int numPlaying;

		assert(operation);
		assert(connection->listingGroups);

		// Add the callback.
		////////////////////
		groupID = ServerGetIntValue(server, "groupid", 1);
		name = ServerGetStringValue(server, "hostname", "(No Name)");
		numWaiting = ServerGetIntValue(server, "numwaiting", 0);
		maxWaiting = ServerGetIntValue(server, "maxwaiting", 0);
		numGames = ServerGetIntValue(server, "numservers", 0);
		numPlaying = ServerGetIntValue(server, "numplayers", 0);
		piAddListGroupRoomsCallback(peer, PEERTrue, groupID, name, numWaiting, maxWaiting, numGames, numPlaying, operation->callback, operation->callbackParam, operation->ID);
	}
	else
	{
		if(connection->listingGroups && operation)
		{
			GServerListState state = ServerListState(groupList);
			if(state == sl_idle)
			{
				piAddListGroupRoomsCallback(peer, PEERTrue, 0, NULL, 0, 0, 0, 0, operation->callback, operation->callbackParam, operation->ID);
				piRemoveOperation(peer, operation);
			}
		}
	}
}

void piCEngineThink
(
	PEER peer
)
{
	PEER_CONNECTION;

	ServerListThink(connection->gameList);
	ServerListThink(connection->groupList);
}
