#ifndef BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H
#define BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct Base;
struct GameOSFile;
struct GameThing;

struct ScriptMarker
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct ScriptMarker) == 0x28, "Data type is of wrong size");

// win1.41 008e10ac mac 109c17cc ScriptMarker::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12ScriptMarker asm("??_R4ScriptMarker@@6B@");

// win1.41 008e10b0 mac 106fa474 ScriptMarker::`vftable'
extern const struct GameThingWithPosVftable __vt__12ScriptMarker asm("??_7ScriptMarker@@6B@");

// Override methods

// win1.41 00561070 mac 10501430 ScriptMarker::_dt(void)
void __fastcall __dt__12ScriptMarkerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GScriptMarker@@UAEPAXI@Z");
// win1.41 0070d970 mac 10501740 ScriptMarker::ToBeDeleted(int)
void __fastcall ToBeDeleted__12ScriptMarkerFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@ScriptMarker@@UAEXH@Z");
// win1.41 00561060 mac 10501620 ScriptMarker::GetDebugText(void)
char* __fastcall GetDebugText__12ScriptMarkerFv(struct GameThing* this) asm("?GetDebugText@ScriptMarker@@UAEPADXZ");
// win1.41 0070d9f0 mac 10501660 ScriptMarker::Load(GameOSFile &)
uint32_t __fastcall Load__12ScriptMarkerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ScriptMarker@@UAEIAAVGameOSFile@@@Z");
// win1.41 0070d9d0 mac 105016d0 ScriptMarker::Save(GameOSFile &)
uint32_t __fastcall Save__12ScriptMarkerFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ScriptMarker@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561050 mac 105015e0 ScriptMarker::GetSaveType(void)
uint32_t __fastcall GetSaveType__12ScriptMarkerFv(struct GameThing* this) asm("?GetSaveType@ScriptMarker@@UAEIXZ");
// win1.41 00561030 mac 10501550 ScriptMarker::PhysicsEditorCreate(int)
void __fastcall PhysicsEditorCreate__12ScriptMarkerFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?PhysicsEditorCreate@ScriptMarker@@UAEXH@Z");
// win1.41 00561040 mac 10501590 ScriptMarker::IsDeletedWhenReleasedFromScript(void)
uint32_t __fastcall IsDeletedWhenReleasedFromScript__12ScriptMarkerFv(struct GameThingWithPos* this) asm("?IsDeletedWhenReleasedFromScript@ScriptMarker@@UAEIXZ");
// win1.41 00561010 mac 105014d0 ScriptMarker::GetText(void)
const char* __fastcall GetText__12ScriptMarkerFv(struct GameThingWithPos* this) asm("?GetText@ScriptMarker@@UAEPBDXZ");
// win1.41 00561020 mac 10501510 ScriptMarker::IsScriptMarker(void)
uint32_t __fastcall IsScriptMarker__12ScriptMarkerFv(struct GameThingWithPos* this) asm("?IsScriptMarker@ScriptMarker@@UAEIXZ");
// win1.41 0070d960 mac 10501850 ScriptMarker::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__12ScriptMarkerFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@ScriptMarker@@UAEIXZ");

#endif /* BW1_DECOMP_SCRIPT_MARKER_INCLUDED_H */
