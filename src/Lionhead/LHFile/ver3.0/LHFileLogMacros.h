#ifndef BW1_DECOMP_LH_FILE_LOG_MACROS_INCLUDED_H
#define BW1_DECOMP_LH_FILE_LOG_MACROS_INCLUDED_H

#ifdef _GOLD

#define LH_LOG_ERROR(line, code, text)
#define LH_LOG_WIN32_ERROR(line)
#define LH_LOG_ERROR_CODE(line, code)
#define LH_LOG_ERROR_CODE1(line, code, arg)

#define LH_ASSERT_AT(line, file, expr, text)
#define LH_ASSERT(line, expr, text)
#define LH_ASSERT_FORCED(line, expr, text)
#define LH_ASSERT_FAIL(line, text)
#define LH_ASSERT_CORRECTIVE(line, expr, text, action)                                                                 \
	if (!(unsigned long)(expr))                                                                                        \
	{                                                                                                                  \
		action                                                                                                         \
	}

#else

#include <stddef.h> /* For NULL */
#include <stdlib.h> /* For exit */

#include <windows.h> /* For DebugBreak */

#include <Lionhead/LHLog/ver4.0/LHAssert.h>  /* For LHAssertStatement */
#include <Lionhead/LHLog/ver4.0/LHLogCode.h> /* For LH_LOG_CODE_ERROR */
#include <Lionhead/LHLog/ver4.0/LHLogger.h>  /* For LHLogger */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h> /* For LHSPrintf */

#ifndef ORIGINAL_LINE
#define ORIGINAL_LINE(line) (line)
#endif

static void LHLogDebugBreak()
{
	DebugBreak();
}

#define LH_LOG_ERROR(line, code, text)                                                                                 \
	{                                                                                                                  \
		LHLogger::SetErrorStateS(code, LH_LOG_LEVEL_ERROR);                                                            \
		if (LHLogger::CreateLogTextS(NULL, LHLogLibraryName, __FILE__, ORIGINAL_LINE(line), text))                     \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_LOG_WIN32_ERROR(line)                                                                                       \
	{                                                                                                                  \
		if (LHLogger::LogWin32ErrorS(LHLogLibraryName, __FILE__, ORIGINAL_LINE(line)))                                 \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_LOG_ERROR_CODE(line, code)                                                                                  \
	{                                                                                                                  \
		if (LHLogger::LogErrorCodeS(LHLogLibraryName, __FILE__, ORIGINAL_LINE(line), LHLogErrorCodes, code))           \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_LOG_ERROR_CODE1(line, code, arg)                                                                            \
	{                                                                                                                  \
		if (LHLogger::LogErrorCodeS(LHLogLibraryName, __FILE__, ORIGINAL_LINE(line), LHLogErrorCodes, code, arg))      \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_ASSERT_REPORT_AT(line, file, expr, expr_text, text, forced, priority, action)                               \
	{                                                                                                                  \
		char* assertText = (text);                                                                                     \
		LHLogger::SetErrorStateS(LH_LOG_CODE_ERROR, LH_LOG_LEVEL_ERROR);                                               \
		if (LHLogger::CreateLogTextS(NULL, LHLogLibraryName, file, line,                                               \
		                             LHSPrintf("***ASSERT FAILED expr:" expr_text " text:%s\n", assertText)))          \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
		switch (LHAssertStatement(LHLogLibraryName, (unsigned long)(expr), assertText, file, line, expr_text, forced,  \
		                          priority))                                                                           \
		{                                                                                                              \
		case LH_ASSERT_RETURN_DEBUG:                                                                                   \
			LHLogDebugBreak();                                                                                         \
			break;                                                                                                     \
		case LH_ASSERT_RETURN_CONTINUE:                                                                                \
		case LH_ASSERT_RETURN_IGNORE:                                                                                  \
			if (*#action != ';')                                                                                       \
			{                                                                                                          \
				LHLogger::LogS(LHLogLibraryName, file, line,                                                           \
				               "**********CORRECTIVE ASSERT APPLIED - REMOVE IF POSSIBLE:(%s)**********\n", #action);  \
			}                                                                                                          \
			action;                                                                                                    \
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
	LH_ASSERT_REPORT_AT(ORIGINAL_LINE(line), file, expr, #expr, text, false, LH_ASSERT_PRIORITY_MEDIUM, ;)

#define LH_ASSERT(line, expr, text)                                                                                    \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT_AT(ORIGINAL_LINE(line), __FILE__, expr, #expr, text, false, LH_ASSERT_PRIORITY_MEDIUM, ;)

#define LH_ASSERT_CORRECTIVE(line, expr, text, action)                                                                 \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT_AT(ORIGINAL_LINE(line), __FILE__, expr, #expr, text, false, LH_ASSERT_PRIORITY_MEDIUM, action)

#define LH_ASSERT_FORCED(line, expr, text)                                                                             \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT_AT(ORIGINAL_LINE(line), __FILE__, expr, #expr, text, true, LH_ASSERT_PRIORITY_HIGH, ;)

#define LH_ASSERT_FAIL(line, text) LH_ASSERT(line, !(1), text)

#endif

#endif /* BW1_DECOMP_LH_FILE_LOG_MACROS_INCLUDED_H */
