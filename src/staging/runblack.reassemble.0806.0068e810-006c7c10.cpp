#include "PSysInterface.h"
#include "PSysBase.h"
#include "JPSysInterface.h"
#include "PSysManager.h"
#include "Particle3DPnt.h"
#include "ParticleLightMap.h"
#include "ParticleChainJoint.h"
#include "Particle3DSprite.h"
#include "Chain.h"
#include "SpellPointInf.h"
#include "DefensiveShield.h"
#include "DefensiveSphere.h"
#include "TownCentre.h"
#include "ParticleBaseMeshCreator.h"
#include "ParticleCreator.h"
#include "Particle3DObj.h"

// win1.41 0068e910 mac 100053c0 PSysInterface::Create(Spell *, PARTICLE_TYPE, LHPoint const &, LHPoint const &, float, PSysInterface::NET_GAME_TYPE)
PSysInterface* PSysInterface::Create(Spell* spell, PARTICLE_TYPE particle_type, LHPoint* param_3, LHPoint* param_4, float param_5, PSysInterface::NET_GAME_TYPE game_type)
{
    return 0;
}

// win1.41 006944b0 mac 1041db80 PSysBase::Load(GameOSFile &)
bool PSysBase::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 006944d0 mac 1041dae0 GJPSysInterface::Load(GameOSFile &)
bool GJPSysInterface::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00694500 mac 1041d6f0 PSysManager::Load(GameOSFile &)
bool PSysManager::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00695010 mac inlined Particle3DPnt::Load(GameOSFile &)
bool Particle3DPnt::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00695180 mac 1041c890 ParticleLightMap::Load(GameOSFile &)
bool ParticleLightMap::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 006959d0 mac 1041c0e0 ParticleChainJoint::Load(GameOSFile &)
bool ParticleChainJoint::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00695ac0 mac inlined Particle3DSprite::Load(GameOSFile &)
bool Particle3DSprite::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00695c10 mac 1041bda0 Chain::Load(GameOSFile &)
bool Chain::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00698240 mac 104192e0 SpellPointInf::Load(GameOSFile &)
bool SpellPointInf::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00699ca0 mac 10417a80 DefensiveShield::Load(GameOSFile &)
bool DefensiveShield::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00699cd0 mac 104179f0 DefensiveSphere::Load(GameOSFile &)
bool DefensiveSphere::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 0069bc10 mac 104274c0 TownCentre::CreatePSys(void)
void TownCentre::CreatePSys()
{
}

// win1.41 0069bcc0 mac 1002d390 TownCentre::ProcessPSys(void)
void TownCentre::ProcessPSys()
{
}

// win1.41 0069bd60 mac 10066090 TownCentre::DrawPSys(void)
void TownCentre::DrawPSys()
{
}

// win1.41 006a8900 mac 1043f270 ParticleBaseMeshCreator::_dt(void)
ParticleBaseMeshCreator::~ParticleBaseMeshCreator()
{
}

// win1.41 006a9400 mac 103dfee0 ParticleCreator::_dt(void)
ParticleCreator::~ParticleCreator()
{
}

// win1.41 006b34c0 mac 10457740 ParticleCreator::DefineProperties(PropertyList *)
void ParticleCreator::DefineProperties(PropertyList* param_1)
{
}

// win1.41 006b37a0 mac 10457110 ParticleBaseMeshCreator::DefineProperties(PropertyList *)
void ParticleBaseMeshCreator::DefineProperties(PropertyList* param_1)
{
}

// win1.41 006c7a50 mac inlined Particle3DObj::GetDebugText(void)
char* Particle3DObj::GetDebugText()
{
    return 0;
}

// win1.41 006c7a60 mac inlined Particle3DObj::_dt(void)
Particle3DObj::~Particle3DObj()
{
}
