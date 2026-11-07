#ifndef BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H
#define BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H

#include <uchar.h>   /* For char16_t */
#include <wchar.h>   /* For wcsncpy */
#include <windows.h> /* For GetTickCount */

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "GatheringBox.h" /* For class GatheringBox */

#ifdef VERSION_BW1W100
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 69)
#endif

inline IncomingBubbleInfo* AddIncomingText(INCOMINGTEXTTYPE type, char16_t* text)
{
	GatheringBox* box = GatheringBox::Instance;
	box->NumIncoming++;
	IncomingBubbleInfo* info = NEW(282) IncomingBubbleInfo(type, text);
	box->IncomingList.AddToEnd(info);
	box->UpdateIncomingText();
	return info;
}

#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) (line)

#endif /* BW1_DECOMP_GATHERING_INTERFACE_INCLUDED_H */
