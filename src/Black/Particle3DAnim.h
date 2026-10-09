#ifndef BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameThing;

class Particle3DAnim : public RenderParticle
{
public:
	uint8_t field_0x18[0x18];

	// Override methods

	// BW1W120 006c85a0 BW1M119 inlined
	virtual ~Particle3DAnim();
	// BW1W120 006c8580 BW1M119 inlined
	virtual char* GetDebugText();
	// BW1W120 0067a8e0 BW1M119 013f8030
	virtual void DrawAt(const DrawData& data);
	// BW1W120 006c8590 BW1M119 0142c420
	virtual Particle3DAnim* AsParticle3DAnim();

	// BW1W120 006c8540 BW1M119 01484380
	Particle3DAnim();
};

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H */
