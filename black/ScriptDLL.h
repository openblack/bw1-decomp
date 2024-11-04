#ifndef BW1_DECOMP_SCRIPT_DLL_INCLUDED_H
#define BW1_DECOMP_SCRIPT_DLL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

#include <lionhead/lhdll/ver1.0/LHDLL.h> /* For struct LHDLL */

// Forward Declares

struct LHTransport;

struct ScriptDLL
{
  struct LHDLL super;  /* 0x0 */
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uintptr_t ParseFile;
  uintptr_t StartScript;
  uintptr_t FindScript;
  void (__cdecl* AutoStart)(struct LHTransport* transport);  /* 0x40 */
  uintptr_t StopTask;
  uintptr_t StopAllTasks;
  uintptr_t StopTasksOfType;
  uintptr_t POP;  /* 0x50 */
  uintptr_t PUSH;
  uintptr_t STRING;
  int (__cdecl* LoadBinary)(struct LHTransport* transport, const char* path);
  uintptr_t SaveBinary;  /* 0x60 */
  uintptr_t SaveState;
  uintptr_t RestoreState;
  uintptr_t Reboot;
  uint32_t NumTasks;  /* 0x70 */
  uint32_t LineNumber;
  uint32_t TaskNumber;
  uint32_t TaskName;
  uint32_t TaskFilename;  /* 0x80 */
  uint32_t GetTaskFilename;
  uint32_t GetTaskName;
  uint32_t OpCode;
  uint32_t GetCurrentScriptType;  /* 0x90 */
  uint32_t GetScriptInstructionCount;
  uint32_t Mode;
  uint32_t Type;
  uint32_t Value;  /* 0xa0 */
  uint32_t OpCodeName;
  uint32_t StopScripts;
  uint32_t GetScriptID;
  uint32_t Version;  /* 0xb0 */
  uint32_t CodeSize;
  uint32_t GetNextTask;
  uint32_t GetPreviousTask;
  uint32_t GetHighestRunningTask;  /* 0xc0 */
  uint32_t GetFirstRunningTaskId;
  uint32_t LoopTaskVariables;
  uint32_t LoopGlobalVariables;
  uint32_t GetScriptType;  /* 0xd0 */
  uint32_t GetGlobalVariableValue;
  uint32_t field_0xd8;
};
static_assert(sizeof(struct ScriptDLL) == 0xdc, "Data type is of wrong size");

static struct LHDLLVftable* const __vt__9ScriptDLL = (struct LHDLLVftable* const)0x00942200;

// Static methods

// win1.41 006f6320 mac 104e8e70 ScriptDLL::Create(char const *)
struct ScriptDLL* __cdecl Create__9ScriptDLLFPCc(char* library_path);

// Constructors

// win1.41 inlined mac inlined ScriptDLL::ScriptDLL(const char*)
struct ScriptDLL* __fastcall __ct__9ScriptDLLFPCc(struct ScriptDLL* this, const void* edx, char* library_path);

// Non-virtual methods

// win1.41 006f68c0 mac 104e8480 ScriptDLL::AutoStart(void)
void __fastcall AutoStart__9ScriptDLLFv(struct ScriptDLL* this);
// win1.41 006f6910 mac 104e83b0 ScriptDLL::StopAllTasks(void)
void __fastcall StopAllTasks__9ScriptDLLFv(struct ScriptDLL* this);
// win1.41 006f6920 mac 104e8350 ScriptDLL::LoadBinary(char const *)
int __fastcall LoadBinary__9ScriptDLLFPCc(struct ScriptDLL* this, const void* edx, const char* path);

#endif /* BW1_DECOMP_SCRIPT_DLL_INCLUDED_H */
