#ifndef BW1_DECOMP_LH3D_POLYGON_ISLAND_INCLUDED_H
#define BW1_DECOMP_LH3D_POLYGON_ISLAND_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */
#include <stdint.h>    /* For uint8_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For LHLinkedList */

#define LH3D_POLYGON_ISLAND_CIRCLE_COUNT      200
#define LH3D_POLYGON_ISLAND_MAP_SIZE          512
#define LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE 64
#define LH3D_POLYGON_ISLAND_BLOCK_SIZE        16
#define LH3D_POLYGON_ISLAND_BLOCK_COUNT       (LH3D_POLYGON_ISLAND_MAP_SIZE / LH3D_POLYGON_ISLAND_BLOCK_SIZE)

// BW1W120 00c399c8 BW1M119 011d0c7c (LHCombined Release)
extern int add_x[8];
// BW1W120 00c399e8 BW1M119 011d0c9c (LHCombined Release)
extern int add_y[8];

class LH3DPolygonIsland
{
public:
	struct SPoint
	{
		int     X;
		int     Y;
		uint8_t Used;

		SPoint()
		{
			X = 0;
			Y = 0;
			Used = 0;
		}
		SPoint(int x, int y)
		{
			X = x;
			Y = y;
			Used = 0;
		}
		SPoint(SPoint& point)
		{
			X = point.X;
			Y = point.Y;
			Used = point.Used;
		}
	};

	struct APoint
	{
		float X;
		float Y;
		float field_0x8;
		float VectorX; /* 0xc */
		float VectorY; /* 0x10 */
		float VectorZ; /* 0x14 */

		// BW1W120 0087bd00 BW1M119 0108dc40 (LHCombined Release)
		APoint(float x, float y);
		// BW1W120 0087bd20 BW1M119 0108dbd0 (LHCombined Release)
		APoint(APoint& point);
		// BW1W120 0087bd40 BW1M119 0108db60 (LHCombined Release)
		APoint(APoint* point);
		// BW1W120 0087bd60 BW1M119 0108da90 (LHCombined Release)
		float GetDistance(float x, float y);
	};

	struct PresenceNode
	{
		uint8_t Present;
		int     Value;

		// BW1W120 inlined BW1M119 01090560 (LHCombined Release)
		PresenceNode()
		{
			Present = 0;
			Value = 0;
		}
	};

	template <int N> struct PresenceMap
	{
		PresenceNode Nodes[N][N];
		int          Size;

		PresenceMap()
		{
			Reset(false);
			Size = N;
		}
		// BW1W120 inlined BW1M119 010904c0 (LHCombined Release)
		void Reset(bool present)
		{
			for (int i = 0; i < Size; i++)
			{
				for (int j = 0; j < Size; j++)
				{
					Nodes[i][j].Present = present;
					Nodes[i][j].Value = 0;
				}
			}
		}
		// BW1W120 inlined BW1M119 null
		bool IsInside(int x, int y) { return x >= 0 && x < Size && y >= 0 && y < Size; }
		// BW1W120 0087f430 BW1M119 null
		uint8_t Get(int x, int y, int range);
		// BW1W120 0087f490 BW1M119 null
		uint8_t Set(int x, int y, uint8_t present, int range);
		// BW1W120 inlined BW1M119 null
		PresenceNode* GetNode(int x, int y)
		{
			if (!IsInside(x, y))
			{
				x %= Size;
				y %= Size;
			}
			return &Nodes[x][y];
		}
		// BW1W120 0087f4f0 BW1M119 null
		uint8_t CountNeighbours(int x, int y);
		// BW1W120 0087f130 BW1M119 null
		void RemoveCorners();
	};

	struct Level
	{
		struct flood_node
		{
			int X;
			int Y;
			int field_0x8;
			int Right;
			int Current;
		};

