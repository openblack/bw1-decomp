#include "CellSize.h"
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "GameTimeConstants.h"
#include "BuildingSite.h"

#include <math.h>
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h>
#include <Lionhead/LH3DLib/development/LH3DPrimitive.h>
#include <Lionhead/LH3DLib/development/LH3DSubMesh.h>
#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h>
#include "Citadel.h"
#include "CitadelBuildingSite.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "InterfaceStatus.h"
#include "MultiMapFixed.h"
#include "PlannedMultiMapFixed.h"
#include "Player.h"
#include "Pot.h"
#include "PotInfo.h"
#include "PotStructure.h"
#include "Rand.h"
#include "Scaffold.h"
#include "StandardBuildingSite.h"
#include "Town.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "Workshop.h"
#include "WorkshopBuildingSite.h"

#ifdef VERSION_BW1W100
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 800 ? 14 : 15))
#endif

static float FarthestDistSq[POS_BUILDER_POSITION_COUNT];

#ifdef VERSION_BW1W100
void PosBuilder::Process(LH3DObject* object)
#else
void PosBuilder::Process(LH3DObject* object, bool32_t circular)
#endif
{
	int i;
	for (i = 0; i < POS_BUILDER_POSITION_COUNT; i++)
	{
		FarthestDistSq[i] = 0.0f;
		Positions[i] = object->matrix.GetPos();
	}
	LH3DMesh* mesh = object->GetMesh();
	LHPoint   centre = mesh->GetBoundingBox().centre;
	object->matrix.TransformPoint(centre);
	float radius = object->scale;
	radius *= mesh->BoundingBox.DiagonalLength;
#ifndef VERSION_BW1W100
	if (circular)
	{
		float angle = 0.0f;
		for (i = 0; i < POS_BUILDER_POSITION_COUNT; i++)
		{
			Positions[i].x = sin(angle) * radius + centre.x;
			Positions[i].z = cos(angle) * radius + centre.z;
			LH3DMapCoords coords(Positions[i].x, Positions[i].z);
			Positions[i].y = LH3DIsland::GetAltitude(coords);
			angle += TWO_PI / POS_BUILDER_POSITION_COUNT;
		}
		return;
	}
#endif
	for (int s = 0; s < mesh->GetSubmeshCount(); s++)
	{
		LH3DSubMesh* submesh = mesh->GetListPtrSubmesh()[s];
		for (int p = 0; p < submesh->GetPrimitiveCount(); p++)
		{
			LH3DPrimitive* primitive = submesh->GetListPtrPrimitive()[p];
			LH3DVertex*    vertices = primitive->GetListVertex();
			for (int t = 0; t < primitive->GetTriangleCount(); t++)
			{
				LH3DTriangle*  triangle = &primitive->Triangles[t];
				const LHPoint& va = vertices[triangle->GetA()].position;
				LHPoint        a;
				a.x = va.x;
				a.y = va.y;
				a.z = va.z;
				const LHPoint& vb = vertices[triangle->GetB()].position;
				LHPoint        b;
				b.x = vb.x;
				b.y = vb.y;
				b.z = vb.z;
				const LHPoint& vc = vertices[triangle->GetC()].position;
				LHPoint        c;
				c.x = vc.x;
				c.y = vc.y;
				c.z = vc.z;
				LHPoint* lowest;
				LHPoint* second;
				if (a.y <= b.y)
				{
					if (c.y <= a.y)
					{
						lowest = &c;
						second = &a;
					}
					else
					{
						lowest = &a;
						if (c.y <= b.y)
						{
							second = &c;
						}
						else
						{
							second = &b;
						}
					}
				}
				else
				{
					if (c.y <= b.y)
					{
						lowest = &c;
						second = &b;
					}
					else
					{
						lowest = &b;
						if (a.y <= c.y)
						{
							second = &a;
						}
						else
						{
							second = &c;
						}
					}
				}
				if (lowest->y < POS_BUILDER_MAX_EDGE_HEIGHT && second->y < POS_BUILDER_MAX_EDGE_HEIGHT)
				{
					object->matrix.TransformPoint(a);
					object->matrix.TransformPoint(b);
					object->matrix.TransformPoint(c);
					LHPoint direction(second);
					direction -= lowest;
					float inverseLength = InverseSquareRoot(direction.GetNormeSq());
					direction *= inverseLength;
					for (i = 0; i < POS_BUILDER_POSITION_COUNT; i++)
					{
						float    angle = i * (TWO_PI / POS_BUILDER_POSITION_COUNT);
						LHMatrix rotation;
						rotation.SetRotationY(angle);
						LHPoint rayEnd(radius, 0.0f, 0.0f);
						rotation.TransformPoint(rayEnd);
						rayEnd += centre;
						LHPoint intersection;
						if (TestIntersection(lowest, second, &direction, &centre, &rayEnd, &intersection))
						{
							float dz = intersection.z - centre.z;
							float dx = intersection.x - centre.x;
							float distance = dx * dx + dz * dz;
							if (distance > FarthestDistSq[i])
							{
								Positions[i] = intersection;
								FarthestDistSq[i] = distance;
							}
						}
					}
				}
			}
		}
	}
	for (i = 0; i < POS_BUILDER_POSITION_COUNT; i++)
	{
		LHPoint offset(Positions[i]);
		offset -= centre;
		float length = offset.GetNorme();
		offset.SetLength(length + POS_BUILDER_EDGE_MARGIN);
		offset += centre;
		Positions[i] = offset;
	}
}

