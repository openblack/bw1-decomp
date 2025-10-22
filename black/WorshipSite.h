#ifndef BW1_DECOMP_WORSHIP_SITE_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int16_t, uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE, enum RESOURCE_TYPE, enum SPELL_SEED_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CitadelPart.h" /* For struct CitadelPart */
#include "WorshipSpellIcon.h" /* For struct WorshipSpellIcon */

// Forward Declares

struct Base;
struct Creature;
struct Dance;
struct GInterfaceStatus;
struct GTribeInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct LHOSFile;
struct LHPoint;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PotStructure;
struct ShowNeeds;
struct Town;
struct Villager;
struct WorshipTotem;

struct WorshipSite
{
  struct CitadelPart super;  /* 0x0 */
  struct GTribeInfo* tribe_info;  /* 0x8c */
  struct ShowNeeds* show_needs;  /* 0x90 */
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  struct Dance* dance;  /* 0xa0 */
  uint8_t field_0xa4[0x14];
  int* field_0xb8;
  uint8_t field_0xbc[0xc];
  int field_0xc8;
  uint8_t field_0xcc[0xc];
  int field_0xd8;
  struct WorshipTotem* totem;
  struct LHListHead__WorshipSpellIcon icon_list;  /* 0xe0 */
  uint8_t field_0xe8[0x2c];
  float field_0x114;
  float field_0x118;
  float field_0x11c;
  uint32_t field_0x120;
  int num_villagers_requesting_to_go_home;
};
static_assert(sizeof(struct WorshipSite) == 0x128, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009d96c0 mac inlined WorshipSite::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11WorshipSite asm("??_R0?AVWorshipSite@@@8");
// win1.41 009ae290 mac inlined WorshipSite::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11WorshipSite asm("??_R1A@?0A@A@WorshipSite@@8");
// win1.41 009ae2a8 mac inlined WorshipSite::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11WorshipSite asm("??_R2WorshipSite@@8");
// win1.41 009ae2d0 mac inlined WorshipSite::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11WorshipSite asm("??_R3WorshipSite@@8");
// win1.41 008f283c mac 10733a30 WorshipSite::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11WorshipSite asm("??_R4WorshipSite@@6B@");
// win1.41 008f2840 mac 106f5b48 WorshipSite::`vftable'
extern const struct MultiMapFixedVftable __vt__11WorshipSite asm("??_7WorshipSite@@6B@");

// Non-virtual methods

// win1.41 0077afc0 mac 105b28e0 WorshipSite::GetSpellIconPosFromSlot(unsigned long, float)
struct MapCoords* __fastcall GetSpellIconPosFromSlot__11WorshipSiteFUlf(struct WorshipSite* this, const void* edx, struct MapCoords* coords, uint32_t slot, float angle) asm("?GetSpellIconPosFromSlot@WorshipSite@@QAEPAUMapCoords@@KM@Z");
// win1.41 0077b080 mac 105b26e0 WorshipSite::GetSpellIconPos(short &)
struct MapCoords* __fastcall GetSpellIconPos__11WorshipSiteFRs(struct WorshipSite* this, const void* edx, struct MapCoords* coords, int16_t* slot) asm("?GetSpellIconPos@WorshipSite@@QAEPAUMapCoords@@AAF@Z");
// win1.41 0077c430 mac 105b01e0 WorshipSite::AddSpellIcon(WorshipSpellIcon *)
void __fastcall AddSpellIcon__11WorshipSiteFP16WorshipSpellIcon(struct WorshipSite* this, const void* edx, struct WorshipSpellIcon* icon) asm("?AddSpellIcon@WorshipSite@@QAEXPAVWorshipSpellIcon@@@Z");
// win1.41 0077c910 mac 105af7f0 WorshipSite::AddTownSpells(Town *)
void __fastcall AddTownSpells__11WorshipSiteFP4Town(struct WorshipSite* this, const void* edx, struct Town* town) asm("?AddTownSpells@WorshipSite@@QAEXPAVTown@@@Z");
// win1.41 0077c9e0 mac 105af540 WorshipSite::AddSpellIconIfNecessary(SPELL_SEED_TYPE)
void __fastcall AddSpellIconIfNecessary__11WorshipSiteF15SPELL_SEED_TYPE(struct WorshipSite* this, const void* edx, enum SPELL_SEED_TYPE seed_type) asm("?AddSpellIconIfNecessary@WorshipSite@@QAEXW4SPELL_SEED_TYPE@@@Z");
// win1.41 0077cf30 mac 105aeaa0 WorshipSite::GetTotemPos(void)
struct MapCoords* __fastcall GetTotemPos__11WorshipSiteFv(struct WorshipSite* this, const void* edx, struct MapCoords* coords) asm("?GetTotemPos@WorshipSite@@QAEPAUMapCoords@@XZ");
// win1.41 0077d0a0 mac 105ae5c0 WorshipSite::RemoveVillagerFromWorshipCount(Villager *)
void __fastcall RemoveVillagerFromWorshipCount__11WorshipSiteFP8Villager(struct WorshipSite* this, const void* edx, struct Villager* param_1) asm("?RemoveVillagerFromWorshipCount@WorshipSite@@QAEXPAVVillager@@@Z");
// win1.41 0077e1d0 mac 105aba90 WorshipSite::RemoveVillagerRequestingToGoHome(Villager *)
void __fastcall RemoveVillagerRequestingToGoHome__11WorshipSiteFP8Villager(struct WorshipSite* this, const void* edx, struct Villager* param_1) asm("?RemoveVillagerRequestingToGoHome@WorshipSite@@QAEXPAVVillager@@@Z");
// win1.41 0077e260 mac 105aba40 WorshipSite::GetNumVillagersRequestingToGoHome(void)
int __fastcall GetNumVillagersRequestingToGoHome__11WorshipSiteFv(struct WorshipSite* this) asm("?GetNumVillagersRequestingToGoHome@WorshipSite@@QAEHXZ");

// Override methods

// win1.41 0055dcf0 mac 105b3620 WorshipSite::_dt(void)
void __fastcall __dt__11WorshipSiteFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GWorshipSite@@UAEPAXI@Z");
// win1.41 0077aa60 mac 105b32c0 WorshipSite::ToBeDeleted(int)
void __fastcall ToBeDeleted__11WorshipSiteFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@WorshipSite@@UAEXH@Z");
// win1.41 0055dc50 mac 105b3d80 WorshipSite::RemoveDance(void)
void __fastcall RemoveDance__11WorshipSiteFv(struct GameThing* this) asm("?RemoveDance@WorshipSite@@UAEXXZ");
// win1.41 0077bd80 mac 105b1220 WorshipSite::GetResource(RESOURCE_TYPE)
uint32_t __fastcall GetResource__11WorshipSiteF13RESOURCE_TYPE(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?GetResource@WorshipSite@@UAEIW4RESOURCE_TYPE@@@Z");
// win1.41 0077c5f0 mac 105afd80 WorshipSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
uint32_t __fastcall AddResource__11WorshipSiteF13RESOURCE_TYPEUlP16GInterfaceStatusbRC9MapCoordsi(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool param_4, const struct MapCoords* param_5, int param_6) asm("?AddResource@WorshipSite@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@_NPBUMapCoords@@H@Z");
// win1.41 0077c670 mac 105afca0 WorshipSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
uint32_t __fastcall RemoveResource__11WorshipSiteF13RESOURCE_TYPEUlP16GInterfaceStatusPb(struct GameThing* this, const void* edx, enum RESOURCE_TYPE param_1, uint32_t param_2, struct GInterfaceStatus* param_3, bool* param_4) asm("?RemoveResource@WorshipSite@@UAEIW4RESOURCE_TYPE@@IPAVGInterfaceStatus@@PA_N@Z");
// win1.41 0055dce0 mac 105b4000 WorshipSite::GetDebugText(void)
char* __fastcall GetDebugText__11WorshipSiteFv(struct GameThing* this) asm("?GetDebugText@WorshipSite@@UAEPADXZ");
// win1.41 0077cd70 mac 105aef50 WorshipSite::GetShowNeedsPos(unsigned long, MapCoords *)
uint32_t __fastcall GetShowNeedsPos__11WorshipSiteFUlP9MapCoords(struct GameThing* this, const void* edx, uint32_t param_1, struct MapCoords* param_2) asm("?GetShowNeedsPos@WorshipSite@@UAEIIPAUMapCoords@@@Z");
// win1.41 0077d700 mac 105acc40 WorshipSite::Load(GameOSFile &)
uint32_t __fastcall Load__11WorshipSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@WorshipSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0077d2f0 mac 105ad890 WorshipSite::Save(GameOSFile &)
uint32_t __fastcall Save__11WorshipSiteFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@WorshipSite@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055dcd0 mac 105b3fc0 WorshipSite::GetSaveType(void)
uint32_t __fastcall GetSaveType__11WorshipSiteFv(struct GameThing* this) asm("?GetSaveType@WorshipSite@@UAEIXZ");
// win1.41 0077daf0 mac 105acbf0 WorshipSite::ResolveLoad(void)
void __fastcall ResolveLoad__11WorshipSiteFv(struct GameThing* this) asm("?ResolveLoad@WorshipSite@@UAEXXZ");
// win1.41 0077ced0 mac inlined WorshipSite::GetArrivePos(MapCoords *)
struct MapCoords* __fastcall GetArrivePos__11WorshipSiteFP9MapCoords(struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetArrivePos@WorshipSite@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 0055dc30 mac inlined WorshipSite::GetInteractPos(LHPoint *)
void __fastcall GetInteractPos__11WorshipSiteFP7LHPoint(struct GameThingWithPos* this, const void* edx, struct LHPoint* param_1) asm("?GetInteractPos@WorshipSite@@UAEXPAULHPoint@@@Z");
// win1.41 0055dc80 mac 105b3e50 WorshipSite::IsSuitableForCreatureAction(void)
uint32_t __fastcall IsSuitableForCreatureAction__11WorshipSiteFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureAction@WorshipSite@@UAEIXZ");
// win1.41 004e4b60 mac 105e3fa0 WorshipSite::CanHaveMagicFoodCastOnMe(Creature *)
uint32_t __fastcall CanHaveMagicFoodCastOnMe__11WorshipSiteFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanHaveMagicFoodCastOnMe@WorshipSite@@UAEIPAVCreature@@@Z");
// win1.41 0055dca0 mac inlined WorshipSite::IsWorshipSite_1(void)
uint32_t __fastcall IsWorshipSite_1__11WorshipSiteFv(struct GameThingWithPos* this) asm("?IsWorshipSite@WorshipSite@@UAEIXZ");
// win1.41 0055dc90 mac inlined WorshipSite::IsWorshipSite_0(Creature *)
uint32_t __fastcall IsWorshipSite_0__11WorshipSiteFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsWorshipSite@WorshipSite@@UAEIPAVCreature@@@Z");
// win1.41 0055dcb0 mac 105b3f30 WorshipSite::GetWorshipSite(void)
struct WorshipSite* __fastcall GetWorshipSite__11WorshipSiteFv(struct GameThingWithPos* this) asm("?GetWorshipSite@WorshipSite@@UAEPAVWorshipSite@@XZ");
// win1.41 0077c310 mac 105b0430 WorshipSite::CalculateDesireForFood(void)
float __fastcall CalculateDesireForFood__11WorshipSiteFv(struct GameThingWithPos* this) asm("?CalculateDesireForFood@WorshipSite@@UAEMXZ");
// win1.41 0077c390 mac 105b0370 WorshipSite::CalculateDesireForRest(void)
float __fastcall CalculateDesireForRest__11WorshipSiteFv(struct GameThingWithPos* this) asm("?CalculateDesireForRest@WorshipSite@@UAEMXZ");
// win1.41 0077c3d0 mac 105b0290 WorshipSite::CalculatePeopleHidingIndicator(void)
float __fastcall CalculatePeopleHidingIndicator__11WorshipSiteFv(struct GameThingWithPos* this) asm("?CalculatePeopleHidingIndicator@WorshipSite@@UAEMXZ");
// win1.41 0077d2e0 mac 105ae4e0 WorshipSite::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__11WorshipSiteFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@WorshipSite@@UAEIXZ");
// win1.41 0077d030 mac 105ae820 WorshipSite::UpdateFrom3DPosition(void)
void __fastcall UpdateFrom3DPosition__11WorshipSiteFv(struct Object* this) asm("?UpdateFrom3DPosition@WorshipSite@@UAEXXZ");
// win1.41 0077dde0 mac inlined WorshipSite::GetDefaultFireCentrePos(LHPoint *)
struct LHPoint* __fastcall GetDefaultFireCentrePos__11WorshipSiteFP7LHPoint(struct Object* this, const void* edx, struct LHPoint* param_1) asm("?GetDefaultFireCentrePos@WorshipSite@@UAEPAULHPoint@@PAU2@@Z");
// win1.41 0077de10 mac 105ac3e0 WorshipSite::GetDefaultFireRadius(void)
float __fastcall GetDefaultFireRadius__11WorshipSiteFv(struct Object* this) asm("?GetDefaultFireRadius@WorshipSite@@UAEMXZ");
// win1.41 0077b1d0 mac 105b2440 WorshipSite::Process(void)
uint32_t __fastcall Process__11WorshipSiteFv(struct Object* this) asm("?Process@WorshipSite@@UAEIXZ");
// win1.41 0055dcc0 mac 105b3f70 WorshipSite::GetMesh( const(void))
int __fastcall GetMesh__11WorshipSiteCFv(const struct Object* this) asm("?GetMesh@WorshipSite@@UBEHXZ");
// win1.41 005193d0 mac 100c7a80 WorshipSite::Draw(void)
void __fastcall Draw__11WorshipSiteFv(struct Object* this) asm("?Draw@WorshipSite@@UAEXXZ");
// win1.41 0077de70 mac 105ac230 WorshipSite::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__11WorshipSiteFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2) asm("?GetDiscipleStateIfInteractedWith@WorshipSite@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 0077b9d0 mac 105b16a0 WorshipSite::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__11WorshipSiteFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@WorshipSite@@UAEXABUMapCoords@@@Z");
// win1.41 0077dec0 mac 105ac190 WorshipSite::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__11WorshipSiteF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?IsResourceStore@WorshipSite@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 0077e7b0 mac 105ab190 WorshipSite::DeleteObjectAndTakeResource(Object *, GInterfaceStatus *)
bool __fastcall DeleteObjectAndTakeResource__11WorshipSiteFP6ObjectP16GInterfaceStatus(struct Object* this, const void* edx, struct Object* param_1, struct GInterfaceStatus* param_2) asm("?DeleteObjectAndTakeResource@WorshipSite@@UAE_NPAVObject@@PAVGInterfaceStatus@@@Z");
// win1.41 0077e480 mac 105ab730 WorshipSite::GetRadiusMultiplierForApplyingPotToPos(void)
float __fastcall GetRadiusMultiplierForApplyingPotToPos__11WorshipSiteFv(struct Object* this) asm("?GetRadiusMultiplierForApplyingPotToPos@WorshipSite@@UAEMXZ");
// win1.41 0077def0 mac 105ac090 WorshipSite::DoCreatureMimicAfterAddingResource(RESOURCE_TYPE, GInterfaceStatus &)
bool __fastcall DoCreatureMimicAfterAddingResource__11WorshipSiteF13RESOURCE_TYPER16GInterfaceStatus(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1, struct GInterfaceStatus* param_2) asm("?DoCreatureMimicAfterAddingResource@WorshipSite@@UAE_NW4RESOURCE_TYPE@@AAVGInterfaceStatus@@@Z");
// win1.41 0077de20 mac 105ac330 WorshipSite::GetDistanceFromObject(Object *)
float __fastcall GetDistanceFromObject__11WorshipSiteFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?GetDistanceFromObject@WorshipSite@@UAEMPAVObject@@@Z");
// win1.41 0055dc60 mac 105b3dc0 WorshipSite::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__11WorshipSiteFv(struct Object* this) asm("?InteractsWithPhysicsObjects@WorshipSite@@UAE_NXZ");
// win1.41 0077ae30 mac 105b2cf0 WorshipSite::GetInspectObjectPos(Villager *, MapCoords *)
bool __fastcall GetInspectObjectPos__11WorshipSiteFP8VillagerP9MapCoords(struct Object* this, const void* edx, struct Villager* param_1, struct MapCoords* param_2) asm("?GetInspectObjectPos@WorshipSite@@UAE_NPAVVillager@@PAUMapCoords@@@Z");
// win1.41 0077cc90 mac 105aefc0 WorshipSite::GetSpecialPos(unsigned long, MapCoords *)
uint32_t __fastcall GetSpecialPos__11WorshipSiteFUlP9MapCoords(struct Object* this, const void* edx, uint32_t param_1, struct MapCoords* param_2) asm("?GetSpecialPos@WorshipSite@@UAEIIPAUMapCoords@@@Z");
// win1.41 0077d000 mac 105ae860 WorshipSite::GetObjectCollide(void)
uint32_t __fastcall GetObjectCollide__11WorshipSiteFv(struct Object* this) asm("?GetObjectCollide@WorshipSite@@UAEIXZ");
// win1.41 0077c120 mac 105b0620 WorshipSite::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__11WorshipSiteFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@WorshipSite@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 0077dc90 mac 105ac5f0 WorshipSite::GetNearestEdgeOfObject(Object *)
void __fastcall GetNearestEdgeOfObject__11WorshipSiteFP6Object(struct Object* this, const void* edx, struct Object* param_1) asm("?GetNearestEdgeOfObject@WorshipSite@@UAEXPAVObject@@@Z");
// win1.41 0077e460 mac inlined WorshipSite::GetResourceDropPosForComputerPlayer(MapCoords *)
void __fastcall GetResourceDropPosForComputerPlayer__11WorshipSiteFP9MapCoords(struct MultiMapFixed* this, const void* edx, struct MapCoords* param_1) asm("?GetResourceDropPosForComputerPlayer@WorshipSite@@UAEXPAUMapCoords@@@Z");
// win1.41 0077bdd0 mac 105b10a0 WorshipSite::IsBuilt(void)
bool __fastcall IsBuilt__11WorshipSiteFv(struct MultiMapFixed* this) asm("?IsBuilt@WorshipSite@@UAE_NXZ");
// win1.41 0077ac10 mac 105b3210 WorshipSite::Built(void)
bool __fastcall Built__11WorshipSiteFv(struct MultiMapFixed* this) asm("?Built@WorshipSite@@UAE_NXZ");
// win1.41 0055dc70 mac 105b3e10 WorshipSite::GetAbodeType(void)
enum ABODE_TYPE __fastcall GetAbodeType__11WorshipSiteFv(struct MultiMapFixed* this) asm("?GetAbodeType@WorshipSite@@UAE?AW4ABODE_TYPE@@XZ");
// win1.41 0077c5d0 mac 105afeb0 WorshipSite::GetResourcePos(RESOURCE_TYPE, long)
struct MapCoords* __fastcall GetResourcePos__11WorshipSiteF13RESOURCE_TYPEl(struct MultiMapFixed* this, const void* edx, enum RESOURCE_TYPE param_1, int param_2) asm("?GetResourcePos@WorshipSite@@UAEPAUMapCoords@@W4RESOURCE_TYPE@@H@Z");
// win1.41 0077c6d0 mac 105afb90 WorshipSite::GetResourceNearestEdge(RESOURCE_TYPE, Object *, int)
struct MapCoords* __fastcall GetResourceNearestEdge__11WorshipSiteF13RESOURCE_TYPEP6Objecti(struct MultiMapFixed* this, const void* edx, struct MapCoords* param_1, enum RESOURCE_TYPE param_2, struct Object* param_3, int param_4) asm("?GetResourceNearestEdge@WorshipSite@@UAEPAUMapCoords@@PAU2@W4RESOURCE_TYPE@@PAVObject@@H@Z");
// win1.41 0077ae10 mac 105b2d80 WorshipSite::RemovePotFromStructure(PotStructure *)
void __fastcall RemovePotFromStructure__11WorshipSiteFP12PotStructure(struct MultiMapFixed* this, const void* edx, struct PotStructure* param_1) asm("?RemovePotFromStructure@WorshipSite@@UAEXPAVPotStructure@@@Z");

#endif /* BW1_DECOMP_WORSHIP_SITE_INCLUDED_H */
