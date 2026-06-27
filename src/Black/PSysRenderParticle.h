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

    // BW1W120 0055ef70 BW1M100 1030afe0 RenderParticle::_dt(void)
    virtual ~RenderParticle();
    // BW1W120 0055ef60 BW1M100 10423970 RenderParticle::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00694fb0 BW1M100 1041cb70 RenderParticle::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006cbad0 BW1M100 10484260 RenderParticle::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055ef50 BW1M100 10423930 RenderParticle::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H */