bool32_t __fastcall PosBuilder::GetIntersection(LHPoint* origin, LHPoint* direction, LHPoint* line_point,
                                                LHPoint* line_normal, LHPoint* intersection)
{
	float denominator = line_normal->z * direction->z + line_normal->x * direction->x;
	if (denominator == 0.0f)
	{
		return false;
	}
	LHPoint diff = *line_point - *origin;
	float   t = (diff.x * line_normal->x + diff.z * line_normal->z) / denominator;
	intersection->Set(direction);
	*intersection *= t;
	LHPoint offset(origin);
	*intersection += offset;
	return true;
}

bool32_t __fastcall PosBuilder::IsInside(LHPoint* start, LHPoint* end, LHPoint* point)
{
	if (start->x < end->x)
	{
		if (point->x < start->x || point->x > end->x)
		{
			return false;
		}
	}
	else if (point->x < end->x || point->x > start->x)
	{
		return false;
	}
	if (start->z < end->z)
	{
		if (point->z < start->z || point->z > end->z)
		{
			return false;
		}
	}
	else if (point->z < end->z || point->z > start->z)
	{
		return false;
	}
	return true;
}

bool32_t __fastcall PosBuilder::TestIntersection(LHPoint* start, LHPoint* end, LHPoint* direction, LHPoint* edge_start,
                                                 LHPoint* edge_end, LHPoint* intersection)
{
	LHPoint normal;
	float   dx = edge_end->x - edge_start->x;
	normal.x = dx;
	normal.y = 0.0f;
	float dz = edge_end->z - edge_start->z;
	normal.z = dz;
	float inverseLength = InverseSquareRoot(normal.x * normal.x + dz * dz);
	normal *= inverseLength;
	normal.y = normal.z;
	normal.z = normal.x;
	normal.x = -normal.y;
	normal.y = 0.0f;
	if (!GetIntersection(start, direction, edge_start, &normal, intersection))
	{
		return false;
	}
	if (!IsInside(start, end, intersection))
	{
		return false;
	}
	return IsInside(edge_start, edge_end, intersection) != false;
}

inline void BuildingSite::CreatePileWood() {}

inline void BuildingSite::RemovePotFromStructure(PotStructure* structure) {}

inline uint32_t BuildingSite::GetSaveType()
{
	return GAME_THING_TYPE_UNUSED_000;
}

inline void BuildingSite::SetToZero()
{
	RootBuilding.Clear();
	ScaffoldCarrierCount = 0;
	BuildingWorkerCount = 0;
	WasConstructed = false;
	ForcedDesire = 0.0f;
	life = 0.0f;
}

inline BuildingSite::BuildingSite()
{
	SetToZero();
}

BuildingSite::BuildingSite(PlannedMultiMapFixed* planned)
{
	SetToZero();
	WasConstructed = planned->WasConstructed;
	MultiMapFixed* building = planned->CreatePlanned(1.0f);
	RootBuilding = building;
	building->SetBuildingSite(this);
	life = 0.0f;
	ComputePosForBuilders();
}

BuildingSite::BuildingSite(MultiMapFixed* building)
{
	GGame::g_game->GameLists.BuildingSites.Add(this);
	SetToZero();
	WasConstructed = building->Damaged;
	RootBuilding = building;
	building->SetBuildingSite(this);
	life = building->GetLife();
	if (RootBuilding->GetDestructionMesh() == NULL && RootBuilding->IsBuilt())
	{
		life = building->GetLife() * BUILDING_SITE_LIFE_SCALE - BUILDING_SITE_LIFE_OFFSET;
	}
	ComputePosForBuilders();
}

BuildingSite::~BuildingSite()
{
	if (GGame::g_game->GameLists.BuildingSites.IsThisInList(this))
	{
		GGame::g_game->GameLists.BuildingSites.Remove(this);
	}
}

void BuildingSite::Init() {}

