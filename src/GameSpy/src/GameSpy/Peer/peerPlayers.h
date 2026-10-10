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

#ifndef _PEERPLAYERS_H_
#define _PEERPLAYERS_H_

#ifdef __cplusplus
extern "C" {
#endif

/*************
** INCLUDES **
*************/
#include "peerMain.h"

/************
** DEFINES **
************/
#define PI_PING_HISTORY_LEN         16

/**********
** TYPES **
**********/
typedef struct piPlayer
{
	char nick[PI_NICK_MAX_LEN];     // this has to be first
	PEERBool inRoom[NumRooms];      // true if in the room
	PEERBool host[NumRooms];        // true if a host (op) in the room
	PEERBool local;                 // true for the local player

	int profileID;                  // gp profile id
	PEERBool gotProfileID;          // true if we have the profile ID
	unsigned int IP;                // the IP in network byte order
	PEERBool gotIP;                 // true if we have the IP

	PEERBool ready;                 // true if ready in the staging room

	// Ping stuff
	unsigned long nextPing;         // when to send the next ping
	PEERBool waitingForPing;        // if true we're waiting for a ping to return
	int pingsSent;                  // number of pings sent
	int pingsReturned;              // number of pings returned
	int pingsLost;                  // number of pings lost
	int pingsLostConsecutive;       // number of pings lost in a row
	int field_0xc8;
	int pingAverage;                // the average ping time
	int pingHistory[PI_PING_HISTORY_LEN];  // history of pings
	int pingHistoryNum;             // the number of pings in the ping history
	PEERBool gotPing;               // true if we have a ping for this player
	PEERBool pingQueued;            // true if this player is in the ping queue
	PEERBool inPingRoom;            // true if the player is in a room getting pinged
	PEERBool inXpingRoom;           // true if the player is in a room getting xpinged
} piPlayer;

/**************
** FUNCTIONS **
**************/
PEERBool piPlayersInit
(
	PEER peer
);

void piPlayersCleanup
(
	PEER peer
);

void piPlayerJoinedRoom
(
	PEER peer,
	const char * nick,
	RoomType roomType,
	PEERBool host
);

void piPlayerLeftRoom
(
	PEER peer,
	const char * nick,
	RoomType roomType
);

void piPlayerChangedNick
(
	PEER peer,
	const char * oldNick,
	const char * newNick
);

void piClearRoomPlayers
(
	PEER peer,
	RoomType roomType
);

piPlayer * piGetPlayer
(
	PEER peer,
	const char * nick
);

typedef void (* piEnumRoomPlayersCallback)
(
	PEER peer,
	RoomType roomType,
	piPlayer * player,
	int index,
	void * param
);

void piEnumRoomPlayers
(
	PEER peer,
	RoomType roomType,
	piEnumRoomPlayersCallback callback,
	void * param
);

piPlayer * piFindPlayerByIP
(
	PEER peer,
	unsigned int IP
);

void piSetPlayerIPAndProfileID
(
	PEER peer,
	const char * nick,
	unsigned int IP,
	int profileID
);

#ifdef __cplusplus
}
#endif

#endif
