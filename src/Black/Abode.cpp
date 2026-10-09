#include "GameTimeConstants.h"
#include "Abode.h"

#include "Lionhead/LH3DLib/development/LH3DSmoke.h"

#include <Lionhead/LH3DLib/development/LH3DMesh.h> /* For struct LH3DMesh */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LH3DLib/development/PhysOb.h>   /* For struct PhysOb */
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <math.h>

#include "AbodeInfo.h"
#include "Alignment.h"

#include "MapCoords.h"
#include "MultiMapFixedInfo.h"
#include "Player.h"
#include "Villager.h"
#include "chlasm/Enum.h"
#include "ColourConstants.h" /* For White */
#include "Creche.h"
#include "EditorPhysics.h"
#include "Field.h"
#include "FieldTypeInfo.h"
#include "Football.h"
#include "FootpathNode.h"
#include "Game.h"
#include "GameOSFile.h"
#include "Game3DObject.h"
#include "GameStats.h"
#include "GraveYard.h"
#include "InterfaceStatus.h"
#include "Landscape.h"          /* For GoolooGooloo */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "PlannedAbode.h"
#include "Rand.h"
#include "Scaffold.h"
#include "CitadelHeartInfo.h"
#include "Creature.h"
#include "PhysicsObject.h"
#include "MobileStaticInfo.h"
#include "StreetLantern.h"
#include "ScriptHighlightInfo.h"
#include "ScriptHighlight.h"
#include "SoundGuidance.h"
#include "EffectValues.h"
#include "Camera.h"
#include "ControlHand.h"
#include "Global.h"
#include "Audio.h"
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h>
#include <chlasm/LHSample.h> /* For LH_SAMPLE_G_WINDMILL, LH_SAMPLE_G_KNOCKROOFMULTI_01 */
#include <Lionhead/LHLib/ver5.0/LHCollide.h>
#include "Setup.h"
#include "SoundTag.h"
#include "SpellDispenser.h"
#include "StoragePit.h"
#include "Totem.h"
#include "Town.h"
#include "TownDesire.h"
#include "TownCentre.h"
#include "TownInfo.h"
#include "TribeInfo.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "ViscousLiquid.h"
#include "Windmill.h"
#include "WinCondition.h"
#include "Wonder.h"
#include "Workshop.h"

#define M_PI 3.14159265358979323846

#if defined(VERSION_BW1W100)
#define ABODE_FILE "C:\\dev\\black\\Abode.cpp"
#elif defined(VERSION_BW1W110)
#define ABODE_FILE "C:\\dev\\Black\\Abode.cpp"
#else
#define ABODE_FILE "C:\\dev\\MP\\Black\\Abode.cpp"
#endif

#ifdef VERSION_BW1W120
#define ABODE_LINE(line) (line)
#else
// 1.10 and 1.00 lack the 1.20 win conditions, so their lines sit earlier.
#define ABODE_LINE(line)                                                                                               \
	((line) - ((line) < 1019 ? 1 : (line) < 1359 ? 13 : (line) < 1856 ? 71 : (line) < 2210 ? 78 : 83))
#endif

inline void GCamera::GetPosition(LHPoint& pos)
{
	pos = LH3DTech::g_camera.pos;
}

inline float GCamera::GetDistance(const LHPoint& point)
{
	LHPoint pos;
	GetPosition(pos);
	return pos.GetDistance(point);
}

GAbodeInfo GAbodeInfo::AbodeInfos[ABODE_INFO_LAST];

LH3DObject* Windmill::Sails;
float       Windmill::SailsAngle;
float       Windmill::WindPhase;

Town*      Abode::KnockedTown;
static int KnockSample;

// Process turns an empty abode stands before it loses life.
#define ABODE_NEGLECT_TURNS 1000
// Process turns an abode must have stood before smashing it counts against the player.
#define ABODE_SETTLED_AGE 200
// Impact strength (speed times mass) that damages the destruction mesh, and above which the colliding objects are
// linked; weaker impacts only play a sound above the sound thresholds.
#define ABODE_DAMAGING_IMPACT     1000.0f
#define ABODE_LINKING_IMPACT      1400.0f
#define ABODE_MEDIUM_IMPACT_SOUND 500.0f
#define ABODE_LIGHT_IMPACT_SOUND  300.0f
// Fixed-point factor for the angle and scale in the script commands written by SaveObject.
#define ABODE_SCRIPT_SCALE    500.0f
#define WORKSHOP_SMOKE_COLOUR 0x00808080

// Index of the sails mesh in the packed mesh list; AllMeshes.h is numbered for a different list.
static const MESH_LIST WindmillSailsMesh = (MESH_LIST)133;
// The hand animation for knocking on an abode.
static const long KnockAnimation = 0x39;

GBaseInfo* GAbodeInfo::GetBaseInfo(uint32_t& num_infos)
{
	num_infos = ABODE_INFO_LAST;
	return &AbodeInfos[0];
}

Abode* Abode::CastAbode()
{
	return this;
}

Town* Abode::GetTown()
{
	return town.Get();
}

Abode::Abode(const MapCoords& coords, const GAbodeInfo* info, Town* _town, float y_angle, float scale, float food,
             int wood)
	: MultiMapFixed(coords, info, y_angle, scale, food, wood), DrinkingWater(), villagers()
{
	SetToZero();
	if (_town)
	{
		_town->AddStructureToTown(this);
		index = town->AbodeList.count - 1;
	}
	GGame::g_game->map.Dirty = true;
	SetNearestWaterPos(200.0f);
}

Abode::~Abode()
{
	if (smoke != NULL)
	{
		smoke->Release();
		smoke = NULL;
	}
	if (DestructionMesh != NULL)
	{
		delete DestructionMesh;
		DestructionMesh = NULL;
	}
}

void Abode::SetToZero()
{
	PresentAtHome = 0;
	AdultCount = 0;
	ChildCount = 0;
	UnusedSavedValue = 0;
	resources[RESOURCE_TYPE_FOOD] = 0;
	resources[RESOURCE_TYPE_WOOD] = 0;
	smoke = NULL;
	DestructionMesh = NULL;
	AbodeFlags = 0;
	NeglectTimer = 0;
	AdultMaleCount = 0;
	Age = 0;
}

void Abode::Delete()
{
	DeleteDependancys();
	if (GetTown() != NULL)
	{
		if ((GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP) == 0)
		{
			MoveAbodeToPlannedAbodes();
		}
		GetTown()->RemoveStructureFromTown(this);
	}
	Object::Delete();
}

void Abode::ToBeDeleted(int delete_now)
{
	Town* town = GetTown();
	DeleteDependancys();
	if (town != NULL && (GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP) == 0)
	{
		MoveAbodeToPlannedAbodes();
		town->RemoveStructureFromTown(this);
	}
	DeleteAbodeSurroundingObjects();
	MultiMapFixed::ToBeDeleted(delete_now);
}

void Abode::DestroyedByBeam()
{
	ReduceLife(GetLife(), NULL);
}

bool32_t Abode::GetInspectObjectPos(Villager* villager, MapCoords* pos)
{
	return Object::GetInspectObjectPos(villager, pos);
}

bool Abode::GetPSysFireLocalRndFlamePos(LHPoint* point, int* bone_index)
{
	if (DestructionMesh != NULL && DestructionMesh->GetRandomSurfacePos(point, GRand::LocalFloatRand))
	{
		LHMatrix inverse;
		inverse.SetInverse(Game3dObject->matrix);
		inverse.TransformPoint(*point);
		*bone_index = 0;
		return true;
	}
	return Object::GetPSysFireLocalRndFlamePos(point, bone_index);
}

