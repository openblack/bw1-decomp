#ifndef BW1_DECOMP_LH3D_OBJECT_COLLIDE_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_COLLIDE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

#include <re_common.h> /* For bool32_t */

// Forward Declares

class LH3DObject;

// The triangles of a static object's mesh in world space, sorted from the highest to the lowest, so that things
// walking on the object can find the altitude of the surface under them.
class LH3DObjectCollide
{
public:
	struct Triangle
	{
		LHPoint  Points[4]; /* 0x0 */
		LHPoint  Normal;    /* 0x30 */
		float    Distance;  /* 0x3c */
		bool32_t Active;    /* 0x40 */

		// Non-virtual methods

		// BW1W120 00849e90 BW1M119 01081e40 (LHCombined Release)
		void Init(LHPoint* a, LHPoint* b, LHPoint* c);
		// BW1W120 0084a010 BW1M119 01081dc0 (LHCombined Release)
		float FUNC(long edge, LHPoint* point);
		// BW1W120 0084a050 BW1M119 01081c90 (LHCombined Release)
		bool32_t Inside(LHPoint* point);
		// BW1W120 0084a170 BW1M119 01081ad0 (LHCombined Release)
		float GetAltitude(LHPoint* point);
		// BW1W120 inlined BW1M119 inlined
		float GetValue() { return Points[0].y + Points[1].y + Points[2].y; }
	};

	float     MinX; /* 0x0 */
	float     MaxX;
	float     MinZ;
	float     MaxZ;
	int       NumTriangles; /* 0x10 */
	Triangle* Triangles;

	// Static methods

	// BW1W120 008499c0 BW1M119 01082090 (LHCombined Release)
	static LH3DObjectCollide* Create(LH3DObject* object);

	// Non-virtual methods

	// BW1W120 00849e80 BW1M119 01082030 (LHCombined Release)
	void Release();
	// BW1W120 0084a0e0 BW1M119 01081b50 (LHCombined Release)
	bool32_t SetAltitude(LHPoint* point);
	// BW1W120 0084a190 BW1M119 010819d0 (LHCombined Release)
	int GetIndexWithThisValue(float* value);
	// BW1W120 0084a230 BW1M119 010817f0 (LHCombined Release)
	void Sorting();
};
static_assert(sizeof(LH3DObjectCollide::Triangle) == 0x44, "Data type is of wrong size");
static_assert(sizeof(LH3DObjectCollide) == 0x18, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_OBJECT_COLLIDE_INCLUDED_H */