void BuildingSite::ToBeDeleted(bool32_t delete_now)
{
	if ((GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
	{
		GGame::g_game->GameLists.BuildingSites.Remove(this);
		for (LHLinkedListIterator<Town*> townIt = GGame::g_game->GameLists.TownList.GetStart(); townIt; townIt++)
		{
			Town* town = townIt.Get();
			if (town->BuildingSiteList.IsThisInList(this))
			{
				town->RemoveBuildingSite(this);
			}
		}
		LHLinkedNode<Villager*>* workerNode = BuildingWorkerList.GetStart();
		while (workerNode)
		{
			LHLinkedNode<Villager*>* nextWorkerNode = workerNode->next.Get();
			Villager*                villager = workerNode->payload;
			if (workerNode && villager->IsAvailable())
			{
				float     radius = RootBuilding->Get2DRadius() + BUILDING_SITE_EJECT_MARGIN;
				MapCoords centre = RootBuilding->Pos;
				if (GUtils::GetDistanceInMetres(&villager->Pos, &centre) < radius)
				{
					float angle = GUtils::Get3DAngleFromXZ(RootBuilding->Pos, villager->Pos);
					centre += GUtils::GetPosFromAngle(angle, radius);
					villager->SetupMoveToWithHug(centre, VILLAGER_STATE_DECIDE_WHAT_TO_DO);
				}
				else
				{
					villager->SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
				}
			}
			workerNode = nextWorkerNode;
		}
		BuildingWorkerList.RemoveAll();
		Scaffold* scaffold;
		Scaffold* nextScaffold = ScaffoldList.GetHead();
		while ((scaffold = nextScaffold) != NULL)
		{
			nextScaffold = ScaffoldList.FindNext(scaffold);
			scaffold->ToBeDeleted(false);
		}
		Pot* pot = GetPileWood(*(const MapCoords*)NULL);
		if (pot)
		{
			if (RootBuilding.Get() == NULL || !RootBuilding->IsWorkshop())
			{
				pot->SetMultiMapFixed(NULL);
				if (pot->JustGetResource(RESOURCE_TYPE_WOOD, 0, NULL) &&
				    (GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP) == 0)
				{
					pot->SetupReaction();
				}
				else
				{
					pot->ToBeDeleted(delete_now);
				}
			}
			SetPileWood(NULL);
		}
		if (RootBuilding.Get() != NULL)
		{
			RootBuilding->SetBuildingSite(NULL);
			RootBuilding = NULL;
		}
		GameThing::ToBeDeleted(delete_now);
	}
}

bool32_t BuildingSite::IsBuilt()
{
	return GetRootBuilding()->IsBuilt();
}

bool32_t BuildingSite::IsRepaired()
{
	return GetRootBuilding()->IsRepaired();
}

int BuildingSite::GetMaxVillagersNeededToBuild()
{
	if (GetBuilding())
	{
		return GetBuilding()->GetInfo()->MaxVillagerNeededToBuild;
	}
	return 0;
}

int BuildingSite::GetBuildersNeeded()
{
	MultiMapFixed* building = GetBuilding();
	if (building == NULL)
	{
		return 0;
	}
	if (IsBuilt() && (IsRepaired() || building->GetDesireToBeRepaired() == 0.0f))
	{
		return 0;
	}
	GetMaxVillagersNeededToBuild();
	int workers = BuildingWorkerCount;
	return GetMaxVillagersNeededToBuild() - workers;
}

bool32_t BuildingSite::IsBuilderNeeded()
{
	return GetBuildersNeeded() > 0;
}

MultiMapFixed* BuildingSite::GetBuilding()
{
	if (RootBuilding.Get() != NULL && RootBuilding->IsAvailable())
	{
		return (MultiMapFixed*)RootBuilding->GetBuildingObject();
	}
	return NULL;
}

MultiMapFixed* BuildingSite::GetRootBuilding()
{
	return RootBuilding.Get();
}

float BuildingSite::GetPercentBuilt()
{
	if (GetBuilding() != NULL)
	{
		return GetBuilding()->GetPercentBuilt() * GetBuilding()->GetPercentRepaired();
	}
	return 0.0f;
}

void BuildingSite::CheckBuildingSites(LHLinkedList<BuildingSite*>& sites)
{
	LHLinkedNode<BuildingSite*>* node = sites.GetStart();
	while (node)
	{
		LHLinkedNode<BuildingSite*>* next = node->next.Get();
		MultiMapFixed*               root = node->payload->GetRootBuilding();
		if ((root == NULL || !root->IsAvailable() || (root->IsBuilt() && root->IsRepaired())) &&
		    node->payload->IsAvailable())
		{
			node->payload->ToBeDeleted(false);
		}
		node = next;
	}
}

float BuildingSite::GetDesireForVillagers()
{
	float desire = (float)GetBuildersNeeded() / (float)GetMaxVillagersNeededToBuild() + ForcedDesire;
	if (desire < 0.0f)
	{
		return 0.0f;
	}
	if (desire > 1.0f)
	{
		return 1.0f;
	}
	return desire;
}

float BuildingSite::GetClearAreaRadius()
{
	return GetBuilding()->Get2DRadius() * BUILDING_SITE_CLEAR_AREA_SCALE;
}

float BuildingSite::GetDesireToBeRepaired()
{
	if (GetBuilding() != NULL)
	{
		float desire = GetDesireForVillagers();
		return desire * RootBuilding->GetDesireToBeRepaired();
	}
	return 0.0f;
}

void BuildingSite::AddToBuildingWorkers(Villager* villager)
{
	BuildingWorkerList.IsThisInList(villager);
	BuildingWorkerList.Add(villager);
	BuildingWorkerCount++;
}

void BuildingSite::RemoveFromBuildingWorkers(Villager* villager)
{
	BuildingWorkerList.Remove(villager);
	BuildingWorkerCount--;
}

void BuildingSite::AddScaffold(Scaffold* scaffold)
{
	ScaffoldList.Add(scaffold);
	scaffold->building_site = this;
}

void BuildingSite::RemoveScaffold(Scaffold* scaffold)
{
	ScaffoldList.Remove(scaffold);
}

void BuildingSite::ScaffoldChanged(Scaffold* scaffold) {}

uint32_t BuildingSite::GetScaffoldsNeeded()
{
	int needed = GetBuilding()->GetInfo()->ScaffoldsRequired - ScaffoldCarrierCount - ScaffoldList.count;
	return max(0, needed);
}

void BuildingSite::AddScaffoldCarrier(Villager* carrier, Scaffold* scaffold)
{
	ScaffoldCarrierCount++;
	ScaffoldCarrierList.Add(carrier);
	scaffold->building_site = this;
}

void BuildingSite::RemoveScaffoldCarrier(Villager* carrier, Scaffold* scaffold)
{
	ScaffoldCarrierCount--;
	ScaffoldCarrierList.Remove(carrier);
	scaffold->building_site = NULL;
}

void BuildingSite::CarrierPlacedScaffold(Villager* carrier, Scaffold* scaffold)
{
	RemoveScaffoldCarrier(carrier, scaffold);
	AddScaffold(scaffold);
}

bool BuildingSite::HasAllScaffolds()
{
	if (GetScaffoldsNeeded() == 0)
	{
		return true;
	}
	return false;
}

bool32_t BuildingSite::IsScaffoldNeeded()
{
	return GetScaffoldsNeeded() > 0;
}

Town* BuildingSite::GetTown()
{
	if (RootBuilding.Get() != NULL)
	{
		return RootBuilding->GetTown();
	}
	return NULL;
}

inline float GPlayer::GetTribePowerValue(unsigned long tribe)
{
	return TribalPower[tribe];
}

float BuildingSite::GetWoodValue()
{
	MultiMapFixed* building = GetBuilding();
	if (building != NULL)
	{
		float scale = building->GetScale();
		float wood = scale * (float)building->info->WoodValue;
		return wood / GetPlayer()->GetTribePowerValue(TRIBE_TYPE_EGYPTIAN);
	}
	return 0.0f;
}

bool32_t BuildingSite::GetPosForWoodDropOffNotIfOneThere(MapCoords& coords)
{
	float radius = GetBuilding()->GetRadius() * BUILDING_SITE_WOOD_DROP_SCALE;
	for (float angle = 0.0f; angle < TWO_PI; angle += QUARTER_PI_F)
	{
		MapCoords pos = GetBuilding()->GetInteractPos() + GUtils::GetPosFromAngle(angle, radius);
		if (pos.InBounds())
		{
			coords = pos;
		}
		for (Object* object = pos.FindType(OBJECT_TYPE_ANY, NULL); object != NULL;
		     object = pos.FindType(OBJECT_TYPE_ANY, object))
		{
			if (object->GetResource(RESOURCE_TYPE_WOOD))
			{
				return false;
			}
		}
	}
	return true;
}

MapCoords BuildingSite::GetResourcePosAndYAngle(RESOURCE_TYPE type, unsigned long index, float* y_angle)
{
	if (type == RESOURCE_TYPE_WOOD)
	{
		if (GetRootBuilding()->IsWorshipSite())
		{
			LHPoint point(BUILDING_SITE_WORSHIP_WOOD_X, 0.0f, BUILDING_SITE_WORSHIP_WOOD_Z);
			GetRootBuilding()->Game3dObject->matrix.TransformPoint(point);
			MapCoords pos(point);
			if (y_angle)
			{
				*y_angle = GetRootBuilding()->GetYAngle();
			}
			return pos;
		}
		Pot* pot = GetPileWood(*(const MapCoords*)NULL);
		if (pot)
		{
			if (y_angle)
			{
				*y_angle = pot->GetYAngle();
			}
			return pot->Pos;
		}
		MapCoords pos = GetRootBuilding()->Pos;
		float     angle = GUtils::Get3DAngleFromXZ(GetRootBuilding()->GetDoorPos(), pos);
		angle += EIGHTH_PI_F - GAME_FLOAT_RAND(696, QUARTER_PI_F);
		float radius = pos.GetDistance(GetRootBuilding()->GetDoorPos()) + BUILDING_SITE_WOOD_DOOR_MARGIN;
		pos += GUtils::GetPosFromAngle(angle, radius);
		if (y_angle)
		{
			*y_angle = angle - PI_F;
		}
		return pos;
	}
	if (y_angle)
	{
		*y_angle = 0.0f;
	}
	return GetRootBuilding()->Pos;
}

uint32_t BuildingSite::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
                                   const MapCoords* coords, int from_other_player)
{
	uint32_t added = 0;
	if (type == RESOURCE_TYPE_WOOD)
	{
		if (GetPileWood(*(const MapCoords*)NULL) == NULL)
		{
			CreatePileWood();
		}
		Pot* pot = GetPileWood(*(const MapCoords*)NULL);
		if (pot && pot->IsAvailable())
		{
			added = pot->JustAddResource(type, amount, poisoned);
		}
	}
	Town* town = GetTown();
	if (town)
	{
		town->stats.TotalBuildingSiteCost += (float)added;
	}
	return added;
}

uint32_t BuildingSite::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool* poisoned)
{
	uint32_t removed = 0;
	if (type == RESOURCE_TYPE_WOOD)
	{
		Pot* pot = GetPileWood(status ? status->GetPos() : *(const MapCoords*)NULL);
		if (pot)
		{
			removed = pot->JustRemoveResource(type, amount, NULL);
		}
	}
	Town* town = GetTown();
	if (town)
	{
		town->stats.TotalBuildingSiteCost -= (float)removed;
	}
	return removed;
}

