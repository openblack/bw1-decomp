#ifndef BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H
#define BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H

#include <uchar.h>   /* For char16_t */
#include <wchar.h>   /* For wcsncpy */
#include <windows.h> /* For GetTickCount */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "GatheringBox.h" /* For class GatheringBox */

#if defined(VERSION_BW1W100)
#define GATHERING_INTERFACE_SOURCE_FILE "C:\\dev\\black\\GatheringInterface.h"
#elif defined(VERSION_BW1W110)
#define GATHERING_INTERFACE_SOURCE_FILE "C:\\dev\\Black\\GatheringInterface.h"
#else
#define GATHERING_INTERFACE_SOURCE_FILE "C:\\dev\\MP\\Black\\GatheringInterface.h"
#endif

inline void AddIncomingText(INCOMINGTEXTTYPE type, char16_t* text)
{
	GatheringBox* box = GatheringBox::Instance;
	box->NumIncoming++;
	box->IncomingList.AddToEnd(new (GATHERING_INTERFACE_SOURCE_FILE, 282) IncomingBubbleInfo(type, text));
	box->UpdateIncomingText();
}

#endif /* BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H */
