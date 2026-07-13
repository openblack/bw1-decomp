#ifndef BW1_DECOMP_VILLAGER_INCLUDED_H
#define BW1_DECOMP_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h> /* For RESOURCE_TYPE_LAST, enum DEATH_REASON, enum HOLD_TYPE, enum REACTION, enum RESOURCE_TYPE, enum TRIBE_TYPE, enum VILLAGER_DISCIPLE */
#include <chlasm/GStates.h>                            /* For VILLAGER_STATE_LAST_STATE, enum VILLAGER_STATES */
#include <chlasm/HelpTextEnums.h>                      /* For enum HELP_TEXT */
#include <re_common.h>                                 /* For bool32_t */
#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h> /* For LHOrderedLinkedList */

#include "GameThing.h"        /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "Living.h"           /* For struct Living, struct LivingVftable */
#include "LivingAction.h"     /* For enum LIVING_ACTION_INDEX, struct Living__StateTableEntry */
#include "Object.h"           /* For struct Object */
#include "ScriptDLL.h"        /* For enum STATE_TYPE */

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

struct SortedObject
{
	uint8_t field_0x0;
};

struct ClearAreaPoint
{
	uint8_t field_0x0;

	// Non-virtual methods

	// BW1W120 007591e0 BW1M100 10575000 ClearAreaPoint::ProcessPoint(LHPoint const &)
	bool32_t ProcessPoint(const LHPoint* param_1);
};

struct DiscipleInfo
{
	VILLAGER_STATES  begin_state;
	uint32_t         field_0x4;
	uint32_t         field_0x8;
	uint32_t         field_0xc;
	uint32_t         field_0x10;
	TOWN_DESIRE_INFO desire_i_fulfil;
	uint32_t         field_0x18;
};

class Villager : public Living
{
public:
	uint16_t      Flags;
	Villager*     next;
	float         food;
	int           LastCheckTurn;
	bool          FoodSpeedUp; /* 0xf0 */
	uint8_t       field_0xf1;
	uint8_t       DiscipleType;
	uint8_t       field_0xf3;
	int16_t       ResourceHeld[RESOURCE_TYPE_LAST];
	int16_t       is_pregnant;
	int16_t       field_0xfa;
	BuildingSite* building_site;
	Villager*     mother; /* 0x100 */
	GPlayer*      LastPlayerToInteract;
	float         field_0x108;
	float         field_0x10c;
	uint32_t      field_0x110;
	FireEffect*   fire_effect;
	GameThing*    TargetThing;
	union { /* 0x11c */
		Football*      football;
		Town*          TradeTown;
		JustWholeMapXZ WanderArea;
	};
	uint32_t field_0x124;
	Abode*   home;
	Town*    town;

	// Override methods

