#ifndef BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameThing;

class Particle3DAnim: public RenderParticle
{
public:

    // Override methods

    // win1.41 006c85a0 mac inlined Particle3DAnim::_dt(void)
    virtual ~Particle3DAnim();
    // win1.41 006c8580 mac inlined Particle3DAnim::GetDebugText(void)
    virtual char* GetDebugText();
};

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H */
