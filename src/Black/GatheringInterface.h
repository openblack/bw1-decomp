#ifndef BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H
#define BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H

#include <uchar.h>   /* For char16_t */
#include <wchar.h>   /* For wcsncpy */
#include <windows.h> /* For GetTickCount */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "GatheringBox.h" /* For class GatheringBox */

#ifndef GATHERING_INTERFACE_INCLUDE_NAME
#define GATHERING_INTERFACE_INCLUDE_NAME "GatheringInterface.h"
#endif

#define GATHERING_INTERFACE_SOURCE_FILE SOURCE_DIRECTORY GATHERING_INTERFACE_INCLUDE_NAME

inline IncomingBubbleInfo* AddIncomingText(INCOMINGTEXTTYPE type, char16_t* text)
{
	GatheringBox* box = GatheringBox::Instance;
	box->NumIncoming++;
#if defined(VERSION_BW1W100)
	IncomingBubbleInfo* info = new (GATHERING_INTERFACE_SOURCE_FILE, 213) IncomingBubbleInfo(type, text);
#else
	IncomingBubbleInfo* info = new (GATHERING_INTERFACE_SOURCE_FILE, 282) IncomingBubbleInfo(type, text);
#endif
	box->IncomingList.AddToEnd(info);
	box->UpdateIncomingText();
	return info;
}

#endif /* BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H */
