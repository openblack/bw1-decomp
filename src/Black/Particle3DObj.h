#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameThing;

class Particle3DObj: public RenderParticle
{
public:

    // Override methods

    // win1.41 006c7a60 mac inlined Particle3DObj::_dt(void)
    virtual ~Particle3DObj();
    // win1.41 006c7a50 mac inlined Particle3DObj::GetDebugText(void)
    virtual char* GetDebugText();
};

#endif /* BW1_DECOMP_PARTICLE_3D_OBJ_INCLUDED_H */
