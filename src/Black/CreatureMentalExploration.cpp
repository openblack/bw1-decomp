#include "MaxFloat.h"
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureExplorationMap.h"

#include <Lionhead/LH3DLib/development/LH3DColor.h>
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

#include "ClearAreaState.h"
#include "ColourConstants.h" /* For White */
#include "Creature.h"
#include "CreatureMentalEditor.h"
#include "ExplorationRegionTypeInfo.h"
#include "Landscape.h"
#include "MapCoordsMeters.h"
#include "Utils.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\CreatureMentalExploration.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalExploration.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureMentalExploration.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalExploration.cpp"
#endif

#define CLEAR_POS_SEARCH_RADIUS 240.0f
#define CLEAR_POS_RADIUS        40.0f

#define CLEAR_AREA_DEBUG_TEXT_X    130
#define CLEAR_AREA_DEBUG_TEXT_Y    40
#define CLEAR_AREA_DEBUG_TEXT_SIZE 14.0f

// clang-format off
ExplorationRegionTypeInfo ExplorationRegionTypeInfo::Table[REGION_TYPE_LAST] = {
    {&MapCoords::DoesRegionContainCitadel, &MapCoords::GetExactMapSquareForCitadel, "Citadel"},
    {&MapCoords::DoesRegionContainTown,    &MapCoords::GetExactMapSquareForTown,    "Town"},
    {&MapCoords::DoesRegionContainField,   &MapCoords::GetExactMapSquareForField,   "Field"},
    {&MapCoords::DoesRegionContainForest,  &MapCoords::GetExactMapSquareForForest,  "Forest"},
    {&MapCoords::DoesRegionContainCoast,   &MapCoords::GetExactMapSquareForCoast,   "Coast"},
    {&MapCoords::DoesRegionContainWater,   &MapCoords::GetExactMapSquareForWater,   "Water"},
    {&MapCoords::DoesRegionContainHill,    &MapCoords::GetExactMapSquareForHill,    "Hill"},
    {&MapCoords::DoesRegionContainLand,    NULL,                                    "Land"},
};
// clang-format on

CreatureGlobalExplorationMap CreatureGlobalExplorationMap::GlobalMap;

CreatureExplorationMap::CreatureExplorationMap(const MapCoords& pos)
{
	for (uint32_t x = 0; x < EXPLORATION_MAP_REGIONS; x++)
	{
		for (uint32_t z = 0; z < EXPLORATION_MAP_REGIONS; z++)
		{
			ClearKnowsAbout(x, z);
			ClearVisited(x, z);
			GameTurnsStayedInRegion[(short)x][(short)z] = 0;
		}
	}
	Pos = pos;
	field_0x8 = 0;
}

uint16_t CreatureExplorationMap::GetNumGameTurnsCreatureHasStayedInRegion(const MapCoords& pos)
{
	return GameTurnsStayedInRegion[(short)(pos.MapX() / EXPLORATION_REGION_CELLS)]
								  [(short)(pos.MapZ() / EXPLORATION_REGION_CELLS)];
}

void CreatureExplorationMap::UpdateMap(const MapCoords& pos, Creature* creature)
{
	JustMapXZ region;
	region.x = pos.MapX() / EXPLORATION_REGION_CELLS;
	region.z = pos.MapZ() / EXPLORATION_REGION_CELLS;
	VisitedRegions[region.x][region.z / CHAR_BIT] |= 1 << (region.z % CHAR_BIT);
	SetKnowsAbout(region.x, region.z);
	if (GameTurnsStayedInRegion[region.x][region.z] < EXPLORATION_MAX_GAME_TURNS_STAYED)
	{
		GameTurnsStayedInRegion[region.x][region.z]++;
	}
}

bool32_t CreatureExplorationMap::KnowsAbout(short region_x, short region_z)
{
	return KnownRegions[region_x][region_z / CHAR_BIT] & (1 << (region_z % CHAR_BIT));
}

