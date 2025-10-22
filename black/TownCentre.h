#ifndef BW1_DECOMP_TOWN_CENTRE_INCLUDED_H
#define BW1_DECOMP_TOWN_CENTRE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum POWER_UP_TYPE, enum SPELL_SEED_TYPE */
#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct Base;
struct Creature;
struct GAbodeInfo;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LH3DObject;
struct LHOSFile;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PSysInterface;
struct PhysicsObject;
struct PlannedMultiMapFixed;
struct TotemStatue;
struct Town;
struct TownCentreSpellIcon;
struct Villager;

struct TownCentre
{
  struct Abode super;  /* 0x0 */
  struct LH3DObject* game_object;  /* 0xc4 */
  struct PSysInterface* psys;
  struct TotemStatue* totem_statue;
  struct TownCentreSpellIcon* icons[0x6];  /* 0xd0 */
};
static_assert(sizeof(struct TownCentre) == 0xe8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009d10b8 mac inlined TownCentre::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10TownCentre asm("??_R0?AVTownCentre@@@8");
// win1.41 009ada88 mac inlined TownCentre::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10TownCentre asm("??_R1A@?0A@A@TownCentre@@8");
// win1.41 009adaa0 mac inlined TownCentre::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10TownCentre asm("??_R2TownCentre@@8");
// win1.41 009adac8 mac inlined TownCentre::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10TownCentre asm("??_R3TownCentre@@8");
// win1.41 008e4bf8 mac 1077f15c TownCentre::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10TownCentre asm("??_R4TownCentre@@6B@");
// win1.41 008e4bfc mac 106f6a44 TownCentre::`vftable'
extern const struct MultiMapFixedVftable __vt__10TownCentre asm("??_7TownCentre@@6B@");

// Static methods

// win1.41 00743c90 mac 1055b520 TownCentre::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct TownCentre* __cdecl Create__10TownCentreFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float param_4, float param_5, float param_6, int param_7) asm("?Create@TownCentre@@SAPAV1@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");
// win1.41 007447f0 mac 1006eae0 TownCentre::DrawAll(void)
void __stdcall DrawAll__10TownCentreFv(void);

// Constructors

// win1.41 00743a60 mac 1055bb20 TownCentre::TownCentre(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct TownCentre* __fastcall __ct__10TownCentreFRC9MapCoordsPC10GAbodeInfoP4Townfffi(struct TownCentre* this, const void* edx, const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float param_4, float param_5, float param_6, int param_7) asm("??0TownCentre@@QAE@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");

// Non-virtual methods

// win1.41 0069bc10 mac 104274c0 TownCentre::CreatePSys(void)
void __fastcall CreatePSys__10TownCentreFv(struct TownCentre* this) asm("?CreatePSys@TownCentre@@QAEXXZ");
// win1.41 0069bcc0 mac 1002d390 TownCentre::ProcessPSys(void)
void __fastcall ProcessPSys__10TownCentreFv(struct TownCentre* this) asm("?ProcessPSys@TownCentre@@QAEXXZ");
// win1.41 0069bd60 mac 10066090 TownCentre::DrawPSys(void)
void __fastcall DrawPSys__10TownCentreFv(struct TownCentre* this) asm("?DrawPSys@TownCentre@@QAEXXZ");
// win1.41 00743da0 mac 1055b260 TownCentre::CreateTotemIfNecessary(void)
bool __fastcall CreateTotemIfNecessary__10TownCentreFv(struct TownCentre* this) asm("?CreateTotemIfNecessary@TownCentre@@QAE_NXZ");
// win1.41 00743f20 mac 1055af50 TownCentre::GetTotemPos(void)
struct MapCoords* __fastcall GetTotemPos__10TownCentreFv(struct TownCentre* this, const void* edx, struct MapCoords* coords) asm("?GetTotemPos@TownCentre@@QAEPAUMapCoords@@XZ");
// win1.41 00743fa0 mac 1055ae80 TownCentre::FindSpellIcon(SPELL_SEED_TYPE)
struct TownCentreSpellIcon* __fastcall FindSpellIcon__10TownCentreF15SPELL_SEED_TYPE(struct TownCentre* this, const void* edx, enum SPELL_SEED_TYPE type) asm("?FindSpellIcon@TownCentre@@QAEPAVTownCentreSpellIcon@@W4SPELL_SEED_TYPE@@@Z");
// win1.41 00744010 mac 1055ad20 TownCentre::AddPowerUp(SPELL_SEED_TYPE, POWER_UP_TYPE)
void __fastcall AddPowerUp__10TownCentreF15SPELL_SEED_TYPE13POWER_UP_TYPE(struct TownCentre* this, const void* edx, enum SPELL_SEED_TYPE seed_type, enum POWER_UP_TYPE power_up_type) asm("?AddPowerUp@TownCentre@@QAEXW4SPELL_SEED_TYPE@@W4POWER_UP_TYPE@@@Z");
// win1.41 00744050 mac 1055aac0 TownCentre::AddSpell(SPELL_SEED_TYPE)
bool __fastcall AddSpell__10TownCentreF15SPELL_SEED_TYPE(struct TownCentre* this, const void* edx, enum SPELL_SEED_TYPE seed_type) asm("?AddSpell@TownCentre@@QAE_NW4SPELL_SEED_TYPE@@@Z");

// Override methods

// win1.41 0055dbb0 mac 1055ba70 TownCentre::_dt(void)
void __fastcall __dt__10TownCentreFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTownCentre@@UAEPAXI@Z");
// win1.41 00743b40 mac 1055b8b0 TownCentre::ToBeDeleted(int)
void __fastcall ToBeDeleted__10TownCentreFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@TownCentre@@UAEXH@Z");
// win1.41 0055dba0 mac 1055bf20 TownCentre::GetDebugText(void)
char* __fastcall GetDebugText__10TownCentreFv(struct GameThing* this) asm("?GetDebugText@TownCentre@@UAEPADXZ");
// win1.41 00744880 mac 10559dc0 TownCentre::Load(GameOSFile &)
uint32_t __fastcall Load__10TownCentreFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@TownCentre@@UAEIAAVGameOSFile@@@Z");
// win1.41 00744830 mac 10559e60 TownCentre::Save(GameOSFile &)
uint32_t __fastcall Save__10TownCentreFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@TownCentre@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055db90 mac 1055bee0 TownCentre::GetSaveType(void)
uint32_t __fastcall GetSaveType__10TownCentreFv(struct GameThing* this) asm("?GetSaveType@TownCentre@@UAEIXZ");
// win1.41 007448c0 mac 10559d40 TownCentre::ResolveLoad(void)
void __fastcall ResolveLoad__10TownCentreFv(struct GameThing* this) asm("?ResolveLoad@TownCentre@@UAEXXZ");
// win1.41 007449e0 mac inlined TownCentre::GetArrivePos(MapCoords *)
struct MapCoords* __fastcall GetArrivePos__10TownCentreFP9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetArrivePos@TownCentre@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0055db60 mac 1055be20 TownCentre::IsCastShadowAtNight(void)
uint32_t __fastcall IsCastShadowAtNight__10TownCentreFv(struct GameThingWithPos* this) asm("?IsCastShadowAtNight@TownCentre@@UAEIXZ");
// win1.41 0055db70 mac 1055be60 TownCentre::IsTownCentre(void)
uint32_t __fastcall IsTownCentre__10TownCentreFv(struct GameThingWithPos* this) asm("?IsTownCentre@TownCentre@@UAEIXZ");
// win1.41 0055db40 mac 1055bd90 TownCentre::CanActAsAContainer(Creature *)
uint32_t __fastcall CanActAsAContainer__10TownCentreFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanActAsAContainer@TownCentre@@UAEIPAVCreature@@@Z");
// win1.41 0055db50 mac 1055bde0 TownCentre::IsStoragePit(Creature *)
uint32_t __fastcall IsStoragePit__10TownCentreFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsStoragePit@TownCentre@@UAEIPAVCreature@@@Z");
// win1.41 007445d0 mac 10559f30 TownCentre::ReduceLife(float, GPlayer *)
void __fastcall ReduceLife__10TownCentreFfP7GPlayer(struct Object* this, const void* edx, float param_1, struct GPlayer* param_2) asm("?ReduceLife@TownCentre@@UAEXMPAVGPlayer@@@Z");
// win1.41 00744320 mac 1055a570 TownCentre::IncreaseLife(float)
void __fastcall IncreaseLife__10TownCentreFf(struct Object* this, const void* edx, float param_1) asm("?IncreaseLife@TownCentre@@UAEXM@Z");
// win1.41 00743df0 mac 10070780 TownCentre::Process(void)
uint32_t __fastcall Process__10TownCentreFv(struct Object* this) asm("?Process@TownCentre@@UAEIXZ");
// win1.41 00516450 mac 1001e8b0 TownCentre::Draw(void)
void __fastcall Draw__10TownCentreFv(struct Object* this) asm("?Draw@TownCentre@@UAEXXZ");
// win1.41 007448e0 mac 10559c20 TownCentre::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__10TownCentreFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2) asm("?GetDiscipleStateIfInteractedWith@TownCentre@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 00743cf0 mac 1055b3c0 TownCentre::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__10TownCentreFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@TownCentre@@UAEXABUMapCoords@@@Z");
// win1.41 0055db20 mac 1055bd00 TownCentre::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__10TownCentreFv(struct Object* this) asm("?Get3DType@TownCentre@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 0055db10 mac 1055bcb0 TownCentre::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__10TownCentreFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@TownCentre@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00743bc0 mac 1055b860 TownCentre::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__10TownCentreFv(struct Object* this) asm("?InteractsWithPhysicsObjects@TownCentre@@UAE_NXZ");
// win1.41 00744380 mac 1055a500 TownCentre::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__10TownCentreFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@TownCentre@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00744140 mac 1055a800 TownCentre::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__10TownCentreFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@TownCentre@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 00744940 mac inlined TownCentre::GetDoorPos(MapCoords *)
struct MapCoords* __fastcall GetDoorPos__10TownCentreFP9MapCoords(struct MultiMapFixed* this, const void* edx, struct MapCoords* param_1) asm("?GetDoorPos@TownCentre@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 007443a0 mac 1055a470 TownCentre::AddToPlayer(void)
void __fastcall AddToPlayer__10TownCentreFv(struct MultiMapFixed* this) asm("?AddToPlayer@TownCentre@@UAEXXZ");
// win1.41 007443c0 mac 1055a370 TownCentre::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__10TownCentreFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@TownCentre@@UAEPAVPlannedMultiMapFixed@@XZ");
// win1.41 00743be0 mac 1055b650 TownCentre::DeleteDependancys(void)
void __fastcall DeleteDependancys__10TownCentreFv(struct Abode* this) asm("?DeleteDependancys@TownCentre@@UAEXXZ");
// win1.41 00743e80 mac 1055b020 TownCentre::MakeFunctional(void)
void __fastcall MakeFunctional__10TownCentreFv(struct Abode* this) asm("?MakeFunctional@TownCentre@@UAEXXZ");
// win1.41 00744a00 mac 105599a0 TownCentre::StopBeingFunctional(GPlayer *)
void __fastcall StopBeingFunctional__10TownCentreFP7GPlayer(struct Abode* this, const void* edx, struct GPlayer* param_1) asm("?StopBeingFunctional@TownCentre@@UAEXPAVGPlayer@@@Z");
// win1.41 0055db30 mac 1055bd40 TownCentre::CausesTownEmergencyIfDamaged(void)
bool __fastcall CausesTownEmergencyIfDamaged__10TownCentreFv(struct Abode* this) asm("?CausesTownEmergencyIfDamaged@TownCentre@@UAE_NXZ");
// win1.41 0055db80 mac 1055bea0 TownCentre::CanBeHiddenIn(void)
bool __fastcall CanBeHiddenIn__10TownCentreFv(struct Abode* this) asm("?CanBeHiddenIn@TownCentre@@UAE_NXZ");

DECLARE_LH_LINKED_LIST(TownCentre);

#endif /* BW1_DECOMP_TOWN_CENTRE_INCLUDED_H */
