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
		uint32_t size;
		int      count; // number of objs
		Obj**    objs;

		// Non-virtual methods

		// BW1W120 inlined BW1M119 inlined
		bool Collide(const List* other) const;
	};

	struct Obj
	{
		LHPoint position; /* 0x0 */
		float   radius;
		float   r2; /* 0x10 */
		float   angle;
		LHPoint BoundingBox;
		List*   IteratorList; /* 0x24 */

		// Constructors

		// BW1W120 0082ad90 BW1M119 0107a5c0 (LHCombined Release)
		Obj(float radius, LHPoint* position);
		// BW1W120 0082add0 BW1M119 0107f620 (LHCombined Release)
		Obj(LHPoint* position, float bb_x, float bb_z, float angle);

		// Non-virtual methods

		// BW1W120 00828f40 BW1M119 01083ef0 (LHCombined Release)
		void CreateList();
		// BW1W120 inlined BW1M119 inlined
		bool Collide(const List* other) const;
		// BW1W120 00829140 BW1M119 0104bbf0 (LHCombined Release)
		bool32_t Collide(const Obj* other) const;

		// Destructors

		// BW1W120 0082ae60 BW1M119 010649b0 (LHCombined Release)
		~Obj();
	};

	Obj* obj; /* 0x0 */

	// TODO: static void (*g_collide_del_callback)(Obj* obj);
	// at BW1W120 00eb9a98, BW1M119 011f1db8 (LHCombined Release).
	// Called from Obj::~Obj; MobileWallHug's CircleHugStateInfoT installs its handler here.
	// Not declared: every static data member in this header shifts the compiler-generated
	// $S/$E numbering of all consumers (Object.cpp via Living.h -> MobileWallHug.h -> Collide.h)
	// and breaks Object.cpp's .bss order. Restore once the include graph is understood.

	// Constructors

	// BW1W120 00829390 BW1M119 0112f210 (LHCombined Release)
	NewCollide(LH3DObject* obj);

	// Destructors

	// BW1W120 0082aea0 BW1M119 010a23a0 (LHCombined Release)
	~NewCollide();
};

#endif /* BW1_DECOMP_LH_COLLIDE_INCLUDED_H */
