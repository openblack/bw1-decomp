#ifndef BW1_DECOMP_INTERFACE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stddef.h>

#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For struct LHReleasedOSFile */
#include <Lionhead/LHLib/ver5.0/LHFastPointer.h>
#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */

#include "BaseInfo.h"               /* For struct BaseInfo */
#include "GameReturns.h"            /* For enum GAME_RETURNS */
#include "GameThingWithPos.h"       /* For struct GameThingWithPos */
#include "InterfaceActionState.h"   /* For enum INTERFACE_ACTION_STATE */
#include "InterfaceCollide.h"       /* For struct GInterfaceCollide */
#include "InterfaceFlags.h"         /* For struct GInterfaceFlags */
#include "InterfaceHandState.h"     /* For struct InterfaceHandState */
#include "InterfaceMessage.h"       /* For enum INTERFACE_MESSAGE_TYPES */
#include "InterfaceMessageBuffer.h" /* For struct GInterfaceMessageBuffer */

// Immersion Foundation Classes: keep an effect's current iteration count
#define IMM_EFFECT_DONT_CHANGE 0x80000000

// Forward Declares

class Base;
class CHand;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
struct LHCoord;
class LH3DObject;
class LHPlayer;
struct LHPoint;
class Object;
struct Leash;
struct LiquidParticleGroup;
class SpellSeed;

struct GInterfaceLimits
{
	uint8_t Inactive : 1;
	uint8_t OnlyInteractWithHighlights : 1;
	uint8_t NoEmptyHandApply : 1;

	// BW1W120 inlined BW1M119 inlined
	void Clear() { *(uint8_t*)this = 0; }
	// BW1W120 inlined BW1M119 inlined
	void SetOnlyInteractWithHighlights() { OnlyInteractWithHighlights = 1; }
	// BW1W120 inlined BW1M119 inlined
	void SetNoEmptyHandApply() { NoEmptyHandApply = 1; }
};

class GInterface : public GameThingWithPos
{
public:
	// BW1W120 005d05f0 BW1M119 01360150
	void                   Validate();
	GInterfaceLimits       Limits;
	LiquidParticleGroup*   liquid_particle_group;
	GInterfaceFlags        flags;
	INTERFACE_ACTION_STATE ActionState;
	uint32_t               InInfluence;
	uint32_t               field_0x4c;
	LHReleasedOSFile       file;               /* 0x50 */
	uint32_t               IsSpecificPlayback; /* 0x15c */
	uint32_t               IsAnyPlayback;      /* 0x160 */
	uint8_t                field_0x164[0x30];
	uint32_t               field_0x194;
	Leash*                 Leash0x198;
	Leash*                 Leash0x19c;
	Leash*                 Leash0x1a0;
	uint32_t               field_0x1a4;
	uint32_t               field_0x1a8;
	uint32_t               field_0x1ac;
	uint32_t               field_0x1b0;
	uint32_t               field_0x1b4;
	uint32_t               field_0x1b8;
	LHPlayer*              player;
	uint8_t                field_0x1c0[0x1a0];
	uint32_t               field_0x360;
	uint32_t               field_0x364;
	uint32_t               field_0x368;
	uint32_t               field_0x36c;
	uint32_t               field_0x370;
	uint32_t               field_0x374;
	uint32_t               field_0x378;
	uint32_t               field_0x37c;
	uint32_t               field_0x380;
	uint32_t               field_0x384;
	uint32_t               field_0x388;
	uint32_t               field_0x38c;
	uint32_t               field_0x390;
	uint32_t               field_0x394;
	uint32_t               field_0x398;
#ifdef VERSION_BW1WCI
	uint32_t ci_field_0x39c[0x6];
#endif
	GInterfaceStatus*       status;
	LHFastPointer<CHand>    hand; /* 0x3a0 */
	InterfaceHandState      HandState;
	GInterfaceCollide       interface_collide; /* 0x3b0 */
	uint32_t                field_0x3e0;
	uint32_t                field_0x3e4;
	GInterfaceCollide       Collide;        /* 0x3e8 */
	LHCoord                 ScreenCursorXY; /* 0x418 */
	LHCoord                 ScreenCursorChangeXY;
	LHCoord                 LocalScreenCursorXY;
	GInterfaceMessageBuffer MessageBuffers; /* 0x430 */
	uint32_t                AppliedTurn;
	uint32_t                ApplyRecievedPacketTurn;
	bool32_t                CameraMoved;
	uint32_t                field_0x450;
	uint32_t                field_0x454;
	uint32_t                field_0x458;
	BaseInfo                LastRClickedObject;
	uint32_t                LastRClickedTurn;
	MapCoords               LastRClickedPos; /* 0x46c */
	uint32_t                field_0x478;

	// Override methods

