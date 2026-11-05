#include "MPFEMessageObject.h"

#include <stdio.h>  /* For swprintf */
#include <string.h> /* For wcslen */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "MPFEFileTransferMessage.h" /* For MPFEFileTransferMessage */

MPFEFileTransferMessage::MPFEFileTransferMessage(wchar_t* text)
{
	Message = new (FILEPATH, 318) wchar_t[wcslen(text) + 10];
	swprintf(Message, L"%c%s", GetMessageCode(SPECIAL_MESSAGE_TYPE_FILE_TRANSFER), text);
}