uint32_t Abode::GetPhysicsConstantsType()
{
	return 0;
}

void Abode::SetUpPhysOb(PhysOb* obj)
{
	if (DestructionMesh != NULL)
	{
		DestructionMesh->LastHitter = 0;
	}
	obj->SetUpConstants(2000.0f, &EditorPhysics::PhysicsConstants[GetPhysicsConstantsType()], 0);
	obj->BuildFromVertices();
}

Abode* Abode::Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
                     uint32_t food_amount, uint32_t wood_amount, float food, int wood, int unused)
{

	Abode* result = NULL;

	switch (info->AbodeType)
	{
	case ABODE_TYPE_TOTEM:
		result = Totem::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	case ABODE_TYPE_STORAGE_PIT:
		result = StoragePit::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	case ABODE_TYPE_WINDMILL:
		result = Windmill::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	case ABODE_TYPE_CRECHE:
		result = Creche::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	case ABODE_TYPE_WORKSHOP:
		result = Workshop::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	case ABODE_TYPE_WONDER:
		result = Wonder::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	case ABODE_TYPE_TOWN_CENTRE:
		result = TownCentre::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	case ABODE_TYPE_GRAVEYARD:
		result = Graveyard::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	case ABODE_TYPE_FOOTBALL_PITCH:
		result = Football::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	default:
		result = CreateWithoutSpecial(coords, info, town, y_angle, scale, food, wood);
		break;
	case ABODE_TYPE_FIELD:
		return Field::Create(coords, &GFieldTypeInfo::GetInfo()[FIELD_INFO_TYPE_WHEAT_WITH_FENCE], town, y_angle, food,
		                     wood);
	case ABODE_TYPE_SPELL_DISPENSER:
		result = SpellDispenser::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	}

	if (result != NULL)
	{
		result->Init(unused, food_amount, wood_amount);
		result->CreateAbodeSurroundingObjects();
	}

	return result;
}

void Abode::Init(int unused, uint32_t food_amount, uint32_t wood_amount)
{
	AddResource(RESOURCE_TYPE_FOOD, food_amount, NULL, false, NULL, 0);
	AddResource(RESOURCE_TYPE_WOOD, wood_amount, NULL, false, NULL, 0);
	if (IsBuilt())
	{
		MakeFunctional();
	}
}

Abode* Abode::CreateWithoutSpecial(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle,
                                   float scale, float food, int wood)
{
	Abode* result = new (ABODE_FILE, ABODE_LINE(316)) Abode(coords, info, town, y_angle, scale, food, wood);
	if (result != NULL)
	{
		result->CallVirtualFunctionsForCreation(coords);
	}
	return result;
}

void Abode::CallVirtualFunctionsForCreation(const MapCoords& coords_)
{
	MultiMapFixed::CallVirtualFunctionsForCreation(coords_);
	LHPoint chimney_pos;
	if (Game3dObject->GetChimneyPos(&chimney_pos))
	{
		smoke = LH3DSmoke::Create(NULL);
		if (smoke != NULL)
		{
			smoke->pos = chimney_pos;
			if (IsWorkshop())
			{
				smoke->color = LH3DColor(WORKSHOP_SMOKE_COLOUR);
			}
		}
	}

	if (!Game3dObject->IsStaticMorphable())
	{
		float minAltitude = min(-(Get2DRadius() * 0.2f), -0.8f);
		Pos.altitude = max(Game3dObject->GetAltitudeFondation(), minAltitude);
	}
	float   scale = GetScale();
	float   yAngle = GetYAngle();
	LHPoint position;
	Game3dObject->LH3DObject::SetPosition(*GLandscape::ConvertMapCoordToLandscapePoint(Pos, position), yAngle, scale);
}

struct NewEPEntry
{
	LHMatrix  matrix;
	uint8_t   field_0x30[0x4];
	ABODE_EPP id;
};

struct NewEPData
{
	uint32_t   size;
	int        count;
	NewEPEntry entries[1];
};

bool32_t Abode::GetNewEp(ABODE_EPP index, LHPoint* point)
{
	LH3DMesh* mesh = LH3DMesh::GetPackedMesh(GetMesh());
	if (mesh != NULL)
	{
		NewEPData* ep = (NewEPData*)mesh->GetNewEPData();
		if (ep != NULL)
		{
			for (int i = 0; i < ep->count; i++)
			{
				if (ep->entries[i].id == index)
				{
					*point = ep->entries[i].matrix.GetPos();
					LHMatrix matrix;
					GetWorldMatrix(&matrix);
					matrix.TransformPoint(*point);
					return true;
				}
			}
		}
	}
	return false;
}

void Abode::DeleteAbodeSurroundingObjects()
{
	LHPoint point;
	if (GetInfo()->DidYouKnow != 0)
	{
		if (GetNewEp(ABODE_EPP_SCRIPT_HIGHLIGHT, &point))
		{
			MapCoords coords(point);
			for (Object* obj = coords.FindType(OBJECT_TYPE_SCRIPT_HIGHLIGHT, NULL); obj != NULL;
			     obj = coords.FindType(OBJECT_TYPE_SCRIPT_HIGHLIGHT, obj))
			{
				if (obj->IsScriptHighlight())
				{
					obj->ToBeDeleted(0);
				}
			}
		}
	}
	if (GetNewEp(ABODE_EPP_LANTERN, &point))
	{
		MapCoords coords(point);
		for (Object* obj = coords.FindType(OBJECT_TYPE_MOBILE_STATIC, NULL); obj != NULL;
		     obj = coords.FindType(OBJECT_TYPE_MOBILE_STATIC, obj))
		{
			if (obj->IsStreetLantern())
			{
				obj->ToBeDeleted(0);
			}
		}
	}
}

void Abode::CreateAbodeSurroundingObjects()
{
	LHPoint point;
	if (GetInfo()->DidYouKnow != 0 && GetNewEp(ABODE_EPP_SCRIPT_HIGHLIGHT, &point))
	{
		ScriptHighlight* highlight = ScriptHighlight::Create(
			MapCoords(point), &GScriptHighlightInfo::GetInfo()[SCRIPT_HIGHLIGHT_INFO_SCRIPT_SILVER], 0, 0.0f, 1.0f);
		if (highlight != NULL)
		{
			highlight->SetScriptId(GetInfo()->DidYouKnow, GetInfo()->DykCategory);
			highlight->Pos.altitude = 0.0f;
			highlight->SetDrawHeight(0.0f);
		}
	}
	if (GetNewEp(ABODE_EPP_LANTERN, &point))
	{
		MapCoords coords(point);
		if (!GStreetLantern::IsALaternWithinDistance(coords, 40.0f))
		{
			coords.altitude = 0.0f;
			GStreetLantern::Create(coords, &GMobileStaticInfo::GetInfo()[MOBILE_STATIC_INFO_STREET_LANTERN]);
		}
	}
}

void Abode::InsertMapObject()
{
	MultiMapFixed::InsertMapObject();
}

bool32_t Abode::ShouldFootpathsGoRound()
{
	uint8_t flags = FixedFlags;
	return (flags & FIXED_FLAG_UNDER_CONSTRUCTION) != FIXED_FLAG_UNDER_CONSTRUCTION;
}

void Abode::DeleteDependancys()
{
	RemoveAllVillagersFromAbode();
}

uint16_t Abode::GetNumberOfInstanceForGlobalList()
{
	return 1;
}

