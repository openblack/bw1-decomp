#ifndef BW1_DECOMP_COLLIDE_INCLUDED_H
#define BW1_DECOMP_COLLIDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int16_t, uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint, struct Point2D */
#include <reversing_utils/re_common.h> /* For bool32_t */

// Forward Declares

struct Game3DObject;
struct LH3DObject;
struct MapCell;
struct MapCoords;
struct MobileWallHug;
struct NewCollide;
struct Object;
struct Q210NewCollide3Obj;

enum ObjectCircleIteratorDirection
{
  OBJECT_CIRCLE_ITERATOR_DIRECTION_SAME = 0x0,
  OBJECT_CIRCLE_ITERATOR_DIRECTION_RIGHT = 0x1,
  OBJECT_CIRCLE_ITERATOR_DIRECTION_LEFT = 0x2,
  OBJECT_CIRCLE_ITERATOR_DIRECTION_DOWN = 0x3,
  OBJECT_CIRCLE_ITERATOR_DIRECTION_UP = 0x4,
  OBJECT_CIRCLE_ITERATOR_DIRECTION_UP_LEFT = 0x5,
  OBJECT_CIRCLE_ITERATOR_DIRECTION_DOWN_LEFT = 0x6,
  OBJECT_CIRCLE_ITERATOR_DIRECTION_UP_RIGHT = 0x7,
  OBJECT_CIRCLE_ITERATOR_DIRECTION_DOWN_RIGHT = 0x8,
  OBJECT_CIRCLE_ITERATOR_DIRECTION_NONE = 0x9,
  _ObjectCircleIteratorDirection_COUNT = 0xa
};
static_assert(sizeof(enum ObjectCircleIteratorDirection) == 0x4, "Data type is of wrong size");

static const char* ObjectCircleIteratorDirection_strs[_ObjectCircleIteratorDirection_COUNT] = {
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_SAME",
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_RIGHT",
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_LEFT",
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_DOWN",
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_UP",
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_UP_LEFT",
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_DOWN_LEFT",
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_UP_RIGHT",
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_DOWN_RIGHT",
  "OBJECT_CIRCLE_ITERATOR_DIRECTION_NONE",
};

struct Point2DCompare
{
  struct Point2D point;  /* 0x0 */
  bool result;
};
static_assert(sizeof(struct Point2DCompare) == 0xc, "Data type is of wrong size");

// Non-virtual methods

// win1.41 0060f740 mac inlined Point2DCompare<0>::operator=(const Point2DCompare<0>*)
struct Point2DCompare* __fastcall __as__17Point2DCompare_0_(struct Point2DCompare* this, const void* edx, struct Point2DCompare* other) asm("?__as@Point2DCompare_0_@@QAEPAUPoint2DCompare@@XZ");
// win1.41 0060f720 mac inlined Point2DCompare<1>::operator=(const Point2DCompare<1>*)
struct Point2DCompare* __fastcall __as__17Point2DCompare_1_(struct Point2DCompare* this, const void* edx, struct Point2DCompare* other) asm("?__as@Point2DCompare_1_@@QAEPAUPoint2DCompare@@XZ");
// win1.41 006101f0 mac inlined Point2DCompare<0>::operator<(const Point2DCompare<0>*)
bool __fastcall __lt__17Point2DCompare_FRC17Point2DCompare_0_(struct Point2DCompare* this, const void* edx, struct Point2DCompare* other) asm("?__lt@Point2DCompare_0_@@QBE_NXZ");
// win1.41 00610180 mac inlined Point2DCompare<1>::operator<(const Point2DCompare<1>*)
bool __fastcall __lt__17Point2DCompare_FRC17Point2DCompare_1_(struct Point2DCompare* this, const void* edx, struct Point2DCompare* other) asm("?__lt@Point2DCompare_1_@@QBE_NXZ");
// win1.41 00610230 mac inlined Point2DCompare<0>::Resolve()
void __fastcall Resolve__Point2DCompare_0_(struct Point2DCompare* this);
// win1.41 006101c0 mac inlined Point2DCompare<1>::Resolve()
void __fastcall Resolve__Point2DCompare_1_(struct Point2DCompare* this);

struct IntersectIntervalCircle
{
  struct Point2DCompare compares[0x2];  /* 0x0 */
  float field_0x18;
  float field_0x1c;
  float field_0x20;
  bool field_0x24;
  struct Q210NewCollide3Obj* obj;
};
static_assert(sizeof(struct IntersectIntervalCircle) == 0x2c, "Data type is of wrong size");