uint32_t BuildingSite::GetResource(RESOURCE_TYPE type)
{
	Pot* pot = GetPileWood(*(const MapCoords*)NULL);
	if (pot)
	{
		return pot->JustGetResource(type, 0, NULL);
	}
	return 0;
}

uint32_t BuildingSite::GetWoodForStats()
{
	return GetResource(RESOURCE_TYPE_WOOD);
}

float BuildingSite::GetWoodNeededToBuild()
{
	float wood;
	if (GetRootBuilding()->IsBuilt())
	{
		wood = (1.0f - GetBuilding()->GetLife()) * GetWoodValue();
	}
	else
	{
		wood = (1.0f - GetBuilding()->GetPercentBuilt()) * GetWoodValue();
	}
	return wood - GetResource(RESOURCE_TYPE_WOOD);
}

bool32_t BuildingSite::ShouldIGetWood(Villager* villager)
{
	float wood = GetResource(RESOURCE_TYPE_WOOD);
	if (GUtils::GetDistanceInMetres(&villager->Pos, &GetRootBuilding()->Pos) < BUILDING_SITE_WOOD_NEAR_DISTANCE)
	{
		if (wood == 0.0f)
		{
			return true;
		}
		return false;
	}
	for (LHLinkedNode<Villager*>* node = BuildingWorkerList.GetStart(); node; node = node->next.Get())
	{
		wood += node->payload->ResourceHeld[RESOURCE_TYPE_WOOD];
	}
	if (wood >= GetWoodNeededToBuild())
	{
		return false;
	}
	float supply = min(wood / ((BuildingWorkerList.count + 1) * villager->GetInfo()->AmountOfWoodPerBuilderWanted) +
	                       (float)villager->ResourceHeld[RESOURCE_TYPE_WOOD] / villager->GetInfo()->MaxWoodCarried,
	                   1.0f);
	float demand = 1.0f - supply;
	{
		MapCoords dropoff = villager->GetResourceDropoffPos(RESOURCE_TYPE_WOOD);
		supply *= GUtils::GetDistanceModifier(GUtils::GetDistanceInMetres(GetRootBuilding()->Pos, villager->Pos),
		                                      BUILDING_SITE_WOOD_MAX_DISTANCE);
		demand *= GUtils::GetDistanceModifier(GUtils::GetDistanceInMetres(dropoff, villager->Pos),
		                                      BUILDING_SITE_WOOD_MAX_DISTANCE);
	}
	return demand > supply;
}

