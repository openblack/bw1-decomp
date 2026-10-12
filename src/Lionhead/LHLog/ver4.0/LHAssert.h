#ifndef BW1_DECOMP_LH_ASSERT_INCLUDED_H
#define BW1_DECOMP_LH_ASSERT_INCLUDED_H

#include <stdint.h> /* For uint16_t */
#include "LHLogExport.h"

enum LH_ASSERT_RETURN
{
	LH_ASSERT_RETURN_DEBUG = 0,
	LH_ASSERT_RETURN_EXIT = 1,
	LH_ASSERT_RETURN_CONTINUE = 2,
	LH_ASSERT_RETURN_IGNORE = 3,
};

enum
{
	LH_ASSERT_PRIORITY_LOW = 0,
	LH_ASSERT_PRIORITY_MEDIUM = 1,
	LH_ASSERT_PRIORITY_HIGH = 2,
};

typedef LH_ASSERT_RETURN (*LHAssertCustomDrawFunc)(char* text, char* file, uint16_t line, char* code, int forced);
typedef void (*LHAssertCallbackFunc)();

// BW1W120 10001d50 BW1M119 null
LH_LOG_API LH_ASSERT_RETURN LHAssertStatement(char* library, unsigned long ignore, char* text, char* file,
                                              uint16_t line, char* code, int forced, long priority);
// BW1W120 100020e0 BW1M119 null
LH_LOG_API LH_ASSERT_RETURN LHAssertStatement(char* library, unsigned long ignore, char* text, char* file,
                                              uint16_t line, char* code, int forced);

// BW1W120 1001ed84 BW1M119 0138e2cc (LHCombined Release)
LH_LOG_API extern int LHAssertIgnoreAllAsserts;
// BW1W120 10022d9c BW1M119 null
LH_LOG_API extern LHAssertCustomDrawFunc LHAssertCustomDraw;
// BW1W120 10022da0 BW1M119 null
LH_LOG_API extern LHAssertCallbackFunc LHAssertAfterExitCallback;
// BW1W120 10022da4 BW1M119 null
LH_LOG_API extern LHAssertCallbackFunc LHAssertAfterForceCallback;
// BW1W120 10022da8 BW1M119 null
LH_LOG_API extern LHAssertCallbackFunc LHAssertBeforeForceCallback;
// BW1W120 10022db0 BW1M119 null
LH_LOG_API extern bool InAssertDialog;

#ifdef _LH_LOG_LIB_
// BW1W120 1001dce0 BW1M119 null
extern char* LHAssertLogFilename;
#endif

#endif /* BW1_DECOMP_LH_ASSERT_INCLUDED_H */
