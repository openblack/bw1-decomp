#ifndef BW1_DECOMP_PUZZLE_GAME_INCLUDED_H
#define BW1_DECOMP_PUZZLE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */
#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */
#include <re_common.h> /* For bool32_t */

#include "Animal.h" /* For struct Animal */
#include "AnimalCow.h" /* For struct Cow */
#include "AnimalHorse.h" /* For struct Horse */
#include "AnimalLion.h" /* For struct Lion */
#include "AnimalPig.h" /* For struct Pig */
#include "AnimalSheep.h" /* For struct Sheep */
#include "AnimalTortoise.h" /* For struct Tortoise */
#include "AnimalWolf.h" /* For struct Wolf */
#include "AnimatedStatic.h" /* For struct AnimatedStatic */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MobileObject.h" /* For struct MobileObject */
#include "Object.h" /* For enum FOOD_TYPE */
#include "PileFood.h" /* For struct PileFood */
#include "Totem.h" /* For struct Totem */

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

class PuzzleGame: public GameThingWithPos
{
public:
    uint8_t field_0x0x28[0x560];

    // Override methods

    // BW1W120 00561b70 BW1M100 10133820 PuzzleGame::_dt(void)
    virtual ~PuzzleGame();
    // BW1W120 006d6ff0 BW1M100 1012bfa0 PuzzleGame::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00561b60 BW1M100 10133a40 PuzzleGame::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006d9d40 BW1M100 10126ae0 PuzzleGame::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006d96c0 BW1M100 10127440 PuzzleGame::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00561b50 BW1M100 10133a00 PuzzleGame::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00561b10 BW1M100 inlined PuzzleGame::GetPos( const(MapCoords *))
    virtual MapCoords* GetPos(MapCoords* param_1);
    // BW1W120 00561b30 BW1M100 10133980 PuzzleGame::GetText(void)
    virtual const char* GetText();
    // BW1W120 00561b40 BW1M100 101339c0 PuzzleGame::IsPuzzleGame(void)
    virtual uint32_t IsPuzzleGame();
};

class ChessGamePuzzle: public GameThingWithPos
{
public:

    // Override methods

    // BW1W120 006dddb0 BW1M100 inlined ChessGamePuzzle::_dt(void)
    virtual ~ChessGamePuzzle();
    // BW1W120 006dde30 BW1M100 inlined ChessGamePuzzle::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 006ddda0 BW1M100 inlined ChessGamePuzzle::GetText(void)
    virtual const char* GetText();
};

class ChessPiece: public AnimatedStatic
{
public:
};

class ChessKing: public ChessPiece
{
public:

    // Override methods

    // BW1W120 006de3c0 BW1M100 inlined ChessKing::_dt(void)
    virtual ~ChessKing();
};

class ChessKnight: public ChessPiece
{
public:

    // Override methods

    // BW1W120 006de300 BW1M100 inlined ChessKnight::_dt(void)
    virtual ~ChessKnight();
};

class ChessMad: public ChessPiece
{
public:

    // Override methods

    // BW1W120 006de340 BW1M100 inlined ChessMad::_dt(void)
    virtual ~ChessMad();
    // BW1W120 005273d0 BW1M100 inlined ChessMad::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
};

class ChessPion: public ChessPiece
{
public:

    // Override methods

    // BW1W120 006de280 BW1M100 inlined ChessPion::_dt(void)
    virtual ~ChessPion();
    // BW1W120 006dde40 BW1M100 inlined ChessPion::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 005273b0 BW1M100 inlined ChessPion::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 00422190 BW1M100 inlined ChessPion::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00422bc0 BW1M100 inlined ChessPion::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00422aa0 BW1M100 inlined ChessPion::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00422180 BW1M100 inlined ChessPion::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00422770 BW1M100 inlined ChessPion::Draw(void)
    virtual void Draw();
    // BW1W120 006dde50 BW1M100 inlined ChessPion::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 00422210 BW1M100 inlined ChessPion::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // BW1W120 004221e0 BW1M100 inlined ChessPion::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 004221d0 BW1M100 inlined ChessPion::ChecksVerticesVObjects(void)
    virtual uint32_t ChecksVerticesVObjects();
    // BW1W120 00422ec0 BW1M100 inlined ChessPion::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // BW1W120 00422ed0 BW1M100 inlined ChessPion::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
    virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (__cdecl* param_4)(int, Point2D, float, int));
    // BW1W120 006de260 BW1M100 inlined ChessPion::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

