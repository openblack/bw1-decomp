#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameThing;

class Particle3DObj : public RenderParticle
{
public:
	uint8_t field_0x18[0x10];

	// Override methods

	// BW1W120 006c7a60 BW1M119 inlined
	virtual ~Particle3DObj();
	// BW1W120 006c7a50 BW1M119 inlined
	virtual char* GetDebugText();
	// BW1W120 00679fd0 BW1M119 013f8770
	virtual void DrawAt(const DrawData& data);
	// BW1W120 006c7ae0 BW1M119 01485820
	virtual float GetLowestPoint(const LHMatrix& matrix);
	// BW1W120 006c7c10 BW1M119 01485580
	virtual void GetRandomSurfacePos(const LHMatrix& matrix, LHPoint* pos);

	// BW1W120 006c7a10 BW1M119 01485b90
	Particle3DObj();
};

#endif /* BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H */
