#include "MapCellConstants.h" /* For MetresPerMapCell */
#include "GameTimeConstants.h"
#include "Town.h"

#include <limits.h> /* For INT_MAX */
#include <math.h>   /* For fabs */
#include <stddef.h> /* For NULL */
#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For qsort */
#include <string.h> /* For strcpy, strlen */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For TWO_PI */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LHLib/ver5.0/LHQueue.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "ColourConstants.h" /* For White */

#include "AbodeInfo.h"
#include "Animal.h"
#include "Artifact.h"
#include "Ball.h"
#include "BuildingSite.h"
#include "Camera.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "Climate.h"
#include "Creature.h"
#include "Creche.h"
#include "FieldTypeInfo.h"
#include "Fixed.h"
#include "Flock.h"
#include "BigForest.h"
#include "Forest.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "GameStats.h"
#include "GraveYard.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "JobInfo.h"
#include "Landscape.h"
#include "LivingInfo.h"
#include "MagicInfo.h"
#include "Map.h"
#include "Meeting.h"
#include "MultiMapFixedInfo.h"
#include "PBall.h"
#include "PlannedAbode.h"
#include "Player.h"
#include "Playtime.h"
#include "Pot.h"
#include "PotInfo.h"
#include "Rand.h"
#include "Scaffold.h"
#include "Setup.h"
#include "SoundGuidance.h"
#include "SpellSeedInfo.h"
#include "StoragePit.h"
#include "Totem.h"
#include "TotemStatue.h"
#include "TownCentre.h"
#include "TownCreatureInfo.h"
#include "TownDesireFlags.h"
#include "TownDesireInfo.h"
#include "TownInfo.h"
#include "Tree.h"
#include "TribeInfo.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "Wonder.h"
#include "Workshop.h"
#include "WorshipSite.h"

#if defined(VERSION_BW1W100)
#define TOWN_SOURCE_FILE "C:\\dev\\black\\Town.cpp"
// 1.00 is 4 lines shorter by the constructor and up to 22 by MakeScenicForest; the boundaries between the measured
// lines (123, 2865, 3947, 4588, 4780, 4848, 5142, 5321) are approximate.
#define TOWN_LINE(line)                                                                                                \
	((line) - ((line) < 2865 ? 4 : (line) < 3947 ? 12 : (line) < 5142 ? 16 : (line) < 5321 ? 19 : 22))
#elif defined(VERSION_BW1W110)
#define TOWN_SOURCE_FILE "C:\\dev\\Black\\Town.cpp"
// 1.10 has one line fewer somewhere between the GameRand at 508 and the one at 2865.
#define TOWN_LINE(line)  ((line) < 2865 ? (line) : (line) - 1)
#else
#define TOWN_SOURCE_FILE "C:\\dev\\MP\\Black\\Town.cpp"
#define TOWN_LINE(line)  (line)
#endif

inline float MapCoords::MetersX() const
{
	return (float)(WholeX() * MetresPerMapCell / (float)0x10000);
}

inline float MapCoords::MetersZ() const
{
	return (float)(WholeZ() * MetresPerMapCell / (float)0x10000);
}

inline void MapCoords::SetMetersX(float meters)
{
	SetWholeX((long)(meters * (float)0x10000 / MetresPerMapCell));
}

inline void MapCoords::SetMetersZ(float meters)
{
	SetWholeZ((long)(meters * (float)0x10000 / MetresPerMapCell));
}

inline MapCoords::MapCoords(float meters_x, float meters_z)
{
	SetMetersX(meters_x);
	SetMetersZ(meters_z);
	SetAltitude(0.0f);
}

GTownInfo GTownInfo::Definitions[1];

Town::Town()
	: totem(NULL), graveyard(NULL), next(NULL), NearestTown(NULL), worship_site(NULL), playtime(NULL),
	  town_centre(NULL), field_0xea8(0)
{
	SetToZero();
}

#ifdef VERSION_BW1W100
Town::Town(const MapCoords& coords, const GTownInfo* info, GPlayer* player, TRIBE_TYPE tribe_type, char* name,
           unsigned long id)
#else
Town::Town(const MapCoords& coords, const GTownInfo* info, GPlayer* player, TRIBE_TYPE tribe_type, char* name,
           unsigned long id, int param_7)
#endif
	: Container(coords, info, player), totem(NULL), graveyard(NULL), next(NULL), NearestTown(NULL), worship_site(NULL),
	  playtime(NULL), town_centre(NULL), field_0xea8(0)
{
	SetToZero();
	belief.Init(this);
	desire.Init(this);
	field_0xea8 = 0;
	ID = id;
	if (player == NULL)
	{
		player = GGame::g_game->GetNeutralPlayer();
	}
	player_number = player->GetPlayerNumber();
	owner = player;
	this->tribe_type = tribe_type;
#ifndef VERSION_BW1W100
	ZeroBaseInfluence = param_7;
#endif
	influence = GetBaseInfluence();
	AddTownToPlayer(player);
	if (name != NULL)
	{
		Name = new (TOWN_SOURCE_FILE, TOWN_LINE(123)) char[strlen(name) + 1];
		strcpy(Name, name);
	}
	LastAttackingPlayer = NULL;
	LastAttackedTurn = 0;
	for (int i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		town_desire_flags[i] = NULL;
	}
	CreateTownDesireFlags();
	Raining = GClimate::IsRaining(Pos.GetLHPoint());
	BuildingRequested = false;
	GGame::g_game->GameLists.TownList.Add(this);
	OnCreatedOrLoaded();
	BeliefInNeutralPlayer = GetInfo()->InitialBeliefInNeutralPlayer;
	BalanceBeliefScale = 1.0f;
}

void Town::DeleteDependancys()
{
	if (playtime != NULL)
	{
		playtime->ToBeDeleted(0);
	}
	RemoveTownFromPlayer();
	FieldList.RemoveAll();
	while (HomelessList.head != NULL)
	{
		Villager* villager = HomelessList.head;
		HomelessList.Remove(villager);
		if ((villager->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
		{
			villager->TownDeleted();
		}
	}
	while (AbodeList.head != NULL)
	{
		RemoveStructureFromTown(AbodeList.head);
	}
	LHLinkedNode<Animal*>* node;
	Animal*                animal;
	while ((node = AnimalList.GetStart()) != NULL && (animal = node->payload) != NULL)
	{
		animal->SetTown(NULL);
		AnimalList.Remove(animal);
	}
	MeetingList.ToBeDeletedEach();
	PlannedList.ToBeDeletedEach();
	BuildingSiteList.ToBeDeletedAll();
	FishFarms.RemoveAll();
	SpellIconList.DeleteAll();
	FlockList.RemoveAll();
	CreatureInfoList.DeleteAll();
	if (Name != NULL)
	{
		delete Name;
	}
	for (int i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		if (town_desire_flags[i] != NULL)
		{
			town_desire_flags[i]->ToBeDeleted(0);
			town_desire_flags[i] = NULL;
		}
	}
	for (Reward* reward = GGame::g_game->GameLists.rewards.FindNext(NULL); reward != NULL;)
	{
		Reward* next = GGame::g_game->GameLists.rewards.FindNext(reward);
		if (reward->town == this)
		{
			reward->ToBeDeleted(0);
		}
		reward = next;
	}
	GGame::g_game->GameLists.TownList.Remove(this);
	forests.RemoveAll();
	ArtifactList.RemoveAll();
	MissionaryList.DeleteAll();
}

void Town::ToBeDeleted(int param_1)
{
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		GameThingWithPos::ToBeDeleted(param_1);
		DeleteDependancys();
		GGame::g_game->ForceNeedUpdateInfluence();
	}
}

void Town::AddStructureToTown(MultiMapFixed* structure)
{
	Abode* abode = dynamic_cast<Abode*>(structure);
	if (abode != NULL)
	{
		AbodeList.AddToFirst(abode);
		stats.field_0xe0 = GGame::g_game->data.GameTurn;
	}
	if (playtime != NULL)
	{
		playtime->AddStructure(structure);
	}
	structure->SetTown(this);
	SetTownArea();
}

void Town::AddAbodeToTownStats(Abode* abode)
{
	stats.Add(abode);
}

void Town::RemoveAbodeFromTownStats(Abode* abode)
{
	stats.Remove(abode);
}
void Town::RemoveStructureFromTown(MultiMapFixed* structure)
{
	Abode* abode = dynamic_cast<Abode*>(structure);
	if (abode != NULL)
	{
		abode->town = NULL;
		if (abode->IsBuilt())
		{
			RemoveAbodeFromTownStats(abode);
		}
		else
		{
			BuildingSite* site = NULL;
			while ((site = BuildingSiteList.FindNext(site)) != NULL)
			{
				if (site->GetBuilding() == abode)
				{
					site->ToBeDeleted(0);
				}
			}
		}
		Workshop* workshop = dynamic_cast<Workshop*>(structure);
		if (workshop != NULL)
		{
			RemoveWorkshop(workshop);
		}
		AbodeList.Remove(abode);
		if (AbodeList.count == 0 && PlannedList.count == 0 && stats.NumAdults + stats.NumChildren == 0)
		{
			if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
			{
				ToBeDeleted(0);
			}
			return;
		}
	}
	structure->SetTown(NULL);
	if (playtime != NULL)
	{
		playtime->RemoveStructure(structure);
	}
	SetTownArea();
}

Abode* Town::FindAbodeForVillager(Villager* villager)
{
	const GVillagerInfo* info = (const GVillagerInfo*)villager->info;
	return FindAbodeForVillagerInfo(info);
}

Abode* Town::FindAbodeForVillagerInfo(const GVillagerInfo* villager_info)
{
	int      mostSpace = 0x80000000;
	Abode*   emptyAbode = NULL;
	Abode*   partnerAbode = NULL;
	Abode*   roomyAbode = NULL;
	uint32_t smallestCapacity = 0;
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		const GAbodeInfo* abodeInfo = (const GAbodeInfo*)abode->info;
		if ((abodeInfo->AbodeType & ABODE_TYPE_LIVING_QUARTERS) && abode->IsFunctional())
		{
			uint32_t capacity = abodeInfo->MaxVillagersInAbode;
			int      space = capacity - abode->AdultCount;
			if (abode->AdultCount == 0 && smallestCapacity > capacity)
			{
				smallestCapacity = capacity;
				emptyAbode = abode;
			}
			else
			{
				if ((abode->AdultCount & 1) && partnerAbode == NULL && space > 0)
				{
					int balance = 0;
					FOREACH_LH_LIST_HEAD(Villager, occupant, abode->villagers)
					{
						SEX_TYPE sex = ((const GVillagerInfo*)occupant->info)->sex;
						if (sex == SEX_MALE)
						{
							balance++;
						}
						else if (sex == SEX_FEMALE)
						{
							balance--;
						}
					}
					if ((villager_info->sex == SEX_MALE && balance < 0) ||
					    (villager_info->sex == SEX_FEMALE && balance > 0))
					{
						partnerAbode = abode;
					}
				}
				if (space > mostSpace && space > 0)
				{
					mostSpace = space;
					roomyAbode = abode;
				}
			}
		}
	}
	Abode* result = NULL;
	if (emptyAbode != NULL)
	{
		result = emptyAbode;
	}
	else if (partnerAbode != NULL)
	{
		result = partnerAbode;
	}
	else if (roomyAbode != NULL)
	{
		result = roomyAbode;
	}
	return result;
}

struct TownJobWeight
{
	int            Job;
	uint32_t       CumulativeWeight;
	GVillagerInfo* Info;

	static int __cdecl QSortCompare(const void* a, const void* b)
	{
		return ((const TownJobWeight*)a)->CumulativeWeight > ((const TownJobWeight*)b)->CumulativeWeight;
	}
};

int Town::PopulateTown(unsigned long count)
{
	GVillagerInfo* femaleInfo = NULL;
	GVillagerInfo* maleInfo = NULL;
	int            created = 0;
	MapCoords      pos;
	if (count == 0)
	{
		count = stats.VillagerSpaceLeftInAbodes;
	}
	TRIBE_TYPE    tribe = tribe_type;
	uint32_t      totalWeight = 0;
	int           numWeights = 0;
	TownJobWeight weights[VILLAGER_JOB_LAST];
	for (int job = 0; job < VILLAGER_JOB_LAST; job++)
	{
		for (int i = 0; i < VILLAGER_INFO_LAST; i++)
		{
			GVillagerInfo* info = &GVillagerInfo::InfoList[i];
			if (info->TribeType == tribe)
			{
				int jobType = GJobInfo::InfoList[info->PrimaryJob].field_0x10[0];
				if (jobType == VILLAGER_JOB_HOUSEWIFE)
				{
					femaleInfo = info;
				}
				if (GetInfo()->JobWeights[job] != 0 && job == jobType)
				{
					if (GJobInfo::InfoList[info->PrimaryJob].field_0x10[0] == VILLAGER_JOB_LEADER)
					{
						maleInfo = info;
					}
					totalWeight += GetInfo()->JobWeights[job];
					weights[numWeights].Job = job;
					weights[numWeights].CumulativeWeight = totalWeight;
					weights[numWeights].Info = info;
					numWeights++;
					break;
				}
			}
		}
	}
	qsort(weights, numWeights, sizeof(TownJobWeight), TownJobWeight::QSortCompare);
	if (femaleInfo != NULL)
	{
		uint32_t females = GetInfo()->FemalePercentage * count / 100;
		int      most = 0;
		bool32_t full;
		do
		{
			full = true;
			int tried = 0;
			FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
			{
				if (abode->AdultCount < ((const GAbodeInfo*)abode->info)->MaxVillagersInAbode &&
				    abode->IsFunctional() && abode->NumVillagersOfSex(SEX_FEMALE) <= most)
				{
					tried++;
					pos = abode->GetDoorPos();
					pos.SetAltitude(0);
					Villager* villager = Villager::Create(pos, femaleInfo, femaleInfo->TeenAge, false);
					if (villager != NULL)
					{
						abode->AddVillagerToAbode(villager);
						if (++created >= (int)females)
						{
							goto males;
						}
					}
					full = false;
				}
			}
			if (tried == 0)
			{
				return created;
			}
			most++;
		} while (!full);
	}
males:
	GVillagerInfo* info = maleInfo;
	for (;;)
	{
		if (info == NULL)
		{
			uint32_t random = GRand::GameRand(100, TOWN_SOURCE_FILE, TOWN_LINE(508));
			int      i;
			for (i = 0; i < numWeights && random >= weights[i].CumulativeWeight; i++)
			{
			}
			if (i == numWeights)
			{
				i = random % numWeights;
			}
			info = weights[i].Info;
		}
		int      most = 0;
		bool32_t full;
		do
		{
			full = true;
			int tried = 0;
			FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
			{
				if (abode->AdultCount < ((const GAbodeInfo*)abode->info)->MaxVillagersInAbode && abode->IsFunctional())
				{
					tried++;
					if (abode->NumVillagersOfSex(SEX_MALE) > most)
					{
						full = false;
						continue;
					}
					pos = abode->GetDoorPos();
					pos.SetAltitude(0);
					Villager* villager = Villager::Create(pos, info, info->TeenAge, false);
					if (villager != NULL)
					{
						abode->AddVillagerToAbode(villager);
						if (++created >= (int)count)
						{
							return created;
						}
						goto next;
					}
				}
			}
			if (tried == 0)
			{
				return created;
			}
			most++;
		} while (!full);
	next:
		info = NULL;
	}
}

bool32_t Town::AddVillagerToTown(Villager* villager)
{
	if (Uninhabitable == 0)
	{
		stats.Add(villager);
		villager->SetTown(this);
		Abode* abode = villager->GetAbode();
		if (abode == NULL || abode->GetTown() != this)
		{
			if (abode != NULL)
			{
				abode->RemoveAliveVillagerFromAbode(villager);
				villager->SetAbode(NULL);
			}
			Abode* newAbode = FindAbodeWithSpaceInTown(villager, 0.0f);
			if (newAbode != NULL)
			{
				newAbode->AddVillagerToAbode(villager);
				return true;
			}
			villager->MakeHomelessNoStateChange();
		}
		if (stats.NumAdults + stats.NumChildren == 1)
		{
			CheckAddWorshipSite();
		}
		return true;
	}
	return false;
}

