#ifndef BW1_DECOMP_SHOW_NEEDS_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct Base;
struct GPlayer;
struct GameOSFile;
struct GameThingWithPos;
struct MapCoords;
struct ShowNeedsVisuals;

struct ShowNeeds
{
  struct GameThing super;  /* 0x0 */
  struct GameThingWithPos* thing;  /* 0x14 */
  struct ShowNeedsVisuals* visuals[0x3];
};
static_assert(sizeof(struct ShowNeeds) == 0x24, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd580 mac inlined ShowNeeds::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9ShowNeeds asm("??_R0?AVShowNeeds@@@8");
// win1.41 009ae478 mac inlined ShowNeeds::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9ShowNeeds asm("??_R1A@?0A@A@ShowNeeds@@8");
// win1.41 009ae490 mac inlined ShowNeeds::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9ShowNeeds asm("??_R2ShowNeeds@@8");
// win1.41 009ae4a0 mac inlined ShowNeeds::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9ShowNeeds asm("??_R3ShowNeeds@@8");
// win1.41 008ec9a8 mac 1075b608 ShowNeeds::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9ShowNeeds asm("??_R4ShowNeeds@@6B@");
// win1.41 008ec9ac mac 1075b610 ShowNeeds::`vftable'
extern const struct GameThingVftable __vt__9ShowNeeds asm("??_7ShowNeeds@@6B@");

// Static methods

// win1.41 00719b60 mac 10145cd0 ShowNeeds::Create(GameThingWithPos *)
struct ShowNeeds* __cdecl Create__9ShowNeedsFP16GameThingWithPos(struct GameThingWithPos* game_thing) asm("?Create@ShowNeeds@@SAPAV1@PAVGameThingWithPos@@@Z");

// Constructors

// win1.41 00719ab0 mac 10145e60 ShowNeeds::ShowNeeds(GameThingWithPos *)
struct ShowNeeds* __fastcall __ct__9ShowNeedsFP16GameThingWithPos(struct ShowNeeds* this, const void* edx, struct GameThingWithPos* game_thing) asm("??0ShowNeeds@@QAE@PAVGameThingWithPos@@@Z");

// Override methods

// win1.41 0055dd40 mac 101462a0 ShowNeeds::_dt(void)
void __fastcall __dt__9ShowNeedsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GShowNeeds@@UAEPAXI@Z");
// win1.41 00719b20 mac 10145da0 ShowNeeds::ToBeDeleted(int)
void __fastcall ToBeDeleted__9ShowNeedsFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@ShowNeeds@@UAEXH@Z");
// win1.41 00719c30 mac 10145a10 ShowNeeds::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9ShowNeedsFv(struct GameThing* this) asm("?GetPlayer@ShowNeeds@@UAEPAVGPlayer@@XZ");
// win1.41 0055dd30 mac 10146370 ShowNeeds::GetDebugText(void)
char* __fastcall GetDebugText__9ShowNeedsFv(struct GameThing* this) asm("?GetDebugText@ShowNeeds@@UAEPADXZ");
// win1.41 00719d30 mac 10145850 ShowNeeds::GetShowNeedsPos(unsigned long, MapCoords *)
uint32_t __fastcall GetShowNeedsPos__9ShowNeedsFUlP9MapCoords(struct GameThing* this, const void* edx, uint32_t param_1, struct MapCoords* param_2) asm("?GetShowNeedsPos@ShowNeeds@@UAEIIPAUMapCoords@@@Z");
// win1.41 00719cf0 mac 101458d0 ShowNeeds::Load(GameOSFile &)
uint32_t __fastcall Load__9ShowNeedsFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ShowNeeds@@UAEIAAVGameOSFile@@@Z");
// win1.41 00719cb0 mac 10145970 ShowNeeds::Save(GameOSFile &)
uint32_t __fastcall Save__9ShowNeedsFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ShowNeeds@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055dd20 mac 10146330 ShowNeeds::GetSaveType(void)
uint32_t __fastcall GetSaveType__9ShowNeedsFv(struct GameThing* this) asm("?GetSaveType@ShowNeeds@@UAEIXZ");

#endif /* BW1_DECOMP_SHOW_NEEDS_INCLUDED_H */