	// BW1W120 005ce310 BW1M119 01363e50
	virtual ~GInterface();
	// BW1W120 005ce480 BW1M119 01363bb0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005cec50 BW1M119 01362d00
	virtual int Get3DSoundPos(LHPoint* param_1);
	// BW1W120 005ce2c0 BW1M119 0106b890
	virtual GPlayer* GetPlayer();
	// BW1W120 005ce300 BW1M119 0135fe70
	virtual char* GetDebugText();
	// BW1W120 005d04d0 BW1M119 01360520
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 005d0490 BW1M119 013605b0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 005ce2f0 BW1M119 0135fe30
	virtual uint32_t GetSaveType();
	// BW1W120 005d0590 BW1M119 013601b0
	virtual void SaveExtraData(GameOSFile& file);
	// BW1W120 005d0510 BW1M119 01360310
	virtual void ResolveLoad();
	// BW1W120 005ce2e0 BW1M119 01076df0
	virtual bool32_t IsActive() const;
	// BW1W120 005ce2d0 BW1M119 0135fdf0
	virtual const char* GetText();

	// Constructors

	// BW1W120 005ce130 BW1M119 01363f90
	GInterface();

	// Non-virtual methods

	// BW1W120 005d0730 BW1M119 0135feb0
	Object* GetLastRClickedObject();
	// BW1W120 005d06e0 BW1M119 0135ff10
	void ToggleLeash();
	// BW1W120 inlined BW1M119 01084cb0
	MapCoords& GetHandRenderCollidePos() { return interface_collide.pos; }
	// BW1W120 005d8a10 BW1M119 0136f240
	void StartImmersion(IMMERSION_EFFECT_TYPE type, unsigned long iterations);
	// BW1W120 005d89f0 BW1M119 0136f2e0
	static void ActualStartImmersion(IMMERSION_EFFECT_TYPE type, unsigned long iterations);
	// BW1W120 005cee20 BW1M119 010059f0
	bool32_t InGameEditor() const;
	// BW1W120 005d0410 BW1M119 013606d0
	void KeyBoardRepeatSpell();
	// BW1W120 005d03d0 BW1M119 013607c0
	void KeyBoardStartSpellSelectionSystem();
	// BW1W120 005d8af0 BW1M119 0136f110
	void StopAllImmersion();
	// BW1W120 005d8a80 BW1M119 0136f1a0
	void StopImmersion(IMMERSION_EFFECT_TYPE type);
	// BW1W120 005d0460 BW1M119 01360640
	bool32_t IsLastRClickedPosNear(const MapCoords& pos, float distance) const;
	// BW1W120 005d56c0 BW1M119 0107d9c0
	void SendObjectDrawCollision(Object* object, float distance, LH3DObject* lh3d_object);
	// BW1W120 005d5a30 BW1M119 0136d240
	bool32_t SendBubbleCollision(Bubble* bubble, float distance);
	// BW1W120 005ced10 BW1M119 013629e0
	Object* GetInteractObject();
	// BW1W120 005da6f0 BW1M119 01371930
	void PlaceObjectInMagicHand(Object* object);
	// BW1W120 00519960 BW1M119 010261b0
	static void SendInvisibleDrawCollision(Object* object, LHPoint* pos, float radius);

	// BW1W120 005d0560 BW1M119 01360280
	void ResolveLoadForCreature();

