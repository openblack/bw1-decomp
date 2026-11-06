#ifndef BW1_DECOMP_SCRIPT_DLL_INCLUDED_H
#define BW1_DECOMP_SCRIPT_DLL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

#include <Lionhead/LHDLL/ver1.0/LHDLL.h>          /* For struct LHDLL */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>       /* For enum LH_RETURN */

// Types of values on the script VM's stack.
enum VMType
{
	VMType_NONE = 0x0,
	VMType_INT = 0x1,
	VMType_FLOAT = 0x2,
	VMType_VECTOR = 0x3,
	VMType_OBJECT = 0x4,
	VMType_BOOLEAN = 0x6,
};

enum VMScriptType
{
	VMScriptType_0 = 0x0,
	VMScriptType_Help = 0x2,
	VMScriptType_RunWhilePaused = 0x18,
	VMScriptType_StoppableHelp = 0x4a,
	VMScriptType_Multiplayer = 0x60,
	VMScriptType_All = 0x7f,
	_VMScriptType_COUNT = 0x1
};

// Forward Declares

class LHTransport;
struct ScriptFunctionTable;

class ScriptDLL : public LHDLL
{
public:
	uint32_t field_0x24;
	uint32_t field_0x28;
	uint32_t field_0x2c;
	uint32_t field_0x30;
	LH_RETURN(__cdecl* ParseFile_ptr)(LHTransport* transport, const char* path, const char* game_directory);
	int(__cdecl* StartScript_ptr)(LHTransport* transport, const char* name, VMScriptType type);
	uintptr_t FindScript;
	void(__cdecl* AutoStart_ptr)(LHTransport* transport); /* 0x40 */
	uintptr_t StopTask;
	void(__cdecl* StopAllTasks_ptr)(LHTransport* transport);
	uintptr_t StopTasksOfType_ptr;
	uintptr_t POP_ptr; /* 0x50 */
	uintptr_t PUSH_ptr;
	uintptr_t STRING_ptr;
	int(__cdecl* LoadBinary_ptr)(LHTransport* transport, const char* path);
	uintptr_t SaveBinary; /* 0x60 */
	uintptr_t SaveState_ptr;
	uintptr_t RestoreState_ptr;
	uintptr_t Reboot_ptr;
	uint32_t  NumTasks; /* 0x70 */
	uint32_t  LineNumber;
	uint32_t  TaskNumber_ptr;
	char*(__cdecl* TaskName_ptr)(LHTransport* transport);
	uint32_t TaskFilename; /* 0x80 */
	uint32_t GetTaskFilename;
	uint32_t GetTaskName;
	uint32_t OpCode;

	// Non-virtual methods

	// BW1W120 006f6bc0 BW1M119 010457b0
	uint32_t POP(VMType* type);
	// BW1W120 inlined BW1M119 01045810
	float COORD_POP()
	{
		VMType   type;
		uint32_t value = POP(&type);
		return *(float*)&value;
	}
	// BW1W120 inlined BW1M119 01045620
	uint32_t THING_OR_NULL_POP()
	{
		VMType type;
		return POP(&type);
	}
	// BW1W120 inlined BW1M119 014e04e0
	uint32_t ULONG_POP()
	{
		VMType type;
		return POP(&type);
	}
	// BW1W120 inlined BW1M119 014f4110
	float FLOAT_POP()
	{
		VMType   type;
		uint32_t value = POP(&type);
		return *(float*)&value;
	}
	// BW1W120 inlined BW1M119 01045930
	void COORD_PUSH(float value) { PUSH(*(void**)&value, VMType_VECTOR); }
	// BW1W120 inlined BW1M119 inlined
	void FLOAT_PUSH(float value) { PUSH(*(void**)&value, VMType_FLOAT); }
	// Inliner IL size: 57
	// BW1W120 inlined BW1M119 inlined
	void POINT_POP(LHPoint& point)
	{
		point.z = COORD_POP();
		point.y = COORD_POP();
		point.x = COORD_POP();
	}
	// Inliner IL size: 63
	// BW1W120 006fb100 BW1M119 null
	void POINT_PUSH(const LHPoint& point)
	{
		COORD_PUSH(point.x);
		COORD_PUSH(point.y);
		COORD_PUSH(point.z);
	}
	uint32_t GetCurrentScriptType; /* 0x90 */
	uint32_t(__cdecl* GetScriptInstructionCount_ptr)(LHTransport* transport);
	uint32_t Mode;
	uint32_t Type;
	uint32_t Value; /* 0xa0 */
	uint32_t OpCodeName;
	void(__cdecl* StopScripts_ptr)(LHTransport* transport, bool(__cdecl* check)(const char*, const char*));
	uint32_t GetScriptID;
	uint32_t Version; /* 0xb0 */
	uint32_t CodeSize;
	uint32_t GetNextTask;
	uint32_t GetPreviousTask;
	uint32_t GetHighestRunningTask; /* 0xc0 */
	uint32_t GetFirstRunningTaskId;
	uint32_t LoopTaskVariables;
	uint32_t LoopGlobalVariables;
	uint32_t GetScriptType_ptr; /* 0xd0 */
	uint32_t GetGlobalVariableValue_ptr;
	uint32_t GetLocalVariableValue_ptr;

