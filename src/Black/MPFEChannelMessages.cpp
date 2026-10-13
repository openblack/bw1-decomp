#include "MPFEMessageObject.h"

#include <stdio.h> /* For swprintf */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "MPFECancelStartMessage.h" /* For MPFECancelStartMessage */
#include "MPFEData.h"               /* For MPFEData */
#include "MPFEKickMessage.h"        /* For MPFEKickMessage */
#include "MPFEKickMessageRequest.h" /* For MPFEKickMessageRequest */
#include "MPFEPlayerDetails.h"      /* For MPFEPlayerDetails */

#if defined(VERSION_BW1W100)
#define MPFE_CHANNEL_MESSAGES_FILE "C:\\dev\\black\\MPFEChannelMessages.cpp"
#elif defined(VERSION_BW1W110)
#define MPFE_CHANNEL_MESSAGES_FILE "C:\\dev\\Black\\MPFEChannelMessages.cpp"
#else
#define MPFE_CHANNEL_MESSAGES_FILE "C:\\dev\\MP\\Black\\MPFEChannelMessages.cpp"
#endif

SpecialMessageTypes MPFEMessageObject::GetMessageType(wchar_t code)
{
	if (code >= L'A' && code <= L'Z')
	{
		return (SpecialMessageTypes)(code - L'A');
	}
	return (SpecialMessageTypes)(code - L'a');
}

wchar_t MPFEMessageObject::GetMessageCode(SpecialMessageTypes type)
{
	// Types past the 26 upper-case letters continue into lower case.
	if (type > L'Z' - L'A')
	{
		return L'a' + type;
	}
	return L'A' + type;
}

MPFECancelStartMessage::MPFECancelStartMessage()
{
	Message = new (MPFE_CHANNEL_MESSAGES_FILE, 364) wchar_t[10];
	if (MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_CANCEL_START));
	}
}

MPFEKickMessageRequest::MPFEKickMessageRequest(MPFEPlayerDetails* player)
{
	Message = new (MPFE_CHANNEL_MESSAGES_FILE, 386) wchar_t[50];
	swprintf(Message, L"%c%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_KICK_REQUEST), (unsigned long)player->ID);
}

MPFEKickMessage::MPFEKickMessage(MPFEPlayerDetails* player, MPFEPlayerDetails* by)
{
	Message = new (MPFE_CHANNEL_MESSAGES_FILE, 433) wchar_t[50];
	swprintf(Message, L"%c%u:%u:%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_KICK), player->ID.id, by->ID.id, player->Team);
}
