#include "Town.h"
#include <stddef.h> /* For NULL in intrusive-list templates */
#include "GameTimeConstants.h"
#include "Citadel.h"
#include "Game.h"
#include "CitadelInfo.h"

// BW1W120 00464090 BW1M119 01030680
float Citadel::GetInfluence()
{
	return GGame::g_game->PlayerInfluenceMultiplier * influence;
}

WorshipSite* Citadel::FindOrCreateWorshipSite(const GTribeInfo* tribe_info)
{
	WorshipSite* result = FindTribeWorshipSite(tribe_info);
	if (result == NULL)
	{
		result = RequestANewWorshipSite(tribe_info);
	}
	return result;
}

WorshipSite* Citadel::FindOrCreateWorshipSite(Town* town)
{
	if (town == NULL)
	{
		return NULL;
	}
	WorshipSite* result = NULL;
	if (NumWorshipSites == 0 && town->IsAllowedToCreateWorshipSite())
	{
		result = FindOrCreateWorshipSite(town->GetTribe());
	}
	return result;
}

uint32_t Citadel::GetSaveType()
{
	return GAME_THING_TYPE_CITADEL;
}

uint32_t Citadel::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_CITADEL;
}

uint32_t Citadel::GetCreatureBeliefListType()
{
	return 0;
}

uint32_t Citadel::GetOrigin()
{
	return OBJECT_ORIGIN_MAGIC;
}

bool32_t Citadel::IsSuitableForCreatureActivity()
{
	return true;
}

bool32_t Citadel::IsCitadel()
{
	return true;
}

const char* Citadel::GetText()
{
	return "Citadel";
}

char* Citadel::GetDebugText()
{
	return "Citadel:";
}

GBaseInfo* GCitadelInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}