	// Static methods

	// BW1W120 006f6320 BW1M119 014f0630
	static ScriptDLL* Create(const char* library_path);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	ScriptDLL(const char* library_path) : LHDLL(library_path) { field_0x28 = 0; }

	// Non-virtual methods

	// BW1W120 006f67f0 BW1M119 014efe00
	void Initialise(ScriptFunctionTable* table, void(__cdecl* library_message)(LH_RETURN result, char* message),
	                void(__cdecl* start_call)(unsigned long function), void(__cdecl* end_call)(unsigned long function),
	                void(__cdecl* debug_call_back)(), void(__cdecl* task_cleanup)(unsigned long task));
	// BW1W120 006f6840 BW1M119 0108e380
	void LookIn(VMScriptType script_type);
	// BW1W120 006f6860 BW1M119 014efcf0
	LH_RETURN ParseFile(const char* path, const char* game_directory);
	// BW1W120 006f6880 BW1M119 014efc80
	int StartScript(const char* name, VMScriptType type);
	// BW1W120 006f6960 BW1M119 014efa90
	void SaveState(const char* path);
	// BW1W120 006f6980 BW1M119 014efa30
	void RestoreState(const char* path);
	// BW1W120 006f69a0 BW1M119 014ef9c0
	void Reboot();
	// BW1W120 006f6c70 BW1M119 014ef4a0
	float GetGlobalVariableValue(const char* name);
	// BW1W120 006f6c90 BW1M119 null
	float GetLocalVariableValue(const char* script_name, const char* name);
	// BW1W120 006f68c0 BW1M119 014efc20
	void AutoStart();
	// BW1W120 006f68f0 BW1M119 014efbb0
	void StopTasksOfType(VMScriptType type);
	// BW1W120 006f6b10 BW1M119 014ef790
	void StopScripts(bool(__cdecl* check)(const char* script_name, const char* filename));
	// BW1W120 006f6910 BW1M119 014efb50
	void StopAllTasks();
	// BW1W120 006f6920 BW1M119 014efaf0
	int LoadBinary(const char* path);
	// BW1W120 006f69f0 BW1M119 014ef950
	uint32_t TaskNumber();
	// BW1W120 006f6a10 BW1M119 014ef8e0
	char* TaskName();
	// BW1W120 006f6ba0 BW1M119 010458d0
	void PUSH(void* value, VMType type);
	// BW1W120 006f6bd0 BW1M119 014ef5e0
	char* STRING(uint32_t index);
	// BW1W120 006f6c50 BW1M119 014ef510
	VMScriptType GetScriptType(unsigned long task);
	// BW1W120 006f6aa0 BW1M119 014ef800
	uint32_t GetScriptInstructionCount();

	virtual void GetAPI();
	virtual void AutoStart(LHTransport* transport);
	virtual int  LoadBinary(LHTransport* transport, const char* path);
	// BW1W120 006f6c30 BW1M119 014ef570
	int FindFirstRunningTaskID(const char* script_name);
	// BW1W120 006f6a90 BW1M119 014ef870
	VMScriptType GetCurrentTaskScriptType();
};

#endif /* BW1_DECOMP_SCRIPT_DLL_INCLUDED_H */
