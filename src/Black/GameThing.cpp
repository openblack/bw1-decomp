#include "GameThing.h"

#include <Lionhead/LH3DLib/development/LH3DRender.h>

#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "GameOSFile.h"
#include "LandscapeConstants.h" /* For CellSizeXGridDim */

GameThing::GameThing() : Base()
{
	++NumActiveGameThings;
	Flags = 0;
	CreationIndex = NumCreatedGameThings++;
	field_0xc = 0;
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
	return 0;
}

uint32_t GameThing::Load(GameOSFile& file)
{
	RenderLoadingFrame(true);
	file.ReadCheckSum(this);

	return 1;
}

uint32_t GameThing::GetSaveType()
{
	return 0;
}

void GameThing::SaveExtraData(GameOSFile& file) {}

float GameThing::MaintainSpell(uint32_t param_1, float param_2)
{
	return param_2;
}
