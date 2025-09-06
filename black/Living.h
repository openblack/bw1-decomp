#ifndef BW1_DECOMP_LIVING_INCLUDED_H
#define BW1_DECOMP_LIVING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h> /* For enum REACTION */
#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */
#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "LivingAction.h" /* For enum LIVING_ACTION_INDEX, struct LivingAction */
#include "MobileWallHug.h" /* For struct MobileWallHug, struct MobileWallHugVftable */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct DanceGroup;
struct DataPath;
struct Flock;
struct GFootpath;
struct GFootpathNode;
struct GLivingInfo;
struct GameThingVftable;
struct Living;
struct MapCoords;
struct ObjectVftable;
struct Reaction;
struct ReactionDoneWhen;
struct Villager;

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

// win1.41 0092b51c mac 109a0de0 DataForScriptRemind::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__19DataForScriptRemind asm("??_R4DataForScriptRemind@@6B@");

// win1.41 0092b520 mac 109a0de8 DataForScriptRemind::`vftable'
extern const struct GameThingVftable __vt__19DataForScriptRemind asm("??_7DataForScriptRemind@@6B@");

// Static methods

// win1.41 005ef190 mac 1037cff0 DataForScriptRemind::Create(void)
struct DataForScriptRemind* __cdecl Create__19DataForScriptRemindFv(void);

// Constructors

