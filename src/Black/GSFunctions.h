#ifndef BW1_DECOMP_GS_FUNCTIONS_INCLUDED_H
#define BW1_DECOMP_GS_FUNCTIONS_INCLUDED_H

#include <re_common.h> /* For bool32_t */
#include <wchar.h>     /* For wchar_t */

class GSFunctions
{
public:
	// Static methods

	// BW1W120 00599170 BW1M119 012fff30
	static char* EncodeUnicode(wchar_t* text);
	// BW1W120 005990f0 BW1M119 01300010
	static wchar_t* DecodeUnicode(const char* text);
	// BW1W120 005990c0 BW1M119 013000d0
	static bool32_t NeedsEncoding(wchar_t* text);
	// BW1W120 005990a0 BW1M119 01300140
	static bool32_t IsEncodedString(const char* text);
};

#endif /* BW1_DECOMP_GS_FUNCTIONS_INCLUDED_H */
