#ifndef BW1_DECOMP_FOOTBALL_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct Base;
struct Creature;
struct GPlayer;
struct GameOSFile;
struct GameThing;
struct GameThingWithPos;
struct MapCoords;
struct MultiMapFixed;
struct Object;
struct Villager;

enum FOOTBALL_SUBSTATES_ATTACKER
{
  FOOTBALL_SUBSTATES_ATTACKER_SHOOT = 0x0,
  FOOTBALL_SUBSTATES_ATTACKER_PASS = 0x1,
  FOOTBALL_SUBSTATES_ATTACKER_LOB_NEAR_GOAL = 0x2,
  FOOTBALL_SUBSTATES_ATTACKER_DRIBBLE = 0x3,
  FOOTBALL_SUBSTATES_ATTACKER_MOVE_TO_BE_PASSED = 0x4,
  FOOTBALL_SUBSTATES_ATTACKER_GO_TO_BALL = 0x5,
  FOOTBALL_SUBSTATES_ATTACKER_GO_HOME = 0x6,
  FOOTBALL_SUBSTATES_ATTACKER_IDLE = 0x7,
  _FOOTBALL_SUBSTATES_ATTACKER_COUNT = 0x8
};
static_assert(sizeof(enum FOOTBALL_SUBSTATES_ATTACKER) == 0x4, "Data type is of wrong size");

static const char* FOOTBALL_SUBSTATES_ATTACKER_strs[_FOOTBALL_SUBSTATES_ATTACKER_COUNT] = {
  "FOOTBALL_SUBSTATES_ATTACKER_SHOOT",
  "FOOTBALL_SUBSTATES_ATTACKER_PASS",
  "FOOTBALL_SUBSTATES_ATTACKER_LOB_NEAR_GOAL",
  "FOOTBALL_SUBSTATES_ATTACKER_DRIBBLE",
  "FOOTBALL_SUBSTATES_ATTACKER_MOVE_TO_BE_PASSED",
  "FOOTBALL_SUBSTATES_ATTACKER_GO_TO_BALL",
  "FOOTBALL_SUBSTATES_ATTACKER_GO_HOME",
  "FOOTBALL_SUBSTATES_ATTACKER_IDLE",
};

enum FOOTBALL_SUBSTATES_DEFENDER
{
  FOOTBALL_SUBSTATES_DEFENDER_SAVE = 0x0,
  FOOTBALL_SUBSTATES_DEFENDER_CLEAR = 0x1,
  FOOTBALL_SUBSTATES_DEFENDER_DRIBBLE = 0x2,
  FOOTBALL_SUBSTATES_DEFENDER_PASS = 0x3,
  FOOTBALL_SUBSTATES_DEFENDER_MARK = 0x4,
  FOOTBALL_SUBSTATES_DEFENDER_GO_TO_BALL = 0x5,
  FOOTBALL_SUBSTATES_DEFENDER_GO_HOME = 0x6,
  FOOTBALL_SUBSTATES_DEFENDER_IDLE = 0x7,
  _FOOTBALL_SUBSTATES_DEFENDER_COUNT = 0x8
};
static_assert(sizeof(enum FOOTBALL_SUBSTATES_DEFENDER) == 0x4, "Data type is of wrong size");

static const char* FOOTBALL_SUBSTATES_DEFENDER_strs[_FOOTBALL_SUBSTATES_DEFENDER_COUNT] = {
  "FOOTBALL_SUBSTATES_DEFENDER_SAVE",
  "FOOTBALL_SUBSTATES_DEFENDER_CLEAR",
  "FOOTBALL_SUBSTATES_DEFENDER_DRIBBLE",
  "FOOTBALL_SUBSTATES_DEFENDER_PASS",
  "FOOTBALL_SUBSTATES_DEFENDER_MARK",
  "FOOTBALL_SUBSTATES_DEFENDER_GO_TO_BALL",
  "FOOTBALL_SUBSTATES_DEFENDER_GO_HOME",
  "FOOTBALL_SUBSTATES_DEFENDER_IDLE",
};

