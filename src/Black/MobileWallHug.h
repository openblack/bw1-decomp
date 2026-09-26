#ifndef BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H
#define BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, int8_t, uint16_t, uint32_t, uint8_t */

#include <map>
#include <set>

#include "Collide.h"          /* For struct CircleHugInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h"        /* For struct MapCoords */
#include "Mobile.h"           /* For struct Mobile, struct MobileVftable */
#include "Object.h"           /* For struct Object */

enum MOVE_TO_STATES
{
	MOVE_TO_STATES_ARRIVED = 0x1,
	MOVE_TO_STATES_FINAL_STEP = 0x4,
	MOVE_TO_STATES_STEP_THROUGH = 0xb,
	MOVE_TO_STATES_LINEAR = 0xc,
	MOVE_TO_STATES_LINEAR_CW = 0xd,
	MOVE_TO_STATES_LINEAR_CCW = 0xe,
	MOVE_TO_STATES_ORBIT_CW = 0xf,
	MOVE_TO_STATES_ORBIT_CCW = 0x10,
	MOVE_TO_STATES_EXIT_CIRCLE_CCW = 0x11,
	MOVE_TO_STATES_EXIT_CIRCLE_CW = 0x12,
	_MOVE_TO_STATES_COUNT = 0x13
};

// Forward Declares

class Base;
class GFootpath;
class GMobileWallHugInfo;
class GameOSFile;
class GameThing;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct LHPoint;
struct ObjectVftable;

struct GMoveBy
{
	int   x; /* 0x0 */
	float altitude;
	int   z;
};

class MobileWallHug : public Mobile
{
public:
	int16_t       TurnsUntilNextStateChange; /* 0x58 */
	uint16_t      speed;
	uint16_t      GameAngle;
	uint8_t       MoveState;
	Object*       target; /* 0x60 */
	GMoveBy       step;
	CircleHugInfo circle_hug_info; /* 0x70 */
	int8_t        field_0x78;
	GFootpath*    footpath;
	MapCoords     goal; /* 0x80 */

	// Override methods

	// BW1W120 00474910 BW1M119 013c9820
	virtual ~MobileWallHug();
	// BW1W120 0060c740 BW1M119 013ca370
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0060c420 BW1M119 013ca860
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0060c070 BW1M119 01034b30
	virtual float GetSpeedInMetres() const;
	// BW1W120 0060c080 BW1M119 013cb2b0
	virtual void SetSpeedInMetres(float param_1, int param_2);
	// BW1W120 0060c0b0 BW1M119 013cb240
	virtual float GetRunningSpeedInMetres();
	// BW1W120 0060c0d0 BW1M119 013cb1d0
	virtual float GetDefaultSpeedInMetres();
	// BW1W120 0060c0f0 BW1M119 013cb160
	virtual float GetSpeedInMetresPerSecond() const;
	// BW1W120 0060c140 BW1M119 013cb050
	virtual float GetRunningSpeedInMetresPerSecond();
	// BW1W120 0060c160 BW1M119 013cafd0
	virtual float GetDefaultSpeedInMetresPerSecond();
	// BW1W120 0060c040 BW1M119 013cb370
	virtual void GetMovementDirection(LHPoint* param_1);
	// BW1W120 00416f80 BW1M119 0102efb0
	virtual bool32_t IsMobileWallHug() const;
	// BW1W120 0060c020 BW1M119 013cb440
	virtual float GetFacingDirection();
	// BW1W120 0060dac0 BW1M119 013c98d0
	virtual void SetYAngle(float param_1);
	// BW1W120 0060ad60 BW1M119 0104d590
	virtual bool AreWeThere(const MapCoords& param_1, float param_2);
	// BW1W120 00416f70 BW1M119 0104ac10
	virtual MapCoords* GetDestPos();
	// BW1W120 0060fc50 BW1M119 01086610
	virtual void SetSpeed(int param_1);
	// BW1W120 00473e40 BW1M119 0107c070
	virtual void SetTowardsAngle(uint16_t param_1);
	// BW1W120 0060aee0 BW1M119 013cbad0
	virtual void MoveTo3D();
	// BW1W120 0060bc40 BW1M119 013cb7e0
	virtual void SetNewWander(const MapCoords& param_1, int param_2, int param_3);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	MobileWallHug(const MapCoords& coords, const GMobileWallHugInfo* info);
	// BW1W120 00474890 BW1M119 011e82a0
	MobileWallHug();

	// Non-virtual methods

	// BW1W120 00609d10 BW1M119 inlined
	void RebuildMoveByStep();
	// BW1W120 0060aad0 BW1M119 inlined
	void SetupMobileMoveToPos(const MapCoords& coords);
	// BW1W120 0060abc0 BW1M119 0101f330
	void SetupMobileMoveToPos(const MapCoords& coords, MOVE_TO_STATES move_to_state);
	// BW1W120 0060acd0 BW1M119 013cbeb0
	void SetupMobileMoveToObject(Object* param_1);
	// BW1W120 0060ad40 BW1M119 01061c20
	bool32_t AreWeThere(float param_1);
	// BW1W120 0060af20 BW1M119 01049c90
	int MoveTo();
	// BW1W120 0060bfa0 BW1M119 013cb600
	void InitStepsXZ();
	// BW1W120 0060ca50 BW1M119 01078b80
	uint32_t MoveToCircleHugLinearSquareSweep(const MapCoords& dest);
	// BW1W120 0060d800 BW1M119 0103ac40
	int MoveToCircleHug();
	// BW1W120 0060da90 BW1M119 0104f670
	void SetGameAngle(uint16_t angle);
	// BW1W120 0060f760 BW1M119 013c9790
	void SetToZero();
};

struct SubCollideBlockPos
{
	uint16_t x; /* 0x0 */
	uint16_t z;

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	bool operator<(const SubCollideBlockPos& other) const;
};

struct CircleHugStateInfoT
{
	std::map<MobileWallHug*, uint32_t>                    field_0x0;
	std::map<NewCollide::Obj*, std::set<MobileWallHug*>*> ObjToMwh; /* 0x10 */
	std::set<MobileWallHug*>                              field_0x20;
	std::set<MobileWallHug*>                              field_0x30;
	bool                                                  field_0x40;
	uint8_t                                               field_0x41[0x3];
	std::map<SubCollideBlockPos, NewCollide::Obj*>        field_0x44;

	// Non-virtual methods

	// BW1W120 0060d410 BW1M119 010954c0
	NewCollide::Obj* fetch(MapCoords coords);
};

struct LinearSquareSweepStruct
{
	float            dpmr; /* 0x0 */
	float            dot_product;
	float            dp2pr2ml2;
	NewCollide::Obj* obj;

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void Reset();
	// BW1W120 inlined BW1M119 inlined
	bool operator<(LinearSquareSweepStruct* other);
};

// BW1W120 00609a50 BW1M119 01015bf0
void DoWallHuggerLookahead();

#endif /* BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H */
