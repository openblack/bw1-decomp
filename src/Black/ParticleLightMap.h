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

    // BW1W120 006ca450 BW1M100 10423560 ParticleLightMap::_dt(void)
    virtual ~ParticleLightMap();
    // BW1W120 006ca440 BW1M100 10423650 ParticleLightMap::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00695180 BW1M100 1041c890 ParticleLightMap::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
};

#endif /* BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H */
