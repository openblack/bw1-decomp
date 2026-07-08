#ifndef BW1_DECOMP_COLLIDE_INCLUDED_H
#define BW1_DECOMP_COLLIDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHCollide.h>      /* For LHCollide */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For LHPoint */
#include <Lionhead/LH3DLib/development/LH3DMem.h> /* For LH3DMem */
#include <re_common.h>                            /* For bool32_t */

// Forward Declares

class Game3DObject;
class LH3DObject;
struct MapCell;
struct MapCoords;
class MobileWallHug;
class Object;

template <bool clockwise> struct Point2DCompare
{
	Point2D point; /* 0x0 */
	bool    result;

	// Non-virtual methods

	// BW1W120 0060f740 BW1M100 inlined Point2DCompare<0>::operator=(const Point2DCompare<0>*)
	// BW1W120 0060f720 BW1M100 inlined Point2DCompare<1>::operator=(const Point2DCompare<1>*)
	Point2DCompare* operator=(Point2DCompare* other);
	// BW1W120 006101f0 BW1M100 inlined Point2DCompare<0>::operator<(const Point2DCompare<0>*)
	// BW1W120 00610180 BW1M100 inlined Point2DCompare<1>::operator<(const Point2DCompare<1>*)
	bool operator<(Point2DCompare* other);
	// BW1W120 00610230 BW1M100 inlined Point2DCompare<0>::Resolve()
	// BW1W120 006101c0 BW1M100 inlined Point2DCompare<1>::Resolve()
	void Resolve();
};

template <bool clockwise> struct IntersectIntervalCircle
{
	Point2DCompare   compares[0x2]; /* 0x0 */
	float            field_0x18;
	float            field_0x1c;
	float            field_0x20;
	bool             field_0x24;
	NewCollide::Obj* obj;

	// Non-virtual methods

	// BW1W120 006169f0 BW1M100 inlined IntersectIntervalCircle<0>::Resolve(void)
	// BW1W120 00616c70 BW1M100 inlined IntersectIntervalCircle<1>::Resolve(void)
	void Resolve();
};

struct CircleHugInfo
{
	NewCollide::Obj* obj; /* 0x0 */
	uint8_t          TurnsToObj;
	uint8_t          field_0x5;
	int16_t          field_0x6;

	// Constructors

	// BW1W120 0060a640 BW1M100 103c45d0 CircleHugInfo::CircleHugInfo(void)
	CircleHugInfo();

	// Non-virtual methods

	// BW1W120 0060a660 BW1M100 103c4590 CircleHugInfo::GetObjectPtr(void)
	NewCollide::Obj* GetObjectPtr();
	// BW1W120 0060a770 BW1M100 100260e0 CircleHugInfo::SetObjectPtr(NewCollide::Obj*, MobileWallHug*, bool)
	void SetObjectPtr(NewCollide::Obj* param_2, MobileWallHug* param_3, bool param_4);
	// BW1W120 0060a9f0 BW1M100 10029be0 CircleHugInfo::Reset(MobileWallHug *)
	void Reset(MobileWallHug* mwh);
};

struct ObjectCircleIterator
{
	ObjectCircleIteratorDirection direction; /* 0x0 */
	NewCollide*                   CollideData;
	NewCollide::Obj*              CollideObj;
	Object*                       obj;

	// Non-virtual methods

	// BW1W120 006159a0 BW1M100 1005f630 ObjectCircleIterator::operator NewCollide::Obj
	operator NewCollide::Obj();
	// BW1W120 0060d0a0 BW1M100 100644a0 ObjectCircleIterator::Init(int, MapCoords const &)
	void Init(ObjectCircleIteratorDirection direction, const MapCoords* coords);
	// BW1W120 0060d280 BW1M100 100649d0 ObjectCircleIterator::Init(Object *, MapCoords const &)
	void Init(Object* obj, const MapCoords* coords);
};

struct NewCollideDescriptor
{
	uint32_t count; /* 0x0 */
	int      MinX;
	int      MaxX;
	int      MinZ;
	int      MaxZ; /* 0x10 */
	int      CurrentX;
	int      CurrentZ;
	int      ArrayIndex;
	LH3DMem* array; /* 0x20 */

	// Constructors

	// BW1W120 0046a860 BW1M100 101c5420 NewCollideDescriptor::NewCollideDescriptor(Object*)
	NewCollideDescriptor(Object* obj);

	// Non-virtual methods

	// BW1W120 0046aaf0 BW1M100 101c5310 NewCollideDescriptor::~NewCollideDescriptor(void)
	~NewCollideDescriptor();
	// BW1W120 0046ab10 BW1M100 101c4f70 NewCollideDescriptor::Init(Game3DObject*)
	void Init(Game3DObject* obj);
	// BW1W120 0046ad80 BW1M100 101c4db0 NewCollideDescriptor::GetNext(void)
	MapCell* GetNext();
};

#endif /* BW1_DECOMP_COLLIDE_INCLUDED_H */
