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
#include "peer.h"
#include "peerMain.h"
#include "peerGlobalCallbacks.h"
#include "peerRooms.h"
#include "peerPlayers.h"
#include "peerCallbacks.h"
#include "peerOperations.h"
#include "peerPing.h"
#include "peerMangle.h"

/************
** DEFINES **
************/
#define PI_UTM_MATCH(utm)       (strncmp(piUTMCommand, utm, strlen(utm) - 1) == 0)

#define PI_UTM_COMMAND_LEN      8
#define PI_UTM_PARAMATERS_LEN   512

#define PI_INFO_MAX_LEN         128

/************
** GLOBALS **
************/
static char piUTMCommand[PI_UTM_COMMAND_LEN];
static char piUTMParameters[PI_UTM_PARAMATERS_LEN];

/***************
** PROTOTYPES **
***************/
static PEERBool piParseUTM
(
	const char * message
);

static void piProcessUTM
(
	PEER peer,
	piPlayer * player,
	PEERBool inRoom,
	RoomType roomType
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

/**************
** FUNCTIONS **
**************/

/* Info.
*******/
void piSendInfo
(
	PEER peer,
	const char * target,
	PEERBool toPlayer,
	PEERBool onlyIfFlags
)
{
	char buffer[PI_INFO_MAX_LEN];
	PEERBool noFlags = PEERTrue;
	RoomType roomType;

	PEER_CONNECTION;

	// Setup the flags.
	///////////////////
	strcpy(buffer, "\\$flags$\\");
	if(connection->inRoom[StagingRoom])
	{
		strcat(buffer, "s");
		noFlags = PEERFalse;
		if(connection->ready)
			strcat(buffer, "r");
		if(connection->playing)
			strcat(buffer, "g");
	}
	if(connection->away)
	{
		noFlags = PEERFalse;
		strcat(buffer, "a");
	}

	// Don't send it if there's nothing to send.
	////////////////////////////////////////////
	if(onlyIfFlags && noFlags)
		return;
	strcat(buffer, "\\");

	// Add the away reason.
	///////////////////////
	if(connection->away)
	{
		strcat(buffer, "areason\\");
		strcat(buffer, connection->awayReason);
		strcat(buffer, "\\");
	}

	// Send it.
	///////////
	if(toPlayer)
	{
		piSendPlayerUTM(peer, target, PI_UTM_INFO, buffer);
	}
	else if(target)
	{
		piSendChannelUTM(peer, target, PI_UTM_INFO, buffer);
	}
	else
	{
		for(roomType = 0 ; roomType < NumRooms ; roomType++)
		{
			if(IN_ROOM)
				piSendChannelUTM(peer, ROOM, PI_UTM_INFO, buffer);
		}
	}
}

/* Chat.
*******/
void piChatDisconnected
(
	CHAT chat,
	const char * reason,
	PEER peer
)
{
	PEER_CONNECTION;

	// We're disconnected.
	//////////////////////
	connection->disconnect = PEERTrue;

	// Add the disconnected callback.
	/////////////////////////////////
	piAddDisconnectedCallback(peer, reason);
}

void piChatPrivateMessage
(
	CHAT chat,
	const char * user,
	const char * message,
	int type,
	PEER peer
)
{
	if(!user || !user[0])
		return;

	// Check if it's a UTM.
	///////////////////////
	if(piParseUTM(message))
	{
		piPlayer * player;

		// Get the player it's from.
		////////////////////////////
		player = piGetPlayer(peer, user);
		if(player)
		{
			// Process it.
			//////////////
			piProcessUTM(peer, player, PEERFalse, 0);
		}

		// Pass it along.
		/////////////////
		piAddPlayerUTMCallback(peer, user, piUTMCommand, piUTMParameters);

		return;
	}

	// It's a regular message, deliver it.
	//////////////////////////////////////
	if(type != CHAT_UTM)
		piAddPlayerMessageCallback(peer, user, message, (MessageType)type);
}

// Returns PEERTrue if a UTM.
/////////////////////////////
static PEERBool piParseUTM
(
	const char * message
)
{
	int len;

	// Check for no message.
	////////////////////////
	if(!message)
		return PEERFalse;

	// Check for too short for prefix + 1 char.
	///////////////////////////////////////////
	if(strlen(message) < 4)
		return PEERFalse;

	// Check for no prefix.
	///////////////////////
	if((message[0] != '@') ||
		(message[1] != '@') ||
		((message[2] != '@') && (message[2] != '?')) ||
		(message[3] == ' '))
	{
		return PEERFalse;
	}

	// Skip the prefix.
	///////////////////
	message += 3;

	// Find the end of the command.
	///////////////////////////////
	len = strcspn(message, "/ ");
	if(len >= PI_UTM_COMMAND_LEN)
		return PEERFalse;
	memcpy(piUTMCommand, message, len);
	piUTMCommand[len] = '\0';

	// Copy off the parameters.
	///////////////////////////
	message += len;
	if(message[0])
	{
		message++;
		if(strlen(message) >= PI_UTM_PARAMATERS_LEN)
			return PEERFalse;
		strcpy(piUTMParameters, message);
	}
	else
	{
		piUTMParameters[0] = '\0';
	}

	return PEERTrue;
}

static void piProcessUTM
(
	PEER peer,
	piPlayer * player,
	PEERBool inRoom,
	RoomType roomType
)
{
	char * params = piUTMParameters;

	PEER_CONNECTION;

	assert(piUTMCommand[0]);
	assert(player);

	if(PI_UTM_MATCH(PI_UTM_INFO))
	{
		const char * str;
		PEERBool ready;

		// Only take info in the staging room.
		//////////////////////////////////////
		if(!connection->inRoom[StagingRoom])
			return;
		if(!player->inRoom[StagingRoom])
			return;

		// Get the flags.
		/////////////////
		str = strstr(params, "\\$flags$\\");
		if(!str)
			return;
		str += 9;

		// Check for ready.
		///////////////////
		ready = (str[strcspn(str, "r\\")] == 'r');
		if(ready != player->ready)
		{
			player->ready = ready;
			piAddReadyChangedCallback(peer, player->nick, ready);
		}
	}
	else if(PI_UTM_MATCH(PI_UTM_REQUEST_INFO))
	{
		// Send our info to the player.
		///////////////////////////////
		if(!inRoom)
			piSendInfo(peer, player->nick, PEERTrue, PEERFalse);
	}
	else if(PI_UTM_MATCH(PI_UTM_LAUNCH))
	{
		if(!connection->inRoom[StagingRoom])
			return;
		if(inRoom && (roomType != StagingRoom))
			return;
		if(!inRoom && !player->inRoom[StagingRoom])
			return;

		// Ignore if we're hosting.
		///////////////////////////
		if(connection->hosting)
			return;

		// Only accept launch from the host.
		////////////////////////////////////
		if(!player->host[roomType])
			return;

		// We're playing.
		/////////////////
		connection->playing = PEERTrue;

		// Send our info.
		/////////////////
		piSendInfo(peer, NULL, PEERFalse, PEERFalse);

		// Add the callback.
		////////////////////
		piAddGameStartedCallback(peer, connection->serverIP, params);
	}
	else if(PI_UTM_MATCH(PI_UTM_XPING))
	{
		piPlayer * other;
		int ping;
		unsigned int IP;
		const char * nick1;
		const char * nick2;

		if(inRoom && !connection->xpingRoom[roomType])
			return;

		// Check for no params.
		///////////////////////
		if(!params[0])
			return;

		// Get the IP.
		//////////////
		IP = piDemangleIP(params);

		// Get the ping.
		////////////////
		params += 11;
		ping = atoi(params);

		// Figure out who this ping is to.
		//////////////////////////////////
		other = piFindPlayerByIP(peer, IP);
		if(!other)
			return;
		if(strcasecmp(player->nick, other->nick) == 0)
			return;
		if(inRoom && !player->inRoom[roomType])
			return;
		if(!inRoom)
		{
			int i;
			PEERBool success = PEERFalse;

			// Check that the three of us are in a room with xping enabled.
			///////////////////////////////////////////////////////////////
			for(i = 0 ; i < NumRooms ; i++)
			{
				if(connection->xpingRoom[i] && connection->inRoom[i] && player->inRoom[i] && other->inRoom[i])
					success = PEERTrue;
			}
			if(!success)
				return;
		}

		// Put the nicks in order.
		//////////////////////////
		if(strcmp(player->nick, other->nick) <= 0)
		{
			nick1 = player->nick;
			nick2 = other->nick;
		}
		else
		{
			nick1 = other->nick;
			nick2 = player->nick;
		}

		// Update.
		//////////
		piUpdateXping(peer, nick1, nick2, ping);

		// Add a xping callback.
		////////////////////////
		piAddCrossPingCallback(peer, nick1, nick2, ping);
	}
}

void piChannelMessage
(
	CHAT chat,
	const char * channel,
	const char * user,
	const char * message,
	int type,
	PEER peer
)
{
	piPlayer * player;
	RoomType roomType;

	// Check the room type.
	///////////////////////
	if(!piRoomToType(peer, channel, &roomType))
		return;

	// Get the player.
	//////////////////
	player = piGetPlayer(peer, user);
	if(!player)
		return;

	// Check if it's a UTM.
	///////////////////////
	if(piParseUTM(message))
	{
		// Process it.
		//////////////
		piProcessUTM(peer, player, PEERTrue, roomType);

		// Pass it along.
		/////////////////
		piAddRoomUTMCallback(peer, roomType, user, piUTMCommand, piUTMParameters);

		return;
	}

	// Add the callback.
	////////////////////
	piAddRoomMessageCallback(peer, roomType, user, message, (MessageType)type);
}

void piChannelKicked
(
	CHAT chat,
	const char * channel,
	const char * user,
	const char * reason,
	PEER peer
)
{
	RoomType roomType;

	// Figure out the room type.
	////////////////////////////
	if(!piRoomToType(peer, channel, &roomType))
		return;

	// Leave the room.
	//////////////////
	piLeaveRoom(peer, roomType);

	// Add the callback.
	////////////////////
	piAddKickedCallback(peer, roomType, user, reason);
}

void piChannelUserJoined
(
	CHAT chat,
	const char * channel,
	const char * user,
	int mode,
	PEER peer
)
{
	RoomType roomType;
	piPlayer * player;

	PEER_CONNECTION;

	// Figure out the room type.
	////////////////////////////
	if(!piRoomToType(peer, channel, &roomType))
		return;

	// Add this player to the room.
	///////////////////////////////
	piPlayerJoinedRoom(peer, user, roomType, (mode == CHAT_OP));

	// Send our info to the new player.
	///////////////////////////////////
	piSendInfo(peer, user, PEERTrue, PEERTrue);

	// Get the IP and profile ID if we're going to ping this player.
	////////////////////////////////////////////////////////////////
	if(connection->pingRoom[roomType])
	{
		player = piGetPlayer(peer, user);
		if(player && (!player->gotIP || !player->gotProfileID))
			piNewGetIPOperation(peer, user, NULL, NULL, -1);
	}

	// Add the callback.
	////////////////////
	piAddPlayerJoinedCallback(peer, roomType, user);
}

void piChannelUserParted
(
	CHAT chat,
	const char * channel,
	const char * user,
	int why,
	const char * reason,
	const char * kicker,
	PEER peer
)
{
	RoomType roomType;

	// Figure out the room type.
	////////////////////////////
	if(!piRoomToType(peer, channel, &roomType))
		return;

	// Remove this player from the room.
	////////////////////////////////////
	piPlayerLeftRoom(peer, user, roomType);

	// Add the callback.
	////////////////////
	piAddPlayerLeftCallback(peer, roomType, user);
}

void piChannelUserChangedNick
(
	CHAT chat,
	const char * channel,
	const char * oldNick,
	const char * newNick,
	PEER peer
)
{
	RoomType roomType;

	// Figure out the room type.
	////////////////////////////
	if(!piRoomToType(peer, channel, &roomType))
		return;

	// Change the nick locally.
	///////////////////////////
	piPlayerChangedNick(peer, oldNick, newNick);

	// Add the callback.
	////////////////////
	piAddPlayerChangedNickCallback(peer, roomType, oldNick, newNick);
}

void piChannelTopicChanged
(
	CHAT chat,
	const char * channel,
	const char * topic,
	PEER peer
)
{
	RoomType roomType;

	PEER_CONNECTION;

	// Figure out the room type.
	////////////////////////////
	if(!piRoomToType(peer, channel, &roomType))
		return;

	// Is it the same as the old name?
	//////////////////////////////////
	if(strcmp(NAME, topic) == 0)
		return;

	// Copy the new name.
	/////////////////////
	strzcpy(NAME, topic, PI_NAME_MAX_LEN);

	// Add a callback.
	//////////////////
	if(IN_ROOM)
		piAddRoomNameChangedCallback(peer, roomType);
}

void piChannelNewUserList
(
	CHAT chat,
	const char * channel,
	int num,
	const char ** users,
	int * modes,
	PEER peer
)
{
	int i;
	RoomType roomType;

	PEER_CONNECTION;

	// Figure out the room type.
	////////////////////////////
	if(!piRoomToType(peer, channel, &roomType))
		return;

	// Clear all the players out of this room.
	//////////////////////////////////////////
	piClearRoomPlayers(peer, roomType);

	// Add all the new ones.
	////////////////////////
	for(i = 0 ; i < num ; i++)
		piPlayerJoinedRoom(peer, users[i], roomType, (modes[i] == CHAT_OP));

	// Get everyone's IP and profile ID if we're pinging.
	/////////////////////////////////////////////////////
	if(connection->pingRoom[roomType])
		chatGetChannelBasicUserInfo(connection->chat, channel, piGetBasicUserInfoCallback, peer, CHATFalse);

	// Send our info.
	/////////////////
	piSendInfo(peer, channel, PEERFalse, PEERTrue);

	// Call the callback.
	/////////////////////
	piAddNewPlayerListCallback(peer, roomType);
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

void piSetChannelCallbacks
(
	PEER peer,
	chatChannelCallbacks * channelCallbacks
)
{
	memset(channelCallbacks, 0, sizeof(chatChannelCallbacks));
	channelCallbacks->param = peer;
	channelCallbacks->channelMessage = piChannelMessage;
	channelCallbacks->kicked = piChannelKicked;
	channelCallbacks->userJoined = piChannelUserJoined;
	channelCallbacks->userParted = piChannelUserParted;
	channelCallbacks->userChangedNick = piChannelUserChangedNick;
	channelCallbacks->topicChanged = piChannelTopicChanged;
	channelCallbacks->newUserList = piChannelNewUserList;
}

/* GOA.
******/
#define PI_ADD_STR_KEYVALUE(key, value)      piGOAAddKeyValue(outbuf, maxlen, &pos, key, value)
static char intStringBuffer[16];
#define PI_ADD_INT_KEYVALUE(key, value)      {sprintf(intStringBuffer, "%d", value);\
                                             PI_ADD_STR_KEYVALUE(key, intStringBuffer);}
#define PI_CALL_PROGRAM_CALLBACK(callback)   if(callback)\
                                               (callback)(peer, connection->playing, outbuf + pos, maxlen + pos, connection->callbacks.param)

static void piGOAAddKeyValue
(
	char * outbuf,
	int maxlen,
	int * posPtr,
	char * key,
	char * value
);

/*
\gamename\
\gamever\
\location\
*/
void piGOABasicCallback
(
	char * outbuf,
	int maxlen,
	PEER peer
)
{
	int pos = 0;

	PEER_CONNECTION;

	assert(connection->hosting);

	// gamename.
	////////////
	PI_ADD_STR_KEYVALUE("gamename", connection->gamename);

	// Call the program's callback.
	///////////////////////////////
	if(!connection->exiting)
		PI_CALL_PROGRAM_CALLBACK(connection->callbacks.GOABasic);
}

static void piGOAAddKeyValue
(
	char * outbuf,
	int maxlen,
	int * posPtr,
	char * key,
	char * value
)
{
	int pos;
	int len;

	assert(outbuf);
	assert(posPtr);
	assert(key);
	assert(key[0]);
	assert(value);

	pos = *posPtr;

	// How long will this be?
	/////////////////////////
	len = (strlen(key) + strlen(value) + 3);
	assert((len + pos) < maxlen);
	if((len + pos) >= maxlen)
		return;

	// Write it.
	////////////
	sprintf(outbuf + pos, "\\%s\\%s", key, value);

	// Get the new length of the update.
	////////////////////////////////////
	len = strlen(outbuf + pos);

	// Update the pos.
	//////////////////
	*posPtr += len;
	assert(*posPtr < maxlen);
}

/*
\hostname\
\hostport\
\mapname\
\gametype\
\numplayers\
\maxplayers\
\gamemode\
\password\
\groupid\
*/
void piGOAInfoCallback
(
	char * outbuf,
	int maxlen,
	PEER peer
)
{
	int pos = 0;

	PEER_CONNECTION;

	assert(connection->hosting);

	if(connection->inRoom[StagingRoom] && !connection->playing)
	{
		// hostname.
		////////////
		PI_ADD_STR_KEYVALUE("hostname", NAMES[StagingRoom]);

		// numplayers.
		//////////////
		PI_ADD_INT_KEYVALUE("numplayers", connection->numPlayers[StagingRoom]);

		// maxplayers.
		//////////////
		PI_ADD_INT_KEYVALUE("maxplayers", connection->maxPlayers);

		// gamemode.
		////////////
		if(connection->exiting)
			PI_ADD_STR_KEYVALUE("gamemode", "exiting");
		else
			PI_ADD_STR_KEYVALUE("gamemode", "openstaging");

		// password.
		////////////
		if(connection->password[0])
			PI_ADD_INT_KEYVALUE("password", 1);
	}

	// groupid.
	///////////
	if(connection->reportingGroupID)
		PI_ADD_INT_KEYVALUE("groupid", connection->reportingGroupID);

	// Call the program's callback.
	///////////////////////////////
	if(!connection->exiting)
		PI_CALL_PROGRAM_CALLBACK(connection->callbacks.GOAInfo);

	// Was no gamemode set?
	///////////////////////
	if(!strstr(outbuf, "gamemode"))
		PI_ADD_STR_KEYVALUE("gamemode", "openplaying");
}

/*
\timelimit\
\fraglimit\
\teamplay\
\rankedserver\
*/
void piGOARulesCallback
(
	char * outbuf,
	int maxlen,
	PEER peer
)
{
	int pos = 0;

	PEER_CONNECTION;

	assert(connection->hosting);

	// Call the program's callback.
	///////////////////////////////
	if(!connection->exiting)
		PI_CALL_PROGRAM_CALLBACK(connection->callbacks.GOARules);
}

/*
\player_N\
\frags_N\
\deaths_N\
\skill_N\
\ping_N\
\team_N\
*/
#define PI_ADD_PLAYER_STR_KEYVALUE(key, value)      piGOAAddPlayerKeyValue(data, key, value, index)
#define PI_ADD_PLAYER_INT_KEYVALUE(key, value)      {sprintf(intStringBuffer, "%d", value);\
                                                    PI_ADD_PLAYER_STR_KEYVALUE(key, intStringBuffer);}

