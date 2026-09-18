#include "GameThing.h"

#include <stdint.h>

#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include "Lionhead/LH3DLib/development/LHPoint.h"
#include "re_common.h"

#include "ColourConstants.h" /* For White */
#include "GameThingWithPos.h"
#include "FootpathLink.h"
#include "Game.h"
#include "GameOSFile.h"
#include "Landscape.h"
#include "MapCoords.h"
#include "Utils.h"
#include "BeliefInfo.h"
#include "LandscapeConstants.h" /* For CellSizeXGridDim */

// fabricated: unreferenced 4-byte .bss slot at 0x00d0607c; real name unknown
static float unused;

uint16_t GameThing::NumActiveGameThings;
uint16_t GameThing::NumCreatedGameThings;

GameThing::GameThing() : Base()
{
	++NumActiveGameThings;
	Flags = 0;
	CreationIndex = NumCreatedGameThings++;
	CurrentSaveCount = 0;
}

void GameThing::SetScriptNameOfCreate(char* name) {}

GameThing::~GameThing()
{
	--NumActiveGameThings;
}

void GameThing::ProcessDead(int param_1)
{
	if ((Flags & 2) == 0 && param_1 == 0)
	{
		Flags |= 2;
		return;
	}

	LHListHead<GameThing>& list = GGame::g_game->GameLists.GameThings;
	if (list.Get() == this)
	{
		list.Set(next.Get());
		list.count--;
		next.Set(NULL);
	}
	else
	{
		for (GameThing* thing = list.Get(); thing != NULL; thing = thing->next.Get())
		{
			if (thing->next.Get() == this)
			{
				thing->next.Set(next.Get());
				list.count--;
				next.Set(NULL);
				break;
			}
		}
	}

	Flags |= 2;
	Delete();
}

void GameThing::ProcessDeadList(int param_1)
{
	while (true)
	{
		GameThing* thing = GGame::g_game->GameLists.GameThings.Get();
		while (thing != NULL)
		{
			GameThing* thingNext = thing->next.Get();
			if (dynamic_cast<GameThing*>(thing))
			{
				thing->ProcessDead(param_1);
			}
			thing = thingNext;
		}
		if (param_1 == 0 || GGame::g_game->GameLists.GameThings.count == 0)
		{
			return;
		}
	};
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

		Flags &= ~2;
		next.Set(NULL);

		if (GGame::g_game->GameLists.GameThings.Find(this) == NULL)
		{
			LHListHead<GameThing>& list = GGame::g_game->GameLists.GameThings;
			next.Set(list.Get());
			list.Set(this);
			list.count++;
		}
	}
}

uint32_t GameThing::Save(GameOSFile& file)
{
	uint32_t saveType = GetSaveType();
	WRITE_SAFE(file, saveType);
	SaveExtraData(file);
	if (saveType != 0)
	{
		file.WriteCheckSum(this);
		WRITE_SAFE(file, destroyed);
		WRITE_SAFE(file, Flags);
		return 1;
	}
	return 0;
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
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, *pos);
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
		REACTION index = param_1->GetFunctionIndex();
		GBelief* belief = &GetTown()->belief;
		return belief->BoredomMultiplier[index];
	}
	return 1.0f;
}

float GameThingWithPos::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
	return GBeliefInfo::Info.UpdateOfBoredomValue;
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
	if ((this->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) != 0)
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

bool32_t GameThingWithPos::IsThingMovingTowards(GameThingWithPos* target, GameThingWithPos* moving_thing)
{
	LHPoint target_pos;
	LHPoint moving_pos;
	GLandscape::ConvertMapCoordToLandscapePoint(target->Pos, target_pos);
	GLandscape::ConvertMapCoordToLandscapePoint(moving_thing->Pos, moving_pos);
	LHPoint target_to_moving = target_pos - moving_pos;

	// Needed for 100%: Dead read of target_to_moving.x raises its x87 scheduling weight
	float unused = target_to_moving.x;

	target_to_moving.FastNormalizeInline();
	LHPoint moving_direction;
	moving_thing->GetMovementDirection(&moving_direction);
	moving_direction.FastNormalizeInline();
	return target_to_moving.DotProductInline(moving_direction) >= 0.0f;
}

void GameThing::SetPlayer(GPlayer* player) {}

void GameThingWithPos::SetPos(const LHPoint& pos)
{
	MapCoords coords;
	coords.SetX(pos.x);
	coords.SetZ(pos.z);
	coords.SetAltitude(0);
	SetPos(coords);
}

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
		WRITE_SAFE(file, Pos);
		WRITE_SAFE(file, Flags);
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