bool32_t CreatureExplorationMap::HasVisitedRegion(short region_x, short region_z)
{
	return VisitedRegions[region_x][region_z / CHAR_BIT] & (1 << (region_z % CHAR_BIT));
}

bool32_t CreatureExplorationMap::FindNearest(REGION_TYPE type, const MapCoords& pos, MapCoords* nearest,
                                             PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED preference,
                                             bool32_t                                    allow_current_region)
{
	bool32_t  found = false;
	JustMapXZ region;
	region.x = pos.MapX() / EXPLORATION_REGION_CELLS;
	region.z = pos.MapZ() / EXPLORATION_REGION_CELLS;
	int  count = EXPLORATION_MAP_REGIONS * EXPLORATION_MAP_REGIONS;
	long spiralX = 1;
	long spiralZ = 1;
	while (count != 0)
	{
		if (region.InExplorationMapBounds() == true &&
		    (CreatureGlobalExplorationMap::GlobalMap.Regions[region.x][region.z].RegionTypes & (1 << type)) &&
		    (allow_current_region || region.x != pos.MapX() / EXPLORATION_REGION_CELLS ||
		     region.z != pos.MapZ() / EXPLORATION_REGION_CELLS))
		{
			found = true;
			if (ExplorationRegionTypeInfo::Table[type].GetExactMapSquare != NULL)
			{
				nearest->SetMapX(region.x * EXPLORATION_REGION_CELLS);
				nearest->SetMapZ(region.z * EXPLORATION_REGION_CELLS);
				(nearest->*ExplorationRegionTypeInfo::Table[type].GetExactMapSquare)();
			}
			else
			{
				nearest->SetMapX(region.x * EXPLORATION_REGION_CELLS + EXPLORATION_REGION_CELLS / 2);
				nearest->SetMapZ(region.z * EXPLORATION_REGION_CELLS + EXPLORATION_REGION_CELLS / 2);
			}
			if (preference != PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_0 || !HasVisitedRegion(region.x, region.z))
			{
				return true;
			}
		}
		count--;
		const JustMapXZ* step = GUtils::Spiral(spiralX, spiralZ);
		region.x += step->x;
		region.z += step->z;
	}
	return found;
}

bool32_t CreatureExplorationMap::FindNearestNextTo(REGION_TYPE type, REGION_TYPE next_to_type, const MapCoords& pos,
                                                   MapCoords* nearest)
{
	MapCoords nextTo;
	if (FindNearest(next_to_type, pos, &nextTo, PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, true))
	{
		return FindNearest(type, nextTo, nearest, PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, true);
	}
	return false;
}

LHPoint CreatureExplorationMap::GetClearPosForCreature(Creature* creature)
{
	MapCoords clearPos;
	LHPoint   point;
	if (creature->Pos.GetClearAreaForActivity(creature, &clearPos, CLEAR_POS_SEARCH_RADIUS, CLEAR_POS_RADIUS, false))
	{
		GLandscape::ConvertMapCoordToLandscapePoint(clearPos, point);
	}
	else
	{
		GLandscape::ConvertMapCoordToLandscapePoint(creature->Pos, point);
	}
	return point;
}

void CreatureExplorationMap::Dump() {}

void CreatureGlobalExplorationMap::PrecalculateMap()
{
	HighestAltitude = 0.0f;
	uint32_t x;
	uint32_t z;
	for (x = 0; x < EXPLORATION_MAP_REGIONS; x++)
	{
		for (z = 0; z < EXPLORATION_MAP_REGIONS; z++)
		{
			CalculateMaxAltitudeForRegion(x, z);
		}
	}
	for (x = 0; x < EXPLORATION_MAP_REGIONS; x++)
	{
		for (z = 0; z < EXPLORATION_MAP_REGIONS; z++)
		{
			CalculateTypeForRegion(x, z);
		}
	}
}

