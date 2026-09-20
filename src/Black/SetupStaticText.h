#ifndef BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H
#define BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Lionhead/LH3DLib/development/LH3DText.h" /* For enum TEXTJUSTIFY */
#include "SetupControl.h"                          /* For struct SetupControl */

class SetupStaticText : public SetupControl
{
public:
	TEXTJUSTIFY text_justify;    /* 0x23c */
	int         DisplayTextSize; /* 0x240 */

	// BW1W120 inlined BW1M100 10327f40 SetupStaticText::SetupStaticText(int, int, int, int, int, wchar_t*, TEXTJUSTIFY)
	SetupStaticText(int id, int x, int y, int width, int height, const char16_t* label,
	                TEXTJUSTIFY justify = TEXTJUSTIFY_LEFT)
		: SetupControl(id, x, y, width, height, label)
	{
		text_justify = justify;
		field_0x22a = false;
		DisplayTextSize = 0;
	}

	// Override methods

	// BW1W120 00409430 BW1M100 105436e0 SetupStaticText::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 inlined BW1M100 100cb300 SetupStaticText::~SetupStaticText(void)
	virtual ~SetupStaticText();
};

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H */
