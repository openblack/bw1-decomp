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

	// Override methods

	// BW1W120 00409430 BW1M119 010a9370
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00411670 BW1M119 01162390
	virtual ~SetupStaticText();
};

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H */
