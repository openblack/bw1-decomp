#ifndef BW1_DECOMP_LH_LOGGER_INCLUDED_H
#define BW1_DECOMP_LH_LOGGER_INCLUDED_H

#include <re_common.h> /* For bool32_t */
#include <stddef.h>    /* For NULL */

#include "LHLogExport.h"
#include "LHSPrintf.h"

class LHLogPropsSet;
class LHTimer;

struct LHErrorCode
{
	unsigned long Code;
	char*         Text; /* 0x4 */
};

enum LH_LOG_LEVEL
{
	LH_LOG_LEVEL_ERROR = -2,
	LH_LOG_LEVEL_NONE = 0,
};

#define LH_LOG_MAX_ERROR_CODES       1000
#define LH_THREAD_PRIORITY_UNCHANGED (-255)

enum LH_LOG_LOCAL_ERROR
{
	LH_LOG_LOCAL_ERROR_NONE = 0,
	LH_LOG_LOCAL_ERROR_NOT_INITIALISED = 1,
	LH_LOG_LOCAL_ERROR_NO_LOOKUP_TABLE = 2,
	LH_LOG_LOCAL_ERROR_OPEN_FILE = 3,
	LH_LOG_LOCAL_ERROR_THREAD = 4,
	LH_LOG_LOCAL_ERROR_TLS = 5,
};

class LH_LOG_API LHLogger
{
public:
	// BW1W120 10001080 BW1M119 null
	LHLogger()
	{
		Construct();
		Init();
	}
	// BW1W120 10002b50 BW1M119 0116e970 (LHCombined Release)
	~LHLogger();

	// BW1W120 10003290 BW1M119 null
	void Init();
	// BW1W120 10002b80 BW1M119 null
	void TruncateLog();
	// BW1W120 10002f40 BW1M119 null
	void ShowLogPropsDialog();
	// BW1W120 10002fd0 BW1M119 0116e860 (LHCombined Release)
	void ClearError();

	// BW1W120 100010a0 BW1M119 null
	void SetThreadDetails(char* name, unsigned long id)
	{
		ThreadID = id;
		ThreadName = name;
	}
	// BW1W120 100010c0 BW1M119 null
	void SetErrorStateT(unsigned long code, LH_LOG_LEVEL level)
	{
		Code = code;
		Level = level;
	}
	// BW1W120 10001150 BW1M119 null
	static void SetErrorStateS(unsigned long code, LH_LOG_LEVEL level)
	{
		LHLogger* logger = FindLHLogger("", 0);
		if (logger != NULL)
		{
			logger->SetErrorStateT(code, level);
		}
	}

	// BW1W120 10002d80 BW1M119 null
	void RawLogT(char* text);
	// BW1W120 100010e0 BW1M119 null
	static void RawLogS(char* text)
	{
		LHLogger* logger = FindLHLogger("", 0);
		if (logger != NULL)
		{
			logger->RawLogT(text);
		}
	}

	// BW1W120 10003750 BW1M119 null
	void LogT(char* library, char* file, unsigned long line, char* format, char* args);
	// BW1W120 100039c0 BW1M119 null
	static void LogS(char* library, char* file, unsigned long line, char* format, ...);

	// BW1W120 10002bd0 BW1M119 null
	bool32_t __cdecl CreateLogTextT(LHSPrintf* output, char* library, char* file, unsigned long line, char* format,
	                                ...);
	// BW1W120 10003970 BW1M119 null
	static bool32_t CreateLogTextS(LHSPrintf* output, char* library, char* file, unsigned long line, char* format, ...);

	// BW1W120 10002e80 BW1M119 null
	bool32_t LogWin32ErrorT(unsigned long error, char* library, char* file, unsigned long line);
	// BW1W120 10003160 BW1M119 null
	static bool32_t LogWin32ErrorS(char* library, char* file, unsigned long line);

	// BW1W120 10003850 BW1M119 null
	bool32_t LogErrorCodeT(char* library, char* file, unsigned long line, LHErrorCode* codes, unsigned long code,
	                       char* args);
	// BW1W120 10003a00 BW1M119 null
	static bool32_t LogErrorCodeS(char* library, char* file, unsigned long line, LHErrorCode* codes, unsigned long code,
	                              ...);

	// BW1W120 10002f50 BW1M119 null
	static LH_LOG_LEVEL GetLevel();
	// BW1W120 10002f70 BW1M119 0116e5f0 (LHCombined Release)
	static char* GetText();
	// BW1W120 10002fb0 BW1M119 0116e630 (LHCombined Release)
	static unsigned long GetCode();
	// BW1W120 100031a0 BW1M119 0116e530 (LHCombined Release)
	static char* GetFileName(char* path);
	// BW1W120 10002b60 BW1M119 null
	static LHLogger* FindLHLogger(char* name, unsigned long id);

	// BW1W120 10001100 BW1M119 null
	void* GetDLLHModule() { return DLLHModule; }
	// BW1W120 10001110 BW1M119 null
	static void SetDLLModule(void* module) { DLLHModule = module; }
	// BW1W120 10001120 BW1M119 null
	LHLogPropsSet* GetLogProps() { return LogProps; }

	// BW1W120 100279c0 BW1M119 01389500 (LHCombined Release)
	static unsigned long TlsIndex;
	// BW1W120 100279d4 BW1M119 null
	static void* DLLHModule;

private:
	// BW1W120 100037c0 BW1M119 null
	void Construct();
	// BW1W120 10003510 BW1M119 null
	bool32_t VCreateLogText(LHSPrintf* output, char* library, char* file, unsigned long line, char* format, char* args);
	// BW1W120 100033d0 BW1M119 null
	static void SetLocalError(char* file, unsigned long line, unsigned long error);

	// BW1W120 100279c8 BW1M119 null
	static LHTimer* LogTime;
	// BW1W120 100279d0 BW1M119 null
	static LHLogPropsSet* LogProps;
	// BW1W120 100279c4 BW1M119 null
	static bool32_t InitFlag;

	LH_LOG_LEVEL  Level;
	LHSPrintf     Text;       /* 0x4 */
	LHSPrintf     ErrorText;  /* 0x405 */
	unsigned long Code;       /* 0x808 */
	bool32_t      NewLine;    /* 0x80c */
	unsigned long ThreadID;   /* 0x810 */
	char*         ThreadName; /* 0x814 */
};

static_assert(sizeof(LHLogger) == 0x818, "LHLogger size is incorrect");

// BW1W120 100279e0 BW1M119 0138951c (LHCombined Release)
LH_LOG_API extern LHLogger LHSyslog;
// BW1W120 1001dd04 BW1M119 null
LH_LOG_API extern char* LH_LOG_NO_MEMORY_TEXT;

// BW1W120 10003b00 BW1M119 0116daa0 (LHCombined Release)
LH_LOG_API unsigned long _lhbeginthread(char* name, void(__cdecl* proc)(void*), unsigned int stack_size, void* argument,
                                        long priority);

#endif /* BW1_DECOMP_LH_LOGGER_INCLUDED_H */
