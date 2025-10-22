#ifndef BW1_DECOMP_TREE_INCLUDED_H
#define BW1_DECOMP_TREE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Fixed.h" /* For struct SingleMapFixed, struct SingleMapFixedVftable */

// Forward Declares

struct Base;
struct Creature;
struct Forest;
struct GInterfaceStatus;
struct GPlayer;
struct GTreeInfo;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct GestureSystemPacketData;
struct LHOSFile;
struct MapCoords;
struct Object;
struct PhysOb;
struct PhysicsObject;
struct RPHolder;
struct SpellWater;
struct Tree;
struct Villager;

struct TreeVftable
{
  struct SingleMapFixedVftable super;  /* 0x0 */
  void (__fastcall* GetWoodValueMultiplier)(struct Tree* this);  /* 0x868 */
  struct Forest* (__fastcall* GetForest)(struct Tree* this);
  void (__fastcall* SetOnFire)(struct Tree* this, const void* edx, float param_1);  /* 0x870 */
};
static_assert(sizeof(struct TreeVftable) == 0x874, "Data type is of wrong size");

struct Tree
{
  struct SingleMapFixed super;  /* 0x0 */
  uint32_t field_0x5c;
  int16_t field_0x60;
  float field_0x64;
  struct Forest* forest;
};
static_assert(sizeof(struct Tree) == 0x6c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009d96e0 mac inlined Tree::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__4Tree asm("??_R0?AVTree@@@8");
// win1.41 009ad470 mac inlined Tree::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__4Tree asm("??_R1A@?0A@A@Tree@@8");
// win1.41 009ad488 mac inlined Tree::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__4Tree asm("??_R2Tree@@8");
// win1.41 009ad4a8 mac inlined Tree::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__4Tree asm("??_R3Tree@@8");
// win1.41 008e92f0 mac 1075df20 Tree::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__4Tree asm("??_R4Tree@@6B@");
// win1.41 008e92f4 mac 106f65d0 Tree::`vftable'
extern const struct TreeVftable __vt__4Tree asm("??_7Tree@@6B@");

// Static methods

// win1.41 00749ee0 mac 10158ff0 Tree::Create(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
struct Tree* __cdecl Create__4TreeFRC9MapCoordsPC9GTreeInfoP6Forestfff(struct MapCoords* coords, const struct GTreeInfo* info, struct Forest* forest, float param_4, float param_5, float param_6) asm("?Create@Tree@@SAPAV1@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z");

// Constructors

// win1.41 00749e00 mac 101591d0 Tree::Tree(MapCoords const &, GTreeInfo const *, Forest *, float, float, float)
struct Tree* __fastcall __ct__4TreeFRC9MapCoordsPC9GTreeInfoP6Forestfff(struct Tree* this, const void* edx, const struct MapCoords* coords, const struct GTreeInfo* info, struct Forest* forest, float param_4, float param_5, float param_6) asm("??0Tree@@QAE@ABUMapCoords@@PBVGTreeInfo@@PAVForest@@MMM@Z");

// Override methods

// win1.41 0055da40 mac 10159150 Tree::_dt(void)
void __fastcall __dt__4TreeFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTree@@UAEPAXI@Z");
// win1.41 0074a210 mac 10158a10 Tree::ToBeDeleted(int)
void __fastcall ToBeDeleted__4TreeFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Tree@@UAEXH@Z");
// win1.41 0055d8c0 mac 10159560 Tree::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__4TreeFv(struct GameThing* this) asm("?GetPlayer@Tree@@UAEPAVGPlayer@@XZ");
// win1.41 0055d9f0 mac 10159a80 Tree::GetComputerSeen(void)
bool __fastcall GetComputerSeen__4TreeFv(struct GameThing* this) asm("?GetComputerSeen@Tree@@UAE_NXZ");
// win1.41 0055d8e0 mac 101595f0 Tree::CastTree(void)
struct Tree* __fastcall CastTree__4TreeFv(struct GameThing* this) asm("?CastTree@Tree@@UAEPAVTree@@XZ");
// win1.41 0055da30 mac 10159b80 Tree::GetDebugText(void)
char* __fastcall GetDebugText__4TreeFv(struct GameThing* this) asm("?GetDebugText@Tree@@UAEPADXZ");
// win1.41 0071be20 mac 1050fb70 Tree::GetGuidanceResourceType(void)
uint32_t __fastcall GetGuidanceResourceType__4TreeFv(struct GameThing* this) asm("?GetGuidanceResourceType@Tree@@UAEIXZ");
// win1.41 0074c2a0 mac 10155f10 Tree::Load(GameOSFile &)
uint32_t __fastcall Load__4TreeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Tree@@UAEIAAVGameOSFile@@@Z");
// win1.41 0074c1b0 mac 10156080 Tree::Save(GameOSFile &)
uint32_t __fastcall Save__4TreeFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Tree@@UAEIAAVGameOSFile@@@Z");
// win1.41 0055da20 mac 10159b50 Tree::GetSaveType(void)
uint32_t __fastcall GetSaveType__4TreeFv(struct GameThing* this) asm("?GetSaveType@Tree@@UAEIXZ");
// win1.41 0055d950 mac 101597f0 Tree::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__4TreeFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Tree@@UAEIXZ");
// win1.41 0074b790 mac 101576d0 Tree::GetOverwriteDropToolTip(void)
uint32_t __fastcall GetOverwriteDropToolTip__4TreeFv(struct GameThingWithPos* this) asm("?GetOverwriteDropToolTip@Tree@@UAEIXZ");
// win1.41 0055da10 mac 10159b10 Tree::IsCastShadowAtNight(void)
uint32_t __fastcall IsCastShadowAtNight__4TreeFv(struct GameThingWithPos* this) asm("?IsCastShadowAtNight@Tree@@UAEIXZ");
// win1.41 0055d9a0 mac 10159950 Tree::CanBeAttackedByCreature(Creature *)
uint32_t __fastcall CanBeAttackedByCreature__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeAttackedByCreature@Tree@@UAEIPAVCreature@@@Z");
// win1.41 0055d930 mac 10159740 Tree::CanBePlayedWithByCreature(Creature *)
uint32_t __fastcall CanBePlayedWithByCreature__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePlayedWithByCreature@Tree@@UAEIPAVCreature@@@Z");
// win1.41 004e4a80 mac 105e4320 Tree::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@Tree@@UAEIPAVCreature@@@Z");
// win1.41 0055d990 mac 10159900 Tree::CanBeDestroyedByStoning(Creature *)
uint32_t __fastcall CanBeDestroyedByStoning__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeDestroyedByStoning@Tree@@UAEIPAVCreature@@@Z");
// win1.41 0055d970 mac 10159870 Tree::CanBeUsedForBuilding(Creature *)
uint32_t __fastcall CanBeUsedForBuilding__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeUsedForBuilding@Tree@@UAEIPAVCreature@@@Z");
// win1.41 0055d980 mac 101598c0 Tree::CanBeUsedForRepair(Creature *)
uint32_t __fastcall CanBeUsedForRepair__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeUsedForRepair@Tree@@UAEIPAVCreature@@@Z");
// win1.41 0055d940 mac 10159790 Tree::BenefitsFromHavingWaterSprinkledOnIt(Creature *)
uint32_t __fastcall BenefitsFromHavingWaterSprinkledOnIt__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?BenefitsFromHavingWaterSprinkledOnIt@Tree@@UAEIPAVCreature@@@Z");
// win1.41 0055d9d0 mac inlined Tree::IsTree_1(void)
uint32_t __fastcall IsTree_1__4TreeFv(struct GameThingWithPos* this) asm("?IsTree@Tree@@UAEIXZ");
// win1.41 0055d920 mac inlined Tree::IsTree_0(Creature *)
uint32_t __fastcall IsTree_0__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsTree@Tree@@UAEIPAVCreature@@@Z");
// win1.41 004e46e0 mac 105e4dc0 Tree::IsTreeNotTooNearPlannedForest(Creature *)
uint32_t __fastcall IsTreeNotTooNearPlannedForest__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsTreeNotTooNearPlannedForest@Tree@@UAEIPAVCreature@@@Z");
// win1.41 0074c0a0 mac 10156670 Tree::IsTreeBigEnoughForCreature(Creature *)
uint32_t __fastcall IsTreeBigEnoughForCreature__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsTreeBigEnoughForCreature@Tree@@UAEIPAVCreature@@@Z");
// win1.41 0055d9b0 mac 101599a0 Tree::CanBeThrownInTheSeaPlayfully(Creature *)
uint32_t __fastcall CanBeThrownInTheSeaPlayfully__4TreeFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeThrownInTheSeaPlayfully@Tree@@UAEIPAVCreature@@@Z");
// win1.41 0055d960 mac 10159830 Tree::GetCreatureMimicType(void)
uint32_t __fastcall GetCreatureMimicType__4TreeFv(struct GameThingWithPos* this) asm("?GetCreatureMimicType@Tree@@UAEIXZ");
// win1.41 004d1b70 mac 10242f30 Tree::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__4TreeFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@Tree@@UAEMXZ");
// win1.41 0055d9c0 mac 101599f0 Tree::IsAnyKindOfTree(void)
uint32_t __fastcall IsAnyKindOfTree__4TreeFv(struct GameThingWithPos* this) asm("?IsAnyKindOfTree@Tree@@UAEIXZ");
// win1.41 0074c130 mac 100036d0 Tree::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__4TreeFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Tree@@UAEIXZ");
// win1.41 0055d8d0 mac 10159590 Tree::GetReactionPower(void)
float __fastcall GetReactionPower__4TreeFv(struct GameThingWithPos* this) asm("?GetReactionPower@Tree@@UAEMXZ");
// win1.41 0074c7f0 mac 10155720 Tree::BlocksTownClearArea( const(void))
bool __fastcall BlocksTownClearArea__4TreeCFv(const struct Object* this) asm("?BlocksTownClearArea@Tree@@UBE_NXZ");
// win1.41 0074b600 mac 10157bd0 Tree::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__4TreeFv(struct Object* this) asm("?GetHoldType@Tree@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 0074b610 mac 10157b60 Tree::GetHoldRadius(void)
float __fastcall GetHoldRadius__4TreeFv(struct Object* this) asm("?GetHoldRadius@Tree@@UAEMXZ");
// win1.41 0074b620 mac 10157b10 Tree::GetHoldLoweringMultiplier(void)
float __fastcall GetHoldLoweringMultiplier__4TreeFv(struct Object* this) asm("?GetHoldLoweringMultiplier@Tree@@UAEMXZ");
// win1.41 0055d9e0 mac 10159a30 Tree::HandShouldFeelWithMeshIntersect(void)
uint32_t __fastcall HandShouldFeelWithMeshIntersect__4TreeFv(struct Object* this) asm("?HandShouldFeelWithMeshIntersect@Tree@@UAEIXZ");
// win1.41 0074a1e0 mac 10158bb0 Tree::SetLife(float)
void __fastcall SetLife__4TreeFf(struct Object* this, const void* edx, float param_1) asm("?SetLife@Tree@@UAEXM@Z");
// win1.41 0074a290 mac 10158860 Tree::Process(void)
uint32_t __fastcall Process__4TreeFv(struct Object* this) asm("?Process@Tree@@UAEIXZ");
// win1.41 0055d8a0 mac 101594d0 Tree::GetMesh( const(void))
int __fastcall GetMesh__4TreeCFv(const struct Object* this) asm("?GetMesh@Tree@@UBEHXZ");
// win1.41 0074ab00 mac 10044ce0 Tree::Draw(void)
void __fastcall Draw__4TreeFv(struct Object* this) asm("?Draw@Tree@@UAEXXZ");
// win1.41 0074b270 mac 10157fc0 Tree::DrawOutOfMap(bool)
void __fastcall DrawOutOfMap__4TreeFb(struct Object* this, const void* edx, bool param_1) asm("?DrawOutOfMap@Tree@@UAEX_N@Z");
// win1.41 0055d8b0 mac 10159520 Tree::CanBePickedUp(void)
bool __fastcall CanBePickedUp__4TreeFv(struct Object* this) asm("?CanBePickedUp@Tree@@UAE_NXZ");
// win1.41 0074a1a0 mac 10158c20 Tree::GetVillagerHugRadius(void)
float __fastcall GetVillagerHugRadius__4TreeFv(struct Object* this) asm("?GetVillagerHugRadius@Tree@@UAEMXZ");
// win1.41 0074c150 mac 101562a0 Tree::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
uint32_t __fastcall GetDiscipleStateIfInteractedWith__4TreeFP16GInterfaceStatusP8Villager(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Villager* param_2) asm("?GetDiscipleStateIfInteractedWith@Tree@@UAEIPAVGInterfaceStatus@@PAVVillager@@@Z");
// win1.41 0074c040 mac inlined Tree::GetWorkingPos(MapCoords *, Object *)
struct MapCoords* __fastcall GetWorkingPos__4TreeFP9MapCoordsP6Object(struct Object* this, const void* edx, struct MapCoords* param_1, struct Object* param_2) asm("?GetWorkingPos@Tree@@UAEPAUMapCoords@@PAU2@PAVObject@@@Z");
// win1.41 00749f70 mac 10158e00 Tree::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__4TreeFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Tree@@UAEXABUMapCoords@@@Z");
// win1.41 0074b7b0 mac 10157590 Tree::GetWoodValue(void)
float __fastcall GetWoodValue__4TreeFv(struct Object* this) asm("?GetWoodValue@Tree@@UAEMXZ");
// win1.41 0074c390 mac 10155bd0 Tree::ApplyWaterSpell(SpellWater *)
float __fastcall ApplyWaterSpell__4TreeFP10SpellWater(struct Object* this, const void* edx, struct SpellWater* param_1) asm("?ApplyWaterSpell@Tree@@UAEMPAVSpellWater@@@Z");
// win1.41 0055d8f0 mac 10159620 Tree::IsResourceStore(RESOURCE_TYPE)
bool __fastcall IsResourceStore__4TreeF13RESOURCE_TYPE(struct Object* this, const void* edx, enum RESOURCE_TYPE param_1) asm("?IsResourceStore@Tree@@UAE_NW4RESOURCE_TYPE@@@Z");
// win1.41 0074b820 mac 10157510 Tree::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__4TreeFv(struct Object* this) asm("?GetResourceType@Tree@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 0074b7a0 mac 10157670 Tree::GetDefaultResource(void)
int __fastcall GetDefaultResource__4TreeFv(struct Object* this) asm("?GetDefaultResource@Tree@@UAEHXZ");
// win1.41 0074b730 mac 10157710 Tree::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__4TreeFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@Tree@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0074bd50 mac 10156c80 Tree::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__4TreeFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@Tree@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 0074bda0 mac 10156910 Tree::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__4TreeFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@Tree@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 0074bfd0 mac 101567f0 Tree::ApplyThisToMapCoord(GInterfaceStatus *, MapCoords const &, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToMapCoord__4TreeFP16GInterfaceStatusRC9MapCoordsP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, const struct MapCoords* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToMapCoord@Tree@@UAEIPAVGInterfaceStatus@@ABUMapCoords@@PAUGestureSystemPacketData@@@Z");
// win1.41 0074b640 mac 10157a90 Tree::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__4TreeFv(struct Object* this) asm("?GetPhysicsConstantsType@Tree@@UAEIXZ");
// win1.41 0074b650 mac 101579a0 Tree::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__4TreeFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@Tree@@UAEXPAUPhysOb@@@Z");
// win1.41 0074b830 mac 10156f80 Tree::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__4TreeFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Tree@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0074bc60 mac 10156df0 Tree::DropSfx(void)
uint32_t __fastcall DropSfx__4TreeFv(struct Object* this) asm("?DropSfx@Tree@@UAEIXZ");
// win1.41 0074b6a0 mac 10157960 Tree::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__4TreeFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Tree@@UAE_NXZ");
// win1.41 0074b6b0 mac 10157840 Tree::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__4TreeFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Tree@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0074b630 mac 10157ad0 Tree::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__4TreeFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Tree@@UAE_NXZ");
// win1.41 0074c0e0 mac 10156590 Tree::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__4TreeFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@Tree@@UAE_NPAVCreature@@@Z");
// win1.41 0074a180 mac 10158cd0 Tree::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void __fastcall AddToRoutePlan__4TreeFP8RPHolderP8CreatureiPFi7Point2Dfi_v(struct Object* this, const void* edx, struct RPHolder* param_1, struct Creature* param_2, int param_3, void (__cdecl* param_4)(int param_1, struct Point2D param_2, float param_3, int param_4)) asm("?AddToRoutePlan@Tree@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z");
// win1.41 0074a140 mac 10158d40 Tree::GetRoutePlanRadius(Creature *)
float __fastcall GetRoutePlanRadius__4TreeFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?GetRoutePlanRadius@Tree@@UAEMPAVCreature@@@Z");
// win1.41 0074b720 mac 10157800 Tree::IsARootedObject(void)
bool __fastcall IsARootedObject__4TreeFv(struct Object* this) asm("?IsARootedObject@Tree@@UAE_NXZ");
// win1.41 0055d900 mac 10159670 Tree::GetCarriedTreeType(void)
uint32_t __fastcall GetCarriedTreeType__4TreeFv(struct Object* this) asm("?GetCarriedTreeType@Tree@@UAEIXZ");
// win1.41 0074a9d0 mac 10158260 Tree::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__4TreeFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Tree@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 0074c5f0 mac 101559c0 Tree::CreateCollideData(void)
void __fastcall CreateCollideData__4TreeFv(struct SingleMapFixed* this) asm("?CreateCollideData@Tree@@UAEXXZ");
// win1.41 0074b810 mac 10157550 Tree::GetWoodValueMultiplier(void)
float __fastcall GetWoodValueMultiplier__4TreeFv(struct Tree* this) asm("?GetWoodValueMultiplier@Tree@@UAEMXZ");
// win1.41 0055d910 mac 100f0c30 Tree::GetForest(void)
struct Forest* __fastcall GetForest__4TreeFv(struct Tree* this) asm("?GetForest@Tree@@UAEPAVForest@@XZ");
// win1.41 0074c140 mac 10156370 Tree::SetOnFire(float)
void __fastcall SetOnFire__4TreeFf(struct Tree* this, const void* edx, float param_1) asm("?SetOnFire@Tree@@UAEXM@Z");

DECLARE_LH_LINKED_LIST(Tree);

#endif /* BW1_DECOMP_TREE_INCLUDED_H */