void CreatureGlobalExplorationMap::CalculateMaxAltitudeForRegion(short region_x, short region_z)
{
	bool  first = true;
	float highest = 0.0f;
	for (uint32_t dx = 0; dx < EXPLORATION_REGION_CELLS; dx++)
	{
		long cellX = region_x * EXPLORATION_REGION_CELLS + dx;
		for (uint32_t dz = 0; dz < EXPLORATION_REGION_CELLS; dz++)
		{
			long  cellZ = region_z * EXPLORATION_REGION_CELLS + dz;
			float height = LH3DIsland::GetHeightAsFloat(cellX, cellZ);
			if (height >= highest || first)
			{
				highest = height;
				first = false;
				Regions[region_x][region_z].HighestAltitude = height;
				Regions[region_x][region_z].HighestPos.SetMapX(cellX);
				Regions[region_x][region_z].HighestPos.SetMapZ(cellZ);
			}
		}
	}
	if (highest > HighestAltitude)
	{
		HighestAltitude = highest;
	}
}

void CreatureGlobalExplorationMap::CalculateTypeForRegion(short region_x, short region_z)
{
	MapCoords coords;
	coords.SetMapX(region_x * EXPLORATION_REGION_CELLS);
	coords.SetMapZ(region_z * EXPLORATION_REGION_CELLS);
	uint8_t& types = Regions[region_x][region_z].RegionTypes;
	types = 0;
	for (int type = 0; type < ARRAY_SIZE(ExplorationRegionTypeInfo::Table); type++)
	{
		if ((coords.*ExplorationRegionTypeInfo::Table[type].DoesRegionContain)())
		{
			types |= 1 << type;
		}
	}
}

void CreatureGlobalExplorationMap::Dump() {}

bool32_t Creature::FindClearArea(MapCoords* coords, float radius, bool32_t avoid_living)
{
	ClearArea.Radius = radius;
	ClearArea.SearchRadius = CLEAR_AREA_DEFAULT_SEARCH_RADIUS;
	bool32_t found = ClearArea.FindClearArea(*coords, this, avoid_living);
	if (found)
	{
		*coords = ClearArea.Pos;
		if (IsConfinedToArea() && GUtils::GetDistanceInMetres(coords, &ConfinementCentre) > ConfinementRadius)
		{
			return false;
		}
	}
	return found;
}

ClearAreaState::~ClearAreaState()
{
	if (ClearCells != NULL)
	{
		delete ClearCells;
	}
}

