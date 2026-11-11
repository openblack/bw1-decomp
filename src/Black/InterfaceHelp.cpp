#include "TempleRoom.h"

#include "ToolTips.h"
#include "alexmfc.h" /* For SetupBox */

void TempleRoom::CalculateTooltipsInsideCitadel(BINDABLE_ACTIONS* action, unsigned long* text, KEYALIGN* align)
{
	if (SetupBox::GetCurrentActiveBox() == NULL)
	{
		*action = ToolTipAction;
		*text = ToolTipText;
		*align = ToolTipAlign;
	}
	else
	{
		*action = (BINDABLE_ACTIONS)-1;
		*text = 0;
		*align = KEYALIGN_ANCHOR_LEFT;
	}
	ToolTips::SubmitToolTips(*text, *action, *align, false, NULL);
}