		int                   field_0x0;
		float*                Heights; /* 0x4 */
		char*                 Map;     /* 0x8 */
		char                  Number;  /* 0xc */
		LHLinkedList<APoint*> Knots;   /* 0x10 */
		LHLinkedList<SPoint*> Points;  /* 0x18 */
		float*                KnotX;   /* 0x20 */
		float*                KnotY;   /* 0x24 */
		float*                field_0x28;
		float*                field_0x2c;
		int                   KnotCount; /* 0x30 */
		int                   MinX;      /* 0x34 */
		int                   MaxX;      /* 0x38 */
		int                   MinY;      /* 0x3c */
		int                   MaxY;      /* 0x40 */
		int                   CentreX;   /* 0x44 */
		int                   CentreY;   /* 0x48 */

		// BW1W120 0087bd90 BW1M119 0108d5f0 (LHCombined Release)
		Level();
		// BW1W120 0087be20 BW1M119 0108d540 (LHCombined Release)
		~Level();
		// BW1W120 0087be80 BW1M119 0108d3f0 (LHCombined Release)
		void Clean();
		// BW1W120 0087c080 BW1M119 0108cf00 (LHCombined Release)
		void FromKnotList();
		// BW1W120 0087c1a0 BW1M119 0108cc80 (LHCombined Release)
		void FromKnotArray();
		// BW1W120 0087c280 BW1M119 0108c900 (LHCombined Release)
		void GenerateUp(Level& below, float height, float scale);
		// BW1W120 0087c3b0 BW1M119 0108c820 (LHCombined Release)
		void SplineAt(float t, APoint* point);
		// BW1W120 0087c400 BW1M119 0108c460 (LHCombined Release)
		void GenerateMap();
		// BW1W120 0087c710 BW1M119 0108bc70 (LHCombined Release)
		void DeletePointsThatLoop();
		// BW1W120 0087cf00 BW1M119 0108b160 (LHCombined Release)
		void GenerateHeightMap(char* map, bool sunken, float scale);
		// BW1W120 0087d160 BW1M119 0108a890 (LHCombined Release)
		void Fill(int x, int y);
		// BW1W120 0087d890 BW1M119 01089c40 (LHCombined Release)
		void GenerateLevelVectors();
		// BW1W120 0087db50 BW1M119 01089520 (LHCombined Release)
		void GenerateKnots(int count);
		// BW1W120 0087dd20 BW1M119 01089370 (LHCombined Release)
		void CalculateMinMax();
		// BW1W120 0087ddc0 BW1M119 010892d0 (LHCombined Release)
		int GetRandXInRange();
		// BW1W120 0087dde0 BW1M119 01089230 (LHCombined Release)
		int GetRandYInRange();
	};

	struct BumpyLevel : public Level
	{
		// BW1W120 0087de00 BW1M119 01088e10 (LHCombined Release)
		void Generate(Level* base, int count, int size);
	};

	struct LevelGroup
	{
		struct LevelMassAmalgamation
		{
			uint8_t* Data;

			LevelMassAmalgamation() { Data = NULL; }
			// BW1W120 0087a5e0 BW1M119 01090400 (LHCombined Release)
			~LevelMassAmalgamation()
			{
				if (Data)
					delete[] Data;
			}
		};

		char*                                              GlobalMap;    /* 0x0 */
		uint8_t*                                           Lightmap;     /* 0x4 */
		uint8_t*                                           CountryMap;   /* 0x8 */
		uint8_t*                                           Mask;         /* 0xc */
		float*                                             Heights;      /* 0x10 */
		PresenceMap<LH3D_POLYGON_ISLAND_PRESENCE_MAP_SIZE> Presence;     /* 0x14 */
		LevelMassAmalgamation                              Amalgamation; /* 0x8018 */
		LHLinkedList<SPoint*>                              Towns;        /* 0x801c */
		LHLinkedList<SPoint*>                              Citadels;     /* 0x8024 */
		LHLinkedList<Level*>                               Levels;       /* 0x802c */

