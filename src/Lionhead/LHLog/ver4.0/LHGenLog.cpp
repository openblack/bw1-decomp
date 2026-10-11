#include <windows.h>
#include <ctype.h>
#include <process.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>

#include "LHLogger.h"
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>
#include "LHAssert.h"
#include "LHLogMacros.h"
#include "LHLogProps.h"
#include "LHSPrintf.h"
#include "LHVersion.h"

#define FILEPATH       "LHGenLog.cpp"
#define LH_LOG_VERSION 2.2

enum
{
	LH_LOG_FILTER_TOKEN_SIZE = 200,
	LH_LOG_LOCAL_ERROR_TEXT_SIZE = 300,
	LH_LOG_FORMAT_SPEC_SIZE = 64,
	LH_LOG_FORMAT_BUFFER_SIZE = 1024,
	LH_LOG_TICK_DISPLAY_RANGE = 100000,
	LH_LOG_MSECONDS_PER_SECOND = 1000,
	LH_LOG_MSECONDS_PER_MINUTE = 60000,
	LH_LOG_SECONDS_PER_MINUTE = 60,
};

struct LHThreadDetails
{
	char* Name;
	void(__cdecl* Proc)(void*);
	void* Argument; /* 0x8 */
};

char* LH_LOG_NO_MEMORY_TEXT = "Out of memory\n";

static LHErrorCode LocalErrors[] = {
	{LH_LOG_LOCAL_ERROR_NONE, "****This should never be printed"},
	{LH_LOG_LOCAL_ERROR_NOT_INITIALISED, "****Logging library has not been initialised"},
	{LH_LOG_LOCAL_ERROR_NO_LOOKUP_TABLE,
     "****A code was passed to the logging routines without a valid lookup table being set"},
	{LH_LOG_LOCAL_ERROR_OPEN_FILE, "****Could not open output file"},
	{LH_LOG_LOCAL_ERROR_THREAD, "****Use _lhbeginthread to open threads which will access the logging routines"},
	{LH_LOG_LOCAL_ERROR_TLS, "****Thread Local Storage problem"},
	{0, NULL},
};

static bool LocalErrorReported[ARRAY_SIZE(LocalErrors)] = {false};

unsigned long    LHLogger::TlsIndex = 0;
bool32_t         LHLogger::InitFlag = false;
LHTimer*         LHLogger::LogTime = NULL;
static LHLogger* MainLogger = NULL;
LHLogPropsSet*   LHLogger::LogProps = NULL;
void*            LHLogger::DLLHModule = NULL;

LHLogger LHSyslog;

// BW1W120 10003a50 BW1M119 0116db90 (LHCombined Release)
static void __special_debug_thread(void* data);

char* LHTimer::GetTimeString()
{
	unsigned long time = MSeconds();
	bool32_t      running = Running();
	Stop();
	if (time < LH_LOG_MSECONDS_PER_MINUTE)
	{
		sprintf(Text, "%d.%03ds ", time / LH_LOG_MSECONDS_PER_SECOND, time % LH_LOG_MSECONDS_PER_SECOND);
	}
	else
	{
		sprintf(Text, "%dm %d.%03ds ", time / LH_LOG_MSECONDS_PER_MINUTE,
		        time / LH_LOG_MSECONDS_PER_SECOND % LH_LOG_SECONDS_PER_MINUTE, time % LH_LOG_MSECONDS_PER_SECOND);
	}
	if (running)
	{
		Start();
	}
	return Text;
}

int UNICODE_vsprintf(wchar_t* output, wchar_t* format, char* args)
{
	int count = 0;
	while (*format != L'\0')
	{
		if (*format == L'%')
		{
			if (format[1] == L'%')
			{
				format++;
				*output++ = *format++;
				continue;
			}
		}
		else
		{
			*output++ = *format++;
			continue;
		}
		if (format[1] == L's' || format[1] == L'S')
		{
			*output = L'\0';
			wcscat(output, va_arg(args, wchar_t*));
			output += wcslen(output);
			format += 2;
			count++;
		}
		else
		{
			char spec[LH_LOG_FORMAT_SPEC_SIZE];
			char buffer[LH_LOG_FORMAT_BUFFER_SIZE];
			format++;
			bool foundType = false;
			spec[0] = '%';
			char* specEnd = &spec[1];
			bool  isFloat = false;
			while (*format != L'\0' && *format < 0x80 && *format != L'%')
			{
				if (isalpha(*format) && !foundType)
				{
					foundType = true;
					if (*format == L'f' || *format == L'F' || *format == L'G' || *format == L'g' || *format == L'e' ||
					    *format == L'E')
					{
						isFloat = true;
					}
				}
				*specEnd++ = (char)*format++;
			}
			*specEnd = '\0';
			if (isFloat)
			{
				count += sprintf(buffer, spec, va_arg(args, double));
			}
			else
			{
				count += sprintf(buffer, spec, va_arg(args, int));
			}
			for (char* c = buffer; *c != '\0'; c++)
			{
				*output++ = *c;
			}
		}
	}
	*output = L'\0';
	return count;
}

