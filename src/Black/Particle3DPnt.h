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

    // win1.41 0055ef20 mac inlined Particle3DPnt::_dt(void)
    virtual ~Particle3DPnt();
    // win1.41 0055ef00 mac inlined Particle3DPnt::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00695010 mac inlined Particle3DPnt::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cbb30 mac inlined Particle3DPnt::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055eef0 mac inlined Particle3DPnt::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H */