PlannedMultiMapFixed* Town::GetBestPlanned(float& desire, ABODE_TYPE abode_type)
{
	PlannedMultiMapFixed* best = NULL;
	desire = 0.0f;
	FOREACH_LH_LIST_HEAD(PlannedMultiMapFixed, planned, PlannedList)
	{
		if (planned->GetAbodeType() & abode_type)
		{
			float plannedDesire = GetDesireToBeBuilt(planned->info.Get(), 0);
			if (plannedDesire > desire)
			{
				desire = plannedDesire;
				best = planned;
			}
		}
	}
	return best;
}

float Town::GetDesireToBeBuilt(const GMultiMapFixedInfo* info, unsigned long num_scaffolds)
{
	float      desire = info->DesireToBeBuilt;
	uint32_t   numSites = 0;
	ABODE_TYPE type = info->GetAbodeType();
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		if (type == node->payload->GetBuilding()->GetAbodeType())
		{
			numSites++;
		}
	}
	if (desire == 0.0f)
	{
		return desire;
	}
	switch (type)
	{
	case ABODE_TYPE_WORKSHOP:
		desire = GetPlayer()->IsNeutral() ? 0.0f : desire;
		if (stats.NumAbodesOfNumber[ABODE_NUMBER_WORKSHOP] > 0 || numSites != 0)
		{
			desire *= 0.5f;
		}
		break;
	case ABODE_TYPE_TOTEM:
		if (GetPlayer()->IsNeutral() || totem != NULL || numSites != 0 || town_centre != NULL)
		{
			desire = 0.0f;
		}
		break;
	case ABODE_TYPE_STORAGE_PIT:
		if (GetStoragePit() != NULL || numSites != 0)
		{
			desire = 0.0f;
		}
		break;
	case ABODE_TYPE_CRECHE:
		if (creche != NULL || numSites != 0)
		{
			desire = 0.0f;
		}
		break;
	case ABODE_TYPE_LIVING_QUARTERS: {
		int spare = stats.VillagerSpaceLeftInAbodes - HomelessList.count;
		int needed = (uint32_t)(stats.NumAdults + stats.NumChildren) / 10 + 1;
		if (spare > needed && num_scaffolds == 0)
		{
			desire = 0.0f;
		}
		else if (spare < 0)
		{
			float spareFloat = spare;
			float scale = spareFloat / needed;
			scale *= -1.0f;
			scale += desire;
			scale = min(0.8f, scale);
			uint32_t over = max(-10.0f, spareFloat) * -1.0f;
			uint32_t maxVillagers = ((const GAbodeInfo*)info)->MaxVillagersInAbode;
			float    ratio;
			if (over > maxVillagers)
			{
				ratio = (float)maxVillagers / over * 0.2f;
			}
			else
			{
				ratio = (float)over / maxVillagers * 0.2f;
				ratio += 0.2f;
			}
			ratio += 0.6f;
			desire = ratio * scale;
		}
		uint8_t numAbodes = stats.NumAbodesOfNumber[info->GetAbodeNumber()];
		desire -= desire / max(10.0f, (float)(numAbodes + 1)) * numAbodes;
		break;
	}
	case ABODE_TYPE_WONDER:
		if (num_scaffolds < 7)
		{
			float wonderDesire = GetDesire(TOWN_DESIRE_INFO_TO_BUILD_WONDER);
			desire = wonderDesire * desire;
			if (wonderDesire < this->desire.GetInfo(TOWN_DESIRE_INFO_TO_BUILD_WONDER)->DesireTriggersVillagerAction)
			{
				desire = 0.0f;
			}
		}
		else
		{
			desire = 1.0f;
		}
		break;
	case ABODE_TYPE_GRAVEYARD:
		if (graveyard != NULL)
		{
			desire = 0.0f;
		}
		break;
	case ABODE_TYPE_TOWN_CENTRE:
		if (town_centre != NULL || numSites != 0 || totem != NULL)
		{
			desire = 0.0f;
		}
		break;
	case ABODE_TYPE_FOOTBALL_PITCH:
		if (GGame::FootballEnabled)
		{
			if (FootballPitch != NULL || numSites != 0)
			{
				desire = 0.0f;
			}
		}
		else
		{
			return 0.0f;
		}
		break;
	case ABODE_TYPE_SPELL_DISPENSER:
		if (town_centre == NULL || GetStoragePit() == NULL || graveyard == NULL || creche == NULL ||
		    WorkshopList.count == 0)
		{
			desire = 0.0f;
		}
		break;
	}
	if (numSites != 0)
	{
		desire /= numSites;
	}
	if (num_scaffolds != 0)
	{
		desire -= min(((num_scaffolds - info->ScaffoldsRequired) * 0.3f) * desire, desire);
	}
	return desire;
}

bool32_t Town::RequestBestPlanned()
{
	float                 desire = 0.0f;
	PlannedMultiMapFixed* planned = GetBestPlanned(desire, ABODE_TYPE_CIVIC);
	if (planned != NULL && AddBuildingSiteNoFixedCheck(planned) != NULL)
	{
		return true;
	}
	return false;
}

void Town::JustSetWorshipPercentage(float percentage)
{
	worship_percentage = percentage;
}

bool32_t Town::CreateFootballPitch()
{
	MapCoords pos = Pos;
	if (FindFootballPitchPos(pos, 6000) == 1)
	{
		return false;
	}
	GAbodeInfo* info = GAbodeInfo::Find(GetTribe()->type, ABODE_NUMBER_FOOTBALL_PITCH);
	if (info != NULL && Abode::Create(pos, info, this, 0.0f, 1.0f, 0, 0, 1.0f, 0, 1) != NULL)
	{
		return true;
	}
	return false;
}

uint32_t Town::FindFootballPitchPos(MapCoords& pos, long max_cells)
{
	GAbodeInfo* info = GAbodeInfo::Find(GetTribe()->type, ABODE_NUMBER_FOOTBALL_PITCH);
	if (info != NULL)
	{
		long i = max_cells;
		long dir = 1;
		long count = 1;
		while (i != 0)
		{
			if (pos.InBounds() && info->IsOkToCreateAtPos(pos, 0.0f, 1.0f, this) == 1)
			{
				return 1;
			}
			i--;
			pos += *GUtils::Spiral(dir, count);
		}
	}
	return 12;
}

void Town::RemoveTownFromPlayer()
{
	float oldInfluence = influence;
	UpdateInfluence(0.0f);
	influence = oldInfluence;
	EmptyTownTimer = 0;
	GPlayer* player = GetPlayer();
	if (player != NULL)
	{
		player_number = player->GetPlayerNumber();
		player->RemoveTown(this);
		for (int i = 0; i < MAGIC_TYPE_LAST; i++)
		{
			if (IsMagicTypeHeld((MAGIC_TYPE)i))
			{
				player->SetMagicTypeEnabled((MAGIC_TYPE)i, false);
			}
		}
	}
	WorshipSite* worshipSite = GetWorshipSite();
	if (worshipSite != NULL)
	{
		worshipSite->RemoveTown(this);
		if (IsInBuildingList(worshipSite))
		{
			RemoveBuildingSite(worshipSite);
		}
		if (worshipSite->building_site != NULL)
		{
			worshipSite->building_site->RemoveAllVillagersFromTown(this);
		}
	}
	Citadel* citadel = GetCitadel();
	if (citadel != NULL)
	{
		CitadelHeart* heart = citadel->heart.Get();
		if (heart != NULL)
		{
			BuildingSite* site = heart->building_site;
			if (site != NULL)
			{
				site->RemoveAllVillagersFromTown(this);
				if (IsInBuildingList(heart))
				{
					RemoveBuildingSite(site);
				}
			}
		}
	}
	worship_site = NULL;
	AverageGameTurnsToTravelToWorshipSite = 0.0f;
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		abode->RemoveFromPlayer();
	}
	owner = NULL;
	UpdateNearestTowns();
}

void Town::AddTownToPlayer(GPlayer* player)
{
	owner = player;
	GetPlayer()->AddTown(this);
	if (player != NULL && player->type != PLAYER_TYPE_NEUTRAL)
	{
		Citadel* citadel = GetPlayer()->GetCitadel();
		if (citadel != NULL)
		{
			citadel->AddTown(this);
		}
	}
	SetAverageGameTurnsToTravelToWorshipSite();
	UpdateNearestTowns();
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		abode->AddToPlayer();
	}
	for (int i = 0; i < MAGIC_TYPE_LAST; i++)
	{
		if (IsMagicTypeHeld((MAGIC_TYPE)i))
		{
			player->SetMagicTypeEnabled((MAGIC_TYPE)i, true);
		}
	}
	TownCentre* townCentre = GetTownCentre();
	if (townCentre != NULL)
	{
		for (int j = 0; j < MAX_TOWN_CENTRE_SPELLS; j++)
		{
			if (townCentre->icons[j] != NULL)
			{
				townCentre->icons[j]->SetPlayer(player);
			}
		}
	}
	stats.NumAbodesAdded = 0;
	UpdateInfluence(influence);
}

void Town::ResetAllDiscipleStates()
{
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		FOREACH_LH_LIST_HEAD(Villager, villager, abode->villagers)
		{
			uint32_t flags = villager->Flags;
			uint8_t  discipleFlags = flags >> 9;
			if ((discipleFlags & 1) && GVillagerInfo::GetDiscipleInfo()[villager->DiscipleType].field_0xc == 1)
			{
				villager->SetVillagerDisciple(NULL, VILLAGER_DISCIPLE_NONE, 0);
			}
		}
	}
	FOREACH_LH_LIST_HEAD_SAFE(MissionaryControl, missionary, MissionaryList)
	{
		missionary->ToBeDeleted(0);
	}
	MissionaryList.Clear();
}

void Town::SetAverageGameTurnsToTravelToWorshipSite()
{
	AverageGameTurnsToTravelToWorshipSite = 0.0f;
	if (GetCitadel() != NULL)
	{
		AverageGameTurnsToTravelToWorshipSite =
			GUtils::GetDistanceInMetres(GetStoragePit() != NULL ? GetStoragePit()->Pos : Pos,
		                                GetWorshipSite() != NULL ? GetWorshipSite()->GetDoorPos() : GetCitadel()->Pos) /
			MetresPerMapCell * 8.0f;
	}
}

void Town::SetTownArea()
{
	MapCoords centre;
	AreaMin.x = INT_MAX;
	AreaMin.z = INT_MAX;
	AreaMax.x = 0;
	AreaMax.z = 0;
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		SetTownArea(abode);
	}
	for (LHLinkedNode<Field*>* node = FieldList.GetStart(); node != NULL; node = node->next.Get())
	{
		SetTownArea(node->payload);
	}
	if (totem != NULL)
	{
		centre = totem->Pos;
	}
	else if (GetStoragePit() != NULL)
	{
		centre = GetStoragePit()->Pos;
	}
	else
	{
		centre = GetAreaCentre();
	}
	float width = AreaMax.MetersX() - AreaMin.MetersX();
	float depth = AreaMax.MetersZ() - AreaMin.MetersZ();
	float size = width > depth ? width : depth;
	centre.altitude = 0.0f;
	LHPoint focus;
	GLandscape::ConvertMapCoordToLandscapePoint(centre, focus);
	LHPoint cameraPos;
	GCamera::SetPointFromPointDistanceHeadingAndPitch(&cameraPos, focus, size + size, 2.756f, 0.437f);
	CameraView.Set(cameraPos, focus);
}

void Town::SetTownArea(Object* object)
{
	float minX = object->Pos.MetersX() - object->GetRadius();
	if (minX < AreaMin.MetersX())
	{
		AreaMin.SetWholeX((long)(minX * (float)0x10000 / MetresPerMapCell));
	}
	float maxX = object->Pos.MetersX() + object->GetRadius();
	if (maxX > AreaMax.MetersX())
	{
		AreaMax.SetWholeX((long)(maxX * (float)0x10000 / MetresPerMapCell));
	}
	float minZ = object->Pos.MetersZ() - object->GetRadius();
	if (minZ < AreaMin.MetersZ())
	{
		AreaMin.SetWholeZ((long)(minZ * (float)0x10000 / MetresPerMapCell));
	}
	float maxZ = object->Pos.MetersZ() + object->GetRadius();
	if (maxZ > AreaMax.MetersZ())
	{
		AreaMax.SetWholeZ((long)(maxZ * (float)0x10000 / MetresPerMapCell));
	}
}

MapCoords Town::GetAreaCentre()
{
	return MapCoords((AreaMax.MetersX() + AreaMin.MetersX()) * 0.5f, (AreaMax.MetersZ() + AreaMin.MetersZ()) * 0.5f);
}

void Town::UpdateNearestTown()
{
	unsigned long distance;
	Pos.GetNearestTown((Town**)&NearestTown, &distance, this, TRIBE_TYPE_NONE);
}

void Town::UpdateNearestTowns()
{
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		FOREACH_LH_LIST_HEAD(Town, town, player->towns)
		{
			town->UpdateNearestTown();
		}
	}
}

bool32_t Town::IsInTown(GameThing* thing)
{
	return thing->GetTown() == this;
}

void Town::ChildToAdult(Villager* villager)
{
	stats.ChildToAdult(villager);
}

void Town::Unknown0073af70(Villager* villager) {}

uint16_t Town::GetNumberOfInstanceForGlobalList()
{
	uint16_t num = 0;
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		num += abode->GetNumberOfInstanceForGlobalList();
	}
	num += MeetingList.count + ExtraVillagerList.count + SpellIconList.count + BuildingSiteList.count +
	       CreatureInfoList.count + AnimalList.count + PlannedList.count + FlockList.count;
	for (int i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		if (town_desire_flags[i] != NULL)
		{
			num++;
		}
	}
	return num;
}

GVillagerInfo* Town::GetVillagerInfo(VILLAGER_NUMBER villager_number)
{
	return &GVillagerInfo::InfoList[GetTribe()->type * VILLAGER_NUMBER_LAST + villager_number];
}

bool32_t Town::FindNavigablePosNear(MapCoords& pos, float width, float depth)
{
	long gameWidth = GUtils::ConvertDistance3DToGame(width);
	long gameDepth = GUtils::ConvertDistance3DToGame(depth);
	long i = 50;
	long dir = 1;
	long count = 1;
	while (i != 0)
	{
		if (pos.InBounds() && IsAreaNavigable(pos, gameWidth, gameDepth))
		{
			return true;
		}
		i--;
		pos += *GUtils::Spiral(dir, count);
	}
	return false;
}

bool32_t Town::IsAreaNavigable(const MapCoords& pos, long width, long depth)
{
	MapCoords cell = pos;
	long      i = width * depth;
	long      dir = 1;
	long      count = 1;
	while (i != 0)
	{
		if (!cell.InBounds() || !cell.IsNavigable())
		{
			return false;
		}
		i--;
		cell += *GUtils::Spiral(dir, count);
	}
	return true;
}

// BW1W120 0073b170 BW1M119 0155e720
Town* Town::GetNearestTownToPos(const MapCoords& coords, TRIBE_TYPE tribe_type, ABODE_TYPE abode_type,
                                float max_distance)
{
	float bestDist = max_distance;
	Town* bestTown = NULL;
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		FOREACH_LH_LIST_HEAD(Town, town, player->towns)
		{
			float dist = GUtils::GetDistanceInMetres_0074cd50(coords, town->Pos);
			if (dist < bestDist)
			{
				if (tribe_type == town->GetTribe()->type || tribe_type == TRIBE_TYPE_NONE)
				{
					if (abode_type == ABODE_TYPE_ANY || town->IsAbodeTypeInTown(abode_type) == 0)
					{
						bestDist = dist;
						bestTown = town;
					}
				}
			}
		}
	}
	return bestTown;
}

void Town::CreateAllPlannedNoFixedCheck()
{
	FOREACH_LH_LIST_HEAD_SAFE(PlannedMultiMapFixed, planned, PlannedList)
	{
		planned->CreatePlannedNoFixedCheck(1.0f);
	}
}

void Town::ConvertUnstartedAbodesToPlanned()
{
	FOREACH_LH_LIST_HEAD_SAFE(Abode, abode, AbodeList)
	{
		if (abode->UnderConstruction)
		{
			LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart();
			while (node != NULL && node->payload->GetBuilding() != abode)
			{
				node = node->next.Get();
			}
			if (node == NULL)
			{
				abode->ConvertToPlanned();
			}
		}
	}
	if (playtime != NULL)
	{
		playtime->FUN_0066c5c0();
	}
}

