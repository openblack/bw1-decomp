#ifndef BW1_DECOMP_SCRIPT_DLL_INCLUDED_H
#define BW1_DECOMP_SCRIPT_DLL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

#include <lionhead/lhdll/ver1.0/LHDLL.h> /* For struct LHDLL */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

// Forward Declares

struct LHTransport;

enum VMType
{
  VMType_0 = 0x0,
  _VMType_COUNT = 0x1
};
static_assert(sizeof(enum VMType) == 0x4, "Data type is of wrong size");

static const char* VMType_strs[_VMType_COUNT] = {
  "VMType_0",
};

enum VMScriptType
{
  VMScriptType_0 = 0x0,
  _VMScriptType_COUNT = 0x1
};
static_assert(sizeof(enum VMScriptType) == 0x4, "Data type is of wrong size");

static const char* VMScriptType_strs[_VMScriptType_COUNT] = {
  "VMScriptType_0",
};

enum STATE_TYPE
{
  STATE_TYPE_0 = 0x0,
  _STATE_TYPE_COUNT = 0x1
};
static_assert(sizeof(enum STATE_TYPE) == 0x4, "Data type is of wrong size");

static const char* STATE_TYPE_strs[_STATE_TYPE_COUNT] = {
  "STATE_TYPE_0",
};

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

// Object Oriented datastructures

// win1.41 00c0d120 mac inlined ScriptDLL::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9ScriptDLL asm("??_R0?AVScriptDLL@@@8");
// win1.41 009b8ec0 mac inlined ScriptDLL::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9ScriptDLL asm("??_R1A@?0A@A@ScriptDLL@@8");
// win1.41 009b8ed8 mac inlined ScriptDLL::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9ScriptDLL asm("??_R2ScriptDLL@@8");
// win1.41 009b8ee8 mac inlined ScriptDLL::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9ScriptDLL asm("??_R3ScriptDLL@@8");
// win1.41 009421fc mac 109c4210 ScriptDLL::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9ScriptDLL asm("??_R4ScriptDLL@@6B@");
// win1.41 00942200 mac 109c4218 ScriptDLL::`vftable'
extern const struct LHDLLVftable __vt__9ScriptDLL asm("??_7ScriptDLL@@6B@");

// Static methods

// win1.41 006f6320 mac 104e8e70 ScriptDLL::Create(char const *)
struct ScriptDLL* __cdecl Create__9ScriptDLLFPCc(char* library_path) asm("?Create@ScriptDLL@@SAPAV1@PBD@Z");

// Constructors

// win1.41 inlined mac inlined ScriptDLL::ScriptDLL(const char*)
struct ScriptDLL* __fastcall __ct__9ScriptDLLFPCc(struct ScriptDLL* this, const void* edx, char* library_path) asm("??0ScriptDLL@@QAE@PBD@Z");

// Non-virtual methods

// win1.41 006f68c0 mac 104e8480 ScriptDLL::AutoStart(void)
void __fastcall AutoStart__9ScriptDLLFv(struct ScriptDLL* this) asm("?AutoStart@ScriptDLL@@QAEXXZ");
// win1.41 006f68f0 mac 104e8410 ScriptDLL::StopTasksOfType(VMScriptType)
void __fastcall StopTasksOfType__9ScriptDLLF12VMScriptType(struct ScriptDLL* this, const void* edx, enum VMScriptType param_1) asm("?StopTasksOfType@ScriptDLL@@QAEXW4VMScriptType@@@Z");
// win1.41 006f6910 mac 104e83b0 ScriptDLL::StopAllTasks(void)
void __fastcall StopAllTasks__9ScriptDLLFv(struct ScriptDLL* this) asm("?StopAllTasks@ScriptDLL@@QAEXXZ");
// win1.41 006f6920 mac 104e8350 ScriptDLL::LoadBinary(char const *)
int __fastcall LoadBinary__9ScriptDLLFPCc(struct ScriptDLL* this, const void* edx, const char* path) asm("?LoadBinary@ScriptDLL@@QAEHPBD@Z");
// win1.41 006f6ba0 mac 10042e90 ScriptDLL::PUSH(void *, VMType)
void __fastcall PUSH__9ScriptDLLFPv6VMType(struct ScriptDLL* this, const void* edx, void* param_1, enum VMType param_2) asm("?PUSH@ScriptDLL@@QAEXPAXW4VMType@@@Z");
// win1.41 006f6c50 mac 104e7d70 ScriptDLL::GetScriptType(unsigned long)
void* __fastcall GetScriptType__9ScriptDLLFUl(struct ScriptDLL* this, const void* edx, unsigned long param_1) asm("?GetScriptType@ScriptDLL@@QAEPAXK@Z");

#endif /* BW1_DECOMP_SCRIPT_DLL_INCLUDED_H */
