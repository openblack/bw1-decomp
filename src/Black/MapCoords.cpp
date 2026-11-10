#include "MaxFloat.h"                  /* For MaxFloat */
#include "MapCellConstants.h"          /* For MetresPerMapCell */
#include "GameTimeConstants.h"         /* For SecondsPerYear */
#include "CreatureAttitudeConstants.h" /* For AttitudeFeedbackDecay */
#include "MapCoords.h"

#include <math.h>   /* For ceil */
#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For atof */
#include <string.h> /* For strchr */

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DLine.h>   /* For LH3DLine */
#include <Lionhead/LH3DLib/development/LH3DMesh.h>   /* For LH3DMesh */

#include "ColourConstants.h" /* For White */

#include "Alignment.h"              /* For class GAlignment */
#include "Citadel.h"                /* For class Citadel */
#include "Climate.h"                /* For class GClimate */
#include "Collide.h"                /* For struct NewCollideDescriptor */
#include "Creature.h"               /* For class Creature */
#include "Creature3D.h"             /* For class LH3DCreature */
#include "CreatureExplorationMap.h" /* For class CreatureGlobalExplorationMap */
#include "CreaturePen.h"            /* For class CreaturePen */
#include "Game.h"                   /* For GGame::g_game */
#include "Game3DObject.h"           /* For class Game3DObject */
#include "Influence.h"              /* For class Influence */
#include "Landscape.h"              /* For class GLandscape */
#include "Living.h"                 /* For class Living */
#include "Map.h"                    /* For struct MapCell */
#include "MapCoordsMeters.h"        /* For MapCoords::MetersX */
#include "MultiMapFixed.h"          /* For class MultiMapFixed */
#include "Object.h"                 /* For class Object */
#include "Player.h"                 /* For class GPlayer */
#include "PlayerComputer.h"         /* For class GComputerPlayer */
#include "Rand.h"                   /* For GAME_RAND */
#include "RoutePlan.h"              /* For LandAvoid */
#include "Town.h"                   /* For class Town */
#include "Utils.h"                  /* For struct GUtils */
#include "WorshipSite.h"            /* For class WorshipSite */
#include "WorshipSpellIcon.h"       /* For class WorshipSpellIcon */

#define MAX_ALTITUDE 1000.0f

#define FIND_OBJECT_MIN_CELLS      3
#define FIND_OBJECT_DISTANCE_SCALE 1.5f

#define BUILDING_SITE_MAX_DISTANCE   99999.0f
#define BUILDING_SITE_SEARCH_CELLS   9
#define BUILDING_SITE_COLLIDE_RADIUS 0.3f

#define WORSHIP_SITE_CENTRE_DISTANCE 5.0f

#define ACTIVITY_CELL_SIZE      10
#define ACTIVITY_CLEAR_DISTANCE 5.0f
#define CLIMATE_MAX_DISTANCE    999999

struct MapCellNeighbours
{
	// BW1W120 00930060
	static const float Offsets[4][2];
};

const float MapCellNeighbours::Offsets[4][2] = {
	{9.9999f, 0.0f},  //
	{-9.9999f, 0.0f}, //
	{0.0f, 9.9999f},  //
	{0.0f, -9.9999f}, //
};
const float DefaultTemperature = 24.7f;

// Inliner IL size: 49
// BW1W120 inlined BW1M119 inlined
inline bool32_t IsCellCoastal(long x, long z)
{
	LandCell* cell = LH3DIsland::GetCell(x, z);
	if (cell != NULL)
	{
		return cell->IsCoastal();
	}
	return false;
}

void MapCoords::SetupMapXZ(long x, long z)
{
	SetMapX(x);
	SetMapZ(z);
	SetAltitude(0.0f);
	FractionX = (GGame::g_game->map.BlocksPerCell / 2) * GGame::g_game->map.BlockSize[0];
	FractionZ = (GGame::g_game->map.BlocksPerCell / 2) * GGame::g_game->map.BlockSize[1];
}

uint32_t MapCoords::GetNearestTown(Town** town, unsigned long* distance, const Town* exclude,
                                   TRIBE_TYPE tribe_type) const
{
	unsigned long nearestDistance = MAP_COORDS_MAX_TOWN_DISTANCE;
	Town*         nearest = NULL;
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		for (Town* current = player->towns.head; current != NULL; current = current->next)
		{
			long          dx = abs(MapX() - current->Pos.MapX());
			long          dz = abs(MapZ() - current->Pos.MapZ());
			unsigned long currentDistance;
			if (dx < dz)
			{
				currentDistance = (dx >> 1) + dz;
			}
			else
			{
				currentDistance = (dz >> 1) + dx;
			}
			if (currentDistance < nearestDistance && current != exclude && current->tribe_type != tribe_type)
			{
				nearestDistance = currentDistance;
				nearest = current;
			}
		}
	}
	if (nearest == NULL)
	{
		return NEAREST_TOWN_NONE;
	}
	*town = nearest;
	*distance = nearestDistance;
	if ((unsigned long)MapX() + MAP_COORDS_TOWN_AREA_MARGIN >= nearest->AreaMin.MapX() &&
	    (unsigned long)MapX() - MAP_COORDS_TOWN_AREA_MARGIN <= nearest->AreaMax.MapX() &&
	    (unsigned long)MapZ() + MAP_COORDS_TOWN_AREA_MARGIN >= nearest->AreaMin.MapZ() &&
	    (unsigned long)MapZ() - MAP_COORDS_TOWN_AREA_MARGIN <= nearest->AreaMax.MapZ())
	{
		return NEAREST_TOWN_INSIDE_AREA;
	}
	return NEAREST_TOWN_OUTSIDE_AREA;
}

Town* MapCoords::GetNearestTown(float t_max) const
{
	float nearestDistance = t_max;
	Town* nearest = NULL;
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		for (Town* town = player->towns.head; town != NULL; town = town->next)
		{
			float distance = GetDistance(town->Pos);
			if (distance < nearestDistance)
			{
				nearestDistance = distance;
				nearest = town;
			}
		}
	}
	return nearest;
}

Town* MapCoords::GetNearestTownWithTownCentre(float t_max) const
{
	float nearestDistance = t_max;
	Town* nearest = NULL;
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		for (Town* town = player->towns.head; town != NULL; town = town->next)
		{
			float distance = GetDistance(town->Pos);
			if (distance < nearestDistance && (town->town_centre != NULL || town->IsBuildingTownCentre()))
			{
				nearestDistance = distance;
				nearest = town;
			}
		}
	}
	return nearest;
}

