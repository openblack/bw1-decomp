#ifndef BW1_DECOMP_COLLIDE_INCLUDED_H
#define BW1_DECOMP_COLLIDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For int16_t, uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHCollide.h>      /* For LHCollide */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For LHPoint */
#include <Lionhead/LH3DLib/development/LH3DMem.h> /* For LH3DMem */
#include <re_common.h>                            /* For bool32_t */

#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class Game3DObject;
class LH3DObject;
struct MapCell;
struct MapCoords;
class MobileWallHug;
class Object;

struct ObjectCircleIterator
{
	int              index;
	NewCollide*      CollideData;
	NewCollide::Obj* CollideObj;
	Object*          obj;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	ObjectCircleIterator(const MapCoords& coords) { Init(coords.GetFirstObjectFixed(), coords); }

	// Non-virtual methods

	// BW1W120 006159a0 BW1M119 01061db0
	operator NewCollide::Obj*()
	{
		if (CollideObj)
		{
			return CollideObj;
		}
		if (CollideData->obj->IteratorList)
		{
			return CollideData->obj->IteratorList->objs[index];
		}
		return CollideData->obj;
	}
	// BW1W120 inlined BW1M119 01061e40
	bool DoIPointAtLandscapeMaterial() { return CollideObj != NULL; }
	// BW1W120 inlined BW1M119 inlined
	bool IsValid() { return obj != NULL || CollideObj != NULL; }
	// BW1W120 0060d0a0 BW1M119 01066c60
	void Init(int new_index, const MapCoords& coords);
	// BW1W120 0060d280 BW1M119 01067190
	void Init(Object* new_obj, const MapCoords& coords);
	// BW1W120 0060d520 BW1M119 inlined
	void Next(const MapCoords& coords);
};

template <bool clockwise> struct Point2DCompare
{
	Point2D point; /* 0x0 */
	bool    result;

	// BW1W120 00d3ee68 BW1M119 01b3db0c
	// BW1W120 00d3ee70 BW1M119 01b3db14
	static Point2D origin;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	Point2DCompare() {}
	// BW1W120 inlined BW1M119 inlined
	Point2DCompare(const Point2D& p) : point(p) {}

	// Non-virtual methods

	// BW1W120 0060f740 BW1M119 inlined
	// BW1W120 0060f720 BW1M119 inlined
	Point2DCompare& operator=(const Point2DCompare& other)
	{
		point = other.point;
		result = other.result;
		return *this;
	}
	// Inliner IL size: 92
	// BW1W120 006101f0 BW1M119 01077d00
	// BW1W120 00610180 BW1M119 01076d60
	bool32_t operator<(const Point2DCompare& other)
	{
		if (result == other.result)
		{
			float cross = other.point.Cross(point);
			if (clockwise)
			{
				return cross < 0.0f;
			}
			else
			{
				return cross > 0.0f;
			}
		}
		return result;
	}
	// BW1W120 00610230 BW1M119 inlined
	// BW1W120 006101c0 BW1M119 inlined
	void Resolve()
	{
		float cross = point.Cross(origin);
		result = clockwise ? cross <= 0.0f : cross >= 0.0f;
	}
};