// Non-virtual methods

// win1.41 006169f0 mac inlined IntersectIntervalCircle<0>::Resolve(void)
void __fastcall Resolve__26IntersectIntervalCircle_0_Fv(struct IntersectIntervalCircle* this) asm("?Resolve@IntersectIntervalCircle_0_@@QAEXXZ");
// win1.41 00616c70 mac inlined IntersectIntervalCircle<1>::Resolve(void)
void __fastcall Resolve__26IntersectIntervalCircle_1_Fv(struct IntersectIntervalCircle* this) asm("?Resolve@IntersectIntervalCircle_1_@@QAEXXZ");

struct CircleHugInfo
{
  struct Q210NewCollide3Obj* obj;  /* 0x0 */
  uint8_t turns_to_obj;
  uint8_t field_0x5;
  int16_t field_0x6;
};
static_assert(sizeof(struct CircleHugInfo) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 0060a640 mac 103c45d0 CircleHugInfo::CircleHugInfo(void)
struct CircleHugInfo* __fastcall __ct__13CircleHugInfoFv(struct CircleHugInfo* this) asm("??0CircleHugInfo@@QAE@XZ");

// Non-virtual methods

// win1.41 0060a660 mac 103c4590 CircleHugInfo::GetObjectPtr(void)
struct Q210NewCollide3Obj* __fastcall GetObjectPtr__13CircleHugInfoFv(struct CircleHugInfo* this) asm("?GetObjectPtr@CircleHugInfo@@QAEPAUQ210NewCollide3Obj@@XZ");
// win1.41 0060a770 mac 100260e0 CircleHugInfo::SetObjectPtr(NewCollide::Obj*, MobileWallHug*, bool)
void __fastcall SetObjectPtr__13CircleHugInfoFPQ210NewCollide3ObjP13MobileWallHugb(struct CircleHugInfo* this, const void* edx, struct Q210NewCollide3Obj* param_2, struct MobileWallHug* param_3, bool param_4);

struct Q210NewCollide4List
{
  uint32_t size;  /* 0x0 */
  enum ObjectCircleIteratorDirection direction;
  struct Q210NewCollide3Obj** objs;
};
static_assert(sizeof(struct Q210NewCollide4List) == 0xc, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac inlined NewCollide::List::Collide(NewCollide::List)
bool __fastcall Collide__Q210NewCollide4ListFPQ210NewCollide4List(const struct Q210NewCollide4List* this, const void* edx, const struct Q210NewCollide4List* other);

struct ObjectCircleIterator
{
  enum ObjectCircleIteratorDirection direction;  /* 0x0 */
  struct NewCollide* collide_data;
  struct Q210NewCollide3Obj* collide_obj;
  struct Object* obj;
};
static_assert(sizeof(struct ObjectCircleIterator) == 0x10, "Data type is of wrong size");

// Non-virtual methods

// win1.41 006159a0 mac 1005f630 ObjectCircleIterator::operator NewCollide::Obj
struct Q210NewCollide3Obj* __fastcall __opPQ210NewCollide3Obj__20ObjectCircleIteratorFv(struct ObjectCircleIterator* this) asm("?__opPQ210NewCollide3Obj@ObjectCircleIterator@@QAEPAUQ210NewCollide3Obj@@XZ");
// win1.41 0060d0a0 mac 100644a0 ObjectCircleIterator::Init(int, MapCoords const &)
void __fastcall Init__20ObjectCircleIteratorFiRC9MapCoords(struct ObjectCircleIterator* this, const void* edx, enum ObjectCircleIteratorDirection direction, const struct MapCoords* coords) asm("?Init@ObjectCircleIterator@@QAEXHABUMapCoords@@@Z");
// win1.41 0060d280 mac 100649d0 ObjectCircleIterator::Init(Object *, MapCoords const &)
void __fastcall Init__20ObjectCircleIteratorFP6ObjectRC9MapCoords(struct ObjectCircleIterator* this, const void* edx, struct Object* obj, const struct MapCoords* coords) asm("?Init@ObjectCircleIterator@@QAEXPAVObject@@ABUMapCoords@@@Z");

struct Q210NewCollide3Obj
{
  struct LHPoint position;  /* 0x0 */
  float radius;
  float r2;  /* 0x10 */
  float angle;
  struct LHPoint bounding_box;
  struct Q210NewCollide4List* iterator_list;  /* 0x24 */
};
static_assert(sizeof(struct Q210NewCollide3Obj) == 0x28, "Data type is of wrong size");

// Constructors

// win1.41 0082ad90 mac 1061bfd4 NewCollide::Obj::Obj(float, LHPoint*)
struct Q210NewCollide3Obj* __fastcall __ct__Q210NewCollide3ObjFfP7LHPoint(struct Q210NewCollide3Obj* this, const void* edx, float radius, struct LHPoint* position);
// win1.41 0082add0 mac 100d9da0 NewCollide::Obj::Obj(LHPoint*,float,float,float)
struct Q210NewCollide3Obj* __fastcall __ct__Q210NewCollide3ObjFP7LHPointfff(struct Q210NewCollide3Obj* this, const void* edx, struct LHPoint* position, float bb_x, float bb_z, float angle);

// Non-virtual methods

// win1.41 00828f40 mac 100befb0 NewCollide::Obj::CreateList(void)
void __fastcall CreateList__Q210NewCollide3ObjFv(struct Q210NewCollide3Obj* this);
// win1.41 inlined mac inlined NewCollide::Obj::Collide(NewCollide::List)
bool __fastcall Collide__Q210NewCollide3ObjFPQ210NewCollide4List(const struct Q210NewCollide3Obj* this, const void* edx, const struct Q210NewCollide4List* other);
// win1.41 00829140 mac 1061b32c NewCollide::Obj::Collide(float, NewCollide::Obj*)
bool32_t __fastcall Collide__Q210NewCollide3ObjFPQ210NewCollide3Obj(const struct Q210NewCollide3Obj* this, const void* edx, const struct Q210NewCollide3Obj* other);
// win1.41 0082ae60 mac 1061b344 NewCollide::Obj::~Obj(void)
void __fastcall __dt__Q210NewCollide3ObjFv(struct Q210NewCollide3Obj* this);

struct NewCollide
{
  struct Q210NewCollide3Obj* obj;  /* 0x0 */
};
static_assert(sizeof(struct NewCollide) == 0x4, "Data type is of wrong size");

// Constructors

// win1.41 00829390 mac 100d9080 NewCollide::NewCollide(LH3DObject*)
struct NewCollide* __fastcall __ct__10NewCollideFP10LH3DObject(struct NewCollide* this, const void* edx, struct LH3DObject* obj) asm("??0NewCollide@@QAE@PAULH3DObject@@@Z");

// Non-virtual methods

// win1.41 0082aea0 mac 1061b35c NewCollide::~NewCollide(void)
void __fastcall __dt__10NewCollideFv(struct NewCollide* this) asm("??_DNewCollide@@QAEXXZ");

struct NewCollideDescriptor
{
  uint32_t count;  /* 0x0 */
  int min_x;
  int max_x;
  int min_z;
  int max_z;  /* 0x10 */
  int current_x;
  int current_z;
  int array_index;
  uint8_t* array;  /* 0x20 */
};
static_assert(sizeof(struct NewCollideDescriptor) == 0x24, "Data type is of wrong size");

// Constructors

// win1.41 0046a860 mac 101c5420 NewCollideDescriptor::NewCollideDescriptor(Object*)
struct NewCollideDescriptor* __fastcall __ct__20NewCollideDescriptorFP6Object(struct NewCollideDescriptor* this, const void* edx, struct Object* obj) asm("??0NewCollideDescriptor@@QAE@PAVObject@@@Z");

// Non-virtual methods

// win1.41 0046aaf0 mac 101c5310 NewCollideDescriptor::~NewCollideDescriptor(void)
void __fastcall __dt__20NewCollideDescriptorFv(struct NewCollideDescriptor* this) asm("??_DNewCollideDescriptor@@QAEXXZ");
// win1.41 0046ab10 mac 101c4f70 NewCollideDescriptor::Init(Game3DObject*)
void __fastcall Init__20NewCollideDescriptorFP12Game3DObject(struct NewCollideDescriptor* this, const void* edx, struct Game3DObject* obj) asm("?Init@NewCollideDescriptor@@QAEXPAUGame3DObject@@@Z");
// win1.41 0046ad80 mac 101c4db0 NewCollideDescriptor::GetNext(void)
struct MapCell* __fastcall GetNext__20NewCollideDescriptorFv(struct NewCollideDescriptor* this) asm("?GetNext@NewCollideDescriptor@@QAEPAUMapCell@@XZ");

#endif /* BW1_DECOMP_COLLIDE_INCLUDED_H */