bool32_t Town::IsHarvestTime()
{
	return GJobInfo::GetInfo()[JOB_INFO_NORMAL_FARMER].GetJobActivity() == JOB_ACTIVITY_HARVEST;
}

PlannedMultiMapFixed* Town::FindPlanned(ABODE_TYPE abode_type)
{
	FOREACH_LH_LIST_HEAD(PlannedMultiMapFixed, planned, PlannedList)
	{
		if (planned->GetAbodeType() == abode_type)
		{
			return planned;
		}
	}
	return NULL;
}

bool32_t Town::RequestANewAbode(ABODE_TYPE abode_type)
{
	float                 desire = 0.0f;
	PlannedMultiMapFixed* planned = GetBestPlanned(desire, ABODE_TYPE_LIVING_QUARTERS);
	if (planned != NULL && AddBuildingSite(planned) != NULL)
	{
		return true;
	}
	return false;
}

Abode* Town::FindAbodeWithSpaceInTown(Villager* villager, float min_score)
{
	Abode* best = NULL;
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		if (abode->IsFunctional())
		{
			float score = abode->CalculateScoreForAddingVillagerToAbode(villager);
			if (score > min_score)
			{
				min_score = score;
				best = abode;
			}
		}
	}
	return best;
}

Field* Town::FindClosesFieldToWithFood(const MapCoords& pos)
{
	Field* best = NULL;
	float  bestScore = 0.0f;
	for (LHLinkedNode<Field*>* node = FieldList.GetStart(); node != NULL; node = node->next.Get())
	{
		Field* field = node->payload;
		float  food = field->GetFoodValue();
		if (food != 0.0f)
		{
			float score = food / (GUtils::GetDistanceInMetres(pos, field->Pos) + 0.1f);
			if (score >= bestScore)
			{
				bestScore = score;
				best = field;
			}
		}
	}
	return best;
}

Field* Town::FindClosestFieldNotFull(const MapCoords& pos)
{
	Field* bestField = NULL;
	float  bestScore = 0.0f;
	for (LHLinkedNode<Field*>* node = FieldList.GetStart(); node != NULL; node = node->next.Get())
	{
		Field* field = node->payload;
		float  percentFull = field->GetPercentFull();
		if (percentFull < 1.0f)
		{
			float score = percentFull / (GUtils::GetDistanceInMetres(pos, field->Pos) + 0.1f);
			if (score >= bestScore)
			{
				bestScore = score;
				bestField = field;
			}
		}
	}
	return bestField;
}

void Town::AddVillagerToList968(Villager* villager)
{
	VillagerList.Add(villager);
}

void Town::RemoveVillagerFromList968(Villager* villager)
{
	VillagerList.Remove(villager);
}

bool32_t Town::FUN_0073b570(Villager* villager)
{
	return false;
}

bool32_t Town::IsVillagerInHomelessList(Villager* villager)
{
	Villager* walker;
	for (walker = HomelessList.Get(); walker != NULL && walker != villager; walker = walker->next)
	{
	}
	return walker != NULL;
}

StoragePit* Town::GetStoragePit()
{
	StoragePit* storagePit = MainStoragePit;
	if (storagePit != NULL && storagePit->IsAvailable())
	{
		return storagePit;
	}
	return NULL;
}

void Town::Birthday()
{
	stats.ProcessBirthday();
}

void Town::UseFood(unsigned long amount)
{
	stats.FoodUsed += amount;
	GetPlayer()->GetStats()->FoodUsed += amount;
}

void Town::UseWood(unsigned long amount)
{
	stats.WoodUsed += amount;
	GetPlayer()->GetStats()->WoodUsed += amount;
}

PlannedAbode* Town::FindPlannedAbode(int abode_type_mask)
{
	FOREACH_LH_LIST_HEAD(PlannedMultiMapFixed, planned, PlannedList)
	{
		PlannedAbode* plannedAbode = dynamic_cast<PlannedAbode*>(planned);
		if (plannedAbode != NULL && plannedAbode->IsAbodeTypeInMask(abode_type_mask) == 1)
		{
			return plannedAbode;
		}
	}
	return NULL;
}

PlannedMultiMapFixed* Town::FindPlannedOfType(OBJECT_TYPE type)
{
	FOREACH_LH_LIST_HEAD(PlannedMultiMapFixed, planned, PlannedList)
	{
		if (planned->info->type == type)
		{
			return planned;
		}
	}
	return NULL;
}

Ball* Town::GetBall()
{
	Object* plaything = FindPlaything(OBJECT_TYPE_BALL);
	if (plaything != NULL)
	{
		return dynamic_cast<Ball*>(plaything);
	}
	return NULL;
}

Object* Town::FindPlaything(OBJECT_TYPE type)
{
	for (LHLinkedNode<Object*>* node = playthings.GetStart(); node != NULL; node = node->next.Get())
	{
		Object* plaything = node->payload;
		if (plaything->IsAvailable() && plaything->info->type == type)
		{
			return plaything;
		}
	}
	return NULL;
}

PBall* Town::GetPBall()
{
	PBall* ball = dynamic_cast<PBall*>(FindPlaything(OBJECT_TYPE_PBALL));
	if (ball != NULL && ball->IsAvailable())
	{
		return ball;
	}
	return NULL;
}

static uint32_t* LastPlaythingCount;

bool32_t Town::AddPlaythingIfNoneThere(Object* plaything)
{
	OBJECT_TYPE type = plaything->info->type;
	if (FindPlaything(type) != NULL)
	{
		return false;
	}
	playthings.Add(plaything);
	LastPlaythingCount = &playthings.count;
	return true;
}

void Town::RemovePlaything(Object* plaything)
{
	playthings.Remove(plaything);
}

BuildingSite* Town::AddBuildingSite(PlannedMultiMapFixed* site)
{
	MultiMapFixed* building = site->CreatePlanned(0.0f);
	if (building != NULL)
	{
		BuildingSite* buildingSite = building->CreateBuildingSite();
		if (buildingSite != NULL)
		{
			AddBuildingSite(buildingSite);
			return buildingSite;
		}
	}
	return NULL;
}

BuildingSite* Town::AddBuildingSiteNoFixedCheck(PlannedMultiMapFixed* site)
{
	MultiMapFixed* building = site->CreatePlannedNoFixedCheck(0.0f);
	if (building != NULL)
	{
		BuildingSite* buildingSite = building->CreateBuildingSite();
		if (buildingSite != NULL)
		{
			AddBuildingSite(buildingSite);
			return buildingSite;
		}
	}
	return NULL;
}

BuildingSite* Town::AddBuildingSite(MultiMapFixed* site)
{
	BuildingSite* buildingSite = site->CreateBuildingSite();
	if (buildingSite != NULL)
	{
		AddBuildingSite(buildingSite);
		return buildingSite;
	}
	return NULL;
}

void Town::AddBuildingSite(BuildingSite* site)
{
	if (BuildingSiteList.Contains(site))
	{
		return;
	}
	if (site->GetTown() == this)
	{
		stats.Add(site);
	}
	BuildingSiteList.Add(site);
	DesireDirty = true;
	DesireDirtyTimer = 0;
}

void Town::RemoveBuildingSite(BuildingSite* site)
{
	if (!BuildingSiteList.Contains(site))
	{
		return;
	}
	if (site->GetTown() == this)
	{
		stats.Remove(site);
	}
	BuildingSiteList.Remove(site);
}

uint32_t Town::RemoveBuildingSite(MultiMapFixed* site)
{
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL;)
	{
		LHLinkedNode<BuildingSite*>* next = node->next.Get();
		if (node->payload->GetBuilding() == site)
		{
			node->payload->ToBeDeleted(0);
			return true;
		}
		node = next;
	}
	return false;
}

void Town::SetBeliefInPlayer(GPlayer* player, float value)
{
	if (player->IsNeutral())
	{
		BeliefInNeutralPlayer = value;
	}
	belief.SetBelief(player->GetPlayerNumber(), value);
}

float Town::GetBeliefInPlayer(GPlayer* player)
{
	if (player == NULL)
	{
		player = GetPlayer();
	}
	return belief.GetBeliefInPlayer(player);
}

int Town::GetNumPlayersWithBelief()
{
	int count = 0;
	for (unsigned long i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		if (GetBeliefInPlayer(GGame::g_game->GetPlayer(i)) > 0.0f)
		{
			count++;
		}
	}
	return count;
}

int Town::GetBeliefOrderForPlayer(unsigned long player_number)
{
	float playerBelief = GetBeliefInPlayer(GGame::g_game->GetPlayer(player_number)) > 0.0f
	                         ? min(GetBeliefInPlayer(GGame::g_game->GetPlayer(player_number)), 1.0f)
	                         : 0.0f;
	int   order = 0;
	for (unsigned long i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		float otherBelief = GetBeliefInPlayer(GGame::g_game->GetPlayer(i)) > 0.0f
		                        ? min(GetBeliefInPlayer(GGame::g_game->GetPlayer(i)), 1.0f)
		                        : 0.0f;
		if (i != player_number)
		{
			if (playerBelief < otherBelief || (playerBelief == otherBelief && i > player_number))
			{
				order++;
			}
		}
	}
	return order;
}

Citadel* Town::GetCitadel()
{
	if (GetPlayer() != NULL)
	{
		return GetPlayer()->GetCitadel();
	}
	return NULL;
}

void Town::UpdateAverageGameTurnsToTravelToWorshipSite(unsigned long start_turn)
{
	AverageGameTurnsToTravelToWorshipSite =
		((GGame::g_game->data.GameTurn - start_turn) + AverageGameTurnsToTravelToWorshipSite) * 0.5f;
}

uint32_t Town::SaveObject(LHOSFile& file, const MapCoords& offset)
{
	char text[200];
	char coordText[100];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords     relative = (&offset != NULL) ? (Pos - offset) : Pos;
		unsigned long playerNumber = GetPlayer()->GetPlayerNumber();
		char*         playerText = GPlayer::PlayerNameText[GGame::g_game->GetPlayer(playerNumber)->GetPlayerNumber()];
		sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_TOWN), ID,
		        relative.ConvertToText(coordText), playerText, GetTribe()->type,
		        GTribeInfo::GetTribeTextArray()[GetTribe()->type]);
		GSetup::WriteToFile(this, file, text, strlen(text));

		for (unsigned long i = 0; i < MAGIC_TYPE_LAST; i++)
		{
			if (IsMagicTypeHeld((MAGIC_TYPE)i))
			{
				sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_NEW_TOWN_SPELL), ID,
				        GMagicInfo::Infos[i]->GetMagicInfoText());
				GSetup::WriteToFile(this, file, text, strlen(text));
			}
		}

		for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
		     player = GGame::g_game->GetNextPlayerAndNeutral(player))
		{
			float playerBelief = belief.GetBeliefInPlayer(player);
			if (playerBelief != 0.0f)
			{
				playerText = GPlayer::PlayerNameText[player->GetPlayerNumber()];
				sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_SET_TOWN_BELIEF), ID, playerText,
				        playerBelief);
				GSetup::WriteToFile(this, file, text, strlen(text));
			}
			float cap = belief.GetBeliefInPlayerCap(player);
			if (cap != 10.0f)
			{
				playerText = GPlayer::PlayerNameText[player->GetPlayerNumber()];
				sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_SET_TOWN_BELIEF_CAP), ID, playerText,
				        cap);
				GSetup::WriteToFile(this, file, text, strlen(text));
			}
		}

		desire.SaveObject(file, offset);

		if (Uninhabitable)
		{
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_SET_TOWN_UNINHABITABLE), ID);
			GSetup::WriteToFile(this, file, text, strlen(text));
		}

		float scale = BalanceBeliefScale;
		if (scale != 1.0f)
		{
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_SET_TOWN_BALANCE_BELIEF_SCALE), ID,
			        BalanceBeliefScale);
			GSetup::WriteToFile(this, file, text, strlen(text));
		}

		if (!CongregationPos.IsZero())
		{
			playerText = GPlayer::PlayerNameText[GGame::g_game->GetPlayer(playerNumber)->GetPlayerNumber()];
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_SET_TOWN_CONGREGATION_POS), ID,
			        CongregationPos.ConvertToText(coordText), playerText);
			GSetup::WriteToFile(this, file, text, strlen(text));
		}
	}
	return saved;
}

void Town::SetWorshipPercentage(float worship_percentage)
{
	if (GetWorshipSite() == NULL)
	{
		this->worship_percentage = 0.0f;
	}
	else
	{
		this->worship_percentage = worship_percentage;
		if (GetTotemStatue() != NULL)
		{
			GetTotemStatue()->SetWorshipPercentage(worship_percentage);
			GetTotemStatue()->WorshipSpeed2 = GetTotemStatue()->GetWorshipSpeed();
		}
		int needed = GetWorshipersNeeded(true, true, NULL);
		if (needed != 0)
		{
			AdjustWorshipersWorshipping(needed, true, false);
		}
	}
}

class SortVillagerOnDistanceFromWorshipSite : public Villager
{
public:
	// BW1W120 0073c590 BW1M119 inlined
	float GetWorshipDistanceKey()
	{
		if (GetWorshipSite() == NULL)
		{
			return 0.0f;
		}
		MapCoords centre;
		centre = GetWorshipSite()->CalculateCentrePos();
		float distance = Pos.GetDistance(centre);
		float townDistance = GetTown()->Pos.GetDistance(centre) + 100.0f;
		float modifier = GUtils::GetDistanceModifier(distance, townDistance);
		return modifier * POWER(GetLife(), 3);
	}

	// BW1W120 inlined BW1M119 0155cb50
	bool operator<(SortVillagerOnDistanceFromWorshipSite& other)
	{
		return GetWorshipDistanceKey() > other.GetWorshipDistanceKey();
	}
};

class ReverseSortVillagerOnDistanceFromWorshipSite : public SortVillagerOnDistanceFromWorshipSite
{
public:
	// BW1W120 inlined BW1M119 0155c440
	bool operator<(ReverseSortVillagerOnDistanceFromWorshipSite& other)
	{
		return GetWorshipDistanceKey() < other.GetWorshipDistanceKey();
	}
};

void Town::AdjustWorshipersWorshipping(long worshippers_needed, int ignore_low_life, int num_needed)
{
	int includeWorshipping = false;
	for (unsigned long pass = 0; pass < 2; pass++)
	{
		if (worshippers_needed > 0)
		{
			LHOrderedLinkedList<SortVillagerOnDistanceFromWorshipSite> available;
			for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
			{
				for (Villager* villager = abode->villagers.head; villager != NULL; villager = villager->next)
				{
					if (villager->IsAvailableForWorshipSite(includeWorshipping))
					{
						available.Insert((SortVillagerOnDistanceFromWorshipSite*)villager);
					}
				}
			}
			for (Villager* homeless = HomelessList.head; homeless != NULL; homeless = homeless->next)
			{
				if (homeless->IsAvailableForWorshipSite(includeWorshipping))
				{
					available.Insert((SortVillagerOnDistanceFromWorshipSite*)homeless);
				}
			}
			for (OrderedNode<SortVillagerOnDistanceFromWorshipSite>* node = available.GetHead();
			     node != NULL && worshippers_needed != 0; node = node->next)
			{
				Villager* villager = node->GetData();
				if (ignore_low_life ||
				    ((const GVillagerInfo*)villager->info)->DamageThresholdToGoHome < villager->GetLife())
				{
					if (villager->CheckWorshipActivity(num_needed) == 1)
					{
						worshippers_needed--;
					}
				}
			}
		}
		else if (worshippers_needed < 0)
		{
			LHOrderedLinkedList<ReverseSortVillagerOnDistanceFromWorshipSite> worshipping;
			for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
			{
				for (Villager* villager = abode->villagers.head; villager != NULL; villager = villager->next)
				{
					if (villager->IsAtOrOnTheWayToWorshipSite())
					{
						worshipping.Insert((ReverseSortVillagerOnDistanceFromWorshipSite*)villager);
					}
				}
			}
			for (Villager* homeless = HomelessList.head; homeless != NULL; homeless = homeless->next)
			{
				if (homeless->IsAtOrOnTheWayToWorshipSite())
				{
					worshipping.Insert((ReverseSortVillagerOnDistanceFromWorshipSite*)homeless);
				}
			}
			for (OrderedNode<ReverseSortVillagerOnDistanceFromWorshipSite>* node = worshipping.GetHead();
			     node != NULL && worshippers_needed != 0; node = node->next)
			{
				Villager* villager = node->GetData();
				villager->SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
				if (villager->DecideWhatToDo() == 1)
				{
					worshippers_needed++;
				}
			}
		}
		includeWorshipping = true;
	}
}

