#ifndef BW1_DECOMP_LIVING_INCLUDED_H
#define BW1_DECOMP_LIVING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE, enum REACTION */
#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "LivingAction.h" /* For enum LIVING_ACTION_INDEX, struct LivingAction */
#include "MobileWallHug.h" /* For struct MobileWallHug, struct MobileWallHugVftable */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct Creature;
struct DanceGroup;
struct DataPath;
struct Flock;
struct GFootpath;
struct GFootpathNode;
struct GInterfaceStatus;
struct GLivingInfo;
struct GameOSFile;
struct GameThingVftable;
struct GestureSystemPacketData;
struct JustMapXZ;
struct LHPoint;
struct Living;
struct MapCoords;
struct ObjectVftable;
struct PhysicsObject;
struct Reaction;
struct ReactionDoneWhen;

struct LivingMapCell
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct LivingMapCell) == 0x1, "Data type is of wrong size");

// Constructors

// win1.41 00767fe0 mac 10595660 LivingMapCell::LivingMapCell(JustMapXZ &)
struct LivingMapCell* __fastcall __ct__13LivingMapCellFR9JustMapXZ(struct LivingMapCell* this, const void* edx, struct JustMapXZ* param_1) asm("??0LivingMapCell@@QAE@AAUJustMapXZ@@@Z");

// Non-virtual methods

// win1.41 007680d0 mac 105953b0 LivingMapCell::FindFreePosition(JustMapXZ &, MapCoords const &, MapCoords *)
bool32_t __fastcall FindFreePosition__13LivingMapCellFR9JustMapXZRC9MapCoordsP9MapCoords(struct LivingMapCell* this, const void* edx, struct JustMapXZ* param_1, const struct MapCoords* param_2, struct MapCoords* param_3) asm("?FindFreePosition@LivingMapCell@@QAEIAAUJustMapXZ@@ABUMapCoords@@PAU3@@Z");