Citadel* MapCoords::GetNearestCitadel(float t_max) const
{
	float    nearestDistance = t_max;
	Citadel* nearest = NULL;
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		Citadel* citadel = player->GetCitadel();
		if (citadel != NULL)
		{
			float distance = GetDistance(citadel->Pos);
			if (distance < nearestDistance)
			{
				nearestDistance = distance;
				nearest = citadel;
			}
		}
	}
	return nearest;
}

CreaturePen* MapCoords::FindCreaturePen() const
{
	if (ToMap() != NULL)
	{
		Object* object = ToMap()->FindTypeOnMap(OBJECT_TYPE_CITADEL, NULL);
		if (object != NULL)
		{
			CreaturePen* pen = dynamic_cast<CreaturePen*>(object);
			if (pen != NULL)
			{
				return pen;
			}
		}
	}
	return NULL;
}

float MapCoords::GetAltitudeOfHighestObjectExcluding(Object* exclude, bool ignore_living_and_moving) const
{
	float highest = 0.0f;
	float radius = exclude->Get2DRadius();
	float x = MetresPerMapCell * (exclude->Pos.BlockX() / MAP_COORDS_UNITS_PER_CELL);
	float z = MetresPerMapCell * (exclude->Pos.BlockZ() / MAP_COORDS_UNITS_PER_CELL);
	if (InBounds())
	{
		for (MapCellIterator it = ToMap()->GetFirstIterator(); it.object != NULL;
		     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
		{
			if (exclude != it.object)
			{
				if (!ignore_living_and_moving || (!it.object->IsLiving() && !it.object->IsMoving()))
				{
					float top = it.object->GetTopPos();
					if (top > highest)
					{
						float dx = x - MetresPerMapCell * (it.object->Pos.BlockX() / MAP_COORDS_UNITS_PER_CELL);
						float dz = z - MetresPerMapCell * (it.object->Pos.BlockZ() / MAP_COORDS_UNITS_PER_CELL);
						if (it.object->Get2DRadius() * it.object->Get2DRadius() + radius * radius > dx * dx + dz * dz)
						{
							highest = top;
						}
					}
				}
			}
		}
	}
	return highest;
}

WorshipSite* MapCoords::FindWorshipSite() const
{
	if (ToMap() != NULL)
	{
		Object* object = ToMap()->FindTypeOnMap(OBJECT_TYPE_CITADEL, NULL);
		if (object != NULL)
		{
			WorshipSite* site = dynamic_cast<WorshipSite*>(object);
			if (site != NULL)
			{
				return site;
			}
			WorshipSpellIcon* icon = dynamic_cast<WorshipSpellIcon*>(object);
			if (icon != NULL)
			{
				return icon->GetWorshipSite();
			}
		}
	}
	return NULL;
}

void MapCoords::ShowMapCell(LH3DColor* colour) const
{
	if (ToMap() != NULL)
	{
		ToMap()->ShowMapCell(colour);
	}
}

void MapCoords::ShowMeshFootprint(MESH_LIST mesh, int, float y_angle, float scale, int, LH3DColor* colour) const
{
	static Game3DObject* object = NULL;
	MapCoords            coords = *this;
	if (object == NULL)
	{
		object = Game3DObject::Create(coords, LH3DObject::STATIC, mesh, y_angle, scale);
	}
	else
	{
		SetPositionOnMap(object, coords, y_angle, scale);
		object->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
	}
	if (object != NULL)
	{
		ShowFootprint(object, colour);
		object->Release();
		object = NULL;
	}
}

void MapCoords::ShowFootprint(Game3DObject* object, LH3DColor* colour) const
{
	NewCollideDescriptor descriptor(object);
	if (object != NULL)
	{
		for (MapCell* cell = descriptor.GetNext(); cell != NULL; cell = descriptor.GetNext())
		{
			cell->ShowMapCell(colour);
		}
	}
}

void MapCoords::ShowSpiral(unsigned long count, LH3DColor* colour) const
{
	MapCoords coords = *this;
	long      spiralX = 1;
	long      spiralZ = 1;
	for (; count != 0; count--)
	{
		if (coords.InBounds() == true)
		{
			coords.ShowMapCell(colour);
		}
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
}

void MapCoords::ShowRing(unsigned long inner_radius, unsigned long outer_radius, LH3DColor* colour) const
{
	MapCoords     coords = *this;
	unsigned long count = (outer_radius + 10) * (outer_radius + 20) * 4 / 100;
	long          spiralX = 1;
	long          spiralZ = 1;
	for (; count != 0; count--)
	{
		if (coords.InBounds() == true)
		{
			float distance = GetDistance(coords);
			if (distance > inner_radius && distance < outer_radius)
			{
				coords.ShowMapCell(colour);
			}
		}
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
}

char* MapCoords::ConvertToText(char* buff)
{
	sprintf(buff, "\"%0.2f,%0.2f\"", MetersX(), MetersZ());
	return buff;
}

void MapCoords::DrawCircle(const MapCoords& centre, float radius, unsigned long segments, LH3DColor* colour,
                           float height)
{
	if (segments > 0)
	{
		LHPoint centrePoint;
		GLandscape::ConvertMapCoordToLandscapePoint(centre, centrePoint);
		float   step = 1.0f / (segments + 1.0f);
		LHPoint from(centrePoint.x + radius, centrePoint.y, centrePoint.z);
		from.y = LH3DIsland::GetAltitude(from) + height;
		for (int i = 0; i < (int)segments; i++)
		{
			float   angle = (i + 1) * step * (2.0f * PI_F);
			LHPoint offset(cos(angle) * radius, 0.0f, sin(angle) * radius);
			LHPoint to = centrePoint + offset;
			to.y = (LH3DIsland::GetAltitude(to)) + height;
			LH3DLine::AddLine(from, to, colour, NULL);
			from = to;
		}
	}
}

void MapCoords::DrawCircle(float radius, unsigned long segments, LH3DColor* colour, float height) const
{
	DrawCircle(*this, radius, segments, colour, height);
}

bool32_t MapCoords::DoesRegionContainObjectOfType(bool32_t (Object::*test)() const)
{
	short startX = MapX() - (MapX() & (EXPLORATION_REGION_CELLS - 1));
	short startZ = MapZ() - (MapZ() & (EXPLORATION_REGION_CELLS - 1));
	for (short x = startX; x < startX + EXPLORATION_REGION_CELLS; x++)
	{
		for (short z = startZ; z < startZ + EXPLORATION_REGION_CELLS; z++)
		{
			if (GGame::g_game->map.InBounds(x, z))
			{
				for (MapCellIterator it = GGame::g_game->map.ToMap(x, z)->GetFirstIterator(); it.object != NULL;
				     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
				{
					if ((it.object->*test)())
					{
						return true;
					}
				}
			}
		}
	}
	return false;
}

bool32_t MapCoords::DoesRegionContainMapCellSatisfyingTest(bool32_t (MapCoords::*test)() const)
{
	short     startX = MapX() - (MapX() & (EXPLORATION_REGION_CELLS - 1));
	short     startZ = MapZ() - (MapZ() & (EXPLORATION_REGION_CELLS - 1));
	MapCoords coords;
	for (short x = startX; x < startX + EXPLORATION_REGION_CELLS; x++)
	{
		for (short z = startZ; z < startZ + EXPLORATION_REGION_CELLS; z++)
		{
			coords.SetMapX(x);
			coords.SetMapZ(z);
			if ((coords.*test)())
			{
				return true;
			}
		}
	}
	return false;
}

bool32_t MapCoords::DoesRegionContainHill()
{
	JustMapXZ region;
	JustMapXZ neighbour;
	region.x = MapX() / EXPLORATION_REGION_CELLS;
	region.z = MapZ() / EXPLORATION_REGION_CELLS;
	if (CreatureGlobalExplorationMap::GlobalMap.GetRegionHighestAltitude(region.x, region.z) >
	    CreatureGlobalExplorationMap::GlobalMap.HighestAltitude * 0.5f)
	{
		for (int i = 0; i < ARRAY_SIZE(MapXZDirections); i++)
		{
			neighbour.x = region.x + MapXZDirections[i].x;
			neighbour.z = region.z + MapXZDirections[i].z;
			if (neighbour.InExplorationMapBounds())
			{
				if (CreatureGlobalExplorationMap::GlobalMap.GetRegionHighestAltitude(region.x, region.z) <
				    CreatureGlobalExplorationMap::GlobalMap.GetRegionHighestAltitude(neighbour.x, neighbour.z))
				{
					return false;
				}
			}
		}
		return true;
	}
	return false;
}

void MapCoords::GetExactMapSquareForObjectOfType(bool32_t (Object::*test)() const)
{
	MapCoords* result = this;
	short      startX = MapX() - (MapX() & (EXPLORATION_REGION_CELLS - 1));
	short      startZ = MapZ() - (MapZ() & (EXPLORATION_REGION_CELLS - 1));
	for (short x = startX; x < startX + EXPLORATION_REGION_CELLS; x++)
	{
		for (short z = startZ; z < startZ + EXPLORATION_REGION_CELLS; z++)
		{
			if (GGame::g_game->map.InBounds(x, z))
			{
				for (MapCellIterator it = GGame::g_game->map.ToMap(x, z)->GetFirstIterator(); it.object != NULL;
				     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
				{
					if ((it.object->*test)())
					{
						result->SetMapX(x);
						result->SetMapZ(z);
						return;
					}
				}
			}
		}
	}
}

void MapCoords::GetExactMapSquareSatisfyingTest(bool32_t (MapCoords::*test)() const)
{
	MapCoords coords;
	short     startX = MapX() - (MapX() & (EXPLORATION_REGION_CELLS - 1));
	short     startZ = MapZ() - (MapZ() & (EXPLORATION_REGION_CELLS - 1));
	for (short x = startX; x < startX + EXPLORATION_REGION_CELLS; x++)
	{
		for (short z = startZ; z < startZ + EXPLORATION_REGION_CELLS; z++)
		{
			if (GGame::g_game->map.InBounds(x, z))
			{
				coords.SetMapX(x);
				coords.SetMapZ(z);
				if ((coords.*test)())
				{
					SetMapX(x);
					SetMapZ(z);
					return;
				}
			}
		}
	}
}

void MapCoords::Interpolate(const MapCoords& from, float amount)
{
	SetWholeX((long)((unsigned long)(WholeX() - from.WholeX()) * amount + from.x));
	SetWholeZ((long)((unsigned long)(WholeZ() - from.WholeZ()) * amount + from.z));
	SetAltitude((Altitude() - from.Altitude()) * amount + from.Altitude());
}

MapCoords::MapCoords(unsigned short cell_x, unsigned short cell_z)
{
	SetMapX(cell_x);
	SetMapZ(cell_z);
	SetAltitude(0.0f);
	CentreOnMap();
}

MapCoords::MapCoords(JustMapXZ* xz)
{
	SetMapX(xz->x);
	SetMapZ(xz->z);
	SetAltitude(0.0f);
	CentreOnMap();
}

MapCoords::MapCoords(JustWholeMapXZ* xz)
{
	SetMapX(xz->CellX);
	SetMapZ(xz->CellZ);
	SetAltitude(0.0f);
	FractionX = xz->FractionX;
	FractionZ = xz->FractionZ;
}

MapCoords::MapCoords(JustWholeMapXZ& xz)
{
	SetMapX(xz.CellX);
	SetMapZ(xz.CellZ);
	SetAltitude(0.0f);
	FractionX = xz.FractionX;
	FractionZ = xz.FractionZ;
}

MapCoords::MapCoords(unsigned long cell_index)
{
	SetMapX(cell_index / GGame::g_game->map.CellExtentZx[0]);
	SetMapZ(cell_index % GGame::g_game->map.CellExtentZx[0]);
	SetAltitude(0.0f);
	CentreOnMap();
}

MapCoords::MapCoords(MapCell* cell)
{
	SetMapX(cell->GetX());
	SetMapZ(cell->GetZ());
	SetAltitude(0.0f);
	CentreOnMap();
}

MapCoords::MapCoords(const LHPoint& point)
{
	Set(point);
}

MapCoords::MapCoords(JustXZ* xz)
{
	SetWholeX(xz->x);
	SetWholeZ(xz->z);
	SetAltitude(0.0f);
}

MapCoords::MapCoords(long x, long z, float altitude)
{
	SetWholeX(x);
	SetWholeZ(z);
	SetAltitude(altitude);
}

MapCoords::MapCoords(char* str)
{
	Set(str);
}

void MapCoords::Set(MapCell* cell)
{
	SetMapX(cell->GetX());
	SetMapZ(cell->GetZ());
	SetAltitude(0.0f);
	CentreOnMap();
}

void MapCoords::Set(JustMapXZ* xz)
{
	SetMapX(xz->x);
	SetMapZ(xz->z);
	SetAltitude(0.0f);
	CentreOnMap();
}

void MapCoords::Set(JustWholeMapXZ* xz)
{
	SetWholeX(xz->x);
	SetWholeZ(xz->z);
	SetAltitude(0.0f);
}

void MapCoords::Set(char* str)
{
	char* comma = strchr(str, ',');
	SetMetersX(atof(str));
	SetAltitude(0.0f);
	if (comma != NULL)
	{
		SetMetersZ(atof(comma + 1));
		comma = strchr(comma + 1, ',');
		if (comma != NULL)
		{
			SetAltitude(atof(comma + 1));
		}
	}
	else
	{
		SetMetersZ(0.0f);
	}
}

void MapCoords::Set(const MapCoords& other)
{
	SetWholeX(other.WholeX());
	SetWholeZ(other.WholeZ());
	SetAltitude(other.Altitude());
}

void MapCoords::Set(const LHPoint& point)
{
	SetWholeX((long)(point.x / (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL)));
	SetWholeZ((long)(point.z / (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL)));
	SetAltitude(0.0f);
	float landAltitude = LH3DIsland::GetAltitude(*this);
	SetAltitude(point.y - landAltitude);
}

long MapCoords::GetWholeDistance(const MapCoords& other) const
{
	return GUtils::GetDistance(*this, other);
}

int MapCoords::Collide(COLLIDE_TYPE type) const
{
	return Collide() & type;
}

int MapCoords::Collide() const
{
	if (ToMap() == NULL)
	{
		return -1;
	}
	return ToMap()->Collide(*this);
}

long MapCoords::GetCollideStep() const
{
	if (ToMap() == NULL)
	{
		return 0;
	}
	return ToMap()->IsFixed() ? MAP_COORDS_UNITS_PER_BLOCK : MAP_COORDS_FRACTION_MAX + 1;
}

long MapCoords::GetGlobalCollideStep() const
{
	return GMap::GetCollideStep();
}

MapCell* MapCoords::ToMap() const
{
	return GGame::g_game->map.ToMap(MapX(), MapZ());
}

unsigned long MapCoords::GetCellIndex() const
{
	return MapX() * GGame::g_game->map.CellExtentZx[0] + MapZ();
}

Object* MapCoords::GetFirstObjectMobile() const
{
	if (ToMap() == NULL)
	{
		return NULL;
	}
	return ToMap()->FirstObjectMobile;
}

Object* MapCoords::GetFirstObjectFixed() const
{
	if (ToMap() == NULL)
	{
		return NULL;
	}
	return ToMap()->FirstObjectFixed;
}

MapCellIterator MapCoords::GetFirstIterator() const
{
	return ToMap()->GetFirstIterator();
}

SafeMapCellIterator MapCoords::GetFirstSafeIterator() const
{
	MapCell*            cell = ToMap();
	SafeMapCellIterator iter;
	iter.object = cell->GetFirstObjectFixed();
	if (iter.object == NULL)
	{
		iter.object = cell->GetFirstObjectMobile();
	}
	iter.next = iter.object != NULL ? iter.object->GetMapChild(*cell) : NULL;
	iter.IsFixed = true;
	iter.cell = cell;
	iter.MoveToMobileObsIfNeededAndPoss();
	return iter;
}

void MapCoords::SetFirstObjectMobile(Object* object) const
{
	if (ToMap() != NULL)
	{
		ToMap()->SetFirstObjectMobile(object);
	}
}

void MapCoords::SetFirstObjectFixed(Object* object) const
{
	if (ToMap() != NULL)
	{
		ToMap()->SetFirstObjectFixed(object);
	}
}

bool32_t MapCoords::IsWater() const
{
	return LH3DIsland::IsWater(MapX(), MapZ());
}

bool32_t MapCoords::IsDryLand() const
{
	uint8_t   altitude;
	LandCell* cell = LH3DIsland::GetCell(MapX(), MapZ());
	if (cell != NULL)
	{
		altitude = cell->GetAltitude();
	}
	else
	{
		altitude = 0;
	}
	return altitude >= LAND_CELL_DRY_ALTITUDE;
}

bool32_t MapCoords::IsCoastal() const
{
	return IsCellCoastal(MapX(), MapZ());
}

bool32_t MapCoords::IsLand() const
{
	LandCell* cell = LH3DIsland::GetCell(MapX(), MapZ());
	if (cell != NULL)
	{
		return cell->IsLand();
	}
	return false;
}

bool32_t MapCoords::IsFixed() const
{
	if (ToMap() == NULL)
	{
		return false;
	}
	return ToMap()->IsFixed();
}

void MapCoords::AddAngleBigDistance(unsigned short angle, long distance)
{
	AddToWholeX(GUtils::GetXByAngleBigDistance(angle, distance));
	AddToWholeZ(GUtils::GetZByAngleBigDistance(angle, distance));
}

void MapCoords::AddAngleDistance(unsigned short angle, float distance)
{
	AddToWholeX((long)GUtils::GetXByAngle(angle, distance));
	AddToWholeZ((long)GUtils::GetZByAngle(angle, distance));
}

GPlayer* MapCoords::CalculateMostInfluentialPlayer() const
{
	return Influence::CalculateMostInfluentialPlayer(*this, NULL);
}

bool32_t MapCoords::IsNavigable() const
{
	int collide = Collide();
	if ((collide & COLLIDE_TYPE_LAND) && !(collide & COLLIDE_TYPE_FIXED))
	{
		return true;
	}
	return false;
}

bool32_t MapCoords::IsSuitableForFixedAbodeInTown(MESH_LIST mesh, const Town* town, float y_angle, float scale) const
{
	if (town != NULL)
	{
		Town*         nearest;
		unsigned long distance;
		if (GetNearestTown(&nearest, &distance, town, TRIBE_TYPE_NONE) == NEAREST_TOWN_INSIDE_AREA)
		{
			return MAP_COORDS_IN_OTHER_TOWN;
		}
	}
	return IsSuitableForFixed(mesh, y_angle, scale);
}

bool32_t MapCoords::IsSuitableForFixed(MESH_LIST mesh, float y_angle, float scale) const
{
	static Game3DObject* object = NULL;
	MapCoords            coords = *this;
	if (object == NULL)
	{
		object = Game3DObject::Create(coords, LH3DObject::STATIC, mesh, y_angle, scale);
	}
	else
	{
		object->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
		SetPositionOnMap(object, coords, y_angle, scale);
	}
	if (object != NULL)
	{
		return IsSuitableForFixed(object);
	}
	return false;
}

bool32_t MapCoords::IsSuitableForPlannedFixed(MESH_LIST mesh, float y_angle, float scale) const
{
	static Game3DObject* object = NULL;
	MapCoords            coords = *this;
	if (object == NULL)
	{
		object = Game3DObject::Create(coords, LH3DObject::STATIC, mesh, y_angle, scale);
	}
	else
	{
		object->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
		SetPositionOnMap(object, coords, y_angle, scale);
	}
	if (object != NULL)
	{
		return IsSuitableForAbodeBuildFixed(object, y_angle, scale, NULL);
	}
	return false;
}

bool32_t MapCoords::IsSuitableForAbodeBuildFixed(Game3DObject* object, float y_angle, float scale, Object* ignore) const
{
	SetPositionOnMap(object, *this, y_angle, scale);
	NewCollideDescriptor descriptor(object);
	float radius = max(object->GetMesh()->GetBoundingBox().size.x, object->GetMesh()->GetBoundingBox().size.z) * scale;
	ToMap();
	for (MapCell* cell = descriptor.GetNext(); cell != NULL; cell = descriptor.GetNext())
	{
		if (!cell->InBounds())
		{
			return false;
		}
		bool32_t water = LH3DIsland::IsWater(MapX(), MapZ());
		if (water)
		{
			return false;
		}
		if (IsCellCoastal(MapX(), MapZ()))
		{
			return false;
		}
		for (Object* fixed = cell->FirstObjectFixed; fixed != NULL; fixed = fixed->GetMapChild(*cell))
		{
			if ((fixed->Flags & GAME_THING_WITH_POS_FLAG_FIXED) && fixed->IsSolidToNewAbode() && fixed != ignore)
			{
				float distance = GetDistance(fixed->Pos);
				if (fixed->Get2DRadius() + radius > distance)
				{
					return false;
				}
			}
		}
	}
	return true;
}

bool32_t MapCoords::IsSuitableForFixed(Game3DObject* object) const
{
	NewCollideDescriptor descriptor(object);
	float                scale = object->scale;
	float radius = max(object->GetMesh()->GetBoundingBox().size.x, object->GetMesh()->GetBoundingBox().size.z) * scale;
	for (MapCell* cell = descriptor.GetNext(); cell != NULL; cell = descriptor.GetNext())
	{
		if (!cell->InBounds())
		{
			return false;
		}
		bool32_t water = LH3DIsland::IsWater(MapX(), MapZ());
		if (water)
		{
			return false;
		}
		for (Object* fixed = cell->GetFirstObjectFixed(); fixed != NULL; fixed = fixed->GetMapChild(*cell))
		{
			if ((fixed->Flags & GAME_THING_WITH_POS_FLAG_FIXED) && fixed->IsSolidToNewAbode())
			{
				float distance = GetDistance(fixed->Pos);
				if (fixed->Get2DRadius() + radius > distance)
				{
					return false;
				}
			}
		}
	}
	return true;
}

LHPoint MapCoords::ConvertToLHPoint() const
{
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(*this, point);
	return point;
}

void MapCoords::ConvertToLHPoint(LHPoint& point) const
{
	GLandscape::ConvertMapCoordToLandscapePoint(*this, point);
}

void MapCoords::MakeInBounds()
{
	if ((short)MapX() < 0)
	{
		SetMapX(0);
	}
	else if ((short)MapX() > (long)(GGame::g_game->map.CellExtentZx[1] - 1))
	{
		SetMapX(GGame::g_game->map.CellExtentZx[1] - 1);
	}
	if ((short)MapZ() < 0)
	{
		SetMapZ(0);
	}
	else if ((short)MapZ() > (long)(GGame::g_game->map.CellExtentZx[0] - 1))
	{
		SetMapZ(GGame::g_game->map.CellExtentZx[0] - 1);
	}
}

bool32_t MapCoords::InBounds() const
{
	return GGame::g_game->map.InBounds(MapX(), MapZ());
}

GameThingWithPos* MapCoords::FindForScript(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                                           SCRIPT_OBJECT_TYPE type, uint32_t subtype) const
{
	for (MapCellIterator it = GetFirstIterator(); it.object != NULL;
	     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
	{
		if (callback(it.object, type, subtype))
		{
			return it.object;
		}
	}
	return NULL;
}

GameThingWithPos* MapCoords::FindNearForScript(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                                               SCRIPT_OBJECT_TYPE type, uint32_t subtype, float radius) const
{
	MapCoords         min = *this;
	MapCoords         max = *this;
	MapCoords         current;
	float             nearestDistance = MaxFloat;
	GameThingWithPos* nearest = NULL;
	min.SetMetersX(min.MetersX() - radius);
	min.SetMetersZ(min.MetersZ() - radius);
	max.SetMetersX(max.MetersX() + radius);
	max.SetMetersZ(max.MetersZ() + radius);
	for (short x = min.MapX(); x <= (short)max.MapX(); x++)
	{
		for (short z = min.MapZ(); z <= (short)max.MapZ(); z++)
		{
			current.SetupMapXZ(x, z);
			if (current.InBounds())
			{
				for (MapCellIterator it = current.GetFirstIterator(); it.object != NULL;
				     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
				{
					if (callback(it.object, type, subtype))
					{
						float distance;
						if (it.object->IsWorshipSite())
						{
							distance = GetDistance(((WorshipSite*)it.object)->GetTotemPos());
						}
						else
						{
							distance = GetDistance(it.object->Pos);
						}
						if (distance < nearestDistance)
						{
							nearestDistance = distance;
							nearest = it.object;
						}
					}
				}
			}
		}
	}
	return nearest;
}

Object* MapCoords::FindType(OBJECT_TYPE type, Object* object) const
{
	if (ToMap() == NULL)
	{
		return NULL;
	}
	return ToMap()->FindTypeOnMap(type, object);
}

Object* MapCoords::FindNearType(OBJECT_TYPE type, float radius) const
{
	MapCoords min = *this;
	MapCoords max = *this;
	MapCoords current;
	float     nearestDistance = MaxFloat;
	Object*   nearest = NULL;
	min.SetMetersX(min.MetersX() - radius);
	min.SetMetersZ(min.MetersZ() - radius);
	max.SetMetersX(max.MetersX() + radius);
	max.SetMetersZ(max.MetersZ() + radius);
	short maxX = max.MapX();
	short maxZ = max.MapZ();
	for (short x = min.MapX(); x <= maxX; x++)
	{
		for (short z = min.MapZ(); z <= maxZ; z++)
		{
			current.SetupMapXZ(x, z);
			if (current.InBounds())
			{
				if (MapCell::DoesObjectTypeCountAsFixed(type))
				{
					for (Object* object = current.GetFirstObjectFixed(); object != NULL;
					     object = object->GetMapChild(*current.ToMap()))
					{
						if (object->info->type == type || type == OBJECT_TYPE_ANY)
						{
							float distance = GetDistance(object->Pos);
							if (distance < nearestDistance)
							{
								nearestDistance = distance;
								nearest = object;
							}
						}
					}
				}
				else
				{
					for (Object* object = current.GetFirstObjectMobile(); object != NULL;
					     object = object->GetMapChild(*current.ToMap()))
					{
						if (object->info->type == type || type == OBJECT_TYPE_ANY)
						{
							float distance = GetDistance(object->Pos);
							if (distance < nearestDistance)
							{
								nearestDistance = distance;
								nearest = object;
							}
						}
					}
				}
			}
		}
	}
	return nearest;
}

Object* MapCoords::FindObjectForComputerPlayer(GComputerPlayer& player, float (GComputerPlayer::*rate)(Object*),
                                               float            radius) const
{
	GPlayer*  owner = player.GetPlayer();
	float     best = 0.0f;
	Object*   found = NULL;
	MapCoords min = *this;
	MapCoords max = *this;
	MapCoords current;
	min.SetMetersX(min.MetersX() - radius);
	min.SetMetersZ(min.MetersZ() - radius);
	max.SetMetersX(max.MetersX() + radius);
	max.SetMetersZ(max.MetersZ() + radius);
	for (short x = min.MapX(); x <= (short)max.MapX(); x++)
	{
		for (short z = min.MapZ(); z <= (short)max.MapZ(); z++)
		{
			current.SetupMapXZ(x, z);
			if (current.InBounds())
			{
				if (Influence::CalculatePlayerInfluence(current, owner, false, INFL_CALC_TYPE_DEFAULT, true) > 0.0f)
				{
					for (MapCellIterator it = current.GetFirstIterator(); it.object != NULL;
					     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
					{
						float rating = (player.*rate)(it.object);
						if (rating >= best)
						{
							float value = GUtils::GetDistanceModifier(GetDistance(it.object->Pos), radius) * rating;
							if (value > best)
							{
								best = value;
								found = it.object;
							}
						}
					}
				}
			}
		}
	}
	return found;
}

Object* MapCoords::FindObject(bool32_t (Object::*is_suitable)(), float radius, Object* exclude) const
{
	Object*   nearest = NULL;
	float     nearestDistance = 0.0f;
	MapCoords coords = *this;
	long      size = (long)ceil(2.0f * radius / MetresPerMapCell);
	long      count = max(size, FIND_OBJECT_MIN_CELLS);
	count *= count;
	long spiralX = 1;
	long spiralZ = 1;
	while (count != 0)
	{
		if (nearest != NULL && GetDistance(coords) > FIND_OBJECT_DISTANCE_SCALE * nearestDistance + MetresPerMapCell)
		{
			break;
		}
		if (coords.InBounds())
		{
			Object* object = NULL;
			while ((object = coords.FindType(OBJECT_TYPE_ANY, object)) != NULL)
			{
				if ((object->*is_suitable)() && exclude != object)
				{
					float distance = GetDistance(object->Pos);
					if (distance < radius && (distance < nearestDistance || nearest == NULL))
					{
						nearestDistance = distance;
						nearest = object;
					}
				}
			}
		}
		count--;
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
	return nearest;
}

Object* MapCoords::FindObject(bool32_t(__cdecl* is_suitable)(Object*), float radius, Object* exclude) const
{
	Object*   nearest = NULL;
	float     nearestDistance = 0.0f;
	MapCoords coords = *this;
	long      size = (long)ceil(2.0f * radius / MetresPerMapCell);
	long      count = max(size, FIND_OBJECT_MIN_CELLS);
	count *= count;
	long spiralX = 1;
	long spiralZ = 1;
	while (count != 0)
	{
		if (nearest != NULL && GetDistance(coords) > FIND_OBJECT_DISTANCE_SCALE * nearestDistance + MetresPerMapCell)
		{
			break;
		}
		if (coords.InBounds())
		{
			Object* object = NULL;
			while ((object = coords.FindType(OBJECT_TYPE_ANY, object)) != NULL)
			{
				if (is_suitable(object) && exclude != object)
				{
					float distance = GetDistance(object->Pos);
					if (distance < radius && (distance < nearestDistance || nearest == NULL))
					{
						nearestDistance = distance;
						nearest = object;
					}
				}
			}
		}
		count--;
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
	return nearest;
}

bool32_t MapCoords::DoesRegionContainCitadel()
{
	return DoesRegionContainObjectOfType(&Object::IsCitadelPart);
}

bool32_t MapCoords::DoesRegionContainTown()
{
	return DoesRegionContainObjectOfType(&Object::IsPartOfTown);
}

bool32_t MapCoords::DoesRegionContainField()
{
	return DoesRegionContainMapCellSatisfyingTest(&MapCoords::IsField);
}

bool32_t MapCoords::DoesRegionContainForest()
{
	return DoesRegionContainObjectOfType(&Object::IsPartOfForest);
}

bool32_t MapCoords::DoesRegionContainCoast()
{
	return DoesRegionContainMapCellSatisfyingTest(&MapCoords::IsCoastal);
}

bool32_t MapCoords::DoesRegionContainWater()
{
	return DoesRegionContainMapCellSatisfyingTest(&MapCoords::IsWater);
}

bool32_t MapCoords::DoesRegionContainLand()
{
	return DoesRegionContainMapCellSatisfyingTest(&MapCoords::IsLand);
}

void MapCoords::GetExactMapSquareForCitadel()
{
	GetExactMapSquareForObjectOfType(&Object::IsCitadelPart);
}

void MapCoords::GetExactMapSquareForHill()
{
	*(LH3DMapCoords*)this = CreatureGlobalExplorationMap::GlobalMap.GetRegionHighestPos(
		MapX() / EXPLORATION_REGION_CELLS, MapZ() / EXPLORATION_REGION_CELLS);
}

void MapCoords::GetExactMapSquareForTown()
{
	GetExactMapSquareForObjectOfType(&Object::IsPartOfTown);
}

void MapCoords::GetExactMapSquareForField()
{
	GetExactMapSquareSatisfyingTest(&MapCoords::IsCoastal);
}

void MapCoords::GetExactMapSquareForForest()
{
	GetExactMapSquareForObjectOfType(&Object::IsPartOfForest);
}

void MapCoords::GetExactMapSquareForCoast()
{
	GetExactMapSquareSatisfyingTest(&MapCoords::IsCoastal);
}

void MapCoords::GetExactMapSquareForWater()
{
	GetExactMapSquareSatisfyingTest(&MapCoords::IsWater);
}

bool32_t MapCoords::IsEqual(MapCell* cell)
{
	return MapX() == cell->GetX() && MapZ() == cell->GetZ();
}

bool32_t MapCoords::IsEqual(const MapCoords& other, unsigned long resolution) const
{
	return z / resolution == other.z / resolution && x / resolution == other.x / resolution;
}

int MapCoords::CollideCollideWithFixe() const
{
	if (ToMap() == NULL)
	{
		return -1;
	}
	return ToMap()->CollideWithFixe(*this);
}

void MapCoords::RandomiseBlock()
{
	FractionX = GAME_RAND(1459, MAP_COORDS_FRACTION_MAX + 1);
	FractionZ = GAME_RAND(1460, MAP_COORDS_FRACTION_MAX + 1);
}

float MapCoords::GetLandscapeAltitude() const
{
	float altitude = Altitude();
	return altitude + LH3DIsland::GetAltitude(*this);
}

void MapCoords::SetupMapXZ(JustXZ* xz)
{
	SetupMapXZ(xz->x, xz->z);
}

void MapCoords::SetupMapXZ(JustXZ& xz)
{
	SetupMapXZ(xz.x, xz.z);
}

void MapCoords::Set(JustXZ* xz)
{
	SetWholeX(xz->x);
	SetWholeZ(xz->z);
	SetAltitude(0.0f);
}

LHPoint MapCoords::Get3DPoint() const
{
	return LHPoint(MetersX(), Altitude(), MetersZ());
}

float MapCoords::GetMaxAltitude() const
{
	return MAX_ALTITUDE;
}

Object* MapCoords::GetMapChild(Object* object)
{
	if (ToMap() == NULL)
	{
		return NULL;
	}
	return object->GetMapChild(*ToMap());
}

MultiMapFixed* MapCoords::FindNearestBuildingSite(float* distance)
{
	MapCoords coords;
	coords.SetWholeX(WholeX());
	coords.SetWholeZ(WholeZ());
	coords.SetAltitude(Altitude());
	MultiMapFixed* nearest = NULL;
	*distance = BUILDING_SITE_MAX_DISTANCE;
	long spiralX = 1;
	long spiralZ = 1;
	for (long count = BUILDING_SITE_SEARCH_CELLS; count != 0; count--)
	{
		for (Object* object = coords.GetFirstObjectFixed(); object != NULL; object = coords.GetMapChild(object))
		{
			MultiMapFixed* building = dynamic_cast<MultiMapFixed*>(object);
			if (building != NULL && building->IsBuilt() != true)
			{
				float current = GetDistance(building->GetNearestEdgeToPos(coords));
				if (current < *distance)
				{
					*distance = current;
					nearest = building;
				}
			}
		}
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
	return nearest;
}

MultiMapFixed* MapCoords::IsWithinBuilingSite()
{
	MultiMapFixed* site = NULL;
	for (Object* object = GetFirstObjectFixed(); object != NULL; object = GetMapChild(object))
	{
		MultiMapFixed* building = object->CastMultiMapFixed();
		if (building != NULL)
		{
			if (building->IsBuilt() != true || !building->IsRepaired())
			{
				NewCollide* data = building->GetCollideData();
				if (data != NULL)
				{
					NewCollide collide(&GetLHPoint(), BUILDING_SITE_COLLIDE_RADIUS);
					if (collide.obj->Collide(data->obj))
					{
						site = building;
					}
				}
				else
				{
					site = building;
				}
			}
		}
	}
	return site;
}

bool32_t MapCoords::IsAtWorshipSiteCentre()
{
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		Citadel* citadel = player->GetCitadel();
		if (citadel != NULL)
		{
			for (unsigned int i = 0; i < MAX_WORSHIP_SITES; i++)
			{
				WorshipSite* site = citadel->WorshipSites[i];
				if (site != NULL)
				{
					MapCoords pos;
					site->GetSpecialPos(WORSHIP_SITE_SPECIAL_POS_CENTRE, &pos);
					if (IsCloseToEqual(pos, WORSHIP_SITE_CENTRE_DISTANCE))
					{
						return true;
					}
				}
			}
		}
	}
	return false;
}

bool32_t MapCoords::IsCloseToEqual(const MapCoords& other, float epsilon) const
{
	return GetDistance(other) <= epsilon;
}

bool32_t MapCoords::IsField() const
{
	return FindType(OBJECT_TYPE_FIELD, NULL) != NULL;
}

void MapCoords::operator+=(unsigned long distance)
{
	x += distance;
	z += distance;
}

void MapCoords::operator+=(const MapCoords& other)
{
	x += other.x;
	z += other.z;
	altitude += other.altitude;
}

void MapCoords::operator+=(const LHPoint& point)
{
	MapCoords coords(point);
	*this += coords;
}

void MapCoords::operator+=(const JustMapXZ& other)
{
	CellX += other.x;
	CellZ += other.z;
}

void MapCoords::operator-=(unsigned long distance)
{
	x -= distance;
	z -= distance;
}

void MapCoords::operator-=(const MapCoords& other)
{
	x -= other.x;
	z -= other.z;
	altitude -= other.altitude;
}

void MapCoords::operator-=(const LHPoint& point)
{
	MapCoords coords(point);
	*this -= coords;
}

void MapCoords::operator-=(const JustMapXZ& other)
{
	CellX -= other.x;
	CellZ -= other.z;
}

MapCoords MapCoords::operator+(const MapCoords& other) const
{
	MapCoords result = *this;
	result += other;
	return result;
}

MapCoords MapCoords::operator+(const JustMapXZ& other) const
{
	MapCoords result = *this;
	result += other;
	return result;
}

MapCoords MapCoords::operator-(const MapCoords& other) const
{
	MapCoords result = *this;
	result -= other;
	return result;
}

MapCoords MapCoords::operator-(const JustMapXZ& other) const
{
	MapCoords result = *this;
	result -= other;
	return result;
}

bool32_t MapCoords::operator==(const MapCoords& other) const
{
	return x == other.x && z == other.z && Altitude() == other.Altitude();
}

bool32_t MapCoords::operator==(const JustXZ& other) const
{
	return x == other.x && z == other.z;
}

bool32_t MapCoords::operator!=(const MapCoords& other) const
{
	return !(*this == other);
}

bool32_t MapCoords::operator!=(const JustXZ& other) const
{
	return !(*this == other);
}

bool32_t MapCoords::operator>=(const MapCoords& other) const
{
	return x >= other.x && z >= other.z && Altitude() >= other.Altitude();
}

bool32_t MapCoords::operator>(const MapCoords& other) const
{
	return x > other.x && z > other.z && Altitude() > other.Altitude();
}

bool32_t MapCoords::operator<=(const MapCoords& other) const
{
	return x <= other.x && z <= other.z && Altitude() <= other.Altitude();
}

bool32_t MapCoords::operator<(const MapCoords& other) const
{
	return x < other.x && z < other.z && Altitude() < other.Altitude();
}

float MapCoords::GetAlignment() const
{
	float    alignment = 0.0f;
	GPlayer* player = NULL;
	while ((player = GGame::g_game->GetNextPlayer(player)) != NULL)
	{
		float influence = Influence::CalculatePlayerInfluence(*this, player, false, INFL_CALC_TYPE_DEFAULT, true);
		alignment += (player->GetAlignmentValue()) * influence;
	}
	if (alignment < -1.0f)
	{
		return -1.0f;
	}
	if (alignment > 1.0f)
	{
		return 1.0f;
	}
	return alignment;
}

DISCRETE_ALIGNMENT_VALUES MapCoords::GetDiscreteAlignment() const
{
	float alignment = GetAlignment();
	return GAlignment::GetDiscreteAlignmentValue(alignment);
}

bool32_t MapCoords::GetClearAreaForActivity(Creature* creature, MapCoords* result, float search_radius, float radius,
                                            bool32_t avoid_living)
{
	float     cells = search_radius / MetresPerMapCell;
	MapCoords coords = *this;
	long      half = (long)(radius / (MetresPerMapCell + MetresPerMapCell));
	long      count = (long)(cells * cells);
	long      spiralX = 1;
	long      spiralZ = 1;
	while (count != 0)
	{
		if (coords.InBounds() == true)
		{
			for (long dx = -half; dx <= half; dx++)
			{
				for (long dz = -half; dz <= half; dz++)
				{
					if (!IsSquareClearForActivity(creature, coords.MapX() + dx, coords.MapZ() + dz, avoid_living))
					{
						goto next;
					}
				}
			}
			result->SetToZero();
			result->SetMapX(coords.MapX());
			result->SetMapZ(coords.MapZ());
			return true;
		}
	next:
		count--;
		coords += *GUtils::Spiral(spiralX, spiralZ);
	}
	return false;
}

static bool32_t UseFightCheckForActivity = false;

// Inliner IL size: 66
// BW1W120 inlined BW1M119 inlined
inline float GetDistanceBetweenPoints(const LHPoint& from, const LHPoint& to)
{
	LHPoint offset(&from);
	LHPoint position(&to);
	offset.Sub(position);
	return offset.GetNorme();
}

bool32_t MapCoords::IsSquareClearForActivity(Creature* creature, long x, long z, bool32_t avoid_living)
{
	if (GGame::g_game->map.InBounds(x, z))
	{
		MapCell* cell = GGame::g_game->map.ToMap(x, z);
		if (LH3DIsland::IsWater(x, z))
		{
			return false;
		}
		LHPoint centre(x * ACTIVITY_CELL_SIZE + ACTIVITY_CELL_SIZE / 2, 0.0f,
		               z * ACTIVITY_CELL_SIZE + ACTIVITY_CELL_SIZE / 2);
		for (MapCellIterator it = cell->GetFirstIterator(); it.object != NULL;
		     it.object = it.object->GetMapChild(*it.cell), it.MoveToMobileObsIfNeededAndPoss())
		{
			if (it->IsCitadelHeart())
			{
				return false;
			}
			bool32_t avoid;
			if (UseFightCheckForActivity)
			{
				avoid = !creature->GetCreature3D()->CanFightAroundObject(it);
			}
			else
			{
				avoid = it->CreatureMustAvoid(creature) || it->IsTree() || it->IsField();
			}
			if (avoid)
			{
				NewCollide* data = it->GetCollideData();
				if (data != NULL && data->obj != NULL)
				{
					NewCollide::Obj* obj = data->obj;
					{
						NewCollide::List* list = obj->IteratorList;
						if (list != NULL)
						{
							NewCollide::Obj** end = list->objs + list->count;
							for (NewCollide::Obj** current = list->objs; current < end; current++)
							{
								if (GetDistanceBetweenPoints(centre, (*current)->position) - (*current)->radius <
								    ACTIVITY_CLEAR_DISTANCE)
								{
									return false;
								}
							}
						}
						else
						{
							if (GetDistanceBetweenPoints(centre, obj->position) - obj->radius < ACTIVITY_CLEAR_DISTANCE)
							{
								return false;
							}
						}
					}
				}
			}
			if (avoid_living == true && dynamic_cast<Living*>((Object*)it) != NULL)
			{
				return false;
			}
		}
		return LandAvoid[z][x] == 0;
	}
	return false;
}

LHPoint MapCoords::GetLHPoint() const
{
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(*this, point);
	return point;
}

bool32_t MapCoords::IsWithinDistance(const MapCoords& other, float distance) const
{
	return GetDistance(other) <= distance;
}

float MapCoords::GetTemperature() const
{
	return DefaultTemperature;
}

float MapCoords::GetDistance(const MapCoords& other) const
{
	return GUtils::GetDistanceInMetres(*this, other);
}

float MapCoords::GetAngle(const MapCoords& other) const
{
	return GUtils::Get3DAngleFromXZ(*this, other);
}

bool32_t MapCoords::FindNearestWarmerClimate(MapCoords* result) const
{
	if (result == NULL)
	{
		return false;
	}
	float         temperature = GClimate::GetTemp(&GetLHPoint());
	GClimate*     climate = NULL;
	unsigned long nearest = CLIMATE_MAX_DISTANCE;
	LHPoint       point;
	LHPoint       climatePoint;
	GLandscape::ConvertMapCoordToLandscapePoint(*this, point);
	while ((climate = GGame::g_game->GameLists.climates.FindNext(climate)) != NULL)
	{
		if (climate->Temp.ActualTemp > temperature && !(climate->Flags & CLIMATE_FLAG_DISABLED))
		{
			GLandscape::ConvertMapCoordToLandscapePoint((const MapCoords&)climate->Pos, climatePoint);
			unsigned long distance = (unsigned long)GUtils::GetDistance(point, climatePoint);
			if (distance < nearest)
			{
				nearest = distance;
				*(LH3DMapCoords*)result = climate->Pos;
			}
		}
	}
	return nearest != CLIMATE_MAX_DISTANCE;
}

bool32_t MapCoords::FindNearestColderClimate(MapCoords* result) const
{
	if (result == NULL)
	{
		return false;
	}
	float         temperature = GClimate::GetTemp(&GetLHPoint());
	GClimate*     climate = NULL;
	unsigned long nearest = CLIMATE_MAX_DISTANCE;
	LHPoint       point;
	LHPoint       climatePoint;
	GLandscape::ConvertMapCoordToLandscapePoint(*this, point);
	while ((climate = GGame::g_game->GameLists.climates.FindNext(climate)) != NULL)
	{
		if (climate->Temp.ActualTemp < temperature && !(climate->Flags & CLIMATE_FLAG_DISABLED))
		{
			GLandscape::ConvertMapCoordToLandscapePoint((const MapCoords&)climate->Pos, climatePoint);
			unsigned long distance = (unsigned long)GUtils::GetDistance(point, climatePoint);
			if (distance < nearest)
			{
				nearest = distance;
				*(LH3DMapCoords*)result = climate->Pos;
			}
		}
	}
	return nearest != CLIMATE_MAX_DISTANCE;
}

float MapCoords::GetMetresDistanceSq(const MapCoords& other) const
{
	float dx = GUtils::ConvertWholeDistanceToMeters(other.WholeX() - WholeX());
	float dz = GUtils::ConvertWholeDistanceToMeters(other.WholeZ() - WholeZ());
	return dx * dx + dz * dz;
}
