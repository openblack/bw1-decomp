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

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For LHSinTable */

enum MOVE_TO_STATES
{
	MOVE_TO_STATES_ARRIVED = 0x1,
	MOVE_TO_STATES_FINAL_STEP = 0x4,
	MOVE_TO_STATES_WANDER = 0x5,
	MOVE_TO_STATES_0xa = 0xa,
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
class MultiMapFixed;
class GMobileWallHugInfo;
class GameOSFile;
class GameThing;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct LHPoint;
class MultiMapFixed;
struct ObjectVftable;

struct GMoveBy
{
	int   x; /* 0x0 */
	float altitude;
	int   z;

	// Constructors

	// BW1W120 inlined BW1M119 013117d0
	GMoveBy() : x(0), altitude(0.0f), z(0) {}

	// Non-virtual methods

	// BW1W120 00609ca0 BW1M119 0109e060
	void Init(long _x, long _z, float _altitude)
	{
		x = _x;
		z = _z;
		altitude = _altitude;
	}
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
	int8_t        TurnsUntilStepRebuild;
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
	virtual void SetSpeedInMetres(float speed_in_metres, int scale_speed);
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
	virtual void GetMovementDirection(LHPoint* direction);
	// BW1W120 00416f80 BW1M119 0102efb0
	virtual bool32_t IsMobileWallHug() const;
	// BW1W120 0060c020 BW1M119 013cb440
	virtual float GetFacingDirection();
	// BW1W120 0060dac0 BW1M119 013c98d0
	virtual void SetYAngle(float angle);
	// BW1W120 0060ad60 BW1M119 0104d590
	virtual bool32_t AreWeThere(const MapCoords& coords, float extra_distance);
	// BW1W120 00416f70 BW1M119 0104ac10
	virtual MapCoords* GetDestPos();
	// BW1W120 0060fc50 BW1M119 01086610
	virtual void SetSpeed(int new_speed);
	// BW1W120 00473e40 BW1M119 0107c070
	virtual void SetTowardsAngle(uint16_t angle);
	// BW1W120 0060aee0 BW1M119 013cbad0
	virtual void MoveTo3D();
	// BW1W120 0060bc40 BW1M119 013cb7e0
	virtual void SetNewWander(const MapCoords* centre, long min_dist, long max_dist);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	MobileWallHug(const MapCoords& coords, const GMobileWallHugInfo* info);
	// BW1W120 00474890 BW1M119 011e82a0
	MobileWallHug();

	// Static methods

	// BW1W120 0060f850 BW1M119 013c9240
	static void ProcessRemoveFromMap(MultiMapFixed* structure);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 010713d0
	const GMobileWallHugInfo* GetInfo() const { return (const GMobileWallHugInfo*)info; }
	// BW1W120 inlined BW1M119 013cd370
	uint8_t GetMoveState() { return MoveState; }
	// BW1W120 inlined BW1M119 010a0b30
	void SetMoveState(uint8_t state) { MoveState = state; }
	// BW1W120 inlined BW1M119 010a0a40
	long GetXByAngle(uint16_t angle) { return ((speed >> 4) * LHSinTable[angle + 0x200]) >> 12; }
	// BW1W120 inlined BW1M119 010a0790
	long GetZByAngle(uint16_t angle) { return ((speed >> 4) * LHSinTable[angle]) >> 12; }
	// fabricated: the Mac inlines this into InitStepsXZ and InitStepsXZSetAngle
	// BW1W120 00609d10 BW1M119 inlined
	void RebuildMoveByStep() { step.Init(GetXByAngle(GameAngle), GetZByAngle(GameAngle), 0.0f); }
	// BW1W120 inlined BW1M119 013cd200
	void InitStepsXZSetAngle(long angle)
	{
		SetGameAngle(angle);
		RebuildMoveByStep();
	}
	// BW1W120 0060aad0 BW1M119 010303f0
	void SetupMobileMoveToPos(const MapCoords& coords);
	// BW1W120 0060abc0 BW1M119 0101f330
	void SetupMobileMoveToPos(const MapCoords& coords, MOVE_TO_STATES move_to_state);
	// BW1W120 0060acd0 BW1M119 013cbeb0
	void SetupMobileMoveToObject(Object* object);
	// BW1W120 0060ad40 BW1M119 01061c20
	bool32_t AreWeThere(float extra_distance);
	// BW1W120 0060adc0 BW1M119 013cbb60
	int MoveToObjectPos();
	// BW1W120 0060af20 BW1M119 01049c90
	int MoveTo();
	// BW1W120 0060bbc0 BW1M119 013cb950
	int SimpleMoveTo();
	// BW1W120 0060bd00 BW1M119 0106fc00
	int MoveToWander(const MapCoords* centre, long min_dist, long max_dist);
	// BW1W120 0060bea0 BW1M119 inlined
	int MoveByStep(int& direction);
	// BW1W120 0060bef0 BW1M119 inlined
	int CollideWithMapCell(uint16_t x, uint16_t z);
	// BW1W120 0060bf50
	int Collide();
	// BW1W120 0060bf70
	int Collide(const MapCoords& coords);
	// BW1W120 0060bf90 BW1M119 01022aa0
	COLLIDE_TYPE GetCollideMask();
	// BW1W120 0060bfa0 BW1M119 013cb600
	void InitStepsXZ();
	// BW1W120 0060c000 BW1M119 01007350
	void SetAngleOnMoveBy();
	// BW1W120 0060c110 BW1M119 013cb0d0
	void SetSpeedInMetresPerSecond(float speed);
	// BW1W120 0060ca50 BW1M119 01078b80
	uint32_t MoveToCircleHugLinearSquareSweep(const MapCoords& dest);
	// BW1W120 0060d800 BW1M119 0103ac40
	int MoveToCircleHug();
	// BW1W120 0060da90 BW1M119 0104f670
	void SetGameAngle(uint16_t angle);
	// BW1W120 0060f760 BW1M119 013c9790
	void SetToZero();
};

template <bool clockwise> struct MobileWallHug_InCircleStuff
{
	// Static methods

	// BW1W120 00614c40 BW1M119 0105d420
	// BW1W120 006159f0 BW1M119 0105c120
	static uint32_t MoveToCircleHugCircleSquareSweep(MobileWallHug* mwh, const MapCoords& coords);
	// BW1W120 inlined BW1M119 01035a00
	// BW1W120 inlined BW1M119 01034cb0
	static int MoveToCircleHugCircle(MobileWallHug* mwh)
	{
		// The speed (whole map units) over the radius (metres) gives the turn in radians;
		// 2048 game angle units make a full turn.
		float speed = mwh->speed;
		if (clockwise)
		{
			mwh->InitStepsXZSetAngle((mwh->GameAngle -
			                          (uint16_t)(speed / mwh->circle_hug_info.GetObjectPtr()->radius * 2048.0f /
			                                     (2.0f * 3.1415927f) / ((float)0x10000 / 10.0f)) -
			                          1) &
			                         0x7ff);
		}
		else
		{
			mwh->InitStepsXZSetAngle((mwh->GameAngle +
			                          (uint16_t)(speed / mwh->circle_hug_info.GetObjectPtr()->radius * 2048.0f /
			                                     (2.0f * 3.1415927f) / ((float)0x10000 / 10.0f)) +
			                          1) &
			                         0x7ff);
		}
		MapCoords next(mwh->Pos.x + mwh->step.x, mwh->Pos.z + mwh->step.z, mwh->Pos.Altitude());
		if (next.MapX() != mwh->Pos.MapX() || next.MapZ() != mwh->Pos.MapZ())
		{
			MoveToCircleHugCircleSquareSweep(mwh, next);
		}
		if (mwh->circle_hug_info.TurnsToObj != 0xff && mwh->circle_hug_info.TurnsToObj-- == 0)
		{
			MoveToCircleHugCircleSquareSweep(mwh, next);
			return mwh->MoveMapObject(next);
		}
		return mwh->MoveMapObject(next);
	}
};

struct SubCollideBlockPos
{
	uint16_t x; /* 0x0 */
	uint16_t z;