struct DataForScriptRemind
{
  struct GameThing super;  /* 0x0 */
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint32_t field_0x30;
  uint32_t field_0x34;
  uint32_t field_0x38;
  uint32_t field_0x3c;
  uint32_t field_0x40;
  uint32_t field_0x44;
};
static_assert(sizeof(struct DataForScriptRemind) == 0x48, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf3ad8 mac inlined DataForScriptRemind::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19DataForScriptRemind asm("??_R0?AVDataForScriptRemind@@@8");
// win1.41 009b1a20 mac inlined DataForScriptRemind::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19DataForScriptRemind asm("??_R1A@?0A@A@DataForScriptRemind@@8");
// win1.41 009b1a38 mac inlined DataForScriptRemind::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19DataForScriptRemind asm("??_R2DataForScriptRemind@@8");
// win1.41 009b1a48 mac inlined DataForScriptRemind::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19DataForScriptRemind asm("??_R3DataForScriptRemind@@8");
// win1.41 0092b51c mac 109a0de0 DataForScriptRemind::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__19DataForScriptRemind asm("??_R4DataForScriptRemind@@6B@");
// win1.41 0092b520 mac 109a0de8 DataForScriptRemind::`vftable'
extern const struct GameThingVftable __vt__19DataForScriptRemind asm("??_7DataForScriptRemind@@6B@");

// Static methods

// win1.41 005ef190 mac 1037cff0 DataForScriptRemind::Create(void)
struct DataForScriptRemind* __cdecl Create__19DataForScriptRemindFv(void) asm("?Create@DataForScriptRemind@@SAPAV1@XZ");

// Constructors

// win1.41 005ef110 mac 1037d100 DataForScriptRemind::DataForScriptRemind(void)
struct DataForScriptRemind* __fastcall __ct__19DataForScriptRemindFv(struct DataForScriptRemind* this) asm("??0DataForScriptRemind@@QAE@XZ");

// Override methods

// win1.41 005ef170 mac 1037c460 DataForScriptRemind::_dt(void)
void __fastcall __dt__19DataForScriptRemindFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDataForScriptRemind@@UAEPAXI@Z");
// win1.41 005ef160 mac 1037c530 DataForScriptRemind::GetDebugText(void)
char* __fastcall GetDebugText__19DataForScriptRemindFv(struct GameThing* this) asm("?GetDebugText@DataForScriptRemind@@UAEPADXZ");
// win1.41 005ef570 mac 1037c5c0 DataForScriptRemind::Load(GameOSFile &)
uint32_t __fastcall Load__19DataForScriptRemindFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@DataForScriptRemind@@UAEIAAVGameOSFile@@@Z");
// win1.41 005ef360 mac 1037c8b0 DataForScriptRemind::Save(GameOSFile &)
uint32_t __fastcall Save__19DataForScriptRemindFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@DataForScriptRemind@@UAEIAAVGameOSFile@@@Z");
// win1.41 005ef150 mac 1037c4f0 DataForScriptRemind::GetSaveType(void)
uint32_t __fastcall GetSaveType__19DataForScriptRemindFv(struct GameThing* this) asm("?GetSaveType@DataForScriptRemind@@UAEIXZ");

struct LivingDLList
{
  struct LivingDLList* next;  /* 0x0 */
  struct LivingDLList* prev;
  struct Living* payload;
};
static_assert(sizeof(struct LivingDLList) == 0xc, "Data type is of wrong size");

struct LivingVftable
{
  struct MobileWallHugVftable super;  /* 0x0 */
  bool (__fastcall* AmILikelyToMove)(struct Living* this);  /* 0x874 */
  void (__fastcall* SetFoodSpeedup)(struct Living* this, const void* edx, bool speedup);
  bool (__fastcall* IsFoodSpeedUp)(struct Living* this);
  uint32_t (__fastcall* GetNumTurnsToDieOver)(struct Living* this);  /* 0x880 */
  struct MapCoords* (__fastcall* GetFinalDestPos)(struct Living* this, const void* edx, struct MapCoords* pos);
  bool (__fastcall* FleeingFromObjectReaction)(struct Living* this);
  bool (__fastcall* LookingAtObjectReaction)(struct Living* this);
  bool (__fastcall* FleeingAndLookingAtObjectReaction)(struct Living* this);  /* 0x890 */
  bool (__fastcall* FollowingObjectReaction)(struct Living* this);
  bool (__fastcall* InspectObjectReaction)(struct Living* this);
  bool (__fastcall* Dying)(struct Living* this);
  bool (__fastcall* Dead)(struct Living* this);  /* 0x8a0 */
  bool (__fastcall* Downed)(struct Living* this);
  bool (__fastcall* BeingEaten)(struct Living* this);
  bool (__fastcall* GotoFoodReaction)(struct Living* this);
  bool (__fastcall* GotoWoodReaction)(struct Living* this);  /* 0x8b0 */
  bool (__fastcall* MoveInFlock)(struct Living* this);
  bool (__fastcall* IsMovingForAnimation)(struct Living* this);
  bool (__fastcall* ArrivesAtFoodReaction)(struct Living* this);
  bool (__fastcall* ArrivesAtWoodReaction)(struct Living* this);  /* 0x8c0 */
  bool (__fastcall* InHand)(struct Living* this);
  bool (__fastcall* DecideWhatToDo)(struct Living* this);
  void (__fastcall* Birthday)(struct Living* this);
  uint32_t (__fastcall* GetAge)(struct Living* this);  /* 0x8d0 */
  void (__fastcall* SetAge)(struct Living* this, const void* edx, uint32_t age);
  bool (__fastcall* LookAtFlyingObjectReaction)(struct Living* this);
  int (__fastcall* SetCurrentAndDestinationState)(struct Living* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination);
  int (__fastcall* CallIntoAnimationFunction)(struct Living* this, const void* edx, enum VILLAGER_STATES state);  /* 0x8e0 */
  int (__fastcall* CallOutofAnimationFunction)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  int (__fastcall* SetTopState)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  void (__fastcall* StorePreviousState)(struct Living* this);
  void (__fastcall* SetStateSpeed)(struct Living* this);  /* 0x8f0 */
  bool (__fastcall* IsFinalState)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  void (__fastcall* SetAnim__li)(struct Living* this, const void* edx, int param_1, int param_2);
  void (__fastcall* SetAnim__i)(struct Living* this, const void* edx, int param_1);
  enum ANIM_LIST (__fastcall* GetAnimId)(struct Living* this);  /* 0x900 */
  uint32_t (__fastcall* CallExitStateFunction)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  uint32_t (__fastcall* CallEntryStateFunction__UcUc)(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
  uint32_t (__fastcall* CallEntryStateFunction__Uc)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  int (__fastcall* ExitReaction)(struct Living* this, const void* edx, enum VILLAGER_STATES state);  /* 0x910 */
  int (__fastcall* ExitInScript)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  int (__fastcall* ExitDanceInScript)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  int (__fastcall* ExitInHand)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  int (__fastcall* ExitInFlying)(struct Living* this, const void* edx, enum VILLAGER_STATES state);  /* 0x920 */
  int (__fastcall* ExitInLanded)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  int (__fastcall* ExitNoChangeState)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  int (__fastcall* ExitMoveOnPath)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  int (__fastcall* ExitMoveToPos)(struct Living* this, const void* edx, uint8_t param_1);  /* 0x930 */
  int (__fastcall* ExitBeingEaten)(struct Living* this, const void* edx, uint8_t param_1);
  void (__fastcall* SetState)(struct Living* this, const void* edx, enum LIVING_ACTION_INDEX index, enum VILLAGER_STATES state);
  uint32_t (__fastcall* EnterMoveToPos)(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
  uint32_t (__fastcall* EnterInScript)(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);  /* 0x940 */
  uint32_t (__fastcall* EnterInHand)(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
  uint32_t (__fastcall* EnterMoveOnPath)(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
  uint32_t (__fastcall* EnterDanceInScript)(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
  uint32_t (__fastcall* EnterScriptWander)(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);  /* 0x950 */
  int (__fastcall* ExitScriptWander)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  uint32_t (__fastcall* EnterPlayAnim)(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
  int (__fastcall* ExitPlayAnim)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  bool (__fastcall* IsScriptState)(const struct Living* this, const void* edx, enum VILLAGER_STATES state);  /* 0x960 */
  bool (__fastcall* IsScriptInterruptableState)(const struct Living* this, const void* edx, enum VILLAGER_STATES state);
  bool (__fastcall* IsStateForInterface)(const struct Living* this, const void* edx, enum VILLAGER_STATES state);
  bool (__fastcall* IsStateExitFunctionSameAs)(const struct Living* this, const void* edx, enum VILLAGER_STATES state);
  bool (__fastcall* IsDeathState)(const struct Living* this, const void* edx, enum VILLAGER_STATES state);  /* 0x970 */
  uint32_t (__fastcall* DebugShowTime)(struct Living* this, const void* edx, uint32_t param_1, uint8_t param_2, uint8_t param_3);
  bool (__fastcall* IsDancing)(struct Living* this);
  bool (__fastcall* IsInterestedInFoodObject)(struct Living* this, const void* edx, struct Object* object);
  bool (__fastcall* IsInterestedInWoodObject)(struct Living* this, const void* edx, struct Object* object);  /* 0x980 */
  bool (__fastcall* IsAvailableForReaction)(struct Living* this, const void* edx, enum REACTION reaction);
  bool (__fastcall* IsAvailableForBeliefButNotReaction)(struct Living* this, const void* edx, enum REACTION reaction);
  void (__fastcall* UpdateHowImpressed)(struct Living* this, const void* edx, struct Reaction* param_1, int param_2);
  void (__fastcall* AddReaction)(struct Living* this, const void* edx, struct Reaction* reaction, enum VILLAGER_STATES state);  /* 0x990 */
  void (__fastcall* StartReacting)(struct Living* this, const void* edx, enum REACTION type, struct GameThingWithPos* target, struct Reaction* reaction);
  void (__fastcall* StopReacting)(struct Living* this);
  void (__fastcall* StopReactingAndSetState)(struct Living* this);
  void (__fastcall* ResetStateAfterReacting)(struct Living* this);  /* 0x9a0 */
  void (__fastcall* SetupFleeFromObject)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupLookAtObject)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupLookAtSpell)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupLookAtNiceSpell)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);  /* 0x9b0 */
  void (__fastcall* SetupFollowObject)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToCreature)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToFood)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToWood)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);  /* 0x9c0 */
  void (__fastcall* SetupReactToMagicTree)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToFlyingObject)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToFire)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToBall)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);  /* 0x9d0 */
  void (__fastcall* SetupReactToMagicShield)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToCreatureGift)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToNewBuilding)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToHandPickUp)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);  /* 0x9e0 */
  void (__fastcall* SetupReactToHandUsingTotem)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToObjectCrushed)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToFight)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToTeleport)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);  /* 0x9f0 */
  void (__fastcall* SetupReactToHandPuttingStuffInStoragePit)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToDeath)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToDroppedByHand)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToFainting)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);  /* 0xa00 */
  void (__fastcall* SetupReactToConfused)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToFallingTree)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToCrowd)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToBreeder)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);  /* 0xa10 */
  void (__fastcall* SetupFleeFromPredator)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToTownCelebration)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToVillagerInHand)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToBurningObjectInHand)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);  /* 0xa20 */
  void (__fastcall* SetupReactToMagicShieldStruck)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  void (__fastcall* SetupReactToMagicShieldDestroyed)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* FleeFromObjectPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* LookAtObjectPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);  /* 0xa30 */
  uint8_t (__fastcall* FollowObjectPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* FleeFromSpellPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* LookAtSpellPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* LookAtNiceSpellPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);  /* 0xa40 */
  uint8_t (__fastcall* FollowSpellPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToCreaturePriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToFoodPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToWoodPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);  /* 0xa50 */
  uint8_t (__fastcall* ReactToMagicTreePriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToFlyingObjectPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToBallPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToFirePriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);  /* 0xa60 */
  uint8_t (__fastcall* ReactToMagicShieldPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToCreatureGiftPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToNewBuildingPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToHandPickUpPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);  /* 0xa70 */
  uint8_t (__fastcall* ReactToHandUsingTotemPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToObjectCrushedPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToFightPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToTeleportPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);  /* 0xa80 */
  uint8_t (__fastcall* ReactToHandPuttingStuffInStoragePitPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToDeathPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToDroppedByHandPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToFaintingPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);  /* 0xa90 */
  uint8_t (__fastcall* ReactToConfusedPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToFallingTreePriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToCrowdPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToBreederPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);  /* 0xaa0 */
  uint8_t (__fastcall* ReactToTownCelebrationPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* FleeFromPredatorPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToVillagerInHandPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToBurningObjectInHandPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);  /* 0xab0 */
  uint8_t (__fastcall* ReactToMagicShieldStruckPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToMagicShieldDestroyedPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint8_t (__fastcall* ReactToScaffoldPriority)(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2);
  uint32_t (__fastcall* StandardNumGameTurnsToReactFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);  /* 0xac0 */
  uint32_t (__fastcall* StandardNumGameTurnsBeforeReactingAgainFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);
  uint32_t (__fastcall* NumGameTurnsToReactToCreatureFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);
  uint32_t (__fastcall* NumGameTurnsBeforeReactingAgainToCreatureFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);
  uint32_t (__fastcall* NumGameTurnsToReactToPredatorFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);  /* 0xad0 */
  uint32_t (__fastcall* NumGameTurnsBeforeReactingAgainToPredatorFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);
  uint32_t (__fastcall* StandardNumGameTurnsBeforeReactingToWoodAgainFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);
  uint32_t (__fastcall* NumGameTurnsToReactToBurningObjectFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);
  uint32_t (__fastcall* NumGameTurnsBeforeReactingAgainToBurningObjectFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);  /* 0xae0 */
  uint32_t (__fastcall* NumGameTurnsToReactToShieldFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);
  uint32_t (__fastcall* NumGameTurnsBeforeReactingToShieldAgainFunction)(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3);
  uint32_t (__fastcall* IsPosValidForMapCellExistance)(struct Living* this, const void* edx, const struct MapCoords* param_1);
  void (__fastcall* MoveByTeleport)(struct Living* this, const void* edx, const struct MapCoords* param_1);  /* 0xaf0 */
  bool (__fastcall* IsDead)(struct Living* this);
  bool (__fastcall* IsChild)(struct Living* this);
  void (__fastcall* GetFleeingPositionFromMovingObject)(struct Living* this, const void* edx, struct MapCoords* param_1, struct GameThingWithPos* param_2, float param_3);
  void (__fastcall* GetFleeingPositionFromStationaryObject)(struct Living* this, const void* edx, struct MapCoords* param_1, struct GameThingWithPos* param_2, float param_3);  /* 0xb00 */
  enum VILLAGER_STATES (__fastcall* GetFinalState)(const struct Living* this);
  void (__fastcall* RemoveFromDance)(struct Living* this, const void* edx, int param_1);
  void (__fastcall* SetStateAfterFinishingDance)(struct Living* this);
  float (__fastcall* CalculateLifeDesire)(struct Living* this);  /* 0xb10 */
  uint32_t (__fastcall* DanceType)(struct Living* this);
  bool (__fastcall* CanBeHealedByHealSpell)(struct Living* this);
  bool (__fastcall* MoveAllowedForChessGame)(struct Living* this);
  bool (__fastcall* AttackAllowedForChessGame)(struct Living* this);  /* 0xb20 */
  void (__fastcall* AddToBoxPositionForChessGame)(struct Living* this, const void* edx, int param_1, int param_2);
  int (__fastcall* GetBoxXForChessGame)(struct Living* this);
  int (__fastcall* GetBoxZForChessGame)(struct Living* this);
  void (__fastcall* SetBoxXForChessGame)(struct Living* this, const void* edx, int param_1);  /* 0xb30 */
  void (__fastcall* SetBoxZForChessGame)(struct Living* this, const void* edx, int param_1);
  uint32_t (__fastcall* GetTeamForChessGame)(struct Living* this);
  bool (__fastcall* IsPosValidForTurnAngle)(struct Living* this, const void* edx, const struct MapCoords* param_1);
};
static_assert(sizeof(struct LivingVftable) == 0xb40, "Data type is of wrong size");

union LivingBase
{
  struct MobileWallHug super;
  struct Object super_object;
  struct GameThingWithPos super_gamethingwithpos;
  struct ObjectVftable* vftable_object;
  struct LivingVftable* living_vftable;
  struct GameThingVftable* gameThing_vftable;
};
static_assert(sizeof(union LivingBase) == 0x8c, "Data type is of wrong size");