void Town::IncrementWorshipPercentage()
{
	int needed = GetWorshipersNeeded(true, true, NULL);
	if (needed <= 0)
	{
		float population = GetPopulation();
		if (population != 0.0f)
		{
			float worshippers = WorshipCount + (float)NumVillagersOnWayToWorshipSite;
			float percentage = (worshippers + (needed + 1.4f)) / population;
			SetWorshipPercentage(min(percentage, 1.0f));
		}
	}
}

void Town::SetToZero()
{
	NumVillagersOnWayToWorshipSite = 0;
	worship_percentage = 0.0f;
#ifdef VERSION_BW1W120
	field_0x5fc = 0;
#endif
	WorshipCount = 0;
	influence = 0.0f;
	tribe_type = TRIBE_TYPE_NONE;
	NearestTown = NULL;
	totem = NULL;
	creche = NULL;
	MainStoragePit = NULL;
	AbodeList.Clear();
	next = NULL;
	MeetingList.Clear();
	HomelessList.Clear();
	ExtraVillagerList.Clear();
	PlannedList.Clear();
	SpellIconList.Clear();
	Name = NULL;
	OtherPlayersAggressorScale = 1.0f;
	OwnerAggressorScale = 1.0f;
	OwnerInteractionTotal = 0.0f;
	OtherInteractionTotal = 0.0f;
	WorshipPercentageBeforeEmergency = 0.0f;
	for (int i = 0; i < RESOURCE_TYPE_LAST; i++)
	{
		TemporaryResourceStorePots[i] = NULL;
	}
	FootballPitch = NULL;
	ClearMagicTypesHeld();
	FootballPitch = NULL;
	DesireDirty = false;
	DesireDirtyTimer = 0;
	EmergencyStartTurn = 0;
	CannotBuildWorshipSite = false;
	Uninhabitable = false;
#ifndef VERSION_BW1W100
	ZeroBaseInfluence = 0;
#endif
	for (int player = 0; player < _PLAYER_NAME_COUNT; player++)
	{
		for (int type = 0; type < RESOURCE_TYPE_LAST; type++)
		{
			ResourceLastRemovedTurn[player][type] = 0;
		}
	}
	CongregationPos.SetWholeX(0);
	CongregationPos.SetWholeZ(0);
	CongregationPos.SetAltitude(0);
	EmptyTownTimer = 0;
	LastAddedInfluence = 0.0f;
}

GTribeInfo* Town::GetTribe() const
{
	TRIBE_TYPE type = tribe_type;
	return GGame::g_game->GetTribe(type);
}

int Town::GetWorshipersNeeded(int include_on_way, int include_requesting_home, int* out_has_enough_worshippers)
{
	float population = GetPopulation();
	int   worshippers = WorshipCount + (include_on_way ? NumVillagersOnWayToWorshipSite : 0);
	int   requesting =
		include_requesting_home && GetWorshipSite() ? GetWorshipSite()->GetNumVillagersRequestingToGoHome() : 0;
	int needed;
	if (worship_percentage > 0.0f)
	{
		needed = max((int)(population * worship_percentage + 0.5f), 1);
	}
	else
	{
		needed = 0;
	}
	int extra = needed - worshippers + requesting;
	if (out_has_enough_worshippers != NULL)
	{
		if (extra > 0 && worshippers >= needed)
		{
			*out_has_enough_worshippers = true;
		}
		else
		{
			*out_has_enough_worshippers = false;
		}
	}
	return extra;
}

// BW1W120 0073c940 BW1M119 01072210
WorshipSite* Town::GetWorshipSite()
{
	return worship_site;
}

uint32_t Town::GetFoodForWorshipSiteIfEnough()
{
	int food = GetFoodNeededByWorshipSite();
	if (food != 0)
	{
		if (CalculateFoodSpareForWorship() < food || food < 0)
		{
			return 0;
		}
	}
	return food;
}

int Town::GetFoodNeededByWorshipSite()
{
	if (GetWorshipSite() != NULL)
	{
		int food = GetWorshipSite()->CalculateFoodNeededFromTown();
		if (food != 0)
		{
			return food;
		}
	}
	return 0;
}

void Town::UpdateAggressor(const EffectValues& values, float aggressor_value)
{
	GPlayer* player = values.GetCausedPlayer();
	if (player == NULL)
	{
		player = GGame::g_game->GetNeutralPlayer();
	}
	PlayerTownInteract* interact = &PlayerInteract[player->GetPlayerNumber()];
	if (interact->Aggression == 0.0f)
	{
		aggressor_value += GetInfo()->FirstAttackAggressorBonus;
	}
	if (player == GetPlayer())
	{
		aggressor_value *= OwnerAggressorScale;
		OwnerAggressorScale *= 0.9f;
	}
	else
	{
		aggressor_value *= OtherPlayersAggressorScale;
		OtherPlayersAggressorScale *= 0.9f;
	}
	GGuidance::TownAttackSFX(*GGame::g_game->MyInterface()->status, *this, (EffectValues&)values);
	LastAttackingPlayer = player;
	LastAttackedTurn = GGame::g_game->data.GameTurn;
	interact->UpdateDamageDone((EffectValues&)values, aggressor_value);
	if (values.AppliedBy != NULL && values.AppliedBy->IsCreature())
	{
		Creature* creature = values.AppliedBy->CastCreature();
		GPlayer*  creaturePlayer = creature->GetPlayer();
		GPlayer*  townPlayer = GetPlayer();
		if (creaturePlayer != NULL && creature != townPlayer->creature.Get())
		{
			GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
			if (creaturePlayer->IsMemberOfThisPlayer(status))
			{
				status->guidance->HelpSpritesCreatureAttackingThem(creature, (EffectValues&)values);
			}
		}
	}
	else
	{
		GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
		if (player->IsMemberOfThisPlayer(status))
		{
			status->guidance->HelpSpritesAttackingTown(*this, (EffectValues&)values);
		}
	}
}

// Empty in BW1W110 and BW1W120, absent from BW1W100; never called.
void Town::fn_0073CB30() {}

// Empty in BW1W110 and BW1W120, absent from BW1W100; never called.
void Town::fn_0073CB40(int param_1) {}

void Town::PlayerTakeTownCheat(GPlayer* player, float belief)
{
	float    bestBelief = 0.0f;
	GPlayer* bestPlayer = NULL;
	GPlayer* other;
	if (player == GGame::g_game->GetNeutralPlayer())
	{
		for (other = GGame::g_game->GetNextActivePlayerAndNeutral(NULL); other != NULL;
		     other = GGame::g_game->GetNextActivePlayerAndNeutral(other))
		{
			this->belief.SetBelief(other->GetPlayerNumber(), 0.0f);
		}
	}
	else
	{
		for (other = GGame::g_game->GetNextActivePlayerAndNeutral(NULL); other != NULL;
		     other = GGame::g_game->GetNextActivePlayerAndNeutral(other))
		{
			if (GetBeliefInPlayer(other) > bestBelief)
			{
				bestBelief = GetBeliefInPlayer(other);
				bestPlayer = other;
			}
		}
		if (bestPlayer != NULL)
		{
			this->belief.SetBelief(bestPlayer->GetPlayerNumber(), bestBelief * 0.5f);
		}
		this->belief.SetBelief(player->GetPlayerNumber(), bestBelief + belief);
	}
}

float Town::GetBeliefNeededToConvertTown(GPlayer* player)
{
	return belief.GetBeliefNeededToConvert(player, this);
}

void Town::SetVillagerBuildingSite(BuildingSite* site, Villager* villager)
{
	if (IsBuildingSiteValid(site))
	{
		villager->building_site = site;
	}
}

bool32_t Town::IsBuildingSiteValidForVillager(BuildingSite* site, Villager* villager)
{
	return IsBuildingSiteValid(site);
}

MultiMapFixed* Town::GetBuildingSiteBuilding(BuildingSite* site)
{
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		if (site == node->payload)
		{
			return site->GetBuilding();
		}
	}
	return NULL;
}

bool32_t Town::IsInBuildingList(MultiMapFixed* building)
{
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		if (building == node->payload->GetBuilding())
		{
			return true;
		}
	}
	return false;
}

bool32_t Town::IsAbodeTypeInBuildingList(ABODE_TYPE abode_type)
{
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		if (abode_type == node->payload->GetBuilding()->GetAbodeType())
		{
			return true;
		}
	}
	return false;
}

int Town::GetBuildersNeeded(ABODE_TYPE abode_type)
{
	int total = 0;
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		if (abode_type & node->payload->GetBuilding()->GetAbodeType())
		{
			total += node->payload->GetBuildersNeeded();
		}
	}
	return total;
}

uint32_t Town::GetMaxVillagersInBuildingSites()
{
	uint32_t total = 0;
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		Abode* abode = dynamic_cast<Abode*>(node->payload->GetBuilding());
		if (abode != NULL)
		{
			total += abode->GetInfo()->MaxVillagersInAbode;
		}
	}
	return total;
}

BuildingSite* Town::GetBuildingSiteInList(MultiMapFixed* building)
{
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		if (building == node->payload->GetBuilding())
		{
			return node->payload;
		}
	}
	return NULL;
}

float Town::GetDesireForVillagers(ABODE_TYPE abode_type, int* count)
{
	float total = 0.0f;
	*count = 0;
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		BuildingSite* site = node->payload;
		if (abode_type & site->GetBuilding()->GetAbodeType())
		{
			total += site->GetDesireForVillagers();
			(*count)++;
		}
	}
	return total;
}

bool32_t Town::IsBuilderNeeded(BuildingSite* site)
{
	return site->IsBuilderNeeded();
}

bool32_t Town::IsBuildingSiteValid(BuildingSite* site)
{
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		if (site == node->payload)
		{
			MultiMapFixed* building = site->GetBuilding();
			if (building != NULL && (!building->IsBuilt() || !building->IsRepaired()))
			{
				return true;
			}
		}
	}
	return false;
}

BuildingSite* Town::GetBestBuildingSite(const MapCoords& pos, int param_2)
{
	BuildingSite* bestSite = NULL;
	float         bestDist = 99999.0f;
	for (LHLinkedNode<BuildingSite*>* node = BuildingSiteList.GetStart(); node != NULL; node = node->next.Get())
	{
		BuildingSite* site = node->payload;
		if (site->GetBuilding() != NULL && (site->IsBuilderNeeded() || param_2))
		{
			MultiMapFixed* building = node->payload->GetBuilding();
			if (building == NULL)
			{
				return NULL;
			}
			float multiplier = site->GetDesireForVillagers() * 0.9f + 0.1f;
			float dist = GUtils::GetDistanceInMetres(pos, building->GetNearestEdgeToPos(pos)) * multiplier;
			if (dist < bestDist)
			{
				bestDist = dist;
				bestSite = site;
			}
		}
	}
	return bestSite;
}

void Town::SetWorshipSite(WorshipSite* site)
{
	worship_site = site;
	if (!site->IsBuilt() && !IsInBuildingList(site))
	{
		AddBuildingSite(site);
	}
	if (town_centre != NULL)
	{
		town_centre->CreateTotemIfNecessary();
	}
}

void Town::AddPlanned(PlannedMultiMapFixed* planned)
{
	PlannedList.AddToLast(planned);
	stats.Add(planned);
}

void Town::RemovePlanned(PlannedMultiMapFixed* planned)
{
	PlannedMultiMapFixed* walker;
	for (walker = PlannedList.head; walker != NULL && walker != planned; walker = walker->next)
	{
	}
	if (walker != NULL)
	{
		PlannedList.Remove(planned);
		stats.Remove(planned);
	}
}

void Town::AllVillagersCheckNeedNewAbode() {}

Wonder* Town::GetNextWonder(Abode* abode)
{
	for (Abode* next = AbodeList.GetNext(abode); next != NULL; next = next->next)
	{
		if (next->GetAbodeType() & ABODE_TYPE_WONDER)
		{
			return dynamic_cast<Wonder*>(next);
		}
	}
	return NULL;
}

void Town::AddSpellIcon(TownSpellIcon* icon)
{
	SpellIconList.AddToFirst(icon);
	if (GetWorshipSite() != NULL)
	{
		GetWorshipSite()->AddSpellIconIfNecessary(icon->GetSpellSeedType());
	}
}

void Town::RemoveSpellIcon(TownSpellIcon* icon)
{
	SpellIconList.Remove(icon);
	if (GetWorshipSite() != NULL)
	{
		GetWorshipSite()->RemoveSpellIconIfNecessary(icon->GetSpellSeedType(), 0);
	}
}

TownSpellIcon* Town::GetSpellIcon(SPELL_SEED_TYPE seed_type)
{
	FOREACH_LH_LIST_HEAD(TownSpellIcon, icon, SpellIconList)
	{
		if (icon->IsSpellSeed(seed_type))
		{
			return icon;
		}
	}
	return NULL;
}

bool32_t Town::IsSpellIconPresent(SPELL_SEED_TYPE seed_type)
{
	FOREACH_LH_LIST_HEAD(TownSpellIcon, icon, SpellIconList)
	{
		if (icon->IsSpellSeed(seed_type) == true)
		{
			return true;
		}
	}
	return false;
}

bool32_t Town::IsSpellIconPresent(MAGIC_TYPE magic_type)
{
	FOREACH_LH_LIST_HEAD(TownSpellIcon, icon, SpellIconList)
	{
		if (icon->GetMagicType() == magic_type)
		{
			return true;
		}
	}
	return false;
}

TownSpellIcon* Town::GetNextSpellIcon(TownSpellIcon* icon)
{
	return SpellIconList.GetNext(icon);
}

bool32_t Town::AddMagicTypesHeld(MAGIC_TYPE type)
{
	if (type < MAGIC_TYPE_LAST && MagicTypesHeld[type] == false)
	{
		MagicTypesHeld[type] = true;
		if (GetPlayer() != NULL)
		{
			GetPlayer()->SetMagicTypeEnabled(type, true);
		}
		SPELL_SEED_TYPE       seedType = GSpellSeedInfo::GetFirstSpellSeedForMagicType(type);
		const GSpellSeedInfo* info = &GSpellSeedInfo::GetInfo()[seedType];
		MAGIC_TYPE            baseType = info->GetMagicTypeFromPULevel(POWER_UP_TYPE_NONE);
		POWER_UP_TYPE         powerUp = info->GetPowerUpFromMagicType(type);
		TownCentre*           townCentre = GetTownCentre();
		if (townCentre != NULL)
		{
			if (baseType == type)
			{
				townCentre->AddSpell(GSpellSeedInfo::GetInfoFromMagicType(type));
			}
			else
			{
				townCentre->AddPowerUp(seedType, powerUp);
			}
		}
		return true;
	}
	return false;
}

void Town::RemoveMagicTypesHeld(MAGIC_TYPE type)
{
	if (MagicTypesHeld[type] == true)
	{
		MagicTypesHeld[type] = false;
		if (GetPlayer() != NULL)
		{
			GetPlayer()->SetMagicTypeEnabled(type, false);
		}
		SPELL_SEED_TYPE       seedType = GSpellSeedInfo::GetFirstSpellSeedForMagicType(type);
		const GSpellSeedInfo* info = &GSpellSeedInfo::GetInfo()[seedType];
		MAGIC_TYPE            baseType = info->GetMagicTypeFromPULevel(POWER_UP_TYPE_NONE);
		POWER_UP_TYPE         powerUp = info->GetPowerUpFromMagicType(type);
		TownCentre*           townCentre = GetTownCentre();
		if (townCentre != NULL)
		{
			if (baseType == type)
			{
				townCentre->RemoveSpell(GSpellSeedInfo::GetInfoFromMagicType(type));
			}
			else
			{
				townCentre->RemovePowerUp(seedType, powerUp);
			}
		}
	}
}

