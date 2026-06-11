#ifndef BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H
#define BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class RenderParticle: public PSysBase
{
public:
    uint32_t field_0x14;

    // Override methods

    // win1.41 0055ef70 mac 1030afe0 RenderParticle::_dt(void)
    virtual ~RenderParticle();
    // win1.41 0055ef60 mac 10423970 RenderParticle::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00694fb0 mac 1041cb70 RenderParticle::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cbad0 mac 10484260 RenderParticle::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055ef50 mac 10423930 RenderParticle::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H */