	// BW1W120 0055cb40 BW1M100 10571890 Villager::_dt(unsigned int)
	virtual ~Villager();
	// BW1W120 007521b0 BW1M100 1056caa0 Villager::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 007502f0 BW1M100 10064390 Villager::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00751d50 BW1M100 10054860 Villager::IsAvailable(void)
	virtual bool32_t IsAvailable();
	// BW1W120 00751f00 BW1M100 10064360 Villager::GetTown(void)
	virtual Town* GetTown();
	// BW1W120 007564d0 BW1M100 10565060 Villager::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 00751cf0 BW1M100 100199f0 Villager::IsFunctional(void)
	virtual bool32_t IsFunctional();
	// BW1W120 0055cb30 BW1M100 10571f80 Villager::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00754580 BW1M100 10568980 Villager::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00754280 BW1M100 10568d70 Villager::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055cb20 BW1M100 10571f40 Villager::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00754870 BW1M100 10568900 Villager::ResolveLoad(void)
	virtual void ResolveLoad();
	// BW1W120 0055ca70 BW1M100 10148010 Villager::GetCreatureBeliefType(void)
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00751db0 BW1M100 1056d490 Villager::GetCitadel(void)
	virtual Citadel* GetCitadel();
	// BW1W120 00753110 BW1M100 1056a8c0 Villager::SetSpeedInMetres(float, int)
	virtual void SetSpeedInMetres(float param_1, int param_2);
	// BW1W120 00756b30 BW1M100 10563e60 Villager::IsDrowning(void)
	virtual bool32_t IsDrowning();
	// BW1W120 004e4c90 BW1M100 105e3c40 Villager::CanBeHealedByCreature(Creature *)
	virtual uint32_t CanBeHealedByCreature(Creature* param_1);
	// BW1W120 0055caa0 BW1M100 10148110 Villager::CanBeHelpedByCreature(Creature *)
	virtual uint32_t CanBeHelpedByCreature(Creature* param_1);
	// BW1W120 0055ca80 BW1M100 10148050 Villager::CanBeImpressedByCreature(Creature *)
	virtual uint32_t CanBeImpressedByCreature(Creature* param_1);
	// BW1W120 0055ca90 BW1M100 101480d0 Villager::CanReceiveGifts(Creature *)
	virtual uint32_t CanReceiveGifts(Creature* param_1);
	// BW1W120 004e4b40 BW1M100 105e4090 Villager::CanHaveMagicFoodCastOnMe(Creature *)
	virtual uint32_t CanHaveMagicFoodCastOnMe(Creature* param_1);
	// BW1W120 0055cab0 BW1M100 1006d800 Villager::IsVillager(Creature *)
	virtual uint32_t IsVillager(Creature* param_1);
	// BW1W120 004e4d50 BW1M100 105e3950 Villager::IsVillagerFarFromHome(Creature *)
	virtual uint32_t IsVillagerFarFromHome(Creature* param_1);
	// BW1W120 004e4510 BW1M100 105e5100 Villager::IsVillagerInTownWithoutManyBreeders(Creature *)
	virtual uint32_t IsVillagerInTownWithoutManyBreeders(Creature* param_1);
	// BW1W120 004e46d0 BW1M100 105e4e90 Villager::IsVillagerNotWorshipping(Creature *)
	virtual uint32_t IsVillagerNotWorshipping(Creature* param_1);
	// BW1W120 004e4b10 BW1M100 105e40e0 Villager::IsVillagerBelongingToOtherPlayer(Creature *)
	virtual uint32_t IsVillagerBelongingToOtherPlayer(Creature* param_1);
	// BW1W120 004e4840 BW1M100 105e4a70 Villager::IsVillagerWhoHasNotBeenImpressedRecently(Creature *)
	virtual uint32_t IsVillagerWhoHasNotBeenImpressedRecently(Creature* param_1);
	// BW1W120 004e4890 BW1M100 105e49d0 Villager::IsVillagerWhoHasNotBeenDancedWithRecently(Creature *)
	virtual uint32_t IsVillagerWhoHasNotBeenDancedWithRecently(Creature* param_1);
	// BW1W120 004e3e20 BW1M100 105e68c0 Villager::DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature *)
	virtual uint32_t DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature* param_1);
	// BW1W120 0076c340 BW1M100 1059db90 Villager::GetWorshipSite(void)
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 004e3b60 BW1M100 105e7030 Villager::IsDoingSomethingInteresting(Creature *)
	virtual uint32_t IsDoingSomethingInteresting(Creature* param_1);
	// BW1W120 00532db0 BW1M100 102ba4d0 Villager::IsPlayingFootball(Creature *)
	virtual uint32_t IsPlayingFootball(Creature* param_1);
	// BW1W120 00532e00 BW1M100 102ba3f0 Villager::IsPlayingFootballAndMySideHasJustScored(Creature *)
	virtual uint32_t IsPlayingFootballAndMySideHasJustScored(Creature* param_1);
	// BW1W120 00532e50 BW1M100 102ba300 Villager::IsPlayingFootballAndOtherSideHasJustScored(Creature *)
	virtual uint32_t IsPlayingFootballAndOtherSideHasJustScored(Creature* param_1);
	// BW1W120 004eaba0 BW1M100 1026e3f0 Villager::GetCreatureMimicType(void)
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1b40 BW1M100 10243020 Villager::GetHowMuchCreatureWantsToLookAtMe(void)
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0063b9b0 BW1M100 103da4e0 Villager::CalculateWhereIWillBeAfterNSeconds(float, LHPoint *)
	virtual void CalculateWhereIWillBeAfterNSeconds(float param_1, LHPoint* param_2);
	// BW1W120 00768630 BW1M100 10597660 Villager::IsReadyForNewScriptAction(void)
	virtual uint32_t IsReadyForNewScriptAction();
	// BW1W120 0055cb10 BW1M100 10148200 Villager::GetDeathReason(void)
	virtual DEATH_REASON GetDeathReason();
	// BW1W120 0055cac0 BW1M100 10478e10 Villager::IsMaleVillager(void)
	virtual uint32_t IsMaleVillager();
	// BW1W120 0055cae0 BW1M100 1033bc40 Villager::IsFemaleVillager(void)
	virtual uint32_t IsFemaleVillager();
	// BW1W120 0055cb00 BW1M100 1009a450 Villager::IsAChild(void)
	virtual uint32_t IsAChild();
	// BW1W120 007562c0 BW1M100 105652e0 Villager::SetSkeleton(int)
	virtual void SetSkeleton(int index);
	// BW1W120 00753f20 BW1M100 10569710 Villager::GetQueryFirstEnumText(void)
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00753f90 BW1M100 105695c0 Villager::GetQueryLastEnumText(void)
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 00754050 BW1M100 10032e70 Villager::GetFOVHelpMessageSet(void)
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 00754060 BW1M100 10569510 Villager::GetFOVHelpCondition(void)
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 00753020 BW1M100 10005a00 Villager::GetScriptObjectType(void)
	virtual uint32_t GetScriptObjectType();
	// BW1W120 00756460 BW1M100 10094080 Villager::IsReachable(void)
	virtual bool32_t IsReachable();
	// BW1W120 00756450 BW1M100 1005f5e0 Villager::InsertMapObject(void)
	virtual void InsertMapObject();
	// BW1W120 00750310 BW1M100 10097630 Villager::GetHoldType(void)
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00750320 BW1M100 1009a310 Villager::GetHoldLoweringMultiplier(void)
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 00756b40 BW1M100 1004b210 Villager::SetLife(float)
	virtual void SetLife(float param_1);
	// BW1W120 00753460 BW1M100 1056a0d0 Villager::IncreaseLife(float)
	virtual void IncreaseLife(float param_1);
	// BW1W120 007502d0 BW1M100 10570c30 Villager::DestroyedByEffect(GPlayer *, float)
	virtual uint32_t DestroyedByEffect(GPlayer* param_1, float param_2);
	// BW1W120 0055c9c0 BW1M100 10147dd0 Villager::GetMesh( const(void))
	virtual int GetMesh();
	// BW1W120 0055c9d0 BW1M100 inlined Villager::GetDetailMesh(int)
	virtual int GetDetailMesh(int param_1);
	// BW1W120 0051b940 BW1M100 1004c6c0 Villager::Draw(void)
	virtual void Draw();
	// BW1W120 0074ff70 BW1M100 1004b3c0 Villager::ProcessState(void)
	virtual uint32_t ProcessState();
	// BW1W120 0055ca50 BW1M100 10147fb0 Villager::CanBePickedUp(void)
	virtual bool CanBePickedUp();
	// BW1W120 007560e0 BW1M100 10565860 Villager::GetDiscipleStateIfInteractedWith(GInterfaceStatus *, Villager *)
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 0074fc70 BW1M100 10571530 Villager::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0055c990 BW1M100 10147d30 Villager::IsABeliever(void)
	virtual bool32_t IsABeliever();
	// BW1W120 0076a4c0 BW1M100 1059a990 Villager::SetDying(void)
	virtual bool32_t SetDying();
	// BW1W120 00753040 BW1M100 inlined Villager::IsTouching(MapCoords *)
	virtual bool IsTouching(MapCoords* coords);
	// BW1W120 0055c9a0 BW1M100 inlined Villager::IsTouching(Object *, float)
	virtual bool IsTouching(Object* target, float epsilon);
	// BW1W120 007564a0 BW1M100 105651b0 Villager::ValidForPlaceInHand(GInterfaceStatus *)
	virtual uint32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00753080 BW1M100 1056a940 Villager::InterfaceSetInMagicHand(GInterfaceStatus *)
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00752bd0 BW1M100 100a0960 Villager::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00752c40 BW1M100 1056ac90 Villager::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 00756ae0 BW1M100 10563ed0 Villager::ThrowObjectFromHand(GInterfaceStatus *, int)
	virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2);
	// BW1W120 00751d70 BW1M100 1000aef0 Villager::IsEffectReceiver(EffectValues *)
	virtual uint32_t IsEffectReceiver(EffectValues* param_1);
	// BW1W120 0076aa80 BW1M100 10599f40 Villager::GetImportance(void)
	virtual float GetImportance();
	// BW1W120 005efe90 BW1M100 10385750 Villager::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
	virtual uint32_t InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3,
	                                           Object* param_4, int param_5);
	// BW1W120 005efef0 BW1M100 10385670 Villager::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
	virtual uint32_t InitialisePhysics(const LHPoint* param_1, const LHPoint* param_2, Object* param_3, bool param_4,
	                                   GInterfaceStatus* param_5);
	// BW1W120 005eff30 BW1M100 10385630 Villager::GetPhysicsConstantsType(void)
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 005eff40 BW1M100 103850b0 Villager::SetUpPhysOb(PhysOb *)
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 005f0a60 BW1M100 103846d0 Villager::EndPhysics(PhysicsObject *, bool)
	virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 007564c0 BW1M100 10565140 Villager::CanBecomeAPhysicsObject(void)
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00750ab0 BW1M100 1056fb10 Villager::HasSunk(void)
	virtual bool32_t HasSunk();
	// BW1W120 0075b400 BW1M100 10578430 Villager::IsFireMan(void)
	virtual bool IsFireMan();
	// BW1W120 00753e00 BW1M100 10569a30 Villager::RemoveFromGame(void)
	virtual uint32_t RemoveFromGame();
	// BW1W120 0055ca30 BW1M100 10147f70 Villager::GetTastiness(void)
	virtual uint32_t GetTastiness();
	// BW1W120 00751af0 BW1M100 1056dae0 Villager::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00753410 BW1M100 1056a150 Villager::SetFoodSpeedup(bool)
	virtual void SetFoodSpeedup(bool param_1);
	// BW1W120 0055c980 BW1M100 10051310 Villager::IsFoodSpeedUp(void)
	virtual bool IsFoodSpeedUp();
	// BW1W120 00756ad0 BW1M100 10563fe0 Villager::GetFinalDestPos(MapCoords *)
	virtual MapCoords GetFinalDestPos();
	// BW1W120 00763b00 BW1M100 10593810 Villager::FleeingFromObjectReaction(void)
	virtual bool32_t FleeingFromObjectReaction();
	// BW1W120 007642c0 BW1M100 105927e0 Villager::LookingAtObjectReaction(void)
	virtual bool32_t LookingAtObjectReaction();
	// BW1W120 00764310 BW1M100 10592770 Villager::FleeingAndLookingAtObjectReaction(void)
	virtual bool32_t FleeingAndLookingAtObjectReaction();
	// BW1W120 00764320 BW1M100 105926d0 Villager::FollowingObjectReaction(void)
	virtual bool32_t FollowingObjectReaction();
	// BW1W120 00764350 BW1M100 105925b0 Villager::InspectObjectReaction(void)
	virtual bool32_t InspectObjectReaction();
	// BW1W120 0076a570 BW1M100 1059a890 Villager::Dying(void)
	virtual bool32_t Dying();
	// BW1W120 0076a5e0 BW1M100 1059a580 Villager::Dead(void)
	virtual bool32_t Dead();
	// BW1W120 0076b380 BW1M100 10598f90 Villager::BeingEaten(void)
	virtual bool32_t BeingEaten();
	// BW1W120 007646a0 BW1M100 10591f20 Villager::GotoFoodReaction(void)
	virtual bool32_t GotoFoodReaction();
	// BW1W120 007646d0 BW1M100 10591e40 Villager::GotoWoodReaction(void)
	virtual bool32_t GotoWoodReaction();
	// BW1W120 00756c60 BW1M100 1004d520 Villager::IsMovingForAnimation(void)
	virtual bool32_t IsMovingForAnimation();
	// BW1W120 00764920 BW1M100 10591770 Villager::ArrivesAtFoodReaction(void)
	virtual bool32_t ArrivesAtFoodReaction();
	// BW1W120 00764720 BW1M100 10591b50 Villager::ArrivesAtWoodReaction(void)
	virtual bool32_t ArrivesAtWoodReaction();
	// BW1W120 0076ade0 BW1M100 1000abe0 Villager::InHand(void)
	virtual bool32_t InHand();
	// BW1W120 007515c0 BW1M100 10098ff0 Villager::DecideWhatToDo(void)
	virtual bool32_t DecideWhatToDo();
	// BW1W120 00751040 BW1M100 1056f5e0 Villager::Birthday(void)
	virtual void Birthday();
	// BW1W120 007528c0 BW1M100 1056b4c0 Villager::SetAge(unsigned long)
	virtual void SetAge(uint32_t age);
	// BW1W120 007520e0 BW1M100 10087ab0 Villager::SetCurrentAndDestinationState(unsigned char, unsigned char)
	virtual int SetCurrentAndDestinationState(uint8_t current, uint8_t destination);
	// BW1W120 00756590 BW1M100 inlined Villager::CallIntoAnimationFunction(VILLAGER_STATES)
	virtual int CallIntoAnimationFunction(uint8_t state);
	// BW1W120 00756620 BW1M100 inlined Villager::CallOutofAnimationFunction(VILLAGER_STATES)
	virtual int CallOutofAnimationFunction(uint8_t state);
	// BW1W120 00752010 BW1M100 1007bba0 Villager::SetTopState(unsigned char)
	virtual int SetTopState(uint8_t state);
	// BW1W120 00763470 BW1M100 10594430 Villager::StorePreviousState(void)
	virtual void StorePreviousState();
	// BW1W120 00753740 BW1M100 10075d50 Villager::SetStateSpeed(void)
	virtual void SetStateSpeed();
	// BW1W120 00753f00 BW1M100 inlined Villager::IsFinalState(VILLAGER_STATES)
	virtual bool IsFinalState(VILLAGER_STATES state);
	// BW1W120 00750110 BW1M100 10066490 Villager::GetAnimId(void)
	virtual ANIM_LIST GetAnimId();
	// BW1W120 00752320 BW1M100 inlined Villager::CallExitStateFunction(VILLAGER_STATES)
	virtual uint32_t CallExitStateFunction(uint8_t state);
	// BW1W120 00752440 BW1M100 1007b1b0 Villager::CallEntryStateFunction(unsigned char, unsigned char)
	virtual uint32_t CallEntryStateFunction(uint8_t current, uint8_t destination);
	// BW1W120 007523d0 BW1M100 10075c50 Villager::CallEntryStateFunction(unsigned char)
	virtual uint32_t CallEntryStateFunction(uint8_t state);
	// BW1W120 007527a0 BW1M100 inlined Villager::ExitReaction(VILLAGER_STATES)
	virtual int ExitReaction(VILLAGER_STATES state);
	// BW1W120 0076b000 BW1M100 inlined Villager::ExitInHand(VILLAGER_STATES)
	virtual int ExitInHand(VILLAGER_STATES state);
	// BW1W120 0076acb0 BW1M100 inlined Villager::ExitInFlying(VILLAGER_STATES)
	virtual int ExitInFlying(VILLAGER_STATES state);
	// BW1W120 00753690 BW1M100 1006a4d0 Villager::SetState(unsigned long, unsigned char)
	virtual void SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state);
	// BW1W120 0076afe0 BW1M100 inlined Villager::EnterInHand(VILLAGER_STATES, VILLAGER_STATES)
	virtual uint32_t EnterInHand(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
	// BW1W120 0055c9f0 BW1M100 inlined Villager::IsScriptState(VILLAGER_STATES)
	virtual bool IsScriptState(VILLAGER_STATES state) const;
	// BW1W120 0055ca10 BW1M100 inlined Villager::IsScriptInterruptableState(VILLAGER_STATES) const
	virtual bool IsScriptInterruptableState(VILLAGER_STATES state) const;
	// BW1W120 00752530 BW1M100 inlined Villager::IsStateExitFunctionSameAs(VILLAGER_STATES) const
	virtual bool IsStateExitFunctionSameAs(VILLAGER_STATES state) const;
	// BW1W120 007528b0 BW1M100 1056b830 Villager::DebugShowTime(unsigned long, unsigned char, unsigned char)
	virtual uint32_t DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3);
	// BW1W120 00764df0 BW1M100 10590f30 Villager::IsInterestedInFoodObject(Object *)
	virtual bool IsInterestedInFoodObject(Object* param_1);
	// BW1W120 00764f60 BW1M100 10590c40 Villager::IsInterestedInWoodObject(Object *)
	virtual bool IsInterestedInWoodObject(Object* param_1);
	// BW1W120 00763390 BW1M100 10021260 Villager::IsAvailableForReaction(REACTION)
	virtual bool32_t IsAvailableForReaction(REACTION param_1);
	// BW1W120 00763410 BW1M100 1000edf0 Villager::IsAvailableForBeliefButNotReaction(REACTION)
	virtual bool32_t IsAvailableForBeliefButNotReaction(REACTION param_1);
	// BW1W120 007634c0 BW1M100 100072a0 Villager::UpdateHowImpressed(Reaction *, int)
	virtual void UpdateHowImpressed(Reaction* param_1, int param_2);
	// BW1W120 00763440 BW1M100 inlined Villager::AddReaction(Reaction *, VILLAGER_STATES)
	virtual void AddReaction(Reaction* reaction, VILLAGER_STATES state);
	// BW1W120 007637d0 BW1M100 105941a0 Villager::StopReacting(void)
	virtual void StopReacting();
	// BW1W120 00751e10 BW1M100 1056d350 Villager::ResetStateAfterReacting(void)
	virtual void ResetStateAfterReacting();
	// BW1W120 00763aa0 BW1M100 105939d0 Villager::SetupLookAtObject(GameThingWithPos *, Reaction *)
	virtual void SetupLookAtObject(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00763ac0 BW1M100 10593960 Villager::SetupLookAtSpell(GameThingWithPos *, Reaction *)
	virtual void SetupLookAtSpell(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00763ae0 BW1M100 105938e0 Villager::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
	virtual void SetupLookAtNiceSpell(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00767630 BW1M100 10596820 Villager::SetupReactToCreature(GameThingWithPos *, Reaction *)
	virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00765b70 BW1M100 1058fc00 Villager::SetupReactToWood(GameThingWithPos *, Reaction *)
	virtual void SetupReactToWood(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00763820 BW1M100 10593f50 Villager::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
	virtual void SetupReactToMagicTree(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007639d0 BW1M100 10593a40 Villager::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
	virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00765540 BW1M100 10590390 Villager::SetupReactToFire(GameThingWithPos *, Reaction *)
	virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00765c60 BW1M100 1058f820 Villager::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
	virtual void SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00766010 BW1M100 1058f360 Villager::SetupReactToNewBuilding(GameThingWithPos *, Reaction *)
	virtual void SetupReactToNewBuilding(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00766e30 BW1M100 1058d620 Villager::SetupReactToFight(GameThingWithPos *, Reaction *)
	virtual void SetupReactToFight(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00766250 BW1M100 1058f020 Villager::SetupReactToTeleport(GameThingWithPos *, Reaction *)
	virtual void SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 007665b0 BW1M100 1058e7d0 Villager::SetupReactToDeath(GameThingWithPos *, Reaction *)
	virtual void SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00766620 BW1M100 1058e6f0 Villager::SetupReactToDroppedByHand(GameThingWithPos *, Reaction *)
	virtual void SetupReactToDroppedByHand(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 007668c0 BW1M100 1058e200 Villager::SetupReactToFainting(GameThingWithPos *, Reaction *)
	virtual void SetupReactToFainting(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007668f0 BW1M100 1058e110 Villager::SetupReactToConfused(GameThingWithPos *, Reaction *)
	virtual void SetupReactToConfused(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00766a20 BW1M100 1058de00 Villager::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
	virtual void SetupReactToFallingTree(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00766a60 BW1M100 1058dce0 Villager::SetupReactToCrowd(GameThingWithPos *, Reaction *)
	virtual void SetupReactToCrowd(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007671e0 BW1M100 1058ce20 Villager::SetupReactToBreeder(GameThingWithPos *, Reaction *)
	virtual void SetupReactToBreeder(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00763990 BW1M100 10593b90 Villager::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
	virtual void SetupFleeFromPredator(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00766fd0 BW1M100 1058cfd0 Villager::SetupReactToTownCelebration(GameThingWithPos *, Reaction *)
	virtual void SetupReactToTownCelebration(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 007672f0 BW1M100 1058cae0 Villager::SetupReactToVillagerInHand(GameThingWithPos *, Reaction *)
	virtual void SetupReactToVillagerInHand(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00767490 BW1M100 1058c650 Villager::SetupReactToBurningObjectInHand(GameThingWithPos *, Reaction *)
	virtual void SetupReactToBurningObjectInHand(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007674b0 BW1M100 1058c4f0 Villager::SetupReactToMagicShieldStruck(GameThingWithPos *, Reaction *)
	virtual void SetupReactToMagicShieldStruck(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00767520 BW1M100 1058c460 Villager::SetupReactToMagicShieldDestroyed(GameThingWithPos *, Reaction *)
	virtual void SetupReactToMagicShieldDestroyed(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007676e0 BW1M100 10596540 Villager::ReactToCreaturePriority(Reaction *, Reaction *)
	virtual uint8_t ReactToCreaturePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00765260 BW1M100 105908a0 Villager::ReactToFlyingObjectPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00765610 BW1M100 10590060 Villager::ReactToFirePriority(Reaction *, Reaction *)
	virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00765bb0 BW1M100 1058fa80 Villager::ReactToMagicShieldPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00766df0 BW1M100 1058d6d0 Villager::ReactToFightPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00766200 BW1M100 1058f150 Villager::ReactToTeleportPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToTeleportPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00766440 BW1M100 1058eb60 Villager::ReactToDeathPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 007664b0 BW1M100 1058e910 Villager::ReactToDroppedByHandPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00766a10 BW1M100 1058deb0 Villager::ReactToFallingTreePriority(Reaction *, Reaction *)
	virtual uint8_t ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00766a50 BW1M100 1058dd90 Villager::ReactToCrowdPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToCrowdPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767210 BW1M100 1058ccf0 Villager::ReactToBreederPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToBreederPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767180 BW1M100 1058ced0 Villager::ReactToTownCelebrationPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToTownCelebrationPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00763850 BW1M100 10593d10 Villager::FleeFromPredatorPriority(Reaction *, Reaction *)
	virtual uint8_t FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767320 BW1M100 1058c970 Villager::ReactToVillagerInHandPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToVillagerInHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767430 BW1M100 1058c710 Villager::ReactToBurningObjectInHandPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToBurningObjectInHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767540 BW1M100 1058c2b0 Villager::ReactToMagicShieldStruckPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToMagicShieldStruckPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 007675a0 BW1M100 1058c230 Villager::ReactToMagicShieldDestroyedPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToMagicShieldDestroyedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00763980 BW1M100 10593c90 Villager::ReactToScaffoldPriority(Reaction *, Reaction *)
	virtual uint8_t ReactToScaffoldPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 007640a0 BW1M100 10592e20 Villager::NumGameTurnsToReactToPredatorFunction(GameThingWithPos *, unsigned long, float)
	virtual uint32_t NumGameTurnsToReactToPredatorFunction(GameThingWithPos* thing, uint32_t param_2, float param_3);
	// BW1W120 007640e0 BW1M100 10592d30 Villager::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos *, unsigned long, float)
	virtual uint32_t NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                   float param_3);
	// BW1W120 007648d0 BW1M100 10591a30 Villager::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos *, unsigned long, float)
	virtual uint32_t StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                       float param_3);
	// BW1W120 00764110 BW1M100 10592ca0 Villager::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
	virtual uint32_t NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                            float param_3);
	// BW1W120 00764130 BW1M100 10592b70 Villager::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
	virtual uint32_t NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                        float param_3);
	// BW1W120 007641a0 BW1M100 10592a30 Villager::NumGameTurnsToReactToShieldFunction(GameThingWithPos *, unsigned long, float)
	virtual uint32_t NumGameTurnsToReactToShieldFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
	// BW1W120 00764230 BW1M100 105928c0 Villager::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos *, unsigned long, float)
	virtual uint32_t NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                 float param_3);
	// BW1W120 0055c970 BW1M100 10064ef0 Villager::IsChild(void)
	virtual bool32_t IsChild();
	// BW1W120 00751dd0 BW1M100 1004ec00 Villager::GetFinalState(void) const
	virtual VILLAGER_STATES GetFinalState();
	// BW1W120 00751510 BW1M100 1056ec00 Villager::RemoveFromDance(int)
	virtual void RemoveFromDance(int param_1);
	// BW1W120 00759b80 BW1M100 10577060 Villager::SetStateAfterFinishingDance(void)
	virtual void SetStateAfterFinishingDance();
	// BW1W120 0075bae0 BW1M100 1057b530 Villager::CalculateLifeDesire(void)
	virtual float CalculateLifeDesire();
	// BW1W120 004174a0 BW1M100 inlined Villager::MoveAllowedForChessGame(void)
	virtual bool MoveAllowedForChessGame();
	// BW1W120 004174b0 BW1M100 inlined Villager::AttackAllowedForChessGame(void)
	virtual bool AttackAllowedForChessGame();
	// BW1W120 004174c0 BW1M100 inlined Villager::AddToBoxPositionForChessGame(int, int)
	virtual void AddToBoxPositionForChessGame(int param_1, int param_2);
	// BW1W120 004174d0 BW1M100 inlined Villager::GetBoxXForChessGame(void)
	virtual int GetBoxXForChessGame();
	// BW1W120 004174e0 BW1M100 inlined Villager::GetBoxZForChessGame(void)
	virtual int GetBoxZForChessGame();
	// BW1W120 004174f0 BW1M100 inlined Villager::SetBoxXForChessGame(int)
	virtual void SetBoxXForChessGame(int param_1);
	// BW1W120 00417500 BW1M100 inlined Villager::SetBoxZForChessGame(int)
	virtual void SetBoxZForChessGame(int param_1);
	// BW1W120 00417510 BW1M100 inlined Villager::GetTeamForChessGame(void)
	virtual uint32_t GetTeamForChessGame();
	// BW1W120 00473ee0 BW1M100 inlined Villager::IsPosValidForTurnAngle(MapCoords const &)
	virtual bool IsPosValidForTurnAngle(const MapCoords* param_1);
	// BW1W120 0055ca40 BW1M100 100c54f0 Villager::GetVillagerName(void)
	const char* GetVillagerName();
	// BW1W120 0051b510 BW1M100 10057c40 Villager::DrawVillagerInfo(void)
	uint32_t DrawVillagerInfo();

	// Static methods

	// BW1W120 inlined BW1M100 1061e41c Villager::GetStateTable(void)
	static Living::StateTableEntry& GetStateTable(VILLAGER_STATES state);
	// BW1W120 0074fbe0 BW1M100 10571750 Villager::Create(MapCoords const &, GVillagerInfo const *, unsigned long, int)
	static Villager* Create(const MapCoords& coords, const GVillagerInfo* info, uint32_t age, bool skeleton);

	// Constructors

	// BW1W120 0055c8a0 BW1M100 1030baa0 Villager::Villager(void)
	Villager();
	// BW1W120 0074f950 BW1M100 10571a90 Villager::Villager(MapCoords const &, GVillagerInfo const *, unsigned long, int)
	Villager(MapCoords* coords, GVillagerInfo* info, uint32_t age, bool skeleton);

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined Villager::CallValidate(uchar)
	uint32_t CallValidate(LIVING_ACTION_INDEX index);
	// BW1W120 00423c80 BW1M100 100a8b10 Villager::FootballWatchMatchAnimation(void)
	uint32_t FootballWatchMatchAnimation();
	// BW1W120 0074fb20 BW1M100 10571a20 Villager::SetToZero(void)
	void SetToZero();
	// BW1W120 0074fb80 BW1M100 10571950 Villager::InitialiseScale(unsigned long)
	void InitialiseScale(unsigned long param_1);
	// BW1W120 0074fd60 BW1M100 10571210 Villager::DeleteDependancys(void)
	void DeleteDependancys();
	// BW1W120 0074fec0 BW1M100 105710c0 Villager::UnemployedJobs(void)
	bool UnemployedJobs();
	// BW1W120 0074ff60 BW1M100 10571080 Villager::SetupJobLocation(void)
	bool SetupJobLocation();
	// BW1W120 00750060 BW1M100 1009a920 Villager::FinishedIntoOutOfAnimation(void)
	void FinishedIntoOutOfAnimation();
	// BW1W120 007501a0 BW1M100 1005ffb0 Villager::SetStateCarriedObject(void)
	void SetStateCarriedObject();
	// BW1W120 007502a0 BW1M100 10570ca0 Villager::GetWoodCarriedObject(void)
	uint32_t GetWoodCarriedObject();
	// BW1W120 00750330 BW1M100 105709c0 Villager::GetSpouse(void)
	Villager* GetSpouse();
	// BW1W120 00750370 BW1M100 10570860 Villager::LookAroundForVillagerInState(VILLAGER_STATES, unsigned long)
	Villager* LookAroundForVillagerInState(VILLAGER_STATES param_1, unsigned long param_2);
	// BW1W120 00750410 BW1M100 1004b510 Villager::CheckEveryTime(void)
	int CheckEveryTime();
	// BW1W120 00750670 BW1M100 1006ec00 Villager::GetGameTurnsSinceLastChecked(void)
	uint32_t GetGameTurnsSinceLastChecked();
	// BW1W120 00750690 BW1M100 105704c0 Villager::GetGameTurnLastChecked(void)
	int GetGameTurnLastChecked();
	// BW1W120 007506a0 BW1M100 1006eca0 Villager::SetGameTurnLastChecked(void)
	void SetGameTurnLastChecked();
	// BW1W120 007506c0 BW1M100 1056ff20 Villager::VillagerDead(DEATH_REASON, GPlayer *, float, int)
	void VillagerDead(DEATH_REASON param_1, GPlayer* param_2, float param_3, int param_4);
	// BW1W120 00750940 BW1M100 1056fc50 Villager::CreateDroppedResource(LHPoint *, LHPoint *, LHPoint *)
	void CreateDroppedResource(LHPoint* param_1, LHPoint* param_2, LHPoint* param_3);
	// BW1W120 00750b50 BW1M100 1056fa20 Villager::TownDeleted(void)
	void TownDeleted();
	// BW1W120 00750bb0 BW1M100 1056f840 Villager::DebugText(int)
	void DebugText(int param_1);
	// BW1W120 00750de0 BW1M100 1056f7b0 Villager::SetAbode(Abode*)
	void SetAbode(Abode* abode);
	// BW1W120 00750e10 BW1M100 1056f660 Villager::GetRandomLookAhead(MapCoords *, float)
	bool GetRandomLookAhead(MapCoords* param_1, float param_2);
	// BW1W120 00750ed0 BW1M100 10068820 Villager::SetSpeed__8VillagerFli(int, int)
	void SetSpeed(int base_speed, int scale_speed);
	// BW1W120 00751050 BW1M100 10021a00 Villager::CheckChildGrownUp(void)
	int CheckChildGrownUp();
	// BW1W120 00751110 BW1M100 1056f4c0 Villager::IsAMother(void)
	bool32_t IsAMother();
	// BW1W120 00751190 BW1M100 1056f440 Villager::StartMoveToObject(Object *, VILLAGER_STATES)
	bool StartMoveToObject(Object* object, VILLAGER_STATES state);
	// BW1W120 007511b0 BW1M100 1009cd40 Villager::DropResource(RESOURCE_TYPE, unsigned short)
	uint16_t DropResource(RESOURCE_TYPE param_1, unsigned short param_2);
	// BW1W120 007511e0 BW1M100 1056f310 Villager::DropFood(unsigned short)
	uint16_t DropFood(unsigned short food_amount);
	// BW1W120 00751240 BW1M100 1056f220 Villager::DropWood(unsigned short)
	uint16_t DropWood(unsigned short wood_amount);
	// BW1W120 007512a0 BW1M100 1056f160 Villager::IsEnoughFoodInStoragePitForDinner(void)
	bool IsEnoughFoodInStoragePitForDinner();
	// BW1W120 007512e0 BW1M100 1056efc0 Villager::FindPotAroundToGoto(RESOURCE_TYPE, unsigned long &, int)
	Pot* FindPotAroundToGoto(RESOURCE_TYPE param_1, unsigned long& param_2, int param_3);
	// BW1W120 007513f0 BW1M100 1056ee50 Villager::PickupResource(RESOURCE_TYPE, short, unsigned char)
	void PickupResource(RESOURCE_TYPE param_1, short param_2, unsigned char param_3);
	// BW1W120 00751490 BW1M100 1009cfd0 Villager::PickupFood(short)
	void PickupFood(short param_1);
	// BW1W120 007514b0 BW1M100 1056ed20 Villager::PickupWood(short, unsigned char)
	void PickupWood(short param_1, unsigned char param_2);
	// BW1W120 007514d0 BW1M100 10004d10 Villager::GetFoodCapacity(void)
	int GetFoodCapacity();
	// BW1W120 007514f0 BW1M100 1056ec50 Villager::GetWoodCapacity(void)
	int GetWoodCapacity();
	// BW1W120 00751520 BW1M100 1056eb50 Villager::IsRandomlyLazy(void)
	bool IsRandomlyLazy();
	// BW1W120 00751570 BW1M100 100007e0 Villager::GetResourceHeld(RESOURCE_TYPE &)
	bool GetResourceHeld(RESOURCE_TYPE& type);
	// BW1W120 007516e0 BW1M100 10003bb0 Villager::CheckTakeResourcesToStoragePit(void)
	bool32_t CheckTakeResourcesToStoragePit();
	// BW1W120 00751720 BW1M100 1056e1f0 Villager::DiscipleDecideWhatToDo(void)
	bool32_t DiscipleDecideWhatToDo();
	// BW1W120 00751970 BW1M100 1056e1b0 Villager::GetPrayerSite(void)
	bool GetPrayerSite();
	// BW1W120 00751980 BW1M100 1056e0e0 Villager::RestartDance(VILLAGER_STATES)
	bool RestartDance(VILLAGER_STATES state);
	// BW1W120 00751ab0 BW1M100 1056dea0 Villager::GetVillagerText(char *)
	char* GetVillagerText(char* param_1);
	// BW1W120 00751d20 BW1M100 1056d6a0 Villager::GetJobInfo(unsigned char) const
	GJobInfo* GetJobInfo(unsigned char param_1) const;
	// BW1W120 00751d40 BW1M100 inlined Villager::FUN00751d40(void)
	bool FUN00751d40();
	// BW1W120 00751e50 BW1M100 1056d290 Villager::PopFromPrevious(void)
	void PopFromPrevious();
	// BW1W120 00751ea0 BW1M100 1056d250 Villager::GetFootball(void)
	Football* GetFootball();
	// BW1W120 00751ee0 BW1M100 1056d170 Villager::GetTribe(void)
	GTribeInfo* GetTribe();
	// BW1W120 00751f10 BW1M100 1008a5d0 Villager::GetStoragePit(void)
	StoragePit* GetStoragePit();
	// BW1W120 00751f40 BW1M100 1056d040 Villager::GetVillagerAvailableState(void)
	VILLAGER_STATES GetVillagerAvailableState();
	// BW1W120 00751f70 BW1M100 inlined Villager::FUN_00751f70(void)
	VILLAGER_STATES FUN_00751f70();
	// BW1W120 00751fa0 BW1M100 100039f0 Villager::ArriveHome(void)
	void ArriveHome();
	// BW1W120 00751fd0 BW1M100 1009fde0 Villager::LeaveHome(void)
	void LeaveHome();
	// BW1W120 00752120 BW1M100 1007c3b0 Villager::CanPauseForASecond(unsigned char)
	uint32_t CanPauseForASecond(VILLAGER_STATES state);
	// BW1W120 00752160 BW1M100 1000a960 Villager::GetAbode(void)
	Abode* GetAbode();
	// BW1W120 007521d0 BW1M100 1004b330 Villager::CallState(void)
	uint32_t CallState();
	// BW1W120 00752210 BW1M100 10020260 Villager::IsPregnant(void)
	bool32_t IsPregnant();
	// BW1W120 00752240 BW1M100 100201b0 Villager::WomanSpecial(void)
	uint32_t WomanSpecial();
	// BW1W120 00752290 BW1M100 1056c8b0 Villager::IsVillagerAvailable(void)
	bool IsVillagerAvailable();
	// BW1W120 007522c0 BW1M100 1056c7a0 Villager::IsAvailableToBeSummonedByCreature(void)
	bool32_t IsAvailableToBeSummonedByCreature();
	// BW1W120 007524d0 BW1M100 1009d4c0 Villager::IsStateEntryFunctionSameAs(unsigned long, unsigned long) const
	bool IsStateEntryFunctionSameAs(unsigned long param_1, unsigned long param_2) const;
	// BW1W120 007525b0 BW1M100 1056c220 Villager::IsReactiveState(unsigned long)
	bool IsReactiveState(unsigned long state);
	// BW1W120 00752600 BW1M100 1001ff70 Villager::IsHungry(void)
	bool32_t IsHungry();
	// BW1W120 00752620 BW1M100 1006a7a0 Villager::IsWoman(void)
	bool IsWoman();
	// BW1W120 00752690 BW1M100 1056bc60 Villager::MakeVillagesMeet(Villager *, VILLAGER_STATES, float)
	bool MakeVillagesMeet(Villager* param_1, VILLAGER_STATES param_2, float param_3);
	// BW1W120 00752760 BW1M100 1056bbd0 Villager::MakeVillagerFaceObject(Object *)
	bool MakeVillagerFaceObject(Object* object);
	// BW1W120 007527e0 BW1M100 1056ba70 Villager::ExitDance(unsigned char)
	bool ExitDance(unsigned char param_1);
	// BW1W120 00752820 BW1M100 1056b9c0 Villager::IsAvailableForWorshipSite(int)
	bool32_t IsAvailableForWorshipSite(int param_1);
	// BW1W120 00752860 BW1M100 1056b900 Villager::IsAtOrOnTheWayToWorshipSite(void)
	bool IsAtOrOnTheWayToWorshipSite();
	// BW1W120 00752a90 BW1M100 1056b340 Villager::SetScaleForAge(unsigned long)
	void SetScaleForAge(unsigned long param_1);
	// BW1W120 00752b80 BW1M100 1056b240 Villager::SetStateWhenTappedOnAbode(void)
	bool32_t SetStateWhenTappedOnAbode();
	// BW1W120 00753140 BW1M100 inlined Villager::FUN_00753140(void)
	uint32_t FUN_00753140();
	// BW1W120 007531a0 BW1M100 1056a780 Villager::IsVagrant(void)
	bool IsVagrant();
	// BW1W120 007531d0 BW1M100 1056a480 Villager::ReleaseFromScript(void)
	void ReleaseFromScript();
	// BW1W120 00753340 BW1M100 1056a3d0 Villager::TestSpecial(void)
	void TestSpecial();
	// BW1W120 00753390 BW1M100 1056a1a0 Villager::GetResourceFrom(Object *, RESOURCE_TYPE, short)
	uint32_t GetResourceFrom(Object* param_1, RESOURCE_TYPE param_2, short param_3);
	// BW1W120 00753430 BW1M100 10051360 Villager::ProcessFoodSpeedup(void)
	void ProcessFoodSpeedup();
	// BW1W120 00753470 BW1M100 10569f30 Villager::FindPosOutsideAbode(Abode *)
	void FindPosOutsideAbode(Abode* param_1);
	// BW1W120 00753540 BW1M100 inlined Villager::FUN_00753540(void)
	Abode* FUN_00753540();
	// BW1W120 00753560 BW1M100 1006a5f0 Villager::AdjustTownModifier(VILLAGER_STATES, int)
	void AdjustTownModifier(VILLAGER_STATES state, int param_2);
	// BW1W120 00753760 BW1M100 10058b20 Villager::SetStateSpeed(unsigned char)
	void SetStateSpeed(unsigned char param_1);
	// BW1W120 00753b50 BW1M100 10099cf0 Villager::SetupNothingToDo(void)
	uint32_t SetupNothingToDo();
	// BW1W120 00753c70 BW1M100 1000e4e0 Villager::GetChillOutPos(MapCoords &)
	uint32_t GetChillOutPos(MapCoords& coords);
	// BW1W120 00753d50 BW1M100 100096d0 Villager::GetPosOutsideMyHouse(MapCoords &)
	int GetPosOutsideMyHouse(MapCoords& coords);
	// BW1W120 00753dd0 BW1M100 10569aa0 Villager::VillagerCreated(void)
	uint32_t VillagerCreated();
	// BW1W120 00753e20 BW1M100 10569870 Villager::GetResourceDropoffPos(RESOURCE_TYPE)
	MapCoords GetResourceDropoffPos(RESOURCE_TYPE resource_type);
	// BW1W120 00754070 BW1M100 10569470 Villager::SetDiscipleNothingToDo(void)
	bool32_t SetDiscipleNothingToDo();
	// BW1W120 007540d0 BW1M100 10569390 Villager::DiscipleNothingToDo(void)
	bool32_t DiscipleNothingToDo();
	// BW1W120 00754140 BW1M100 105692c0 Villager::EnterDiscipleNothingToDo(unsigned char, unsigned char)
	bool32_t EnterDiscipleNothingToDo(unsigned char param_1, unsigned char param_2);
	// BW1W120 00754180 BW1M100 10569180 Villager::FindDisciplePrayerPos(MapCoords *)
	bool32_t FindDisciplePrayerPos(MapCoords* param_1);
	// BW1W120 007548a0 BW1M100 10568810 Villager::CallSaveStateFunction(GameOSFile &, STATE_TYPE)
	bool32_t CallSaveStateFunction(GameOSFile& param_1, STATE_TYPE param_2);
	// BW1W120 00754910 BW1M100 10568720 Villager::CallLoadStateFunction(GameOSFile &, STATE_TYPE)
	bool32_t CallLoadStateFunction(GameOSFile& param_1, STATE_TYPE param_2);
	// BW1W120 00754980 BW1M100 10568670 Villager::SaveStateFunction(GameOSFile &)
	bool32_t SaveStateFunction(GameOSFile& param_1);
	// BW1W120 007549b0 BW1M100 105685b0 Villager::LoadStateFunction(GameOSFile &)
	bool32_t LoadStateFunction(GameOSFile& param_1);
	// BW1W120 00754a00 BW1M100 105684d0 Villager::SaveBuilding(GameOSFile &)
	bool32_t SaveBuilding(GameOSFile& param_1);
	// BW1W120 00754a60 BW1M100 10568400 Villager::LoadBuilding(GameOSFile &)
	bool32_t LoadBuilding(GameOSFile& param_1);
	// BW1W120 00754ac0 BW1M100 105682e0 Villager::SaveDance(GameOSFile &)
	bool32_t SaveDance(GameOSFile& param_1);
	// BW1W120 00754b60 BW1M100 105681d0 Villager::LoadDance(GameOSFile &)
	bool32_t LoadDance(GameOSFile& param_1);
	// BW1W120 00754c00 BW1M100 10568100 Villager::SaveWorship(GameOSFile &)
	bool32_t SaveWorship(GameOSFile& param_1);
	// BW1W120 00754c60 BW1M100 10568030 Villager::LoadWorship(GameOSFile &)
	bool32_t LoadWorship(GameOSFile& param_1);
	// BW1W120 00754cc0 BW1M100 10567f70 Villager::SaveDead(GameOSFile &)
	bool32_t SaveDead(GameOSFile& param_1);
	// BW1W120 00754d20 BW1M100 10567eb0 Villager::LoadDead(GameOSFile &)
	bool32_t LoadDead(GameOSFile& param_1);
	// BW1W120 00754d80 BW1M100 10567de0 Villager::SaveInHand(GameOSFile &)
	bool32_t SaveInHand(GameOSFile& param_1);
	// BW1W120 00754de0 BW1M100 10567d10 Villager::LoadInHand(GameOSFile &)
	bool32_t LoadInHand(GameOSFile& param_1);
	// BW1W120 00754e40 BW1M100 10567ca0 Villager::SaveFishing(GameOSFile &)
	bool32_t SaveFishing(GameOSFile& param_1);
	// BW1W120 00754e60 BW1M100 10567c30 Villager::LoadFishing(GameOSFile &)
	bool32_t LoadFishing(GameOSFile& param_1);
	// BW1W120 00754e80 BW1M100 10567b50 Villager::SaveFarming(GameOSFile &)
	bool32_t SaveFarming(GameOSFile& param_1);
	// BW1W120 00754ef0 BW1M100 10567a80 Villager::LoadFarming(GameOSFile &)
	bool32_t LoadFarming(GameOSFile& param_1);
	// BW1W120 00754f60 BW1M100 10567900 Villager::SaveFootball(GameOSFile &)
	bool32_t SaveFootball(GameOSFile& param_1);
	// BW1W120 00755040 BW1M100 105677a0 Villager::LoadFootball(GameOSFile &)
	bool32_t LoadFootball(GameOSFile& param_1);
	// BW1W120 00755120 BW1M100 10567680 Villager::SaveShepherd(GameOSFile &)
	bool32_t SaveShepherd(GameOSFile& param_1);
	// BW1W120 007551c0 BW1M100 10567570 Villager::LoadShepherd(GameOSFile &)
	bool32_t LoadShepherd(GameOSFile& param_1);
	// BW1W120 00755260 BW1M100 105673b0 Villager::SaveInScript(GameOSFile &)
	bool32_t SaveInScript(GameOSFile& param_1);
	// BW1W120 00755370 BW1M100 10567210 Villager::LoadInScript(GameOSFile &)
	bool32_t LoadInScript(GameOSFile& param_1);
	// BW1W120 00755470 BW1M100 10567050 Villager::SaveScriptPos(GameOSFile &)
	bool32_t SaveScriptPos(GameOSFile& param_1);
	// BW1W120 00755580 BW1M100 10566eb0 Villager::LoadScriptPos(GameOSFile &)
	bool32_t LoadScriptPos(GameOSFile& param_1);
	// BW1W120 00755680 BW1M100 10566dd0 Villager::SaveFire(GameOSFile &)
	bool32_t SaveFire(GameOSFile& param_1);
	// BW1W120 007556f0 BW1M100 10566d00 Villager::LoadFire(GameOSFile &)
	bool32_t LoadFire(GameOSFile& param_1);
	// BW1W120 00755760 BW1M100 10566c80 Villager::SaveDiscipleNothingToDo(GameOSFile &)
	bool32_t SaveDiscipleNothingToDo(GameOSFile& param_1);
	// BW1W120 00755780 BW1M100 10566c00 Villager::LoadDiscipleNothingToDo(GameOSFile &)
	bool32_t LoadDiscipleNothingToDo(GameOSFile& param_1);
	// BW1W120 007557a0 BW1M100 10566b20 Villager::SaveTrader(GameOSFile &)
	bool32_t SaveTrader(GameOSFile& param_1);
	// BW1W120 00755810 BW1M100 10566a50 Villager::LoadTrader(GameOSFile &)
	bool32_t LoadTrader(GameOSFile& param_1);
	// BW1W120 00755880 BW1M100 105669e0 Villager::SaveInspectObject(GameOSFile &)
	bool32_t SaveInspectObject(GameOSFile& param_1);
	// BW1W120 007558a0 BW1M100 10566970 Villager::LoadInspectObject(GameOSFile &)
	bool32_t LoadInspectObject(GameOSFile& param_1);
	// BW1W120 007558c0 BW1M100 10566930 Villager::SaveReaction(GameOSFile &)
	bool32_t SaveReaction(GameOSFile& param_1);
	// BW1W120 007558d0 BW1M100 105668f0 Villager::LoadReaction(GameOSFile &)
	bool32_t LoadReaction(GameOSFile& param_1);
	// BW1W120 007558e0 BW1M100 105667d0 Villager::SaveClearArea(GameOSFile &)
	bool32_t SaveClearArea(GameOSFile& param_1);
	// BW1W120 00755980 BW1M100 105666c0 Villager::LoadClearArea(GameOSFile &)
	bool32_t LoadClearArea(GameOSFile& param_1);
	// BW1W120 00755a20 BW1M100 105665e0 Villager::SaveBreeder(GameOSFile &)
	bool32_t SaveBreeder(GameOSFile& param_1);
	// BW1W120 00755a80 BW1M100 10566510 Villager::LoadBreeder(GameOSFile &)
	bool32_t LoadBreeder(GameOSFile& param_1);
	// BW1W120 00755ae0 BW1M100 105664a0 Villager::SaveForesting(GameOSFile &)
	bool32_t SaveForesting(GameOSFile& param_1);
	// BW1W120 00755b00 BW1M100 10566430 Villager::LoadForesting(GameOSFile &)
	bool32_t LoadForesting(GameOSFile& param_1);
	// BW1W120 00755b20 BW1M100 105663a0 Villager::SaveFootPath(GameOSFile &)
	bool32_t SaveFootPath(GameOSFile& param_1);
	// BW1W120 00755b50 BW1M100 10566310 Villager::LoadFootPath(GameOSFile &)
	bool32_t LoadFootPath(GameOSFile& param_1);
	// BW1W120 00755b80 BW1M100 105661e0 Villager::SaveInspectionReaction(GameOSFile &)
	bool32_t SaveInspectionReaction(GameOSFile& param_1);
	// BW1W120 00755c20 BW1M100 105660c0 Villager::LoadInspectionReaction(GameOSFile &)
	bool32_t LoadInspectionReaction(GameOSFile& param_1);
	// BW1W120 00755cc0 BW1M100 10565f90 Villager::SaveMagicTreeReaction(GameOSFile &)
	bool32_t SaveMagicTreeReaction(GameOSFile& param_1);
	// BW1W120 00755d60 BW1M100 10565e70 Villager::LoadMagicTreeReaction(GameOSFile &)
	uint32_t LoadMagicTreeReaction(GameOSFile& param_1);
	// BW1W120 00755e00 BW1M100 10565d40 Villager::SaveHideInBuilding(GameOSFile &)
	uint32_t SaveHideInBuilding(GameOSFile& param_1);
	// BW1W120 00755ea0 BW1M100 10565c20 Villager::LoadHideInBuilding(GameOSFile &)
	uint32_t LoadHideInBuilding(GameOSFile& param_1);
	// BW1W120 00755f40 BW1M100 10565b50 Villager::SaveShieldReaction(GameOSFile &)
	uint32_t SaveShieldReaction(GameOSFile& param_1);
	// BW1W120 00755fa0 BW1M100 10565a80 Villager::LoadShieldReaction(GameOSFile &)
	uint32_t LoadShieldReaction(GameOSFile& param_1);
	// BW1W120 00756000 BW1M100 1000a990 Villager::SetVillagerDisciple(GameThing *, VILLAGER_DISCIPLE, int)
	uint32_t SetVillagerDisciple(GameThing* param_1, VILLAGER_DISCIPLE param_2, int param_3);
	// BW1W120 00756170 BW1M100 10565770 Villager::ShowDiscipleIcon(VILLAGER_DISCIPLE)
	void ShowDiscipleIcon(VILLAGER_DISCIPLE param_1);
	// BW1W120 00756230 BW1M100 10565730 Villager::DebugValidateState(void)
	void DebugValidateState();
	// BW1W120 00756240 BW1M100 105655e0 Villager::ForceMoveVillagerToAbode(Abode*)
	void ForceMoveVillagerToAbode(Abode* abode);
	// BW1W120 00756520 BW1M100 10565010 Villager::LookAtPreviousStateReactToTownEmergency(void)
	VILLAGER_STATES LookAtPreviousStateReactToTownEmergency();
	// BW1W120 00756530 BW1M100 10564fd0 Villager::SetTown(Town*)
	void SetTown(Town* town);
	// BW1W120 00756540 BW1M100 10564f50 Villager::ScriptInCrowd(void)
	bool32_t ScriptInCrowd();
	// BW1W120 00756570 BW1M100 10564f10 Villager::SaveLanded(GameOSFile &)
	bool32_t SaveLanded(GameOSFile& param_1);
	// BW1W120 00756580 BW1M100 10564ed0 Villager::LoadLanded(GameOSFile &)
	bool32_t LoadLanded(GameOSFile& param_1);
	// BW1W120 007569a0 BW1M100 10564420 Villager::MoveToObjectValidate(void)
	void MoveToObjectValidate();
	// BW1W120 007569d0 BW1M100 10564390 Villager::MoveOnStructureValidate(void)
	void MoveOnStructureValidate();
	// BW1W120 00756a00 BW1M100 10564260 Villager::ReactionValidate(void)
	void ReactionValidate();
	// BW1W120 00756a50 BW1M100 10564180 Villager::SexValidate(void)
	void SexValidate();
	// BW1W120 00756a80 BW1M100 10564120 Villager::WallhugAndReactionValidate(void)
	void WallhugAndReactionValidate();
	// BW1W120 00756aa0 BW1M100 10564040 Villager::ClosestObjectValidate(void)
	void ClosestObjectValidate();
	// BW1W120 00756bc0 BW1M100 inlined Villager::FUN_00756bc0(float)
	void FUN_00756bc0(float param_1);
	// BW1W120 00756be0 BW1M100 10563bb0 Villager::FindChildrenAndOrphanThem(void)
	void FindChildrenAndOrphanThem();
	// BW1W120 00756d30 BW1M100 10573250 Villager::InteractDecideWhatToDoForOtherVillager(void)
	void InteractDecideWhatToDoForOtherVillager();
	// BW1W120 00756e10 BW1M100 105731e0 Villager::InteractDecideWhatToDo(void)
	void InteractDecideWhatToDo();
	// BW1W120 00756e20 BW1M100 10573130 Villager::GetDiscipleInteractState(void)
	uint32_t GetDiscipleInteractState();
	// BW1W120 00756e80 BW1M100 1002ae20 Villager::FindCloseObjectsForInteract(class LHOrderedLinkedList<class SortedObject> *, struct MapCoords const &)
	bool32_t FindCloseObjectsForInteract(LHOrderedLinkedList<SortedObject>* param_1, const MapCoords& param_2);
	// BW1W120 00757180 BW1M100 10572de0 Villager::CheckMoveHouse(Object *)
	bool32_t CheckMoveHouse(Object* object);
	// BW1W120 00757210 BW1M100 10572cf0 Villager::CheckMoveIntoTown(Town &)
	bool32_t CheckMoveIntoTown(Town& target_town);
	// BW1W120 00757260 BW1M100 10572cb0 Villager::CheckInteractWithAnimal(void)
	bool32_t CheckInteractWithAnimal();
	// BW1W120 00757270 BW1M100 105729e0 Villager::CheckInteractWithWorshipSite(void)
	bool32_t CheckInteractWithWorshipSite();
	// BW1W120 00757420 BW1M100 10572700 Villager::CheckInteractWithAbode(void)
	bool32_t CheckInteractWithAbode();
	// BW1W120 00757590 BW1M100 105725c0 Villager::CheckInteractWithField(void)
	bool32_t CheckInteractWithField();
	// BW1W120 00757610 BW1M100 10572480 Villager::CheckInteractWithFishFarm(void)
	bool32_t CheckInteractWithFishFarm();
	// BW1W120 00757690 BW1M100 10572350 Villager::CheckInteractWithTree(void)
	bool32_t CheckInteractWithTree();
	// BW1W120 00757720 BW1M100 10572310 Villager::CheckInteractWithBall(void)
	bool32_t CheckInteractWithBall();
	// BW1W120 00757730 BW1M100 105722d0 Villager::CheckInteractWithPot(void)
	bool32_t CheckInteractWithPot();
	// BW1W120 00757740 BW1M100 10572290 Villager::CheckInteractWithRock(void)
	bool32_t CheckInteractWithRock();
	// BW1W120 00757750 BW1M100 10572240 Villager::CheckInteractWithFootBall(void)
	bool32_t CheckInteractWithFootBall();
	// BW1W120 00757760 BW1M100 105720a0 Villager::CheckInteractWithVillager(void)
	bool32_t CheckInteractWithVillager();
	// BW1W120 00757820 BW1M100 10572010 Villager::SetDiscipleFollower(VILLAGER_DISCIPLE)
	void SetDiscipleFollower(VILLAGER_DISCIPLE disciple_type);
	// BW1W120 00757850 BW1M100 10571fc0 Villager::CheckInteractWithMagicLiving(void)
	bool32_t CheckInteractWithMagicLiving();
	// BW1W120 007578c0 BW1M100 10573fc0 Villager::ChildFollowsMother(void)
	bool32_t ChildFollowsMother();
	// BW1W120 007579f0 BW1M100 10573ed0 Villager::ChildGotoCreche(void)
	uint32_t ChildGotoCreche();
	// BW1W120 00757c80 BW1M100 1006d8c0 Villager::ChildAtCreche(void)
	bool32_t ChildAtCreche();
	// BW1W120 00757e80 BW1M100 10084940 Villager::CheckChild(void)
	uint32_t CheckChild();
	// BW1W120 00757ec0 BW1M100 10573a80 Villager::ChildDecideWhatToDo(void)
	bool32_t ChildDecideWhatToDo();
	// BW1W120 00757f00 BW1M100 10573a20 Villager::CheckChildActivity(void)
	bool32_t CheckChildActivity();
	// BW1W120 00757f10 BW1M100 10573990 Villager::ChildBecomesAdult(void)
	bool ChildBecomesAdult();
	// BW1W120 00757f40 BW1M100 10095500 Villager::IsMotherAlive(void)
	bool32_t IsMotherAlive();
	// BW1W120 00757f90 BW1M100 10573570 Villager::CheckNeedNewAbode(void)
	bool32_t CheckNeedNewAbode();
	// BW1W120 00758080 BW1M100 105734a0 Villager::MoveVillagerToAbode(Abode*)
	void MoveVillagerToAbode(Abode* abode);
	// BW1W120 007580d0 BW1M100 105733f0 Villager::MakeChildOrphaned(Villager *)
	uint32_t MakeChildOrphaned(Villager* dead_villager);
	// BW1W120 00758180 BW1M100 10096f90 Villager::CheckNeededForCivic(void)
	bool32_t CheckNeededForCivic();
	// BW1W120 007581a0 BW1M100 1007dae0 Villager::CheckNeededForTownDesire(void)
	uint32_t CheckNeededForTownDesire();
	// BW1W120 007581e0 BW1M100 10021390 Villager::GetOwnDesiresTrigger(void)
	float GetOwnDesiresTrigger();
	// BW1W120 007582f0 BW1M100 10576e60 Villager::CheckNeededForHarvest(void)
	bool32_t CheckNeededForHarvest();
	// BW1W120 00758340 BW1M100 10098600 Villager::CheckNeededForBuilding(void)
	bool32_t CheckNeededForBuilding();
	// BW1W120 00758390 BW1M100 10576a80 Villager::RunAwayFromObjectReaction(void)
	bool32_t RunAwayFromObjectReaction();
	// BW1W120 007584b0 BW1M100 10576950 Villager::SetupBuildingObject(BuildingSite *)
	bool32_t SetupBuildingObject(BuildingSite* building_site);
	// BW1W120 00758530 BW1M100 105767a0 Villager::SetupBuildingObject(MultiMapFixed *)
	bool32_t SetupBuildingObject(MultiMapFixed* building_site);
	// BW1W120 007585a0 BW1M100 10576630 Villager::SetupWaitForWood(BuildingSite *)
	bool32_t SetupWaitForWood(BuildingSite* param_1);
	// BW1W120 007586b0 BW1M100 10576590 Villager::WaitForWood(void)
	bool32_t WaitForWood();
	// BW1W120 007586e0 BW1M100 105763c0 Villager::SetupGetBuildingSupplies(BuildingSite *)
	bool32_t SetupGetBuildingSupplies(BuildingSite* param_1);
	// BW1W120 007587d0 BW1M100 10576150 Villager::GotoStoragePitForBuildingMaterials(BuildingSite *)
	bool32_t GotoStoragePitForBuildingMaterials(BuildingSite* param_1);
	// BW1W120 00758960 BW1M100 10576080 Villager::GotoWorkshopForBuildingMaterials(BuildingSite *)
	bool32_t GotoWorkshopForBuildingMaterials(BuildingSite* building_site);
	// BW1W120 00758990 BW1M100 10575f70 Villager::ArrivesAtStoragePitForBuildingMaterials(void)
	uint32_t ArrivesAtStoragePitForBuildingMaterials();
	// BW1W120 00758a00 BW1M100 10575d70 Villager::GotoBuildingSite(BuildingSite *)
	bool32_t GotoBuildingSite(BuildingSite* param_1);
	// BW1W120 00758af0 BW1M100 10575ab0 Villager::ArrivesAtBuildingSite(void)
	uint32_t ArrivesAtBuildingSite();
	// BW1W120 00758c40 BW1M100 10575760 Villager::Building(void)
	bool32_t Building();
	// BW1W120 00758e20 BW1M100 10575700 Villager::GetWoodUsedPerBuild(void)
	float GetWoodUsedPerBuild();
	// BW1W120 00758e30 BW1M100 10098500 Villager::CheckSatisfyAbodesDesire(void)
	bool32_t CheckSatisfyAbodesDesire();
	// BW1W120 00758e90 BW1M100 105755c0 Villager::CheckSatisfyCivicBuildings(void)
	bool32_t CheckSatisfyCivicBuildings();
	// BW1W120 00758ef0 BW1M100 10575580 Villager::ArrivesAtRockForWood(void)
	bool32_t ArrivesAtRockForWood();
	// BW1W120 00758f00 BW1M100 10575420 Villager::GotWoodFromRock(void)
	bool32_t GotWoodFromRock();
	// BW1W120 00758f60 BW1M100 105751d0 Villager::ReenterBuildingState(void)
	bool32_t ReenterBuildingState();
	// BW1W120 007590a0 BW1M100 10574e20 Villager::CheckForClearArea(MapCoords const &, float)
	bool32_t CheckForClearArea(const MapCoords& param_1, float param_2);
	// BW1W120 007592e0 BW1M100 10574d90 Villager::ArriveAtPushObject(void)
	bool32_t ArriveAtPushObject();
	// BW1W120 00759330 BW1M100 10574c20 Villager::CheckSatisfyToBuild(void)
	bool32_t CheckSatisfyToBuild();
	// BW1W120 00759370 BW1M100 10574ad0 Villager::CheckSatisfyToRepair(void)
	bool32_t CheckSatisfyToRepair();
	// BW1W120 007593a0 BW1M100 10574980 Villager::CheckSatisfySupplyWorkshop(void)
	bool32_t CheckSatisfySupplyWorkshop();
	// BW1W120 00759450 BW1M100 10574800 Villager::ArrivesAtStoragePitForWorkshopMaterials(void)
	bool32_t ArrivesAtStoragePitForWorkshopMaterials();
	// BW1W120 00759520 BW1M100 10574670 Villager::ArrivesAtWorkshopForDropOff(void)
	bool32_t ArrivesAtWorkshopForDropOff();
	// BW1W120 007595e0 BW1M100 10574610 Villager::CheckForScaffoldForBuildingSite(BuildingSite *)
	uint32_t CheckForScaffoldForBuildingSite(BuildingSite* param_1);
	// BW1W120 007595f0 BW1M100 105745d0 Villager::IsScaffoldValid(void)
	bool32_t IsScaffoldValid();
	// BW1W120 00759600 BW1M100 10574580 Villager::ExitBringScaffoldToBuildingSite(unsigned char)
	bool32_t ExitBringScaffoldToBuildingSite(unsigned char param_1);
	// BW1W120 00759610 BW1M100 10574300 Villager::GetPosForPushObject(Object *, MapCoords &)
	MapCoords* GetPosForPushObject(Object* param_1, MapCoords* param_2);
	// BW1W120 00759750 BW1M100 10574220 Villager::EnterBuilding(unsigned char, unsigned char)
	bool32_t EnterBuilding(unsigned char param_1, unsigned char param_2);
	// BW1W120 007597b0 BW1M100 10574130 Villager::ExitBuilding(unsigned char)
	bool32_t ExitBuilding(unsigned char param_1);
	// BW1W120 00759890 BW1M100 105775d0 Villager::FindImmediateNeighbour(void)
	Villager* FindImmediateNeighbour();
	// BW1W120 00759930 BW1M100 10577560 Villager::DanceForEditingPurposes(void)
	bool32_t DanceForEditingPurposes();
	// BW1W120 00759960 BW1M100 105774f0 Villager::DanceButNotWorship(void)
	bool32_t DanceButNotWorship();
	// BW1W120 00759990 BW1M100 10577430 Villager::MoveToDancePos(void)
	bool32_t MoveToDancePos();
	// BW1W120 00759a00 BW1M100 105772e0 Villager::ControlledByCreature(void)
	bool32_t ControlledByCreature();
	// BW1W120 00759a90 BW1M100 105770d0 Villager::ExitControlledByCreature(unsigned char)
	bool32_t ExitControlledByCreature(unsigned char state);
	// BW1W120 00759bf0 BW1M100 105783f0 Villager::FarmerLookForField(void)
	bool32_t FarmerLookForField();
	// BW1W120 00759c00 BW1M100 10578330 Villager::VillagerBecomesFarmer(Field *)
	bool32_t VillagerBecomesFarmer(Field* field);
	// BW1W120 00759c40 BW1M100 10578150 Villager::SetFarmerGotoField(Field *, int)
	bool32_t SetFarmerGotoField(Field* param_1, int param_2);
	// BW1W120 00759d20 BW1M100 10004ad0 Villager::FarmerArrivesAtFarm(void)
	bool32_t FarmerArrivesAtFarm();
	// BW1W120 00759e40 BW1M100 10578000 Villager::FarmerDigsUpCrop(void)
	bool32_t FarmerDigsUpCrop();
	// BW1W120 00759ec0 BW1M100 10577f20 Villager::FarmerPlantsCrop(void)
	bool32_t FarmerPlantsCrop();
	// BW1W120 00759f30 BW1M100 105777f0 Villager::CheckSatisfyFoodDesire(void)
	bool32_t CheckSatisfyFoodDesire();
	// BW1W120 0075a250 BW1M100 1009d580 Villager::EnterFarming(unsigned char, unsigned char)
	bool32_t EnterFarming(unsigned char param_1, unsigned char param_2);
	// BW1W120 0075a2a0 BW1M100 1009b430 Villager::ExitFarming(unsigned char)
	bool32_t ExitFarming(unsigned char param_1);
	// BW1W120 0075a3d0 BW1M100 1057a120 Villager::DecideHowToPutOutFire(FireEffect *)
	bool32_t DecideHowToPutOutFire(FireEffect* param_1);
	// BW1W120 0075a760 Villager::FUN_0075a760(void)
	void FUN_0075a760();
	// BW1W120 0075a770 BW1M100 10579a00 Villager::SetupMoveAroundFire(MapCoords const &, VILLAGER_STATES)
	bool32_t SetupMoveAroundFire(const MapCoords& pos, VILLAGER_STATES state);
	// BW1W120 0075a7e0 BW1M100 105796c0 Villager::MoveAroundFire(void)
	uint32_t MoveAroundFire();
	// BW1W120 0075aa90 BW1M100 10579520 Villager::GetFireFightingPos(FireEffect *, MapCoords *)
	bool32_t GetFireFightingPos(FireEffect* param_1, MapCoords* param_2);
	// BW1W120 0075ac50 BW1M100 10579150 Villager::PutOutFireByBeating(void)
	bool32_t PutOutFireByBeating();
	// BW1W120 0075ad90 BW1M100 105790d0 Villager::IsValidFire(FireEffect *)
	bool32_t IsValidFire(FireEffect* fire_effect);
	// BW1W120 0075adc0 BW1M100 10578f40 Villager::EnterPutOutFire(unsigned char, unsigned char)
	bool32_t EnterPutOutFire(unsigned char param_1, unsigned char param_2);
	// BW1W120 0075ae80 BW1M100 10578da0 Villager::ExitPutOutFire(unsigned char)
	bool32_t ExitPutOutFire(unsigned char param_1);
	// BW1W120 0075af30 BW1M100 10578cc0 Villager::EnterOnFire(unsigned char, unsigned char)
	bool32_t EnterOnFire(unsigned char param_1, unsigned char param_2);
	// BW1W120 0075af80 BW1M100 10578bd0 Villager::ExitOnFire(unsigned char)
	bool32_t ExitOnFire(unsigned char fire_effect);
	// BW1W120 0075afe0 BW1M100 10578b60 Villager::PutOutFireWithWater(void)
	bool32_t PutOutFireWithWater();
	// BW1W120 0075b000 BW1M100 10578af0 Villager::GetWaterToPutOutFire(void)
	bool32_t GetWaterToPutOutFire();
	// BW1W120 0075b020 BW1M100 10578900 Villager::StopFireFighting(void)
	bool32_t StopFireFighting();
	// BW1W120 0075b170 BW1M100 105787c0 Villager::SetupOnFire(FireEffect *)
	bool32_t SetupOnFire(FireEffect* new_fire_effect);
	// BW1W120 0075b1e0 BW1M100 105785a0 Villager::OnFire(void)
	bool32_t OnFire();
	// BW1W120 0075b3d0 BW1M100 105784e0 Villager::FinishBeingOnFire(void)
	bool32_t FinishBeingOnFire();
	// BW1W120 0075b4c0 BW1M100 1057a800 Villager::FishermanLookForWater(void)
	bool32_t FishermanLookForWater();
	// BW1W120 0075b510 BW1M100 1057a710 Villager::VillagerBecomesFisherman(void)
	bool32_t VillagerBecomesFisherman();
	// BW1W120 0075b560 BW1M100 1057a5b0 Villager::VillagerBecomesFisherman(FishFarm *)
	bool32_t VillagerBecomesFisherman(FishFarm* fish_farm);
	// BW1W120 0075b5d0 BW1M100 1057a410 Villager::FishermanArrivesAtFishing(void)
	bool32_t FishermanArrivesAtFishing();
	// BW1W120 0075b670 BW1M100 1057a390 Villager::IsAtValidFishingPos(void)
	bool32_t IsAtValidFishingPos();
	// BW1W120 0075b6a0 BW1M100 1001b120 Villager::Fishing(void)
	bool32_t Fishing();
	// BW1W120 0075b820 BW1M100 1057a240 Villager::EnterFishing(unsigned char, unsigned char)
	bool32_t EnterFishing(unsigned char new_state, unsigned char old_state);
	// BW1W120 0075b880 BW1M100 1009acc0 Villager::ExitFishing(unsigned char)
	bool32_t ExitFishing(unsigned char state);
	// BW1W120 0075b940 BW1M100 1057b620 Villager::ShowPoisoned(void)
	bool ShowPoisoned();
	// BW1W120 0075b990 BW1M100 1000a640 Villager::ChangeStateToFindFoodToEat(void)
	bool ChangeStateToFindFoodToEat();
	// BW1W120 0075baf0 BW1M100 1057b4f0 Villager::CheckHungryAtHome(void)
	bool32_t CheckHungryAtHome();
	// BW1W120 0075bb00 BW1M100 1057b400 Villager::GetDesireToPickupFood(void)
	bool32_t GetDesireToPickupFood();
	// BW1W120 0075bb50 BW1M100 10087950 Villager::GetDesireForFood(void)
	float GetDesireForFood();
	// BW1W120 0075bba0 BW1M100 100214f0 Villager::GetDesireForLife(void)
	void GetDesireForLife();
	// BW1W120 0075bbc0 BW1M100 100285a0 Villager::GetLifeDesireFromLife(float)
	float GetLifeDesireFromLife(float life);
	// BW1W120 0075bc00 BW1M100 100035f0 Villager::GetAmountOfFoodRequiredForMeal(void)
	uint32_t GetAmountOfFoodRequiredForMeal();
	// BW1W120 0075bc20 BW1M100 1009ae40 Villager::GetAmountOfFoodToEat(void)
	uint32_t GetAmountOfFoodToEat();
	// BW1W120 0075bcc0 BW1M100 100577f0 Villager::CheckHungry(void)
	bool CheckHungry();
	// BW1W120 0075bf00 BW1M100 10096d50 Villager::CheckSatisfyOwnFoodDesire(void)
	bool32_t CheckSatisfyOwnFoodDesire();
	// BW1W120 0075bf20 BW1M100 1057ab30 Villager::EatFoodHeld(void)
	bool32_t EatFoodHeld();
	// BW1W120 0075c000 BW1M100 1057aaa0 Villager::EatFood(void)
	bool32_t EatFood();
	// BW1W120 0075c040 BW1M100 1057a9c0 Villager::GetFoodFromHome(unsigned long)
	bool32_t GetFoodFromHome(unsigned long food_amount);
	// BW1W120 0075c090 BW1M100 1057a900 Villager::EatFoodAtHome(void)
	bool32_t EatFoodAtHome();
	// BW1W120 0075c0f0 BW1M100 1057a8c0 Villager::HomelessEatDinner(void)
	bool32_t HomelessEatDinner();
	// BW1W120 0075d130 BW1M100 10584d00 Villager::AssignFootballSubState(void)
	void AssignFootballSubState();
	// BW1W120 0075d170 BW1M100 10583980 Villager::AssignFootballAttackerSubState(void)
	void AssignFootballAttackerSubState();
	// BW1W120 0075d230 BW1M100 10582f50 Villager::FootballAttacker(void)
	bool32_t FootballAttacker();
	// BW1W120 0075d2d0 BW1M100 10582d90 Villager::FootballAttackerShootProcess(Football *)
	void FootballAttackerShootProcess(Football* param_1);
	// BW1W120 0075d3a0 BW1M100 10582b70 Villager::FootballAttackerPassProcess(Football *)
	void FootballAttackerPassProcess(Football* param_1);
	// BW1W120 0075d500 BW1M100 10582920 Villager::FootballAttackerLobNearGoalProcess(Football *)
	void FootballAttackerLobNearGoalProcess(Football* param_1);
	// BW1W120 0075d670 BW1M100 10582630 Villager::FootballAttackerDribbleProcess(Football *)
	void FootballAttackerDribbleProcess(Football* param_1);
	// BW1W120 0075d850 BW1M100 105823a0 Villager::FootballAttackerMoveToBePassedProcess(Football *)
	void FootballAttackerMoveToBePassedProcess(Football* param_1);
	// BW1W120 0075da90 BW1M100 105821f0 Villager::FootballAttackerGoToBallProcess(Football *)
	void FootballAttackerGoToBallProcess(Football* param_1);
	// BW1W120 0075db80 BW1M100 105820e0 Villager::FootballAttackerGoHomeProcess(Football *)
	void FootballAttackerGoHomeProcess(Football* param_1);
	// BW1W120 0075dbd0 BW1M100 10582010 Villager::FootballAttackerIdleProcess(Football *)
	void FootballAttackerIdleProcess(Football* param_1);
	// BW1W120 0075dc20 BW1M100 10581dd0 Villager::FootballAttackerShootPriority(Football *)
	float FootballAttackerShootPriority(Football* param_1);
	// BW1W120 0075dd80 BW1M100 10581d30 Villager::FootballAttackerPassPriority(Football *)
	float FootballAttackerPassPriority(Football* param_1);
	// BW1W120 0075ddc0 BW1M100 10581cd0 Villager::FootballAttackerLobNearGoalPriority(Football *)
	float FootballAttackerLobNearGoalPriority(Football* param_1);
	// BW1W120 0075ddd0 BW1M100 10581b90 Villager::FootballAttackerDribblePriority(Football *)
	float FootballAttackerDribblePriority(Football* param_1);
	// BW1W120 0075de70 BW1M100 10581aa0 Villager::FootballAttackerMoveToBePassedPriority(Football *)
	float FootballAttackerMoveToBePassedPriority(Football* param_1);
	// BW1W120 0075def0 BW1M100 10581a40 Villager::FootballAttackerGoToBallPriority(Football *)
	float FootballAttackerGoToBallPriority(Football* param_1);
	// BW1W120 0075df00 BW1M100 105818f0 Villager::FootballAttackerGoHomePriority(Football *)
	float FootballAttackerGoHomePriority(Football* param_1);
	// BW1W120 0075dfb0 BW1M100 10581740 Villager::FootballAttackerIdlePriority(Football *)
	float FootballAttackerIdlePriority(Football* param_1);
	// BW1W120 0075e0b0 BW1M100 105803c0 Villager::AssignFootballDefenderSubState(void)
	void AssignFootballDefenderSubState();
	// BW1W120 0075e170 BW1M100 1057f990 Villager::FootballDefender(void)
	bool32_t FootballDefender();
	// BW1W120 0075e210 BW1M100 1057f760 Villager::FootballDefenderSaveProcess(Football *)
	void FootballDefenderSaveProcess(Football* param_1);
	// BW1W120 0075e370 BW1M100 1057f6f0 Villager::FootballDefenderClearProcess(Football *)
	void FootballDefenderClearProcess(Football* football);
	// BW1W120 0075e380 BW1M100 1057f400 Villager::FootballDefenderDribbleProcess(Football *)
	void FootballDefenderDribbleProcess(Football* param_1);
	// BW1W120 0075e560 BW1M100 1057f340 Villager::FootballDefenderMarkProcess(Football *)
	void FootballDefenderMarkProcess(Football* param_1);
	// BW1W120 0075e5a0 BW1M100 1057f190 Villager::FootballDefenderGoToBallProcess(Football *)
	void FootballDefenderGoToBallProcess(Football* param_1);
	// BW1W120 0075e690 BW1M100 1057f080 Villager::FootballDefenderGoHomeProcess(Football *)
	void FootballDefenderGoHomeProcess(Football* param_1);
	// BW1W120 0075e6e0 BW1M100 1057efb0 Villager::FootballDefenderIdleProcess(Football *)
	void FootballDefenderIdleProcess(Football* param_1);
	// BW1W120 0075e730 BW1M100 1057ed90 Villager::FootballDefenderPassProcess(Football *)
	void FootballDefenderPassProcess(Football* param_1);
	// BW1W120 0075e890 BW1M100 1057ed10 Villager::FootballDefenderSavePriority(Football *)
	float FootballDefenderSavePriority(Football* param_1);
	// BW1W120 0075e8b0 BW1M100 1057ec90 Villager::FootballDefenderClearPriority(Football *)
	float FootballDefenderClearPriority(Football* param_1);
	// BW1W120 0075e8d0 BW1M100 1057eb50 Villager::FootballDefenderDribblePriority(Football *)
	float FootballDefenderDribblePriority(Football* param_1);
	// BW1W120 0075e970 BW1M100 1057eae0 Villager::FootballDefenderMarkPriority(Football *)
	float FootballDefenderMarkPriority(Football* param_1);
	// BW1W120 0075e990 BW1M100 1057ea80 Villager::FootballDefenderGoToBallPriority(Football *)
	float FootballDefenderGoToBallPriority(Football* param_1);
	// BW1W120 0075e9a0 BW1M100 1057ea10 Villager::FootballDefenderGoHomePriority(Football *)
	float FootballDefenderGoHomePriority(Football* param_1);
	// BW1W120 0075e9b0 BW1M100 1057e990 Villager::FootballDefenderIdlePriority(Football *)
	float FootballDefenderIdlePriority(Football* param_1);
	// BW1W120 0075e9d0 BW1M100 1057e8f0 Villager::FootballDefenderPassPriority(Football *)
	float FootballDefenderPassPriority(Football* param_1);
	// BW1W120 0075ea10 BW1M100 1057dfd0 Villager::FootballGoalie(void)
	bool32_t FootballGoalie();
	// BW1W120 0075eab0 BW1M100 1057cde0 Villager::AssignFootballGoalieSubState(void)
	void AssignFootballGoalieSubState();
	// BW1W120 0075eb70 BW1M100 1057cc00 Villager::FootballGoalieSaveProcess(Football *)
	void FootballGoalieSaveProcess(Football* param_1);
	// BW1W120 0075ec50 BW1M100 1057cb90 Villager::FootballGoalieClearProcess(Football *)
	void FootballGoalieClearProcess(Football* football);
	// BW1W120 0075ec60 BW1M100 1057ca90 Villager::FootballGoalieLookProcess(Football *)
	void FootballGoalieLookProcess(Football* param_1);
	// BW1W120 0075ecd0 BW1M100 1057c8e0 Villager::FootballGoalieGoToBallProcess(Football *)
	void FootballGoalieGoToBallProcess(Football* param_1);
	// BW1W120 0075edb0 BW1M100 1057c7e0 Villager::FootballGoalieGoHomeProcess(Football *)
	void FootballGoalieGoHomeProcess(Football* param_1);
	// BW1W120 0075ee00 BW1M100 1057c770 Villager::FootballGoalieIdleProcess(Football *)
	void FootballGoalieIdleProcess(Football* football);
	// BW1W120 0075ee10 BW1M100 1057c4c0 Villager::FootballGoaliePassProcess(Football *)
	void FootballGoaliePassProcess(Football* param_1);
	// BW1W120 0075efc0 BW1M100 1057c450 Villager::FootballGoalieSavePriority(Football *)
	float FootballGoalieSavePriority(Football* param_1);
	// BW1W120 0075efe0 BW1M100 1057c3e0 Villager::FootballGoalieClearPriority(Football *)
	float FootballGoalieClearPriority(Football* param_1);
	// BW1W120 0075f000 BW1M100 1057c370 Villager::FootballGoalieLookPriority(Football *)
	float FootballGoalieLookPriority(Football* param_1);
	// BW1W120 0075f020 BW1M100 1057c310 Villager::FootballGoalieGoToBallPriority(Football *)
	float FootballGoalieGoToBallPriority(Football* param_1);
	// BW1W120 0075f030 BW1M100 1057c2a0 Villager::FootballGoalieGoHomePriority(Football *)
	float FootballGoalieGoHomePriority(Football* param_1);
	// BW1W120 0075f040 BW1M100 1057c230 Villager::FootballGoalieIdlePriority(Football *)
	float FootballGoalieIdlePriority(Football* param_1);
	// BW1W120 0075f060 BW1M100 1057c190 Villager::FootballGoaliePassPriority(Football *)
	float FootballGoaliePassPriority(Football* param_1);
	// BW1W120 0075f070 BW1M100 1057c0c0 Villager::FootballerIsTouchingBallPrecondition(Football *)
	bool FootballerIsTouchingBallPrecondition(Football* param_1);
	// BW1W120 0075f0a0 BW1M100 1057bff0 Villager::FootballerIsNotTouchingBallPrecondition(Football *)
	bool FootballerIsNotTouchingBallPrecondition(Football* param_1);
	// BW1W120 0075f0d0 BW1M100 1057bf50 Villager::FootballerIsNearestBallPrecondition(Football *)
	bool FootballerIsNearestBallPrecondition(Football* param_1);
	// BW1W120 0075f100 BW1M100 1057bea0 Villager::FootballerIsNotNearestBallPrecondition(Football *)
	bool FootballerIsNotNearestBallPrecondition(Football* param_1);
	// BW1W120 0075f130 BW1M100 1057bda0 Villager::FootballerIsAtHomePrecondition(Football *)
	bool32_t FootballerIsAtHomePrecondition(Football* param_1);
	// BW1W120 0075f190 BW1M100 1057bc90 Villager::FootballerIsNotAtHomePrecondition(Football *)
	bool32_t FootballerIsNotAtHomePrecondition(Football* param_1);
	// BW1W120 0075f1f0 BW1M100 1057bbe0 Villager::FootballerIsQuiteNearBallPrecondition(Football *)
	bool32_t FootballerIsQuiteNearBallPrecondition(Football* param_1);
	// BW1W120 0075f230 BW1M100 1057bb30 Villager::FootballerIsNotQuiteNearBallPrecondition(Football *)
	bool32_t FootballerIsNotQuiteNearBallPrecondition(Football* param_1);
	// BW1W120 0075f270 BW1M100 1057ba80 Villager::StartMoveToPickUpBallForDeadBall(void)
	bool32_t StartMoveToPickUpBallForDeadBall();
	// BW1W120 0075f2c0 BW1M100 1057b9e0 Villager::ArrivedAtPickUpBallForDeadBall(void)
	bool32_t ArrivedAtPickUpBallForDeadBall();
	// BW1W120 0075f2f0 BW1M100 1057b970 Villager::ArrivedAtPutDownBallForDeadBallStart(void)
	bool32_t ArrivedAtPutDownBallForDeadBallStart();
	// BW1W120 0075f300 BW1M100 1057b840 Villager::ArrivedAtPutDownBallForDeadBallEnd(void)
	bool32_t ArrivedAtPutDownBallForDeadBallEnd();
	// BW1W120 0075f380 BW1M100 1057b700 Villager::FootballMoveToBall(void)
	bool32_t FootballMoveToBall();
	// BW1W120 0075f4a0 BW1M100 10586060 Villager::CheckSatisfyWoodDesire(void)
	bool32_t CheckSatisfyWoodDesire();
	// BW1W120 0075f510 BW1M100 10585d60 Villager::DecideHowToGetWood(int, BigForest * *, Forest * *)
	uint32_t DecideHowToGetWood(int param_1, BigForest** param_2, Forest** param_3);
	// BW1W120 0075f710 BW1M100 10585d00 Villager::ForesterGotoForest(void)
	bool32_t ForesterGotoForest();
	// BW1W120 0075f720 BW1M100 10585be0 Villager::VillagerGotoForest(Forest *, VILLAGER_STATES)
	bool32_t VillagerGotoForest(Forest* param_1, VILLAGER_STATES param_2);
	// BW1W120 0075f7d0 BW1M100 105859d0 Villager::ForesterMoveToForest(void)
	bool32_t ForesterMoveToForest();
	// BW1W120 0075f930 BW1M100 10585830 Villager::ForesterArrivesAtForest(void)
	bool32_t ForesterArrivesAtForest();
	// BW1W120 0075f9e0 BW1M100 10585660 Villager::ArrivesAtBigForest(void)
	bool32_t ArrivesAtBigForest();
	// BW1W120 0075fab0 BW1M100 10585610 Villager::ArrivesAtBigForestForBuilding(void)
	bool32_t ArrivesAtBigForestForBuilding();
	// BW1W120 0075fac0 BW1M100 105854f0 Villager::ForesterChopsTree(void)
	bool32_t ForesterChopsTree();
	// BW1W120 0075fb40 BW1M100 10585480 Villager::ForesterChopsTreeForBuilding(void)
	bool32_t ForesterChopsTreeForBuilding();
	// BW1W120 0075fb60 BW1M100 105853f0 Villager::ForesterFinishedForestering(void)
	bool32_t ForesterFinishedForestering();
	// BW1W120 0075fb90 BW1M100 10585390 Villager::TakeWoodFromTreeForBuilding(void)
	bool32_t TakeWoodFromTreeForBuilding();
	// BW1W120 0075fba0 BW1M100 10585340 Villager::TakeWoodFromPotForBuilding(void)
	bool32_t TakeWoodFromPotForBuilding();
	// BW1W120 0075fbb0 BW1M100 10585300 Villager::TakeWoodFromPot(void)
	bool32_t TakeWoodFromPot();
	// BW1W120 0075fbc0 BW1M100 10585210 Villager::TakeWoodFromTree(void)
	bool32_t TakeWoodFromTree();
	// BW1W120 0075fc30 BW1M100 10585080 Villager::GotWoodDecideWhatToDo(void)
	bool32_t GotWoodDecideWhatToDo();
	// BW1W120 0075fd00 BW1M100 10584e30 Villager::FindTreeNearVillager(Tree * *)
	bool32_t FindTreeNearVillager(Tree** found_tree);
	// BW1W120 0075fe20 BW1M100 10584dc0 Villager::ExitForesting(unsigned char)
	bool32_t ExitForesting(unsigned char state);
	// BW1W120 0075fea0 BW1M100 10097120 Villager::HomeDecideWhatToDo(void)
	bool32_t HomeDecideWhatToDo();
	// BW1W120 0075ff80 BW1M100 1000a8c0 Villager::CheckNeededForSomething(void)
	bool32_t CheckNeededForSomething();
	// BW1W120 0075ffb0 BW1M100 105894c0 Villager::HomeNothingToDo(void)
	bool32_t HomeNothingToDo();
	// BW1W120 00760000 BW1M100 10589480 Villager::NothingToDo(void)
	bool32_t NothingToDo();
	// BW1W120 00760010 BW1M100 10096ee0 Villager::CheckNeededForSpecial(void)
	bool32_t CheckNeededForSpecial();
	// BW1W120 00760050 BW1M100 10095a70 Villager::CheckSatisfyOwnDesire(float)
	bool32_t CheckSatisfyOwnDesire(float param_1);
	// BW1W120 00760110 BW1M100 1000c610 Villager::CheckNeedsAtHome(void)
	bool32_t CheckNeedsAtHome();
	// BW1W120 00760240 BW1M100 105892c0 Villager::CheckIllAtHome(void)
	bool32_t CheckIllAtHome();
	// BW1W120 00760250 BW1M100 10589160 Villager::GoHomeDropResource(void)
	bool32_t GoHomeDropResource();
	// BW1W120 00760270 BW1M100 1009edb0 Villager::GoHome(void)
	bool32_t GoHome();
	// BW1W120 00760280 BW1M100 1009a4b0 Villager::DoGoingHome(VILLAGER_STATES, VILLAGER_STATES)
	bool32_t DoGoingHome(VILLAGER_STATES state_1, VILLAGER_STATES state_2);
	// BW1W120 007604f0 BW1M100 10588e30 Villager::GetTentPos(MapCoords&)
	Town* GetTentPos(MapCoords* coords);
	// BW1W120 007606e0 BW1M100 10588820 Villager::Landed(void)
	bool32_t Landed();
	// BW1W120 00760930 BW1M100 1000c320 Villager::ArrivesHome(void)
	uint32_t ArrivesHome();
	// BW1W120 00760b10 BW1M100 10004a80 Villager::AtHome(void)
	bool32_t AtHome();
	// BW1W120 00760b20 BW1M100 10588720 Villager::SitsDownToDinner(void)
	bool32_t SitsDownToDinner();
	// BW1W120 00760b30 BW1M100 10003aa0 Villager::GotoBedAtHome(void)
	bool32_t GotoBedAtHome();
	// BW1W120 00760b60 BW1M100 1009af60 Villager::CheckWhenGoingToBed(void)
	bool32_t CheckWhenGoingToBed();
	// BW1W120 00760c80 BW1M100 10588200 Villager::CheckGetPregnantAtHome(void)
	bool32_t CheckGetPregnantAtHome();
	// BW1W120 00760ca0 BW1M100 1000d140 Villager::CheckDeathFromOldAge(void)
	bool32_t CheckDeathFromOldAge();
	// BW1W120 00760d70 BW1M100 10023200 Villager::SleepingAtHome(void)
	bool32_t SleepingAtHome();
	// BW1W120 00760db0 BW1M100 10587f40 Villager::DoSleeping(float)
	bool32_t DoSleeping(float param_1);
	// BW1W120 00760e50 BW1M100 10587ee0 Villager::WakeUpAtHome(void)
	bool32_t WakeUpAtHome();
	// BW1W120 00760e60 BW1M100 10587dc0 Villager::StartHavingSex(void)
	bool32_t StartHavingSex();
	// BW1W120 00760ee0 BW1M100 10587cd0 Villager::HavingSex(void)
	bool32_t HavingSex();
	// BW1W120 00760f50 BW1M100 10587c50 Villager::StopHavingSex(void)
	bool32_t StopHavingSex();
	// BW1W120 00760f80 BW1M100 10587c10 Villager::StartHavingSexAtHome(void)
	bool32_t StartHavingSexAtHome();
	// BW1W120 00760f90 BW1M100 10587ac0 Villager::StartHavingSex(Villager *, VILLAGER_STATES)
	bool32_t StartHavingSex(Villager* param_1, VILLAGER_STATES param_2);
	// BW1W120 00761010 BW1M100 10587a80 Villager::HavingSexAtHome(void)
	bool32_t HavingSexAtHome();
	// BW1W120 00761020 BW1M100 10587a40 Villager::StopHavingSexAtHome(void)
	bool32_t StopHavingSexAtHome();
	// BW1W120 00761030 BW1M100 10587a00 Villager::WaitForDinner(void)
	bool32_t WaitForDinner();
	// BW1W120 00761040 BW1M100 10587960 Villager::GetPromiscuity(void)
	bool32_t GetPromiscuity();
	// BW1W120 00761070 BW1M100 105878e0 Villager::IsAvailableForSex(void)
	bool32_t IsAvailableForSex();
	// BW1W120 00761090 BW1M100 10587810 Villager::IsSexuallyActive(void)
	bool32_t IsSexuallyActive();
	// BW1W120 007610d0 BW1M100 10587790 Villager::IsPromiscious(void)
	bool32_t IsPromiscious();
	// BW1W120 00761110 BW1M100 105876a0 Villager::FindAMateAtHome(void)
	bool32_t FindAMateAtHome();
	// BW1W120 00761180 BW1M100 10587620 Villager::CheckForSexAtHome(void)
	bool32_t CheckForSexAtHome();
	// BW1W120 007611b0 BW1M100 10587570 Villager::ShallIWaitForDinner(void)
	bool32_t ShallIWaitForDinner();
	// BW1W120 007611f0 BW1M100 105874c0 Villager::HomeDeleted(void)
	void HomeDeleted();
	// BW1W120 00761220 BW1M100 10587440 Villager::MakeHomeless(void)
	bool MakeHomeless();
	// BW1W120 00761240 BW1M100 10587220 Villager::MakeHomelessNoStateChange(void)
	bool MakeHomelessNoStateChange();
	// BW1W120 00761320 BW1M100 10587160 Villager::HomelessStart(void)
	bool32_t HomelessStart();
	// BW1W120 00761360 BW1M100 10586fd0 Villager::CheckHomelessMoveIntoAbode(void)
	bool32_t CheckHomelessMoveIntoAbode();
	// BW1W120 007613f0 BW1M100 10586f90 Villager::VillagerGossips(void)
	bool32_t VillagerGossips();
	// BW1W120 00761400 BW1M100 10586ed0 Villager::SetupAfterTapOnAbode(MapCoords &, VILLAGER_STATES)
	void SetupAfterTapOnAbode(MapCoords& param_1, VILLAGER_STATES param_2);
	// BW1W120 00761440 BW1M100 10586e70 Villager::AfterTapOnAbode(void)
	bool32_t AfterTapOnAbode();
	// BW1W120 00761460 BW1M100 100955e0 Villager::CheckSatisfyRelaxation(void)
	bool32_t CheckSatisfyRelaxation();
	// BW1W120 00761490 BW1M100 1009cb70 Villager::CheckSatisfySleep(void)
	bool32_t CheckSatisfySleep();
	// BW1W120 00761510 BW1M100 10586c80 Villager::ArtifactDance(void)
	bool32_t ArtifactDance();
	// BW1W120 007615c0 BW1M100 105869b0 Villager::WaitForArtifactDance(void)
	bool32_t WaitForArtifactDance();
	// BW1W120 00761800 BW1M100 10586960 Villager::EnterWaitForArtifactDance(unsigned char, unsigned char)
	bool32_t EnterWaitForArtifactDance(unsigned char param_1, unsigned char param_2);
	// BW1W120 00761810 BW1M100 105867e0 Villager::GoHomeAndChange(void)
	bool32_t GoHomeAndChange();
	// BW1W120 007618c0 BW1M100 10586680 Villager::ChangeTribeIfRequired(TRIBE_TYPE, int)
	bool32_t ChangeTribeIfRequired(TRIBE_TYPE param_1, int param_2);
	// BW1W120 00761980 BW1M100 10586570 Villager::ExitGoHomeAndChange(unsigned char)
	bool32_t ExitGoHomeAndChange(unsigned char param_1);
	// BW1W120 00761a00 BW1M100 10586340 Villager::ChangeInfo(GVillagerInfo const *)
	bool32_t ChangeInfo(const GVillagerInfo* param_1);
	// BW1W120 00761ae0 BW1M100 10586240 Villager::SleepInTent(void)
	bool32_t SleepInTent();
	// BW1W120 00761b40 BW1M100 100957f0 Villager::ExitAtHome(unsigned char)
	bool32_t ExitAtHome(unsigned char state);
	// BW1W120 00761b70 BW1M100 10586150 Villager::GoHomeFromWorship(void)
	bool32_t GoHomeFromWorship();
	// BW1W120 00761c00 BW1M100 1058ad30 Villager::HousewifeLookForWork(void)
	bool32_t HousewifeLookForWork();
	// BW1W120 00761c10 BW1M100 1058ac90 Villager::HousewifeAtHome(void)
	bool32_t HousewifeAtHome();
	// BW1W120 00761c40 BW1M100 1058abc0 Villager::CheckNeededForHouseWork(void)
	bool32_t CheckNeededForHouseWork();
	// BW1W120 00761c90 BW1M100 1058aac0 Villager::CheckNeededToMakeDinner(void)
	// TODO: symbols.txt has QAE_N (bool) but codegen proves QAEI (bool32_t): compiled as bool32_t
	// the body matches the target exactly (no neg;sbb;neg normalization, and xor eax vs xor al).
	// Needs symbols.txt QAE_N->QAEI plus this decl -> bool32_t (dispatcher). Also unblocks
	// HousewifeAtHome (its `== 1` compare wants full eax).
	bool CheckNeededToMakeDinner();
	// BW1W120 00761ce0 BW1M100 1058a9d0 Villager::HousewifeGotoStoragePit(void)
	bool32_t HousewifeGotoStoragePit();
	// BW1W120 00761d60 BW1M100 1058a7e0 Villager::HousewifeArrivesAtStoragePit(void)
	bool32_t HousewifeArrivesAtStoragePit();
	// BW1W120 00761ea0 BW1M100 1058a700 Villager::HousewifePickupFromStoragePit(void)
	bool32_t HousewifePickupFromStoragePit();
	// BW1W120 00761f10 BW1M100 1058a630 Villager::HousewifeReturnHomeWithFood(void)
	bool32_t HousewifeReturnHomeWithFood();
	// BW1W120 00761f60 BW1M100 1058a580 Villager::HousewifeMakeDinner(void)
	bool32_t HousewifeMakeDinner();
	// BW1W120 00761fa0 BW1M100 1058a4f0 Villager::HousewifeServesDinner(void)
	bool32_t HousewifeServesDinner();
	// BW1W120 00761fc0 BW1M100 1058a450 Villager::HousewifeClearsAwayDinner(void)
	bool32_t HousewifeClearsAwayDinner();
	// BW1W120 00761ff0 BW1M100 1058a3b0 Villager::HousewifeDoesHousework(void)
	bool32_t HousewifeDoesHousework();
	// BW1W120 00762020 BW1M100 1058a0d0 Villager::HousewifeGossipsAroundStoragePit(void)
	bool32_t HousewifeGossipsAroundStoragePit();
	// BW1W120 007621a0 BW1M100 10589f60 Villager::HousewifeStartsGivingBirth(void)
	bool32_t HousewifeStartsGivingBirth();
	// BW1W120 00762430 BW1M100 10589bf0 Villager::HousewifeGivingBirth(void)
	bool32_t HousewifeGivingBirth();
	// BW1W120 007624a0 BW1M100 10589b90 Villager::HousewifeGivenBirth(void)
	bool32_t HousewifeGivenBirth();
	// BW1W120 007624c0 BW1M100 105899e0 Villager::WillHousewifeGetPregnant(Villager *)
	bool32_t WillHousewifeGetPregnant(Villager* param_1);
	// BW1W120 00762570 BW1M100 10589950 Villager::HousewifeGetsPregnant(Villager *)
	bool32_t HousewifeGetsPregnant(Villager* param_1);
	// BW1W120 007625a0 BW1M100 10589870 Villager::HousewifeCalledToMakeDinner(void)
	bool32_t HousewifeCalledToMakeDinner();
	// BW1W120 00762600 BW1M100 10589780 Villager::HousewifeAskForMeal(void)
	bool32_t HousewifeAskForMeal();
	// BW1W120 00762670 BW1M100 10589740 Villager::CheckSatisfyForChildren(void)
	bool32_t CheckSatisfyForChildren();
	// BW1W120 007626e0 BW1M100 1058ad90 Villager::CheckLeaderNeeded(void)
	bool32_t CheckLeaderNeeded();
	// BW1W120 007630e0 BW1M100 1058c1c0 Villager::IsPlaytime(void)
	bool IsPlaytime();
	// BW1W120 007630f0 BW1M100 1058c170 Villager::CheckPlaytimeAvailableToPlayPFootball(void)
	bool32_t CheckPlaytimeAvailableToPlayPFootball();
	// BW1W120 00763100 BW1M100 1058c120 Villager::CheckPlaytimeSettingUpPlayPFootball(void)
	bool32_t CheckPlaytimeSettingUpPlayPFootball();
	// BW1W120 00763110 BW1M100 1058c0d0 Villager::MoveToFootballPitchConstruction(void)
	bool32_t MoveToFootballPitchConstruction();
	// BW1W120 00763120 BW1M100 1058c070 Villager::FootballWalkToPosition(void)
	bool32_t FootballWalkToPosition();
	// BW1W120 00763130 BW1M100 100a0100 Villager::CheckSatisfyPlaytimeDesire(void)
	bool32_t CheckSatisfyPlaytimeDesire();
	// BW1W120 00763140 BW1M100 1058bf80 Villager::WaitForKickOff(void)
	bool32_t WaitForKickOff();
	// BW1W120 00763170 BW1M100 1058bee0 Villager::FootballMatchPaused(void)
	bool32_t FootballMatchPaused();
	// BW1W120 007631b0 BW1M100 1058be20 Villager::FootballMexicanWave(void)
	bool32_t FootballMexicanWave();
	// BW1W120 007631f0 BW1M100 1058bce0 Villager::FootballWatchMatch(void)
	bool32_t FootballWatchMatch();
	// BW1W120 00763280 BW1M100 1058bbe0 Villager::ExitFootball(unsigned char)
	bool32_t ExitFootball(unsigned char exit_state);
	// BW1W120 00763800 BW1M100 1001a3e0 Villager::SetupMoveToPos(MapCoords const &, VILLAGER_STATES)
	bool32_t SetupMoveToPos(const MapCoords& coord, VILLAGER_STATES end_state);
	// BW1W120 00763b40 BW1M100 105935e0 Villager::FleeingFromPredatorReaction(void)
	bool32_t FleeingFromPredatorReaction();
	// BW1W120 00763cb0 BW1M100 10593430 Villager::SetupGoAndHideInNearbyBuilding(GameThingWithPos *)
	bool32_t SetupGoAndHideInNearbyBuilding(GameThingWithPos* param_1);
	// BW1W120 00763d90 BW1M100 105931e0 Villager::GoAndHideInNearbyBuilding(void)
	bool32_t GoAndHideInNearbyBuilding();
	// BW1W120 00763f00 BW1M100 105930c0 Villager::GetAbodeToHideInAtPos(MapCoords const &)
	Abode* GetAbodeToHideInAtPos(const MapCoords& pos);
	// BW1W120 00763f80 BW1M100 10592f10 Villager::LookToSeeIfItIsSafe(void)
	bool32_t LookToSeeIfItIsSafe();
	// BW1W120 00764410 BW1M100 105924a0 Villager::PerformInspectionReaction(void)
	bool32_t PerformInspectionReaction();
	// BW1W120 00764490 BW1M100 10592220 Villager::ApproachObjectReaction(void)
	bool32_t ApproachObjectReaction();
	// BW1W120 00764610 BW1M100 10592150 Villager::InitialiseTellOthersAboutObject(void)
	bool32_t InitialiseTellOthersAboutObject();
	// BW1W120 00764650 BW1M100 10592100 Villager::TellOthersAboutInterestingObject(void)
	bool32_t TellOthersAboutInterestingObject();
	// BW1W120 00764660 BW1M100 105920b0 Villager::InitialiseLookAroundForVillagerToTell(void)
	bool32_t InitialiseLookAroundForVillagerToTell();
	// BW1W120 00764670 BW1M100 10592060 Villager::LookAroundForVillagerToTell(void)
	bool32_t LookAroundForVillagerToTell();
	// BW1W120 00764680 BW1M100 10592020 Villager::ApproachVillagerToTalkTo(void)
	bool32_t ApproachVillagerToTalkTo();
	// BW1W120 00764690 BW1M100 10591fd0 Villager::TellParticularVillagerAboutObject(void)
	bool32_t TellParticularVillagerAboutObject();
	// BW1W120 00764aa0 BW1M100 10591600 Villager::InitialiseBewilderedByMagicTreeReaction(void)
	bool32_t InitialiseBewilderedByMagicTreeReaction();
	// BW1W120 00764b50 BW1M100 10591340 Villager::PerformBewilderedByMagicTreeReaction(void)
	bool32_t PerformBewilderedByMagicTreeReaction();
	// BW1W120 00764d10 BW1M100 10591260 Villager::TurnToFaceMagicTree(void)
	bool32_t TurnToFaceMagicTree();
	// BW1W120 00764d70 BW1M100 10591140 Villager::LookAtMagicTree(void)
	bool32_t LookAtMagicTree();
	// BW1W120 00765140 BW1M100 10590b80 Villager::ApproachHandReaction(void)
	bool32_t ApproachHandReaction();
	// BW1W120 007651a0 BW1M100 10590a00 Villager::FindNearbyVillagerWhoIsntReacting(void)
	bool32_t FindNearbyVillagerWhoIsntReacting();
	// BW1W120 00765320 BW1M100 10590720 Villager::ArrivesAtPickupBallReaction(void)
	bool32_t ArrivesAtPickupBallReaction();
	// BW1W120 007653f0 BW1M100 10590650 Villager::WatchFlyingObjectReaction(void)
	bool32_t WatchFlyingObjectReaction();
	// BW1W120 00765450 BW1M100 10590520 Villager::PointAtFlyingObjectReaction(void)
	bool32_t PointAtFlyingObjectReaction();
	// BW1W120 00765870 BW1M100 1058fce0 Villager::ReactToFire(void)
	bool32_t ReactToFire();
	// BW1W120 00765e00 BW1M100 1058f550 Villager::AmazedByMagicShieldReaction(void)
	bool32_t AmazedByMagicShieldReaction();
	// BW1W120 00766130 BW1M100 1058f230 Villager::DanceWhileReacting(void)
	bool32_t DanceWhileReacting();
	// BW1W120 007662f0 BW1M100 1058eec0 Villager::GoToTeleportReaction(void)
	bool32_t GoToTeleportReaction();
	// BW1W120 00766380 BW1M100 1058ee60 Villager::GoToTeleportReactionQuickly(void)
	bool32_t GoToTeleportReactionQuickly();
	// BW1W120 00766390 BW1M100 1058ed70 Villager::ExitReactToTeleport(unsigned char)
	bool32_t ExitReactToTeleport(unsigned char state);
	// BW1W120 007663f0 BW1M100 1058eca0 Villager::TeleportReaction(void)
	bool32_t TeleportReaction();
	// BW1W120 00766680 BW1M100 1058e5f0 Villager::PointAtDeadPerson(void)
	bool32_t PointAtDeadPerson();
	// BW1W120 00766700 BW1M100 1058e420 Villager::GoTowardsDeadPerson(void)
	bool32_t GoTowardsDeadPerson();
	// BW1W120 00766810 BW1M100 1058e390 Villager::LookAtDeadPerson(void)
	bool32_t LookAtDeadPerson();
	// BW1W120 00766850 BW1M100 1058e2b0 Villager::MournDeadPerson(void)
	bool32_t MournDeadPerson();
	// BW1W120 007668e0 BW1M100 1058e1c0 Villager::FaintingReaction(void)
	bool32_t FaintingReaction();
	// BW1W120 00766910 BW1M100 1058e090 Villager::StartConfusedReaction(void)
	bool32_t StartConfusedReaction();
	// BW1W120 00766930 BW1M100 1058df30 Villager::ConfusedReaction(void)
	bool32_t ConfusedReaction();
	// BW1W120 00766a90 BW1M100 1058dac0 Villager::CrowdReaction(void)
	bool32_t CrowdReaction();
	// BW1W120 00766c60 BW1M100 1058d970 Villager::MoveTowardsObjectToLookAt(void)
	bool32_t MoveTowardsObjectToLookAt();
	// BW1W120 00766d00 BW1M100 1058d890 Villager::InitialiseImpressedReaction(void)
	bool32_t InitialiseImpressedReaction();
	// BW1W120 00766d60 BW1M100 1058d780 Villager::PerformImpressedReaction(void)
	bool32_t PerformImpressedReaction();
	// BW1W120 00766e50 BW1M100 1058d3c0 Villager::InitialiseFightReaction(void)
	bool32_t InitialiseFightReaction();
	// BW1W120 00767280 BW1M100 1058cc50 Villager::ReactToBreeder(void)
	bool32_t ReactToBreeder();
	// BW1W120 007672c0 BW1M100 1058cba0 Villager::GoAndHaveSexWith(Villager *)
	bool32_t GoAndHaveSexWith(Villager* mate);
	// BW1W120 007673a0 BW1M100 1058c890 Villager::WaitForMate(void)
	bool32_t WaitForMate();
	// BW1W120 00767410 BW1M100 1058c850 Villager::EnterDrowning(unsigned char, unsigned char)
	bool32_t EnterDrowning(unsigned char param_1, unsigned char param_2);
	// BW1W120 00767420 BW1M100 1058c810 Villager::ExitDrowning(unsigned char)
	bool32_t ExitDrowning(unsigned char param_1);
	// BW1W120 007678a0 BW1M100 10596410 Villager::InspectCreatureReaction(void)
	bool32_t InspectCreatureReaction();
	// BW1W120 00767970 BW1M100 105962d0 Villager::PerformInspectCreatureReaction(void)
	bool32_t PerformInspectCreatureReaction();
	// BW1W120 00767a00 BW1M100 10596080 Villager::ApproachCreatureReaction(void)
	bool32_t ApproachCreatureReaction();
	// BW1W120 00767ba0 BW1M100 10595f40 Villager::InitialiseRespectCreatureReaction(void)
	bool32_t InitialiseRespectCreatureReaction();
	// BW1W120 00767c80 BW1M100 10595e50 Villager::TurnToFaceCreatureReaction(void)
	bool32_t TurnToFaceCreatureReaction();
	// BW1W120 00767ce0 BW1M100 10595cf0 Villager::PerformRespectCreatureReaction(void)
	bool32_t PerformRespectCreatureReaction();
	// BW1W120 00767dc0 BW1M100 10595c30 Villager::FinishRespectCreatureReaction(void)
	bool32_t FinishRespectCreatureReaction();
	// BW1W120 00767e00 BW1M100 10595a30 Villager::FleeingFromCreatureReaction(void)
	bool32_t FleeingFromCreatureReaction();
	// BW1W120 00767f70 BW1M100 10595930 Villager::MoveTowardsCreatureReaction(void)
	bool32_t MoveTowardsCreatureReaction();
	// BW1W120 007682a0 BW1M100 10595080 Villager::CalculateNearestFreeDestination(MapCoords *)
	void CalculateNearestFreeDestination(MapCoords* param_1);
	// BW1W120 007683f0 BW1M100 10595020 Villager::UpdateAttitudeToCreature(void)
	void UpdateAttitudeToCreature();
	// BW1W120 00768400 BW1M100 10594e00 Villager::UpdateReactiveStateFromAttitudeToCreature(void)
	bool32_t UpdateReactiveStateFromAttitudeToCreature();
	// BW1W120 00768510 BW1M100 10594d70 Villager::SetupMoveToCreatureReaction(MapCoords const &, unsigned char)
	void SetupMoveToCreatureReaction(const MapCoords& param_1, unsigned char param_2);
	// BW1W120 00768680 BW1M100 105974b0 Villager::SetupScriptWanderToPos(MapCoords const &, float, unsigned short, unsigned short)
	bool32_t SetupScriptWanderToPos(const MapCoords& pos, float radius, unsigned short min_turns,
	                                unsigned short max_turns);
	// BW1W120 007686d0 BW1M100 10597370 Villager::SetupNewScriptWander(void)
	bool32_t SetupNewScriptWander();
	// BW1W120 007687f0 BW1M100 105971a0 Villager::ScriptWanderAroundPos(void)
	bool32_t ScriptWanderAroundPos();
	// BW1W120 00768970 BW1M100 10005f50 Villager::ScriptPlayAnim(void)
	bool32_t ScriptPlayAnim();
	// BW1W120 007689d0 BW1M100 1000afa0 Villager::IsScriptAnimationComplete(void)
	bool32_t IsScriptAnimationComplete();
	// BW1W120 00768a00 BW1M100 10596c60 Villager::ScriptAnimation(void)
	bool32_t ScriptAnimation();
	// BW1W120 00768a10 BW1M100 10596c20 Villager::WeakOnGround(void)
	bool32_t WeakOnGround();
	// BW1W120 00768a20 BW1M100 105969d0 Villager::ScriptGoAndMoveAlongPath(void)
	bool32_t ScriptGoAndMoveAlongPath();
	// BW1W120 00768be0 BW1M100 10598820 Villager::VillagerBecomesShepherd(Flock *)
	bool32_t VillagerBecomesShepherd(Flock* param_1);
	// BW1W120 00768c30 BW1M100 105986f0 Villager::ShepherdLookForFlock(void)
	bool32_t ShepherdLookForFlock();
	// BW1W120 00768c90 BW1M100 10598650 Villager::FindClosestFlockAnimal(void)
	bool32_t FindClosestFlockAnimal();
	// BW1W120 00768cc0 BW1M100 105984c0 Villager::ShepherdMoveFlockToWater(void)
	bool32_t ShepherdMoveFlockToWater();
	// BW1W120 00768dd0 BW1M100 10006020 Villager::ShepherdWaitForFlock(void)
	bool32_t ShepherdWaitForFlock();
	// BW1W120 00768e30 BW1M100 105981b0 Villager::ShepherdGotoFlock(void)
	bool32_t ShepherdGotoFlock();
	// BW1W120 00768ec0 BW1M100 105980a0 Villager::ShepherdTakesControlOfFlock(void)
	bool32_t ShepherdTakesControlOfFlock();
	// BW1W120 00768f20 BW1M100 10597fd0 Villager::ShepherdReleasesControlOfFlock(void)
	bool32_t ShepherdReleasesControlOfFlock();
	// BW1W120 00768f50 BW1M100 10597f10 Villager::ExitShepherding(unsigned char)
	bool32_t ExitShepherding(unsigned char param_1);
	// BW1W120 00768fb0 BW1M100 10597d80 Villager::ShepherdDecideWhatToDoWithFlock(void)
	bool32_t ShepherdDecideWhatToDoWithFlock();
	// BW1W120 00769070 BW1M100 10597cc0 Villager::ShepherdMoveFlockBack(void)
	bool32_t ShepherdMoveFlockBack();
	// BW1W120 007690d0 BW1M100 10597c80 Villager::ShepherdMoveFlockToFood(void)
	bool32_t ShepherdMoveFlockToFood();
	// BW1W120 007690e0 BW1M100 10597ae0 Villager::ShepherdTakeAnimalForSlaughter(void)
	bool32_t ShepherdTakeAnimalForSlaughter();
	// BW1W120 007691a0 BW1M100 10026690 Villager::ShepherdCheckAnimalForSlaughter(void)
	bool32_t ShepherdCheckAnimalForSlaughter();
	// BW1W120 00769390 BW1M100 10597830 Villager::ShepherdSlaughterAnimal(void)
	bool32_t ShepherdSlaughterAnimal();
	// BW1W120 00769430 BW1M100 10006770 Villager::SlaughterAnimalIsClose(float, Living *)
	bool32_t SlaughterAnimalIsClose(float param_1, Living* param_2);
	// BW1W120 00769460 BW1M100 105976d0 Villager::ShepherdFetchStray(void)
	bool32_t ShepherdFetchStray();
	// BW1W120 00769620 BW1M100 10096900 Villager::GotoStoragePitForDropOff(void)
	bool32_t GotoStoragePitForDropOff();
	// BW1W120 007696d0 BW1M100 100062f0 Villager::ArrivesAtStoragePitForDropOff(void)
	bool32_t ArrivesAtStoragePitForDropOff();
	// BW1W120 00769830 BW1M100 10096ac0 Villager::GotoStoragePitForFood(void)
	bool32_t GotoStoragePitForFood();
	// BW1W120 007698b0 BW1M100 1059c070 Villager::ArrivesAtStoragePitForFood(void)
	bool32_t ArrivesAtStoragePitForFood();
	// BW1W120 007698d0 BW1M100 1059bc90 Villager::ArrivesAtStoragePitForResource(RESOURCE_TYPE, unsigned long, VILLAGER_STATES, VILLAGER_STATES)
	bool32_t ArrivesAtStoragePitForResource(RESOURCE_TYPE param_1, unsigned long param_2, VILLAGER_STATES param_3,
	                                        VILLAGER_STATES param_4);
	// BW1W120 00769b30 BW1M100 1059bbc0 Villager::ArrivesAtHomeWithFood(void)
	bool32_t ArrivesAtHomeWithFood();
	// BW1W120 00769b80 BW1M100 1059baa0 Villager::CheckTrader(void)
	bool32_t CheckTrader();
	// BW1W120 00769c10 BW1M100 1059ba60 Villager::CheckMissionary(void)
	bool32_t CheckMissionary();
	// BW1W120 00769c20 BW1M100 1059b860 Villager::CheckTraderPickUpOrDropOff(RESOURCE_TYPE)
	bool32_t CheckTraderPickUpOrDropOff(RESOURCE_TYPE param_1);
	// BW1W120 00769d20 BW1M100 1059b730 Villager::ArrivesAtStoragePitForTraderPickUp(void)
	bool32_t ArrivesAtStoragePitForTraderPickUp();
	// BW1W120 00769dc0 BW1M100 1059b590 Villager::ArrivesAtStoragePitForTraderDropOff(void)
	bool32_t ArrivesAtStoragePitForTraderDropOff();
	// BW1W120 00769ea0 BW1M100 1059b4c0 Villager::SetTraderNothingToDo(void)
	bool32_t SetTraderNothingToDo();
	// BW1W120 00769ee0 BW1M100 1059b190 Villager::SetupBreederDisciple(void)
	bool32_t SetupBreederDisciple();
	// BW1W120 0076a1b0 BW1M100 1059b020 Villager::BreederDisciple(void)
	bool32_t BreederDisciple();
	// BW1W120 0076a220 BW1M100 1059af00 Villager::MissionaryDisciple(void)
	bool32_t MissionaryDisciple();
	// BW1W120 0076a2a0 BW1M100 1059ae60 Villager::EnterBreeder(unsigned char, unsigned char)
	bool32_t EnterBreeder(unsigned char param_1, unsigned char param_2);
	// BW1W120 0076a2d0 BW1M100 1059ae00 Villager::ExitBreeder(unsigned char)
	bool32_t ExitBreeder(unsigned char state);
	// BW1W120 0076a2f0 BW1M100 1059ac90 Villager::AtStructureRemoveResource(MultiMapFixed *, RESOURCE_TYPE, unsigned long, bool *)
	uint32_t AtStructureRemoveResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long param_3,
	                                   bool* param_4);
	// BW1W120 0076a3b0 BW1M100 100094e0 Villager::AtStructureAddResource(MultiMapFixed *, RESOURCE_TYPE, unsigned long &, bool)
	uint32_t AtStructureAddResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long& param_3,
	                                bool param_4);
	// BW1W120 0076a780 BW1M100 1059a490 Villager::Drowning(void)
	bool32_t Drowning();
	// BW1W120 0076a7e0 BW1M100 1059a340 Villager::MakeScaredStiff(void)
	bool32_t MakeScaredStiff();
	// BW1W120 0076a8b0 BW1M100 1059a2d0 Villager::ScaredStiff(void)
	bool32_t ScaredStiff();
	// BW1W120 0076a8d0 BW1M100 1059a060 Villager::VagrantStart(void)
	bool32_t VagrantStart();
	// BW1W120 0076aa60 BW1M100 1059a010 Villager::MornDeath(void)
	bool32_t MornDeath();
	// BW1W120 0076aa70 BW1M100 10599fd0 Villager::EatOutside(void)
	bool32_t EatOutside();
	// BW1W120 0076aab0 BW1M100 10599d10 Villager::SetupInspectObject(Object *)
	bool32_t SetupInspectObject(Object* param_1);
	// BW1W120 0076ac40 BW1M100 10599c00 Villager::InspectObject(void)
	bool32_t InspectObject();
	// BW1W120 0076ace0 BW1M100 10599b50 Villager::EnterSex(unsigned char, unsigned char)
	bool32_t EnterSex(unsigned char param_1, unsigned char param_2);
	// BW1W120 0076acf0 BW1M100 10599a60 Villager::SetupWander(JustWholeMapXZ &, VILLAGER_STATES)
	bool32_t SetupWander(JustWholeMapXZ& param_1, VILLAGER_STATES param_2);
	// BW1W120 0076ad80 BW1M100 10599960 Villager::ExitSex(unsigned char)
	bool32_t ExitSex(unsigned char param_1);
	// BW1W120 0076b030 BW1M100 1000ab40 Villager::IsInACreaturesHand(void)
	bool32_t IsInACreaturesHand();
	// BW1W120 0076b060 BW1M100 10599640 Villager::SetupWaitForCounter(unsigned short, VILLAGER_STATES)
	bool32_t SetupWaitForCounter(unsigned short counter, VILLAGER_STATES state);
	// BW1W120 0076b090 BW1M100 1009deb0 Villager::SetupPauseForASecond(VILLAGER_STATES)
	uint32_t SetupPauseForASecond(VILLAGER_STATES state);
	// BW1W120 0076b0b0 BW1M100 1000e650 Villager::PauseForASecond(void)
	bool32_t PauseForASecond();
	// BW1W120 0076b0d0 BW1M100 105993e0 Villager::SetupPanicReaction(Reaction *, MapCoords &)
	bool32_t SetupPanicReaction(Reaction* param_1, MapCoords& param_2);
	// BW1W120 0076b1c0 BW1M100 10599350 Villager::PanicReaction(void)
	bool32_t PanicReaction();
	// BW1W120 0076b200 BW1M100 10599180 Villager::GotoCongregateInTownAfterEmergency(void)
	bool32_t GotoCongregateInTownAfterEmergency();
	// BW1W120 0076b300 BW1M100 10599090 Villager::CongregateInTownAfterEmergency(void)
	bool32_t CongregateInTownAfterEmergency();
	// BW1W120 0076b3f0 BW1M100 1001b410 Villager::GoAndChilloutOutsideHome(void)
	bool32_t GoAndChilloutOutsideHome();
	// BW1W120 0076b4e0 BW1M100 1005fc40 Villager::SitAndChillout(void)
	bool32_t SitAndChillout();
	// BW1W120 0076b570 BW1M100 10005660 Villager::EnterSitAndChillOut(unsigned char, unsigned char)
	bool32_t EnterSitAndChillOut(unsigned char param_1, unsigned char param_2);
	// BW1W120 0076b590 BW1M100 10598c80 Villager::GoAndChilloutInTown(void)
	bool32_t GoAndChilloutInTown();
	// BW1W120 0076b610 BW1M100 100118e0 Villager::.GetMeToMyChillOutPos(int (Villager::*)(MapCoords&), MapCoords&, float, const MapCoords&)
	void GetMeToMyChillOutPos(int (Villager::*callback)(MapCoords&), MapCoords& param_5, float param_6,
	                          const MapCoords& param_7);
	// BW1W120 0076b7e0 BW1M100 10598b40 Villager::ArrivesHomeFromWorship(void)
	bool32_t ArrivesHomeFromWorship();
	// BW1W120 0076b7f0 BW1M100 10598ae0 Villager::SleepInTentFromWorship(void)
	bool32_t SleepInTentFromWorship();
	// BW1W120 0076b800 BW1M100 10598930 Villager::BreederJustLanded(void)
	bool32_t BreederJustLanded();
	// BW1W120 0076b980 BW1M100 1059c830 Villager::ArrivesInAbodeToPickUpExcess(void)
	bool32_t ArrivesInAbodeToPickUpExcess();
	// BW1W120 0076b990 BW1M100 1059c7f0 Villager::ArrivesInAbodeToTrade(void)
	bool32_t ArrivesInAbodeToTrade();
	// BW1W120 0076b9a0 BW1M100 1059c7b0 Villager::SetupFoodForWoodTrade(long)
	void SetupFoodForWoodTrade(long param_1);
	// BW1W120 0076b9b0 BW1M100 1059c770 Villager::ExcessFood(void)
	bool32_t ExcessFood();
	// BW1W120 0076b9c0 BW1M100 1059c730 Villager::SetupWoodForFoodTrade(long)
	void SetupWoodForFoodTrade(long param_1);
	// BW1W120 0076b9d0 BW1M100 1059c6f0 Villager::ExcessWood(void)
	bool32_t ExcessWood();
	// BW1W120 0076ba60 BW1M100 10096dd0 Villager::CheckNeededForWorship(void)
	bool32_t CheckNeededForWorship();
	// BW1W120 0076bae0 BW1M100 1059ec20 Villager::CheckWorshipActivity(int)
	float CheckWorshipActivity(int param_1);
	// BW1W120 0076bc20 BW1M100 1059eaf0 Villager::CanIGetToTheWorshipSite(MagicTeleport * &)
	bool32_t CanIGetToTheWorshipSite(MagicTeleport** param_1);
	// BW1W120 0076bcc0 BW1M100 1059e8f0 Villager::GotoWorshipSiteForWorship(void)
	bool32_t GotoWorshipSiteForWorship();
	// BW1W120 0076bda0 BW1M100 1059e810 Villager::SetGotoWorshipSpeed(void)
	bool32_t SetGotoWorshipSpeed();
	// BW1W120 0076be00 BW1M100 1059e6f0 Villager::ArrivesAtWorshipSiteForWorship(void)
	bool32_t ArrivesAtWorshipSiteForWorship();
	// BW1W120 0076bec0 BW1M100 1059e520 Villager::CheckVillagerGoBackToTownFromWorship(void)
	bool32_t CheckVillagerGoBackToTownFromWorship();
	// BW1W120 0076bf90 BW1M100 1059e4b0 Villager::CheckNeededForSupplyWorship(void)
	bool32_t CheckNeededForSupplyWorship();
	// BW1W120 0076bfa0 BW1M100 1059e310 Villager::GotoStoragePitForWorshipSupplies(void)
	bool32_t GotoStoragePitForWorshipSupplies();
	// BW1W120 0076c080 BW1M100 1059e1e0 Villager::ArrivesAtStoragePitForWorshipSupplies(void)
	bool32_t ArrivesAtStoragePitForWorshipSupplies();
	// BW1W120 0076c100 BW1M100 1059e190 Villager::GotoWorshipSiteWithSupplies(void)
	bool32_t GotoWorshipSiteWithSupplies();
	// BW1W120 0076c110 BW1M100 1059e140 Villager::MoveToWorshipSiteWithSupplies(void)
	bool32_t MoveToWorshipSiteWithSupplies();
	// BW1W120 0076c120 BW1M100 1059e070 Villager::ExitMoveToWorshipSiteWithSupplies(unsigned char)
	bool32_t ExitMoveToWorshipSiteWithSupplies(unsigned char param_1);
	// BW1W120 0076c170 BW1M100 1059df70 Villager::ExitMoveToWorshipSite(unsigned char)
	bool32_t ExitMoveToWorshipSite(unsigned char param_1);
	// BW1W120 0076c1f0 BW1M100 1059de40 Villager::ExitAtWorshipSite(unsigned char)
	bool ExitAtWorshipSite(unsigned char state);
	// BW1W120 0076c280 BW1M100 1059dd90 Villager::ExitGetFoodAtWorship(unsigned char)
	bool32_t ExitGetFoodAtWorship(unsigned char param_1);
	// BW1W120 0076c2d0 BW1M100 1059dc80 Villager::ArrivesAtWorshipSiteWithSupplies(void)
	bool32_t ArrivesAtWorshipSiteWithSupplies();
	// BW1W120 0076c390 BW1M100 1059daf0 Villager::RestartWorshippingAtWorshipSite(void)
	bool32_t RestartWorshippingAtWorshipSite();
	// BW1W120 0076c3c0 BW1M100 1059da60 Villager::RestartWorshippingCreature(void)
	bool32_t RestartWorshippingCreature();
	// BW1W120 0076c3f0 BW1M100 1059d990 Villager::AddVillagerToWorshipSite(void)
	bool32_t AddVillagerToWorshipSite();
	// BW1W120 0076c440 BW1M100 1059d850 Villager::RemoveVillagerFromWorshipSite(void)
	bool RemoveVillagerFromWorshipSite();
	// BW1W120 0076c4c0 BW1M100 1059d740 Villager::StartWorshippingAtWorshipSite(void)
	bool32_t StartWorshippingAtWorshipSite();
	// BW1W120 0076c550 BW1M100 1059d640 Villager::StartHidingAtWorshipSite(void)
	bool32_t StartHidingAtWorshipSite();
	// BW1W120 0076c5e0 BW1M100 1059d530 Villager::HidingAtWorshipSite(void)
	bool32_t HidingAtWorshipSite();
	// BW1W120 0076c680 BW1M100 1059d470 Villager::WorshippingAtWorshipSite(void)
	bool32_t WorshippingAtWorshipSite();
	// BW1W120 0076c6e0 BW1M100 1059d310 Villager::StartWorshippingCreature(Creature *)
	bool StartWorshippingCreature(Creature* creature);
	// BW1W120 0076c7c0 BW1M100 1059d280 Villager::WorshippingCreature(void)
	bool32_t WorshippingCreature();
	// BW1W120 0076c800 BW1M100 1059d130 Villager::ReduceVillagerLifeByChant(void)
	bool32_t ReduceVillagerLifeByChant();
	// BW1W120 0076c890 BW1M100 1059d090 Villager::ProcessInWorship(void)
	bool32_t ProcessInWorship();
	// BW1W120 0076c8d0 BW1M100 1059cfa0 Villager::CheckRequestGoHome(void)
	bool32_t CheckRequestGoHome();
	// BW1W120 0076c930 BW1M100 1059ce60 Villager::CheckNeededForWorshipSiteBuilding(void)
	bool32_t CheckNeededForWorshipSiteBuilding();
	// BW1W120 0076c9a0 BW1M100 1059cd40 Villager::CheckAllowedToRestAtWorshipSite(int)
	bool32_t CheckAllowedToRestAtWorshipSite(int param_1);
	// BW1W120 0076ca30 BW1M100 1059cbd0 Villager::GetFoodAtWorshipSite(void)
	bool32_t GetFoodAtWorshipSite();
	// BW1W120 0076caf0 BW1M100 1059cb80 Villager::GetFoodDesireAtWorshipSite(void)
	bool32_t GetFoodDesireAtWorshipSite();
	// BW1W120 0076cb00 BW1M100 1059caa0 Villager::GotoAltarForRest(void)
	bool32_t GotoAltarForRest();
	// BW1W120 0076cb80 BW1M100 1059ca10 Villager::ArrivesAtAltarForRest(void)
	bool32_t ArrivesAtAltarForRest();
	// BW1W120 0076cbb0 BW1M100 1059c980 Villager::AtAltarRest(void)
	bool32_t AtAltarRest();
	// BW1W120 0076cbe0 BW1M100 1059c8f0 Villager::AtAltarFinishedRest(void)
	bool32_t AtAltarFinishedRest();
	// BW1W120 0076cc00 BW1M100 1059c880 Villager::CheckSatisfySuppyWorship(void)
	bool32_t CheckSatisfySuppyWorship();
};

class MissionaryControl : public GameThingWithPos
{
public:
	// Override methods

	// BW1W120 00756740 BW1M100 10564a00 MissionaryControl::_dt(unsigned int)
	virtual ~MissionaryControl();
	// BW1W120 00756870 BW1M100 10564750 MissionaryControl::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00756700 BW1M100 10494550 MissionaryControl::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 00756730 BW1M100 10563970 MissionaryControl::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 007568a0 BW1M100 105646b0 MissionaryControl::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007568e0 BW1M100 10564610 MissionaryControl::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00756720 BW1M100 10563930 MissionaryControl::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00756920 BW1M100 10564510 MissionaryControl::GetImpressiveValue(Living *, Reaction *)
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 00756710 BW1M100 105638f0 MissionaryControl::GetText(void)
	virtual const char* GetText();

	// Constructors

	// BW1W120 007566c0 BW1M100 10564b90 MissionaryControl::MissionaryControl(void)
	MissionaryControl();
	// BW1W120 00756760 BW1M100 10564aa0 MissionaryControl::MissionaryControl(Villager *, GPlayer *)
	MissionaryControl(Villager* param_1, GPlayer* param_2);

	// Non-virtual methods

	// BW1W120 007567c0 BW1M100 10564970 MissionaryControl::GetImpressiveValue(void)
	float GetImpressiveValue();
	// BW1W120 007567e0 BW1M100 105647f0 MissionaryControl::Process(void)
	void Process();
};

#endif /* BW1_DECOMP_VILLAGER_INCLUDED_H */
