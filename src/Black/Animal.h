#ifndef BW1_DECOMP_ANIMAL_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h>      /* For enum DEATH_REASON, enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <chlasm/GStates.h>   /* For ANIMAL_STATE_LAST_STATE, enum VILLAGER_STATES */

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

	// BW1W120 004178a0 BW1M100 1016c000 Animal::_dt(void)
	virtual ~Animal();
	// BW1W120 00417b60 BW1M100 1016c0a0 Animal::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0071be10 BW1M100 1050fbb0 Animal::GetGuidanceResourceType(void)
	virtual uint32_t GetGuidanceResourceType();
	// BW1W120 0041b710 BW1M100 10165620 Animal::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0041b460 BW1M100 101659a0 Animal::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0041b9a0 BW1M100 101655d0 Animal::ResolveLoad(void)
	virtual void ResolveLoad();
	// BW1W120 00417840 BW1M100 1012f3a0 Animal::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00417870 BW1M100 1012f470 Animal::CanBeGivenToTown(Creature *)
	virtual uint32_t CanBeGivenToTown(Creature* param_1);
	// BW1W120 004e4ae0 BW1M100 105e41a0 Animal::IsAnimalBelongingToOtherPlayer(Creature *)
	virtual uint32_t IsAnimalBelongingToOtherPlayer(Creature* param_1);
	// BW1W120 004eabd0 BW1M100 1026e380 Animal::GetCreatureMimicType(void)
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1b20 BW1M100 102430c0 Animal::GetHowMuchCreatureWantsToLookAtMe(void)
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 00417890 BW1M100 1012f720 Animal::GetDeathReason(void)
	virtual DEATH_REASON GetDeathReason();
	// BW1W120 00417880 BW1M100 1004f080 Animal::IsAnimal(void)
	virtual uint32_t IsAnimal();
	// BW1W120 0041b200 BW1M100 101662b0 Animal::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 00419310 BW1M100 101696e0 Animal::GetHoldType(void)
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00419320 BW1M100 10169690 Animal::GetHoldLoweringMultiplier(void)
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 0041b1b0 BW1M100 101666a0 Animal::DestroyedByEffect(GPlayer *, float)
	virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
	// BW1W120 00417700 BW1M100 1012eed0 Animal::ProcessBySpell(Spell *)
	virtual uint32_t ProcessBySpell(Spell* param_1);
	// BW1W120 00417540 BW1M100 1012e540 Animal::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 00417550 BW1M100 inlined Animal::GetDetailMesh(int)
	virtual int GetDetailMesh(int param_1);
	// BW1W120 0051c310 BW1M100 100419a0 Animal::Draw(void)
	virtual void Draw();
	// BW1W120 00417ee0 BW1M100 1004c150 Animal::ProcessState(void)
	virtual uint32_t ProcessState();
	// BW1W120 0041a040 BW1M100 10168030 Animal::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 00417530 BW1M100 1012e500 Animal::GetResourceType(void)
	virtual RESOURCE_TYPE GetResourceType();
	// BW1W120 0041bc80 BW1M100 10164dc0 Animal::GetDefaultResource(void)
	virtual int GetDefaultResource();
	// BW1W120 00419b40 BW1M100 10168830 Animal::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00419b60 BW1M100 10168730 Animal::InterfaceSetInMagicHand(GInterfaceStatus *)
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 0041b320 BW1M100 10166000 Animal::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 0041b360 BW1M100 10165e60 Animal::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 005f04d0 BW1M100 10385070 Animal::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 005f04e0 BW1M100 10384ac0 Animal::SetUpPhysOb(PhysOb *)
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 005f0d80 BW1M100 10384510 Animal::EndPhysics(PhysicsObject *, bool)
	virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 0041bc10 BW1M100 10164e30 Animal::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 00417860 BW1M100 1012f430 Animal::GetTastiness(void)
	virtual uint32_t GetTastiness();
	// BW1W120 0041a130 BW1M100 10167d20 Animal::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
	// BW1W120 00417780 BW1M100 1012f0d0 Animal::StandAnimation(void)
	virtual uint32_t StandAnimation();
	// BW1W120 00417fe0 BW1M100 10084290 Animal::SetSpeed(long)
	virtual void SetSpeed(int param_1);
	// BW1W120 00418560 BW1M100 10049170 Animal::SetTowardsAngle(unsigned short)
	virtual void SetTowardsAngle(uint16_t param_1);
	// BW1W120 00418aa0 BW1M100 100482e0 Animal::MoveTo3D(void)
	virtual void MoveTo3D();
	// BW1W120 0041a3f0 BW1M100 1000bfc0 Animal::SetNewWander(MapCoords const &, long, long)
	virtual void SetNewWander(const MapCoords* param_1, int param_2, int param_3);
	// BW1W120 0041acc0 BW1M100 10166b90 Animal::DecideWhatToDo(void)
	virtual bool32_t DecideWhatToDo();
	// BW1W120 0041a2b0 BW1M100 1007c6d0 Animal::SetStateSpeed(void)
	virtual void SetStateSpeed();
	// BW1W120 0041b430 BW1M100 inlined Animal::IsFinalState(VILLAGER_STATES)
	virtual bool IsFinalState(VILLAGER_STATES param_1);
	// BW1W120 00417fa0 BW1M100 10054d90 Animal::GetAnimId(void)
	virtual ANIM_LIST GetAnimId();
	// BW1W120 0041a2c0 BW1M100 inlined Animal::CallExitStateFunction(VILLAGER_STATES)
	virtual uint32_t CallExitStateFunction(VILLAGER_STATES param_1);
	// BW1W120 0041a370 BW1M100 inlined Animal::CallEntryStateFunctionUcUc(VILLAGER_STATES, VILLAGER_STATES)
	virtual uint32_t CallEntryStateFunction__UcUc(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
	// BW1W120 0041a310 BW1M100 inlined Animal::CallEntryStateFunctionUc(VILLAGER_STATES)
	virtual uint32_t CallEntryStateFunction__Uc(VILLAGER_STATES param_1);
	// BW1W120 0041b170 BW1M100 inlined Animal::ExitReaction(VILLAGER_STATES)
	virtual int ExitReaction(VILLAGER_STATES param_1);
	// BW1W120 00417570 BW1M100 inlined Animal::IsScriptState( const(VILLAGER_STATES))
	virtual bool IsScriptState(VILLAGER_STATES param_1);
	// BW1W120 00417590 BW1M100 inlined Animal::IsScriptInterruptableState( const(VILLAGER_STATES))
	virtual bool IsScriptInterruptableState(VILLAGER_STATES param_1);
	// BW1W120 0041b100 BW1M100 inlined Animal::IsStateExitFunctionSameAs( const(VILLAGER_STATES))
	virtual bool IsStateExitFunctionSameAs(VILLAGER_STATES param_1);
	// BW1W120 0041b1c0 BW1M100 101665d0 Animal::DebugShowTime(unsigned long, unsigned char, unsigned char)
	virtual uint32_t DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3);
	// BW1W120 00419bc0 BW1M100 10168630 Animal::IsInterestedInFoodObject(Object *)
	virtual bool IsInterestedInFoodObject(Object* param_1);
	// BW1W120 0041a280 BW1M100 10167c30 Animal::ResetStateAfterReacting(void)
	virtual void ResetStateAfterReacting();
	// BW1W120 00420440 BW1M100 10176350 Animal::SetupReactToCreature(GameThingWithPos *, Reaction *)
	virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004204a0 BW1M100 101760c0 Animal::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
	virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00420460 BW1M100 101762d0 Animal::SetupReactToFire(GameThingWithPos *, Reaction *)
	virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00420480 BW1M100 10176250 Animal::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
	virtual void SetupReactToFallingTree(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00420410 BW1M100 101763d0 Animal::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
	virtual void SetupFleeFromPredator(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004175c0 BW1M100 1012e7f0 Animal::FollowObjectPriority(Reaction *, Reaction *)
	virtual uint8_t FollowObjectPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004175d0 BW1M100 1012e840 Animal::LookAtSpellPriority(Reaction *, Reaction *)
	virtual uint8_t LookAtSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004175e0 BW1M100 1012e890 Animal::LookAtNiceSpellPriority(Reaction *, Reaction *)
	virtual uint8_t LookAtNiceSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004175f0 BW1M100 1012e8e0 Animal::FollowSpellPriority(Reaction *, Reaction *)
	virtual uint8_t FollowSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417600 BW1M100 1012e930 Animal::ReactToWoodPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToWoodPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417610 BW1M100 1012e980 Animal::ReactToMagicTreePriority(Reaction *, Reaction *)
	virtual uint8_t ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417620 BW1M100 1012e9e0 Animal::ReactToBallPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToBallPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004203a0 BW1M100 101765e0 Animal::ReactToFirePriority(Reaction *, Reaction *)
	virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417630 BW1M100 1012ea30 Animal::ReactToMagicShieldPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417640 BW1M100 1012ea90 Animal::ReactToCreatureGiftPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToCreatureGiftPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417650 BW1M100 1012eaf0 Animal::ReactToNewBuildingPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToNewBuildingPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417660 BW1M100 1012eb50 Animal::ReactToHandPickUpPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417670 BW1M100 1012ebb0 Animal::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417680 BW1M100 1012ec10 Animal::ReactToObjectCrushedPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417690 BW1M100 1012ec70 Animal::ReactToFightPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176a0 BW1M100 1012ecc0 Animal::ReactToTeleportPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToTeleportPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176b0 BW1M100 1012ed10 Animal::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176c0 BW1M100 1012ed80 Animal::ReactToDeathPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176d0 BW1M100 1012edd0 Animal::ReactToDroppedByHandPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176e0 BW1M100 1012ee30 Animal::ReactToFaintingPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToFaintingPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004176f0 BW1M100 1012ee80 Animal::ReactToConfusedPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToConfusedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004203b0 BW1M100 10176560 Animal::ReactToFallingTreePriority(Reaction *, Reaction *)
	virtual uint8_t ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 0041bb00 BW1M100 101650c0 Animal::IsChild(void)
	virtual bool32_t IsChild();
	// BW1W120 00420550 BW1M100 10175d80 Animal::GetFleeingPositionFromMovingObject(MapCoords *, GameThingWithPos *, float)
	virtual void GetFleeingPositionFromMovingObject(MapCoords* param_1, GameThingWithPos* param_2, float param_3);
	// BW1W120 0041a240 BW1M100 1007c570 Animal::GetFinalState( const(void))
	virtual VILLAGER_STATES GetFinalState();
	// BW1W120 0041b210 BW1M100 10055c50 Animal::IsPosValidForTurnAngle(MapCoords const &)
	virtual bool IsPosValidForTurnAngle(const MapCoords* param_1);

	// Non-virtual methods

	// BW1W120 0041abb0 BW1M100 10087bd0 Animal::KeepFlockMemberWithinFlockArea(void)
	uint32_t KeepFlockMemberWithinFlockArea();
};

#endif /* BW1_DECOMP_ANIMAL_INCLUDED_H */
