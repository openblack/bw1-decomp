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

	// BW1W120 0060f740 BW1M119 inlined
	// BW1W120 0060f720 BW1M119 inlined
	Point2DCompare* operator=(Point2DCompare* other);
	// BW1W120 006101f0 BW1M119 inlined
	// BW1W120 00610180 BW1M119 inlined
	bool operator<(Point2DCompare* other);
	// BW1W120 00610230 BW1M119 inlined
	// BW1W120 006101c0 BW1M119 inlined
	void Resolve();
};

template <bool clockwise> struct IntersectIntervalCircle
{
	Point2DCompare<clockwise> compares[0x2]; /* 0x0 */
	float                     field_0x18;
	float                     field_0x1c;
	float                     field_0x20;
	bool                      field_0x24;
	NewCollide::Obj*          obj;

	// Non-virtual methods

	// BW1W120 006169f0 BW1M119 inlined
	// BW1W120 00616c70 BW1M119 inlined
	void Resolve();
};

struct CircleHugInfo
{
	NewCollide::Obj* obj; /* 0x0 */
	uint8_t          TurnsToObj;
	uint8_t          field_0x5;
	int16_t          field_0x6;

	// Constructors

	// BW1W120 0060a640 BW1M119 013cc970
	CircleHugInfo();

	// Non-virtual methods

	// BW1W120 0060a660 BW1M119 013cc930
	NewCollide::Obj* GetObjectPtr();
	// BW1W120 0060a770 BW1M119 01028c80
	void SetObjectPtr(NewCollide::Obj* param_2, MobileWallHug* param_3, bool param_4);
	// BW1W120 0060a9f0 BW1M119 01029be0
	void Reset(MobileWallHug* mwh);
	// BW1W120 0060c200 BW1M119 013cacf0
	void ResolveLoad(MobileWallHug* mwh);
};

struct ObjectCircleIterator
{
	ObjectCircleIteratorDirection direction; /* 0x0 */
	NewCollide*                   CollideData;
	NewCollide::Obj*              CollideObj;
	Object*                       obj;

	// Non-virtual methods

	// BW1W120 006159a0 BW1M119 01061db0
	operator NewCollide::Obj();
	// BW1W120 0060d0a0 BW1M119 01066c60
	void Init(ObjectCircleIteratorDirection direction, const MapCoords& coords);
	// BW1W120 0060d280 BW1M119 01067190
	void Init(Object* obj, const MapCoords& coords);
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
	uint8_t* array; /* 0x20 */

	// Constructors

	// BW1W120 0046a860 BW1M119 011ccbc0
	NewCollideDescriptor(Object* obj);

	// Non-virtual methods

	// BW1W120 0046aaf0 BW1M119 011ccab0
	~NewCollideDescriptor();
	// BW1W120 0046ab10 BW1M119 011cc710
	void Init(Game3DObject* obj);
	// BW1W120 0046ad80 BW1M119 011cc550
	MapCell* GetNext();
};

#endif /* BW1_DECOMP_COLLIDE_INCLUDED_H */
