#include <windows.h>
#include <imagehlp.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <re_common.h> /* For bool32_t */

#include "LHDebugStack.h"

#define UNKNOWN_FUNCTION_NAME "<Unknown Function>"

#define LH_DEBUG_STACK_SKIPPED_FRAMES 3
#define LH_DEBUG_STACK_STRING_SIZE    3000
#define LH_DEBUG_STACK_DRIVE_SIZE     12

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
// BW1W120 10002110 BW1M119 null
static bool IsWindowsXP();

short LHDebugStack::BeenInitialisedCount;
#else
static char*        LHLogLibraryName = NULL;
static LHErrorCode* LHLogErrorCodes = NULL;

short LHDebugStack::BeenInitialisedCount = 0;
#endif

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static bool IsWindowsXP()
{
	OSVERSIONINFOA info;
	memset(&info, 0, sizeof(info));
	info.dwOSVersionInfoSize = sizeof(info);
	GetVersionExA(&info);
	if (info.dwPlatformId == VER_PLATFORM_WIN32_NT && info.dwMajorVersion == 5 && info.dwMinorVersion == 1)
	{
		return true;
	}
	return false;
}
#endif

int LHDebugStack::Initialise()
{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (!IsWindowsXP())
#endif
	{
		if (BeenInitialisedCount == 0)
		{
			char path[MAX_PATH + 1];
			char drive[LH_DEBUG_STACK_DRIVE_SIZE];
			char dir[MAX_PATH + 1];

			SymSetOptions(SYMOPT_UNDNAME | SYMOPT_DEFERRED_LOADS | SYMOPT_LOAD_LINES | SYMOPT_OMAP_FIND_NEAREST);
			HANDLE process = GetCurrentProcess();
			GetModuleFileNameA(NULL, path, MAX_PATH);
			_splitpath(path, drive, dir, NULL, NULL);
			sprintf(path, "%s%s", drive, dir);
			lstrcatA(path, ";.;");
			if (SymInitialize(process, path, false))
			{
				GetModuleFileNameA(NULL, path, MAX_PATH);
				if (!SymLoadModule(process, NULL, path, NULL, 0, 0))
				{
					SymCleanup(process);
					return false;
				}
			}
			else
			{
				return false;
			}
		}
		BeenInitialisedCount++;
		return true;
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	return false;
#endif
}

void LHDebugStack::CloseDown()
{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (IsWindowsXP())
	{
		return;
	}
#endif

	if (--BeenInitialisedCount <= 0)
	{
		SymCleanup(GetCurrentProcess());
	}
}

void LHDebugStack::UpdateStackInformation()
{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (IsWindowsXP())
	{
		return;
	}
#endif

	__try
	{
		RaiseException(0, 0, 0, NULL);
	}
	__except (UpdateStack(GetExceptionInformation()))
	{
	}
}

int LHDebugStack::UpdateStack(_EXCEPTION_POINTERS* exception)
{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	FunctionCount = 0;
	if (IsWindowsXP())
	{
		return EXCEPTION_CONTINUE_SEARCH;
	}
#endif

	bool32_t   walking = true;
	STACKFRAME frame;
	memset(&frame, 0, sizeof(frame));
	frame.AddrPC.Mode = AddrModeFlat;
	frame.AddrPC.Offset = exception->ContextRecord->Eip;
	frame.AddrStack.Mode = AddrModeFlat;
	frame.AddrStack.Offset = exception->ContextRecord->Esp;
	frame.AddrFrame.Mode = AddrModeFlat;
	frame.AddrFrame.Offset = exception->ContextRecord->Ebp;

	for (int i = 0; i < LH_DEBUG_STACK_SKIPPED_FRAMES && walking == true; i++)
	{
		walking = StackWalk(IMAGE_FILE_MACHINE_I386, GetCurrentProcess(), GetCurrentThread(), &frame,
		                    exception->ContextRecord, NULL, SymFunctionTableAccess, SymGetModuleBase, NULL);
	}

	FunctionCount = 0;
	for (uint32_t j = 0; j < LH_DEBUG_STACK_MAX_FUNCTIONS && walking; j++)
	{
		if (!GetFunctionName(NULL, (void*)frame.AddrPC.Offset, FunctionNames[j]))
		{
			sprintf(FunctionNames[j], "%s", UNKNOWN_FUNCTION_NAME);
		}
		FunctionCount++;
		walking = StackWalk(IMAGE_FILE_MACHINE_I386, GetCurrentProcess(), GetCurrentThread(), &frame,
		                    exception->ContextRecord, NULL, SymFunctionTableAccess, SymGetModuleBase, NULL);
	}
	return EXCEPTION_CONTINUE_EXECUTION;
}

int LHDebugStack::GetFunctionName(HINSTANCE__* instance, void* address, char* name)
{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (IsWindowsXP())
	{
		return false;
	}
#endif

	DWORD   displacement = 0;
	HANDLE  process = GetCurrentProcess();
	uint8_t buffer[sizeof(IMAGEHLP_SYMBOL) + LH_DEBUG_STACK_FUNCTION_NAME_SIZE];
	memset(buffer, 0, sizeof(buffer));
	IMAGEHLP_SYMBOL* symbol = (IMAGEHLP_SYMBOL*)buffer;
	symbol->SizeOfStruct = sizeof(buffer);
	symbol->MaxNameLength = LH_DEBUG_STACK_FUNCTION_NAME_SIZE;
	if (SymGetSymFromAddr(process, (DWORD)address, &displacement, symbol))
	{
		strcpy(name, symbol->Name);
		strcat(name, "()");
		return true;
	}
	return false;
}

int LHDebugStack::GetFunctionNameThatCalledThisFunction(HINSTANCE__* instance, char* name)
{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (IsWindowsXP())
	{
		return false;
	}
#endif

	if (BeenInitialisedCount <= 0 && !Initialise())
	{
		return false;
	}

	void* address;
	__asm
	{
		mov eax, [ebp]
		mov ebx, [eax + 4]
		mov address, ebx
	}
	return GetFunctionName(instance, address, name);
}

char* GetCurrentStackString()
{
	static bool         firstTime = true;
	static char         stackString[LH_DEBUG_STACK_STRING_SIZE];
	static LHDebugStack debugStack;

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (IsWindowsXP())
	{
		return "Arse";
	}
#endif

	bool retried = false;
	for (;;)
	{
		if (firstTime)
		{
			firstTime = false;
			LHDebugStack::Initialise();
		}
		debugStack.UpdateStackInformation();
		stackString[0] = '\0';
		for (int i = 1; i < debugStack.GetFunctionCount() - 1; i++)
		{
			if (strstr(debugStack.GetFunctionName(i), UNKNOWN_FUNCTION_NAME) == NULL)
			{
				strcat(stackString, debugStack.GetFunctionName(i));
				strcat(stackString, " ");
			}
		}
		if (strlen(stackString) != 0)
		{
			break;
		}
		firstTime = true;
		if (retried)
		{
			break;
		}
		retried = true;
	}
	return stackString;
}
