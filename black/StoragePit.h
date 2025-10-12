#ifndef BW1_DECOMP_STORAGE_PIT_INCLUDED_H
#define BW1_DECOMP_STORAGE_PIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PhysicsObject;
struct PileFood;
struct PileResource;
struct PileWood;
struct PotStructure;
struct Villager;

struct StoragePit
{
  struct Abode super;  /* 0x0 */
  struct PileFood* pile_food;  /* 0xc4 */
  struct PileWood* pile_wood;
  struct PileResource* field_0xcc;
  struct PileResource* field_0xd0;
  struct PileResource* field_0xd4;
  struct PileResource* field_0xd8;
};
static_assert(sizeof(struct StoragePit) == 0xdc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8ec8 mac inlined StoragePit::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10StoragePit asm("??_R0?AVStoragePit@@@8");
// win1.41 009ad7b8 mac inlined StoragePit::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10StoragePit asm("??_R1A@?0A@A@StoragePit@@8");
// win1.41 009ad7d0 mac inlined StoragePit::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10StoragePit asm("??_R2StoragePit@@8");
// win1.41 009ad7f8 mac inlined StoragePit::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10StoragePit asm("??_R3StoragePit@@8");
// win1.41 008f702c mac 10747800 StoragePit::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10StoragePit asm("??_R4StoragePit@@6B@");
// win1.41 008f7030 mac 106f604c StoragePit::`vftable'
extern const struct MultiMapFixedVftable __vt__10StoragePit asm("??_7StoragePit@@6B@");

// Override methods

// win1.41 0055cd50 mac 10153360 StoragePit::_dt(void)
void __fastcall __dt__10StoragePitFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GStoragePit@@UAEPAXI@Z");
// win1.41 00732c10 mac 101532f0 StoragePit::Delete(void)
void __fastcall Delete__10StoragePitFv(struct Base* this) asm("?Delete@StoragePit@@UAEXXZ");
// win1.41 00732c30 mac 101531a0 StoragePit::ToBeDeleted(int)
void __fastcall ToBeDeleted__10StoragePitFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@StoragePit@@UAEXH@Z");
// win1.41 00732f60 mac 10003d60 StoragePit::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__10StoragePitF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@StoragePit@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 007332a0 mac 10152550 StoragePit::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__10StoragePitF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@StoragePit@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 0055cd40 mac 101515a0 StoragePit::GetDebugText(void)
char* __fastcall GetDebugText__10StoragePitFv(struct GameThing* this) asm("?GetDebugText@StoragePit@@UAEPADXZ");
// win1.41 00733920 mac 10151890 StoragePit::Load(GameOSFile &)
uint32_t __fastcall Load__10StoragePitFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@StoragePit@@UAEIAAVGameOSFile@@@Z");
// win1.41 007338d0 mac 10151930 StoragePit::Save(GameOSFile &)
uint32_t __fastcall Save__10StoragePitFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@StoragePit@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055cd30 mac 10151560 StoragePit::GetSaveType(void)
uint32_t __fastcall GetSaveType__10StoragePitFv(struct GameThing* this) asm("?GetSaveType@StoragePit@@UAEIXZ");
// win1.41 0055ccb0 mac inlined StoragePit::GetArrivePos(MapCoords *)
struct MapCoords* __fastcall GetArrivePos__10StoragePitFP9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetArrivePos@StoragePit@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0055ccf0 mac 10151430 StoragePit::IsCastShadowAtNight(void)
uint32_t __fastcall IsCastShadowAtNight__10StoragePitFv(struct GameThingWithPos* this) asm("?IsCastShadowAtNight@StoragePit@@UAEIXZ");
// win1.41 0055cd10 mac 101514c0 StoragePit::CanBeEatenByCreature(Creature *)
uint32_t __fastcall CanBeEatenByCreature__10StoragePitFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeEatenByCreature@StoragePit@@UAEIPAVCreature@@@Z");
// win1.41 0055cd00 mac 10151470 StoragePit::CanActAsAContainer(Creature *)
uint32_t __fastcall CanActAsAContainer__10StoragePitFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanActAsAContainer@StoragePit@@UAEIPAVCreature@@@Z");
// win1.41 004e4b50 mac 105e4020 StoragePit::CanHaveMagicFoodCastOnMe(Creature *)
uint32_t __fastcall CanHaveMagicFoodCastOnMe__10StoragePitFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanHaveMagicFoodCastOnMe@StoragePit@@UAEIPAVCreature@@@Z");
// win1.41 004e4b70 mac 105e3f50 StoragePit::CanHaveMagicWoodCastOnMe(Creature *)
uint32_t __fastcall CanHaveMagicWoodCastOnMe__10StoragePitFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanHaveMagicWoodCastOnMe@StoragePit@@UAEIPAVCreature@@@Z");
// win1.41 004e4990 mac 105e4670 StoragePit::IsStoragePit(Creature *)
uint32_t __fastcall IsStoragePit__10StoragePitFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStoragePit@StoragePit@@UAEIPAVCreature@@@Z");
// win1.41 004e4d90 mac 105e3860 StoragePit::IsStoragePitWithFoodInIt(Creature *)
uint32_t __fastcall IsStoragePitWithFoodInIt__10StoragePitFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStoragePitWithFoodInIt@StoragePit@@UAEIPAVCreature@@@Z");
// win1.41 004e49a0 mac 105e4580 StoragePit::IsStoragePitBelongingToAnotherPlayer(Creature *)
uint32_t __fastcall IsStoragePitBelongingToAnotherPlayer__10StoragePitFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStoragePitBelongingToAnotherPlayer@StoragePit@@UAEIPAVCreature@@@Z");
// win1.41 004e49e0 mac 105e44a0 StoragePit::IsStoragePitBelongingToMyPlayer(Creature *)
uint32_t __fastcall IsStoragePitBelongingToMyPlayer__10StoragePitFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStoragePitBelongingToMyPlayer@StoragePit@@UAEIPAVCreature@@@Z");
// win1.41 007336b0 mac 10151ed0 StoragePit::IsPoisoned(void)
uint32_t __fastcall IsPoisoned__10StoragePitFv(struct GameThingWithPos* this) asm("?IsPoisoned@StoragePit@@UAEIXZ");
// win1.41 00519350 mac 1001a950 StoragePit::Draw(void)
void __fastcall Draw__10StoragePitFv(struct Object* this) asm("?Draw@StoragePit@@UAEXXZ");
// win1.41 00733a20 mac 101515e0 StoragePit::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__10StoragePitFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2) asm("?GetDiscipleStateIfInteractedWith@StoragePit@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 00732e80 mac 10152d50 StoragePit::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__10StoragePitFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@StoragePit@@UAEXABUMapCoords@@@Z");
// win1.41 0055ccd0 mac 101513a0 StoragePit::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__10StoragePitFv(struct Object* this) asm("?Get3DType@StoragePit@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 0055cd20 mac 10151510 StoragePit::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__10StoragePitF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?IsResourceStore@StoragePit@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 00733750 mac 10151c60 StoragePit::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool __fastcall DeleteObjectAndTakeResource__10StoragePitFP6ObjectP16GInterfaceStatus(struct Object* this, const void* edx, struct Object* param_1, struct GInterfaceStatus* param_2) asm("?DeleteObjectAndTakeResource@StoragePit@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z");
// win1.41 00733810 mac 101519d0 StoragePit::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
bool __fastcall DoCreatureMimicAfterAddingResource__10StoragePitF13RESOURCE_TYPER16GInterfaceStatus(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1, struct GInterfaceStatus* param_2) asm("?DoCreatureMimicAfterAddingResource@StoragePit@@UAE_NW4RESOURCE_TYPE@@AAVGInterfaceStatus@@@Z");
// win1.41 007335f0 mac 10151f80 StoragePit::SetPoisonedResource(RESOURCE_TYPE, int)
void __fastcall SetPoisonedResource__10StoragePitF13RESOURCE_TYPEi(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1, int param_2) asm("?SetPoisonedResource@StoragePit@@UAEXW4RESOURCE_TYPE@@H@Z");
// win1.41 007335d0 mac 10152110 StoragePit::SetPoisoned(int)
void __fastcall SetPoisoned__10StoragePitFi(struct Object* this, const void* edx, int param_1) asm("?SetPoisoned@StoragePit@@UAEXH@Z");
// win1.41 00733730 mac 10151d80 StoragePit::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__10StoragePitFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@StoragePit@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00733550 mac inlined StoragePit::IsPoisonedResource(void)
bool __fastcall IsPoisonedResource__10StoragePitFv(struct MultiMapFixed* this) asm("?IsPoisonedResource@StoragePit@@UAE_NXZ");
// win1.41 00733400 mac 10002840 StoragePit::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
struct MapCoords* __fastcall GetResourceNearestEdge__10StoragePitF13RESOURCE_TYPEP6Objecti(struct MultiMapFixed* this, const void* edx, struct MapCoords* param_1, enum RESOURCE_TYPE param_2, struct Object* param_3, int param_4) asm("?GetResourceNearestEdge@StoragePit@@UAEPAUMapCoords@@PAU2@W4RESOURCE_TYPE@@PAVObject@@H@Z");
// win1.41 00733260 mac 101526e0 StoragePit::CalulateAmountOverMaximum(RESOURCE_TYPE)
int __fastcall CalulateAmountOverMaximum__10StoragePitF13RESOURCE_TYPE(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?CalulateAmountOverMaximum@StoragePit@@UAEHW4RESOURCE_TYPE@@@Z");
// win1.41 007331d0 mac 101527b0 StoragePit::RemovePotFromStructure(PotStructure *)
void __fastcall RemovePotFromStructure__10StoragePitFP12PotStructure(struct MultiMapFixed* this, const void* edx, struct PotStructure* param_1) asm("?RemovePotFromStructure@StoragePit@@UAEXPAVPotStructure@@@Z");
// win1.41 00732cd0 mac 10153060 StoragePit::DeleteDependancys(void)
void __fastcall DeleteDependancys__10StoragePitFv(struct Abode* this) asm("?DeleteDependancys@StoragePit@@UAEXXZ");
// win1.41 00732f30 mac 10152b90 StoragePit::MakeFunctional(void)
void __fastcall MakeFunctional__10StoragePitFv(struct Abode* this) asm("?MakeFunctional@StoragePit@@UAEXXZ");
// win1.41 00733960 mac 10151770 StoragePit::StopBeingFunctional(GPlayer *)
void __fastcall StopBeingFunctional__10StoragePitFP7GPlayer(struct Abode* this, const void* edx, struct GPlayer* param_1) asm("?StopBeingFunctional@StoragePit@@UAEXPAVGPlayer@@@Z");
// win1.41 007339d0 mac 10151670 StoragePit::RestartBeingFunctional(void)
void __fastcall RestartBeingFunctional__10StoragePitFv(struct Abode* this) asm("?RestartBeingFunctional@StoragePit@@UAEXXZ");
// win1.41 0055cce0 mac 101513e0 StoragePit::CausesTownEmergencyIfDamaged(void)
bool __fastcall CausesTownEmergencyIfDamaged__10StoragePitFv(struct Abode* this) asm("?CausesTownEmergencyIfDamaged@StoragePit@@UAE_NXZ");

#endif /* BW1_DECOMP_STORAGE_PIT_INCLUDED_H */
