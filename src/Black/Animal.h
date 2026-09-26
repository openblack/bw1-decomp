#ifndef BW1_DECOMP_ANIMAL_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h>   /* For enum ANIM_LIST */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */
#include <chlasm/Enum.h>        /* For enum DEATH_REASON, enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <chlasm/GStates.h>     /* For ANIMAL_STATE_LAST_STATE, enum VILLAGER_STATES */

#include "Living.h"       /* For struct Living */
#include "LivingAction.h" /* For struct Living__StateTableEntry */

// Forward Declares

class Base;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct GestureSystemPacketData;
class LHOSFile;
struct MapCoords;
class MobileWallHug;
class Object;
struct PhysOb;
class PhysicsObject;
class Reaction;
class Spell;

class Animal : public Living
{
public:
	uint8_t  field_0xe0[0x2c];
	uint8_t  DeathReason; /* 0x10c */
	float    field_0x110;
	float    field_0x114;
	float    field_0x118;
	float    field_0x11c;
	uint32_t field_0x120;
	float    field_0x124;
	float    field_0x128;
	float    field_0x12c;
	float    field_0x130;
	float    field_0x134;
	float    field_0x138;
	float    field_0x13c;
	float    field_0x140;
	float    field_0x144;

	// Override methods

	// BW1W120 004178a0 BW1M119 01174cd0
	virtual ~Animal();
	// BW1W120 00417b60 BW1M119 01174d70
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0071be10 BW1M119 01517730
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 0041b710 BW1M119 0116daa0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0041b460 BW1M119 0116de20
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0041b9a0 BW1M119 0116da50
	virtual void ResolveLoad();
	// BW1W120 00417840 BW1M119 01138230
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00417870 BW1M119 01138300
	virtual bool32_t CanBeGivenToTown(Creature* param_1);
	// BW1W120 004e4ae0 BW1M119 015ebea0
	virtual bool32_t IsAnimalBelongingToOtherPlayer(Creature* param_1);
	// BW1W120 004eabd0 BW1M119 012721e0
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1b20 BW1M119 012479b0
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 00417890 BW1M119 011383c0
	virtual DEATH_REASON GetDeathReason();
	// BW1W120 00417880 BW1M119 01051a00
	virtual bool32_t IsAnimal();
	// BW1W120 0041b200 BW1M119 0116e640
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00419310 BW1M119 01172060
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00419320 BW1M119 01172010
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 0041b1b0 BW1M119 0116e810
	virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
	// BW1W120 00417700 BW1M119 01137df0
	virtual uint32_t ProcessBySpell(Spell* param_1);
	// BW1W120 00417540 BW1M119 011374c0
	virtual MESH_LIST GetMesh() const;
	// BW1W120 00417550 BW1M119 inlined
	virtual int GetDetailMesh(int param_1);
	// BW1W120 0051c310 BW1M119 010443e0
	virtual void Draw();
	// BW1W120 00417ee0 BW1M119 0104eae0
	virtual uint32_t ProcessState();
	// BW1W120 0041a040 BW1M119 011704d0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00417530 BW1M119 01137480
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 0041bc80 BW1M119 0116d110
	virtual int GetDefaultResource();
	// BW1W120 00419b40 BW1M119 01170cd0
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00419b60 BW1M119 01170bd0
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0041b320 BW1M119 0116e480
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 0041b360 BW1M119 0116e2e0
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 005f04d0 BW1M119 0138d240
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 005f04e0 BW1M119 0138ccb0
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 005f0d80 BW1M119 0138c700
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0041bc10 BW1M119 0116d180
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00417860 BW1M119 011382c0
	virtual uint32_t GetTastiness();
	// BW1W120 0041a130 BW1M119 011701c0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00417780 BW1M119 01137fe0
	virtual uint32_t StandAnimation();
	// BW1W120 00417fe0 BW1M119 01086670
	virtual void SetSpeed(int param_1);
	// BW1W120 00418560 BW1M119 0104bb20
	virtual void SetTowardsAngle(uint16_t param_1);
	// BW1W120 00418aa0 BW1M119 0104ac50
	virtual void MoveTo3D();
	// BW1W120 00417c90 BW1M119 01098600
	virtual bool32_t StartWander();
	// BW1W120 00418010 BW1M119 01173ed0
	virtual bool32_t Wander();
	// BW1W120 004182d0 BW1M119 01014f60
	virtual bool32_t Eat();
	// BW1W120 004180d0 BW1M119 01173d20
	virtual bool32_t SeekSleep();
	// BW1W120 00418330 BW1M119 01080970
	virtual bool32_t Sleeps();
	// BW1W120 004181b0 BW1M119 01173bf0
	virtual bool32_t SeekEnvironment();
	// BW1W120 00418370 BW1M119 01173720
	virtual bool32_t StandardAction();
	// BW1W120 00418280 BW1M119 01173980
	virtual bool32_t StartToEat();
	// BW1W120 00418320 BW1M119 010a0b70
	virtual bool32_t FinishEating();
	// BW1W120 00419010 BW1M119 01172460
	virtual bool32_t TargetPounce();
	// BW1W120 00418db0 BW1M119 01172720
	virtual bool32_t HuntingMoveToPos();
	// BW1W120 00417d40 BW1M119 011746f0
	virtual bool32_t MoveToPosAndLookAround();
	// BW1W120 0041ad10 BW1M119 0116ed20
	virtual bool32_t SpecialMoveToPos();
	// BW1W120 0041ad00 BW1M119 0116ed60
	virtual bool32_t FollowFlock();
	// BW1W120 0041ad20 BW1M119 0116ece0
	virtual bool32_t LandOnObject();
	// BW1W120 0041ad30 BW1M119 0116ecb0
	virtual bool32_t LandAtPos();
	// BW1W120 00417d80 BW1M119 011745a0
	virtual bool32_t InteractDecideWhatToDo();
	// BW1W120 004201f0 BW1M119 0117f6b0
	virtual bool32_t FleeingFromPredatorReaction();
	// BW1W120 00418230 BW1M119 01173a20
	virtual bool32_t GivesBirth();
	// BW1W120 0041b450 BW1M119 0116e1d0
	virtual bool32_t HideInLair();
	// BW1W120 004180a0 BW1M119 01173e30
	virtual bool32_t SeekFood();
	// BW1W120 00417dc0 BW1M119 0104e720
	virtual uint32_t ProcessNeeds();
	// BW1W120 00418450 BW1M119 010060e0
	virtual uint32_t CheckNeeds();
	// BW1W120 00417520 BW1M119 0113bc20
	virtual uint32_t IsOkToBeShepherd();
	// BW1W120 0041a3e0 BW1M119 0116fcf0
	virtual uint32_t AddToFlock();
	// BW1W120 0041b0f0 BW1M119 0116ea00
	virtual uint32_t GetPositionInFlock();
	// BW1W120 00419120 BW1M119 01172110
	virtual uint32_t FinishPouncing();
	// BW1W120 00418da0 BW1M119 01172b10
	virtual uint32_t IsHuntingTargetValid();
	// BW1W120 00418fd0 BW1M119 01172660
	virtual uint32_t HuntingMoveToPosAbaondon();
	// BW1W120 004183c0 BW1M119 011735e0
	virtual uint32_t ReactToAnimalNeeds();
	// BW1W120 004184d0 BW1M119 011732e0
	virtual uint32_t ReactToAnimalFoodNeeds();
	// BW1W120 0041ad50 BW1M119 0116ec70
	virtual uint32_t LookForFoodPos();
	// BW1W120 0041ad60 BW1M119 0116ec30
	virtual uint32_t LookForSleepPos();
	// BW1W120 004175b0 BW1M119 011376e0
	virtual uint32_t IAmABird();
	// BW1W120 0041b420 BW1M119 0116e270
	virtual uint32_t CalculeLairPos();
	// BW1W120 004192e0
	virtual uint32_t FUN_004192E0();
	// BW1W120 004192f0 BW1M119 011720a0
	virtual uint32_t ProcessFadeOut();
	// BW1W120 0041b1d0 BW1M119 010337b0
	virtual uint32_t GetTimeToBank();
	// BW1W120 0041b1e0 BW1M119 01022a10
	virtual uint32_t GetBankAngle(float param_1, float param_2);
	// BW1W120 00417710 BW1M119 01175ca0
	virtual uint32_t MoveAnimation();
	// BW1W120 00417720 BW1M119 01175ce0
	virtual uint32_t DyingAnimation();
	// BW1W120 00417730 BW1M119 01175d20
	virtual uint32_t DeadAnimation();
	// BW1W120 00417740 BW1M119 01175d60
	virtual uint32_t EatAnimation();
	// BW1W120 00417750 BW1M119 01175da0
	virtual uint32_t StartToEatAnimation();
	// BW1W120 00417760 BW1M119 01175de0
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 00417770 BW1M119 01175e20
	virtual uint32_t SleepAnimation();
	// BW1W120 00417790 BW1M119 01137e50
	virtual uint32_t LayDownAnimation();
	// BW1W120 004177a0 BW1M119 01137e90
	virtual uint32_t PounceAnimation();
	// BW1W120 004177b0 BW1M119 01137ed0
	virtual uint32_t HideAnimation();
	// BW1W120 004177c0 BW1M119 01137f10
	virtual uint32_t StalkAnimation();
	// BW1W120 004177d0 BW1M119 01137f50
	virtual uint32_t StandardAnimation();
	// BW1W120 004177e0 BW1M119 01175e60
	virtual uint32_t InHandAnimation();
	// BW1W120 004177f0 BW1M119 01175ea0
	virtual uint32_t LandedAnimation();
	// BW1W120 00417800 BW1M119 01175ee0
	virtual uint32_t ThrownAnimation();
	// BW1W120 00417810 BW1M119 0109e9f0
	virtual uint32_t DecideAnimation();
	// BW1W120 0041a3f0 BW1M119 0100eaf0
	virtual void SetNewWander(const MapCoords& param_1, int param_2, int param_3);
	// BW1W120 0041acc0 BW1M119 0116eda0
	virtual bool32_t DecideWhatToDo();
	// BW1W120 0041a2b0 BW1M119 016da754
	virtual void SetStateSpeed();
	// BW1W120 0041b430 BW1M119 inlined
	virtual bool IsFinalState(uint8_t state);
	// BW1W120 00417fa0 BW1M119 01057730
	virtual ANIM_LIST GetAnimId();
	// BW1W120 0041a2c0 BW1M119 inlined
	virtual uint32_t CallExitStateFunction(uint8_t state);
	// BW1W120 0041a370 BW1M119 inlined
	virtual uint32_t CallEntryStateFunction(uint8_t current, uint8_t destination);
	// BW1W120 0041a310 BW1M119 inlined
	virtual uint32_t CallEntryStateFunction(uint8_t state);
	// BW1W120 0041b170 BW1M119 inlined
	virtual bool32_t ExitReaction(uint8_t state);
	// BW1W120 00417570 BW1M119 inlined
	virtual bool IsScriptState(uint8_t state) const;
	// BW1W120 00417590 BW1M119 inlined
	virtual bool IsScriptInterruptableState(uint8_t state) const;
	// BW1W120 0041b100 BW1M119 inlined
	virtual bool32_t IsStateExitFunctionSameAs(uint8_t state) const;
	// BW1W120 0041b1c0 BW1M119 0116e740
	virtual uint32_t DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3);
	// BW1W120 00419bc0 BW1M119 01170ad0
	virtual bool IsInterestedInFoodObject(Object* param_1);
	// BW1W120 0041a280 BW1M119 0116fe90
	virtual void ResetStateAfterReacting();
	// BW1W120 00420440 BW1M119 0117f3b0
	virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004204a0 BW1M119 0117f120
	virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00420460 BW1M119 0117f330
	virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00420480 BW1M119 0117f2b0
	virtual void SetupReactToFallingTree(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00420410 BW1M119 0117f430
	virtual void SetupFleeFromPredator(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004175c0 BW1M119 01137710
	virtual uint8_t FollowObjectPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004175d0 BW1M119 01137760
	virtual uint8_t LookAtSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004175e0 BW1M119 011377b0
	virtual uint8_t LookAtNiceSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004175f0 BW1M119 01137800
	virtual uint8_t FollowSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417600 BW1M119 01137850
	virtual uint8_t ReactToWoodPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417610 BW1M119 011378a0
	virtual uint8_t ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417620 BW1M119 01137900
	virtual uint8_t ReactToBallPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004203a0 BW1M119 0117f640
	virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417630 BW1M119 01137950
	virtual uint8_t ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417640 BW1M119 011379b0
	virtual uint8_t ReactToCreatureGiftPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417650 BW1M119 01137a10
	virtual uint8_t ReactToNewBuildingPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417660 BW1M119 01137a70
	virtual uint8_t ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417670 BW1M119 01137ad0
	virtual uint8_t ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417680 BW1M119 01137b30
	virtual uint8_t ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417690 BW1M119 01137b90
	virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176a0 BW1M119 01137be0
	virtual uint8_t ReactToTeleportPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176b0 BW1M119 01137c30
	virtual uint8_t ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176c0 BW1M119 01137ca0
	virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176d0 BW1M119 01137cf0
	virtual uint8_t ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176e0 BW1M119 01137d50
	virtual uint8_t ReactToFaintingPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176f0 BW1M119 01137da0
	virtual uint8_t ReactToConfusedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004203b0 BW1M119 0117f5c0
	virtual uint8_t ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 0041bb00 BW1M119 0116d410
	virtual bool32_t IsChild();
	// BW1W120 00420550 BW1M119 0117edd0
	virtual void GetFleeingPositionFromMovingObject(MapCoords* param_1, GameThingWithPos* param_2, float param_3);
	// BW1W120 0041a240 BW1M119 0107eb10
	virtual VILLAGER_STATES GetFinalState() const;
	// BW1W120 0041b210 BW1M119 010585e0
	virtual bool IsPosValidForTurnAngle(const MapCoords& param_1);

	// Non-virtual methods

	// BW1W120 0041abb0 BW1M119 01089fb0
	uint32_t KeepFlockMemberWithinFlockArea();
	// BW1W120 005afe70 BW1M119 01051680
	bool32_t MoveToPos();
	// BW1W120 005afef0 BW1M119 01174660
	bool32_t Landed();

	// State-table handlers reached only through the villager/animal state
	// tables in GStates.cpp. Names are placeholders keyed on the address;
	// the signature of each is fixed by the table slot it is stored in.

	// EntryState slot
	// BW1W120 0041bab0 BW1M119 010a0590
	bool32_t EnterWandering(uint8_t param_1, uint8_t param_2);
	// BW1W120 0041bac0 BW1M119 0116d720
	bool32_t EnterSleep(uint8_t param_1, uint8_t param_2);
	// BW1W120 0041bad0 BW1M119 0116d6e0
	bool32_t EnterHideInLair(uint8_t param_1, uint8_t param_2);
	// BW1W120 0041bae0 BW1M119 0116d6a0
	bool32_t EnterSeekFood(uint8_t param_1, uint8_t param_2);
};

#endif /* BW1_DECOMP_ANIMAL_INCLUDED_H */
