#ifndef BW1_DECOMP_LIVING_INCLUDED_H
#define BW1_DECOMP_LIVING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */
#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE, enum REACTION */
#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <re_common.h> /* For bool32_t */

#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "LivingAction.h" /* For enum LIVING_ACTION_INDEX, struct LivingAction */
#include "MobileWallHug.h" /* For struct MobileWallHug, struct MobileWallHugVftable */
#include "Object.h" /* For struct Object */

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

    // win1.41 00767fe0 mac 10595660 LivingMapCell::LivingMapCell(JustMapXZ &)
    LivingMapCell(JustMapXZ* param_1);

    // Non-virtual methods

    // win1.41 007680d0 mac 105953b0 LivingMapCell::FindFreePosition(JustMapXZ &, MapCoords const &, MapCoords *)
    bool32_t FindFreePosition(JustMapXZ* param_1, const MapCoords* param_2, MapCoords* param_3);
};

class DataForScriptRemind: public GameThing
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

    // win1.41 005ef170 mac 1037c460 DataForScriptRemind::_dt(void)
    virtual ~DataForScriptRemind();
    // win1.41 005ef160 mac 1037c530 DataForScriptRemind::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005ef570 mac 1037c5c0 DataForScriptRemind::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005ef360 mac 1037c8b0 DataForScriptRemind::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005ef150 mac 1037c4f0 DataForScriptRemind::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Static methods

    // win1.41 005ef190 mac 1037cff0 DataForScriptRemind::Create(void)
    static DataForScriptRemind* Create();

    // Constructors

    // win1.41 005ef110 mac 1037d100 DataForScriptRemind::DataForScriptRemind(void)
    DataForScriptRemind();
};

class Living: public MobileWallHug
{
public:
    LivingAction action; /* 0x8c */
    Reaction* reaction; /* 0x94 */
    ReactionDoneWhen* reaction_done_when;
    int field_0x9c;
    int32_t birth_turn; /* 0xa0 */
    Living* next;
    uint32_t field_0xa8;
    DataPath* data_path;
    DataForScriptRemind* data_for_script_remind; /* 0xb0 */
    uint16_t status;
    Flock* flock;
    GameThingWithPos* field_0xbc;
    uint32_t field_0xc0;
    uint32_t field_0xc4;
    GFootpath* footpath;
    GFootpathNode* footpath_node;
    LH3DColor specular_color; /* 0xd0 */
    uint32_t field_0xd4;
    DanceGroup* dance_group;
    uint8_t field_0xdc;

    // Override methods