	// BW1W120 005ce4d0 BW1M119 01363950
	void SetToZero();
	// BW1W120 005ce670 BW1M119 013637d0
	void Init(uint8_t player_number);
	// BW1W120 005ce7f0 BW1M119 01363560
	void InitLeash();
	// BW1W120 005ce920 BW1M119 01363380
	void SetupHand();
	// BW1W120 005ce9e0 BW1M119 0107de50
	void PreDrawProcess();
	// BW1W120 005ceab0 BW1M119 0107ff30
	void PostDrawProcess();
	// BW1W120 00518640 BW1M119 010200c0
	void        Draw();
	static void DrawAllLeashes(); // 005d9310
	// BW1W120 005cec10 BW1M119 01028060
	void Process();
	// BW1W120 005cedb0 BW1M119 01086500
	void ProcessFrameUpdates();
	// BW1W120 005db3f0 BW1M119 01373720
	void EndPlayBack();
	// BW1W120 005db710 BW1M119 01074d00
	bool32_t IsPlayBack(unsigned long task) const;
	// BW1W120 inlined BW1M119 010789b0
	CHand* GetRenderHand() { return hand.Get(); }
	// BW1W120 inlined BW1M119 01079860
	GInterfaceStatus* GetStatus() { return status; }
	// BW1W120 inlined BW1M119 01023a00
	INTERFACE_ACTION_STATE GetActionState() const { return ActionState; }
	// BW1W120 inlined BW1M119 01018b30
	uint32_t IsInInfluence() const { return InInfluence; }
	// BW1W120 inlined BW1M119 0143c0b0
	LHPlayer* GetLHPlayer() { return player; }
	// BW1W120 inlined BW1M119 01080130
	GInterfaceCollide* GetCollide() { return &Collide; }
	// BW1W120 inlined BW1M119 01365320
	LHCoord* GetScreenCursorXY() { return &ScreenCursorXY; }
	// BW1W120 inlined BW1M119 014f3b00
	HAND_STATE GetHandState() { return HandState.hand_state; }
	// BW1W120 inlined BW1M119 01363b60
	void SetHandState(HAND_STATE state) { HandState.hand_state = state; }
	// BW1W120 005dad60 BW1M119 013742f0
	void StartPlayBack(char* path, uint32_t task, bool32_t without_hand_modify);
	// BW1W120 005d0610 BW1M119 01086440
	void UpdateHandRenderCollide();
	// BW1W120 005d7e40 BW1M119 01077010
	void CalculateHandState();
	// BW1W120 005ce3f0 BW1M119 01363de0
	static void SetupStatics();
	// BW1W120 005ceba0 BW1M119 01362e80
	bool32_t LoadFiles();
	// BW1W120 005d9130 BW1M119 01033f60
	void UpdateAllLeashes();
	// BW1W120 005d9d80 BW1M119 010042e0
	bool SendMessageA(INTERFACE_MESSAGE_TYPES param_1, LHCoord* param_2);
	// BW1W120 005ce910 BW1M119 01363530
	void Cheat();
	// BW1W120 005d0690 BW1M119 0135ffe0
	bool32_t IsLeaderInterface();
	// BW1W120 005da100 BW1M119 013725b0
	GAME_RETURNS ApplyChangesToHand(GAME_RETURNS ret, Object* object, const MapCoords* coords);
	// BW1W120 005d95e0 BW1M119 0136f9b0
	float GetLocalLeashAppliedForce();
	// BW1W120 005d1010 BW1M119 01076e30
	void InterfaceActionValidateObjectsForStates();
	// BW1W120 005d1100 BW1M119 0108a420
	bool32_t InterfaceStateIsHandObjectRelated();
	// BW1W120 005d1110 BW1M119 010838b0
	bool32_t InterfaceStateIsCollideObjectRelated();
	// BW1W120 005d1120 BW1M119 01031930
	void InterfaceActionProcess();
	// BW1W120 005d2980 BW1M119 01367fc0
	void SetActionState(INTERFACE_ACTION_STATE state);
	// BW1W120 005d2990 BW1M119 010272e0
	bool32_t IsMyCreatureFighting();
	// BW1W120 005d29c0 BW1M119 01029660
	void ResetActionState();
	// BW1W120 005d1260 BW1M119 013698e0
	void InterfaceActionForceToNormal();
	// BW1W120 005cedc0 BW1M119 01362540
	void SetActive(bool32_t active);
	// BW1W120 005d1ab0 BW1M119 01097d30
	void InterfaceActionSetLandscapeMovement();
	// BW1W120 005d1320 BW1M119 010020f0
	void InterfaceActionSelect();
	// BW1W120 005d2c20 BW1M119 01366f00
	Creature* GetFightingObject();
	// BW1W120 005d21b0 BW1M119 01368710
	bool32_t InterfaceActionDrop();
	// BW1W120 005d2210 BW1M119 01368660
	bool32_t InterfaceActionEndLockedSelect(Object* object);
	// BW1W120 005d2730 BW1M119 013684d0
	bool32_t InterfaceActionStartUsingRSystem(INTERFACE_ACTION_STATE state);
	// BW1W120 005d2770 BW1M119 01368440
	void StartUsingRSystem();
	// BW1W120 005d27b0 BW1M119 013683b0
	void StopUsingRSystem();
	// BW1W120 005d3680 BW1M119 01366060
	void InterfaceActionApplyRecievedPacket();
	// BW1W120 005d36a0 BW1M119 01365fe0
	void InterfaceActionAppliedTurn();
	// BW1W120 005d36d0 BW1M119 01365f00
	void SetRClickedObject(Object* object);
	// BW1W120 005d3880 BW1M119 01077bf0
	SpellSeed* GetSpellSeedInHand();
	// BW1W120 005cead0 BW1M119 0109be40
	void AddToRSystem(LHCoord* coord);
	// BW1W120 005d27f0 BW1M119 01368340
	bool32_t InterfaceActionStartApplyOnRelease();
	// BW1W120 005d4330 BW1M119 01364c40
	bool32_t InterfaceActionSetBubbleGrip();
	// BW1W120 005d4650 BW1M119 01364660
	bool32_t InterfaceActionEndFightAction();
	// BW1W120 005d1840 BW1M119 01368e20
	bool32_t InterfaceActionStateCleanHandPluck();
	// BW1W120 005d36c0 BW1M119 0100c110
	bool32_t InterfaceActionStateInterfaceOff();
	// BW1W120 005d4830 BW1M119 0136ca20
	bool32_t InterfaceActionStateLockedSelect();
	// BW1W120 005d4870 BW1M119 0136c940
	bool32_t InterfaceActionStateCleanLockedSelect();
	// BW1W120 005d48d0 BW1M119 0136c830
	bool32_t InterfaceActionStateUsingRecSystem();
	// BW1W120 005d4940 BW1M119 0136c7c0
	bool32_t InterfaceActionStateCleanRSystem();
	// BW1W120 005d4960 BW1M119 0136c710
	bool32_t InterfaceActionStateWaitForSelectLocked();
	// BW1W120 005d4980 BW1M119 0136c690
	bool32_t InterfaceActionStateWaitForGive();
	// BW1W120 005d49a0 BW1M119 0136c610
	bool32_t InterfaceActionStateCleanGive();
	// BW1W120 005d49b0 BW1M119 0136c520
	bool32_t InterfaceActionStateWaitForSelectLockOff();
	// BW1W120 005d4a10 BW1M119 0136c460
	bool32_t InterfaceActionStateWaitForSelectLockOffCompletion();
	// BW1W120 005d4a40 BW1M119 01001ca0
	bool32_t InterfaceActionStateLandscape();
	// BW1W120 005d4a90 BW1M119 0136bcb0
	bool32_t InterfaceActionStateWaitForPlaceInHand();
	// BW1W120 005d4ac0 BW1M119 0136ba80
	bool32_t InterfaceActionStateFighting();
	// BW1W120 005d4c10 BW1M119 0136b940
	bool32_t InterfaceActionStateHandObjectLockedApplyToPos();
	// BW1W120 005d4cb0 BW1M119 0136b880
	bool32_t InterfaceActionStateCleanLockedApply();
	// BW1W120 005d4d00 BW1M119 0136b790
	bool32_t InterfaceActionStateHandObjectLockedApplyToObject();
	// BW1W120 005d4d60 BW1M119 0136b700
	bool32_t InterfaceActionStateCleanApplyRelease();
	// BW1W120 005d4d90 BW1M119 0136b670
	bool32_t InterfaceActionStateWaitForApplyReleaseNoAction();
	// BW1W120 005d4db0 BW1M119 0136b240
	bool32_t InterfaceActionStateWaitForApplyRelease();
	// BW1W120 005d5190 BW1M119 010268f0
	bool32_t InterfaceActionStateNormal();
	// BW1W120 005d5250 BW1M119 0136afb0
	bool32_t InterfaceActionStateWaitForHandPluck();
	// BW1W120 005d53b0 BW1M119 0136af30
	bool32_t InterfaceActionStateBubbleGrip();
	// BW1W120 005d53d0 BW1M119 0136ae00
	bool32_t InterfaceActionStateWaitForStartLockedSelect();
	// BW1W120 005d5460 BW1M119 0136ac50
	bool32_t InterfaceActionStateWaitForDelayOnLeashSupply();
	// BW1W120 005d5500 BW1M119 0136aa10
	bool32_t InterfaceActionStateLeashInteract();
	// BW1W120 005d5650 BW1M119 0136a990
	bool32_t InterfaceActionStateFightSelect();
	// BW1W120 005d5670 BW1M119 0136a910
	bool32_t InterfaceActionStateFightApply();
};

// LHReleasedOSFile already includes its 0x104-byte filename storage.
static_assert(offsetof(GInterface, IsSpecificPlayback) == 0x15c, "GInterface playback offset is incorrect");
#ifdef VERSION_BW1WCI
static_assert(offsetof(GInterface, hand) == 0x3b8, "GInterface hand offset is incorrect");
static_assert(offsetof(GInterface, HandState) == 0x3bc, "GInterface hand state offset is incorrect");
static_assert(offsetof(GInterface, interface_collide) == 0x3c8, "GInterface collide offset is incorrect");
#else
static_assert(offsetof(GInterface, hand) == 0x3a0, "GInterface hand offset is incorrect");
static_assert(offsetof(GInterface, HandState) == 0x3a4, "GInterface hand state offset is incorrect");
static_assert(offsetof(GInterface, interface_collide) == 0x3b0, "GInterface collide offset is incorrect");
#endif // VERSION_BW1WCI
static_assert(sizeof(LHFastPointer<CHand>) == 4, "GInterface hand pointer size is incorrect");

#endif /* BW1_DECOMP_INTERFACE_INCLUDED_H */
