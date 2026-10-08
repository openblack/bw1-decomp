#ifndef BW1_DECOMP_LH_SPRINTF_INCLUDED_H
#define BW1_DECOMP_LH_SPRINTF_INCLUDED_H

#include <assert.h>
#include <uchar.h> /* For char16_t */

// BW1W120 007aee08 BW1M119 0116e4c0 (LHCombined Release)
__declspec(dllimport) int __cdecl UNICODE_sprintf(char16_t* output, char16_t* format, ...);

class LHSPrintf
{
public:
	char Text[0x401]; // GetBufSize excludes the terminator; the DLL assignment copies all 0x401 bytes.
	// BW1W120 inlined BW1M119 inlined
	LHSPrintf() { Text[0] = '\0'; }
	// BW1W120 100029d0 BW1M119 0116e140 (LHCombined Release)
	__declspec(dllimport) LHSPrintf(char* format, ...);
	// BW1W120 1002ab12 BW1M119 0116e0b0 (LHCombined Release)
	__declspec(dllimport) void __cdecl AppendString(char* format, ...);
	// BW1W120 1002ab66 BW1M119 0116e220 (LHCombined Release)
	__declspec(dllimport) void __cdecl SetString(char* format, ...);
	// BW1W120 10001050 BW1M119 01103cb0 (LHCombined Release)
	__declspec(dllimport) operator char*() { return Text; }
};

static_assert(sizeof(LHSPrintf) == 0x401, "LHSPrintf size is incorrect");

// Wide counterpart: the formatted text is the object itself.
class LHSPrintfW
{
public:
	char16_t Text[0x401];
	// BW1W120 10002ab0 BW1M119 0116de60 (LHCombined Release)
	__declspec(dllimport) LHSPrintfW(char16_t* format, ...);

	operator char16_t*() { return Text; }
};

#endif
