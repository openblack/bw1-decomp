#ifndef BW1_DECOMP_TEXT_CONVERSION_INCLUDED_H
#define BW1_DECOMP_TEXT_CONVERSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

class TextConversion
{
public:
	char*    Narrow;
	wchar_t* Wide;

	// Constructors

	// BW1W120 00735890 BW1M119 0115d7b0
	TextConversion(wchar_t* text);
	// BW1W120 00735980 BW1M119 0115d5f0
	~TextConversion();
};

static_assert(sizeof(TextConversion) == 0x8, "TextConversion size is incorrect");

#endif /* BW1_DECOMP_TEXT_CONVERSION_INCLUDED_H */
