#ifndef BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H
#define BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int16_t, int8_t, uint16_t, uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Collide.h" /* For struct CircleHugInfo */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "MapCoords.h" /* For struct MapCoords */
#include "Mobile.h" /* For struct Mobile, struct MobileVftable */
#include "Object.h" /* For struct Object */

// Forward Declares

struct Base;
struct GFootpath;
struct GMobileWallHugInfo;
struct GameOSFile;
struct GameThing;
struct GameThingVftable;
struct GameThingWithPosVftable;
struct LHPoint;
struct MobileWallHug;
struct ObjectVftable;
struct Q210NewCollide3Obj;

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
static_assert(sizeof(enum MOVE_TO_STATES) == 0x4, "Data type is of wrong size");

static const char* MOVE_TO_STATES_strs[_MOVE_TO_STATES_COUNT] = {
  "MOVE_TO_STATES_0x0",
  "MOVE_TO_STATES_ARRIVED",
  "MOVE_TO_STATES_0x2",
  "MOVE_TO_STATES_0x3",
  "MOVE_TO_STATES_FINAL_STEP",
  "MOVE_TO_STATES_0x5",
  "MOVE_TO_STATES_0x6",
  "MOVE_TO_STATES_0x7",
  "MOVE_TO_STATES_0x8",
  "MOVE_TO_STATES_0x9",
  "MOVE_TO_STATES_0xa",
  "MOVE_TO_STATES_STEP_THROUGH",
  "MOVE_TO_STATES_LINEAR",
  "MOVE_TO_STATES_LINEAR_CW",
  "MOVE_TO_STATES_LINEAR_CCW",
  "MOVE_TO_STATES_ORBIT_CW",
  "MOVE_TO_STATES_ORBIT_CCW",
  "MOVE_TO_STATES_EXIT_CIRCLE_CCW",
  "MOVE_TO_STATES_EXIT_CIRCLE_CW",
};

struct GMoveBy
{
  int x;  /* 0x0 */
  float altitude;
  int z;
};
static_assert(sizeof(struct GMoveBy) == 0xc, "Data type is of wrong size");

struct MobileWallHugVftable
{
  struct MobileVftable super;  /* 0x0 */
  bool (__fastcall* AreWeThere)(struct MobileWallHug* this, const void* edx, const struct MapCoords* param_1, float param_2);  /* 0x85c */
  struct MapCoords* (__fastcall* GetDestPos)(struct MobileWallHug* this);  /* 0x860 */
  void (__fastcall* SetSpeed)(struct MobileWallHug* this, const void* edx, int speed);
  void (__fastcall* SetTowardsAngle)(struct MobileWallHug* this, const void* edx, uint16_t angle);
  void (__fastcall* MoveTo3D)(struct MobileWallHug* this);
  void (__fastcall* SetNewWander)(struct MobileWallHug* this, const void* edx, const struct MapCoords* param_1, int param_2, int param_3);  /* 0x870 */
};
static_assert(sizeof(struct MobileWallHugVftable) == 0x874, "Data type is of wrong size");

union MobileWallHugBase
{
  struct Mobile super;
  struct Object super_object;
  struct GameThingWithPos super_gamethingwithpos;
  struct MobileWallHugVftable* mobileWallHug_vftable;
  struct ObjectVftable* vftable_object;
  struct GameThingWithPosVftable* vftable_gameThingWithPos;
  struct GameThingVftable* gameThing_vftable;
};
static_assert(sizeof(union MobileWallHugBase) == 0x58, "Data type is of wrong size");

