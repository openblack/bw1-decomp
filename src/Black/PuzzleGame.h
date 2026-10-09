#ifndef BW1_DECOMP_PUZZLE_GAME_INCLUDED_H
#define BW1_DECOMP_PUZZLE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>        /* For enum IMMERSION_EFFECT_TYPE */
#include <chlasm/GStates.h>     /* For enum VILLAGER_STATES */
#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_PUZZLE_GAME_TYPE */
#include <re_common.h>          /* For bool32_t */

#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LHLib/ver5.0/LHListHead.h>           /* For struct LHListHead */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>           /* For struct LHListNode */

#include "Animal.h"           /* For struct Animal */
#include "AnimalCow.h"        /* For struct Cow */
#include "AnimalHorse.h"      /* For struct Horse */
#include "AnimalLion.h"       /* For struct Lion */
#include "AnimalPig.h"        /* For struct Pig */
#include "AnimalSheep.h"      /* For struct Sheep */
#include "AnimalTortoise.h"   /* For struct Tortoise */
#include "AnimalWolf.h"       /* For struct Wolf */
#include "AnimatedStatic.h"   /* For struct AnimatedStatic */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MobileObject.h"     /* For struct MobileObject */
#include "Object.h"           /* For enum FOOD_TYPE */
#include "PileFood.h"         /* For struct PileFood */
#include "Totem.h"            /* For struct Totem */

#define HANOI_STABLE_TICKS              5
#define PUZZLE_TOTEM_DEFAULT_MAX_HEIGHT 100

// Forward Declares

class Abode;
class Base;
struct ControlHandUpdateInfo;
class Creature;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;
class GameThing;
class LHOSFile;
class Living;
struct MapCoords;
class MultiMapFixed;
class Object;
class PaintBrush;
struct PhysOb;
class PhysicsObject;
class PlannedMultiMapFixed;
struct RPHolder;

class PuzzleGame : public GameThingWithPos
{
public:
	// BW1W120 00d4eee8
	static LH3DMapCoords AppliedMapPos;

	uint32_t                field_0x28;
	LHListNode<PuzzleGame>  next;
	uint32_t                field_0x30;
	LHListHead<PaintBrush>  PaintBrushes;
	uint8_t                 field_0x3c[0xc];
	SCRIPT_PUZZLE_GAME_TYPE GameType;
	uint8_t                 field_0x4c[0x3c0];
	int32_t                 HanoiStableCount;
	uint8_t                 field_0x410[0x178];

	// Override methods

	// BW1W120 006d6ff0 BW1M119 01135110
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00561b60 BW1M119 0113c5e0
	virtual char* GetDebugText() { return "PuzzleGame: "; }
	// BW1W120 006d9d40 BW1M119 0112fc40
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006d96c0 BW1M119 011305d0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561b50 BW1M119 0113c5a0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PUZZLE_GAME; }
	// BW1W120 00561b10 BW1M119 0113c480
	virtual MapCoords GetPos() { return Pos; }
	// BW1W120 00561b30 BW1M119 0113c520
	virtual const char* GetText() { return "PuzzleGame"; }
	// BW1W120 00561b40 BW1M119 0113c560
	virtual bool32_t IsPuzzleGame() { return true; }

	// BW1W120 inlined BW1M119 inlined
	PuzzleGame() { HanoiStableCount = HANOI_STABLE_TICKS; }

	// Non-virtual methods

	// BW1W120 006d7480 BW1M119 01132350
	void Process();
	// BW1W120 006d6cc0 BW1M119 01135550
	void FullDelete(int param_1);
	// BW1W120 006d66e0 BW1M119 01135b10
	bool32_t IsComplete();
	// BW1W120 006dc070 BW1M119 0112c1f0
	uint32_t GetPuzzleGameStatus();
};

class ChessGamePuzzle : public GameThingWithPos
{
public:
	// Override methods

