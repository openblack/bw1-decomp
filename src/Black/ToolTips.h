#ifndef BW1_DECOMP_TOOL_TIPS_INCLUDED_H
#define BW1_DECOMP_TOOL_TIPS_INCLUDED_H

#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum TOOLTIPS_TYPE */
#include <re_common.h>   /* For bool32_t */

#include "BindableAction.h"  /* For enum BINDABLE_ACTIONS */
#include "CameraHelpTypes.h" /* For enum CH_ANIMTYPE, enum KEYALIGN */
#include "HelpSystem.h"      /* For enum HELP_EVENT_TYPE */

// Forward Declares

struct KMIcon;

class ToolTips
{
public:
	// BW1W120 00d17bb0
	static int field_0xd17bb0;
	// BW1W120 00d17bb4
	static int field_0xd17bb4;
	// BW1W120 00bf19c0
	static int field_0xbf19c0;
	// BW1W120 00d17bb8
	static int PauseTime;
	// BW1W120 00d17bbc
	static float Number;
	// BW1W120 00d17bc0
	static int field_0xd17bc0;
	// BW1W120 00d17bc4
	static bool32_t Forced;
	// BW1W120 00d17bc8
	static int MinTimeLeft;
	// BW1W120 00d17bcc
	static int TimeLeft;
	// BW1W120 00bf19c4
	static TOOLTIPS_TYPE CurrentToolTip;
	// BW1W120 00bf19c8
	static BINDABLE_ACTIONS Action;
	// BW1W120 00d17bd0
	static KEYALIGN Align;
	// BW1W120 00d17bd4
	static CH_ANIMTYPE AnimType;
	// BW1W120 00d17bd8
	static int Key;
	// BW1W120 00bf19cc
	static int MouseType;
	// BW1W120 00d17bdc
	static bool32_t CurrentToolTipSubmitted;

	// BW1W120 005c9a70 BW1M119 0108ae60
	static void SubmitToolTips(unsigned long help_text, BINDABLE_ACTIONS action, KEYALIGN align, bool32_t force,
	                           HELP_EVENT_TYPE* event);
	// BW1W120 005c9c60 BW1M119 0135c950
	static void ForceToolTips(unsigned long help_text, float number);
	// BW1W120 005c9c80 BW1M119 01094e40
	static bool32_t SmartIcon(HELP_EVENT_TYPE* event, KMIcon* icon);
};

#endif /* BW1_DECOMP_TOOL_TIPS_INCLUDED_H */
