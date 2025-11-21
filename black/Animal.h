#ifndef BW1_DECOMP_ANIMAL_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h> /* For enum DEATH_REASON, enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <chlasm/GStates.h> /* For ANIMAL_STATE_LAST_STATE, enum VILLAGER_STATES */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Living.h" /* For struct Living */
#include "LivingAction.h" /* For struct Living__StateTableEntry */

// Forward Declares

struct Base;
struct Creature;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct GestureSystemPacketData;
struct LHOSFile;
struct MapCoords;
struct MobileWallHug;
struct Object;
struct PhysOb;
struct PhysicsObject;
struct Reaction;
struct Spell;

struct Animal__StateTable
{
  struct Living__StateTableEntry entries[ANIMAL_STATE_LAST_STATE];  /* 0x0 */
};
static_assert(sizeof(struct Animal__StateTable) == 0x1dd0, "Data type is of wrong size");

struct Animal
{
  struct Living super;  /* 0x0 */
  uint8_t field_0xe0[0x2c];
  uint8_t death_reason;  /* 0x10c */
  float field_0x110;
  float field_0x114;
  float field_0x118;
  float field_0x11c;
  uint32_t field_0x120;
  float field_0x124;
  float field_0x128;
  float field_0x12c;
  float field_0x130;
  float field_0x134;
  float field_0x138;
  float field_0x13c;
  float field_0x140;
  float field_0x144;
};
static_assert(sizeof(struct Animal) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8e00 mac inlined Animal::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6Animal asm("??_R0?AVAnimal@@@8");
// win1.41 009a6c30 mac inlined Animal::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Animal asm("??_R1A@?0A@A@Animal@@8");
// win1.41 009a6c48 mac inlined Animal::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6Animal asm("??_R2Animal@@8");
// win1.41 009a6c70 mac inlined Animal::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6Animal asm("??_R3Animal@@8");
// win1.41 008ab7c8 mac 10761cd0 Animal::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6Animal asm("??_R4Animal@@6B@");
// win1.41 008ab7cc mac 10762bcc Animal::`vftable'
extern const struct LivingVftable __vt__6Animal asm("??_7Animal@@6B@");

// Non-virtual methods

// win1.41 0041abb0 mac 10087bd0 Animal::KeepFlockMemberWithinFlockArea(void)
uint32_t __fastcall KeepFlockMemberWithinFlockArea__6AnimalFv(struct Animal* this) asm("?KeepFlockMemberWithinFlockArea@Animal@@QAEIXZ");

// Override methods

// win1.41 004178a0 mac 1016c000 Animal::_dt(void)
void __fastcall __dt__6AnimalFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAnimal@@UAEPAXI@Z");
// win1.41 00417b60 mac 1016c0a0 Animal::ToBeDeleted(int)
void __fastcall ToBeDeleted__6AnimalFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Animal@@UAEXH@Z");
// win1.41 0071be10 mac 1050fbb0 Animal::GetGuidanceResourceType(void)
uint32_t __fastcall GetGuidanceResourceType__6AnimalFv(struct GameThing* this) asm("?GetGuidanceResourceType@Animal@@UAEIXZ");
// win1.41 0041b710 mac 10165620 Animal::Load(GameOSFile &)
uint32_t __fastcall Load__6AnimalFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Animal@@UAEIAAVGameOSFile@@@Z");
// win1.41 0041b460 mac 101659a0 Animal::Save(GameOSFile &)
uint32_t __fastcall Save__6AnimalFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Animal@@UAEIAAVGameOSFile@@@Z");
// win1.41 0041b9a0 mac 101655d0 Animal::ResolveLoad(void)
void __fastcall ResolveLoad__6AnimalFv(struct GameThing* this) asm("?ResolveLoad@Animal@@UAEXXZ");
// win1.41 00417840 mac 1012f3a0 Animal::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__6AnimalFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Animal@@UAEIXZ");
// win1.41 00417870 mac 1012f470 Animal::CanBeGivenToTown(Creature *)
uint32_t __fastcall CanBeGivenToTown__6AnimalFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeGivenToTown@Animal@@UAEIPAVCreature@@@Z");
// win1.41 004e4ae0 mac 105e41a0 Animal::IsAnimalBelongingToOtherPlayer(Creature *)
uint32_t __fastcall IsAnimalBelongingToOtherPlayer__6AnimalFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsAnimalBelongingToOtherPlayer@Animal@@UAEIPAVCreature@@@Z");
// win1.41 004eabd0 mac 1026e380 Animal::GetCreatureMimicType(void)
uint32_t __fastcall GetCreatureMimicType__6AnimalFv(struct GameThingWithPos* this) asm("?GetCreatureMimicType@Animal@@UAEIXZ");
// win1.41 004d1b20 mac 102430c0 Animal::GetHowMuchCreatureWantsToLookAtMe(void)
float __fastcall GetHowMuchCreatureWantsToLookAtMe__6AnimalFv(struct GameThingWithPos* this) asm("?GetHowMuchCreatureWantsToLookAtMe@Animal@@UAEMXZ");
// win1.41 00417890 mac 1012f720 Animal::GetDeathReason(void)
enum DEATH_REASON __fastcall GetDeathReason__6AnimalFv(struct GameThingWithPos* this) asm("?GetDeathReason@Animal@@UAE?AW4DEATH_REASON@@XZ");
// win1.41 00417880 mac 1004f080 Animal::IsAnimal(void)
uint32_t __fastcall IsAnimal__6AnimalFv(struct GameThingWithPos* this) asm("?IsAnimal@Animal@@UAEIXZ");
// win1.41 0041b200 mac 101662b0 Animal::GetScriptObjectType(void)
uint32_t __fastcall GetScriptObjectType__6AnimalFv(struct GameThingWithPos* this) asm("?GetScriptObjectType@Animal@@UAEIXZ");
// win1.41 00419310 mac 101696e0 Animal::GetHoldType(void)
enum HOLD_TYPE __fastcall GetHoldType__6AnimalFv(struct Object* this) asm("?GetHoldType@Animal@@UAE?AW4HOLD_TYPE@@XZ");
// win1.41 00419320 mac 10169690 Animal::GetHoldLoweringMultiplier(void)
float __fastcall GetHoldLoweringMultiplier__6AnimalFv(struct Object* this) asm("?GetHoldLoweringMultiplier@Animal@@UAEMXZ");
// win1.41 0041b1b0 mac 101666a0 Animal::DestroyedByEffect(GPlayer *, float)
uint32_t __fastcall DestroyedByEffect__6AnimalFP7GPlayerf(struct Object* this, const void* edx, struct GPlayer* param_1, float param_2) asm("?DestroyedByEffect@Animal@@UAEIPAVGPlayer@@M@Z");
// win1.41 00417700 mac 1012eed0 Animal::ProcessBySpell(Spell *)
uint32_t __fastcall ProcessBySpell__6AnimalFP5Spell(struct Object* this, const void* edx, struct Spell* param_1) asm("?ProcessBySpell@Animal@@UAEIPAVSpell@@@Z");
// win1.41 00417540 mac 1012e540 Animal::GetMesh( const(void))
int __fastcall GetMesh__6AnimalCFv(const struct Object* this) asm("?GetMesh@Animal@@UBEHXZ");
// win1.41 00417550 mac inlined Animal::GetDetailMesh(int)
int __fastcall GetDetailMesh__6AnimalFi(struct Object* this, const void* edx, int param_1) asm("?GetDetailMesh@Animal@@UAEHH@Z");
// win1.41 0051c310 mac 100419a0 Animal::Draw(void)
void __fastcall Draw__6AnimalFv(struct Object* this) asm("?Draw@Animal@@UAEXXZ");
// win1.41 00417ee0 mac 1004c150 Animal::ProcessState(void)
uint32_t __fastcall ProcessState__6AnimalFv(struct Object* this) asm("?ProcessState@Animal@@UAEIXZ");
// win1.41 0041a040 mac 10168030 Animal::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__6AnimalFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Animal@@UAEXABUMapCoords@@@Z");
// win1.41 00417530 mac 1012e500 Animal::GetResourceType(void)
enum RESOURCE_TYPE __fastcall GetResourceType__6AnimalFv(struct Object* this) asm("?GetResourceType@Animal@@UAE?AW4RESOURCE_TYPE@@XZ");
// win1.41 0041bc80 mac 10164dc0 Animal::GetDefaultResource(void)
int __fastcall GetDefaultResource__6AnimalFv(struct Object* this) asm("?GetDefaultResource@Animal@@UAEHXZ");
// win1.41 00419b40 mac 10168830 Animal::ValidForPlaceInHand(GInterfaceStatus *)
uint32_t __fastcall ValidForPlaceInHand__6AnimalFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForPlaceInHand@Animal@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00419b60 mac 10168730 Animal::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__6AnimalFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@Animal@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 0041b320 mac 10166000 Animal::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__6AnimalFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@Animal@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 0041b360 mac 10165e60 Animal::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__6AnimalFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@Animal@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 005f04d0 mac 10385070 Animal::GetPhysicsConstantsType(void)
uint32_t __fastcall GetPhysicsConstantsType__6AnimalFv(struct Object* this) asm("?GetPhysicsConstantsType@Animal@@UAEIXZ");
// win1.41 005f04e0 mac 10384ac0 Animal::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__6AnimalFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@Animal@@UAEXPAUPhysOb@@@Z");
// win1.41 005f0d80 mac 10384510 Animal::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__6AnimalFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@Animal@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 0041bc10 mac 10164e30 Animal::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__6AnimalFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Animal@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00417860 mac 1012f430 Animal::GetTastiness(void)
uint32_t __fastcall GetTastiness__6AnimalFv(struct Object* this) asm("?GetTastiness@Animal@@UAEIXZ");
// win1.41 0041a130 mac 10167d20 Animal::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__6AnimalFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@Animal@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");
// win1.41 00417780 mac 1012f0d0 Animal::StandAnimation(void)
uint32_t __fastcall StandAnimation__6AnimalFv(struct Object* this) asm("?StandAnimation@Animal@@UAEIXZ");
// win1.41 00417fe0 mac 10084290 Animal::SetSpeed(long)
void __fastcall SetSpeed__6AnimalFl(struct MobileWallHug* this, const void* edx, int param_1) asm("?SetSpeed@Animal@@UAEXH@Z");
// win1.41 00418560 mac 10049170 Animal::SetTowardsAngle(unsigned short)
void __fastcall SetTowardsAngle__6AnimalFUs(struct MobileWallHug* this, const void* edx, uint16_t param_1) asm("?SetTowardsAngle@Animal@@UAEXG@Z");
// win1.41 00418aa0 mac 100482e0 Animal::MoveTo3D(void)
void __fastcall MoveTo3D__6AnimalFv(struct MobileWallHug* this) asm("?MoveTo3D@Animal@@UAEXXZ");
// win1.41 0041a3f0 mac 1000bfc0 Animal::SetNewWander(MapCoords const &, long, long)
void __fastcall SetNewWander__6AnimalFRC9MapCoordsll(struct MobileWallHug* this, const void* edx, const struct MapCoords* param_1, int param_2, int param_3) asm("?SetNewWander@Animal@@UAEXABUMapCoords@@HH@Z");
// win1.41 0041acc0 mac 10166b90 Animal::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__6AnimalFv(struct Living* this) asm("?DecideWhatToDo@Animal@@UAE_NXZ");
// win1.41 0041a2b0 mac 1007c6d0 Animal::SetStateSpeed(void)
void __fastcall SetStateSpeed__6AnimalFv(struct Living* this) asm("?SetStateSpeed@Animal@@UAEXXZ");
// win1.41 0041b430 mac inlined Animal::IsFinalState(VILLAGER_STATES)
bool __fastcall IsFinalState__6AnimalF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsFinalState@Animal@@UAE_NW4VILLAGER_STATES@@@Z");
// win1.41 00417fa0 mac 10054d90 Animal::GetAnimId(void)
enum ANIM_LIST __fastcall GetAnimId__6AnimalFv(struct Living* this) asm("?GetAnimId@Animal@@UAE?AW4ANIM_LIST@@XZ");
// win1.41 0041a2c0 mac inlined Animal::CallExitStateFunction(VILLAGER_STATES)
uint32_t __fastcall CallExitStateFunction__6AnimalF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallExitStateFunction@Animal@@UAEIW4VILLAGER_STATES@@@Z");
// win1.41 0041a370 mac inlined Animal::CallEntryStateFunctionUcUc(VILLAGER_STATES, VILLAGER_STATES)
uint32_t __fastcall CallEntryStateFunction__UcUc__6AnimalF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2) asm("?CallEntryStateFunctionUcUc@Animal@@UAEIW4VILLAGER_STATES@@0@Z");
// win1.41 0041a310 mac inlined Animal::CallEntryStateFunctionUc(VILLAGER_STATES)
uint32_t __fastcall CallEntryStateFunction__Uc__6AnimalF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallEntryStateFunctionUc@Animal@@UAEIW4VILLAGER_STATES@@@Z");
// win1.41 0041b170 mac inlined Animal::ExitReaction(VILLAGER_STATES)
int __fastcall ExitReaction__6AnimalF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitReaction@Animal@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00417570 mac inlined Animal::IsScriptState( const(VILLAGER_STATES))
bool __fastcall IsScriptState__6AnimalCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsScriptState@Animal@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 00417590 mac inlined Animal::IsScriptInterruptableState( const(VILLAGER_STATES))
bool __fastcall IsScriptInterruptableState__6AnimalCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsScriptInterruptableState@Animal@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 0041b100 mac inlined Animal::IsStateExitFunctionSameAs( const(VILLAGER_STATES))
bool __fastcall IsStateExitFunctionSameAs__6AnimalCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsStateExitFunctionSameAs@Animal@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 0041b1c0 mac 101665d0 Animal::DebugShowTime(unsigned long, unsigned char, unsigned char)
uint32_t __fastcall DebugShowTime__6AnimalFUlUcUc(struct Living* this, const void* edx, uint32_t param_1, uint8_t param_2, uint8_t param_3) asm("?DebugShowTime@Animal@@UAEIIEE@Z");
// win1.41 00419bc0 mac 10168630 Animal::IsInterestedInFoodObject(Object *)
bool __fastcall IsInterestedInFoodObject__6AnimalFP6Object(struct Living* this, const void* edx, struct Object* param_1) asm("?IsInterestedInFoodObject@Animal@@UAE_NPAVObject@@@Z");
// win1.41 0041a280 mac 10167c30 Animal::ResetStateAfterReacting(void)
void __fastcall ResetStateAfterReacting__6AnimalFv(struct Living* this) asm("?ResetStateAfterReacting@Animal@@UAEXXZ");
// win1.41 00420440 mac 10176350 Animal::SetupReactToCreature(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToCreature__6AnimalFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToCreature@Animal@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004204a0 mac 101760c0 Animal::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFlyingObject__6AnimalFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFlyingObject@Animal@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00420460 mac 101762d0 Animal::SetupReactToFire(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFire__6AnimalFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFire@Animal@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00420480 mac 10176250 Animal::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFallingTree__6AnimalFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFallingTree@Animal@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00420410 mac 101763d0 Animal::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
void __fastcall SetupFleeFromPredator__6AnimalFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupFleeFromPredator@Animal@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004175c0 mac 1012e7f0 Animal::FollowObjectPriority(Reaction *, Reaction *)
uint8_t __fastcall FollowObjectPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?FollowObjectPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004175d0 mac 1012e840 Animal::LookAtSpellPriority(Reaction *, Reaction *)
uint8_t __fastcall LookAtSpellPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?LookAtSpellPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004175e0 mac 1012e890 Animal::LookAtNiceSpellPriority(Reaction *, Reaction *)
uint8_t __fastcall LookAtNiceSpellPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?LookAtNiceSpellPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004175f0 mac 1012e8e0 Animal::FollowSpellPriority(Reaction *, Reaction *)
uint8_t __fastcall FollowSpellPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?FollowSpellPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417600 mac 1012e930 Animal::ReactToWoodPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToWoodPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToWoodPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417610 mac 1012e980 Animal::ReactToMagicTreePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicTreePriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicTreePriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417620 mac 1012e9e0 Animal::ReactToBallPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToBallPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToBallPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004203a0 mac 101765e0 Animal::ReactToFirePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFirePriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFirePriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417630 mac 1012ea30 Animal::ReactToMagicShieldPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicShieldPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicShieldPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417640 mac 1012ea90 Animal::ReactToCreatureGiftPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToCreatureGiftPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToCreatureGiftPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417650 mac 1012eaf0 Animal::ReactToNewBuildingPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToNewBuildingPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToNewBuildingPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417660 mac 1012eb50 Animal::ReactToHandPickUpPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToHandPickUpPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToHandPickUpPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417670 mac 1012ebb0 Animal::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToHandUsingTotemPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToHandUsingTotemPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417680 mac 1012ec10 Animal::ReactToObjectCrushedPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToObjectCrushedPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToObjectCrushedPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 00417690 mac 1012ec70 Animal::ReactToFightPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFightPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFightPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004176a0 mac 1012ecc0 Animal::ReactToTeleportPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToTeleportPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToTeleportPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004176b0 mac 1012ed10 Animal::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToHandPuttingStuffInStoragePitPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToHandPuttingStuffInStoragePitPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004176c0 mac 1012ed80 Animal::ReactToDeathPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToDeathPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToDeathPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004176d0 mac 1012edd0 Animal::ReactToDroppedByHandPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToDroppedByHandPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToDroppedByHandPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004176e0 mac 1012ee30 Animal::ReactToFaintingPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFaintingPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFaintingPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004176f0 mac 1012ee80 Animal::ReactToConfusedPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToConfusedPriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToConfusedPriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 004203b0 mac 10176560 Animal::ReactToFallingTreePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFallingTreePriority__6AnimalFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFallingTreePriority@Animal@@UAEEPAVReaction@@0@Z");
// win1.41 0041bb00 mac 101650c0 Animal::IsChild(void)
bool __fastcall IsChild__6AnimalFv(struct Living* this) asm("?IsChild@Animal@@UAE_NXZ");
// win1.41 00420550 mac 10175d80 Animal::GetFleeingPositionFromMovingObject(MapCoords *, GameThingWithPos *, float)
void __fastcall GetFleeingPositionFromMovingObject__6AnimalFP9MapCoordsP16GameThingWithPosf(struct Living* this, const void* edx, struct MapCoords* param_1, struct GameThingWithPos* param_2, float param_3) asm("?GetFleeingPositionFromMovingObject@Animal@@UAEXPAUMapCoords@@PAVGameThingWithPos@@M@Z");
// win1.41 0041a240 mac 1007c570 Animal::GetFinalState( const(void))
enum VILLAGER_STATES __fastcall GetFinalState__6AnimalCFv(const struct Living* this) asm("?GetFinalState@Animal@@UBE?AW4VILLAGER_STATES@@XZ");
// win1.41 0041b210 mac 10055c50 Animal::IsPosValidForTurnAngle(MapCoords const &)
bool __fastcall IsPosValidForTurnAngle__6AnimalFRC9MapCoords(struct Living* this, const void* edx, const struct MapCoords* param_1) asm("?IsPosValidForTurnAngle@Animal@@UAE_NABUMapCoords@@@Z");

#endif /* BW1_DECOMP_ANIMAL_INCLUDED_H */