void LHSPrintf::SetString(char* format, ...)
{
	va_list args;
	va_start(args, format);
	vsprintf(Text, format, args);
}

void LHSPrintf::VSetString(char* format, char* args)
{
	vsprintf(Text, format, args);
}

LHSPrintf::LHSPrintf(char* format, ...)
{
	va_list args;
	va_start(args, format);
	vsprintf(Text, format, args);
}

void LHSPrintf::AppendString(char* format, ...)
{
	va_list args;
	va_start(args, format);
	vsprintf(Text + strlen(Text), format, args);
}

void LHSPrintf::VAppendString(char* format, char* args)
{
	vsprintf(Text + strlen(Text), format, args);
}

void LHSPrintf::CopyString(char* text)
{
	strncpy(Text, text, GetBufSize());
}

void LHSPrintfW::SetString(wchar_t* format, ...)
{
	va_list args;
	va_start(args, format);
	UNICODE_vsprintf(Text, format, args);
}

int UNICODE_sprintf(wchar_t* output, wchar_t* format, ...)
{
	va_list args;
	va_start(args, format);
	return UNICODE_vsprintf(output, format, args);
}

void LHSPrintfW::VSetString(wchar_t* format, char* args)
{
	UNICODE_vsprintf(Text, format, args);
}

LHSPrintfW::LHSPrintfW(wchar_t* format, ...)
{
	va_list args;
	va_start(args, format);
	UNICODE_vsprintf(Text, format, args);
}

void LHSPrintfW::AppendString(wchar_t* format, ...)
{
	va_list args;
	va_start(args, format);
	UNICODE_vsprintf(Text + wcslen(Text), format, args);
}

void LHSPrintfW::VAppendString(wchar_t* format, char* args)
{
	UNICODE_vsprintf(Text + wcslen(Text), format, args);
}

void LHSPrintfW::CopyString(wchar_t* text)
{
	wcsncpy(Text, text, GetBufSize());
}

LHLogger::~LHLogger() {}

LHLogger* LHLogger::FindLHLogger(char* name, unsigned long id)
{
	LHLogger* logger = (LHLogger*)TlsGetValue(TlsIndex);
	if (logger == NULL)
	{
		return MainLogger;
	}
	return logger;
}

void LHLogger::TruncateLog()
{
	_unlink(LHAssertLogFilename);
	if (LogProps->LogFilename[0] != '\0')
	{
		_unlink(LogProps->LogFilename);
	}
}

BOOL WINAPI DllMain(HINSTANCE instance, DWORD reason, LPVOID reserved)
{
	LHLogger::SetDLLModule(instance);
	return TRUE;
}

bool32_t LHLogger::CreateLogTextT(LHSPrintf* output, char* library, char* file, unsigned long line, char* format, ...)
{
	va_list args;
	va_start(args, format);
	return VCreateLogText(output, library, file, line, format, args);
}

// BW1W120 10002c00 BW1M119 null
char* GetFilterToken(char* token, char* filter);
// BW1W120 10002c50 BW1M119 null
bool32_t ContainsText(char* text, char* search);

#define LH_LOG_LOWER_CASE(c) ((c) >= 'A' && (c) <= 'Z' ? (c) + ('a' - 'A') : (c))

char* GetFilterToken(char* token, char* filter)
{
	while (*filter == ' ')
	{
		filter++;
	}
	while (*filter != '|' && *filter != '\0')
	{
		*token = *filter;
		filter++;
		token++;
	}
	while (*--token == ' ')
	{
	}
	token[1] = '\0';
	return *filter != '\0' ? filter + 1 : NULL;
}

bool32_t ContainsText(char* text, char* search)
{
	while (*text != '\0')
	{
		int i = 0;
		while (search[i] != '\0' && LH_LOG_LOWER_CASE(text[i]) == LH_LOG_LOWER_CASE(search[i]))
		{
			i++;
		}
		if (search[i] == '\0')
		{
			return true;
		}
		text++;
	}
	return false;
}

