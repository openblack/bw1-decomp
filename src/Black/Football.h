#ifndef BW1_DECOMP_FOOTBALL_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

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

    // win1.41 00531330 mac 102b8570 Football::_dt(void)
    virtual ~Football();
    // win1.41 00531360 mac 102bd250 Football::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00532220 mac 102bb880 Football::GetVillagerActivityDesire(Villager *)
    virtual float GetVillagerActivityDesire(Villager* param_1);
    // win1.41 00532190 mac 102bb9b0 Football::SetVillagerActivity(Villager *)
    virtual uint32_t SetVillagerActivity(Villager* param_1);
    // win1.41 00531320 mac 102b8870 Football::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 005336e0 mac 102b89e0 Football::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005332a0 mac 102b9230 Football::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00531310 mac 102b8830 Football::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00531180 mac 102bd4d0 Football::GetCreatureBeliefType(void)
    virtual uint32_t GetCreatureBeliefType();
    // win1.41 00531280 mac 102b8610 Football::IsFootball(void)
    virtual uint32_t IsFootball();
    // win1.41 00531e40 mac 102bc020 Football::ReduceLife(float, GPlayer *)
    virtual void ReduceLife(float param_1, GPlayer* param_2);
    // win1.41 00533e40 mac 102be320 Football::Process(void)
    virtual uint32_t Process();
    // win1.41 00531610 mac 102bccb0 Football::Draw(void)
    virtual void Draw();
    // win1.41 00530f80 mac 102bd510 Football::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 005312e0 mac 102b8760 Football::Get3DType(void)
    virtual LH3DObject__ObjectType Get3DType();
    // win1.41 00531930 mac 102bcad0 Football::InteractsWithPhysicsObjects(void)
    virtual bool InteractsWithPhysicsObjects();
    // win1.41 005312f0 mac 102b87a0 Football::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00533b30 mac inlined Football::GetDoorPos(MapCoords *)
    virtual MapCoords* GetDoorPos(MapCoords* param_1);
    // win1.41 00531290 mac 102b8650 Football::IsRepaired(void)
    virtual bool IsRepaired();
    // win1.41 005312b0 mac 102b86c0 Football::IsBuilt(void)
    virtual bool IsBuilt();

    // Non-virtual methods

    // win1.41 00531410 mac 102bd040 Football::GetBall(void)
    void* GetBall();
    // win1.41 00532960 mac 102baa80 Football::IsPlayerOnHomeTeam(Villager *)
    bool IsPlayerOnHomeTeam(Villager* param_1);
    // win1.41 00532c80 mac 102ba570 Football::GetGoalPosition(unsigned long)
    void GetGoalPosition(unsigned long param_1);
};

#endif /* BW1_DECOMP_FOOTBALL_INCLUDED_H */
