#ifndef BW1_DECOMP_PARTICLE_PLAYER_SYMBOL_INCLUDED_H
#define BW1_DECOMP_PARTICLE_PLAYER_SYMBOL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;

class ParticlePlayerSymbol: public RenderParticle
{
public:

    // Override methods

    // win1.41 006c9d50 mac 1047a0b0 ParticlePlayerSymbol::_dt(void)
    virtual ~ParticlePlayerSymbol();
};

#endif /* BW1_DECOMP_PARTICLE_PLAYER_SYMBOL_INCLUDED_H */