bool32_t ClearAreaState::FindClearArea(const MapCoords& pos, Creature* creature, bool32_t avoid_living)
{
	State = CLEAR_AREA_STATE_NOT_FOUND;
	Centre = pos;
	Size = (uint32_t)(SearchRadius / MetresPerMapCell + 1.0f);
	uint32_t bits = Size * Size;
	if (bits % CHAR_BIT > 0)
	{
		bits += CHAR_BIT - bits % CHAR_BIT;
	}
	uint32_t bytes = bits / CHAR_BIT;
	if (ClearCells != NULL)
	{
		delete ClearCells;
	}
	ClearCells = new (FILEPATH, 439) char[bytes];
	uint32_t i;
	for (i = 0; i < bytes; i++)
	{
		ClearCells[i] = 0;
	}

	uint32_t x;
	uint32_t z;
	long     startX = pos.MapX() - (Size / 2);
	long     startZ = pos.MapZ() - (Size / 2);
	for (x = 0; x < Size; x++)
	{
		for (z = 0; z < Size; z++)
		{
			uint32_t index = Size * x + z;
			if (MapCoords::IsSquareClearForActivity(creature, startX + x, startZ + z, avoid_living))
			{
				ClearCells[index / CHAR_BIT] |= 1 << (index % CHAR_BIT);
			}
		}
	}

	uint32_t cells = (uint32_t)(Radius / MetresPerMapCell);
	if ((uint32_t)Radius % (uint32_t)MetresPerMapCell > 0)
	{
		cells++;
	}
	float     nearestDistance = MaxFloat;
	MapCoords candidate;
	for (x = 0; x < Size - cells; x++)
	{
		for (z = 0; z < Size - cells; z++)
		{
			bool32_t clear = true;
			for (i = 0; i < cells; i++)
			{
				for (uint32_t j = 0; j < cells; j++)
				{
					float dx = Radius / 2 - (i * MAP_COORDS_METRES_PER_CELL + MAP_COORDS_METRES_PER_CELL / 2);
					float dz = Radius / 2 - (j * MAP_COORDS_METRES_PER_CELL + MAP_COORDS_METRES_PER_CELL / 2);
					if (dx * dx + dz * dz <= Radius * Radius / 4)
					{
						uint32_t index = Size * (x + i) + z + j;
						if (!(ClearCells[index / CHAR_BIT] & (1 << (index % CHAR_BIT))))
						{
							clear = false;
							break;
						}
					}
				}
				if (!clear)
				{
					break;
				}
			}
			if (clear)
			{
				candidate.SetToZero();
				candidate.SetMapX(pos.MapX() - (Size / 2) + x);
				candidate.SetMapZ(pos.MapZ() - (Size / 2) + z);
				candidate.SetMetersX(candidate.MetersX() + Radius / 2);
				candidate.SetMetersZ(candidate.MetersZ() + Radius / 2);
				float distance = GUtils::GetDistanceInMetres(&pos, &candidate);
				if (distance < nearestDistance)
				{
					nearestDistance = distance;
					Pos = candidate;
				}
			}
		}
	}
	if (nearestDistance < MaxFloat)
	{
		State = CLEAR_AREA_STATE_FOUND;
	}
	return State == CLEAR_AREA_STATE_FOUND;
}

void ClearAreaState::Draw()
{
	uint32_t  x;
	uint32_t  z;
	long      startX = Centre.MapX() - (Size / 2);
	long      startZ = Centre.MapZ() - (Size / 2);
	MapCoords cell;
	for (x = 0; x < Size; x++)
	{
		for (z = 0; z < Size; z++)
		{
			uint32_t index = Size * x + z;
			bool32_t clear = ClearCells[index / CHAR_BIT] & (1 << (index % CHAR_BIT));
			cell.SetMapX(startX + x);
			cell.SetMapZ(startZ + z);
			if (!clear)
			{
				LH3DColor blocked;
				blocked.Set(0xff, 0xff, 0x00, 0x00);
				cell.ShowMapCell(&blocked);
			}
		}
	}

	uint32_t cells = (uint32_t)(Radius / MAP_COORDS_METRES_PER_CELL);
	if ((uint32_t)Radius % (uint32_t)MAP_COORDS_METRES_PER_CELL > 0)
	{
		cells++;
	}
	if (State == CLEAR_AREA_STATE_FOUND)
	{
		for (x = 0; x < cells; x++)
		{
			for (z = 0; z < cells; z++)
			{
				cell.SetToZero();
				cell.SetMapX(Pos.MapX() - (cells / 2) + x);
				cell.SetMapZ(Pos.MapZ() - (cells / 2) + z);
				float dx = Pos.MetersX() - (cell.MetersX() + MAP_COORDS_METRES_PER_CELL / 2);
				float dz = Pos.MetersZ() - (cell.MetersZ() + MAP_COORDS_METRES_PER_CELL / 2);
				if (dx * dx + dz * dz <= Radius * Radius / 4)
				{
					LH3DColor inside(0xff, 0xff, 0xff, 0xff);
					cell.ShowMapCell(&inside);
				}
			}
		}
	}
	else
	{
		CreatureMentalEditor::DrawTextA("Not found", CLEAR_AREA_DEBUG_TEXT_X, CLEAR_AREA_DEBUG_TEXT_Y,
		                                CLEAR_AREA_DEBUG_TEXT_SIZE, 0xff, 0xdc, 0xdc);
	}
	LH3DIsland::GetAltitude(Pos);
}

void ClearAreaState::Draw3D() {}
