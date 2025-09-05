#ifndef BW1_DECOMP_SCRIPT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int8_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_INTERFACE_LEVEL */

#include "Base.h" /* For struct Base */

struct GScript
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0xb4];
};
static_assert(sizeof(struct GScript) == 0xbc, "Data type is of wrong size");

// win1.41 00942170 mac 109c38c8 GScript::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__7GScript asm("??_R4GScript@@6B@");

// win1.41 00942174 mac 109c38d0 GScript::`vftable'
extern const struct BaseVftable __vt__7GScript asm("??_7GScript@@6B@");

// Static methods

// win1.41 006eb710 mac 104d7e50 GScript::StartScript(char *)
int __stdcall StartScript__7GScriptFPc(char* name);
// win1.41 0070b220 mac 104fcda0 GScript::SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL)
void __cdecl SetInterfaceInteraction__7GScriptF22SCRIPT_INTERFACE_LEVEL(enum SCRIPT_INTERFACE_LEVEL level);
// win1.41 0070d360 mac 10500750 GScript::DeleteAllScriptCreatedGameThings(void)
void __cdecl DeleteAllScriptCreatedGameThings__7GScriptFv(void);

// Non-virtual methods

// win1.41 006eb2d0 mac 104d8160 GScript::Reset(int)
void __fastcall Reset__7GScriptFi(struct GScript* this, const void* edx, int param_2);
// win1.41 006eb610 mac 104d8070 GScript::LoadBinary(char *)
void __fastcall LoadBinary__7GScriptFPc(struct GScript* this, const void* edx, char* binary);
// win1.41 006eb6b0 mac 1007ef10 GScript::Process(void)
void __fastcall Process__7GScriptFv(struct GScript* this);
// win1.41 006eb9d0 mac 10082240 GScript::ProcessFade(bool)
void __fastcall ProcessFade__7GScriptFb(struct GScript* this, const void* edx, bool param_1);
// win1.41 006eba90 mac 104d7670 GScript::SetupScreenFadeTo(uchar,uchar,uchar,char)
void __fastcall SetupScreenFadeTo__7GScriptFUcUcUcSc(struct GScript* this, const void* edx, uint8_t r, uint8_t g, uint8_t b, int8_t a);
// win1.41 006ebbc0 mac 104d7300 GScript::CleanGameForScriptReboot(void)
void __fastcall CleanGameForScriptReboot__7GScriptFv(struct GScript* this);

#endif /* BW1_DECOMP_SCRIPT_INCLUDED_H */
