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
	// Override methods

	// BW1W120 006c85a0 BW1M100 inlined Particle3DAnim::_dt(void)
	virtual ~Particle3DAnim();
	// BW1W120 006c8580 BW1M100 inlined Particle3DAnim::GetDebugText(void)
	virtual char* GetDebugText();
};

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H */
