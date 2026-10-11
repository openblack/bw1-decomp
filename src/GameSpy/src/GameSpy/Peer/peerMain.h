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

#ifndef _PEERMAIN_H_
#define _PEERMAIN_H_

#ifdef __cplusplus
extern "C" {
#endif

/*************
** INCLUDES **
*************/
#if !defined(UNDER_CE) && !defined(__KATANA__)
#include <assert.h>
#else
#define assert(a)
#endif
#include "peer.h"
#if defined(applec) || defined(THINK_C) || defined(__MWERKS__) && !defined(__KATANA__) && !defined(__mips64)
	#include "::darray.h"
	#include "::hashtable.h"
	#include "::pinger:pinger.h"
#else
	#include "../darray.h"
	#include "../hashtable.h"
	#include "../pinger/pinger.h"
#endif

#if 0
piConnection * connection;  // This is to fool Visual Assist.
#endif

/************
** DEFINES **
************/
#define PI_ROOM_MAX_LEN           128
#define PI_NICK_MAX_LEN           128
#define PI_NAME_MAX_LEN           128
#define PI_TITLE_MAX_LEN          32
#define PI_AWAY_MAX_LEN           128
#define PI_CHAT_PING_TIME         (5 * 60000)
#define PEER_CONNECTION           piConnection * connection;\
                                  assert(peer);\
                                  connection = (piConnection *)peer;
#define ASSERT_ROOMTYPE(type)     assert((type == TitleRoom) || (type == GroupRoom) || (type == StagingRoom))
#define ASSERT_MESSAGETYPE(type)  assert((type == NormalMessage) || (type == ActionMessage) || (type == NoticeMessage))
#define ROOM                      (connection->rooms[roomType])
#define ROOMS                     (connection->rooms)
#define NAME                      (connection->names[roomType])
#define NAMES                     (connection->names)
#define IN_ROOM                   (connection->inRoom[roomType])
#define ENTERING_ROOM             (connection->enteringRoom[roomType])

#define strzcpy(dest, src, len)   { strncpy(dest, src, len); (dest)[(len) - 1] = '\0'; }

/**********
** TYPES **
**********/
typedef struct piConnection
{
	// Chat.
	////////
	CHAT chat;  // The chat connection.
	char nick[PI_NICK_MAX_LEN];  // The local nick.
	PEERBool connecting;
	PEERBool connected;
	peerNickErrorCallback nickErrorCallback;
	unsigned long lastChatPing;

	// Game.
	////////
	unsigned int IP;
	int profileID;
	char title[PI_TITLE_MAX_LEN];
	char gamename[PI_TITLE_MAX_LEN];

	// Rooms.
	/////////
	char rooms[NumRooms][PI_ROOM_MAX_LEN];
	PEERBool enteringRoom[NumRooms];
	PEERBool inRoom[NumRooms];
	char names[NumRooms][PI_NAME_MAX_LEN];
	PEERBool cancelJoinRoom[NumRooms];
	PEERBool cancelJoinRoomError[NumRooms];
	int groupID;

	// Players.
	///////////
	HashTable players;
	int numPlayers[NumRooms];

	// Ping.
	////////
	DArray pingQueue;
	unsigned long lastPingTime;
	PEERBool pingRoom[NumRooms];
	PEERBool xpingRoom[NumRooms];
	HashTable xpings;

	// Hosting.
	///////////
	qr_t queryReporting;
	char qrSecretKey[128]; // i ripped the length from gqueryreporting.c
	PEERBool hosting;
	PEERBool reporting;
	PEERBool playing;
	int maxPlayers;
	char password[PEER_PASSWORD_LEN];
	PEERBool exiting;  // true while reporting the "exiting" state
	int reportingGroupID;  // might be diff. than groupID if left group room after started reporting

	// Game states.
	///////////////
	unsigned int serverIP;
	PEERBool ready;

	// CEngine.
	///////////
	char updatesRoom[PI_ROOM_MAX_LEN];
	GServerList gameList;
	struct piOperation * listingGamesOperation;
	PEERBool listingGames;
	HashTable listedGames;
	GServer gameServer;
	int listingGamesProgress;  // percentage 0-100
	GServerList groupList;
	struct piOperation * listingGroupsOperation;
	PEERBool listingGroups;

	// ID.
	//////
	int nextID;

	// Operations.
	//////////////
	DArray operationList;
	int operationsStarted;
	int operationsFinished;

	// Callbacks.
	/////////////
	PEERCallbacks callbacks;
	DArray callbackList;
	int callbacksQueued;
	int callbacksCalled;
	int callbackDepth;

	// Away.
	////////
	CHATBool away;
	char awayReason[PI_AWAY_MAX_LEN];

	// Misc.
	////////
	PEERBool disconnect;
	PEERBool shutdown;
} piConnection;

void piSendChannelUTM
(
	PEER peer,
	const char * channel,
	const char * command,
	const char * parameters
);

void piSendPlayerUTM
(
	PEER peer,
	const char * nick,
	const char * command,
	const char * parameters
);

#ifdef __cplusplus
}
#endif

#endif
