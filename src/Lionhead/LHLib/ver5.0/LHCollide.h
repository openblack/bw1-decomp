#ifndef BW1_DECOMP_LH_COLLIDE_INCLUDED_H
#define BW1_DECOMP_LH_COLLIDE_INCLUDED_H

#include <stdint.h>    /* For int16_t, uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h>    /* For struct LHPoint, struct Point2D */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For struct LH3DObject */

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

class NewCollide
{
public:
	struct Obj;

	struct List
	{
		uint32_t                      size; /* 0x0 */
		ObjectCircleIteratorDirection direction;
		Obj**                         objs;

		// Non-virtual methods

		// BW1W120 inlined BW1M100 inlined NewCollide::List::Collide(NewCollide::List)
		bool Collide(const List* other) const;
	};

	struct Obj
	{
		LHPoint position; /* 0x0 */
		float   radius;
		float   r2; /* 0x10 */
		float   angle;
		LHPoint bounding_box;
		List*   iterator_list; /* 0x24 */

		// Constructors

		// BW1W120 0082ad90 BW1M100 1061bfd4 NewCollide::Obj::Obj(float, LHPoint*)
		Obj(float radius, LHPoint* position);
		// BW1W120 0082add0 BW1M100 100d9da0 NewCollide::Obj::Obj(LHPoint*,float,float,float)
		Obj(LHPoint* position, float bb_x, float bb_z, float angle);

		// Non-virtual methods

		// BW1W120 00828f40 BW1M100 100befb0 NewCollide::Obj::CreateList(void)
		void CreateList();
		// BW1W120 inlined BW1M100 inlined NewCollide::Obj::Collide(NewCollide::List)
		bool Collide(const List* other) const;
		// BW1W120 00829140 BW1M100 1061b32c NewCollide::Obj::Collide(float, NewCollide::Obj*)
		bool32_t Collide(const Obj* other) const;

		// Destructors

		// BW1W120 0082ae60 BW1M100 1061b344 NewCollide::Obj::~Obj(void)
		~Obj();
	};

	Obj* obj; /* 0x0 */

	// Constructors

	// BW1W120 00829390 BW1M100 100d9080 NewCollide::NewCollide(LH3DObject*)
	NewCollide(LH3DObject* obj);

	// Destructors

	// BW1W120 0082aea0 BW1M100 1061b35c NewCollide::~NewCollide(void)
	~NewCollide();
};

#endif /* BW1_DECOMP_LH_COLLIDE_INCLUDED_H */
