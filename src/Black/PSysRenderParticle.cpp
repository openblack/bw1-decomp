#include "GameTimeConstants.h"
#include "PSysRenderParticle.h"

#include "ColourConstants.h" /* For White */
#include "Chain.h"
#include "PSysModifiers.h"
#include "PSysPCreator.h"
#include "Particle3DObj.h"
#include "Particle3DAnim.h"
#include "ParticleLightMap.h"

uint32_t Chain::GetSaveType()
{
	return GAME_THING_TYPE_CHAIN;
}

uint32_t DrawOffset::GetSaveType()
{
	return GAME_THING_TYPE_UNUSED_000;
}

uint32_t DrawOffsetDecay::GetSaveType()
{
	return GAME_THING_TYPE_DRAW_OFFSET_DECAY;
}

uint32_t DrawOffsetLT::GetSaveType()
{
	return GAME_THING_TYPE_DRAW_OFFSET_LT;
}

char* Particle3DObj::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* RenderParticleCreatureRef::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* RenderParticleGameObjectRef::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* Particle3DAnim::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* RenderParticleMist::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* RenderParticleGameObject::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* ParticleLightMap::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* Chain::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* DrawOffset::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* DrawOffsetLT::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* DrawOffsetDecay::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}
