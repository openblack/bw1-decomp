#ifndef BW1_DECOMP_PUZZLE_GAME_INCLUDED_H
#define BW1_DECOMP_PUZZLE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */
#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */
#include <reversing_utils/re_common.h> /* For bool32_t */

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

    // win1.41 00561b70 mac 10133820 PuzzleGame::_dt(void)
    virtual ~PuzzleGame();
    // win1.41 006d6ff0 mac 1012bfa0 PuzzleGame::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00561b60 mac 10133a40 PuzzleGame::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006d9d40 mac 10126ae0 PuzzleGame::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006d96c0 mac 10127440 PuzzleGame::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561b50 mac 10133a00 PuzzleGame::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00561b10 mac inlined PuzzleGame::GetPos( const(MapCoords *))
    virtual MapCoords* GetPos(MapCoords* param_1);
    // win1.41 00561b30 mac 10133980 PuzzleGame::GetText(void)
    virtual const char* GetText();
    // win1.41 00561b40 mac 101339c0 PuzzleGame::IsPuzzleGame(void)
    virtual uint32_t IsPuzzleGame();
};

class ChessGamePuzzle: public GameThingWithPos
{
public:

    // Override methods

    // win1.41 006dddb0 mac inlined ChessGamePuzzle::_dt(void)
    virtual ~ChessGamePuzzle();
    // win1.41 006dde30 mac inlined ChessGamePuzzle::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 006ddda0 mac inlined ChessGamePuzzle::GetText(void)
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

    // win1.41 006de3c0 mac inlined ChessKing::_dt(void)
    virtual ~ChessKing();
};

class ChessKnight: public ChessPiece
{
public:

    // Override methods

    // win1.41 006de300 mac inlined ChessKnight::_dt(void)
    virtual ~ChessKnight();
};

class ChessMad: public ChessPiece
{
public:

    // Override methods

    // win1.41 006de340 mac inlined ChessMad::_dt(void)
    virtual ~ChessMad();
    // win1.41 005273d0 mac inlined ChessMad::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
};

class ChessPion: public ChessPiece
{
public:

    // Override methods

    // win1.41 006de280 mac inlined ChessPion::_dt(void)
    virtual ~ChessPion();
    // win1.41 006dde40 mac inlined ChessPion::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 005273b0 mac inlined ChessPion::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00422190 mac inlined ChessPion::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00422bc0 mac inlined ChessPion::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00422aa0 mac inlined ChessPion::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00422180 mac inlined ChessPion::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00422770 mac inlined ChessPion::Draw(void)
    virtual void Draw();
    // win1.41 006dde50 mac inlined ChessPion::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00422210 mac inlined ChessPion::SetUpPhysOb(PhysOb *)
    virtual void SetUpPhysOb(PhysOb* param_1);
    // win1.41 004221e0 mac inlined ChessPion::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 004221d0 mac inlined ChessPion::ChecksVerticesVObjects(void)
    virtual uint32_t ChecksVerticesVObjects();
    // win1.41 00422ec0 mac inlined ChessPion::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00422ed0 mac inlined ChessPion::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
    virtual void AddToRoutePlan(RPHolder* param_1, Creature* param_2, int param_3, void (__cdecl*)(int, Point2D, float, int) param_4);
    // win1.41 006de260 mac inlined ChessPion::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

class ChessQueen: public ChessPiece
{
public:

    // Override methods

    // win1.41 006de380 mac inlined ChessQueen::_dt(void)
    virtual ~ChessQueen();
};

class ChessTower: public ChessPiece
{
public:

    // Override methods

    // win1.41 006de2c0 mac inlined ChessTower::_dt(void)
    virtual ~ChessTower();
};

class PieceHorse: public Horse
{
public:

    // Override methods

    // win1.41 0041d870 mac 10120b50 PieceHorse::_dt(void)
    virtual ~PieceHorse();
    // win1.41 0041d860 mac 101311e0 PieceHorse::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041d850 mac 101311a0 PieceHorse::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class PieceLion: public Lion
{
public:

    // Override methods

    // win1.41 004200f0 mac 10175360 PieceLion::_dt(void)
    virtual ~PieceLion();
    // win1.41 004200d0 mac 101754c0 PieceLion::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 004200c0 mac 10175480 PieceLion::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 004200e0 mac 10175500 PieceLion::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
};

class PiecePig: public Pig
{
public:

    // Override methods

    // win1.41 0041dab0 mac 10120660 PiecePig::_dt(void)
    virtual ~PiecePig();
    // win1.41 0041daa0 mac 101315f0 PiecePig::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041da90 mac 101315b0 PiecePig::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041da70 mac 10131530 PiecePig::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
};

class PieceSheep: public Sheep
{
public:

