#ifndef BW1_DECOMP_MAP_COORDS_INCLUDED_H
#define BW1_DECOMP_MAP_COORDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int16_t, int32_t, uint16_t, uint32_t */

#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <chlasm/AllMeshes.h>                           /* For enum MESH_LIST */
#include <chlasm/Enum.h>                                /* For enum OBJECT_TYPE, enum TRIBE_TYPE */
#include <chlasm/ScriptEnums.h>                         /* For enum SCRIPT_OBJECT_TYPE */
#include <re_common.h>                                  /* For bool32_t */

#define MAP_COORDS_MAX_TOWN_DISTANCE 10000000
#define MAP_COORDS_TOWN_AREA_MARGIN  4
#define MAP_COORDS_IN_OTHER_TOWN     14

enum NEAREST_TOWN
{
	NEAREST_TOWN_NONE,
	NEAREST_TOWN_INSIDE_AREA,
	NEAREST_TOWN_OUTSIDE_AREA,
};

enum COLLIDE_TYPE
{
	COLLIDE_TYPE_NONE = 0x0,
	COLLIDE_TYPE_WATER = 0x1,
	COLLIDE_TYPE_LAND = 0x2,
	COLLIDE_TYPE_FIXED = 0x8,
	COLLIDE_TYPE_OFF_MAP = 0x10,
};

// Forward Declares

class Citadel;
class Creature;
class CreaturePen;
class Game3DObject;
class GComputerPlayer;
class MultiMapFixed;
class GameThingWithPos;
struct LH3DColor;
class WorshipSite;
struct LHPoint;
struct MapCell;
struct MapCellIterator;
struct MapCoords;
struct SafeMapCellIterator;
class Object;
struct Point2D;
class GPlayer;
class Town;

struct JustMapXZ
{
	int16_t x; /* 0x0 */
	int16_t z;

	// Constructors

	// BW1W120 inlined BW1M119 010358d0
	JustMapXZ() { Init(0, 0); }
	// BW1W120 inlined BW1M119 015a0680
	JustMapXZ(unsigned short cell_x, unsigned short cell_z) : x(cell_x), z(cell_z) {}
	// BW1W120 005e17c0 BW1M119 01108810
	JustMapXZ(const MapCoords& coords);
	// BW1W120 inlined BW1M119 0159c6a0
	JustMapXZ(const JustMapXZ& other) : x(other.x), z(other.z) {}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01035890
	void Init(unsigned short cell_x, unsigned short cell_z)
	{
		x = cell_x;
		z = cell_z;
	}
	// BW1W120 005e18e0 BW1M119 01108620
	void Init(const MapCoords& coords);
	// BW1W120 005e1920 BW1M119 01108550
	void Init(MapCell* cell);
	// BW1W120 005e1860 BW1M119 01024c60
	bool32_t InBounds();
	// BW1W120 005e1890 BW1M119 011086b0
	bool32_t InExplorationMapBounds();
	// BW1W120 005e1950 BW1M119 0102d000
	MapCell* ToMap() const;
	// BW1W120 inlined BW1M119 inlined
	bool IsSet() const { return x != 0 || z != 0; }
};

struct JustWholeMapXZ
{
	union {
		struct
		{
			int32_t x; /* 0x0 */
			int32_t z;
		};
		struct
		{
			uint16_t FractionX;
			int16_t  CellX;
			uint16_t FractionZ;
			int16_t  CellZ;
		};
	};

	// BW1W120 inlined BW1M119 0130e030
	JustWholeMapXZ() { Init(); }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01175370
	void Init()
	{
		x = 0;
		z = 0;
	}
	// BW1W120 005e1900 BW1M119 011085d0
	void Init(const MapCoords& coords);
	// BW1W120 inlined BW1M119 inlined
	bool IsSet() const { return x != 0 || z != 0; }
	// BW1W120 inlined BW1M119 inlined
	bool IsZero() const { return x == 0 && z == 0; }
};

struct MapCoords : public LH3DMapCoords
{
	// Constructors