float Abode::GetRemainingFloat()
{
	if (DestructionMesh == NULL)
	{
		return 1.0f;
	}
	return DestructionMesh->FractionRemaining;
}

float Abode::RemoveDamage()
{
	float remaining = GetRemainingFloat();
	if (DestructionMesh != NULL)
	{
		delete DestructionMesh;
		DestructionMesh = NULL;
	}
	return remaining;
}

uint32_t Abode::DestroyedByEffect(GPlayer* player, float damage)
{
	GoolooGooloo(this);
	BuildingSite* site = building_site;
	if (IsInScript())
	{
		if (site == NULL)
		{
			if (GetTown() == NULL)
			{
				return 0;
			}
			GetTown()->AddBuildingSite(this);
		}
		if (IsBuilt() != true)
		{
			SetLife(1.0f);
		}
		if (fire_effect != NULL)
		{
			fire_effect->ToBeDeleted(0);
			fire_effect = NULL;
		}
		return 1;
	}
	if (site != NULL && site->ScaffoldList.count > 0)
	{
		Scaffold* scaffold = site->ScaffoldList.head.Get() != NULL ? site->ScaffoldList.head.Get()->payload : NULL;
		GPlayer*  owner = GetPlayer();
		if (scaffold == NULL)
		{
			ToBeDeleted(0);
			return 1;
		}
		scaffold->RemoveOldBuildingSite();
		scaffold->ForceBuildBuilding(owner);
	}
	if (IsAvailable())
	{
		ToBeDeleted(0);
	}
	return 1;
}

void Abode::AddVillagerToAbode(Villager* villager)
{
	Town* town = villager->GetTown();
	if (town != NULL && town->IsVillagerInHomelessList(villager))
	{
		town->HomelessList.Remove(villager);
	}
	else if (villager->GetAbode() != NULL)
	{
		villager->GetAbode()->RemoveAliveVillagerFromAbode(villager);
	}
	else
	{
		Villager* v;
		for (v = GGame::g_game->GameLists.VillagersWithoutTown.head; v != NULL && v != villager; v = v->next)
		{
		}
		if (v != NULL)
		{
			GGame::g_game->GameLists.VillagersWithoutTown.Remove(villager);
		}
	}
	villagers.AddToFirst(villager);
	villager->SetAbode(this);
	if (GetTown() != NULL)
	{
		if (town != GetTown())
		{
			GetTown()->AddVillagerToTown(villager);
		}
		GetTown()->stats.VillagerMoveIntoAbode(villager);
	}
	if (!villager->IsChild())
	{
		Villager** spouse = &MaleFemaleVillagers[((GVillagerInfo*)villager->info)->sex];
		if (*spouse == NULL)
		{
			*spouse = villager;
		}
		++AdultCount;
		AdultMaleCount += villager->IsMaleVillager() != false;
	}
	else
	{
		++ChildCount;
	}
}

void Abode::RemoveDeletedVillagerFromAbode(Villager* villager)
{
	SEX_TYPE sex = ((GVillagerInfo*)villager->info)->sex;
	if (MaleFemaleVillagers[sex] == villager)
	{
		MaleFemaleVillagers[sex == SEX_MALE] = NULL;
		MaleFemaleVillagers[sex] = NULL;
	}
	if (villager->IsChild() != true)
	{
		if (AdultCount > 0)
		{
			--AdultCount;
		}
		if (AdultMaleCount > 0)
		{
			AdultMaleCount -= villager->IsMaleVillager() != false;
		}
	}
	else if (ChildCount != 0)
	{
		--ChildCount;
	}
	villagers.Remove(villager);
	villager->SetAbode(NULL);
	if (GetTown() != NULL)
	{
		GetTown()->RemoveVillager(villager);
		GetTown()->stats.VillagerMoveOutOfAbode(villager);
	}
}

void Abode::RemoveAliveVillagerFromAbode(Villager* villager)
{
	if (villager->Flags & VILLAGER_FLAG_AT_HOME)
	{
		villager->SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	}
	if (villager->IsChild() != true)
	{
		if (AdultCount > 0)
		{
			--AdultCount;
		}
		if (AdultMaleCount > 0)
		{
			AdultMaleCount -= villager->IsMaleVillager() != false;
		}
	}
	else if (ChildCount != 0)
	{
		--ChildCount;
	}
	villagers.Remove(villager);
	villager->SetAbode(NULL);
	if (GetTown() != NULL)
	{
		GetTown()->stats.VillagerMoveOutOfAbode(villager);
	}
}

uint32_t Abode::Process()
{
	MultiMapFixed::Process();
	if (GetPercentAbodeFullWithAdults() == 0.0f && GetPercentAbodeFullWithChildren() == 0.0f && IsBuilt() &&
	    !IsInScript())
	{
		if (GetTown() == NULL || GetTown()->Uninhabitable == false)
		{
			NeglectTimer += 1.0f / ABODE_NEGLECT_TURNS;
			if (NeglectTimer >= 1.0f)
			{
#ifdef VERSION_BW1W120
				LosingLifeFromNeglect = true;
#endif
				ReduceLife(GetInfo()->EmptyAbodeLifeReducer, NULL);
#ifdef VERSION_BW1W120
				LosingLifeFromNeglect = false;
#endif
				NeglectTimer = 0.0f;
			}
		}
	}
	if (Age < ABODE_SETTLED_AGE)
	{
		++Age;
	}
	return 1;
}

bool32_t Abode::MoveAbodeToPlannedAbodes()
{
	Town* town = GetTown();
	if (town != NULL)
	{
		if (!GetShouldNotBeAddedToPlanned() && PlannedAbode::Create(this) != NULL)
		{
			return true;
		}
		town->RemoveBuildingSite(this);
	}
	return false;
}

void Abode::RemoveAllVillagersFromAbode()
{
	FOREACH_LH_LIST_HEAD_SAFE(Villager, v, villagers)
	{
		v->HomeDeleted();
	}
}

int Abode::NumVillagersOfSex(SEX_TYPE sex)
{
	int total = 0;
	FOREACH_LH_LIST_HEAD(Villager, v, villagers)
	{
		if (v->IsVillagerAvailable() && ((GVillagerInfo*)v->info)->sex == sex)
		{
			++total;
		}
	}
	return total;
}

int Abode::CalculateFoodNeededForDinner()
{
	int total = 0;
	FOREACH_LH_LIST_HEAD(Villager, v, villagers)
	{
		total += ((GVillagerInfo*)v->info)->FoodReqiredForDinner;
	}
	return total;
}

bool32_t Abode::IsEnoughFoodForDinner()
{
	return (uint16_t)CalculateFoodNeededForDinner() <= GetResource(RESOURCE_TYPE_FOOD);
}

Villager* Abode::GetSpouse(Villager* villager)
{
	if (MaleFemaleVillagers[((GVillagerInfo*)villager->info)->sex] == villager)
	{
		return MaleFemaleVillagers[((GVillagerInfo*)villager->info)->sex == SEX_MALE];
	}
	return NULL;
}

int Abode::GetRoomLeftForAdults()
{
	return GetInfo()->MaxVillagersInAbode - AdultCount;
}

int Abode::GetRoomLeftForChildren()
{
	return GetInfo()->MaxChildrenInAbode - ChildCount;
}

void Abode::DebugText(int unused) {}

uint32_t Abode::GetMaxVillagersNeededToBuild()
{
	return GetInfo()->MaxVillagerNeededToBuild;
}

bool32_t Abode::IsTooCrowded()
{
	uint32_t max_villagers = GetInfo()->MaxVillagersInAbode;
	if (max_villagers == 0)
	{
		return true;
	}

	return (float)AdultCount / (float)max_villagers >= GetInfo()->PercentTooCrowded;
}

