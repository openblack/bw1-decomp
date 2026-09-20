#ifndef BW1_DECOMP_SETUP_MP3_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_MP3_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */

#include "SetupButton.h" /* For struct SetupButton */

// Forward Declares

class SetupControl;

class SetupMP3Button : public SetupButton
{
public:
	uint32_t  field_0x244;
	uint32_t  field_0x248;
	LH3DColor color;

	// Override methods

	// BW1W120 0040cda0 BW1M100 10426080 SetupMP3Button::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00571f30 BW1M100 103547d0 SetupMP3Button::~SetupMP3Button(void)
	virtual ~SetupMP3Button();

	// Constructors

	// BW1W120 inlined BW1M100 inlined SetupMP3Button::SetupMP3Button(int, int, int, int, int, wchar_t *, int, unsigned int)
	SetupMP3Button(int id, int x, int y, int width, int height, const char16_t* label, int param_8, uint32_t param_9);
};

#endif /* BW1_DECOMP_SETUP_MP3_BUTTON_INCLUDED_H */