struct MobileWallHug
{
  union MobileWallHugBase base;  /* 0x0 */
  int16_t turns_until_next_state_change;  /* 0x58 */
  uint16_t speed;
  uint16_t game_angle;
  uint8_t move_state;
  struct Object* target;  /* 0x60 */
  struct GMoveBy step;
  struct CircleHugInfo circle_hug_info;  /* 0x70 */
  int8_t field_0x78;
  struct GFootpath* footpath;
  struct MapCoords goal;  /* 0x80 */
};
static_assert(sizeof(struct MobileWallHug) == 0x8c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8dc8 mac inlined MobileWallHug::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13MobileWallHug asm("??_R0?AVMobileWallHug@@@8");
// win1.41 009a6c00 mac inlined MobileWallHug::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13MobileWallHug asm("??_R1A@?0A@A@MobileWallHug@@8");
// win1.41 009a9640 mac inlined MobileWallHug::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13MobileWallHug asm("??_R2MobileWallHug@@8");
// win1.41 009a9660 mac inlined MobileWallHug::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13MobileWallHug asm("??_R3MobileWallHug@@8");
// win1.41 008cded4 mac 10732c5c MobileWallHug::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__13MobileWallHug asm("??_R4MobileWallHug@@6B@");
// win1.41 008cded8 mac 10732c8c MobileWallHug::`vftable'
extern const struct MobileWallHugVftable __vt__13MobileWallHug asm("??_7MobileWallHug@@6B@");

// Constructors

// win1.41 inlined mac inlined MobileWallHug::MobileWallHug(MapCoords const &, GMobileWallHugInfo const *)
struct MobileWallHug* __fastcall __ct__13MobileWallHugFRC9MapCoordsPC18GMobileWallHugInfo(struct MobileWallHug* this, const void* edx, struct MapCoords* coords, struct GMobileWallHugInfo* info) asm("??0MobileWallHug@@QAE@ABUMapCoords@@PBVGMobileWallHugInfo@@@Z");
// win1.41 00474890 mac 101e0bb0 MobileWallHug::MobileWallHug(void)
struct MobileWallHug* __fastcall __ct__13MobileWallHugFv(struct MobileWallHug* this) asm("??0MobileWallHug@@QAE@XZ");

// Non-virtual methods

// win1.41 00609d10 mac inlined MobileWallHug::RebuildMoveByStep(void)
void __fastcall RebuildMoveByStep__13MobileWallHugFv(struct MobileWallHug* this) asm("?RebuildMoveByStep@MobileWallHug@@QAEXXZ");
// win1.41 0060abc0 mac 1001c770 MobileWallHug::SetupMobileMoveToPos(MapCoords const &, MOVE_TO_STATES)
void __fastcall SetupMobileMoveToPos__13MobileWallHugFRC9MapCoords14MOVE_TO_STATES(struct MobileWallHug* this, const void* edx, const struct MapCoords* coords, enum MOVE_TO_STATES move_to_state) asm("?SetupMobileMoveToPos@MobileWallHug@@QAEXABUMapCoords@@W4MOVE_TO_STATES@@@Z");
// win1.41 0060acd0 mac 103c3ee0 MobileWallHug::SetupMobileMoveToObject(Object *)
void __fastcall SetupMobileMoveToObject__13MobileWallHugFP6Object(struct MobileWallHug* this, const void* edx, struct Object* param_1) asm("?SetupMobileMoveToObject@MobileWallHug@@QAEXPAVObject@@@Z");
// win1.41 0060ad40 mac 1005f4a0 MobileWallHug::AreWeThere(float)
bool __fastcall AreWeThere__13MobileWallHugFf(struct MobileWallHug* this, const void* edx, float param_1) asm("?AreWeThere@MobileWallHug@@QAE_NM@Z");
// win1.41 0060af20 mac 10047250 MobileWallHug::MoveTo(void)
int __fastcall MoveTo__13MobileWallHugFv(struct MobileWallHug* this) asm("?MoveTo@MobileWallHug@@QAEHXZ");
// win1.41 0060bfa0 mac 103c3600 MobileWallHug::InitStepsXZ(void)
void __fastcall InitStepsXZ__13MobileWallHugFv(struct MobileWallHug* this) asm("?InitStepsXZ@MobileWallHug@@QAEXXZ");
// win1.41 0060ca50 mac 10076600 MobileWallHug::MoveToCircleHugLinearSquareSweep(MapCoords const &)
uint32_t __fastcall MoveToCircleHugLinearSquareSweep__13MobileWallHugFRC9MapCoords(struct MobileWallHug* this, const void* edx, struct MapCoords* dest) asm("?MoveToCircleHugLinearSquareSweep@MobileWallHug@@QAEIABUMapCoords@@@Z");
// win1.41 0060d800 mac 100382d0 MobileWallHug::MoveToCircleHug(void)
int __fastcall MoveToCircleHug__13MobileWallHugFv(struct MobileWallHug* this) asm("?MoveToCircleHug@MobileWallHug@@QAEHXZ");
// win1.41 0060da90 mac 1004cce0 MobileWallHug::SetGameAngle(unsigned short)
void __fastcall SetGameAngle__13MobileWallHugFUs(struct MobileWallHug* this, const void* edx, uint16_t angle) asm("?SetGameAngle@MobileWallHug@@QAEXG@Z");
// win1.41 0060f760 mac 103c1910 MobileWallHug::SetToZero(void)
void __fastcall SetToZero__13MobileWallHugFv(struct MobileWallHug* this) asm("?SetToZero@MobileWallHug@@QAEXXZ");

// Override methods

// win1.41 00474910 mac 103c19a0 MobileWallHug::_dt(void)
void __fastcall __dt__13MobileWallHugFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GMobileWallHug@@UAEPAXI@Z");
// win1.41 0060c740 mac 103c23a0 MobileWallHug::Load(GameOSFile &)
uint32_t __fastcall Load__13MobileWallHugFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Load@MobileWallHug@@UAEIAAVGameOSFile@@@Z");
// win1.41 0060c420 mac 103c28c0 MobileWallHug::Save(GameOSFile &)
uint32_t __fastcall Save__13MobileWallHugFR10GameOSFile(struct GameThing* this, const void* edx, struct GameOSFile* param_1) asm("?Save@MobileWallHug@@UAEIAAVGameOSFile@@@Z");
// win1.41 0060c070 mac 100321c0 MobileWallHug::GetSpeedInMetres( const(void))
float __fastcall GetSpeedInMetres__13MobileWallHugCFv(const struct GameThingWithPos* this) asm("?GetSpeedInMetres@MobileWallHug@@UBEMXZ");
// win1.41 0060c080 mac 103c3320 MobileWallHug::SetSpeedInMetres(float, int)
void __fastcall SetSpeedInMetres__13MobileWallHugFfi(struct GameThingWithPos* this, const void* edx, float param_1, int param_2) asm("?SetSpeedInMetres@MobileWallHug@@UAEXMH@Z");
// win1.41 0060c0b0 mac 103c32b0 MobileWallHug::GetRunningSpeedInMetres(void)
float __fastcall GetRunningSpeedInMetres__13MobileWallHugFv(struct GameThingWithPos* this) asm("?GetRunningSpeedInMetres@MobileWallHug@@UAEMXZ");
// win1.41 0060c0d0 mac 103c3240 MobileWallHug::GetDefaultSpeedInMetres(void)
float __fastcall GetDefaultSpeedInMetres__13MobileWallHugFv(struct GameThingWithPos* this) asm("?GetDefaultSpeedInMetres@MobileWallHug@@UAEMXZ");
// win1.41 0060c0f0 mac 103c31d0 MobileWallHug::GetSpeedInMetresPerSecond( const(void))
float __fastcall GetSpeedInMetresPerSecond__13MobileWallHugCFv(const struct GameThingWithPos* this) asm("?GetSpeedInMetresPerSecond@MobileWallHug@@UBEMXZ");
// win1.41 0060c140 mac 103c30c0 MobileWallHug::GetRunningSpeedInMetresPerSecond(void)
float __fastcall GetRunningSpeedInMetresPerSecond__13MobileWallHugFv(struct GameThingWithPos* this) asm("?GetRunningSpeedInMetresPerSecond@MobileWallHug@@UAEMXZ");
// win1.41 0060c160 mac 103c3040 MobileWallHug::GetDefaultSpeedInMetresPerSecond(void)
float __fastcall GetDefaultSpeedInMetresPerSecond__13MobileWallHugFv(struct GameThingWithPos* this) asm("?GetDefaultSpeedInMetresPerSecond@MobileWallHug@@UAEMXZ");
// win1.41 0060c040 mac 103c3450 MobileWallHug::GetMovementDirection(LHPoint *)
void __fastcall GetMovementDirection__13MobileWallHugFP7LHPoint(struct GameThingWithPos* this, const void* edx, struct LHPoint* param_1) asm("?GetMovementDirection@MobileWallHug@@UAEXPAULHPoint@@@Z");
// win1.41 00416f80 mac 1002c440 MobileWallHug::IsMobileWallHug( const(void))
uint32_t __fastcall IsMobileWallHug__13MobileWallHugCFv(const struct GameThingWithPos* this) asm("?IsMobileWallHug@MobileWallHug@@UBEIXZ");
// win1.41 0060c020 mac 103c3520 MobileWallHug::GetFacingDirection(void)
float __fastcall GetFacingDirection__13MobileWallHugFv(struct GameThingWithPos* this) asm("?GetFacingDirection@MobileWallHug@@UAEMXZ");
// win1.41 0060dac0 mac 103c1a50 MobileWallHug::SetYAngle(float)
void __fastcall SetYAngle__13MobileWallHugFf(struct Object* this, const void* edx, float param_1) asm("?SetYAngle@MobileWallHug@@UAEXM@Z");
// win1.41 0060ad60 mac 1004abe0 MobileWallHug::AreWeThere(MapCoords const &, float)
bool __fastcall AreWeThere__13MobileWallHugFRC9MapCoordsf(struct MobileWallHug* this, const void* edx, const struct MapCoords* param_1, float param_2) asm("?AreWeThere@MobileWallHug@@UAE_NABUMapCoords@@M@Z");
// win1.41 00416f70 mac 100482a0 MobileWallHug::GetDestPos(void)
struct MapCoords* __fastcall GetDestPos__13MobileWallHugFv(struct MobileWallHug* this) asm("?GetDestPos@MobileWallHug@@UAEPAUMapCoords@@XZ");
// win1.41 0060fc50 mac 10084230 MobileWallHug::SetSpeed(long)
void __fastcall SetSpeed__13MobileWallHugFl(struct MobileWallHug* this, const void* edx, int param_1) asm("?SetSpeed@MobileWallHug@@UAEXH@Z");
// win1.41 00473e40 mac 10079ab0 MobileWallHug::SetTowardsAngle(unsigned short)
void __fastcall SetTowardsAngle__13MobileWallHugFUs(struct MobileWallHug* this, const void* edx, uint16_t param_1) asm("?SetTowardsAngle@MobileWallHug@@UAEXG@Z");
// win1.41 0060aee0 mac 103c3b10 MobileWallHug::MoveTo3D(void)
void __fastcall MoveTo3D__13MobileWallHugFv(struct MobileWallHug* this) asm("?MoveTo3D@MobileWallHug@@UAEXXZ");
// win1.41 0060bc40 mac 103c3780 MobileWallHug::SetNewWander(MapCoords const &, long, long)
void __fastcall SetNewWander__13MobileWallHugFRC9MapCoordsll(struct MobileWallHug* this, const void* edx, const struct MapCoords* param_1, int param_2, int param_3) asm("?SetNewWander@MobileWallHug@@UAEXABUMapCoords@@HH@Z");

struct std__pair__pMobileWallHug__ulong
{
  struct MobileWallHug* first;  /* 0x0 */
  uint32_t second;
};
static_assert(sizeof(struct std__pair__pMobileWallHug__ulong) == 0x8, "Data type is of wrong size");

struct std__map__pMobileWallHug__ulong_node
{
  struct std__map__pMobileWallHug__ulong_node* field_0x0;
  struct std__map__pMobileWallHug__ulong_node* field_0x4;
  struct std__map__pMobileWallHug__ulong_node* field_0x8;
  struct std__pair__pMobileWallHug__ulong payload;
  uint32_t field_last;  /* 0x14 */
};
static_assert(sizeof(struct std__map__pMobileWallHug__ulong_node) == 0x18, "Data type is of wrong size");

struct std__map__pMobileWallHug__ulong_node_list
{
  struct std__map__pMobileWallHug__ulong_node* head;  /* 0x0 */
  uint32_t count;
};
static_assert(sizeof(struct std__map__pMobileWallHug__ulong_node_list) == 0x8, "Data type is of wrong size");

struct std__map__pMobileWallHug__ulong
{
  uint32_t field_0x0;
  struct std__map__pMobileWallHug__ulong_node* head;
  uint32_t field_0x8;
  int count;
};
static_assert(sizeof(struct std__map__pMobileWallHug__ulong) == 0x10, "Data type is of wrong size");

struct std__set__pMobileWallHug_node
{
  struct std__set__pMobileWallHug_node* field_0x0;
  struct std__set__pMobileWallHug_node* field_0x4;
  struct std__set__pMobileWallHug_node* field_0x8;
  struct MobileWallHug* payload;
  uint32_t field_last;  /* 0x10 */
};
static_assert(sizeof(struct std__set__pMobileWallHug_node) == 0x14, "Data type is of wrong size");

struct std__set__pMobileWallHug_node_list
{
  struct std__set__pMobileWallHug_node* head;  /* 0x0 */
  uint32_t count;
};
static_assert(sizeof(struct std__set__pMobileWallHug_node_list) == 0x8, "Data type is of wrong size");

struct std__set__pMobileWallHug
{
  uint32_t field_0x0;
  struct std__set__pMobileWallHug_node* head;
  uint32_t field_0x8;
  int count;
};
static_assert(sizeof(struct std__set__pMobileWallHug) == 0x10, "Data type is of wrong size");

struct std__pair__pQ210NewCollide3Obj__std__set__pMobileWallHug
{
  struct Q210NewCollide3Obj* first;  /* 0x0 */
  struct std__set__pMobileWallHug second;
};
static_assert(sizeof(struct std__pair__pQ210NewCollide3Obj__std__set__pMobileWallHug) == 0x14, "Data type is of wrong size");

struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_iterator
{
  struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_iterator* field_0x0;
  struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_iterator* field_0x4;
  struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_iterator* field_0x8;
  struct std__pair__pQ210NewCollide3Obj__std__set__pMobileWallHug payload;
  uint32_t field_last;  /* 0x20 */
};
static_assert(sizeof(struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_iterator) == 0x24, "Data type is of wrong size");

struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_node_list
{
  struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_iterator* head;  /* 0x0 */
  uint32_t count;
};
static_assert(sizeof(struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_node_list) == 0x8, "Data type is of wrong size");

struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug
{
  uint32_t field_0x0;
  struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_iterator* head;
  uint32_t field_0x8;
  int count;
};
static_assert(sizeof(struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug) == 0x10, "Data type is of wrong size");

struct SubCollideBlockPos
{
  uint16_t x;  /* 0x0 */
  uint16_t z;
};
static_assert(sizeof(struct SubCollideBlockPos) == 0x4, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac inlined SubCollideBlockPos::operator<( const(SubCollideBlockPos const &))
bool __fastcall __lt__18SubCollideBlockPosCFRC18SubCollideBlockPos(const struct SubCollideBlockPos* this, const void* edx, const struct SubCollideBlockPos* other) asm("?__lt@SubCollideBlockPos@@QBE_NABV1@@Z");

struct std__map__SubCollideBlockPosPNewCollide3Obj_iterator
{
  struct std__map__SubCollideBlockPosPNewCollide3Obj_iterator* field_0x0;
  struct std__map__SubCollideBlockPosPNewCollide3Obj_iterator* field_0x4;
  struct std__map__SubCollideBlockPosPNewCollide3Obj_iterator* field_0x8;
  struct SubCollideBlockPos key;
  struct Q210NewCollide3Obj* value;  /* 0x10 */
  uint32_t field_last;
};
static_assert(sizeof(struct std__map__SubCollideBlockPosPNewCollide3Obj_iterator) == 0x18, "Data type is of wrong size");

struct CircleHugStateInfo_field_0x44_node_list
{
  struct std__map__SubCollideBlockPosPNewCollide3Obj_iterator* head;  /* 0x0 */
  uint32_t count;
};
static_assert(sizeof(struct CircleHugStateInfo_field_0x44_node_list) == 0x8, "Data type is of wrong size");

struct std__map__SubCollideBlockPosPNewCollide3Obj
{
  float field_0x0;
  struct std__map__SubCollideBlockPosPNewCollide3Obj_iterator* head;
  float field_0x8;
  int count;
};
static_assert(sizeof(struct std__map__SubCollideBlockPosPNewCollide3Obj) == 0x10, "Data type is of wrong size");

struct CircleHugStateInfoT
{
  struct std__map__pMobileWallHug__ulong field_0x0;
  struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug obj_to_mwh;  /* 0x10 */
  struct std__set__pMobileWallHug field_0x20;
  struct std__set__pMobileWallHug field_0x30;
  bool field_0x40;
  uint8_t field_0x41[0x3];
  struct std__map__SubCollideBlockPosPNewCollide3Obj field_0x44;
};
static_assert(sizeof(struct CircleHugStateInfoT) == 0x54, "Data type is of wrong size");

// Non-virtual methods

// win1.41 0060d410 mac 10093270 CircleHugStateInfoT::fetch(MapCoords)
struct Q210NewCollide3Obj* __fastcall fetch__19CircleHugStateInfoTF9MapCoords(struct CircleHugStateInfoT* this, const void* edx, struct MapCoords coords) asm("?fetch@CircleHugStateInfoT@@QAEPAUQ210NewCollide3Obj@@UMapCoords@@@Z");

struct LinearSquareSweepStruct
{
  float dpmr;  /* 0x0 */
  float dot_product;
  float dp2pr2ml2;
  struct Q210NewCollide3Obj* obj;
};
static_assert(sizeof(struct LinearSquareSweepStruct) == 0x10, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac inlined LinearSquareSweepStruct::Reset(void) Guessed
void __fastcall Reset__23LinearSquareSweepStructFv(struct LinearSquareSweepStruct* this) asm("?Reset@LinearSquareSweepStruct@@QAEXXZ");
// win1.41 inlined mac inlined LinearSquareSweepStruct::operator<(LinearSquareSweepStruct *) Guessed
bool __fastcall __lt__23LinearSquareSweepStructFP23LinearSquareSweepStruct(struct LinearSquareSweepStruct* this, const void* edx, struct LinearSquareSweepStruct* other) asm("?__lt@LinearSquareSweepStruct@@QAE_NPAV1@@Z");

// win1.41 006111b0 mac 103c6e50 std::map<NewCollide::Obj*, std::set<MobileWallHug*>>::find(NewCollide::Obj**)
void __fastcall find__std__map_pNewCollide_Obj_std_set_pMobileWallHug__FRCPQ210NewCollide3Obj(struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug* this, const void* edx, struct std__map__pQ210NewCollide3Obj__std__set__pMobileWallHug_iterator** result, struct Q210NewCollide3Obj** key);
// win1.41 00613a70 mac 103c7480 std::map<SubCollideBlockPos, NewCollide3Obj*>::find
void __fastcall find__std__map__SubCollideBlockPosPNewCollide3Obj(const struct std__map__SubCollideBlockPosPNewCollide3Obj* this, const void* edx, struct std__map__SubCollideBlockPosPNewCollide3Obj_iterator** iterator, const struct SubCollideBlockPos* key);
// win1.41 00613830 mac 103c71c0 std::map<SubCollideBlockPos, NewCollide3Obj*>::find_or_insert
void __fastcall find_or_insert__std__map__SubCollideBlockPosPNewCollide3Obj(const struct std__map__SubCollideBlockPosPNewCollide3Obj* this, const void* edx, struct std__map__SubCollideBlockPosPNewCollide3Obj_iterator** iterator, const struct SubCollideBlockPos* key);
// win1.41 inlined mac inlined MobileWallHug_InCircleStuff<clockwise>::MoveToCircleHugCircleSquareSweep(MobileWallHug*, const MapCoords&)
uint32_t __cdecl MoveToCircleHugCircleSquareSweep__30MobileWallHug_InCircleStuff_clockwise_FP13MobileWallHugRC9MapCoords(struct MobileWallHug* this, const struct MapCoords* dest, bool clockwise);
// win1.41 00614c40 mac 1005a760 MobileWallHug_InCircleStuff<0>::MoveToCircleHugCircleSquareSweep(MobileWallHug *, MapCoords const &)
uint32_t __cdecl MoveToCircleHugCircleSquareSweep__30MobileWallHug_InCircleStuff_0_FP13MobileWallHugRC9MapCoords(struct MobileWallHug* param_1, const struct MapCoords* param_2) asm("?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_0_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z");
// win1.41 006159f0 mac 10059450 MobileWallHug_InCircleStuff<1>::MoveToCircleHugCircleSquareSweep(MobileWallHug *, MapCoords const &)
uint32_t __cdecl MoveToCircleHugCircleSquareSweep__30MobileWallHug_InCircleStuff_1_FP13MobileWallHugRC9MapCoords(struct MobileWallHug* param_1, const struct MapCoords* param_2) asm("?MoveToCircleHugCircleSquareSweep@MobileWallHug_InCircleStuff_1_@@SAIPAVMobileWallHug@@ABUMapCoords@@@Z");
// win1.41 00613790 mac inlined FUN_00613790
void __fastcall FUN_00613790(struct std__set__pMobileWallHug_node** this);
// win1.41 00609a50 mac 10013020 DoWallHuggerLookahead(void)
void __cdecl DoWallHuggerLookahead__Fv(void);
// win1.41 006097c0 mac 103cb690 __sinit_MobileWallHug_cpp
void __fastcall __sinit_MobileWallHug_cpp(void* this);

#endif /* BW1_DECOMP_MOBILE_WALL_HUG_INCLUDED_H */
