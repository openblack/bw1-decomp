#include "GameTimeConstants.h"
#include "PSysRenderParticle.h"

#include "ColourConstants.h" /* For White */
#include "Chain.h"
#include "PSysModifiers.h"
#include "Chain.h"
#include "PSysModifiers.h"
#include "PSysPCreator.h"
#include "Particle3DAnim.h"
#include "Particle3DObj.h"
#include "ParticleLightMap.h"

uint32_t Chain::GetSaveType()
{
	return GAME_THING_TYPE_CHAIN;
}

uint32_t DrawOffsetDecay::GetSaveType()
{
	return GAME_THING_TYPE_DRAW_OFFSET_DECAY;
}

uint32_t DrawOffsetLT::GetSaveType()
{
	return GAME_THING_TYPE_DRAW_OFFSET_LT;
}

char* DrawOffset::GetDebugText()
{
	return "##a_class:";
}

char* DrawOffsetLT::GetDebugText()
{
	return "##a_class:";
}

char* DrawOffsetDecay::GetDebugText()
{
	return "##a_class:";
}

char* Particle3DObj::GetDebugText()
{
	return "##a_class:";
}

char* RenderParticleCreatureRef::GetDebugText()
{
	return "##a_class:";
}

char* RenderParticleGameObjectRef::GetDebugText()
{
	return "##a_class:";
}

char* Particle3DAnim::GetDebugText()
{
	return "##a_class:";
}

char* Chain::GetDebugText()
{
	return "##a_class:";
}

char* RenderParticleMist::GetDebugText()
{
	return "##a_class:";
}

char* RenderParticleGameObject::GetDebugText()
{
	return "##a_class:";
}

char* ParticleLightMap::GetDebugText()
{
	return "##a_class:";
}
