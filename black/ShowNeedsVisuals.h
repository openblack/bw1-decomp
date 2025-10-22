#ifndef BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct GPlayer;
struct GShowNeedsInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct MapCoords;

struct ShowNeedsVisuals
{
  struct Object super;  /* 0x0 */
  int field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
  struct GameThing* game_thing;  /* 0x60 */
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
  uint32_t field_0x70;
  uint32_t field_0x74;
  uint32_t field_0x78;
  uint32_t field_0x7c;
  uint32_t field_0x80;
  uint32_t field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
  uint32_t field_0x90;
};
static_assert(sizeof(struct ShowNeedsVisuals) == 0x94, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009d9678 mac inlined ShowNeedsVisuals::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16ShowNeedsVisuals asm("??_R0?AVShowNeedsVisuals@@@8");
// win1.41 009ae6d0 mac inlined ShowNeedsVisuals::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16ShowNeedsVisuals asm("??_R1A@?0A@A@ShowNeedsVisuals@@8");
// win1.41 009ae6e8 mac inlined ShowNeedsVisuals::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16ShowNeedsVisuals asm("??_R2ShowNeedsVisuals@@8");
// win1.41 009ae700 mac inlined ShowNeedsVisuals::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16ShowNeedsVisuals asm("??_R3ShowNeedsVisuals@@8");
// win1.41 008ecaa8 mac 1075acf0 ShowNeedsVisuals::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16ShowNeedsVisuals asm("??_R4ShowNeedsVisuals@@6B@");
// win1.41 008ecaac mac 1075acf8 ShowNeedsVisuals::`vftable'
extern const struct ObjectVftable __vt__16ShowNeedsVisuals asm("??_7ShowNeedsVisuals@@6B@");

// Constructors

// win1.41 00719d60 mac 10145700 ShowNeedsVisuals::ShowNeedsVisuals(const MapCoords&, GameThing*, const GShowNeedsInfo *)
struct ShowNeedsVisuals* __fastcall __ct__16ShowNeedsVisualsFRC9MapCoordsP9GameThingPC14GShowNeedsInfo(struct ShowNeedsVisuals* this, const void* edx, struct MapCoords* coords, struct GameThing* game_thing, struct GShowNeedsInfo* info) asm("??0ShowNeedsVisuals@@QAE@ABUMapCoords@@PAVGameThing@@PBVGShowNeedsInfo@@@Z");

// Override methods

// win1.41 0055ddd0 mac 10144860 ShowNeedsVisuals::_dt(void)
void __fastcall __dt__16ShowNeedsVisualsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GShowNeedsVisuals@@UAEPAXI@Z");
// win1.41 00719dd0 mac 10145660 ShowNeedsVisuals::ToBeDeleted(int)
void __fastcall ToBeDeleted__16ShowNeedsVisualsFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@ShowNeedsVisuals@@UAEXH@Z");
// win1.41 0071a1b0 mac 10144f70 ShowNeedsVisuals::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__16ShowNeedsVisualsFv(struct GameThing* this) asm("?GetPlayer@ShowNeedsVisuals@@UAEPAVGPlayer@@XZ");
// win1.41 0055ddc0 mac 10144af0 ShowNeedsVisuals::GetDebugText(void)
char* __fastcall GetDebugText__16ShowNeedsVisualsFv(struct GameThing* this) asm("?GetDebugText@ShowNeedsVisuals@@UAEPADXZ");
// win1.41 0071a320 mac 10144bb0 ShowNeedsVisuals::Load(GameOSFile &)
uint32_t __fastcall Load__16ShowNeedsVisualsFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ShowNeedsVisuals@@UAEIAAVGameOSFile@@@Z");
// win1.41 0071a230 mac 10144d30 ShowNeedsVisuals::Save(GameOSFile &)
uint32_t __fastcall Save__16ShowNeedsVisualsFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ShowNeedsVisuals@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055ddb0 mac 10144ab0 ShowNeedsVisuals::GetSaveType(void)
uint32_t __fastcall GetSaveType__16ShowNeedsVisualsFv(struct GameThing* this) asm("?GetSaveType@ShowNeedsVisuals@@UAEIXZ");
// win1.41 0071a410 mac 10144b40 ShowNeedsVisuals::ResolveLoad(void)
void __fastcall ResolveLoad__16ShowNeedsVisualsFv(struct GameThing* this) asm("?ResolveLoad@ShowNeedsVisuals@@UAEXXZ");
// win1.41 0055dd80 mac 101449e0 ShowNeedsVisuals::GetScale(void)
float __fastcall GetScale__16ShowNeedsVisualsFv(struct GameThingWithPos* this) asm("?GetScale@ShowNeedsVisuals@@UAEMXZ");
// win1.41 0055dd70 mac 101449a0 ShowNeedsVisuals::SetScale(float)
void __fastcall SetScale__16ShowNeedsVisualsFf(struct GameThingWithPos* this, const void* edx, float param_1) asm("?SetScale@ShowNeedsVisuals@@UAEXM@Z");
// win1.41 0055dd90 mac 10144a20 ShowNeedsVisuals::GetText(void)
const char* __fastcall GetText__16ShowNeedsVisualsFv(struct GameThingWithPos* this) asm("?GetText@ShowNeedsVisuals@@UAEPBDXZ");
// win1.41 0055dd60 mac 101448f0 ShowNeedsVisuals::GetMesh( const(void))
int __fastcall GetMesh__16ShowNeedsVisualsCFv(const struct Object* this) asm("?GetMesh@ShowNeedsVisuals@@UBEHXZ");
// win1.41 00719e00 mac 10145510 ShowNeedsVisuals::CallVirtualFunctionsForCreation(const MapCoords &)
void __fastcall CallVirtualFunctionsForCreation__16ShowNeedsVisualsFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@ShowNeedsVisuals@@UAEXABUMapCoords@@@Z");
// win1.41 0055dda0 mac 10144a60 ShowNeedsVisuals::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__16ShowNeedsVisualsFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@ShowNeedsVisuals@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

#endif /* BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H */
