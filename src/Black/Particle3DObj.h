#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class LH3DObject;
class ParticleCreator;

class Particle3DObj : public RenderParticle
{
public:
	ParticleCreator* Creator;
	uint32_t         field_0x1c;
	LH3DObject*      Object3D;
	uint8_t          field_0x24;

	// Override methods

	// BW1W120 006c7a60 BW1M119 inlined
	virtual ~Particle3DObj();
	// BW1W120 006c7a50 BW1M119 inlined
	virtual char* GetDebugText();
	// BW1W120 00695340 BW1M119 01425800
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cbe80 BW1M119 0148c560
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00699d20 BW1M119 014208d0
	virtual void ResolveLoad();
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
