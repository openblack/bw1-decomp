#ifndef BW1_DECOMP_LHDLL_LOG_MACROS_INCLUDED_H
#define BW1_DECOMP_LHDLL_LOG_MACROS_INCLUDED_H

#include <stddef.h> /* For NULL */
#include <stdlib.h> /* For exit */

#include <windows.h> /* For DebugBreak */

#include <Lionhead/LHLog/ver4.0/LHAssert.h>  /* For LHAssertStatement */
#include <Lionhead/LHLog/ver4.0/LHLogCode.h> /* For LH_LOG_CODE_ERROR */
#include <Lionhead/LHLog/ver4.0/LHLogger.h>  /* For LHLogger */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h> /* For LHSPrintf */

static char* LHLogLibraryName;

static void LHLogDebugBreak()
{
	DebugBreak();
}

#define LH_ASSERT_REPORT_AT(line, file, expr, text, forced, corrective)                                                \
	{                                                                                                                  \
		char* assertText = (text);                                                                                     \
		LHLogger::SetErrorStateS(LH_LOG_CODE_ERROR, LH_LOG_LEVEL_ERROR);                                               \
		if (LHLogger::CreateLogTextS(NULL, LHLogLibraryName, file, line,                                               \
		                             LHSPrintf("***ASSERT FAILED expr:" #expr " text:%s\n", assertText)))              \
		{                                                                                                              \
			LHLogger::RawLogS(NULL);                                                                                   \
		}                                                                                                              \
		switch (LHAssertStatement(LHLogLibraryName, (unsigned long)(expr), assertText, file, line, #expr, forced))     \
		{                                                                                                              \
		case LH_ASSERT_RETURN_DEBUG:                                                                                   \
			LHLogDebugBreak();                                                                                         \
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
	LH_ASSERT_REPORT_AT(line, file, expr, text, false, ;)

#define LH_ASSERT_CORRECTIVE(line, expr, text, action)                                                                 \
	if (!(expr))                                                                                                       \
	LH_ASSERT_REPORT_AT(line, __FILE__, expr, text, false, action)

#define LH_ASSERT(line, expr, text) LH_ASSERT_AT(line, __FILE__, expr, text)

#endif /* BW1_DECOMP_LHDLL_LOG_MACROS_INCLUDED_H */