enum FOOTBALL_SUBSTATES_GOALIE
{
  FOOTBALL_SUBSTATES_GOALIE_SAVE = 0x0,
  FOOTBALL_SUBSTATES_GOALIE_CLEAR = 0x1,
  FOOTBALL_SUBSTATES_GOALIE_LOOK = 0x2,
  FOOTBALL_SUBSTATES_GOALIE_PASS = 0x3,
  FOOTBALL_SUBSTATES_GOALIE_GO_TO_BALL = 0x4,
  FOOTBALL_SUBSTATES_GOALIE_GO_HOME = 0x5,
  FOOTBALL_SUBSTATES_GOALIE_IDLE = 0x6,
  _FOOTBALL_SUBSTATES_GOALIE_COUNT = 0x7
};
static_assert(sizeof(enum FOOTBALL_SUBSTATES_GOALIE) == 0x4, "Data type is of wrong size");

static const char* FOOTBALL_SUBSTATES_GOALIE_strs[_FOOTBALL_SUBSTATES_GOALIE_COUNT] = {
  "FOOTBALL_SUBSTATES_GOALIE_SAVE",
  "FOOTBALL_SUBSTATES_GOALIE_CLEAR",
  "FOOTBALL_SUBSTATES_GOALIE_LOOK",
  "FOOTBALL_SUBSTATES_GOALIE_PASS",
  "FOOTBALL_SUBSTATES_GOALIE_GO_TO_BALL",
  "FOOTBALL_SUBSTATES_GOALIE_GO_HOME",
  "FOOTBALL_SUBSTATES_GOALIE_IDLE",
};