	// BW1W120 006dddb0 BW1M119 inlined
	virtual ~ChessGamePuzzle();
	// BW1W120 006dde30 BW1M119 inlined
	virtual void ToBeDeleted(int param_1);
	// BW1W120 006ddda0 BW1M119 inlined
	virtual const char* GetText();
};

class ChessPiece : public AnimatedStatic
{
public:
};

class ChessKing : public ChessPiece
{
public:
	// Override methods

	// BW1W120 006de3c0 BW1M119 inlined
	virtual ~ChessKing();
};

class ChessKnight : public ChessPiece
{
public:
	// Override methods

	// BW1W120 006de300 BW1M119 inlined
	virtual ~ChessKnight();
};

class ChessMad : public ChessPiece
{
public:
	// Override methods

	// BW1W120 006de340 BW1M119 inlined
	virtual ~ChessMad();
	// BW1W120 005273d0 BW1M119 inlined
	virtual PlannedMultiMapFixed* ConvertToPlanned();
};

class ChessPion : public ChessPiece
{
public:
	// Override methods

	// BW1W120 006de280 BW1M119 inlined
	virtual ~ChessPion();
	// BW1W120 006dde40 BW1M119 inlined
	virtual void ToBeDeleted(int param_1);
	// BW1W120 005273b0 BW1M119 inlined
	virtual GPlayer* GetPlayer();
	// BW1W120 00422190 BW1M119 inlined
	virtual char* GetDebugText();
	// BW1W120 00422bc0 BW1M119 inlined
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00422aa0 BW1M119 inlined
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00422180 BW1M119 inlined
	virtual uint32_t GetSaveType();
	// BW1W120 00422770 BW1M119 inlined
	virtual void Draw();
	// BW1W120 006dde50 BW1M119 inlined
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00422210 BW1M119 inlined
	virtual void SetUpPhysOb(PhysOb* param_1);
	// BW1W120 004221e0 BW1M119 inlined
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 004221d0 BW1M119 inlined
	virtual bool ChecksVerticesVObjects();
	// BW1W120 00422ec0 BW1M119 inlined
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00422ed0 BW1M119 inlined
	virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3,
	                            void(__cdecl* param_4)(int, Point2D, float, int));
	// BW1W120 006de260 BW1M119 inlined
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords* param_2);
};

class ChessQueen : public ChessPiece
{
public:
	// Override methods

	// BW1W120 006de380 BW1M119 inlined
	virtual ~ChessQueen();
};

class ChessTower : public ChessPiece
{
public:
	// Override methods

	// BW1W120 006de2c0 BW1M119 inlined
	virtual ~ChessTower();
};

class PieceHorse : public Horse
{
public:
	// Override methods

	// BW1W120 0041d860 BW1M119 01139d80
	virtual char* GetDebugText();
	// BW1W120 0041d850 BW1M119 01139d40
	virtual uint32_t GetSaveType();
};

class PieceLion : public Lion
{
public:
	// Override methods

	// BW1W120 00420120 BW1M119 0117e5a0
	virtual bool32_t DecideWhatToDo();
	// BW1W120 004200a0 BW1M119 0117e450
	virtual uint32_t ProcessNeeds();
	// BW1W120 004200b0 BW1M119 0117e490
	virtual uint32_t CheckNeeds();
	// BW1W120 004200d0 BW1M119 0117e510
	virtual char* GetDebugText();
	// BW1W120 004200c0 BW1M119 0117e4d0
	virtual uint32_t GetSaveType();
	// BW1W120 004200e0 BW1M119 0117e550
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);

	// BW1W120 inlined BW1M119 inlined
	PieceLion() {}
};

class PiecePig : public Pig
{
public:
	// Override methods

	// BW1W120 0041daa0 BW1M119 0113a190
	virtual char* GetDebugText();
	// BW1W120 0041da90 BW1M119 0113a150
	virtual uint32_t GetSaveType();
	// BW1W120 0041da70 BW1M119 0113a0d0
	virtual bool32_t DecideWhatToDo();
};

