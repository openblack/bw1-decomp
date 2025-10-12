#ifndef BW1_DECOMP_WONDER_INCLUDED_H
#define BW1_DECOMP_WONDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct Base;
struct Creature;
struct GAbodeInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct Town;

struct Wonder
{
  struct Abode super;  /* 0x0 */
  float power;  /* 0xc4 */
};
static_assert(sizeof(struct Wonder) == 0xc8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bece20 mac inlined Wonder::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6Wonder asm("??_R0?AVWonder@@@8");
// win1.41 009ae410 mac inlined Wonder::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Wonder asm("??_R1A@?0A@A@Wonder@@8");
// win1.41 009ae428 mac inlined Wonder::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6Wonder asm("??_R2Wonder@@8");
// win1.41 009ae450 mac inlined Wonder::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6Wonder asm("??_R3Wonder@@8");
// win1.41 008df968 mac 107605fc Wonder::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6Wonder asm("??_R4Wonder@@6B@");
// win1.41 008df96c mac 10760604 Wonder::`vftable'
extern const struct MultiMapFixedVftable __vt__6Wonder asm("??_7Wonder@@6B@");

// Static methods

// win1.41 00778e80 mac 101619e0 Wonder::Create(const MapCoords&, const GAbodeInfo*, Town*, float, float, float, int)
struct Wonder* __cdecl Create__6WonderFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood) asm("?Create@Wonder@@SAPAV1@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");

// Constructors

// win1.41 00778e00 mac 10161c40 Wonder::Wonder(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct Wonder* __fastcall __ct__6WonderFRC9MapCoordsPC10GAbodeInfoP4Townfffi(struct Wonder* this, const void* edx, const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood) asm("??0Wonder@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");

// Non-virtual methods

// win1.41 00779060 mac inlined Wonder::SetZero(void)
void __fastcall SetZero__6WonderFv(struct Wonder* this) asm("?SetZero@Wonder@@QAEXXZ");

// Override methods

// win1.41 00561220 mac 10161090 Wonder::_dt(void)
void __fastcall __dt__6WonderFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWonder@@UAEPAXI@Z");
// win1.41 00778e40 mac 10161bc0 Wonder::ToBeDeleted(int)
void __fastcall ToBeDeleted__6WonderFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Wonder@@UAEXH@Z");
// win1.41 00561210 mac 101612d0 Wonder::GetDebugText(void)
char* __fastcall GetDebugText__6WonderFv(struct GameThing* this) asm("?GetDebugText@Wonder@@UAEPADXZ");
// win1.41 007790f0 mac 10161470 Wonder::Load(GameOSFile &)
uint32_t __fastcall Load__6WonderFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Wonder@@UAEIAAVGameOSFile@@@Z");
// win1.41 00779080 mac 10161540 Wonder::Save(GameOSFile &)
uint32_t __fastcall Save__6WonderFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Wonder@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561200 mac 10161290 Wonder::GetSaveType(void)
uint32_t __fastcall GetSaveType__6WonderFv(struct GameThing* this) asm("?GetSaveType@Wonder@@UAEIXZ");
// win1.41 005611b0 mac inlined Wonder::GetArrivePos(MapCoords *)
struct MapCoords* __fastcall GetArrivePos__6WonderFP9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetArrivePos@Wonder@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 005611e0 mac 10161200 Wonder::CanActAsAContainer(Creature *)
uint32_t __fastcall CanActAsAContainer__6WonderFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanActAsAContainer@Wonder@@UAEIPAVCreature@@@Z");
// win1.41 005611f0 mac 10161250 Wonder::IsStoragePit(Creature *)
uint32_t __fastcall IsStoragePit__6WonderFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStoragePit@Wonder@@UAEIPAVCreature@@@Z");
// win1.41 00779160 mac 101613c0 Wonder::CallVirtualFunctionsForCreation(const MapCoords&)
void __fastcall CallVirtualFunctionsForCreation__6WonderFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@Wonder@@UAEXABUMapCoords@@@Z");
// win1.41 00779190 mac 10161310 Wonder::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__6WonderFv(struct Object* this) asm("?Get3DType@Wonder@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 00778f30 mac 10161920 Wonder::Built(void)
bool __fastcall Built__6WonderFv(struct MultiMapFixed* this) asm("?Built@Wonder@@UAE_NXZ");
// win1.41 00779070 mac 10161620 Wonder::SetPower(float)
void __fastcall SetPower__6WonderFf(struct MultiMapFixed* this, const void* edx, float param_1) asm("?SetPower@Wonder@@UAEXM@Z");
// win1.41 00778fc0 mac 10161700 Wonder::AddToPlayer(void)
void __fastcall AddToPlayer__6WonderFv(struct MultiMapFixed* this) asm("?AddToPlayer@Wonder@@UAEXXZ");
// win1.41 00778f50 mac 10161810 Wonder::RemoveFromPlayer(void)
void __fastcall RemoveFromPlayer__6WonderFv(struct MultiMapFixed* this) asm("?RemoveFromPlayer@Wonder@@UAEXXZ");

#endif /* BW1_DECOMP_WONDER_INCLUDED_H */
