#include "GameTimeConstants.h"
#include "PSysSound.h"
#include "DefensiveSphere.h"
#include "PSysAtomCore.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h>

uint32_t DefensiveSphere::GetSaveType()
{
	return GAME_THING_TYPE_DEFENSIVE_SPHERE;
}

uint32_t PSysSound::GetSaveType()
{
	return GAME_THING_TYPE_PSYS_SOUND;
}

char* PSysSound::GetDebugText()
{
	return "SpellSound:";
}

char* DefensiveSphere::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

bool32_t PSysSound::Get3DSoundPos(LHPoint* pos)
{
	if (Core != NULL)
	{
		pos->Set(Core->LastDrawPosInfo.Transform.GetPos());
		if (UseGroundHeight)
		{
			pos->y = LH3DIsland::GetAltitude(*pos);
		}
	}
	return true;
}
