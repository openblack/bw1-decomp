#ifndef BW1_DECOMP_PUZZLE_GAME_INCLUDED_H
#define BW1_DECOMP_PUZZLE_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */
#include <chlasm/GStates.h> /* For enum VILLAGER_STATES */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

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

struct Abode;
struct Base;
struct ControlHandUpdateInfo;
struct Creature;
struct GInterfaceStatus;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct LHOSFile;
struct Living;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct PhysOb;
struct PhysicsObject;
struct PlannedMultiMapFixed;
struct RPHolder;

struct PuzzleGame
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x0x28[0x560];
};
static_assert(sizeof(struct PuzzleGame) == 0x588, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becad8 mac inlined PuzzleGame::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10PuzzleGame asm("??_R0?AVPuzzleGame@@@8");
// win1.41 009ad980 mac inlined PuzzleGame::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10PuzzleGame asm("??_R1A@?0A@A@PuzzleGame@@8");
// win1.41 009ad998 mac inlined PuzzleGame::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10PuzzleGame asm("??_R2PuzzleGame@@8");
// win1.41 009ad9b0 mac inlined PuzzleGame::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10PuzzleGame asm("??_R3PuzzleGame@@8");
// win1.41 008f2334 mac 10756934 PuzzleGame::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10PuzzleGame asm("??_R4PuzzleGame@@6B@");
// win1.41 008f2338 mac 1075693c PuzzleGame::`vftable'
extern const struct GameThingWithPosVftable __vt__10PuzzleGame asm("??_7PuzzleGame@@6B@");

// Override methods

// win1.41 00561b70 mac 10133820 PuzzleGame::_dt(void)
void __fastcall __dt__10PuzzleGameFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleGame@@UAEPAXI@Z");
// win1.41 006d6ff0 mac 1012bfa0 PuzzleGame::ToBeDeleted(int)
void __fastcall ToBeDeleted__10PuzzleGameFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@PuzzleGame@@UAEXH@Z");
// win1.41 00561b60 mac 10133a40 PuzzleGame::GetDebugText(void)
char* __fastcall GetDebugText__10PuzzleGameFv(struct GameThing* this) asm("?GetDebugText@PuzzleGame@@UAEPADXZ");
// win1.41 006d9d40 mac 10126ae0 PuzzleGame::Load(GameOSFile &)
uint32_t __fastcall Load__10PuzzleGameFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PuzzleGame@@UAEIAAVGameOSFile@@@Z");
// win1.41 006d96c0 mac 10127440 PuzzleGame::Save(GameOSFile &)
uint32_t __fastcall Save__10PuzzleGameFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PuzzleGame@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561b50 mac 10133a00 PuzzleGame::GetSaveType(void)
uint32_t __fastcall GetSaveType__10PuzzleGameFv(struct GameThing* this) asm("?GetSaveType@PuzzleGame@@UAEIXZ");
// win1.41 00561b10 mac inlined PuzzleGame::GetPos( const(MapCoords *))
struct MapCoords* __fastcall GetPos__10PuzzleGameCFP9MapCoords(const struct GameThingWithPos* this, const void* edx, struct MapCoords* param_1) asm("?GetPos@PuzzleGame@@UBEPAUMapCoords@@PAU2@@Z");
// win1.41 00561b30 mac 10133980 PuzzleGame::GetText(void)
const char* __fastcall GetText__10PuzzleGameFv(struct GameThingWithPos* this) asm("?GetText@PuzzleGame@@UAEPBDXZ");
// win1.41 00561b40 mac 101339c0 PuzzleGame::IsPuzzleGame(void)
uint32_t __fastcall IsPuzzleGame__10PuzzleGameFv(struct GameThingWithPos* this) asm("?IsPuzzleGame@PuzzleGame@@UAEIXZ");

DECLARE_LH_LIST_HEAD(PuzzleGame);

struct ChessGamePuzzle
{
  struct GameThingWithPos super;  /* 0x0 */
};
static_assert(sizeof(struct ChessGamePuzzle) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c099b0 mac inlined ChessGamePuzzle::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15ChessGamePuzzle asm("??_R0?AVChessGamePuzzle@@@8");
// win1.41 009b8848 mac inlined ChessGamePuzzle::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15ChessGamePuzzle asm("??_R1A@?0A@A@ChessGamePuzzle@@8");
// win1.41 009b8860 mac inlined ChessGamePuzzle::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15ChessGamePuzzle asm("??_R2ChessGamePuzzle@@8");
// win1.41 009b8878 mac inlined ChessGamePuzzle::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15ChessGamePuzzle asm("??_R3ChessGamePuzzle@@8");

// Override methods

// win1.41 006dddb0 mac inlined ChessGamePuzzle::_dt(void)
void __fastcall __dt__15ChessGamePuzzleFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GChessGamePuzzle@@UAEPAXI@Z");
// win1.41 006dde30 mac inlined ChessGamePuzzle::ToBeDeleted(int)
void __fastcall ToBeDeleted__15ChessGamePuzzleFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@ChessGamePuzzle@@UAEXH@Z");
// win1.41 006ddda0 mac inlined ChessGamePuzzle::GetText(void)
const char* __fastcall GetText__15ChessGamePuzzleFv(struct GameThingWithPos* this) asm("?GetText@ChessGamePuzzle@@UAEPBDXZ");

struct ChessPiece
{
  struct AnimatedStatic super;  /* 0x0 */
};
static_assert(sizeof(struct ChessPiece) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09a70 mac inlined ChessPiece::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10ChessPiece asm("??_R0?AVChessPiece@@@8");
// win1.41 009b8ad0 mac inlined ChessPiece::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10ChessPiece asm("??_R1A@?0A@A@ChessPiece@@8");

struct ChessKing
{
  struct ChessPiece super;  /* 0x0 */
};
static_assert(sizeof(struct ChessKing) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09a90 mac inlined ChessKing::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9ChessKing asm("??_R0?AVChessKing@@@8");
// win1.41 009b8ae8 mac inlined ChessKing::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9ChessKing asm("??_R1A@?0A@A@ChessKing@@8");
// win1.41 009b8b00 mac inlined ChessKing::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9ChessKing asm("??_R2ChessKing@@8");
// win1.41 009b8b30 mac inlined ChessKing::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9ChessKing asm("??_R3ChessKing@@8");

// Override methods

// win1.41 006de3c0 mac inlined ChessKing::_dt(void)
void __fastcall __dt__9ChessKingFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GChessKing@@UAEPAXI@Z");

struct ChessKnight
{
  struct ChessPiece super;  /* 0x0 */
};
static_assert(sizeof(struct ChessKnight) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09a50 mac inlined ChessKnight::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11ChessKnight asm("??_R0?AVChessKnight@@@8");
// win1.41 009b8a60 mac inlined ChessKnight::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11ChessKnight asm("??_R1A@?0A@A@ChessKnight@@8");
// win1.41 009b8a78 mac inlined ChessKnight::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11ChessKnight asm("??_R2ChessKnight@@8");
// win1.41 009b8aa8 mac inlined ChessKnight::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11ChessKnight asm("??_R3ChessKnight@@8");

// Override methods

// win1.41 006de300 mac inlined ChessKnight::_dt(void)
void __fastcall __dt__11ChessKnightFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GChessKnight@@UAEPAXI@Z");

struct ChessMad
{
  struct ChessPiece super;  /* 0x0 */
};
static_assert(sizeof(struct ChessMad) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c099f8 mac inlined ChessMad::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8ChessMad asm("??_R0?AVChessMad@@@8");
// win1.41 009b8910 mac inlined ChessMad::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8ChessMad asm("??_R1A@?0A@A@ChessMad@@8");
// win1.41 009b8928 mac inlined ChessMad::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8ChessMad asm("??_R2ChessMad@@8");
// win1.41 009b8958 mac inlined ChessMad::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8ChessMad asm("??_R3ChessMad@@8");

// Override methods

// win1.41 006de340 mac inlined ChessMad::_dt(void)
void __fastcall __dt__8ChessMadFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GChessMad@@UAEPAXI@Z");
// win1.41 005273d0 mac inlined ChessMad::ConvertToPlanned(void)
struct PlannedMultiMapFixed* __fastcall ConvertToPlanned__8ChessMadFv(struct MultiMapFixed* this) asm("?ConvertToPlanned@ChessMad@@UAEPAVPlannedMultiMapFixed@@XZ");

struct ChessPion
{
  struct ChessPiece super;  /* 0x0 */
};
static_assert(sizeof(struct ChessPion) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c099e0 mac inlined ChessPion::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9ChessPion asm("??_R0?AVChessPion@@@8");
// win1.41 009b88a0 mac inlined ChessPion::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9ChessPion asm("??_R1A@?0A@A@ChessPion@@8");
// win1.41 009b88b8 mac inlined ChessPion::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9ChessPion asm("??_R2ChessPion@@8");
// win1.41 009b88e8 mac inlined ChessPion::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9ChessPion asm("??_R3ChessPion@@8");

// Override methods

// win1.41 006de280 mac inlined ChessPion::_dt(void)
void __fastcall __dt__9ChessPionFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GChessPion@@UAEPAXI@Z");
// win1.41 006dde40 mac inlined ChessPion::ToBeDeleted(int)
void __fastcall ToBeDeleted__9ChessPionFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@ChessPion@@UAEXH@Z");
// win1.41 005273b0 mac inlined ChessPion::GetPlayer(void)
struct GPlayer* __fastcall GetPlayer__9ChessPionFv(struct GameThing* this) asm("?GetPlayer@ChessPion@@UAEPAVGPlayer@@XZ");
// win1.41 00422190 mac inlined ChessPion::GetDebugText(void)
char* __fastcall GetDebugText__9ChessPionFv(struct GameThing* this) asm("?GetDebugText@ChessPion@@UAEPADXZ");
// win1.41 00422bc0 mac inlined ChessPion::Load(GameOSFile &)
uint32_t __fastcall Load__9ChessPionFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@ChessPion@@UAEIAAVGameOSFile@@@Z");
// win1.41 00422aa0 mac inlined ChessPion::Save(GameOSFile &)
uint32_t __fastcall Save__9ChessPionFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@ChessPion@@UAEIAAVGameOSFile@@@Z");
// win1.41 00422180 mac inlined ChessPion::GetSaveType(void)
uint32_t __fastcall GetSaveType__9ChessPionFv(struct GameThing* this) asm("?GetSaveType@ChessPion@@UAEIXZ");
// win1.41 00422770 mac inlined ChessPion::Draw(void)
void __fastcall Draw__9ChessPionFv(struct Object* this) asm("?Draw@ChessPion@@UAEXXZ");
// win1.41 006dde50 mac inlined ChessPion::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__9ChessPionFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@ChessPion@@UAEXABUMapCoords@@@Z");
// win1.41 00422210 mac inlined ChessPion::SetUpPhysOb(PhysOb *)
void __fastcall SetUpPhysOb__9ChessPionFP6PhysOb(struct Object* this, const void* edx, struct PhysOb* param_1) asm("?SetUpPhysOb@ChessPion@@UAEXPAUPhysOb@@@Z");
// win1.41 004221e0 mac inlined ChessPion::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__9ChessPionFv(struct Object* this) asm("?InteractsWithPhysicsObjects@ChessPion@@UAE_NXZ");
// win1.41 004221d0 mac inlined ChessPion::ChecksVerticesVObjects(void)
uint32_t __fastcall ChecksVerticesVObjects__9ChessPionFv(struct Object* this) asm("?ChecksVerticesVObjects@ChessPion@@UAEIXZ");
// win1.41 00422ec0 mac inlined ChessPion::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__9ChessPionFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@ChessPion@@UAE_NPAVCreature@@@Z");
// win1.41 00422ed0 mac inlined ChessPion::AddToRoutePlan(RPHolder *, Creature *, int, void (*)(int, Point2D, float, int))
void __fastcall AddToRoutePlan__9ChessPionFP8RPHolderP8CreatureiPFi7Point2Dfi_v(struct Object* this, const void* edx, struct RPHolder* param_1, struct Creature* param_2, int param_3, void (__cdecl* param_4)(int param_1, struct Point2D param_2, float param_3, int param_4)) asm("?AddToRoutePlan@ChessPion@@UAEXPAURPHolder@@PAVCreature@@HP6AXHUPoint2D@@MH@Z@Z");
// win1.41 006de260 mac inlined ChessPion::SaveObject(LHOSFile &, MapCoords const &)
uint32_t __fastcall SaveObject__9ChessPionFR8LHOSFileRC9MapCoords(struct Object* this, const void* edx, struct LHOSFile* param_1, const struct MapCoords* param_2) asm("?SaveObject@ChessPion@@UAEIAAULHOSFile@@ABUMapCoords@@@Z");

struct ChessQueen
{
  struct ChessPiece super;  /* 0x0 */
};
static_assert(sizeof(struct ChessQueen) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09a30 mac inlined ChessQueen::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10ChessQueen asm("??_R0?AVChessQueen@@@8");
// win1.41 009b89f0 mac inlined ChessQueen::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10ChessQueen asm("??_R1A@?0A@A@ChessQueen@@8");
// win1.41 009b8a08 mac inlined ChessQueen::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10ChessQueen asm("??_R2ChessQueen@@8");
// win1.41 009b8a38 mac inlined ChessQueen::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10ChessQueen asm("??_R3ChessQueen@@8");

// Override methods

// win1.41 006de380 mac inlined ChessQueen::_dt(void)
void __fastcall __dt__10ChessQueenFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GChessQueen@@UAEPAXI@Z");

struct ChessTower
{
  struct ChessPiece super;  /* 0x0 */
};
static_assert(sizeof(struct ChessTower) == 0x98, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09a10 mac inlined ChessTower::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10ChessTower asm("??_R0?AVChessTower@@@8");
// win1.41 009b8980 mac inlined ChessTower::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10ChessTower asm("??_R1A@?0A@A@ChessTower@@8");
// win1.41 009b8998 mac inlined ChessTower::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10ChessTower asm("??_R2ChessTower@@8");
// win1.41 009b89c8 mac inlined ChessTower::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10ChessTower asm("??_R3ChessTower@@8");

// Override methods

// win1.41 006de2c0 mac inlined ChessTower::_dt(void)
void __fastcall __dt__10ChessTowerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GChessTower@@UAEPAXI@Z");

struct PieceHorse
{
  struct Horse super;  /* 0x0 */
};
static_assert(sizeof(struct PieceHorse) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9058 mac inlined PieceHorse::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10PieceHorse asm("??_R0?AVPieceHorse@@@8");
// win1.41 009a6f28 mac inlined PieceHorse::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10PieceHorse asm("??_R1A@?0A@A@PieceHorse@@8");
// win1.41 009a6f40 mac inlined PieceHorse::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10PieceHorse asm("??_R2PieceHorse@@8");
// win1.41 009a6f70 mac inlined PieceHorse::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10PieceHorse asm("??_R3PieceHorse@@8");

// Override methods

// win1.41 0041d870 mac 10120b50 PieceHorse::_dt(void)
void __fastcall __dt__10PieceHorseFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPieceHorse@@UAEPAXI@Z");
// win1.41 0041d860 mac 101311e0 PieceHorse::GetDebugText(void)
char* __fastcall GetDebugText__10PieceHorseFv(struct GameThing* this) asm("?GetDebugText@PieceHorse@@UAEPADXZ");
// win1.41 0041d850 mac 101311a0 PieceHorse::GetSaveType(void)
uint32_t __fastcall GetSaveType__10PieceHorseFv(struct GameThing* this) asm("?GetSaveType@PieceHorse@@UAEIXZ");

struct PieceLion
{
  struct Lion super;  /* 0x0 */
};
static_assert(sizeof(struct PieceLion) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9398 mac inlined PieceLion::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9PieceLion asm("??_R0?AVPieceLion@@@8");
// win1.41 009a7688 mac inlined PieceLion::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9PieceLion asm("??_R1A@?0A@A@PieceLion@@8");
// win1.41 009a76a0 mac inlined PieceLion::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9PieceLion asm("??_R2PieceLion@@8");
// win1.41 009a76d0 mac inlined PieceLion::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9PieceLion asm("??_R3PieceLion@@8");

// Override methods

// win1.41 004200f0 mac 10175360 PieceLion::_dt(void)
void __fastcall __dt__9PieceLionFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPieceLion@@UAEPAXI@Z");
// win1.41 004200d0 mac 101754c0 PieceLion::GetDebugText(void)
char* __fastcall GetDebugText__9PieceLionFv(struct GameThing* this) asm("?GetDebugText@PieceLion@@UAEPADXZ");
// win1.41 004200c0 mac 10175480 PieceLion::GetSaveType(void)
uint32_t __fastcall GetSaveType__9PieceLionFv(struct GameThing* this) asm("?GetSaveType@PieceLion@@UAEIXZ");
// win1.41 004200e0 mac 10175500 PieceLion::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__9PieceLionFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@PieceLion@@UAEIPAVCreature@@@Z");

struct PiecePig
{
  struct Pig super;  /* 0x0 */
};
static_assert(sizeof(struct PiecePig) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c90d8 mac inlined PiecePig::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8PiecePig asm("??_R0?AVPiecePig@@@8");
// win1.41 009a7078 mac inlined PiecePig::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8PiecePig asm("??_R1A@?0A@A@PiecePig@@8");
// win1.41 009a7090 mac inlined PiecePig::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8PiecePig asm("??_R2PiecePig@@8");
// win1.41 009a70c0 mac inlined PiecePig::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8PiecePig asm("??_R3PiecePig@@8");

// Override methods

// win1.41 0041dab0 mac 10120660 PiecePig::_dt(void)
void __fastcall __dt__8PiecePigFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPiecePig@@UAEPAXI@Z");
// win1.41 0041daa0 mac 101315f0 PiecePig::GetDebugText(void)
char* __fastcall GetDebugText__8PiecePigFv(struct GameThing* this) asm("?GetDebugText@PiecePig@@UAEPADXZ");
// win1.41 0041da90 mac 101315b0 PiecePig::GetSaveType(void)
uint32_t __fastcall GetSaveType__8PiecePigFv(struct GameThing* this) asm("?GetSaveType@PiecePig@@UAEIXZ");
// win1.41 0041da70 mac 10131530 PiecePig::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__8PiecePigFv(struct Living* this) asm("?DecideWhatToDo@PiecePig@@UAE_NXZ");

struct PieceSheep
{
  struct Sheep super;  /* 0x0 */
};
static_assert(sizeof(struct PieceSheep) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8fd0 mac inlined PieceSheep::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10PieceSheep asm("??_R0?AVPieceSheep@@@8");
// win1.41 009a6dd8 mac inlined PieceSheep::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10PieceSheep asm("??_R1A@?0A@A@PieceSheep@@8");
// win1.41 009a6df0 mac inlined PieceSheep::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10PieceSheep asm("??_R2PieceSheep@@8");
// win1.41 009a6e20 mac inlined PieceSheep::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10PieceSheep asm("??_R3PieceSheep@@8");

// Override methods

// win1.41 0041d630 mac 10120ec0 PieceSheep::_dt(void)
void __fastcall __dt__10PieceSheepFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPieceSheep@@UAEPAXI@Z");
// win1.41 0041d620 mac 1012e440 PieceSheep::GetDebugText(void)
char* __fastcall GetDebugText__10PieceSheepFv(struct GameThing* this) asm("?GetDebugText@PieceSheep@@UAEPADXZ");
// win1.41 0041d610 mac 1012e400 PieceSheep::GetSaveType(void)
uint32_t __fastcall GetSaveType__10PieceSheepFv(struct GameThing* this) asm("?GetSaveType@PieceSheep@@UAEIXZ");

struct PieceTortoise
{
  struct Tortoise super;  /* 0x0 */
};
static_assert(sizeof(struct PieceTortoise) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9138 mac inlined PieceTortoise::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13PieceTortoise asm("??_R0?AVPieceTortoise@@@8");
// win1.41 009a7158 mac inlined PieceTortoise::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13PieceTortoise asm("??_R1A@?0A@A@PieceTortoise@@8");
// win1.41 009a7170 mac inlined PieceTortoise::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13PieceTortoise asm("??_R2PieceTortoise@@8");
// win1.41 009a71a0 mac inlined PieceTortoise::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13PieceTortoise asm("??_R3PieceTortoise@@8");

// Override methods

// win1.41 0041dc40 mac 10120880 PieceTortoise::_dt(void)
void __fastcall __dt__13PieceTortoiseFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPieceTortoise@@UAEPAXI@Z");
// win1.41 0041dc30 mac 101314b0 PieceTortoise::GetDebugText(void)
char* __fastcall GetDebugText__13PieceTortoiseFv(struct GameThing* this) asm("?GetDebugText@PieceTortoise@@UAEPADXZ");
// win1.41 0041dc20 mac 10131470 PieceTortoise::GetSaveType(void)
uint32_t __fastcall GetSaveType__13PieceTortoiseFv(struct GameThing* this) asm("?GetSaveType@PieceTortoise@@UAEIXZ");

struct PieceVillager
{
  struct Animal super;  /* 0x0 */
};
static_assert(sizeof(struct PieceVillager) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8f08 mac inlined PieceVillager::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13PieceVillager asm("??_R0?AVPieceVillager@@@8");
// win1.41 009a6c98 mac inlined PieceVillager::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13PieceVillager asm("??_R1A@?0A@A@PieceVillager@@8");
// win1.41 009a6cb0 mac inlined PieceVillager::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13PieceVillager asm("??_R2PieceVillager@@8");
// win1.41 009a6cd8 mac inlined PieceVillager::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13PieceVillager asm("??_R3PieceVillager@@8");

// Override methods

// win1.41 0041bbd0 mac 10124c60 PieceVillager::_dt(void)
void __fastcall __dt__13PieceVillagerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPieceVillager@@UAEPAXI@Z");
// win1.41 0041bbb0 mac 10164d80 PieceVillager::GetDebugText(void)
char* __fastcall GetDebugText__13PieceVillagerFv(struct GameThing* this) asm("?GetDebugText@PieceVillager@@UAEPADXZ");
// win1.41 0041bba0 mac 10164d40 PieceVillager::GetSaveType(void)
uint32_t __fastcall GetSaveType__13PieceVillagerFv(struct GameThing* this) asm("?GetSaveType@PieceVillager@@UAEIXZ");
// win1.41 0041bbc0 mac 101334a0 PieceVillager::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__13PieceVillagerFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@PieceVillager@@UAEIPAVCreature@@@Z");
// win1.41 0041cfd0 mac 1016d160 PieceVillager::StandAnimation(void)
uint32_t __fastcall StandAnimation__13PieceVillagerFv(struct Object* this) asm("?StandAnimation@PieceVillager@@UAEIXZ");

struct PieceWolf
{
  struct Wolf super;  /* 0x0 */
};
static_assert(sizeof(struct PieceWolf) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c94d0 mac inlined PieceWolf::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9PieceWolf asm("??_R0?AVPieceWolf@@@8");
// win1.41 009a7848 mac inlined PieceWolf::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9PieceWolf asm("??_R1A@?0A@A@PieceWolf@@8");
// win1.41 009a7860 mac inlined PieceWolf::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9PieceWolf asm("??_R2PieceWolf@@8");
// win1.41 009a7890 mac inlined PieceWolf::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9PieceWolf asm("??_R3PieceWolf@@8");

// Override methods

// win1.41 00421da0 mac 10120d10 PieceWolf::_dt(void)
void __fastcall __dt__9PieceWolfFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPieceWolf@@UAEPAXI@Z");
// win1.41 00421d80 mac 10178360 PieceWolf::GetDebugText(void)
char* __fastcall GetDebugText__9PieceWolfFv(struct GameThing* this) asm("?GetDebugText@PieceWolf@@UAEPADXZ");
// win1.41 00421d70 mac 10178320 PieceWolf::GetSaveType(void)
uint32_t __fastcall GetSaveType__9PieceWolfFv(struct GameThing* this) asm("?GetSaveType@PieceWolf@@UAEIXZ");
// win1.41 00421d90 mac 10133030 PieceWolf::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__9PieceWolfFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@PieceWolf@@UAEIPAVCreature@@@Z");

struct PieceCow
{
  struct Cow super;  /* 0x0 */
};
static_assert(sizeof(struct PieceCow) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09960 mac inlined PieceCow::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8PieceCow asm("??_R0?AVPieceCow@@@8");
// win1.41 009b8748 mac inlined PieceCow::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8PieceCow asm("??_R1A@?0A@A@PieceCow@@8");

struct PuzzleCow
{
  struct PieceCow super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzleCow) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09978 mac inlined PuzzleCow::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9PuzzleCow asm("??_R0?AVPuzzleCow@@@8");
// win1.41 009b8760 mac inlined PuzzleCow::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9PuzzleCow asm("??_R1A@?0A@A@PuzzleCow@@8");
// win1.41 009b8778 mac inlined PuzzleCow::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9PuzzleCow asm("??_R2PuzzleCow@@8");
// win1.41 009b87a8 mac inlined PuzzleCow::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9PuzzleCow asm("??_R3PuzzleCow@@8");

// Override methods

// win1.41 006dd6f0 mac 10132270 PuzzleCow::_dt(void)
void __fastcall __dt__9PuzzleCowFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleCow@@UAEPAXI@Z");
// win1.41 006dd680 mac 10132350 PuzzleCow::GetDebugText(void)
char* __fastcall GetDebugText__9PuzzleCowFv(struct GameThing* this) asm("?GetDebugText@PuzzleCow@@UAEPADXZ");
// win1.41 006dd670 mac 10132310 PuzzleCow::GetSaveType(void)
uint32_t __fastcall GetSaveType__9PuzzleCowFv(struct GameThing* this) asm("?GetSaveType@PuzzleCow@@UAEIXZ");
// win1.41 006dd4b0 mac inlined PuzzleCow::CanBeFrighteningToCreature(Creature *)
uint32_t __fastcall CanBeFrighteningToCreature__9PuzzleCowFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeFrighteningToCreature@PuzzleCow@@UAEIPAVCreature@@@Z");
// win1.41 006dd690 mac 10132390 PuzzleCow::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__9PuzzleCowFv(struct Object* this) asm("?CanBecomeAPhysicsObject@PuzzleCow@@UAE_NXZ");
// win1.41 0041c7e0 mac inlined PuzzleCow::StandAnimation(void)
uint32_t __fastcall StandAnimation__9PuzzleCowFv(struct Object* this) asm("?StandAnimation@PuzzleCow@@UAEIXZ");

struct PuzzleGrain
{
  struct PileFood super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzleGrain) == 0xbc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00beca58 mac inlined PuzzleGrain::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11PuzzleGrain asm("??_R0?AVPuzzleGrain@@@8");
// win1.41 009ad5f8 mac inlined PuzzleGrain::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11PuzzleGrain asm("??_R1A@?0A@A@PuzzleGrain@@8");
// win1.41 009ad610 mac inlined PuzzleGrain::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11PuzzleGrain asm("??_R2PuzzleGrain@@8");
// win1.41 009ad640 mac inlined PuzzleGrain::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11PuzzleGrain asm("??_R3PuzzleGrain@@8");

// Override methods

// win1.41 00561a70 mac 101317c0 PuzzleGrain::_dt(void)
void __fastcall __dt__11PuzzleGrainFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleGrain@@UAEPAXI@Z");
// win1.41 00561910 mac 10131890 PuzzleGrain::GetDebugText(void)
char* __fastcall GetDebugText__11PuzzleGrainFv(struct GameThing* this) asm("?GetDebugText@PuzzleGrain@@UAEPADXZ");
// win1.41 006dbe40 mac 10123450 PuzzleGrain::Load(GameOSFile &)
uint32_t __fastcall Load__11PuzzleGrainFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PuzzleGrain@@UAEIAAVGameOSFile@@@Z");
// win1.41 006dbeb0 mac 10123370 PuzzleGrain::Save(GameOSFile &)
uint32_t __fastcall Save__11PuzzleGrainFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PuzzleGrain@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561900 mac 10131850 PuzzleGrain::GetSaveType(void)
uint32_t __fastcall GetSaveType__11PuzzleGrainFv(struct GameThing* this) asm("?GetSaveType@PuzzleGrain@@UAEIXZ");
// win1.41 00561920 mac 101318d0 PuzzleGrain::CanBeEatenByCreature(Creature *)
uint32_t __fastcall CanBeEatenByCreature__11PuzzleGrainFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBeEatenByCreature@PuzzleGrain@@UAEIPAVCreature@@@Z");
// win1.41 00561930 mac 10131920 PuzzleGrain::CanBePickedUpByCreature(Creature *)
uint32_t __fastcall CanBePickedUpByCreature__11PuzzleGrainFP8Creature(struct GameThingWithPos* this, const void* edx, struct Creature* param_1) asm("?CanBePickedUpByCreature@PuzzleGrain@@UAEIPAVCreature@@@Z");
// win1.41 00561a20 mac 10131e70 PuzzleGrain::Draw(void)
void __fastcall Draw__11PuzzleGrainFv(struct Object* this) asm("?Draw@PuzzleGrain@@UAEXXZ");
// win1.41 00561a30 mac 10122f40 PuzzleGrain::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__11PuzzleGrainFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@PuzzleGrain@@UAEXABUMapCoords@@@Z");
// win1.41 00561a10 mac 10131e20 PuzzleGrain::GetFoodValue(FOOD_TYPE)
float __fastcall GetFoodValue__11PuzzleGrainF9FOOD_TYPE(struct Object* this, const void* edx, enum FOOD_TYPE param_1) asm("?GetFoodValue@PuzzleGrain@@UAEMW4FOOD_TYPE@@@Z");
// win1.41 00561940 mac 10131970 PuzzleGrain::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t __fastcall ValidForLockedSelectProcess__11PuzzleGrainFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForLockedSelectProcess@PuzzleGrain@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00561950 mac 101319d0 PuzzleGrain::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyStartLockedSelect__11PuzzleGrainFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyStartLockedSelect@PuzzleGrain@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 00561960 mac 10131a30 PuzzleGrain::NetworkUnfriendlyStartLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyStartLockedSelect__11PuzzleGrainFv(struct Object* this) asm("?NetworkUnfriendlyStartLockedSelect@PuzzleGrain@@UAEIXZ");
// win1.41 00561970 mac 10131a80 PuzzleGrain::IsReadyForNetworkUnfriendlyLockedSelect(void)
uint32_t __fastcall IsReadyForNetworkUnfriendlyLockedSelect__11PuzzleGrainFv(struct Object* this) asm("?IsReadyForNetworkUnfriendlyLockedSelect@PuzzleGrain@@UAEIXZ");
// win1.41 00561980 mac 10131ae0 PuzzleGrain::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
uint32_t __fastcall NetworkUnfriendlyLockedSelect__11PuzzleGrainFP21ControlHandUpdateInfo(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1) asm("?NetworkUnfriendlyLockedSelect@PuzzleGrain@@UAEIPAUControlHandUpdateInfo@@@Z");
// win1.41 00561990 mac 10131b40 PuzzleGrain::GetReadyForNetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall GetReadyForNetworkUnfriendlyEndLockedSelect__11PuzzleGrainFv(struct Object* this) asm("?GetReadyForNetworkUnfriendlyEndLockedSelect@PuzzleGrain@@UAEIXZ");
// win1.41 005619a0 mac 10131ba0 PuzzleGrain::IsReadyForNetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall IsReadyForNetworkUnfriendlyEndLockedSelect__11PuzzleGrainFv(struct Object* this) asm("?IsReadyForNetworkUnfriendlyEndLockedSelect@PuzzleGrain@@UAEIXZ");
// win1.41 005619b0 mac 10131c00 PuzzleGrain::NetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyEndLockedSelect__11PuzzleGrainFv(struct Object* this) asm("?NetworkUnfriendlyEndLockedSelect@PuzzleGrain@@UAEIXZ");
// win1.41 005619c0 mac 10131c50 PuzzleGrain::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
uint32_t __fastcall NetworkFriendlyEndLockedSelect__11PuzzleGrainFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyEndLockedSelect@PuzzleGrain@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 005619d0 mac 10131cb0 PuzzleGrain::ValidAsInterfaceTarget(void)
uint32_t __fastcall ValidAsInterfaceTarget__11PuzzleGrainFv(struct Object* this) asm("?ValidAsInterfaceTarget@PuzzleGrain@@UAEIXZ");
// win1.41 005619f0 mac 10131d60 PuzzleGrain::InterfaceSetInMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetInMagicHand__11PuzzleGrainFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetInMagicHand@PuzzleGrain@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 00561a00 mac 10131dc0 PuzzleGrain::InterfaceSetOutMagicHand(GInterfaceStatus *)
uint32_t __fastcall InterfaceSetOutMagicHand__11PuzzleGrainFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceSetOutMagicHand@PuzzleGrain@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 005619e0 mac 10131d00 PuzzleGrain::ValidToApplyThisToObject(GInterfaceStatus *, Object *)
uint32_t __fastcall ValidToApplyThisToObject__11PuzzleGrainFP16GInterfaceStatusP6Object(struct Object* this, const void* edx, struct GInterfaceStatus* param_1, struct Object* param_2) asm("?ValidToApplyThisToObject@PuzzleGrain@@UAEIPAVGInterfaceStatus@@PAVObject@@@Z");
// win1.41 00561a40 mac 10131ec0 PuzzleGrain::EndPhysics(PhysicsObject *, bool)
void __fastcall EndPhysics__11PuzzleGrainFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?EndPhysics@PuzzleGrain@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00561a60 mac 10131f20 PuzzleGrain::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__11PuzzleGrainFv(struct Object* this) asm("?CanBecomeAPhysicsObject@PuzzleGrain@@UAE_NXZ");
// win1.41 006dc550 mac 10122550 PuzzleGrain::GetImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetImmersionTexture__11PuzzleGrainFv(struct Object* this) asm("?GetImmersionTexture@PuzzleGrain@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");

struct PuzzleHorse
{
  struct PieceHorse super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzleHorse) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09990 mac inlined PuzzleHorse::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11PuzzleHorse asm("??_R0?AVPuzzleHorse@@@8");
// win1.41 009b87d0 mac inlined PuzzleHorse::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11PuzzleHorse asm("??_R1A@?0A@A@PuzzleHorse@@8");
// win1.41 009b87e8 mac inlined PuzzleHorse::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11PuzzleHorse asm("??_R2PuzzleHorse@@8");
// win1.41 009b8820 mac inlined PuzzleHorse::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11PuzzleHorse asm("??_R3PuzzleHorse@@8");

// Override methods

// win1.41 006dd590 mac 101327b0 PuzzleHorse::_dt(void)
void __fastcall __dt__11PuzzleHorseFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleHorse@@UAEPAXI@Z");
// win1.41 006dd520 mac 10132850 PuzzleHorse::GetDebugText(void)
char* __fastcall GetDebugText__11PuzzleHorseFv(struct GameThing* this) asm("?GetDebugText@PuzzleHorse@@UAEPADXZ");
// win1.41 006dd530 mac 10132890 PuzzleHorse::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__11PuzzleHorseFv(struct Object* this) asm("?CanBecomeAPhysicsObject@PuzzleHorse@@UAE_NXZ");
// win1.41 00416fd0 mac inlined PuzzleHorse::SetFoodSpeedup(bool)
void __fastcall SetFoodSpeedup__11PuzzleHorseFb(struct Living* this, const void* edx, bool param_1) asm("?SetFoodSpeedup@PuzzleHorse@@UAEX_N@Z");
// win1.41 00416fe0 mac inlined PuzzleHorse::IsFoodSpeedUp(void)
bool __fastcall IsFoodSpeedUp__11PuzzleHorseFv(struct Living* this) asm("?IsFoodSpeedUp@PuzzleHorse@@UAE_NXZ");
// win1.41 005f1d10 mac inlined PuzzleHorse::FleeingFromObjectReaction(void)
bool __fastcall FleeingFromObjectReaction__11PuzzleHorseFv(struct Living* this) asm("?FleeingFromObjectReaction@PuzzleHorse@@UAE_NXZ");
// win1.41 005f23a0 mac inlined PuzzleHorse::LookingAtObjectReaction(void)
bool __fastcall LookingAtObjectReaction__11PuzzleHorseFv(struct Living* this) asm("?LookingAtObjectReaction@PuzzleHorse@@UAE_NXZ");
// win1.41 005f2420 mac inlined PuzzleHorse::FleeingAndLookingAtObjectReaction(void)
bool __fastcall FleeingAndLookingAtObjectReaction__11PuzzleHorseFv(struct Living* this) asm("?FleeingAndLookingAtObjectReaction@PuzzleHorse@@UAE_NXZ");
// win1.41 005f2430 mac inlined PuzzleHorse::FollowingObjectReaction(void)
bool __fastcall FollowingObjectReaction__11PuzzleHorseFv(struct Living* this) asm("?FollowingObjectReaction@PuzzleHorse@@UAE_NXZ");
// win1.41 005f2540 mac inlined PuzzleHorse::InspectObjectReaction(void)
bool __fastcall InspectObjectReaction__11PuzzleHorseFv(struct Living* this) asm("?InspectObjectReaction@PuzzleHorse@@UAE_NXZ");
// win1.41 005ec3f0 mac inlined PuzzleHorse::Dying(void)
bool __fastcall Dying__11PuzzleHorseFv(struct Living* this) asm("?Dying@PuzzleHorse@@UAE_NXZ");
// win1.41 005ec400 mac inlined PuzzleHorse::Dead(void)
bool __fastcall Dead__11PuzzleHorseFv(struct Living* this) asm("?Dead@PuzzleHorse@@UAE_NXZ");
// win1.41 005ec4d0 mac inlined PuzzleHorse::BeingEaten(void)
bool __fastcall BeingEaten__11PuzzleHorseFv(struct Living* this) asm("?BeingEaten@PuzzleHorse@@UAE_NXZ");
// win1.41 005f2550 mac inlined PuzzleHorse::GotoFoodReaction(void)
bool __fastcall GotoFoodReaction__11PuzzleHorseFv(struct Living* this) asm("?GotoFoodReaction@PuzzleHorse@@UAE_NXZ");
// win1.41 005f25c0 mac inlined PuzzleHorse::GotoWoodReaction(void)
bool __fastcall GotoWoodReaction__11PuzzleHorseFv(struct Living* this) asm("?GotoWoodReaction@PuzzleHorse@@UAE_NXZ");
// win1.41 0041a9f0 mac inlined PuzzleHorse::MoveInFlock(void)
bool __fastcall MoveInFlock__11PuzzleHorseFv(struct Living* this) asm("?MoveInFlock@PuzzleHorse@@UAE_NXZ");
// win1.41 005ef350 mac inlined PuzzleHorse::IsMovingForAnimation(void)
bool __fastcall IsMovingForAnimation__11PuzzleHorseFv(struct Living* this) asm("?IsMovingForAnimation@PuzzleHorse@@UAE_NXZ");
// win1.41 0041a0a0 mac inlined PuzzleHorse::ArrivesAtFoodReaction(void)
bool __fastcall ArrivesAtFoodReaction__11PuzzleHorseFv(struct Living* this) asm("?ArrivesAtFoodReaction@PuzzleHorse@@UAE_NXZ");
// win1.41 00417030 mac inlined PuzzleHorse::ArrivesAtWoodReaction(void)
bool __fastcall ArrivesAtWoodReaction__11PuzzleHorseFv(struct Living* this) asm("?ArrivesAtWoodReaction@PuzzleHorse@@UAE_NXZ");
// win1.41 005ec620 mac inlined PuzzleHorse::InHand(void)
bool __fastcall InHand__11PuzzleHorseFv(struct Living* this) asm("?InHand@PuzzleHorse@@UAE_NXZ");
// win1.41 006db120 mac 10124e30 PuzzleHorse::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__11PuzzleHorseFv(struct Living* this) asm("?DecideWhatToDo@PuzzleHorse@@UAE_NXZ");
// win1.41 005ec8f0 mac inlined PuzzleHorse::Birthday(void)
void __fastcall Birthday__11PuzzleHorseFv(struct Living* this) asm("?Birthday@PuzzleHorse@@UAEXXZ");
// win1.41 004179c0 mac inlined PuzzleHorse::SetAge(unsigned long)
void __fastcall SetAge__11PuzzleHorseFUl(struct Living* this, const void* edx, uint32_t param_1) asm("?SetAge@PuzzleHorse@@UAEXI@Z");
// win1.41 00417820 mac inlined PuzzleHorse::CallIntoAnimationFunction(VILLAGER_STATES)
int __fastcall CallIntoAnimationFunction__11PuzzleHorseF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallIntoAnimationFunction@PuzzleHorse@@UAEHW4VILLAGER_STATES@@@Z");
// win1.41 00417830 mac inlined PuzzleHorse::CallOutofAnimationFunction(VILLAGER_STATES)
int __fastcall CallOutofAnimationFunction__11PuzzleHorseF15VILLAGER_STATES(struct Living* this, const void* edx, enum VILLAGER_STATES param_1) asm("?CallOutofAnimationFunction@PuzzleHorse@@UAEHW4VILLAGER_STATES@@@Z");

struct PuzzleLion
{
  struct PieceWolf super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzleLion) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becb38 mac inlined PuzzleLion::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10PuzzleLion asm("??_R0?AVPuzzleLion@@@8");
// win1.41 009adaf0 mac inlined PuzzleLion::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10PuzzleLion asm("??_R1A@?0A@A@PuzzleLion@@8");
// win1.41 009adb08 mac inlined PuzzleLion::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10PuzzleLion asm("??_R2PuzzleLion@@8");
// win1.41 009adb40 mac inlined PuzzleLion::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10PuzzleLion asm("??_R3PuzzleLion@@8");

// Override methods

// win1.41 00561630 mac 10132cf0 PuzzleLion::_dt(void)
void __fastcall __dt__10PuzzleLionFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleLion@@UAEPAXI@Z");
// win1.41 005615c0 mac 10132dd0 PuzzleLion::GetDebugText(void)
char* __fastcall GetDebugText__10PuzzleLionFv(struct GameThing* this) asm("?GetDebugText@PuzzleLion@@UAEPADXZ");
// win1.41 005615b0 mac 10132d90 PuzzleLion::GetSaveType(void)
uint32_t __fastcall GetSaveType__10PuzzleLionFv(struct GameThing* this) asm("?GetSaveType@PuzzleLion@@UAEIXZ");
// win1.41 005615d0 mac 10132e10 PuzzleLion::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__10PuzzleLionFv(struct Object* this) asm("?CanBecomeAPhysicsObject@PuzzleLion@@UAE_NXZ");

struct PuzzleMobileObject
{
  struct MobileObject super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzleMobileObject) == 0x68, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bee278 mac inlined PuzzleMobileObject::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18PuzzleMobileObject asm("??_R0?AVPuzzleMobileObject@@@8");
// win1.41 009b03b8 mac inlined PuzzleMobileObject::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18PuzzleMobileObject asm("??_R1A@?0A@A@PuzzleMobileObject@@8");
// win1.41 009b03d0 mac inlined PuzzleMobileObject::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18PuzzleMobileObject asm("??_R2PuzzleMobileObject@@8");
// win1.41 009b03f0 mac inlined PuzzleMobileObject::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18PuzzleMobileObject asm("??_R3PuzzleMobileObject@@8");

// Override methods

// win1.41 00561af0 mac 10131630 PuzzleMobileObject::_dt(void)
void __fastcall __dt__18PuzzleMobileObjectFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleMobileObject@@UAEPAXI@Z");
// win1.41 00561ae0 mac 10131770 PuzzleMobileObject::GetDebugText(void)
char* __fastcall GetDebugText__18PuzzleMobileObjectFv(struct GameThing* this) asm("?GetDebugText@PuzzleMobileObject@@UAEPADXZ");
// win1.41 006dbf20 mac 10123290 PuzzleMobileObject::Load(GameOSFile &)
uint32_t __fastcall Load__18PuzzleMobileObjectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PuzzleMobileObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 006dbf80 mac 101231b0 PuzzleMobileObject::Save(GameOSFile &)
uint32_t __fastcall Save__18PuzzleMobileObjectFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PuzzleMobileObject@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561ad0 mac 10131730 PuzzleMobileObject::GetSaveType(void)
uint32_t __fastcall GetSaveType__18PuzzleMobileObjectFv(struct GameThing* this) asm("?GetSaveType@PuzzleMobileObject@@UAEIXZ");
// win1.41 006dc510 mac 10122590 PuzzleMobileObject::GetImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetImmersionTexture__18PuzzleMobileObjectFv(struct Object* this) asm("?GetImmersionTexture@PuzzleMobileObject@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");
// win1.41 00561ac0 mac 101316c0 PuzzleMobileObject::GetInHandImmersionTexture(void)
enum IMMERSION_EFFECT_TYPE __fastcall GetInHandImmersionTexture__18PuzzleMobileObjectFv(struct Object* this) asm("?GetInHandImmersionTexture@PuzzleMobileObject@@UAE?AW4IMMERSION_EFFECT_TYPE@@XZ");

struct PuzzlePig
{
  struct PiecePig super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzlePig) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09928 mac inlined PuzzlePig::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9PuzzlePig asm("??_R0?AVPuzzlePig@@@8");
// win1.41 009b8658 mac inlined PuzzlePig::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9PuzzlePig asm("??_R1A@?0A@A@PuzzlePig@@8");
// win1.41 009b8670 mac inlined PuzzlePig::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9PuzzlePig asm("??_R2PuzzlePig@@8");
// win1.41 009b86a8 mac inlined PuzzlePig::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9PuzzlePig asm("??_R3PuzzlePig@@8");

// Override methods

// win1.41 006dd7a0 mac 10132510 PuzzlePig::_dt(void)
void __fastcall __dt__9PuzzlePigFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzlePig@@UAEPAXI@Z");
// win1.41 006dd730 mac 101325f0 PuzzlePig::GetDebugText(void)
char* __fastcall GetDebugText__9PuzzlePigFv(struct GameThing* this) asm("?GetDebugText@PuzzlePig@@UAEPADXZ");
// win1.41 006dd720 mac 101325b0 PuzzlePig::GetSaveType(void)
uint32_t __fastcall GetSaveType__9PuzzlePigFv(struct GameThing* this) asm("?GetSaveType@PuzzlePig@@UAEIXZ");
// win1.41 006dd740 mac 10132630 PuzzlePig::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__9PuzzlePigFv(struct Object* this) asm("?CanBecomeAPhysicsObject@PuzzlePig@@UAE_NXZ");
// win1.41 006db130 mac 10124df0 PuzzlePig::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__9PuzzlePigFv(struct Living* this) asm("?DecideWhatToDo@PuzzlePig@@UAE_NXZ");

struct PuzzleSheep
{
  struct PieceSheep super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzleSheep) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becd88 mac inlined PuzzleSheep::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11PuzzleSheep asm("??_R0?AVPuzzleSheep@@@8");
// win1.41 009ae1b8 mac inlined PuzzleSheep::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11PuzzleSheep asm("??_R1A@?0A@A@PuzzleSheep@@8");
// win1.41 009ae1d0 mac inlined PuzzleSheep::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11PuzzleSheep asm("??_R2PuzzleSheep@@8");
// win1.41 009ae208 mac inlined PuzzleSheep::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11PuzzleSheep asm("??_R3PuzzleSheep@@8");

// Override methods

// win1.41 005617c0 mac 10132a30 PuzzleSheep::_dt(void)
void __fastcall __dt__11PuzzleSheepFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleSheep@@UAEPAXI@Z");
// win1.41 00561750 mac 10132b10 PuzzleSheep::GetDebugText(void)
char* __fastcall GetDebugText__11PuzzleSheepFv(struct GameThing* this) asm("?GetDebugText@PuzzleSheep@@UAEPADXZ");
// win1.41 00561740 mac 10132ad0 PuzzleSheep::GetSaveType(void)
uint32_t __fastcall GetSaveType__11PuzzleSheepFv(struct GameThing* this) asm("?GetSaveType@PuzzleSheep@@UAEIXZ");
// win1.41 00561760 mac 10132b50 PuzzleSheep::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__11PuzzleSheepFv(struct Object* this) asm("?CanBecomeAPhysicsObject@PuzzleSheep@@UAE_NXZ");
// win1.41 006db110 mac 10124e70 PuzzleSheep::DecideWhatToDo(void)
bool __fastcall DecideWhatToDo__11PuzzleSheepFv(struct Living* this) asm("?DecideWhatToDo@PuzzleSheep@@UAE_NXZ");

struct PuzzleTortoise
{
  struct PieceTortoise super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzleTortoise) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09940 mac inlined PuzzleTortoise::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14PuzzleTortoise asm("??_R0?AVPuzzleTortoise@@@8");
// win1.41 009b86d0 mac inlined PuzzleTortoise::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14PuzzleTortoise asm("??_R1A@?0A@A@PuzzleTortoise@@8");
// win1.41 009b86e8 mac inlined PuzzleTortoise::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14PuzzleTortoise asm("??_R2PuzzleTortoise@@8");
// win1.41 009b8720 mac inlined PuzzleTortoise::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14PuzzleTortoise asm("??_R3PuzzleTortoise@@8");

// Override methods

// win1.41 006dd640 mac 10131f70 PuzzleTortoise::_dt(void)
void __fastcall __dt__14PuzzleTortoiseFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleTortoise@@UAEPAXI@Z");
// win1.41 006dd5d0 mac 10132050 PuzzleTortoise::GetDebugText(void)
char* __fastcall GetDebugText__14PuzzleTortoiseFv(struct GameThing* this) asm("?GetDebugText@PuzzleTortoise@@UAEPADXZ");
// win1.41 006dd5c0 mac 10132010 PuzzleTortoise::GetSaveType(void)
uint32_t __fastcall GetSaveType__14PuzzleTortoiseFv(struct GameThing* this) asm("?GetSaveType@PuzzleTortoise@@UAEIXZ");
// win1.41 006dd5e0 mac 10132090 PuzzleTortoise::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__14PuzzleTortoiseFv(struct Object* this) asm("?CanBecomeAPhysicsObject@PuzzleTortoise@@UAE_NXZ");

struct PuzzleTotem
{
  struct Totem super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzleTotem) == 0xe4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be6758 mac inlined PuzzleTotem::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11PuzzleTotem asm("??_R0?AVPuzzleTotem@@@8");
// win1.41 009ae900 mac inlined PuzzleTotem::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11PuzzleTotem asm("??_R1A@?0A@A@PuzzleTotem@@8");
// win1.41 009ae918 mac inlined PuzzleTotem::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11PuzzleTotem asm("??_R2PuzzleTotem@@8");
// win1.41 009ae940 mac inlined PuzzleTotem::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11PuzzleTotem asm("??_R3PuzzleTotem@@8");

// Override methods

// win1.41 005618d0 mac 10133500 PuzzleTotem::_dt(void)
void __fastcall __dt__11PuzzleTotemFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleTotem@@UAEPAXI@Z");
// win1.41 00561890 mac 101335e0 PuzzleTotem::GetDebugText(void)
char* __fastcall GetDebugText__11PuzzleTotemFv(struct GameThing* this) asm("?GetDebugText@PuzzleTotem@@UAEPADXZ");
// win1.41 006da740 mac 10126150 PuzzleTotem::Load(GameOSFile &)
uint32_t __fastcall Load__11PuzzleTotemFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@PuzzleTotem@@UAEIAAVGameOSFile@@@Z");
// win1.41 006da7f0 mac 10126020 PuzzleTotem::Save(GameOSFile &)
uint32_t __fastcall Save__11PuzzleTotemFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@PuzzleTotem@@UAEIAAVGameOSFile@@@Z");
// win1.41 00561880 mac 101335a0 PuzzleTotem::GetSaveType(void)
uint32_t __fastcall GetSaveType__11PuzzleTotemFv(struct GameThing* this) asm("?GetSaveType@PuzzleTotem@@UAEIXZ");
// win1.41 006da710 mac 10126270 PuzzleTotem::SetMaxHeight(float)
void __fastcall SetMaxHeight__11PuzzleTotemFf(struct GameThingWithPos* this, const void* edx, float param_1) asm("?SetMaxHeight@PuzzleTotem@@UAEXM@Z");
// win1.41 005618a0 mac 10133620 PuzzleTotem::GetMaxHeight(void)
float __fastcall GetMaxHeight__11PuzzleTotemFv(struct GameThingWithPos* this) asm("?GetMaxHeight@PuzzleTotem@@UAEMXZ");
// win1.41 006da5d0 mac 10126540 PuzzleTotem::ValidForLockedSelectProcess(GInterfaceStatus *)
bool32_t __fastcall ValidForLockedSelectProcess__11PuzzleTotemFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?ValidForLockedSelectProcess@PuzzleTotem@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 006da8a0 mac 10125f60 PuzzleTotem::NetworkFriendlyStartLockedSelect(GInterfaceStatus *)
bool32_t __fastcall NetworkFriendlyStartLockedSelect__11PuzzleTotemFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyStartLockedSelect@PuzzleTotem@@UAE_NPAVGInterfaceStatus@@@Z");
// win1.41 006da8e0 mac 10125eb0 PuzzleTotem::NetworkUnfriendlyStartLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyStartLockedSelect__11PuzzleTotemFv(struct Object* this) asm("?NetworkUnfriendlyStartLockedSelect@PuzzleTotem@@UAEIXZ");
// win1.41 006da970 mac 10125ba0 PuzzleTotem::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo *)
uint32_t __fastcall NetworkUnfriendlyLockedSelect__11PuzzleTotemFP21ControlHandUpdateInfo(struct Object* this, const void* edx, struct ControlHandUpdateInfo* param_1) asm("?NetworkUnfriendlyLockedSelect@PuzzleTotem@@UAEIPAUControlHandUpdateInfo@@@Z");
// win1.41 006da920 mac 10125e00 PuzzleTotem::NetworkUnfriendlyEndLockedSelect(void)
uint32_t __fastcall NetworkUnfriendlyEndLockedSelect__11PuzzleTotemFv(struct Object* this) asm("?NetworkUnfriendlyEndLockedSelect@PuzzleTotem@@UAEIXZ");
// win1.41 006da960 mac 10125da0 PuzzleTotem::NetworkFriendlyEndLockedSelect(GInterfaceStatus *)
uint32_t __fastcall NetworkFriendlyEndLockedSelect__11PuzzleTotemFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?NetworkFriendlyEndLockedSelect@PuzzleTotem@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006da5f0 mac 101264e0 PuzzleTotem::InterfaceValidToTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceValidToTap__11PuzzleTotemFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceValidToTap@PuzzleTotem@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 006da610 mac 10126420 PuzzleTotem::InterfaceTap(GInterfaceStatus *)
uint32_t __fastcall InterfaceTap__11PuzzleTotemFP16GInterfaceStatus(struct Object* this, const void* edx, struct GInterfaceStatus* param_1) asm("?InterfaceTap@PuzzleTotem@@UAEIPAVGInterfaceStatus@@@Z");
// win1.41 005618b0 mac 10133680 PuzzleTotem::ReactToPhysicsImpact(PhysicsObject *, bool)
void __fastcall ReactToPhysicsImpact__11PuzzleTotemFP13PhysicsObjectb(struct Object* this, const void* edx, struct PhysicsObject* param_1, bool param_2) asm("?ReactToPhysicsImpact@PuzzleTotem@@UAEXPAVPhysicsObject@@_N@Z");
// win1.41 00737450 mac inlined PuzzleTotem::DeleteDependancys(void)
void __fastcall DeleteDependancys__11PuzzleTotemFv(struct Abode* this) asm("?DeleteDependancys@PuzzleTotem@@UAEXXZ");
// win1.41 007377d0 mac inlined PuzzleTotem::MakeFunctional(void)
void __fastcall MakeFunctional__11PuzzleTotemFv(struct Abode* this) asm("?MakeFunctional@PuzzleTotem@@UAEXXZ");

struct PuzzleVillager
{
  struct PieceVillager super;  /* 0x0 */
};
static_assert(sizeof(struct PuzzleVillager) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00becc68 mac inlined PuzzleVillager::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14PuzzleVillager asm("??_R0?AVPuzzleVillager@@@8");
// win1.41 009ade30 mac inlined PuzzleVillager::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14PuzzleVillager asm("??_R1A@?0A@A@PuzzleVillager@@8");
// win1.41 009ade48 mac inlined PuzzleVillager::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14PuzzleVillager asm("??_R2PuzzleVillager@@8");
// win1.41 009ade78 mac inlined PuzzleVillager::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14PuzzleVillager asm("??_R3PuzzleVillager@@8");

// Override methods

// win1.41 00561710 mac 101330c0 PuzzleVillager::_dt(void)
void __fastcall __dt__14PuzzleVillagerFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GPuzzleVillager@@UAEPAXI@Z");
// win1.41 00561670 mac 101331a0 PuzzleVillager::GetDebugText(void)
char* __fastcall GetDebugText__14PuzzleVillagerFv(struct GameThing* this) asm("?GetDebugText@PuzzleVillager@@UAEPADXZ");
// win1.41 00561660 mac 10133160 PuzzleVillager::GetSaveType(void)
uint32_t __fastcall GetSaveType__14PuzzleVillagerFv(struct GameThing* this) asm("?GetSaveType@PuzzleVillager@@UAEIXZ");
// win1.41 00561680 mac 101331e0 PuzzleVillager::CanBecomeAPhysicsObject(void)
bool __fastcall CanBecomeAPhysicsObject__14PuzzleVillagerFv(struct Object* this) asm("?CanBecomeAPhysicsObject@PuzzleVillager@@UAE_NXZ");

#endif /* BW1_DECOMP_PUZZLE_GAME_INCLUDED_H */
