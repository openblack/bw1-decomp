#ifndef BW1_DECOMP_LH_AUDIO_LOG_MACROS_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_LOG_MACROS_INCLUDED_H

#include <stddef.h> /* For NULL */
#include <stdlib.h> /* For exit */

#include <windows.h> /* For DebugBreak */

#include <Lionhead/LHLog/ver4.0/LHAssert.h>  /* For LHAssertStatement */
#include <Lionhead/LHLog/ver4.0/LHLogCode.h> /* For LH_LOG_CODE_ERROR */
#include <Lionhead/LHLog/ver4.0/LHLogger.h>  /* For LHLogger */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h> /* For LHSPrintf */

#ifdef VERSION_BW1WCI
#define LH_AUDIO_SOURCE_DIRECTORY "C:\\dev\\Libs\\LIONHEAD\\LHAUDIO\\VER7.0\\"
#else
#define LH_AUDIO_SOURCE_DIRECTORY "C:\\dev\\LIBS\\LIONHEAD\\LHAUDIO\\VER7.0\\"
#endif

static void LHLogDebugBreak()
{
	DebugBreak();
}

#define LH_LOG_ERROR_CODE(code, line)                                                                                  \
	{                                                                                                                  \
		if (LHLogger::LogErrorCodeS(LHLogLibraryName, FILEPATH, line, LHLogErrorCodes, code))                          \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_LOG_ERROR_CODE1(code, line, arg)                                                                            \
	{                                                                                                                  \
		if (LHLogger::LogErrorCodeS(LHLogLibraryName, FILEPATH, line, LHLogErrorCodes, code, arg))                     \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
	}

#define LH_ASSERT_REPORT_AT(expr, text, file, line, forced, priority, action)                                          \
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

#define LH_ASSERT_REPORT(expr, text, line, forced, priority, action)                                                   \
	LH_ASSERT_REPORT_AT(expr, text, FILEPATH, line, forced, priority, action)

#define LH_ASSERT(expr, text, line)                                                                                    \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT(expr, text, line, false, LH_ASSERT_PRIORITY_MEDIUM, ;)

#define LH_ASSERT_FORCED(expr, text, line)                                                                             \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT(expr, text, line, true, LH_ASSERT_PRIORITY_HIGH, ;)

#define LH_ASSERT_CORRECTIVE(expr, text, action, line)                                                                 \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT(expr, text, line, false, LH_ASSERT_PRIORITY_MEDIUM, action)

#define LH_ASSERT_CORRECTIVE_AT(expr, text, action, file, line)                                                        \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT_AT(expr, text, file, line, false, LH_ASSERT_PRIORITY_MEDIUM, action)

#endif /* BW1_DECOMP_LH_AUDIO_LOG_MACROS_INCLUDED_H */
