#include "GameThing.h"

#include <stdint.h>

#include <Lionhead/LH3DLib/development/LH3DRender.h>

#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "GameOSFile.h"
#include "LandscapeConstants.h" /* For CellSizeXGridDim */
#include "re_common.h"

GameThing::GameThing() : Base()
{
	++NumActiveGameThings;
	Flags = 0;
	CreationIndex = NumCreatedGameThings++;
	CurrentSaveCount = 0;
}

GameThing::~GameThing() {}

void GameThing::ProcessDead(int param_1)
{
	GGame* game = GGame::g_game;
	if ((Flags & 2) == 0 && param_1 == 0)
	{
		Flags |= 2;
		return;
	}

	GameThing* prev_thing = GGame::g_game->GameLists.GameThings.head;
	if (prev_thing == this)
	{
		GGame::g_game->GameLists.GameThings.head = next.value;
	}
	else
	{
		prev_thing->next = next;
	}

	--game->GameLists.GameThings.count;

	next.Set(NULL);
	Flags |= 2;
	Delete();
}

void GameThing::ProcessDeadList(int param_1)
{
	for (GameThing* g = GGame::g_game->GameLists.GameThings.head; g != NULL; g = g->next.value)
	{
		if (dynamic_cast<GameThing*>(g))
		{
			g->ProcessDead(param_1);
		}
	}
}

void GameThing::ToBeDeleted(int param_1)
{
	if ((Flags & 1) == 0)
	{
		Flags |= 1;
		if (param_1)
		{
			Delete();
			return;
		}

		Flags = (Flags & ~2) | 1;

		next.Set(NULL);
		for (GameThing* g = GGame::g_game->GameLists.GameThings.head; g != NULL; g = g->next.value)
		{
		}
	}
}

uint32_t GameThing::Save(GameOSFile& file)
{
	uint32_t saveType = GetSaveType();
	WRITE_SAFE(file, saveType);
	SaveExtraData(file);
	file.WriteCheckSum(this);
	WRITE_SAFE(file, destroyed);
	WRITE_SAFE(file, Flags);
	return 1;
}

uint32_t GameThing::Load(GameOSFile& file)
{
	RenderLoadingFrame(true);
	file.ReadCheckSum(this);

	file.ReadSafe(destroyed);
	file.ReadSafe(Flags);

	return 1;
}

uint32_t GameThing::GetSaveType()
{
	return 0;
}

void GameThing::SaveExtraData(GameOSFile& file)
{
	uint32_t zero = 0;
	file.WriteSafe(zero);
}

float GameThing::MaintainSpell(uint32_t param_1, float param_2)
{
	return param_2;
}

void GameThing::UpdateSpellInfo(Spell* spell, PSysProcessInfo* info) {}

bool32_t GameThing::CheckAndSetSaved()
{
	if (GlobalSaveCount != CurrentSaveCount)
	{
		CurrentSaveCount = GlobalSaveCount;
		return 1;
	}
	return 0;
}

Town* GameThing::GetTown()
{
	return NULL;
}

GPlayer* GameThing::GetPlayer()
{
	return &GGame::g_game->players[GGame::g_game->NeutralPlayerIndex];
}

void GameThing::SetPlayer(GPlayer* player) {}

void GameThing::UseFootpathIfNecessary(Living* living, const MapCoords& coords, uint8_t state)
{
	living->SetupMoveToWithHug(coords, state);
}

uint32_t GameThing::JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool param_3)
{
	return 0;
}

uint32_t GameThing::JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* param_3)
{
	return 0;
}

uint32_t GameThing::JustGetResource(RESOURCE_TYPE param_1, uint32_t amount, bool* param_3)
{
	return 0;
}
