#include "GameTimeConstants.h"
#include "Dance.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "FootpathLink.h"
#include "DanceInfo.h"    /* For class GDanceInfo */
#include "DanceLight.h"   /* For class DanceLight */
#include "Game.h"         /* For class GGame */
#include "GameOSFile.h"   /* For class GameOSFile */
#include "GameInfo.h"     /* For class GGameInfo */
#include "Landscape.h"    /* For class GLandscape */
#include "Living.h"       /* For class Living */
#include "VillagerInfo.h" /* For class GVillagerInfo */
#include "Villager.h"     /* For class Villager */
#include "WorshipSite.h"  /* For class WorshipSite */
#include "Footpath.h"     /* For class GFootpath */
#include "StoragePit.h"   /* For class StoragePit */
#include "Town.h"         /* For class Town */

#include <float.h>  /* For FLT_MAX */
#include <string.h> /* For strcpy */

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\Dance.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\Dance.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\Dance.cpp"
#endif

#define MAP_COORDS_HALF_CELL 0x8000

const float DanceTownMaxDistance = FLT_MAX;
const float MinDanceSpeed = 0.0f;
const float MaxDanceSpeed = 4.0f;

GDanceInfo GDanceInfo::Infos[DANCE_INFO_LAST];

GBaseInfo* GDanceInfo::GetBaseInfo(uint32_t& num_infos)
{
	num_infos = DANCE_INFO_LAST;
	return Infos;
}

