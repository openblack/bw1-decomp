#ifndef BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class Particle3DSprite: public RenderParticle
{
public:

    // Override methods

    // BW1W120 0055f070 BW1M100 inlined Particle3DSprite::_dt(void)
    virtual ~Particle3DSprite();
    // BW1W120 0055f050 BW1M100 inlined Particle3DSprite::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00695ac0 BW1M100 inlined Particle3DSprite::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
};

#endif /* BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H */
