#ifndef BW1_DECOMP_LH_SPRINTF_INCLUDED_H
#define BW1_DECOMP_LH_SPRINTF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */
#include <wchar.h>  /* For wchar_t */

#include "LHLogExport.h"

#define LH_SPRINTF_BUFFER_LENGTH 0x400

// BW1W120 10002780 BW1M119 0116e2a0 (LHCombined Release)
LH_LOG_API int UNICODE_vsprintf(wchar_t* output, wchar_t* format, char* args);
// BW1W120 10002a70 BW1M119 0116e4c0 (LHCombined Release)
LH_LOG_API int __cdecl UNICODE_sprintf(wchar_t* output, wchar_t* format, ...);

class LH_LOG_API LHSPrintf
{
public:
	char Text[LH_SPRINTF_BUFFER_LENGTH + 1];

	// BW1W120 10001000 BW1M119 inlined
	LHSPrintf() { Text[0] = '\0'; }
	// BW1W120 100029d0 BW1M119 0116e140 (LHCombined Release)
	LHSPrintf(char* format, ...);

	// BW1W120 10002990 BW1M119 0116e220 (LHCombined Release)
	void __cdecl SetString(char* format, ...);
	// BW1W120 100029b0 BW1M119 0116e1c0 (LHCombined Release)
	void VSetString(char* format, char* args);
	// BW1W120 100029f0 BW1M119 0116e0b0 (LHCombined Release)
	void __cdecl AppendString(char* format, ...);
	// BW1W120 10002a20 BW1M119 0116e020 (LHCombined Release)
	void VAppendString(char* format, char* args);
	// BW1W120 10002a50 BW1M119 0116dfc0 (LHCombined Release)
	void CopyString(char* text);

	// BW1W120 10001040 BW1M119 null
	uint16_t GetBufSize() { return LH_SPRINTF_BUFFER_LENGTH; }
	// BW1W120 10001050 BW1M119 01103cb0 (LHCombined Release)
	operator char*() { return Text; }
	// BW1W120 10001050 BW1M119 null
	operator long() { return (long)Text; }
};

static_assert(sizeof(LHSPrintf) == 0x401, "LHSPrintf size is incorrect");

class LH_LOG_API LHSPrintfW
{
public:
	wchar_t Text[LH_SPRINTF_BUFFER_LENGTH + 1];

	// BW1W120 10001030 BW1M119 inlined
	LHSPrintfW() { Text[0] = L'\0'; }
	// BW1W120 10002ab0 BW1M119 0116de60 (LHCombined Release)
	LHSPrintfW(wchar_t* format, ...);

	// BW1W120 10002a70 BW1M119 0116df40 (LHCombined Release)
	void __cdecl SetString(wchar_t* format, ...);
	// BW1W120 10002a90 BW1M119 0116dee0 (LHCombined Release)
	void VSetString(wchar_t* format, char* args);
	// BW1W120 10002ad0 BW1M119 0116ddc0 (LHCombined Release)
	void __cdecl AppendString(wchar_t* format, ...);
	// BW1W120 10002b00 BW1M119 0116dd30 (LHCombined Release)
	void VAppendString(wchar_t* format, char* args);
	// BW1W120 10002b30 BW1M119 0116dcd0 (LHCombined Release)
	void CopyString(wchar_t* text);

	// BW1W120 10001040 BW1M119 null
	uint16_t GetBufSize() { return LH_SPRINTF_BUFFER_LENGTH; }
	// BW1W120 10001050 BW1M119 null
	operator wchar_t*() { return Text; }
	// BW1W120 10001050 BW1M119 null
	operator long() { return (long)Text; }
};

static_assert(sizeof(LHSPrintfW) == 0x802, "LHSPrintfW size is incorrect");

#endif /* BW1_DECOMP_LH_SPRINTF_INCLUDED_H */
