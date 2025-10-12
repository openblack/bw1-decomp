#ifndef BW1_DECOMP_GRAVEYARD_INCLUDED_H
#define BW1_DECOMP_GRAVEYARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct Base;
struct Creature;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct Object;

struct Graveyard
{
  struct Abode super;  /* 0x0 */
};
static_assert(sizeof(struct Graveyard) == 0xc4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becde8 mac inlined Graveyard::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9Graveyard asm("??_R0?AVGraveyard@@@8");
// win1.41 009ae350 mac inlined Graveyard::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9Graveyard asm("??_R1A@?0A@A@Graveyard@@8");
// win1.41 009ae368 mac inlined Graveyard::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9Graveyard asm("??_R2Graveyard@@8");
// win1.41 009ae390 mac inlined Graveyard::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9Graveyard asm("??_R3Graveyard@@8");

// Override methods

// win1.41 0055e010 mac 100f42d0 Graveyard::_dt(void)
void __fastcall __dt__9GraveyardFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGraveyard@@UAEPAXI@Z");
// win1.41 00595cb0 mac 100f4db0 Graveyard::ToBeDeleted(int)
void __fastcall ToBeDeleted__9GraveyardFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Graveyard@@UAEXH@Z");
// win1.41 0055e000 mac 100f4550 Graveyard::GetDebugText(void)
char* __fastcall GetDebugText__9GraveyardFv(struct GameThing* this) asm("?GetDebugText@Graveyard@@UAEPADXZ");
// win1.41 00595f50 mac 100f4590 Graveyard::Load(GameOSFile &)
uint32_t __fastcall Load__9GraveyardFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Graveyard@@UAEIAAVGameOSFile@@@Z");
// win1.41 00595ee0 mac 100f4670 Graveyard::Save(GameOSFile &)
uint32_t __fastcall Save__9GraveyardFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Graveyard@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055dff0 mac 100f4510 Graveyard::GetSaveType(void)
uint32_t __fastcall GetSaveType__9GraveyardFv(struct GameThing* this) asm("?GetSaveType@Graveyard@@UAEIXZ");
// win1.41 0055df90 mac inlined Graveyard::GetArrivePos(MapCoords *)
struct MapCoords* __fastcall GetArrivePos__9GraveyardFP9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetArrivePos@Graveyard@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0055dfd0 mac 100f4480 Graveyard::CanActAsAContainer(Creature *)
uint32_t __fastcall CanActAsAContainer__9GraveyardFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanActAsAContainer@Graveyard@@UAEIPAVCreature@@@Z");
// win1.41 0055dfe0 mac 100f44d0 Graveyard::IsStoragePit(Creature *)
uint32_t __fastcall IsStoragePit__9GraveyardFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStoragePit@Graveyard@@UAEIPAVCreature@@@Z");
// win1.41 00595dd0 mac 100f4a40 Graveyard::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__9GraveyardFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Graveyard@@UAEXABUMapCoords@@@Z");
// win1.41 0055dfb0 mac 100f4400 Graveyard::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__9GraveyardFv(struct Object* this) asm("?Get3DType@Graveyard@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 00595cd0 mac 100f4d60 Graveyard::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__9GraveyardFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Graveyard@@UAE_NXZ");
// win1.41 00595ce0 mac 100f4c10 Graveyard::DeleteDependancys(void)
void __fastcall DeleteDependancys__9GraveyardFv(struct Abode* this) asm("?DeleteDependancys@Graveyard@@UAEXXZ");
// win1.41 00595e00 mac 100f4870 Graveyard::MakeFunctional(void)
void __fastcall MakeFunctional__9GraveyardFv(struct Abode* this) asm("?MakeFunctional@Graveyard@@UAEXXZ");
// win1.41 0055dfc0 mac 100f4440 Graveyard::CanBeHiddenIn(void)
bool __fastcall CanBeHiddenIn__9GraveyardFv(struct Abode* this) asm("?CanBeHiddenIn@Graveyard@@UAE_NXZ");

#endif /* BW1_DECOMP_GRAVEYARD_INCLUDED_H */
