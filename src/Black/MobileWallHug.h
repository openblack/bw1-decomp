#ifndef BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H
#define BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, int8_t, uint16_t, uint32_t, uint8_t */

#include <map>
#include <set>

#include "Collide.h" /* For struct CircleHugInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h" /* For struct MapCoords */
#include "Mobile.h" /* For struct Mobile, struct MobileVftable */
#include "Object.h" /* For struct Object */

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
  int x;  /* 0x0 */
  float altitude;
  int z;
};

class MobileWallHug : public Mobile
{
public:
    int16_t turns_until_next_state_change; /* 0x58 */
    uint16_t speed;
    uint16_t game_angle;
    uint8_t move_state;
    Object* target; /* 0x60 */
    GMoveBy step;
    CircleHugInfo circle_hug_info; /* 0x70 */
    int8_t field_0x78;
    GFootpath* footpath;
    MapCoords goal; /* 0x80 */

    // Override methods

    // win1.41 00474910 mac 103c19a0 MobileWallHug::_dt(void)
    virtual ~MobileWallHug();
    // win1.41 0060c740 mac 103c23a0 MobileWallHug::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0060c420 mac 103c28c0 MobileWallHug::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0060c070 mac 100321c0 MobileWallHug::GetSpeedInMetres( const(void))
    virtual float GetSpeedInMetres();
    // win1.41 0060c080 mac 103c3320 MobileWallHug::SetSpeedInMetres(float, int)
    virtual void SetSpeedInMetres(float param_1, int param_2);
    // win1.41 0060c0b0 mac 103c32b0 MobileWallHug::GetRunningSpeedInMetres(void)
    virtual float GetRunningSpeedInMetres();
    // win1.41 0060c0d0 mac 103c3240 MobileWallHug::GetDefaultSpeedInMetres(void)
    virtual float GetDefaultSpeedInMetres();
    // win1.41 0060c0f0 mac 103c31d0 MobileWallHug::GetSpeedInMetresPerSecond( const(void))
    virtual float GetSpeedInMetresPerSecond();
    // win1.41 0060c140 mac 103c30c0 MobileWallHug::GetRunningSpeedInMetresPerSecond(void)
    virtual float GetRunningSpeedInMetresPerSecond();
    // win1.41 0060c160 mac 103c3040 MobileWallHug::GetDefaultSpeedInMetresPerSecond(void)
    virtual float GetDefaultSpeedInMetresPerSecond();
    // win1.41 0060c040 mac 103c3450 MobileWallHug::GetMovementDirection(LHPoint *)
    virtual void GetMovementDirection(LHPoint* param_1);
    // win1.41 00416f80 mac 1002c440 MobileWallHug::IsMobileWallHug( const(void))
    virtual uint32_t IsMobileWallHug();
    // win1.41 0060c020 mac 103c3520 MobileWallHug::GetFacingDirection(void)
    virtual float GetFacingDirection();
    // win1.41 0060dac0 mac 103c1a50 MobileWallHug::SetYAngle(float)
    virtual void SetYAngle(float param_1);
    // win1.41 0060ad60 mac 1004abe0 MobileWallHug::AreWeThere(MapCoords const &, float)
    virtual bool AreWeThere(const MapCoords* param_1, float param_2);
    // win1.41 00416f70 mac 100482a0 MobileWallHug::GetDestPos(void)
    virtual MapCoords* GetDestPos();
    // win1.41 0060fc50 mac 10084230 MobileWallHug::SetSpeed(long)
    virtual void SetSpeed(int param_1);
    // win1.41 00473e40 mac 10079ab0 MobileWallHug::SetTowardsAngle(unsigned short)
    virtual void SetTowardsAngle(uint16_t param_1);
    // win1.41 0060aee0 mac 103c3b10 MobileWallHug::MoveTo3D(void)
    virtual void MoveTo3D();
    // win1.41 0060bc40 mac 103c3780 MobileWallHug::SetNewWander(MapCoords const &, long, long)
    virtual void SetNewWander(const MapCoords* param_1, int param_2, int param_3);

    // Constructors

    // win1.41 inlined mac inlined MobileWallHug::MobileWallHug(MapCoords const &, GMobileWallHugInfo const *)
    MobileWallHug(MapCoords* coords, GMobileWallHugInfo* info);
    // win1.41 00474890 mac 101e0bb0 MobileWallHug::MobileWallHug(void)
    MobileWallHug();

    // Non-virtual methods

    // win1.41 00609d10 mac inlined MobileWallHug::RebuildMoveByStep(void)
    void RebuildMoveByStep();
    // win1.41 0060abc0 mac 1001c770 MobileWallHug::SetupMobileMoveToPos(MapCoords const &, MOVE_TO_STATES)
    void SetupMobileMoveToPos(const MapCoords* coords, MOVE_TO_STATES move_to_state);
    // win1.41 0060acd0 mac 103c3ee0 MobileWallHug::SetupMobileMoveToObject(Object *)
    void SetupMobileMoveToObject(Object* param_1);
    // win1.41 0060ad40 mac 1005f4a0 MobileWallHug::AreWeThere(float)
    bool AreWeThere(float param_1);
    // win1.41 0060af20 mac 10047250 MobileWallHug::MoveTo(void)
    int MoveTo();
    // win1.41 0060bfa0 mac 103c3600 MobileWallHug::InitStepsXZ(void)
    void InitStepsXZ();
    // win1.41 0060ca50 mac 10076600 MobileWallHug::MoveToCircleHugLinearSquareSweep(MapCoords const &)
    uint32_t MoveToCircleHugLinearSquareSweep(MapCoords* dest);
    // win1.41 0060d800 mac 100382d0 MobileWallHug::MoveToCircleHug(void)
    int MoveToCircleHug();
    // win1.41 0060da90 mac 1004cce0 MobileWallHug::SetGameAngle(unsigned short)
    void SetGameAngle(uint16_t angle);
    // win1.41 0060f760 mac 103c1910 MobileWallHug::SetToZero(void)
    void SetToZero();
};

struct SubCollideBlockPos
{
    uint16_t x; /* 0x0 */
    uint16_t z;

    // Non-virtual methods

    // win1.41 inlined mac inlined SubCollideBlockPos::operator<( const(SubCollideBlockPos const &))
    bool operator<(const SubCollideBlockPos& other) const;
};

struct CircleHugStateInfoT
{
    std::map<MobileWallHug*, uint32_t> field_0x0;
    std::map<NewCollide::Obj*, std::set<MobileWallHug*>*> obj_to_mwh; /* 0x10 */
    std::set<MobileWallHug*> field_0x20;
    std::set<MobileWallHug*> field_0x30;
    bool field_0x40;
    uint8_t field_0x41[0x3];
    std::map<SubCollideBlockPos, NewCollide::Obj*> field_0x44;

    // Non-virtual methods

    // win1.41 0060d410 mac 10093270 CircleHugStateInfoT::fetch(MapCoords)
    NewCollide::Obj* fetch(MapCoords coords);
};

struct LinearSquareSweepStruct
{
    float dpmr; /* 0x0 */
    float dot_product;
    float dp2pr2ml2;
    NewCollide::Obj* obj;

    // Non-virtual methods

    // win1.41 inlined mac inlined LinearSquareSweepStruct::Reset(void) Guessed
    void Reset();
    // win1.41 inlined mac inlined LinearSquareSweepStruct::operator<(LinearSquareSweepStruct *) Guessed
    bool operator<(LinearSquareSweepStruct* other);
};

#endif /* BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H */
