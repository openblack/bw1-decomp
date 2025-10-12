#ifndef BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H
#define BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct ScriptTimer
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct ScriptTimer) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bece00 mac inlined ScriptTimer::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11ScriptTimer asm("??_R0?AVScriptTimer@@@8");
// win1.41 009ae3b8 mac inlined ScriptTimer::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11ScriptTimer asm("??_R1A@?0A@A@ScriptTimer@@8");
// win1.41 009ae3d0 mac inlined ScriptTimer::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11ScriptTimer asm("??_R2ScriptTimer@@8");
// win1.41 009ae3e8 mac inlined ScriptTimer::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11ScriptTimer asm("??_R3ScriptTimer@@8");

// Override methods

// win1.41 00561330 mac 10506140 ScriptTimer::_dt(void)
void __fastcall __dt__11ScriptTimerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GScriptTimer@@UAEPAXI@Z");
// win1.41 00561320 mac 10506350 ScriptTimer::GetDebugText(void)
char* __fastcall GetDebugText__11ScriptTimerFv(struct GameThing* this) asm("?GetDebugText@ScriptTimer@@UAEPADXZ");
// win1.41 007117b0 mac 10506390 ScriptTimer::Load(GameOSFile &)
uint32_t __fastcall Load__11ScriptTimerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ScriptTimer@@UAEIAAVGameOSFile@@@Z");
// win1.41 00711700 mac 105064b0 ScriptTimer::Save(GameOSFile &)
uint32_t __fastcall Save__11ScriptTimerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ScriptTimer@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561310 mac 10506310 ScriptTimer::GetSaveType(void)
uint32_t __fastcall GetSaveType__11ScriptTimerFv(struct GameThing* this) asm("?GetSaveType@ScriptTimer@@UAEIXZ");
// win1.41 00561300 mac 105062c0 ScriptTimer::IsDeletedWhenReleasedFromScript(void)
uint32_t __fastcall IsDeletedWhenReleasedFromScript__11ScriptTimerFv(struct GameThingWithPos* this) asm("?IsDeletedWhenReleasedFromScript@ScriptTimer@@UAEIXZ");
// win1.41 005612e0 mac 105061e0 ScriptTimer::GetText(void)
const char* __fastcall GetText__11ScriptTimerFv(struct GameThingWithPos* this) asm("?GetText@ScriptTimer@@UAEPBDXZ");
// win1.41 005612f0 mac 1002b150 ScriptTimer::IsScriptTimer(void)
uint32_t __fastcall IsScriptTimer__11ScriptTimerFv(struct GameThingWithPos* this) asm("?IsScriptTimer@ScriptTimer@@UAEIXZ");
// win1.41 00711600 mac 10506a30 ScriptTimer::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__11ScriptTimerFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@ScriptTimer@@UAEIXZ");

#endif /* BW1_DECOMP_SCRIPT_TIMER_INCLUDED_H */
