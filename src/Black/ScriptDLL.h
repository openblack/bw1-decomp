#ifndef BW1_DECOMP_SCRIPT_DLL_INCLUDED_H
#define BW1_DECOMP_SCRIPT_DLL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

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
	VMScriptType_Help = 0x2,
	VMScriptType_RunWhilePaused = 0x18,
};

// Forward Declares

class LHTransport;
struct ScriptFunctionTable;

class ScriptDLL : public LHDLL
{
public:
	typedef bool(__cdecl* ScriptCheck)(const char* script_name, const char* filename);
	typedef void(__cdecl* VMEventCallback)(unsigned long id);
	typedef void(__cdecl* VariableCallback)(const char* name, VMType type, float value);

	char*    LastTaskName; /* 0x24 */
	char*    LastTaskFilename;
	uint32_t LastTaskNumber;
	uint32_t LastLineNumber;
	LH_RETURN(__cdecl* ParseFileProc)(LHTransport* library_end, const char* filename, const char* directory);
	uint32_t(__cdecl* StartScriptProc)(LHTransport* library_end, const char* name, VMScriptType type);
	uint32_t(__cdecl* FindScriptProc)(LHTransport* library_end, const char* name);
	LH_RETURN(__cdecl* AutoStartProc)(LHTransport* library_end); /* 0x40 */
	LH_RETURN(__cdecl* StopTaskProc)(LHTransport* library_end, uint32_t task);
	void(__cdecl* StopAllTasksProc)(LHTransport* library_end);
	void(__cdecl* StopTasksOfTypeProc)(LHTransport* library_end, VMScriptType type);
	uint32_t(__cdecl* POPProc)(VMType* type); /* 0x50 */
	void(__cdecl* PUSHProc)(void* value, VMType type);
	char*(__cdecl* STRINGProc)(unsigned long index);
	LH_RETURN(__cdecl* LoadBinaryProc)(LHTransport* library_end, const char* path);
	LH_RETURN(__cdecl* SaveBinaryProc)(LHTransport* library_end, const char* path); /* 0x60 */
	LH_RETURN(__cdecl* SaveStateProc)(LHTransport* library_end, const char* path);
	LH_RETURN(__cdecl* RestoreStateProc)(LHTransport* library_end, const char* path);
	LH_RETURN(__cdecl* RebootProc)(LHTransport* library_end);
	uint32_t(__cdecl* NumTasksProc)(LHTransport* library_end); /* 0x70 */
	uint32_t(__cdecl* LineNumberProc)(LHTransport* library_end);
	uint32_t(__cdecl* TaskNumberProc)(LHTransport* library_end);
	char*(__cdecl* TaskNameProc)(LHTransport* library_end);
	char*(__cdecl* TaskFilenameProc)(LHTransport* library_end); /* 0x80 */
	char*(__cdecl* GetTaskFilenameProc)(LHTransport* library_end, uint32_t task);
	char*(__cdecl* GetTaskNameProc)(LHTransport* library_end, uint32_t task);
	uint32_t(__cdecl* OpCodeProc)(LHTransport* library_end);
	VMScriptType(__cdecl* GetCurrentScriptTypeProc)(LHTransport* library_end); /* 0x90 */
	uint32_t(__cdecl* GetScriptInstructionCountProc)(LHTransport* library_end);
	uint32_t(__cdecl* ModeProc)(LHTransport* library_end);
	uint32_t(__cdecl* TypeProc)(LHTransport* library_end);
	uint32_t(__cdecl* ValueProc)(LHTransport* library_end); /* 0xa0 */
	char*(__cdecl* OpCodeNameProc)(LHTransport* library_end, uint32_t opcode);
	void(__cdecl* StopScriptsProc)(LHTransport* library_end, ScriptCheck check);
	uint32_t(__cdecl* GetScriptIDProc)(LHTransport* library_end);
	uint32_t(__cdecl* VersionProc)(LHTransport* library_end); /* 0xb0 */
	uint32_t(__cdecl* CodeSizeProc)(LHTransport* library_end);
	uint32_t(__cdecl* GetNextTaskProc)(LHTransport* library_end, uint32_t task);
	uint32_t(__cdecl* GetPreviousTaskProc)(LHTransport* library_end, uint32_t task);
	uint32_t(__cdecl* GetHighestRunningTaskProc)(LHTransport* library_end); /* 0xc0 */
#ifndef VERSION_BW1W100
	uint32_t(__cdecl* GetFirstRunningTaskIdProc)(LHTransport* library_end, const char* name);
#endif
	void(__cdecl* LoopTaskVariablesProc)(LHTransport* library_end, VariableCallback callback, uint32_t task);
	void(__cdecl* LoopGlobalVariablesProc)(LHTransport* library_end, VariableCallback callback);
	VMScriptType(__cdecl* GetScriptTypeProc)(LHTransport* library_end, unsigned long task); /* 0xd0 */
#ifndef VERSION_BW1W100
	float(__cdecl* GetGlobalVariableValueProc)(LHTransport* library_end, const char* name);
	float(__cdecl* GetLocalVariableValueProc)(LHTransport* library_end, uint32_t task, const char* name);
#endif

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

	// Static methods

