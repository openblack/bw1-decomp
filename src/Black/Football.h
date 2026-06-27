#ifndef BW1_DECOMP_FOOTBALL_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

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

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class Villager;

class Football: public Abode
{
public:
    uint8_t field_0xc4[0x254];

    // Override methods

    // BW1W120 00531330 BW1M100 102b8570 Football::_dt(void)
    virtual ~Football();
    // BW1W120 00531360 BW1M100 102bd250 Football::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00532220 BW1M100 102bb880 Football::GetVillagerActivityDesire(Villager *)
    virtual float GetVillagerActivityDesire(Villager* param_1);
    // BW1W120 00532190 BW1M100 102bb9b0 Football::SetVillagerActivity(Villager *)
    virtual uint32_t SetVillagerActivity(Villager* param_1);
    // BW1W120 00531320 BW1M100 102b8870 Football::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 005336e0 BW1M100 102b89e0 Football::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 005332a0 BW1M100 102b9230 Football::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00531310 BW1M100 102b8830 Football::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00531180 BW1M100 102bd4d0 Football::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // BW1W120 00531280 BW1M100 102b8610 Football::IsFootball(void)
    virtual uint32_t IsFootball();
    // BW1W120 00531e40 BW1M100 102bc020 Football::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float param_1, GPlayer* param_2);
    // BW1W120 00533e40 BW1M100 102be320 Football::Process(void)
    virtual uint32_t Process();
    // BW1W120 00531610 BW1M100 102bccb0 Football::Draw(void)
    virtual void Draw();
    // BW1W120 00530f80 BW1M100 102bd510 Football::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 005312e0 BW1M100 102b8760 Football::Get3DType(void)
    virtual LH3DObject::ObjectType Get3DType();
    // BW1W120 00531930 BW1M100 102bcad0 Football::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // BW1W120 005312f0 BW1M100 102b87a0 Football::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // BW1W120 00533b30 BW1M100 inlined Football::GetDoorPos(MapCoords *)
    virtual MapCoords* GetDoorPos(MapCoords* param_1);
    // BW1W120 00531290 BW1M100 102b8650 Football::IsRepaired(void)
    virtual bool IsRepaired();
    // BW1W120 005312b0 BW1M100 102b86c0 Football::IsBuilt(void)
    virtual bool IsBuilt();

    // Non-virtual methods

    // BW1W120 00531410 BW1M100 102bd040 Football::GetBall(void)
    void* GetBall();
    // BW1W120 00532960 BW1M100 102baa80 Football::IsPlayerOnHomeTeam(Villager *)
    bool IsPlayerOnHomeTeam(Villager* param_1);
    // BW1W120 00532c80 BW1M100 102ba570 Football::GetGoalPosition(unsigned long)
    void GetGoalPosition(unsigned long param_1);
};

#endif /* BW1_DECOMP_FOOTBALL_INCLUDED_H */
