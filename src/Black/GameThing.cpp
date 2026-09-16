#include "GameThing.h"
#include "GameThingWithPos.h"

#include <stdint.h>

#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include "re_common.h"

#include "ColourConstants.h" /* For White */
#include "FootpathLink.h"
#include "Game.h"
#include "GameOSFile.h"
#include "LandscapeConstants.h" /* For CellSizeXGridDim */
#include "Utils.h"

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

void GameThingWithPos::ToBeDeleted(int param_1)
{
	CleanupWhenDeleted(param_1);
	GameThing::ToBeDeleted(param_1);
}

int GameThingWithPos::Get3DSoundPos(LHPoint* pos)
{
	return 1;
}

float GameThingWithPos::GetPower() const
{
	return 1.0f;
}

float GameThingWithPos::GetBoredomMultiplier(Reaction* param_1)
{
	if (GetTown() != NULL)
	{
		return GetTown()->belief.BeliefInPlayer[0];
	}
	return 1.0f;
}

float GameThingWithPos::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
	static float boredomValue;
	return boredomValue;
}

float GameThingWithPos::GetPSysPower() const
{
	return 1.0f;
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

void GameThingWithPos::GetMovementDirection(LHPoint* pos)
{
	if ((this->Flags & 0x40) != 0)
	{
		GetPhysicsMovementDirection(pos);
	}
	else
	{
		pos->SetNull();
	}
}

void GameThingWithPos::GetPhysicsMovementDirection(LHPoint* pos)
{
	pos->SetNull();
}

IMPRESSIVE_TYPE GameThingWithPos::GetImpressiveType()
{
	return IMPRESSIVE_TYPE_NOT_IMPRESSIVE_AT_ALL;
}

GPlayer* GameThing::GetPlayer()
{
	return &GGame::g_game->players[GGame::g_game->NeutralPlayerIndex];
}

void GameThing::SetPlayer(GPlayer* player) {}

bool32_t GameThingWithPos::IsInteractable()
{
	return IsAvailable() != false;
}

bool32_t GameThingWithPos::CanBeThrownByPlayer()
{
	return IsMobileObject() || IsMobileStatic() || IsAnyKindOfTree();
}

SCRIPT_OBJECT_TYPE GameThingWithPos::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_NONE;
}

void GameThingWithPos::SetSpeedInMetres(float param_1, int param_2) {}

float GameThingWithPos::GetSpeedInMetres() const
{
	return 0.0f;
}

float GameThingWithPos::GetRunningSpeedInMetres()
{
	return 0.0f;
}

float GameThingWithPos::GetDefaultSpeedInMetres()
{
	return 0.0f;
}

void GameThingWithPos::SetSpeedInMetresPerSecond(float speed, int scale) {}

float GameThingWithPos::GetSpeedInMetresPerSecond() const
{
	return 0.0f;
}

float GameThingWithPos::GetRunningSpeedInMetresPerSecond()
{
	return 0.0f;
}

float GameThingWithPos::GetDefaultSpeedInMetresPerSecond()
{
	return 0.0f;
}

int GameThingWithPos::ForDrawFXGetNumVertices()
{
	return 0;
}

bool GameThingWithPos::ForDrawFXGetVertexPos(int index, LHPoint* pos)
{
	return false;
}

float GameThingWithPos::GetDistanceFromObject(const MapCoords& target)
{
	return GUtils::GetDistanceInMetres(Pos, target) - GetRadius();
}

void GameThingWithPos::GetPSysBeamTargetPos(LHPoint* pos)
{
	*pos = Pos.GetLHPoint();
	pos->y += GetHeight() / 2.0f;
}

void GameThing::UseFootpathIfNecessary(Living* living, const MapCoords& coords, uint8_t state)
{
	living->SetupMoveToWithHug(coords, state);
}

void GameThingWithPos::UseFootpathIfNecessary(Living* living, const MapCoords& coords, uint8_t state)
{
	if (GetFootpathLink())
	{
		GetFootpathLink()->UseFootpathIfNecessary(living, coords, state, this);
	}
	else
	{
		living->SetupMoveToWithHug(coords, state);
	}
}

void GameThingWithPos::CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos)
{
	*outPos = Pos.ConvertToLHPoint();
}

uint32_t GameThingWithPos::GetFOVHelpMessageSet()
{
	return 0;
}

uint32_t GameThingWithPos::GetFOVHelpCondition()
{
	return 0;
}

uint32_t GameThingWithPos::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{

		file.WriteSafe(Pos);
		file.WriteSafe(Flags);

		return 1;
	}
	return 0;
}

uint32_t GameThingWithPos::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{

		file.ReadSafe(Pos);
		file.ReadSafe(Flags);

		Flags &= ~0x100;
		if ((Flags & 1) != 0)
		{
			Flags &= ~1;
		}

		return 1;
	}
	return 0;
}

uint32_t GameThingWithPos::GetSaveType()
{
	return GameThing::GetSaveType();
}

MapCoords GameThingWithPos::GetSpellCastPos()
{
	return Pos;
}

uint32_t GameThingWithPos::GetOverwritePickUpToolTip()
{
	return 0;
}

uint32_t GameThingWithPos::GetOverwriteInteractableToolTip()
{
	return 0;
}

uint32_t GameThingWithPos::GetOverwriteDropToolTip()
{
	return 0;
}

uint32_t GameThingWithPos::GetOverwriteTapToolTip()
{
	return 0;
}

void GameThingWithPos::SetToZero()
{
	Flags = 0;
	MapChild = NULL;
	Pos.x = 0;
	Pos.z = 0;
	Pos.altitude = 0.0;
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
