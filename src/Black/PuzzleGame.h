#ifndef BW1_DECOMP_PUZZLE_GAME_INCLUDED_H
#define BW1_DECOMP_PUZZLE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h>    /* For enum IMMERSION_EFFECT_TYPE */
#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */
#include <re_common.h>      /* For bool32_t */

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
struct PhysOb;
class PhysicsObject;
class PlannedMultiMapFixed;
struct RPHolder;

class PuzzleGame : public GameThingWithPos
{
public:
	uint8_t field_0x0x28[0x560];

	// Override methods

	// BW1W120 00561b70 BW1M119 0113c3c0
	virtual ~PuzzleGame();
	// BW1W120 006d6ff0 BW1M119 01135110
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00561b60 BW1M119 0113c5e0
	virtual char* GetDebugText();
	// BW1W120 006d9d40 BW1M119 0112fc40
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006d96c0 BW1M119 011305d0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561b50 BW1M119 0113c5a0
	virtual uint32_t GetSaveType();
	// BW1W120 00561b10 BW1M119 inlined
	virtual MapCoords GetPos() const;
	// BW1W120 00561b30 BW1M119 0113c520
	virtual const char* GetText();
	// BW1W120 00561b40 BW1M119 0113c560
	virtual uint32_t IsPuzzleGame();
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
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
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

	// BW1W120 0041d870 BW1M119 01129d80
	virtual ~PieceHorse();
	// BW1W120 0041d860 BW1M119 01139d80
	virtual char* GetDebugText();
	// BW1W120 0041d850 BW1M119 01139d40
	virtual uint32_t GetSaveType();
};

class PieceLion : public Lion
{
public:
	// Override methods

	// BW1W120 004200f0 BW1M119 0117e3b0
	virtual ~PieceLion();
	// BW1W120 004200d0 BW1M119 0117e510
	virtual char* GetDebugText();
	// BW1W120 004200c0 BW1M119 0117e4d0
	virtual uint32_t GetSaveType();
	// BW1W120 004200e0 BW1M119 0117e550
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
};

class PiecePig : public Pig
{
public:
	// Override methods

	// BW1W120 0041dab0 BW1M119 01129890
	virtual ~PiecePig();
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

	// BW1W120 0041d630 BW1M119 0112a0f0
	virtual ~PieceSheep();
	// BW1W120 0041d620 BW1M119 011373c0
	virtual char* GetDebugText();
	// BW1W120 0041d610 BW1M119 01137380
	virtual uint32_t GetSaveType();
};

class PieceTortoise : public Tortoise
{
public:
	// Override methods

	// BW1W120 0041dc40 BW1M119 01129ab0
	virtual ~PieceTortoise();
	// BW1W120 0041dc30 BW1M119 0113a050
	virtual char* GetDebugText();
	// BW1W120 0041dc20 BW1M119 0113a010
	virtual uint32_t GetSaveType();
};

class PieceVillager : public Animal
{
public:
	// Override methods

	// BW1W120 0041bbd0 BW1M119 0112ddd0
	virtual ~PieceVillager();
	// BW1W120 0041bbb0 BW1M119 0116d0d0
	virtual char* GetDebugText();
	// BW1W120 0041bba0 BW1M119 0116d090
	virtual uint32_t GetSaveType();
	// BW1W120 0041bbc0 BW1M119 0113c040
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 0041cfd0 BW1M119 01176020
	virtual uint32_t StandAnimation();
};

class PieceWolf : public Wolf
{
public:
	// Override methods

	// BW1W120 00421da0 BW1M119 01129f40
	virtual ~PieceWolf();
	// BW1W120 00421d80 BW1M119 01181450
	virtual char* GetDebugText();
	// BW1W120 00421d70 BW1M119 01181410
	virtual uint32_t GetSaveType();
	// BW1W120 00421d90 BW1M119 0113bbd0
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
};

class PieceCow : public Cow
{
public:
};

class PuzzleCow : public PieceCow
{
public:
	// Override methods

	// BW1W120 006dd6f0 BW1M119 0113ae10
	virtual ~PuzzleCow();
	// BW1W120 006dd680 BW1M119 0113aef0
	virtual char* GetDebugText();
	// BW1W120 006dd670 BW1M119 0113aeb0
	virtual uint32_t GetSaveType();
	// BW1W120 006dd4b0 BW1M119 inlined
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 006dd690 BW1M119 0113af30
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0041c7e0 BW1M119 inlined
	virtual uint32_t StandAnimation();
};

class PuzzleGrain : public PileFood
{
public:
	// Override methods

