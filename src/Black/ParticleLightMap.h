#ifndef BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H
#define BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class ParticleLightMap: public RenderParticle
{
public:

    // Override methods

    // win1.41 006ca450 mac 10423560 ParticleLightMap::_dt(void)
    virtual ~ParticleLightMap();
    // win1.41 006ca440 mac 10423650 ParticleLightMap::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00695180 mac 1041c890 ParticleLightMap::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
};

#endif /* BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H */
