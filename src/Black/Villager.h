#ifndef BW1_DECOMP_VILLAGER_INCLUDED_H
#define BW1_DECOMP_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h>   /* For enum ANIM_LIST */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */
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

class Villager;

// Search context for Villager::CheckForClearArea's point iteration.
struct ClearAreaPoint
{
	MapCoords BestPos;        /* 0x0 */
	Villager* SearchVillager; /* 0xc */
	Object*   BestObject;     /* 0x10 */
	float     BestDist;       /* 0x14 */

	// Non-virtual methods

	// BW1W120 007591e0 BW1M119 0157d1a0
	bool32_t ProcessPoint(const LHPoint& point);
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
	uint16_t      Flags; // TODO(#343)
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

	// BW1W120 0055cb40 BW1M119 01579bf0
	virtual ~Villager();
	// BW1W120 007521b0 BW1M119 015755c0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 007502f0 BW1M119 01066b50
	virtual GPlayer* GetPlayer();
	// BW1W120 00751d50 BW1M119 01057200
	virtual bool32_t IsAvailable();
	// BW1W120 00751f00 BW1M119 01066b20
	virtual Town* GetTown();
	// BW1W120 007564d0 BW1M119 0156de50
	virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4,
	                             const MapCoords* param_5, int param_6);
	// BW1W120 00751cf0 BW1M119 0101c5a0
	virtual bool32_t IsFunctional();
	// BW1W120 0055cb30 BW1M119 0157a2c0
	virtual char* GetDebugText();
	// BW1W120 00754580 BW1M119 01571730
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00754280 BW1M119 01571b20
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055cb20 BW1M119 0157a280
	virtual uint32_t GetSaveType();
	// BW1W120 00754870 BW1M119 015716b0
	virtual void ResolveLoad();
	// BW1W120 0055ca70 BW1M119 0114fff0
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00751db0 BW1M119 01576080
	virtual Citadel* GetCitadel();
	// BW1W120 00753110 BW1M119 015736b0
	virtual void SetSpeedInMetres(float param_1, int param_2);
	// BW1W120 00756b30 BW1M119 0156ce00
	virtual bool32_t IsDrowning();
	// BW1W120 004e4c90 BW1M119 015eb940
	virtual bool32_t CanBeHealedByCreature(Creature* param_1);
	// BW1W120 0055caa0 BW1M119 011500f0
	virtual bool32_t CanBeHelpedByCreature(Creature* param_1);
	// BW1W120 0055ca80 BW1M119 01150030
	virtual bool32_t CanBeImpressedByCreature(Creature* param_1);
	// BW1W120 0055ca90 BW1M119 011500b0
	virtual bool32_t CanReceiveGifts(Creature* param_1);
	// BW1W120 004e4b40 BW1M119 015ebd90
	virtual bool32_t CanHaveMagicFoodCastOnMe(Creature* param_1);
	// BW1W120 0055cab0 BW1M119 0106ff80
	virtual bool32_t IsVillager(Creature* param_1);
	// BW1W120 004e4d50 BW1M119 015eb650
	virtual bool32_t IsVillagerFarFromHome(Creature* param_1);
	// BW1W120 004e4510 BW1M119 015ece00
	virtual bool32_t IsVillagerInTownWithoutManyBreeders(Creature* param_1);
	// BW1W120 004e46d0 BW1M119 015ecb90
	virtual bool32_t IsVillagerNotWorshipping(Creature* param_1);
	// BW1W120 004e4b10 BW1M119 015ebde0
	virtual bool32_t IsVillagerBelongingToOtherPlayer(Creature* param_1);
	// BW1W120 004e4840 BW1M119 015ec770
	virtual bool32_t IsVillagerWhoHasNotBeenImpressedRecently(Creature* param_1);
	// BW1W120 004e4890 BW1M119 015ec6d0
	virtual bool32_t IsVillagerWhoHasNotBeenDancedWithRecently(Creature* param_1);
	// BW1W120 004e3e20 BW1M119 015ee5c0
	virtual bool32_t DoesVillagerBelongToATownWhichIsAlreadyImpressed(Creature* param_1);
	// BW1W120 0076c340 BW1M119 015a4b20
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 004e3b60 BW1M119 015eed30
	virtual bool32_t IsDoingSomethingInteresting(Creature* param_1);
	// BW1W120 00532db0 BW1M119 012bdf00
	virtual bool32_t IsPlayingFootball(Creature* param_1);
	// BW1W120 00532e00 BW1M119 012bde20
	virtual bool32_t IsPlayingFootballAndMySideHasJustScored(Creature* param_1);
	// BW1W120 00532e50 BW1M119 012bdd30
	virtual bool32_t IsPlayingFootballAndOtherSideHasJustScored(Creature* param_1);
	// BW1W120 004eaba0 BW1M119 01272250
	virtual uint32_t GetCreatureMimicType();
	// BW1W120 004d1b40 BW1M119 01247910
	virtual float GetHowMuchCreatureWantsToLookAtMe();
	// BW1W120 0063b9b0 BW1M119 013e2460
	virtual void CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos);
	// BW1W120 00768630 BW1M119 0159e900
	virtual bool32_t IsReadyForNewScriptAction();
	// BW1W120 0055cb10 BW1M119 01150260
	virtual DEATH_REASON GetDeathReason();
	// BW1W120 0055cac0 BW1M119 011a28e0
	virtual bool32_t IsMaleVillager();
	// BW1W120 0055cae0 BW1M119 01155400
	virtual bool32_t IsFemaleVillager();
	// BW1W120 0055cb00 BW1M119 0109c270
	virtual bool32_t IsAChild();
	// BW1W120 007562c0 BW1M119 0156e0e0
	virtual void SetSkeleton(int index);
	// BW1W120 00753f20 BW1M119 015724c0
	virtual HELP_TEXT GetQueryFirstEnumText();
	// BW1W120 00753f90 BW1M119 01572370
	virtual HELP_TEXT GetQueryLastEnumText();
	// BW1W120 00754050 BW1M119 010357e0
	virtual uint32_t GetFOVHelpMessageSet();
	// BW1W120 00754060 BW1M119 015722c0
	virtual uint32_t GetFOVHelpCondition();
	// BW1W120 00753020 BW1M119 01005910
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 00756460 BW1M119 010962e0
	virtual bool32_t IsReachable();
	// BW1W120 00756450 BW1M119 01061d60
	virtual void InsertMapObject();
	// BW1W120 00750310 BW1M119 01099580
	virtual HOLD_TYPE GetHoldType();
	// BW1W120 00750320 BW1M119 0109c130
	virtual float GetHoldLoweringMultiplier();
	// BW1W120 00756b40 BW1M119 0104dbc0
	virtual void SetLife(float param_1);
	// BW1W120 00753460 BW1M119 01572e30
	virtual float IncreaseLife(float value);
	// BW1W120 007502d0 BW1M119 01578f80
	virtual uint32_t DestroyedByEffect(GPlayer* player, float damage);
	// BW1W120 0055c9c0 BW1M119 0114fdc0
	virtual MESH_LIST GetMesh() const;
	// BW1W120 0055c9d0 BW1M119 inlined
	virtual int GetDetailMesh(int param_1);
	// BW1W120 0051b940 BW1M119 0104f050
	virtual void Draw();
	// BW1W120 0074ff70 BW1M119 0104dd70
	virtual uint32_t ProcessState();
	// BW1W120 0055ca50 BW1M119 0114ff90
	virtual bool32_t CanBePickedUp();
	// BW1W120 007560e0 BW1M119 0156e660
	virtual uint32_t GetDiscipleStateIfInteractedWith(GInterfaceStatus* param_1, Villager* param_2);
	// BW1W120 0074fc70 BW1M119 01579890
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 0055c990 BW1M119 0114fd20
	virtual bool32_t IsABeliever();
	// BW1W120 0076a4c0 BW1M119 015a1a80
	virtual bool32_t SetDying();
	// BW1W120 00753040 BW1M119 inlined
	virtual bool32_t IsTouching(const MapCoords& coords);
	// BW1W120 0055c9a0 BW1M119 inlined
	virtual bool32_t IsTouching(Object* target, float epsilon);
	// BW1W120 007564a0 BW1M119 0156dfa0
	virtual bool32_t ValidForPlaceInHand(GInterfaceStatus* param_1);
	// BW1W120 00753080 BW1M119 01573730
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00752bd0 BW1M119 010a26b0
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00752c40 BW1M119 01573a80
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 00756ae0 BW1M119 0156ce70
	virtual uint32_t ThrowObjectFromHand(GInterfaceStatus* param_1, int param_2);
	// BW1W120 00751d70 BW1M119 0100ca10
	virtual bool32_t IsEffectReceiver(EffectValues* effect);
	// BW1W120 0076aa80 BW1M119 015a1030
	virtual float GetImportance();
	// BW1W120 005efe90 BW1M119 0138d8f0
	virtual PhysicsObject* InitialisePhysicsFromHand(LHPoint& velocity, LHPoint& angular_velocity,
	                                                 GInterfaceStatus* status, Object* thrower, bool32_t dont_replant);
	// BW1W120 005efef0 BW1M119 0138d810
	virtual PhysicsInitialisation InitialisePhysics(const LHPoint& param_1, const LHPoint& param_2, Object* param_3,
	                                                bool param_4, GInterfaceStatus* param_5);
	// BW1W120 005eff30 BW1M119 0138d7d0
	virtual uint32_t GetPhysicsConstantsType();
	// BW1W120 005eff40 BW1M119 0138d280
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 005f0a60 BW1M119 0138c8c0
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 007564c0 BW1M119 0156df30
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00750ab0 BW1M119 015780f0
	virtual bool32_t HasSunk();
	// BW1W120 0075b400 BW1M119 015805a0
	virtual bool32_t IsFireMan();
	// BW1W120 00753e00 BW1M119 015727e0
	virtual uint32_t RemoveFromGame();
	// BW1W120 0055ca30 BW1M119 0114ff50
	virtual uint32_t GetTastiness();
	// BW1W120 00751af0 BW1M119 01576600
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 00753410 BW1M119 01572f40
	virtual void SetFoodSpeedup(bool param_1);
	// BW1W120 0055c980 BW1M119 01053ca0
	virtual bool IsFoodSpeedUp();
	// BW1W120 00756ad0 BW1M119 0156cf80
	virtual MapCoords GetFinalDestPos();
	// BW1W120 00763b00 BW1M119 0159b010
	virtual bool32_t FleeingFromObjectReaction();
	// BW1W120 007642c0 BW1M119 01599fd0
	virtual bool32_t LookingAtObjectReaction();
	// BW1W120 00764310 BW1M119 01599f60
	virtual bool32_t FleeingAndLookingAtObjectReaction();
	// BW1W120 00764320 BW1M119 01599ec0
	virtual bool32_t FollowingObjectReaction();
	// BW1W120 00764350 BW1M119 01599da0
	virtual bool32_t InspectObjectReaction();
	// BW1W120 0076a570 BW1M119 015a1980
	virtual bool32_t Dying();
	// BW1W120 0076a5e0 BW1M119 015a1670
	virtual bool32_t Dead();
	// BW1W120 0076b380 BW1M119 015a0090
	virtual bool32_t BeingEaten();
	// BW1W120 007646a0 BW1M119 01599710
	virtual bool32_t GotoFoodReaction();
	// BW1W120 007646d0 BW1M119 01599630
	virtual bool32_t GotoWoodReaction();
	// BW1W120 00756c60 BW1M119 0104feb0
	virtual bool32_t IsMovingForAnimation();
	// BW1W120 00764920 BW1M119 01598f50
	virtual bool32_t ArrivesAtFoodReaction();
	// BW1W120 00764720 BW1M119 01599340
	virtual bool32_t ArrivesAtWoodReaction();
	// BW1W120 0076ade0 BW1M119 0100c700
	virtual bool32_t InHand();
	// BW1W120 007515c0 BW1M119 0109af00
	virtual bool32_t DecideWhatToDo();
	// BW1W120 00751040 BW1M119 016e8c0c
	virtual void Birthday();
	// BW1W120 007528c0 BW1M119 01574250
	virtual void SetAge(uint32_t age);
	// BW1W120 007520e0 BW1M119 01089e90
	virtual int SetCurrentAndDestinationState(uint8_t current, uint8_t destination);
	// BW1W120 00756590 BW1M119 inlined
	virtual int CallIntoAnimationFunction(uint8_t state);
	// BW1W120 00756620 BW1M119 inlined
	virtual int CallOutofAnimationFunction(uint8_t state);
	// BW1W120 00752010 BW1M119 0107e140
	virtual int SetTopState(uint8_t state);
	// BW1W120 00763470 BW1M119 0159bd20
	virtual void StorePreviousState();
	// BW1W120 00753740 BW1M119 010782d0
	virtual void SetStateSpeed();
	// BW1W120 00753f00 BW1M119 inlined
	virtual bool IsFinalState(VILLAGER_STATES state);
	// BW1W120 00750110 BW1M119 01068c50
	virtual ANIM_LIST GetAnimId();
	// BW1W120 00752320 BW1M119 inlined
	virtual uint32_t CallExitStateFunction(uint8_t state);
	// BW1W120 00752440 BW1M119 0107d750
	virtual uint32_t CallEntryStateFunction(uint8_t current, uint8_t destination);
	// BW1W120 007523d0 BW1M119 010781d0
	virtual uint32_t CallEntryStateFunction(uint8_t state);
	// BW1W120 007527a0 BW1M119 inlined
	virtual bool32_t ExitReaction(uint8_t state);
	// BW1W120 0076b000 BW1M119 inlined
	virtual bool32_t ExitInHand(uint8_t state);
	// BW1W120 0076acb0 BW1M119 inlined
	virtual bool32_t ExitInFlying(uint8_t state);
	// BW1W120 00753690 BW1M119 0106cc30
	virtual void SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state);
	// BW1W120 0076afe0 BW1M119 inlined
	virtual bool32_t EnterInHand(uint8_t current, uint8_t destination);
	// BW1W120 0055c9f0 BW1M119 inlined
	virtual bool IsScriptState(VILLAGER_STATES state) const;
	// BW1W120 0055ca10 BW1M119 inlined
	virtual bool IsScriptInterruptableState(VILLAGER_STATES state) const;
	// BW1W120 00752530 BW1M119 inlined
	virtual bool32_t IsStateExitFunctionSameAs(VILLAGER_STATES state) const;
	// BW1W120 007528b0 BW1M119 015745c0
	virtual uint32_t DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3);
	// BW1W120 00764df0 BW1M119 01598700
	virtual bool IsInterestedInFoodObject(Object* param_1);
	// BW1W120 00764f60 BW1M119 01598410
	virtual bool IsInterestedInWoodObject(Object* param_1);
	// BW1W120 00763390 BW1M119 01023dd0
	virtual bool32_t IsAvailableForReaction(REACTION reaction);
	// BW1W120 00763410 BW1M119 01011930
	virtual bool32_t IsAvailableForBeliefButNotReaction(REACTION param_1);
	// BW1W120 007634c0 BW1M119 010071b0
	virtual void UpdateHowImpressed(Reaction* param_1, int param_2);
	// BW1W120 00763440 BW1M119 inlined
	virtual void AddReaction(Reaction* reaction, VILLAGER_STATES state);
	// BW1W120 007637d0 BW1M119 0159ba30
	virtual void StopReacting();
	// BW1W120 00751e10 BW1M119 01575df0
	virtual void ResetStateAfterReacting();
	// BW1W120 00763aa0 BW1M119 0159b1d0
	virtual void SetupLookAtObject(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00763ac0 BW1M119 0159b160
	virtual void SetupLookAtSpell(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00763ae0 BW1M119 0159b0e0
	virtual void SetupLookAtNiceSpell(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00767630 BW1M119 0159db60
	virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00765b70 BW1M119 015973d0
	virtual void SetupReactToWood(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00763820 BW1M119 0159b750
	virtual void SetupReactToMagicTree(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007639d0 BW1M119 0159b240
	virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00765540 BW1M119 01597b60
	virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00765c60 BW1M119 01596ff0
	virtual void SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00766010 BW1M119 01596b30
	virtual void SetupReactToNewBuilding(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00766e30 BW1M119 01594de0
	virtual void SetupReactToFight(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00766250 BW1M119 015967f0
	virtual void SetupReactToTeleport(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007665b0 BW1M119 01595f90
	virtual void SetupReactToDeath(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00766620 BW1M119 01595eb0
	virtual void SetupReactToDroppedByHand(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007668c0 BW1M119 015959c0
	virtual void SetupReactToFainting(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007668f0 BW1M119 015958d0
	virtual void SetupReactToConfused(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00766a20 BW1M119 015955c0
	virtual void SetupReactToFallingTree(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00766a60 BW1M119 015954a0
	virtual void SetupReactToCrowd(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007671e0 BW1M119 015945e0
	virtual void SetupReactToBreeder(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00763990 BW1M119 0159b390
	virtual void SetupFleeFromPredator(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00766fd0 BW1M119 01594790
	virtual void SetupReactToTownCelebration(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 007672f0 BW1M119 015942a0
	virtual void SetupReactToVillagerInHand(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 00767490 BW1M119 01593e10
	virtual void SetupReactToBurningObjectInHand(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007674b0 BW1M119 01593cb0
	virtual void SetupReactToMagicShieldStruck(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00767520 BW1M119 01593c20
	virtual void SetupReactToMagicShieldDestroyed(GameThingWithPos* thing, Reaction* reaction);
	// BW1W120 007676e0 BW1M119 0159d880
	virtual uint8_t ReactToCreaturePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00765260 BW1M119 01598070
	virtual uint8_t ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00765610 BW1M119 01597830
	virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00765bb0 BW1M119 01597250
	virtual uint8_t ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00766df0 BW1M119 01594e90
	virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00766200 BW1M119 01596920
	virtual uint8_t ReactToTeleportPriority(Reaction* reaction_1, Reaction* reaction_2);
	// BW1W120 00766440 BW1M119 01596330
	virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 007664b0 BW1M119 015960d0
	virtual uint8_t ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00766a10 BW1M119 01595670
	virtual uint8_t ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00766a50 BW1M119 01595550
	virtual uint8_t ReactToCrowdPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767210 BW1M119 015944b0
	virtual uint8_t ReactToBreederPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767180 BW1M119 01594690
	virtual uint8_t ReactToTownCelebrationPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00763850 BW1M119 0159b510
	virtual uint8_t FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767320 BW1M119 01594130
	virtual uint8_t ReactToVillagerInHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767430 BW1M119 01593ed0
	virtual uint8_t ReactToBurningObjectInHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00767540 BW1M119 01593a70
	virtual uint8_t ReactToMagicShieldStruckPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 007675a0 BW1M119 015939f0
	virtual uint8_t ReactToMagicShieldDestroyedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00763980 BW1M119 0159b490
	virtual uint8_t ReactToScaffoldPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 007640a0 BW1M119 0159a610
	virtual uint32_t NumGameTurnsToReactToPredatorFunction(GameThingWithPos* thing, uint32_t param_2, float param_3);
	// BW1W120 007640e0 BW1M119 0159a520
	virtual uint32_t NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                   float param_3);
	// BW1W120 007648d0 BW1M119 01599220
	virtual uint32_t StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                       float param_3);
	// BW1W120 00764110 BW1M119 0159a490
	virtual uint32_t NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                            float param_3);
	// BW1W120 00764130 BW1M119 0159a360
	virtual uint32_t NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                        float param_3);
	// BW1W120 007641a0 BW1M119 0159a220
	virtual uint32_t NumGameTurnsToReactToShieldFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
	// BW1W120 00764230 BW1M119 0159a0b0
	virtual uint32_t NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                 float param_3);
	// BW1W120 0055c970 BW1M119 010676b0
	virtual bool32_t IsChild();
	// BW1W120 00751dd0 BW1M119 01051580
	virtual VILLAGER_STATES GetFinalState() const;
	// BW1W120 00751510 BW1M119 01577220
	virtual void RemoveFromDance(int param_1);
	// BW1W120 00759b80 BW1M119 0157f1b0
	virtual void SetStateAfterFinishingDance();
	// BW1W120 0075bae0 BW1M119 01583630
	virtual float CalculateLifeDesire();
	// BW1W120 004174a0 BW1M119 inlined
	virtual bool MoveAllowedForChessGame();
	// BW1W120 004174b0 BW1M119 inlined
	virtual bool AttackAllowedForChessGame();
	// BW1W120 004174c0 BW1M119 inlined
	virtual void AddToBoxPositionForChessGame(int param_1, int param_2);
	// BW1W120 004174d0 BW1M119 inlined
	virtual int GetBoxXForChessGame();
	// BW1W120 004174e0 BW1M119 inlined
	virtual int GetBoxZForChessGame();
	// BW1W120 004174f0 BW1M119 inlined
	virtual void SetBoxXForChessGame(int param_1);
	// BW1W120 00417500 BW1M119 inlined
	virtual void SetBoxZForChessGame(int param_1);
	// BW1W120 00417510 BW1M119 inlined
	virtual uint32_t GetTeamForChessGame();
	// BW1W120 00473ee0 BW1M119 inlined
	virtual bool IsPosValidForTurnAngle(const MapCoords& param_1);
	// BW1W120 0055ca40 BW1M119 010c8a80
	const char* GetVillagerName();
	// BW1W120 0051b510 BW1M119 0105a910
	uint32_t DrawVillagerInfo();

	// Static methods

	// BW1W120 inlined BW1M119 01000000 (Black & White Support)
	static Living::StateTableEntry& GetStateTable(VILLAGER_STATES state);
	// BW1W120 0074fbe0 BW1M119 01579ab0
	static Villager* Create(const MapCoords& coords, const GVillagerInfo* info, uint32_t age, bool skeleton);

	// Constructors

	// BW1W120 0055c8a0 BW1M119 0130e430
	Villager();
	// BW1W120 0074f950 BW1M119 01579df0
	Villager(const MapCoords& coords, const GVillagerInfo* info, uint32_t age, bool skeleton);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	uint32_t CallValidate(LIVING_ACTION_INDEX index);
	// BW1W120 00423c80 BW1M119 010ac450
	uint32_t FootballWatchMatchAnimation();
	// BW1W120 0074fb20 BW1M119 01579d80
	void SetToZero();
	// BW1W120 0074fb80 BW1M119 01579cb0
	void InitialiseScale(unsigned long age);
	// BW1W120 0074fd60 BW1M119 01579570
	void DeleteDependancys();
	// BW1W120 0074fec0 BW1M119 01579420
	bool UnemployedJobs();
	// BW1W120 0074ff60 BW1M119 015793e0
	bool SetupJobLocation();
	// BW1W120 00750060 BW1M119 0109c740
	void FinishedIntoOutOfAnimation();
	// BW1W120 007501a0 BW1M119 01062720
	void SetStateCarriedObject();
	// BW1W120 007502a0 BW1M119 01578ff0
	uint32_t GetWoodCarriedObject();
	// BW1W120 00750330 BW1M119 01578d20
	Villager* GetSpouse();
	// BW1W120 00750370 BW1M119 01578bc0
	Villager* LookAroundForVillagerInState(VILLAGER_STATES param_1, unsigned long param_2);
	// BW1W120 00750410 BW1M119 0104dec0
	int CheckEveryTime();
	// BW1W120 00750670 BW1M119 01071370
	uint32_t GetGameTurnsSinceLastChecked();
	// BW1W120 00750690 BW1M119 015789d0
	int GetGameTurnLastChecked();
	// BW1W120 007506a0 BW1M119 01071410
	void SetGameTurnLastChecked();
	// BW1W120 007506c0 BW1M119 01578500
	void VillagerDead(DEATH_REASON param_1, GPlayer* param_2, float param_3, int param_4);
	// BW1W120 00750940 BW1M119 01578230
	void CreateDroppedResource(LHPoint* param_1, LHPoint* param_2, LHPoint* param_3);
	// BW1W120 00750b50 BW1M119 01578000
	void TownDeleted();
	// BW1W120 00750bb0 BW1M119 01577e20
	void DebugText(int param_1);
	// BW1W120 00750de0 BW1M119 01577d90
	void SetAbode(Abode* abode);
	// BW1W120 00750e10 BW1M119 01577c40
	bool GetRandomLookAhead(MapCoords* param_1, float param_2);
	// BW1W120 00750ed0 BW1M119 0106af80
	void SetSpeed(int base_speed, int scale_speed);
	// BW1W120 00751050 BW1M119 01024570
	int CheckChildGrownUp();
	// BW1W120 00751110 BW1M119 01577ad0
	bool32_t IsAMother();
	// BW1W120 00751190 BW1M119 01577a50
	bool32_t StartMoveToObject(Object* object, VILLAGER_STATES state);
	// BW1W120 007511b0 BW1M119 0109ea90
	uint16_t DropResource(RESOURCE_TYPE param_1, unsigned short param_2);
	// BW1W120 007511e0 BW1M119 01577910
	uint16_t DropFood(unsigned short food_amount);
	// BW1W120 00751240 BW1M119 01577820
	uint16_t DropWood(unsigned short wood_amount);
	// BW1W120 007512a0 BW1M119 01577760
	bool IsEnoughFoodInStoragePitForDinner();
	// BW1W120 007512e0 BW1M119 015775c0
	Pot* FindPotAroundToGoto(RESOURCE_TYPE param_1, unsigned long& param_2, int param_3);
	// BW1W120 007513f0 BW1M119 01577450
	int16_t PickupResource(RESOURCE_TYPE resource_type, short amount, unsigned char wood_graphic);
	// BW1W120 00751490 BW1M119 0109ed20
	void PickupFood(short amount);
	// BW1W120 007514b0 BW1M119 01577320
	void PickupWood(short amount, unsigned char wood_graphic);
	// BW1W120 007514d0 BW1M119 01004c20
	int16_t GetFoodCapacity();
	// BW1W120 007514f0 BW1M119 01577270
	int16_t GetWoodCapacity();
	// BW1W120 00751520 BW1M119 01577170
	bool IsRandomlyLazy();
	// BW1W120 00751570 BW1M119 010007e0
	uint16_t GetResourceHeld(RESOURCE_TYPE& type);
	// BW1W120 007516e0 BW1M119 01003ba0
	bool32_t CheckTakeResourcesToStoragePit();
	// BW1W120 00751720 BW1M119 01576d30
	bool32_t DiscipleDecideWhatToDo();
	// BW1W120 00751970 BW1M119 01576cf0
	bool GetPrayerSite();
	// BW1W120 00751980 BW1M119 01576c20
	bool RestartDance(VILLAGER_STATES state);
	// BW1W120 00751ab0 BW1M119 015769c0
	char* GetVillagerText(char* param_1);
	// BW1W120 00751d20 BW1M119 01576320
	GJobInfo* GetJobInfo(unsigned char job) const;
	// BW1W120 00751d40 BW1M119 inlined
	bool FUN00751d40();
	// BW1W120 00751e50 BW1M119 01575d30
	void PopFromPrevious();
	// BW1W120 00751ea0 BW1M119 01575cf0
	Football* GetFootball();
	// BW1W120 00751ee0 BW1M119 01575c10
	GTribeInfo* GetTribe();
	// BW1W120 00751f10 BW1M119 0108c910
	StoragePit* GetStoragePit();
	// BW1W120 00751f40 BW1M119 01575af0
	VILLAGER_STATES GetVillagerAvailableState();
	// BW1W120 00751f70 BW1M119 inlined
	VILLAGER_STATES FUN_00751f70();
	// BW1W120 00751fa0 BW1M119 010039e0
	void ArriveHome();
	// BW1W120 00751fd0 BW1M119 010a1b50
	void LeaveHome();
	// BW1W120 00752120 BW1M119 0107e950
	uint32_t CanPauseForASecond(VILLAGER_STATES state);
	// BW1W120 00752160 BW1M119 0100c480
	Abode* GetAbode();
	// BW1W120 007521d0 BW1M119 0104dce0
	uint32_t CallState();
	// BW1W120 00752210 BW1M119 01022dd0
	bool32_t IsPregnant();
	// BW1W120 00752240 BW1M119 01022d20
	uint32_t WomanSpecial();
	// BW1W120 00752290 BW1M119 015753b0
	bool32_t IsVillagerAvailable();
	// BW1W120 007522c0 BW1M119 015752a0
	bool32_t IsAvailableToBeSummonedByCreature();
	// BW1W120 007524d0 BW1M119 0109f200
	bool IsStateEntryFunctionSameAs(unsigned long state_a, unsigned long state_b) const;
	// BW1W120 007525b0 BW1M119 01574fa0
	bool IsReactiveState(unsigned long state);
	// BW1W120 00752600 BW1M119 01022ae0
	bool32_t IsHungry();
	// BW1W120 00752620 BW1M119 0106cf00
	bool IsWoman();
	// BW1W120 00752690 BW1M119 015749f0
	bool MakeVillagesMeet(Villager* param_1, VILLAGER_STATES param_2, float param_3);
	// BW1W120 00752760 BW1M119 01574960
	bool MakeVillagerFaceObject(Object* object);
	// BW1W120 007527e0 BW1M119 01574800
	bool32_t ExitDance(unsigned char param_1);
	// BW1W120 00752820 BW1M119 01574750
	bool32_t IsAvailableForWorshipSite(int param_1);
	// BW1W120 00752860 BW1M119 01574690
	bool IsAtOrOnTheWayToWorshipSite();
	// BW1W120 00752a90 BW1M119 015740d0
	void SetScaleForAge(unsigned long param_1);
	// BW1W120 00752b80 BW1M119 01573fd0
	bool32_t SetStateWhenTappedOnAbode();
	// BW1W120 00753140 BW1M119 inlined
	uint32_t FUN_00753140();
	// BW1W120 007531a0 BW1M119 01573570
	bool IsVagrant();
	// BW1W120 007531d0 BW1M119 01573270
	void ReleaseFromScript();
	// BW1W120 00753340 BW1M119 015731c0
	void TestSpecial();
	// BW1W120 00753390 BW1M119 01572f90
	uint16_t GetResourceFrom(Object* object, RESOURCE_TYPE resource_type, short amount);
	// BW1W120 00753430 BW1M119 01053cf0
	void ProcessFoodSpeedup();
	// BW1W120 00753470 BW1M119 01572c90
	void FindPosOutsideAbode(Abode* param_1);
	// BW1W120 00753540 BW1M119 inlined
	Abode* FUN_00753540();
	// BW1W120 00753560 BW1M119 0106cd50
	void AdjustTownModifier(VILLAGER_STATES state, int param_2);
	// BW1W120 00753760 BW1M119 0105b7f0
	void SetStateSpeed(unsigned char param_1);
	// BW1W120 00753b50 BW1M119 0109bb10
	uint32_t SetupNothingToDo();
	// BW1W120 00753c70 BW1M119 01011020
	uint32_t GetChillOutPos(MapCoords& coords);
	// BW1W120 00753d50 BW1M119 0100b1f0
	int GetPosOutsideMyHouse(MapCoords& coords);
	// BW1W120 00753dd0 BW1M119 01572850
	bool32_t VillagerCreated();
	// BW1W120 00753e20 BW1M119 01572620
	MapCoords GetResourceDropoffPos(RESOURCE_TYPE resource_type);
	// BW1W120 00754070 BW1M119 01572220
	bool32_t SetDiscipleNothingToDo();
	// BW1W120 007540d0 BW1M119 01572140
	bool32_t DiscipleNothingToDo();
	// BW1W120 00754140 BW1M119 01572070
	bool32_t EnterDiscipleNothingToDo(unsigned char param_1, unsigned char param_2);
	// BW1W120 00754180 BW1M119 01571f30
	bool32_t FindDisciplePrayerPos(MapCoords* param_1);
	// BW1W120 007548a0 BW1M119 015715c0
	bool32_t CallSaveStateFunction(GameOSFile& param_1, STATE_TYPE param_2);
	// BW1W120 00754910 BW1M119 015714d0
	bool32_t CallLoadStateFunction(GameOSFile& param_1, STATE_TYPE param_2);
	// BW1W120 00754980 BW1M119 01571420
	bool32_t SaveStateFunction(GameOSFile& param_1);
	// BW1W120 007549b0 BW1M119 01571360
	bool32_t LoadStateFunction(GameOSFile& param_1);
	// BW1W120 00754a00 BW1M119 01571280
	bool32_t SaveBuilding(GameOSFile& param_1);
	// BW1W120 00754a60 BW1M119 015711b0
	bool32_t LoadBuilding(GameOSFile& param_1);
	// BW1W120 00754ac0 BW1M119 01571090
	bool32_t SaveDance(GameOSFile& param_1);
	// BW1W120 00754b60 BW1M119 01570f80
	bool32_t LoadDance(GameOSFile& param_1);
	// BW1W120 00754c00 BW1M119 01570eb0
	bool32_t SaveWorship(GameOSFile& param_1);
	// BW1W120 00754c60 BW1M119 01570de0
	bool32_t LoadWorship(GameOSFile& param_1);
	// BW1W120 00754cc0 BW1M119 01570d20
	bool32_t SaveDead(GameOSFile& param_1);
	// BW1W120 00754d20 BW1M119 01570c60
	bool32_t LoadDead(GameOSFile& param_1);
	// BW1W120 00754d80 BW1M119 01570b90
	bool32_t SaveInHand(GameOSFile& param_1);
	// BW1W120 00754de0 BW1M119 01570ac0
	bool32_t LoadInHand(GameOSFile& param_1);
	// BW1W120 00754e40 BW1M119 01570a50
	bool32_t SaveFishing(GameOSFile& param_1);
	// BW1W120 00754e60 BW1M119 015709e0
	bool32_t LoadFishing(GameOSFile& param_1);
	// BW1W120 00754e80 BW1M119 01570900
	bool32_t SaveFarming(GameOSFile& param_1);
	// BW1W120 00754ef0 BW1M119 01570830
	bool32_t LoadFarming(GameOSFile& param_1);
	// BW1W120 00754f60 BW1M119 015706b0
	bool32_t SaveFootball(GameOSFile& param_1);
	// BW1W120 00755040 BW1M119 01570550
	bool32_t LoadFootball(GameOSFile& param_1);
	// BW1W120 00755120 BW1M119 01570430
	bool32_t SaveShepherd(GameOSFile& param_1);
	// BW1W120 007551c0 BW1M119 01570320
	bool32_t LoadShepherd(GameOSFile& param_1);
	// BW1W120 00755260 BW1M119 01570160
	bool32_t SaveInScript(GameOSFile& param_1);
	// BW1W120 00755370 BW1M119 0156ffc0
	bool32_t LoadInScript(GameOSFile& param_1);
	// BW1W120 00755470 BW1M119 0156fe00
	bool32_t SaveScriptPos(GameOSFile& param_1);
	// BW1W120 00755580 BW1M119 0156fc60
	bool32_t LoadScriptPos(GameOSFile& param_1);
	// BW1W120 00755680 BW1M119 0156fb80
	bool32_t SaveFire(GameOSFile& param_1);
	// BW1W120 007556f0 BW1M119 0156fab0
	bool32_t LoadFire(GameOSFile& param_1);
	// BW1W120 00755760 BW1M119 0156fa30
	bool32_t SaveDiscipleNothingToDo(GameOSFile& param_1);
	// BW1W120 00755780 BW1M119 0156f9b0
	bool32_t LoadDiscipleNothingToDo(GameOSFile& param_1);
	// BW1W120 007557a0 BW1M119 0156f8d0
	bool32_t SaveTrader(GameOSFile& param_1);
	// BW1W120 00755810 BW1M119 0156f800
	bool32_t LoadTrader(GameOSFile& param_1);
	// BW1W120 00755880 BW1M119 0156f790
	bool32_t SaveInspectObject(GameOSFile& param_1);
	// BW1W120 007558a0 BW1M119 0156f720
	bool32_t LoadInspectObject(GameOSFile& param_1);
	// BW1W120 007558c0 BW1M119 0156f6e0
	bool32_t SaveReaction(GameOSFile& param_1);
	// BW1W120 007558d0 BW1M119 0156f6a0
	bool32_t LoadReaction(GameOSFile& param_1);
	// BW1W120 007558e0 BW1M119 0156f580
	bool32_t SaveClearArea(GameOSFile& param_1);
	// BW1W120 00755980 BW1M119 0156f470
	bool32_t LoadClearArea(GameOSFile& param_1);
	// BW1W120 00755a20 BW1M119 0156f390
	bool32_t SaveBreeder(GameOSFile& param_1);
	// BW1W120 00755a80 BW1M119 0156f2c0
	bool32_t LoadBreeder(GameOSFile& param_1);
	// BW1W120 00755ae0 BW1M119 0156f250
	bool32_t SaveForesting(GameOSFile& param_1);
	// BW1W120 00755b00 BW1M119 0156f1e0
	bool32_t LoadForesting(GameOSFile& param_1);
	// BW1W120 00755b20 BW1M119 0156f150
	bool32_t SaveFootPath(GameOSFile& param_1);
	// BW1W120 00755b50 BW1M119 0156f0c0
	bool32_t LoadFootPath(GameOSFile& param_1);
	// BW1W120 00755b80 BW1M119 0156ef90
	bool32_t SaveInspectionReaction(GameOSFile& param_1);
	// BW1W120 00755c20 BW1M119 0156ee70
	bool32_t LoadInspectionReaction(GameOSFile& param_1);
	// BW1W120 00755cc0 BW1M119 0156ed40
	bool32_t SaveMagicTreeReaction(GameOSFile& param_1);
	// BW1W120 00755d60 BW1M119 0156ec20
	bool32_t LoadMagicTreeReaction(GameOSFile& param_1);
	// BW1W120 00755e00 BW1M119 0156eaf0
	bool32_t SaveHideInBuilding(GameOSFile& param_1);
	// BW1W120 00755ea0 BW1M119 0156e9d0
	bool32_t LoadHideInBuilding(GameOSFile& param_1);
	// BW1W120 00755f40 BW1M119 0156e900
	bool32_t SaveShieldReaction(GameOSFile& param_1);
	// BW1W120 00755fa0 BW1M119 0156e830
	bool32_t LoadShieldReaction(GameOSFile& param_1);
	// BW1W120 00756000 BW1M119 0100c4b0
	uint32_t SetVillagerDisciple(GameThing* interacted_thing, VILLAGER_DISCIPLE disciple, int unused);
	// BW1W120 00756170 BW1M119 0156e570
	void ShowDiscipleIcon(VILLAGER_DISCIPLE param_1);
	// BW1W120 00756230 BW1M119 016e914c
	void DebugValidateState();
	// BW1W120 00756240 BW1M119 0156e3e0
	void ForceMoveVillagerToAbode(Abode* abode);
	// BW1W120 00756520 BW1M119 0156de00
	uint32_t LookAtPreviousStateReactToTownEmergency();
	// BW1W120 00756530 BW1M119 0156ddc0
	void SetTown(Town* town);
	// BW1W120 00756540 BW1M119 0156dd40
	bool32_t ScriptInCrowd();
	// BW1W120 00756570 BW1M119 0156dd00
	bool32_t SaveLanded(GameOSFile& param_1);
	// BW1W120 00756580 BW1M119 0156dcc0
	bool32_t LoadLanded(GameOSFile& param_1);
	// BW1W120 007569a0 BW1M119 0156d3c0
	void MoveToObjectValidate();
	// BW1W120 007569d0 BW1M119 0156d330
	void MoveOnStructureValidate();
	// BW1W120 00756a00 BW1M119 0156d200
	void ReactionValidate();
	// BW1W120 00756a50 BW1M119 0156d120
	void SexValidate();
	// BW1W120 00756a80 BW1M119 0156d0c0
	void WallhugAndReactionValidate();
	// BW1W120 00756aa0 BW1M119 0156cfe0
	void ClosestObjectValidate();
	// BW1W120 00756bc0 BW1M119 inlined
	void FUN_00756bc0(float param_1);
	// BW1W120 00756be0 BW1M119 0156cb60
	void FindChildrenAndOrphanThem();
	// BW1W120 00756d30 BW1M119 0157b5f0
	bool32_t InteractDecideWhatToDoForOtherVillager();
	// BW1W120 00756e10 BW1M119 0157b580
	bool32_t InteractDecideWhatToDo();
	// BW1W120 00756e20 BW1M119 0157b4d0
	uint32_t GetDiscipleInteractState();
	// BW1W120 00756e80 BW1M119 0102d9a0
	bool32_t FindCloseObjectsForInteract(LHOrderedLinkedList<SortedObject>* param_1, const MapCoords& param_2);
	// BW1W120 00757180 BW1M119 0157b170
	bool32_t CheckMoveHouse(Object* object);
	// BW1W120 00757210 BW1M119 0157b080
	bool32_t CheckMoveIntoTown(Town& target_town);
	// BW1W120 00757260 BW1M119 0157b040
	bool32_t CheckInteractWithAnimal();
	// BW1W120 00757270 BW1M119 0157ad60
	bool32_t CheckInteractWithWorshipSite();
	// BW1W120 00757420 BW1M119 0157aa80
	bool32_t CheckInteractWithAbode();
	// BW1W120 00757590 BW1M119 0157a940
	bool32_t CheckInteractWithField();
	// BW1W120 00757610 BW1M119 0157a800
	bool32_t CheckInteractWithFishFarm();
	// BW1W120 00757690 BW1M119 0157a6d0
	bool32_t CheckInteractWithTree();
	// BW1W120 00757720 BW1M119 0157a690
	bool32_t CheckInteractWithBall();
	// BW1W120 00757730 BW1M119 0157a650
	bool32_t CheckInteractWithPot();
	// BW1W120 00757740 BW1M119 0157a610
	bool32_t CheckInteractWithRock();
	// BW1W120 00757750 BW1M119 0157a5c0
	bool32_t CheckInteractWithFootBall();
	// BW1W120 00757760 BW1M119 0157a420
	bool32_t CheckInteractWithVillager();
	// BW1W120 00757820 BW1M119 0157a390
	void SetDiscipleFollower(VILLAGER_DISCIPLE disciple_type);
	// BW1W120 00757850 BW1M119 0157a340
	bool32_t CheckInteractWithMagicLiving();
	// BW1W120 007578c0 BW1M119 0157c150
	bool32_t ChildFollowsMother();
	// BW1W120 007579f0 BW1M119 0157c060
	uint32_t ChildGotoCreche();
	// BW1W120 00757e80 BW1M119 01086d20
	uint32_t CheckChild();
	// BW1W120 00757ec0 BW1M119 0157bd20
	bool32_t ChildDecideWhatToDo();
	// BW1W120 00757f00 BW1M119 0157bcc0
	bool32_t CheckChildActivity();
	// BW1W120 00757f10 BW1M119 0157bc30
	bool32_t ChildBecomesAdult();
	// BW1W120 00757f40 BW1M119 01097450
	bool32_t IsMotherAlive();
	// BW1W120 00757f90 BW1M119 0157b920
	bool32_t CheckNeedNewAbode();
	// BW1W120 00758080 BW1M119 0157b850
	void MoveVillagerToAbode(Abode* abode);
	// BW1W120 007580d0 BW1M119 0157b7a0
	uint32_t MakeChildOrphaned(Villager* dead_villager);
	// BW1W120 00758180 BW1M119 01098ee0
	bool32_t CheckNeededForCivic();
	// BW1W120 007581a0 BW1M119 01080060
	uint32_t CheckNeededForTownDesire();
	// BW1W120 007581e0 BW1M119 01023f00
	float GetOwnDesiresTrigger();
	// BW1W120 007582f0 BW1M119 0157eeb0
	bool32_t CheckNeededForHarvest();
	// BW1W120 00758340 BW1M119 0109a540
	bool32_t CheckNeededForBuilding();
	// BW1W120 00758390 BW1M119 0157ec70
	bool32_t RunAwayFromObjectReaction();
	// BW1W120 007584b0 BW1M119 0157eb40
	bool32_t SetupBuildingObject(BuildingSite* building_site);
	// BW1W120 00758530 BW1M119 0157e990
	bool32_t SetupBuildingObject(MultiMapFixed* building_site);
	// BW1W120 007585a0 BW1M119 0157e820
	bool32_t SetupWaitForWood(BuildingSite* param_1);
	// BW1W120 007586b0 BW1M119 0157e780
	bool32_t WaitForWood();
	// BW1W120 007586e0 BW1M119 0157e5b0
	bool32_t SetupGetBuildingSupplies(BuildingSite* building_site);
	// BW1W120 007587d0 BW1M119 0157e340
	bool32_t GotoStoragePitForBuildingMaterials(BuildingSite* param_1);
	// BW1W120 00758960 BW1M119 0157e270
	bool32_t GotoWorkshopForBuildingMaterials(BuildingSite* building_site);
	// BW1W120 00758990 BW1M119 0157e160
	bool32_t ArrivesAtStoragePitForBuildingMaterials();
	// BW1W120 00758a00 BW1M119 0157df60
	bool32_t GotoBuildingSite(BuildingSite* param_1);
	// BW1W120 00758af0 BW1M119 0157dca0
	bool32_t ArrivesAtBuildingSite();
	// BW1W120 00758c40 BW1M119 0157d950
	bool32_t Building();
	// BW1W120 00758e20 BW1M119 0157d8f0
	float GetWoodUsedPerBuild();
	// BW1W120 00758e30 BW1M119 0109a440
	bool32_t CheckSatisfyAbodesDesire();
	// BW1W120 00758e90 BW1M119 0157d760
	bool32_t CheckSatisfyCivicBuildings();
	// BW1W120 00758ef0 BW1M119 0157d720
	bool32_t ArrivesAtRockForWood();
	// BW1W120 00758f00 BW1M119 0157d5c0
	bool32_t GotWoodFromRock();
	// BW1W120 00758f60 BW1M119 0157d370
	bool32_t ReenterBuildingState();
	// BW1W120 007590a0 BW1M119 0157cfc0
	bool32_t CheckForClearArea(const MapCoords& param_1, float param_2);
	// BW1W120 007592e0 BW1M119 0157cf30
	bool32_t ArriveAtPushObject();
	// BW1W120 00759330 BW1M119 0157cdc0
	bool32_t CheckSatisfyToBuild();
	// BW1W120 00759370 BW1M119 0157cc70
	bool32_t CheckSatisfyToRepair();
	// BW1W120 007593a0 BW1M119 0157cb10
	bool32_t CheckSatisfySupplyWorkshop();
	// BW1W120 00759450 BW1M119 0157c990
	bool32_t ArrivesAtStoragePitForWorkshopMaterials();
	// BW1W120 00759520 BW1M119 0157c800
	bool32_t ArrivesAtWorkshopForDropOff();
	// BW1W120 007595e0 BW1M119 0157c7a0
	uint32_t CheckForScaffoldForBuildingSite(BuildingSite* param_1);
	// BW1W120 007595f0 BW1M119 0157c760
	bool32_t IsScaffoldValid();
	// BW1W120 00759600 BW1M119 0157c710
	bool32_t ExitBringScaffoldToBuildingSite(unsigned char param_1);
	// BW1W120 00759610 BW1M119 0157c490
	MapCoords* GetPosForPushObject(Object* param_1, MapCoords& param_2);
	// BW1W120 00759750 BW1M119 0157c3b0
	bool32_t EnterBuilding(unsigned char param_1, unsigned char param_2);
	// BW1W120 007597b0 BW1M119 0157c2c0
	bool32_t ExitBuilding(unsigned char param_1);
	// BW1W120 00759890 BW1M119 0157f720
	Villager* FindImmediateNeighbour();
	// BW1W120 00759930 BW1M119 0157f6b0
	bool32_t DanceForEditingPurposes();
	// BW1W120 00759960 BW1M119 0157f640
	bool32_t DanceButNotWorship();
	// BW1W120 00759990 BW1M119 0157f580
	bool32_t MoveToDancePos();
	// BW1W120 00759a00 BW1M119 0157f430
	bool32_t ControlledByCreature();
	// BW1W120 00759a90 BW1M119 0157f220
	bool32_t ExitControlledByCreature(unsigned char state);
	// BW1W120 00759bf0 BW1M119 01580560
	bool32_t FarmerLookForField();
	// BW1W120 00759c00 BW1M119 015804a0
	bool32_t VillagerBecomesFarmer(Field* field);
	// BW1W120 00759c40 BW1M119 015802c0
	bool32_t SetFarmerGotoField(Field* param_1, int param_2);
	// BW1W120 00759d20 BW1M119 010049e0
	bool32_t FarmerArrivesAtFarm();
	// BW1W120 00759e40 BW1M119 01580160
	bool32_t FarmerDigsUpCrop();
	// BW1W120 00759ec0 BW1M119 01580080
	bool32_t FarmerPlantsCrop();
	// BW1W120 00759f30 BW1M119 0157f950
	bool32_t CheckSatisfyFoodDesire();
	// BW1W120 0075a250 BW1M119 0109f2c0
	bool32_t EnterFarming(unsigned char param_1, unsigned char param_2);
	// BW1W120 0075a2a0 BW1M119 0109d250
	bool32_t ExitFarming(unsigned char param_1);
	// BW1W120 0075a3d0 BW1M119 015822b0
	bool32_t DecideHowToPutOutFire(FireEffect* param_1);
	// BW1W120 0075a760
	void FUN_0075a760();
	// BW1W120 0075a770 BW1M119 01581b70
	bool32_t SetupMoveAroundFire(const MapCoords& pos, VILLAGER_STATES state);
	// BW1W120 0075a7e0 BW1M119 01581830
	bool32_t MoveAroundFire();
	// BW1W120 0075aa90 BW1M119 01581690
	bool32_t GetFireFightingPos(FireEffect* param_1, MapCoords* param_2);
	// BW1W120 0075ac50 BW1M119 015812c0
	bool32_t PutOutFireByBeating();
	// BW1W120 0075ad90 BW1M119 01581240
	bool32_t IsValidFire(FireEffect* fire_effect);
	// BW1W120 0075adc0 BW1M119 015810b0
	bool32_t EnterPutOutFire(unsigned char param_1, unsigned char param_2);
	// BW1W120 0075ae80 BW1M119 01580f10
	bool32_t ExitPutOutFire(unsigned char param_1);
	// BW1W120 0075af30 BW1M119 01580e30
	bool32_t EnterOnFire(unsigned char param_1, unsigned char param_2);
	// BW1W120 0075af80 BW1M119 01580d40
	bool32_t ExitOnFire(unsigned char fire_effect);
	// BW1W120 0075afe0 BW1M119 01580cd0
	bool32_t PutOutFireWithWater();
	// BW1W120 0075b000 BW1M119 01580c60
	bool32_t GetWaterToPutOutFire();
	// BW1W120 0075b020 BW1M119 01580a70
	bool32_t StopFireFighting();
	// BW1W120 0075b170 BW1M119 01580930
	bool32_t SetupOnFire(FireEffect* new_fire_effect);
	// BW1W120 0075b1e0 BW1M119 01580710
	bool32_t OnFire();
	// BW1W120 0075b3d0 BW1M119 01580650
	bool32_t FinishBeingOnFire();
	// BW1W120 0075b4c0 BW1M119 01582a20
	bool32_t FishermanLookForWater();
	// BW1W120 0075b510 BW1M119 01582930
	bool32_t VillagerBecomesFisherman();
	// BW1W120 0075b560 BW1M119 015827d0
	bool32_t VillagerBecomesFisherman(FishFarm* fish_farm);
	// BW1W120 0075b5d0 BW1M119 01582630
	bool32_t FishermanArrivesAtFishing();
	// BW1W120 0075b670 BW1M119 015825b0
	bool32_t IsAtValidFishingPos();
	// BW1W120 0075b6a0 BW1M119 0101dcd0
	bool32_t Fishing();
	// BW1W120 0075b820 BW1M119 01582410
	bool32_t EnterFishing(unsigned char new_state, unsigned char old_state);
	// BW1W120 0075b880 BW1M119 0109cae0
	bool32_t ExitFishing(unsigned char state);
	// BW1W120 0075b940 BW1M119 01583810
	bool32_t ShowPoisoned();
	// BW1W120 0075b990 BW1M119 0100c160
	bool ChangeStateToFindFoodToEat();
	// BW1W120 0075baf0 BW1M119 015835f0
	bool32_t CheckHungryAtHome();
	// BW1W120 0075bb00 BW1M119 01583500
	float GetDesireToPickupFood();
	// BW1W120 0075bb50 BW1M119 01089d20
	float GetDesireForFood();
	// BW1W120 0075bba0 BW1M119 01024060
	float GetDesireForLife();
	// BW1W120 0075bbc0 BW1M119 0102b110
	float GetLifeDesireFromLife(float life);
	// BW1W120 0075bc00 BW1M119 010035e0
	uint32_t GetAmountOfFoodRequiredForMeal();
	// BW1W120 0075bc20 BW1M119 0109cc60
	uint32_t GetAmountOfFoodToEat();
	// BW1W120 0075bcc0 BW1M119 0105a4c0
	bool CheckHungry();
	// BW1W120 0075bf00 BW1M119 01098ca0
	bool32_t CheckSatisfyOwnFoodDesire();
	// BW1W120 0075bf20 BW1M119 01582d50
	bool32_t EatFoodHeld();
	// BW1W120 0075c000 BW1M119 01582cc0
	bool32_t EatFood();
	// BW1W120 0075c040 BW1M119 01582be0
	bool32_t GetFoodFromHome(unsigned long food_amount);
	// BW1W120 0075c090 BW1M119 01582b20
	bool32_t EatFoodAtHome();
	// BW1W120 0075c0f0 BW1M119 01582ae0
	bool32_t HomelessEatDinner();
	// BW1W120 0075d130 BW1M119 0158c600
	void AssignFootballSubState();
	// BW1W120 0075d170 BW1M119 0158b410
	void AssignFootballAttackerSubState();
	// BW1W120 0075d230 BW1M119 0158aa50
	bool32_t FootballAttacker();
	// BW1W120 0075d2d0 BW1M119 0158a890
	void FootballAttackerShootProcess(Football* football);
	// BW1W120 0075d3a0 BW1M119 0158a670
	void FootballAttackerPassProcess(Football* param_1);
	// BW1W120 0075d500 BW1M119 0158a420
	void FootballAttackerLobNearGoalProcess(Football* football);
	// BW1W120 0075d670 BW1M119 0158a120
	void FootballAttackerDribbleProcess(Football* football);
	// BW1W120 0075d850 BW1M119 01589e90
	void FootballAttackerMoveToBePassedProcess(Football* param_1);
	// BW1W120 0075da90 BW1M119 01589ce0
	void FootballAttackerGoToBallProcess(Football* football);
	// BW1W120 0075db80 BW1M119 01589bd0
	void FootballAttackerGoHomeProcess(Football* param_1);
	// BW1W120 0075dbd0 BW1M119 01589b00
	void FootballAttackerIdleProcess(Football* football);
	// BW1W120 0075dc20 BW1M119 015898c0
	float FootballAttackerShootPriority(Football* param_1);
	// BW1W120 0075dd80 BW1M119 01589820
	float FootballAttackerPassPriority(Football* football);
	// BW1W120 0075ddc0 BW1M119 015897c0
	float FootballAttackerLobNearGoalPriority(Football* param_1);
	// BW1W120 0075ddd0 BW1M119 01589680
	float FootballAttackerDribblePriority(Football* param_1);
	// BW1W120 0075de70 BW1M119 01589590
	float FootballAttackerMoveToBePassedPriority(Football* param_1);
	// BW1W120 0075def0 BW1M119 01589530
	float FootballAttackerGoToBallPriority(Football* param_1);
	// BW1W120 0075df00 BW1M119 015893e0
	float FootballAttackerGoHomePriority(Football* param_1);
	// BW1W120 0075dfb0 BW1M119 01589230
	float FootballAttackerIdlePriority(Football* param_1);
	// BW1W120 0075e0b0 BW1M119 01588040
	void AssignFootballDefenderSubState();
	// BW1W120 0075e170 BW1M119 01587680
	bool32_t FootballDefender();
	// BW1W120 0075e210 BW1M119 01587450
	void FootballDefenderSaveProcess(Football* football);
	// BW1W120 0075e370 BW1M119 015873e0
	void FootballDefenderClearProcess(Football* football);
	// BW1W120 0075e380 BW1M119 015870e0
	void FootballDefenderDribbleProcess(Football* football);
	// BW1W120 0075e560 BW1M119 01587020
	void FootballDefenderMarkProcess(Football* football);
	// BW1W120 0075e5a0 BW1M119 01586e70
	void FootballDefenderGoToBallProcess(Football* football);
	// BW1W120 0075e690 BW1M119 01586d60
	void FootballDefenderGoHomeProcess(Football* param_1);
	// BW1W120 0075e6e0 BW1M119 01586c90
	void FootballDefenderIdleProcess(Football* football);
	// BW1W120 0075e730 BW1M119 01586a70
	void FootballDefenderPassProcess(Football* param_1);
	// BW1W120 0075e890 BW1M119 015869f0
	float FootballDefenderSavePriority(Football* football);
	// BW1W120 0075e8b0 BW1M119 01586970
	float FootballDefenderClearPriority(Football* football);
	// BW1W120 0075e8d0 BW1M119 01586830
	float FootballDefenderDribblePriority(Football* param_1);
	// BW1W120 0075e970 BW1M119 015867c0
	float FootballDefenderMarkPriority(Football* football);
	// BW1W120 0075e990 BW1M119 01586760
	float FootballDefenderGoToBallPriority(Football* param_1);
	// BW1W120 0075e9a0 BW1M119 015866f0
	float FootballDefenderGoHomePriority(Football* param_1);
	// BW1W120 0075e9b0 BW1M119 01586670
	float FootballDefenderIdlePriority(Football* param_1);
	// BW1W120 0075e9d0 BW1M119 015865d0
	float FootballDefenderPassPriority(Football* football);
	// BW1W120 0075ea10 BW1M119 01585df0
	bool32_t FootballGoalie();
	// BW1W120 0075eab0 BW1M119 01584fe0
	void AssignFootballGoalieSubState();
	// BW1W120 0075eb70 BW1M119 01584e00
	void FootballGoalieSaveProcess(Football* football);
	// BW1W120 0075ec50 BW1M119 01584d90
	void FootballGoalieClearProcess(Football* football);
	// BW1W120 0075ec60 BW1M119 01584c90
	void FootballGoalieLookProcess(Football* param_1);
	// BW1W120 0075ecd0 BW1M119 01584ae0
	void FootballGoalieGoToBallProcess(Football* football);
	// BW1W120 0075edb0 BW1M119 015849e0
	void FootballGoalieGoHomeProcess(Football* football);
	// BW1W120 0075ee00 BW1M119 01584970
	void FootballGoalieIdleProcess(Football* football);
	// BW1W120 0075ee10 BW1M119 015846c0
	void FootballGoaliePassProcess(Football* param_1);
	// BW1W120 0075efc0 BW1M119 01584650
	float FootballGoalieSavePriority(Football* football);
	// BW1W120 0075efe0 BW1M119 015845e0
	float FootballGoalieClearPriority(Football* football);
	// BW1W120 0075f000 BW1M119 01584570
	float FootballGoalieLookPriority(Football* football);
	// BW1W120 0075f020 BW1M119 01584510
	float FootballGoalieGoToBallPriority(Football* param_1);
	// BW1W120 0075f030 BW1M119 015844a0
	float FootballGoalieGoHomePriority(Football* param_1);
	// BW1W120 0075f040 BW1M119 01584430
	float FootballGoalieIdlePriority(Football* param_1);
	// BW1W120 0075f060 BW1M119 01584390
	float FootballGoaliePassPriority(Football* param_1);
	// BW1W120 0075f070 BW1M119 015842c0
	bool32_t FootballerIsTouchingBallPrecondition(Football* param_1);
	// BW1W120 0075f0a0 BW1M119 015841f0
	bool FootballerIsNotTouchingBallPrecondition(Football* param_1);
	// BW1W120 0075f0d0 BW1M119 01584150
	bool FootballerIsNearestBallPrecondition(Football* football);
	// BW1W120 0075f100 BW1M119 015840a0
	bool FootballerIsNotNearestBallPrecondition(Football* football);
	// BW1W120 0075f130 BW1M119 01583fa0
	bool32_t FootballerIsAtHomePrecondition(Football* param_1);
	// BW1W120 0075f190 BW1M119 01583e90
	bool32_t FootballerIsNotAtHomePrecondition(Football* param_1);
	// BW1W120 0075f1f0 BW1M119 01583de0
	bool32_t FootballerIsQuiteNearBallPrecondition(Football* param_1);
	// BW1W120 0075f230 BW1M119 01583d30
	bool32_t FootballerIsNotQuiteNearBallPrecondition(Football* param_1);
	// BW1W120 0075f270 BW1M119 01583c70
	bool32_t StartMoveToPickUpBallForDeadBall();
	// BW1W120 0075f2c0 BW1M119 01583bd0
	bool32_t ArrivedAtPickUpBallForDeadBall();
	// BW1W120 0075f2f0 BW1M119 01583b60
	bool32_t ArrivedAtPutDownBallForDeadBallStart();
	// BW1W120 0075f300 BW1M119 01583a30
	bool32_t ArrivedAtPutDownBallForDeadBallEnd();
	// BW1W120 0075f380 BW1M119 015838f0
	bool32_t FootballMoveToBall();
	// BW1W120 0075f4a0 BW1M119 0158d960
	bool32_t CheckSatisfyWoodDesire();
	// BW1W120 0075f510 BW1M119 0158d660
	uint32_t DecideHowToGetWood(int param_1, BigForest** param_2, Forest** param_3);
	// BW1W120 0075f710 BW1M119 0158d600
	bool32_t ForesterGotoForest();
	// BW1W120 0075f720 BW1M119 0158d4e0
	bool32_t VillagerGotoForest(Forest* param_1, VILLAGER_STATES param_2);
	// BW1W120 0075f7d0 BW1M119 0158d2d0
	bool32_t ForesterMoveToForest();
	// BW1W120 0075f930 BW1M119 0158d130
	bool32_t ForesterArrivesAtForest();
	// BW1W120 0075f9e0 BW1M119 0158cf60
	bool32_t ArrivesAtBigForest();
	// BW1W120 0075fab0 BW1M119 0158cf10
	bool32_t ArrivesAtBigForestForBuilding();
	// BW1W120 0075fac0 BW1M119 0158cdf0
	bool32_t ForesterChopsTree();
	// BW1W120 0075fb40 BW1M119 0158cd80
	bool32_t ForesterChopsTreeForBuilding();
	// BW1W120 0075fb60 BW1M119 0158ccf0
	bool32_t ForesterFinishedForestering();
	// BW1W120 0075fb90 BW1M119 0158cc90
	bool32_t TakeWoodFromTreeForBuilding();
	// BW1W120 0075fba0 BW1M119 0158cc40
	bool32_t TakeWoodFromPotForBuilding();
	// BW1W120 0075fbb0 BW1M119 0158cc00
	bool32_t TakeWoodFromPot();
	// BW1W120 0075fbc0 BW1M119 0158cb10
	bool32_t TakeWoodFromTree();
	// BW1W120 0075fc30 BW1M119 0158c980
	bool32_t GotWoodDecideWhatToDo();
	// BW1W120 0075fd00 BW1M119 0158c730
	bool32_t FindTreeNearVillager(Tree** found_tree);
	// BW1W120 0075fe20 BW1M119 0158c6c0
	bool32_t ExitForesting(unsigned char state);
	// BW1W120 0075fea0 BW1M119 01099070
	bool32_t HomeDecideWhatToDo();
	// BW1W120 0075ff80 BW1M119 0100c3e0
	bool32_t CheckNeededForSomething();
	// BW1W120 0075ffb0 BW1M119 01590d80
	bool32_t HomeNothingToDo();
	// BW1W120 00760000 BW1M119 01590d40
	bool32_t NothingToDo();
	// BW1W120 00760010 BW1M119 01098e30
	bool32_t CheckNeededForSpecial();
	// BW1W120 00760050 BW1M119 010979c0
	bool32_t CheckSatisfyOwnDesire(float param_1);
	// BW1W120 00760110 BW1M119 0100f140
	bool32_t CheckNeedsAtHome();
	// BW1W120 00760240 BW1M119 01590af0
	bool32_t CheckIllAtHome();
	// BW1W120 00760250 BW1M119 01590990
	bool32_t GoHomeDropResource();
	// BW1W120 00760270 BW1M119 010a0ae0
	bool32_t GoHome();
	// BW1W120 00760280 BW1M119 0109c2d0
	bool32_t DoGoingHome(VILLAGER_STATES state_1, VILLAGER_STATES state_2);
	// BW1W120 007604f0 BW1M119 01590690
	Town* GetTentPos(MapCoords& coords);
	// BW1W120 007606e0 BW1M119 015900e0
	bool32_t Landed();
	// BW1W120 00760930 BW1M119 0100ee50
	bool32_t ArrivesHome();
	// BW1W120 00760b10 BW1M119 01004990
	bool32_t AtHome();
	// BW1W120 00760b20 BW1M119 0158fff0
	bool32_t SitsDownToDinner();
	// BW1W120 00760b30 BW1M119 01003a90
	bool32_t GotoBedAtHome();
	// BW1W120 00760b60 BW1M119 0109cd80
	bool32_t CheckWhenGoingToBed();
	// BW1W120 00760c80 BW1M119 0158f9b0
	bool32_t CheckGetPregnantAtHome();
	// BW1W120 00760ca0 BW1M119 0100fc80
	bool32_t CheckDeathFromOldAge();
	// BW1W120 00760d70 BW1M119 01025d90
	bool32_t SleepingAtHome();
	// BW1W120 00760db0 BW1M119 0158f780
	bool32_t DoSleeping(float rest_multiplier);
	// BW1W120 00760e50 BW1M119 0158f720
	bool32_t WakeUpAtHome();
	// BW1W120 00760e60 BW1M119 0158f600
	bool32_t StartHavingSex();
	// BW1W120 00760ee0 BW1M119 0158f510
	bool32_t HavingSex();
	// BW1W120 00760f50 BW1M119 0158f490
	bool32_t StopHavingSex();
	// BW1W120 00760f80 BW1M119 0158f450
	bool32_t StartHavingSexAtHome();
	// BW1W120 00760f90 BW1M119 0158f300
	bool32_t StartHavingSex(Villager* param_1, VILLAGER_STATES param_2);
	// BW1W120 00761010 BW1M119 0158f2c0
	bool32_t HavingSexAtHome();
	// BW1W120 00761020 BW1M119 0158f280
	bool32_t StopHavingSexAtHome();
	// BW1W120 00761030 BW1M119 0158f240
	bool32_t WaitForDinner();
	// BW1W120 00761040 BW1M119 0158f1a0
	float GetPromiscuity();
	// BW1W120 00761070 BW1M119 0158f120
	bool32_t IsAvailableForSex();
	// BW1W120 00761090 BW1M119 0158f050
	bool32_t IsSexuallyActive();
	// BW1W120 007610d0 BW1M119 0158efd0
	bool32_t IsPromiscious();
	// BW1W120 00761110 BW1M119 0158eee0
	bool32_t FindAMateAtHome();
	// BW1W120 00761180 BW1M119 0158ee60
	bool32_t CheckForSexAtHome();
	// BW1W120 007611b0 BW1M119 0158edb0
	bool32_t ShallIWaitForDinner();
	// BW1W120 007611f0 BW1M119 0158ed00
	void HomeDeleted();
	// BW1W120 00761220 BW1M119 0158ec80
	bool MakeHomeless();
	// BW1W120 00761240 BW1M119 0158ea60
	bool MakeHomelessNoStateChange();
	// BW1W120 00761320 BW1M119 0158e9a0
	bool32_t HomelessStart();
	// BW1W120 00761360 BW1M119 0158e810
	bool32_t CheckHomelessMoveIntoAbode();
	// BW1W120 007613f0 BW1M119 0158e7d0
	bool32_t VillagerGossips();
	// BW1W120 00761400 BW1M119 0158e710
	void SetupAfterTapOnAbode(MapCoords& param_1, VILLAGER_STATES param_2);
	// BW1W120 00761440 BW1M119 0158e6b0
	bool32_t AfterTapOnAbode();
	// BW1W120 00761460 BW1M119 01097530
	bool32_t CheckSatisfyRelaxation();
	// BW1W120 00761490 BW1M119 0109e8c0
	bool32_t CheckSatisfySleep();
	// BW1W120 00761510 BW1M119 0158e530
	bool32_t ArtifactDance();
	// BW1W120 007615c0 BW1M119 0158e260
	bool32_t WaitForArtifactDance();
	// BW1W120 00761800 BW1M119 0158e210
	bool32_t EnterWaitForArtifactDance(unsigned char param_1, unsigned char param_2);
	// BW1W120 00761810 BW1M119 0158e090
	bool32_t GoHomeAndChange();
	// BW1W120 007618c0 BW1M119 0158df30
	void ChangeTribeIfRequired(TRIBE_TYPE param_1, int param_2);
	// BW1W120 00761980 BW1M119 0158de20
	bool32_t ExitGoHomeAndChange(unsigned char state);
	// BW1W120 00761a00 BW1M119 0158dbf0
	bool32_t ChangeInfo(const GVillagerInfo* param_1);
	// BW1W120 00761ae0 BW1M119 0158daf0
	bool32_t SleepInTent();
	// BW1W120 00761b40 BW1M119 01097740
	bool32_t ExitAtHome(unsigned char state);
	// BW1W120 00761b70 BW1M119 0158da50
	bool32_t GoHomeFromWorship();
	// BW1W120 00761c00 BW1M119 01592550
	bool32_t HousewifeLookForWork();
	// BW1W120 00761c10 BW1M119 015924b0
	bool32_t HousewifeAtHome();
	// BW1W120 00761c40 BW1M119 015923e0
	bool32_t CheckNeededForHouseWork();
	// BW1W120 00761c90 BW1M119 015922e0
	bool32_t CheckNeededToMakeDinner();
	// BW1W120 00761ce0 BW1M119 015921f0
	bool32_t HousewifeGotoStoragePit();
	// BW1W120 00761d60 BW1M119 01592000
	bool32_t HousewifeArrivesAtStoragePit();
	// BW1W120 00761ea0 BW1M119 01591f20
	bool32_t HousewifePickupFromStoragePit();
	// BW1W120 00761f10 BW1M119 01591e50
	bool32_t HousewifeReturnHomeWithFood();
	// BW1W120 00761f60 BW1M119 01591da0
	bool32_t HousewifeMakeDinner();
	// BW1W120 00761fa0 BW1M119 01591d10
	bool32_t HousewifeServesDinner();
	// BW1W120 00761fc0 BW1M119 01591c70
	bool32_t HousewifeClearsAwayDinner();
	// BW1W120 00761ff0 BW1M119 01591bd0
	bool32_t HousewifeDoesHousework();
	// BW1W120 00762020 BW1M119 015918f0
	bool32_t HousewifeGossipsAroundStoragePit();
	// BW1W120 007621a0 BW1M119 01591780
	bool32_t HousewifeStartsGivingBirth();
	// BW1W120 00762430 BW1M119 01591410
	bool32_t HousewifeGivingBirth();
	// BW1W120 007624a0 BW1M119 015913b0
	bool32_t HousewifeGivenBirth();
	// BW1W120 007624c0 BW1M119 01591200
	bool32_t WillHousewifeGetPregnant(Villager* param_1);
	// BW1W120 00762570 BW1M119 01591170
	bool32_t HousewifeGetsPregnant(Villager* param_1);
	// BW1W120 007625a0 BW1M119 01591090
	bool32_t HousewifeCalledToMakeDinner();
	// BW1W120 00762600 BW1M119 01590fa0
	bool32_t HousewifeAskForMeal();
	// BW1W120 00762670 BW1M119 01590f60
	bool32_t CheckSatisfyForChildren();
	// BW1W120 007626e0 BW1M119 015925b0
	bool32_t CheckLeaderNeeded();
	// BW1W120 007630e0 BW1M119 01593980
	bool IsPlaytime();
	// BW1W120 007630f0 BW1M119 01593930
	bool32_t CheckPlaytimeAvailableToPlayPFootball();
	// BW1W120 00763100 BW1M119 015938e0
	bool32_t CheckPlaytimeSettingUpPlayPFootball();
	// BW1W120 00763110 BW1M119 01593890
	bool32_t MoveToFootballPitchConstruction();
	// BW1W120 00763120 BW1M119 01593830
	bool32_t FootballWalkToPosition();
	// BW1W120 00763130 BW1M119 010a1e70
	bool32_t CheckSatisfyPlaytimeDesire();
	// BW1W120 00763140 BW1M119 01593750
	bool32_t WaitForKickOff();
	// BW1W120 00763170 BW1M119 015936b0
	bool32_t FootballMatchPaused();
	// BW1W120 007631b0 BW1M119 015935f0
	bool32_t FootballMexicanWave();
	// BW1W120 007631f0 BW1M119 015934b0
	bool32_t FootballWatchMatch();
	// BW1W120 00763280 BW1M119 015933b0
	bool32_t ExitFootball(unsigned char exit_state);
	// BW1W120 00763800 BW1M119 0101cf90
	bool32_t SetupMoveToPos(const MapCoords& coord, VILLAGER_STATES end_state);
	// BW1W120 00763b40 BW1M119 0159ade0
	bool32_t FleeingFromPredatorReaction();
	// BW1W120 00763cb0 BW1M119 0159ac30
	bool32_t SetupGoAndHideInNearbyBuilding(GameThingWithPos* thing);
	// BW1W120 00763d90 BW1M119 0159a9d0
	bool32_t GoAndHideInNearbyBuilding();
	// BW1W120 00763f00 BW1M119 0159a8b0
	Abode* GetAbodeToHideInAtPos(const MapCoords& pos);
	// BW1W120 00763f80 BW1M119 0159a700
	bool32_t LookToSeeIfItIsSafe();
	// BW1W120 00764410 BW1M119 01599c90
	bool32_t PerformInspectionReaction();
	// BW1W120 00764490 BW1M119 01599a10
	bool32_t ApproachObjectReaction();
	// BW1W120 00764610 BW1M119 01599940
	bool32_t InitialiseTellOthersAboutObject();
	// BW1W120 00764650 BW1M119 015998f0
	bool32_t TellOthersAboutInterestingObject();
	// BW1W120 00764660 BW1M119 015998a0
	bool32_t InitialiseLookAroundForVillagerToTell();
	// BW1W120 00764670 BW1M119 01599850
	bool32_t LookAroundForVillagerToTell();
	// BW1W120 00764680 BW1M119 01599810
	bool32_t ApproachVillagerToTalkTo();
	// BW1W120 00764690 BW1M119 015997c0
	bool32_t TellParticularVillagerAboutObject();
	// BW1W120 00764aa0 BW1M119 01598de0
	bool32_t InitialiseBewilderedByMagicTreeReaction();
	// BW1W120 00764b50 BW1M119 01598b10
	bool32_t PerformBewilderedByMagicTreeReaction();
	// BW1W120 00764d10 BW1M119 01598a30
	bool32_t TurnToFaceMagicTree();
	// BW1W120 00764d70 BW1M119 01598910
	bool32_t LookAtMagicTree();
	// BW1W120 00765140 BW1M119 01598350
	bool32_t ApproachHandReaction();
	// BW1W120 007651a0 BW1M119 015981d0
	bool32_t FindNearbyVillagerWhoIsntReacting();
	// BW1W120 00765320 BW1M119 01597ef0
	bool32_t ArrivesAtPickupBallReaction();
	// BW1W120 007653f0 BW1M119 01597e20
	bool32_t WatchFlyingObjectReaction();
	// BW1W120 00765450 BW1M119 01597cf0
	bool32_t PointAtFlyingObjectReaction();
	// BW1W120 00765870 BW1M119 015974b0
	bool32_t ReactToFire();
	// BW1W120 00765e00 BW1M119 01596d20
	bool32_t AmazedByMagicShieldReaction();
	// BW1W120 00766130 BW1M119 01596a00
	bool32_t DanceWhileReacting();
	// BW1W120 007662f0 BW1M119 01596690
	bool32_t GoToTeleportReaction();
	// BW1W120 00766380 BW1M119 01596630
	bool32_t GoToTeleportReactionQuickly();
	// BW1W120 00766390 BW1M119 01596540
	bool32_t ExitReactToTeleport(unsigned char state);
	// BW1W120 007663f0 BW1M119 01596470
	bool32_t TeleportReaction();
	// BW1W120 00766680 BW1M119 01595db0
	bool32_t PointAtDeadPerson();
	// BW1W120 00766700 BW1M119 01595be0
	bool32_t GoTowardsDeadPerson();
	// BW1W120 00766810 BW1M119 01595b50
	bool32_t LookAtDeadPerson();
	// BW1W120 00766850 BW1M119 01595a70
	bool32_t MournDeadPerson();
	// BW1W120 007668e0 BW1M119 01595980
	bool32_t FaintingReaction();
	// BW1W120 00766910 BW1M119 01595850
	bool32_t StartConfusedReaction();
	// BW1W120 00766930 BW1M119 015956f0
	bool32_t ConfusedReaction();
	// BW1W120 00766a90 BW1M119 01595280
	bool32_t CrowdReaction();
	// BW1W120 00766c60 BW1M119 01595130
	bool32_t MoveTowardsObjectToLookAt();
	// BW1W120 00766d00 BW1M119 01595050
	bool32_t InitialiseImpressedReaction();
	// BW1W120 00766d60 BW1M119 01594f40
	bool32_t PerformImpressedReaction();
	// BW1W120 00766e50 BW1M119 01594b80
	bool32_t InitialiseFightReaction();
	// BW1W120 00767280 BW1M119 01594410
	bool32_t ReactToBreeder();
	// BW1W120 007672c0 BW1M119 01594360
	bool32_t GoAndHaveSexWith(Villager* mate);
	// BW1W120 007673a0 BW1M119 01594050
	bool32_t WaitForMate();
	// BW1W120 00767410 BW1M119 01594010
	bool32_t EnterDrowning(unsigned char param_1, unsigned char param_2);
	// BW1W120 00767420 BW1M119 01593fd0
	bool32_t ExitDrowning(unsigned char param_1);
	// BW1W120 007678a0 BW1M119 0159d750
	bool32_t InspectCreatureReaction();
	// BW1W120 00767970 BW1M119 0159d610
	bool32_t PerformInspectCreatureReaction();
	// BW1W120 00767a00 BW1M119 0159d3c0
	bool32_t ApproachCreatureReaction();
	// BW1W120 00767ba0 BW1M119 0159d280
	bool32_t InitialiseRespectCreatureReaction();
	// BW1W120 00767c80 BW1M119 0159d190
	bool32_t TurnToFaceCreatureReaction();
	// BW1W120 00767ce0 BW1M119 0159d030
	bool32_t PerformRespectCreatureReaction();
	// BW1W120 00767dc0 BW1M119 0159cf70
	bool32_t FinishRespectCreatureReaction();
	// BW1W120 00767e00 BW1M119 0159cd60
	bool32_t FleeingFromCreatureReaction();
	// BW1W120 00767f70 BW1M119 0159cc60
	bool32_t MoveTowardsCreatureReaction();
	// BW1W120 007682a0 BW1M119 0159c3d0
	void CalculateNearestFreeDestination(MapCoords* param_1);
	// BW1W120 007683f0 BW1M119 0159c370
	void UpdateAttitudeToCreature();
	// BW1W120 00768400 BW1M119 0159c150
	bool32_t UpdateReactiveStateFromAttitudeToCreature();
	// BW1W120 00768510 BW1M119 0159c0c0
	void SetupMoveToCreatureReaction(const MapCoords& param_1, unsigned char param_2);
	// BW1W120 00768680 BW1M119 0159e750
	bool32_t SetupScriptWanderToPos(const MapCoords& pos, float radius, unsigned short min_turns,
	                                unsigned short max_turns);
	// BW1W120 007686d0 BW1M119 0159e610
	bool32_t SetupNewScriptWander();
	// BW1W120 007687f0 BW1M119 0159e440
	bool32_t ScriptWanderAroundPos();
	// BW1W120 00768970 BW1M119 01005e50
	bool32_t ScriptPlayAnim();
	// BW1W120 007689d0 BW1M119 0100cac0
	bool32_t IsScriptAnimationComplete();
	// BW1W120 00768a00 BW1M119 0159dfa0
	uint32_t ScriptAnimation();
	// BW1W120 00768a10 BW1M119 0159df60
	bool32_t WeakOnGround();
	// BW1W120 00768a20 BW1M119 0159dd10
	bool32_t ScriptGoAndMoveAlongPath();
	// BW1W120 00768be0 BW1M119 0159f940
	bool32_t VillagerBecomesShepherd(Flock* new_flock);
	// BW1W120 00768c30 BW1M119 0159f810
	bool32_t ShepherdLookForFlock();
	// BW1W120 00768c90 BW1M119 0159f770
	bool32_t FindClosestFlockAnimal();
	// BW1W120 00768cc0 BW1M119 0159f5d0
	bool32_t ShepherdMoveFlockToWater();
	// BW1W120 00768dd0 BW1M119 01005f20
	bool32_t ShepherdWaitForFlock();
	// BW1W120 00768e30 BW1M119 0159f480
	bool32_t ShepherdGotoFlock();
	// BW1W120 00768ec0 BW1M119 0159f370
	bool32_t ShepherdTakesControlOfFlock();
	// BW1W120 00768f20 BW1M119 0159f2a0
	bool32_t ShepherdReleasesControlOfFlock();
	// BW1W120 00768f50 BW1M119 0159f1e0
	bool32_t ExitShepherding(unsigned char state);
	// BW1W120 00768fb0 BW1M119 0159f050
	bool32_t ShepherdDecideWhatToDoWithFlock();
	// BW1W120 00769070 BW1M119 0159ef90
	bool32_t ShepherdMoveFlockBack();
	// BW1W120 007690d0 BW1M119 0159ef50
	bool32_t ShepherdMoveFlockToFood();
	// BW1W120 007690e0 BW1M119 0159edb0
	bool32_t ShepherdTakeAnimalForSlaughter();
	// BW1W120 007691a0 BW1M119 01029220
	bool32_t ShepherdCheckAnimalForSlaughter();
	// BW1W120 00769390 BW1M119 0159eaf0
	bool32_t ShepherdSlaughterAnimal();
	// BW1W120 00769430 BW1M119 01006670
	bool32_t SlaughterAnimalIsClose(float max_dist, Living* exclude);
	// BW1W120 00769460 BW1M119 0159e970
	bool32_t ShepherdFetchStray();
	// BW1W120 00769620 BW1M119 01098850
	bool32_t GotoStoragePitForDropOff();
	// BW1W120 007696d0 BW1M119 010061f0
	bool32_t ArrivesAtStoragePitForDropOff();
	// BW1W120 00769830 BW1M119 01098a10
	bool32_t GotoStoragePitForFood();
	// BW1W120 007698b0 BW1M119 015a3030
	bool32_t ArrivesAtStoragePitForFood();
	// BW1W120 007698d0 BW1M119 015a2c50
	bool32_t ArrivesAtStoragePitForResource(RESOURCE_TYPE param_1, unsigned long param_2, VILLAGER_STATES param_3,
	                                        VILLAGER_STATES param_4);
	// BW1W120 00769b30 BW1M119 015a2b80
	bool32_t ArrivesAtHomeWithFood();
	// BW1W120 00769b80 BW1M119 015a2a60
	bool32_t CheckTrader();
	// BW1W120 00769c10 BW1M119 015a2a20
	bool32_t CheckMissionary();
	// BW1W120 00769c20 BW1M119 015a2810
	bool32_t CheckTraderPickUpOrDropOff(RESOURCE_TYPE resource_type);
	// BW1W120 00769d20 BW1M119 015a26e0
	bool32_t ArrivesAtStoragePitForTraderPickUp();
	// BW1W120 00769dc0 BW1M119 015a2540
	bool32_t ArrivesAtStoragePitForTraderDropOff();
	// BW1W120 00769ea0 BW1M119 015a2470
	bool32_t SetTraderNothingToDo();
	// BW1W120 00769ee0 BW1M119 015a2140
	bool32_t SetupBreederDisciple();
	// BW1W120 0076a1b0 BW1M119 015a1fd0
	bool32_t BreederDisciple();
	// BW1W120 0076a220 BW1M119 015a1eb0
	bool32_t MissionaryDisciple();
	// BW1W120 0076a2a0 BW1M119 015a1e10
	bool32_t EnterBreeder(unsigned char param_1, unsigned char param_2);
	// BW1W120 0076a2d0 BW1M119 015a1db0
	bool32_t ExitBreeder(unsigned char state);
	// BW1W120 0076a2f0 BW1M119 015a1c40
	uint32_t AtStructureRemoveResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long param_3,
	                                   bool* param_4);
	// BW1W120 0076a3b0 BW1M119 0100b000
	uint32_t AtStructureAddResource(MultiMapFixed* param_1, RESOURCE_TYPE param_2, unsigned long& param_3,
	                                bool param_4);
	// BW1W120 0076a780 BW1M119 015a1580
	bool32_t Drowning();
	// BW1W120 0076a7e0 BW1M119 015a1430
	bool32_t MakeScaredStiff();
	// BW1W120 0076a8b0 BW1M119 015a13c0
	bool32_t ScaredStiff();
	// BW1W120 0076a8d0 BW1M119 015a1150
	bool32_t VagrantStart();
	// BW1W120 0076aa60 BW1M119 015a1100
	bool32_t MornDeath();
	// BW1W120 0076aa70 BW1M119 015a10c0
	bool32_t EatOutside();
	// BW1W120 0076aab0 BW1M119 015a0e00
	bool32_t SetupInspectObject(Object* param_1);
	// BW1W120 0076ac40 BW1M119 015a0cf0
	bool32_t InspectObject();
	// BW1W120 0076ace0 BW1M119 015a0c40
	bool32_t EnterSex(unsigned char param_1, unsigned char param_2);
	// BW1W120 0076acf0 BW1M119 015a0b50
	bool32_t SetupWander(JustWholeMapXZ& wander_area, VILLAGER_STATES state);
	// BW1W120 0076ad80 BW1M119 015a0a50
	bool32_t ExitSex(unsigned char param_1);
	// BW1W120 0076b030 BW1M119 0100c660
	bool32_t IsInACreaturesHand();
	// BW1W120 0076b060 BW1M119 015a0700
	bool32_t SetupWaitForCounter(unsigned short counter, VILLAGER_STATES state);
	// BW1W120 0076b090 BW1M119 0109fbb0
	uint32_t SetupPauseForASecond(VILLAGER_STATES state);
	// BW1W120 0076b0b0 BW1M119 01011190
	bool32_t PauseForASecond();
	// BW1W120 0076b0d0 BW1M119 015a04e0
	bool32_t SetupPanicReaction(Reaction* param_1, MapCoords& param_2);
	// BW1W120 0076b1c0 BW1M119 015a0450
	bool32_t PanicReaction();
	// BW1W120 0076b200 BW1M119 015a0280
	bool32_t GotoCongregateInTownAfterEmergency();
	// BW1W120 0076b300 BW1M119 015a0190
	bool32_t CongregateInTownAfterEmergency();
	// BW1W120 0076b3f0 BW1M119 0101dfc0
	bool32_t GoAndChilloutOutsideHome();
	// BW1W120 0076b4e0 BW1M119 010623b0
	bool32_t SitAndChillout();
	// BW1W120 0076b570 BW1M119 01005570
	bool32_t EnterSitAndChillOut(unsigned char param_1, unsigned char param_2);
	// BW1W120 0076b590 BW1M119 0159fd20
	bool32_t GoAndChilloutInTown();
	// BW1W120 0076b610 BW1M119 010144b0
	void GetMeToMyChillOutPos(int (Villager::*callback)(MapCoords&), MapCoords& param_5, float param_6,
	                          const MapCoords& param_7);
	// BW1W120 0076b7e0 BW1M119 0159fc60
	bool32_t ArrivesHomeFromWorship();
	// BW1W120 0076b7f0 BW1M119 0159fc00
	bool32_t SleepInTentFromWorship();
	// BW1W120 0076b800 BW1M119 0159fa50
	bool32_t BreederJustLanded();
	// BW1W120 0076b980 BW1M119 015a37b0
	bool32_t ArrivesInAbodeToPickUpExcess();
	// BW1W120 0076b990 BW1M119 015a3770
	bool32_t ArrivesInAbodeToTrade();
	// BW1W120 0076b9a0 BW1M119 016ea334
	void SetupFoodForWoodTrade(long param_1);
	// BW1W120 0076b9b0 BW1M119 015a36f0
	bool32_t ExcessFood();
	// BW1W120 0076b9c0 BW1M119 016ea344
	void SetupWoodForFoodTrade(long param_1);
	// BW1W120 0076b9d0 BW1M119 015a3670
	bool32_t ExcessWood();
	// BW1W120 0076ba60 BW1M119 01098d20
	bool32_t CheckNeededForWorship();
	// BW1W120 0076bae0 BW1M119 015a5bb0
	float CheckWorshipActivity(int num_needed);
	// BW1W120 0076bc20 BW1M119 015a5a80
	bool32_t CanIGetToTheWorshipSite(MagicTeleport*& teleport);
	// BW1W120 0076bcc0 BW1M119 015a5880
	bool32_t GotoWorshipSiteForWorship();
	// BW1W120 0076bda0 BW1M119 015a57a0
	bool32_t SetGotoWorshipSpeed();
	// BW1W120 0076be00 BW1M119 015a5680
	bool32_t ArrivesAtWorshipSiteForWorship();
	// BW1W120 0076bec0 BW1M119 015a54b0
	bool32_t CheckVillagerGoBackToTownFromWorship();
	// BW1W120 0076bf90 BW1M119 015a5440
	bool32_t CheckNeededForSupplyWorship();
	// BW1W120 0076bfa0 BW1M119 015a52a0
	bool32_t GotoStoragePitForWorshipSupplies();
	// BW1W120 0076c080 BW1M119 015a5170
	bool32_t ArrivesAtStoragePitForWorshipSupplies();
	// BW1W120 0076c100 BW1M119 015a5120
	bool32_t GotoWorshipSiteWithSupplies();
	// BW1W120 0076c110 BW1M119 015a50d0
	bool32_t MoveToWorshipSiteWithSupplies();
	// BW1W120 0076c120 BW1M119 015a5000
	bool32_t ExitMoveToWorshipSiteWithSupplies(unsigned char state);
	// BW1W120 0076c170 BW1M119 015a4f00
	bool32_t ExitMoveToWorshipSite(unsigned char state);
	// BW1W120 0076c1f0 BW1M119 015a4dd0
	bool32_t ExitAtWorshipSite(unsigned char state);
	// BW1W120 0076c280 BW1M119 015a4d20
	bool32_t ExitGetFoodAtWorship(unsigned char state);
	// BW1W120 0076c2d0 BW1M119 015a4c10
	bool32_t ArrivesAtWorshipSiteWithSupplies();
	// BW1W120 0076c390 BW1M119 015a4a80
	bool32_t RestartWorshippingAtWorshipSite();
	// BW1W120 0076c3c0 BW1M119 015a49f0
	bool32_t RestartWorshippingCreature();
	// BW1W120 0076c3f0 BW1M119 015a4920
	bool32_t AddVillagerToWorshipSite();
	// BW1W120 0076c440 BW1M119 015a47e0
	bool RemoveVillagerFromWorshipSite();
	// BW1W120 0076c4c0 BW1M119 015a46d0
	bool32_t StartWorshippingAtWorshipSite();
	// BW1W120 0076c550 BW1M119 015a45d0
	bool32_t StartHidingAtWorshipSite();
	// BW1W120 0076c5e0 BW1M119 015a44c0
	bool32_t HidingAtWorshipSite();
	// BW1W120 0076c680 BW1M119 015a4400
	bool32_t WorshippingAtWorshipSite();
	// BW1W120 0076c6e0 BW1M119 015a42a0
	bool StartWorshippingCreature(Creature* creature);
	// BW1W120 0076c7c0 BW1M119 015a4210
	bool32_t WorshippingCreature();
	// BW1W120 0076c800 BW1M119 015a40c0
	bool32_t ReduceVillagerLifeByChant();
	// BW1W120 0076c890 BW1M119 015a4020
	bool32_t ProcessInWorship();
	// BW1W120 0076c8d0 BW1M119 015a3f30
	bool32_t CheckRequestGoHome();
	// BW1W120 0076c930 BW1M119 015a3df0
	bool32_t CheckNeededForWorshipSiteBuilding();
	// BW1W120 0076c9a0 BW1M119 015a3cc0
	bool32_t CheckAllowedToRestAtWorshipSite(int move_to_food);
	// BW1W120 0076ca30 BW1M119 015a3b50
	bool32_t GetFoodAtWorshipSite();
	// BW1W120 0076caf0 BW1M119 015a3b00
	bool32_t GetFoodDesireAtWorshipSite();
	// BW1W120 0076cb00 BW1M119 015a3a20
	bool32_t GotoAltarForRest();
	// BW1W120 0076cb80 BW1M119 015a3990
	bool32_t ArrivesAtAltarForRest();
	// BW1W120 0076cbb0 BW1M119 015a3900
	bool32_t AtAltarRest();
	// BW1W120 0076cbe0 BW1M119 015a3870
	bool32_t AtAltarFinishedRest();
	// BW1W120 0076cc00 BW1M119 015a3800
	bool32_t CheckSatisfySuppyWorship();

	// State-table handlers reached only through the villager/animal state
	// tables in GStates.cpp. Names are placeholders keyed on the address;
	// the signature of each is fixed by the table slot it is stored in.

	// The five below keep their real names. The Mac game binary inlined them, so
	// they have no BW1M119 address: each name appears exactly once in the whole
	// Mac file, in the traceback tables of one of the 11 shared-library PEF
	// containers that follow the game container, and never in the game container
	// itself (unlike the other 54 members of the Save/Load family).

	// save_state slot
	// BW1W120 005ac9a0 BW1M119 inlined
	bool32_t SaveInFlying(GameOSFile& file) { return 1; }
	// BW1W120 005ac9b0 BW1M119 inlined
	bool32_t LoadInFlying(GameOSFile& file) { return 1; }
	// BW1W120 005ac9c0 BW1M119 inlined
	bool32_t SaveWaitForAnim(GameOSFile& file) { return 1; }
	// BW1W120 005ac9d0 BW1M119 inlined
	bool32_t LoadWaitForAnim(GameOSFile& file) { return 1; }
	// BW1W120 005ac990 BW1M119 inlined
	uint32_t AlwaysReactToTownEmergency() { return VILLAGER_STATE_MOVE_TO_POS; }
	// BW1W120 005319c0 BW1M119 012c0330
	bool32_t FootballWonGoal();
	// BW1W120 005319d0 BW1M119 012c02f0
	bool32_t FootballLostGoal();
	// BW1W120 00757c90 BW1M119 01070040
	bool32_t ChildAtCreche();
	// BW1W120 00766fb0 BW1M119 01594b10
	bool32_t PerformFightReaction();

	// field_0x60 slot
	// BW1W120 00423400 BW1M119 0102aa20
	uint32_t MoveToPosAnimation();
	// BW1W120 00423540 BW1M119 010ad160
	uint32_t WatchFightAnimation();
	// BW1W120 00423730 BW1M119 010ad0f0
	uint32_t LandedAnimation();
	// BW1W120 00423770 BW1M119 010ad060
	uint32_t DyingAnimation();
	// BW1W120 004237a0 BW1M119 010acfd0
	uint32_t DeadAnimation();
	// BW1W120 004237d0 BW1M119 010acf60
	uint32_t KissingAnimation();
	// BW1W120 004237f0 BW1M119 010acec0
	uint32_t ThrownAnimation();
	// BW1W120 00423850 BW1M119 010acb10
	uint32_t DanceAnimation();
	// BW1W120 00423a80 BW1M119 010acab0
	uint32_t LookAtLargeObjectAnimation();
	// BW1W120 00423ac0 BW1M119 010aca00
	uint32_t ForesteringAnimation();
	// BW1W120 00423ad0 BW1M119 010ac920
	uint32_t LookAtFlyingObjectAnimation();
	// BW1W120 00423bd0 BW1M119 010ac690
	uint32_t FootballWaitForKickOffAnimation();
	// BW1W120 00423c50 BW1M119 010ac640
	uint32_t FootballGoalKeeperAnimation();
	// BW1W120 00423c60 BW1M119 010ac5f0
	uint32_t FootballAttackerAnimation();
	// BW1W120 00423c70 BW1M119 010ac5a0
	uint32_t FootballDefenderAnimation();
	// BW1W120 00423d20 BW1M119 010ac380
	uint32_t FootballMatchPausedAnimation();
	// BW1W120 00423e20 BW1M119 010ac170
	uint32_t BuildingAnimation();
	// BW1W120 00423eb0 BW1M119 010ac060
	uint32_t InspectCreatureAnimation();
	// BW1W120 00423f60 BW1M119 010abfd0
	uint32_t RespectCreatureAnimation();
	// BW1W120 00423fa0 BW1M119 010abf40
	uint32_t ControlledByCreatureAnimation();
	// BW1W120 00423fd0 BW1M119 010abe60
	uint32_t PointAtFlyingObjectAnimation();
	// BW1W120 00424050 BW1M119 010abdb0
	uint32_t YawnAnimation();
	// BW1W120 00424080 BW1M119 0109e6d0
	uint32_t PauseForASecondAnimation();
	// BW1W120 004240c0 BW1M119 010abca0
	uint32_t AmazedByShieldAnimation();
	// BW1W120 00424100 BW1M119 010abbb0
	uint32_t TownEmergencyAnimation();
	// BW1W120 004241b0 BW1M119 010abaf0
	uint32_t RandomCrowdAnimation();
	// BW1W120 00424210 BW1M119 0109f030
	uint32_t SitDownAnimation();

	// TransitionAnimation slot
	// BW1W120 00424290 BW1M119 010aba00
	uint32_t SleepInTentIntoOutofAnimation(uint8_t param_1, uint8_t param_2);
	// BW1W120 004242b0 BW1M119 01028bb0
	uint32_t MoveToPosIntoOutofAnimation(uint8_t param_1, uint8_t param_2);
	// BW1W120 00424300 BW1M119 010ab8f0
	uint32_t MournIntoOutofAnimation(uint8_t param_1, uint8_t param_2);
	// BW1W120 00424350 BW1M119 010ab820
	uint32_t PrayIntoOutofAnimation(uint8_t param_1, uint8_t param_2);
	// BW1W120 00424370 BW1M119 010ab650
	uint32_t ArrivesAtResourceIntoOutofAnimation(uint8_t param_1, uint8_t param_2);
	// BW1W120 004243a0 BW1M119 0109e810
	uint32_t SitDownIntoOutOfAnimation(uint8_t param_1, uint8_t param_2);
	// BW1W120 004243e0 BW1M119 010ab510
	uint32_t BuildingIntoOutofAnimation(uint8_t param_1, uint8_t param_2);

	// validate slot
	// BW1W120 00756990 BW1M119 016e91c4
	void WallhugValidate();
};

class MissionaryControl : public GameThingWithPos
{
public:
	// Override methods

	// BW1W120 00756740 BW1M119 0156d9b0
	virtual ~MissionaryControl();
	// BW1W120 00756870 BW1M119 0156d700
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00756700 BW1M119 0149bc10
	virtual GPlayer* GetPlayer();
	// BW1W120 00756730 BW1M119 0156c870
	virtual char* GetDebugText();
	// BW1W120 007568a0 BW1M119 0156d660
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007568e0 BW1M119 0156d5c0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00756720 BW1M119 0156c830
	virtual uint32_t GetSaveType();
	// BW1W120 00756920 BW1M119 0156d4c0
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 00756710 BW1M119 0156c7f0
	virtual const char* GetText();

	// Constructors

	// BW1W120 007566c0 BW1M119 0156db40
	MissionaryControl();
	// BW1W120 00756760 BW1M119 0156da50
	MissionaryControl(Villager* param_1, GPlayer* param_2);

	// Non-virtual methods

	// BW1W120 007567c0 BW1M119 0156d920
	float GetImpressiveValue();
	// BW1W120 007567e0 BW1M119 0156d7a0
	void Process();
};

#endif /* BW1_DECOMP_VILLAGER_INCLUDED_H */
