#include "GameTimeConstants.h"
#include "Dance.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "FootpathLink.h"
#include "DanceInfo.h"  /* For class GDanceInfo */
#include "DanceLight.h" /* For class DanceLight */
#include "Game.h"       /* For class GGame */
#include "GameInfo.h"   /* For class GGameInfo */
#include "Landscape.h"  /* For class GLandscape */
#include "Living.h"     /* For class Living */

#define FILEPATH "C:\\dev\\MP\\Black\\Dance.cpp"

/* Half a map cell in map coordinates */
#define MAP_COORDS_HALF_CELL 0x8000

uint32_t Dance::GetSaveType()
{
	return GAME_THING_TYPE_DANCE;
}

uint32_t GFootpathLink::GetSaveType()
{
	return GAME_THING_TYPE_GFOOTPATH_LINK;
}

SCRIPT_OBJECT_TYPE Dance::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_DANCE;
}

bool32_t Dance::IsScriptContainer() const
{
	return true;
}

GFootpathLink* Dance::GetFootpathLink()
{
	return FootpathLink;
}

bool32_t Dance::IsDance() const
{
	return true;
}

const char* Dance::GetText()
{
	return "Dance";
}

char* Dance::GetDebugText()
{
	return "Dance:";
}

Dance::~Dance() {}

void Dance::SetState(DANCE_STATE state)
{
	State = state;
	for (int i = 0; i < GROUP_BEHAVIOUR_MAX_LIGHTS; i++)
	{
		if (Lights[i] != NULL)
		{
			delete Lights[i];
			Lights[i] = NULL;
		}
	}
}

void Dance::CleanUpBeforeReset()
{
	Target = NULL;
}

void Dance::StartDance()
{
	State = DANCE_STATE_DANCING;
	StartTurn = GGame::g_game->data.GameTurn;
}

void Dance::ProcessDances()
{
	DanceEditState::UpdateEveryGameTurn();
	FOREACH_LH_LIST_HEAD_SAFE(Dance, dance, GGame::g_game->GameLists.dances)
	{
		dance->Process();
	}
}

bool32_t Dance::HasDanceProperlyStarted()
{
	if (NumDancers > 0)
	{
		if (!WaitingForDancers)
		{
			WaitingForDancers = true;
			WaitStartTurn = GGame::g_game->data.GameTurn;
		}
		if (NumDancers > NumDancersExpected / 2 ||
		    (GGame::g_game->data.GameTurn - WaitStartTurn) / GGameInfo::Info.NumGameTicksPerSecond() >=
		        DANCE_MAX_SECONDS_WAITING_FOR_DANCERS)
		{
			return true;
		}
	}
	return false;
}

uint32_t Dance::GetGameTurnsActiveFor()
{
	return GGame::g_game->data.GameTurn - StartTurn;
}

GDanceInfo* Dance::GetInfo()
{
	return &GDanceInfo::Infos[Type];
}

int Dance::Get3DSoundPos(LHPoint* pos)
{
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, *pos);
	return true;
}

Living* Dance::FindLiving(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                          SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	for (LHLinkedNode<DanceGroup*>* group = DanceGroups.GetStart(); group != NULL; group = group->next.Get())
	{
		for (LHLinkedNode<Living*>* dancer = group->payload->Dancers.GetStart(); dancer != NULL;
		     dancer = dancer->next.Get())
		{
			Living* living = dancer->payload;
			if (callback(living, type, subtype))
			{
				return living;
			}
		}
	}
	return NULL;
}

uint32_t Dance::AddFootpath(GFootpath* footpath)
{
	if (GetFootpathLink() == NULL)
	{
		FootpathLink = new (FILEPATH, 724) GFootpathLink();
	}
	GetFootpathLink()->AddFootpath(footpath);
	return true;
}

char* GFootpathLink::GetDebugText()
{
	return "FootpathLink:";
}

uint32_t Dance::RemoveFootpath(GFootpath* footpath)
{
	if (GetFootpathLink() != NULL)
	{
		FootpathLink->RemoveFootpath(footpath);
	}
	return true;
}

MapCoords Dance::GetArrivePos()
{
	MapCoords pos = Pos;
	pos.x += MAP_COORDS_HALF_CELL;
	return pos;
}