bool32_t Town::StealSpellSeedType(SPELL_SEED_TYPE seed_type, int (*held)[POWER_UP_TYPE_LAST + 1])
{
	const GSpellSeedInfo* info = &GSpellSeedInfo::GetInfo()[seed_type];
	MAGIC_TYPE            baseType = info->MagicTypes[0];
	if (IsMagicTypeHeld(baseType))
	{
		(*held)[0] = true;
		RemoveMagicTypesHeld(baseType);
		for (int i = POWER_UP_TYPE_ONE; i < POWER_UP_TYPE_LAST; i++)
		{
			MAGIC_TYPE type = info->GetMagicTypeFromPULevel((POWER_UP_TYPE)i);
			if (type != MAGIC_TYPE_NONE && IsMagicTypeHeld(type))
			{
				RemoveMagicTypesHeld(type);
				(*held)[i + 1] = true;
			}
			else
			{
				(*held)[i + 1] = false;
			}
		}
		return true;
	}
	return false;
}

void Town::GiveSpellSeedType(SPELL_SEED_TYPE seed_type, const int (&held)[POWER_UP_TYPE_LAST + 1])
{
	const GSpellSeedInfo* info = &GSpellSeedInfo::GetInfo()[seed_type];
	for (int i = POWER_UP_TYPE_NONE; i < POWER_UP_TYPE_LAST; i++)
	{
		if (held[i + 1])
		{
			MAGIC_TYPE type = info->GetMagicTypeFromPULevel((POWER_UP_TYPE)i);
			if (type != MAGIC_TYPE_NONE)
			{
				AddMagicTypesHeld(type);
			}
		}
	}
}

bool32_t Town::IsSpaceForNewTownCentreSpell()
{
	if (town_centre != NULL)
	{
		return town_centre->GetNumberOfSpells() < MAX_TOWN_CENTRE_SPELLS;
	}
	return false;
}

void Town::ClearMagicTypesHeld()
{
	for (int i = 0; i < MAGIC_TYPE_LAST; i++)
	{
		MagicTypesHeld[i] = false;
	}
}

bool32_t Town::IsMagicTypeHeld(MAGIC_TYPE type)
{
	return MagicTypesHeld[type] > 0;
}

void Town::SetTotem(Totem* totem)
{
	if (this->totem == NULL || totem == NULL)
	{
		this->totem = totem;
		if (totem != NULL)
		{
			Pos = totem->Pos;
		}
	}
}

void Town::SetGraveyard(Graveyard* graveyard)
{
	if (this->graveyard == NULL || graveyard == NULL)
	{
		this->graveyard = graveyard;
	}
}

uint32_t Town::IsAbodeTypeInTown(ABODE_TYPE abode_type)
{
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		if (abode->GetInfo()->AbodeType == abode_type)
		{
			return true;
		}
	}
	return false;
}

float Town::GetRadius()
{
	return max(abs((int)(AreaMax.MetersX() - AreaMin.MetersX())), abs((int)(AreaMax.MetersZ() - AreaMin.MetersZ()))) *
	       0.5f;
}

Dance* Town::GetPlaytimeDance(PLAYTIME_INFO type)
{
	if (playtime != NULL)
	{
		return playtime->Elements[type].CurrentDance;
	}
	return NULL;
}

bool32_t Town::AddPlaytimeVillager(Villager* villager)
{
	if (playtime != NULL)
	{
		return playtime->AddPlaytimeVillager(villager);
	}
	return false;
}

PlaytimeElement* Town::GetPlaytime(PLAYTIME_INFO type)
{
	if (playtime != NULL)
	{
		return &playtime->Elements[type];
	}
	return NULL;
}

void Town::CreateTownDesireFlags()
{
	for (unsigned long i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		if (GTownDesireInfo::GetInfo()[i].WorshipSiteSlot >= 0 && town_desire_flags[i] == NULL)
		{
			town_desire_flags[i] =
				TownDesireFlags::Create(this, (TOWN_DESIRE_INFO)i, GTownDesireInfo::GetInfo()[i].WorshipSiteSlot);
		}
	}
}

void Town::ProcessDesireFlags()
{
	for (int i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		if (town_desire_flags[i] != NULL)
		{
			if (town_desire_flags[i]->IsAvailable() != true)
			{
				town_desire_flags[i] = NULL;
			}
			else
			{
				town_desire_flags[i]->Process();
				town_desire_flags[i]->Desire = GetRawDesire(town_desire_flags[i]->DesireType);
			}
		}
	}
}

void Town::DrawDesireFlags()
{
	for (int i = 0; i < TOWN_DESIRE_INFO_LAST; i++)
	{
		if (town_desire_flags[i] != NULL)
		{
			town_desire_flags[i]->Draw();
		}
	}
}

bool32_t Town::TryToCreateNewBuildingAt(PlannedAbode** planned, const MapCoords& pos, unsigned long num_scaffolds,
                                        TRIBE_TYPE tribe_type, Object* ignore_object, long abode_number,
                                        int skip_suitability_check)
{
	float angle = GRand::GameFloatRand(TWO_PI, TOWN_SOURCE_FILE, TOWN_LINE(2865));
	for (unsigned long i = 0; i < 8; i++)
	{
		if (GetNewPlannedBuilding(planned, pos, angle, 1.0f, num_scaffolds, ignore_object, tribe_type, abode_number,
		                          skip_suitability_check) > 0.0f)
		{
			return true;
		}
		angle += TWO_PI / 8.0f;
	}
	return false;
}

float Town::GetNewPlannedBuilding(PlannedAbode** planned, const MapCoords& pos, float& y_angle, float default_scale,
                                  unsigned long num_scaffolds, Object* ignore_object, TRIBE_TYPE tribe_type,
                                  long abode_number, int skip_suitability_check)
{
	float         bestDesire = 0.0f;
	unsigned long first = abode_number == -1 ? 0 : abode_number;
	unsigned long last = abode_number != -1 ? abode_number + 1 : ABODE_NUMBER_LAST;
	for (unsigned long number = first; number < last; number++)
	{
		float      scale = default_scale;
		TRIBE_TYPE abodeTribe = GetTribe()->type;
		if (number == ABODE_NUMBER_WONDER)
		{
			if (tribe_type != TRIBE_TYPE_NONE)
			{
				abodeTribe = tribe_type;
			}
			scale = GetWonderScale(pos);
		}
		GAbodeInfo* info = GAbodeInfo::Find(abodeTribe, (ABODE_NUMBER)number);
		if (info->ScaffoldsRequired > 0 && info->ScaffoldsRequired <= num_scaffolds)
		{
			Game3DObject* mesh = info->GetTemporaryMesh();
			if (skip_suitability_check != 0 || pos.IsSuitableForAbodeBuildFixed(mesh, y_angle, scale, ignore_object))
			{
				float desire = GetDesireToBeBuilt(info, num_scaffolds);
				if (desire > bestDesire)
				{
					bestDesire = desire;
					(*planned)->info = info;
					(*planned)->YAngle = y_angle;
					(*planned)->scale = scale;
				}
			}
		}
	}
	return bestDesire;
}

Game3DObject* GAbodeInfo::GetTemporaryMesh() const
{
	static Game3DObject* temporaryMesh = NULL;
	if (temporaryMesh == NULL)
	{
		temporaryMesh = Game3DObject::Create(LH3DObject::STATIC);
	}
	temporaryMesh->SetMesh(LH3DMesh::GetPackedMesh(GetMesh()), NULL, NULL);
	return temporaryMesh;
}

float Town::GetWonderPower(const MapCoords& pos)
{
	MapCoords coords = pos;
	float     power = GetRawDesire(TOWN_DESIRE_INFO_TO_BUILD_WONDER);
	float     radius = max(power * 15.0f, 15.0f);
	int       count = GUtils::GetMapCellSpiralSizeFromRadius(radius);
	long      spiralX = 1;
	long      spiralZ = 1;
	for (; count != 0; count--)
	{
		for (MapCellIterator it = pos.GetFirstIterator(); it.object != NULL;)
		{
			if (GUtils::GetDistanceInMetres(pos, it.object->Pos) < radius)
			{
				power += it.object->GetTownArtifactValue();
				power += it.object->GetImpressiveValue() / 10.0f;
			}
			it.object = it.object->GetMapChild(*it.cell);
			it.MoveToMobileObsIfNeededAndPoss();
		}
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
	return max(0.25f, power);
}

float Town::GetWonderScale(const MapCoords& pos)
{
	float power = min(GetWonderPower(pos), 5.0f);
	return power * (1.0f - power / 10.0f);
}

Field* Town::FindBestFieldNearPos(const MapCoords& pos, float max_distance)
{
	Field* bestField = NULL;
	float  bestScore = max_distance;
	for (LHLinkedNode<Field*>* node = FieldList.GetStart(); node != NULL; node = node->next.Get())
	{
		Field* field = node->payload;
		float  distance = GUtils::GetDistanceInMetres(pos, field->Pos);
		float  score = GUtils::GetDistanceModifier(distance, max_distance) * distance;
		score *= 1.0 - min((float)field->field_0xd8 / (float)field->type_info->Capacity, 1.0f);
		if (score < bestScore)
		{
			bestScore = score;
			bestField = field;
		}
	}
	return bestField;
}

MapCoords Town::GetTownNeedsPos(unsigned long index)
{
	if (GetStoragePit() != NULL)
	{
		return GetStoragePit()->GetTownDesireFlagPos(index);
	}
	MapCoords pos;
	if (GetTotem() != NULL)
	{
		pos = GetTotem()->Pos;
	}
	else
	{
		pos = Pos;
	}
	pos += GUtils::GetPosFromAngle((float)index * (TWO_PI / TOWN_DESIRE_INFO_LAST), 5.0f);
	return pos;
}

Flock* Town::GetFlock(LIVING_TYPE living_type, int include_shepherded)
{
	Flock* flock = NULL;
	while ((flock = FlockList.FindNext(flock)) != NULL)
	{
		if (flock->Shepherd == NULL || include_shepherded == 1)
		{
			Living* first = flock->members != NULL ? flock->members->payload : NULL;
			if (((const GLivingInfo*)first->GetInfo())->field_0x120 == living_type || living_type == LIVING_TYPE_ANY)
			{
				if (flock->leader != NULL && flock->leader->payload != NULL)
				{
					return flock;
				}
			}
		}
	}
	return NULL;
}

void Town::ProcessPlayerInteract()
{
	unsigned long townPlayerNumber = GetPlayer()->GetPlayerNumber();
	bool32_t      isNeutral = townPlayerNumber == GGame::g_game->GetNeutralPlayer()->GetPlayerNumber();
	OtherInteractionTotal = 0.0f;
	OwnerInteractionTotal = 0.0f;
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		unsigned long number = player->GetPlayerNumber();
		PlayerInteract[number].Process(this);
		if (!isNeutral && number == townPlayerNumber)
		{
			OwnerInteractionTotal += PlayerInteract[number].Aggression;
		}
		else
		{
			OtherInteractionTotal += PlayerInteract[number].Aggression;
		}
	}
	if (OtherInteractionTotal < 0.1f)
	{
		OtherPlayersAggressorScale = min(OtherPlayersAggressorScale *= 1.001f, 1.0f);
	}
	if (OwnerInteractionTotal < 0.1f)
	{
		OwnerAggressorScale = min(OwnerAggressorScale *= 1.001f, 1.0f);
	}
}

PlayerTownInteract::PlayerTownInteract()
{
	Aggression = 0.0f;
	LastDamageTurn = 0;
	Trust = 1.0f;
	for (int i = 0; i < DEATH_REASON_LAST; i++)
	{
		DamageDone[i] = 0.0f;
	}
}

void Town::UpdateDamageDoneToVillager(GPlayer* player, DEATH_REASON reason, float damage)
{
	PlayerInteract[player->GetPlayerNumber()].DamageDone[reason] += damage;
}

float PlayerTownInteract::GetTotalDamageDone()
{
	float total = 0.0f;
	for (int i = 0; i < DEATH_REASON_LAST; i++)
	{
		total += DamageDone[i];
	}
	return total;
}

void PlayerTownInteract::UpdateDamageDone(EffectValues& values, float value)
{
	LastDamageTurn = GGame::g_game->data.GameTurn;
	effect_values = values;
	Aggression += value;
}

void PlayerTownInteract::ReduceTrust(Town* town)
{
	Trust -= town->GetInfo()->InteractionDecrease;
	if (Trust < 0.0f)
	{
		Trust = 0.0f;
	}
}

void PlayerTownInteract::Process(Town* town)
{
	Aggression *= 0.999f;
	if (Trust < 1.0f)
	{
		Trust += town->GetInfo()->InteractionIncrease;
	}
}

TotemStatue* Town::GetTotemStatue()
{
	if (town_centre != NULL)
	{
		return GetTownCentre()->totem_statue;
	}
	return NULL;
}

void Town::UpdateInfluence(float value)
{
	influence = value;
}

SCRIPT_OBJECT_TYPE Town::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_TOWN;
}

void Town::RemoveVillager(Villager* villager)
{
	villager->FindChildrenAndOrphanThem();
	Abode* abode = villager->GetAbode();
	stats.Remove(villager);
	if (abode != NULL)
	{
		abode->RemoveAliveVillagerFromAbode(villager);
		villager->SetAbode(NULL);
	}
	else if (IsVillagerInHomelessList(villager))
	{
		HomelessList.Remove(villager);
	}
	RemoveVillagerOnWayToWorshipSite(villager);
	if (villager->Flags & 2)
	{
		villager->RemoveVillagerFromWorshipSite();
	}
	villager->SetTown(NULL);
	if (GetPopulation() == 0)
	{
		EmptyTownTimer = 50;
	}
	villager->mother = NULL;
}

bool32_t Town::IsBuildingHappening()
{
	return BuildingSiteList.count != 0;
}

void Town::AddVillagerOnWayToWorshipSite(Villager* villager)
{
	if (!VillagersOnWayToWorshipSite.Contains(villager))
	{
		VillagersOnWayToWorshipSite.Add(villager);
		NumVillagersOnWayToWorshipSite++;
	}
}

void Town::RemoveVillagerOnWayToWorshipSite(Villager* villager)
{
	if (VillagersOnWayToWorshipSite.Contains(villager))
	{
		VillagersOnWayToWorshipSite.Remove(villager);
		NumVillagersOnWayToWorshipSite--;
	}
}

void Town::AddVillagerToWorshipCount()
{
	WorshipCount++;
}

void Town::RemoveVillagerFromWorshipCount()
{
	WorshipCount--;
}

float Town::GetDesire(TOWN_DESIRE_INFO desire_type)
{
	return desire.Desire[desire_type] + desire.DesireBoost[desire_type] + desire.DesireCheat[desire_type];
}

float Town::GetRawDesire(TOWN_DESIRE_INFO desire_type)
{
	return desire.RawDesire[desire_type] + desire.DesireBoost[desire_type] + desire.DesireCheat[desire_type];
}

void Town::VillagerDead(Villager* villager, DEATH_REASON reason, GPlayer* player, float param_4)
{
	stats.VillagerDead(villager, reason, player, param_4);
	GetPlayer()->GetStats()->TotalDeaths++;
	player->GetStats()->VillagersKilled++;
	if (graveyard != NULL)
	{
		graveyard->ProcessNewDeath();
	}
	DesireDirty = true;
	DesireDirtyTimer = 0;
}

float Town::GetBeliefInNeutralPlayer()
{
	return BeliefInNeutralPlayer;
}

PlannedMultiMapFixed* Town::GetPlannedAtPos(const MapCoords& pos, float radius, int param_3)
{
	PlannedMultiMapFixed* best = NULL;
	float                 bestDistance = radius;
	if (PlannedList.count != 0)
	{
		FOREACH_LH_LIST_HEAD(PlannedMultiMapFixed, planned, PlannedList)
		{
			if (planned->field_0x30 != 0 || param_3 == 0)
			{
				const GMultiMapFixedInfo* info = planned->info.Get();
				float                     meshRadius = info->GetMesh2DRadius(planned->GetScale());
				float distance = GUtils::GetDistanceInMetres(pos, planned->Pos) - (meshRadius + radius);
				if (distance <= bestDistance)
				{
					bestDistance = distance;
					best = planned;
				}
			}
		}
	}
	return best;
}

bool32_t Town::ForceBuildingOfPlannedAtPos(const MapCoords& pos, float desire)
{
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		FOREACH_LH_LIST_HEAD(Town, town, player->towns)
		{
			PlannedMultiMapFixed* planned = town->GetPlannedAtPos(pos, 1.0f, 0);
			if (planned != NULL)
			{
				BuildingSite* site = town->AddBuildingSiteNoFixedCheck(planned);
				if (site != NULL)
				{
					site->ForcedDesire = desire;
				}
			}
		}
	}
	return false;
}