    // win1.41 004749f0 mac 1016c750 Living::_dt(void)
    virtual ~Living();
    // win1.41 005ec0a0 mac 10383210 Living::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 004172d0 mac 10006820 Living::IsFunctional(void)
    virtual bool IsFunctional();
    // win1.41 005ee960 mac 1037d8d0 Living::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005ee630 mac 1037ddd0 Living::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005eed20 mac 1037d880 Living::ResolveLoad(void)
    virtual void ResolveLoad();
    // win1.41 004173c0 mac 10130ac0 Living::IsAnimate(void)
    virtual bool IsAnimate();
    // win1.41 004172c0 mac 101306c0 Living::IsStompable(void)
    virtual bool IsStompable();
    // win1.41 00417470 mac 10130e00 Living::IsNotLiving(void)
    virtual uint32_t IsNotLiving();
    // win1.41 00417330 mac 10130890 Living::IsSuitableForCreatureAction(void)
    virtual uint32_t IsSuitableForCreatureAction();
    // win1.41 00417350 mac 10130930 Living::CanBeAttackedByCreature(Creature *)
    virtual uint32_t CanBeAttackedByCreature(Creature* param_1);
    // win1.41 004173d0 mac 10130af0 Living::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // win1.41 00417390 mac 10130a10 Living::CanBePlayedWithByCreature(Creature *)
    virtual uint32_t CanBePlayedWithByCreature(Creature* param_1);
    // win1.41 004173e0 mac 10130b40 Living::CanBeInspectedByCreature(Creature *)
    virtual uint32_t CanBeInspectedByCreature(Creature* param_1);
    // win1.41 00417410 mac 10130c00 Living::CanBePoodUponByCreature(Creature *)
    virtual uint32_t CanBePoodUponByCreature(Creature* param_1);
    // win1.41 00417430 mac 10130cd0 Living::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 00417340 mac 101308e0 Living::CanBeThrownByCreature(Creature *)
    virtual uint32_t CanBeThrownByCreature(Creature* param_1);
    // win1.41 00417420 mac 10130c50 Living::CanBeDestroyedByStoning(Creature *)
    virtual uint32_t CanBeDestroyedByStoning(Creature* param_1);
    // win1.41 00417440 mac 10130d50 Living::CanBeDancedWith(Creature *)
    virtual uint32_t CanBeDancedWith(Creature* param_1);
    // win1.41 00417450 mac 10130dc0 Living::IsAggressive(Creature *)
    virtual uint32_t IsAggressive(Creature* param_1);
    // win1.41 00417460 mac inlined Living::IsLiving_1( const(void))
    virtual uint32_t IsLiving_1();
    // win1.41 00768580 mac 10594bb0 Living::AttitudeToCreatureEating(void)
    virtual uint32_t AttitudeToCreatureEating();
    // win1.41 00416ff0 mac 1012f810 Living::IsSkeleton( const(void))
    virtual uint32_t IsSkeleton();
    // win1.41 00416f90 mac 10057470 Living::IsPoisoned(void)
    virtual uint32_t IsPoisoned();
    // win1.41 00417000 mac 1012f850 Living::SetSkeleton(int)
    virtual void SetSkeleton(int param_1);
    // win1.41 005ee230 mac 1037e700 Living::MoveAlongPath(void)
    virtual uint32_t MoveAlongPath();
    // win1.41 00417480 mac inlined Living::SetSpecularColor(LH3DColor)
    virtual void SetSpecularColor(LH3DColor param_1);
    // win1.41 00417490 mac 10130e80 Living::GetSpecularColor(void)
    virtual LH3DColor GetSpecularColor();
    // win1.41 0051aec0 mac 100c5880 Living::Draw(void)
    virtual void Draw();
    // win1.41 004172a0 mac 10130640 Living::CanBePickedUp(void)
    virtual bool CanBePickedUp();
    // win1.41 004172b0 mac 10130680 Living::CanBeCrushed(void)
    virtual uint32_t CanBeCrushed();
    // win1.41 005ec9b0 mac 10382060 Living::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00416fa0 mac 1012f760 Living::SetPoisoned(int)
    virtual void SetPoisoned(int param_1);
    // win1.41 005ec390 mac 10382b30 Living::SetDying(void)
    virtual bool SetDying();
    // win1.41 005eccb0 mac 10381220 Living::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 005ed590 mac 1037ffb0 Living::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 005ed5c0 mac 1037fd10 Living::ApplyThisToObject(GInterfaceStatus *, Object *, GestureSystemPacketData *)
    virtual uint32_t ApplyThisToObject(GInterfaceStatus* param_1, Object* param_2, GestureSystemPacketData* param_3);
    // win1.41 005efd80 mac 10385a30 Living::InitialisePhysicsFromHand(LHPoint &, LHPoint &, GInterfaceStatus *, Object *, int)
    virtual uint32_t InitialisePhysicsFromHand(LHPoint* param_1, LHPoint* param_2, GInterfaceStatus* param_3, Object* param_4, int param_5);
    // win1.41 005efe10 mac 10385900 Living::InitialisePhysics(LHPoint const &, LHPoint const &, Object *, bool, GInterfaceStatus *)
    virtual uint32_t InitialisePhysics(const LHPoint* param_1, const LHPoint* param_2, Object* param_3, bool param_4, GInterfaceStatus* param_5);
    // win1.41 005ed2f0 mac 103804c0 Living::GetBoundingSphere(LHPoint &, float &)
    virtual void GetBoundingSphere(LHPoint* param_1, float* param_2);
    // win1.41 005ed3e0 mac 10380210 Living::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 005ed4f0 mac 103801d0 Living::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 005ed370 mac 103803b0 Living::HasSunk(void)
    virtual bool HasSunk();
    // win1.41 005edba0 mac 1037f690 Living::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 005ee560 mac 1037e320 Living::RemoveFromGame(void)
    virtual uint32_t RemoveFromGame();
    // win1.41 005ef340 mac 1037cc80 Living::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
    // win1.41 005f2710 mac 10385c50 Living::AmILikelyToMove(void)
    virtual bool AmILikelyToMove();
    // win1.41 005ec3e0 mac 10382af0 Living::GetNumTurnsToDieOver(void)
    virtual uint32_t GetNumTurnsToDieOver();
    // win1.41 005ec1e0 mac 103830e0 Living::GetFinalDestPos(MapCoords *)
    virtual void GetFinalDestPos(MapCoords* result);
    // win1.41 005ec4b0 mac 10382830 Living::Downed(void)
    virtual bool Downed();
    // win1.41 005ecdb0 mac 10380b40 Living::MoveInFlock(void)
    virtual bool MoveInFlock();
    // win1.41 005f2630 mac 10385ed0 Living::ArrivesAtFoodReaction(void)
    virtual bool ArrivesAtFoodReaction();
    // win1.41 00474940 mac 103838c0 Living::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
    // win1.41 005ecaf0 mac 1004c540 Living::GetAge(void)
    virtual uint32_t GetAge();
    // win1.41 005f26d0 mac 10385ce0 Living::LookAtFlyingObjectReaction(void)
    virtual bool LookAtFlyingObjectReaction();
    // win1.41 005f2980 mac 10076180 Living::SetCurrentAndDestinationState(unsigned char, unsigned char)
    virtual uint32_t SetCurrentAndDestinationState(VILLAGER_STATES current, VILLAGER_STATES destination);
    // win1.41 005f28e0 mac 10075940 Living::SetTopState(unsigned char)
    virtual uint32_t SetTopState(VILLAGER_STATES state);
    // win1.41 00417040 mac 1012f8d0 Living::StorePreviousState(void)
    virtual void StorePreviousState();
    // win1.41 00473e50 mac 101e3470 Living::SetStateSpeed(void)
    virtual void SetStateSpeed();
    // win1.41 005ecba0 mac inlined Living::SetAnim__li(int, int)
    virtual void SetAnim__li(int param_1, int param_2);
    // win1.41 005ecb80 mac inlined Living::SetAnim__i(int)
    virtual void SetAnim__i(int param_1);
    // win1.41 005eccd0 mac inlined Living::ExitReaction(VILLAGER_STATES)
    virtual int ExitReaction(VILLAGER_STATES param_1);
    // win1.41 005ed9c0 mac inlined Living::ExitInScript(VILLAGER_STATES)
    virtual int ExitInScript(VILLAGER_STATES param_1);
    // win1.41 005edb10 mac inlined Living::ExitDanceInScript(VILLAGER_STATES)
    virtual int ExitDanceInScript(VILLAGER_STATES param_1);
    // win1.41 005ed500 mac inlined Living::ExitInHand(VILLAGER_STATES)
    virtual int ExitInHand(VILLAGER_STATES param_1);
    // win1.41 005ed540 mac inlined Living::ExitInFlying(VILLAGER_STATES)
    virtual int ExitInFlying(VILLAGER_STATES param_1);
    // win1.41 005ed580 mac inlined Living::ExitInLanded(VILLAGER_STATES)
    virtual int ExitInLanded(VILLAGER_STATES param_1);
    // win1.41 00768780 mac inlined Living::ExitNoChangeState(VILLAGER_STATES)
    virtual int ExitNoChangeState(VILLAGER_STATES param_1);
    // win1.41 005ee090 mac inlined Living::ExitMoveOnPath(VILLAGER_STATES)
    virtual int ExitMoveOnPath(VILLAGER_STATES param_1);
    // win1.41 005edda0 mac 1001fb70 Living::ExitMoveToPos(unsigned char)
    virtual int ExitMoveToPos(uint8_t param_1);
    // win1.41 005eddc0 mac 1037f2a0 Living::ExitBeingEaten(unsigned char)
    virtual int ExitBeingEaten(uint8_t param_1);
    // win1.41 005f2a80 mac 10072250 Living::SetState(unsigned long, unsigned char)
    virtual void SetState(LIVING_ACTION_INDEX index, VILLAGER_STATES state);
    // win1.41 005edd90 mac inlined Living::EnterMoveToPos(VILLAGER_STATES, VILLAGER_STATES)
    virtual uint32_t EnterMoveToPos(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
    // win1.41 005ed7e0 mac inlined Living::EnterInScript(VILLAGER_STATES, VILLAGER_STATES)
    virtual uint32_t EnterInScript(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
    // win1.41 00417060 mac inlined Living::EnterInHand(VILLAGER_STATES, VILLAGER_STATES)
    virtual uint32_t EnterInHand(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
    // win1.41 005eddd0 mac 1037f260 Living::EnterMoveOnPath(unsigned char, unsigned char)
    virtual uint32_t EnterMoveOnPath(VILLAGER_STATES state_1, VILLAGER_STATES state_2);
    // win1.41 005eda50 mac inlined Living::EnterDanceInScript(VILLAGER_STATES, VILLAGER_STATES)
    virtual uint32_t EnterDanceInScript(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
    // win1.41 007687d0 mac inlined Living::EnterScriptWander(VILLAGER_STATES, VILLAGER_STATES)
    virtual uint32_t EnterScriptWander(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
    // win1.41 00768830 mac inlined Living::ExitScriptWander(VILLAGER_STATES)
    virtual int ExitScriptWander(VILLAGER_STATES param_1);
    // win1.41 00768840 mac inlined Living::EnterPlayAnim(VILLAGER_STATES, VILLAGER_STATES)
    virtual uint32_t EnterPlayAnim(VILLAGER_STATES param_1, VILLAGER_STATES param_2);
    // win1.41 007689c0 mac inlined Living::ExitPlayAnim(VILLAGER_STATES)
    virtual int ExitPlayAnim(VILLAGER_STATES param_1);
    // win1.41 00473e60 mac inlined Living::IsScriptState( const(VILLAGER_STATES))
    virtual bool IsScriptState(VILLAGER_STATES param_1);
    // win1.41 00473e70 mac inlined Living::IsScriptInterruptableState( const(VILLAGER_STATES))
    virtual bool IsScriptInterruptableState(VILLAGER_STATES param_1);
    // win1.41 00417070 mac inlined Living::IsStateForInterface( const(VILLAGER_STATES))
    virtual bool IsStateForInterface(VILLAGER_STATES param_1);
    // win1.41 00473e80 mac inlined Living::IsStateExitFunctionSameAs( const(VILLAGER_STATES))
    virtual bool IsStateExitFunctionSameAs(VILLAGER_STATES param_1);
    // win1.41 005ecaa0 mac inlined Living::IsDeathState( const(VILLAGER_STATES))
    virtual bool IsDeathState(VILLAGER_STATES param_1);
    // win1.41 005ed2b0 mac 10380650 Living::DebugShowTime(unsigned long, unsigned char, unsigned char)
    virtual uint32_t DebugShowTime(uint32_t param_1, uint8_t param_2, uint8_t param_3);
    // win1.41 005ecc10 mac 10084310 Living::IsDancing(void)
    virtual bool IsDancing();
    // win1.41 00473e90 mac 101e3580 Living::IsInterestedInFoodObject(Object *)
    virtual bool IsInterestedInFoodObject(Object* param_1);
    // win1.41 00417080 mac 1012fa20 Living::IsInterestedInWoodObject(Object *)
    virtual bool IsInterestedInWoodObject(Object* param_1);
    // win1.41 005f11f0 mac 10019a90 Living::IsAvailableForReaction(REACTION)
    virtual bool IsAvailableForReaction(REACTION param_1);
    // win1.41 00417090 mac 1012fa70 Living::IsAvailableForBeliefButNotReaction(REACTION)
    virtual bool IsAvailableForBeliefButNotReaction(REACTION param_1);
    // win1.41 004170a0 mac 1012fac0 Living::UpdateHowImpressed(Reaction *, int)
    virtual void UpdateHowImpressed(Reaction* param_1, int param_2);
    // win1.41 005f0f30 mac inlined Living::AddReaction(Reaction *, VILLAGER_STATES)
    virtual void AddReaction(Reaction* param_1, VILLAGER_STATES param_2);
    // win1.41 006e4590 mac 10135830 Living::StartReacting(REACTION, GameThingWithPos *, Reaction *)
    virtual void StartReacting(REACTION param_1, GameThingWithPos* param_2, Reaction* param_3);
    // win1.41 005f1140 mac 10389590 Living::StopReacting(void)
    virtual void StopReacting();
    // win1.41 005f11c0 mac 103894f0 Living::StopReactingAndSetState(void)
    virtual void StopReactingAndSetState();
    // win1.41 005f1360 mac 10388d10 Living::SetupFleeFromObject(GameThingWithPos *, Reaction *)
    virtual void SetupFleeFromObject(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f13b0 mac 10388be0 Living::SetupLookAtObject(GameThingWithPos *, Reaction *)
    virtual void SetupLookAtObject(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f13e0 mac 10388b60 Living::SetupLookAtSpell(GameThingWithPos *, Reaction *)
    virtual void SetupLookAtSpell(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f1400 mac 10388ae0 Living::SetupLookAtNiceSpell(GameThingWithPos *, Reaction *)
    virtual void SetupLookAtNiceSpell(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f1420 mac 10388a30 Living::SetupFollowObject(GameThingWithPos *, Reaction *)
    virtual void SetupFollowObject(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f1450 mac 10388920 Living::SetupReactToCreature(GameThingWithPos *, Reaction *)
    virtual void SetupReactToCreature(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f14c0 mac 10388840 Living::SetupReactToFood(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFood(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004170b0 mac 1012fb00 Living::SetupReactToWood(GameThingWithPos *, Reaction *)
    virtual void SetupReactToWood(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f1500 mac 10388790 Living::SetupReactToMagicTree(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicTree(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f1530 mac 103886e0 Living::SetupReactToFlyingObject(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFlyingObject(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00474950 mac 10383900 Living::SetupReactToFire(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFire(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f1560 mac 10388630 Living::SetupReactToBall(GameThingWithPos *, Reaction *)
    virtual void SetupReactToBall(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004170c0 mac 1012fb50 Living::SetupReactToMagicShield(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicShield(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f1590 mac 103885b0 Living::SetupReactToCreatureGift(GameThingWithPos *, Reaction *)
    virtual void SetupReactToCreatureGift(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f15b0 mac 10388550 Living::SetupReactToNewBuilding(GameThingWithPos *, Reaction *)
    virtual void SetupReactToNewBuilding(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004170d0 mac 1012fbb0 Living::SetupReactToHandPickUp(GameThingWithPos *, Reaction *)
    virtual void SetupReactToHandPickUp(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004170e0 mac 1012fc10 Living::SetupReactToHandUsingTotem(GameThingWithPos *, Reaction *)
    virtual void SetupReactToHandUsingTotem(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004170f0 mac 1012fc70 Living::SetupReactToObjectCrushed(GameThingWithPos *, Reaction *)
    virtual void SetupReactToObjectCrushed(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417100 mac 1012fcd0 Living::SetupReactToFight(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFight(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417110 mac 1012fd20 Living::SetupReactToTeleport(GameThingWithPos *, Reaction *)
    virtual void SetupReactToTeleport(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417120 mac 1012fd80 Living::SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos *, Reaction *)
    virtual void SetupReactToHandPuttingStuffInStoragePit(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417130 mac 1012fdf0 Living::SetupReactToDeath(GameThingWithPos *, Reaction *)
    virtual void SetupReactToDeath(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417140 mac 1012fe40 Living::SetupReactToDroppedByHand(GameThingWithPos *, Reaction *)
    virtual void SetupReactToDroppedByHand(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417150 mac 1012fea0 Living::SetupReactToFainting(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFainting(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417160 mac 1012ff00 Living::SetupReactToConfused(GameThingWithPos *, Reaction *)
    virtual void SetupReactToConfused(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00473ea0 mac 101e35d0 Living::SetupReactToFallingTree(GameThingWithPos *, Reaction *)
    virtual void SetupReactToFallingTree(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417170 mac 1012ff60 Living::SetupReactToCrowd(GameThingWithPos *, Reaction *)
    virtual void SetupReactToCrowd(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417180 mac 1012ffb0 Living::SetupReactToBreeder(GameThingWithPos *, Reaction *)
    virtual void SetupReactToBreeder(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f1390 mac 10388c90 Living::SetupFleeFromPredator(GameThingWithPos *, Reaction *)
    virtual void SetupFleeFromPredator(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 00417190 mac 10130010 Living::SetupReactToTownCelebration(GameThingWithPos *, Reaction *)
    virtual void SetupReactToTownCelebration(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004171a0 mac 10130070 Living::SetupReactToVillagerInHand(GameThingWithPos *, Reaction *)
    virtual void SetupReactToVillagerInHand(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004171b0 mac 101300d0 Living::SetupReactToBurningObjectInHand(GameThingWithPos *, Reaction *)
    virtual void SetupReactToBurningObjectInHand(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004171c0 mac 10130130 Living::SetupReactToMagicShieldStruck(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicShieldStruck(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 004171d0 mac 10130190 Living::SetupReactToMagicShieldDestroyed(GameThingWithPos *, Reaction *)
    virtual void SetupReactToMagicShieldDestroyed(GameThingWithPos* param_1, Reaction* param_2);
    // win1.41 005f15c0 mac 103884e0 Living::FleeFromObjectPriority(Reaction *, Reaction *)
    virtual uint8_t FleeFromObjectPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1610 mac 103883a0 Living::LookAtObjectPriority(Reaction *, Reaction *)
    virtual uint8_t LookAtObjectPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1620 mac 10388330 Living::FollowObjectPriority(Reaction *, Reaction *)
    virtual uint8_t FollowObjectPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1630 mac 10388250 Living::FleeFromSpellPriority(Reaction *, Reaction *)
    virtual uint8_t FleeFromSpellPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1690 mac 103881e0 Living::LookAtSpellPriority(Reaction *, Reaction *)
    virtual uint8_t LookAtSpellPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f16a0 mac 10388120 Living::LookAtNiceSpellPriority(Reaction *, Reaction *)
    virtual uint8_t LookAtNiceSpellPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f16e0 mac 103880b0 Living::FollowSpellPriority(Reaction *, Reaction *)
    virtual uint8_t FollowSpellPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f16f0 mac 10388020 Living::ReactToCreaturePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToCreaturePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1710 mac 10387ee0 Living::ReactToFoodPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFoodPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f17a0 mac 10387e10 Living::ReactToWoodPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToWoodPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f17f0 mac 10387d90 Living::ReactToMagicTreePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicTreePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1800 mac 10387cd0 Living::ReactToFlyingObjectPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFlyingObjectPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1820 mac 10387c30 Living::ReactToBallPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToBallPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00474960 mac 10383950 Living::ReactToFirePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFirePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1860 mac 10387bb0 Living::ReactToMagicShieldPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicShieldPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1870 mac 10387b30 Living::ReactToCreatureGiftPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToCreatureGiftPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f1880 mac 10387a90 Living::ReactToNewBuildingPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToNewBuildingPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00474970 mac 10148240 Living::ReactToHandPickUpPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToHandPickUpPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00474980 mac 101482a0 Living::ReactToHandUsingTotemPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToHandUsingTotemPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00474990 mac 10148300 Living::ReactToObjectCrushedPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToObjectCrushedPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004749a0 mac 103839a0 Living::ReactToFightPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFightPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004749b0 mac 103839f0 Living::ReactToTeleportPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToTeleportPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004749c0 mac 10148360 Living::ReactToHandPuttingStuffInStoragePitPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToHandPuttingStuffInStoragePitPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004749d0 mac 10383a40 Living::ReactToDeathPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToDeathPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00473eb0 mac 101e3630 Living::ReactToDroppedByHandPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToDroppedByHandPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f18a0 mac 10387a20 Living::ReactToFaintingPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFaintingPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f18b0 mac 103879b0 Living::ReactToConfusedPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToConfusedPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00473ec0 mac 101e3690 Living::ReactToFallingTreePriority(Reaction *, Reaction *)
    virtual uint8_t ReactToFallingTreePriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004171e0 mac 101301f0 Living::ReactToCrowdPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToCrowdPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 004171f0 mac 10130240 Living::ReactToBreederPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToBreederPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417200 mac 10130290 Living::ReactToTownCelebrationPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToTownCelebrationPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f15d0 mac 10388410 Living::FleeFromPredatorPriority(Reaction *, Reaction *)
    virtual uint8_t FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417210 mac 101302f0 Living::ReactToVillagerInHandPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToVillagerInHandPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417220 mac 10130350 Living::ReactToBurningObjectInHandPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToBurningObjectInHandPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417230 mac 101303b0 Living::ReactToMagicShieldStruckPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicShieldStruckPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417240 mac 10130410 Living::ReactToMagicShieldDestroyedPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToMagicShieldDestroyedPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 00417250 mac 10130470 Living::ReactToScaffoldPriority(Reaction *, Reaction *)
    virtual uint8_t ReactToScaffoldPriority(Reaction* param_1, Reaction* param_2);
    // win1.41 005f18c0 mac 10387890 Living::StandardNumGameTurnsToReactFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t StandardNumGameTurnsToReactFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f1920 mac 10081310 Living::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f1b10 mac 10387040 Living::NumGameTurnsToReactToCreatureFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsToReactToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f1c00 mac 10386e40 Living::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f1980 mac 103875b0 Living::NumGameTurnsToReactToPredatorFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsToReactToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f1a00 mac 10387450 Living::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f2720 mac 10385bb0 Living::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f1a90 mac 103873c0 Living::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f1ab0 mac 10387320 Living::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f1ad0 mac 10387290 Living::NumGameTurnsToReactToShieldFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsToReactToShieldFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 005f1af0 mac 10387200 Living::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos *, unsigned long, float)
    virtual uint32_t NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* param_1, uint32_t param_2, float param_3);
    // win1.41 00417260 mac 100026a0 Living::IsPosValidForMapCellExistance(MapCoords const &)
    virtual uint32_t IsPosValidForMapCellExistance(const MapCoords* param_1);
    // win1.41 005ec340 mac 10382c10 Living::MoveByTeleport(MapCoords const &)
    virtual void MoveByTeleport(const MapCoords* param_1);
    // win1.41 00417270 mac 10130570 Living::IsDead(void)
    virtual bool IsDead();
    // win1.41 00473ed0 mac 101e36f0 Living::IsChild(void)
    virtual bool IsChild();
    // win1.41 005f2160 mac 103864c0 Living::GetFleeingPositionFromMovingObject(MapCoords *, GameThingWithPos *, float)
    virtual void GetFleeingPositionFromMovingObject(MapCoords* param_1, GameThingWithPos* param_2, float param_3);
    // win1.41 005f2010 mac 10386800 Living::GetFleeingPositionFromStationaryObject(MapCoords *, GameThingWithPos *, float)
    virtual void GetFleeingPositionFromStationaryObject(MapCoords* param_1, GameThingWithPos* param_2, float param_3);
    // win1.41 004749e0 mac 1012f950 Living::GetFinalState( const(void))
    virtual VILLAGER_STATES GetFinalState();
    // win1.41 005ef930 mac 103841e0 Living::RemoveFromDance(int)
    virtual void RemoveFromDance(int param_1);
    // win1.41 00417300 mac 10130810 Living::SetStateAfterFinishingDance(void)
    virtual void SetStateAfterFinishingDance();
    // win1.41 00417310 mac 10130850 Living::CalculateLifeDesire(void)
    virtual float CalculateLifeDesire();
    // win1.41 00417320 mac 100f8730 Living::DanceType(void)
    virtual uint32_t DanceType();
    // win1.41 005ee550 mac 1037e4a0 Living::CanBeHealedByHealSpell(void)
    virtual bool CanBeHealedByHealSpell();

    // Static methods

    // win1.41 005ec810 mac 1004bb10 Living::ProcessLiving(void)
    static void ProcessLiving();

    // Constructors

    // win1.41 0055c820 mac 1030ed90 Living::Living(void)
    Living();
    // win1.41 005ebec0 mac 10383560 Living::Living(MapCoords const &, GLivingInfo const *)
    Living(MapCoords* coords, GLivingInfo* info);

    // Non-virtual methods

    // win1.41 005afe20 mac inlined Living::StateArrivesAtFoodReaction(void)
    uint32_t StateArrivesAtFoodReaction();
    // win1.41 005afe30 mac inlined Living::StateDying(void)
    uint32_t StateDying();
    // win1.41 005afe80 mac inlined Living::StateArrivesAtWoodReaction(void)
    uint32_t StateArrivesAtWoodReaction();
    // win1.41 005afe90 mac inlined Living::StateDead(void)
    uint32_t StateDead();
    // win1.41 005aff20 mac inlined Living::StateInHand(void)
    uint32_t StateInHand();
    // win1.41 005aff30 mac inlined Living::StateDowned(void)
    uint32_t StateDowned();
    // win1.41 005aff40 mac inlined Living::StateSetDying(void)
    uint32_t StateSetDying();
    // win1.41 005affd0 mac inlined Living::StateBeingEaten(void)
    uint32_t StateBeingEaten();
    // win1.41 005affe0 mac inlined Living::StateFleeingFromObjectReaction(void)
    uint32_t StateFleeingFromObjectReaction();
    // win1.41 005b0040 mac inlined Living::StateAlongPath(void)
    uint32_t StateAlongPath();
    // win1.41 005b0050 mac inlined Living::StateBeingGoToFoodReaction(void)
    uint32_t StateGoToFoodReaction();
    // win1.41 005b0060 mac inlined Living::StateLookingAtObjectReaction(void)
    uint32_t StateLookingAtObjectReaction();
    // win1.41 005b00e0 mac inlined Living::StateFleeingAndLookingAtObjectReaction(void)
    uint32_t StateFleeingAndLookingAtObjectReaction();
    // win1.41 005b00f0 mac inlined Living::StateBeingGoToWoodReaction(void)
    uint32_t StateGoToWoodReaction();
    // win1.41 005b0190 mac inlined Living::StateMoveInFlock(void)
    uint32_t StateMoveInFlock();
    // win1.41 005b01b0 mac inlined Living::StateFollowingObjectReaction(void)
    uint32_t StateFollowingObjectReaction();
    // win1.41 005b0230 mac inlined Living::StateLookingAtFlyingObjectReaction(void)
    uint32_t StateLookingAtFlyingObjectReaction();
    // win1.41 005b0240 mac inlined Living::StateInspectObjectReaction(void)
    uint32_t StateInspectObjectReaction();
    // win1.41 005ec030 mac 103834b0 Living::SetToZero(void)
    void SetToZero();
    // win1.41 005ec1d0 mac 103831d0 Living::InvalidState(void)
    bool32_t InvalidState();
    // win1.41 005ec270 mac 1004cf70 Living::MoveToPos(void)
    int MoveToPos();
    // win1.41 005ec2c0 mac 10382da0 Living::MoveToObject(void)
    uint32_t MoveToObject();
    // win1.41 005ec330 mac 10382cf0 Living::Flying(void)
    uint32_t Flying();
    // win1.41 005ec520 mac 103826a0 Living::LookAtObject(GameThingWithPos *, unsigned long)
    uint32_t LookAtObject(GameThingWithPos* param_1, unsigned long param_2);
    // win1.41 005ec550 mac 10382540 Living::LookAtPos(MapCoords const &, ulong)
    bool LookAtPos(MapCoords* pos, int param_2);
    // win1.41 005ec960 mac 1004eb50 Living::IsReadyForNewAnimation(unsigned long)
    bool IsReadyForNewAnimation(uint32_t index);
    // win1.41 005ec990 mac 10054e20 Living::WaitForAnimation(void)
    uint32_t WaitForAnimation();
    // win1.41 005eca60 mac 10381e30 Living::GetReaction(void)
    void GetReaction();
    // win1.41 005eca80 mac inlined Living::SetTopStateToFinal(void)
    void SetTopStateToFinal();
    // win1.41 005ecac0 mac 10091bd0 Living::PlayAnimThenSetState(unsigned char, unsigned long)
    void PlayAnimThenSetState(unsigned char param_1, unsigned long param_2);
    // win1.41 005ecb10 mac 10053750 Living::SetStateAnim(void)
    void SetStateAnim();
    // win1.41 005ecd00 mac 10380fd0 Living::MoveOnStructure(void)
    uint32_t MoveOnStructure();
    // win1.41 005ecf60 mac 1006ced0 Living::GetFlockPos(void)
    MapCoords* GetFlockPos();
    // win1.41 005ecf70 mac 1004bf90 Living::IAmFlockLeader(void)
    bool IAmFlockLeader();
    // win1.41 005ecfa0 mac 10065500 Living::GetDomainRadius(void)
    uint16_t GetDomainRadius();
    // win1.41 005ecfc0 mac 1006cd50 Living::GetFlockDistance(void)
    uint16_t GetFlockDistance();
    // win1.41 005ed080 mac 100336b0 Living::CalcRandomPos(MapCoords const &, float, float)
    MapCoords* CalcRandomPos(MapCoords* param_1, MapCoords* param_2, float param_3, float param_4);
    // win1.41 005ed2c0 mac 10380600 Living::SetAge(float)
    void SetAge(int age);
    // win1.41 005ed9a0 mac 1006cf40 Living::StateInScript(void)
    uint32_t StateInScript();
    // win1.41 005edad0 mac 1037f9b0 Living::StateInDance(void)
    uint32_t StateInDance();
    // win1.41 005edc10 mac 1037f3d0 Living::SetupMoveOnFootpath(GFootpath *, int, unsigned char, GFootpathNode *)
    int SetupMoveOnFootpath(GFootpath* param_1, uint32_t param_2, uint32_t param_3, GFootpathNode* param_4);
    // win1.41 005edd20 mac 100980f0 Living::SetupMoveToOnFootpath(GameThingWithPos &, MapCoords const &, unsigned char)
    void SetupMoveToOnFootpath(GameThingWithPos* destination, MapCoords* arrive_position, uint8_t state);
    // win1.41 005edde0 mac 1037eef0 Living::MoveOnFootpath(void)
    int MoveOnFootpath();
    // win1.41 005ee5f0 mac 1037e2a0 Living::SetFlock(Flock *)
    void SetFlock(Flock* param_1);
    // win1.41 005ef010 mac 10065550 Living::PosWithinDomain(MapCoords const &, float)
    uint32_t PosWithinDomain(MapCoords* param_1, float param_2);
    // win1.41 005ef9c0 mac 10384160 Living::CalculateDancePosition(MapCoords const &, MapCoords *)
    bool CalculateDancePosition(const MapCoords* param_1, MapCoords* param_2);
    // win1.41 005ef9f0 mac 10383ce0 Living::PerformDance(MapCoords const &, unsigned char, unsigned long)
    bool32_t PerformDance(const MapCoords* param_1, unsigned char param_2, unsigned long param_3);
    // win1.41 005f1270 mac 1004b9b0 Living::ProcessReaction(void)
    void ProcessReaction();
    // win1.41 005f1d90 mac 10386bd0 Living::FleeFromObjectIfComingTowardsMe(GameThingWithPos *, VILLAGER_STATES, VILLAGER_STATES)
    bool32_t FleeFromObjectIfComingTowardsMe(GameThingWithPos* param_1, VILLAGER_STATES param_2, VILLAGER_STATES param_3);
    // win1.41 005f2640 mac 10385e00 Living::GotoPickupBallReaction(void)
    uint32_t GotoPickupBallReaction();
    // win1.41 005f27f0 mac 10056110 Living::GetTopState(void)
    VILLAGER_STATES GetTopState();
    // win1.41 005f2800 mac 1038a340 Living::SetupMoveToObject(Object *, unsigned char)
    bool SetupMoveToObject(Object* param_1, unsigned char param_2);
    // win1.41 005f2830 mac 10029240 Living::SetupMoveToPos(MapCoords const &, unsigned char)
    uint32_t SetupMoveToPos(const MapCoords* param_2, uint8_t param_3);
    // win1.41 005f2890 mac 10010f60 Living::SetupMoveToWithHug(MapCoords const &, unsigned char)
    uint32_t SetupMoveToWithHug(const MapCoords* coords, uint8_t state);
    // win1.41 006e44a0 mac 101358c0 Living::SetReactionDoneWhen(REACTION)
    void SetReactionDoneWhen(REACTION reaction);
    // win1.41 00768640 mac 105975c0 Living::CannotExitState(unsigned char)
    bool32_t CannotExitState(unsigned char param_1);
};

#endif /* BW1_DECOMP_LIVING_INCLUDED_H */