bool32_t PassesFilter(char* filter, bool32_t invert, char* string, ...)
{
	char token[LH_LOG_FILTER_TOKEN_SIZE];
	if (filter != NULL && *filter != '\0')
	{
		va_list args;
		va_start(args, string);
		while (string != NULL)
		{
			if (*string != '\0')
			{
				char* next = filter;
				do
				{
					next = GetFilterToken(token, next);
					if (token[0] != '\0' && ContainsText(string, token))
					{
						return !invert;
					}
				} while (next != NULL);
			}
			string = va_arg(args, char*);
		}
		return invert;
	}
	return !invert;
}

void LHLogger::RawLogT(char* text)
{
	if (!InitFlag)
	{
		SetLocalError(FILEPATH, 517, LH_LOG_LOCAL_ERROR_NOT_INITIALISED);
		return;
	}
	if (LogProps->Level == LH_LOG_PROPS_LEVEL_NONE)
	{
		return;
	}
	if (text == NULL)
	{
		text = Text;
	}
	if (*text == '\0')
	{
		return;
	}
	NewLine = text[strlen(text) - 1] == '\n';
	if (LogProps->DebuggerFlag)
	{
		OutputDebugString(text);
	}
	if (LogProps->FileFlag && LogProps->LogFilename != NULL)
	{
		FILE* file = fopen(LogProps->LogFilename, "a");
		if (file != NULL)
		{
			fprintf(file, text);
			fflush(file);
			fclose(file);
		}
		else
		{
			SetLocalError(FILEPATH, 543, LH_LOG_LOCAL_ERROR_NOT_INITIALISED);
			return;
		}
	}
	if (LogProps->WindowFlag)
	{
		LogProps->InsertString(text, true);
	}
}

bool32_t LHLogger::LogWin32ErrorT(unsigned long error, char* library, char* file, unsigned long line)
{
	LHSPrintf message;
	if (!InitFlag)
	{
		SetLocalError(FILEPATH, 590, LH_LOG_LOCAL_ERROR_NOT_INITIALISED);
		return false;
	}
	SetErrorStateT(error, LH_LOG_LEVEL_ERROR);
	FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, NULL, error, MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), message,
	              message.GetBufSize(), NULL);
	if (!CreateLogTextT(NULL, library, file, line, message))
	{
		return false;
	}
	Text.AppendString("\n");
	return true;
}

void LHLogger::ShowLogPropsDialog()
{
	LogProps->ShowDialog();
}

LH_LOG_LEVEL LHLogger::GetLevel()
{
	LHLogger* logger = FindLHLogger("", 0);
	if (logger != NULL)
	{
		return logger->Level;
	}
	return LH_LOG_LEVEL_ERROR;
}

char* LHLogger::GetText()
{
	LHLogger* logger = FindLHLogger("", 0);
	if (logger != NULL)
	{
		return logger->ErrorText;
	}
	return LHSPrintf("");
}

unsigned long LHLogger::GetCode()
{
	LHLogger* logger = FindLHLogger("", 0);
	if (logger != NULL)
	{
		return logger->Code;
	}
	return 0;
}

void LHLogger::ClearError()
{
	LHLogger* logger = FindLHLogger("", 0);
	if (logger != NULL)
	{
		logger->Code = 0;
		logger->Text.SetString("");
		logger->Level = LH_LOG_LEVEL_NONE;
	}
}

bool32_t LHLogger::LogWin32ErrorS(char* library, char* file, unsigned long line)
{
	bool32_t      result = false;
	unsigned long error = GetLastError();
	LHLogger*     logger = FindLHLogger(file, line);
	if (logger != NULL)
	{
		result = logger->LogWin32ErrorT(error, library, file, line);
	}
	return result;
}

char* LHLogger::GetFileName(char* path)
{
	static char filename[MAX_PATH];
	if (path == NULL || *path == '\0')
	{
		if (GetModuleFileName(NULL, filename, MAX_PATH) == 0)
		{
			LH_LOG_WIN32_ERROR(438);
			return NULL;
		}
		path = filename;
	}
	unsigned short i = strlen(path) - 1;
	while (path[i] != '\\' && path[i] != '/' && i != 0)
	{
		i--;
	}
	return &path[i + (i != 0)];
}