bool32_t BuildingSite::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WritePtr(RootBuilding.Get());
		file.WriteSafe(BuildingWorkerList);
		file.WriteSafe(ScaffoldList);
		file.WriteSafe(ScaffoldCarrierList);
		file.WriteIt(ScaffoldCarrierCount);
		file.WriteIt(BuilderPositions);
		file.WriteIt(BuildingWorkerCount);
		file.WriteIt(WasConstructed);
		file.WriteIt(ForcedDesire);
		file.WriteIt(life);
		return true;
	}
	return false;
}

bool32_t BuildingSite::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadPtr((GameThing**)&RootBuilding);
		file.ReadSafe(BuildingWorkerList);
		file.ReadSafe(ScaffoldList);
		file.ReadSafe(ScaffoldCarrierList);
		file.ReadIt(ScaffoldCarrierCount);
		file.ReadIt(BuilderPositions);
		file.ReadIt(BuildingWorkerCount);
		file.ReadIt(WasConstructed);
		file.ReadIt(ForcedDesire);
		file.ReadIt(life);
		return true;
	}
	return false;
}

#ifdef VERSION_BW1W100
void BuildingSite::ComputePosForBuilders()
{
	if (GetBuilding() != NULL && GetBuilding()->Game3dObject != NULL)
	{
		BuilderPositions.Process(GetBuilding()->Game3dObject);
	}
}
#else
void BuildingSite::ComputePosForBuilders()
{
	MultiMapFixed* building = GetBuilding();
	if (building != NULL && building->Game3dObject != NULL)
	{
		BuilderPositions.Process(building->Game3dObject, building->IsFootball());
	}
}
#endif

