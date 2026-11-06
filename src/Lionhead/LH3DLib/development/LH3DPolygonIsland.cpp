#include "LH3DPolygonIsland.h"

#include <ctype.h>   /* For tolower */
#include <math.h>    /* For sin, cos, sqrt, asin */
#include <stdlib.h>  /* For rand */
#include <string.h>  /* For memset, memcpy, strlen */
#include <windows.h> /* For DebugBreak */

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For HALF_PI_F, TWO_PI, DEGREES_TO_RADIANS */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For LHPoint */

#define NAME_CHARACTERS_END '\xff'

// BW1W120 0087b4c0 BW1M119 null
static int GetSeedFromName(char* name);
// BW1W120 0087b530 BW1M119 null
static uint8_t GetCharIndex(char c);
// BW1W120 0087d720 BW1M119 inlined
static bool IsTooSteep(int x, int y, float* heights);
// BW1W120 0087eeb0 BW1M119 01087310 (LHCombined Release)
static void SmoothAtPosition(float* dest, float* src, int x, int y, float strength, int radius);

LH3DPolygonIsland* LH3DPolygonIsland::me;

static char  name_characters[] = "abcdefghijklmnopqrstuvwxyz 0123456789\xff";
static float level_heights[16] = {
	0.0f,   //
	30.0f,  //
	37.0f,  //
	34.0f,  //
	40.0f,  //
	55.0f,  //
	70.0f,  //
	95.0f,  //
	200.0f, //
	227.5f, //
	255.0f, //
	180.0f, //
	190.0f, //
	200.0f, //
	230.0f, //
	255.0f, //
};
int        add_x[8] = {-1, 0, 1, 1, 1, 0, -1, -1};
int        add_y[8] = {-1, -1, -1, 0, 1, 1, 1, 0};
float      LH3DPolygonIsland::knot_scale = 1.0f;
static int bumps_level_6[8] = {140, 170, 190, 210, 220, 230, 240, 255};
static int bumps_level_7[8] = {40, 50, 60, 70, 70, 70, 80, 90};
static int bumps_level_8[8] = {8, 8, 8, 10, 10, 10, 15, 15};
static int bumps_level_9[8] = {5, 5, 5, 5, 5, 5, 5, 5};
static int bumps_level_10[8] = {5, 6, 7, 10, 15, 20, 25, 30};

LH3DPolygonIsland::LH3DPolygonIsland()
{
	me = this;
	GenearateCirclePoints();
	Group = NULL;
}

LH3DPolygonIsland::~LH3DPolygonIsland()
{
	for (int i = 0; i < LH3D_POLYGON_ISLAND_CIRCLE_COUNT; i++)
	{
		CirclePoints[i].DeleteAll();
	}
	if (Group)
		delete Group;
}

