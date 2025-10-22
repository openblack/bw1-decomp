#ifndef BW1_DECOMP_SCRIPT_INCLUDED_H
#define BW1_DECOMP_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int8_t, uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_INTERFACE_LEVEL, enum SCRIPT_OBJECT_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "BaseInfo.h" /* For struct GBaseInfo */
#include "ScriptDLL.h" /* For enum VMScriptType, enum VMType */

// Forward Declares

struct Abode;
struct GameThingWithPos;

enum SCRIPT_FEATURE_COMMANDS
{
  SCRIPT_FEATURE_COMMANDS_0 = 0x0,
  _SCRIPT_FEATURE_COMMANDS_COUNT = 0x1
};
static_assert(sizeof(enum SCRIPT_FEATURE_COMMANDS) == 0x4, "Data type is of wrong size");

static const char* SCRIPT_FEATURE_COMMANDS_strs[_SCRIPT_FEATURE_COMMANDS_COUNT] = {
  "SCRIPT_FEATURE_COMMANDS_0",
};

struct GScript
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0xb4];
};
static_assert(sizeof(struct GScript) == 0xbc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c0c008 mac inlined GScript::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__7GScript asm("??_R0?AVGScript@@@8");
// win1.41 009b8e08 mac inlined GScript::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__7GScript asm("??_R1A@?0A@A@GScript@@8");
// win1.41 009b8e20 mac inlined GScript::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__7GScript asm("??_R2GScript@@8");
// win1.41 009b8e30 mac inlined GScript::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__7GScript asm("??_R3GScript@@8");
// win1.41 00942170 mac 109c38c8 GScript::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__7GScript asm("??_R4GScript@@6B@");
// win1.41 00942174 mac 109c38d0 GScript::`vftable'
extern const struct BaseVftable __vt__7GScript asm("??_7GScript@@6B@");

// Static methods

// win1.41 006eb100 mac 104d8610 GScript::Create(void)
struct GScript* __cdecl Create__7GScriptFv(struct GScript* this) asm("?Create@GScript@@QAEPAV1@XZ");
// win1.41 006eb710 mac 104d7e50 GScript::StartScript(char *)
int __stdcall StartScript__7GScriptFPc(char* name);
// win1.41 0070b220 mac 104fcda0 GScript::SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL)
void __cdecl SetInterfaceInteraction__7GScriptF22SCRIPT_INTERFACE_LEVEL(enum SCRIPT_INTERFACE_LEVEL level) asm("?SetInterfaceInteraction@GScript@@SAXW4SCRIPT_INTERFACE_LEVEL@@@Z");
// win1.41 0070d360 mac 10500750 GScript::DeleteAllScriptCreatedGameThings(void)
void __cdecl DeleteAllScriptCreatedGameThings__7GScriptFv(void) asm("?DeleteAllScriptCreatedGameThings@GScript@@SAXXZ");

// Non-virtual methods

// win1.41 006eb2d0 mac 104d8160 GScript::Reset(int)
void __fastcall Reset__7GScriptFi(struct GScript* this, const void* edx, int param_2) asm("?Reset@GScript@@QAEXH@Z");
// win1.41 006eb610 mac 104d8070 GScript::LoadBinary(char *)
void __fastcall LoadBinary__7GScriptFPc(struct GScript* this, const void* edx, char* binary) asm("?LoadBinary@GScript@@QAEXPAD@Z");
// win1.41 006eb6b0 mac 1007ef10 GScript::Process(void)
void __fastcall Process__7GScriptFv(struct GScript* this) asm("?Process@GScript@@QAEXXZ");
// win1.41 006eb9d0 mac 10082240 GScript::ProcessFade(bool)
void __fastcall ProcessFade__7GScriptFb(struct GScript* this, const void* edx, bool param_1) asm("?ProcessFade@GScript@@QAEX_N@Z");
// win1.41 006eba90 mac 104d7670 GScript::SetupScreenFadeTo(uchar,uchar,uchar,char)
void __fastcall SetupScreenFadeTo__7GScriptFUcUcUcSc(struct GScript* this, const void* edx, uint8_t r, uint8_t g, uint8_t b, int8_t a) asm("?SetupScreenFadeTo@GScript@@QAEXEEEC@Z");
// win1.41 006ebbc0 mac 104d7300 GScript::CleanGameForScriptReboot(void)
void __fastcall CleanGameForScriptReboot__7GScriptFv(struct GScript* this) asm("?CleanGameForScriptReboot@GScript@@QAEXXZ");
// win1.41 006ec790 mac 104d6160 GScript::PUSH(void *, VMType)
void __fastcall PUSH__7GScriptFPv6VMType(struct GScript* this, const void* edx, void* param_1, enum VMType param_2) asm("?PUSH@GScript@@QAEXPAXW4VMType@@@Z");
// win1.41 006f0cc0 mac 104def10 GScript::StopScriptsOfType(VMScriptType)
void __fastcall StopScriptsOfType__7GScriptF12VMScriptType(struct GScript* this, const void* edx, enum VMScriptType param_1) asm("?StopScriptsOfType@GScript@@QAEXW4VMScriptType@@@Z");
// win1.41 006f62b0 mac 104e7c70 GScript::ScriptErrorMessage(char*)
void __fastcall ScriptErrorMessage__7GScriptFPc(struct GScript* this, const void* edx, char* msg) asm("?ScriptErrorMessage@GScript@@QAEXPAD@Z");
// win1.41 006f62c0 mac 100054c0 GScript::ScriptWarningMessage(char*)
void __fastcall ScriptWarningMessage__7GScriptFPc(struct GScript* this, const void* edx, char* msg) asm("?ScriptWarningMessage@GScript@@QAEXPAD@Z");
// win1.41 006f7410 mac 104ea250 GScript::FindInTown(GameThingWithPos*, int (*)(GameThingWithPos *, SCRIPT_OBJECT_TYPE, ulong), SCRIPT_OBJECT_TYPE, ulong)
struct Abode* __fastcall FindInTown__7GScriptFP16GameThingWithPosPFP16GameThingWithPos18SCRIPT_OBJECT_TYPEUl_i18SCRIPT_OBJECT_TYPEUl(struct GScript* this, const void* edx, struct GameThingWithPos* param_1, int (__cdecl* param_2)(struct GameThingWithPos * param_1, enum SCRIPT_OBJECT_TYPE param_2, uint32_t param_3), enum SCRIPT_OBJECT_TYPE param_3, uint32_t param_4) asm("?FindInTown@GScript@@QAEPAVAbode@@PAVGameThingWithPos@@P6AH0W4SCRIPT_OBJECT_TYPE@@I@Z1I@Z");

// Override methods

// win1.41 006eb150 mac 104d7b60 GScript::_dt(void)
void __fastcall __dt__7GScriptFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGScript@@UAEPAXI@Z");

struct GScriptOpposingCreature
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GScriptOpposingCreature) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c0cde0 mac inlined GScriptOpposingCreature::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23GScriptOpposingCreature asm("??_R0?AVGScriptOpposingCreature@@@8");
// win1.41 009b8e58 mac inlined GScriptOpposingCreature::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23GScriptOpposingCreature asm("??_R1A@?0A@A@GScriptOpposingCreature@@8");
// win1.41 009b8e70 mac inlined GScriptOpposingCreature::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23GScriptOpposingCreature asm("??_R2GScriptOpposingCreature@@8");
// win1.41 009b8e80 mac inlined GScriptOpposingCreature::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23GScriptOpposingCreature asm("??_R3GScriptOpposingCreature@@8");

// Override methods

// win1.41 006f3770 mac 104e3ad0 GScriptOpposingCreature::_dt(void)
void __fastcall __dt__23GScriptOpposingCreatureFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGScriptOpposingCreature@@UAEPAXI@Z");
// win1.41 006f3710 mac 104e7b10 GScriptOpposingCreature::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__23GScriptOpposingCreatureFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GScriptOpposingCreature@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SCRIPT_INCLUDED_H */