class PieceSheep : public Sheep
{
public:
	// Override methods

	// BW1W120 0041d5e0 BW1M119 011372c0
	virtual bool32_t DecideWhatToDo();
	// BW1W120 0041d5f0 BW1M119 01137300
	virtual uint32_t ProcessNeeds();
	// BW1W120 0041d600 BW1M119 01137340
	virtual uint32_t CheckNeeds();
	// BW1W120 0041d620 BW1M119 011373c0
	virtual char* GetDebugText();
	// BW1W120 0041d610 BW1M119 01137380
	virtual uint32_t GetSaveType();

	// BW1W120 inlined BW1M119 0130fc30
	PieceSheep() {}
};

class PieceTortoise : public Tortoise
{
public:
	// Override methods

	// BW1W120 0041dc30 BW1M119 0113a050
	virtual char* GetDebugText();
	// BW1W120 0041dc20 BW1M119 0113a010
	virtual uint32_t GetSaveType();
};

class PieceVillager : public Animal
{
public:
	// Override methods

	// BW1W120 0041bc00 BW1M119 0116d2c0
	virtual bool32_t DecideWhatToDo();
	// BW1W120 0041bb80 BW1M119 0113bfc0
	virtual uint32_t ProcessNeeds();
	// BW1W120 0041bb90 BW1M119 0113c000
	virtual uint32_t CheckNeeds();
	// BW1W120 0041cf20 BW1M119 011762c0
	virtual uint32_t MoveAnimation();
	// BW1W120 0041cf50 BW1M119 01176240
	virtual uint32_t DyingAnimation();
	// BW1W120 0041cf60 BW1M119 01176200
	virtual uint32_t DeadAnimation();
	// BW1W120 0041cf70 BW1M119 011761c0
	virtual uint32_t EatAnimation();
	// BW1W120 0041cf80 BW1M119 01176170
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041cf90 BW1M119 01176120
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041cfa0 BW1M119 011760e0
	virtual uint32_t SleepAnimation();
	// BW1W120 0041cfb0 BW1M119 011760a0
	virtual uint32_t PounceAnimation();
	// BW1W120 0041cfc0 BW1M119 01176060
	virtual uint32_t HideAnimation();
	// BW1W120 0041d030 BW1M119 01175fe0
	virtual uint32_t InHandAnimation();
	// BW1W120 0041cf40 BW1M119 01176280
	virtual uint32_t LandedAnimation();
	// BW1W120 0041d040 BW1M119 01175fa0
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041bbb0 BW1M119 0116d0d0
	virtual char* GetDebugText();
	// BW1W120 0041bba0 BW1M119 0116d090
	virtual uint32_t GetSaveType();
	// BW1W120 0041bbc0 BW1M119 0113c040
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 0041cfd0 BW1M119 01176020
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 0130fb80
	PieceVillager() {}
};

class PieceWolf : public Wolf
{
public:
	// Override methods

	// BW1W120 00421dd0 BW1M119 01181490
	virtual bool32_t DecideWhatToDo();
	// BW1W120 00421d50 BW1M119 0113bb50
	virtual uint32_t ProcessNeeds();
	// BW1W120 00421d60 BW1M119 0113bb90
	virtual uint32_t CheckNeeds();
	// BW1W120 00421d80 BW1M119 01181450
	virtual char* GetDebugText();
	// BW1W120 00421d70 BW1M119 01181410
	virtual uint32_t GetSaveType();
	// BW1W120 00421d90 BW1M119 0113bbd0
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);

	// BW1W120 inlined BW1M119 0130fb10
	PieceWolf() {}
};

class PieceCow : public Cow
{
public:
};

class PuzzleCow : public PieceCow
{
public:
	// Override methods