struct Living
{
  union LivingBase base;  /* 0x0 */
  struct LivingAction action;  /* 0x8c */
  struct Reaction* reaction;  /* 0x94 */
  struct ReactionDoneWhen* reaction_done_when;
  int field_0x9c;
  int32_t birth_turn;  /* 0xa0 */
  struct Living* next;
  uint32_t field_0xa8;
  struct DataPath* data_path;
  struct DataForScriptRemind* data_for_script_remind;  /* 0xb0 */
  uint16_t status;
  struct Flock* flock;
  struct GameThingWithPos* field_0xbc;
  uint32_t field_0xc0;
  uint32_t field_0xc4;
  struct GFootpath* footpath;
  struct GFootpathNode* footpath_node;
  struct LH3DColor specular_color;  /* 0xd0 */
  uint32_t field_0xd4;
  struct DanceGroup* dance_group;
  uint8_t field_0xdc;
};
static_assert(sizeof(struct Living) == 0xe0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8de8 mac inlined Living::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__6Living asm("??_R0?AVLiving@@@8");
// win1.41 009a6c18 mac inlined Living::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__6Living asm("??_R1A@?0A@A@Living@@8");
// win1.41 009a95f8 mac inlined Living::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__6Living asm("??_R2Living@@8");
// win1.41 009a9618 mac inlined Living::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__6Living asm("??_R3Living@@8");
// win1.41 008cd390 mac 10732c98 Living::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__6Living asm("??_R4Living@@6B@");
// win1.41 008cd394 mac 106f5ae0 Living::`vftable'
extern const struct LivingVftable __vt__6Living asm("??_7Living@@6B@");

// Static methods

// win1.41 005ec810 mac 1004bb10 Living::ProcessLiving(void)
void __cdecl ProcessLiving__6LivingFv(void) asm("?ProcessLiving@Living@@SAXXZ");

// Constructors

// win1.41 0055c820 mac 1030ed90 Living::Living(void)
struct Living* __fastcall __ct__6LivingFv(struct Living* this) asm("??0Living@@QAE@XZ");
// win1.41 005ebec0 mac 10383560 Living::Living(MapCoords const &, GLivingInfo const *)
struct Living* __fastcall __ct__6LivingFRC9MapCoordsPC11GLivingInfo(struct Living* this, const void* edx, struct MapCoords* coords, struct GLivingInfo* info) asm("??0Living@@QAE@ABUMapCoords@@PBVGLivingInfo@@@Z");

// Non-virtual methods

// win1.41 005afe20 mac inlined Living::StateArrivesAtFoodReaction(void)
uint32_t __fastcall StateArrivesAtFoodReaction__6LivingFv(struct Living* this) asm("?StateArrivesAtFoodReaction@Living@@QAEIXZ");
// win1.41 005afe30 mac inlined Living::StateDying(void)
uint32_t __fastcall StateDying__6LivingFv(struct Living* this) asm("?StateDying@Living@@QAEIXZ");
// win1.41 005afe80 mac inlined Living::StateArrivesAtWoodReaction(void)
uint32_t __fastcall StateArrivesAtWoodReaction__6LivingFv(struct Living* this) asm("?StateArrivesAtWoodReaction@Living@@QAEIXZ");
// win1.41 005afe90 mac inlined Living::StateDead(void)
uint32_t __fastcall StateDead__6LivingFv(struct Living* this) asm("?StateDead@Living@@QAEIXZ");
// win1.41 005aff20 mac inlined Living::StateInHand(void)
uint32_t __fastcall StateInHand__6LivingFv(struct Living* this) asm("?StateInHand@Living@@QAEIXZ");
// win1.41 005aff30 mac inlined Living::StateDowned(void)
uint32_t __fastcall StateDowned__6LivingFv(struct Living* this) asm("?StateDowned@Living@@QAEIXZ");
// win1.41 005aff40 mac inlined Living::StateSetDying(void)
uint32_t __fastcall StateSetDying__6LivingFv(struct Living* this) asm("?StateSetDying@Living@@QAEIXZ");
// win1.41 005affd0 mac inlined Living::StateBeingEaten(void)
uint32_t __fastcall StateBeingEaten__6LivingFv(struct Living* this) asm("?StateBeingEaten@Living@@QAEIXZ");
// win1.41 005affe0 mac inlined Living::StateFleeingFromObjectReaction(void)
uint32_t __fastcall StateFleeingFromObjectReaction__6LivingFv(struct Living* this) asm("?StateFleeingFromObjectReaction@Living@@QAEIXZ");
// win1.41 005b0040 mac inlined Living::StateAlongPath(void)
uint32_t __fastcall StateAlongPath__6LivingFv(struct Living* this) asm("?StateAlongPath@Living@@QAEIXZ");
// win1.41 005b0050 mac inlined Living::StateBeingGoToFoodReaction(void)
uint32_t __fastcall StateGoToFoodReaction__6LivingFv(struct Living* this) asm("?StateGoToFoodReaction@Living@@QAEIXZ");
// win1.41 005b0060 mac inlined Living::StateLookingAtObjectReaction(void)
uint32_t __fastcall StateLookingAtObjectReaction__6LivingFv(struct Living* this) asm("?StateLookingAtObjectReaction@Living@@QAEIXZ");
// win1.41 005b00e0 mac inlined Living::StateFleeingAndLookingAtObjectReaction(void)
uint32_t __fastcall StateFleeingAndLookingAtObjectReaction__6LivingFv(struct Living* this) asm("?StateFleeingAndLookingAtObjectReaction@Living@@QAEIXZ");
// win1.41 005b00f0 mac inlined Living::StateBeingGoToWoodReaction(void)
uint32_t __fastcall StateGoToWoodReaction__6LivingFv(struct Living* this) asm("?StateGoToWoodReaction@Living@@QAEIXZ");
// win1.41 005b0190 mac inlined Living::StateMoveInFlock(void)
uint32_t __fastcall StateMoveInFlock__6LivingFv(struct Living* this) asm("?StateMoveInFlock@Living@@QAEIXZ");
// win1.41 005b01b0 mac inlined Living::StateFollowingObjectReaction(void)
uint32_t __fastcall StateFollowingObjectReaction__6LivingFv(struct Living* this) asm("?StateFollowingObjectReaction@Living@@QAEIXZ");
// win1.41 005b0230 mac inlined Living::StateLookingAtFlyingObjectReaction(void)
uint32_t __fastcall StateLookingAtFlyingObjectReaction__6LivingFv(struct Living* this) asm("?StateLookingAtFlyingObjectReaction@Living@@QAEIXZ");
// win1.41 005b0240 mac inlined Living::StateInspectObjectReaction(void)
uint32_t __fastcall StateInspectObjectReaction__6LivingFv(struct Living* this) asm("?StateInspectObjectReaction@Living@@QAEIXZ");
// win1.41 005ec030 mac 103834b0 Living::SetToZero(void)
void __fastcall SetToZero__6LivingFv(struct Living* this) asm("?SetToZero@Living@@QAEXXZ");
// win1.41 005ec1d0 mac 103831d0 Living::InvalidState(void)
bool32_t __fastcall InvalidState__6LivingFv(struct Living* this) asm("?InvalidState@Living@@QAEIXZ");
// win1.41 005ec270 mac 1004cf70 Living::MoveToPos(void)
int __fastcall MoveToPos__6LivingFv(struct Living* this) asm("?MoveToPos@Living@@QAEHXZ");
// win1.41 005ec2c0 mac 10382da0 Living::MoveToObject(void)
uint32_t __fastcall MoveToObject__6LivingFv(struct Living* this) asm("?MoveToObject@Living@@QAEIXZ");
// win1.41 005ec330 mac 10382cf0 Living::Flying(void)
uint32_t __fastcall Flying__6LivingFv(struct Living* this) asm("?Flying@Living@@QAEIXZ");
// win1.41 005ec520 mac 103826a0 Living::LookAtObject(GameThingWithPos *, unsigned long)
uint32_t __fastcall LookAtObject__6LivingFP16GameThingWithPosUl(struct Living* this, const void* edx, struct GameThingWithPos* param_1, unsigned long param_2) asm("?LookAtObject@Living@@QAEIPAVGameThingWithPos@@K@Z");
// win1.41 005ec550 mac 10382540 Living::LookAtPos(MapCoords const &, ulong)
bool __fastcall LookAtPos__6LivingFRC9MapCoordsUl(struct Living* this, const void* edx, struct MapCoords* pos, int param_2) asm("?LookAtPos@Living@@QAE_NABUMapCoords@@K@Z");
// win1.41 005ec960 mac 1004eb50 Living::IsReadyForNewAnimation(unsigned long)
bool __fastcall IsReadyForNewAnimation__6LivingFUl(const struct Living* this, const void* edx, uint32_t index) asm("?IsReadyForNewAnimation@Living@@QAE_NK@Z");
// win1.41 005ec990 mac 10054e20 Living::WaitForAnimation(void)
uint32_t __fastcall WaitForAnimation__6LivingFv(struct Living* this) asm("?WaitForAnimation@Living@@QAEIXZ");
// win1.41 005eca60 mac 10381e30 Living::GetReaction(void)
void __fastcall GetReaction__6LivingFv(struct Living* this) asm("?GetReaction@Living@@QAEXXZ");
// win1.41 005eca80 mac inlined Living::SetTopStateToFinal(void)
void __fastcall SetTopStateToFinal__6LivingFv(struct Living* this) asm("?SetTopStateToFinal@Living@@QAEXXZ");
// win1.41 005ecac0 mac 10091bd0 Living::PlayAnimThenSetState(unsigned char, unsigned long)
void __fastcall PlayAnimThenSetState__6LivingFUcUl(struct Living* this, const void* edx, unsigned char param_1, unsigned long param_2) asm("?PlayAnimThenSetState@Living@@QAEXEK@Z");
// win1.41 005ecb10 mac 10053750 Living::SetStateAnim(void)
void __fastcall SetStateAnim__6LivingFv(struct Living* this) asm("?SetStateAnim@Living@@QAEXXZ");
// win1.41 005ecd00 mac 10380fd0 Living::MoveOnStructure(void)
uint32_t __fastcall MoveOnStructure__6LivingFv(struct Living* this) asm("?MoveOnStructure@Living@@QAEIXZ");
// win1.41 005ecf60 mac 1006ced0 Living::GetFlockPos(void)
struct MapCoords* __fastcall GetFlockPos__6LivingFv(struct Living* this) asm("?GetFlockPos@Living@@QAEPAUMapCoords@@XZ");
// win1.41 005ecf70 mac 1004bf90 Living::IAmFlockLeader(void)
bool __fastcall IAmFlockLeader__6LivingFv(struct Living* this) asm("?IAmFlockLeader@Living@@QAE_NXZ");
// win1.41 005ecfa0 mac 10065500 Living::GetDomainRadius(void)
uint16_t __fastcall GetDomainRadius__6LivingFv(struct Living* this) asm("?GetDomainRadius@Living@@QAEGXZ");
// win1.41 005ecfc0 mac 1006cd50 Living::GetFlockDistance(void)
uint16_t __fastcall GetFlockDistance__6LivingFv(struct Living* this) asm("?GetFlockDistance@Living@@QAEGXZ");
// win1.41 005ed080 mac 100336b0 Living::CalcRandomPos(MapCoords const &, float, float)
struct MapCoords* __fastcall CalcRandomPos__6LivingFRC9MapCoordsff(struct Living* this, const void* edx, struct MapCoords* param_1, struct MapCoords* param_2, float param_3, float param_4) asm("?CalcRandomPos@Living@@QAEPAUMapCoords@@ABU2@MM@Z");
// win1.41 005ed2c0 mac 10380600 Living::SetAge(float)
void __fastcall SetAge__6LivingFUl(struct Living* this, const void* edx, int age) asm("?SetAge@Living@@QAEXK@Z");
// win1.41 005ed9a0 mac 1006cf40 Living::StateInScript(void)
uint32_t __fastcall StateInScript__6LivingFv(struct Living* this) asm("?StateInScript@Living@@QAEIXZ");
// win1.41 005edad0 mac 1037f9b0 Living::StateInDance(void)
uint32_t __fastcall StateInDance__6LivingFv(struct Living* this) asm("?StateInDance@Living@@QAEIXZ");
// win1.41 005edc10 mac 1037f3d0 Living::SetupMoveOnFootpath(GFootpath *, int, unsigned char, GFootpathNode *)
int __fastcall SetupMoveOnFootpath__6LivingFP9GFootpathiUcP13GFootpathNode(struct Living* this, const void* edx, struct GFootpath* param_1, uint32_t param_2, uint32_t param_3, struct GFootpathNode* param_4) asm("?SetupMoveOnFootpath@Living@@QAEHPAVGFootpath@@HEPAVGFootpathNode@@@Z");
// win1.41 005edd20 mac 100980f0 Living::SetupMoveToOnFootpath(GameThingWithPos &, MapCoords const &, unsigned char)
void __fastcall SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc(struct Living* this, const void* edx, struct GameThingWithPos* destination, struct MapCoords* arrive_position, uint8_t state) asm("?SetupMoveToOnFootpath@Living@@QAEXAAVGameThingWithPos@@ABUMapCoords@@E@Z");
// win1.41 005edde0 mac 1037eef0 Living::MoveOnFootpath(void)
int __fastcall MoveOnFootpath__6LivingFv(struct Living* this) asm("?MoveOnFootpath@Living@@QAEHXZ");
// win1.41 005ee5f0 mac 1037e2a0 Living::SetFlock(Flock *)
void __fastcall SetFlock__6LivingFP5Flock(struct Living* this, const void* edx, struct Flock* param_1) asm("?SetFlock@Living@@QAEXPAVFlock@@@Z");
// win1.41 005ef010 mac 10065550 Living::PosWithinDomain(MapCoords const &, float)
uint32_t __fastcall PosWithinDomain__6LivingFRC9MapCoordsf(struct Living* this, const void* edx, struct MapCoords* param_1, float param_2) asm("?PosWithinDomain@Living@@QAEIABUMapCoords@@M@Z");
// win1.41 005ef9c0 mac 10384160 Living::CalculateDancePosition(MapCoords const &, MapCoords *)
bool __fastcall CalculateDancePosition__6LivingFRC9MapCoordsP9MapCoords(struct Living* this, const void* edx, const struct MapCoords* param_1, struct MapCoords* param_2) asm("?CalculateDancePosition@Living@@QAE_NABUMapCoords@@PAU2@@Z");
// win1.41 005ef9f0 mac 10383ce0 Living::PerformDance(MapCoords const &, unsigned char, unsigned long)
bool32_t __fastcall PerformDance__6LivingFRC9MapCoordsUcUl(struct Living* this, const void* edx, const struct MapCoords* param_1, unsigned char param_2, unsigned long param_3) asm("?PerformDance@Living@@QAEIABUMapCoords@@EK@Z");
// win1.41 005f1270 mac 1004b9b0 Living::ProcessReaction(void)
void __fastcall ProcessReaction__6LivingFv(struct Living* this) asm("?ProcessReaction@Living@@QAEXXZ");
// win1.41 005f1d90 mac 10386bd0 Living::FleeFromObjectIfComingTowardsMe(GameThingWithPos *, VILLAGER_STATES, VILLAGER_STATES)
bool32_t __fastcall FleeFromObjectIfComingTowardsMe__6LivingFP16GameThingWithPos15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, struct GameThingWithPos* param_1, enum VILLAGER_STATES param_2, enum VILLAGER_STATES param_3) asm("?FleeFromObjectIfComingTowardsMe@Living@@QAEIPAVGameThingWithPos@@W4VILLAGER_STATES@@1@Z");
// win1.41 005f2640 mac 10385e00 Living::GotoPickupBallReaction(void)
uint32_t __fastcall GotoPickupBallReaction__6LivingFv(struct Living* this) asm("?GotoPickupBallReaction@Living@@QAEIXZ");
// win1.41 005f27f0 mac 10056110 Living::GetTopState(void)
enum VILLAGER_STATES __fastcall GetTopState__6LivingCFv(struct Living* this) asm("?GetTopState@Living@@QBE?AW4VILLAGER_STATES@@XZ");
// win1.41 005f2800 mac 1038a340 Living::SetupMoveToObject(Object *, unsigned char)
bool __fastcall SetupMoveToObject__6LivingFP6ObjectUc(struct Living* this, const void* edx, struct Object* param_1, unsigned char param_2) asm("?SetupMoveToObject@Living@@QAE_NPAVObject@@E@Z");
// win1.41 005f2830 mac 10029240 Living::SetupMoveToPos(MapCoords const &, unsigned char)
uint32_t __fastcall SetupMoveToPos__6LivingFRC9MapCoordsUc(struct Living* this, const void* edx, const struct MapCoords* param_2, uint8_t param_3) asm("?SetupMoveToPos@Living@@QAEIABUMapCoords@@E@Z");
// win1.41 005f2890 mac 10010f60 Living::SetupMoveToWithHug(MapCoords const &, unsigned char)
uint32_t __fastcall SetupMoveToWithHug__6LivingFRC9MapCoordsUc(struct Living* this, const void* edx, const struct MapCoords* coords, uint8_t state) asm("?SetupMoveToWithHug@Living@@QAEIABUMapCoords@@E@Z");
// win1.41 006e44a0 mac 101358c0 Living::SetReactionDoneWhen(REACTION)
void __fastcall SetReactionDoneWhen__6LivingF8REACTION(struct Living* this, const void* edx, enum REACTION reaction) asm("?SetReactionDoneWhen@Living@@QAEXW4REACTION@@@Z");
// win1.41 00768640 mac 105975c0 Living::CannotExitState(unsigned char)
bool32_t __fastcall CannotExitState__6LivingFUc(struct Living* this, const void* edx, unsigned char param_1) asm("?CannotExitState@Living@@QAEIE@Z");