void LHLogger::Init()
{
	char version[8];
	sprintf(version, "%3.1f", LH_LOG_VERSION);
	if (!InitFlag)
	{
		LogTime = new LHTimer;
		LogTime->Start();
		if (LogProps == NULL)
		{
			LogProps = new LHLogPropsSet;
			LogProps->Initialise();
			LogProps->ReadFromRegistry();
		}
		if (LogProps->TruncateFlag)
		{
			TruncateLog();
		}
		if (LogProps->DisplayOnStartFlag)
		{
			ShowLogPropsDialog();
		}
		InitFlag = true;
	}
}

void LHLogger::SetLocalError(char* file, unsigned long line, unsigned long error)
{
	static char text[LH_LOG_LOCAL_ERROR_TEXT_SIZE];
	if (error <= ARRAY_SIZE(LocalErrors) - 1 && LocalErrorReported[error])
	{
		return;
	}
	LocalErrorReported[error] = true;

	unsigned long i;
	for (i = 0; LocalErrors[i].Code != error && LocalErrors[i].Text != NULL && i < LH_LOG_MAX_ERROR_CODES; i++)
	{
	}
	char* description;
	if (LocalErrors[i].Code == 0 || (description = LocalErrors[i].Text) == NULL || i >= LH_LOG_MAX_ERROR_CODES)
	{
		description = "Unknown";
	}

	FILE* log = fopen("lh.log", "a");
	sprintf(text,
	        "******************************************************************************\n"
	        "****LOGGING LIBRARY BAD USAGE: File %s Line %d\n"
	        "%s\n"
	        "******************************************************************************\n",
	        GetFileName(file), line, description);
	OutputDebugString(text);
	fputs(text, log);
	fflush(log);
	fclose(log);
	if (LogProps != NULL)
	{
		LogProps->InsertString(LHSPrintf("%s File %s Line %d\n", description, GetFileName(file), line), true);
	}
	LHAssertStatement(NULL, 0, "BAD USAGE OF LOG LIBRARY", GetFileName(file), line, description, true,
	                  LH_ASSERT_PRIORITY_HIGH);
}

bool32_t LHLogger::VCreateLogText(LHSPrintf* output, char* library, char* file, unsigned long line, char* format,
                                  char* args)
{
	if (GetLevel() == LH_LOG_LEVEL_ERROR)
	{
		ErrorText.VSetString(format, args);
	}
	if (LogProps->Level == LH_LOG_PROPS_LEVEL_NONE)
	{
		return false;
	}
	if (!InitFlag)
	{
		SetLocalError(FILEPATH, 457, LH_LOG_LOCAL_ERROR_NOT_INITIALISED);
		return false;
	}
	if (output == NULL)
	{
		output = &Text;
	}
	output->SetString("");
	if (!LogProps->DisableFilterFlag)
	{
		bool32_t passed = PassesFilter(LogProps->LogFilter, LogProps->InvertLogFilterFlag, format, GetFileName(file),
		                               ThreadName, library, NULL);
		if (!passed)
		{
			return passed;
		}
	}
	if (NewLine)
	{
		if (LogProps->PidFlag)
		{
			output->AppendString("PID:%lu, ", _getpid());
		}
		if (LogProps->ThreadFlag)
		{
			output->AppendString("T:%s, ", ThreadName);
		}
		if (file != NULL && LogProps->SourceFlag)
		{
			output->AppendString(file);
			output->AppendString(LogProps->LineFlag ? "(" : ", ");
		}
		if (LogProps->LineFlag)
		{
			if (!LogProps->SourceFlag)
			{
				output->AppendString("(Line:%d)", line);
			}
			else
			{
				output->AppendString("%d):, ", line);
			}
		}
		if (LogProps->TimeFlag)
		{
			if (LogProps->SysTimeFlag)
			{
				output->AppendString("%d ,", GetTickCount() % LH_LOG_TICK_DISPLAY_RANGE);
			}
			else
			{
				output->AppendString("%s ,", LogTime->GetTimeString());
			}
		}
		if (LogProps->PidFlag || LogProps->SourceFlag || LogProps->LineFlag || LogProps->TimeFlag ||
		    LogProps->ThreadFlag)
		{
			output->Text[strlen(*output) - 2] = '\0';
		}
	}
	output->VAppendString(format, args);
	return true;
}