	// BW1W120 006dd680 BW1M119 0113aef0
	virtual char* GetDebugText();
	// BW1W120 006dd670 BW1M119 0113aeb0
	virtual uint32_t GetSaveType();
	// BW1W120 006dd4b0 BW1M119 inlined
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 006dd690 BW1M119 0113af30
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0041c7e0 BW1M119 inlined
	virtual uint32_t StandAnimation();
};

class PuzzleGrain : public PileFood
{
public:
	uint8_t field_0xbc[0x4];

	// Override methods

	// BW1W120 00561910 BW1M119 0113a430
	virtual char* GetDebugText() { return "PuzzleGrain: "; }
	// BW1W120 006dbe40 BW1M119 0112c5f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006dbeb0 BW1M119 0112c510
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561900 BW1M119 0113a3f0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PUZZLE_GRAIN; }
	// BW1W120 00561920 BW1M119 0113a470
	virtual bool32_t CanBeEatenByCreature(Creature* creature) { return false; }
	// BW1W120 00561930 BW1M119 0113a4c0
	virtual bool32_t CanBePickedUpByCreature(Creature* creature) { return false; }
	// BW1W120 00561a20 BW1M119 0113aa10
	virtual void Draw() { MobileObject::Draw(); }
	// BW1W120 00561a30 BW1M119 0112c0e0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords)
	{
		MobileObject::CallVirtualFunctionsForCreation(coords);
	}
	// BW1W120 00561a10 BW1M119 0113a9c0
	virtual float GetFoodValue(FOOD_TYPE type) { return 0.0f; }
	// BW1W120 00561940 BW1M119 0113a510
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* status) { return false; }
	// BW1W120 00561950 BW1M119 0113a570
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* status) { return true; }
	// BW1W120 00561960 BW1M119 0113a5d0
	virtual bool32_t NetworkUnfriendlyStartLockedSelect() { return true; }
	// BW1W120 00561970 BW1M119 0113a620
	virtual bool32_t IsReadyForNetworkUnfriendlyLockedSelect() { return true; }
	// BW1W120 00561980 BW1M119 0113a680
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* info) { return true; }
	// BW1W120 00561990 BW1M119 0113a6e0
	virtual bool32_t GetReadyForNetworkUnfriendlyEndLockedSelect() { return true; }
	// BW1W120 005619a0 BW1M119 0113a740
	virtual bool32_t IsReadyForNetworkUnfriendlyEndLockedSelect() { return true; }
	// BW1W120 005619b0 BW1M119 0113a7a0
	virtual bool32_t NetworkUnfriendlyEndLockedSelect() { return true; }
	// BW1W120 005619c0 BW1M119 0113a7f0
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* status) { return true; }
	// BW1W120 005619d0 BW1M119 0113a850
	virtual bool32_t ValidAsInterfaceTarget() { return true; }
	// BW1W120 005619f0 BW1M119 0113a900
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* status) { return true; }
	// BW1W120 00561a00 BW1M119 0113a960
	virtual bool32_t InterfaceSetOutMagicHand(GInterfaceStatus* status) { return true; }
	// BW1W120 005619e0 BW1M119 0113a8a0
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* status, Object* object) { return 0; }
	// BW1W120 00561a40 BW1M119 0113aa60
	virtual Object* EndPhysics(PhysicsObject* physics_object, bool param_2)
	{
		return Object::EndPhysics(physics_object, param_2);
	}
	// BW1W120 00561a60 BW1M119 0113aac0
	virtual bool32_t CanBecomeAPhysicsObject() { return false; }
	// BW1W120 006dc550 BW1M119 0112b6f0
	virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();

	// BW1W120 inlined BW1M119 inlined
	PuzzleGrain() { ResourceType = RESOURCE_TYPE_NONE; }
};

class PuzzleHorse : public PieceHorse
{
public:
	// Override methods

