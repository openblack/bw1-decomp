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

// BW1W120 10002110 BW1M119 null
static bool IsWindowsXP();

short LHDebugStack::BeenInitialisedCount;

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

int LHDebugStack::Initialise()
{
	if (!IsWindowsXP())
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
			if (!SymInitialize(process, path, false))
			{
				return false;
			}
			GetModuleFileNameA(NULL, path, MAX_PATH);
			if (!SymLoadModule(process, NULL, path, NULL, 0, 0))
			{
				SymCleanup(process);
				return false;
			}
		}
		BeenInitialisedCount++;
		return true;
	}
	return false;
}

void LHDebugStack::CloseDown()
{
	if (IsWindowsXP())
	{
		return;
	}

	if (--BeenInitialisedCount <= 0)
	{
		SymCleanup(GetCurrentProcess());
	}
}

int LHDebugStack::GetFunctionName(HINSTANCE__* instance, void* address, char* name)
{
	if (IsWindowsXP())
	{
		return false;
	}

	DWORD   displacement = 0;
	HANDLE  process = GetCurrentProcess();
	uint8_t buffer[sizeof(IMAGEHLP_SYMBOL) + LH_DEBUG_STACK_FUNCTION_NAME_SIZE];
	memset(buffer, 0, sizeof(buffer));
	IMAGEHLP_SYMBOL* symbol = (IMAGEHLP_SYMBOL*)buffer;
	symbol->SizeOfStruct = sizeof(buffer);
	symbol->MaxNameLength = LH_DEBUG_STACK_FUNCTION_NAME_SIZE;
	if (SymGetSymFromAddr(process, (DWORD)address, &displacement, symbol))
	{
		strcat(strcpy(name, symbol->Name), "()");
		return true;
	}
	return false;
}

int LHDebugStack::GetFunctionNameThatCalledThisFunction(HINSTANCE__* instance, char* name)
{
	if (IsWindowsXP())
	{
		return false;
	}

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

int LHDebugStack::UpdateStack(_EXCEPTION_POINTERS* exception)
{
	FunctionCount = 0;
	if (IsWindowsXP())
	{
		return EXCEPTION_CONTINUE_SEARCH;
	}

	STACKFRAME frame;
	memset(&frame, 0, sizeof(frame));
	frame.AddrPC.Mode = AddrModeFlat;
	frame.AddrPC.Offset = exception->ContextRecord->Eip;
	frame.AddrStack.Mode = AddrModeFlat;
	frame.AddrStack.Offset = exception->ContextRecord->Esp;
	frame.AddrFrame.Mode = AddrModeFlat;
	frame.AddrFrame.Offset = exception->ContextRecord->Ebp;

	bool32_t walking = true;
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

void LHDebugStack::UpdateStackInformation()
{
	if (IsWindowsXP())
	{
		return;
	}

	__try
	{
		RaiseException(0, 0, 0, NULL);
	}
	__except (UpdateStack(GetExceptionInformation()))
	{
	}
}

char* GetCurrentStackString()
{
	static bool         firstTime = true;
	static char         stackString[LH_DEBUG_STACK_STRING_SIZE];
	static LHDebugStack debugStack;

	if (IsWindowsXP())
	{
		return "Arse";
	}

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
