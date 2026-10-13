#include <re_common.h> /* For ARRAY_SIZE */

#include "AnimatedStatic.h"

#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "Feature.h"
#include "Game.h"   /* For class GGame */
#include "Object.h" /* For class Object */
#include "FeatureInfo.h"

uint32_t AnimatedStatic::GetSaveType()
{
	return GAME_THING_TYPE_ANIMATED_STATIC;
}

uint32_t Feature::GetSaveType()
{
	return GAME_THING_TYPE_FEATURE;
}

bool AnimatedStatic::ChecksVerticesVObjects()
{
	return false;
}

bool32_t AnimatedStatic::CreatureMustAvoid(Creature* param_1)
{
	return true;
}

char* AnimatedStatic::GetDebugText()
{
	return "AnimatedStatic:";
}

AnimatedStatic::~AnimatedStatic()
{
	for (int i = 0; i < ARRAY_SIZE(GateStones); i++)
	{
		if (GateStones[i])
		{
			GateStones[i]->Delete();
			GateStones[i] = NULL;
		}
	}
}

void AnimatedStatic::SetToZero()
{
	CollideData = NULL;
	GateType = 0;
	for (int i = 0; i < ARRAY_SIZE(GateStones); i++)
	{
		GateStones[i] = NULL;
		GateStoneIndices[i] = 0;
	}
}

void AnimatedStatic::ToBeDeleted(int delete_now)
{
	GGame::g_game->GameLists.AnimatedStatics.Remove(this);
	Feature::ToBeDeleted(delete_now);
}

MESH_LIST Feature::GetMesh() const
{
	return info->GetMesh();
}

bool32_t Feature::IsRepaired()
{
	return GetPercentRepaired() >= 1.0f;
}

bool32_t Feature::IsBuilt()
{
	if ((FixedFlags & FIXED_FLAG_UNDER_CONSTRUCTION) == FIXED_FLAG_UNDER_CONSTRUCTION)
	{
		return false;
	}
	return GetPercentBuilt() >= 1.0f;
}

uint32_t Feature::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_FEATURE;
}

char* Feature::GetDebugText()
{
	return "Feature:";
}

GBaseInfo* GFeatureInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = FEATURE_INFO_LAST;
	return Infos;
}
