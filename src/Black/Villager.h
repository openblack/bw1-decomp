#ifndef BW1_DECOMP_VILLAGER_INCLUDED_H
#define BW1_DECOMP_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h> /* For RESOURCE_TYPE_LAST, enum DEATH_REASON, enum HOLD_TYPE, enum REACTION, enum RESOURCE_TYPE, enum TRIBE_TYPE, enum VILLAGER_DISCIPLE */
#include <chlasm/GStates.h> /* For VILLAGER_STATE_LAST_STATE, enum VILLAGER_STATES */
#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT */
#include <re_common.h> /* For bool32_t */

#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "Living.h" /* For struct Living, struct LivingVftable */
#include "LivingAction.h" /* For enum LIVING_ACTION_INDEX, struct Living__StateTableEntry */
#include "Object.h" /* For struct Object */
#include "ScriptDLL.h" /* For enum STATE_TYPE */

// Forward Declares

class Abode;
class Base;
class BigForest;
class BuildingSite;
class Citadel;
class Creature;
class Creche;
class EffectValues;
class Field;
class FireEffect;
class FishFarm;
class Flock;
class Football;
class Forest;
class GInterfaceStatus;
class GJobInfo;
class GPlayer;
class GTribeInfo;
class GVillagerInfo;
class GameOSFile;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct GestureSystemPacketData;
struct JustWholeMapXZ;
class LHOSFile;
struct LHPoint;
class MagicTeleport;
struct MapCoords;
class MultiMapFixed;
struct ObjectVftable;
struct PhysOb;
class PhysicsObject;
class Pot;
class Reaction;
class StoragePit;
class Town;
class Tree;
class WorshipSite;

struct ClearAreaPoint
{
    uint8_t field_0x0;

    // Non-virtual methods

    // win1.41 007591e0 mac 10575000 ClearAreaPoint::ProcessPoint(LHPoint const &)
    bool32_t ProcessPoint(const LHPoint* param_1);
};

class Villager: public Living
{
public:
    uint16_t field_0xe0;
    Villager* next;
    float food;
    int last_check_turn;
    bool food_speed_up; /* 0xf0 */
    uint8_t field_0xf1;
    uint8_t disciple_type;
    uint8_t field_0xf3;
    int16_t resource_held[RESOURCE_TYPE_LAST];
    int16_t is_pregnant;
    int16_t field_0xfa;
    BuildingSite* building_site;
    Villager* mother; /* 0x100 */
    GPlayer* last_player_to_interact;
    float field_0x108;
    float field_0x10c;
    uint32_t field_0x110;
    FireEffect* fire_effect;
    GameThing* target_thing;
    Football* football;
    uint32_t field_0x120;
    uint32_t field_0x124;
    Abode* home;
    Town* town;

    // Override methods