typedef struct piGOAPlayersCallbackData
{
	char * outbuf;
	int maxlen;
	int pos;
} piGOAPlayersCallbackData;

static void piGOAAddPlayerKeyValue
(
	piGOAPlayersCallbackData * data,
	char * key,
	char * value,
	int playerNum
);

void piGOAPlayersCallbackEnumPlayers
(
	PEER peer,
	RoomType roomType,
	piPlayer * player,
	int index,
	void *param
)
{
	piGOAPlayersCallbackData * data = (piGOAPlayersCallbackData *)param;
	int ping;

	PI_ADD_PLAYER_STR_KEYVALUE("player", player->nick);

	if(player->local)
		ping = 0;
	else if(player->gotPing)
		ping = player->pingAverage;
	else
		ping = 9999;
	PI_ADD_PLAYER_INT_KEYVALUE("ping", ping)
}

static void piGOAAddPlayerKeyValue
(
	piGOAPlayersCallbackData * data,
	char * key,
	char * value,
	int playerNum
)
{
	char keyN[32];

	assert((strlen(key) + 4) < sizeof(keyN));

	sprintf(keyN, "%s_%d", key, playerNum);

	piGOAAddKeyValue(data->outbuf, data->maxlen, &data->pos, keyN, value);
}

void piGOAPlayersCallback
(
	char * outbuf,
	int maxlen,
	PEER peer
)
{
	piGOAPlayersCallbackData data;
	int pos = 0;

	PEER_CONNECTION;

	assert(connection->hosting);

	if(connection->inRoom[StagingRoom] && !connection->playing)
	{
		// Go through the list of players.
		//////////////////////////////////
		data.outbuf = outbuf;
		data.maxlen = maxlen;
		data.pos = pos;

		piEnumRoomPlayers(peer, StagingRoom, piGOAPlayersCallbackEnumPlayers, &data);

		outbuf = data.outbuf;
		pos = data.pos;
	}

	// Call the program's callback.
	///////////////////////////////
	if(!connection->exiting)
		PI_CALL_PROGRAM_CALLBACK(connection->callbacks.GOAPlayers);
}
