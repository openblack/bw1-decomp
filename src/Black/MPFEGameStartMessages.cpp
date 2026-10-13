#include "MPFEMessageObject.h"

#include <stdio.h> /* For swprintf */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "MPFEDisconnectNowMessage.h"          /* For MPFEDisconnectNowMessage */
#include "MPFEStartGameTransferFilesMessage.h" /* For MPFEStartGameTransferFilesMessage */
#include "MPFEStopGameStartMessage.h"          /* For MPFEStopGameStartMessage */

#if defined(VERSION_BW1W100)
#define MPFE_GAME_START_MESSAGES_FILE "C:\\dev\\black\\MPFEGameStartMessages.cpp"
#elif defined(VERSION_BW1W110)
#define MPFE_GAME_START_MESSAGES_FILE "C:\\dev\\Black\\MPFEGameStartMessages.cpp"
#else
#define MPFE_GAME_START_MESSAGES_FILE "C:\\dev\\MP\\Black\\MPFEGameStartMessages.cpp"
#endif

MPFEStartGameTransferFilesMessage::MPFEStartGameTransferFilesMessage()
{
	Message = new (MPFE_GAME_START_MESSAGES_FILE, 106) wchar_t[10];
	swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_START_GAME_TRANSFER_FILES));
}

MPFEDisconnectNowMessage::MPFEDisconnectNowMessage()
{
	Message = new (MPFE_GAME_START_MESSAGES_FILE, 165) wchar_t[10];
	swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_DISCONNECT_NOW));
}

MPFEStopGameStartMessage::MPFEStopGameStartMessage()
{
	Message = new (MPFE_GAME_START_MESSAGES_FILE, 178) wchar_t[10];
	swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_STOP_GAME_START));
}