float Town::GetTribalPower(TRIBE_TYPE tribe_type)
{
	GPlayer* player = GetPlayer();
	if (player != NULL)
	{
		return player->TribalPower[tribe_type];
	}
	return 1.0f;
}

Villager* Town::FindVillager(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                             SCRIPT_OBJECT_TYPE type, uint32_t param_3)
{
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		Villager* villager = abode->FindVillager(callback, type, param_3);
		if (villager != NULL)
		{
			return villager;
		}
	}
	FOREACH_LH_LIST_HEAD(Villager, villager, HomelessList)
	{
		if (callback(villager, type, param_3))
		{
			return villager;
		}
	}
	return NULL;
}

float Town::GetTownAndVillagerHealthTotal()
{
	float total = 0.0f;
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		total += abode->GetVillagerHealthTotal();
		total += abode->GetLife();
	}
	FOREACH_LH_LIST_HEAD(Villager, villager, HomelessList)
	{
		total += villager->GetLife();
	}
	return total;
}

Animal* Town::FindAnimal(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                         SCRIPT_OBJECT_TYPE type, uint32_t param_3)
{
	for (LHLinkedNode<Flock*>* node = FlockList.GetStart(); node != NULL; node = node->next.Get())
	{
		Animal* animal = node->payload->FindAnimal(callback, type, param_3);
		if (animal != NULL)
		{
			return animal;
		}
	}
	return NULL;
}

Living* Town::FindLiving(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                         SCRIPT_OBJECT_TYPE type, uint32_t param_3)
{
	Living* living = FindAnimal(callback, type, param_3);
	if (living == NULL)
	{
		living = FindVillager(callback, type, param_3);
	}
	return living;
}

FishFarm* Town::FindBestFishFarm(Villager* villager, float* score)
{
	float     bestScore = 0.0f;
	FishFarm* bestFishFarm = NULL;
	for (LHLinkedNode<FishFarm*>* node = FishFarms.GetStart(); node != NULL; node = node->next.Get())
	{
		FishFarm* fishFarm = node->payload;
		float     distance = fishFarm->Pos.GetDistance(villager->Pos);
		float fishFarmScore = (float)fishFarm->GetDesireToBeFished() * GUtils::GetDistanceModifier(distance, 500.0f);
		if (fishFarmScore > bestScore)
		{
			bestScore = fishFarmScore;
			bestFishFarm = fishFarm;
		}
	}
	if (score != NULL)
	{
		*score = bestScore;
	}
	return bestFishFarm;
}

Flock* Town::FindBestFlock(Villager* villager, float* score)
{
	float  bestScore = 0.0f;
	Flock* bestFlock = NULL;
	for (LHLinkedNode<Flock*>* node = FlockList.GetStart(); node != NULL; node = node->next.Get())
	{
		Flock* flock = node->payload;
		if (flock->Shepherd == NULL)
		{
			float distance = flock->Pos.GetDistance(villager->Pos);
			float flockScore = GUtils::GetDistanceModifier(distance, 300.0f);
			if (flockScore > bestScore)
			{
				bestScore = flockScore;
				bestFlock = flock;
			}
		}
	}
	if (score != NULL)
	{
		*score = bestScore;
	}
	return bestFlock;
}

Field* Town::FindBestField(Villager* villager, float* score)
{
	float  bestScore = 0.0f;
	Field* bestField = NULL;
	*score = 0.0f;
	for (LHLinkedNode<Field*>* node = FieldList.GetStart(); node != NULL; node = node->next.Get())
	{
		Field* field = node->payload;
		float  distance = field->Pos.GetDistance(villager->Pos);
		float  fieldScore = field->GetDesireToBeFarmed();
		fieldScore *= GUtils::GetDistanceModifier(distance, 300.0f);
		if (fieldScore > bestScore)
		{
			bestScore = fieldScore;
			bestField = field;
		}
	}
	if (score != NULL)
	{
		*score = bestScore;
	}
	return bestField;
}

void* Town::GetTemporaryResourceStorePotOrPos(const MapCoords& pos, MapCoords& out_pos, RESOURCE_TYPE type)
{
	if (TemporaryResourceStorePots[type] != NULL && TemporaryResourceStorePots[type]->IsAvailable())
	{
		out_pos = TemporaryResourceStorePots[type]->GetNearestEdgeToPos(pos);
		return TemporaryResourceStorePots[type];
	}
	else
	{
		MapCoords storePos = GetCongregationPos();
		storePos += GUtils::GetPosFromAngle(0.0f, type == RESOURCE_TYPE_WOOD ? 5.0f : 0.0f);
		FindClearArea(storePos, storePos, 45.0f, 1.5f, 2.0f, &GameThingWithPos::IsFixed, NULL);
		TemporaryResourceStorePots[type] = Pot::Create(
			storePos, &GPotInfo::GetInfo()[type == RESOURCE_TYPE_FOOD ? POT_INFO_MAGIC_FOOD : POT_INFO_MAGIC_WOOD], 0,
			NULL, this, 0, 0.0f, 1.0f, 0);
		out_pos = TemporaryResourceStorePots[type]->GetNearestEdgeToPos(pos);
		return TemporaryResourceStorePots[type];
	}
}

void Town::SetStoragePit(StoragePit* storage_pit)
{
	MainStoragePit = storage_pit;
	for (unsigned long type = RESOURCE_TYPE_FOOD; type < RESOURCE_TYPE_LAST; type++)
	{
		if (TemporaryResourceStorePots[type] != NULL && TemporaryResourceStorePots[type]->IsAvailable())
		{
			if (TemporaryResourceStorePots[type]->GetResource((RESOURCE_TYPE)type) > 0)
			{
				TemporaryResourceStorePots[type]->SetupReaction();
			}
			else
			{
				TemporaryResourceStorePots[type]->ToBeDeleted(0);
			}
		}
		TemporaryResourceStorePots[type] = NULL;
	}
}

void Town::AsssignTownFeature()
{
	LHLinkedNode<Town*>* node;
	for (node = GGame::g_game->GameLists.TownList.GetStart(); node != NULL; node = node->next.Get())
	{
		node->payload->MakeScenicForest();
	}
	for (node = GGame::g_game->GameLists.TownList.GetStart(); node != NULL; node = node->next.Get())
	{
		node->payload->AssignForestsToTown();
	}
}

void Town::AssignForestsToTown()
{
	MapCoords pos;
	if (GetStoragePit() != NULL)
	{
		pos = GetStoragePit()->Pos;
	}
	else
	{
		GetTemporaryResourceStorePotOrPos(Pos, pos, RESOURCE_TYPE_WOOD);
	}
	forests.RemoveAll();
	FOREACH_LH_LIST_HEAD(Forest, forest, GGame::g_game->GameLists.forests)
	{
		MapCoords edge = forest->GetNearestEdgeToPos(pos);
		float     distance = edge.GetDistance(pos);
		if (distance < GetInfo()->field_0x164)
		{
			if (forest->GetWoodValue() != 0.0f)
			{
				AddForest(forest);
			}
		}
	}
}

Forest* Town::FindNearestForestToPos(const MapCoords& pos)
{
	float   bestDist = GetInfo()->field_0x164;
	Forest* best = NULL;
	Forest* bestScenic = NULL;
	float   bestScenicDist = GetInfo()->field_0x164;
	for (LHLinkedNode<Forest*>* node = forests.GetStart(); node != NULL; node = node->next.Get())
	{
		Forest*   forest = node->payload;
		Object*   object = forest->BigForestObject;
		MapCoords nearest;
		if (object != NULL)
		{
			if (object->Pos.GetDistance(pos) > object->Get2DRadius())
			{
				nearest = object->GetNearestEdgeToPos(pos);
			}
			else
			{
				nearest = pos;
			}
		}
		else
		{
			nearest = forest->GetNearestEdgeToPos(pos);
		}
		float dist = nearest.GetDistance(pos);
		if (forest->IsScenic == 1)
		{
			if (dist < bestScenicDist)
			{
				bestScenicDist = dist;
				bestScenic = forest;
			}
		}
		else if (dist < bestDist)
		{
			bestDist = dist;
			best = forest;
		}
	}
	return best != NULL ? best : bestScenic;
}

uint32_t Town::Save(GameOSFile& file)
{
	if (Container::Save(file))
	{
		file.WritePtr(MainStoragePit);
		file.WriteSafe(desire);
		file.WriteIt(CameraView);
		file.WriteIt(ID);
		file.WriteIt(tribe_type);
		file.WriteIt(player_number);
		file.WriteIt(worship_percentage);
		file.WriteIt(WorshipCount);
		file.WriteIt(influence);
		file.WriteIt(NumVillagersOnWayToWorshipSite);
		file.WriteIt(AverageGameTurnsToTravelToWorshipSite);
		file.WriteIt(Promiscuity);
		file.WriteIt(BeliefInNeutralPlayer);
		file.WriteIt(Raining);
		file.WriteIt(BuildingRequested);
		file.WriteIt(DesireDirty);
		file.WriteIt(DesireDirtyTimer);
		file.WriteIt(CannotBuildWorshipSite);
		file.WriteIt(Uninhabitable);
		file.WritePtrArray((GameThing**)TemporaryResourceStorePots, RESOURCE_TYPE_LAST);
		file.WriteSafe(forests);
		file.WriteIt(stats);
		file.WriteIt(AreaMin);
		file.WriteIt(AreaMax);
		file.WritePtr(creche);
		file.WritePtr(graveyard);
		file.WriteSafe(WorkshopList);
		file.WriteSafe(AbodeList);
		file.WriteSafe(HomelessList);
		file.WriteSafe(ExtraVillagerList);
		file.WriteSafe(SpellIconList);
		file.WriteSafe(FieldList);
		file.WriteSafe(FishFarms);
		file.WriteSafe(BuildingSiteList);
		file.WriteSafe(ArtifactList);
		file.WriteIt(belief);
		file.WriteSafe(VillagerList);
		file.WritePtr(NearestTown);
		file.WriteSafe(playthings);
		file.WriteSafe(AnimalList);
		file.WritePtr(worship_site);
		file.WritePtr(town_centre);
		file.WriteSafe(PlannedList);
		file.WriteIt(PlayerInteract);
		file.WriteSafe(VillagersOnWayToWorshipSite);
		file.WriteIt(MagicTypesHeld);
		file.WritePtr(FootballPitch);
		file.WritePtr(LastAttackingPlayer);
		file.WriteIt(LastAttackedTurn);
		file.WriteIt(OtherPlayersAggressorScale);
		file.WriteIt(OwnerAggressorScale);
		file.WriteIt(OwnerInteractionTotal);
		file.WriteIt(OtherInteractionTotal);
		file.WriteIt(WorshipPercentageBeforeEmergency);
		file.WriteSafe2DArray(ResourceLastRemovedTurn, _PLAYER_NAME_COUNT, RESOURCE_TYPE_LAST);
		file.WriteSafe(FlockList);
		file.WritePtrArray((GameThing**)town_desire_flags, TOWN_DESIRE_INFO_LAST);
		file.WriteSafe(MissionaryList);
		file.WriteIt(BalanceBeliefScale);
		file.WriteIt(EmptyTownTimer);
		return true;
	}
	return false;
}

uint32_t Town::Load(GameOSFile& file)
{
	if (Container::Load(file))
	{
		file.ReadPtr((GameThing**)&MainStoragePit);
		file.ReadSafe(desire);
		desire.Init(this);
		file.ReadIt(CameraView);
		file.ReadIt(ID);
		file.ReadIt(tribe_type);
		file.ReadIt(player_number);
		file.ReadIt(worship_percentage);
		file.ReadIt(WorshipCount);
		file.ReadIt(influence);
		file.ReadIt(NumVillagersOnWayToWorshipSite);
		file.ReadIt(AverageGameTurnsToTravelToWorshipSite);
		file.ReadIt(Promiscuity);
		file.ReadIt(BeliefInNeutralPlayer);
		file.ReadIt(Raining);
		file.ReadIt(BuildingRequested);
		file.ReadIt(DesireDirty);
		file.ReadIt(DesireDirtyTimer);
		file.ReadIt(CannotBuildWorshipSite);
		file.ReadIt(Uninhabitable);
#ifndef VERSION_BW1W100
		ZeroBaseInfluence = 0;
#endif
		file.ReadPtrArray((GameThing**)TemporaryResourceStorePots);
		file.ReadSafe(forests);
		file.ReadIt(stats);
		file.ReadIt(AreaMin);
		file.ReadIt(AreaMax);
		file.ReadPtr((GameThing**)&creche);
		file.ReadPtr((GameThing**)&graveyard);
		file.ReadSafe(WorkshopList);
		file.ReadSafe(AbodeList);
		file.ReadSafe(HomelessList);
		file.ReadSafe(ExtraVillagerList);
		file.ReadSafe(SpellIconList);
		file.ReadSafe(FieldList);
		file.ReadSafe(FishFarms);
		file.ReadSafe(BuildingSiteList);
		file.ReadSafe(ArtifactList);
		file.ReadIt(belief);
		file.ReadSafe(VillagerList);
		file.ReadPtr((GameThing**)&NearestTown);
		file.ReadSafe(playthings);
		file.ReadSafe(AnimalList);
		file.ReadPtr((GameThing**)&worship_site);
		playtime = NULL;
		file.ReadPtr((GameThing**)&town_centre);
		file.ReadSafe(PlannedList);
		file.ReadIt(PlayerInteract);
		file.ReadSafe(VillagersOnWayToWorshipSite);
		file.ReadIt(MagicTypesHeld);
		file.ReadPtr(&FootballPitch);
		file.ReadPtr(&LastAttackingPlayer);
		file.ReadIt(LastAttackedTurn);
		file.ReadIt(OtherPlayersAggressorScale);
		file.ReadIt(OwnerAggressorScale);
		file.ReadIt(OwnerInteractionTotal);
		file.ReadIt(OtherInteractionTotal);
		file.ReadIt(WorshipPercentageBeforeEmergency);
		file.ReadSafe2DArray(ResourceLastRemovedTurn);
		file.ReadSafe(FlockList);
		OnCreatedOrLoaded();
		desire.Init(this);
		file.ReadPtrArray((GameThing**)town_desire_flags);
		file.ReadSafe(MissionaryList);
		file.ReadIt(BalanceBeliefScale);
		file.ReadIt(EmptyTownTimer);
		return true;
	}
	return false;
}

float Town::CalculateInfluencePower()
{
	return influence;
}

void Town::BuildNearestTownSitesCheat()
{
	LHPoint   focus = GGame::g_game->MyInterface()->status->CameraFoc;
	MapCoords pos;
	GLandscape::ConvertLandscapePointToMapCoord(focus, pos);
	Town*  nearestTown = NULL;
	Abode* abode = GUtils::FindClosestAbode(pos, TRIBE_TYPE_NONE, 0, 0, 0);
	if (abode != NULL)
	{
		nearestTown = abode->GetTown();
	}
	else
	{
		float bestDist = 0.0f;
		for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
		     player = GGame::g_game->GetNextPlayerAndNeutral(player))
		{
			FOREACH_LH_LIST_HEAD(Town, town, player->towns)
			{
				float dist = town->Pos.GetDistance(pos);
				if (dist < bestDist)
				{
					bestDist = dist;
					nearestTown = town;
				}
			}
		}
	}
	if (nearestTown != NULL)
	{
		LHLinkedNode<BuildingSite*>* next;
		for (LHLinkedNode<BuildingSite*>* node = nearestTown->BuildingSiteList.GetStart(); node != NULL; node = next)
		{
			next = node->next.Get();
			node->payload->GetBuilding()->BuildBy(1.0f);
		}
	}
}

Abode* Town::GetNextDamagedAbode(Object* object)
{
	for (Abode* abode = AbodeList.GetNext(dynamic_cast<Abode*>(object)); abode != NULL; abode = abode->next)
	{
		if (abode->IsDamaged())
		{
			return abode;
		}
	}
	return NULL;
}

float Town::GetBaseInfluence()
{
#ifndef VERSION_BW1W100
	if (ZeroBaseInfluence)
	{
		return 0.0f;
	}
#endif
	if (GGame::g_game->LandNumber)
	{
		return GetInfo()->BaseInfluenceByLand[GGame::g_game->LandNumber];
	}
	return GetInfo()->BaseInfluence;
}