bool32_t Abode::Built()
{
	MultiMapFixed::Built();

	if (GetTown() != NULL && GetTown()->GetPlayer() != NULL)
	{
		GetTown()->GetPlayer()->GetStats()->IncrementAllBuildingsBuilt(this);
#ifdef VERSION_BW1W120
		if (IsWonder())
		{
			GetPlayer()->AddToCondition(WC_WONDERS_BUILT, 1);
		}
		else
		{
			GetPlayer()->AddToCondition(WC_HOUSES_BUILT, 1);
		}
#endif
	}

	if (GetTown() != NULL)
	{
		MakeFunctional();
	}
	return true;
}

bool32_t Abode::Repaired()
{
	MultiMapFixed::Repaired();
	if (GetTown() != NULL)
	{
		MakeFunctional();
	}
	return true;
}

void Abode::MakeFunctional()
{
	Town* town = GetTown();
	if (town)
	{

		Damaged = !IsRepaired();
		if (!AddedToTownStats)
		{
			AddedToTownStats = true;
			town->AddAbodeToTownStats(this);
		}
		if (GetRoomLeftForAdults() != 0)
		{
			town->AllVillagersCheckNeedNewAbode();
		}
		if (IsRepaired() && IsBuilt())
		{
			town->RemoveBuildingSite(this);
		}

		if (town->GetStoragePit() && town->GetStoragePit() != this && GGame::g_game->data.GameTurn > 0)
		{
			GFootpath*  footpath = new (ABODE_FILE, ABODE_LINE(1019)) GFootpath(NULL, NULL);
			MapCoords   town_coords = GetArrivePos();
			StoragePit* storage_pit = town->GetStoragePit();
			MapCoords   pit_coords = storage_pit->GetArrivePos();
			footpath->AddPos(town_coords);
			footpath->AddPos(pit_coords);

			GFootpathNode* end = footpath->nodes.GetLast();

			if (footpath->AttemptRerenderFootpathWithCreatureRP(footpath->nodes.head, end, NULL) == NULL)
			{
				footpath->ToBeDeleted(0);
			}
			else
			{
				AddFootpath(footpath);
				storage_pit->AddFootpath(footpath);
			}
		}
#ifdef VERSION_BW1W120
		CheckForCompleteNewTown();
#endif
	}
}

#ifdef VERSION_BW1W120
void Abode::CheckForCompleteNewTown()
{
	int townCentres = 0;
	int storagePits = 0;
	int houses = 0;
	if (GetTown() != NULL && !GetTown()->CompleteNewTownBuilt)
	{
		Town* town = GetTown();
		for (Abode* abode = town->AbodeList.head; abode != NULL; abode = town->AbodeList.GetNext(abode))
		{
			if (abode != this && abode->GetPercentBuilt() >= 1.0f)
			{
				if (abode->GetAbodeType() == ABODE_TYPE_STORAGE_PIT)
				{
					++storagePits;
				}
				else if (abode->IsTownCentre())
				{
					++townCentres;
				}
				else if (abode->GetAbodeType() == ABODE_TYPE_LIVING_QUARTERS)
				{
					++houses;
				}
			}
		}
		if (townCentres == 0 || storagePits == 0 || houses == 0)
		{
			if (GetAbodeType() == ABODE_TYPE_STORAGE_PIT)
			{
				++storagePits;
			}
			else if (IsTownCentre())
			{
				++townCentres;
			}
			else if (GetAbodeType() == ABODE_TYPE_LIVING_QUARTERS)
			{
				++houses;
			}
			if (townCentres != 0 && storagePits != 0 && houses != 0)
			{
				town->CompleteNewTownBuilt = true;
				GetPlayer()->AddToCondition(WC_BUILD_COMPLETE_NEW_TOWN, 1);
			}
		}
	}
}
#endif

MESH_LIST Abode::GetMesh() const
{
	return GetInfo()->GetMesh();
}

uint32_t GAbodeInfo::IsOkToCreateAtPos(const MapCoords& coords, float y_angle, float scale, Town* town) const
{
	return coords.IsSuitableForFixedAbodeInTown(GetMesh(), town, y_angle, scale) != 0;
}

float Abode::CalculateScoreForAddingVillagerToAbode(Villager* villager)
{
	float score;
	if (villager->IsChild())
	{
		uint32_t max_children = GetInfo()->MaxChildrenInAbode;
		if (max_children == 0)
		{
			return 0.0f;
		}
		float child_ratio = (float)ChildCount / (float)max_children;
		if (child_ratio < 1.0f)
		{
			score = child_ratio;
		}
		else
		{
			score = 1.0f;
		}
	}
	else
	{
		uint32_t max_adults = GetInfo()->MaxVillagersInAbode;
		if (max_adults == 0)
		{
			return 0.0f;
		}
		if ((float)AdultCount / (float)max_adults < 1.0f)
		{
			score = (float)AdultCount / (float)max_adults;
		}
		else
		{
			score = 1.0f;
		}
	}
	score = 1.0f - score;
	if (score > 0.0f)
	{
		float same_sex_count = 0.0f;
		FOREACH_LH_LIST_HEAD(Villager, villager_iter, villagers)
		{
			if (((GVillagerInfo*)villager_iter->info)->sex == ((GVillagerInfo*)villager->info)->sex)
			{
				same_sex_count += 1.0f;
			}
		}
		float sex_modifier = 1.0f;
		if (villagers.count != 0)
		{
			sex_modifier = (((1.0f - same_sex_count / (float)villagers.count) + 1.0f) * 0.5f);
		}
		float distance_modifier = GUtils::GetDistanceModifier(Pos.GetDistance(villager->Pos), 500.0f);
		score = score * sex_modifier * ((distance_modifier + 1.0f) * 0.5f);
	}
	return score;
}

void Abode::ChildToAdult(Villager* villager)
{
	if (ChildCount != NULL)
	{
		--ChildCount;
	}
	++AdultCount;
	AdultMaleCount += villager->IsMaleVillager() != false;
	if (GetTown())
	{
		GetTown()->ChildToAdult(villager);
	}
}

uint32_t Abode::GetResource(RESOURCE_TYPE type)
{
	return resources[type];
}

uint32_t Abode::JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool poisoned)
{
	resources[type] += amount;
	return amount;
}

uint32_t Abode::JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* poisoned)
{
	amount = min(resources[type], amount);
	resources[type] -= amount;
	return amount;
}

uint32_t Abode::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
                            const MapCoords* coords, int from_other_player)
{
	if (building_site != NULL && (type == RESOURCE_TYPE_WOOD || type == RESOURCE_TYPE_ANY))
	{
		return building_site->AddResource(type, amount, status, poisoned, NULL, 0);
	}
	return DoResourceAdding(type, amount, status, poisoned, *coords, from_other_player);
}

uint32_t Abode::DoResourceAdding(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* iface, bool poisoned,
                                 const MapCoords& coords, int from_other_player)
{
	Town* town = GetTown();
	if (iface != NULL && town != NULL)
	{
		float    change = town->desire.CallDesireFunction(type != RESOURCE_TYPE_FOOD);
		uint32_t added = JustAddResource(type, amount, poisoned);
		change -= town->desire.CallDesireFunction(type != RESOURCE_TYPE_FOOD);
		GPlayer* player = iface->GetPlayer();
		change *= town->GetGameTurnResourceLastRemovedModifier(player->GetPlayerNumber(), type);
		player->alignment->Update(this, type, amount, change);
		if (player != town->GetPlayer())
		{
			change *= town->GetInfo()->ForeignResourceBeliefMultiplier;
		}
		town->belief.AddToBelief(player, change * town->GetInfo()->ResourceBeliefMultiplier, this, 1,
		                         GUIDANCE_ALIGNMENT_GOOD);
		DoCreatureMimicAfterAddingResource(type, *iface);
		return added;
	}
	return JustAddResource(type, amount, poisoned);
}

