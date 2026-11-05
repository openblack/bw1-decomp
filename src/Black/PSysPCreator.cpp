#include "GameTimeConstants.h"
#include "PSysPCreator.h"

#include "ParticleCreator.h"
#include "ParticleLightMap.h"
#include "Particle3DSprite.h"

RenderParticle* ParticleLightMapCreator::CreateParticle(AtomCore* core)
{
	return CreateParticleLightMap(core);
}

RenderParticle* ParticleSpriteCreator::CreateParticle(AtomCore* core)
{
	return CreateParticle3DSprite(core);
}

RenderParticle* ParticleMistCreator::CreateParticle(AtomCore* core)
{
	return CreateParticleMist(core);
}

RenderParticle* ParticleBaseChainCreator::CreateParticle(AtomCore* core)
{
	return NULL;
}
