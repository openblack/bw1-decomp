#ifndef BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class Particle3DPnt: public RenderParticle
{
public:

    // Override methods

    // BW1W120 0055ef20 BW1M100 inlined Particle3DPnt::_dt(void)
    virtual ~Particle3DPnt();
    // BW1W120 0055ef00 BW1M100 inlined Particle3DPnt::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00695010 BW1M100 inlined Particle3DPnt::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 006cbb30 BW1M100 inlined Particle3DPnt::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055eef0 BW1M100 inlined Particle3DPnt::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H */