		// BW1W120 0087a4b0 BW1M119 01090100 (LHCombined Release)
		LevelGroup();
		// BW1W120 0087a5f0 BW1M119 0108fe20 (LHCombined Release)
		~LevelGroup();
		// BW1W120 0087a710 BW1M119 0108fb50 (LHCombined Release)
		void Generate(float x, float y, float radius);
		// BW1W120 0087a8e0 BW1M119 0108f5c0 (LHCombined Release)
		void GenerateBumpyLevels(int count);
		// BW1W120 0087ab20 BW1M119 0108f370 (LHCombined Release)
		void MergeWithLevelGroup(LevelGroup* group, int x, int y);
		// BW1W120 0087ac00 BW1M119 0108f110 (LHCombined Release)
		void PlaceBuildings(int count, float town_density, float citadel_density);
		// BW1W120 0087ace0 BW1M119 0108eef0 (LHCombined Release)
		void GenerateGlobalMap();
		// BW1W120 0087ad60 BW1M119 0108ea10 (LHCombined Release)
		void GenerateHeightMap(float scale);
		// BW1W120 0087b590 BW1M119 0108e7a0 (LHCombined Release)
		void CreateBase(float x, float y, int count, Level* level, float rotation);
		// BW1W120 0087b730 BW1M119 0108e280 (LHCombined Release)
		void MoveBasePointsInOut(Level* level);
		// BW1W120 0087ba30 BW1M119 0108dc90 (LHCombined Release)
		void Save(char* name);
		// BW1W120 0087bf80 BW1M119 0108d160 (LHCombined Release)
		void CleanLevels();
		// BW1W120 0087c9b0 BW1M119 0108b5f0 (LHCombined Release)
		void GenerateCountryMap();
		// BW1W120 0087ce90 BW1M119 0108b500 (LHCombined Release)
		void GenerateMask();
		// BW1W120 0087d3c0 BW1M119 0108a490 (LHCombined Release)
		void GenerateLightmap();
		// BW1W120 0087d5e0 BW1M119 0108a200 (LHCombined Release)
		void Smooth();
		// BW1W120 0087d780 BW1M119 0108a000 (LHCombined Release)
		void SmoothLightmap();
		// BW1W120 0087da50 BW1M119 01089b20 (LHCombined Release)
		void ScaleToFit(int size);
		// BW1W120 0087dad0 BW1M119 010899d0 (LHCombined Release)
		int CountBlocksAbove(float height);
		// BW1W120 0087e030 BW1M119 01088ab0 (LHCombined Release)
		void ThermalErodeHeightmap();
		// BW1W120 0087e280 BW1M119 01088920 (LHCombined Release)
		SPoint* GetClosestTownToPoint(SPoint* point, float max_dist);
		// BW1W120 0087e340 BW1M119 01088790 (LHCombined Release)
		SPoint* GetClosestCitadelToPoint(SPoint* point, float max_dist);
		// BW1W120 0087e3f0 BW1M119 01088640 (LHCombined Release)
		bool CanBuildHere(int x, int y, int radius, char* map);
		// BW1W120 0087e480 BW1M119 01088100 (LHCombined Release)
		void PlaceCitadels(int count, char* map, float density);
		// BW1W120 0087e770 BW1M119 01087e20 (LHCombined Release)
		void PlaceCitadelTowns(char* map);
		// BW1W120 0087e930 BW1M119 01087950 (LHCombined Release)
		void PlaceTowns(char* map, float density);
		// BW1W120 0087ece0 BW1M119 010870e0 (LHCombined Release)
		void SmoothAreaForAbode(SPoint* point, float radius);
		// BW1W120 0087edd0 BW1M119 01086f50 (LHCombined Release)
		void SmoothAtPositionWidth(SPoint* point, int width);
	};

	LevelGroup*           Group;                                          /* 0x4 */
	LHLinkedList<SPoint*> CirclePoints[LH3D_POLYGON_ISLAND_CIRCLE_COUNT]; /* 0x8 */