	// BW1W120 00561a70 BW1M119 0113a360
	virtual ~PuzzleGrain();
	// BW1W120 00561910 BW1M119 0113a430
	virtual char* GetDebugText();
	// BW1W120 006dbe40 BW1M119 0112c5f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006dbeb0 BW1M119 0112c510
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561900 BW1M119 0113a3f0
	virtual uint32_t GetSaveType();
	// BW1W120 00561920 BW1M119 0113a470
	virtual uint32_t CanBeEatenByCreature(Creature* param_1);
	// BW1W120 00561930 BW1M119 0113a4c0
	virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
	// BW1W120 00561a20 BW1M119 0113aa10
	virtual void Draw();
	// BW1W120 00561a30 BW1M119 0112c0e0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00561a10 BW1M119 0113a9c0
	virtual float GetFoodValue(FOOD_TYPE param_1);
	// BW1W120 00561940 BW1M119 0113a510
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 00561950 BW1M119 0113a570
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 00561960 BW1M119 0113a5d0
	virtual uint32_t NetworkUnfriendlyStartLockedSelect();
	// BW1W120 00561970 BW1M119 0113a620
	virtual uint32_t IsReadyForNetworkUnfriendlyLockedSelect();
	// BW1W120 00561980 BW1M119 0113a680
	virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 00561990 BW1M119 0113a6e0
	virtual uint32_t GetReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 005619a0 BW1M119 0113a740
	virtual uint32_t IsReadyForNetworkUnfriendlyEndLockedSelect();
	// BW1W120 005619b0 BW1M119 0113a7a0
	virtual uint32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 005619c0 BW1M119 0113a7f0
	virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 005619d0 BW1M119 0113a850
	virtual uint32_t ValidAsInterfaceTarget();
	// BW1W120 005619f0 BW1M119 0113a900
	virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00561a00 BW1M119 0113a960
	virtual uint32_t InterfaceSetOutMagicHand(GInterfaceStatus* param_1);
	// BW1W120 005619e0 BW1M119 0113a8a0
	virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
	// BW1W120 00561a40 BW1M119 0113aa60
	virtual Object* EndPhysics(PhysicsObject* param_1, bool param_2);
	// BW1W120 00561a60 BW1M119 0113aac0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 006dc550 BW1M119 0112b6f0
	virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
};

class PuzzleHorse : public PieceHorse
{
public:
	// Override methods

	// BW1W120 006dd590 BW1M119 0113b350
	virtual ~PuzzleHorse();
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
	virtual bool MoveInFlock();
	// BW1W120 005ef350 BW1M119 inlined
	virtual bool32_t IsMovingForAnimation();
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
	// Override methods

	// BW1W120 00561630 BW1M119 0113b890
	virtual ~PuzzleLion();
	// BW1W120 005615c0 BW1M119 0113b970
	virtual char* GetDebugText();
	// BW1W120 005615b0 BW1M119 0113b930
	virtual uint32_t GetSaveType();
	// BW1W120 005615d0 BW1M119 0113b9b0
	virtual bool32_t CanBecomeAPhysicsObject();
};

class PuzzleMobileObject : public MobileObject
{
public:
	// Override methods

	// BW1W120 00561af0 BW1M119 0113a1d0
	virtual ~PuzzleMobileObject();
	// BW1W120 00561ae0 BW1M119 0113a310
	virtual char* GetDebugText();
	// BW1W120 006dbf20 BW1M119 0112c430
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006dbf80 BW1M119 0112c350
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561ad0 BW1M119 0113a2d0
	virtual uint32_t GetSaveType();
	// BW1W120 006dc510 BW1M119 0112b730
	virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
	// BW1W120 00561ac0 BW1M119 0113a260
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

class PuzzlePig : public PiecePig
{
public:
	// Override methods

	// BW1W120 006dd7a0 BW1M119 0113b0b0
	virtual ~PuzzlePig();
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
	// Override methods

	// BW1W120 005617c0 BW1M119 0113b5d0
	virtual ~PuzzleSheep();
	// BW1W120 00561750 BW1M119 0113b6b0
	virtual char* GetDebugText();
	// BW1W120 00561740 BW1M119 0113b670
	virtual uint32_t GetSaveType();
	// BW1W120 00561760 BW1M119 0113b6f0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 006db110 BW1M119 0112dfe0
	virtual bool32_t DecideWhatToDo();
};

class PuzzleTortoise : public PieceTortoise
{
public:
	// Override methods

	// BW1W120 006dd640 BW1M119 0113ab10
	virtual ~PuzzleTortoise();
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
	// Override methods

	// BW1W120 005618d0 BW1M119 0113c0a0
	virtual ~PuzzleTotem();
	// BW1W120 00561890 BW1M119 0113c180
	virtual char* GetDebugText();
	// BW1W120 006da740 BW1M119 0112f2b0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006da7f0 BW1M119 0112f180
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561880 BW1M119 0113c140
	virtual uint32_t GetSaveType();
	// BW1W120 006da710 BW1M119 0112f3d0
	virtual void SetMaxHeight(float param_1);
	// BW1W120 005618a0 BW1M119 0113c1c0
	virtual float GetMaxHeight();
	// BW1W120 006da5d0 BW1M119 0112f6a0
	virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
	// BW1W120 006da8a0 BW1M119 0112f0c0
	virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 006da8e0 BW1M119 0112f010
	virtual uint32_t NetworkUnfriendlyStartLockedSelect();
	// BW1W120 006da970 BW1M119 0112ed00
	virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
	// BW1W120 006da920 BW1M119 0112ef60
	virtual uint32_t NetworkUnfriendlyEndLockedSelect();
	// BW1W120 006da960 BW1M119 0112ef00
	virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
	// BW1W120 006da5f0 BW1M119 0112f640
	virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
	// BW1W120 006da610 BW1M119 0112f580
	virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
	// BW1W120 005618b0 BW1M119 0113c220
	virtual void ReactToPhysicsImpact(PhysicsObject* obj, bool param_2);
	// BW1W120 00737450 BW1M119 inlined
	virtual void DeleteDependancys();
	// BW1W120 007377d0 BW1M119 inlined
	virtual void MakeFunctional();
};

class PuzzleVillager : public PieceVillager
{
public:
	// Override methods

	// BW1W120 00561710 BW1M119 0113bc60
	virtual ~PuzzleVillager();
	// BW1W120 00561670 BW1M119 0113bd40
	virtual char* GetDebugText();
	// BW1W120 00561660 BW1M119 0113bd00
	virtual uint32_t GetSaveType();
	// BW1W120 00561680 BW1M119 0113bd80
	virtual bool32_t CanBecomeAPhysicsObject();
};

#endif /* BW1_DECOMP_PUZZLE_GAME_INCLUDED_H */
