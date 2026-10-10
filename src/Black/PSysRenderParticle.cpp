#include "GameTimeConstants.h"
#include "PSysRenderParticle.h"

#include "ColourConstants.h" /* For White */
#include "Chain.h"
#include "PSysModifiers.h"

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
