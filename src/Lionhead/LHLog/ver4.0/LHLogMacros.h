#ifndef BW1_DECOMP_LH_LOG_MACROS_INCLUDED_H
#define BW1_DECOMP_LH_LOG_MACROS_INCLUDED_H

#include <windows.h> /* For DebugBreak */
#include <stddef.h>  /* For NULL */
#include <stdlib.h>  /* For exit */

#include "LHAssert.h"
#include "LHLogger.h"
#include "LHSPrintf.h"

void WINAPI DebugBreak();

#include "LHLogCode.h"

static char* LHLogLibraryName;

// BW1W120 10002cd0 BW1M119 null
bool32_t PassesFilter(char* filter, bool32_t invert, char* string, ...);

#define LH_LOG_ERROR_AT(line, file, code, text)                                                                        \
	{                                                                                                                  \
		LHLogger::SetErrorStateS(code, LH_LOG_LEVEL_ERROR);                                                            \
		if (LHLogger::CreateLogTextS(NULL, LHLogLibraryName, file, line, text))                                        \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_LOG_WIN32_ERROR_AT(line, file)                                                                              \
	{                                                                                                                  \
		if (LHLogger::LogWin32ErrorS(LHLogLibraryName, file, line))                                                    \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_ASSERT_REPORT(line, file, expr, text, forced, priority, corrective)                                         \
	{                                                                                                                  \
		char* assertText = (text);                                                                                     \
		LHLogger::SetErrorStateS(LH_LOG_CODE_ERROR, LH_LOG_LEVEL_ERROR);                                               \
		if (LHLogger::CreateLogTextS(NULL, LHLogLibraryName, file, line,                                               \
		                             LHSPrintf("***ASSERT FAILED expr:" #expr " text:%s\n", assertText)))              \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
		switch (LHAssertStatement(LHLogLibraryName, (unsigned long)(expr), assertText, file, line, #expr, forced,      \
		                          priority))                                                                           \
		{                                                                                                              \
		case LH_ASSERT_RETURN_DEBUG:                                                                                   \
			DebugBreak();                                                                                              \
			break;                                                                                                     \
		case LH_ASSERT_RETURN_CONTINUE:                                                                                \
		case LH_ASSERT_RETURN_IGNORE:                                                                                  \
			corrective;                                                                                                \
			break;                                                                                                     \
		default:                                                                                                       \
			if (LHAssertAfterExitCallback)                                                                             \
			{                                                                                                          \
				LHAssertAfterExitCallback();                                                                           \
			}                                                                                                          \
			exit(0);                                                                                                   \
		}                                                                                                              \
	}

#define LH_ASSERT_AT(line, file, expr, text)                                                                           \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT(line, file, expr, text, false, LH_ASSERT_PRIORITY_MEDIUM, ;)

#define LH_ASSERT_FORCED_AT(line, file, expr, text)                                                                    \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT(line, file, expr, text, true, LH_ASSERT_PRIORITY_HIGH, ;)

#define LH_ASSERT_CORRECTIVE_AT(line, file, expr, text, action)                                                        \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT(line, file, expr, text, false, LH_ASSERT_PRIORITY_MEDIUM,                                         \
	                 LHLogger::LogS(LHLogLibraryName, file, line,                                                      \
	                                "**********CORRECTIVE ASSERT APPLIED - REMOVE IF POSSIBLE:(%s)**********\n",       \
	                                #action);                                                                          \
	                 action)

#define LH_ASSERT(line, expr, text)        LH_ASSERT_AT(line, __FILE__, expr, text)
#define LH_ASSERT_FORCED(line, expr, text) LH_ASSERT_FORCED_AT(line, __FILE__, expr, text)
#define LH_ASSERT_FAIL(line, text)         LH_ASSERT(line, !(1), text)
#define LH_LOG_ERROR(line, code, text)     LH_LOG_ERROR_AT(line, __FILE__, code, text)
#define LH_LOG_WIN32_ERROR(line)           LH_LOG_WIN32_ERROR_AT(line, __FILE__)

#endif /* BW1_DECOMP_LH_LOG_MACROS_INCLUDED_H */