LHColor GTownInfo::GetDebugColor() const
{
	return LHColor(223, 236, 130, 255);
}

TownArtifact* Town::AddArtifact(Fixed* artifact, GPlayer* player)
{
	TownArtifact* townArtifact = (TownArtifact*)artifact->GetTownArtifact();
	if (townArtifact != NULL)
	{
		townArtifact->town = this;
	}
	else
	{
		townArtifact = new (TOWN_SOURCE_FILE, TOWN_LINE(3947)) TownArtifact(artifact, this, player);
		artifact->town_artifact = townArtifact;
	}
	if (townArtifact != NULL)
	{
		if (ArtifactList.Find(townArtifact) == NULL)
		{
			ArtifactList.AddToFirst(townArtifact);
		}
		if (player != NULL && !artifact->IsTree())
		{
			player->ConsiderMakingCreatureMimicPlayer(artifact->GetInterfaceStatusWhoLastDroppedMe(),
			                                          DETECTED_PLAYER_ACTION_MAKE_ARTEFACT, artifact, MAGIC_TYPE_NONE);
		}
	}
	return townArtifact;
}

TownArtifact* Town::RemoveArtifact(Fixed* artifact)
{
	TownArtifact* townArtifact = FindArtifact(artifact);
	if (townArtifact != NULL)
	{
		ArtifactList.Remove(townArtifact);
		return townArtifact;
	}
	return NULL;
}

TownArtifact* Town::FindArtifact(Fixed* artifact)
{
	FOREACH_LH_LIST_HEAD(TownArtifact, townArtifact, ArtifactList)
	{
		if (townArtifact->Artifact == artifact)
		{
			return townArtifact;
		}
	}
	return NULL;
}

bool32_t Town::IsArtifactInTown(Fixed* artifact)
{
	return FindArtifact(artifact) != NULL;
}

float Town::GetVillagerActivityDesire(Villager* villager)
{
	return GetRawDesire(TOWN_DESIRE_INFO_FOR_RELAXATION);
}

uint32_t Town::SetVillagerActivity(Villager* villager)
{
	float      bestDesire = 0.0f;
	GameThing* bestThing = NULL;
	if (FootballPitch != NULL)
	{
		bestDesire = FootballPitch->GetVillagerActivityDesire(villager);
		bestThing = FootballPitch;
	}
	Creature* creature = GetPlayer()->GetCreature();
	if (creature != NULL)
	{
		float desire = creature->GetVillagerActivityDesire(villager);
		if (desire > bestDesire)
		{
			bestDesire = desire;
			bestThing = creature;
		}
	}
	FOREACH_LH_LIST_HEAD(TownArtifact, artifact, ArtifactList)
	{
		float desire = artifact->GetVillagerActivityDesire(villager);
		if (desire > bestDesire)
		{
			bestDesire = desire;
			bestThing = artifact;
		}
	}
	if (bestDesire != 0.0f)
	{
		return bestThing->SetVillagerActivity(villager);
	}
	return 0;
}

bool Town::IsSpaceForNewVillager()
{
	int space = GetTown()->stats.GetVillagerSpaceLeftInAbodes();
	if (GetTown()->stats.GetMaxVillagersInAbodes() == 0)
	{
		space = GetInfo()->DefaultVillagerCapacity - GetTown()->stats.GetPopulation();
	}
	return space > 0;
}

float Town::GetGameTurnResourceLastRemovedModifier(unsigned long player_number, RESOURCE_TYPE type)
{
	if (!(player_number < _PLAYER_NAME_COUNT && type >= 0 && type < RESOURCE_TYPE_LAST))
	{
		return 0.0f;
	}
	uint32_t lastRemoved = ResourceLastRemovedTurn[player_number][type];
	if (lastRemoved == 0)
	{
		return 1.0f;
	}
	uint32_t turnsSince = GGame::g_game->data.GameTurn - lastRemoved;
	return POWER(min((float)turnsSince / (float)GetInfo()->ResourceRemovedRecoveryTurns, 1.0f), 3);
}

void Town::SetGameTurnResourceLastRemoved(unsigned long player_number, RESOURCE_TYPE type)
{
	if (player_number < _PLAYER_NAME_COUNT && type >= 0 && type < RESOURCE_TYPE_LAST)
	{
		ResourceLastRemovedTurn[player_number][type] = GGame::g_game->data.GameTurn;
	}
}

Abode* Town::GetRandomAbode()
{
	uint32_t index = GRand::GameRand(AbodeList.count, TOWN_SOURCE_FILE, TOWN_LINE(4077));
	return AbodeList.Get(index);
}

Villager* Town::GetRandomHomelessVillager()
{
	uint32_t index = GRand::GameRand(HomelessList.count, TOWN_SOURCE_FILE, TOWN_LINE(4083));
	return HomelessList.Get(index);
}

void Town::AddWorkshop(Workshop* workshop)
{
	if (WorkshopList.Find(workshop) == NULL)
	{
		WorkshopList.AddToFirst(workshop);
	}
}

void Town::RemoveWorkshop(Workshop* workshop)
{
	if (WorkshopList.Find(workshop) != NULL)
	{
		WorkshopList.Remove(workshop);
	}
}

Workshop* Town::GetBestWorkshop(MapCoords& pos, int use_desire, int must_be_functional)
{
	Workshop* bestWorkshop = NULL;
	float     bestValue = 0.0f;
	FOREACH_LH_LIST_HEAD(Workshop, workshop, WorkshopList)
	{
		float value;
		if (use_desire)
		{
			value = workshop->GetDesireToBeSupplied();
		}
		else
		{
			value = 1.0f;
		}
		value *= GUtils::GetDistanceModifier(GUtils::GetDistanceInMetres(pos, workshop->Pos), 500.0f);
		if (value > bestValue)
		{
			if (!must_be_functional || workshop->IsFunctional())
			{
				bestValue = value;
				bestWorkshop = workshop;
			}
		}
	}
	return bestWorkshop;
}

bool32_t Town::IsScaffoldAwayFromWorkshops(Scaffold* scaffold)
{
	FOREACH_LH_LIST_HEAD(Workshop, workshop, WorkshopList)
	{
		if (workshop->IsPosWithinScaffoldAreas(scaffold->Pos))
		{
			return false;
		}
	}
	return true;
}

bool32_t Town::CheckScaffoldSnapToPoint(Scaffold* scaffold)
{
	bool32_t snapped = false;
	FOREACH_LH_LIST_HEAD(Workshop, workshop, WorkshopList)
	{
		snapped |= workshop->CheckSnapToPoint(scaffold);
	}
	return snapped;
}

struct TownLocation
{
	MapCoords Pos;
	float     Score;

	// BW1W120 inlined BW1M119 inlined
	TownLocation(const MapCoords& pos, const MapCoords& from)
		: Pos(pos),
		  Score(GUtils::GetDistanceModifier(from.GetDistance(pos), 1000.0f) * GUtils::GetNumVillagersNear(pos, 9))
	{
	}

	// BW1W120 inlined BW1M119 01552c30
	bool operator<(TownLocation& other) { return Score > other.Score; }
};

int Town::GetNumVillagersInGroup(unsigned long group)
{
	int      count = 0;
	SEX_TYPE sex = (SEX_TYPE)(~group & 1);
	bool32_t child = group >= 2;
	for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
	{
		for (Villager* villager = abode->villagers.head; villager != NULL; villager = villager->next)
		{
			if (((const GVillagerInfo*)villager->info)->sex == sex && villager->IsChild() == child)
			{
				count++;
			}
		}
	}
	for (Villager* homeless = HomelessList.head; homeless != NULL; homeless = homeless->next)
	{
		if (((const GVillagerInfo*)homeless->info)->sex == sex && homeless->IsChild() == child)
		{
			count++;
		}
	}
	return count;
}

void Town::OnCreatedOrLoaded() {}

void Town::FUN_00740440() {}

float Town::GetPosWhereVillagersAre(const MapCoords& from, MapCoords& pos)
{
	LHOrderedLinkedList<TownLocation> locations;
	if (GetRawDesire(TOWN_DESIRE_INFO_FOR_SLEEP) > 0.5)
	{
		return 0.0f;
	}
	if (GetStoragePit() != NULL)
	{
		pos = GetStoragePit()->GetDoorPos();
		locations.Insert(new (TOWN_SOURCE_FILE, TOWN_LINE(4508)) TownLocation(pos, from));
	}
	pos = GetCongregationPos();
	locations.Insert(new (TOWN_SOURCE_FILE, TOWN_LINE(4511)) TownLocation(pos, from));
	if (GetTownCentre() != NULL)
	{
		pos = GetTownCentre()->Pos;
		locations.Insert(new (TOWN_SOURCE_FILE, TOWN_LINE(4515)) TownLocation(pos, from));
	}
	for (LHLinkedNode<Field*>* node = FieldList.head.Get(); node != NULL; node = node->next.Get())
	{
		pos = node->payload->Pos;
		locations.Insert(new (TOWN_SOURCE_FILE, TOWN_LINE(4520)) TownLocation(pos, from));
	}
	float score = 0.0f;
	if (locations.GetHead() != NULL)
	{
		score = locations.GetHead()->GetData()->Score;
		pos = locations.GetHead()->GetData()->Pos;
	}
	while (locations.GetHead() != NULL)
	{
		TownLocation* location = locations.GetHead()->GetData();
		locations.Remove(location);
		delete location;
	}
	return score;
}

MapCoords Town::GetCongregationPos()
{
	if (CongregationPos.IsZero())
	{
		LHQueue<GameThingWithPos*, 100> buildings;
		unsigned long                   count = 0;
		for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
		{
			if (!abode->IsField())
			{
				buildings.Push(abode);
				count++;
			}
		}
		if (count < 3)
		{
			for (PlannedMultiMapFixed* planned = PlannedList.head; planned != NULL; planned = planned->next)
			{
				buildings.Push(planned);
				count++;
			}
		}
		MapCoords pos;
		bool32_t  pickNearBuilding = true;
		if (count > 1)
		{
			unsigned long x = 0;
			unsigned long z = 0;
			for (unsigned long i = 0; i < count; i++)
			{
				pos = buildings.Pop()->Pos;
				x += pos.WholeX();
				z += pos.WholeZ();
			}
			pos.SetWholeX((long)((float)x / count));
			pos.SetWholeZ((long)((float)z / count));
			if (FindClearArea(pos, pos, 130.0f, 3.0f, 10.0f, &Object::BlocksTownClearArea, NULL))
			{
				pickNearBuilding = false;
			}
		}
		if (pickNearBuilding)
		{
			GameThingWithPos* centre = this;
			if (buildings.GetSize() > 0)
			{
				centre = buildings.Pop();
			}
			pos = centre->Pos;
			pos += GUtils::GetPosFromAngle(GRand::GameFloatRand(TWO_PI, TOWN_SOURCE_FILE, TOWN_LINE(4588)),
			                               GRand::GameFloatRand(10.0f, TOWN_SOURCE_FILE, TOWN_LINE(4588)) + 10.0f);
		}
		CongregationPos.Set(pos);
	}
	return CongregationPos;
}

Abode* Town::FindAbodeNumber(ABODE_NUMBER number, float percent_built, int param_3)
{
	for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
	{
		if ((abode->GetInfo()->GetAbodeNumber() == number && abode->GetPercentBuilt() >= percent_built &&
		     !abode->IsInScript()) ||
		    !param_3)
		{
			return abode;
		}
	}
	return NULL;
}

bool32_t Town::IsAllowedToCreateWorshipSite()
{
	if (GGame::g_game->LandNumber == 1 || CannotBuildWorshipSite != 0 || GetPopulation() == 0)
	{
		return false;
	}
	return true;
}

void Town::CheckAddWorshipSite()
{
	if (IsAllowedToCreateWorshipSite() && GetPlayer() != NULL)
	{
		GPlayer* player = GetPlayer();
		if (player != NULL && player->type != PLAYER_TYPE_NEUTRAL && player->GetCitadel() != NULL)
		{
			WorshipSite* worshipSite = player->GetCitadel()->FindOrCreateWorshipSite(this);
			if (worshipSite != NULL && !worshipSite->Towns.Contains(this))
			{
				worshipSite->AddTown(this);
			}
		}
	}
}

MultiMapFixed* Town::GetBestAttackObject(const MapCoords& pos)
{
	float          bestScore = 0.0f;
	MultiMapFixed* best = NULL;
	for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
	{
		const GObjectInfo* info = abode->info;
		float              score = abode->GetPercentBuilt() * abode->GetLife() * info->ComputerAttackDesire;
		if (&pos != NULL)
		{
			score = GUtils::GetDistanceModifier(pos.GetDistance(abode->Pos), 1000.0f) * score;
		}
		if (score > bestScore)
		{
			bestScore = score;
			best = abode;
		}
	}
	for (LHLinkedNode<Field*>* node = FieldList.head.Get(); node != NULL; node = node->next.Get())
	{
		Field*             field = node->payload;
		const GObjectInfo* info = (const GObjectInfo*)field->type_info;
		float              score = field->GetPercentFullWithFood() * info->ComputerAttackDesire;
		if (&pos != NULL)
		{
			score = GUtils::GetDistanceModifier(pos.GetDistance(field->Pos), 1000.0f) * score;
		}
		if (score > bestScore)
		{
			bestScore = score;
			best = field;
		}
	}
	return best;
}

int Town::GetDeathsFromWorshipping()
{
	return GetDeaths(DEATH_REASON_CHANT);
}

int Town::GetDeaths(DEATH_REASON reason)
{
	if (reason < 0 || reason >= DEATH_REASON_LAST)
	{
		return 0;
	}
	return stats.Deaths[reason];
}

void Town::GiveTownAllOtherTownsSpells(Town* other)
{
	for (MAGIC_TYPE type = (MAGIC_TYPE)0; type < MAGIC_TYPE_LAST; type++)
	{
		if (other->IsMagicTypeHeld(type))
		{
			MAGIC_TYPE baseType =
				GSpellSeedInfo::GetInfo()[GSpellSeedInfo::GetFirstSpellSeedForMagicType(type)].GetMagicTypeFromPULevel(
					POWER_UP_TYPE_NONE);
			AddMagicTypesHeld(type);
			if (!IsMagicTypeHeld(baseType))
			{
				AddMagicTypesHeld(baseType);
			}
		}
	}
}

bool32_t Town::IsCompletelyDestroyed()
{
	for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
	{
		if (abode->GetLife() > 0.0f && !abode->IsField() && (abode->IsBuilt() || abode->GetPercentBuilt() > 0.1f))
		{
			return false;
		}
	}
	return true;
}

GameThing* Town::GetTownBeliefAttackDefendObject()
{
	if (town_centre != NULL)
	{
		return town_centre;
	}
	StoragePit* storagePit = GetStoragePit();
	if (storagePit != NULL)
	{
		return storagePit;
	}
	return AbodeList.head;
}

float Town::GetBeliefNeededOrLeft(GPlayer* player)
{
	return GetBeliefInPlayer(player) - belief.GetMaxBeliefMeNotIncluded(player->GetPlayerNumber());
}

float Town::GetDesireToBeTakenOver(GPlayer* player)
{
	float desire = 1.0f - min(belief.GetBeliefNeededToConvert(player, this) / 5.0f, 1.0f);
	if (player_number == (uint8_t)player->GetPlayerNumber())
	{
		desire += 0.75f;
	}
	return desire > 0.1f ? (desire >= 1.0f ? 1.0f : desire) : 0.1f;
}

GameThing* Town::GetStoragePitObjectForComputerPlayer(RESOURCE_TYPE type)
{
	StoragePit* storagePit = GetStoragePit();
	if (storagePit != NULL)
	{
		return storagePit;
	}
	MapCoords pos;
	return (GameThing*)GetTemporaryResourceStorePotOrPos(GetInteractPos(), pos, type);
}

void Town::AddMissionary(Villager* villager, GPlayer* player)
{
	MissionaryList.AddToFirst(new (TOWN_SOURCE_FILE, TOWN_LINE(4780)) MissionaryControl(villager, player));
}