// win1.41 005ef110 mac 1037d100 DataForScriptRemind::DataForScriptRemind(void)
struct DataForScriptRemind* __fastcall __ct__19DataForScriptRemindFv(struct DataForScriptRemind* this);

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
  void (__fastcall* SetAge)(struct Villager* this, const void* edx, uint32_t age);
  bool (__fastcall* LookAtFlyingObjectReaction)(struct Living* this);
  int (__fastcall* SetCurrentAndDestinationState)(struct Living* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination);
  int (__fastcall* CallIntoAnimationFunction)(struct Living* this, const void* edx, enum VILLAGER_STATES state);  /* 0x8e0 */
  int (__fastcall* CallOutofAnimationFunction)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  void (__fastcall* SetTopState)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  void (__fastcall* StorePreviousState)(struct Living* this);
  void (__fastcall* SetStateSpeed)(struct Living* this);  /* 0x8f0 */
  bool (__fastcall* IsFinalState)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  void (__fastcall* SetAnim__li)(struct Living* this, const void* edx, int32_t param_1, int32_t param_2);
  void (__fastcall* SetAnim__i)(struct Living* this, const void* edx, int32_t param_1);
  enum ANIM_LIST (__fastcall* GetAnimId)(struct Living* this);  /* 0x900 */
  uint32_t (__fastcall* CallExitStateFunction)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
  uint32_t (__fastcall* CallEntryStateFunctionUcUc)(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
  uint32_t (__fastcall* CallEntryStateFunctionUc)(struct Living* this, const void* edx, enum VILLAGER_STATES state);
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
  void (__fastcall* UpdateHowImpressed)(struct Villager* this, const void* edx, struct Reaction* param_1, int param_2);
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
  void (__fastcall* AddToBoxPositionForChessGame)(struct Living* this, const void* edx, int32_t param_1, int32_t param_2);
  int32_t (__fastcall* GetBoxXForChessGame)(struct Living* this);
  int32_t (__fastcall* GetBoxZForChessGame)(struct Living* this);
  void (__fastcall* SetBoxXForChessGame)(struct Living* this, const void* edx, int32_t param_1);  /* 0xb30 */
  void (__fastcall* SetBoxZForChessGame)(struct Living* this, const void* edx, int32_t param_1);
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

// win1.41 008cd390 mac 10732c98 Living::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__6Living asm("??_R4Living@@6B@");

// win1.41 008cd394 mac 106f5ae0 Living::`vftable'
extern const struct LivingVftable __vt__6Living asm("??_7Living@@6B@");

// Static methods

// win1.41 005ec810 mac 1004bb10 Living::ProcessLiving(void)
void __cdecl ProcessLiving__6LivingFv(void);

// Constructors

// win1.41 0055c820 mac 1030ed90 Living::Living(void)
struct Living* __fastcall __ct__6LivingFv(struct Living* this);
// win1.41 005ebec0 mac 10383560 Living::Living(MapCoords const &, GLivingInfo const *)
struct Living* __fastcall __ct__6LivingFRC9MapCoordsPC11GLivingInfo(struct Living* this, const void* edx, struct MapCoords* coords, struct GLivingInfo* info);

// Non-virtual methods

// win1.41 005afe20 mac inlined Living::StateArrivesAtFoodReaction(void)
uint32_t __fastcall StateArrivesAtFoodReaction__6LivingFv(struct Living* this);
// win1.41 005afe30 mac inlined Living::StateDying(void)
uint32_t __fastcall StateDying__6LivingFv(struct Living* this);
// win1.41 005afe80 mac inlined Living::StateArrivesAtWoodReaction(void)
uint32_t __fastcall StateArrivesAtWoodReaction__6LivingFv(struct Living* this);
// win1.41 005afe90 mac inlined Living::StateDead(void)
uint32_t __fastcall StateDead__6LivingFv(struct Living* this);
// win1.41 005aff20 mac inlined Living::StateInHand(void)
uint32_t __fastcall StateInHand__6LivingFv(struct Living* this);
// win1.41 005aff30 mac inlined Living::StateDowned(void)
uint32_t __fastcall StateDowned__6LivingFv(struct Living* this);
// win1.41 005aff40 mac inlined Living::StateSetDying(void)
uint32_t __fastcall StateSetDying__6LivingFv(struct Living* this);
// win1.41 005affd0 mac inlined Living::StateBeingEaten(void)
uint32_t __fastcall StateBeingEaten__6LivingFv(struct Living* this);
// win1.41 005affe0 mac inlined Living::StateFleeingFromObjectReaction(void)
uint32_t __fastcall StateFleeingFromObjectReaction__6LivingFv(struct Living* this);
// win1.41 005b0040 mac inlined Living::StateAlongPath(void)
uint32_t __fastcall StateAlongPath__6LivingFv(struct Living* this);
// win1.41 005b0050 mac inlined Living::StateBeingGoToFoodReaction(void)
uint32_t __fastcall StateGoToFoodReaction__6LivingFv(struct Living* this);
// win1.41 005b0060 mac inlined Living::StateLookingAtObjectReaction(void)
uint32_t __fastcall StateLookingAtObjectReaction__6LivingFv(struct Living* this);
// win1.41 005b00e0 mac inlined Living::StateFleeingAndLookingAtObjectReaction(void)
uint32_t __fastcall StateFleeingAndLookingAtObjectReaction__6LivingFv(struct Living* this);
// win1.41 005b00f0 mac inlined Living::StateBeingGoToWoodReaction(void)
uint32_t __fastcall StateGoToWoodReaction__6LivingFv(struct Living* this);
// win1.41 005b0190 mac inlined Living::StateMoveInFlock(void)
uint32_t __fastcall StateMoveInFlock__6LivingFv(struct Living* this);
// win1.41 005b01b0 mac inlined Living::StateFollowingObjectReaction(void)
uint32_t __fastcall StateFollowingObjectReaction__6LivingFv(struct Living* this);
// win1.41 005b0230 mac inlined Living::StateLookingAtFlyingObjectReaction(void)
uint32_t __fastcall StateLookingAtFlyingObjectReaction__6LivingFv(struct Living* this);
// win1.41 005b0240 mac inlined Living::StateInspectObjectReaction(void)
uint32_t __fastcall StateInspectObjectReaction__6LivingFv(struct Living* this);
// win1.41 005ec030 mac 103834b0 Living::SetToZero(void)
void __fastcall SetToZero__6LivingFv(struct Living* this);
// win1.41 005ec1d0 mac 103831d0 Living::InvalidState(void)
int __fastcall InvalidState__6LivingFv(struct Living* this);
// win1.41 005ec270 mac 1004cf70 Living::MoveToPos(void)
int __fastcall MoveToPos__6LivingFv(struct Living* this);
// win1.41 005ec2c0 mac 10382da0 Living::MoveToObject(void)
uint32_t __fastcall MoveToObject__6LivingFv(struct Living* this);
// win1.41 005ec330 mac 10382cf0 Living::Flying(void)
uint32_t __fastcall Flying__6LivingFv(struct Living* this);
// win1.41 005ec550 mac 10382540 Living::LookAtPos(MapCoords const &, ulong)
bool __fastcall LookAtPos__6LivingFRC9MapCoordsUl(struct Living* this, const void* edx, struct MapCoords* pos, int param_2);
// win1.41 005ec960 mac 1004eb50 Living::IsReadyForNewAnimation(unsigned long)
bool __fastcall IsReadyForNewAnimation__6LivingFUl(const struct Living* this, const void* edx, uint32_t index);
// win1.41 005ec990 mac 10054e20 Living::WaitForAnimation(void)
uint32_t __fastcall WaitForAnimation__6LivingFv(struct Living* this);
// win1.41 005eca80 mac inlined Living::SetTopStateToFinal(void)
void __fastcall SetTopStateToFinal__6LivingFv(struct Living* this);
// win1.41 005ecb10 mac 10053750 Living::SetStateAnim(void)
void __fastcall SetStateAnim__6LivingFv(struct Living* this);
// win1.41 005ecd00 mac 10380fd0 Living::MoveOnStructure(void)
uint32_t __fastcall MoveOnStructure__6LivingFv(struct Living* this);
// win1.41 005ecf60 mac 1006ced0 Living::GetFlockPos(void)
struct MapCoords* __fastcall GetFlockPos__6LivingFv(struct Living* this);
// win1.41 005ecf70 mac 1004bf90 Living::IAmFlockLeader(void)
bool __fastcall IAmFlockLeader__6LivingFv(struct Living* this);
// win1.41 005ecfa0 mac 10065500 Living::GetDomainRadius(void)
uint16_t __fastcall GetDomainRadius__6LivingFv(struct Living* this);
// win1.41 005ecfc0 mac 1006cd50 Living::GetFlockDistance(void)
uint16_t __fastcall GetFlockDistance__6LivingFv(struct Living* this);
// win1.41 005ed080 mac 100336b0 Living::CalcRandomPos(MapCoords const &, float, float)
struct MapCoords* __fastcall CalcRandomPos__6LivingFRC9MapCoordsff(struct Living* this, const void* edx, struct MapCoords* param_1, struct MapCoords* param_2, float param_3, float param_4);
// win1.41 005ed2c0 mac 10380600 Living::SetAge(float)
void __fastcall SetAge__6LivingFUl(struct Living* this, const void* edx, int age);
// win1.41 005ed9a0 mac 1006cf40 Living::StateInScript(void)
uint32_t __fastcall StateInScript__6LivingFv(struct Living* this);
// win1.41 005edad0 mac 1037f9b0 Living::StateInDance(void)
uint32_t __fastcall StateInDance__6LivingFv(struct Living* this);
// win1.41 005edc10 mac 1037f3d0 Living::SetupMoveOnFootpath(GFootpath *, int, unsigned char, GFootpathNode *)
int __fastcall SetupMoveOnFootpath__6LivingFP9GFootpathiUcP13GFootpathNode(struct Living* this, const void* edx, struct GFootpath* param_1, uint32_t param_2, uint32_t param_3, struct GFootpathNode* param_4);
// win1.41 005edd20 mac 100980f0 Living::SetupMoveToOnFootpath(GameThingWithPos &, MapCoords const &, unsigned char)
void __fastcall SetupMoveToOnFootpath__6LivingFR16GameThingWithPosRC9MapCoordsUc(struct Living* this, const void* edx, struct GameThingWithPos* destination, struct MapCoords* arrive_position, uint8_t state);
// win1.41 005edde0 mac 1037eef0 Living::MoveOnFootpath(void)
int __fastcall MoveOnFootpath__6LivingFv(struct Living* this);
// win1.41 005ef010 mac 10065550 Living::PosWithinDomain(MapCoords const &, float)
uint32_t __fastcall PosWithinDomain__6LivingFRC9MapCoordsf(struct Living* this, const void* edx, struct MapCoords* param_1, float param_2);
// win1.41 005f1270 mac 1004b9b0 Living::ProcessReaction(void)
void __fastcall ProcessReaction__6LivingFv(struct Living* this);
// win1.41 005f2640 mac 10385e00 Living::GotoPickupBallReaction(void)
uint32_t __fastcall GotoPickupBallReaction__6LivingFv(struct Living* this);
// win1.41 005f27f0 mac 10056110 Living::GetTopState(void)
enum VILLAGER_STATES __fastcall GetTopState__6LivingCFv(struct Living* this);
// win1.41 005f2830 mac 10029240 Living::SetupMoveToPos(MapCoords const &, unsigned char)
uint32_t __fastcall SetupMoveToPos__6LivingFRC9MapCoordsUc(struct Living* this, const void* edx, const struct MapCoords* param_2, uint8_t param_3);
// win1.41 005f2890 mac 10010f60 Living::SetupMoveToWithHug(MapCoords const &, unsigned char)
uint32_t __fastcall SetupMoveToWithHug__6LivingFRC9MapCoordsUc(struct Living* this, const void* edx, const struct MapCoords* coords, uint8_t state);
// win1.41 006e44a0 mac 101358c0 Living::SetReactionDoneWhen(REACTION)
void __fastcall SetReactionDoneWhen__6LivingF8REACTION(struct Living* this, const void* edx, enum REACTION reaction);

// Override methods

// win1.41 005ec0a0 mac 10383210 Living::ToBeDeleted(int)
void __fastcall ToBeDeleted__6LivingFi(struct Base* this, const void* edx, int param_1);
// win1.41 005ee230 mac 1037e700 Living::MoveAlongPath(void)
uint32_t __fastcall MoveAlongPath__6LivingFv(struct Object* this);
// win1.41 005ec1e0 mac 103830e0 Living::GetFinalDestPos(MapCoords *)
void __fastcall GetFinalDestPos__6LivingFP9MapCoords(struct Living* this, const void* edx, struct MapCoords* result);
// win1.41 005f2980 mac 10076180 Living::SetCurrentAndDestinationState(unsigned char, unsigned char)
uint32_t __fastcall SetCurrentAndDestinationState__6LivingFUcUc(struct Living* this, const void* edx, enum VILLAGER_STATES current, enum VILLAGER_STATES destination);
// win1.41 005f28e0 mac 10075940 Living::SetTopState(unsigned char)
uint32_t __fastcall SetTopState__6LivingFUc(struct Living* this, const void* edx, enum VILLAGER_STATES state);
// win1.41 00417040 mac 1012f8d0 Living::StorePreviousState(void)
void __fastcall StorePreviousState__6LivingFv(struct Living* this);
// win1.41 005f2a80 mac 10072250 Living::SetState(unsigned long, unsigned char)
void __fastcall SetState__6LivingFUlUc(struct Living* this, const void* edx, enum LIVING_ACTION_INDEX index, enum VILLAGER_STATES state);
// win1.41 005eddd0 mac 1037f260 Living::EnterMoveOnPath(unsigned char, unsigned char)
uint32_t __fastcall EnterMoveOnPath__6LivingFUcUc(struct Living* this, const void* edx, enum VILLAGER_STATES state_1, enum VILLAGER_STATES state_2);
// win1.41 00751dd0 mac 1004ec00 Living::GetFinalState(void)
enum VILLAGER_STATES __fastcall GetFinalState__6LivingCFv(const struct Living* this);

DECLARE_LH_LINKED_LIST(Living);
DECLARE_LH_LIST_HEAD(Living);

#endif /* BW1_DECOMP_LIVING_INCLUDED_H */
