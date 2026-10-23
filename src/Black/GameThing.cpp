#include "GameTimeConstants.h"
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
#include "LandscapeConstants.h" /* For LandscapeExtent */

static float unused;

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static_assert(offsetof(Town, belief) == 0x798, "Town belief offset is incorrect");
#elif defined(VERSION_BW1W110)
static_assert(offsetof(Town, belief) == 0x794, "Town belief offset is incorrect");
#elif defined(VERSION_BW1W100)
static_assert(offsetof(Town, belief) == 0x790, "Town belief offset is incorrect");
#endif

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

void GameThing::ProcessDead(bool32_t delete_now)
{
	if ((Flags & GAME_THING_FLAG_DEAD) == 0 && !delete_now)
	{
		Flags |= GAME_THING_FLAG_DEAD;
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

	Flags |= GAME_THING_FLAG_DEAD;
	Delete();
}

void GameThing::ProcessDeadList(bool32_t delete_now)
{
	GameThing* gameThing;
	GameThing* next;
	while (true)
	{
		gameThing = GGame::g_game->GameLists.GameThings.Get();
		while (gameThing != NULL)
		{
			next = gameThing->next.Get();
#ifdef VERSION_BW1WCI
			LHListHead<GameThing>* list;
			bool                   corrupt = false;
			__try
			{
				GameThing* checked = dynamic_cast<GameThing*>(gameThing);
				if (checked != NULL)
				{
					checked->ProcessDead(delete_now);
				}
				else
				{
					corrupt = true;
				}
			}
			__except (EXCEPTION_EXECUTE_HANDLER)
			{
				corrupt = true;
			}
			if (corrupt)
			{
				list = &GGame::g_game->GameLists.GameThings;
				list->Remove(gameThing);
			}
#else
			if (dynamic_cast<GameThing*>(gameThing))
			{
				gameThing->ProcessDead(delete_now);
			}
#endif
			gameThing = next;
		}
		if (!delete_now || GGame::g_game->GameLists.GameThings.count == 0)
		{
			return;
		}
	}
}

void GameThing::ToBeDeleted(bool32_t delete_now)
{
	if ((Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		Flags |= GAME_THING_FLAG_UNAVAILABLE;
		if (delete_now)
		{
			Delete();
			return;
		}

		Flags &= ~GAME_THING_FLAG_DEAD;
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

bool32_t GameThing::Save(GameOSFile& file)
{
	uint32_t saveType = GetSaveType();
	WRITE_SAFE(file, saveType);
	SaveExtraData(file);
	if (saveType != 0)
	{
		file.WriteCheckSum(this);
		WRITE_SAFE(file, destroyed);
		WRITE_SAFE(file, Flags);
		return true;
	}
	return false;
}

bool32_t GameThing::Load(GameOSFile& file)
{
	RenderLoadingFrame(true);
	file.ReadCheckSum(this);

	file.ReadSafe(destroyed);
	file.ReadSafe(Flags);
#ifdef VERSION_BW1WCI
	GameThing* listed = GGame::g_game->GameLists.GameThings.Find(this);
	if ((Flags & GAME_THING_FLAG_UNAVAILABLE) != 0 && listed == NULL)
	{
		GGame::g_game->GameLists.GameThings.AddToFirst(this);
	}
#endif

	return true;
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

void GameThingWithPos::ToBeDeleted(bool32_t delete_now)
{
	CleanupWhenDeleted(delete_now);
	GameThing::ToBeDeleted(delete_now);
}

bool32_t GameThingWithPos::Get3DSoundPos(LHPoint* pos)
{
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, *pos);
	return true;
}

float GameThingWithPos::GetPower() const
{
	return 1.0f;
}

float GameThingWithPos::GetBoredomMultiplier(Reaction* reaction)
{
	if (GetTown() != NULL)
	{
		REACTION index = reaction->GetFunctionIndex();
		GBelief* belief = &GetTown()->belief;
		return belief->BoredomMultiplier[index];
	}
	return 1.0f;
}

float GameThingWithPos::GetUpdateOfBoredomValue(Reaction* reaction, GameThingWithPos* reactor)
{
	return GBeliefInfo::Info.UpdateOfBoredomValue;
}

float GameThingWithPos::GetPSysPower() const
{
	return 1.0f;
}

float GameThing::MaintainSpell(uint32_t spell, float amount)
{
	return amount;
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

bool32_t GameThingWithPos::IsThingMovingTowards(GameThingWithPos* target, GameThingWithPos* moving_thing)
{
	LHPoint targetPos;
	LHPoint movingPos;
	GLandscape::ConvertMapCoordToLandscapePoint(target->Pos, targetPos);
	GLandscape::ConvertMapCoordToLandscapePoint(moving_thing->Pos, movingPos);
	LHPoint targetToMoving = targetPos - movingPos;

	float unused = targetToMoving.x;

	targetToMoving.FastNormalizeInline();
	LHPoint movingDirection;
	moving_thing->GetMovementDirection(&movingDirection);
	movingDirection.FastNormalizeInline();
	return targetToMoving.DotProductInline(movingDirection) >= 0.0f;
}

GPlayer* GameThing::GetPlayer()
{
	return &GGame::g_game->players[GGame::g_game->NeutralPlayerIndex];
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

void GameThingWithPos::SetSpeedInMetres(float speed_in_metres, bool32_t scale_speed) {}

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

bool32_t GameThingWithPos::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		WRITE_SAFE(file, Pos);
		WRITE_SAFE(file, Flags);
		return true;
	}
	return false;
}

bool32_t GameThingWithPos::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{

		file.ReadSafe(Pos);
		file.ReadSafe(Flags);

		Flags &= ~GAME_THING_WITH_POS_FLAG_0x00000100;
		if ((Flags & GAME_THING_WITH_POS_FLAG_IN_MAP) != 0)
		{
			Flags &= ~GAME_THING_WITH_POS_FLAG_IN_MAP;
		}

		return true;
	}
	return false;
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

uint32_t GameThing::JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool poisoned)
{
	return 0;
}

uint32_t GameThing::JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* poisoned)
{
	return 0;
}

uint32_t GameThing::JustGetResource(RESOURCE_TYPE type, uint32_t amount, bool* poisoned)
{
	return 0;
}