MapCoords BuildingSite::GetRandomBuildPos(Object* object, long* index)
{
	float angle = GUtils::Get3DAngleFromXZ(GetBuilding()->Pos, object->Pos);
	float randomAngle = (GAME_FLOAT_RAND(892, HALF_PI_F));
	return GetNearestEdge(angle + (randomAngle - QUARTER_PI_F), 0.0f, index);
}

MapCoords BuildingSite::GetNearestEdge(float angle, float extra_radius, long* edge_index)
{
	long index;
	if (angle < -BUILDING_SITE_MAX_ANGLE)
	{
		angle = 0.0f;
	}
	if (angle > BUILDING_SITE_MAX_ANGLE)
	{
		angle = PI_F;
	}
	while (angle < 0.0f)
	{
		angle += TWO_PI;
	}
	while (angle > TWO_PI)
	{
		angle -= TWO_PI;
	}
	if (angle != 0.0f)
	{
		index = (long)(POS_BUILDER_POSITION_COUNT * (angle / TWO_PI)) & (POS_BUILDER_POSITION_COUNT - 1);
		if (index >= POS_BUILDER_POSITION_COUNT)
		{
			index = POS_BUILDER_POSITION_COUNT - 1;
		}
		else if (index < 0)
		{
			index = 0;
		}
	}
	else
	{
		index = 0;
	}
	if (edge_index)
	{
		*edge_index = index;
	}
	MapCoords result;
	LHPoint&  position = BuilderPositions.Positions[index];
	result.SetX(position.x);
	result.SetZ(position.z);
	result.SetAltitude(0.0f);
	return result;
}

MapCoords BuildingSite::GetNextPosFromIndex(long* index)
{
	MapCoords result;
	if (GetBuilding() == NULL)
	{
		return result;
	}
	float slots =
		BUILDING_SITE_BUILDER_SPACING / ((GetBuilding()->Get2DRadius() * TWO_PI) / POS_BUILDER_POSITION_COUNT);
	long count = (long)(slots + GAME_FLOAT_RAND(951, slots * 0.5f));
	long offset = count * (GAME_RAND(952, 2) ? 1 : -1);
	long next = *index + offset;
	if (next >= POS_BUILDER_POSITION_COUNT)
	{
		next -= POS_BUILDER_POSITION_COUNT;
	}
	else if (next < 0)
	{
		next += POS_BUILDER_POSITION_COUNT;
	}
	if (index)
	{
		*index = next;
	}
	LHPoint& position = BuilderPositions.Positions[next];
	result.SetX(position.x);
	result.SetZ(position.z);
	result.SetAltitude(0.0f);
	return result;
}

float BuildingSite::GetRadius()
{
	if (GetBuilding() != NULL)
	{
		return GetBuilding()->GetRadius();
	}
	return 0.0f;
}

void BuildingSite::BuildBy(float amount)
{
	GetBuilding()->BuildBy(amount);
}

bool32_t BuildingSite::IsLinkedToThisBuildingSite(Pot* pot)
{
	return false;
}

void BuildingSite::RemoveAllVillagersFromTown(Town* town)
{
	LHLinkedNode<Villager*>* workerNode = BuildingWorkerList.GetStart();
	while (workerNode)
	{
		LHLinkedNode<Villager*>* nextWorkerNode = workerNode->next.Get();
		if (workerNode->payload->GetTown() == town && workerNode->payload->IsAvailable())
		{
			workerNode->payload->SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		}
		workerNode = nextWorkerNode;
	}
}

MapCoords BuildingSite::GetResourceDropPosForComputerPlayer(RESOURCE_TYPE type)
{
	return GetBuilding()->GetResourceDropPosForComputerPlayer(type);
}

CitadelBuildingSite::CitadelBuildingSite()
{
	for (uint32_t i = 0; i < CITADEL_WOOD_PILE_COUNT; i++)
	{
		WoodPiles[i] = NULL;
	}
}

CitadelBuildingSite::CitadelBuildingSite(MultiMapFixed* site) : BuildingSite(site)
{
	CreatePilesOfWood();
}

CitadelBuildingSite::CitadelBuildingSite(PlannedMultiMapFixed* site) : BuildingSite(site)
{
	CreatePilesOfWood();
}

