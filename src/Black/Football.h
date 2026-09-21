#ifndef BW1_DECOMP_FOOTBALL_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h"     /* For struct Abode */
#include "MapCoords.h" /* For struct MapCoords */

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

class Football : public Abode
{
public:
	enum FOOTBALL_STATES // fabricated enumerator names
	{
		FOOTBALL_STATES_0 = 0x0,
		FOOTBALL_STATES_1 = 0x1,
	};

	uint8_t field_0xc4[0x180];
	Object* MarkTargets[2]; /* 0x244 -- indexed by IsPlayerOnHomeTeam() */
	uint8_t field_0x24c[0xcc];

	// Override methods

	// BW1W120 00531330 BW1M119 012bbf00
	virtual ~Football();
	// BW1W120 00531360 BW1M119 012c0c20
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00532220 BW1M119 012bf2b0
	virtual float GetVillagerActivityDesire(Villager* param_1);
	// BW1W120 00532190 BW1M119 012bf3e0
	virtual uint32_t SetVillagerActivity(Villager* param_1);
	// BW1W120 00531320 BW1M119 012bc200
	virtual char* GetDebugText();
	// BW1W120 005336e0 BW1M119 012bc370
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005332a0 BW1M119 012bcc70
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00531310 BW1M119 012bc1c0
	virtual uint32_t GetSaveType();
	// BW1W120 00531180 BW1M119 012c0e50
	virtual uint32_t GetCreatureBeliefType();
	// BW1W120 00531280 BW1M119 012bbfa0
	virtual uint32_t IsFootball();
	// BW1W120 00531e40 BW1M119 012bfa40
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 00533e40 BW1M119 012c1cc0
	virtual uint32_t Process();
	// BW1W120 00531610 BW1M119 012c0660
	virtual void Draw();
	// BW1W120 00530f80 BW1M119 012c0e90
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 005312e0 BW1M119 012bc0f0
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 00531930 BW1M119 012c0490
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 005312f0 BW1M119 012bc130
	virtual bool32_t CreatureMustAvoid(Creature* param_1);
	// BW1W120 00533b30 BW1M119 inlined
	virtual MapCoords* GetDoorPos(MapCoords* param_1);
	// BW1W120 00531290 BW1M119 012bbfe0
	virtual bool32_t IsRepaired();
	// BW1W120 005312b0 BW1M119 012bc050
	virtual bool32_t IsBuilt();

	// Static methods

	// BW1W120 005315a0 BW1M119 012c06b0
	static Football* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                        float food, int wood);

	// Non-virtual methods

	// BW1W120 00531410 BW1M119 012c0a10
	void* GetBall();
	// BW1W120 005325d0 BW1M119 012bebf0
	bool32_t RemoveVillagerFromTeam(Villager* villager);
	// BW1W120 005326e0 BW1M119 012be9e0
	bool32_t RemoveVillagerFromMexicanWave(Villager* villager);
	// BW1W120 00532eb0 BW1M119 012bdc40
	void PerturbTarget(MapCoords* target, Villager* player);
	// BW1W120 00532960 BW1M119 012be4d0
	bool32_t IsPlayerOnHomeTeam(Villager* villager);
	// BW1W120 00532c80 BW1M119 012bdfa0
	MapCoords GetGoalPosition(unsigned long home_team);
	// BW1W120 005347c0 BW1M119 012c19c0
	int GetHowCloseToBallIndex(Villager* villager);
	// BW1W120 00534820 BW1M119 012c18f0
	int GetHowCloseToGoalIndex(Villager* villager);
	// BW1W120 00534860 BW1M119 012c1840
	void SetPlayState(FOOTBALL_STATES state);
};

#endif /* BW1_DECOMP_FOOTBALL_INCLUDED_H */
