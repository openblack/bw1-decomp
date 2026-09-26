#ifndef BW1_DECOMP_LIVING_INCLUDED_H
#define BW1_DECOMP_LIVING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h>                       /* For enum ANIM_LIST */
#include <chlasm/Enum.h>                            /* For enum IMMERSION_EFFECT_TYPE, enum REACTION */
#include <chlasm/GStates.h>                         /* For enum VILLAGER_STATES */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <re_common.h>                              /* For bool32_t */

#include "GameThing.h"        /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "LivingAction.h"     /* For enum LIVING_ACTION_INDEX, struct LivingAction */
#include "MobileWallHug.h"    /* For struct MobileWallHug, struct MobileWallHugVftable */
#include "Object.h"           /* For struct Object */

// Forward Declares

class Base;
class Creature;
class DanceGroup;
class DataPath;
class Flock;
class GFootpath;
class GFootpathNode;
class GInterfaceStatus;
class GLivingInfo;
class GameOSFile;
struct GameThingVftable;
struct GestureSystemPacketData;
struct JustMapXZ;
struct LHPoint;
struct MapCoords;
struct ObjectVftable;
class PhysicsObject;
class Reaction;
struct ReactionDoneWhen;

struct LivingMapCell
{
	uint8_t field_0x0;

	// Constructors

	// BW1W120 00767fe0 BW1M119 0159ca00
	LivingMapCell(JustMapXZ& param_1);

	// Non-virtual methods

	// BW1W120 007680d0 BW1M119 0159c740
	bool32_t FindFreePosition(JustMapXZ& param_1, const MapCoords& param_2, MapCoords* param_3);
};

class DataForScriptRemind : public GameThing
{
public:
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

	// Override methods

	// BW1W120 005ef170 BW1M119 013844c0
	virtual ~DataForScriptRemind();
	// BW1W120 005ef160 BW1M119 01384590
	virtual char* GetDebugText();
	// BW1W120 005ef570 BW1M119 01384620
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005ef360 BW1M119 01384910
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005ef150 BW1M119 01384550
	virtual uint32_t GetSaveType();

	// Static methods

	// BW1W120 005ef190 BW1M119 01384fc0
	static DataForScriptRemind* Create();

	// Constructors

	// BW1W120 005ef110 BW1M119 013850d0
	DataForScriptRemind();
};

// fabricated: result codes of Living::SetTopState / SetCurrentAndDestinationState
enum LIVING_SET_STATE_RESULT
{
	LIVING_SET_STATE_SUCCESS = 0x1,
	LIVING_SET_STATE_EXIT_REFUSED = 0x2e,
	LIVING_SET_STATE_ENTRY_REFUSED = 0x2f
};

class Living : public MobileWallHug
{
public:
	struct StateTableSubEntry
	{
		bool (Living::*function)(); /* 0x0 */
		uint32_t field_0x4;
		uint32_t field_0x8;
		int32_t  field_0xc;
	};

	struct StateTableSubEntryState
	{
		uint32_t (Living::*function)(); /* 0x0 */
		uint32_t field_0x4;
		uint32_t field_0x8;
		int32_t  field_0xc;
	};

	struct StateTableSubEntryEntryState
	{
		bool (Living::*function)(VILLAGER_STATES param_1, VILLAGER_STATES param_2); /* 0x0 */
		uint32_t field_0x4;
		uint32_t field_0x8;
		int32_t  field_0xc;
	};

	struct StateTableEntry
	{
		StateTableSubEntryState      state;      /* 0x0 */
		StateTableSubEntryEntryState EntryState; /* 0x10 */
		StateTableSubEntry           ExitState;  /* 0x20 */
		StateTableSubEntry           save_state; /* 0x30 */
		StateTableSubEntry           LoadState;  /* 0x40 */
		StateTableSubEntry           field_0x50;
		StateTableSubEntry           field_0x60;
		StateTableSubEntry           TransitionAnimation; /* 0x70 */
		StateTableSubEntry           validate;            /* 0x80 */
	};

	LivingAction         action;   /* 0x8c */
	Reaction*            reaction; /* 0x94 */
	ReactionDoneWhen*    reaction_done_when;
	int                  field_0x9c;
	int32_t              BirthTurn; /* 0xa0 */
	Living*              next;
	uint32_t             field_0xa8;
	DataPath*            data_path;
	DataForScriptRemind* data_for_script_remind; /* 0xb0 */
	uint16_t             status;
	Flock*               flock;
	GameThingWithPos*    field_0xbc;
	uint32_t             field_0xc0;
	uint32_t             field_0xc4;
	GFootpath*           footpath;
	GFootpathNode*       footpath_node;
	LH3DColor            SpecularColor; /* 0xd0 */
	uint32_t             field_0xd4;
	DanceGroup*          dance_group;
	uint8_t              field_0xdc;