void CitadelBuildingSite::ToBeDeleted(bool32_t delete_now)
{
	for (uint32_t i = 0; i < CITADEL_WOOD_PILE_COUNT; i++)
	{
		if (WoodPiles[i] != NULL)
		{
			WoodPiles[i]->SetMultiMapFixed(NULL);
			if (WoodPiles[i]->JustGetResource(RESOURCE_TYPE_WOOD, 0, NULL) &&
			    (GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP) == 0)
			{
				WoodPiles[i]->SetupReaction();
			}
			else
			{
				WoodPiles[i]->ToBeDeleted(delete_now);
			}
			SetPileWood(NULL);
		}
	}
	BuildingSite::ToBeDeleted(delete_now);
}

void CitadelBuildingSite::CreatePilesOfWood()
{
	for (uint32_t i = 0; i < CITADEL_WOOD_PILE_COUNT; i++)
	{
		float     yAngle = 0.0f;
		MapCoords position = GetResourcePosAndYAngle(RESOURCE_TYPE_WOOD, i, &yAngle);
		if (WoodPiles[i] == NULL || WoodPiles[i]->IsAvailable() != true)
		{
			WoodPiles[i] = Pot::Create(position, &GPotInfo::GetInfo()[POT_INFO_MAGIC_WOOD], 0, GetBuilding(), NULL,
			                           false, yAngle, 1.0f, true);
		}
	}
}

uint32_t CitadelBuildingSite::GetResource(RESOURCE_TYPE type)
{
	uint32_t total = 0;
	for (uint32_t i = 0; i < CITADEL_WOOD_PILE_COUNT; i++)
	{
		if (WoodPiles[i] != NULL)
		{
			total += WoodPiles[i]->JustGetResource(type, 0, NULL);
		}
	}
	return total;
}

uint32_t CitadelBuildingSite::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
                                          const MapCoords* coords, int from_other_player)
{
	uint32_t added = 0;
	if (coords != NULL)
	{
		Pot* pot = GetPileWood(*coords);
		if (pot == NULL)
		{
			CreatePilesOfWood();
			pot = GetPileWood(*coords);
		}
		if (pot)
		{
			added = pot->JustAddResource(type, amount, poisoned);
		}
	}
	Town* town = GetTown();
	if (town)
	{
		town->stats.TotalBuildingSiteCost += (float)added;
	}
	return added;
}

uint32_t CitadelBuildingSite::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status,
                                             bool* poisoned)
{
	if (status != NULL)
	{
		return BuildingSite::RemoveResource(type, amount, status, poisoned);
	}
	uint32_t removed = 0;
	for (uint32_t i = 0; i < CITADEL_WOOD_PILE_COUNT && amount > 0; i++)
	{
		if (WoodPiles[i] != NULL && WoodPiles[i]->IsAvailable() == true)
		{
			uint32_t got = WoodPiles[i]->JustRemoveResource(type, amount, NULL);
			removed += got;
			amount -= got;
		}
	}
	return removed;
}

void CitadelBuildingSite::CreatePileWood() {}

MapCoords CitadelBuildingSite::GetResourcePosAndYAngle(RESOURCE_TYPE type, unsigned long index, float* y_angle)
{
	float     angle = GetRootBuilding()->GetCitadel()->GetWorshipSiteAngle(index) - CITADEL_WOOD_PILE_ANGLE_OFFSET;
	MapCoords position = GetRootBuilding()->Pos;
	position += GUtils::GetPosFromAngle(angle, CITADEL_WOOD_PILE_DISTANCE);
	return position;
}

Pot* CitadelBuildingSite::GetPileWood(const MapCoords& coords)
{
	if (&coords != NULL)
	{
		float closestDistance = MaxFloat;
		Pot*  closest = NULL;
		for (uint32_t i = 0; i < CITADEL_WOOD_PILE_COUNT; i++)
		{
			if (WoodPiles[i] != NULL)
			{
				float distance = (float)(unsigned long)GUtils::GetDistance(&coords, &WoodPiles[i]->Pos);
				if (distance < closestDistance)
				{
					closestDistance = distance;
					closest = WoodPiles[i];
				}
			}
		}
		return closest;
	}
	return NULL;
}

bool32_t CitadelBuildingSite::IsLinkedToThisBuildingSite(Pot* pot)
{
	for (uint32_t i = 0; i < CITADEL_WOOD_PILE_COUNT; i++)
	{
		if (WoodPiles[i] == pot)
		{
			return true;
		}
	}
	return false;
}

void CitadelBuildingSite::RemovePotFromStructure(PotStructure* structure)
{
	for (uint32_t i = 0; i < CITADEL_WOOD_PILE_COUNT; i++)
	{
		if (WoodPiles[i] == structure)
		{
			WoodPiles[i] = NULL;
		}
	}
}

bool32_t CitadelBuildingSite::Save(GameOSFile& file)
{
	if (BuildingSite::Save(file))
	{
		file.WritePtrArray((GameThing**)WoodPiles, CITADEL_WOOD_PILE_COUNT);
		return true;
	}
	return false;
}