class ChessQueen: public ChessPiece
{
public:

    // Override methods

    // BW1W120 006de380 BW1M100 inlined ChessQueen::_dt(void)
    virtual ~ChessQueen();
};

class ChessTower: public ChessPiece
{
public:

    // Override methods

    // BW1W120 006de2c0 BW1M100 inlined ChessTower::_dt(void)
    virtual ~ChessTower();
};

class PieceHorse: public Horse
{
public:

    // Override methods

    // BW1W120 0041d870 BW1M100 10120b50 PieceHorse::_dt(void)
    virtual ~PieceHorse();
    // BW1W120 0041d860 BW1M100 101311e0 PieceHorse::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041d850 BW1M100 101311a0 PieceHorse::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class PieceLion: public Lion
{
public:

    // Override methods

    // BW1W120 004200f0 BW1M100 10175360 PieceLion::_dt(void)
    virtual ~PieceLion();
    // BW1W120 004200d0 BW1M100 101754c0 PieceLion::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 004200c0 BW1M100 10175480 PieceLion::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 004200e0 BW1M100 10175500 PieceLion::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
};

class PiecePig: public Pig
{
public:

    // Override methods

    // BW1W120 0041dab0 BW1M100 10120660 PiecePig::_dt(void)
    virtual ~PiecePig();
    // BW1W120 0041daa0 BW1M100 101315f0 PiecePig::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041da90 BW1M100 101315b0 PiecePig::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041da70 BW1M100 10131530 PiecePig::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
};

class PieceSheep: public Sheep
{
public:

    // Override methods