LH3DPolygonIsland::LevelGroup::LevelGroup()
{
	GlobalMap = new char[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	Heights = new float[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	Lightmap = new uint8_t[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	CountryMap = new uint8_t[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	Mask = new uint8_t[LH3D_POLYGON_ISLAND_BLOCK_COUNT * LH3D_POLYGON_ISLAND_BLOCK_COUNT];
	memset(CountryMap, 0, LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE);
	memset(Lightmap, 0, LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE);
	memset(Mask, 0, LH3D_POLYGON_ISLAND_BLOCK_COUNT * LH3D_POLYGON_ISLAND_BLOCK_COUNT);
}

LH3DPolygonIsland::LevelGroup::~LevelGroup()
{
	Levels.DeleteAll();
	if (GlobalMap)
		delete[] GlobalMap;
	if (Heights)
		delete[] Heights;
	if (Lightmap)
		delete[] Lightmap;
	if (CountryMap)
		delete[] CountryMap;
	if (Mask)
		delete[] Mask;
	Towns.DeleteAll();
	Citadels.DeleteAll();
}

void LH3DPolygonIsland::LevelGroup::Generate(float x, float y, float radius)
{
	Level* base = new Level;
	Levels.Add(base);
	int count = rand() % 20 + 10;
	rand();
	CreateBase(x, y, count, base, radius);
	MoveBasePointsInOut(base);
	base->GenerateLevelVectors();
	base->Number = 1;
	Level* below = base;
	for (int i = 1; i <= 5; i++)
	{
		Level* level = new Level;
		level->Number = i + 1;
		level->GenerateUp(*below, 13.0f + ((rand() % 4000) / 1000.0f - 2.0f), 0.8f);
		Levels.AddToEnd(level);
		below = level;
	}
	for (Level* level = Levels.GetHead(); level != NULL; level = Levels.FindNext(level))
	{
		level->GenerateMap();
	}
}

void LH3DPolygonIsland::LevelGroup::GenerateBumpyLevels(int count)
{
	BumpyLevel* level = new BumpyLevel;
	level->Generate(Levels.GetAtPosition(1), bumps_level_7[count - 1], 6);
	level->Number = 7;
	Levels.AddToEnd(level);

	level = new BumpyLevel;
	level->Generate(Levels.GetAtPosition(1), bumps_level_8[count - 1], 6);
	level->Number = 8;
	Levels.AddToEnd(level);

	level = new BumpyLevel;
	level->Generate(Levels.GetAtPosition(1), bumps_level_9[count - 1], 3);
	level->Number = 9;
	Levels.AddToEnd(level);

	level = new BumpyLevel;
	level->Generate(Levels.GetAtPosition(2), bumps_level_10[count - 1], 2);
	level->Number = 10;
	Levels.AddToEnd(level);
}

void LH3DPolygonIsland::LevelGroup::MergeWithLevelGroup(LevelGroup* group, int x, int y)
{
	Level* level = Levels.GetHead();
	Level* other = group->Levels.GetHead();
	int    offset = y * LH3D_POLYGON_ISLAND_MAP_SIZE + x;
	while (level)
	{
		for (int i = 0; i < LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE; i++)
		{
			if (i + offset > 0 && i + offset < LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE &&
			    other->Map[i])
			{
				level->Map[i + offset] = other->Map[i];
			}
		}
		level->CalculateMinMax();
		level = Levels.FindNext(level);
		other = group->Levels.FindNext(other);
	}
}

void LH3DPolygonIsland::LevelGroup::PlaceBuildings(int count, float town_density, float citadel_density)
{
	Levels.GetAtPosition(0)->CalculateMinMax();
	PlaceCitadels(count, Levels.GetAtPosition(0)->Map, citadel_density);
	PlaceCitadelTowns(Levels.GetAtPosition(0)->Map);
	PlaceTowns(Levels.GetAtPosition(0)->Map, town_density);
}

void LH3DPolygonIsland::LevelGroup::GenerateGlobalMap()
{
	Level* level = Levels.GetHead();
	memset(GlobalMap, 0, LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE);
	while (level)
	{
		for (int i = 0; i < LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE; i++)
		{
			if (level->Map[i] && GlobalMap[i] < level->Number)
				GlobalMap[i] = level->Number;
			Heights[i] = 0.0f;
		}
		level = Levels.FindNext(level);
	}
}

void LH3DPolygonIsland::LevelGroup::GenerateHeightMap(float scale)
{
	int    maxNumber = 0;
	Level* level;
	for (level = Levels.GetHead(); level != NULL; level = Levels.FindNext(level))
	{
		if (level->Number > maxNumber)
			maxNumber = level->Number;
	}
	for (level = Levels.GetHead(); level != NULL; level = Levels.FindNext(level))
	{
		level->GenerateHeightMap(GlobalMap, level->Number != maxNumber, (scale / 10.0f) * 7.0f + 0.3f);
	}
	level = Levels.GetHead();
	int i;
	for (i = 0; i < LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE; i++)
	{
		Heights[i] = 0.0f;
	}
	while (level)
	{
		for (i = 0; i < LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE; i++)
		{
			if (level->Map[i] && level->Number == GlobalMap[i])
				Heights[i] = level->Heights[i];
		}
		level = Levels.FindNext(level);
	}
	ThermalErodeHeightmap();
	ThermalErodeHeightmap();
	ThermalErodeHeightmap();
	Smooth();
	LHLinkedNode<SPoint*>* node;
	for (node = Towns.GetStart(); node != NULL; node = node->next.Get())
	{
		SmoothAreaForAbode(node->payload, 6.5f);
		SmoothAtPositionWidth(node->payload, 6);
	}
	for (node = Citadels.GetStart(); node != NULL; node = node->next.Get())
	{
		SmoothAreaForAbode(node->payload, 7.5f);
		SmoothAtPositionWidth(node->payload, 7);
	}
}

void LH3DPolygonIsland::Generate(char* name, int complexity, float town_density, float citadel_density, float height)
{
	srand(GetSeedFromName(name));
	int   count = rand() % 2 + complexity * 2;
	float step = (float)complexity;
	knot_scale = 1.0f - (0.5f - 1.0f / (16.0f / step)) * 0.8f;
	float offset = (rand() % 600) / 1000.0f - 0.3f;
	if (Group)
		delete Group;
	Group = new LevelGroup;
	Group->Generate(offset + 1.0f, 1.0f - offset, 0.0f);
	knot_scale *= 0.6f;
	float t = 0.0f;
	step = 1.0f / step;
	APoint point(0.0f, 0.0f);
	while (count--)
	{
		LevelGroup group;
		float      delta = (rand() % (int)(step * 1000.0f)) / 1000.0f + t;
		Group->Levels.GetAtPosition(0)->SplineAt(delta, &point);
		t += step;
		float size = (rand() % 300) / 1000.0f;
		float radius = (rand() % 6283) / 1000.0f;
		group.Generate(size + 1.0f, 1.0f - size, radius);
		int x = (int)point.X;
		int y = (int)point.Y;
		Group->MergeWithLevelGroup(&group, x, y);
	}
	Group->PlaceBuildings(complexity, town_density, citadel_density);
	Group->GenerateBumpyLevels(complexity);
	Group->GenerateGlobalMap();

	char*                                               map = Group->GlobalMap;
	PresenceMap<LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE>& presence = Group->Presence;
	int                                                 scale = LH3D_POLYGON_ISLAND_MAP_SIZE / presence.Size;
	presence.Reset(false);
	for (int px = 0; px < presence.Size; px++)
	{
		for (int py = 0; py < presence.Size; py++)
		{
			for (int i = 0; i < scale; i++)
			{
				for (int j = 0; j < scale; j++)
				{
					if (map[(py * scale + j) * LH3D_POLYGON_ISLAND_MAP_SIZE + px * scale + i])
						presence.Set(px, py, true, LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE);
				}
			}
		}
	}

	{
		PresenceMap<LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE>& erode = Group->Presence;
		PresenceNode nodes[LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE][LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE];
		for (int pass = 0; pass < 2; pass++)
		{
			for (int x = 0; x < erode.Size; x++)
			{
				for (int y = 0; y < erode.Size; y++)
				{
					nodes[x][y].Present = erode.CountNeighbours(x, y) == 8;
				}
			}
			memcpy(erode.Nodes, nodes, sizeof(nodes));
		}
	}
	{
		PresenceMap<LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE>& grow = Group->Presence;
		PresenceNode nodes[LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE][LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE];
		for (int x = 0; x < grow.Size; x++)
		{
			for (int y = 0; y < grow.Size; y++)
			{
				nodes[x][y].Present = (char)grow.CountNeighbours(x, y) > 1;
			}
		}
		memcpy(grow.Nodes, nodes, sizeof(nodes));
	}
	{
		PresenceMap<LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE>& edge = Group->Presence;
		PresenceNode nodes[LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE][LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE];
		for (int x = 0; x < edge.Size; x++)
		{
			for (int y = 0; y < edge.Size; y++)
			{
				if (edge.Get(x, y, LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE))
					nodes[x][y].Present = edge.CountNeighbours(x, y) != 8;
				else
					nodes[x][y].Present = false;
			}
		}
		memcpy(edge.Nodes, nodes, sizeof(nodes));
	}
	Group->Presence.RemoveCorners();
	Group->GenerateHeightMap(height);
	Group->GenerateCountryMap();
	Group->GenerateLightmap();
	Group->GenerateMask();
}

static int GetSeedFromName(char* name)
{
	int     seed = 0;
	uint8_t i = strlen(name) - 1;
	do
	{
		uint8_t digit = GetCharIndex(name[i]) % 10;
		seed = seed * 10 + digit;
	} while (i--);
	return seed;
}

static uint8_t GetCharIndex(char c)
{
	for (uint8_t i = 0; name_characters[i] != NAME_CHARACTERS_END; i++)
	{
		if (name_characters[i] == tolower(c))
			return i;
	}
	return 0;
}

void LH3DPolygonIsland::LevelGroup::CreateBase(float x, float y, int count, Level* level, float rotation)
{
	float step = TWO_PI / count;
	float limit = TWO_PI - step;
	for (float angle = 0.0f; angle < limit; angle += step)
	{
		float   px = x * 128.0f * sin(angle) * knot_scale;
		float   py = y * 128.0f * cos(angle) * knot_scale;
		float   rx = px * cos(rotation) - py * sin(rotation);
		float   ry = px * sin(rotation) + py * cos(rotation);
		APoint* point = new APoint((float)(int)rx, (float)(int)ry);
		level->Knots.AddToEnd(point);
	}
	level->FromKnotList();
}

void LH3DPolygonIsland::LevelGroup::MoveBasePointsInOut(Level* level)
{
	APoint centre(0.0f, 0.0f);
	float  waveSpeed = (TWO_PI / 10.0f) + ((rand() % 20000) / 1000.0f - 10.0f);
	float  waveStep = (float)(1 << (rand() % 16)) / level->Knots.count;
	float  waveAngle = (rand() % 6283) / 1000.0f;
	float  ripple = (rand() % (int)(waveStep * 1000.0f)) / 1000.0f;
	float  twist = TWO_PI / level->Knots.count * 0.25f;
	int    minRun = rand() % 3 + 4;
	rand();
	int extraRun = rand() % 4 + 3;
	int counter = rand() % 7;
	for (APoint* point = level->Knots.GetHead(); point != NULL; point = level->Knots.FindNext(point))
	{
		float scale;
		counter = (counter + 1) % (minRun + extraRun);
		if (counter > minRun && counter < minRun + extraRun)
		{
			waveAngle += waveSpeed;
			ripple += waveStep;
			scale = (sin(waveAngle) / 5.0f) * (cos(ripple) / 5.0f) + 0.65f;
			if (scale <= 0.35f)
				scale = 0.35f;
		}
		else
		{
			waveAngle += waveSpeed;
			ripple += waveStep;
			scale = (sin(waveAngle) / 5.0f) * (cos(ripple) / 5.0f) + 0.8f;
			scale *= 1.0f + ((rand() % 200) / 1000.0f - 0.1f);
		}
		float x = (float)(int)(scale * point->X);
		float y = (float)(int)(scale * point->Y);
		float angle = (rand() % (int)(twist * 2.0f * 1000.0f)) / 1000.0f - twist;
		point->X = x * cos(angle) - y * sin(angle);
		point->Y = x * sin(angle) + y * cos(angle);
	}
	level->FromKnotList();
}

float LH3DPolygonIsland::GetAngleFromTo(APoint* from, APoint* to)
{
	float dx = to->X - from->X;
	float dy = to->Y - from->Y;
	float dist = sqrt((dy * dy) * (dx * dx));
	return asin(dx / dist);
}

LH3DPolygonIsland::APoint::APoint(float x, float y)
{
	X = x;
	Y = y;
}

LH3DPolygonIsland::APoint::APoint(APoint& point)
{
	X = point.X;
	Y = point.Y;
}

LH3DPolygonIsland::APoint::APoint(APoint* point)
{
	X = point->X;
	Y = point->Y;
}

float LH3DPolygonIsland::APoint::GetDistance(float x, float y)
{
	float dx = fabs(x - X);
	float dy = fabs(y - Y);
	return sqrt(dx * dx + dy * dy);
}

LH3DPolygonIsland::Level::Level()
{
	Heights = new float[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	Map = new char[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	for (int i = 0; i < LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE; i++)
	{
		Heights[i] = 0.0f;
		Map[i] = 0;
	}
	field_0x2c = NULL;
	field_0x28 = NULL;
	KnotX = NULL;
	KnotY = NULL;
}

LH3DPolygonIsland::Level::~Level()
{
	delete[] Heights;
	delete[] Map;
	Clean();
}

void LH3DPolygonIsland::Level::Clean()
{
	Knots.DeleteAll();
	Points.DeleteAll();
	if (KnotX)
	{
		delete[] KnotX;
		KnotX = NULL;
	}
	if (KnotY)
	{
		delete[] KnotY;
		KnotY = NULL;
	}
	if (field_0x28)
	{
		delete[] field_0x28;
		field_0x28 = NULL;
	}
	if (field_0x2c)
	{
		delete[] field_0x2c;
		field_0x2c = NULL;
	}
}

void LH3DPolygonIsland::LevelGroup::CleanLevels()
{
	for (Level* level = Levels.GetHead(); level != NULL; level = Levels.FindNext(level))
	{
		level->Clean();
	}
	Towns.DeleteAll();
	Citadels.DeleteAll();
}

void LH3DPolygonIsland::Level::FromKnotList()
{
	int i = 1;
	if (KnotX)
		delete[] KnotX;
	if (KnotY)
		delete[] KnotY;
	KnotX = new float[Knots.count + 3];
	KnotY = new float[Knots.count + 3];
	LHLinkedNode<APoint*>* lastNode = Knots.GetLastNode();
	APoint*                last = lastNode ? lastNode->payload : NULL;
	KnotX[0] = last->X;
	KnotY[0] = last->Y;
	for (APoint* point = Knots.GetHead(); point != NULL; point = Knots.FindNext(point))
	{
		KnotX[i] = point->X;
		KnotY[i] = point->Y;
		i++;
	}
	APoint* first = Knots.GetHead();
	KnotX[i] = first->X;
	KnotY[i] = first->Y;
	i++;
	APoint* second = Knots.FindNext(first);
	KnotX[i] = second->X;
	KnotY[i] = second->Y;
	KnotCount = i - 1;
}

void LH3DPolygonIsland::Level::FromKnotArray()
{
	Knots.DeleteAll();
	for (int i = 0; i < KnotCount; i++)
	{
		APoint* point = new APoint(0.0f, 0.0f);
		point->X = KnotX[i + 1];
		point->Y = KnotY[i + 1];
		Knots.AddToEnd(point);
	}
}

void LH3DPolygonIsland::Level::GenerateUp(Level& below, float height, float scale)
{
	below.FromKnotList();
	float   step = 1.0f / (below.KnotCount * 0.8f);
	APoint* knot = below.Knots.GetHead();
	for (float t = 0.0f; t < 1.0f; t += step)
	{
		APoint* point = new APoint(0.0f, 0.0f);
		below.SplineAt(t, point);
		Knots.AddToEnd(point);
		knot = below.Knots.FindNext(knot);
	}
	for (APoint* point = Knots.GetHead(); point != NULL; point = Knots.FindNext(point))
	{
		point->X *= scale;
		point->Y *= scale;
	}
}

void LH3DPolygonIsland::Level::SplineAt(float t, APoint* point)
{
	point->X = Spline(t, KnotCount + 2, KnotX) + 0.5f;
	point->Y = Spline(t, KnotCount + 2, KnotY) + 0.5f;
}

void LH3DPolygonIsland::Level::GenerateMap()
{
	float t = 0.0f;
	int   last = -1;
	bool  first = true;
	int   lastX;
	int   lastY;
	FromKnotList();
	Points.DeleteAll();
	float startYF = Spline(0.0f, KnotCount + 2, KnotY);
	int   startX = (int)(Spline(0.0f, KnotCount + 2, KnotX) + 256.5f);
	int   startY = (int)(startYF + 256.5f);
	int   start = startY * LH3D_POLYGON_ISLAND_MAP_SIZE + startX;
	int   x;
	int   y;
	while (t <= 1.0f)
	{
	retry:
		float fy = Spline(t, KnotCount + 2, KnotY);
		x = (int)(Spline(t, KnotCount + 2, KnotX) + 256.5f);
		y = (int)(fy + 256.5f);
		int index = y * LH3D_POLYGON_ISLAND_MAP_SIZE + x;
		if (index != last || first)
		{
			if (index == start)
			{
				if (!first)
					break;
			}
			else if (!first && (abs(lastX - x) > 1 || abs(lastY - y) > 1))
			{
				t -= 5e-5f;
				goto retry;
			}
			SPoint* point = new SPoint;
			point->X = x;
			point->Y = y;
			Points.AddToEnd(point);
			Map[index]++;
			last = index;
			lastX = x;
			lastY = y;
			first = false;
		}
		t += 3e-5f;
	}
	if (abs(startX - x) > 1 || abs(startY - y) > 1)
		DebugBreak();
	DeletePointsThatLoop();
	int sumY = 0;
	int minX = LH3D_POLYGON_ISLAND_MAP_SIZE;
	int maxX = 0;
	int maxY = 0;
	int minY = LH3D_POLYGON_ISLAND_MAP_SIZE;
	int sumX = 0;
	for (SPoint* point = Points.GetHead(); point != NULL; point = Points.FindNext(point))
	{
		sumX += point->X;
		sumY += point->Y;
		if (point->X > maxX)
			maxX = point->X;
		if (point->X < minX)
			minX = point->X;
		if (point->Y > maxY)
			maxY = point->Y;
		if (point->Y < minY)
			minY = point->Y;
	}
	if (abs(maxX - minX) > 2 && abs(maxY - minY) > 2)
		Fill(sumX / Points.count, sumY / Points.count);
	CalculateMinMax();
}

static inline int GetPosition(LHLinkedList<LH3DPolygonIsland::SPoint*>& list, LH3DPolygonIsland::SPoint* point)
{
	int position = 0;
	for (LHLinkedNode<LH3DPolygonIsland::SPoint*>* node = list.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload == point)
			return position;
		position++;
	}
	return -1;
}

void LH3DPolygonIsland::Level::DeletePointsThatLoop()
{
	SPoint* point = Points.GetHead();
	while (point != NULL)
	{
		if (Map[point->Y * LH3D_POLYGON_ISLAND_MAP_SIZE + point->X] > 1)
		{
			SPoint* other = Points.GetHead();
			for (;;)
			{
				if (other != point && other->X == point->X && other->Y == point->Y)
					break;
				other = Points.FindNext(other);
				if (other == NULL)
					DebugBreak();
			}
			int pointPos = GetPosition(Points, point);
			int otherPos = GetPosition(Points, other);
			int diff = pointPos - otherPos;
			if (abs(diff) < 10)
			{
				point = Points.FindNext(point);
				continue;
			}
			if (diff < 0)
			{
				SPoint* next = Points.FindNext(point);
				if (next == NULL)
					next = Points.GetHead();
				while (next != other)
				{
					SPoint* current = next;
					next = Points.FindNext(next);
					if (next == NULL)
						next = Points.GetHead();
					Map[current->Y * LH3D_POLYGON_ISLAND_MAP_SIZE + current->X] = 0;
					Points.Remove(current);
					delete current;
				}
				Map[other->Y * LH3D_POLYGON_ISLAND_MAP_SIZE + other->X] = 1;
			}
			else
			{
				SPoint* next = Points.FindNext(other);
				if (next == NULL)
					next = Points.GetHead();
				while (next != point)
				{
					SPoint* current = next;
					next = Points.FindNext(next);
					if (next == NULL)
						next = Points.GetHead();
					Map[current->Y * LH3D_POLYGON_ISLAND_MAP_SIZE + current->X] = 0;
					Points.Remove(current);
					delete current;
				}
				Map[point->Y * LH3D_POLYGON_ISLAND_MAP_SIZE + point->X] = 1;
			}
		}
		point = Points.FindNext(point);
	}
}

static inline void AddRandomAreas(uint8_t* map, uint8_t type0, uint8_t type1, uint8_t type2, float max_radius)
{
	uint8_t type;
	for (int i = 0; i < 100; i++)
	{
		switch (rand() % 3)
		{
		case 0:
			type = type0;
			break;
		case 1:
			type = type1;
			break;
		case 2:
			type = type2;
			break;
		}
		int cx = rand() % LH3D_POLYGON_ISLAND_MAP_SIZE;
		int cy = rand() % LH3D_POLYGON_ISLAND_MAP_SIZE;
		for (float radius = max_radius; radius > 0.0f; radius -= 0.7f)
		{
			for (float angle = 0.0f; angle < TWO_PI; angle += DEGREES_TO_RADIANS)
			{
				int x = (int)(sin(angle) * radius + cx);
				int y = (int)(cos(angle) * radius + cy);
				if (x > 0 && x < LH3D_POLYGON_ISLAND_MAP_SIZE && y > 0 && y < LH3D_POLYGON_ISLAND_MAP_SIZE)
				{
					int index = y * LH3D_POLYGON_ISLAND_MAP_SIZE + x;
					map[index] = type;
				}
			}
		}
	}
}

void LH3DPolygonIsland::LevelGroup::GenerateCountryMap()
{
	LHPoint up(0.0f, 1.0f, 0.0f);
	up.Normalise();
	uint8_t* forests = new uint8_t[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	uint8_t* fields = new uint8_t[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	memset(forests, 0, LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE);
	memset(fields, 1, LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE);
	AddRandomAreas(forests, 0, 3, 5, 19.3f);
	AddRandomAreas(fields, 1, 8, 9, 29.3f);
	for (int x = 0; x < LH3D_POLYGON_ISLAND_MAP_SIZE; x++)
	{
		for (int y = 0; y < LH3D_POLYGON_ISLAND_MAP_SIZE; y++)
		{
			int     index = y * LH3D_POLYGON_ISLAND_MAP_SIZE + x;
			uint8_t height = (uint8_t)Heights[index];
			CountryMap[index] = forests[index];
			if (height == 0)
			{
				CountryMap[index] = 1;
			}
			else if (height < 7)
			{
				CountryMap[index] = 3;
			}
			else if (height > 100)
			{
				CountryMap[index] = fields[index];
			}
			else
			{
				LHPoint p1((float)x, Heights[index] * 0.25f, (float)y);
				LHPoint p2((float)(x + 1), Heights[index + 1] * 0.25f, (float)y);
				LHPoint p3((float)x, Heights[index + LH3D_POLYGON_ISLAND_MAP_SIZE] * 0.25f, (float)(y + 1));
				LHPoint v1;
				LHPoint v2;
				v1 = p3 - p2;
				v2 = p1 - p2;
				v1.Normalise();
				v2.Normalise();
				LHPoint normal;
				normal.CrossProduct(v2, v1);
				normal.Normalise();
				if (fabs(up.DotProductInline(normal)) < 0.3f)
					CountryMap[index] = 5;
			}
		}
	}
	delete[] forests;
	delete[] fields;
}

void LH3DPolygonIsland::LevelGroup::GenerateMask()
{
	for (int i = 0; i < LH3D_POLYGON_ISLAND_BLOCK_COUNT; i++)
	{
		for (int j = 0; j < LH3D_POLYGON_ISLAND_BLOCK_COUNT; j++)
		{
			for (int x = 0; x < LH3D_POLYGON_ISLAND_BLOCK_SIZE; x++)
			{
				for (int y = 0; y < LH3D_POLYGON_ISLAND_BLOCK_SIZE; y++)
				{
					if (GlobalMap[(j * LH3D_POLYGON_ISLAND_BLOCK_SIZE + y) * LH3D_POLYGON_ISLAND_MAP_SIZE +
					              i * LH3D_POLYGON_ISLAND_BLOCK_SIZE + x])
					{
						Mask[j * LH3D_POLYGON_ISLAND_BLOCK_COUNT + i] = 1;
						goto next;
					}
				}
			}
		next:;
		}
	}
}

void LH3DPolygonIsland::Level::GenerateHeightMap(char* map, bool sunken, float scale)
{
	for (int y = 0; y < LH3D_POLYGON_ISLAND_MAP_SIZE; y++)
	{
		for (int x = 0; x < LH3D_POLYGON_ISLAND_MAP_SIZE; x++)
		{
			int index = y * LH3D_POLYGON_ISLAND_MAP_SIZE + x;
			if (map[index] == Number)
			{
				float height;
				char  lower;
				char  higher;
				float lowerDist;
				float higherDist;
				float low;
				float ratio;
				if (sunken)
				{
					bool foundLower = false;
					bool foundHigher = false;
					for (int r = 0; r < LH3D_POLYGON_ISLAND_CIRCLE_COUNT; r++)
					{
						for (LHLinkedNode<SPoint*>* node = me->CirclePoints[r].GetStart(); node != NULL;
						     node = node->next.Get())
						{
							int px = x + node->payload->X;
							int py = y + node->payload->Y;
							if (px > 0 && px < LH3D_POLYGON_ISLAND_MAP_SIZE && py > 0 &&
							    py < LH3D_POLYGON_ISLAND_MAP_SIZE)
							{
								char value = map[py * LH3D_POLYGON_ISLAND_MAP_SIZE + px];
								if (value < Number)
								{
									lowerDist = (float)r;
									lower = value;
									if (lower != 0)
										lower = Number;
									foundLower = true;
								}
								if (value > Number)
								{
									higherDist = (float)r;
									higher = value;
									foundHigher = true;
								}
								if (foundLower && foundHigher)
									goto blend;
							}
						}
					}
				}
				height = level_heights[Number] * (1.0f / 255.0f);
				height = height * (scale * 250.0f);
				goto noise;
			blend:
				low = level_heights[lower];
				ratio = 1.0f / (higherDist + lowerDist) * lowerDist;
				height = low + ratio * (level_heights[higher] - low);
				if (height > 4.0f)
				{
					height = height * (1.0f / 255.0f);
					height = height * (scale * 250.0f) + 4.0f;
				}
				if (index > LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE)
					DebugBreak();
			noise:
				Heights[index] = (rand() % (int)(scale * 10000.0f)) / 1000.0f - scale * 5.0f + height;
				if (Heights[index] > 255.0f)
					Heights[index] = scale * 250.0f + 5.0f;
				if (Heights[index] < 0.0f)
					Heights[index] = 0.0f;
			}
		}
	}
}

void LH3DPolygonIsland::Level::Fill(int x, int y)
{
	LHLinkedList<flood_node*> stack;
	flood_node*               node = new flood_node;
	node->X = x;
	node->Y = y;
	stack.Add(node);
fill:
	while (Map[node->Y * LH3D_POLYGON_ISLAND_MAP_SIZE + node->X] == 0 && node->X != 0)
		node->X--;
	node->Current = node->X + 1;
	node->Right = 0;
	for (;;)
	{
		int index = node->Y * LH3D_POLYGON_ISLAND_MAP_SIZE + node->Current;
		if (Map[index] != 0 || node->Current == LH3D_POLYGON_ISLAND_MAP_SIZE)
			break;
		Map[index] = 1;
		node->Current++;
		node->Right++;
	}
	node->Right += node->X + 1;
	node->Current = node->X + 1;
	for (;;)
	{
		if (node->Current >= node->Right)
		{
			stack.Remove(node);
			delete node;
			node = stack.GetHead();
			if (node == NULL)
				break;
		}
		if (node->Y != 0 && Map[(node->Y - 1) * LH3D_POLYGON_ISLAND_MAP_SIZE + node->Current] == 0)
		{
			flood_node* next = new flood_node;
			next->X = node->Current;
			next->Y = node->Y - 1;
			stack.Add(next);
			node = next;
			goto fill;
		}
		if (node->Y != LH3D_POLYGON_ISLAND_MAP_SIZE - 1 &&
		    Map[(node->Y + 1) * LH3D_POLYGON_ISLAND_MAP_SIZE + node->Current] == 0)
		{
			flood_node* next = new flood_node;
			next->X = node->Current;
			next->Y = node->Y + 1;
			stack.Add(next);
			node = next;
			goto fill;
		}
		node->Current++;
	}
	stack.DeleteAll();
}

void LH3DPolygonIsland::LevelGroup::GenerateLightmap()
{
	LHPoint light(-1.0f, 1.0f, -0.25f);
	light.Normalise();
	int index = 0;
	for (int y = 0; y < LH3D_POLYGON_ISLAND_MAP_SIZE; y++)
	{
		for (int x = 0; x < LH3D_POLYGON_ISLAND_MAP_SIZE; x++, index++)
		{
			if (GlobalMap[index])
			{
				LHPoint here((float)x, Heights[index] / 4.0f, (float)y);
				LHPoint right((float)(x + 1), Heights[index + 1] / 4.0f, (float)y);
				LHPoint below((float)x, Heights[index + LH3D_POLYGON_ISLAND_MAP_SIZE] / 4.0f, (float)(y + 1));
				LHPoint across;
				LHPoint along;
				across = below - right;
				along = here - right;
				across.Normalise();
				along.Normalise();
				LHPoint normal;
				normal.CrossProduct(along, across);
				normal.Normalise();
				float brightness = normal.DotProductInline(light);
				if (brightness < 0.3f)
					Lightmap[index] = 76;
				else
					Lightmap[index] = (uint8_t)(brightness * 255.0f * 0.6f + 76.5f);
			}
		}
	}
}

void LH3DPolygonIsland::LevelGroup::Smooth()
{
	float* heights = new float[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	memcpy(heights, Heights, LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE * sizeof(float));
	for (int y = 0; y < LH3D_POLYGON_ISLAND_MAP_SIZE; y++)
	{
		for (int x = 0; x < LH3D_POLYGON_ISLAND_MAP_SIZE; x++)
		{
			int index = y * LH3D_POLYGON_ISLAND_MAP_SIZE + x;
			if (heights[index] > 0.0f)
			{
				if (!IsTooSteep(x, y, heights))
				{
					float height = heights[index] * 12.0f;
					height += heights[index + 1];
					height += heights[index - 1];
					height += heights[index + LH3D_POLYGON_ISLAND_MAP_SIZE];
					height += heights[index - LH3D_POLYGON_ISLAND_MAP_SIZE];
					height += heights[index + LH3D_POLYGON_ISLAND_MAP_SIZE + 1];
					height += heights[index + LH3D_POLYGON_ISLAND_MAP_SIZE - 1];
					height += heights[index - LH3D_POLYGON_ISLAND_MAP_SIZE + 1];
					height += heights[index - LH3D_POLYGON_ISLAND_MAP_SIZE - 1];
					height /= 20.0f;
					if (height > 255.0f)
						height = 255.0f;
					Heights[index] = height;
				}
				else
				{
					float height = heights[index] * 4.0f;
					height += heights[index + 1];
					height += heights[index - 1];
					height += heights[index + LH3D_POLYGON_ISLAND_MAP_SIZE];
					height += heights[index - LH3D_POLYGON_ISLAND_MAP_SIZE];
					height += heights[index + LH3D_POLYGON_ISLAND_MAP_SIZE + 1];
					height += heights[index + LH3D_POLYGON_ISLAND_MAP_SIZE - 1];
					height += heights[index - LH3D_POLYGON_ISLAND_MAP_SIZE + 1];
					height += heights[index - LH3D_POLYGON_ISLAND_MAP_SIZE - 1];
					height /= 12.0f;
					if (height > 255.0f)
						height = 255.0f;
					Heights[index] = height;
				}
			}
		}
	}
	delete[] heights;
}

static bool IsTooSteep(int x, int y, float* heights)
{
	float height = heights[y * LH3D_POLYGON_ISLAND_MAP_SIZE + x];
	for (int i = -1; i <= 1; i++)
	{
		for (int j = -1; j <= 1; j++)
		{
			if (fabs(height - heights[(y + j) * LH3D_POLYGON_ISLAND_MAP_SIZE + x + i]) > 100.0)
				return true;
		}
	}
	return false;
}

void LH3DPolygonIsland::LevelGroup::SmoothLightmap()
{
	uint8_t* lightmap = new uint8_t[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	memcpy(lightmap, Lightmap, LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE);
	for (int y = 0; y < LH3D_POLYGON_ISLAND_MAP_SIZE; y++)
	{
		for (int x = 0; x < LH3D_POLYGON_ISLAND_MAP_SIZE; x++)
		{
			int index = y * LH3D_POLYGON_ISLAND_MAP_SIZE + x;
			if (Lightmap[index] > 0)
			{
				float value = lightmap[index] * 3.0f;
				value += lightmap[index + 1];
				value += lightmap[index - 1];
				value += lightmap[index + LH3D_POLYGON_ISLAND_MAP_SIZE];
				value += lightmap[index - LH3D_POLYGON_ISLAND_MAP_SIZE];
				value += lightmap[index + LH3D_POLYGON_ISLAND_MAP_SIZE + 1];
				value += lightmap[index + LH3D_POLYGON_ISLAND_MAP_SIZE - 1];
				value += lightmap[index - LH3D_POLYGON_ISLAND_MAP_SIZE + 1];
				value += lightmap[index - LH3D_POLYGON_ISLAND_MAP_SIZE - 1];
				Lightmap[index] = (uint8_t)(value / 11.0f);
			}
		}
	}
	delete[] lightmap;
}

void LH3DPolygonIsland::Level::GenerateLevelVectors()
{
	int    count = Knots.count;
	float* knotX = new float[count + 1];
	float* knotY = new float[count + 1];
	float* knotZ = new float[count + 1];
	float* vectorX = new float[count + 1];
	float* vectorY = new float[count + 1];
	int    i = 0;
	for (APoint* knot = Knots.GetHead(); knot != NULL; knot = Knots.FindNext(knot))
	{
		knotX[i] = knot->X;
		knotY[i] = knot->Y;
		i++;
	}
	for (i = 0; i < count; i++)
	{
		int prev = i - 1;
		int next = i + 1;
		if (next == count)
			next = 0;
		if (prev < 0)
			prev = count - 1;
		float dx = knotX[prev] - knotX[next];
		float dy = knotY[prev] - knotY[next];
		float length = sqrt(dx * dx + dy * dy);
		dx /= length;
		dy /= length;
		vectorX[i] = dx * cos(HALF_PI_F) - dy * sin(HALF_PI_F);
		vectorY[i] = dx * sin(HALF_PI_F) + dy * cos(HALF_PI_F);
	}
	i = 0;
	for (APoint* point = Knots.GetHead(); point != NULL; point = Knots.FindNext(point))
	{
		point->VectorZ = knotZ[i];
		point->VectorX = vectorX[i];
		point->VectorY = vectorY[i];
		i++;
	}
	delete[] knotY;
	delete[] knotX;
	delete[] vectorX;
	delete[] vectorY;
	delete[] knotZ;
}

void LH3DPolygonIsland::LevelGroup::ScaleToFit(int size)
{
	float height = 0.0f;
	while (CountBlocksAbove(height) > size)
		height += 1.0f;
	for (int i = 0; i < LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE; i++)
	{
		if (Heights[i] <= height)
		{
			GlobalMap[i] = 0;
			Heights[i] = 0.0f;
		}
		else
		{
			Heights[i] -= height;
		}
	}
}

int LH3DPolygonIsland::LevelGroup::CountBlocksAbove(float height)
{
	int count = 0;
	for (int blockX = 0; blockX < LH3D_POLYGON_ISLAND_BLOCK_COUNT; blockX++)
	{
		for (int blockY = 0; blockY < LH3D_POLYGON_ISLAND_BLOCK_COUNT; blockY++)
		{
			for (int x = 0; x < LH3D_POLYGON_ISLAND_BLOCK_SIZE; x++)
			{
				for (int y = 0; y < LH3D_POLYGON_ISLAND_BLOCK_SIZE; y++)
				{
					if (Heights[(blockY * LH3D_POLYGON_ISLAND_BLOCK_SIZE + y) * LH3D_POLYGON_ISLAND_MAP_SIZE +
					            blockX * LH3D_POLYGON_ISLAND_BLOCK_SIZE + x] > height)
					{
						count++;
						goto next;
					}
				}
			}
		next:;
		}
	}
	return count;
}

void LH3DPolygonIsland::Level::GenerateKnots(int count)
{
	int i = 1;
	if (KnotX)
		delete[] KnotX;
	if (KnotY)
		delete[] KnotY;
	KnotX = new float[count + 3];
	KnotY = new float[count + 3];
	float*                 knotX = new float[Knots.count + 2];
	float*                 knotY = new float[Knots.count + 2];
	LHLinkedNode<APoint*>* lastNode = Knots.GetLastNode();
	APoint*                last = lastNode ? lastNode->payload : NULL;
	knotX[0] = last->X;
	knotY[0] = last->Y;
	for (APoint* knot = Knots.GetHead(); knot != NULL; knot = Knots.FindNext(knot))
	{
		knotX[i] = (float)(int)(knot->X + 0.5f);
		knotY[i] = (float)(int)(knot->Y + 0.5f);
		i++;
	}
	APoint* first = Knots.GetHead();
	knotX[i] = first->X;
	knotY[i] = first->Y;
	int j = 0;
	for (float t = 0.0f; t <= 1.0f; t += 1.0f / count)
	{
		KnotX[j] = Spline(t, i + 1, knotX);
		KnotY[j] = Spline(t, i + 1, knotY);
		j++;
	}
	FromKnotArray();
	delete[] knotX;
	delete[] knotY;
}

void LH3DPolygonIsland::Level::CalculateMinMax()
{
	MaxX = MaxY = 0;
	MinX = MinY = LH3D_POLYGON_ISLAND_MAP_SIZE;
	for (int x = 0; x < LH3D_POLYGON_ISLAND_MAP_SIZE; x++)
	{
		for (int y = 0; y < LH3D_POLYGON_ISLAND_MAP_SIZE; y++)
		{
			if (Map[y * LH3D_POLYGON_ISLAND_MAP_SIZE + x])
			{
				MaxX = MaxX > x ? MaxX : x;
				MinX = MinX < x ? MinX : x;
				MaxY = MaxY > y ? MaxY : y;
				MinY = MinY < y ? MinY : y;
			}
		}
	}
	CentreX = (MinX + MaxX) >> 1;
	CentreY = (MinY + MaxY) >> 1;
}

int LH3DPolygonIsland::Level::GetRandXInRange()
{
	int range = MaxX - MinX;
	return rand() % range + MinX;
}

int LH3DPolygonIsland::Level::GetRandYInRange()
{
	int range = MaxY - MinY;
	return rand() % range + MinY;
}

void LH3DPolygonIsland::BumpyLevel::Generate(Level* base, int count, int size)
{
	int    half = count >> 1;
	int    remaining = rand() % half + half;
	float  spacing = (7.0f - size) * 0.25f;
	SPoint point;
	while (remaining)
	{
		int x = base->GetRandXInRange();
		int y = base->GetRandYInRange();
		point.X = x;
		point.Y = y;
		if (base->Map[y * LH3D_POLYGON_ISLAND_MAP_SIZE + x] &&
		    !me->Group->GetClosestTownToPoint(&point, spacing * DEGREES_TO_RADIANS) &&
		    !me->Group->GetClosestCitadelToPoint(&point, spacing * 15.0f))
		{
			APoint* centre = &APoint((float)x, (float)y);
			char*   map = Map;
			bool    clear = true;
			int     radius;
			float   angle;
			float   dx;
			float   dy;
			for (radius = (int)(size * 1.5); radius; radius--)
			{
				float r;
				for (angle = 0.0f, r = (float)radius; angle < TWO_PI; angle += (4.0f * DEGREES_TO_RADIANS))
				{
					dy = r * cos(angle);
					dx = r * sin(angle);
					if (map[(int)((centre->Y + (int)dy) * LH3D_POLYGON_ISLAND_MAP_SIZE + (int)dx + centre->X)])
					{
						clear = false;
						break;
					}
				}
				if (!clear)
					break;
			}
			if (clear)
			{
				for (radius = size; radius; radius--)
				{
					float r;
					for (angle = 0.0f, r = (float)radius; angle < TWO_PI; angle += (4.0f * DEGREES_TO_RADIANS))
					{
						dy = r * cos(angle);
						dx = r * sin(angle);
						map[(int)((centre->Y + (int)dy) * LH3D_POLYGON_ISLAND_MAP_SIZE + (int)dx + centre->X)] = 1;
					}
				}
				remaining--;
			}
		}
	}
}

void LH3DPolygonIsland::LevelGroup::ThermalErodeHeightmap()
{
	LHPoint up(0.0f, 1.0f, 0.0f);
	up.Normalise();
	for (int y = 0; y < LH3D_POLYGON_ISLAND_MAP_SIZE; y++)
	{
		for (int x = 0; x < LH3D_POLYGON_ISLAND_MAP_SIZE; x++)
		{
			if (GlobalMap[y * LH3D_POLYGON_ISLAND_MAP_SIZE + x])
			{
				float height = Heights[y * LH3D_POLYGON_ISLAND_MAP_SIZE + x];
				float lowest = Heights[y * LH3D_POLYGON_ISLAND_MAP_SIZE + x];
				int   lowestX;
				int   lowestY;
				for (int i = -1; i <= 1; i++)
				{
					for (int j = -1; j <= 1; j++)
					{
						if (Heights[(y + j) * LH3D_POLYGON_ISLAND_MAP_SIZE + x + i] < lowest)
						{
							lowest = Heights[(y + j) * LH3D_POLYGON_ISLAND_MAP_SIZE + x + i];
							lowestX = x + i;
							lowestY = y + j;
						}
					}
				}
				float drop = fabs(height - lowest);
				if (drop != 0.0f)
				{
					LHPoint here((float)x, height, (float)y);
					LHPoint low((float)lowestX, lowest, (float)lowestY);
					LHPoint slope = low - here;
					slope.Normalise();
					float dot = up * slope;
					if (dot < 0.0f)
					{
						drop *= 0.5f;
						float amount = drop * fabs(dot);
						float raised = Heights[lowestY * LH3D_POLYGON_ISLAND_MAP_SIZE + lowestX] + amount;
						Heights[y * LH3D_POLYGON_ISLAND_MAP_SIZE + x] -= amount;
						Heights[lowestY * LH3D_POLYGON_ISLAND_MAP_SIZE + lowestX] = raised;
					}
				}
			}
		}
	}
}

LH3DPolygonIsland::SPoint* LH3DPolygonIsland::LevelGroup::GetClosestTownToPoint(SPoint* point, float max_dist)
{
	float   closestDist = 0.0f;
	SPoint* closest = NULL;
	for (SPoint* town = Towns.GetHead(); town != NULL; town = Towns.FindNext(town))
	{
		int   dx = point->X - town->X;
		int   dy = point->Y - town->Y;
		float dist = sqrt((float)(dx * dx + dy * dy));
		if (closest == NULL)
		{
			if (dist <= max_dist)
			{
				closestDist = dist;
				closest = town;
			}
		}
		else if (dist < closestDist)
		{
			closestDist = dist;
		}
	}
	return closest;
}

LH3DPolygonIsland::SPoint* LH3DPolygonIsland::LevelGroup::GetClosestCitadelToPoint(SPoint* point, float max_dist)
{
	SPoint* closest = NULL;
	float   closestDist;
	for (SPoint* citadel = Citadels.GetHead(); citadel != NULL; citadel = Citadels.FindNext(citadel))
	{
		int   dx = point->X - citadel->X;
		int   dy = point->Y - citadel->Y;
		float dist = sqrt((float)(dx * dx + dy * dy));
		if (closest == NULL)
		{
			if (dist <= max_dist)
			{
				closestDist = dist;
				closest = citadel;
			}
		}
		else if (dist < closestDist)
		{
			closestDist = dist;
		}
	}
	return closest;
}

bool LH3DPolygonIsland::LevelGroup::CanBuildHere(int x, int y, int radius, char* map)
{
	while (radius-- > 0.0f)
	{
		LHLinkedList<SPoint*>& circle = me->CirclePoints[(int)(radius + 0.5f)];
		for (LHLinkedNode<SPoint*>* node = circle.GetStart(); node != NULL; node = node->next.Get())
		{
			SPoint* point = node->payload;
			if (!map[x + point->X + (y + point->Y) * LH3D_POLYGON_ISLAND_MAP_SIZE])
				return false;
		}
	}
	return true;
}

void LH3DPolygonIsland::LevelGroup::PlaceCitadels(int count, char* map, float density)
{
	float radius = 70.0f;
	int   x;
	int   y;
	do
	{
		x = rand() % LH3D_POLYGON_ISLAND_MAP_SIZE;
		y = rand() % LH3D_POLYGON_ISLAND_MAP_SIZE;
	} while (!CanBuildHere(x, y, 37, map));
	SPoint* first = new SPoint(x, y);
	Citadels.AddToEnd(first);
	for (int i = 1; i < count; i++)
	{
		SPoint* citadel = new SPoint;
		float   angle = (rand() % 6283) / 1000.0f;
		bool    placed = false;
		int     tries = 0;
		int     index = -1;
		while (!placed)
		{
			if (++tries == count)
			{
				tries = 0;
				radius -= 5.0f;
			}
			if (++index == Citadels.count)
				index = 0;
			int   baseX = Citadels.GetAtPosition(index % Citadels.count)->X;
			int   baseY = Citadels.GetAtPosition(index % Citadels.count)->Y;
			float step = ((rand() & 1) == 1 ? TWO_PI : -TWO_PI) / 360.0f;
			for (int j = 0; j < 360; j++)
			{
				angle += step;
				if (angle < 0.0f)
					angle += TWO_PI;
				else if (angle > TWO_PI)
					angle -= TWO_PI;
				int px = (int)((float)sin(angle) * radius + baseX);
				int py = (int)((float)cos(angle) * radius + baseY);
				citadel->X = px;
				citadel->Y = py;
				if (CanBuildHere(px, py, 30, map) && !GetClosestCitadelToPoint(citadel, radius))
				{
					Citadels.AddToEnd(citadel);
					placed = true;
					break;
				}
			}
		}
	}
}

void LH3DPolygonIsland::LevelGroup::PlaceCitadelTowns(char* map)
{
	uint8_t number = 1;
	SPoint  pos;
	for (SPoint* citadel = Citadels.GetHead(); citadel != NULL; citadel = Citadels.FindNext(citadel))
	{
		for (float radius = 19.5f; radius < 100.0f; radius += 1.0f)
		{
			float turn = 0.0f;
			float angle = (rand() % 6283) / 1000.0f;
			while (turn < TWO_PI)
			{
				int x = (int)(sin(angle) * radius + citadel->X);
				int y = (int)(cos(angle) * radius + citadel->Y);
				pos.X = x;
				pos.Y = y;
				if (map[y * LH3D_POLYGON_ISLAND_MAP_SIZE + x] && CanBuildHere(x, y, 18, map) &&
				    GetClosestTownToPoint(&pos, 26.0f) == NULL)
				{
					SPoint* town = new SPoint(pos);
					town->Used = number;
					Towns.AddToEnd(town);
					goto next;
				}
				angle += DEGREES_TO_RADIANS;
				turn += DEGREES_TO_RADIANS;
			}
		}
	next:
		number++;
	}
}

void LH3DPolygonIsland::LevelGroup::PlaceTowns(char* map, float density)
{
	float scale = density * 1.5f;
	float spacing = (scale + 1.5f) * 13.0f;
	int   centreX = 0;
	int   centreY = 0;
	for (SPoint* citadel = Citadels.GetHead(); citadel != NULL; citadel = Citadels.FindNext(citadel))
	{
		centreX += citadel->X;
		centreY += citadel->Y;
	}
	float angle = (rand() % 6283) / 1000.0f;
	float step = (rand() % 314) / 1000.0f;
	for (int x = 0; x < LH3D_POLYGON_ISLAND_MAP_SIZE; x += 6)
	{
		for (int y = 0; y < LH3D_POLYGON_ISLAND_MAP_SIZE; y += 6)
		{
			if (map[y * LH3D_POLYGON_ISLAND_MAP_SIZE + x])
			{
				SPoint pos;
				pos.X = (int)(cos(angle + (rand() % 31) / 1000.0f) * 2.0f + x);
				pos.Y = (int)(sin(angle) * 2.0 + y);
				if (CanBuildHere(pos.X, pos.Y, 21, map) && GetClosestTownToPoint(&pos, spacing) == NULL &&
				    GetClosestCitadelToPoint(&pos, 28.6f) == NULL)
				{
					SPoint* town = new SPoint(pos);
					town->Used = 0xff;
					Towns.AddToEnd(town);
					y = (int)(y + 7.0f);
				}
				angle += step;
			}
		}
	}
}

void LH3DPolygonIsland::GenearateCirclePoints()
{
	int lastY = -400;
	int lastX = -400;
	int i = 0;
	for (float radius = 0.0f; radius < 200.0f; radius += 1.0f)
	{
		CirclePoints[i].DeleteAll();
		for (float angle = 0.0f; angle < TWO_PI; angle += TWO_PI / 500.0f)
		{
			int x = (int)((float)sin(angle) * radius + 0.5f);
			int y = (int)((float)cos(angle) * radius + 0.5f);
			if (x != lastX || y != lastY)
			{
				lastY = y;
				lastX = x;
				SPoint* point = new SPoint;
				point->X = x;
				point->Y = y;
				CirclePoints[i].AddToEnd(point);
			}
		}
		i++;
	}
}

void LH3DPolygonIsland::LevelGroup::SmoothAreaForAbode(SPoint* point, float radius)
{
	float total = 0.0f;
	int   count = 0;
	int   size = (int)(radius + 1.0f);
	int   i = size;
	do
	{
		for (LHLinkedNode<SPoint*>* node = me->CirclePoints[i].GetStart(); node != NULL; node = node->next.Get())
		{
			SPoint* offset = node->payload;
			total += Heights[(offset->Y + point->Y) * LH3D_POLYGON_ISLAND_MAP_SIZE + offset->X + point->X];
			count++;
		}
	} while (i--);
	total /= count;
	do
	{
		for (LHLinkedNode<SPoint*>* node = me->CirclePoints[size].GetStart(); node != NULL; node = node->next.Get())
		{
			SPoint* offset = node->payload;
			Heights[(offset->Y + point->Y) * LH3D_POLYGON_ISLAND_MAP_SIZE + offset->X + point->X] = total;
		}
	} while (size--);
}

void LH3DPolygonIsland::LevelGroup::SmoothAtPositionWidth(SPoint* point, int width)
{
	float  radius = width * 2;
	float* copy = new float[LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE];
	memcpy(copy, Heights, LH3D_POLYGON_ISLAND_MAP_SIZE * LH3D_POLYGON_ISLAND_MAP_SIZE * sizeof(float));
	while (radius-- != width)
	{
		SmoothAtPosition(Heights, copy, point->X, point->Y, 1.0f - (radius - width) * (1.0f / width), (int)radius);
	}
	delete[] copy;
}

static void SmoothAtPosition(float* dest, float* src, int x, int y, float strength, int radius)
{
	int weight = (int)(strength * 5.0f + 1.0f);
	int total = weight + 8;
	for (LHLinkedNode<LH3DPolygonIsland::SPoint*>* node = LH3DPolygonIsland::me->CirclePoints[radius].GetStart();
	     node != NULL; node = node->next.Get())
	{
		LH3DPolygonIsland::SPoint* offset = node->payload;
		int                        i = (offset->Y + y) * LH3D_POLYGON_ISLAND_MAP_SIZE + offset->X + x;
		if (src[i] > 0.0f)
		{
			float value = weight * src[i];
			value += src[i + 1];
			value += src[i - 1];
			value += src[i + LH3D_POLYGON_ISLAND_MAP_SIZE];
			value += src[i - LH3D_POLYGON_ISLAND_MAP_SIZE];
			value += src[i + LH3D_POLYGON_ISLAND_MAP_SIZE + 1];
			value += src[i + LH3D_POLYGON_ISLAND_MAP_SIZE - 1];
			value += src[i - LH3D_POLYGON_ISLAND_MAP_SIZE + 1];
			value += src[i - LH3D_POLYGON_ISLAND_MAP_SIZE - 1];
			value /= total;
			if (value > 255.0f)
				value = 255.0f;
			dest[i] = value;
		}
	}
}

float LH3DPolygonIsland::Spline(float t, int count, float* knots)
{
	int segments = count - 3;
	if (segments < 0)
		DebugBreak();
	float x = (t > 0.0f ? (t < 1.0f ? t : 1.0f) : 0.0f) * segments;
	int   segment = (int)x;
	if (segment >= count - 3)
		segment = count - 3;
	x -= segment;
	float* k = &knots[segment];
	float  a = (k[3] * 0.5f - k[2] * 1.5f) + k[1] * 1.5f - k[0] * 0.5f;
	float  b = k[2] * 2.0f - k[3] * 0.5f - k[1] * 2.5f + k[0];
	float  c = k[2] * 0.5f - k[0] * 0.5f;
	float  d = k[1];
	return ((a * x + b) * x + c) * x + d;
}