uint32_t Abode::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned)
{
	if (building_site != NULL && (type == RESOURCE_TYPE_WOOD || type == RESOURCE_TYPE_ANY))
	{
		return building_site->RemoveResource(type, amount, status, poisoned);
	}
	return DoResourceRemoving(type, amount, status, poisoned);
}

uint32_t Abode::DoResourceRemoving(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* iface, bool* poisoned)
{
	if (amount >= GetResource(type))
	{
		SetPoisoned(false);
	}
	Town*    town = GetTown();
	float    change = town->desire.CallDesireFunction(type != RESOURCE_TYPE_FOOD);
	uint32_t removed = JustRemoveResource(type, amount, NULL);
	if (iface != NULL && town != NULL)
	{
		town->SetGameTurnResourceLastRemoved(iface->GetPlayer()->GetPlayerNumber(), type);
		change -= town->desire.CallDesireFunction(type != RESOURCE_TYPE_FOOD);
		GPlayer* player = town->GetPlayer();
		player->alignment->Update(this, type, -(int)amount, change);
	}
	return removed;
}

PlannedMultiMapFixed* Abode::ConvertToPlanned()
{
	PlannedAbode* result = PlannedAbode::Create(this);
	if (result != NULL)
	{
		ToBeDeleted(0);
	}
	return result;
}

PlannedAbode::PlannedAbode(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale)
	: PlannedMultiMapFixed(coords, info, y_angle, scale)
{
}

PlannedAbode::PlannedAbode(Abode* abode) : PlannedMultiMapFixed(abode) {}

void PlannedAbode::Init(Town* town_)
{
	town = town_;
	if (town.Get() != NULL)
	{
		town->AddPlanned(this);
	}
}

PlannedAbode* PlannedAbode::CreateNoInit(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle,
                                         float scale)
{
	return new (ABODE_FILE, ABODE_LINE(1359)) PlannedAbode(coords, info, town, y_angle, scale);
}

PlannedAbode* PlannedAbode::Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle,
                                   float scale)
{
	PlannedAbode* abode = new (ABODE_FILE, ABODE_LINE(1367)) PlannedAbode(coords, info, town, y_angle, scale);
	abode->Init(town);
	return abode;
}

PlannedAbode* PlannedAbode::Create(Abode* abode)
{
	PlannedAbode* planned = new (ABODE_FILE, ABODE_LINE(1376)) PlannedAbode(abode);
	planned->FootpathLink = abode->FootpathLink;
	abode->FootpathLink = NULL;
	planned->Init(abode->GetTown());
	return planned;
}

void PlannedAbode::ToBeDeleted(int delete_now)
{
	if (town.Get() != NULL)
	{
		town->RemovePlanned(this);
	}
	PlannedMultiMapFixed::ToBeDeleted(delete_now);
}

GAbodeInfo* PlannedAbode::GetInfo()
{
	return (GAbodeInfo*)info.Get();
}

Town* PlannedAbode::GetTown()
{
	return town.Get();
}

uint32_t PlannedAbode::GetSaveType()
{
	return GAME_THING_TYPE_PLANNED_ABODE;
}

char* PlannedAbode::GetDebugText()
{
	return "Planned Abode";
}

bool32_t PlannedAbode::IsAbodeTypeInMask(int abode_type_mask)
{
	return (GetInfo()->AbodeType & abode_type_mask) != 0;
}

MultiMapFixed* PlannedAbode::CreatePlanned(float food)
{
	Town* owner = town.Get();
	float yAngle = YAngle;
	if (GetInfo()->IsOkToCreateAtPos(Pos, yAngle, GetScale(), owner))
	{
		return CreatePlannedNoFixedCheck(food);
	}
	return NULL;
}

MultiMapFixed* PlannedAbode::CreatePlannedNoFixedCheck(float food)
{
	float  yAngle = YAngle;
	Town*  owner = town.Get();
	Abode* abode = Abode::Create(Pos, GetInfo(), owner, yAngle, GetScale(), 0, 0, food, 1, 1);
	if (abode != NULL)
	{
		PostCreatePlanned(*abode);
		if (WasConstructed)
		{
			abode->Damaged = true;
		}
		ToBeDeleted(0);
		return abode;
	}
	return NULL;
}

uint32_t PlannedAbode::IsOkToBuild()
{
	GAbodeInfo* info = GetInfo();
	return Pos.IsSuitableForFixed(info->GetMesh(), YAngle, GetScale() * 1.25);
}

uint32_t PlannedAbode::Save(GameOSFile& file)
{
	if (PlannedMultiMapFixed::Save(file))
	{
		file.WritePtr(town.Get());
		return 1;
	}
	return 0;
}

uint32_t PlannedAbode::Load(GameOSFile& file)
{
	if (PlannedMultiMapFixed::Load(file))
	{
		file.ReadPtr((GameThing**)&town);
		return 1;
	}
	return 0;
}

Windmill* Windmill::Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
                           float food, int wood)
{
	Windmill* windmill = new (ABODE_FILE, ABODE_LINE(1476)) Windmill(coords, info, town, y_angle, scale, food, wood);
	if (windmill != NULL)
	{
		windmill->CallVirtualFunctionsForCreation(coords);
	}
	return windmill;
}

uint32_t Windmill::GetSaveType()
{
	return GAME_THING_TYPE_WINDMILL;
}

char* Windmill::GetDebugText()
{
	return "Windmill:";
}