	// Override methods

	// BW1W120 004749f0 BW1M119 011753b0
	virtual ~Living();
	// BW1W120 005ec0a0 BW1M119 0138b460
	virtual void ToBeDeleted(int param_1);
	// BW1W120 004172d0 BW1M119 01006720
	virtual bool32_t IsFunctional();
	// BW1W120 005ee960 BW1M119 013858a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005ee630 BW1M119 01385da0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005eed20 BW1M119 01385850
	virtual void ResolveLoad();
	// BW1W120 004173c0 BW1M119 01139720
	virtual bool32_t IsAnimate();
	// BW1W120 004172c0 BW1M119 01139360
	virtual bool32_t IsStompable();
	// BW1W120 00417470 BW1M119 01139a60
	virtual bool32_t IsNotLiving();
	// BW1W120 00417330 BW1M119 011394f0
	virtual bool32_t IsSuitableForCreatureAction();
	// BW1W120 00417350 BW1M119 01139590
	virtual bool32_t CanBeAttackedByCreature(Creature* param_1);
	// BW1W120 004173d0 BW1M119 01139750
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 00417390 BW1M119 01139670
	virtual bool32_t CanBePlayedWithByCreature(Creature* param_1);
	// BW1W120 004173e0 BW1M119 011397a0
	virtual bool32_t CanBeInspectedByCreature(Creature* param_1);
	// BW1W120 00417410 BW1M119 01139860
	virtual bool32_t CanBePoodUponByCreature(Creature* param_1);
	// BW1W120 00417430 BW1M119 01139930
	virtual bool32_t CanBeStompedOnByCreature(Creature* param_1);
	// BW1W120 00417340 BW1M119 01139540
	virtual bool32_t CanBeThrownByCreature(Creature* param_1);
	// BW1W120 00417420 BW1M119 011398b0
	virtual bool32_t CanBeDestroyedByStoning(Creature* param_1);
	// BW1W120 00417440 BW1M119 011399b0
	virtual bool32_t CanBeDancedWith(Creature* param_1);
	// BW1W120 00417450 BW1M119 01139a20
	virtual bool32_t IsAggressive(Creature* param_1);
	// BW1W120 00417460 BW1M119 01006820
	virtual bool32_t IsLiving();
	// BW1W120 00768580 BW1M119 0159bf00
	virtual uint32_t AttitudeToCreatureEating();
	// BW1W120 00416ff0 BW1M119 011384b0
	virtual bool32_t IsSkeleton() const;
	// BW1W120 00416f90 BW1M119 0105a140
	virtual bool32_t IsPoisoned();
	// BW1W120 00417000 BW1M119 011384f0
	virtual void SetSkeleton(int param_1);
	// BW1W120 005ee230 BW1M119 013866d0
	virtual uint32_t MoveAlongPath();
	// BW1W120 00417480 BW1M119 inlined
	virtual void SetSpecularColor(LH3DColor param_1);
	// BW1W120 00417490 BW1M119 01139ae0
	virtual LH3DColor GetSpecularColor();
	// BW1W120 0051aec0 BW1M119 010c8e10
	virtual void Draw();
	// BW1W120 004172a0 BW1M119 011392e0
	virtual bool32_t CanBePickedUp();
	// BW1W120 004172b0 BW1M119 01139320
	virtual bool32_t CanBeCrushed();
	// BW1W120 005ec9b0 BW1M119 0138a3a0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 00416fa0 BW1M119 01138400
	virtual void SetPoisoned(int param_1);
	// BW1W120 005ec390 BW1M119 0138ad10
	virtual bool32_t SetDying();
	// BW1W120 005eccb0 BW1M119 01389390
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 005ed590 BW1M119 013881b0
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 005ed5c0 BW1M119 01387f10
	virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
	// BW1W120 005efd80 BW1M119 0138dbd0
	virtual PhysicsObject* InitialisePhysicsFromHand(LHPoint& velocity, LHPoint& angular_velocity,
	                                                 GInterfaceStatus* status, Object* thrower, bool32_t dont_replant);
	// BW1W120 005efe10 BW1M119 0138daa0
	virtual PhysicsInitialisation InitialisePhysics(const LHPoint& param_1, const LHPoint& param_2, Object* param_3,
	                                                bool param_4, GInterfaceStatus* param_5);
	// BW1W120 005ed2f0 BW1M119 013886c0
	virtual void GetBoundingSphere(LHPoint& param_1, float& param_2);
	// BW1W120 005ed3e0 BW1M119 01388410
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 005ed4f0 BW1M119 013883d0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 005ed370 BW1M119 013885b0
	virtual bool32_t HasSunk();
	// BW1W120 005edba0 BW1M119 013878d0
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 005ee560 BW1M119 013862f0
	virtual uint32_t RemoveFromGame();
	// BW1W120 005ef340 BW1M119 01384cf0
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
	// BW1W120 005f2710 BW1M119 0138ddf0
	virtual bool AmILikelyToMove();
	// BW1W120 00416fd0 BW1M119 01138440
	virtual void SetFoodSpeedup(bool value);
	// BW1W120 00416fe0 BW1M119 01138470
	virtual bool IsFoodSpeedUp();
	// BW1W120 005ec3e0 BW1M119 0138acd0
	virtual uint32_t GetNumTurnsToDieOver();
	// BW1W120 005ec1e0 BW1M119 0138b350
	virtual MapCoords GetFinalDestPos();
	// BW1W120 005f1d10 BW1M119 0138ef00
	virtual bool32_t FleeingFromObjectReaction();
	// BW1W120 005f23a0 BW1M119 0138e560
	virtual bool32_t LookingAtObjectReaction();
	// BW1W120 005f2420 BW1M119 0138e4f0
	virtual bool32_t FleeingAndLookingAtObjectReaction();
	// BW1W120 005f2430 BW1M119 0138e320
	virtual bool32_t FollowingObjectReaction();
	// BW1W120 005f2540 BW1M119 0138e2c0
	virtual bool32_t InspectObjectReaction();
	// BW1W120 005ec3f0 BW1M119 0138ac40
	virtual bool32_t Dying();
	// BW1W120 005ec400 BW1M119 0138ab30
	virtual bool32_t Dead();
	// BW1W120 005ec4b0 BW1M119 0138aa10
	virtual bool Downed();
	// BW1W120 005ec4d0 BW1M119 0138a900
	virtual bool32_t BeingEaten();
	// BW1W120 005f2550 BW1M119 0138e1d0
	virtual bool32_t GotoFoodReaction();
	// BW1W120 005f25c0 BW1M119 0138e0e0
	virtual bool32_t GotoWoodReaction();
	// BW1W120 005ecdb0 BW1M119 01388cf0
	virtual bool MoveInFlock();
	// BW1W120 005ef350 BW1M119 01034f20
	virtual bool32_t IsMovingForAnimation();
	// BW1W120 005f2630 BW1M119 0138e070
	virtual bool32_t ArrivesAtFoodReaction();
	// BW1W120 00417030 BW1M119 01138530
	virtual bool32_t ArrivesAtWoodReaction();
	// BW1W120 005ec620 BW1M119 0138a690
	virtual bool32_t InHand();
	// BW1W120 00474940 BW1M119 0138baa0
	virtual bool32_t DecideWhatToDo();
	// BW1W120 005ec8f0 BW1M119 016e0a6c
	virtual void Birthday();
	// BW1W120 005ecaf0 BW1M119 0104eed0
	virtual uint32_t GetAge();
	// BW1W120 005ed2c0 BW1M119 01388800
	virtual void SetAge(uint32_t age);
	// BW1W120 005f26d0 BW1M119 0138de80
	virtual bool LookAtFlyingObjectReaction();
	// BW1W120 005f2980 BW1M119 01078700
	virtual int SetCurrentAndDestinationState(uint8_t current, uint8_t destination);
	// BW1W120 purecall BW1M119 null
	virtual int CallIntoAnimationFunction(uint8_t state) = 0;
	// BW1W120 purecall BW1M119 null
	virtual int CallOutofAnimationFunction(uint8_t state) = 0;
	// BW1W120 005f28e0 BW1M119 01077ec0
	virtual int SetTopState(uint8_t state);
	// BW1W120 00417040 BW1M119 01138570
	virtual void StorePreviousState();
	// BW1W120 00473e50 BW1M119 011eaa80
	virtual void SetStateSpeed();
	// BW1W120 purecall BW1M119 null
	virtual bool IsFinalState(VILLAGER_STATES state) = 0;
	// BW1W120 005ecba0 BW1M119 inlined
	virtual void SetAnim(int anim, int flags);
	// BW1W120 005ecb80 BW1M119 inlined
	virtual void SetAnim(int anim);
	// BW1W120 purecall BW1M119 null
	virtual ANIM_LIST GetAnimId() = 0;
	// BW1W120 purecall BW1M119 null
	virtual uint32_t CallExitStateFunction(uint8_t state) = 0;
	// BW1W120 purecall BW1M119 null
	virtual uint32_t CallEntryStateFunction(uint8_t current, uint8_t destination) = 0;
	// BW1W120 purecall BW1M119 null
	virtual uint32_t CallEntryStateFunction(uint8_t state) = 0;
	// BW1W120 005eccd0 BW1M119 inlined
	virtual bool32_t ExitReaction(uint8_t state);
	// BW1W120 005ed9c0 BW1M119 inlined
	virtual bool32_t ExitInScript(uint8_t state);
	// BW1W120 005edb10 BW1M119 inlined
	virtual bool32_t ExitDanceInScript(uint8_t state);
	// BW1W120 005ed500 BW1M119 inlined
	virtual bool32_t ExitInHand(uint8_t state);
	// BW1W120 005ed540 BW1M119 inlined
	virtual bool32_t ExitInFlying(uint8_t state);
	// BW1W120 005ed580 BW1M119 inlined
	virtual bool32_t ExitInLanded(uint8_t state);
	// BW1W120 00768780 BW1M119 inlined
	virtual bool32_t ExitNoChangeState(uint8_t state);
	// BW1W120 005ee090 BW1M119 inlined
	virtual bool32_t ExitMoveOnPath(uint8_t state);
	// BW1W120 005edda0 BW1M119 010226e0
	virtual bool32_t ExitMoveToPos(uint8_t state);
	// BW1W120 005eddc0 BW1M119 01387270
	virtual bool32_t ExitBeingEaten(uint8_t state);
	// BW1W120 005f2a80 BW1M119 010749f0
	virtual void SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state);
	// BW1W120 005edd90 BW1M119 inlined
	virtual uint32_t EnterMoveToPos(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
	// BW1W120 005ed7e0 BW1M119 inlined
	virtual bool32_t EnterInScript(uint8_t current, uint8_t destination);
	// BW1W120 00417060 BW1M119 inlined
	virtual bool32_t EnterInHand(uint8_t current, uint8_t destination);
	// BW1W120 005eddd0 BW1M119 01387230
	virtual bool32_t EnterMoveOnPath(uint8_t current, uint8_t destination);
	// BW1W120 005eda50 BW1M119 inlined
	virtual bool32_t EnterDanceInScript(uint8_t current, uint8_t destination);
	// BW1W120 007687d0 BW1M119 inlined
	virtual bool32_t EnterScriptWander(uint8_t current, uint8_t destination);
	// BW1W120 00768830 BW1M119 inlined
	virtual bool32_t ExitScriptWander(uint8_t state);
	// BW1W120 00768840 BW1M119 inlined
	virtual bool32_t EnterPlayAnim(uint8_t current, uint8_t destination);
	// BW1W120 007689c0 BW1M119 inlined
	virtual bool32_t ExitPlayAnim(uint8_t state);
	// BW1W120 00473e60 BW1M119 inlined
	virtual bool IsScriptState(VILLAGER_STATES state) const;
	// BW1W120 00473e70 BW1M119 inlined
	virtual bool IsScriptInterruptableState(VILLAGER_STATES state) const;
	// BW1W120 00417070 BW1M119 inlined
	virtual bool IsStateForInterface(VILLAGER_STATES state) const;
	// BW1W120 00473e80 BW1M119 inlined
	virtual bool32_t IsStateExitFunctionSameAs(VILLAGER_STATES state) const;
	// BW1W120 005ecaa0 BW1M119 inlined
	virtual bool IsDeathState(VILLAGER_STATES state) const;
	// BW1W120 005ed2b0 BW1M119 016e0b5c
	virtual uint32_t DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3);
	// BW1W120 005ecc10 BW1M119 010866f0
	virtual bool32_t IsDancing();
	// BW1W120 00473e90 BW1M119 011eab90
	virtual bool IsInterestedInFoodObject(Object* param_1);
	// BW1W120 00417080 BW1M119 011386c0
	virtual bool IsInterestedInWoodObject(Object* param_1);
	// BW1W120 005f11f0 BW1M119 0101c640
	virtual bool32_t IsAvailableForReaction(REACTION param_1);
	// BW1W120 00417090 BW1M119 01138710
	virtual bool32_t IsAvailableForBeliefButNotReaction(REACTION param_1);
	// BW1W120 004170a0 BW1M119 01138760
	virtual void UpdateHowImpressed(Reaction* param_1, int param_2);
	// BW1W120 005f0f30 BW1M119 inlined
	virtual void AddReaction(Reaction* param_1, VILLAGER_STATES param_2);
	// BW1W120 006e4590 BW1M119 0113e4b0
	virtual void StartReacting(REACTION param_1, GameThingWithPos* param_2, Reaction* param_3);
	// BW1W120 005f1140 BW1M119 01391330
	virtual void StopReacting();
	// BW1W120 005f11c0 BW1M119 01391290
	virtual void StopReactingAndSetState();
	// BW1W120 purecall BW1M119 null
	virtual void ResetStateAfterReacting() = 0;
	// BW1W120 005f1360 BW1M119 01390e50
	virtual void SetupFleeFromObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f13b0 BW1M119 01390d20
	virtual void SetupLookAtObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f13e0 BW1M119 01390ca0
	virtual void SetupLookAtSpell(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f1400 BW1M119 01390c20
	virtual void SetupLookAtNiceSpell(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f1420 BW1M119 01390b70
	virtual void SetupFollowObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f1450 BW1M119 01390a60
	virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f14c0 BW1M119 01390980
	virtual void SetupReactToFood(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004170b0 BW1M119 011387a0
	virtual void SetupReactToWood(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f1500 BW1M119 013908d0
	virtual void SetupReactToMagicTree(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f1530 BW1M119 01390820
	virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00474950 BW1M119 0138bae0
	virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f1560 BW1M119 01390770
	virtual void SetupReactToBall(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004170c0 BW1M119 011387f0
	virtual void SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f1590 BW1M119 013906f0
	virtual void SetupReactToCreatureGift(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f15b0 BW1M119 016e0e1c
	virtual void SetupReactToNewBuilding(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004170d0 BW1M119 01138850
	virtual void SetupReactToHandPickUp(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004170e0 BW1M119 011388b0
	virtual void SetupReactToHandUsingTotem(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004170f0 BW1M119 01138910
	virtual void SetupReactToObjectCrushed(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417100 BW1M119 01138970
	virtual void SetupReactToFight(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417110 BW1M119 011389c0
	virtual void SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417120 BW1M119 01138a20
	virtual void SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417130 BW1M119 01138a90
	virtual void SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417140 BW1M119 01138ae0
	virtual void SetupReactToDroppedByHand(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417150 BW1M119 01138b40
	virtual void SetupReactToFainting(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417160 BW1M119 01138ba0
	virtual void SetupReactToConfused(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00473ea0 BW1M119 011eabe0
	virtual void SetupReactToFallingTree(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417170 BW1M119 01138c00
	virtual void SetupReactToCrowd(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417180 BW1M119 01138c50
	virtual void SetupReactToBreeder(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f1390 BW1M119 01390dd0
	virtual void SetupFleeFromPredator(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 00417190 BW1M119 01138cb0
	virtual void SetupReactToTownCelebration(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004171a0 BW1M119 01138d10
	virtual void SetupReactToVillagerInHand(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004171b0 BW1M119 01138d70
	virtual void SetupReactToBurningObjectInHand(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004171c0 BW1M119 01138dd0
	virtual void SetupReactToMagicShieldStruck(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 004171d0 BW1M119 01138e30
	virtual void SetupReactToMagicShieldDestroyed(GameThingWithPos* param_1, Reaction* param_2);
	// BW1W120 005f15c0 BW1M119 01390620
	virtual uint8_t FleeFromObjectPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1610 BW1M119 013904e0
	virtual uint8_t LookAtObjectPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1620 BW1M119 01390470
	virtual uint8_t FollowObjectPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1630 BW1M119 01390390
	virtual uint8_t FleeFromSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1690 BW1M119 01390320
	virtual uint8_t LookAtSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f16a0 BW1M119 01390260
	virtual uint8_t LookAtNiceSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f16e0 BW1M119 013901f0
	virtual uint8_t FollowSpellPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f16f0 BW1M119 01390160
	virtual uint8_t ReactToCreaturePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1710 BW1M119 01390020
	virtual uint8_t ReactToFoodPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f17a0 BW1M119 0138ff50
	virtual uint8_t ReactToWoodPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f17f0 BW1M119 0138fed0
	virtual uint8_t ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1800 BW1M119 0138fe10
	virtual uint8_t ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1820 BW1M119 0138fd70
	virtual uint8_t ReactToBallPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00474960 BW1M119 0138bb30
	virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1860 BW1M119 0138fcf0
	virtual uint8_t ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1870 BW1M119 0138fc70
	virtual uint8_t ReactToCreatureGiftPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f1880 BW1M119 0138fbd0
	virtual uint8_t ReactToNewBuildingPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00474970 BW1M119 011502a0
	virtual uint8_t ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00474980 BW1M119 01150300
	virtual uint8_t ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00474990 BW1M119 01150360
	virtual uint8_t ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004749a0 BW1M119 0138bb80
	virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004749b0 BW1M119 0138bbd0
	virtual uint8_t ReactToTeleportPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004749c0 BW1M119 011503c0
	virtual uint8_t ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004749d0 BW1M119 0138bc20
	virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00473eb0 BW1M119 011eac40
	virtual uint8_t ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f18a0 BW1M119 0138fb60
	virtual uint8_t ReactToFaintingPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f18b0 BW1M119 0138faf0
	virtual uint8_t ReactToConfusedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00473ec0 BW1M119 011eaca0
	virtual uint8_t ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004171e0 BW1M119 01138e90
	virtual uint8_t ReactToCrowdPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 004171f0 BW1M119 01138ee0
	virtual uint8_t ReactToBreederPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417200 BW1M119 01138f30
	virtual uint8_t ReactToTownCelebrationPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f15d0 BW1M119 01390550
	virtual uint8_t FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417210 BW1M119 01138f90
	virtual uint8_t ReactToVillagerInHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417220 BW1M119 01138ff0
	virtual uint8_t ReactToBurningObjectInHandPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417230 BW1M119 01139050
	virtual uint8_t ReactToMagicShieldStruckPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417240 BW1M119 011390b0
	virtual uint8_t ReactToMagicShieldDestroyedPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 00417250 BW1M119 01139110
	virtual uint8_t ReactToScaffoldPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 005f18c0 BW1M119 0138f9d0
	virtual uint32_t StandardNumGameTurnsToReactFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
	// BW1W120 005f1920 BW1M119 01083750
	virtual uint32_t StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                 float param_3);
	// BW1W120 005f1b10 BW1M119 0138f200
	virtual uint32_t NumGameTurnsToReactToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
	// BW1W120 005f1c00 BW1M119 0138f000
	virtual uint32_t NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                   float param_3);
	// BW1W120 005f1980 BW1M119 0138f770
	virtual uint32_t NumGameTurnsToReactToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
	// BW1W120 005f1a00 BW1M119 0138f610
	virtual uint32_t NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                   float param_3);
	// BW1W120 005f2720 BW1M119 0138dd50
	virtual uint32_t StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                       float param_3);
	// BW1W120 005f1a90 BW1M119 0138f580
	virtual uint32_t NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                            float param_3);
	// BW1W120 005f1ab0 BW1M119 0138f4e0
	virtual uint32_t NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                        float param_3);
	// BW1W120 005f1ad0 BW1M119 0138f450
	virtual uint32_t NumGameTurnsToReactToShieldFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
	// BW1W120 005f1af0 BW1M119 0138f3c0
	virtual uint32_t NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* param_1, uint32_t param_2,
	                                                                 float param_3);
	// BW1W120 00417260 BW1M119 01002690
	virtual uint32_t IsPosValidForMapCellExistance(const MapCoords& param_1);
	// BW1W120 005ec340 BW1M119 0138adf0
	virtual void MoveByTeleport(const MapCoords& param_1);
	// BW1W120 00417270 BW1M119 01139210
	virtual bool32_t IsDead();
	// BW1W120 00473ed0 BW1M119 011ead00
	virtual bool32_t IsChild();
	// BW1W120 005f2160 BW1M119 0138e660
	virtual void GetFleeingPositionFromMovingObject(MapCoords* param_1, GameThingWithPos* param_2, float param_3);
	// BW1W120 005f2010 BW1M119 0138e9b0
	virtual void GetFleeingPositionFromStationaryObject(MapCoords* param_1, GameThingWithPos* param_2, float param_3);
	// BW1W120 004749e0 BW1M119 011385f0
	virtual VILLAGER_STATES GetFinalState() const;
	// BW1W120 005ef930 BW1M119 0138c3d0
	virtual void RemoveFromDance(int param_1);
	// BW1W120 00417300 BW1M119 01139470
	virtual void SetStateAfterFinishingDance();
	// BW1W120 00417310 BW1M119 011394b0
	virtual float CalculateLifeDesire();
	// BW1W120 00417320 BW1M119 01101a90
	virtual uint32_t DanceType();
	// BW1W120 005ee550 BW1M119 01386470
	virtual bool CanBeHealedByHealSpell();
	// BW1W120 purecall BW1M119 null
	virtual bool MoveAllowedForChessGame() = 0;
	// BW1W120 purecall BW1M119 null
	virtual bool AttackAllowedForChessGame() = 0;
	// BW1W120 purecall BW1M119 null
	virtual void AddToBoxPositionForChessGame(int param_1, int param_2) = 0;
	// BW1W120 purecall BW1M119 null
	virtual int GetBoxXForChessGame() = 0;
	// BW1W120 purecall BW1M119 null
	virtual int GetBoxZForChessGame() = 0;
	// BW1W120 purecall BW1M119 null
	virtual void SetBoxXForChessGame(int param_1) = 0;
	// BW1W120 purecall BW1M119 null
	virtual void SetBoxZForChessGame(int param_1) = 0;
	// BW1W120 purecall BW1M119 null
	virtual uint32_t GetTeamForChessGame() = 0;
	// BW1W120 purecall BW1M119 null
	virtual bool IsPosValidForTurnAngle(const MapCoords* param_1) = 0;

	// Static methods

	// BW1W120 005ec810 BW1M119 0104e4c0
	static void ProcessLiving();

	// Constructors

	// BW1W120 0055c820 BW1M119 013116c0
	Living();
	// BW1W120 005ebec0 BW1M119 0138b7b0
	Living(const MapCoords& coords, const GLivingInfo* info);

	// Non-virtual methods

	// BW1W120 005afe20 BW1M119 inlined
	bool32_t StateArrivesAtFoodReaction();
	// BW1W120 005afe30 BW1M119 inlined
	bool32_t StateDying();
	// BW1W120 005afe80 BW1M119 inlined
	bool32_t StateArrivesAtWoodReaction();
	// BW1W120 005afe90 BW1M119 inlined
	bool32_t StateDead();
	// BW1W120 005aff20 BW1M119 inlined
	bool32_t StateInHand();
	// BW1W120 005aff30 BW1M119 inlined
	bool32_t StateDowned();
	// BW1W120 005aff40 BW1M119 inlined
	bool32_t StateSetDying();
	// BW1W120 005affd0 BW1M119 inlined
	bool32_t StateBeingEaten();
	// BW1W120 005affe0 BW1M119 inlined
	bool32_t StateFleeingFromObjectReaction();
	// BW1W120 005b0040 BW1M119 inlined
	bool32_t StateAlongPath();
	// BW1W120 005b0050 BW1M119 inlined
	bool32_t StateGoToFoodReaction();
	// BW1W120 005b0060 BW1M119 inlined
	bool32_t StateLookingAtObjectReaction();
	// BW1W120 005b00e0 BW1M119 inlined
	bool32_t StateFleeingAndLookingAtObjectReaction();
	// BW1W120 005b00f0 BW1M119 inlined
	bool32_t StateGoToWoodReaction();
	// BW1W120 005b0190 BW1M119 inlined
	bool32_t StateMoveInFlock();
	// BW1W120 005b01b0 BW1M119 inlined
	bool32_t StateFollowingObjectReaction();
	// BW1W120 005b0230 BW1M119 inlined
	bool32_t StateLookingAtFlyingObjectReaction();
	// BW1W120 005b0240 BW1M119 inlined
	bool32_t StateInspectObjectReaction();
	// BW1W120 005ec030 BW1M119 0138b700
	void SetToZero();
	// BW1W120 005ec1d0 BW1M119 0138b420
	bool32_t InvalidState();
	// BW1W120 005ec270 BW1M119 0104f900
	bool32_t MoveToPos();
	// BW1W120 005ec2c0 BW1M119 0138af80
	bool32_t MoveToObject();
	// BW1W120 005ec330 BW1M119 0138aed0
	bool32_t Flying();
	// BW1W120 005ec520 BW1M119 0138a880
	uint32_t LookAtObject(GameThingWithPos* param_1, unsigned long param_2);
	// BW1W120 005ec550 BW1M119 0138a720
	bool LookAtPos(const MapCoords& pos, int param_2);
	// BW1W120 005ec960 BW1M119 010514d0
	bool32_t IsReadyForNewAnimation(uint32_t index);
	// BW1W120 005ec990 BW1M119 010577c0
	bool32_t WaitForAnimation();
	// BW1W120 005eca60 BW1M119 0138a170
	Reaction* GetReaction();
	// BW1W120 005eca80 BW1M119 inlined
	void SetTopStateToFinal();
	// BW1W120 005ecac0 BW1M119 01093df0
	void PlayAnimThenSetState(unsigned char param_1, unsigned long param_2);
	// BW1W120 005ecb10 BW1M119 010560e0
	void SetStateAnim();
	// BW1W120 005ecd00 BW1M119 01389140
	bool32_t MoveOnStructure();
	// BW1W120 005ecf60 BW1M119 0106f650
	MapCoords GetFlockPos();
	// BW1W120 005ecf70 BW1M119 0104e920
	bool IAmFlockLeader();
	// BW1W120 005ecfa0 BW1M119 01067cc0
	uint16_t GetDomainRadius();
	// BW1W120 005ecfc0 BW1M119 0106f4d0
	uint16_t GetFlockDistance();
	// BW1W120 005ed080 BW1M119 01036040
	MapCoords CalcRandomPos(const MapCoords& param_2, float param_3, float param_4);
	// BW1W120 005ed2c0 BW1M119 01388800
	void SetAge(int age);
	// BW1W120 005ed9a0 BW1M119 0106f6c0
	bool32_t StateInScript();
	// BW1W120 005edad0 BW1M119 01387b80
	bool32_t StateInDance();
	// BW1W120 005edc10 BW1M119 01387610
	int SetupMoveOnFootpath(GFootpath* param_1, uint32_t param_2, uint32_t param_3, GFootpathNode* param_4);
	// BW1W120 005edd20 BW1M119 0109a030
	void SetupMoveToOnFootpath(GameThingWithPos& destination, const MapCoords& arrive_position, uint8_t state);
	// BW1W120 005edde0 BW1M119 01386ec0
	bool32_t MoveOnFootpath();
	// BW1W120 005ee5f0 BW1M119 01386270
	void SetFlock(Flock* param_1);
	// BW1W120 005ed010 BW1M119 01067d10
	uint32_t PosWithinDomain(const MapCoords& param_1, float param_2);
	// BW1W120 005ef9c0 BW1M119 0138c340
	bool CalculateDancePosition(const MapCoords& param_1, MapCoords* param_2);
	// BW1W120 005ef9f0 BW1M119 0138bec0
	bool32_t PerformDance(const MapCoords& param_1, unsigned char param_2, unsigned long param_3);
	// BW1W120 005f1270 BW1M119 0104e360
	void ProcessReaction();
	// BW1W120 005f1d90 BW1M119 0138ed90
	bool32_t FleeFromObjectIfComingTowardsMe(GameThingWithPos* param_1, VILLAGER_STATES param_2,
	                                         VILLAGER_STATES param_3);
	// BW1W120 005f2640 BW1M119 0138dfa0
	bool32_t GotoPickupBallReaction();
	// BW1W120 005f27f0 BW1M119 01058aa0
	VILLAGER_STATES GetTopState() const;
	// BW1W120 005f2800 BW1M119 01391b50
	bool SetupMoveToObject(Object* param_1, unsigned char param_2);
	// BW1W120 005f2830 BW1M119 0102bdb0
	bool32_t SetupMoveToPos(const MapCoords& coord, uint8_t end_state);
	// BW1W120 005f2890 BW1M119 01013b30
	bool32_t SetupMoveToWithHug(const MapCoords& coords, uint8_t state);
	// BW1W120 006e44a0 BW1M119 0113e540
	void SetReactionDoneWhen(REACTION reaction);
	// BW1W120 00768640 BW1M119 0159e860
	bool32_t CannotExitState(unsigned char param_1);

	// State-table handlers reached only through the villager/animal state
	// tables in GStates.cpp. The signature of each is fixed by the table
	// slot it is stored in.

	// BW1W120 005ec310 BW1M119 0138af00
	bool32_t WaitForCounter();
	// BW1W120 005f26a0 BW1M119 0138df10
	bool32_t ArrivesAtPickupBallReaction();
};

#endif /* BW1_DECOMP_LIVING_INCLUDED_H */