struct Football
{
  struct Abode super;  /* 0x0 */
  uint8_t field_0xc4[0x254];
};
static_assert(sizeof(struct Football) == 0x318, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9f80 mac inlined Football::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__8Football asm("??_R0?AVFootball@@@8");
// win1.41 009ac588 mac inlined Football::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__8Football asm("??_R1A@?0A@A@Football@@8");
// win1.41 009ac5a0 mac inlined Football::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__8Football asm("??_R2Football@@8");
// win1.41 009ac5c8 mac inlined Football::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__8Football asm("??_R3Football@@8");
// win1.41 008dd644 mac 109993e8 Football::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__8Football asm("??_R4Football@@6B@");
// win1.41 008dd648 mac 109993f0 Football::`vftable'
extern const struct AbodeVftable __vt__8Football asm("??_7Football@@6B@");

// Non-virtual methods

// win1.41 00531410 mac 102bd040 Football::GetBall(void)
void* __fastcall GetBall__8FootballFv(struct Football* this) asm("?GetBall@Football@@QAEPAXXZ");
// win1.41 00532960 mac 102baa80 Football::IsPlayerOnHomeTeam(Villager *)
bool __fastcall IsPlayerOnHomeTeam__8FootballFP8Villager(struct Football* this, const void* edx, struct Villager* param_1) asm("?IsPlayerOnHomeTeam@Football@@QAE_NPAVVillager@@@Z");
// win1.41 00532c80 mac 102ba570 Football::GetGoalPosition(unsigned long)
void __fastcall GetGoalPosition__8FootballFUl(struct Football* this, const void* edx, unsigned long param_1) asm("?GetGoalPosition@Football@@QAEXK@Z");

// Override methods

// win1.41 00531330 mac 102b8570 Football::_dt(void)
void __fastcall __dt__8FootballFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GFootball@@UAEPAXI@Z");
// win1.41 00531360 mac 102bd250 Football::ToBeDeleted(int)
void __fastcall ToBeDeleted__8FootballFi(struct Base* this, const void* edx, int param_1) asm("?ToBeDeleted@Football@@UAEXH@Z");
// win1.41 00532220 mac 102bb880 Football::GetVillagerActivityDesire(Villager *)
float __fastcall GetVillagerActivityDesire__8FootballFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?GetVillagerActivityDesire@Football@@UAEMPAVVillager@@@Z");
// win1.41 00532190 mac 102bb9b0 Football::SetVillagerActivity(Villager *)
uint32_t __fastcall SetVillagerActivity__8FootballFP8Villager(struct GameThing* this, const void* edx, struct Villager* param_1) asm("?SetVillagerActivity@Football@@UAEIPAVVillager@@@Z");
// win1.41 00531320 mac 102b8870 Football::GetDebugText(void)
char* __fastcall GetDebugText__8FootballFv(struct GameThing* this) asm("?GetDebugText@Football@@UAEPADXZ");
// win1.41 005336e0 mac 102b89e0 Football::Load(GameOSFile &)
uint32_t __fastcall Load__8FootballFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@Football@@UAEIAAVGameOSFile@@@Z");
// win1.41 005332a0 mac 102b9230 Football::Save(GameOSFile &)
uint32_t __fastcall Save__8FootballFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@Football@@UAEIAAVGameOSFile@@@Z");
// win1.41 00531310 mac 102b8830 Football::GetSaveType(void)
uint32_t __fastcall GetSaveType__8FootballFv(struct GameThing* this) asm("?GetSaveType@Football@@UAEIXZ");
// win1.41 00531180 mac 102bd4d0 Football::GetCreatureBeliefType(void)
uint32_t __fastcall GetCreatureBeliefType__8FootballFv(struct GameThingWithPos* this) asm("?GetCreatureBeliefType@Football@@UAEIXZ");
// win1.41 00531280 mac 102b8610 Football::IsFootball(void)
uint32_t __fastcall IsFootball__8FootballFv(struct GameThingWithPos* this) asm("?IsFootball@Football@@UAEIXZ");
// win1.41 00531e40 mac 102bc020 Football::ReduceLife(float, GPlayer *)
void __fastcall ReduceLife__8FootballFfP7GPlayer(struct Object* this, const void* edx, float param_1, struct GPlayer* param_2) asm("?ReduceLife@Football@@UAEXMPAVGPlayer@@@Z");
// win1.41 00533e40 mac 102be320 Football::Process(void)
uint32_t __fastcall Process__8FootballFv(struct Object* this) asm("?Process@Football@@UAEIXZ");
// win1.41 00531610 mac 102bccb0 Football::Draw(void)
void __fastcall Draw__8FootballFv(struct Object* this) asm("?Draw@Football@@UAEXXZ");
// win1.41 00530f80 mac 102bd510 Football::CallVirtualFunctionsForCreation(MapCoords const &)
void __fastcall CallVirtualFunctionsForCreation__8FootballFRC9MapCoords(struct Object* this, const void* edx, const struct MapCoords* param_1) asm("?CallVirtualFunctionsForCreation@Football@@UAEXABUMapCoords@@@Z");
// win1.41 005312e0 mac 102b8760 Football::Get3DType(void)
enum LH3DObject__ObjectType __fastcall Get3DType__8FootballFv(struct Object* this) asm("?Get3DType@Football@@UAE?AW4LH3DObject__ObjectType@@XZ");
// win1.41 00531930 mac 102bcad0 Football::InteractsWithPhysicsObjects(void)
bool __fastcall InteractsWithPhysicsObjects__8FootballFv(struct Object* this) asm("?InteractsWithPhysicsObjects@Football@@UAE_NXZ");
// win1.41 005312f0 mac 102b87a0 Football::CreatureMustAvoid(Creature *)
bool __fastcall CreatureMustAvoid__8FootballFP8Creature(struct Object* this, const void* edx, struct Creature* param_1) asm("?CreatureMustAvoid@Football@@UAE_NPAVCreature@@@Z");
// win1.41 00533b30 mac inlined Football::GetDoorPos(MapCoords *)
struct MapCoords* __fastcall GetDoorPos__8FootballFP9MapCoords(struct MultiMapFixed* this, const void* edx, struct MapCoords* param_1) asm("?GetDoorPos@Football@@UAEPAUMapCoords@@PAU2@@Z");
// win1.41 00531290 mac 102b8650 Football::IsRepaired(void)
bool __fastcall IsRepaired__8FootballFv(struct MultiMapFixed* this) asm("?IsRepaired@Football@@UAE_NXZ");
// win1.41 005312b0 mac 102b86c0 Football::IsBuilt(void)
bool __fastcall IsBuilt__8FootballFv(struct MultiMapFixed* this) asm("?IsBuilt@Football@@UAE_NXZ");

#endif /* BW1_DECOMP_FOOTBALL_INCLUDED_H */
