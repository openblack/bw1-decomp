#ifndef BW1_DECOMP_LH_LOG_MACROS_INCLUDED_H
#define BW1_DECOMP_LH_LOG_MACROS_INCLUDED_H

#include <windows.h> /* For DebugBreak */
#include <stddef.h>  /* For NULL */
#include <stdlib.h>  /* For exit */

#include "LHAssert.h"
#include "LHLogger.h"
#include "LHSPrintf.h"

void WINAPI DebugBreak();

enum
{
	LH_LOG_CODE_NO_MEMORY = 0xffffffff,
	LH_LOG_CODE_ERROR = 0xfffffffe,
};

#define LH_LOG_ERROR_AT(code, text, file, line)                                                                        \
	{                                                                                                                  \
		LHLogger::SetErrorStateS(code, LH_LOG_LEVEL_ERROR);                                                            \
		if (LHLogger::CreateLogTextS(NULL, LHLogLibraryName, file, line, text))                                        \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_LOG_WIN32_ERROR_AT(file, line)                                                                              \
	{                                                                                                                  \
		if (LHLogger::LogWin32ErrorS(LHLogLibraryName, file, line))                                                    \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_ASSERT_REPORT(expr, text, file, line, forced, priority, corrective)                                         \
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

#define LH_ASSERT_AT(expr, text, file, line)                                                                           \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT(expr, text, file, line, false, LH_ASSERT_PRIORITY_MEDIUM, ;)

#define LH_ASSERT_FORCED_AT(expr, text, file, line)                                                                    \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT(expr, text, file, line, true, LH_ASSERT_PRIORITY_HIGH, ;)

#define LH_ASSERT_CORRECTIVE_AT(expr, text, action, file, line)                                                        \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT(expr, text, file, line, false, LH_ASSERT_PRIORITY_MEDIUM,                                         \
	                 LHLogger::LogS(LHLogLibraryName, file, line,                                                      \
	                                "**********CORRECTIVE ASSERT APPLIED - REMOVE IF POSSIBLE:(%s)**********\n",       \
	                                #action);                                                                          \
	                 action)

#define LH_ASSERT(expr, text, line)        LH_ASSERT_AT(expr, text, FILEPATH, line)
#define LH_ASSERT_FORCED(expr, text, line) LH_ASSERT_FORCED_AT(expr, text, FILEPATH, line)
#define LH_ASSERT_FAIL(text, line)         LH_ASSERT(!(1), text, line)
#define LH_LOG_ERROR(code, text, line)     LH_LOG_ERROR_AT(code, text, FILEPATH, line)
#define LH_LOG_WIN32_ERROR(line)           LH_LOG_WIN32_ERROR_AT(FILEPATH, line)

#endif /* BW1_DECOMP_LH_LOG_MACROS_INCLUDED_H */