uint32_t Dance::GetSaveType()
{
	return GAME_THING_TYPE_DANCE;
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

void Dance::Initialise(const char* file_name, DANCE_INFO type, const MapCoords& pos, GameThingWithPos* target,
                       uint32_t duration, bool32_t follow_target, Town* town)
{
	FootpathLink = NULL;
	UseDanceCamera = false;
	DanceCameraDisabled = false;
	Type = type;
	State = DANCE_STATE_WAITING;
	Target = target;
	DanceGroups.DeleteAll();
	DanceGroup* group = new (FILEPATH, 127) DanceGroup();
	group->Dancer = this;
	group->behaviour = this;
	group->Index = 0;
	DanceGroups.Add(group);
	Pos = pos;
	SetWorshipSpeed(DANCE_DEFAULT_WORSHIP_SPEED);
	GGame::g_game->GameLists.dances.AddToFirst(this);
	Duration = duration;
	WaitingForDancers = false;
	NumDancersExpected = 0;
	strcpy(Label, "begin");
	Unused = 0;
	LoadDance(file_name);
	FollowTarget = follow_target;
	if (type != DANCE_INFO_WORSHIP &&
	    (type <= DANCE_INFO_DANCE_AROUND_OBJECT_DIAMETER_GREATER_20 || type > DANCE_INFO_CITADEL_DANCE_6))
	{
		if (town == NULL)
		{
			town = Pos.GetNearestTown(DanceTownMaxDistance);
			if (town == NULL)
			{
				return;
			}
		}
		StoragePit* pit = town->GetStoragePit();
		if (pit != NULL)
		{
			GFootpath::GenerateRoutesBetween(pit, this);
		}
	}
}

Dance::~Dance() {}

void Dance::ToBeDeleted(int delete_now)
{
	if (GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE)
	{
		return;
	}
	for (LHLinkedNode<DanceGroup*>* node = DanceGroups.GetStart(); node != NULL; node = node->next.Get())
	{
		DanceGroup*            group = node->payload;
		LHLinkedNode<Living*>* next;
		for (LHLinkedNode<Living*>* dancer = group->Dancers.GetStart(); dancer != NULL; dancer = next)
		{
			Living* living = dancer->payload;
			next = dancer->next.Get();
			if (!(living->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
			{
				living->RemoveFromDance(true);
				living->SetStateAfterFinishingDance();
			}
		}
		DanceMembers.RemoveAll();
		group->ToBeDeleted(false);
	}
	DanceGroups.RemoveAll();
	if (Target != NULL)
	{
		Target->RemoveDance();
	}
	GGame::g_game->GameLists.dances.Remove(this);
	GroupBehaviour::ToBeDeleted(false);
}

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

float Dance::GetAngle()
{
	WorshipSite* site = dynamic_cast<WorshipSite*>(Target);
	if (site != NULL)
	{
		return site->GetAngleFromCitadel();
	}
	return 0.0f;
}

void Dance::SetWorshipSpeed(float speed)
{
	float step = (float)(uint32_t)(speed * DANCE_WORSHIP_SPEED_STEPS) / DANCE_WORSHIP_SPEED_STEPS;
	Speed = step * (MaxDanceSpeed - MinDanceSpeed) + MinDanceSpeed;
	if (State == DANCE_STATE_DANCING && Speed != LastSpeed)
	{
		LastSpeed = Speed;
		Time = 0.0f;
	}
	WorshipSpeed = speed;
}

uint32_t Dance::GetGameTurnsActiveFor()
{
	return GGame::g_game->data.GameTurn - StartTurn;
}

GDanceInfo* Dance::GetInfo()
{
	return &GDanceInfo::Infos[Type];
}

bool32_t Dance::Save(GameOSFile& file)
{
	if (GroupBehaviour::Save(file))
	{
		file.WriteIt(Type);
		file.WriteIt(Unused);
		file.WriteIt(WorshipSpeed);
		file.WritePtr(Target);
		file.WriteIt(State);
		file.WriteIt(Duration);
		file.WriteIt(StartTurn);
		file.WriteIt(WaitingForDancers);
		file.WriteIt(WaitStartTurn);
		file.WriteIt(NumDancersExpected);
		file.WriteIt(Label);
		file.WriteIt(FollowTarget);
		file.WritePtr(FootpathLink);
		return true;
	}
	return false;
}

bool32_t Dance::Load(GameOSFile& file)
{
	if (GroupBehaviour::Load(file))
	{
		file.ReadIt(Type);
		file.ReadIt(Unused);
		file.ReadIt(WorshipSpeed);
		file.ReadPtr((GameThing**)&Target);
		file.ReadIt(State);
		file.ReadIt(Duration);
		file.ReadIt(StartTurn);
		file.ReadIt(WaitingForDancers);
		file.ReadIt(WaitStartTurn);
		file.ReadIt(NumDancersExpected);
		file.ReadIt(Label);
		file.ReadIt(FollowTarget);
		file.ReadPtr((GameThing**)&FootpathLink);
		return true;
	}
	return false;
}

float Dance::CalculateAverageLifeDesiredByDancers()
{
	float    total = 0.0f;
	uint32_t numDancers = 0;
	for (LHLinkedNode<DanceGroup*>* group = DanceGroups.GetStart(); group != NULL; group = group->next.Get())
	{
		numDancers += group->payload->Dancers.count;
		for (LHLinkedNode<Living*>* dancer = group->payload->Dancers.GetStart(); dancer != NULL;
		     dancer = dancer->next.Get())
		{
			total += dancer->payload->CalculateLifeDesire();
		}
	}
	if (numDancers != 0)
	{
		return total / numDancers;
	}
	return 0.0f;
}

float Dance::CalculateFoodNeededByDancers()
{
	float food = 0.0f;
	for (LHLinkedNode<DanceGroup*>* group = DanceGroups.GetStart(); group != NULL; group = group->next.Get())
	{
		for (LHLinkedNode<Living*>* dancer = group->payload->Dancers.GetStart(); dancer != NULL;
		     dancer = dancer->next.Get())
		{
			Villager* villager = dynamic_cast<Villager*>(dancer->payload);
			if (villager != NULL)
			{
				food += (1.0f - villager->food) * ((const GVillagerInfo*)villager->info)->FoodReqiredForDinner;
			}
		}
	}
	return food;
}

void Dance::SetStateOfEveryVillagerDancing(VILLAGER_STATES state)
{
	for (LHLinkedNode<DanceGroup*>* group = DanceGroups.GetStart(); group != NULL; group = group->next.Get())
	{
		LHLinkedNode<Living*>* next;
		for (LHLinkedNode<Living*>* dancer = group->payload->Dancers.GetStart(); dancer != NULL; dancer = next)
		{
			next = dancer->next.Get();
			Villager* villager = dynamic_cast<Villager*>(dancer->payload);
			if (villager != NULL)
			{
				villager->SetTopState(state);
			}
		}
	}
}

void Dance::SetStateOfEveryVillagerDancingToDecideWhatToDo()
{
	for (LHLinkedNode<DanceGroup*>* group = DanceGroups.GetStart(); group != NULL; group = group->next.Get())
	{
		LHLinkedNode<Living*>* next;
		for (LHLinkedNode<Living*>* dancer = group->payload->Dancers.GetStart(); dancer != NULL; dancer = next)
		{
			next = dancer->next.Get();
			Villager* villager = dynamic_cast<Villager*>(dancer->payload);
			if (villager != NULL)
			{
				villager->SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
			}
		}
	}
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

bool32_t Dance::AddFootpath(GFootpath* footpath)
{
	if (GetFootpathLink() == NULL)
	{
		FootpathLink = new (FILEPATH, 724) GFootpathLink();
	}
	GetFootpathLink()->AddFootpath(footpath);
	return true;
}

bool32_t Dance::RemoveFootpath(GFootpath* footpath)
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