	// BW1W120 00fa93a8 BW1M119 012b3760 (LHCombined Release)
	static LH3DPolygonIsland* me;
	// BW1W120 00c39a08 BW1M119 011d0cbc (LHCombined Release)
	static float knot_scale;

	// BW1W120 0087a340 BW1M119 010906b0 (LHCombined Release)
	LH3DPolygonIsland();
	// BW1W120 0087a3d0 BW1M119 010905b0 (LHCombined Release)
	virtual ~LH3DPolygonIsland();
	// BW1W120 0087af00 BW1M119 null
	void Generate(char* name, int complexity, float town_density, float citadel_density, float height);
	// BW1W120 0087b9f0 BW1M119 0108e160 (LHCombined Release)
	float GetAngleFromTo(APoint* from, APoint* to);
	// BW1W120 0087eb50 BW1M119 01087480 (LHCombined Release)
	void GenearateCirclePoints();
	// BW1W120 0087ef80 BW1M119 01086dd0 (LHCombined Release)
	static float Spline(float t, int count, float* knots);
};
template <int N> uint8_t LH3DPolygonIsland::PresenceMap<N>::Get(int x, int y, int range)
{
	int scale = range / Size;
	if (!IsInside(x / scale, y / scale))
	{
		x = 0;
		y = 0;
	}
	return Nodes[x / scale][y / scale].Present;
}

template <int N> uint8_t LH3DPolygonIsland::PresenceMap<N>::Set(int x, int y, uint8_t present, int range)
{
	int scale = range / Size;
	if (!IsInside(x / scale, y / scale))
	{
		x = 0;
		y = 0;
	}
	return Nodes[x / scale][y / scale].Present = present;
}

template <int N> void LH3DPolygonIsland::PresenceMap<N>::RemoveCorners()
{
	PresenceNode nodes[N][N];
	for (int i = 0; i < Size; i++)
	{
		for (int j = 0; j < Size; j++)
		{
			if (Get(i, j, N))
			{
				if (CountNeighbours(i, j) == 2)
				{
					uint8_t mask = 0;
					for (int k = 0; k <= 8; k++)
					{
						int x = add_x[k % 8] + i;
						int y = add_y[k % 8] + j;
						if (GetNode(x, y))
							mask |= 1 << k;
					}
					bool state = (mask & 1) == 1;
					int  changes = 0;
					for (int b = 1; b < 8; b++)
					{
						if (!(mask & (1 << b)) == state)
						{
							state = !state;
							changes++;
						}
					}
					if (changes <= 1)
					{
						nodes[i][j].Present = 0;
						continue;
					}
				}
				nodes[i][j].Present = 1;
			}
			else
			{
				nodes[i][j].Present = 0;
			}
		}
	}
	memcpy(Nodes, nodes, sizeof(Nodes));
}

template <int N> uint8_t LH3DPolygonIsland::PresenceMap<N>::CountNeighbours(int x, int y)
{
	if (!IsInside(x, y))
		return 0;
	uint8_t count = 0;
	if (!Get(x, y, N))
		return 0;
	for (int i = 0; i < 8; i++)
	{
		if (IsInside(x + add_x[i], y + add_y[i]) && Get(x + add_x[i], y + add_y[i], N))
			count++;
	}
	return count;
}

static_assert(sizeof(LH3DPolygonIsland::SPoint) == 0xc, "Data type is of wrong size");
static_assert(sizeof(LH3DPolygonIsland::APoint) == 0x18, "Data type is of wrong size");
static_assert(sizeof(LH3DPolygonIsland::Level) == 0x4c, "Data type is of wrong size");
static_assert(sizeof(LH3DPolygonIsland::LevelGroup) == 0x8034, "Data type is of wrong size");
static_assert(sizeof(LH3DPolygonIsland) == 0x648, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_POLYGON_ISLAND_INCLUDED_H */