	// BW1W120 006dd520 BW1M119 0113b3f0
	virtual char* GetDebugText();
	// BW1W120 006dd530 BW1M119 0113b430
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 00416fd0 BW1M119 inlined
	virtual void SetFoodSpeedup(bool param_1);
	// BW1W120 00416fe0 BW1M119 inlined
	virtual bool IsFoodSpeedUp();
	// BW1W120 005f1d10 BW1M119 inlined
	virtual bool32_t FleeingFromObjectReaction();
	// BW1W120 005f23a0 BW1M119 inlined
	virtual bool32_t LookingAtObjectReaction();
	// BW1W120 005f2420 BW1M119 inlined
	virtual bool32_t FleeingAndLookingAtObjectReaction();
	// BW1W120 005f2430 BW1M119 inlined
	virtual bool32_t FollowingObjectReaction();
	// BW1W120 005f2540 BW1M119 inlined
	virtual bool32_t InspectObjectReaction();
	// BW1W120 005ec3f0 BW1M119 inlined
	virtual bool32_t Dying();
	// BW1W120 005ec400 BW1M119 inlined
	virtual bool32_t Dead();
	// BW1W120 005ec4d0 BW1M119 inlined
	virtual bool32_t BeingEaten();
	// BW1W120 005f2550 BW1M119 inlined
	virtual bool32_t GotoFoodReaction();
	// BW1W120 005f25c0 BW1M119 inlined
	virtual bool32_t GotoWoodReaction();
	// BW1W120 0041a9f0 BW1M119 inlined
	virtual bool32_t MoveInFlock();
#ifndef VERSION_BW1W100
	// BW1W120 005ef350 BW1M119 inlined
	virtual bool32_t IsMovingForAnimation();
#endif
	// BW1W120 0041a0a0 BW1M119 inlined
	virtual bool32_t ArrivesAtFoodReaction();
	// BW1W120 00417030 BW1M119 inlined
	virtual bool32_t ArrivesAtWoodReaction();
	// BW1W120 005ec620 BW1M119 inlined
	virtual bool32_t InHand();
	// BW1W120 006db120 BW1M119 0112dfa0
	virtual bool32_t DecideWhatToDo();
	// BW1W120 005ec8f0 BW1M119 inlined
	virtual void Birthday();
	// BW1W120 004179c0 BW1M119 inlined
	virtual void SetAge(uint32_t param_1);
	// BW1W120 00417820 BW1M119 inlined
	virtual int CallIntoAnimationFunction(uint8_t state);
	// BW1W120 00417830 BW1M119 inlined
	virtual int CallOutofAnimationFunction(uint8_t state);
};

class PuzzleLion : public PieceWolf
{
public:
	long BoxX; /* 0x148 */
	long BoxZ;
	bool Team; /* 0x150 */

	// Override methods

	// BW1W120 006db100 BW1M119 0112e020
	virtual bool32_t DecideWhatToDo();
	// BW1W120 006dd940 BW1M119 01128a80
	virtual bool32_t MoveAllowedForChessGame(long x, long z);
	// BW1W120 006dd9d0 BW1M119 01128a10
	virtual bool32_t AttackAllowedForChessGame(long x, long z);
	// BW1W120 006dcaa0 BW1M119 0112adc0
	virtual void AddToBoxPositionForChessGame(long x, long z);
	// BW1W120 005615e0 BW1M119 0113ba00
	virtual long GetBoxXForChessGame() { return BoxX; }
	// BW1W120 005615f0 BW1M119 0113ba40
	virtual long GetBoxZForChessGame() { return BoxZ; }
	// BW1W120 00561600 BW1M119 0113ba80
	virtual void SetBoxXForChessGame(long x) { BoxX = x; }
	// BW1W120 00561610 BW1M119 0113bac0
	virtual void SetBoxZForChessGame(long z) { BoxZ = z; }
	// BW1W120 00561620 BW1M119 0113bb00
	virtual bool GetTeamForChessGame() { return Team; }
	// BW1W120 005615c0 BW1M119 0113b970
	virtual char* GetDebugText() { return "PuzzleLion: "; }
	// BW1W120 005615b0 BW1M119 0113b930
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PUZZLE_LION; }
	// BW1W120 005615d0 BW1M119 0113b9b0
	virtual bool32_t CanBecomeAPhysicsObject() { return false; }

	// BW1W120 inlined BW1M119 inlined
	PuzzleLion() { Flags |= GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP; }
};