void Windmill::CallVirtualFunctionsForCreation(const MapCoords& coords)
{
	Abode::CallVirtualFunctionsForCreation(coords);
	if (!(GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
	{
		SoundTag::Create(this, LH_SAMPLE_G_WINDMILL, false, 2, -1, 0, 1, AUDIO_SFX_BANK_TYPE_IN_GAME, 0);
	}
}

void Windmill::Open()
{
	Sails = LH3DObject::Create(LH3DObject::STATIC);
	Sails->SetMesh(LH3DMesh::GetPackedMesh(WindmillSailsMesh), NULL, NULL);
	Sails->SetDynamicLighting(true);
}

void Windmill::Close()
{
	if (Sails != NULL)
	{
		Sails->Release();
		Sails = NULL;
	}
}

void Windmill::PreDraw()
{
	float time = (int)LH3DTech::g_game_time_inc;
	float step = fabs(cos(WindPhase)) * 0.1 + time * (1.0f / 444.0f);
	SailsAngle -= step;
	WindPhase += time * (1.0f / 1332.0f);
	while (WindPhase > 2.0f * (float)M_PI)
	{
		WindPhase -= 2.0f * (float)M_PI;
	}
}

const char* GAbodeInfo::GetDescription()
{
	return description;
}

GAbodeInfo* GAbodeInfo::Find(TRIBE_TYPE tribe_type, ABODE_NUMBER abode_number)
{
	for (GAbodeInfo* info = &AbodeInfos[0]; info < &AbodeInfos[ABODE_INFO_LAST]; info++)
	{
		if ((info->tribe_type == tribe_type || info->tribe_type == TRIBE_TYPE_NONE) &&
		    info->AbodeNumber == abode_number)
		{
			return info;
		}
	}
	return NULL;
}

char* Abode::GetAbodeText(char* buff)
{
	GAbodeInfo* info = GetInfo();
	char*       tribe_text = GTribeInfo::GetTribeTextArray()[GetTribe()->type];
	sprintf(buff, "%s_%s", tribe_text, info->GetDescription());
	return buff;
}

uint32_t Abode::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	char text[200];
	char abodeText[200];
	char coordText[200];

	uint32_t saved = CheckAndSetSaved();
	if (saved)
	{
		MapCoords relative = (coords != NULL) ? (Pos - *coords) : Pos;
		int       townId = (GetTown() != NULL && coords == NULL) ? GetTown()->ID : -1;
		if (UnderConstruction)
		{
			float scale = GetScale();
			float yAngle = GetYAngle();
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_PLANNED_ABODE), townId,
			        relative.ConvertToText(coordText), GetAbodeText(abodeText), (int)(yAngle * ABODE_SCRIPT_SCALE),
			        (int)(scale * ABODE_SCRIPT_SCALE), GetResource(RESOURCE_TYPE_FOOD),
			        GetResource(RESOURCE_TYPE_WOOD));
			GSetup::WriteToFile(this, file, text, strlen(text));
		}
		else
		{
			float scale = GetScale();
			float yAngle = GetYAngle();
			sprintf(text, GSetup::GetCommandAsText(SCRIPT_FEATURE_COMMANDS_CREATE_ABODE), townId,
			        relative.ConvertToText(coordText), GetAbodeText(abodeText), (int)(yAngle * ABODE_SCRIPT_SCALE),
			        (int)(scale * ABODE_SCRIPT_SCALE), GetResource(RESOURCE_TYPE_FOOD),
			        GetResource(RESOURCE_TYPE_WOOD));
			GSetup::WriteToFile(this, file, text, strlen(text));
		}
		MultiMapFixed::SaveObject(file, coords);
	}
	return saved;
}

float Abode::ReduceLife(float value, GPlayer* player)
{
	float    oldLife = GetLife();
	bool32_t wasFunctional = GetPercentRepairedForNonFunctional() < oldLife;
	float    life = MultiMapFixed::ReduceLife(value, player);
	if (life < 1.0f)
	{
		FOREACH_LH_LIST_HEAD(Villager, v, villagers)
		{
			v->SetStateWhenTappedOnAbode();
		}
		if (wasFunctional && GetPercentRepairedForNonFunctional() >= life)
		{
			StopBeingFunctional(player);
			if (CausesTownEmergencyIfDamaged())
			{
				GetTown()->SetInStateOfEmergency();
			}
		}
#ifdef VERSION_BW1W120
		else if (oldLife >= 1.0f)
		{
			AddSmashedCondition(player);
		}
#endif
		if (building_site == NULL && GetTown() != NULL)
		{
			GetTown()->AddBuildingSite(this);
		}
		if (building_site != NULL && IsBuilt())
		{
			building_site->life = life * 1.1f - 0.1f;
		}
		if (life == 0.0f)
		{
			Destroyed();
		}
	}
	return life;
}

int Abode::Destroyed()
{
	return 1;
}

float Abode::IncreaseLife(float value)
{
	float    life = GetLife();
	bool32_t repaired_before = GetPercentRepairedForNonFunctional() >= life;
	float    result = Object::IncreaseLife(value);
	if (repaired_before && GetPercentRepairedForNonFunctional() < result)
	{
		RestartBeingFunctional();
	}
	return result;
}

TRIBE_TYPE Abode::GetTribeType() const
{
	return town->tribe_type;
}

GTribeInfo* Abode::GetTribe()
{
	if (GetTown() != NULL)
	{
		return GetTown()->GetTribe();
	}
	return NULL;
}

GPlayer* Abode::GetPlayer()
{
	if (GetTown() != NULL)
	{
		return GetTown()->GetPlayer();
	}
	return GameThing::GetPlayer();
}

void Abode::ArriveHome()
{
	++PresentAtHome;
}

void Abode::LeaveHome()
{
	--PresentAtHome;
}

bool32_t Abode::IsCivic()
{
	switch (GetInfo()->AbodeType)
	{
	case ABODE_TYPE_TOTEM:
	case ABODE_TYPE_STORAGE_PIT:
	case ABODE_TYPE_CRECHE:
	case ABODE_TYPE_WORKSHOP:
	case ABODE_TYPE_WONDER:
	case ABODE_TYPE_GRAVEYARD:
	case ABODE_TYPE_TOWN_CENTRE:
	case ABODE_TYPE_FOOTBALL_PITCH:
	case ABODE_TYPE_SPELL_DISPENSER:
		return true;
	}
	return false;
}

bool32_t PlannedAbode::IsCivic()
{
	switch (GetInfo()->AbodeType)
	{
	case ABODE_TYPE_TOTEM:
	case ABODE_TYPE_STORAGE_PIT:
	case ABODE_TYPE_CRECHE:
	case ABODE_TYPE_WORKSHOP:
	case ABODE_TYPE_WONDER:
	case ABODE_TYPE_GRAVEYARD:
	case ABODE_TYPE_TOWN_CENTRE:
	case ABODE_TYPE_FOOTBALL_PITCH:
	case ABODE_TYPE_SPELL_DISPENSER:
		return true;
	}
	return false;
}

bool32_t PlannedAbode::IsWonder()
{
	return GetInfo()->AbodeType == ABODE_TYPE_WONDER;
}

bool32_t Abode::IsWonder()
{
	return GetInfo()->AbodeType == ABODE_TYPE_WONDER;
}

ABODE_TYPE PlannedAbode::GetAbodeType()
{
	return GetInfo()->AbodeType;
}

ABODE_TYPE Abode::GetAbodeType()
{
	return GetInfo()->AbodeType;
}

bool32_t Abode::IsFunctional()
{
	return MultiMapFixed::IsFunctional() == true && IsBuilt();
}

bool Abode::ChecksVerticesVObjects()
{
	return false;
}

static float AbodeFloatRand(float max);