void LHLogger::LogT(char* library, char* file, unsigned long line, char* format, char* args)
{
	if (LogProps->Level == LH_LOG_PROPS_LEVEL_ALL)
	{
		LHSPrintf text;
		if (VCreateLogText(&text, library, file, line, format, args))
		{
			RawLogT(text);
		}
	}
}

void LHLogger::Construct()
{
	Code = 0;
	NewLine = true;
	Level = LH_LOG_LEVEL_NONE;
	if (!InitFlag)
	{
		InitFlag = false;
		LogTime = NULL;
		LogProps = NULL;
		DLLHModule = NULL;
		SetThreadDetails("_main_", GetCurrentThreadId());
		MainLogger = this;
		TlsIndex = TlsAlloc();
		if (TlsIndex == TLS_OUT_OF_INDEXES)
		{
			SetLocalError("", 0, LH_LOG_LOCAL_ERROR_TLS);
		}
		else
		{
			TlsSetValue(TlsIndex, &LHSyslog);
		}
	}
}

bool32_t LHLogger::LogErrorCodeT(char* library, char* file, unsigned long line, LHErrorCode* codes, unsigned long code,
                                 char* args)
{
	if (!InitFlag)
	{
		SetLocalError(FILEPATH, 327, LH_LOG_LOCAL_ERROR_NOT_INITIALISED);
		return false;
	}
	if (codes == NULL)
	{
		SetLocalError(FILEPATH, 328, LH_LOG_LOCAL_ERROR_NO_LOOKUP_TABLE);
		return false;
	}
	unsigned long i;
	for (i = 0; codes[i].Code != code && codes[i].Text != NULL && i < LH_LOG_MAX_ERROR_CODES; i++)
	{
	}
	char* text = codes[i].Text;
	if (text == NULL || i >= LH_LOG_MAX_ERROR_CODES)
	{
		text = LHSPrintf("Error code %d supplied to error routines but not found in lookup table", code);
	}
	SetErrorStateT(i, LH_LOG_LEVEL_ERROR);
	if (!VCreateLogText(NULL, library, file, line, text, args))
	{
		return false;
	}
	Text.AppendString("\n");
	return true;
}

bool32_t LHLogger::CreateLogTextS(LHSPrintf* output, char* library, char* file, unsigned long line, char* format, ...)
{
	bool32_t result = false;
	va_list  args;
	va_start(args, format);
	LHLogger* logger = FindLHLogger(file, line);
	if (logger != NULL)
	{
		result = logger->VCreateLogText(output, library, file, line, format, args);
	}
	return result;
}

void LHLogger::LogS(char* library, char* file, unsigned long line, char* format, ...)
{
	va_list args;
	va_start(args, format);
	LHLogger* logger = FindLHLogger(file, line);
	if (logger != NULL)
	{
		logger->LogT(library, file, line, format, args);
	}
}

bool32_t LHLogger::LogErrorCodeS(char* library, char* file, unsigned long line, LHErrorCode* codes, unsigned long code,
                                 ...)
{
	bool32_t result = false;
	va_list  args;
	va_start(args, code);
	LHLogger* logger = FindLHLogger(file, line);
	if (logger != NULL)
	{
		result = logger->LogErrorCodeT(library, file, line, codes, code, args);
	}
	return result;
}

static void __special_debug_thread(void* data)
{
	LHThreadDetails* details = (LHThreadDetails*)data;
	LHLogger*        logger = new LHLogger;
	logger->SetThreadDetails(details->Name, GetCurrentThreadId());
	TlsSetValue(LHLogger::TlsIndex, logger);
	details->Proc(details->Argument);
	delete logger;
	free(details->Name);
	free(details);
}

unsigned long _lhbeginthread(char* name, void(__cdecl* proc)(void*), unsigned int stack_size, void* argument,
                             long priority)
{
	LHThreadDetails* details = (LHThreadDetails*)malloc(sizeof(LHThreadDetails));
	details->Name = _strdup(name);
	details->Proc = proc;
	details->Argument = argument;
	unsigned long thread = _beginthread(__special_debug_thread, stack_size, details);
	if (thread == (unsigned long)-1)
	{
		LH_LOG_ERROR(LH_LOG_CODE_ERROR, LHSPrintf("*********Failed to create thread %s*********\n", name), 668);
		free(details->Name);
		free(details);
		return (unsigned long)-1;
	}
	if (priority != LH_THREAD_PRIORITY_UNCHANGED && !SetThreadPriority((HANDLE)thread, priority))
	{
		LH_LOG_WIN32_ERROR(678);
	}
	return thread;
}