// The arc of a circle that another circle blocks.
template <bool clockwise> struct IntersectIntervalCircle
{
	Point2DCompare<clockwise> compares[0x2]; /* 0x0 */
	float                     ChordProjection;
	float                     HalfChordLengthSq;
	float                     HalfChordLength;
	bool                      IsLandscapeOrFence;
	NewCollide::Obj*          obj;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	IntersectIntervalCircle()
		: ChordProjection(0.0f), HalfChordLengthSq(0.0f), HalfChordLength(0.0f), IsLandscapeOrFence(false)
	{
	}

	// Non-virtual methods

	// BW1W120 00616a80 BW1M119 inlined
	// BW1W120 00616d00 BW1M119 inlined
	void Init(ObjectCircleIterator& it, float radius, const Point2D& centre, const Point2D& unused_point_1,
	          const Point2D& unused_point_2)
	{
		HalfChordLength = 0.0f;
		NewCollide::Obj* collide_obj = it;
		IsLandscapeOrFence = it.DoIPointAtLandscapeMaterial() || it.obj->IsFence();
		float                     obj_radius = collide_obj->radius;
		Point2DCompare<clockwise> compare(Point2D(collide_obj->position.x, collide_obj->position.z));
		obj = collide_obj;
		compares[1] = compare;
		compares[1].point -= centre;
		compares[0] = compares[1];
		if (clockwise)
		{
			compares[0].point += obj_radius > radius
			                         ? Point2D(-compares[1].point.y, compares[1].point.x)
			                         : Point2D(-compares[1].point.y, compares[1].point.x) * (obj_radius / radius);
		}
		else
		{
			compares[0].point += obj_radius > radius
			                         ? Point2D(compares[1].point.y, -compares[1].point.x)
			                         : Point2D(compares[1].point.y, -compares[1].point.x) * (obj_radius / radius);
		}
		compares[0].Resolve();
		compares[1].Resolve();
		ChordProjection = (compares[1].point.GetNormSq() + radius * radius - obj_radius * obj_radius) * 0.5f / radius;
		HalfChordLengthSq = compares[1].point.GetNormSq() - ChordProjection * ChordProjection;
		if (HalfChordLengthSq > 0.0f && compares[1] < compares[0])
		{
			Resolve();
		}
	}
	// BW1W120 006169f0 BW1M119 013d1600
	// BW1W120 00616c70 BW1M119 01097820
	void Resolve()
	{
		if (compares[0].point == compares[1].point)
		{
			return;
		}
		HalfChordLength = sqrt(HalfChordLengthSq);
		if (clockwise)
		{
			compares[0].point.x = ChordProjection * compares[1].point.x - HalfChordLength * compares[1].point.y;
			compares[0].point.y = ChordProjection * compares[1].point.y + HalfChordLength * compares[1].point.x;
		}
		else
		{
			compares[0].point.x = HalfChordLength * compares[1].point.y + ChordProjection * compares[1].point.x;
			compares[0].point.y = ChordProjection * compares[1].point.y - HalfChordLength * compares[1].point.x;
		}
		compares[0].Resolve();
		compares[1] = compares[0];
		compares[1].result = compares[0].result;
	}
	// BW1W120 inlined BW1M119 inlined
	bool32_t operator<(IntersectIntervalCircle& other)
	{
		if (compares[1] < other.compares[0])
		{
			return true;
		}
		if (other.compares[1] < compares[0])
		{
			return false;
		}
		Resolve();
		other.Resolve();
		return compares[1] < other.compares[0];
	}
};

struct CircleHugInfo
{
	struct ResolutionInfoT
	{
		Object*       object;
		int           index;
		LH3DMapCoords coords;
	};

	NewCollide::Obj* obj;
	uint8_t          TurnsToObj;
	uint8_t          field_0x5;
	int16_t          EntryDistance;

	// Constructors

	// BW1W120 0060a640 BW1M119 013cc970
	CircleHugInfo();

	// Non-virtual methods

	// BW1W120 0060a660 BW1M119 013cc930
	NewCollide::Obj* GetObjectPtr();
	// BW1W120 0060a770 BW1M119 01028c80
	void SetObjectPtr(NewCollide::Obj* new_obj, MobileWallHug* mwh, bool resolving_load);
	// BW1W120 0060a9f0 BW1M119 01029be0
	void Reset(MobileWallHug* mwh);
	// BW1W120 0060c200 BW1M119 013cacf0
	void ResolveLoad(MobileWallHug* mwh);
	// BW1W120 0060a450 BW1M119 013cc9e0
	void FetchObjectFromCircHugInfo(NewCollide::Obj* collide_obj, ResolutionInfoT& info);
	// fabricated name: the Mac inlines this into MobileWallHug::Load
	// BW1W120 0060a5e0 BW1M119 inlined
	void SetResolutionInfo(Object* object, int index, const MapCoords& coords);
	// BW1W120 00609cc0 BW1M119 013cd2d0
	MapCoords GetObjCoords();
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
