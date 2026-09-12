// Limits inline expansion to direct calls only: WriteSafe/ReadSafe and the
// list/counted-array templates inline into Save/Load, while the Read/WriteIt
// calls inside those templates stay calls and land here as COMDATs -- exactly
// what the original objects show (see GameOSFile.h). Without this, the
// depth-2 Read/WriteIt sites inline too and Save/Load lose their 100% match.
#pragma inline_depth(1)
#include "Abode.h"

#include "Lionhead/LH3DLib/development/LH3DSmoke.h"

#include <Lionhead/LH3DLib/development/LH3DMesh.h> /* For struct LH3DMesh */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LH3DLib/development/PhysOb.h>   /* For struct PhysOb */

#include "AbodeInfo.h"
#include "MapCoords.h"
#include "MultiMapFixedInfo.h"
#include "Player.h"
#include "Villager.h"
#include "chlasm/Enum.h"
#include "ColourConstants.h" /* For White */
#include "Creche.h"
#include "EditorPhysics.h"
#include "Field.h"
#include "Football.h"
#include "FootpathNode.h"
#include "Game.h"
#include "GameOSFile.h"
#include "Game3DObject.h"
#include "GameStats.h"
#include "GraveYard.h"
#include "Landscape.h"          /* For GoolooGooloo */
#include "LandscapeConstants.h" /* For CellSizeXGridDim */
#include "PlannedAbode.h"
#include "Rand.h"
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
#include "Wonder.h"
#include "Workshop.h"

#define M_PI 3.14159265358979323846

Abode* Abode::CastAbode()
{
	return this;
}

Town* Abode::GetTown()
{
	return town;
}

Abode::Abode(const MapCoords& coords, const GAbodeInfo* info, Town* _town, float y_angle, float scale, float food,
             int wood)
	: MultiMapFixed(coords, info, y_angle, scale, food, wood), DrinkingWater(), town(NULL), next(NULL), villagers()
{
	SetToZero();
	if (_town)
	{
		_town->AddStructureToTown(this);
		index = town->AbodeList.count - 1;
	}
	GGame::g_game->map.field_0x8 |= 1;
	FindNearestDrinkingWater(200.0f);
}

void Abode::SetToZero()
{
	PresentAtHome = 0;
	AdultCount = 0;
	ChildCount = 0;
	field_0x94 = 0;
	resources[RESOURCE_TYPE_FOOD] = 0;
	resources[RESOURCE_TYPE_WOOD] = 0;
	smoke = NULL;
	DestructionMesh = NULL;
	field_0x7c = 0;
	field_0xb0 = 0;
	AdultMaleCount = 0;
	field_0xb9 = 0;
}

void Abode::Delete()
{
	DeleteDependancys();
	if (GetTown() != NULL)
	{
		if ((GGame::g_game->field_0x14 & 0x8000) == 0)
		{
			MoveAbodeToPlannedAbodes();
		}
		GetTown()->RemoveStructureFromTown(this);
	}
	Object::Delete();
}

void Abode::ToBeDeleted(int param_1)
{
	Town* town = GetTown();
	DeleteDependancys();
	if (town != NULL && (GGame::g_game->field_0x14 & 0x8000) == 0)
	{
		MoveAbodeToPlannedAbodes();
		town->RemoveStructureFromTown(this);
	}
	DeleteAbodeSurroundingObjects();
	MultiMapFixed::ToBeDeleted(param_1);
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
		DestructionMesh->field_0x0 = 0;
	}
	obj->SetUpConstants(2000.0f, &EditorPhysics::PhysicsConstants[GetPhysicsConstantsType()], 0);
	obj->BuildFromVertices();
}

Abode* Abode::Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
                     uint32_t param_6, uint32_t param_7, float food, int wood, int param_10)
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
		return Field::Create(coords, (const GFieldTypeInfo*)info, town, y_angle, scale, wood);
	case ABODE_TYPE_SPELL_DISPENSER:
		result = SpellDispenser::Create(coords, info, town, y_angle, scale, food, wood);
		break;
	}

	if (result != NULL)
	{
		result->Init(param_10, param_6, param_7);
		result->CreateAbodeSurroundingObjects();
	}

	return result;
}

void Abode::Init(int param_1, uint32_t food_amount, uint32_t wood_amount)
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
	Abode* result = new ("C:\\dev\\MP\\Black\\Abode.cpp", 316) Abode(coords, info, town, y_angle, scale, food, wood);
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
				smoke->color = LH3DColor(0x00808080);
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
	Game3dObject->SetPosition(*GLandscape::ConvertMapCoordToLandscapePoint(Pos, position), yAngle, scale);
}

