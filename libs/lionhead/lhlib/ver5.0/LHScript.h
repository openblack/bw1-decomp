#ifndef BW1_DECOMP_LH_SCRIPT_INCLUDED_H
#define BW1_DECOMP_LH_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#ifdef __cplusplus

// Forward Declares

class LHReleasedOSFile;

struct LHScriptX_c_
{
    int field_0x0;
    int field_0x4;
    char field_0x8[0x14];
    int* field_0x1c;
    LHScriptCommandX_c_* command; /* 0x20 */
    FuncPtr(name='LHScriptX_c___callback', call_type='__cdecl', result='enum LH_RETURN', args=['int', 'struct LHScriptPramX_c_*'], arg_labels=['param_0', 'param_1'], decorated_name='LHScriptX_c___callback', indirection_level=1) callback;
    int field_0x28;
    int field_0x2c;

    // Non-virtual methods

    // win1.41 007e72c0 mac 1061e38c LHScriptX<c>::Load(char *, LHScriptCommandX<c> *, LH_RETURN (*)(long, LHScriptPramX<c> *), long *)
    void Load(const char* path, LHScriptCommandX_c_* command, LH_RETURN (__cdecl*)(int, LHScriptPramX_c_ *) callback, long* param_4);
    // win1.41 007e7400 mac 1061cd3c LHScriptX<c>::LoadOneLine(LHReleasedOSFile &, char *)
    bool LoadOneLine(LHReleasedOSFile* file, char* line);
    // win1.41 007e7540 mac 10150830 LHScriptX<c>::ScanLine(char *)
    uint32_t ScanLine(char* line);
    // win1.41 007e8170 mac 10153040 LHScriptX<c>::LoadFile(char *, long *)
    uint32_t LoadFile(const char* path, long* param_2);
    // win1.41 007e8cb0 mac 101533a0 LHScriptX<c>::DestroyVariables(void)
    void DestroyVariables();
};

#else // __cplusplus

// Forward Declares

struct LHReleasedOSFile;

struct LHScriptPramX_c_
{
  char param_strs[0xc][0x800];  /* 0x0 */
  int param_ints[0xc];  /* 0x6000 */
  float param_floats[0xc];  /* 0x6030 */
};
static_assert(sizeof(struct LHScriptPramX_c_) == 0x6060, "Data type is of wrong size");

struct LHScriptCommandX_c_
{
  const char* function_name;  /* 0x0 */
  uint8_t param_types[0xc];
};
static_assert(sizeof(struct LHScriptCommandX_c_) == 0x10, "Data type is of wrong size");

struct LHScriptX_c_
{
  int field_0x0;
  int field_0x4;
  char field_0x8[0x14];
  int* field_0x1c;
  struct LHScriptCommandX_c_* command;  /* 0x20 */
  enum LH_RETURN (__cdecl* callback)(int param_0, struct LHScriptPramX_c_* param_1);
  int field_0x28;
  int field_0x2c;
};
static_assert(sizeof(struct LHScriptX_c_) == 0x30, "Data type is of wrong size");

// Non-virtual methods

// win1.41 007e72c0 mac 1061e38c LHScriptX<c>::Load(char *, LHScriptCommandX<c> *, LH_RETURN (*)(long, LHScriptPramX<c> *), long *)
void __fastcall Load__12LHScriptX_c_FPcP19LHScriptCommandX_c_PFlP16LHScriptPramX_c__9LH_RETURNPl(struct LHScriptX_c_* this, const void* edx, const char* path, struct LHScriptCommandX_c_* command, enum LH_RETURN (__cdecl* callback)(int param_2, struct LHScriptPramX_c_ * param_3), long* param_4);
// win1.41 007e7400 mac 1061cd3c LHScriptX<c>::LoadOneLine(LHReleasedOSFile &, char *)
bool __fastcall LoadOneLine__12LHScriptX_c_FR16LHReleasedOSFilePc(struct LHScriptX_c_* this, const void* edx, struct LHReleasedOSFile* file, char* line) asm("?LoadOneLine@LHScriptX_c_@@QAE_NAAVLHReleasedOSFile@@PAD@Z");
// win1.41 007e7540 mac 10150830 LHScriptX<c>::ScanLine(char *)
uint32_t __fastcall ScanLine__12LHScriptX_c_FPc(struct LHScriptX_c_* this, const void* edx, char* line) asm("?ScanLine@LHScriptX_c_@@QAEIPAD@Z");
// win1.41 007e8170 mac 10153040 LHScriptX<c>::LoadFile(char *, long *)
uint32_t __fastcall LoadFile__12LHScriptX_c_FPcPl(struct LHScriptX_c_* this, const void* edx, const char* path, long* param_2) asm("?LoadFile@LHScriptX_c_@@QAEIPADPAJ@Z");
// win1.41 007e8cb0 mac 101533a0 LHScriptX<c>::DestroyVariables(void)
void __fastcall DestroyVariables__12LHScriptX_c_Fv(struct LHScriptX_c_* this) asm("?DestroyVariables@LHScriptX_c_@@QAEXXZ");

#endif // __cplusplus

#endif /* BW1_DECOMP_LH_SCRIPT_INCLUDED_H */