	// Non-virtual methods

	// BW1W120 0060c3f0 BW1M119 inlined
	bool operator<(const SubCollideBlockPos& other) const
	{
		if (x < other.x)
			return true;
		if (x > other.x)
			return false;
		return z < other.z;
	}
	// BW1W120 007370b0 BW1M119 010818b0
	static SubCollideBlockPos MakeSubCollideBlockPos(MapCoords& coords);
};

struct CircleHugStateInfoT
{
	struct performance
	{
		int   count; /* 0x0 */
		float dist;

		// Non-virtual methods

		// BW1W120 inlined BW1M119 013cd990
		bool operator<(const performance& other)
		{
			if (count > other.count)
				return true;
			if (count < other.count)
				return false;
			return dist < other.dist;
		}
	};

	std::map<MobileWallHug*, uint32_t>                    ExtendedEntryDistances;
	std::map<NewCollide::Obj*, std::set<MobileWallHug*> > ObjToMwh; /* 0x10 */
	std::set<MobileWallHug*>                              PendingLookahead;
	std::set<MobileWallHug*>                              CompletedLookahead;
	bool                                                  EvaluatingLookahead;
	std::map<SubCollideBlockPos, NewCollide::Obj*>        LandscapeBlockers;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CircleHugStateInfoT();

	// Destructors

	// BW1W120 inlined BW1M119 013d4320
	~CircleHugStateInfoT()
	{
		while (LandscapeBlockers.size() != 0)
		{
			std::map<SubCollideBlockPos, NewCollide::Obj*>::iterator it = LandscapeBlockers.begin();
			delete (*it).second;
			LandscapeBlockers.erase(it);
		}
	}

	// Static methods

	// BW1W120 0060a670 BW1M119 013cc8a0
	static void OnDeletionOfNewcollideObjHandler(NewCollide::Obj* obj);

	// Non-virtual methods

	// BW1W120 0060a680 BW1M119 013cc5d0
	void OnDeletionOfNewcollideObj(NewCollide::Obj* obj);
	// BW1W120 0060d410 BW1M119 010954c0
	NewCollide::Obj* fetch(MapCoords coords);
	// BW1W120 00609d50 BW1M119 013cdab0
	performance evaluate(MobileWallHug* mwh, bool swapped);
	// BW1W120 0060a0b0 BW1M119 013cd3b0
	void swap(MobileWallHug& mwh);
	// BW1W120 0060a030 BW1M119 013cde50
	void swapDirection(MobileWallHug& mwh);
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
// BW1W120 0060a400 BW1M119 013ccc90
void ResetBlockersForClearMap();

#endif /* BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H */