bool32_t Abode::GetNewEp(ABODE_EPP index, LHPoint* point)
{
	int mesh = GetMesh();
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
	if (GetInfo()->DidYouKnow != 0)
	{
		if (GetNewEp(ABODE_EPP_SCRIPT_HIGHLIGHT, &point))
		{
			// TODO
			MapCoords coords(point);
			return;
		}
	}
	if (GetNewEp(ABODE_EPP_LANTERN, &point))
	{
		// TODO
		MapCoords coords(point);
	}
}

void Abode::InsertMapObject()
{
	MultiMapFixed::InsertMapObject();
}

bool32_t Abode::ShouldFootpathsGoRound()
{
	uint8_t field = field_0x58;
	return (field & 2) != 2;
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
	return DestructionMesh->field_0x18;
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

uint32_t Abode::DestroyedByEffect(GPlayer* player, float param_2)
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
	if (site != NULL && site->field_0x24 != 0)
	{
		if (site->field_0x20 == 0)
		{
			building_site = NULL;
		}

		if (building_site == NULL)
		{
			ToBeDeleted(0);
		}
	}

	ToBeDeleted(0);
	return 1;
}

void Abode::AddVillagerToAbode(Villager* villager) {}

void Abode::RemoveDeletedVillagerFromAbode(Villager* village) {}

void Abode::RemoveAliveVillagerFromAbode(Villager* village) {}

uint32_t Abode::Process()
{
	MultiMapFixed::Process();
	if (GetPercentAbodeFullWithAdults() == 0.0f && GetPercentAbodeFullWithChildren() == 0.0f && IsBuilt() &&
	    !IsInScript())
	{
		if (GetTown() == NULL || GetTown()->field_0x5f4 == 0)
		{
			field_0xb0 += 0.001f;
			if (field_0xb0 >= 1.0f)
			{
				field_0x7c |= 0x40;
				ReduceLife(GetInfo()->EmptyAbodeLifeReducer, NULL);
				field_0x7c &= ~0x40;
				field_0xb0 = 0.0f;
			}
		}
	}
	if (field_0xb9 < 200)
	{
		++field_0xb9;
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
	return (CalculateFoodNeededForDinner() & 0xffff) <= GetResource(RESOURCE_TYPE_FOOD);
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

	if (GetTown() != NULL)
	{
		if (GetTown()->GetPlayer() != NULL)
		{
			GPlayer* player = GetTown()->GetPlayer();
			// TODO
			return (unsigned)player;
		}
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

		field_0x58 = (IsRepaired() == 0) << 2 | field_0x58 & ~4;
		if ((field_0x7c & 2) == 0)
		{
			field_0x7c |= 2;
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
			GFootpath*  footpath = new ("C:\\dev\\MP\\Black\\Abode.cpp", 1019) GFootpath(NULL, NULL);
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

			// FUN_00404960();
		}
	}
}

MESH_LIST Abode::GetMesh()
{
	return GetInfo()->GetMesh();
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
		float distance_modifier = GUtils::GetDistanceModifier(GUtils::GetDistanceInMetres(Pos, villager->Pos), 500.0f);
		score = (distance_modifier + 1.0f) * 0.50f * sex_modifier * score;
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

void Abode::JustAddResource(RESOURCE_TYPE type, uint32_t amount, bool param_3)
{
	resources[type] += amount;
}

uint32_t Abode::JustRemoveResource(RESOURCE_TYPE type, uint32_t amount, bool* param_3)
{
	amount = min(resources[type], amount);
	resources[type] -= amount;
	return amount;
}

uint32_t Abode::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool param_4,
                            MapCoords* coords, int param_6)
{
	if (building_site != NULL && (type == RESOURCE_TYPE_WOOD || type == RESOURCE_TYPE_ANY))
	{
		return building_site->AddResource(type, amount, status, param_4, 0, 0);
	}
	return DoResourceAdding(type, amount, status, param_4, coords, param_6);
}

uint32_t Abode::DoResourceAdding(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* iface, bool param_4,
                                 MapCoords* coords, int param_6)
{
	Town* town = GetTown();
	if (param_4 && town != NULL)
	{
		town->desire.CallDesireFunction(type != RESOURCE_TYPE_FOOD);
		// uint32_t result = JustAddResource(type, iface, param_3);
		town->desire.CallDesireFunction(type != RESOURCE_TYPE_FOOD);
		// return result;
	}
	// return JustAddResource(type, amount, param_3);
	return 0;
}

uint32_t Abode::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* param_4)
{
	if (building_site != NULL && (type == RESOURCE_TYPE_WOOD || type == RESOURCE_TYPE_ANY))
	{
		return building_site->RemoveResource(type, amount, status, param_4);
	}
	return DoResourceRemoving(type, amount, status, param_4);
}