    // win1.41 0055cb40 mac 10571890 Villager::_dt(unsigned int)
    virtual ~Villager();
    // win1.41 007521b0 mac 1056caa0 Villager::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 007502f0 mac 10064390 Villager::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00751d50 mac 10054860 Villager::IsAvailable(void)
    virtual bool IsAvailable();
    // win1.41 00751f00 mac 10064360 Villager::GetTown(void)
    virtual Town* GetTown();
    // win1.41 007564d0 mac 10565060 Villager::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // win1.41 00751cf0 mac 100199f0 Villager::IsFunctional(void)
    virtual bool IsFunctional();
    // win1.41 0055cb30 mac 10571f80 Villager::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00754580 mac 10568980 Villager::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00754280 mac 10568d70 Villager::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055cb20 mac 10571f40 Villager::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00754870 mac 10568900 Villager::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 0055ca70 mac 10148010 Villager::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00751db0 mac 1056d490 Villager::GetCitadel(void)
    virtual Citadel* GetCitadel();
    // win1.41 00753110 mac 1056a8c0 Villager::SetSpeedInMetres(float, int)
    virtual void SetSpeedInMetres(float param_1, int param_2);
    // win1.41 00756b30 mac 10563e60 Villager::IsDrowning(void)
    virtual bool IsDrowning();
    // win1.41 004e4c90 mac 105e3c40 Villager::CanBeHealedByCreature(Creature *)
    virtual uint32_t CanBeHealedByCreature(Creature* param_1);
    // win1.41 0055caa0 mac 10148110 Villager::CanBeHelpedByCreature(Creature *)
    virtual uint32_t CanBeHelpedByCreature(Creature* param_1);
    // win1.41 0055ca80 mac 10148050 Villager::CanBeImpressedByCreature(Creature *)
    virtual uint32_t CanBeImpressedByCreature(Creature* param_1);
    // win1.41 0055ca90 mac 101480d0 Villager::CanReceiveGifts(Creature *)
    virtual uint32_t CanReceiveGifts(Creature* param_1);
    // win1.41 004e4b40 mac 105e4090 Villager::CanHaveMagicFoodCastOnMe(Creature *)
    virtual uint32_t CanHaveMagicFoodCastOnMe(Creature* param_1);
    // win1.41 0055cab0 mac 1006d800 Villager::IsVillager(Creature *)
    virtual uint32_t IsVillager(Creature* param_1);
    // win1.41 004e4d50 mac 105e3950 Villager::IsVillagerFarFromHome(Creature *)
    virtual uint32_t IsVillagerFarFromHome(Creature* param_1);
    // win1.41 004e4510 mac 105e5100 Villager::IsVillagerInTownWithoutManyBreeders(Creature *)
    virtual uint32_t IsVillagerInTownWithoutManyBreeders(Creature* param_1);
    // win1.41 004e46d0 mac 105e4e90 Villager::IsVillagerNotWorshipping(Creature *)
    virtual uint32_t IsVillagerNotWorshipping(Creature* param_1);
    // win1.41 004e4b10 mac 105e40e0 Villager::IsVillagerBelongingToOtherPlayer(Creature *)
    virtual uint32_t IsVillagerBelongingToOtherPlayer(Creature* param_1);
    // win1.41 004e4840 mac 105e4a70 Villager::IsVillagerWhoHasNotBeenImpressedRecently(Creature *)
    virtual uint32_t IsVillagerWhoHasNotBeenImpressedRecently(Creature* param_1);
    // win1.41 004e4890 mac 105e49d0 Villager::IsVillagerWhoHasNotBeenDancedWithRecently(Creature *)
    virtual uint32_t IsVillagerWhoHasNotBeenDancedWithRecently(Creature* param_1);
    // win1.41 004e3e20 mac 105e68c0 Villager::DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature *)
    virtual uint32_t DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature* param_1);
    // win1.41 0076c340 mac 1059db90 Villager::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // win1.41 004e3b60 mac 105e7030 Villager::IsDoingSomethingInteresting(Creature *)
    virtual uint32_t IsDoingSomethingInteresting(Creature* param_1);
    // win1.41 00532db0 mac 102ba4d0 Villager::IsPlayingFootball(Creature *)
    virtual uint32_t IsPlayingFootball(Creature* param_1);
    // win1.41 00532e00 mac 102ba3f0 Villager::IsPlayingFootballAndMySideHasJustScored(Creature *)
    virtual uint32_t IsPlayingFootballAndMySideHasJustScored(Creature* param_1);
    // win1.41 00532e50 mac 102ba300 Villager::IsPlayingFootballAndOtherSideHasJustScored(Creature *)
    virtual uint32_t IsPlayingFootballAndOtherSideHasJustScored(Creature* param_1);
    // win1.41 004eaba0 mac 1026e3f0 Villager::GetCreatureMimicType(void)
    virtual uint32_t GetCreatureMimicType();
    // win1.41 004d1b40 mac 10243020 Villager::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 0063b9b0 mac 103da4e0 Villager::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
    virtual void CalculateWhereIWillBeAfterNSeconds(float param_1, LHPoint* param_2);
    // win1.41 00768630 mac 10597660 Villager::IsReadyForNewScriptAction(void)
    virtual uint32_t IsReadyForNewScriptAction();
    // win1.41 0055cb10 mac 10148200 Villager::GetDeathReason(void)
    virtual DEATH_REASON GetDeathReason();
    // win1.41 0055cac0 mac 10478e10 Villager::IsMaleVillager(void)
    virtual uint32_t IsMaleVillager();
    // win1.41 0055cae0 mac 1033bc40 Villager::IsFemaleVillager(void)
    virtual uint32_t IsFemaleVillager();
    // win1.41 0055cb00 mac 1009a450 Villager::IsAChild(void)
    virtual uint32_t IsAChild();
    // win1.41 007562c0 mac 105652e0 Villager::SetSkeleton(int)
    virtual void SetSkeleton(int index);
    // win1.41 00753f20 mac 10569710 Villager::GetQueryFirstEnumText(void)
    virtual HELP_TEXT GetQueryFirstEnumText();
    // win1.41 00753f90 mac 105695c0 Villager::GetQueryLastEnumText(void)
    virtual HELP_TEXT GetQueryLastEnumText();
    // win1.41 00754050 mac 10032e70 Villager::GetFOVHelpMessageSet(void)
    virtual uint32_t GetFOVHelpMessageSet();
    // win1.41 00754060 mac 10569510 Villager::GetFOVHelpCondition(void)
    virtual uint32_t GetFOVHelpCondition();
    // win1.41 00753020 mac 10005a00 Villager::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00756460 mac 10094080 Villager::IsReachable(void)
    virtual bool IsReachable();
    // win1.41 00756450 mac 1005f5e0 Villager::InsertMapObject(void)
    virtual void InsertMapObject();
    // win1.41 00750310 mac 10097630 Villager::GetHoldType(void)
    virtual HOLD_TYPE GetHoldType();
    // win1.41 00750320 mac 1009a310 Villager::GetHoldLoweringMultiplier(void)
    virtual float GetHoldLoweringMultiplier();
    // win1.41 00756b40 mac 1004b210 Villager::SetLife(float)
    virtual void SetLife(float param_1);
    // win1.41 00753460 mac 1056a0d0 Villager::IncreaseLife(float)
    virtual void IncreaseLife(float param_1);
    // win1.41 007502d0 mac 10570c30 Villager::DestroyedByEffect(GPlayer *, float)
    virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
    // win1.41 0055c9c0 mac 10147dd0 Villager::GetMesh( const(void))
    virtual int GetMesh();
    // win1.41 0055c9d0 mac inlined Villager::GetDetailMesh(int)
    virtual int GetDetailMesh(int param_1);
    // win1.41 0051b940 mac 1004c6c0 Villager::Draw(void)
    virtual void Draw();
    // win1.41 0074ff70 mac 1004b3c0 Villager::ProcessState(void)
    virtual uint32_t ProcessState();
    // win1.41 0055ca50 mac 10147fb0 Villager::CanBePickedUp(void)
    virtual bool CanBePickedUp();
    // win1.41 007560e0 mac 10565860 Villager::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
    virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
    // win1.41 0074fc70 mac 10571530 Villager::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0055c990 mac 10147d30 Villager::IsABeliever(void)
    virtual bool32_t IsABeliever();
    // win1.41 0076a4c0 mac 1059a990 Villager::SetDying(void)
    virtual bool SetDying();
    // win1.41 00753040 mac inlined Villager::IsTouching_2( const(MapCoords *))
    virtual bool IsTouching_2(MapCoords* param_1);
    // win1.41 0055c9a0 mac inlined Villager::IsTouching_3( const(Object *, float))
    virtual bool IsTouching_3(Object* param_1, float param_2);
    // win1.41 007564a0 mac 105651b0 Villager::ValidForPlaceInHand(GInterfaceStatus *)
    virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
    // win1.41 00753080 mac 1056a940 Villager::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 00752bd0 mac 100a0960 Villager::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 00752c40 mac 1056ac90 Villager::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 00756ae0 mac 10563ed0 Villager::ThrowObjectFromHand(GInterfaceStatus *, int)
    virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2);
    // win1.41 00751d70 mac 1000aef0 Villager::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 0076aa80 mac 10599f40 Villager::GetImportance(void)
    virtual float GetImportance();
    // win1.41 005efe90 mac 10385750 Villager::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
    virtual uint32_t InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3, Object* param_4, int param_5);
    // win1.41 005efef0 mac 10385670 Villager::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
    virtual uint32_t InitialisePhysics(const LHPoint* param_1, const LHPoint* param_2, Object* param_3, bool param_4, GInterfaceStatus* param_5);
    // win1.41 005eff30 mac 10385630 Villager::GetPhysicsConstantsType(void)
    virtual uint32_t GetPhysicsConstantsType();
    // win1.41 005eff40 mac 103850b0 Villager::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 005f0a60 mac 103846d0 Villager::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // win1.41 007564c0 mac 10565140 Villager::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00750ab0 mac 1056fb10 Villager::HasSunk(void)
    virtual bool HasSunk();
    // win1.41 0075b400 mac 10578430 Villager::IsFireMan(void)
    virtual bool IsFireMan();
    // win1.41 00753e00 mac 10569a30 Villager::RemoveFromGame(void)
    virtual uint32_t RemoveFromGame();
    // win1.41 0055ca30 mac 10147f70 Villager::GetTastiness(void)
    virtual uint32_t GetTastiness();
    // win1.41 00751af0 mac 1056dae0 Villager::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 00753410 mac 1056a150 Villager::SetFoodSpeedup(bool)
    virtual void SetFoodSpeedup(bool param_1);
    // win1.41 0055c980 mac 10051310 Villager::IsFoodSpeedUp(void)
    virtual bool IsFoodSpeedUp();
    // win1.41 00756ad0 mac 10563fe0 Villager::GetFinalDestPos(MapCoords *)
    virtual MapCoords* GetFinalDestPos(MapCoords* param_1);
    // win1.41 00763b00 mac 10593810 Villager::FleeingFromObjectReaction(void)
    virtual bool FleeingFromObjectReaction();
    // win1.41 007642c0 mac 105927e0 Villager::LookingAtObjectReaction(void)
    virtual bool LookingAtObjectReaction();
    // win1.41 00764310 mac 10592770 Villager::FleeingAndLookingAtObjectReaction(void)
    virtual bool FleeingAndLookingAtObjectReaction();
    // win1.41 00764320 mac 105926d0 Villager::FollowingObjectReaction(void)
    virtual bool FollowingObjectReaction();
    // win1.41 00764350 mac 105925b0 Villager::InspectObjectReaction(void)
    virtual bool InspectObjectReaction();
    // win1.41 0076a570 mac 1059a890 Villager::Dying(void)
    virtual bool Dying();
    // win1.41 0076a5e0 mac 1059a580 Villager::Dead(void)
    virtual bool Dead();
    // win1.41 0076b380 mac 10598f90 Villager::BeingEaten(void)
    virtual bool BeingEaten();
    // win1.41 007646a0 mac 10591f20 Villager::GotoFoodReaction(void)
    virtual bool GotoFoodReaction();
    // win1.41 007646d0 mac 10591e40 Villager::GotoWoodReaction(void)
    virtual bool GotoWoodReaction();
    // win1.41 00756c60 mac 1004d520 Villager::IsMovingForAnimation(void)
    virtual bool IsMovingForAnimation();
    // win1.41 00764920 mac 10591770 Villager::ArrivesAtFoodReaction(void)
    virtual bool ArrivesAtFoodReaction();
    // win1.41 00764720 mac 10591b50 Villager::ArrivesAtWoodReaction(void)
    virtual bool ArrivesAtWoodReaction();
    // win1.41 0076ade0 mac 1000abe0 Villager::InHand(void)
    virtual bool InHand();
    // win1.41 007515c0 mac 10098ff0 Villager::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
    // win1.41 00751040 mac 1056f5e0 Villager::Birthday(void)
    virtual void Birthday();
    // win1.41 007528c0 mac 1056b4c0 Villager::SetAge(unsigned long)
    virtual void SetAge(uint32_t age);
    // win1.41 007520e0 mac 10087ab0 Villager::SetCurrentAndDestinationState(unsigned char, unsigned char)
    virtual int SetCurrentAndDestinationState(VILLAGER_STATES current, VILLAGER_STATES destination);
    // win1.41 00756590 mac inlined Villager::CallIntoAnimationFunction(VILLAGER_STATES)
    virtual int CallIntoAnimationFunction(VILLAGER_STATES param_1);
    // win1.41 00756620 mac inlined Villager::CallOutofAnimationFunction(VILLAGER_STATES)
    virtual int CallOutofAnimationFunction(VILLAGER_STATES param_1);
    // win1.41 00752010 mac 1007bba0 Villager::SetTopState(unsigned char)
    virtual int SetTopState(VILLAGER_STATES state);
    // win1.41 00763470 mac 10594430 Villager::StorePreviousState(void)
    virtual void StorePreviousState();
    // win1.41 00753740 mac 10075d50 Villager::SetStateSpeed(void)
    virtual void SetStateSpeed();
    // win1.41 00753f00 mac inlined Villager::IsFinalState(VILLAGER_STATES)
    virtual bool IsFinalState(VILLAGER_STATES param_1);
    // win1.41 00750110 mac 10066490 Villager::GetAnimId(void)
    virtual ANIM_LIST GetAnimId();
    // win1.41 00752320 mac inlined Villager::CallExitStateFunction(VILLAGER_STATES)
    virtual uint32_t CallExitStateFunction(VILLAGER_STATES param_1);
    // win1.41 00752440 mac 1007b1b0 Villager::CallEntryStateFunction(unsigned char, unsigned char)
    virtual uint32_t CallEntryStateFunction__UcUc(VILLAGER_STATES current, VILLAGER_STATES destination);
    // win1.41 007523d0 mac 10075c50 Villager::CallEntryStateFunction(unsigned char)
    virtual uint32_t CallEntryStateFunction__Uc(VILLAGER_STATES state);
    // win1.41 007527a0 mac inlined Villager::ExitReaction(VILLAGER_STATES)
    virtual int ExitReaction(VILLAGER_STATES param_1);
    // win1.41 0076b000 mac inlined Villager::ExitInHand(VILLAGER_STATES)
    virtual int ExitInHand(VILLAGER_STATES param_1);
    // win1.41 0076acb0 mac inlined Villager::ExitInFlying(VILLAGER_STATES)
    virtual int ExitInFlying(VILLAGER_STATES param_1);
    // win1.41 00753690 mac 1006a4d0 Villager::SetState(unsigned long, unsigned char)
    virtual void SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state);
    // win1.41 0076afe0 mac inlined Villager::EnterInHand(VILLAGER_STATES, VILLAGER_STATES)
    virtual uint32_t EnterInHand(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
    // win1.41 0055c9f0 mac inlined Villager::IsScriptState( const(VILLAGER_STATES))
    virtual bool IsScriptState(VILLAGER_STATES param_1);
    // win1.41 0055ca10 mac inlined Villager::IsScriptInterruptableState( const(VILLAGER_STATES))
    virtual bool IsScriptInterruptableState(VILLAGER_STATES param_1);
    // win1.41 00752530 mac inlined Villager::IsStateExitFunctionSameAs( const(VILLAGER_STATES))
    virtual bool IsStateExitFunctionSameAs(VILLAGER_STATES param_1);
    // win1.41 007528b0 mac 1056b830 Villager::DebugShowTime(unsigned long, unsigned char, unsigned char)
    virtual uint32_t DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3);
    // win1.41 00764df0 mac 10590f30 Villager::IsInterestedInFoodObject(Object *)
    virtual bool IsInterestedInFoodObject(Object* param_1);
    // win1.41 00764f60 mac 10590c40 Villager::IsInterestedInWoodObject(Object *)
    virtual bool IsInterestedInWoodObject(Object* param_1);
    // win1.41 00763390 mac 10021260 Villager::IsAvailableForReaction(REACTION)
    virtual bool IsAvailableForReaction(REACTION param_1);
    // win1.41 00763410 mac 1000edf0 Villager::IsAvailableForBeliefButNotReaction(REACTION)
    virtual bool IsAvailableForBeliefButNotReaction(REACTION param_1);
    // win1.41 007634c0 mac 100072a0 Villager::UpdateHowImpressed(Reaction *, int)
    virtual void UpdateHowImpressed(Reaction* param_1, int param_2);
    // win1.41 00763440 mac inlined Villager::AddReaction(Reaction *, VILLAGER_STATES)
    virtual void AddReaction(Reaction* param_1, VILLAGER_STATES param_2);
    // win1.41 007637d0 mac 105941a0 Villager::StopReacting(void)
    virtual void StopReacting();
    // win1.41 00751e10 mac 1056d350 Villager::ResetStateAfterReacting(void)
    virtual void ResetStateAfterReacting();
    // win1.41 00763aa0 mac 105939d0 Villager::SetupLookAtObject(GameThingWithPos *, Reaction *)
    virtual void SetupLookAtObject(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00763ac0 mac 10593960 Villager::SetupLookAtSpell(GameThingWithPos *, Reaction *)
    virtual void SetupLookAtSpell(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00763ae0 mac 105938e0 Villager::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
    virtual void SetupLookAtNiceSpell(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00767630 mac 10596820 Villager::SetupReactToCreature(GameThingWithPos *, Reaction *)
    virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00765b70 mac 1058fc00 Villager::SetupReactToWood(GameThingWithPos *, Reaction *)
    virtual void SetupReactToWood(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00763820 mac 10593f50 Villager::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicTree(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 007639d0 mac 10593a40 Villager::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00765540 mac 10590390 Villager::SetupReactToFire(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00765c60 mac 1058f820 Villager::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00766010 mac 1058f360 Villager::SetupReactToNewBuilding(GameThingWithPos *, Reaction *)
    virtual void SetupReactToNewBuilding(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00766e30 mac 1058d620 Villager::SetupReactToFight(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFight(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00766250 mac 1058f020 Villager::SetupReactToTeleport(GameThingWithPos *, Reaction *)
    virtual void SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 007665b0 mac 1058e7d0 Villager::SetupReactToDeath(GameThingWithPos *, Reaction *)
    virtual void SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00766620 mac 1058e6f0 Villager::SetupReactToDroppedByHand(GameThingWithPos *, Reaction *)
    virtual void SetupReactToDroppedByHand(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 007668c0 mac 1058e200 Villager::SetupReactToFainting(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFainting(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 007668f0 mac 1058e110 Villager::SetupReactToConfused(GameThingWithPos *, Reaction *)
    virtual void SetupReactToConfused(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00766a20 mac 1058de00 Villager::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFallingTree(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00766a60 mac 1058dce0 Villager::SetupReactToCrowd(GameThingWithPos *, Reaction *)
    virtual void SetupReactToCrowd(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 007671e0 mac 1058ce20 Villager::SetupReactToBreeder(GameThingWithPos *, Reaction *)
    virtual void SetupReactToBreeder(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00763990 mac 10593b90 Villager::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
    virtual void SetupFleeFromPredator(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00766fd0 mac 1058cfd0 Villager::SetupReactToTownCelebration(GameThingWithPos *, Reaction *)
    virtual void SetupReactToTownCelebration(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 007672f0 mac 1058cae0 Villager::SetupReactToVillagerInHand(GameThingWithPos *, Reaction *)
    virtual void SetupReactToVillagerInHand(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00767490 mac 1058c650 Villager::SetupReactToBurningObjectInHand(GameThingWithPos *, Reaction *)
    virtual void SetupReactToBurningObjectInHand(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 007674b0 mac 1058c4f0 Villager::SetupReactToMagicShieldStruck(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicShieldStruck(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00767520 mac 1058c460 Villager::SetupReactToMagicShieldDestroyed(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicShieldDestroyed(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 007676e0 mac 10596540 Villager::ReactToCreaturePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToCreaturePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00765260 mac 105908a0 Villager::ReactToFlyingObjectPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00765610 mac 10590060 Villager::ReactToFirePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00765bb0 mac 1058fa80 Villager::ReactToMagicShieldPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00766df0 mac 1058d6d0 Villager::ReactToFightPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00766200 mac 1058f150 Villager::ReactToTeleportPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToTeleportPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00766440 mac 1058eb60 Villager::ReactToDeathPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 007664b0 mac 1058e910 Villager::ReactToDroppedByHandPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00766a10 mac 1058deb0 Villager::ReactToFallingTreePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00766a50 mac 1058dd90 Villager::ReactToCrowdPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToCrowdPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00767210 mac 1058ccf0 Villager::ReactToBreederPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToBreederPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00767180 mac 1058ced0 Villager::ReactToTownCelebrationPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToTownCelebrationPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00763850 mac 10593d10 Villager::FleeFromPredatorPriority(Reaction *, Reaction *)
    virtual uint8_t FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00767320 mac 1058c970 Villager::ReactToVillagerInHandPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToVillagerInHandPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00767430 mac 1058c710 Villager::ReactToBurningObjectInHandPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToBurningObjectInHandPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00767540 mac 1058c2b0 Villager::ReactToMagicShieldStruckPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicShieldStruckPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 007675a0 mac 1058c230 Villager::ReactToMagicShieldDestroyedPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicShieldDestroyedPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00763980 mac 10593c90 Villager::ReactToScaffoldPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToScaffoldPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 007640a0 mac 10592e20 Villager::NumGameTurnsToReactToPredatorFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsToReactToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 007640e0 mac 10592d30 Villager::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 007648d0 mac 10591a30 Villager::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 00764110 mac 10592ca0 Villager::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 00764130 mac 10592b70 Villager::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 007641a0 mac 10592a30 Villager::NumGameTurnsToReactToShieldFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsToReactToShieldFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 00764230 mac 105928c0 Villager::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 0055c970 mac 10064ef0 Villager::IsChild(void)
    virtual bool IsChild();
    // win1.41 00751dd0 mac 1004ec00 Villager::GetFinalState(void) const
    virtual VILLAGER_STATES GetFinalState();
    // win1.41 00751510 mac 1056ec00 Villager::RemoveFromDance(int)
    virtual void RemoveFromDance(int param_1);
    // win1.41 00759b80 mac 10577060 Villager::SetStateAfterFinishingDance(void)
    virtual void SetStateAfterFinishingDance();
    // win1.41 0075bae0 mac 1057b530 Villager::CalculateLifeDesire(void)
    virtual float CalculateLifeDesire();
    // win1.41 004174a0 mac inlined Villager::MoveAllowedForChessGame(void)
    virtual bool MoveAllowedForChessGame();
    // win1.41 004174b0 mac inlined Villager::AttackAllowedForChessGame(void)
    virtual bool AttackAllowedForChessGame();
    // win1.41 004174c0 mac inlined Villager::AddToBoxPositionForChessGame(int, int)
    virtual void AddToBoxPositionForChessGame(int param_1, int param_2);
    // win1.41 004174d0 mac inlined Villager::GetBoxXForChessGame(void)
    virtual int GetBoxXForChessGame();
    // win1.41 004174e0 mac inlined Villager::GetBoxZForChessGame(void)
    virtual int GetBoxZForChessGame();
    // win1.41 004174f0 mac inlined Villager::SetBoxXForChessGame(int)
    virtual void SetBoxXForChessGame(int param_1);
    // win1.41 00417500 mac inlined Villager::SetBoxZForChessGame(int)
    virtual void SetBoxZForChessGame(int param_1);
    // win1.41 00417510 mac inlined Villager::GetTeamForChessGame(void)
    virtual uint32_t GetTeamForChessGame();
    // win1.41 00473ee0 mac inlined Villager::IsPosValidForTurnAngle(MapCoords const &)
    virtual bool IsPosValidForTurnAngle(const MapCoords* param_1);
    // win1.41 0055ca40 mac 100c54f0 Villager::GetVillagerName(void)
    virtual const char* GetVillagerName();
    // win1.41 0051b510 mac 10057c40 Villager::DrawVillagerInfo(void)
    virtual uint32_t DrawVillagerInfo();

    // Static methods

    // win1.41 inlined mac 1061e41c Villager::GetStateTable(void)
    static Living__StateTableEntry* GetStateTable(VILLAGER_STATES state);
    // win1.41 0074fbe0 mac 10571750 Villager::Create(MapCoords const &, GVillagerInfo const *, unsigned long, int)
    static Villager* Create(MapCoords* coords, GVillagerInfo* info, uint32_t age, bool skeleton);
    // win1.41 00756990 mac inlined Villager::FUN_00756990(void)
    static void FUN_00756990(MissionaryControl* this);

    // Constructors

    // win1.41 0055c8a0 mac 1030baa0 Villager::Villager(void)
    Villager();
    // win1.41 0074f950 mac 10571a90 Villager::Villager(MapCoords const &, GVillagerInfo const *, unsigned long, int)
    Villager(MapCoords* coords, GVillagerInfo* info, uint32_t age, bool skeleton);

    // Non-virtual Destructors

    // win1.41 0074fbc0 mac inlined Villager::_dt(void)
    ~Villager();

    // Non-virtual methods

    // win1.41 inlined mac inlined Villager::CallValidate(uchar)
    uint32_t CallValidate(LIVING_ACTION_INDEX index);
    // win1.41 00423c80 mac 100a8b10 Villager::FootballWatchMatchAnimation(void)
    uint32_t FootballWatchMatchAnimation();
    // win1.41 0074fb20 mac 10571a20 Villager::SetToZero(void)
    void SetToZero();
    // win1.41 0074fb80 mac 10571950 Villager::InitialiseScale(unsigned long)
    void InitialiseScale(unsigned long param_1);
    // win1.41 0074fd60 mac 10571210 Villager::DeleteDependancys(void)
    void DeleteDependancys();
    // win1.41 0074fec0 mac 105710c0 Villager::UnemployedJobs(void)
    bool UnemployedJobs();
    // win1.41 0074ff60 mac 10571080 Villager::SetupJobLocation(void)
    bool SetupJobLocation();
    // win1.41 00750060 mac 1009a920 Villager::FinishedIntoOutOfAnimation(void)
    void FinishedIntoOutOfAnimation();
    // win1.41 007501a0 mac 1005ffb0 Villager::SetStateCarriedObject(void)
    void SetStateCarriedObject();
    // win1.41 007502a0 mac 10570ca0 Villager::GetWoodCarriedObject(void)
    uint32_t GetWoodCarriedObject();
    // win1.41 00750330 mac 105709c0 Villager::GetSpouse(void)
    Villager* GetSpouse();
    // win1.41 00750370 mac 10570860 Villager::LookAroundForVillagerInState(VILLAGER_STATES, unsigned long)
    Villager* LookAroundForVillagerInState(VILLAGER_STATES param_1, unsigned long param_2);
    // win1.41 00750410 mac 1004b510 Villager::CheckEveryTime(void)
    int CheckEveryTime();
    // win1.41 00750670 mac 1006ec00 Villager::GetGameTurnsSinceLastChecked(void)
    uint32_t GetGameTurnsSinceLastChecked();
    // win1.41 00750690 mac 105704c0 Villager::GetGameTurnLastChecked(void)
    int GetGameTurnLastChecked();
    // win1.41 007506a0 mac 1006eca0 Villager::SetGameTurnLastChecked(void)
    void SetGameTurnLastChecked();
    // win1.41 007506c0 mac 1056ff20 Villager::VillagerDead(DEATH_REASON, GPlayer *, float, int)
    void VillagerDead(DEATH_REASON param_1, GPlayer* param_2, float param_3, int param_4);
    // win1.41 00750940 mac 1056fc50 Villager::CreateDroppedResource(LHPoint *, LHPoint *, LHPoint *)
    void CreateDroppedResource(LHPoint* param_1, LHPoint* param_2, LHPoint* param_3);
    // win1.41 00750b50 mac 1056fa20 Villager::TownDeleted(void)
    void TownDeleted();
    // win1.41 00750bb0 mac 1056f840 Villager::DebugText(int)
    void DebugText(int param_1);
    // win1.41 00750de0 mac 1056f7b0 Villager::SetAbode(Abode*)
    void SetAbode(Town* town);
    // win1.41 00750e10 mac 1056f660 Villager::GetRandomLookAhead(MapCoords *, float)
    bool GetRandomLookAhead(MapCoords* param_1, float param_2);
    // win1.41 00750ed0 mac 10068820 Villager::SetSpeed__8VillagerFli(int, int)
    void SetSpeed(int base_speed, int scale_speed);
    // win1.41 00751050 mac 10021a00 Villager::CheckChildGrownUp(void)
    int CheckChildGrownUp();
    // win1.41 00751110 mac 1056f4c0 Villager::IsAMother(void)
    bool IsAMother();
    // win1.41 00751190 mac 1056f440 Villager::StartMoveToObject(Object *, VILLAGER_STATES)
    bool StartMoveToObject(Object* param_1, VILLAGER_STATES param_2);
    // win1.41 007511b0 mac 1009cd40 Villager::DropResource(RESOURCE_TYPE, unsigned short)
    uint16_t DropResource(RESOURCE_TYPE param_1, unsigned short param_2);
    // win1.41 007511e0 mac 1056f310 Villager::DropFood(unsigned short)
    uint16_t DropFood(unsigned short param_1);
    // win1.41 00751240 mac 1056f220 Villager::DropWood(unsigned short)
    uint16_t DropWood(unsigned short param_1);
    // win1.41 007512a0 mac 1056f160 Villager::IsEnoughFoodInStoragePitForDinner(void)
    bool IsEnoughFoodInStoragePitForDinner();
    // win1.41 007512e0 mac 1056efc0 Villager::FindPotAroundToGoto(RESOURCE_TYPE, unsigned long &, int)
    Pot* FindPotAroundToGoto(RESOURCE_TYPE param_1, unsigned long* param_2, int param_3);
    // win1.41 007513f0 mac 1056ee50 Villager::PickupResource(RESOURCE_TYPE, short, unsigned char)
    void PickupResource(RESOURCE_TYPE param_1, short param_2, unsigned char param_3);
    // win1.41 00751490 mac 1009cfd0 Villager::PickupFood(short)
    void PickupFood(short param_1);
    // win1.41 007514b0 mac 1056ed20 Villager::PickupWood(short, unsigned char)
    void PickupWood(short param_1, unsigned char param_2);
    // win1.41 007514d0 mac 10004d10 Villager::GetFoodCapacity(void)
    int GetFoodCapacity();
    // win1.41 007514f0 mac 1056ec50 Villager::GetWoodCapacity(void)
    int GetWoodCapacity();
    // win1.41 00751520 mac 1056eb50 Villager::IsRandomlyLazy(void)
    bool IsRandomlyLazy();
    // win1.41 00751570 mac 100007e0 Villager::GetResourceHeld(RESOURCE_TYPE &)
    bool GetResourceHeld(RESOURCE_TYPE* param_1);
    // win1.41 007516e0 mac 10003bb0 Villager::CheckTakeResourcesToStoragePit(void)
    bool CheckTakeResourcesToStoragePit();
    // win1.41 00751720 mac 1056e1f0 Villager::DiscipleDecideWhatToDo(void)
    bool DiscipleDecideWhatToDo();
    // win1.41 00751970 mac 1056e1b0 Villager::GetPrayerSite(void)
    bool GetPrayerSite();
    // win1.41 00751980 mac 1056e0e0 Villager::RestartDance(VILLAGER_STATES)
    bool RestartDance(VILLAGER_STATES param_1);
    // win1.41 00751ab0 mac 1056dea0 Villager::GetVillagerText(char *)
    char* GetVillagerText(char* param_1);
    // win1.41 00751d20 mac 1056d6a0 Villager::GetJobInfo(unsigned char) const
    GJobInfo* GetJobInfo(unsigned char param_1);
    // win1.41 00751d40 mac inlined Villager::FUN00751d40(void)
    bool FUN00751d40();
    // win1.41 00751e50 mac 1056d290 Villager::PopFromPrevious(void)
    void PopFromPrevious();
    // win1.41 00751ea0 mac 1056d250 Villager::GetFootball(void)
    Football* GetFootball();
    // win1.41 00751ee0 mac 1056d170 Villager::GetTribe(void)
    GTribeInfo* GetTribe();
    // win1.41 00751f10 mac 1008a5d0 Villager::GetStoragePit(void)
    StoragePit* GetStoragePit();
    // win1.41 00751f40 mac 1056d040 Villager::GetVillagerAvailableState(void)
    VILLAGER_STATES GetVillagerAvailableState();
    // win1.41 00751f70 mac inlined Villager::FUN_00751f70(void)
    VILLAGER_STATES FUN_00751f70();
    // win1.41 00751fa0 mac 100039f0 Villager::ArriveHome(void)
    void ArriveHome();
    // win1.41 00751fd0 mac 1009fde0 Villager::LeaveHome(void)
    void LeaveHome();
    // win1.41 00752120 mac 1007c3b0 Villager::CanPauseForASecond(unsigned char)
    uint32_t CanPauseForASecond(VILLAGER_STATES state);
    // win1.41 00752160 mac 1000a960 Villager::GetAbode(void)
    Abode* GetAbode();
    // win1.41 007521d0 mac 1004b330 Villager::CallState(void)
    uint32_t CallState();
    // win1.41 00752210 mac 10020260 Villager::IsPregnant(void)
    bool IsPregnant();
    // win1.41 00752240 mac 100201b0 Villager::WomanSpecial(void)
    uint32_t WomanSpecial();
    // win1.41 00752290 mac 1056c8b0 Villager::IsVillagerAvailable(void)
    bool IsVillagerAvailable();
    // win1.41 007522c0 mac 1056c7a0 Villager::IsAvailableToBeSummonedByCreature(void)
    bool IsAvailableToBeSummonedByCreature();
    // win1.41 007524d0 mac 1009d4c0 Villager::IsStateEntryFunctionSameAs(unsigned long, unsigned long) const
    bool IsStateEntryFunctionSameAs(unsigned long param_1, unsigned long param_2);
    // win1.41 007525b0 mac 1056c220 Villager::IsReactiveState(unsigned long)
    bool IsReactiveState(unsigned long param_1);
    // win1.41 00752600 mac 1001ff70 Villager::IsHungry(void)
    bool IsHungry();
    // win1.41 00752620 mac 1006a7a0 Villager::IsWoman(void)
    bool IsWoman();
    // win1.41 00752690 mac 1056bc60 Villager::MakeVillagesMeet(Villager *, VILLAGER_STATES, float)
    bool MakeVillagesMeet(Villager* param_1, VILLAGER_STATES param_2, float param_3);
    // win1.41 00752760 mac 1056bbd0 Villager::MakeVillagerFaceObject(Object *)
    bool MakeVillagerFaceObject(Object* param_1);
    // win1.41 007527e0 mac 1056ba70 Villager::ExitDance(unsigned char)
    bool ExitDance(unsigned char param_1);
    // win1.41 00752820 mac 1056b9c0 Villager::IsAvailableForWorshipSite(int)
    bool IsAvailableForWorshipSite(int param_1);
    // win1.41 00752860 mac 1056b900 Villager::IsAtOrOnTheWayToWorshipSite(void)
    bool IsAtOrOnTheWayToWorshipSite();
    // win1.41 00752a90 mac 1056b340 Villager::SetScaleForAge(unsigned long)
    void SetScaleForAge(unsigned long param_1);
    // win1.41 00752b80 mac 1056b240 Villager::SetStateWhenTappedOnAbode(void)
    bool SetStateWhenTappedOnAbode();
    // win1.41 00753140 mac inlined Villager::FUN_00753140(void)
    uint32_t FUN_00753140();
    // win1.41 007531a0 mac 1056a780 Villager::IsVagrant(void)
    bool IsVagrant();
    // win1.41 007531d0 mac 1056a480 Villager::ReleaseFromScript(void)
    void ReleaseFromScript();
    // win1.41 00753340 mac 1056a3d0 Villager::TestSpecial(void)
    void TestSpecial();
    // win1.41 00753390 mac 1056a1a0 Villager::GetResourceFrom(Object *, RESOURCE_TYPE, short)
    uint32_t GetResourceFrom(Object* param_1, RESOURCE_TYPE param_2, short param_3);
    // win1.41 00753430 mac 10051360 Villager::ProcessFoodSpeedup(void)
    void ProcessFoodSpeedup();
    // win1.41 00753470 mac 10569f30 Villager::FindPosOutsideAbode(Abode *)
    void FindPosOutsideAbode(Abode* param_1);
    // win1.41 00753540 mac inlined Villager::FUN_00753540(void)
    Abode* FUN_00753540();
    // win1.41 00753560 mac 1006a5f0 Villager::AdjustTownModifier(VILLAGER_STATES, int)
    void AdjustTownModifier(VILLAGER_STATES state, int param_2);
    // win1.41 00753760 mac 10058b20 Villager::SetStateSpeed(unsigned char)
    void SetStateSpeed(unsigned char param_1);
    // win1.41 00753b50 mac 10099cf0 Villager::SetupNothingToDo(void)
    uint32_t SetupNothingToDo();
    // win1.41 00753c70 mac 1000e4e0 Villager::GetChillOutPos(MapCoords &)
    uint32_t GetChillOutPos(MapCoords* coords);
    // win1.41 00753d50 mac 100096d0 Villager::GetPosOutsideMyHouse(MapCoords &)
    int GetPosOutsideMyHouse(MapCoords* coords);
    // win1.41 00753dd0 mac 10569aa0 Villager::VillagerCreated(void)
    uint32_t VillagerCreated();
    // win1.41 00753e20 mac 10569870 Villager::GetResourceDropoffPos(RESOURCE_TYPE)
    GameThingWithPos* GetResourceDropoffPos(RESOURCE_TYPE param_1);
    // win1.41 00754070 mac 10569470 Villager::SetDiscipleNothingToDo(void)
    bool32_t SetDiscipleNothingToDo();
    // win1.41 007540d0 mac 10569390 Villager::DiscipleNothingToDo(void)
    bool32_t DiscipleNothingToDo();
    // win1.41 00754140 mac 105692c0 Villager::EnterDiscipleNothingToDo(unsigned char, unsigned char)
    bool32_t EnterDiscipleNothingToDo(unsigned char param_1, unsigned char param_2);
    // win1.41 00754180 mac 10569180 Villager::FindDisciplePrayerPos(MapCoords *)
    bool32_t FindDisciplePrayerPos(MapCoords* param_1);
    // win1.41 007548a0 mac 10568810 Villager::CallSaveStateFunction(GameOSFile &, STATE_TYPE)
    bool32_t CallSaveStateFunction(GameOSFile* param_1, STATE_TYPE param_2);
    // win1.41 00754910 mac 10568720 Villager::CallLoadStateFunction(GameOSFile &, STATE_TYPE)
    bool32_t CallLoadStateFunction(GameOSFile* param_1, STATE_TYPE param_2);
    // win1.41 00754980 mac 10568670 Villager::SaveStateFunction(GameOSFile &)
    bool32_t SaveStateFunction(GameOSFile* param_1);
    // win1.41 007549b0 mac 105685b0 Villager::LoadStateFunction(GameOSFile &)
    bool32_t LoadStateFunction(GameOSFile* param_1);
    // win1.41 00754a00 mac 105684d0 Villager::SaveBuilding(GameOSFile &)
    bool32_t SaveBuilding(GameOSFile* param_1);
    // win1.41 00754a60 mac 10568400 Villager::LoadBuilding(GameOSFile &)
    bool32_t LoadBuilding(GameOSFile* param_1);
    // win1.41 00754ac0 mac 105682e0 Villager::SaveDance(GameOSFile &)
    bool32_t SaveDance(GameOSFile* param_1);
    // win1.41 00754b60 mac 105681d0 Villager::LoadDance(GameOSFile &)
    bool32_t LoadDance(GameOSFile* param_1);
    // win1.41 00754c00 mac 10568100 Villager::SaveWorship(GameOSFile &)
    bool32_t SaveWorship(GameOSFile* param_1);
    // win1.41 00754c60 mac 10568030 Villager::LoadWorship(GameOSFile &)
    bool32_t LoadWorship(GameOSFile* param_1);
    // win1.41 00754cc0 mac 10567f70 Villager::SaveDead(GameOSFile &)
    bool32_t SaveDead(GameOSFile* param_1);
    // win1.41 00754d20 mac 10567eb0 Villager::LoadDead(GameOSFile &)
    bool32_t LoadDead(GameOSFile* param_1);
    // win1.41 00754d80 mac 10567de0 Villager::SaveInHand(GameOSFile &)
    bool32_t SaveInHand(GameOSFile* param_1);
    // win1.41 00754de0 mac 10567d10 Villager::LoadInHand(GameOSFile &)
    bool32_t LoadInHand(GameOSFile* param_1);
    // win1.41 00754e40 mac 10567ca0 Villager::SaveFishing(GameOSFile &)
    bool32_t SaveFishing(GameOSFile* param_1);
    // win1.41 00754e60 mac 10567c30 Villager::LoadFishing(GameOSFile &)
    bool32_t LoadFishing(GameOSFile* param_1);
    // win1.41 00754e80 mac 10567b50 Villager::SaveFarming(GameOSFile &)
    bool32_t SaveFarming(GameOSFile* param_1);
    // win1.41 00754ef0 mac 10567a80 Villager::LoadFarming(GameOSFile &)
    bool32_t LoadFarming(GameOSFile* param_1);
    // win1.41 00754f60 mac 10567900 Villager::SaveFootball(GameOSFile &)
    bool32_t SaveFootball(GameOSFile* param_1);
    // win1.41 00755040 mac 105677a0 Villager::LoadFootball(GameOSFile &)
    bool32_t LoadFootball(GameOSFile* param_1);
    // win1.41 00755120 mac 10567680 Villager::SaveShepherd(GameOSFile &)
    bool32_t SaveShepherd(GameOSFile* param_1);
    // win1.41 007551c0 mac 10567570 Villager::LoadShepherd(GameOSFile &)
    bool32_t LoadShepherd(GameOSFile* param_1);
    // win1.41 00755260 mac 105673b0 Villager::SaveInScript(GameOSFile &)
    bool32_t SaveInScript(GameOSFile* param_1);
    // win1.41 00755370 mac 10567210 Villager::LoadInScript(GameOSFile &)
    bool32_t LoadInScript(GameOSFile* param_1);
    // win1.41 00755470 mac 10567050 Villager::SaveScriptPos(GameOSFile &)
    bool32_t SaveScriptPos(GameOSFile* param_1);
    // win1.41 00755580 mac 10566eb0 Villager::LoadScriptPos(GameOSFile &)
    bool32_t LoadScriptPos(GameOSFile* param_1);
    // win1.41 00755680 mac 10566dd0 Villager::SaveFire(GameOSFile &)
    bool32_t SaveFire(GameOSFile* param_1);
    // win1.41 007556f0 mac 10566d00 Villager::LoadFire(GameOSFile &)
    bool32_t LoadFire(GameOSFile* param_1);
    // win1.41 00755760 mac 10566c80 Villager::SaveDiscipleNothingToDo(GameOSFile &)
    bool32_t SaveDiscipleNothingToDo(GameOSFile* param_1);
    // win1.41 00755780 mac 10566c00 Villager::LoadDiscipleNothingToDo(GameOSFile &)
    bool32_t LoadDiscipleNothingToDo(GameOSFile* param_1);
    // win1.41 007557a0 mac 10566b20 Villager::SaveTrader(GameOSFile &)
    bool32_t SaveTrader(GameOSFile* param_1);
    // win1.41 00755810 mac 10566a50 Villager::LoadTrader(GameOSFile &)
    bool32_t LoadTrader(GameOSFile* param_1);
    // win1.41 00755880 mac 105669e0 Villager::SaveInspectObject(GameOSFile &)
    bool32_t SaveInspectObject(GameOSFile* param_1);
    // win1.41 007558a0 mac 10566970 Villager::LoadInspectObject(GameOSFile &)
    bool32_t LoadInspectObject(GameOSFile* param_1);
    // win1.41 007558c0 mac 10566930 Villager::SaveReaction(GameOSFile &)
    bool32_t SaveReaction(GameOSFile* param_1);
    // win1.41 007558d0 mac 105668f0 Villager::LoadReaction(GameOSFile &)
    bool32_t LoadReaction(GameOSFile* param_1);
    // win1.41 007558e0 mac 105667d0 Villager::SaveClearArea(GameOSFile &)
    bool32_t SaveClearArea(GameOSFile* param_1);
    // win1.41 00755980 mac 105666c0 Villager::LoadClearArea(GameOSFile &)
    bool32_t LoadClearArea(GameOSFile* param_1);
    // win1.41 00755a20 mac 105665e0 Villager::SaveBreeder(GameOSFile &)
    bool32_t SaveBreeder(GameOSFile* param_1);
    // win1.41 00755a80 mac 10566510 Villager::LoadBreeder(GameOSFile &)
    bool32_t LoadBreeder(GameOSFile* param_1);
    // win1.41 00755ae0 mac 105664a0 Villager::SaveForesting(GameOSFile &)
    bool32_t SaveForesting(GameOSFile* param_1);
    // win1.41 00755b00 mac 10566430 Villager::LoadForesting(GameOSFile &)
    bool32_t LoadForesting(GameOSFile* param_1);
    // win1.41 00755b20 mac 105663a0 Villager::SaveFootPath(GameOSFile &)
    bool32_t SaveFootPath(GameOSFile* param_1);
    // win1.41 00755b50 mac 10566310 Villager::LoadFootPath(GameOSFile &)
    bool32_t LoadFootPath(GameOSFile* param_1);
    // win1.41 00755b80 mac 105661e0 Villager::SaveInspectionReaction(GameOSFile &)
    bool32_t SaveInspectionReaction(GameOSFile* param_1);
    // win1.41 00755c20 mac 105660c0 Villager::LoadInspectionReaction(GameOSFile &)
    bool32_t LoadInspectionReaction(GameOSFile* param_1);
    // win1.41 00755cc0 mac 10565f90 Villager::SaveMagicTreeReaction(GameOSFile &)
    bool32_t SaveMagicTreeReaction(GameOSFile* param_1);
    // win1.41 00755d60 mac 10565e70 Villager::LoadMagicTreeReaction(GameOSFile &)
    uint32_t LoadMagicTreeReaction(GameOSFile* param_1);
    // win1.41 00755e00 mac 10565d40 Villager::SaveHideInBuilding(GameOSFile &)
    uint32_t SaveHideInBuilding(GameOSFile* param_1);
    // win1.41 00755ea0 mac 10565c20 Villager::LoadHideInBuilding(GameOSFile &)
    uint32_t LoadHideInBuilding(GameOSFile* param_1);
    // win1.41 00755f40 mac 10565b50 Villager::SaveShieldReaction(GameOSFile &)
    uint32_t SaveShieldReaction(GameOSFile* param_1);
    // win1.41 00755fa0 mac 10565a80 Villager::LoadShieldReaction(GameOSFile &)
    uint32_t LoadShieldReaction(GameOSFile* param_1);
    // win1.41 00756000 mac 1000a990 Villager::SetVillagerDisciple(GameThing *, VILLAGER_DISCIPLE, int)
    uint32_t SetVillagerDisciple(GameThing* param_1, VILLAGER_DISCIPLE param_2, int param_3);
    // win1.41 00756170 mac 10565770 Villager::ShowDiscipleIcon(VILLAGER_DISCIPLE)
    uint32_t ShowDiscipleIcon(VILLAGER_DISCIPLE param_1);
    // win1.41 00756230 mac 10565730 Villager::DebugValidateState(void)
    void DebugValidateState();
    // win1.41 00756240 mac 105655e0 Villager::ForceMoveVillagerToAbode(Abode*)
    void ForceMoveVillagerToAbode(Abode* abode);
    // win1.41 00756520 mac 10565010 Villager::LookAtPreviousStateReactToTownEmergency(void)
    VILLAGER_STATES LookAtPreviousStateReactToTownEmergency();
    // win1.41 00756530 mac 10564fd0 Villager::SetTown(Town*)
    void SetTown(Town* town);
    // win1.41 00756540 mac 10564f50 Villager::ScriptInCrowd(void)
    bool32_t ScriptInCrowd();
    // win1.41 00756570 mac 10564f10 Villager::SaveLanded(GameOSFile &)
    bool32_t SaveLanded(GameOSFile* param_1);
    // win1.41 00756580 mac 10564ed0 Villager::LoadLanded(GameOSFile &)
    bool32_t LoadLanded(GameOSFile* param_1);
    // win1.41 007569a0 mac 10564420 Villager::MoveToObjectValidate(void)
    void MoveToObjectValidate();
    // win1.41 007569d0 mac 10564390 Villager::MoveOnStructureValidate(void)
    void MoveOnStructureValidate();
    // win1.41 00756a00 mac 10564260 Villager::ReactionValidate(void)
    void ReactionValidate();
    // win1.41 00756a50 mac 10564180 Villager::SexValidate(void)
    void SexValidate();
    // win1.41 00756a80 mac 10564120 Villager::WallhugAndReactionValidate(void)
    void WallhugAndReactionValidate();
    // win1.41 00756aa0 mac 10564040 Villager::ClosestObjectValidate(void)
    void ClosestObjectValidate();
    // win1.41 00756bc0 mac inlined Villager::FUN_00756bc0(float)
    void FUN_00756bc0(float param_1);
    // win1.41 00756be0 mac 10563bb0 Villager::FindChildrenAndOrphanThem(void)
    void FindChildrenAndOrphanThem();
    // win1.41 00756d30 mac 10573250 Villager::InteractDecideWhatToDoForOtherVillager(void)
    void InteractDecideWhatToDoForOtherVillager();
    // win1.41 00756e10 mac 105731e0 Villager::InteractDecideWhatToDo(void)
    void InteractDecideWhatToDo();
    // win1.41 00756e20 mac 10573130 Villager::GetDiscipleInteractState(void)
    uint32_t GetDiscipleInteractState();
    // win1.41 00756e80 mac 1002ae20 Villager::FindCloseObjectsForInteract(class LHOrderedLinkedList<class SortedObject> *, struct MapCoords const &)
    bool32_t FindCloseObjectsForInteract(LHOrderedLinkedList__SortedObject* param_1, const MapCoords* param_2);
    // win1.41 00757180 mac 10572de0 Villager::CheckMoveHouse(Object *)
    bool32_t CheckMoveHouse(Object* object);
    // win1.41 00757210 mac 10572cf0 Villager::CheckMoveIntoTown(Town &)
    bool32_t CheckMoveIntoTown(Town* param_1);
    // win1.41 00757260 mac 10572cb0 Villager::CheckInteractWithAnimal(void)
    bool32_t CheckInteractWithAnimal();
    // win1.41 00757270 mac 105729e0 Villager::CheckInteractWithWorshipSite(void)
    bool32_t CheckInteractWithWorshipSite();
    // win1.41 00757420 mac 10572700 Villager::CheckInteractWithAbode(void)
    bool32_t CheckInteractWithAbode();
    // win1.41 00757590 mac 105725c0 Villager::CheckInteractWithField(void)
    bool32_t CheckInteractWithField();
    // win1.41 00757610 mac 10572480 Villager::CheckInteractWithFishFarm(void)
    bool32_t CheckInteractWithFishFarm();
    // win1.41 00757690 mac 10572350 Villager::CheckInteractWithTree(void)
    bool32_t CheckInteractWithTree();
    // win1.41 00757720 mac 10572310 Villager::CheckInteractWithBall(void)
    bool32_t CheckInteractWithBall();
    // win1.41 00757730 mac 105722d0 Villager::CheckInteractWithPot(void)
    bool32_t CheckInteractWithPot();
    // win1.41 00757740 mac 10572290 Villager::CheckInteractWithRock(void)
    bool32_t CheckInteractWithRock();
    // win1.41 00757750 mac 10572240 Villager::CheckInteractWithFootBall(void)
    bool32_t CheckInteractWithFootBall();
    // win1.41 00757760 mac 105720a0 Villager::CheckInteractWithVillager(void)
    bool32_t CheckInteractWithVillager();
    // win1.41 00757820 mac 10572010 Villager::SetDiscipleFollower(VILLAGER_DISCIPLE)
    void SetDiscipleFollower(VILLAGER_DISCIPLE param_1);
    // win1.41 00757850 mac 10571fc0 Villager::CheckInteractWithMagicLiving(void)
    bool32_t CheckInteractWithMagicLiving();
    // win1.41 007578c0 mac 10573fc0 Villager::ChildFollowsMother(void)
    bool32_t ChildFollowsMother();
    // win1.41 007579f0 mac 10573ed0 Villager::ChildGotoCreche(void)
    uint32_t ChildGotoCreche();
    // win1.41 00757c90 mac 1006d8c0 Villager::ChildAtCreche(void)
    bool32_t ChildAtCreche();
    // win1.41 00757e80 mac 10084940 Villager::CheckChild(void)
    uint32_t CheckChild();
    // win1.41 00757ec0 mac 10573a80 Villager::ChildDecideWhatToDo(void)
    bool32_t ChildDecideWhatToDo();
    // win1.41 00757f00 mac 10573a20 Villager::CheckChildActivity(void)
    bool32_t CheckChildActivity();
    // win1.41 00757f10 mac 10573990 Villager::ChildBecomesAdult(void)
    bool32_t ChildBecomesAdult();
    // win1.41 00757f40 mac 10095500 Villager::IsMotherAlive(void)
    bool32_t IsMotherAlive();
    // win1.41 00757f90 mac 10573570 Villager::CheckNeedNewAbode(void)
    bool32_t CheckNeedNewAbode();
    // win1.41 00758080 mac 105734a0 Villager::MoveVillagerToAbode(Abode*)
    void MoveVillagerToAbode(Abode* abode);
    // win1.41 007580d0 mac 105733f0 Villager::MakeChildOrphaned(Villager *)
    uint32_t MakeChildOrphaned(Villager* param_1);
    // win1.41 00758180 mac 10096f90 Villager::CheckNeededForCivic(void)
    float CheckNeededForCivic();
    // win1.41 007581a0 mac 1007dae0 Villager::CheckNeededForTownDesire(void)
    uint32_t CheckNeededForTownDesire();
    // win1.41 007581e0 mac 10021390 Villager::GetOwnDesiresTrigger(void)
    float GetOwnDesiresTrigger();
    // win1.41 007582f0 mac 10576e60 Villager::CheckNeededForHarvest(void)
    bool32_t CheckNeededForHarvest();
    // win1.41 00758340 mac 10098600 Villager::CheckNeededForBuilding(void)
    bool32_t CheckNeededForBuilding();
    // win1.41 00758390 mac 10576a80 Villager::RunAwayFromObjectReaction(void)
    bool32_t RunAwayFromObjectReaction();
    // win1.41 007584b0 mac 10576950 Villager::SetupBuildingObject(BuildingSite *)
    bool32_t SetupBuildingObject(BuildingSite* param_1);
    // win1.41 00758530 mac 105767a0 Villager::SetupBuildingObject(MultiMapFixed *)
    bool32_t SetupBuildingObject(MultiMapFixed* param_1);
    // win1.41 007585a0 mac 10576630 Villager::SetupWaitForWood(BuildingSite *)
    bool32_t SetupWaitForWood(BuildingSite* param_1);
    // win1.41 007586b0 mac 10576590 Villager::WaitForWood(void)
    bool32_t WaitForWood();
    // win1.41 007586e0 mac 105763c0 Villager::SetupGetBuildingSupplies(BuildingSite *)
    bool32_t SetupGetBuildingSupplies(BuildingSite* param_1);
    // win1.41 007587d0 mac 10576150 Villager::GotoStoragePitForBuildingMaterials(BuildingSite *)
    bool32_t GotoStoragePitForBuildingMaterials(BuildingSite* param_1);
    // win1.41 00758960 mac 10576080 Villager::GotoWorkshopForBuildingMaterials(BuildingSite *)
    bool32_t GotoWorkshopForBuildingMaterials(BuildingSite* param_1);
    // win1.41 00758990 mac 10575f70 Villager::ArrivesAtStoragePitForBuildingMaterials(void)
    uint32_t ArrivesAtStoragePitForBuildingMaterials();
    // win1.41 00758a00 mac 10575d70 Villager::GotoBuildingSite(BuildingSite *)
    bool32_t GotoBuildingSite(BuildingSite* param_1);
    // win1.41 00758af0 mac 10575ab0 Villager::ArrivesAtBuildingSite(void)
    uint32_t ArrivesAtBuildingSite();
    // win1.41 00758c40 mac 10575760 Villager::Building(void)
    bool32_t Building();
    // win1.41 00758e20 mac 10575700 Villager::GetWoodUsedPerBuild(void)
    float GetWoodUsedPerBuild();
    // win1.41 00758e30 mac 10098500 Villager::CheckSatisfyAbodesDesire(void)
    bool32_t CheckSatisfyAbodesDesire();
    // win1.41 00758e90 mac 105755c0 Villager::CheckSatisfyCivicBuildings(void)
    bool32_t CheckSatisfyCivicBuildings();
    // win1.41 00758ef0 mac 10575580 Villager::ArrivesAtRockForWood(void)
    bool32_t ArrivesAtRockForWood();
    // win1.41 00758f00 mac 10575420 Villager::GotWoodFromRock(void)
    bool32_t GotWoodFromRock();
    // win1.41 00758f60 mac 105751d0 Villager::ReenterBuildingState(void)
    bool32_t ReenterBuildingState();
    // win1.41 007590a0 mac 10574e20 Villager::CheckForClearArea(MapCoords const &, float)
    bool32_t CheckForClearArea(const MapCoords* param_1, float param_2);
    // win1.41 007592e0 mac 10574d90 Villager::ArriveAtPushObject(void)
    bool32_t ArriveAtPushObject();
    // win1.41 00759330 mac 10574c20 Villager::CheckSatisfyToBuild(void)
    bool32_t CheckSatisfyToBuild();
    // win1.41 00759370 mac 10574ad0 Villager::CheckSatisfyToRepair(void)
    bool32_t CheckSatisfyToRepair();
    // win1.41 007593a0 mac 10574980 Villager::CheckSatisfySupplyWorkshop(void)
    bool32_t CheckSatisfySupplyWorkshop();
    // win1.41 00759450 mac 10574800 Villager::ArrivesAtStoragePitForWorkshopMaterials(void)
    bool32_t ArrivesAtStoragePitForWorkshopMaterials();
    // win1.41 00759520 mac 10574670 Villager::ArrivesAtWorkshopForDropOff(void)
    bool32_t ArrivesAtWorkshopForDropOff();
    // win1.41 007595e0 mac 10574610 Villager::CheckForScaffoldForBuildingSite(BuildingSite *)
    uint32_t CheckForScaffoldForBuildingSite(BuildingSite* param_1);
    // win1.41 007595f0 mac 105745d0 Villager::IsScaffoldValid(void)
    bool32_t IsScaffoldValid();
    // win1.41 00759600 mac 10574580 Villager::ExitBringScaffoldToBuildingSite(unsigned char)
    bool32_t ExitBringScaffoldToBuildingSite(unsigned char param_1);
    // win1.41 00759610 mac 10574300 Villager::GetPosForPushObject(Object *, MapCoords &)
    MapCoords* GetPosForPushObject(Object* param_1, MapCoords* param_2);
    // win1.41 00759750 mac 10574220 Villager::EnterBuilding(unsigned char, unsigned char)
    bool32_t EnterBuilding(unsigned char param_1, unsigned char param_2);
    // win1.41 007597b0 mac 10574130 Villager::ExitBuilding(unsigned char)
    bool32_t ExitBuilding(unsigned char param_1);
    // win1.41 00759890 mac 105775d0 Villager::FindImmediateNeighbour(void)
    Villager* FindImmediateNeighbour();
    // win1.41 00759930 mac 10577560 Villager::DanceForEditingPurposes(void)
    bool32_t DanceForEditingPurposes();
    // win1.41 00759960 mac 105774f0 Villager::DanceButNotWorship(void)
    bool32_t DanceButNotWorship();
    // win1.41 00759990 mac 10577430 Villager::MoveToDancePos(void)
    bool32_t MoveToDancePos();
    // win1.41 00759a00 mac 105772e0 Villager::ControlledByCreature(void)
    bool32_t ControlledByCreature();
    // win1.41 00759a90 mac 105770d0 Villager::ExitControlledByCreature(unsigned char)
    bool32_t ExitControlledByCreature(unsigned char param_1);
    // win1.41 00759bf0 mac 105783f0 Villager::FarmerLookForField(void)
    bool32_t FarmerLookForField();
    // win1.41 00759c00 mac 10578330 Villager::VillagerBecomesFarmer(Field *)
    bool32_t VillagerBecomesFarmer(Field* param_1);
    // win1.41 00759c40 mac 10578150 Villager::SetFarmerGotoField(Field *, int)
    bool32_t SetFarmerGotoField(Field* param_1, int param_2);
    // win1.41 00759d20 mac 10004ad0 Villager::FarmerArrivesAtFarm(void)
    bool32_t FarmerArrivesAtFarm();
    // win1.41 00759e40 mac 10578000 Villager::FarmerDigsUpCrop(void)
    bool32_t FarmerDigsUpCrop();
    // win1.41 00759ec0 mac 10577f20 Villager::FarmerPlantsCrop(void)
    bool32_t FarmerPlantsCrop();
    // win1.41 00759f30 mac 105777f0 Villager::CheckSatisfyFoodDesire(void)
    bool32_t CheckSatisfyFoodDesire();
    // win1.41 0075a250 mac 1009d580 Villager::EnterFarming(unsigned char, unsigned char)
    bool32_t EnterFarming(unsigned char param_1, unsigned char param_2);
    // win1.41 0075a2a0 mac 1009b430 Villager::ExitFarming(unsigned char)
    bool32_t ExitFarming(unsigned char param_1);
    // win1.41 0075a3d0 mac 1057a120 Villager::DecideHowToPutOutFire(FireEffect *)
    bool32_t DecideHowToPutOutFire(FireEffect* param_1);
    // win1.41 0075a770 mac 10579a00 Villager::SetupMoveAroundFire(MapCoords const &, VILLAGER_STATES)
    bool32_t SetupMoveAroundFire(const MapCoords* param_1, VILLAGER_STATES param_2);
    // win1.41 0075a7e0 mac 105796c0 Villager::MoveAroundFire(void)
    uint32_t MoveAroundFire();
    // win1.41 0075aa90 mac 10579520 Villager::GetFireFightingPos(FireEffect *, MapCoords *)
    bool32_t GetFireFightingPos(FireEffect* param_1, MapCoords* param_2);
    // win1.41 0075ac50 mac 10579150 Villager::PutOutFireByBeating(void)
    bool32_t PutOutFireByBeating();
    // win1.41 0075ad90 mac 105790d0 Villager::IsValidFire(FireEffect *)
    bool32_t IsValidFire(FireEffect* param_1);
    // win1.41 0075adc0 mac 10578f40 Villager::EnterPutOutFire(unsigned char, unsigned char)
    bool32_t EnterPutOutFire(unsigned char param_1, unsigned char param_2);
    // win1.41 0075ae80 mac 10578da0 Villager::ExitPutOutFire(unsigned char)
    bool32_t ExitPutOutFire(unsigned char param_1);
    // win1.41 0075af30 mac 10578cc0 Villager::EnterOnFire(unsigned char, unsigned char)
    bool32_t EnterOnFire(unsigned char param_1, unsigned char param_2);
    // win1.41 0075af80 mac 10578bd0 Villager::ExitOnFire(unsigned char)
    bool32_t ExitOnFire(unsigned char param_1);
    // win1.41 0075afe0 mac 10578b60 Villager::PutOutFireWithWater(void)
    bool32_t PutOutFireWithWater();
    // win1.41 0075b000 mac 10578af0 Villager::GetWaterToPutOutFire(void)
    bool32_t GetWaterToPutOutFire();
    // win1.41 0075b020 mac 10578900 Villager::StopFireFighting(void)
    bool32_t StopFireFighting();
    // win1.41 0075b170 mac 105787c0 Villager::SetupOnFire(FireEffect *)
    bool32_t SetupOnFire(FireEffect* param_1);
    // win1.41 0075b1e0 mac 105785a0 Villager::OnFire(void)
    bool32_t OnFire();
    // win1.41 0075b3d0 mac 105784e0 Villager::FinishBeingOnFire(void)
    bool32_t FinishBeingOnFire();
    // win1.41 0075b4c0 mac 1057a800 Villager::FishermanLookForWater(void)
    bool32_t FishermanLookForWater();
    // win1.41 0075b510 mac 1057a710 Villager::VillagerBecomesFisherman(void)
    bool32_t VillagerBecomesFisherman();
    // win1.41 0075b560 mac 1057a5b0 Villager::VillagerBecomesFisherman(FishFarm *)
    bool32_t VillagerBecomesFisherman(FishFarm* param_1);
    // win1.41 0075b5d0 mac 1057a410 Villager::FishermanArrivesAtFishing(void)
    bool32_t FishermanArrivesAtFishing();
    // win1.41 0075b670 mac 1057a390 Villager::IsAtValidFishingPos(void)
    bool32_t IsAtValidFishingPos();
    // win1.41 0075b6a0 mac 1001b120 Villager::Fishing(void)
    bool32_t Fishing();
    // win1.41 0075b820 mac 1057a240 Villager::EnterFishing(unsigned char, unsigned char)
    bool32_t EnterFishing(unsigned char param_1, unsigned char param_2);
    // win1.41 0075b880 mac 1009acc0 Villager::ExitFishing(unsigned char)
    bool32_t ExitFishing(unsigned char param_1);
    // win1.41 0075b940 mac 1057b620 Villager::ShowPoisoned(void)
    bool32_t ShowPoisoned();
    // win1.41 0075b990 mac 1000a640 Villager::ChangeStateToFindFoodToEat(void)
    bool32_t ChangeStateToFindFoodToEat();
    // win1.41 0075baf0 mac 1057b4f0 Villager::CheckHungryAtHome(void)
    bool32_t CheckHungryAtHome();
    // win1.41 0075bb00 mac 1057b400 Villager::GetDesireToPickupFood(void)
    bool32_t GetDesireToPickupFood();
    // win1.41 0075bb50 mac 10087950 Villager::GetDesireForFood(void)
    float GetDesireForFood();
    // win1.41 0075bba0 mac 100214f0 Villager::GetDesireForLife(void)
    void GetDesireForLife();
    // win1.41 0075bbc0 mac 100285a0 Villager::GetLifeDesireFromLife(float)
    float GetLifeDesireFromLife(float param_1);
    // win1.41 0075bc00 mac 100035f0 Villager::GetAmountOfFoodRequiredForMeal(void)
    uint32_t GetAmountOfFoodRequiredForMeal();
    // win1.41 0075bc20 mac 1009ae40 Villager::GetAmountOfFoodToEat(void)
    uint32_t GetAmountOfFoodToEat();
    // win1.41 0075bcc0 mac 100577f0 Villager::CheckHungry(void)
    bool32_t CheckHungry();
    // win1.41 0075bf00 mac 10096d50 Villager::CheckSatisfyOwnFoodDesire(void)
    bool32_t CheckSatisfyOwnFoodDesire();
    // win1.41 0075bf20 mac 1057ab30 Villager::EatFoodHeld(void)
    bool32_t EatFoodHeld();
    // win1.41 0075c000 mac 1057aaa0 Villager::EatFood(void)
    bool32_t EatFood();
    // win1.41 0075c040 mac 1057a9c0 Villager::GetFoodFromHome(unsigned long)
    bool32_t GetFoodFromHome(unsigned long param_1);
    // win1.41 0075c090 mac 1057a900 Villager::EatFoodAtHome(void)
    bool32_t EatFoodAtHome();
    // win1.41 0075c0f0 mac 1057a8c0 Villager::HomelessEatDinner(void)
    bool32_t HomelessEatDinner();
    // win1.41 0075d130 mac 10584d00 Villager::AssignFootballSubState(void)
    void AssignFootballSubState();
    // win1.41 0075d170 mac 10583980 Villager::AssignFootballAttackerSubState(void)
    void AssignFootballAttackerSubState();
    // win1.41 0075d230 mac 10582f50 Villager::FootballAttacker(void)
    bool32_t FootballAttacker();
    // win1.41 0075d2d0 mac 10582d90 Villager::FootballAttackerShootProcess(Football *)
    void FootballAttackerShootProcess(Football* param_1);
    // win1.41 0075d3a0 mac 10582b70 Villager::FootballAttackerPassProcess(Football *)
    void FootballAttackerPassProcess(Football* param_1);
    // win1.41 0075d500 mac 10582920 Villager::FootballAttackerLobNearGoalProcess(Football *)
    void FootballAttackerLobNearGoalProcess(Football* param_1);
    // win1.41 0075d670 mac 10582630 Villager::FootballAttackerDribbleProcess(Football *)
    void FootballAttackerDribbleProcess(Football* param_1);
    // win1.41 0075d850 mac 105823a0 Villager::FootballAttackerMoveToBePassedProcess(Football *)
    void FootballAttackerMoveToBePassedProcess(Football* param_1);
    // win1.41 0075da90 mac 105821f0 Villager::FootballAttackerGoToBallProcess(Football *)
    void FootballAttackerGoToBallProcess(Football* param_1);
    // win1.41 0075db80 mac 105820e0 Villager::FootballAttackerGoHomeProcess(Football *)
    void FootballAttackerGoHomeProcess(Football* param_1);
    // win1.41 0075dbd0 mac 10582010 Villager::FootballAttackerIdleProcess(Football *)
    void FootballAttackerIdleProcess(Football* param_1);
    // win1.41 0075dc20 mac 10581dd0 Villager::FootballAttackerShootPriority(Football *)
    float FootballAttackerShootPriority(Football* param_1);
    // win1.41 0075dd80 mac 10581d30 Villager::FootballAttackerPassPriority(Football *)
    float FootballAttackerPassPriority(Football* param_1);
    // win1.41 0075ddc0 mac 10581cd0 Villager::FootballAttackerLobNearGoalPriority(Football *)
    float FootballAttackerLobNearGoalPriority(Football* param_1);
    // win1.41 0075ddd0 mac 10581b90 Villager::FootballAttackerDribblePriority(Football *)
    float FootballAttackerDribblePriority(Football* param_1);
    // win1.41 0075de70 mac 10581aa0 Villager::FootballAttackerMoveToBePassedPriority(Football *)
    float FootballAttackerMoveToBePassedPriority(Football* param_1);
    // win1.41 0075def0 mac 10581a40 Villager::FootballAttackerGoToBallPriority(Football *)
    float FootballAttackerGoToBallPriority(Football* param_1);
    // win1.41 0075df00 mac 105818f0 Villager::FootballAttackerGoHomePriority(Football *)
    float FootballAttackerGoHomePriority(Football* param_1);
    // win1.41 0075dfb0 mac 10581740 Villager::FootballAttackerIdlePriority(Football *)
    float FootballAttackerIdlePriority(Football* param_1);
    // win1.41 0075e0b0 mac 105803c0 Villager::AssignFootballDefenderSubState(void)
    void AssignFootballDefenderSubState();
    // win1.41 0075e170 mac 1057f990 Villager::FootballDefender(void)
    bool32_t FootballDefender();
    // win1.41 0075e210 mac 1057f760 Villager::FootballDefenderSaveProcess(Football *)
    void FootballDefenderSaveProcess(Football* param_1);
    // win1.41 0075e370 mac 1057f6f0 Villager::FootballDefenderClearProcess(Football *)
    void FootballDefenderClearProcess(Football* param_1);
    // win1.41 0075e380 mac 1057f400 Villager::FootballDefenderDribbleProcess(Football *)
    void FootballDefenderDribbleProcess(Football* param_1);
    // win1.41 0075e560 mac 1057f340 Villager::FootballDefenderMarkProcess(Football *)
    void FootballDefenderMarkProcess(Football* param_1);
    // win1.41 0075e5a0 mac 1057f190 Villager::FootballDefenderGoToBallProcess(Football *)
    void FootballDefenderGoToBallProcess(Football* param_1);
    // win1.41 0075e690 mac 1057f080 Villager::FootballDefenderGoHomeProcess(Football *)
    void FootballDefenderGoHomeProcess(Football* param_1);
    // win1.41 0075e6e0 mac 1057efb0 Villager::FootballDefenderIdleProcess(Football *)
    void FootballDefenderIdleProcess(Football* param_1);
    // win1.41 0075e730 mac 1057ed90 Villager::FootballDefenderPassProcess(Football *)
    void FootballDefenderPassProcess(Football* param_1);
    // win1.41 0075e890 mac 1057ed10 Villager::FootballDefenderSavePriority(Football *)
    float FootballDefenderSavePriority(Football* param_1);
    // win1.41 0075e8b0 mac 1057ec90 Villager::FootballDefenderClearPriority(Football *)
    float FootballDefenderClearPriority(Football* param_1);
    // win1.41 0075e8d0 mac 1057eb50 Villager::FootballDefenderDribblePriority(Football *)
    float FootballDefenderDribblePriority(Football* param_1);
    // win1.41 0075e970 mac 1057eae0 Villager::FootballDefenderMarkPriority(Football *)
    float FootballDefenderMarkPriority(Football* param_1);
    // win1.41 0075e990 mac 1057ea80 Villager::FootballDefenderGoToBallPriority(Football *)
    float FootballDefenderGoToBallPriority(Football* param_1);
    // win1.41 0075e9a0 mac 1057ea10 Villager::FootballDefenderGoHomePriority(Football *)
    float FootballDefenderGoHomePriority(Football* param_1);
    // win1.41 0075e9b0 mac 1057e990 Villager::FootballDefenderIdlePriority(Football *)
    float FootballDefenderIdlePriority(Football* param_1);
    // win1.41 0075e9d0 mac 1057e8f0 Villager::FootballDefenderPassPriority(Football *)
    float FootballDefenderPassPriority(Football* param_1);
    // win1.41 0075ea10 mac 1057dfd0 Villager::FootballGoalie(void)
    bool32_t FootballGoalie();
    // win1.41 0075eab0 mac 1057cde0 Villager::AssignFootballGoalieSubState(void)
    void AssignFootballGoalieSubState();
    // win1.41 0075eb70 mac 1057cc00 Villager::FootballGoalieSaveProcess(Football *)
    void FootballGoalieSaveProcess(Football* param_1);
    // win1.41 0075ec50 mac 1057cb90 Villager::FootballGoalieClearProcess(Football *)
    void FootballGoalieClearProcess(Football* param_1);
    // win1.41 0075ec60 mac 1057ca90 Villager::FootballGoalieLookProcess(Football *)
    void FootballGoalieLookProcess(Football* param_1);
    // win1.41 0075ecd0 mac 1057c8e0 Villager::FootballGoalieGoToBallProcess(Football *)
    void FootballGoalieGoToBallProcess(Football* param_1);
    // win1.41 0075edb0 mac 1057c7e0 Villager::FootballGoalieGoHomeProcess(Football *)
    void FootballGoalieGoHomeProcess(Football* param_1);
    // win1.41 0075ee00 mac 1057c770 Villager::FootballGoalieIdleProcess(Football *)
    void FootballGoalieIdleProcess(Football* param_1);
    // win1.41 0075ee10 mac 1057c4c0 Villager::FootballGoaliePassProcess(Football *)
    void FootballGoaliePassProcess(Football* param_1);
    // win1.41 0075efc0 mac 1057c450 Villager::FootballGoalieSavePriority(Football *)
    float FootballGoalieSavePriority(Football* param_1);
    // win1.41 0075efe0 mac 1057c3e0 Villager::FootballGoalieClearPriority(Football *)
    float FootballGoalieClearPriority(Football* param_1);
    // win1.41 0075f000 mac 1057c370 Villager::FootballGoalieLookPriority(Football *)
    float FootballGoalieLookPriority(Football* param_1);
    // win1.41 0075f020 mac 1057c310 Villager::FootballGoalieGoToBallPriority(Football *)
    float FootballGoalieGoToBallPriority(Football* param_1);
    // win1.41 0075f030 mac 1057c2a0 Villager::FootballGoalieGoHomePriority(Football *)
    float FootballGoalieGoHomePriority(Football* param_1);
    // win1.41 0075f040 mac 1057c230 Villager::FootballGoalieIdlePriority(Football *)
    float FootballGoalieIdlePriority(Football* param_1);
    // win1.41 0075f060 mac 1057c190 Villager::FootballGoaliePassPriority(Football *)
    float FootballGoaliePassPriority(Football* param_1);
    // win1.41 0075f070 mac 1057c0c0 Villager::FootballerIsTouchingBallPrecondition(Football *)
    bool FootballerIsTouchingBallPrecondition(Football* param_1);
    // win1.41 0075f0a0 mac 1057bff0 Villager::FootballerIsNotTouchingBallPrecondition(Football *)
    bool FootballerIsNotTouchingBallPrecondition(Football* param_1);
    // win1.41 0075f0d0 mac 1057bf50 Villager::FootballerIsNearestBallPrecondition(Football *)
    bool FootballerIsNearestBallPrecondition(Football* param_1);
    // win1.41 0075f100 mac 1057bea0 Villager::FootballerIsNotNearestBallPrecondition(Football *)
    bool FootballerIsNotNearestBallPrecondition(Football* param_1);
    // win1.41 0075f130 mac 1057bda0 Villager::FootballerIsAtHomePrecondition(Football *)
    bool32_t FootballerIsAtHomePrecondition(Football* param_1);
    // win1.41 0075f190 mac 1057bc90 Villager::FootballerIsNotAtHomePrecondition(Football *)
    bool32_t FootballerIsNotAtHomePrecondition(Football* param_1);
    // win1.41 0075f1f0 mac 1057bbe0 Villager::FootballerIsQuiteNearBallPrecondition(Football *)
    bool32_t FootballerIsQuiteNearBallPrecondition(Football* param_1);
    // win1.41 0075f230 mac 1057bb30 Villager::FootballerIsNotQuiteNearBallPrecondition(Football *)
    bool32_t FootballerIsNotQuiteNearBallPrecondition(Football* param_1);
    // win1.41 0075f270 mac 1057ba80 Villager::StartMoveToPickUpBallForDeadBall(void)
    bool32_t StartMoveToPickUpBallForDeadBall();
    // win1.41 0075f2c0 mac 1057b9e0 Villager::ArrivedAtPickUpBallForDeadBall(void)
    bool32_t ArrivedAtPickUpBallForDeadBall();
    // win1.41 0075f2f0 mac 1057b970 Villager::ArrivedAtPutDownBallForDeadBallStart(void)
    bool32_t ArrivedAtPutDownBallForDeadBallStart();
    // win1.41 0075f300 mac 1057b840 Villager::ArrivedAtPutDownBallForDeadBallEnd(void)
    bool32_t ArrivedAtPutDownBallForDeadBallEnd();
    // win1.41 0075f380 mac 1057b700 Villager::FootballMoveToBall(void)
    bool32_t FootballMoveToBall();
    // win1.41 0075f4a0 mac 10586060 Villager::CheckSatisfyWoodDesire(void)
    bool32_t CheckSatisfyWoodDesire();
    // win1.41 0075f510 mac 10585d60 Villager::DecideHowToGetWood(int, BigForest * *, Forest * *)
    uint32_t DecideHowToGetWood(int param_1, BigForest** param_2, Forest** param_3);
    // win1.41 0075f710 mac 10585d00 Villager::ForesterGotoForest(void)
    bool32_t ForesterGotoForest();
    // win1.41 0075f720 mac 10585be0 Villager::VillagerGotoForest(Forest *, VILLAGER_STATES)
    bool32_t VillagerGotoForest(Forest* param_1, VILLAGER_STATES param_2);
    // win1.41 0075f7d0 mac 105859d0 Villager::ForesterMoveToForest(void)
    bool32_t ForesterMoveToForest();
    // win1.41 0075f930 mac 10585830 Villager::ForesterArrivesAtForest(void)
    bool32_t ForesterArrivesAtForest();
    // win1.41 0075f9e0 mac 10585660 Villager::ArrivesAtBigForest(void)
    bool32_t ArrivesAtBigForest();
    // win1.41 0075fab0 mac 10585610 Villager::ArrivesAtBigForestForBuilding(void)
    bool32_t ArrivesAtBigForestForBuilding();
    // win1.41 0075fac0 mac 105854f0 Villager::ForesterChopsTree(void)
    bool32_t ForesterChopsTree();
    // win1.41 0075fb40 mac 10585480 Villager::ForesterChopsTreeForBuilding(void)
    bool32_t ForesterChopsTreeForBuilding();
    // win1.41 0075fb60 mac 105853f0 Villager::ForesterFinishedForestering(void)
    bool32_t ForesterFinishedForestering();
    // win1.41 0075fb90 mac 10585390 Villager::TakeWoodFromTreeForBuilding(void)
    bool32_t TakeWoodFromTreeForBuilding();
    // win1.41 0075fba0 mac 10585340 Villager::TakeWoodFromPotForBuilding(void)
    bool32_t TakeWoodFromPotForBuilding();
    // win1.41 0075fbb0 mac 10585300 Villager::TakeWoodFromPot(void)
    bool32_t TakeWoodFromPot();
    // win1.41 0075fbc0 mac 10585210 Villager::TakeWoodFromTree(void)
    bool32_t TakeWoodFromTree();
    // win1.41 0075fc30 mac 10585080 Villager::GotWoodDecideWhatToDo(void)
    bool32_t GotWoodDecideWhatToDo();
    // win1.41 0075fd00 mac 10584e30 Villager::FindTreeNearVillager(Tree * *)
    bool32_t FindTreeNearVillager(Tree** param_1);
    // win1.41 0075fe20 mac 10584dc0 Villager::ExitForesting(unsigned char)
    bool32_t ExitForesting(unsigned char param_1);
    // win1.41 0075fea0 mac 10097120 Villager::HomeDecideWhatToDo(void)
    bool32_t HomeDecideWhatToDo();
    // win1.41 0075ff80 mac 1000a8c0 Villager::CheckNeededForSomething(void)
    bool32_t CheckNeededForSomething();
    // win1.41 0075ffb0 mac 105894c0 Villager::HomeNothingToDo(void)
    bool32_t HomeNothingToDo();
    // win1.41 00760000 mac 10589480 Villager::NothingToDo(void)
    bool32_t NothingToDo();
    // win1.41 00760010 mac 10096ee0 Villager::CheckNeededForSpecial(void)
    bool32_t CheckNeededForSpecial();
    // win1.41 00760050 mac 10095a70 Villager::CheckSatisfyOwnDesire(float)
    bool32_t CheckSatisfyOwnDesire(float param_1);
    // win1.41 00760110 mac 1000c610 Villager::CheckNeedsAtHome(void)
    bool32_t CheckNeedsAtHome();
    // win1.41 00760240 mac 105892c0 Villager::CheckIllAtHome(void)
    bool32_t CheckIllAtHome();
    // win1.41 00760250 mac 10589160 Villager::GoHomeDropResource(void)
    bool32_t GoHomeDropResource();
    // win1.41 00760270 mac 1009edb0 Villager::GoHome(void)
    bool32_t GoHome();
    // win1.41 00760280 mac 1009a4b0 Villager::DoGoingHome(VILLAGER_STATES, VILLAGER_STATES)
    bool32_t DoGoingHome(VILLAGER_STATES state_1, VILLAGER_STATES state_2);
    // win1.41 007604f0 mac 10588e30 Villager::GetTentPos(MapCoords&)
    Town* GetTentPos(MapCoords* coords);
    // win1.41 007606e0 mac 10588820 Villager::Landed(void)
    bool32_t Landed();
    // win1.41 00760930 mac 1000c320 Villager::ArrivesHome(void)
    uint32_t ArrivesHome();
    // win1.41 00760b10 mac 10004a80 Villager::AtHome(void)
    bool32_t AtHome();
    // win1.41 00760b20 mac 10588720 Villager::SitsDownToDinner(void)
    bool32_t SitsDownToDinner();
    // win1.41 00760b30 mac 10003aa0 Villager::GotoBedAtHome(void)
    bool32_t GotoBedAtHome();
    // win1.41 00760b60 mac 1009af60 Villager::CheckWhenGoingToBed(void)
    bool32_t CheckWhenGoingToBed();
    // win1.41 00760c80 mac 10588200 Villager::CheckGetPregnantAtHome(void)
    bool32_t CheckGetPregnantAtHome();
    // win1.41 00760ca0 mac 1000d140 Villager::CheckDeathFromOldAge(void)
    bool32_t CheckDeathFromOldAge();
    // win1.41 00760d70 mac 10023200 Villager::SleepingAtHome(void)
    bool32_t SleepingAtHome();
    // win1.41 00760db0 mac 10587f40 Villager::DoSleeping(float)
    bool32_t DoSleeping(float param_1);
    // win1.41 00760e50 mac 10587ee0 Villager::WakeUpAtHome(void)
    bool32_t WakeUpAtHome();
    // win1.41 00760e60 mac 10587dc0 Villager::StartHavingSex(void)
    bool32_t StartHavingSex();
    // win1.41 00760ee0 mac 10587cd0 Villager::HavingSex(void)
    bool32_t HavingSex();
    // win1.41 00760f50 mac 10587c50 Villager::StopHavingSex(void)
    bool32_t StopHavingSex();
    // win1.41 00760f80 mac 10587c10 Villager::StartHavingSexAtHome(void)
    bool32_t StartHavingSexAtHome();
    // win1.41 00760f90 mac 10587ac0 Villager::StartHavingSex(Villager *, VILLAGER_STATES)
    bool32_t StartHavingSex(Villager* param_1, VILLAGER_STATES param_2);
    // win1.41 00761010 mac 10587a80 Villager::HavingSexAtHome(void)
    bool32_t HavingSexAtHome();
    // win1.41 00761020 mac 10587a40 Villager::StopHavingSexAtHome(void)
    bool32_t StopHavingSexAtHome();
    // win1.41 00761030 mac 10587a00 Villager::WaitForDinner(void)
    bool32_t WaitForDinner();
    // win1.41 00761040 mac 10587960 Villager::GetPromiscuity(void)
    bool32_t GetPromiscuity();
    // win1.41 00761070 mac 105878e0 Villager::IsAvailableForSex(void)
    bool32_t IsAvailableForSex();
    // win1.41 00761090 mac 10587810 Villager::IsSexuallyActive(void)
    bool32_t IsSexuallyActive();
    // win1.41 007610d0 mac 10587790 Villager::IsPromiscious(void)
    bool32_t IsPromiscious();
    // win1.41 00761110 mac 105876a0 Villager::FindAMateAtHome(void)
    bool32_t FindAMateAtHome();
    // win1.41 00761180 mac 10587620 Villager::CheckForSexAtHome(void)
    bool32_t CheckForSexAtHome();
    // win1.41 007611b0 mac 10587570 Villager::ShallIWaitForDinner(void)
    bool32_t ShallIWaitForDinner();
    // win1.41 007611f0 mac 105874c0 Villager::HomeDeleted(void)
    void HomeDeleted();
    // win1.41 00761220 mac 10587440 Villager::MakeHomeless(void)
    bool32_t MakeHomeless();
    // win1.41 00761240 mac 10587220 Villager::MakeHomelessNoStateChange(void)
    bool32_t MakeHomelessNoStateChange();
    // win1.41 00761320 mac 10587160 Villager::HomelessStart(void)
    bool32_t HomelessStart();
    // win1.41 00761360 mac 10586fd0 Villager::CheckHomelessMoveIntoAbode(void)
    bool32_t CheckHomelessMoveIntoAbode();
    // win1.41 007613f0 mac 10586f90 Villager::VillagerGossips(void)
    bool32_t VillagerGossips();
    // win1.41 00761400 mac 10586ed0 Villager::SetupAfterTapOnAbode(MapCoords &, VILLAGER_STATES)
    void SetupAfterTapOnAbode(MapCoords* param_1, VILLAGER_STATES param_2);
    // win1.41 00761440 mac 10586e70 Villager::AfterTapOnAbode(void)
    bool32_t AfterTapOnAbode();
    // win1.41 00761460 mac 100955e0 Villager::CheckSatisfyRelaxation(void)
    bool32_t CheckSatisfyRelaxation();
    // win1.41 00761490 mac 1009cb70 Villager::CheckSatisfySleep(void)
    bool32_t CheckSatisfySleep();
    // win1.41 00761510 mac 10586c80 Villager::ArtifactDance(void)
    bool32_t ArtifactDance();
    // win1.41 007615c0 mac 105869b0 Villager::WaitForArtifactDance(void)
    bool32_t WaitForArtifactDance();
    // win1.41 00761800 mac 10586960 Villager::EnterWaitForArtifactDance(unsigned char, unsigned char)
    bool32_t EnterWaitForArtifactDance(unsigned char param_1, unsigned char param_2);
    // win1.41 00761810 mac 105867e0 Villager::GoHomeAndChange(void)
    bool32_t GoHomeAndChange();
    // win1.41 007618c0 mac 10586680 Villager::ChangeTribeIfRequired(TRIBE_TYPE, int)
    bool32_t ChangeTribeIfRequired(TRIBE_TYPE param_1, int param_2);
    // win1.41 00761980 mac 10586570 Villager::ExitGoHomeAndChange(unsigned char)
    bool32_t ExitGoHomeAndChange(unsigned char param_1);
    // win1.41 00761a00 mac 10586340 Villager::ChangeInfo(GVillagerInfo const *)
    bool32_t ChangeInfo(const GVillagerInfo* param_1);
    // win1.41 00761ae0 mac 10586240 Villager::SleepInTent(void)
    bool32_t SleepInTent();
    // win1.41 00761b40 mac 100957f0 Villager::ExitAtHome(unsigned char)
    bool32_t ExitAtHome(unsigned char param_1);
    // win1.41 00761b70 mac 10586150 Villager::GoHomeFromWorship(void)
    bool32_t GoHomeFromWorship();
    // win1.41 00761c00 mac 1058ad30 Villager::HousewifeLookForWork(void)
    bool32_t HousewifeLookForWork();
    // win1.41 00761c10 mac 1058ac90 Villager::HousewifeAtHome(void)
    bool32_t HousewifeAtHome();
    // win1.41 00761c40 mac 1058abc0 Villager::CheckNeededForHouseWork(void)
    bool32_t CheckNeededForHouseWork();
    // win1.41 00761c90 mac 1058aac0 Villager::CheckNeededToMakeDinner(void)
    bool32_t CheckNeededToMakeDinner();
    // win1.41 00761ce0 mac 1058a9d0 Villager::HousewifeGotoStoragePit(void)
    bool32_t HousewifeGotoStoragePit();
    // win1.41 00761d60 mac 1058a7e0 Villager::HousewifeArrivesAtStoragePit(void)
    bool32_t HousewifeArrivesAtStoragePit();
    // win1.41 00761ea0 mac 1058a700 Villager::HousewifePickupFromStoragePit(void)
    bool32_t HousewifePickupFromStoragePit();
    // win1.41 00761f10 mac 1058a630 Villager::HousewifeReturnHomeWithFood(void)
    bool32_t HousewifeReturnHomeWithFood();
    // win1.41 00761f60 mac 1058a580 Villager::HousewifeMakeDinner(void)
    bool32_t HousewifeMakeDinner();
    // win1.41 00761fa0 mac 1058a4f0 Villager::HousewifeServesDinner(void)
    bool32_t HousewifeServesDinner();
    // win1.41 00761fc0 mac 1058a450 Villager::HousewifeClearsAwayDinner(void)
    bool32_t HousewifeClearsAwayDinner();
    // win1.41 00761ff0 mac 1058a3b0 Villager::HousewifeDoesHousework(void)
    bool32_t HousewifeDoesHousework();
    // win1.41 00762020 mac 1058a0d0 Villager::HousewifeGossipsAroundStoragePit(void)
    bool32_t HousewifeGossipsAroundStoragePit();
    // win1.41 007621a0 mac 10589f60 Villager::HousewifeStartsGivingBirth(void)
    bool32_t HousewifeStartsGivingBirth();
    // win1.41 00762430 mac 10589bf0 Villager::HousewifeGivingBirth(void)
    bool32_t HousewifeGivingBirth();
    // win1.41 007624a0 mac 10589b90 Villager::HousewifeGivenBirth(void)
    bool32_t HousewifeGivenBirth();
    // win1.41 007624c0 mac 105899e0 Villager::WillHousewifeGetPregnant(Villager *)
    bool32_t WillHousewifeGetPregnant(Villager* param_1);
    // win1.41 00762570 mac 10589950 Villager::HousewifeGetsPregnant(Villager *)
    bool32_t HousewifeGetsPregnant(Villager* param_1);
    // win1.41 007625a0 mac 10589870 Villager::HousewifeCalledToMakeDinner(void)
    bool32_t HousewifeCalledToMakeDinner();
    // win1.41 00762600 mac 10589780 Villager::HousewifeAskForMeal(void)
    bool32_t HousewifeAskForMeal();
    // win1.41 00762670 mac 10589740 Villager::CheckSatisfyForChildren(void)
    bool32_t CheckSatisfyForChildren();
    // win1.41 007626e0 mac 1058ad90 Villager::CheckLeaderNeeded(void)
    bool32_t CheckLeaderNeeded();
    // win1.41 007630e0 mac 1058c1c0 Villager::IsPlaytime(void)
    bool IsPlaytime();
    // win1.41 007630f0 mac 1058c170 Villager::CheckPlaytimeAvailableToPlayPFootball(void)
    bool32_t CheckPlaytimeAvailableToPlayPFootball();
    // win1.41 00763100 mac 1058c120 Villager::CheckPlaytimeSettingUpPlayPFootball(void)
    bool32_t CheckPlaytimeSettingUpPlayPFootball();
    // win1.41 00763110 mac 1058c0d0 Villager::MoveToFootballPitchConstruction(void)
    bool32_t MoveToFootballPitchConstruction();
    // win1.41 00763120 mac 1058c070 Villager::FootballWalkToPosition(void)
    bool32_t FootballWalkToPosition();
    // win1.41 00763130 mac 100a0100 Villager::CheckSatisfyPlaytimeDesire(void)
    bool32_t CheckSatisfyPlaytimeDesire();
    // win1.41 00763140 mac 1058bf80 Villager::WaitForKickOff(void)
    bool32_t WaitForKickOff();
    // win1.41 00763170 mac 1058bee0 Villager::FootballMatchPaused(void)
    bool32_t FootballMatchPaused();
    // win1.41 007631b0 mac 1058be20 Villager::FootballMexicanWave(void)
    bool32_t FootballMexicanWave();
    // win1.41 007631f0 mac 1058bce0 Villager::FootballWatchMatch(void)
    bool32_t FootballWatchMatch();
    // win1.41 00763280 mac 1058bbe0 Villager::ExitFootball(unsigned char)
    bool32_t ExitFootball(unsigned char param_1);
    // win1.41 00763800 mac 1001a3e0 Villager::SetupMoveToPos(MapCoords const &, VILLAGER_STATES)
    bool32_t SetupMoveToPos(const MapCoords* param_1, VILLAGER_STATES param_2);
    // win1.41 00763b40 mac 105935e0 Villager::FleeingFromPredatorReaction(void)
    bool32_t FleeingFromPredatorReaction();
    // win1.41 00763cb0 mac 10593430 Villager::SetupGoAndHideInNearbyBuilding(GameThingWithPos *)
    bool32_t SetupGoAndHideInNearbyBuilding(GameThingWithPos* param_1);
    // win1.41 00763d90 mac 105931e0 Villager::GoAndHideInNearbyBuilding(void)
    bool32_t GoAndHideInNearbyBuilding();
    // win1.41 00763f00 mac 105930c0 Villager::GetAbodeToHideInAtPos(MapCoords const &)
    Abode* GetAbodeToHideInAtPos(const MapCoords* param_1);
    // win1.41 00763f80 mac 10592f10 Villager::LookToSeeIfItIsSafe(void)
    bool32_t LookToSeeIfItIsSafe();
    // win1.41 00764410 mac 105924a0 Villager::PerformInspectionReaction(void)
    bool32_t PerformInspectionReaction();
    // win1.41 00764490 mac 10592220 Villager::ApproachObjectReaction(void)
    bool32_t ApproachObjectReaction();
    // win1.41 00764610 mac 10592150 Villager::InitialiseTellOthersAboutObject(void)
    bool32_t InitialiseTellOthersAboutObject();
    // win1.41 00764650 mac 10592100 Villager::TellOthersAboutInterestingObject(void)
    bool32_t TellOthersAboutInterestingObject();
    // win1.41 00764660 mac 105920b0 Villager::InitialiseLookAroundForVillagerToTell(void)
    bool32_t InitialiseLookAroundForVillagerToTell();
    // win1.41 00764670 mac 10592060 Villager::LookAroundForVillagerToTell(void)
    bool32_t LookAroundForVillagerToTell();
    // win1.41 00764680 mac 10592020 Villager::ApproachVillagerToTalkTo(void)
    bool32_t ApproachVillagerToTalkTo();
    // win1.41 00764690 mac 10591fd0 Villager::TellParticularVillagerAboutObject(void)
    bool32_t TellParticularVillagerAboutObject();
    // win1.41 00764aa0 mac 10591600 Villager::InitialiseBewilderedByMagicTreeReaction(void)
    bool32_t InitialiseBewilderedByMagicTreeReaction();
    // win1.41 00764b50 mac 10591340 Villager::PerformBewilderedByMagicTreeReaction(void)
    bool32_t PerformBewilderedByMagicTreeReaction();
    // win1.41 00764d10 mac 10591260 Villager::TurnToFaceMagicTree(void)
    bool32_t TurnToFaceMagicTree();
    // win1.41 00764d70 mac 10591140 Villager::LookAtMagicTree(void)
    bool32_t LookAtMagicTree();
    // win1.41 00765140 mac 10590b80 Villager::ApproachHandReaction(void)
    bool32_t ApproachHandReaction();
    // win1.41 007651a0 mac 10590a00 Villager::FindNearbyVillagerWhoIsntReacting(void)
    bool32_t FindNearbyVillagerWhoIsntReacting();
    // win1.41 00765320 mac 10590720 Villager::ArrivesAtPickupBallReaction(void)
    bool32_t ArrivesAtPickupBallReaction();
    // win1.41 007653f0 mac 10590650 Villager::WatchFlyingObjectReaction(void)
    bool32_t WatchFlyingObjectReaction();
    // win1.41 00765450 mac 10590520 Villager::PointAtFlyingObjectReaction(void)
    bool32_t PointAtFlyingObjectReaction();
    // win1.41 00765870 mac 1058fce0 Villager::ReactToFire(void)
    bool32_t ReactToFire();
    // win1.41 00765e00 mac 1058f550 Villager::AmazedByMagicShieldReaction(void)
    bool32_t AmazedByMagicShieldReaction();
    // win1.41 00766130 mac 1058f230 Villager::DanceWhileReacting(void)
    bool32_t DanceWhileReacting();
    // win1.41 007662f0 mac 1058eec0 Villager::GoToTeleportReaction(void)
    bool32_t GoToTeleportReaction();
    // win1.41 00766380 mac 1058ee60 Villager::GoToTeleportReactionQuickly(void)
    bool32_t GoToTeleportReactionQuickly();
    // win1.41 00766390 mac 1058ed70 Villager::ExitReactToTeleport(unsigned char)
    bool32_t ExitReactToTeleport(unsigned char param_1);
    // win1.41 007663f0 mac 1058eca0 Villager::TeleportReaction(void)
    bool32_t TeleportReaction();
    // win1.41 00766680 mac 1058e5f0 Villager::PointAtDeadPerson(void)
    bool32_t PointAtDeadPerson();
    // win1.41 00766700 mac 1058e420 Villager::GoTowardsDeadPerson(void)
    bool32_t GoTowardsDeadPerson();
    // win1.41 00766810 mac 1058e390 Villager::LookAtDeadPerson(void)
    bool32_t LookAtDeadPerson();
    // win1.41 00766850 mac 1058e2b0 Villager::MournDeadPerson(void)
    bool32_t MournDeadPerson();
    // win1.41 007668e0 mac 1058e1c0 Villager::FaintingReaction(void)
    bool32_t FaintingReaction();
    // win1.41 00766910 mac 1058e090 Villager::StartConfusedReaction(void)
    bool32_t StartConfusedReaction();
    // win1.41 00766930 mac 1058df30 Villager::ConfusedReaction(void)
    bool32_t ConfusedReaction();
    // win1.41 00766a90 mac 1058dac0 Villager::CrowdReaction(void)
    bool32_t CrowdReaction();
    // win1.41 00766c60 mac 1058d970 Villager::MoveTowardsObjectToLookAt(void)
    bool32_t MoveTowardsObjectToLookAt();
    // win1.41 00766d00 mac 1058d890 Villager::InitialiseImpressedReaction(void)
    bool32_t InitialiseImpressedReaction();
    // win1.41 00766d60 mac 1058d780 Villager::PerformImpressedReaction(void)
    bool32_t PerformImpressedReaction();
    // win1.41 00766e50 mac 1058d3c0 Villager::InitialiseFightReaction(void)
    bool32_t InitialiseFightReaction();
    // win1.41 00767280 mac 1058cc50 Villager::ReactToBreeder(void)
    bool32_t ReactToBreeder();
    // win1.41 007672c0 mac 1058cba0 Villager::GoAndHaveSexWith(Villager *)
    bool32_t GoAndHaveSexWith(Villager* param_1);
    // win1.41 007673a0 mac 1058c890 Villager::WaitForMate(void)
    bool32_t WaitForMate();
    // win1.41 00767410 mac 1058c850 Villager::EnterDrowning(unsigned char, unsigned char)
    bool32_t EnterDrowning(unsigned char param_1, unsigned char param_2);
    // win1.41 00767420 mac 1058c810 Villager::ExitDrowning(unsigned char)
    bool32_t ExitDrowning(unsigned char param_1);
    // win1.41 007678a0 mac 10596410 Villager::InspectCreatureReaction(void)
    bool32_t InspectCreatureReaction();
    // win1.41 00767970 mac 105962d0 Villager::PerformInspectCreatureReaction(void)
    bool32_t PerformInspectCreatureReaction();
    // win1.41 00767a00 mac 10596080 Villager::ApproachCreatureReaction(void)
    bool32_t ApproachCreatureReaction();
    // win1.41 00767ba0 mac 10595f40 Villager::InitialiseRespectCreatureReaction(void)
    bool32_t InitialiseRespectCreatureReaction();
    // win1.41 00767c80 mac 10595e50 Villager::TurnToFaceCreatureReaction(void)
    bool32_t TurnToFaceCreatureReaction();
    // win1.41 00767ce0 mac 10595cf0 Villager::PerformRespectCreatureReaction(void)
    bool32_t PerformRespectCreatureReaction();
    // win1.41 00767dc0 mac 10595c30 Villager::FinishRespectCreatureReaction(void)
    bool32_t FinishRespectCreatureReaction();
    // win1.41 00767e00 mac 10595a30 Villager::FleeingFromCreatureReaction(void)
    bool32_t FleeingFromCreatureReaction();
    // win1.41 00767f70 mac 10595930 Villager::MoveTowardsCreatureReaction(void)
    bool32_t MoveTowardsCreatureReaction();
    // win1.41 007682a0 mac 10595080 Villager::CalculateNearestFreeDestination(MapCoords *)
    void CalculateNearestFreeDestination(MapCoords* param_1);
    // win1.41 007683f0 mac 10595020 Villager::UpdateAttitudeToCreature(void)
    void UpdateAttitudeToCreature();
    // win1.41 00768400 mac 10594e00 Villager::UpdateReactiveStateFromAttitudeToCreature(void)
    bool32_t UpdateReactiveStateFromAttitudeToCreature();
    // win1.41 00768510 mac 10594d70 Villager::SetupMoveToCreatureReaction(MapCoords const &, unsigned char)
    void SetupMoveToCreatureReaction(const MapCoords* param_1, unsigned char param_2);
    // win1.41 00768680 mac 105974b0 Villager::SetupScriptWanderToPos(MapCoords const &, float, unsigned short, unsigned short)
    bool32_t SetupScriptWanderToPos(const MapCoords* param_1, float param_2, unsigned short param_3, unsigned short param_4);
    // win1.41 007686d0 mac 10597370 Villager::SetupNewScriptWander(void)
    bool32_t SetupNewScriptWander();
    // win1.41 007687f0 mac 105971a0 Villager::ScriptWanderAroundPos(void)
    bool32_t ScriptWanderAroundPos();
    // win1.41 00768970 mac 10005f50 Villager::ScriptPlayAnim(void)
    bool32_t ScriptPlayAnim();
    // win1.41 007689d0 mac 1000afa0 Villager::IsScriptAnimationComplete(void)
    bool32_t IsScriptAnimationComplete();
    // win1.41 00768a00 mac 10596c60 Villager::ScriptAnimation(void)
    bool32_t ScriptAnimation();
    // win1.41 00768a10 mac 10596c20 Villager::WeakOnGround(void)
    bool32_t WeakOnGround();
    // win1.41 00768a20 mac 105969d0 Villager::ScriptGoAndMoveAlongPath(void)
    bool32_t ScriptGoAndMoveAlongPath();
    // win1.41 00768be0 mac 10598820 Villager::VillagerBecomesShepherd(Flock *)
    bool32_t VillagerBecomesShepherd(Flock* param_1);
    // win1.41 00768c30 mac 105986f0 Villager::ShepherdLookForFlock(void)
    bool32_t ShepherdLookForFlock();
    // win1.41 00768c90 mac 10598650 Villager::FindClosestFlockAnimal(void)
    bool32_t FindClosestFlockAnimal();
    // win1.41 00768cc0 mac 105984c0 Villager::ShepherdMoveFlockToWater(void)
    bool32_t ShepherdMoveFlockToWater();
    // win1.41 00768dd0 mac 10006020 Villager::ShepherdWaitForFlock(void)
    bool32_t ShepherdWaitForFlock();
    // win1.41 00768e30 mac 105981b0 Villager::ShepherdGotoFlock(void)
    bool32_t ShepherdGotoFlock();
    // win1.41 00768ec0 mac 105980a0 Villager::ShepherdTakesControlOfFlock(void)
    bool32_t ShepherdTakesControlOfFlock();
    // win1.41 00768f20 mac 10597fd0 Villager::ShepherdReleasesControlOfFlock(void)
    bool32_t ShepherdReleasesControlOfFlock();
    // win1.41 00768f50 mac 10597f10 Villager::ExitShepherding(unsigned char)
    bool32_t ExitShepherding(unsigned char param_1);
    // win1.41 00768fb0 mac 10597d80 Villager::ShepherdDecideWhatToDoWithFlock(void)
    bool32_t ShepherdDecideWhatToDoWithFlock();
    // win1.41 00769070 mac 10597cc0 Villager::ShepherdMoveFlockBack(void)
    bool32_t ShepherdMoveFlockBack();
    // win1.41 007690d0 mac 10597c80 Villager::ShepherdMoveFlockToFood(void)
    bool32_t ShepherdMoveFlockToFood();
    // win1.41 007690e0 mac 10597ae0 Villager::ShepherdTakeAnimalForSlaughter(void)
    bool32_t ShepherdTakeAnimalForSlaughter();
    // win1.41 007691a0 mac 10026690 Villager::ShepherdCheckAnimalForSlaughter(void)
    bool32_t ShepherdCheckAnimalForSlaughter();
    // win1.41 00769390 mac 10597830 Villager::ShepherdSlaughterAnimal(void)
    bool32_t ShepherdSlaughterAnimal();
    // win1.41 00769430 mac 10006770 Villager::SlaughterAnimalIsClose(float, Living *)
    bool32_t SlaughterAnimalIsClose(float param_1, Living* param_2);
    // win1.41 00769460 mac 105976d0 Villager::ShepherdFetchStray(void)
    bool32_t ShepherdFetchStray();
    // win1.41 00769620 mac 10096900 Villager::GotoStoragePitForDropOff(void)
    uint32_t GotoStoragePitForDropOff();
    // win1.41 007696d0 mac 100062f0 Villager::ArrivesAtStoragePitForDropOff(void)
    uint32_t ArrivesAtStoragePitForDropOff();
    // win1.41 00769830 mac 10096ac0 Villager::GotoStoragePitForFood(void)
    bool32_t GotoStoragePitForFood();
    // win1.41 007698b0 mac 1059c070 Villager::ArrivesAtStoragePitForFood(void)
    bool32_t ArrivesAtStoragePitForFood();
    // win1.41 007698d0 mac 1059bc90 Villager::ArrivesAtStoragePitForResource(RESOURCE_TYPE, unsigned long, VILLAGER_STATES, VILLAGER_STATES)
    bool32_t ArrivesAtStoragePitForResource(RESOURCE_TYPE param_1, unsigned long param_2, VILLAGER_STATES param_3, VILLAGER_STATES param_4);
    // win1.41 00769b30 mac 1059bbc0 Villager::ArrivesAtHomeWithFood(void)
    bool32_t ArrivesAtHomeWithFood();
    // win1.41 00769b80 mac 1059baa0 Villager::CheckTrader(void)
    bool32_t CheckTrader();
    // win1.41 00769c10 mac 1059ba60 Villager::CheckMissionary(void)
    bool32_t CheckMissionary();
    // win1.41 00769c20 mac 1059b860 Villager::CheckTraderPickUpOrDropOff(RESOURCE_TYPE)
    bool32_t CheckTraderPickUpOrDropOff(RESOURCE_TYPE param_1);
    // win1.41 00769d20 mac 1059b730 Villager::ArrivesAtStoragePitForTraderPickUp(void)
    bool32_t ArrivesAtStoragePitForTraderPickUp();
    // win1.41 00769dc0 mac 1059b590 Villager::ArrivesAtStoragePitForTraderDropOff(void)
    bool32_t ArrivesAtStoragePitForTraderDropOff();
    // win1.41 00769ea0 mac 1059b4c0 Villager::SetTraderNothingToDo(void)
    bool32_t SetTraderNothingToDo();
    // win1.41 00769ee0 mac 1059b190 Villager::SetupBreederDisciple(void)
    bool32_t SetupBreederDisciple();
    // win1.41 0076a1b0 mac 1059b020 Villager::BreederDisciple(void)
    bool32_t BreederDisciple();
    // win1.41 0076a220 mac 1059af00 Villager::MissionaryDisciple(void)
    bool32_t MissionaryDisciple();
    // win1.41 0076a2a0 mac 1059ae60 Villager::EnterBreeder(unsigned char, unsigned char)
    bool32_t EnterBreeder(unsigned char param_1, unsigned char param_2);
    // win1.41 0076a2d0 mac 1059ae00 Villager::ExitBreeder(unsigned char)
    bool32_t ExitBreeder(unsigned char param_1);
    // win1.41 0076a2f0 mac 1059ac90 Villager::AtStructureRemoveResource(MultiMapFixed *, RESOURCE_TYPE, unsigned long, bool *)
    uint32_t AtStructureRemoveResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long param_3, bool* param_4);
    // win1.41 0076a3b0 mac 100094e0 Villager::AtStructureAddResource(MultiMapFixed *, RESOURCE_TYPE, unsigned long &, bool)
    uint32_t AtStructureAddResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long* param_3, bool param_4);
    // win1.41 0076a780 mac 1059a490 Villager::Drowning(void)
    bool32_t Drowning();
    // win1.41 0076a7e0 mac 1059a340 Villager::MakeScaredStiff(void)
    bool32_t MakeScaredStiff();
    // win1.41 0076a8b0 mac 1059a2d0 Villager::ScaredStiff(void)
    bool32_t ScaredStiff();
    // win1.41 0076a8d0 mac 1059a060 Villager::VagrantStart(void)
    bool32_t VagrantStart();
    // win1.41 0076aa60 mac 1059a010 Villager::MornDeath(void)
    bool32_t MornDeath();
    // win1.41 0076aa70 mac 10599fd0 Villager::EatOutside(void)
    bool32_t EatOutside();
    // win1.41 0076aab0 mac 10599d10 Villager::SetupInspectObject(Object *)
    bool32_t SetupInspectObject(Object* param_1);
    // win1.41 0076ac40 mac 10599c00 Villager::InspectObject(void)
    bool32_t InspectObject();
    // win1.41 0076ace0 mac 10599b50 Villager::EnterSex(unsigned char, unsigned char)
    bool32_t EnterSex(unsigned char param_1, unsigned char param_2);
    // win1.41 0076acf0 mac 10599a60 Villager::SetupWander(JustWholeMapXZ &, VILLAGER_STATES)
    bool32_t SetupWander(JustWholeMapXZ* param_1, VILLAGER_STATES param_2);
    // win1.41 0076ad80 mac 10599960 Villager::ExitSex(unsigned char)
    bool32_t ExitSex(unsigned char param_1);
    // win1.41 0076b030 mac 1000ab40 Villager::IsInACreaturesHand(void)
    bool32_t IsInACreaturesHand();
    // win1.41 0076b060 mac 10599640 Villager::SetupWaitForCounter(unsigned short, VILLAGER_STATES)
    bool32_t SetupWaitForCounter(unsigned short param_1, VILLAGER_STATES param_2);
    // win1.41 0076b090 mac 1009deb0 Villager::SetupPauseForASecond(VILLAGER_STATES)
    uint32_t SetupPauseForASecond(VILLAGER_STATES state);
    // win1.41 0076b0b0 mac 1000e650 Villager::PauseForASecond(void)
    bool32_t PauseForASecond();
    // win1.41 0076b0d0 mac 105993e0 Villager::SetupPanicReaction(Reaction *, MapCoords &)
    bool32_t SetupPanicReaction(Reaction* param_1, MapCoords* param_2);
    // win1.41 0076b1c0 mac 10599350 Villager::PanicReaction(void)
    bool32_t PanicReaction();
    // win1.41 0076b200 mac 10599180 Villager::GotoCongregateInTownAfterEmergency(void)
    bool32_t GotoCongregateInTownAfterEmergency();
    // win1.41 0076b300 mac 10599090 Villager::CongregateInTownAfterEmergency(void)
    bool32_t CongregateInTownAfterEmergency();
    // win1.41 0076b3f0 mac 1001b410 Villager::GoAndChilloutOutsideHome(void)
    bool32_t GoAndChilloutOutsideHome();
    // win1.41 0076b4e0 mac 1005fc40 Villager::SitAndChillout(void)
    bool32_t SitAndChillout();
    // win1.41 0076b570 mac 10005660 Villager::EnterSitAndChillOut(unsigned char, unsigned char)
    bool32_t EnterSitAndChillOut(unsigned char param_1, unsigned char param_2);
    // win1.41 0076b590 mac 10598c80 Villager::GoAndChilloutInTown(void)
    bool32_t GoAndChilloutInTown();
    // win1.41 0076b610 mac 100118e0 Villager::GetMeToMyChillOutPos(int (Villager::)(void const *, void* , MapCoords &), MapCoords &, float, MapCoords const &)
    void GetMeToMyChillOutPos(int (__fastcall*)(const Villager *, const void *, MapCoords *) callback, const void* unused_1, const void* unused_2, const void* unused_3, MapCoords* param_5, float param_6, MapCoords* param_7);
    // win1.41 0076b7e0 mac 10598b40 Villager::ArrivesHomeFromWorship(void)
    bool32_t ArrivesHomeFromWorship();
    // win1.41 0076b7f0 mac 10598ae0 Villager::SleepInTentFromWorship(void)
    bool32_t SleepInTentFromWorship();
    // win1.41 0076b800 mac 10598930 Villager::BreederJustLanded(void)
    bool32_t BreederJustLanded();
    // win1.41 0076b980 mac 1059c830 Villager::ArrivesInAbodeToPickUpExcess(void)
    bool32_t ArrivesInAbodeToPickUpExcess();
    // win1.41 0076b990 mac 1059c7f0 Villager::ArrivesInAbodeToTrade(void)
    bool32_t ArrivesInAbodeToTrade();
    // win1.41 0076b9a0 mac 1059c7b0 Villager::SetupFoodForWoodTrade(long)
    void SetupFoodForWoodTrade(long param_1);
    // win1.41 0076b9b0 mac 1059c770 Villager::ExcessFood(void)
    bool32_t ExcessFood();
    // win1.41 0076b9c0 mac 1059c730 Villager::SetupWoodForFoodTrade(long)
    void SetupWoodForFoodTrade(long param_1);
    // win1.41 0076b9d0 mac 1059c6f0 Villager::ExcessWood(void)
    bool32_t ExcessWood();
    // win1.41 0076ba60 mac 10096dd0 Villager::CheckNeededForWorship(void)
    float CheckNeededForWorship();
    // win1.41 0076bae0 mac 1059ec20 Villager::CheckWorshipActivity(int)
    float CheckWorshipActivity(int param_1);
    // win1.41 0076bc20 mac 1059eaf0 Villager::CanIGetToTheWorshipSite(MagicTeleport * &)
    bool32_t CanIGetToTheWorshipSite(MagicTeleport** param_1);
    // win1.41 0076bcc0 mac 1059e8f0 Villager::GotoWorshipSiteForWorship(void)
    bool32_t GotoWorshipSiteForWorship();
    // win1.41 0076bda0 mac 1059e810 Villager::SetGotoWorshipSpeed(void)
    bool32_t SetGotoWorshipSpeed();
    // win1.41 0076be00 mac 1059e6f0 Villager::ArrivesAtWorshipSiteForWorship(void)
    bool32_t ArrivesAtWorshipSiteForWorship();
    // win1.41 0076bec0 mac 1059e520 Villager::CheckVillagerGoBackToTownFromWorship(void)
    bool32_t CheckVillagerGoBackToTownFromWorship();
    // win1.41 0076bf90 mac 1059e4b0 Villager::CheckNeededForSupplyWorship(void)
    bool32_t CheckNeededForSupplyWorship();
    // win1.41 0076bfa0 mac 1059e310 Villager::GotoStoragePitForWorshipSupplies(void)
    bool32_t GotoStoragePitForWorshipSupplies();
    // win1.41 0076c080 mac 1059e1e0 Villager::ArrivesAtStoragePitForWorshipSupplies(void)
    bool32_t ArrivesAtStoragePitForWorshipSupplies();
    // win1.41 0076c100 mac 1059e190 Villager::GotoWorshipSiteWithSupplies(void)
    bool32_t GotoWorshipSiteWithSupplies();
    // win1.41 0076c110 mac 1059e140 Villager::MoveToWorshipSiteWithSupplies(void)
    bool32_t MoveToWorshipSiteWithSupplies();
    // win1.41 0076c120 mac 1059e070 Villager::ExitMoveToWorshipSiteWithSupplies(unsigned char)
    bool32_t ExitMoveToWorshipSiteWithSupplies(unsigned char param_1);
    // win1.41 0076c170 mac 1059df70 Villager::ExitMoveToWorshipSite(unsigned char)
    bool32_t ExitMoveToWorshipSite(unsigned char param_1);
    // win1.41 0076c1f0 mac 1059de40 Villager::ExitAtWorshipSite(unsigned char)
    bool32_t ExitAtWorshipSite(unsigned char param_1);
    // win1.41 0076c280 mac 1059dd90 Villager::ExitGetFoodAtWorship(unsigned char)
    bool32_t ExitGetFoodAtWorship(unsigned char param_1);
    // win1.41 0076c2d0 mac 1059dc80 Villager::ArrivesAtWorshipSiteWithSupplies(void)
    bool32_t ArrivesAtWorshipSiteWithSupplies();
    // win1.41 0076c390 mac 1059daf0 Villager::RestartWorshippingAtWorshipSite(void)
    bool32_t RestartWorshippingAtWorshipSite();
    // win1.41 0076c3c0 mac 1059da60 Villager::RestartWorshippingCreature(void)
    bool32_t RestartWorshippingCreature();
    // win1.41 0076c3f0 mac 1059d990 Villager::AddVillagerToWorshipSite(void)
    bool32_t AddVillagerToWorshipSite();
    // win1.41 0076c440 mac 1059d850 Villager::RemoveVillagerFromWorshipSite(void)
    bool32_t RemoveVillagerFromWorshipSite();
    // win1.41 0076c4c0 mac 1059d740 Villager::StartWorshippingAtWorshipSite(void)
    bool32_t StartWorshippingAtWorshipSite();
    // win1.41 0076c550 mac 1059d640 Villager::StartHidingAtWorshipSite(void)
    bool32_t StartHidingAtWorshipSite();
    // win1.41 0076c5e0 mac 1059d530 Villager::HidingAtWorshipSite(void)
    bool32_t HidingAtWorshipSite();
    // win1.41 0076c680 mac 1059d470 Villager::WorshippingAtWorshipSite(void)
    bool32_t WorshippingAtWorshipSite();
    // win1.41 0076c6e0 mac 1059d310 Villager::StartWorshippingCreature(Creature *)
    bool32_t StartWorshippingCreature(Creature* param_1);
    // win1.41 0076c7c0 mac 1059d280 Villager::WorshippingCreature(void)
    bool32_t WorshippingCreature();
    // win1.41 0076c800 mac 1059d130 Villager::ReduceVillagerLifeByChant(void)
    bool32_t ReduceVillagerLifeByChant();
    // win1.41 0076c890 mac 1059d090 Villager::ProcessInWorship(void)
    bool32_t ProcessInWorship();
    // win1.41 0076c8d0 mac 1059cfa0 Villager::CheckRequestGoHome(void)
    bool32_t CheckRequestGoHome();
    // win1.41 0076c930 mac 1059ce60 Villager::CheckNeededForWorshipSiteBuilding(void)
    bool32_t CheckNeededForWorshipSiteBuilding();
    // win1.41 0076c9a0 mac 1059cd40 Villager::CheckAllowedToRestAtWorshipSite(int)
    bool32_t CheckAllowedToRestAtWorshipSite(int param_1);
    // win1.41 0076ca30 mac 1059cbd0 Villager::GetFoodAtWorshipSite(void)
    bool32_t GetFoodAtWorshipSite();
    // win1.41 0076caf0 mac 1059cb80 Villager::GetFoodDesireAtWorshipSite(void)
    bool32_t GetFoodDesireAtWorshipSite();
    // win1.41 0076cb00 mac 1059caa0 Villager::GotoAltarForRest(void)
    bool32_t GotoAltarForRest();
    // win1.41 0076cb80 mac 1059ca10 Villager::ArrivesAtAltarForRest(void)
    bool32_t ArrivesAtAltarForRest();
    // win1.41 0076cbb0 mac 1059c980 Villager::AtAltarRest(void)
    bool32_t AtAltarRest();
    // win1.41 0076cbe0 mac 1059c8f0 Villager::AtAltarFinishedRest(void)
    bool32_t AtAltarFinishedRest();
    // win1.41 0076cc00 mac 1059c880 Villager::CheckSatisfySuppyWorship(void)
    bool32_t CheckSatisfySuppyWorship();
};

class MissionaryControl: public GameThingWithPos
{
public:

    // Override methods

    // win1.41 00756740 mac 10564a00 MissionaryControl::_dt(unsigned int)
    virtual ~MissionaryControl();
    // win1.41 00756870 mac 10564750 MissionaryControl::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00756700 mac 10494550 MissionaryControl::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00756730 mac 10563970 MissionaryControl::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007568a0 mac 105646b0 MissionaryControl::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 007568e0 mac 10564610 MissionaryControl::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00756720 mac 10563930 MissionaryControl::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00756920 mac 10564510 MissionaryControl::GetImpressiveValue(Living *, Reaction *)
    virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
    // win1.41 00756710 mac 105638f0 MissionaryControl::GetText(void)
    virtual const char* GetText();

    // Constructors

    // win1.41 007566c0 mac 10564b90 MissionaryControl::MissionaryControl(void)
    MissionaryControl();
    // win1.41 00756760 mac 10564aa0 MissionaryControl::MissionaryControl(Villager *, GPlayer *)
    MissionaryControl(Villager* param_1, GPlayer* param_2);

    // Non-virtual Destructors

    // win1.41 007567b0 mac inlined MissionaryControl::_dt(void)
    ~MissionaryControl();

    // Non-virtual methods

    // win1.41 007567c0 mac 10564970 MissionaryControl::GetImpressiveValue(void)
    float GetImpressiveValue();
    // win1.41 007567e0 mac 105647f0 MissionaryControl::Process(void)
    void Process();
};

#endif /* BW1_DECOMP_VILLAGER_INCLUDED_H */