// Override methods

// win1.41 004749f0 mac 1016c750 Living::_dt(void)
void __fastcall __dt__6LivingFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GLiving@@UAEPAXI@Z");
// win1.41 005ec0a0 mac 10383210 Living::ToBeDeleted(int)
void __fastcall ToBeDeleted__6LivingFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Living@@UAEXH@Z");
// win1.41 004172d0 mac 10006820 Living::IsFunctional(void)
bool __fastcall IsFunctional__6LivingFv(struct GameThing* this) asm("?IsFunctional@Living@@UAE_NXZ");
// win1.41 005ee960 mac 1037d8d0 Living::Load(GameOSFile &)
uint32_t __fastcall Load__6LivingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Living@@UAEIAAVGameOSFile@@@Z");
// win1.41 005ee630 mac 1037ddd0 Living::Save(GameOSFile &)
uint32_t __fastcall Save__6LivingFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Living@@UAEIAAVGameOSFile@@@Z");
// win1.41 005eed20 mac 1037d880 Living::ResolveLoad(void)
void __fastcall ResolveLoad__6LivingFv(struct GameThing* this) asm("?ResolveLoad@Living@@UAEXXZ");
// win1.41 004173c0 mac 10130ac0 Living::IsAnimate(void)
bool __fastcall IsAnimate__6LivingFv(struct GameThingWithPos* this) asm("?IsAnimate@Living@@UAE_NXZ");
// win1.41 004172c0 mac 101306c0 Living::IsStompable(void)
bool __fastcall IsStompable__6LivingFv(struct GameThingWithPos* this) asm("?IsStompable@Living@@UAE_NXZ");
// win1.41 00417470 mac 10130e00 Living::IsNotLiving(void)
uint32_t __fastcall IsNotLiving__6LivingFv(struct GameThingWithPos* this) asm("?IsNotLiving@Living@@UAEIXZ");
// win1.41 00417330 mac 10130890 Living::IsSuitableForCreatureAction(void)
uint32_t __fastcall IsSuitableForCreatureAction__6LivingFv(struct GameThingWithPos* this) asm("?IsSuitableForCreatureAction@Living@@UAEIXZ");
// win1.41 00417350 mac 10130930 Living::CanBeAttackedByCreature(Creature *)
uint32_t __fastcall CanBeAttackedByCreature__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeAttackedByCreature@Living@@UAEIPAVCreature@@@Z");
// win1.41 004173d0 mac 10130af0 Living::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@Living@@UAEIPAVCreature@@@Z");
// win1.41 00417390 mac 10130a10 Living::CanBePlayedWithByCreature(Creature *)
uint32_t __fastcall CanBePlayedWithByCreature__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePlayedWithByCreature@Living@@UAEIPAVCreature@@@Z");
// win1.41 004173e0 mac 10130b40 Living::CanBeInspectedByCreature(Creature *)
uint32_t __fastcall CanBeInspectedByCreature__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeInspectedByCreature@Living@@UAEIPAVCreature@@@Z");
// win1.41 00417410 mac 10130c00 Living::CanBePoodUponByCreature(Creature *)
uint32_t __fastcall CanBePoodUponByCreature__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePoodUponByCreature@Living@@UAEIPAVCreature@@@Z");
// win1.41 00417430 mac 10130cd0 Living::CanBeStompedOnByCreature(Creature *)
uint32_t __fastcall CanBeStompedOnByCreature__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeStompedOnByCreature@Living@@UAEIPAVCreature@@@Z");
// win1.41 00417340 mac 101308e0 Living::CanBeThrownByCreature(Creature *)
uint32_t __fastcall CanBeThrownByCreature__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeThrownByCreature@Living@@UAEIPAVCreature@@@Z");
// win1.41 00417420 mac 10130c50 Living::CanBeDestroyedByStoning(Creature *)
uint32_t __fastcall CanBeDestroyedByStoning__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeDestroyedByStoning@Living@@UAEIPAVCreature@@@Z");
// win1.41 00417440 mac 10130d50 Living::CanBeDancedWith(Creature *)
uint32_t __fastcall CanBeDancedWith__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeDancedWith@Living@@UAEIPAVCreature@@@Z");
// win1.41 00417450 mac 10130dc0 Living::IsAggressive(Creature *)
uint32_t __fastcall IsAggressive__6LivingFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?IsAggressive@Living@@UAEIPAVCreature@@@Z");
// win1.41 00417460 mac inlined Living::IsLiving_1( const(void))
uint32_t __fastcall IsLiving_1__6LivingCFv(const struct GameThingWithPos* this) asm("?IsLiving@Living@@UBEIXZ");
// win1.41 00768580 mac 10594bb0 Living::AttitudeToCreatureEating(void)
uint32_t __fastcall AttitudeToCreatureEating__6LivingFv(struct GameThingWithPos* this) asm("?AttitudeToCreatureEating@Living@@UAEIXZ");
// win1.41 00416ff0 mac 1012f810 Living::IsSkeleton( const(void))
uint32_t __fastcall IsSkeleton__6LivingCFv(const struct GameThingWithPos* this) asm("?IsSkeleton@Living@@UBEIXZ");
// win1.41 00416f90 mac 10057470 Living::IsPoisoned(void)
uint32_t __fastcall IsPoisoned__6LivingFv(struct GameThingWithPos* this) asm("?IsPoisoned@Living@@UAEIXZ");
// win1.41 00417000 mac 1012f850 Living::SetSkeleton(int)
void __fastcall SetSkeleton__6LivingFi(struct GameThingWithPos* this, const void* edx, int param_1) asm("?SetSkeleton@Living@@UAEXH@Z");
// win1.41 005ee230 mac 1037e700 Living::MoveAlongPath(void)
uint32_t __fastcall MoveAlongPath__6LivingFv(struct Object* this) asm("?MoveAlongPath@Living@@UAEIXZ");
// win1.41 00417480 mac inlined Living::SetSpecularColor(LH3DColor)
void __fastcall SetSpecularColor__6LivingF9LH3DColor(struct Object* this, const void* edx, struct LH3DColor param_1) asm("?SetSpecularColor@Living@@UAEXULH3DColor@@@Z");
// win1.41 00417490 mac 10130e80 Living::GetSpecularColor(void)
struct LH3DColor __fastcall GetSpecularColor__6LivingFv(struct Object* this) asm("?GetSpecularColor@Living@@UAE?AULH3DColor@@XZ");
// win1.41 0051aec0 mac 100c5880 Living::Draw(void)
void __fastcall Draw__6LivingFv(struct Object* this) asm("?Draw@Living@@UAEXXZ");
// win1.41 004172a0 mac 10130640 Living::CanBePickedUp(void)
bool __fastcall CanBePickedUp__6LivingFv(struct Object* this) asm("?CanBePickedUp@Living@@UAE_NXZ");
// win1.41 004172b0 mac 10130680 Living::CanBeCrushed(void)
uint32_t __fastcall CanBeCrushed__6LivingFv(struct Object* this) asm("?CanBeCrushed@Living@@UAEIXZ");
// win1.41 005ec9b0 mac 10382060 Living::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__6LivingFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Living@@UAEXABUMapCoords@@@Z");
// win1.41 00416fa0 mac 1012f760 Living::SetPoisoned(int)
void __fastcall SetPoisoned__6LivingFi(struct Object* this, const void* edx, int param_1) asm("?SetPoisoned@Living@@UAEXH@Z");
// win1.41 005ec390 mac 10382b30 Living::SetDying(void)
bool __fastcall SetDying__6LivingFv(struct Object* this) asm("?SetDying@Living@@UAE_NXZ");
// win1.41 005eccb0 mac 10381220 Living::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__6LivingFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@Living@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 005ed590 mac 1037ffb0 Living::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__6LivingFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@Living@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 005ed5c0 mac 1037fd10 Living::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
uint32_t __fastcall ApplyThisToObject__6LivingFP16GInterfaceStatusP6ObjectP23GestureSystemPacketData(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2, struct GestureSystemPacketData* param_3) asm("?ApplyThisToObject@Living@@UAEIPAVGInterfaceStatus@@PAVObject@@PAUGestureSystemPacketData@@@Z");
// win1.41 005efd80 mac 10385a30 Living::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
uint32_t __fastcall InitialisePhysicsFromHand__6LivingFR7LHPointR7LHPointP16GInterfaceStatusP6Objecti(struct Object* this, const void* edx, struct LHPoint* param_1, struct LHPoint* param_2, struct GInterfaceStatus* param_3, struct Object* param_4, int param_5) asm("?InitialisePhysicsFromHand@Living@@UAEIAAULHPoint@@0PAVGInterfaceStatus@@PAVObject@@H@Z");
// win1.41 005efe10 mac 10385900 Living::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
uint32_t __fastcall InitialisePhysics__6LivingFRC7LHPointRC7LHPointP6ObjectbP16GInterfaceStatus(struct Object* this, const void* edx, const struct LHPoint* param_1, const struct LHPoint* param_2, struct Object* param_3, bool param_4, struct GInterfaceStatus* param_5) asm("?InitialisePhysics@Living@@UAEIABULHPoint@@0PAVObject@@_NPAVGInterfaceStatus@@@Z");
// win1.41 005ed2f0 mac 103804c0 Living::GetBoundingSphere(LHPoint &, float &)
void __fastcall GetBoundingSphere__6LivingFR7LHPointRf(struct Object* this, const void* edx, struct LHPoint* param_1, float* param_2) asm("?GetBoundingSphere@Living@@UAEXAAULHPoint@@AAM@Z");
// win1.41 005ed3e0 mac 10380210 Living::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__6LivingFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@Living@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 005ed4f0 mac 103801d0 Living::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__6LivingFv(struct Object* this) asm("?CanBecomeAPhysicsObject@Living@@UAE_NXZ");
// win1.41 005ed370 mac 103803b0 Living::HasSunk(void)
bool __fastcall HasSunk__6LivingFv(struct Object* this) asm("?HasSunk@Living@@UAE_NXZ");
// win1.41 005edba0 mac 1037f690 Living::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__6LivingFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@Living@@UAE_NPAVCreature@@@Z");
// win1.41 005ee560 mac 1037e320 Living::RemoveFromGame(void)
uint32_t __fastcall RemoveFromGame__6LivingFv(struct Object* this) asm("?RemoveFromGame@Living@@UAEIXZ");
// win1.41 005ef340 mac 1037cc80 Living::GetInHandImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetInHandImmersionTexture__6LivingFv(struct Object* this) asm("?GetInHandImmersionTexture@Living@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");
// win1.41 005f2710 mac 10385c50 Living::AmILikelyToMove(void)
bool __fastcall AmILikelyToMove__6LivingFv(struct Living* this) asm("?AmILikelyToMove@Living@@UAE_NXZ");
// win1.41 005ec3e0 mac 10382af0 Living::GetNumTurnsToDieOver(void)
uint32_t __fastcall GetNumTurnsToDieOver__6LivingFv(struct Living* this) asm("?GetNumTurnsToDieOver@Living@@UAEIXZ");
// win1.41 005ec1e0 mac 103830e0 Living::GetFinalDestPos(MapCoords *)
void __fastcall GetFinalDestPos__6LivingFP9MapCoords(struct Living* this, const void* edx, struct MapCoords* result) asm("?GetFinalDestPos@Living@@UAEXPAUMapCoords@@@Z");
// win1.41 005ec4b0 mac 10382830 Living::Downed(void)
bool __fastcall Downed__6LivingFv(struct Living* this) asm("?Downed@Living@@UAE_NXZ");
// win1.41 005ecdb0 mac 10380b40 Living::MoveInFlock(void)
bool __fastcall MoveInFlock__6LivingFv(struct Living* this) asm("?MoveInFlock@Living@@UAE_NXZ");
// win1.41 005f2630 mac 10385ed0 Living::ArrivesAtFoodReaction(void)
bool __fastcall ArrivesAtFoodReaction__6LivingFv(struct Living* this) asm("?ArrivesAtFoodReaction@Living@@UAE_NXZ");
// win1.41 00474940 mac 103838c0 Living::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__6LivingFv(struct Living* this) asm("?DecideWhatToDo@Living@@UAE_NXZ");
// win1.41 005ecaf0 mac 1004c540 Living::GetAge(void)
uint32_t __fastcall GetAge__6LivingFv(struct Living* this) asm("?GetAge@Living@@UAEIXZ");
// win1.41 005f26d0 mac 10385ce0 Living::LookAtFlyingObjectReaction(void)
bool __fastcall LookAtFlyingObjectReaction__6LivingFv(struct Living* this) asm("?LookAtFlyingObjectReaction@Living@@UAE_NXZ");
// win1.41 005f2980 mac 10076180 Living::SetCurrentAndDestinationState(unsigned char, unsigned char)
uint32_t __fastcall SetCurrentAndDestinationState__6LivingFUcUc(struct Living* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination) asm("?SetCurrentAndDestinationState@Living@@UAEIEE@Z");
// win1.41 005f28e0 mac 10075940 Living::SetTopState(unsigned char)
uint32_t __fastcall SetTopState__6LivingFUc(struct Living* this, const void* edx, enum VILLAGER_STATES state) asm("?SetTopState@Living@@UAEIE@Z");
// win1.41 00417040 mac 1012f8d0 Living::StorePreviousState(void)
void __fastcall StorePreviousState__6LivingFv(struct Living* this) asm("?StorePreviousState@Living@@UAEXXZ");
// win1.41 00473e50 mac 101e3470 Living::SetStateSpeed(void)
void __fastcall SetStateSpeed__6LivingFv(struct Living* this) asm("?SetStateSpeed@Living@@UAEXXZ");
// win1.41 005ecba0 mac inlined Living::SetAnim__li(int, int)
void __fastcall SetAnim__li__6LivingFii(struct Living* this, const void* edx, int param_1, int param_2) asm("?SetAnim__li@Living@@UAEXHH@Z");
// win1.41 005ecb80 mac inlined Living::SetAnim__i(int)
void __fastcall SetAnim__i__6LivingFi(struct Living* this, const void* edx, int param_1) asm("?SetAnim__i@Living@@UAEXH@Z");
// win1.41 005eccd0 mac inlined Living::ExitReaction(VILLAGER_STATES)
int __fastcall ExitReaction__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitReaction@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 005ed9c0 mac inlined Living::ExitInScript(VILLAGER_STATES)
int __fastcall ExitInScript__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitInScript@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 005edb10 mac inlined Living::ExitDanceInScript(VILLAGER_STATES)
int __fastcall ExitDanceInScript__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitDanceInScript@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 005ed500 mac inlined Living::ExitInHand(VILLAGER_STATES)
int __fastcall ExitInHand__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitInHand@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 005ed540 mac inlined Living::ExitInFlying(VILLAGER_STATES)
int __fastcall ExitInFlying__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitInFlying@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 005ed580 mac inlined Living::ExitInLanded(VILLAGER_STATES)
int __fastcall ExitInLanded__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitInLanded@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00768780 mac inlined Living::ExitNoChangeState(VILLAGER_STATES)
int __fastcall ExitNoChangeState__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitNoChangeState@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 005ee090 mac inlined Living::ExitMoveOnPath(VILLAGER_STATES)
int __fastcall ExitMoveOnPath__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitMoveOnPath@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 005edda0 mac 1001fb70 Living::ExitMoveToPos(unsigned char)
int __fastcall ExitMoveToPos__6LivingFUc(struct Living* this, const void* edx, uint8_t param_1) asm("?ExitMoveToPos@Living@@UAEHE@Z");
// win1.41 005eddc0 mac 1037f2a0 Living::ExitBeingEaten(unsigned char)
int __fastcall ExitBeingEaten__6LivingFUc(struct Living* this, const void* edx, uint8_t param_1) asm("?ExitBeingEaten@Living@@UAEHE@Z");
// win1.41 005f2a80 mac 10072250 Living::SetState(unsigned long, unsigned char)
void __fastcall SetState__6LivingFUlUc(struct Living* this, const void* edx, enum LIVING_ACTION_INDEX index, enum VILLAGER_STATES state) asm("?SetState@Living@@UAEXKE@Z");
// win1.41 005edd90 mac inlined Living::EnterMoveToPos(VILLAGER_STATES, VILLAGER_STATES)
uint32_t __fastcall EnterMoveToPos__6LivingF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2) asm("?EnterMoveToPos@Living@@UAEIW4VILLAGER_STATES@@0@Z");
// win1.41 005ed7e0 mac inlined Living::EnterInScript(VILLAGER_STATES, VILLAGER_STATES)
uint32_t __fastcall EnterInScript__6LivingF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2) asm("?EnterInScript@Living@@UAEIW4VILLAGER_STATES@@0@Z");
// win1.41 00417060 mac inlined Living::EnterInHand(VILLAGER_STATES, VILLAGER_STATES)
uint32_t __fastcall EnterInHand__6LivingF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2) asm("?EnterInHand@Living@@UAEIW4VILLAGER_STATES@@0@Z");
// win1.41 005eddd0 mac 1037f260 Living::EnterMoveOnPath(unsigned char, unsigned char)
uint32_t __fastcall EnterMoveOnPath__6LivingFUcUc(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2) asm("?EnterMoveOnPath@Living@@UAEIEE@Z");
// win1.41 005eda50 mac inlined Living::EnterDanceInScript(VILLAGER_STATES, VILLAGER_STATES)
uint32_t __fastcall EnterDanceInScript__6LivingF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2) asm("?EnterDanceInScript@Living@@UAEIW4VILLAGER_STATES@@0@Z");
// win1.41 007687d0 mac inlined Living::EnterScriptWander(VILLAGER_STATES, VILLAGER_STATES)
uint32_t __fastcall EnterScriptWander__6LivingF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2) asm("?EnterScriptWander@Living@@UAEIW4VILLAGER_STATES@@0@Z");
// win1.41 00768830 mac inlined Living::ExitScriptWander(VILLAGER_STATES)
int __fastcall ExitScriptWander__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitScriptWander@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00768840 mac inlined Living::EnterPlayAnim(VILLAGER_STATES, VILLAGER_STATES)
uint32_t __fastcall EnterPlayAnim__6LivingF15VILLAGER_STATES15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1, enum VILLAGER_STATES param_2) asm("?EnterPlayAnim@Living@@UAEIW4VILLAGER_STATES@@0@Z");
// win1.41 007689c0 mac inlined Living::ExitPlayAnim(VILLAGER_STATES)
int __fastcall ExitPlayAnim__6LivingF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?ExitPlayAnim@Living@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00473e60 mac inlined Living::IsScriptState( const(VILLAGER_STATES))
bool __fastcall IsScriptState__6LivingCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsScriptState@Living@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 00473e70 mac inlined Living::IsScriptInterruptableState( const(VILLAGER_STATES))
bool __fastcall IsScriptInterruptableState__6LivingCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsScriptInterruptableState@Living@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 00417070 mac inlined Living::IsStateForInterface( const(VILLAGER_STATES))
bool __fastcall IsStateForInterface__6LivingCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsStateForInterface@Living@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 00473e80 mac inlined Living::IsStateExitFunctionSameAs( const(VILLAGER_STATES))
bool __fastcall IsStateExitFunctionSameAs__6LivingCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsStateExitFunctionSameAs@Living@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 005ecaa0 mac inlined Living::IsDeathState( const(VILLAGER_STATES))
bool __fastcall IsDeathState__6LivingCF15VILLAGER_STATES(const struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?IsDeathState@Living@@UBE_NW4VILLAGER_STATES@@@Z");
// win1.41 005ed2b0 mac 10380650 Living::DebugShowTime(unsigned long, unsigned char, unsigned char)
uint32_t __fastcall DebugShowTime__6LivingFUlUcUc(struct Living* this, const void* edx, uint32_t param_1, uint8_t param_2, uint8_t param_3) asm("?DebugShowTime@Living@@UAEIIEE@Z");
// win1.41 005ecc10 mac 10084310 Living::IsDancing(void)
bool __fastcall IsDancing__6LivingFv(struct Living* this) asm("?IsDancing@Living@@UAE_NXZ");
// win1.41 00473e90 mac 101e3580 Living::IsInterestedInFoodObject(Object *)
bool __fastcall IsInterestedInFoodObject__6LivingFP6Object(struct Living* this, const void* edx, struct Object* param_1) asm("?IsInterestedInFoodObject@Living@@UAE_NPAVObject@@@Z");
// win1.41 00417080 mac 1012fa20 Living::IsInterestedInWoodObject(Object *)
bool __fastcall IsInterestedInWoodObject__6LivingFP6Object(struct Living* this, const void* edx, struct Object* param_1) asm("?IsInterestedInWoodObject@Living@@UAE_NPAVObject@@@Z");
// win1.41 005f11f0 mac 10019a90 Living::IsAvailableForReaction(REACTION)
bool __fastcall IsAvailableForReaction__6LivingF8REACTION(struct Living* this, const void* edx, enum REACTION param_1) asm("?IsAvailableForReaction@Living@@UAE_NW4REACTION@@@Z");
// win1.41 00417090 mac 1012fa70 Living::IsAvailableForBeliefButNotReaction(REACTION)
bool __fastcall IsAvailableForBeliefButNotReaction__6LivingF8REACTION(struct Living* this, const void* edx, enum REACTION param_1) asm("?IsAvailableForBeliefButNotReaction@Living@@UAE_NW4REACTION@@@Z");
// win1.41 004170a0 mac 1012fac0 Living::UpdateHowImpressed(Reaction *, int)
void __fastcall UpdateHowImpressed__6LivingFP8Reactioni(struct Living* this, const void* edx, struct Reaction* param_1, int param_2) asm("?UpdateHowImpressed@Living@@UAEXPAVReaction@@H@Z");
// win1.41 005f0f30 mac inlined Living::AddReaction(Reaction *, VILLAGER_STATES)
void __fastcall AddReaction__6LivingFP8Reaction15VILLAGER_STATES(struct Living* this, const void* edx, struct Reaction* param_1, enum VILLAGER_STATES param_2) asm("?AddReaction@Living@@UAEXPAVReaction@@W4VILLAGER_STATES@@@Z");
// win1.41 006e4590 mac 10135830 Living::StartReacting(REACTION, GameThingWithPos *, Reaction *)
void __fastcall StartReacting__6LivingF8REACTIONP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, enum REACTION param_1, struct GameThingWithPos* param_2, struct Reaction* param_3) asm("?StartReacting@Living@@UAEXW4REACTION@@PAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f1140 mac 10389590 Living::StopReacting(void)
void __fastcall StopReacting__6LivingFv(struct Living* this) asm("?StopReacting@Living@@UAEXXZ");
// win1.41 005f11c0 mac 103894f0 Living::StopReactingAndSetState(void)
void __fastcall StopReactingAndSetState__6LivingFv(struct Living* this) asm("?StopReactingAndSetState@Living@@UAEXXZ");
// win1.41 005f1360 mac 10388d10 Living::SetupFleeFromObject(GameThingWithPos *, Reaction *)
void __fastcall SetupFleeFromObject__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupFleeFromObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f13b0 mac 10388be0 Living::SetupLookAtObject(GameThingWithPos *, Reaction *)
void __fastcall SetupLookAtObject__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupLookAtObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f13e0 mac 10388b60 Living::SetupLookAtSpell(GameThingWithPos *, Reaction *)
void __fastcall SetupLookAtSpell__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupLookAtSpell@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f1400 mac 10388ae0 Living::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
void __fastcall SetupLookAtNiceSpell__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupLookAtNiceSpell@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f1420 mac 10388a30 Living::SetupFollowObject(GameThingWithPos *, Reaction *)
void __fastcall SetupFollowObject__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupFollowObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f1450 mac 10388920 Living::SetupReactToCreature(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToCreature__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToCreature@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f14c0 mac 10388840 Living::SetupReactToFood(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFood__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFood@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004170b0 mac 1012fb00 Living::SetupReactToWood(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToWood__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToWood@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f1500 mac 10388790 Living::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicTree__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicTree@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f1530 mac 103886e0 Living::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFlyingObject__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFlyingObject@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00474950 mac 10383900 Living::SetupReactToFire(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFire__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFire@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f1560 mac 10388630 Living::SetupReactToBall(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToBall__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToBall@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004170c0 mac 1012fb50 Living::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicShield__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicShield@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f1590 mac 103885b0 Living::SetupReactToCreatureGift(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToCreatureGift__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToCreatureGift@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f15b0 mac 10388550 Living::SetupReactToNewBuilding(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToNewBuilding__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToNewBuilding@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004170d0 mac 1012fbb0 Living::SetupReactToHandPickUp(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToHandPickUp__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToHandPickUp@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004170e0 mac 1012fc10 Living::SetupReactToHandUsingTotem(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToHandUsingTotem__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToHandUsingTotem@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004170f0 mac 1012fc70 Living::SetupReactToObjectCrushed(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToObjectCrushed__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToObjectCrushed@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417100 mac 1012fcd0 Living::SetupReactToFight(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFight__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFight@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417110 mac 1012fd20 Living::SetupReactToTeleport(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToTeleport__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToTeleport@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417120 mac 1012fd80 Living::SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToHandPuttingStuffInStoragePit__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToHandPuttingStuffInStoragePit@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417130 mac 1012fdf0 Living::SetupReactToDeath(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToDeath__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToDeath@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417140 mac 1012fe40 Living::SetupReactToDroppedByHand(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToDroppedByHand__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToDroppedByHand@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417150 mac 1012fea0 Living::SetupReactToFainting(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFainting__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFainting@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417160 mac 1012ff00 Living::SetupReactToConfused(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToConfused__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToConfused@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00473ea0 mac 101e35d0 Living::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToFallingTree__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToFallingTree@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417170 mac 1012ff60 Living::SetupReactToCrowd(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToCrowd__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToCrowd@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417180 mac 1012ffb0 Living::SetupReactToBreeder(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToBreeder__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToBreeder@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f1390 mac 10388c90 Living::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
void __fastcall SetupFleeFromPredator__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupFleeFromPredator@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 00417190 mac 10130010 Living::SetupReactToTownCelebration(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToTownCelebration__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToTownCelebration@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004171a0 mac 10130070 Living::SetupReactToVillagerInHand(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToVillagerInHand__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToVillagerInHand@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004171b0 mac 101300d0 Living::SetupReactToBurningObjectInHand(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToBurningObjectInHand__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToBurningObjectInHand@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004171c0 mac 10130130 Living::SetupReactToMagicShieldStruck(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicShieldStruck__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicShieldStruck@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 004171d0 mac 10130190 Living::SetupReactToMagicShieldDestroyed(GameThingWithPos *, Reaction *)
void __fastcall SetupReactToMagicShieldDestroyed__6LivingFP16GameThingWithPosP8Reaction(struct Living* this, const void* edx, struct GameThingWithPos* param_1, struct Reaction* param_2) asm("?SetupReactToMagicShieldDestroyed@Living@@UAEXPAVGameThingWithPos@@PAVReaction@@@Z");
// win1.41 005f15c0 mac 103884e0 Living::FleeFromObjectPriority(Reaction *, Reaction *)
uint8_t __fastcall FleeFromObjectPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?FleeFromObjectPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1610 mac 103883a0 Living::LookAtObjectPriority(Reaction *, Reaction *)
uint8_t __fastcall LookAtObjectPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?LookAtObjectPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1620 mac 10388330 Living::FollowObjectPriority(Reaction *, Reaction *)
uint8_t __fastcall FollowObjectPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?FollowObjectPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1630 mac 10388250 Living::FleeFromSpellPriority(Reaction *, Reaction *)
uint8_t __fastcall FleeFromSpellPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?FleeFromSpellPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1690 mac 103881e0 Living::LookAtSpellPriority(Reaction *, Reaction *)
uint8_t __fastcall LookAtSpellPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?LookAtSpellPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f16a0 mac 10388120 Living::LookAtNiceSpellPriority(Reaction *, Reaction *)
uint8_t __fastcall LookAtNiceSpellPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?LookAtNiceSpellPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f16e0 mac 103880b0 Living::FollowSpellPriority(Reaction *, Reaction *)
uint8_t __fastcall FollowSpellPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?FollowSpellPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f16f0 mac 10388020 Living::ReactToCreaturePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToCreaturePriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToCreaturePriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1710 mac 10387ee0 Living::ReactToFoodPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFoodPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFoodPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f17a0 mac 10387e10 Living::ReactToWoodPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToWoodPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToWoodPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f17f0 mac 10387d90 Living::ReactToMagicTreePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicTreePriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicTreePriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1800 mac 10387cd0 Living::ReactToFlyingObjectPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFlyingObjectPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFlyingObjectPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1820 mac 10387c30 Living::ReactToBallPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToBallPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToBallPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00474960 mac 10383950 Living::ReactToFirePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFirePriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFirePriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1860 mac 10387bb0 Living::ReactToMagicShieldPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicShieldPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicShieldPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1870 mac 10387b30 Living::ReactToCreatureGiftPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToCreatureGiftPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToCreatureGiftPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f1880 mac 10387a90 Living::ReactToNewBuildingPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToNewBuildingPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToNewBuildingPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00474970 mac 10148240 Living::ReactToHandPickUpPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToHandPickUpPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToHandPickUpPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00474980 mac 101482a0 Living::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToHandUsingTotemPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToHandUsingTotemPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00474990 mac 10148300 Living::ReactToObjectCrushedPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToObjectCrushedPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToObjectCrushedPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 004749a0 mac 103839a0 Living::ReactToFightPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFightPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFightPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 004749b0 mac 103839f0 Living::ReactToTeleportPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToTeleportPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToTeleportPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 004749c0 mac 10148360 Living::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToHandPuttingStuffInStoragePitPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToHandPuttingStuffInStoragePitPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 004749d0 mac 10383a40 Living::ReactToDeathPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToDeathPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToDeathPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00473eb0 mac 101e3630 Living::ReactToDroppedByHandPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToDroppedByHandPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToDroppedByHandPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f18a0 mac 10387a20 Living::ReactToFaintingPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFaintingPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFaintingPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f18b0 mac 103879b0 Living::ReactToConfusedPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToConfusedPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToConfusedPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00473ec0 mac 101e3690 Living::ReactToFallingTreePriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToFallingTreePriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToFallingTreePriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 004171e0 mac 101301f0 Living::ReactToCrowdPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToCrowdPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToCrowdPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 004171f0 mac 10130240 Living::ReactToBreederPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToBreederPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToBreederPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00417200 mac 10130290 Living::ReactToTownCelebrationPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToTownCelebrationPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToTownCelebrationPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f15d0 mac 10388410 Living::FleeFromPredatorPriority(Reaction *, Reaction *)
uint8_t __fastcall FleeFromPredatorPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?FleeFromPredatorPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00417210 mac 101302f0 Living::ReactToVillagerInHandPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToVillagerInHandPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToVillagerInHandPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00417220 mac 10130350 Living::ReactToBurningObjectInHandPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToBurningObjectInHandPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToBurningObjectInHandPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00417230 mac 101303b0 Living::ReactToMagicShieldStruckPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicShieldStruckPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicShieldStruckPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00417240 mac 10130410 Living::ReactToMagicShieldDestroyedPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToMagicShieldDestroyedPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToMagicShieldDestroyedPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 00417250 mac 10130470 Living::ReactToScaffoldPriority(Reaction *, Reaction *)
uint8_t __fastcall ReactToScaffoldPriority__6LivingFP8ReactionP8Reaction(struct Living* this, const void* edx, struct Reaction* param_1, struct Reaction* param_2) asm("?ReactToScaffoldPriority@Living@@UAEEPAVReaction@@0@Z");
// win1.41 005f18c0 mac 10387890 Living::StandardNumGameTurnsToReactFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall StandardNumGameTurnsToReactFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?StandardNumGameTurnsToReactFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f1920 mac 10081310 Living::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall StandardNumGameTurnsBeforeReactingAgainFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?StandardNumGameTurnsBeforeReactingAgainFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f1b10 mac 10387040 Living::NumGameTurnsToReactToCreatureFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsToReactToCreatureFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsToReactToCreatureFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f1c00 mac 10386e40 Living::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsBeforeReactingAgainToCreatureFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsBeforeReactingAgainToCreatureFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f1980 mac 103875b0 Living::NumGameTurnsToReactToPredatorFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsToReactToPredatorFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsToReactToPredatorFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f1a00 mac 10387450 Living::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsBeforeReactingAgainToPredatorFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsBeforeReactingAgainToPredatorFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f2720 mac 10385bb0 Living::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall StandardNumGameTurnsBeforeReactingToWoodAgainFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?StandardNumGameTurnsBeforeReactingToWoodAgainFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f1a90 mac 103873c0 Living::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsToReactToBurningObjectFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsToReactToBurningObjectFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f1ab0 mac 10387320 Living::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsBeforeReactingAgainToBurningObjectFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsBeforeReactingAgainToBurningObjectFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f1ad0 mac 10387290 Living::NumGameTurnsToReactToShieldFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsToReactToShieldFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsToReactToShieldFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 005f1af0 mac 10387200 Living::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos *, unsigned long, float)
uint32_t __fastcall NumGameTurnsBeforeReactingToShieldAgainFunction__6LivingFP16GameThingWithPosUlf(struct Living* this, const void* edx, struct GameThingWithPos* param_1, uint32_t param_2, float param_3) asm("?NumGameTurnsBeforeReactingToShieldAgainFunction@Living@@UAEIPAVGameThingWithPos@@IM@Z");
// win1.41 00417260 mac 100026a0 Living::IsPosValidForMapCellExistance(MapCoords const &)
uint32_t __fastcall IsPosValidForMapCellExistance__6LivingFRC9MapCoords(struct Living* this, const void* edx, const struct MapCoords* param_1) asm("?IsPosValidForMapCellExistance@Living@@UAEIABUMapCoords@@@Z");
// win1.41 005ec340 mac 10382c10 Living::MoveByTeleport(MapCoords const &)
void __fastcall MoveByTeleport__6LivingFRC9MapCoords(struct Living* this, const void* edx, const struct MapCoords* param_1) asm("?MoveByTeleport@Living@@UAEXABUMapCoords@@@Z");
// win1.41 00417270 mac 10130570 Living::IsDead(void)
bool __fastcall IsDead__6LivingFv(struct Living* this) asm("?IsDead@Living@@UAE_NXZ");
// win1.41 00473ed0 mac 101e36f0 Living::IsChild(void)
bool __fastcall IsChild__6LivingFv(struct Living* this) asm("?IsChild@Living@@UAE_NXZ");
// win1.41 005f2160 mac 103864c0 Living::GetFleeingPositionFromMovingObject(MapCoords *, GameThingWithPos *, float)
void __fastcall GetFleeingPositionFromMovingObject__6LivingFP9MapCoordsP16GameThingWithPosf(struct Living* this, const void* edx, struct MapCoords* param_1, struct GameThingWithPos* param_2, float param_3) asm("?GetFleeingPositionFromMovingObject@Living@@UAEXPAUMapCoords@@PAVGameThingWithPos@@M@Z");
// win1.41 005f2010 mac 10386800 Living::GetFleeingPositionFromStationaryObject(MapCoords *, GameThingWithPos *, float)
void __fastcall GetFleeingPositionFromStationaryObject__6LivingFP9MapCoordsP16GameThingWithPosf(struct Living* this, const void* edx, struct MapCoords* param_1, struct GameThingWithPos* param_2, float param_3) asm("?GetFleeingPositionFromStationaryObject@Living@@UAEXPAUMapCoords@@PAVGameThingWithPos@@M@Z");
// win1.41 004749e0 mac 1012f950 Living::GetFinalState( const(void))
enum VILLAGER_STATES __fastcall GetFinalState__6LivingCFv(const struct Living* this) asm("?GetFinalState@Living@@UBE?AW4VILLAGER_STATES@@XZ");
// win1.41 005ef930 mac 103841e0 Living::RemoveFromDance(int)
void __fastcall RemoveFromDance__6LivingFi(struct Living* this, const void* edx, int param_1) asm("?RemoveFromDance@Living@@UAEXH@Z");
// win1.41 00417300 mac 10130810 Living::SetStateAfterFinishingDance(void)
void __fastcall SetStateAfterFinishingDance__6LivingFv(struct Living* this) asm("?SetStateAfterFinishingDance@Living@@UAEXXZ");
// win1.41 00417310 mac 10130850 Living::CalculateLifeDesire(void)
float __fastcall CalculateLifeDesire__6LivingFv(struct Living* this) asm("?CalculateLifeDesire@Living@@UAEMXZ");
// win1.41 00417320 mac 100f8730 Living::DanceType(void)
uint32_t __fastcall DanceType__6LivingFv(struct Living* this) asm("?DanceType@Living@@UAEIXZ");
// win1.41 005ee550 mac 1037e4a0 Living::CanBeHealedByHealSpell(void)
bool __fastcall CanBeHealedByHealSpell__6LivingFv(struct Living* this) asm("?CanBeHealedByHealSpell@Living@@UAE_NXZ");

DECLARE_LH_LINKED_LIST(Living);

DECLARE_LH_LIST_HEAD(Living);

#endif /* BW1_DECOMP_LIVING_INCLUDED_H */