    // BW1W120 0041d630 BW1M100 10120ec0 PieceSheep::_dt(void)
    virtual ~PieceSheep();
    // BW1W120 0041d620 BW1M100 1012e440 PieceSheep::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041d610 BW1M100 1012e400 PieceSheep::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class PieceTortoise: public Tortoise
{
public:

    // Override methods

    // BW1W120 0041dc40 BW1M100 10120880 PieceTortoise::_dt(void)
    virtual ~PieceTortoise();
    // BW1W120 0041dc30 BW1M100 101314b0 PieceTortoise::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041dc20 BW1M100 10131470 PieceTortoise::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class PieceVillager: public Animal
{
public:

    // Override methods

    // BW1W120 0041bbd0 BW1M100 10124c60 PieceVillager::_dt(void)
    virtual ~PieceVillager();
    // BW1W120 0041bbb0 BW1M100 10164d80 PieceVillager::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041bba0 BW1M100 10164d40 PieceVillager::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041bbc0 BW1M100 101334a0 PieceVillager::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // BW1W120 0041cfd0 BW1M100 1016d160 PieceVillager::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

class PieceWolf: public Wolf
{
public:

    // Override methods

    // BW1W120 00421da0 BW1M100 10120d10 PieceWolf::_dt(void)
    virtual ~PieceWolf();
    // BW1W120 00421d80 BW1M100 10178360 PieceWolf::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00421d70 BW1M100 10178320 PieceWolf::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00421d90 BW1M100 10133030 PieceWolf::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
};

class PieceCow: public Cow
{
public:
};

class PuzzleCow: public PieceCow
{
public:

    // Override methods

    // BW1W120 006dd6f0 BW1M100 10132270 PuzzleCow::_dt(void)
    virtual ~PuzzleCow();
    // BW1W120 006dd680 BW1M100 10132350 PuzzleCow::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006dd670 BW1M100 10132310 PuzzleCow::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 006dd4b0 BW1M100 inlined PuzzleCow::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // BW1W120 006dd690 BW1M100 10132390 PuzzleCow::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // BW1W120 0041c7e0 BW1M100 inlined PuzzleCow::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

class PuzzleGrain: public PileFood
{
public:

    // Override methods

    // BW1W120 00561a70 BW1M100 101317c0 PuzzleGrain::_dt(void)
    virtual ~PuzzleGrain();
    // BW1W120 00561910 BW1M100 10131890 PuzzleGrain::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006dbe40 BW1M100 10123450 PuzzleGrain::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006dbeb0 BW1M100 10123370 PuzzleGrain::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00561900 BW1M100 10131850 PuzzleGrain::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00561920 BW1M100 101318d0 PuzzleGrain::CanBeEatenByCreature(Creature *)
    virtual uint32_t CanBeEatenByCreature(Creature* param_1);
    // BW1W120 00561930 BW1M100 10131920 PuzzleGrain::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // BW1W120 00561a20 BW1M100 10131e70 PuzzleGrain::Draw(void)
    virtual void Draw();
    // BW1W120 00561a30 BW1M100 10122f40 PuzzleGrain::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 00561a10 BW1M100 10131e20 PuzzleGrain::GetFoodValue(FOOD_TYPE)
    virtual float GetFoodValue(FOOD_TYPE param_1);
    // BW1W120 00561940 BW1M100 10131970 PuzzleGrain::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // BW1W120 00561950 BW1M100 101319d0 PuzzleGrain::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 00561960 BW1M100 10131a30 PuzzleGrain::NetworkUnfriendlyStartLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyStartLockedSelect();
    // BW1W120 00561970 BW1M100 10131a80 PuzzleGrain::IsReadyForNetworkUnfriendlyLockedSelect(void)
    virtual uint32_t IsReadyForNetworkUnfriendlyLockedSelect();
    // BW1W120 00561980 BW1M100 10131ae0 PuzzleGrain::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // BW1W120 00561990 BW1M100 10131b40 PuzzleGrain::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t GetReadyForNetworkUnfriendlyEndLockedSelect();
    // BW1W120 005619a0 BW1M100 10131ba0 PuzzleGrain::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t IsReadyForNetworkUnfriendlyEndLockedSelect();
    // BW1W120 005619b0 BW1M100 10131c00 PuzzleGrain::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // BW1W120 005619c0 BW1M100 10131c50 PuzzleGrain::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 005619d0 BW1M100 10131cb0 PuzzleGrain::ValidAsInterfaceTarget(void)
    virtual uint32_t ValidAsInterfaceTarget();
    // BW1W120 005619f0 BW1M100 10131d60 PuzzleGrain::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // BW1W120 00561a00 BW1M100 10131dc0 PuzzleGrain::InterfaceSetOutMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetOutMagicHand(GInterfaceStatus* param_1);
    // BW1W120 005619e0 BW1M100 10131d00 PuzzleGrain::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // BW1W120 00561a40 BW1M100 10131ec0 PuzzleGrain::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // BW1W120 00561a60 BW1M100 10131f20 PuzzleGrain::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // BW1W120 006dc550 BW1M100 10122550 PuzzleGrain::GetImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
};

class PuzzleHorse: public PieceHorse
{
public:

    // Override methods

    // BW1W120 006dd590 BW1M100 101327b0 PuzzleHorse::_dt(void)
    virtual ~PuzzleHorse();
    // BW1W120 006dd520 BW1M100 10132850 PuzzleHorse::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006dd530 BW1M100 10132890 PuzzleHorse::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // BW1W120 00416fd0 BW1M100 inlined PuzzleHorse::SetFoodSpeedup(bool)
    virtual void SetFoodSpeedup(bool param_1);
    // BW1W120 00416fe0 BW1M100 inlined PuzzleHorse::IsFoodSpeedUp(void)
    virtual bool IsFoodSpeedUp();
    // BW1W120 005f1d10 BW1M100 inlined PuzzleHorse::FleeingFromObjectReaction(void)
    virtual bool FleeingFromObjectReaction();
    // BW1W120 005f23a0 BW1M100 inlined PuzzleHorse::LookingAtObjectReaction(void)
    virtual bool LookingAtObjectReaction();
    // BW1W120 005f2420 BW1M100 inlined PuzzleHorse::FleeingAndLookingAtObjectReaction(void)
    virtual bool FleeingAndLookingAtObjectReaction();
    // BW1W120 005f2430 BW1M100 inlined PuzzleHorse::FollowingObjectReaction(void)
    virtual bool FollowingObjectReaction();
    // BW1W120 005f2540 BW1M100 inlined PuzzleHorse::InspectObjectReaction(void)
    virtual bool InspectObjectReaction();
    // BW1W120 005ec3f0 BW1M100 inlined PuzzleHorse::Dying(void)
    virtual bool Dying();
    // BW1W120 005ec400 BW1M100 inlined PuzzleHorse::Dead(void)
    virtual bool Dead();
    // BW1W120 005ec4d0 BW1M100 inlined PuzzleHorse::BeingEaten(void)
    virtual bool BeingEaten();
    // BW1W120 005f2550 BW1M100 inlined PuzzleHorse::GotoFoodReaction(void)
    virtual bool GotoFoodReaction();
    // BW1W120 005f25c0 BW1M100 inlined PuzzleHorse::GotoWoodReaction(void)
    virtual bool GotoWoodReaction();
    // BW1W120 0041a9f0 BW1M100 inlined PuzzleHorse::MoveInFlock(void)
    virtual bool MoveInFlock();
    // BW1W120 005ef350 BW1M100 inlined PuzzleHorse::IsMovingForAnimation(void)
    virtual bool IsMovingForAnimation();
    // BW1W120 0041a0a0 BW1M100 inlined PuzzleHorse::ArrivesAtFoodReaction(void)
    virtual bool ArrivesAtFoodReaction();
    // BW1W120 00417030 BW1M100 inlined PuzzleHorse::ArrivesAtWoodReaction(void)
    virtual bool ArrivesAtWoodReaction();
    // BW1W120 005ec620 BW1M100 inlined PuzzleHorse::InHand(void)
    virtual bool InHand();
    // BW1W120 006db120 BW1M100 10124e30 PuzzleHorse::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
    // BW1W120 005ec8f0 BW1M100 inlined PuzzleHorse::Birthday(void)
    virtual void Birthday();
    // BW1W120 004179c0 BW1M100 inlined PuzzleHorse::SetAge(unsigned long)
    virtual void SetAge(uint32_t param_1);
    // BW1W120 00417820 BW1M100 inlined PuzzleHorse::CallIntoAnimationFunction(VILLAGER_STATES)
    virtual int CallIntoAnimationFunction(VILLAGER_STATES param_1);
    // BW1W120 00417830 BW1M100 inlined PuzzleHorse::CallOutofAnimationFunction(VILLAGER_STATES)
    virtual int CallOutofAnimationFunction(VILLAGER_STATES param_1);
};

class PuzzleLion: public PieceWolf
{
public:

    // Override methods

    // BW1W120 00561630 BW1M100 10132cf0 PuzzleLion::_dt(void)
    virtual ~PuzzleLion();
    // BW1W120 005615c0 BW1M100 10132dd0 PuzzleLion::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 005615b0 BW1M100 10132d90 PuzzleLion::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 005615d0 BW1M100 10132e10 PuzzleLion::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
};

class PuzzleMobileObject: public MobileObject
{
public:

    // Override methods

    // BW1W120 00561af0 BW1M100 10131630 PuzzleMobileObject::_dt(void)
    virtual ~PuzzleMobileObject();
    // BW1W120 00561ae0 BW1M100 10131770 PuzzleMobileObject::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006dbf20 BW1M100 10123290 PuzzleMobileObject::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006dbf80 BW1M100 101231b0 PuzzleMobileObject::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00561ad0 BW1M100 10131730 PuzzleMobileObject::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 006dc510 BW1M100 10122590 PuzzleMobileObject::GetImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
    // BW1W120 00561ac0 BW1M100 101316c0 PuzzleMobileObject::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

class PuzzlePig: public PiecePig
{
public:

    // Override methods

    // BW1W120 006dd7a0 BW1M100 10132510 PuzzlePig::_dt(void)
    virtual ~PuzzlePig();
    // BW1W120 006dd730 BW1M100 101325f0 PuzzlePig::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006dd720 BW1M100 101325b0 PuzzlePig::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 006dd740 BW1M100 10132630 PuzzlePig::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // BW1W120 006db130 BW1M100 10124df0 PuzzlePig::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
};

class PuzzleSheep: public PieceSheep
{
public:

    // Override methods

    // BW1W120 005617c0 BW1M100 10132a30 PuzzleSheep::_dt(void)
    virtual ~PuzzleSheep();
    // BW1W120 00561750 BW1M100 10132b10 PuzzleSheep::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00561740 BW1M100 10132ad0 PuzzleSheep::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00561760 BW1M100 10132b50 PuzzleSheep::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // BW1W120 006db110 BW1M100 10124e70 PuzzleSheep::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
};

class PuzzleTortoise: public PieceTortoise
{
public:

    // Override methods

    // BW1W120 006dd640 BW1M100 10131f70 PuzzleTortoise::_dt(void)
    virtual ~PuzzleTortoise();
    // BW1W120 006dd5d0 BW1M100 10132050 PuzzleTortoise::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006dd5c0 BW1M100 10132010 PuzzleTortoise::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 006dd5e0 BW1M100 10132090 PuzzleTortoise::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
};

class PuzzleTotem: public Totem
{
public:

    // Override methods

    // BW1W120 005618d0 BW1M100 10133500 PuzzleTotem::_dt(void)
    virtual ~PuzzleTotem();
    // BW1W120 00561890 BW1M100 101335e0 PuzzleTotem::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 006da740 BW1M100 10126150 PuzzleTotem::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006da7f0 BW1M100 10126020 PuzzleTotem::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00561880 BW1M100 101335a0 PuzzleTotem::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 006da710 BW1M100 10126270 PuzzleTotem::SetMaxHeight(float)
    virtual void SetMaxHeight(float param_1);
    // BW1W120 005618a0 BW1M100 10133620 PuzzleTotem::GetMaxHeight(void)
    virtual float GetMaxHeight();
    // BW1W120 006da5d0 BW1M100 10126540 PuzzleTotem::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // BW1W120 006da8a0 BW1M100 10125f60 PuzzleTotem::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 006da8e0 BW1M100 10125eb0 PuzzleTotem::NetworkUnfriendlyStartLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyStartLockedSelect();
    // BW1W120 006da970 BW1M100 10125ba0 PuzzleTotem::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // BW1W120 006da920 BW1M100 10125e00 PuzzleTotem::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // BW1W120 006da960 BW1M100 10125da0 PuzzleTotem::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // BW1W120 006da5f0 BW1M100 101264e0 PuzzleTotem::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // BW1W120 006da610 BW1M100 10126420 PuzzleTotem::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // BW1W120 005618b0 BW1M100 10133680 PuzzleTotem::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // BW1W120 00737450 BW1M100 inlined PuzzleTotem::DeleteDependancys(void)
    virtual void DeleteDependancys();
    // BW1W120 007377d0 BW1M100 inlined PuzzleTotem::MakeFunctional(void)
    virtual void MakeFunctional();
};

class PuzzleVillager: public PieceVillager
{
public:

    // Override methods

    // BW1W120 00561710 BW1M100 101330c0 PuzzleVillager::_dt(void)
    virtual ~PuzzleVillager();
    // BW1W120 00561670 BW1M100 101331a0 PuzzleVillager::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00561660 BW1M100 10133160 PuzzleVillager::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00561680 BW1M100 101331e0 PuzzleVillager::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
};

#endif /* BW1_DECOMP_PUZZLE_GAME_INCLUDED_H */
