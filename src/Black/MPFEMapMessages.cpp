#include "MPFEMessageObject.h"

#include <stdio.h> /* For swprintf */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "MPFEMapErrorMessage.h" /* For MPFEMapErrorMessage */

#if defined(VERSION_BW1W100)
#define MPFE_MAP_MESSAGES_FILE "C:\\dev\\black\\MPFEMapMessages.cpp"
#elif defined(VERSION_BW1W110)
#define MPFE_MAP_MESSAGES_FILE "C:\\dev\\Black\\MPFEMapMessages.cpp"
#else
#define MPFE_MAP_MESSAGES_FILE "C:\\dev\\MP\\Black\\MPFEMapMessages.cpp"
#endif

MPFEMapErrorMessage::MPFEMapErrorMessage()
{
	Message = new (MPFE_MAP_MESSAGES_FILE, 96) wchar_t[10];
	swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_MAP_ERROR));
}