	// BW1W120 inlined BW1M119 010707b0
	MapCoords();
	// BW1W120 006031b0 BW1M119 01052840
	MapCoords(long x, long z, float altitude);
	// BW1W120 inlined BW1M119 01381f90
	MapCoords(float x, float z, float altitude);
	// BW1W120 006031d0 BW1M119 013c72a0
	MapCoords(char* str);
	// BW1W120 inlined BW1M119 inlined
	MapCoords(float meters_x, float meters_z);
	// BW1W120 00602fc0 BW1M119 01057b30
	MapCoords(unsigned short cell_x, unsigned short cell_z);
	// BW1W120 00602ff0 BW1M119 01005230
	MapCoords(JustMapXZ* xz);
	// BW1W120 00603030 BW1M119 01375af0
	MapCoords(JustWholeMapXZ* xz);
	// BW1W120 00603070 BW1M119 013763c0
	MapCoords(JustWholeMapXZ& xz);
	// BW1W120 00603160 BW1M119 0106cbb0
	MapCoords(const LHPoint& point);
	// BW1W120 006030b0 BW1M119 null
	MapCoords(unsigned long cell_index);
	// BW1W120 00603110 BW1M119 null
	MapCoords(MapCell* cell);
	// BW1W120 00603180 BW1M119 null
	MapCoords(JustXZ* xz);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01081a00
	void Clear()
	{
		x = 0;
		z = 0;
		altitude = 0.0f;
	}
	// BW1W120 00602880 BW1M119 011a5f70
	char* ConvertToText(char* buff);
	// BW1W120 006041c0 BW1M119 01121330
	LHPoint ConvertToLHPoint() const;
	// BW1W120 006042c0 BW1M119 0104c3b0
	bool32_t InBounds() const;
	// BW1W120 00605cc0 BW1M119 013e5320
	float GetTemperature() const;
	// BW1W120 006053c0 BW1M119 010028c0
	bool32_t IsCloseToEqual(const MapCoords& other, float epsilon) const;
	// BW1W120 00605410 BW1M119 01022670
	void operator+=(const MapCoords& other);
	// BW1W120 00605470 BW1M119 0104be60
	void operator+=(const JustMapXZ& other);
	// BW1W120 006054a0 BW1M119 inlined
	void operator-=(const MapCoords& other);
	// BW1W120 00605400 BW1M119 0101b0d0
	void operator+=(unsigned long distance);
	// BW1W120 00605490 BW1M119 0101b080
	void operator-=(unsigned long distance);
	// BW1W120 00605520 BW1M119 01052d70
	MapCoords operator+(const MapCoords& other) const;
	// BW1W120 006055c0 BW1M119 0105a390
	MapCoords operator-(const MapCoords& other) const;
	// BW1W120 00601f90 BW1M119 013fd5d0
	uint32_t GetNearestTown(Town** town, unsigned long* distance, const Town* exclude, TRIBE_TYPE tribe_type) const;
	// BW1W120 006020e0 BW1M119 01412720
	Town* GetNearestTown(float t_max) const;
	// BW1W120 00604370 BW1M119 0102ac40
	GameThingWithPos* FindNearForScript(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                                    SCRIPT_OBJECT_TYPE type, uint32_t subtype, float radius) const;
	// BW1W120 00602160 BW1M119 01069220
	Town* GetNearestTownWithTownCentre(float t_max) const;
	// BW1W120 00602200 BW1M119 01061800
	Citadel* GetNearestCitadel(float t_max) const;
	// BW1W120 00603280 BW1M119 01183eb0
	void Set(char* str);
	// BW1W120 00603320 BW1M119 01007700
	void Set(const MapCoords& other);
	// BW1W120 00603340 BW1M119 0106cad0
	void Set(const LHPoint& point);
	// BW1W120 006031f0 BW1M119 null
	void Set(MapCell* cell);
	// BW1W120 00603230 BW1M119 null
	void Set(JustMapXZ* xz);
	// BW1W120 00603260 BW1M119 01417440
	void Set(JustWholeMapXZ* xz);
	// BW1W120 00602270 BW1M119 null
	CreaturePen* FindCreaturePen() const;
	// BW1W120 00602500 BW1M119 null
	void ShowMeshFootprint(MESH_LIST mesh, int, float y_angle, float scale, int, LH3DColor* colour) const;
	// BW1W120 006026d0 BW1M119 null
	void ShowFootprint(Game3DObject* object, LH3DColor* colour) const;
	// BW1W120 00602720 BW1M119 null
	void ShowSpiral(unsigned long count, LH3DColor* colour) const;
	// BW1W120 006027a0 BW1M119 null
	void ShowRing(unsigned long inner_radius, unsigned long outer_radius, LH3DColor* colour) const;
	// BW1W120 006028d0 BW1M119 null
	static void DrawCircle(const MapCoords& centre, float radius, unsigned long segments, LH3DColor* colour,
	                       float height);
	// BW1W120 00602a80 BW1M119 null
	void DrawCircle(float radius, unsigned long segments, LH3DColor* colour, float height) const;
	// BW1W120 00602aa0 BW1M119 01183b20
	bool32_t DoesRegionContainObjectOfType(bool32_t (Object::*test)() const = NULL);
	// BW1W120 00602d40 BW1M119 010bf9d0
	void GetExactMapSquareForObjectOfType(bool32_t (Object::*test)() const);
	// BW1W120 00602f40 BW1M119 null
	void Interpolate(const MapCoords& from, float amount);
	// BW1W120 00603390 BW1M119 null
	long GetWholeDistance(const MapCoords& other) const;
	// BW1W120 006033f0 BW1M119 null
	long GetCollideStep() const;
	// BW1W120 00603420 BW1M119 null
	long GetGlobalCollideStep() const;
	// BW1W120 00603470 BW1M119 null
	unsigned long GetCellIndex() const;
	// BW1W120 00603550 BW1M119 null
	void SetFirstObjectMobile(Object* object) const;
	// BW1W120 00603580 BW1M119 null
	void SetFirstObjectFixed(Object* object) const;
	// BW1W120 006037b0 BW1M119 null
	void AddAngleBigDistance(unsigned short angle, long distance);
	// BW1W120 006037f0 BW1M119 null
	void AddAngleDistance(unsigned short angle, float distance);
	// BW1W120 inlined BW1M119 01024700
	float MetersX() const;
	// BW1W120 inlined BW1M119 01024770
	float MetersZ() const;
	// BW1W120 inlined BW1M119 01180670
	float MapMetersX();
	// BW1W120 inlined BW1M119 01180610
	float MapMetersZ();
	// BW1W120 inlined BW1M119 0107ffa0
	void SetMetersX(float meters);
	// BW1W120 inlined BW1M119 010247e0
	void SetMetersZ(float meters);
	// BW1W120 inlined BW1M119 inlined
	void SetX(float _x) { SetWholeX((long)(_x * MAP_COORDS_UNITS_PER_CELL / MAP_COORDS_METRES_PER_CELL)); }
	// BW1W120 inlined BW1M119 inlined
	void SetZ(float _z) { SetWholeZ((long)(_z * MAP_COORDS_UNITS_PER_CELL / MAP_COORDS_METRES_PER_CELL)); }
	// Inliner IL size: 42
	// BW1W120 0060a010 BW1M119 inlined
	void AddToWholeX(int dx)
	{
		int whole = WholeX();
		x = whole + dx;
	}
	// Inliner IL size: 42
	// BW1W120 0060a020 BW1M119 inlined
	void AddToWholeZ(int dz)
	{
		int whole = WholeZ();
		z = whole + dz;
	}
	// BW1W120 00603430 BW1M119 0104c540
	MapCell* ToMap() const;
	// BW1W120 006024d0 BW1M119 011a6820
	void ShowMapCell(LH3DColor* color) const;
	// BW1W120 006034b0 BW1M119 0102f600
	Object* GetFirstObjectFixed() const;
	// BW1W120 006034d0 BW1M119 0102f0e0
	MapCellIterator GetFirstIterator() const;
	// BW1W120 006035b0 BW1M119 0101ba20
	bool32_t IsWater() const;
	// BW1W120 00603620 BW1M119 0151adc0
	bool32_t IsDryLand() const;
	// BW1W120 00603720 BW1M119 0106a480
	bool32_t IsLand() const;
	// BW1W120 006036a0 BW1M119 01513b20
	bool32_t IsCoastal() const;
	// BW1W120 00603790 BW1M119 01300ff0
	bool32_t IsFixed() const;
	// BW1W120 00603840 BW1M119 015aa980
	bool32_t IsNavigable() const;
	// BW1W120 00603860 BW1M119 015a8790
	bool32_t IsSuitableForFixedAbodeInTown(MESH_LIST mesh, const Town* town, float y_angle, float scale) const;
	// BW1W120 006038b0 BW1M119 015aa7d0
	bool32_t IsSuitableForFixed(MESH_LIST mesh, float y_angle, float scale) const;
	// BW1W120 00603b30 BW1M119 null
	bool32_t IsSuitableForPlannedFixed(MESH_LIST mesh, float y_angle, float scale) const;
	// BW1W120 00604020 BW1M119 01121940
	bool32_t IsSuitableForFixed(Game3DObject* object) const;
	// BW1W120 00603dc0 BW1M119 0154e6c0
	bool32_t IsSuitableForAbodeBuildFixed(Game3DObject* object, float y_angle, float scale, Object* ignore) const;
	// BW1W120 00604210 BW1M119 null
	void ConvertToLHPoint(LHPoint& point) const;
	// BW1W120 006042f0 BW1M119 null
	GameThingWithPos* FindForScript(int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
	                                SCRIPT_OBJECT_TYPE type, uint32_t subtype) const;
	// BW1W120 006045c0 BW1M119 0101c170
	Object* FindType(OBJECT_TYPE type, Object* object) const;
	// BW1W120 00604870 BW1M119 010b9470
	Object* FindObjectForComputerPlayer(GComputerPlayer& player, float (GComputerPlayer::*rate)(Object*),
	                                    float            radius) const;
	// BW1W120 00604af0 BW1M119 013c9d50
	Object* FindObject(bool32_t (Object::*is_suitable)(), float radius, Object* exclude) const;
	// BW1W120 00604c30 BW1M119 01567520
	Object* FindObject(bool32_t(__cdecl* is_suitable)(Object*), float radius, Object* exclude) const;
	// BW1W120 00604f40 BW1M119 013d1550
	bool32_t IsEqual(MapCell* cell);
	// BW1W120 006053f0 BW1M119 0136d180
	bool32_t IsField() const;
	// BW1W120 00605050 BW1M119 01365e00
	float GetLandscapeAltitude() const;
	// BW1W120 006022c0 BW1M119 01175440
	float GetAltitudeOfHighestObjectExcluding(Object* exclude, bool ignore_living_and_moving) const;
	// BW1W120 00604250 BW1M119 011241f0
	void MakeInBounds();
	// BW1W120 00601f40 BW1M119 01045bf0
	void SetupMapXZ(long x, long z);
	// BW1W120 inlined BW1M119 011dd7c0
	void SetMapMetersX(float x);
	// BW1W120 inlined BW1M119 011dd770
	void SetMapMetersZ(float z);
	// BW1W120 00603500 BW1M119 0132d1c0
	SafeMapCellIterator GetFirstSafeIterator() const;
	// BW1W120 00605120 BW1M119 01361a40
	Object* GetMapChild(Object* object);
	// BW1W120 00602bd0 BW1M119 01575890
	bool32_t DoesRegionContainMapCellSatisfyingTest(bool32_t (MapCoords::*test)() const);
	// BW1W120 00602e80 BW1M119 01362ff0
	void GetExactMapSquareSatisfyingTest(bool32_t (MapCoords::*test)() const);
	// BW1W120 00605660 BW1M119 01089f30
	bool32_t operator==(const MapCoords& other) const;
	// BW1W120 00605c40 BW1M119 01052890
	LHPoint GetLHPoint() const;
	// BW1W120 00605cd0 BW1M119 01053320
	float GetDistance(const MapCoords& other) const;
	// BW1W120 00605cf0 BW1M119 01389430
	float GetAngle(const MapCoords& other) const;
	// BW1W120 006050d0 BW1M119 013b5350
	LHPoint Get3DPoint() const;
	// BW1W120 00602460 BW1M119 011adcc0
	WorshipSite* FindWorshipSite() const;
	// BW1W120 006045f0 BW1M119 013ea0d0
	Object* FindNearType(OBJECT_TYPE type, float radius) const;
	// BW1W120 006057b0 BW1M119 0106b8f0
	float GetAlignment() const;
	// BW1W120 00605250 BW1M119 011ab0a0
	MultiMapFixed* IsWithinBuilingSite();
	// BW1W120 00605fb0 BW1M119 01034c00
	float GetMetresDistanceSq(const MapCoords& param_2) const;
	// BW1W120 inlined BW1M119 010ea620
	MapCoords* operator=(const MapCoords* other);
	// BW1W120 inlined BW1M119 0104cb80
	float Altitude() const { return altitude; }
	// BW1W120 inlined BW1M119 010151a0
	float GetAltitude() const { return altitude; }
	// BW1W120 inlined BW1M119 inlined
	bool IsZero() const { return WholeX() == 0 && WholeZ() == 0 && Altitude() == 0.0f; }
	// BW1W120 0060d740 BW1M119 0106d020
	void AddToMapX(short dx) { SetMapX(MapX() + dx); }
	// BW1W120 0060d750 BW1M119 0106cfe0
	void AddToMapZ(short dz) { SetMapZ(MapZ() + dz); }
	// BW1W120 00603490 BW1M119 013e9960
	Object* GetFirstObjectMobile() const;
	// BW1W120 006056b0 BW1M119 0148cf80
	bool32_t operator!=(const MapCoords& other) const;
	// BW1W120 00604fe0 BW1M119 013621f0
	int CollideCollideWithFixe() const;
	// BW1W120 006033c0 BW1M119 01029080
	int Collide() const;
	// BW1W120 006033b0 BW1M119 01028f70
	int Collide(COLLIDE_TYPE type) const;
	// BW1W120 00603830 BW1M119 01083f60
	GPlayer* CalculateMostInfluentialPlayer() const;
	// BW1W120 00602c70 BW1M119 0150df90
	bool32_t DoesRegionContainHill();
	// BW1W120 00604d70 BW1M119 01162520
	bool32_t DoesRegionContainCitadel();
	// BW1W120 00604da0 BW1M119 0116fd30
	bool32_t DoesRegionContainTown();
	// BW1W120 00604dd0 BW1M119 01391a00
	bool32_t DoesRegionContainField();
	// BW1W120 00604de0 BW1M119 0156dc50
	bool32_t DoesRegionContainForest();
	// BW1W120 00604e10 BW1M119 011c5380
	bool32_t DoesRegionContainCoast();
	// BW1W120 00604e20 BW1M119 011ca5e0
	bool32_t DoesRegionContainWater();
	// BW1W120 00604e30 BW1M119 011c79a0
	bool32_t DoesRegionContainLand();
	// BW1W120 00604e40 BW1M119 01575a00
	void GetExactMapSquareForCitadel();
	// BW1W120 00604e70 BW1M119 01572ac0
	void GetExactMapSquareForHill();
	// BW1W120 00604eb0 BW1M119 015751c0
	void GetExactMapSquareForTown();
	// BW1W120 00604ee0 BW1M119 01575230
	void GetExactMapSquareForField();
	// BW1W120 00604ef0 BW1M119 0138a100
	void GetExactMapSquareForForest();
	// BW1W120 00604f20 BW1M119 01391a70
	void GetExactMapSquareForCoast();
	// BW1W120 00604f30 BW1M119 0156dbe0
	void GetExactMapSquareForWater();
	// BW1W120 00605870 BW1M119 015364a0
	bool32_t GetClearAreaForActivity(Creature* creature, MapCoords* result, float search_radius, float radius,
	                                 bool32_t avoid_living);
	// BW1W120 006059a0 BW1M119 0151a8c0
	static bool32_t IsSquareClearForActivity(Creature* creature, long x, long z, bool32_t avoid_living);
	// BW1W120 00604f90 BW1M119 null
	bool32_t IsEqual(const MapCoords& other, unsigned long resolution) const;
	// BW1W120 00605010 BW1M119 null
	void RandomiseBlock();
	// BW1W120 00605070 BW1M119 null
	void SetupMapXZ(JustXZ* xz);
	// BW1W120 00605090 BW1M119 null
	void SetupMapXZ(JustXZ& xz);
	// BW1W120 006050b0 BW1M119 null
	void Set(JustXZ* xz);
	// BW1W120 00605110 BW1M119 null
	float GetMaxAltitude() const;
	// BW1W120 00605150 BW1M119 null
	MultiMapFixed* FindNearestBuildingSite(float* distance);
	// BW1W120 00605310 BW1M119 null
	bool32_t IsAtWorshipSiteCentre();
	// BW1W120 00605440 BW1M119 null
	void operator+=(const LHPoint& point);
	// BW1W120 006054d0 BW1M119 null
	void operator-=(const LHPoint& point);
	// BW1W120 00605500 BW1M119 null
	void operator-=(const JustMapXZ& other);
	// BW1W120 00605570 BW1M119 null
	MapCoords operator+(const JustMapXZ& other) const;
	// BW1W120 00605610 BW1M119 null
	MapCoords operator-(const JustMapXZ& other) const;
	// BW1W120 00605690 BW1M119 null
	bool32_t operator==(const JustXZ& other) const;
	// BW1W120 006056d0 BW1M119 null
	bool32_t operator!=(const JustXZ& other) const;
	// BW1W120 006056f0 BW1M119 null
	bool32_t operator>=(const MapCoords& other) const;
	// BW1W120 00605720 BW1M119 null
	bool32_t operator>(const MapCoords& other) const;
	// BW1W120 00605750 BW1M119 null
	bool32_t operator<=(const MapCoords& other) const;
	// BW1W120 00605780 BW1M119 null
	bool32_t operator<(const MapCoords& other) const;
	// BW1W120 00605850 BW1M119 null
	DISCRETE_ALIGNMENT_VALUES GetDiscreteAlignment() const;
	// BW1W120 00605c90 BW1M119 null
	bool32_t IsWithinDistance(const MapCoords& other, float distance) const;
	// BW1W120 00605d10 BW1M119 null
	bool32_t FindNearestWarmerClimate(MapCoords* result) const;
	// BW1W120 00605e60 BW1M119 null
	bool32_t FindNearestColderClimate(MapCoords* result) const;
};

inline MapCoords::MapCoords() {}

#endif /* BW1_DECOMP_MAP_COORDS_INCLUDED_H */