	// BW1W120 006f6320 BW1M119 014f0630
	static ScriptDLL* Create(const char* library_path);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	ScriptDLL(const char* library_path) : LHDLL(library_path) { LastTaskFilename = NULL; }

	// Override methods

	// BW1W120 006f6380 BW1M119 014effd0
	virtual bool GetAPI();
	// BW1W120 006f6730 BW1M119 014efef0
	virtual bool ResetAPI();

	// Non-virtual methods

	// BW1W120 006f67f0 BW1M119 014efe00
	LH_RETURN Initialise(ScriptFunctionTable* table, void(__cdecl* error_callback)(LH_RETURN code, char* message),
	                     VMEventCallback start_call_callback, VMEventCallback end_call_callback,
	                     void(__cdecl* debug_callback)(), VMEventCallback     end_task_callback);
	// BW1W120 006f6840 BW1M119 0108e380
	LH_RETURN LookIn(VMScriptType script_type);
	// BW1W120 006f6860 BW1M119 014efcf0
	LH_RETURN ParseFile(const char* filename, const char* directory);
	// BW1W120 006f6880 BW1M119 014efc80
	uint32_t StartScript(const char* name, VMScriptType type);
	// BW1W120 006f68a0 BW1M119 null
	uint32_t FindScript(const char* name);
	// BW1W120 006f68c0 BW1M119 014efc20
	LH_RETURN AutoStart();
	// BW1W120 006f68d0 BW1M119 null
	LH_RETURN StopTask(uint32_t task);
	// BW1W120 006f68f0 BW1M119 014efbb0
	void StopTasksOfType(VMScriptType type);
	// BW1W120 006f6910 BW1M119 014efb50
	void StopAllTasks();
	// BW1W120 006f6920 BW1M119 014efaf0
	LH_RETURN LoadBinary(const char* path);
	// BW1W120 006f6940 BW1M119 null
	LH_RETURN SaveBinary(const char* path);
	// BW1W120 006f6960 BW1M119 014efa90
	LH_RETURN SaveState(const char* path);
	// BW1W120 006f6980 BW1M119 014efa30
	LH_RETURN RestoreState(const char* path);
	// BW1W120 006f69a0 BW1M119 014ef9c0
	LH_RETURN Reboot();
	// BW1W120 006f69c0 BW1M119 null
	uint32_t NumTasks();
	// BW1W120 006f69d0 BW1M119 null
	uint32_t LineNumber();
	// BW1W120 006f69f0 BW1M119 014ef950
	uint32_t TaskNumber();
	// BW1W120 006f6a10 BW1M119 014ef8e0
	char* TaskName();
	// BW1W120 006f6a30 BW1M119 null
	char* GetTaskName(uint32_t task);
	// BW1W120 006f6a50 BW1M119 null
	char* TaskFilename();
	// BW1W120 006f6a70 BW1M119 null
	char* GetTaskFilename(uint32_t task);
	// BW1W120 006f6a90 BW1M119 014ef870
	VMScriptType GetCurrentTaskScriptType();
	// BW1W120 006f6aa0 BW1M119 014ef800
	uint32_t GetScriptInstructionCount();
	// BW1W120 006f6ab0 BW1M119 null
	uint32_t OpCode();
	// BW1W120 006f6ac0 BW1M119 null
	uint32_t Mode();
	// BW1W120 006f6ad0 BW1M119 null
	uint32_t Type();
	// BW1W120 006f6ae0 BW1M119 null
	uint32_t Value();
	// BW1W120 006f6af0 BW1M119 null
	char* OpCodeName(uint32_t opcode);
	// BW1W120 006f6b10 BW1M119 014ef790
	void StopScripts(ScriptCheck check);
	// BW1W120 006f6b30 BW1M119 null
	void LoopTaskVariables(VariableCallback callback, uint32_t task);
	// BW1W120 006f6b50 BW1M119 null
	void LoopGlobalVariables(VariableCallback callback);
	// BW1W120 006f6b70 BW1M119 null
	uint32_t GetScriptID();
	// BW1W120 006f6b80 BW1M119 null
	uint32_t Version();
	// BW1W120 006f6b90 BW1M119 null
	uint32_t CodeSize();
	// BW1W120 006f6ba0 BW1M119 010458d0
	void PUSH(void* value, VMType type);
	// BW1W120 006f6bd0 BW1M119 014ef5e0
	char* STRING(unsigned long index);
	// BW1W120 006f6be0 BW1M119 null
	uint32_t GetPreviousTask(uint32_t task);
	// BW1W120 006f6c00 BW1M119 null
	uint32_t GetNextTask(uint32_t task);
	// BW1W120 006f6c20 BW1M119 null
	uint32_t GetHighestRunningTask();
#ifndef VERSION_BW1W100
	// BW1W120 006f6c30 BW1M119 014ef570
	uint32_t FindFirstRunningTaskID(const char* script_name);
#endif
	// BW1W120 006f6c50 BW1M119 014ef510
	VMScriptType GetScriptType(unsigned long task);
#ifndef VERSION_BW1W100
	// BW1W120 006f6c70 BW1M119 014ef4a0
	float GetGlobalVariableValue(const char* name);
	// BW1W120 006f6c90 BW1M119 null
	float GetLocalVariableValue(uint32_t task, const char* name);
#endif
};

#endif /* BW1_DECOMP_SCRIPT_DLL_INCLUDED_H */