uint32_t Abode::DoResourceRemoving(RESOURCE_TYPE type, uint32_t param_2, GInterfaceStatus* iface, bool* param_4)
{
	return 0;
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

char* Abode::GetAbodeText(char* buff)
{
	GAbodeInfo* info = GetInfo();
	char*       tribe_text = GTribeInfo::GetTribeTextArray()[GetTribe()->type];
	sprintf(buff, "%s_%s", tribe_text, info->GetDescription());
	return buff;
}

uint32_t Abode::SaveObject(LHOSFile& file, const MapCoords& coords)
{
	if (CheckAndSetSaved())
	{
		return 0;
	}
	return MultiMapFixed::SaveObject(file, coords);
}

float Abode::ReduceLife(float value, GPlayer* player)
{
	return MultiMapFixed::ReduceLife(value, player);
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

bool32_t Abode::IsWonder()
{
	return GetInfo()->AbodeType == ABODE_TYPE_WONDER;
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

void Abode::ReactToPhysicsImpact(PhysicsObject* obj, bool param_2) {}

void Abode::ApplyEffectsDueToPhysicalDestruction(Object* object, GPlayer* player) {}

bool32_t Abode::CanBecomeAPhysicsObject()
{
	return false;
}

SCRIPT_OBJECT_TYPE Abode::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_ABODE;
}

bool32_t Abode::InterfaceValidToTap(GInterfaceStatus* status)
{
	return true;
}

uint32_t Abode::InterfaceTap(GInterfaceStatus* status)
{
	return 1;
}

float Abode::GetDesireToBeRepaired()
{
	if (GetPercentRepaired() <= GetTown()->GetInfo()->field_0x10c &&
	    ((GetInfo()->AbodeType & 2) == 0 || villagers.count != 0))
	{
		return MultiMapFixed::GetDesireToBeRepaired();
	}
	return 0.0f;
}

Villager* Abode::FindVillager(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                              SCRIPT_OBJECT_TYPE type, uint32_t param_3)
{
	FOREACH_LH_LIST_HEAD(Villager, v, villagers)
	{
		if (callback(v, type, param_3))
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
		WRITE_SAFE(file, field_0x7c);
		WRITE_SAFE(file, DrinkingWater);
		WRITE_SAFE(file, field_0x94);
		file.WritePtr(town);
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
		file.ReadSafe(field_0x7c);
		file.ReadSafe(DrinkingWater);
		file.ReadSafe(field_0x94);
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
			DestructionMesh = new ("C:\\dev\\MP\\Black\\Abode.cpp", 2210)
				FragMesh(file, LH3DMesh::GetPackedMesh(GetInfo()->GetMesh()));
		}
		return 1;
	}
	return 0;
}

void Abode::FindNearestDrinkingWater(float max_dist)
{
	field_0x7c = field_0x7c & ~1 | GUtils::FindNearestDrinkingWater(Pos, DrinkingWater, max_dist) & 1;
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

void Abode::DrawPercentFull(uint32_t param_1) {}

uint32_t Abode::GetDiscipleStateIfInteractedWith(GInterfaceStatus* status, Villager* villager)
{
	return MultiMapFixed::GetDiscipleStateIfInteractedWith(status, villager);
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
	return (GetNumAdultsInAbode() + ChildCount + 1.0f) * MultiMapFixed::GetInfluence();
}

MapCoords Abode::GetPosOutside(float param_2, float param_3, float param_4)
{
	MapCoords coords = GetArrivePos();
	float     fVar1 = GRand::GameFloatRand(2.0f * (float)M_PI / param_2, __FILE__, __LINE__);
	float     fVar3 = GUtils::Get3DAngleFromXZ(coords, coords);
	float     fVar2 = GRand::GameFloatRand(param_4, __FILE__, __LINE__);

	return coords + GUtils::GetPosFromAngle(fVar3 + fVar1 - 2.0f * (float)M_PI / (2.0f * param_2), fVar2 + param_3);
}

void Abode::StopBeingFunctional(GPlayer* player)
{
	if (player != NULL && field_0xb9 >= 200)
	{
		++player->game_stats->field_0x1080;
	}
}

void Abode::DiscipleInHandNear(Villager& villager, GInterfaceStatus& status) {}

float Abode::CalculateDesireToGainMale()
{
	return 0.0f;
}

float Abode::CalculateDesireToGainVillager()
{
	return 0.0f;
}

bool32_t Abode::TakeVillagerFrom(Abode& other, uint32_t param_2)
{
	return true;
}

bool32_t Abode::SwapMaleForFemaleFrom(Abode& other)
{
	return true;
}

float Abode::GetVillagerHealthTotal()
{
	return 0.0f;
}
