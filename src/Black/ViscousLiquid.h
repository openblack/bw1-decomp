#ifndef BW1_DECOMP_VISCOUS_LIQUID_INCLUDED_H
#define BW1_DECOMP_VISCOUS_LIQUID_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

class GameOSFile;
struct LH3DMesh;
struct LH3DPrimitive;
struct LHMatrix;
struct LHPoint;
class LH3DObject;
class Object;

struct FragVertex
{
	uint8_t field_0x0[0x14];

	// Constructors

	// BW1W120 0076d970 BW1M119 011c39b8 (LHCombined Release)
	FragVertex();
};

struct FragTriangle
{
	uint32_t   field_0x0;
	FragVertex vertices[0x3];
	uint8_t    field_0x40[0x18];
};

struct FragPrimitive
{
	LH3DPrimitive* Lh3dPrimitive; /* 0x0 */
	uint32_t       field_0x4[0x3];
	FragTriangle*  triangle; /* 0x10 */

	// Constructors

	// BW1W120 0076d7a0 BW1M119 01165fa0
	FragPrimitive(GameOSFile& file, LH3DMesh* mesh);

	// Non-virtual methods

	// BW1W120 0076dae0 BW1M119 01165a70
	bool GetRandomSurfacePos(LHPoint* pos, float (*rand_func)(float));
};

struct FragMesh
{
	uint32_t        LastHitter;
	uint32_t        count;
	uint32_t        field_0x8;
	FragPrimitive** primitives;
	uint32_t        Color;
	uint32_t        Specular;
	float           FractionRemaining;
	uint8_t         field_0x1c[0xc];

	// Constructors

	// BW1W120 007f6f00 BW1M119 010fddf0 (LHCombined Release)
	FragMesh(LH3DObject* object);
	// BW1W120 0076d520 BW1M119 01166590
	FragMesh(GameOSFile& file, LH3DMesh* mesh);

	// Destructors

	// BW1W120 007f70e0 BW1M119 0110fa40 (LHCombined Release)
	~FragMesh();

	// Non-virtual methods

	// BW1W120 007f70e0 BW1M119 0110fa40 (LHCombined Release)
	void _dt();
	// BW1W120 0076d4c0 BW1M119 01166790
	bool GetRandomSurfacePos(LHPoint* pos, float (*rand_func)(float));
	// BW1W120 0076d680 BW1M119 011663a0
	void WriteToFile(GameOSFile& file);
	// BW1W120 007f7960 BW1M119 010c1510 (LHCombined Release)
	void Draw(LHMatrix* matrix, LHPoint& pos);
	// BW1W120 007f7d40 BW1M119 01162ea0
	void Impact(LHPoint* pos, LHPoint* velocity, float radius, Object* object);
	// BW1W120 007f7230 BW1M119 010ffb80 (LHCombined Release)
	float WorkOutFractionRemaining();
};

#endif /* BW1_DECOMP_VISCOUS_LIQUID_INCLUDED_H */