    // Override methods

    // win1.41 0041d630 mac 10120ec0 PieceSheep::_dt(void)
    virtual ~PieceSheep();
    // win1.41 0041d620 mac 1012e440 PieceSheep::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041d610 mac 1012e400 PieceSheep::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class PieceTortoise: public Tortoise
{
public:

    // Override methods

    // win1.41 0041dc40 mac 10120880 PieceTortoise::_dt(void)
    virtual ~PieceTortoise();
    // win1.41 0041dc30 mac 101314b0 PieceTortoise::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041dc20 mac 10131470 PieceTortoise::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

class PieceVillager: public Animal
{
public:

    // Override methods

    // win1.41 0041bbd0 mac 10124c60 PieceVillager::_dt(void)
    virtual ~PieceVillager();
    // win1.41 0041bbb0 mac 10164d80 PieceVillager::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041bba0 mac 10164d40 PieceVillager::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041bbc0 mac 101334a0 PieceVillager::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // win1.41 0041cfd0 mac 1016d160 PieceVillager::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

class PieceWolf: public Wolf
{
public:

    // Override methods

    // win1.41 00421da0 mac 10120d10 PieceWolf::_dt(void)
    virtual ~PieceWolf();
    // win1.41 00421d80 mac 10178360 PieceWolf::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00421d70 mac 10178320 PieceWolf::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00421d90 mac 10133030 PieceWolf::CanBeFrighteningToCreature(Creature *)
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

    // win1.41 006dd6f0 mac 10132270 PuzzleCow::_dt(void)
    virtual ~PuzzleCow();
    // win1.41 006dd680 mac 10132350 PuzzleCow::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006dd670 mac 10132310 PuzzleCow::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 006dd4b0 mac inlined PuzzleCow::CanBeFrighteningToCreature(Creature *)
    virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
    // win1.41 006dd690 mac 10132390 PuzzleCow::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 0041c7e0 mac inlined PuzzleCow::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

class PuzzleGrain: public PileFood
{
public:

    // Override methods

    // win1.41 00561a70 mac 101317c0 PuzzleGrain::_dt(void)
    virtual ~PuzzleGrain();
    // win1.41 00561910 mac 10131890 PuzzleGrain::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006dbe40 mac 10123450 PuzzleGrain::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006dbeb0 mac 10123370 PuzzleGrain::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561900 mac 10131850 PuzzleGrain::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00561920 mac 101318d0 PuzzleGrain::CanBeEatenByCreature(Creature *)
    virtual uint32_t CanBeEatenByCreature(Creature* param_1);
    // win1.41 00561930 mac 10131920 PuzzleGrain::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 00561a20 mac 10131e70 PuzzleGrain::Draw(void)
    virtual void Draw();
    // win1.41 00561a30 mac 10122f40 PuzzleGrain::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00561a10 mac 10131e20 PuzzleGrain::GetFoodValue(FOOD_TYPE)
    virtual float GetFoodValue(FOOD_TYPE param_1);
    // win1.41 00561940 mac 10131970 PuzzleGrain::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // win1.41 00561950 mac 101319d0 PuzzleGrain::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // win1.41 00561960 mac 10131a30 PuzzleGrain::NetworkUnfriendlyStartLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyStartLockedSelect();
    // win1.41 00561970 mac 10131a80 PuzzleGrain::IsReadyForNetworkUnfriendlyLockedSelect(void)
    virtual uint32_t IsReadyForNetworkUnfriendlyLockedSelect();
    // win1.41 00561980 mac 10131ae0 PuzzleGrain::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // win1.41 00561990 mac 10131b40 PuzzleGrain::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t GetReadyForNetworkUnfriendlyEndLockedSelect();
    // win1.41 005619a0 mac 10131ba0 PuzzleGrain::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t IsReadyForNetworkUnfriendlyEndLockedSelect();
    // win1.41 005619b0 mac 10131c00 PuzzleGrain::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // win1.41 005619c0 mac 10131c50 PuzzleGrain::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // win1.41 005619d0 mac 10131cb0 PuzzleGrain::ValidAsInterfaceTarget(void)
    virtual uint32_t ValidAsInterfaceTarget();
    // win1.41 005619f0 mac 10131d60 PuzzleGrain::InterfaceSetInMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
    // win1.41 00561a00 mac 10131dc0 PuzzleGrain::InterfaceSetOutMagicHand(GInterfaceStatus *)
    virtual uint32_t InterfaceSetOutMagicHand(GInterfaceStatus* param_1);
    // win1.41 005619e0 mac 10131d00 PuzzleGrain::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
    virtual uint32_t ValidToApplyThisToObject(GInterfaceStatus* param_1, Object* param_2);
    // win1.41 00561a40 mac 10131ec0 PuzzleGrain::EndPhysics(PhysicsObject *, bool)
    virtual void EndPhysics(PhysicsObject* param_1, bool param_2);
    // win1.41 00561a60 mac 10131f20 PuzzleGrain::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 006dc550 mac 10122550 PuzzleGrain::GetImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
};

class PuzzleHorse: public PieceHorse
{
public:

    // Override methods

    // win1.41 006dd590 mac 101327b0 PuzzleHorse::_dt(void)
    virtual ~PuzzleHorse();
    // win1.41 006dd520 mac 10132850 PuzzleHorse::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006dd530 mac 10132890 PuzzleHorse::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 00416fd0 mac inlined PuzzleHorse::SetFoodSpeedup(bool)
    virtual void SetFoodSpeedup(bool param_1);
    // win1.41 00416fe0 mac inlined PuzzleHorse::IsFoodSpeedUp(void)
    virtual bool IsFoodSpeedUp();
    // win1.41 005f1d10 mac inlined PuzzleHorse::FleeingFromObjectReaction(void)
    virtual bool FleeingFromObjectReaction();
    // win1.41 005f23a0 mac inlined PuzzleHorse::LookingAtObjectReaction(void)
    virtual bool LookingAtObjectReaction();
    // win1.41 005f2420 mac inlined PuzzleHorse::FleeingAndLookingAtObjectReaction(void)
    virtual bool FleeingAndLookingAtObjectReaction();
    // win1.41 005f2430 mac inlined PuzzleHorse::FollowingObjectReaction(void)
    virtual bool FollowingObjectReaction();
    // win1.41 005f2540 mac inlined PuzzleHorse::InspectObjectReaction(void)
    virtual bool InspectObjectReaction();
    // win1.41 005ec3f0 mac inlined PuzzleHorse::Dying(void)
    virtual bool Dying();
    // win1.41 005ec400 mac inlined PuzzleHorse::Dead(void)
    virtual bool Dead();
    // win1.41 005ec4d0 mac inlined PuzzleHorse::BeingEaten(void)
    virtual bool BeingEaten();
    // win1.41 005f2550 mac inlined PuzzleHorse::GotoFoodReaction(void)
    virtual bool GotoFoodReaction();
    // win1.41 005f25c0 mac inlined PuzzleHorse::GotoWoodReaction(void)
    virtual bool GotoWoodReaction();
    // win1.41 0041a9f0 mac inlined PuzzleHorse::MoveInFlock(void)
    virtual bool MoveInFlock();
    // win1.41 005ef350 mac inlined PuzzleHorse::IsMovingForAnimation(void)
    virtual bool IsMovingForAnimation();
    // win1.41 0041a0a0 mac inlined PuzzleHorse::ArrivesAtFoodReaction(void)
    virtual bool ArrivesAtFoodReaction();
    // win1.41 00417030 mac inlined PuzzleHorse::ArrivesAtWoodReaction(void)
    virtual bool ArrivesAtWoodReaction();
    // win1.41 005ec620 mac inlined PuzzleHorse::InHand(void)
    virtual bool InHand();
    // win1.41 006db120 mac 10124e30 PuzzleHorse::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
    // win1.41 005ec8f0 mac inlined PuzzleHorse::Birthday(void)
    virtual void Birthday();
    // win1.41 004179c0 mac inlined PuzzleHorse::SetAge(unsigned long)
    virtual void SetAge(uint32_t param_1);
    // win1.41 00417820 mac inlined PuzzleHorse::CallIntoAnimationFunction(VILLAGER_STATES)
    virtual int CallIntoAnimationFunction(VILLAGER_STATES param_1);
    // win1.41 00417830 mac inlined PuzzleHorse::CallOutofAnimationFunction(VILLAGER_STATES)
    virtual int CallOutofAnimationFunction(VILLAGER_STATES param_1);
};

class PuzzleLion: public PieceWolf
{
public:

    // Override methods

    // win1.41 00561630 mac 10132cf0 PuzzleLion::_dt(void)
    virtual ~PuzzleLion();
    // win1.41 005615c0 mac 10132dd0 PuzzleLion::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005615b0 mac 10132d90 PuzzleLion::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005615d0 mac 10132e10 PuzzleLion::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
};

class PuzzleMobileObject: public MobileObject
{
public:

    // Override methods

    // win1.41 00561af0 mac 10131630 PuzzleMobileObject::_dt(void)
    virtual ~PuzzleMobileObject();
    // win1.41 00561ae0 mac 10131770 PuzzleMobileObject::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006dbf20 mac 10123290 PuzzleMobileObject::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006dbf80 mac 101231b0 PuzzleMobileObject::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561ad0 mac 10131730 PuzzleMobileObject::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 006dc510 mac 10122590 PuzzleMobileObject::GetImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetImmersionTexture();
    // win1.41 00561ac0 mac 101316c0 PuzzleMobileObject::GetInHandImmersionTexture(void)
    virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture();
};

class PuzzlePig: public PiecePig
{
public:

    // Override methods

    // win1.41 006dd7a0 mac 10132510 PuzzlePig::_dt(void)
    virtual ~PuzzlePig();
    // win1.41 006dd730 mac 101325f0 PuzzlePig::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006dd720 mac 101325b0 PuzzlePig::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 006dd740 mac 10132630 PuzzlePig::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 006db130 mac 10124df0 PuzzlePig::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
};

class PuzzleSheep: public PieceSheep
{
public:

    // Override methods

    // win1.41 005617c0 mac 10132a30 PuzzleSheep::_dt(void)
    virtual ~PuzzleSheep();
    // win1.41 00561750 mac 10132b10 PuzzleSheep::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00561740 mac 10132ad0 PuzzleSheep::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00561760 mac 10132b50 PuzzleSheep::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
    // win1.41 006db110 mac 10124e70 PuzzleSheep::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
};

class PuzzleTortoise: public PieceTortoise
{
public:

    // Override methods

    // win1.41 006dd640 mac 10131f70 PuzzleTortoise::_dt(void)
    virtual ~PuzzleTortoise();
    // win1.41 006dd5d0 mac 10132050 PuzzleTortoise::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006dd5c0 mac 10132010 PuzzleTortoise::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 006dd5e0 mac 10132090 PuzzleTortoise::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
};

class PuzzleTotem: public Totem
{
public:

    // Override methods

    // win1.41 005618d0 mac 10133500 PuzzleTotem::_dt(void)
    virtual ~PuzzleTotem();
    // win1.41 00561890 mac 101335e0 PuzzleTotem::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006da740 mac 10126150 PuzzleTotem::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006da7f0 mac 10126020 PuzzleTotem::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00561880 mac 101335a0 PuzzleTotem::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 006da710 mac 10126270 PuzzleTotem::SetMaxHeight(float)
    virtual void SetMaxHeight(float param_1);
    // win1.41 005618a0 mac 10133620 PuzzleTotem::GetMaxHeight(void)
    virtual float GetMaxHeight();
    // win1.41 006da5d0 mac 10126540 PuzzleTotem::ValidForLockedSelectProcess(GInterfaceStatus *)
    virtual bool32_t ValidForLockedSelectProcess(GInterfaceStatus* param_1);
    // win1.41 006da8a0 mac 10125f60 PuzzleTotem::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
    virtual bool32_t NetworkFriendlyStartLockedSelect(GInterfaceStatus* param_1);
    // win1.41 006da8e0 mac 10125eb0 PuzzleTotem::NetworkUnfriendlyStartLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyStartLockedSelect();
    // win1.41 006da970 mac 10125ba0 PuzzleTotem::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
    virtual uint32_t NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1);
    // win1.41 006da920 mac 10125e00 PuzzleTotem::NetworkUnfriendlyEndLockedSelect(void)
    virtual uint32_t NetworkUnfriendlyEndLockedSelect();
    // win1.41 006da960 mac 10125da0 PuzzleTotem::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
    virtual uint32_t NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1);
    // win1.41 006da5f0 mac 101264e0 PuzzleTotem::InterfaceValidToTap(GInterfaceStatus *)
    virtual uint32_t InterfaceValidToTap(GInterfaceStatus* param_1);
    // win1.41 006da610 mac 10126420 PuzzleTotem::InterfaceTap(GInterfaceStatus *)
    virtual uint32_t InterfaceTap(GInterfaceStatus* param_1);
    // win1.41 005618b0 mac 10133680 PuzzleTotem::ReactToPhysicsImpact(PhysicsObject *, bool)
    virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
    // win1.41 00737450 mac inlined PuzzleTotem::DeleteDependancys(void)
    virtual void DeleteDependancys();
    // win1.41 007377d0 mac inlined PuzzleTotem::MakeFunctional(void)
    virtual void MakeFunctional();
};

class PuzzleVillager: public PieceVillager
{
public:

    // Override methods

    // win1.41 00561710 mac 101330c0 PuzzleVillager::_dt(void)
    virtual ~PuzzleVillager();
    // win1.41 00561670 mac 101331a0 PuzzleVillager::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00561660 mac 10133160 PuzzleVillager::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00561680 mac 101331e0 PuzzleVillager::CanBecomeAPhysicsObject(void)
    virtual bool CanBecomeAPhysicsObject();
};

#endif /* BW1_DECOMP_PUZZLE_GAME_INCLUDED_H */