class PuzzleMobileObject : public MobileObject
{
public:
	uint8_t field_0x68[0x4];

	// Override methods

	// BW1W120 00561ae0 BW1M119 0113a310
	virtual char* GetDebugText() { return "Immersion Mushroom: "; }
	// BW1W120 006dbf20 BW1M119 0112c430
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006dbf80 BW1M119 0112c350
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561ad0 BW1M119 0113a2d0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PUZZLE_MOBILE_OBJECT; }
	// BW1W120 006dc510 BW1M119 0112b730
	virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
	// BW1W120 00561ac0 BW1M119 0113a260
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture() { return GetImmersionTexture(); }

	// BW1W120 00561aa0 BW1M119 inlined
	PuzzleMobileObject() { SetIndestructable(true); }
};

class PuzzlePig : public PiecePig
{
public:
	// Override methods

	// BW1W120 006dd730 BW1M119 0113b190
	virtual char* GetDebugText();
	// BW1W120 006dd720 BW1M119 0113b150
	virtual uint32_t GetSaveType();
	// BW1W120 006dd740 BW1M119 0113b1d0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 006db130 BW1M119 0112df60
	virtual bool32_t DecideWhatToDo();
};

class PuzzleSheep : public PieceSheep
{
public:
	long BoxX; /* 0x148 */
	long BoxZ;
	bool Team; /* 0x150 */

	// Override methods

	// BW1W120 006dd9f0 BW1M119 01128910
	virtual bool32_t MoveAllowedForChessGame(long x, long z);
	// BW1W120 006dda70 BW1M119 01128890
	virtual bool32_t AttackAllowedForChessGame(long x, long z);
	// BW1W120 006dca70 BW1M119 0112ae20
	virtual void AddToBoxPositionForChessGame(long x, long z);
	// BW1W120 00561770 BW1M119 0113b740
	virtual long GetBoxXForChessGame() { return BoxX; }
	// BW1W120 00561780 BW1M119 0113b780
	virtual long GetBoxZForChessGame() { return BoxZ; }
	// BW1W120 00561790 BW1M119 0113b7c0
	virtual void SetBoxXForChessGame(long x) { BoxX = x; }
	// BW1W120 005617a0 BW1M119 0113b800
	virtual void SetBoxZForChessGame(long z) { BoxZ = z; }
	// BW1W120 005617b0 BW1M119 0113b840
	virtual bool GetTeamForChessGame() { return Team; }
	// BW1W120 00561750 BW1M119 0113b6b0
	virtual char* GetDebugText() { return "PuzzleSheep: "; }
	// BW1W120 00561740 BW1M119 0113b670
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PUZZLE_SHEEP; }
	// BW1W120 00561760 BW1M119 0113b6f0
	virtual bool32_t CanBecomeAPhysicsObject() { return false; }
	// BW1W120 006db110 BW1M119 0112dfe0
	virtual bool32_t DecideWhatToDo();

	// BW1W120 inlined BW1M119 inlined
	PuzzleSheep() { Flags |= GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP; }
};

class PuzzleTortoise : public PieceTortoise
{
public:
	// Override methods

	// BW1W120 006dd5d0 BW1M119 0113abf0
	virtual char* GetDebugText();
	// BW1W120 006dd5c0 BW1M119 0113abb0
	virtual uint32_t GetSaveType();
	// BW1W120 006dd5e0 BW1M119 0113ac30
	virtual bool32_t CanBecomeAPhysicsObject();
};

class PuzzleTotem : public Totem
{
public:
	int32_t MaxHeight;
	int32_t ActualHeight;
	int32_t PreviousHeight;
	int32_t HeightBlendCountdown;
	uint8_t field_0xf4[0x8];

