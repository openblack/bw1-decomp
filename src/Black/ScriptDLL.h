#ifndef BW1_DECOMP_SCRIPT_DLL_INCLUDED_H
#define BW1_DECOMP_SCRIPT_DLL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

#include <Lionhead/LHDLL/ver1.0/LHDLL.h> /* For struct LHDLL */

enum VMType
{
  VMType_0 = 0x0,
  _VMType_COUNT = 0x1
};

enum VMScriptType
{
  VMScriptType_0 = 0x0,
  _VMScriptType_COUNT = 0x1
};

enum STATE_TYPE
{
  STATE_TYPE_0 = 0x0,
  _STATE_TYPE_COUNT = 0x1
};

// Forward Declares

class LHTransport;

class ScriptDLL: public LHDLL
{
public:
    uint32_t field_0x24;
    uint32_t field_0x28;
    uint32_t field_0x2c;
    uint32_t field_0x30;
    uintptr_t ParseFile;
    uintptr_t StartScript;
    uintptr_t FindScript;
    void (__cdecl* AutoStart_ptr)(LHTransport* transport); /* 0x40 */
    uintptr_t StopTask;
    uintptr_t StopAllTasks_ptr;
    uintptr_t StopTasksOfType_ptr;
    uintptr_t POP; /* 0x50 */
    uintptr_t PUSH_ptr;
    uintptr_t STRING;
    int (__cdecl* LoadBinary_ptr)(LHTransport* transport, const char* path);
    uintptr_t SaveBinary; /* 0x60 */
    uintptr_t SaveState;
    uintptr_t RestoreState;
    uintptr_t Reboot;
    uint32_t NumTasks; /* 0x70 */
    uint32_t LineNumber;
    uint32_t TaskNumber;
    uint32_t TaskName;
    uint32_t TaskFilename; /* 0x80 */
    uint32_t GetTaskFilename;
    uint32_t GetTaskName;
    uint32_t OpCode;
    uint32_t GetCurrentScriptType; /* 0x90 */
    uint32_t GetScriptInstructionCount;
    uint32_t Mode;
    uint32_t Type;
    uint32_t Value; /* 0xa0 */
    uint32_t OpCodeName;
    uint32_t StopScripts;
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
    uint32_t GetGlobalVariableValue;
    uint32_t field_0xd8;

    // Static methods

    // BW1W120 006f6320 BW1M100 104e8e70 ScriptDLL::Create(char const *)
    static ScriptDLL* Create(char* library_path);

    // Constructors

    // BW1W120 inlined BW1M100 inlined ScriptDLL::ScriptDLL(const char*)
    ScriptDLL(char* library_path);

    // Non-virtual methods

    // BW1W120 006f68c0 BW1M100 104e8480 ScriptDLL::AutoStart(void)
    void AutoStart();
    // BW1W120 006f68f0 BW1M100 104e8410 ScriptDLL::StopTasksOfType(VMScriptType)
    void StopTasksOfType(VMScriptType param_1);
    // BW1W120 006f6910 BW1M100 104e83b0 ScriptDLL::StopAllTasks(void)
    void StopAllTasks();
    // BW1W120 006f6920 BW1M100 104e8350 ScriptDLL::LoadBinary(char const *)
    int LoadBinary(const char* path);
    // BW1W120 006f6ba0 BW1M100 10042e90 ScriptDLL::PUSH(void *, VMType)
    void PUSH(void* param_1, VMType param_2);
    // BW1W120 006f6c50 BW1M100 104e7d70 ScriptDLL::GetScriptType(unsigned long)
    void* GetScriptType(unsigned long param_1);
};

#endif /* BW1_DECOMP_SCRIPT_DLL_INCLUDED_H */
