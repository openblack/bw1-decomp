#include "MPFEMessageObject.h"

#include <stdio.h>  /* For swprintf */
#include <string.h> /* For wcslen */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "MPFEFileTransferMessage.h" /* For MPFEFileTransferMessage */

#if defined(VERSION_BW1W100)
#define MPFE_FILE_TRANSFER_FILE "C:\\dev\\black\\MPFEFileTransfer.cpp"
#elif defined(VERSION_BW1W110)
#define MPFE_FILE_TRANSFER_FILE "C:\\dev\\Black\\MPFEFileTransfer.cpp"
#else
#define MPFE_FILE_TRANSFER_FILE "C:\\dev\\MP\\Black\\MPFEFileTransfer.cpp"
#endif

MPFEFileTransferMessage::MPFEFileTransferMessage(wchar_t* text)
{
	Message = new (MPFE_FILE_TRANSFER_FILE, 318) wchar_t[wcslen(text) + 10];
	swprintf(Message, L"%c%s", GetMessageCode(SPECIAL_MESSAGE_TYPE_FILE_TRANSFER), text);
}