	// Override methods

	// BW1W120 00561890 BW1M119 0113c180
	virtual char* GetDebugText() { return "PuzzleTotem: "; }
	// BW1W120 006da740 BW1M119 0112f2b0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006da7f0 BW1M119 0112f180
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561880 BW1M119 0113c140
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PUZZLE_TOTEM; }
	// BW1W120 006da710 BW1M119 0112f3d0
	virtual void SetMaxHeight(float param_1);
	// BW1W120 005618a0 BW1M119 0113c1c0
	virtual float GetMaxHeight() { return MaxHeight; }
	// BW1W120 006da5d0 BW1M119 0112f6a0
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 006da8a0 BW1M119 0112f0c0
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 006da8e0 BW1M119 0112f010
	virtual bool32_t NetworkUnfriendlyStartLockedSelect();
	// BW1W120 006da970 BW1M119 0112ed00
	virtual bool32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 006da920 BW1M119 0112ef60
	virtual bool32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 006da960 BW1M119 0112ef00
	virtual bool32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 006da5f0 BW1M119 0112f640
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 006da610 BW1M119 0112f580
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 005618b0 BW1M119 0113c220
	virtual void ReactToPhysicsImpact(PhysicsObject* physics, bool transferred_damage)
	{
		Object::ReactToPhysicsImpact(physics, transferred_damage);
	}
	// BW1W120 006daa90 BW1M119 0112ebd0
	virtual float GetWorshipPercentage();
	// BW1W120 006da680 BW1M119 0112f4e0
	virtual void SetWorshipPercentage(float percentage);

	// BW1W120 inlined BW1M119 inlined
	PuzzleTotem()
	{
		HeightBlendCountdown = 0;
		SetIndestructable(true);
		MaxHeight = PUZZLE_TOTEM_DEFAULT_MAX_HEIGHT;
	}
};

class PuzzleVillager : public PieceVillager
{
public:
	long BoxX; /* 0x148 */
	long BoxZ;
	bool Team; /* 0x150 */

	// Override methods

	// BW1W120 006db0f0 BW1M119 0112e060
	virtual bool32_t DecideWhatToDo();
	// BW1W120 006ddd40 BW1M119 011281f0
	virtual bool32_t MoveAllowedForChessGame(long x, long z);
	// BW1W120 006ddd30 BW1M119 01128240
	virtual bool32_t AttackAllowedForChessGame(long x, long z);
	// BW1W120 00561690 BW1M119 0113bdd0
	virtual void AddToBoxPositionForChessGame(long x, long z)
	{
		BoxX += x;
		BoxZ += z;
	}
	// BW1W120 005616c0 BW1M119 0113be30
	virtual long GetBoxXForChessGame() { return BoxX; }
	// BW1W120 005616d0 BW1M119 0113be80
	virtual long GetBoxZForChessGame() { return BoxZ; }
	// BW1W120 005616e0 BW1M119 0113bed0
	virtual void SetBoxXForChessGame(long x) { BoxX = x; }
	// BW1W120 005616f0 BW1M119 0113bf20
	virtual void SetBoxZForChessGame(long z) { BoxZ = z; }
	// BW1W120 00561700 BW1M119 0113bf70
	virtual bool GetTeamForChessGame() { return Team; }
	// BW1W120 00561670 BW1M119 0113bd40
	virtual char* GetDebugText() { return "PuzzleVillager: "; }
	// BW1W120 00561660 BW1M119 0113bd00
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PUZZLE_VILLAGER; }
	// BW1W120 00561680 BW1M119 0113bd80
	virtual bool32_t CanBecomeAPhysicsObject() { return false; }

	// BW1W120 inlined BW1M119 inlined
	PuzzleVillager() { Flags |= GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP; }
};

#endif /* BW1_DECOMP_PUZZLE_GAME_INCLUDED_H */
