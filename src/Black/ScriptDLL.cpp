#include "ScriptDLL.h"

#include <windows.h> /* For GetProcAddress, HMODULE */

#include "ColourConstants.h" /* For White */

#define GET_API_PROC(name)                                                                                             \
	(FARPROC&)name##Proc = GetProcAddress((HMODULE)_library, #name);                                                   \
	if (name##Proc == NULL)                                                                                            \
	{                                                                                                                  \
		valid = false;                                                                                                 \
	}

ScriptDLL* ScriptDLL::Create(const char* library_path)
{
	ScriptDLL* script_dll = new ScriptDLL(library_path);

	LHDLL* dll = script_dll->AddToInternalList(script_dll);

	if (dll != script_dll && script_dll != NULL)
	{
		delete script_dll;
	}

	return (ScriptDLL*)dll;
}

bool ScriptDLL::GetAPI()
{
	bool valid = true;

	GET_API_PROC(ParseFile);
	GET_API_PROC(StartScript);
	GET_API_PROC(FindScript);
	GET_API_PROC(StopTask);
	GET_API_PROC(StopAllTasks);
	GET_API_PROC(StopTasksOfType);
	GET_API_PROC(PUSH);
	GET_API_PROC(POP);
	GET_API_PROC(STRING);
	GET_API_PROC(AutoStart);
	GET_API_PROC(LoadBinary);
	GET_API_PROC(SaveBinary);
	GET_API_PROC(SaveState);
	GET_API_PROC(RestoreState);
	GET_API_PROC(Reboot);
	GET_API_PROC(NumTasks);
	GET_API_PROC(LineNumber);
	GET_API_PROC(TaskNumber);
	GET_API_PROC(TaskFilename);
	GET_API_PROC(TaskName);
	GET_API_PROC(GetTaskName);
	GET_API_PROC(GetTaskFilename);
	GET_API_PROC(OpCode);
	GET_API_PROC(GetCurrentScriptType);
	GET_API_PROC(GetScriptInstructionCount);
	GET_API_PROC(Mode);
	GET_API_PROC(Type);
	GET_API_PROC(Value);
	GET_API_PROC(OpCodeName);
	GET_API_PROC(StopScripts);
	GET_API_PROC(GetScriptID);
	GET_API_PROC(Version);
	GET_API_PROC(CodeSize);
	GET_API_PROC(LoopTaskVariables);
	GET_API_PROC(LoopGlobalVariables);
	GET_API_PROC(GetPreviousTask);
	GET_API_PROC(GetNextTask);
	GET_API_PROC(GetHighestRunningTask);
#ifndef VERSION_BW1W100
	GET_API_PROC(GetFirstRunningTaskId);
#endif
	GET_API_PROC(GetScriptType);
#ifndef VERSION_BW1W100
	GET_API_PROC(GetGlobalVariableValue);
	GET_API_PROC(GetLocalVariableValue);
#endif

	return valid;
}

bool ScriptDLL::ResetAPI()
{
	ParseFileProc = NULL;
	StartScriptProc = NULL;
	FindScriptProc = NULL;
	StopTaskProc = NULL;
	StopAllTasksProc = NULL;
	StopTasksOfTypeProc = NULL;
	PUSHProc = NULL;
	POPProc = NULL;
	STRINGProc = NULL;
	AutoStartProc = NULL;
	LoadBinaryProc = NULL;
	SaveBinaryProc = NULL;
	SaveStateProc = NULL;
	RestoreStateProc = NULL;
	RebootProc = NULL;
	NumTasksProc = NULL;
	LineNumberProc = NULL;
	TaskNumberProc = NULL;
	TaskNameProc = NULL;
	GetTaskNameProc = NULL;
	TaskFilenameProc = NULL;
	GetTaskFilenameProc = NULL;
	OpCodeProc = NULL;
	GetCurrentScriptTypeProc = NULL;
	GetScriptInstructionCountProc = NULL;
	ModeProc = NULL;
	TypeProc = NULL;
	ValueProc = NULL;
	OpCodeNameProc = NULL;
	StopScriptsProc = NULL;
	GetScriptIDProc = NULL;
	VersionProc = NULL;
	CodeSizeProc = NULL;
	GetHighestRunningTaskProc = NULL;
	GetNextTaskProc = NULL;
	GetPreviousTaskProc = NULL;
	LoopTaskVariablesProc = NULL;
	LoopGlobalVariablesProc = NULL;
	LastTaskFilename = NULL;

	return true;
}

LH_RETURN ScriptDLL::Initialise(ScriptFunctionTable* table,
                                void(__cdecl* error_callback)(LH_RETURN code, char* message),
                                VMEventCallback start_call_callback, VMEventCallback end_call_callback,
                                void(__cdecl* debug_callback)(), VMEventCallback     end_task_callback)
{
	VersionProc(_library_end);
	VersionProc(_library_end);
	return _initialise(_library_end, table, error_callback, start_call_callback, end_call_callback, debug_callback,
	                   end_task_callback);
}

LH_RETURN ScriptDLL::LookIn(VMScriptType script_type)
{
	return _lookin(_library_end, script_type);
}

LH_RETURN ScriptDLL::ParseFile(const char* filename, const char* directory)
{
	return ParseFileProc(_library_end, filename, directory);
}

uint32_t ScriptDLL::StartScript(const char* name, VMScriptType type)
{
	return StartScriptProc(_library_end, name, type);
}

uint32_t ScriptDLL::FindScript(const char* name)
{
	return FindScriptProc(_library_end, name);
}

LH_RETURN ScriptDLL::AutoStart()
{
	return AutoStartProc(_library_end);
}

LH_RETURN ScriptDLL::StopTask(uint32_t task)
{
	return StopTaskProc(_library_end, task);
}

void ScriptDLL::StopTasksOfType(VMScriptType type)
{
	StopTasksOfTypeProc(_library_end, type);
}

void ScriptDLL::StopAllTasks()
{
	StopAllTasksProc(_library_end);
}

LH_RETURN ScriptDLL::LoadBinary(const char* path)
{
	return LoadBinaryProc(_library_end, path);
}

LH_RETURN ScriptDLL::SaveBinary(const char* path)
{
	return SaveBinaryProc(_library_end, path);
}

LH_RETURN ScriptDLL::SaveState(const char* path)
{
	return SaveStateProc(_library_end, path);
}

LH_RETURN ScriptDLL::RestoreState(const char* path)
{
	return RestoreStateProc(_library_end, path);
}

LH_RETURN ScriptDLL::Reboot()
{
	LastTaskFilename = NULL;
	LastTaskName = NULL;
	LastLineNumber = 0;
	LastTaskNumber = 0;
	return RebootProc(_library_end);
}

uint32_t ScriptDLL::NumTasks()
{
	return NumTasksProc(_library_end);
}

uint32_t ScriptDLL::LineNumber()
{
	LastLineNumber = LineNumberProc(_library_end);
	return LastLineNumber;
}

uint32_t ScriptDLL::TaskNumber()
{
	LastTaskNumber = TaskNumberProc(_library_end);
	return LastTaskNumber;
}

char* ScriptDLL::TaskName()
{
	LastTaskName = TaskNameProc(_library_end);
	return LastTaskName;
}

char* ScriptDLL::GetTaskName(uint32_t task)
{
	LastTaskName = GetTaskNameProc(_library_end, task);
	return LastTaskName;
}

char* ScriptDLL::TaskFilename()
{
	LastTaskFilename = TaskFilenameProc(_library_end);
	return LastTaskFilename;
}

char* ScriptDLL::GetTaskFilename(uint32_t task)
{
	return GetTaskFilenameProc(_library_end, task);
}

VMScriptType ScriptDLL::GetCurrentTaskScriptType()
{
	return GetCurrentScriptTypeProc(_library_end);
}

uint32_t ScriptDLL::GetScriptInstructionCount()
{
	return GetScriptInstructionCountProc(_library_end);
}

uint32_t ScriptDLL::OpCode()
{
	return OpCodeProc(_library_end);
}

uint32_t ScriptDLL::Mode()
{
	return ModeProc(_library_end);
}

uint32_t ScriptDLL::Type()
{
	return TypeProc(_library_end);
}

uint32_t ScriptDLL::Value()
{
	return ValueProc(_library_end);
}

char* ScriptDLL::OpCodeName(uint32_t opcode)
{
	return OpCodeNameProc(_library_end, opcode);
}

void ScriptDLL::StopScripts(ScriptCheck check)
{
	StopScriptsProc(_library_end, check);
}

void ScriptDLL::LoopTaskVariables(VariableCallback callback, uint32_t task)
{
	LoopTaskVariablesProc(_library_end, callback, task);
}

void ScriptDLL::LoopGlobalVariables(VariableCallback callback)
{
	LoopGlobalVariablesProc(_library_end, callback);
}

uint32_t ScriptDLL::GetScriptID()
{
	return GetScriptIDProc(_library_end);
}

uint32_t ScriptDLL::Version()
{
	return VersionProc(_library_end);
}

uint32_t ScriptDLL::CodeSize()
{
	return CodeSizeProc(_library_end);
}

void ScriptDLL::PUSH(void* value, VMType type)
{
	PUSHProc(value, type);
}

uint32_t ScriptDLL::POP(VMType* type)
{
	return POPProc(type);
}

char* ScriptDLL::STRING(unsigned long index)
{
	return STRINGProc(index);
}

uint32_t ScriptDLL::GetPreviousTask(uint32_t task)
{
	return GetPreviousTaskProc(_library_end, task);
}

uint32_t ScriptDLL::GetNextTask(uint32_t task)
{
	return GetNextTaskProc(_library_end, task);
}

uint32_t ScriptDLL::GetHighestRunningTask()
{
	return GetHighestRunningTaskProc(_library_end);
}

#ifndef VERSION_BW1W100
uint32_t ScriptDLL::FindFirstRunningTaskID(const char* script_name)
{
	return GetFirstRunningTaskIdProc(_library_end, script_name);
}
#endif

VMScriptType ScriptDLL::GetScriptType(unsigned long task)
{
	return GetScriptTypeProc(_library_end, task);
}

#ifndef VERSION_BW1W100
float ScriptDLL::GetGlobalVariableValue(const char* name)
{
	return GetGlobalVariableValueProc(_library_end, name);
}

float ScriptDLL::GetLocalVariableValue(uint32_t task, const char* name)
{
	return GetLocalVariableValueProc(_library_end, task, name);
}
#endif