bool32_t Town::IsBuildingTownCentre()
{
	for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
	{
		if (abode->IsTownCentre())
		{
			return true;
		}
	}
	for (PlannedMultiMapFixed* planned = PlannedList.head; planned != NULL; planned = planned->next)
	{
		if (planned->info->GetAbodeNumber() == ABODE_NUMBER_TOWN_CENTRE)
		{
			return true;
		}
	}
	return false;
}

void Town::SetTownEmpty()
{
	belief.Init(this);
	for (unsigned long i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		belief.SetBelief(i, GetBeliefInNeutralPlayer());
	}
	GPlayer* neutral = GGame::g_game->GetNeutralPlayer();
	if (GetPlayer() != neutral)
	{
		neutral->ClaimTown(this);
	}
}

float Town::GetModifierForArtifacts()
{
	float modifier = 1.0f;
	if (owner.Get() != NULL && owner.Get()->IsNeutral() != true)
	{
		modifier = belief.GetBeliefInPlayer(owner.Get());
		if (modifier > 2.0f)
		{
			float extra = 2.0f * ((modifier - 2.0f) * (1.0f / 6.0f));
			modifier = min(extra + 2.0f, 4.0f);
		}
	}
	return modifier;
}

void Town::GiveBeliefForArtifactIfNecessary(TownArtifact* artifact)
{
	GPlayer* player = artifact->GetPlayer();
	if (player != NULL && player != GetPlayer())
	{
		uint32_t turnsSinceLastGiven =
			GGame::g_game->data.GetGameTurn() - PlayerInteract[player->GetPlayerNumber()].LastArtifactBeliefGiftTurn;
		if (turnsSinceLastGiven +
		        GRand::GameRand(GetInfo()->ArtifactBeliefGiftTurns / 4, TOWN_SOURCE_FILE, TOWN_LINE(4848)) >
		    GetInfo()->ArtifactBeliefGiftTurns)
		{
			PlayerInteract[player->GetPlayerNumber()].LastArtifactBeliefGiftTurn = GGame::g_game->data.GetGameTurn();
			belief.AddToBelief(player, artifact->GetImpressiveValueForDancing(), artifact->Artifact, 1,
			                   GUIDANCE_ALIGNMENT_GOOD);
		}
	}
}

float Town::GetAlignmentForMakingDisciple(Villager* villager)
{
	if (villager != NULL)
	{
		TOWN_DESIRE_INFO desireType = GVillagerInfo::GetDiscipleInfo()[villager->DiscipleType].desire_i_fulfil;
		if (desireType != TOWN_DESIRE_INFO_NONE)
		{
			float desire = GetDesire(desireType);
			float alignment = GetInfo()->DiscipleAlignmentChange;
			if (desire <= GetInfo()->DiscipleMaxDesire)
			{
				if (desire < GetInfo()->DiscipleMinDesire)
				{
					alignment = -alignment;
				}
				else
				{
					alignment = 0.0f;
				}
			}
			return alignment;
		}
	}
	return 0.0f;
}

StoragePit* Town::GetStoragePitEvenIfPlanned()
{
	StoragePit* pit = GetStoragePit();
	if (pit != NULL)
	{
		return pit;
	}
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		pit = dynamic_cast<StoragePit*>(abode);
		if (pit != NULL)
		{
			return pit;
		}
	}
	return NULL;
}

void Town::ResolveLoad() {}

bool32_t Town::FindClearArea(MapCoords& result, MapCoords& pos, float param_3, float param_4, float radius,
                             int (Object::*callback)() const, Object* obj)
{
	MapCoords coords = pos;
	bool      found = false;
	int       count = GUtils::GetIncrementSpiralSizeFromRadius(param_3, param_4);
	long      spiralX = 1;
	long      spiralZ = 1;
	while (count != 0)
	{
		if (CheckForClearArea(coords, radius, callback, obj))
		{
			found = true;
			break;
		}
		count--;
		GUtils::SpiralIncrement(coords, spiralX, spiralZ, param_4);
	}
	if (!found)
	{
		coords.Set(pos);
		return false;
	}
	result.Set(coords);
	return true;
}

bool32_t Town::CheckForClearArea(MapCoords& pos, float radius, int (Object::*callback)() const, Object* obj)
{
	MapCoords coords;
	coords.SetWholeX(pos.WholeX());
	coords.SetWholeZ(pos.WholeZ());
	coords.altitude = pos.Altitude();
	int  count = GUtils::GetMapCellSpiralSizeFromRadius(radius);
	long spiralX = 1;
	long spiralZ = 1;
	while (count != 0)
	{
		if (coords.InBounds())
		{
			MapCellIterator iter = coords.GetFirstIterator();
			while (iter.object != NULL)
			{
				Object* object = iter.object;
				if (object->Pos.GetDistance(pos) - object->Get2DRadius() < radius && iter.object != obj &&
				    (iter.object->*callback)())
				{
					return false;
				}
				iter.object = iter.object->GetMapChild(*iter.cell);
				iter.MoveToMobileObsIfNeededAndPoss();
			}
		}
		count--;
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
	return true;
}

void Town::CheckWhenNewBuildingCreated(MultiMapFixed& building)
{
	if (building.Pos.GetDistance(CongregationPos) - building.Get2DRadius() < 7.5f)
	{
		CongregationPos.SetToZero();
	}
}

struct ShuffleAbode
{
	Abode* abode;
	float  DesireToGainMale;
	float  DesireToGainVillager;

	// BW1W120 inlined BW1M119 01550c40
	ShuffleAbode() : abode(NULL), DesireToGainMale(0.0f), DesireToGainVillager(0.0f) {}

	// BW1W120 007417c0 BW1M119 01550bb0
	static int QSortCompare(const void* a, const void* b);
};

void Town::ShuffleVillagersAroundAbodes()
{
	int count = 0;
	FOREACH_LH_LIST_HEAD(Abode, abode, AbodeList)
	{
		if (abode->IsFunctional() && abode->GetInfo()->MaxChildrenInAbode + abode->GetInfo()->MaxVillagersInAbode != 0)
		{
			count++;
		}
	}
	if (count <= 0)
	{
		return;
	}
	ShuffleAbode* shuffle = new (TOWN_SOURCE_FILE, TOWN_LINE(5142)) ShuffleAbode[count];
	int           index = 0;
	FOREACH_LH_LIST_HEAD(Abode, candidate, AbodeList)
	{
		if (candidate->IsFunctional() &&
		    candidate->GetInfo()->MaxChildrenInAbode + candidate->GetInfo()->MaxVillagersInAbode != 0)
		{
			shuffle[index].abode = candidate;
			shuffle[index].DesireToGainMale = candidate->CalculateDesireToGainMale();
			shuffle[index].DesireToGainVillager = shuffle[index].abode->CalculateDesireToGainVillager() * 0.5f;
			index++;
		}
	}
	qsort(shuffle, count, sizeof(ShuffleAbode), ShuffleAbode::QSortCompare);
	for (int i = 0; i < count - 1; i++)
	{
		ShuffleAbode* current = &shuffle[i];
		float         bestSize = (float)fabs(current->DesireToGainMale * current->DesireToGainMale +
		                                     current->DesireToGainVillager * current->DesireToGainVillager);
		ShuffleAbode* best = NULL;
		for (uint32_t j = i + 1; j < count; j++)
		{
			ShuffleAbode* other = &shuffle[j];
			float         male = other->DesireToGainMale + current->DesireToGainMale;
			float         villager = current->DesireToGainVillager + other->DesireToGainVillager;
			float         size = (float)fabs(male * male + villager * villager);
			if (size < bestSize)
			{
				bestSize = size;
				best = other;
			}
		}
		if (best != NULL)
		{
			bool32_t swap = true;
			bool32_t currentWantsVillager = current->DesireToGainVillager > best->DesireToGainVillager;
			if (best->DesireToGainVillager * current->DesireToGainVillager < 0.0f)
			{
				// Only one of them wants another villager: move one rather than swap if it has room.
				if (currentWantsVillager ? current->abode->GetPercentAbodeFullWithAdults() < 1.0f
				                         : best->abode->GetPercentAbodeFullWithAdults() < 1.0f)
				{
					swap = false;
				}
			}
			bool32_t currentWantsMale = current->DesireToGainMale > best->DesireToGainMale;
			bool32_t result;
			if (swap)
			{
				if (currentWantsMale)
				{
					result = current->abode->SwapMaleForFemaleFrom(*best->abode);
				}
				else
				{
					result = best->abode->SwapMaleForFemaleFrom(*current->abode);
				}
			}
			else if (currentWantsVillager)
			{
				result = current->abode->TakeVillagerFrom(*best->abode, currentWantsMale);
			}
			else
			{
				result = best->abode->TakeVillagerFrom(*current->abode, !currentWantsMale);
			}
			if (result)
			{
				break;
			}
		}
	}
	delete[] shuffle;
}

int ShuffleAbode::QSortCompare(const void* a, const void* b)
{
	const ShuffleAbode* first = (const ShuffleAbode*)a;
	const ShuffleAbode* second = (const ShuffleAbode*)b;
	float               firstSize = (float)fabs(first->DesireToGainMale * first->DesireToGainMale +
	                                            first->DesireToGainVillager * first->DesireToGainVillager);
	float               secondSize = (float)fabs(second->DesireToGainMale * second->DesireToGainMale +
	                                             second->DesireToGainVillager * second->DesireToGainVillager);
	if (firstSize > secondSize)
	{
		return -1;
	}
	return 1;
}

float Town::GetDesireToGiveWorshippers()
{
	if (stats.NumAdults + stats.NumChildren == 0)
	{
		return 0.0f;
	}
	if (IsInStateOfEmergency())
	{
		return 0.0f;
	}
	if (town_centre == NULL || !town_centre->IsFunctional())
	{
		return 0.0f;
	}
	uint32_t worshippers = WorshipCount + NumVillagersOnWayToWorshipSite;
	uint32_t numVillagers = stats.NumAdults + stats.NumChildren;
	float    worshipping = (float)worshippers / (float)numVillagers;
	float    desire = POWER(1.0f - min(worshipping, 1.0f), 3);
	if (desire >= 0.7f)
	{
		desire = 1.0f;
	}
	if (desire < 0.2f)
	{
		desire = 0.0f;
	}
	return desire;
}

float Town::GetBeliefAttackImportanceMultiplier(GPlayer* player)
{
	if (player == NULL)
	{
		player = GetPlayer();
	}
	if (player == GetPlayer())
	{
		float multiplier = belief.GetPercentCloseOtherPlayer(player) * 10.0f;
		return min(multiplier, 1.0f);
	}
	return 1.0f;
}

bool32_t Town::GetHighestTownEffectMagicAndPhysical(float& highest, float& magic, float& physical)
{
	magic = 0.0f;
	float best = 0.0f;
	physical = 0.0f;
	for (uint32_t i = 0; i < 7; i++)
	{
		float recovered =
			(float)(GGame::g_game->data.GetGameTurn() - PlayerInteract[i].LastDamageTurn) * (1.0f / 600.0f);
		float effect = 1.0f - POWER(min(recovered, 1.0f), 3);
		if (effect > best)
		{
			EffectValues& values = PlayerInteract[i].effect_values;
			best = effect;
			magic = values.numbers.values[EFFECT_TYPE_BURN];
			physical = values.numbers.values[EFFECT_TYPE_CRUSH] + values.numbers.values[EFFECT_TYPE_HIT];
			highest = effect;
		}
	}
	return magic > 0.0f || physical > 0.0f;
}

void Town::RemoveForest(Forest* forest)
{
	if (forests.Contains(forest))
	{
		forests.Remove(forest);
	}
}

void Town::AddForest(Forest* forest)
{
	if (!forests.Contains(forest))
	{
		forests.Add(forest);
	}
}

void Town::MakeScenicForest()
{
	Forest* scenicForest = NULL;
	for (LHLinkedNode<Forest*>* node = forests.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->IsScenic == 1)
		{
			scenicForest = node->payload;
			break;
		}
	}
	float     radius = GetInfo()->field_0x164 + 10.0f;
	MapCoords centre = GetAreaCentre();
	MapCoords pos = centre;
	int       count = 99999;
	long      spiralX = 1;
	long      spiralZ = 1;
	while (count != 0)
	{
		if (pos.GetDistance(centre) > radius)
		{
			return;
		}
		for (Object* object = pos.FindType(OBJECT_TYPE_ANY, NULL); object != NULL;
		     object = pos.FindType(OBJECT_TYPE_ANY, object))
		{
			Tree* tree = object->CastTree();
			if (tree == NULL)
			{
				continue;
			}
			Forest* forest = tree->GetForest();
			if (forest != NULL && forest->IsScenic == 1 &&
			    forest->Pos.GetDistance(tree->Pos) > centre.GetDistance(tree->Pos))
			{
				forest->RemoveTree(tree);
				forest = NULL;
			}
			if (forest == NULL)
			{
				if (scenicForest == NULL)
				{
					scenicForest = new (TOWN_SOURCE_FILE, TOWN_LINE(5321)) Forest(centre, 0);
					scenicForest->IsScenic = 1;
					if (scenicForest == NULL)
					{
						return;
					}
				}
				scenicForest->AddTree(tree);
			}
		}
		count--;
		pos += *GUtils::Spiral(spiralX, spiralZ);
	}
}

void Town::DeleteTownContents()
{
	for (LHLinkedNode<Forest*>* node = forests.GetStart(); node != NULL; node = node->next.Get())
	{
		Forest* forest = node->payload;
		if (forest->IsScenic == 1 && forest->Pos.GetDistance(GetAreaCentre()) < GetRadius())
		{
			forests.Remove(forest);
			forest->ToBeDeleted(0);
			break;
		}
	}
	FieldList.ToBeDeletedAll();
	HomelessList.ToBeDeletedAll();
	Abode* abode;
	while ((abode = AbodeList.Get()) != NULL)
	{
		abode->villagers.ToBeDeletedAll();
		abode->ToBeDeleted(0);
	}
	LHLinkedNode<Animal*>* animalNode;
	while ((animalNode = AnimalList.head.Get()) != NULL && animalNode->payload != NULL)
	{
		animalNode->payload->ToBeDeleted(0);
	}
	FishFarms.ToBeDeletedAll();
	FlockList.ToBeDeletedAll();
}

Object* Town::GetResourceDropObject(RESOURCE_TYPE type)
{
	if (GetStoragePit() != NULL)
	{
		return GetStoragePit();
	}
	MapCoords pos;
	return (Object*)GetTemporaryResourceStorePotOrPos(Pos, pos, type);
}

void Town::SaveTown(LHOSFile& file, const MapCoords& offset)
{
	MapCoords unused;
	if (!SaveObject(file, offset))
	{
		return;
	}
	FOREACH_LH_LIST_HEAD(TownSpellIcon, icon, SpellIconList)
	{
		icon->SaveObject(file, &offset);
	}
	for (Abode* abode = AbodeList.GetLast(); abode != NULL; abode = AbodeList.GetPrevious(abode))
	{
		abode->SaveObject(file, &offset);
		for (Villager* villager = abode->villagers.GetLast(); villager != NULL;
		     villager = abode->villagers.GetPrevious(villager))
		{
			villager->SaveObject(file, &offset);
		}
	}
	for (Villager* homeless = HomelessList.GetLast(); homeless != NULL; homeless = HomelessList.GetPrevious(homeless))
	{
		homeless->SaveObject(file, &offset);
	}
	for (LHLinkedNode<Field*>* fieldNode = FieldList.GetLastNode(); fieldNode != NULL;
	     fieldNode = FieldList.GetPreviousNode(fieldNode))
	{
		fieldNode->payload->SaveObject(file, &offset);
	}
	for (LHLinkedNode<FishFarm*>* fishFarmNode = FishFarms.GetLastNode(); fishFarmNode != NULL;
	     fishFarmNode = FishFarms.GetPreviousNode(fishFarmNode))
	{
		fishFarmNode->payload->SaveObject(file, &offset);
	}
	if (&offset != NULL)
	{
		unsigned long dummy;
		for (int z = AreaMin.MapZ(); z <= AreaMax.MapZ(); z++)
		{
			for (int x = AreaMin.MapX(); x <= AreaMax.MapX(); x++)
			{
				if (GGame::g_game->map.InBounds(x, z))
				{
					GSetup::SaveMapCell(file, GGame::g_game->map.ToMap(x, z), dummy, dummy, dummy, dummy, dummy,
					                    offset);
				}
			}
		}
	}
}