bool32_t CitadelBuildingSite::Load(GameOSFile& file)
{
	if (BuildingSite::Load(file))
	{
		file.ReadPtrArray((GameThing**)WoodPiles);
		return true;
	}
	return false;
}

void CitadelBuildingSite::Process()
{
	for (uint32_t i = 0; i < CITADEL_WOOD_PILE_COUNT; i++)
	{
		if (WoodPiles[i] != NULL && WoodPiles[i]->IsAvailable() != true)
		{
			WoodPiles[i] = NULL;
		}
	}
}

StandardBuildingSite::StandardBuildingSite()
{
	SetToZero();
}

StandardBuildingSite::~StandardBuildingSite() {}

void StandardBuildingSite::CreatePileWood()
{
	if (dynamic_cast<StandardBuildingSite*>(this) != NULL && GetPileWood(*(const MapCoords*)NULL) == NULL &&
	    IsAvailable())
	{
		float     yAngle = 0.0f;
		MapCoords position = GetResourcePosAndYAngle(RESOURCE_TYPE_WOOD, -1, &yAngle);
		SetPileWood(Pot::Create(position, &GPotInfo::GetInfo()[POT_INFO_MAGIC_WOOD], 0, GetBuilding(), NULL, false,
		                        yAngle, 1.0f, true));
	}
}

void StandardBuildingSite::RemovePotFromStructure(PotStructure* structure)
{
	if (GetPileWood(*(const MapCoords*)NULL) == structure)
	{
		SetPileWood(NULL);
	}
}

bool32_t StandardBuildingSite::IsLinkedToThisBuildingSite(Pot* pot)
{
	return WoodPile == pot;
}

bool32_t StandardBuildingSite::Save(GameOSFile& file)
{
	if (BuildingSite::Save(file))
	{
		file.WritePtr(WoodPile);
		return true;
	}
	return false;
}

bool32_t StandardBuildingSite::Load(GameOSFile& file)
{
	if (BuildingSite::Load(file))
	{
		file.ReadPtr((GameThing**)&WoodPile);
		return true;
	}
	return false;
}

void StandardBuildingSite::Process()
{
	if (WoodPile != NULL && WoodPile->IsAvailable() != true)
	{
		WoodPile = NULL;
	}
}

WorkshopBuildingSite::WorkshopBuildingSite() {}

WorkshopBuildingSite::~WorkshopBuildingSite() {}

Pot* WorkshopBuildingSite::GetPileWood(const MapCoords& coords)
{
	if (RootBuilding.Get() != NULL && !RootBuilding->IsWorkshop())
	{
		return NULL;
	}
	if (RootBuilding.Get() != NULL)
	{
		return ((Workshop*)RootBuilding.Get())->WoodPile;
	}
	return NULL;
}

void WorkshopBuildingSite::SetPileWood(Pot* pot) {}

void WorkshopBuildingSite::CreatePileWood()
{
	if (GetPileWood(*(const MapCoords*)NULL) == NULL && IsAvailable())
	{
		float     yAngle = 0.0f;
		MapCoords position = GetResourcePosAndYAngle(RESOURCE_TYPE_WOOD, -1, &yAngle);
		SetPileWood(Pot::Create(position, &GPotInfo::GetInfo()[POT_INFO_MAGIC_WOOD], 0, GetBuilding(), NULL, false,
		                        yAngle, 1.0f, true));
	}
}

void WorkshopBuildingSite::RemovePotFromStructure(PotStructure* structure) {}

MapCoords WorkshopBuildingSite::GetResourcePosAndYAngle(RESOURCE_TYPE type, unsigned long index, float* y_angle)
{
	if (type == RESOURCE_TYPE_WOOD)
	{
		Pot* pile = GetPileWood(*(const MapCoords*)NULL);
		if (pile)
		{
			if (y_angle)
			{
				*y_angle = pile->GetYAngle();
			}
			return pile->Pos;
		}
		else if (RootBuilding.Get() != NULL)
		{
			return ((Workshop*)RootBuilding.Get())->GetResourcePosAndYAngle(type, index, y_angle);
		}
	}
	return RootBuilding->Pos;
}

uint32_t WorkshopBuildingSite::AddResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status, bool poisoned,
                                           const MapCoords* coords, int from_other_player)
{
	if (RootBuilding.Get() != NULL)
	{
		return RootBuilding->AddResource(type, amount, status, poisoned, coords, 0);
	}
	return 0;
}

uint32_t WorkshopBuildingSite::RemoveResource(RESOURCE_TYPE type, uint32_t amount, GInterfaceStatus* status,
                                              bool* poisoned)
{
	if (RootBuilding.Get() != NULL)
	{
		return RootBuilding->RemoveResource(type, amount, status, poisoned);
	}
	return 0;
}

uint32_t WorkshopBuildingSite::GetWoodForStats()
{
	return 0;
}

void WorkshopBuildingSite::Process() {}
