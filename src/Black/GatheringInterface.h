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

enum INCOMINGTEXTTYPE
{
	INCOMINGTEXTTYPE_CHAT = 1,
};

struct IncomingBubbleInfo
{
	INCOMINGTEXTTYPE Type;
	char16_t         Text[0x400];
	char16_t         field_0x804[0x200];
	char16_t         field_0xc04[0x200];
	uint32_t         field_0x1004;
	DWORD            Time;

	// BW1W120 00635cf0 BW1M119 01300c40
	IncomingBubbleInfo(INCOMINGTEXTTYPE type, char16_t* text)
	{
		Type = type;
		wcsncpy(Text, text, 0x3ff);
		Text[0x3ff] = 0;
		field_0x1004 = 0;
		field_0x804[0] = 0;
		field_0xc04[0] = 0;
		Time = GetTickCount();
	}
};

inline void AddIncomingText(INCOMINGTEXTTYPE type, char16_t* text)
{
	GatheringBox* box = GatheringBox::Instance;
	box->IncomingTextCount++;
	box->IncomingText.AddToEnd(new (GATHERING_INTERFACE_SOURCE_FILE, 282) IncomingBubbleInfo(type, text));
	box->UpdateIncomingText();
}

#endif /* BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H */
