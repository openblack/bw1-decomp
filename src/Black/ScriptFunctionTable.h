#ifndef BW1_DECOMP_SCRIPT_FUNCTION_TABLE_INCLUDED_H
#define BW1_DECOMP_SCRIPT_FUNCTION_TABLE_INCLUDED_H

#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#ifdef VERSION_BW1W100
#define SCRIPT_FUNCTION_COUNT 460
#elif defined(VERSION_BW1WCI)
#define SCRIPT_FUNCTION_COUNT 528
#else
#define SCRIPT_FUNCTION_COUNT 464
#endif

struct ScriptFunctionTable
{
	void(__cdecl* Handler)(); /* 0x00 */
	uint32_t ArgCount;        /* 0x04 */
	uint32_t ReturnCount;     /* 0x08 */
	bool32_t TakesControl;    /* 0x0c */
	char     Name[128];       /* 0x10 */
};

// BW1W120 00c0db98
extern ScriptFunctionTable g_scriptFunctionTable[SCRIPT_FUNCTION_COUNT];

#endif /* BW1_DECOMP_SCRIPT_FUNCTION_TABLE_INCLUDED_H */
