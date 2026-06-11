#ifndef BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H
#define BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class RenderParticleCreatureRef: public RenderParticle
{
public:

    // Override methods

    // win1.41 006c7ee0 mac 10423140 RenderParticleCreatureRef::_dt(void)
    virtual ~RenderParticleCreatureRef();
    // win1.41 006c7ec0 mac 10423240 RenderParticleCreatureRef::GetDebugText(void)
    virtual char* GetDebugText();
};

class RenderParticleGJMesh: public RenderParticle
{
public:

    // Override methods

    // win1.41 006c8ac0 mac 1047b4f0 RenderParticleGJMesh::_dt(void)
    virtual ~RenderParticleGJMesh();
};

class RenderParticleGJMeshRotatingUV: public RenderParticleGJMesh
{
public:

    // Override methods

    // win1.41 006c8b90 mac 1047b340 RenderParticleGJMeshRotatingUV::_dt(void)
    virtual ~RenderParticleGJMeshRotatingUV();
};

class RenderParticleGameObject: public RenderParticle
{
public:

    // Override methods

    // win1.41 006c9ed0 mac 10479800 RenderParticleGameObject::_dt(void)
    virtual ~RenderParticleGameObject();
    // win1.41 006c9ec0 mac 10422f20 RenderParticleGameObject::GetDebugText(void)
    virtual char* GetDebugText();
};

class RenderParticleGameObjectRef: public RenderParticle
{
public:

    // Override methods

    // win1.41 006c8130 mac 1047ca40 RenderParticleGameObjectRef::_dt(void)
    virtual ~RenderParticleGameObjectRef();
    // win1.41 006c8120 mac 104230f0 RenderParticleGameObjectRef::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006957e0 mac 1041c390 RenderParticleGameObjectRef::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
};

class RenderParticleGoldenShower: public RenderParticleGameObjectRef
{
public:

    // Override methods

    // win1.41 0055efe0 mac 1047cc80 RenderParticleGoldenShower::_dt(void)
    virtual ~RenderParticleGoldenShower();
    // win1.41 0055efd0 mac 10423050 RenderParticleGoldenShower::GetDebugText(void)
    virtual char* GetDebugText();
};

class RenderParticleMist: public RenderParticle
{
public:

    // Override methods

    // win1.41 006c9cc0 mac 1047a330 RenderParticleMist::_dt(void)
    virtual ~RenderParticleMist();
    // win1.41 006c9cb0 mac 104236d0 RenderParticleMist::GetDebugText(void)
    virtual char* GetDebugText();
};

class RenderParticleVolBlendMesh: public RenderParticle
{
public:

    // Override methods

    // win1.41 006ca750 mac 10478c70 RenderParticleVolBlendMesh::_dt(void)
    virtual ~RenderParticleVolBlendMesh();
};

#endif /* BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H */
