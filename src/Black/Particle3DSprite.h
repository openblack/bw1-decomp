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

    // win1.41 0055f070 mac inlined Particle3DSprite::_dt(void)
    virtual ~Particle3DSprite();
    // win1.41 0055f050 mac inlined Particle3DSprite::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00695ac0 mac inlined Particle3DSprite::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
};

#endif /* BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H */