void Abode::ReactToPhysicsImpact(PhysicsObject* physics, bool transferred_damage)
{
	PhysicsObject* hitter = physics->WhoHitMe;
	if (hitter == NULL)
	{
		return;
	}
	Object*  hitterObject = hitter->object;
	GPlayer* player = hitter->GetPlayer();
	if (player != NULL && (physics->Flags & PHYSICS_OBJECT_FLAG_FROM_HAND))
	{
		player->ConsiderMakingCreatureMimicPlayer(hitter->status, DETECTED_PLAYER_ACTION_DAMAGE_BY_THROWING_AT, this,
		                                          MAGIC_TYPE_NONE);
	}
	if (!hitterObject->PhysicallyDestroysAbodes())
	{
		return;
	}
	float vx = hitter->Physics.Velocity.x;
	float vy = hitter->Physics.Velocity.y;
	float vz = hitter->Physics.Velocity.z;
	float impact = (float)sqrt(vz * vz + vy * vy + vx * vx) * hitter->Physics.Mass;
	if (impact > ABODE_DAMAGING_IMPACT)
	{
		if (IsBuilt())
		{
			float built = GetPercentForDrawBuilding();
			if (DestructionMesh != NULL)
			{
				if (built >= 0.2f && built != 1.0f)
				{
					delete DestructionMesh;
					DestructionMesh = new (ABODE_FILE, ABODE_LINE(1912)) FragMesh(Game3dObject);
				}
				else if (DestructionMesh->LastHitter == (uint32_t)hitterObject)
				{
					if (impact > ABODE_LINKING_IMPACT && physics->object == this)
					{
						physics->CollidedWith = hitterObject;
						hitter->CollidedWith = this;
					}
				}
				else
				{
					DestructionMesh->LastHitter = (uint32_t)hitterObject;
				}
			}
			else
			{
				DestructionMesh = new (ABODE_FILE, ABODE_LINE(1917)) FragMesh(Game3dObject);
			}
			LHPoint velocity = hitter->Physics.Velocity * 0.3f;
			LHPoint pos = hitter->Physics.Matrix.GetPos();
			if (transferred_damage)
			{
				DestructionMesh->GetRandomSurfacePos(&pos, AbodeFloatRand);
				velocity *= GCitadelHeartInfo::GetTransferedDamageMultiplier();
			}
			DestructionMesh->Impact(&pos, &velocity, hitter->Physics.Radius + 0.7f, this);
			if (DestructionMesh->WorkOutFractionRemaining() == 1.0f)
			{
				delete DestructionMesh;
				DestructionMesh = NULL;
				return;
			}
		}
#ifdef VERSION_BW1W120
		Object* thrower = physics->CollidedWith;
		if (thrower == NULL)
		{
			thrower = physics->WhoHitMe != NULL ? physics->WhoHitMe->CollidedWith : NULL;
		}
		if (dynamic_cast<Creature*>(thrower) != NULL)
		{
			SmashedByCreature = true;
		}
#endif
		ApplyEffectsDueToPhysicalDestruction(hitterObject, player);
#ifdef VERSION_BW1W120
		SmashedByCreature = false;
#endif
		return;
	}

	long sound[5];
	if (impact > ABODE_MEDIUM_IMPACT_SOUND)
	{
		sound[0] = IMPACT_SOUND_LEVEL_MEDIUM;
	}
	else if (impact > ABODE_LIGHT_IMPACT_SOUND)
	{
		sound[0] = IMPACT_SOUND_LEVEL_LIGHT;
	}
	else
	{
		return;
	}
	sound[2] = IMPACT_SOUND_HITTER_STONE;
	sound[3] = IMPACT_SOUND_TARGET_GROUND;
	LHPoint pos;
	pos = Pos.GetLHPoint();
	if (GGame::g_game->GetCamera() != NULL)
	{
		float distance = GGame::g_game->GetCamera()->GetDistance(pos);
		sound[1] = 0;
		sound[4] = IMPACT_SOUND_EVENT_COLLISION;
		GGlobal::Global.audio->SamplePlayAnimEffect(
			this, distance, sound, 0, GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 0, 0.0f, 0.0f);
	}
}

static float AbodeFloatRand(float max)
{
	return GRand::GameFloatRand(max, ABODE_FILE, ABODE_LINE(1856));
}

void Abode::ApplyEffectsDueToPhysicalDestruction(Object* object, GPlayer* player)
{
	LHPoint pos;
	pos = Pos.GetLHPoint();
	if (GGame::g_game->GetCamera() != NULL)
	{
		float distance = GGame::g_game->GetCamera()->GetDistance(pos);
		long  sound[5] = {IMPACT_SOUND_LEVEL_HEAVY, 0, IMPACT_SOUND_HITTER_STONE, IMPACT_SOUND_TARGET_BUILDING,
		                  IMPACT_SOUND_EVENT_COLLISION};
		GGlobal::Global.audio->SamplePlayAnimEffect(
			this, distance, sound, 0, GGlobal::Global.audio->GetBank(AUDIO_SFX_BANK_TYPE_EDITOR), 0, 0.0f, 0.0f);
		EffectValues values(EFFECT_INFO_CRUSH, object, player);
		if (DestructionMesh != NULL)
		{
			float remaining = DestructionMesh->FractionRemaining;
			if (remaining < 0.4f)
			{
				GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
				if (player != NULL && player->IsMemberOfThisPlayer(status))
				{
					status->guidance->HelpSpritesDestroyBuilding(*this);
				}
			}
			float damage = GetLife() - remaining;
			if (damage < 0.0f)
			{
				damage = 0.0f;
			}
			values.numbers *= damage;
			values /= GetDefenseMultiplier();
		}
		ApplyEffect(values, 0);
	}
}

bool32_t Abode::CanBecomeAPhysicsObject()
{
	return false;
}

SCRIPT_OBJECT_TYPE Abode::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_ABODE;
}

uint32_t Abode::InterfaceValidToTap(GInterfaceStatus* status)
{
	return true;
}

uint32_t Abode::InterfaceTap(GInterfaceStatus* status)
{
	KnockedTown = GetTown();
	HowManyPeople::KnockKnock();
	FOREACH_LH_LIST_HEAD(Villager, v, villagers)
	{
		v->SetStateWhenTappedOnAbode();
	}
	if (GetAbodeType() & ABODE_TYPE_LIVING_QUARTERS)
	{
		if (status == GGame::g_game->MyInterfaceStatus())
		{
			CHand* hand = GGame::g_game->MyPlayer()->GetRenderHand();
			if (hand != NULL)
			{
				hand->StartFixedPosAnimation(hand->position, KnockAnimation);
			}
		}
		LHPoint              pos = status->ReportedHandPos;
		LH_SamplePlayOptions options;
		options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
		options.SampleNumber = LH_SAMPLE_G_KNOCKROOFMULTI_01 + KnockSample;
		if (++KnockSample == LH_SAMPLE_G_KNOCKROOFMULTI_03_C3 - LH_SAMPLE_G_KNOCKROOFMULTI_01 + 1)
		{
			KnockSample = 0;
		}
		options.AttachedObject = this;
		options.Positional = 1;
		options.Pos = pos;
		options.field_0xc = 0;
		GGlobal::Global.audio->PlaySoundEffect(&options);
	}
	return 1;
}

float Abode::GetDesireToBeRepaired()
{
	if (GetPercentRepaired() <= GetTown()->GetInfo()->RepairDesireThreshold &&
	    ((GetInfo()->AbodeType & ABODE_TYPE_LIVING_QUARTERS) == 0 || villagers.count != 0))
	{
		return MultiMapFixed::GetDesireToBeRepaired();
	}
	return 0.0f;
}

Villager* Abode::FindVillager(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                              SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	FOREACH_LH_LIST_HEAD(Villager, v, villagers)
	{
		if (callback(v, type, subtype))
		{
			return v;
		}
	}
	return NULL;
}

uint32_t Abode::Save(GameOSFile& file)
{
	if (MultiMapFixed::Save(file))
	{
		WRITE_SAFE(file, AbodeFlags);
		WRITE_SAFE(file, DrinkingWater);
		WRITE_SAFE(file, UnusedSavedValue);
		file.WritePtr(town.Get());
		file.WriteSafe(villagers);
		WRITE_SAFE(file, AdultCount);
		WRITE_SAFE(file, PresentAtHome);
		WRITE_SAFE(file, ChildCount);
		WRITE_SAFE(file, index);
		WriteCountedArray(file, resources, RESOURCE_TYPE_LAST);
		bool32_t hasDestructionMesh = DestructionMesh != NULL;
		file.WriteSafe(hasDestructionMesh);
		if (hasDestructionMesh)
		{
			DestructionMesh->WriteToFile(file);
		}
		return 1;
	}
	return 0;
}

