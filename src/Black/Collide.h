#ifndef BW1_DECOMP_COLLIDE_INCLUDED_H
#define BW1_DECOMP_COLLIDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint, struct Point2D */
#include <re_common.h> /* For bool32_t */

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

// Forward Declares

class Game3DObject;
class LH3DObject;
struct MapCell;
struct MapCoords;
class MobileWallHug;
struct NewCollide;
class Object;

struct NewCollide
{
    struct Obj;

    struct List
    {
        uint32_t size; /* 0x0 */
        ObjectCircleIteratorDirection direction;
        Obj** objs;

        // Non-virtual methods

        // win1.41 inlined mac inlined NewCollide::List::Collide(NewCollide::List)
        bool Collide(const List* other);
    };

    struct Obj
    {
        LHPoint position; /* 0x0 */
        float radius;
        float r2; /* 0x10 */
        float angle;
        LHPoint bounding_box;
        List* iterator_list; /* 0x24 */

        // Constructors

        // win1.41 0082ad90 mac 1061bfd4 NewCollide::Obj::Obj(float, LHPoint*)
        Obj(float radius, LHPoint* position);
        // win1.41 0082add0 mac 100d9da0 NewCollide::Obj::Obj(LHPoint*,float,float,float)
        Obj(LHPoint* position, float bb_x, float bb_z, float angle);

        // Non-virtual methods

        // win1.41 00828f40 mac 100befb0 NewCollide::Obj::CreateList(void)
        void CreateList();
        // win1.41 inlined mac inlined NewCollide::Obj::Collide(NewCollide::List)
        bool Collide(const List* other);
        // win1.41 00829140 mac 1061b32c NewCollide::Obj::Collide(float, NewCollide::Obj*)
        bool32_t Collide(const Obj* other);

        // Destructors

        // win1.41 0082ae60 mac 1061b344 NewCollide::Obj::~Obj(void)
        ~Obj();
    };

    Obj* obj; /* 0x0 */

    // Constructors

    // win1.41 00829390 mac 100d9080 NewCollide::NewCollide(LH3DObject*)
    NewCollide(LH3DObject* obj);

    // Destructors

    // win1.41 0082aea0 mac 1061b35c NewCollide::~NewCollide(void)
    ~NewCollide();
};

template <bool clockwise>
struct Point2DCompare
{
    Point2D point; /* 0x0 */
    bool result;

    // Non-virtual methods

    // win1.41 0060f740 mac inlined Point2DCompare<0>::operator=(const Point2DCompare<0>*)
    // win1.41 0060f720 mac inlined Point2DCompare<1>::operator=(const Point2DCompare<1>*)
    Point2DCompare* operator=(Point2DCompare* other);
    // win1.41 006101f0 mac inlined Point2DCompare<0>::operator<(const Point2DCompare<0>*)
    // win1.41 00610180 mac inlined Point2DCompare<1>::operator<(const Point2DCompare<1>*)
    bool operator<(Point2DCompare* other);
    // win1.41 00610230 mac inlined Point2DCompare<0>::Resolve()
    // win1.41 006101c0 mac inlined Point2DCompare<1>::Resolve()
    void Resolve();
};

template <bool clockwise>
struct IntersectIntervalCircle
{
    Point2DCompare compares[0x2]; /* 0x0 */
    float field_0x18;
    float field_0x1c;
    float field_0x20;
    bool field_0x24;
    NewCollide::Obj* obj;

    // Non-virtual methods

    // win1.41 006169f0 mac inlined IntersectIntervalCircle<0>::Resolve(void)
    // win1.41 00616c70 mac inlined IntersectIntervalCircle<1>::Resolve(void)
    void Resolve();
};

struct CircleHugInfo
{
    NewCollide::Obj* obj; /* 0x0 */
    uint8_t turns_to_obj;
    uint8_t field_0x5;
    int16_t field_0x6;

    // Constructors

    // win1.41 0060a640 mac 103c45d0 CircleHugInfo::CircleHugInfo(void)
    CircleHugInfo();

    // Non-virtual methods

    // win1.41 0060a660 mac 103c4590 CircleHugInfo::GetObjectPtr(void)
    NewCollide::Obj* GetObjectPtr();
    // win1.41 0060a770 mac 100260e0 CircleHugInfo::SetObjectPtr(NewCollide::Obj*, MobileWallHug*, bool)
    void SetObjectPtr(NewCollide::Obj* param_2, MobileWallHug* param_3, bool param_4);
};

struct ObjectCircleIterator
{
    ObjectCircleIteratorDirection direction; /* 0x0 */
    NewCollide* collide_data;
    NewCollide::Obj* collide_obj;
    Object* obj;

    // Non-virtual methods

    // win1.41 006159a0 mac 1005f630 ObjectCircleIterator::operator NewCollide::Obj
    operator NewCollide::Obj();
    // win1.41 0060d0a0 mac 100644a0 ObjectCircleIterator::Init(int, MapCoords const &)
    void Init(ObjectCircleIteratorDirection direction, const MapCoords* coords);
    // win1.41 0060d280 mac 100649d0 ObjectCircleIterator::Init(Object *, MapCoords const &)
    void Init(Object* obj, const MapCoords* coords);
};

struct NewCollideDescriptor
{
    uint32_t count; /* 0x0 */
    int min_x;
    int max_x;
    int min_z;
    int max_z; /* 0x10 */
    int current_x;
    int current_z;
    int array_index;
    uint8_t* array; /* 0x20 */

    // Constructors

    // win1.41 0046a860 mac 101c5420 NewCollideDescriptor::NewCollideDescriptor(Object*)
    NewCollideDescriptor(Object* obj);

    // Non-virtual methods

    // win1.41 0046aaf0 mac 101c5310 NewCollideDescriptor::~NewCollideDescriptor(void)
    ~NewCollideDescriptor();
    // win1.41 0046ab10 mac 101c4f70 NewCollideDescriptor::Init(Game3DObject*)
    void Init(Game3DObject* obj);
    // win1.41 0046ad80 mac 101c4db0 NewCollideDescriptor::GetNext(void)
    MapCell* GetNext();
};

#endif /* BW1_DECOMP_COLLIDE_INCLUDED_H */
