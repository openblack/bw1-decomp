#ifndef BW1_DECOMP_ANIMAL_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h> /* For enum DEATH_REASON, enum HOLD_TYPE, enum RESOURCE_TYPE */
#include <chlasm/GStates.h> /* For ANIMAL_STATE_LAST_STATE, enum VILLAGER_STATES */

#include "Living.h" /* For struct Living */
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

class Animal: public Living
{
public:
    uint8_t field_0xe0[0x2c];
    uint8_t death_reason; /* 0x10c */
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

    // Override methods

    // win1.41 004178a0 mac 1016c000 Animal::_dt(void)
    virtual ~Animal();
    // win1.41 00417b60 mac 1016c0a0 Animal::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0071be10 mac 1050fbb0 Animal::GetGuidanceResourceType(void)
    virtual uint32_t GetGuidanceResourceType();
    // win1.41 0041b710 mac 10165620 Animal::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0041b460 mac 101659a0 Animal::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0041b9a0 mac 101655d0 Animal::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 00417840 mac 1012f3a0 Animal::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00417870 mac 1012f470 Animal::CanBeGivenToTown(Creature *)
    virtual uint32_t CanBeGivenToTown(Creature* param_1);
    // win1.41 004e4ae0 mac 105e41a0 Animal::IsAnimalBelongingToOtherPlayer(Creature *)
    virtual uint32_t IsAnimalBelongingToOtherPlayer(Creature* param_1);
    // win1.41 004eabd0 mac 1026e380 Animal::GetCreatureMimicType(void)
    virtual uint32_t GetCreatureMimicType();
    // win1.41 004d1b20 mac 102430c0 Animal::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 00417890 mac 1012f720 Animal::GetDeathReason(void)
    virtual DEATH_REASON GetDeathReason();
    // win1.41 00417880 mac 1004f080 Animal::IsAnimal(void)
    virtual uint32_t IsAnimal();
    // win1.41 0041b200 mac 101662b0 Animal::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00419310 mac 101696e0 Animal::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // win1.41 00419320 mac 10169690 Animal::GetHoldLoweringMultiplier(void)
    virtual float GetHoldLoweringMultiplier();
    // win1.41 0041b1b0 mac 101666a0 Animal::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
    // win1.41 00417700 mac 1012eed0 Animal::ProcessBySpell(Spell *)
    virtual uint32_t ProcessBySpell(Spell* param_1);
    // win1.41 00417540 mac 1012e540 Animal::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 00417550 mac inlined Animal::GetDetailMesh(int)
    virtual int GetDetailMesh(int param_1);
    // win1.41 0051c310 mac 100419a0 Animal::Draw(void)
    virtual void Draw();
    // win1.41 00417ee0 mac 1004c150 Animal::ProcessState(void)
    virtual uint32_t ProcessState();
    // win1.41 0041a040 mac 10168030 Animal::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00417530 mac 1012e500 Animal::GetResourceType(void)
    virtual RESOURCE_TYPE GetResourceType();
    // win1.41 0041bc80 mac 10164dc0 Animal::GetDefaultResource(void)
    virtual int GetDefaultResource();
    // win1.41 00419b40 mac 10168830 Animal::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 00419b60 mac 10168730 Animal::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 0041b320 mac 10166000 Animal::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 0041b360 mac 10165e60 Animal::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 005f04d0 mac 10385070 Animal::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 005f04e0 mac 10384ac0 Animal::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 005f0d80 mac 10384510 Animal::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // win1.41 0041bc10 mac 10164e30 Animal::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 00417860 mac 1012f430 Animal::GetTastiness(void)
    virtual uint32_t GetTastiness();
    // win1.41 0041a130 mac 10167d20 Animal::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00417780 mac 1012f0d0 Animal::StandAnimation(void)
    virtual uint32_t StandAnimation();
    // win1.41 00417fe0 mac 10084290 Animal::SetSpeed(long)
    virtual void SetSpeed(int param_1);
    // win1.41 00418560 mac 10049170 Animal::SetTowardsAngle(unsigned short)
    virtual void SetTowardsAngle(uint16_t param_1);
    // win1.41 00418aa0 mac 100482e0 Animal::MoveTo3D(void)
    virtual void MoveTo3D();
    // win1.41 0041a3f0 mac 1000bfc0 Animal::SetNewWander(MapCoords const &, long, long)
    virtual void SetNewWander(const MapCoords* param_1, int param_2, int param_3);
    // win1.41 0041acc0 mac 10166b90 Animal::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
    // win1.41 0041a2b0 mac 1007c6d0 Animal::SetStateSpeed(void)
    virtual void SetStateSpeed();
    // win1.41 0041b430 mac inlined Animal::IsFinalState(VILLAGER_STATES)
    virtual bool IsFinalState(VILLAGER_STATES param_1);
    // win1.41 00417fa0 mac 10054d90 Animal::GetAnimId(void)
    virtual ANIM_LIST GetAnimId();
    // win1.41 0041a2c0 mac inlined Animal::CallExitStateFunction(VILLAGER_STATES)
    virtual uint32_t CallExitStateFunction(VILLAGER_STATES param_1);
    // win1.41 0041a370 mac inlined Animal::CallEntryStateFunctionUcUc(VILLAGER_STATES, VILLAGER_STATES)
    virtual uint32_t CallEntryStateFunction__UcUc(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
    // win1.41 0041a310 mac inlined Animal::CallEntryStateFunctionUc(VILLAGER_STATES)
    virtual uint32_t CallEntryStateFunction__Uc(VILLAGER_STATES param_1);
    // win1.41 0041b170 mac inlined Animal::ExitReaction(VILLAGER_STATES)
    virtual int ExitReaction(VILLAGER_STATES param_1);
    // win1.41 00417570 mac inlined Animal::IsScriptState( const(VILLAGER_STATES))
    virtual bool IsScriptState(VILLAGER_STATES param_1);
    // win1.41 00417590 mac inlined Animal::IsScriptInterruptableState( const(VILLAGER_STATES))
    virtual bool IsScriptInterruptableState(VILLAGER_STATES param_1);
    // win1.41 0041b100 mac inlined Animal::IsStateExitFunctionSameAs( const(VILLAGER_STATES))
    virtual bool IsStateExitFunctionSameAs(VILLAGER_STATES param_1);
    // win1.41 0041b1c0 mac 101665d0 Animal::DebugShowTime(unsigned long, unsigned char, unsigned char)
    virtual uint32_t DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3);
    // win1.41 00419bc0 mac 10168630 Animal::IsInterestedInFoodObject(Object *)
    virtual bool IsInterestedInFoodObject(Object* param_1);
    // win1.41 0041a280 mac 10167c30 Animal::ResetStateAfterReacting(void)
    virtual void ResetStateAfterReacting();
    // win1.41 00420440 mac 10176350 Animal::SetupReactToCreature(GameThingWithPos *, Reaction *)
    virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004204a0 mac 101760c0 Animal::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00420460 mac 101762d0 Animal::SetupReactToFire(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00420480 mac 10176250 Animal::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFallingTree(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00420410 mac 101763d0 Animal::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
    virtual void SetupFleeFromPredator(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004175c0 mac 1012e7f0 Animal::FollowObjectPriority(Reaction *, Reaction *)
    virtual uint8_t FollowObjectPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004175d0 mac 1012e840 Animal::LookAtSpellPriority(Reaction *, Reaction *)
    virtual uint8_t LookAtSpellPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004175e0 mac 1012e890 Animal::LookAtNiceSpellPriority(Reaction *, Reaction *)
    virtual uint8_t LookAtNiceSpellPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004175f0 mac 1012e8e0 Animal::FollowSpellPriority(Reaction *, Reaction *)
    virtual uint8_t FollowSpellPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417600 mac 1012e930 Animal::ReactToWoodPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToWoodPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417610 mac 1012e980 Animal::ReactToMagicTreePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417620 mac 1012e9e0 Animal::ReactToBallPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToBallPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004203a0 mac 101765e0 Animal::ReactToFirePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417630 mac 1012ea30 Animal::ReactToMagicShieldPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417640 mac 1012ea90 Animal::ReactToCreatureGiftPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToCreatureGiftPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417650 mac 1012eaf0 Animal::ReactToNewBuildingPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToNewBuildingPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417660 mac 1012eb50 Animal::ReactToHandPickUpPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417670 mac 1012ebb0 Animal::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417680 mac 1012ec10 Animal::ReactToObjectCrushedPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417690 mac 1012ec70 Animal::ReactToFightPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004176a0 mac 1012ecc0 Animal::ReactToTeleportPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToTeleportPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004176b0 mac 1012ed10 Animal::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004176c0 mac 1012ed80 Animal::ReactToDeathPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004176d0 mac 1012edd0 Animal::ReactToDroppedByHandPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004176e0 mac 1012ee30 Animal::ReactToFaintingPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFaintingPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004176f0 mac 1012ee80 Animal::ReactToConfusedPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToConfusedPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004203b0 mac 10176560 Animal::ReactToFallingTreePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 0041bb00 mac 101650c0 Animal::IsChild(void)
    virtual bool IsChild();
    // win1.41 00420550 mac 10175d80 Animal::GetFleeingPositionFromMovingObject(MapCoords *, GameThingWithPos *, float)
    virtual void GetFleeingPositionFromMovingObject(MapCoords* param_1, GameThingWithPos* param_2, float param_3);
    // win1.41 0041a240 mac 1007c570 Animal::GetFinalState( const(void))
    virtual VILLAGER_STATES GetFinalState();
    // win1.41 0041b210 mac 10055c50 Animal::IsPosValidForTurnAngle(MapCoords const &)
    virtual bool IsPosValidForTurnAngle(const MapCoords* param_1);

    // Non-virtual methods

    // win1.41 0041abb0 mac 10087bd0 Animal::KeepFlockMemberWithinFlockArea(void)
    uint32_t KeepFlockMemberWithinFlockArea();
};

#endif /* BW1_DECOMP_ANIMAL_INCLUDED_H */