uint32_t Abode::Load(GameOSFile& file)
{
	if (MultiMapFixed::Load(file))
	{
		file.ReadSafe(AbodeFlags);
		file.ReadSafe(DrinkingWater);
		file.ReadSafe(UnusedSavedValue);
		file.ReadPtr((GameThing**)&town);
		file.ReadSafe(villagers);
		MaleFemaleVillagers[SEX_MALE] = NULL;
		MaleFemaleVillagers[SEX_FEMALE] = NULL;
		file.ReadSafe(AdultCount);
		file.ReadSafe(PresentAtHome);
		file.ReadSafe(ChildCount);
		file.ReadSafe(index);
		ReadCountedArray(file, resources);
		bool32_t hasDestructionMesh;
		file.ReadSafe(hasDestructionMesh);
		if (hasDestructionMesh)
		{
			DestructionMesh =
				new (ABODE_FILE, ABODE_LINE(2210)) FragMesh(file, LH3DMesh::GetPackedMesh(GetInfo()->GetMesh()));
		}
		return 1;
	}
	return 0;
}

bool32_t Abode::GetNearestWaterPos(MapCoords& coords)
{
	if (HasDrinkingWater)
	{
		coords = DrinkingWater;
		return true;
	}
	return false;
}

bool32_t Abode::SetNearestWaterPos(float max_dist)
{
	bool32_t found = GUtils::FindNearestDrinkingWater(Pos, DrinkingWater, max_dist);
	HasDrinkingWater = found;
	return found;
}

float Abode::GetPercentAbodeFullWithAdults()
{
	if (GetInfo()->MaxVillagersInAbode != 0)
	{
		return (float)GetNumAdultsInAbode() / (float)GetInfo()->MaxVillagersInAbode;
	}
	return 1.0f;
}

float Abode::GetPercentAbodeFullWithChildren()
{
	if (GetInfo()->MaxChildrenInAbode != 0)
	{
		return ChildCount / GetInfo()->MaxChildrenInAbode;
	}
	return 1.0f;
}

float Abode::GetNumAdultsInAbode()
{
	return AdultCount;
}

void Abode::DrawPercentFull(int villager_in_hand)
{
	LHPoint pos = Game3dObject->matrix.GetPos();
	pos.y += Game3dObject->GetMesh()->GetBoundingBox().size.y * 2.0f + 1.5f;
	long maxPeople = GetInfo()->MaxVillagersInAbode;
	long people = (long)GetNumAdultsInAbode();
	if (villager_in_hand)
	{
		maxPeople = 1;
		people = -1;
	}
	HowManyPeople::Draw(maxPeople, people, &pos);
}

uint32_t Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
	uint32_t state = MultiMapFixed::GetDiscipleStateIfInteractedWith(status, villager);
	if (state == VILLAGER_DISCIPLE_NONE && IsFunctional() && GetPlayer() == status->GetPlayer() &&
	    GetPercentAbodeFullWithAdults() < 1.0f && villager->GetAbode() != this && GetTown() != NULL &&
	    !GetTown()->Uninhabitable)
	{
		return VILLAGER_DISCIPLE_CHANGE_HOUSE;
	}
	return state;
}

bool32_t Abode::IsInteractable()
{
	if (GetPercentBuilt() == 0.0f)
	{
		return false;
	}
	return GameThingWithPos::IsInteractable();
}

bool32_t Abode::CanBeHiddenIn()
{
	return IsFunctional();
}

float Abode::GetPercentRepairedForNonFunctional()
{
	return GetInfo()->ThresholdForStopBeingFunctional;
}

float Abode::GetInfluence()
{
	float influence = MultiMapFixed::GetInfluence();
	return (GetNumAdultsInAbode() + ChildCount + 1.0f) * influence;
}

MapCoords Abode::GetPosOutside(float divisions, float min_dist, float rand_dist)
{
	MapCoords pos;
	pos = GetArrivePos();
	float angle = GRand::GameFloatRand(2.0f * (float)M_PI / divisions, ABODE_FILE, ABODE_LINE(2378)) -
	              2.0f * (float)M_PI / (divisions + divisions);
	angle += GUtils::Get3DAngleFromXZ(Pos, pos);
	float dist = GRand::GameFloatRand(rand_dist, ABODE_FILE, ABODE_LINE(2379)) + min_dist;
	pos += GUtils::GetPosFromAngle(angle, dist);
	return pos;
}

void Abode::StopBeingFunctional(GPlayer* player)
{
	if (player != NULL && Age >= ABODE_SETTLED_AGE)
	{
		++player->game_stats->BuildingsDestroyed;
#ifdef VERSION_BW1W120
		AddSmashedCondition(player);
#endif
	}
}

#ifdef VERSION_BW1W120
void Abode::AddSmashedCondition(GPlayer* player)
{
	if (!LosingLifeFromNeglect)
	{
		if (!SmashedByCreature)
		{
			player->AddToCondition(WC_BUILDINGS_PLAYER_SMASHED, 1);
		}
		else
		{
			player->AddToCondition(WC_BUILDINGS_CREATURE_SMASHED, 1);
		}
	}
}
#endif

void Abode::DiscipleInHandNear(Villager& villager, GInterfaceStatus& status)
{
	if (GetInfo()->MaxVillagersInAbode > 0 && Pos.GetDistance(villager.Pos) < Get2DRadius())
	{
		Town* town = GetTown();
		if (town != NULL && !town->Uninhabitable && town->GetPlayer() == status.GetPlayer())
		{
			KnockedTown = town;
			HowManyPeople::KnockKnock();
		}
	}
}

float Abode::CalculateDesireToGainMale()
{
	float desire = 0.0f;
	if (GetInfo()->MaxVillagersInAbode != 0)
	{
		Town* town = GetTown();
		if (town != NULL)
		{
			desire = ((float)town->stats.NumMales + 0.001f) / ((float)town->stats.NumFemales + 0.001f) -
			         ((float)AdultMaleCount + 0.001f) / ((float)(AdultCount - AdultMaleCount) + 0.001f);
		}
	}
	return desire;
}

float Abode::CalculateDesireToGainVillager()
{
	float desire = 0.0f;
	if (GetInfo()->MaxVillagersInAbode != 0)
	{
		Town* town = GetTown();
		if (town != NULL)
		{
			desire = ((float)town->stats.NumAdults + 0.001f) / ((float)town->stats.MaxVillagersInAbodes + 0.001f) -
			         GetPercentAbodeFullWithAdults();
		}
	}
	return desire;
}

bool32_t Abode::TakeVillagerFrom(Abode& other, int male)
{
	FOREACH_LH_LIST_HEAD(Villager, v, other.villagers)
	{
		if ((male ? v->IsMaleVillager() : v->IsFemaleVillager()) && !(v->Flags & VILLAGER_FLAG_AT_HOME))
		{
			v->ForceMoveVillagerToAbode(this);
			return true;
		}
	}
	return false;
}

bool32_t Abode::SwapMaleForFemaleFrom(Abode& other)
{
	Villager* male;
	for (male = other.villagers.head; male != NULL; male = male->next)
	{
		if (male->IsMaleVillager() && !(male->Flags & VILLAGER_FLAG_AT_HOME))
		{
			break;
		}
	}
	if (male != NULL)
	{
		FOREACH_LH_LIST_HEAD(Villager, female, villagers)
		{
			if (female->IsFemaleVillager() && !(female->Flags & VILLAGER_FLAG_AT_HOME))
			{
				male->ForceMoveVillagerToAbode(this);
				female->ForceMoveVillagerToAbode(&other);
				return true;
			}
		}
	}
	return false;
}

float Abode::GetVillagerHealthTotal()
{
	float total = 0.0f;
	FOREACH_LH_LIST_HEAD(Villager, v, villagers)
	{
		total += v->GetLife();
	}
	return total;
}
