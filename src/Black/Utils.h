#ifndef BW1_DECOMP_UTILS_INCLUDED_H
#define BW1_DECOMP_UTILS_INCLUDED_H

#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */
#include <re_common.h>   /* For bool32_t */

// Forward Declares

class Abode;
class Villager;
struct JustMapXZ;
struct LH3DColor;
struct LHCoord;
struct LHPoint;
struct MapCoords;

#define MAP_XZ_DIRECTION_COUNT   4
#define MAP_XZ_DIRECTION_8_COUNT 9

// BW1W120 00da59fc
extern JustMapXZ MapXZDirections[MAP_XZ_DIRECTION_COUNT];
// BW1W120 00da59d8
extern JustMapXZ MapXZDirections8[MAP_XZ_DIRECTION_8_COUNT];

// BW1W120 inlined BW1M119 01069710
template <class T> inline T POWER(T value, unsigned long power)
{
	T result = value;
	while (--power)
	{
		result *= value;
	}
	return result;
}

struct SortEntry
{
	long          Value : 27;
	unsigned long Index : 5;
	unsigned long Data;
};

#define GAME_ANGLE_FULL_TURN    0x800
#define GAME_ANGLE_MASK         (GAME_ANGLE_FULL_TURN - 1)
#define GAME_ANGLE_QUARTER_TURN (GAME_ANGLE_FULL_TURN / 4)
#define GAME_ANGLE_HALF_TURN    (GAME_ANGLE_FULL_TURN / 2)

struct GUtils
{
	struct Circle
	{
		// BW1W120 0074e470 BW1M119 013c6b70
		static LHPoint ProcessPoint(float x, float z);
		// BW1W120 0074e4c0 BW1M119 013f9810
		static void Process(const LHPoint& centre, float radius, int (*callback)(const LHPoint&), float step,
		                    bool32_t fill);
		// BW1W120 0074e7c0 BW1M119 null
		static MapCoords ProcessMapPoint(float x, float z);
		// BW1W120 0074e840 BW1M119 null
		static void Process(const MapCoords& centre, float radius, int (*callback)(const MapCoords&), float step,
		                    bool32_t fill);
		// BW1W120 0074eb40 BW1M119 015521d0
		static void DrawCircleOnMap(const MapCoords& centre, float radius, const LH3DColor& color, float height,
		                            int on_land);
	};

	// BW1W120 0074cdb0 BW1M119 null
	static float GetCellDistanceInMetres(long cell_dx, long cell_dz);
	// BW1W120 0074ce50 BW1M119 null
	static int FastDistance(long x1, long z1, long x2, long z2);
	// BW1W120 0074ce80 BW1M119 null
	static int FastMapDistance(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074cf80 BW1M119 null
	static long VeryFastMapDistance(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074d010 BW1M119 null
	static long XZWholeMapDistance(long x1, long z1, long x2, long z2);
	// BW1W120 0074d040 BW1M119 null
	static long XZMapDistance(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074d2a0 BW1M119 null
	static float Get3DAngleFromXZ(const LHPoint& from, const LHPoint& to);
	// BW1W120 0074d320 BW1M119 null
	static long GetXByAngle(unsigned short angle, long distance);
	// BW1W120 0074d340 BW1M119 null
	static long GetZByAngle(unsigned short angle, long distance);
	// BW1W120 0074d480 BW1M119 null
	static void StepXZByAngle(unsigned short angle, int16_t* x, int16_t* z);
	// BW1W120 0074d770 BW1M119 null
	static bool32_t TurnTowardsAngle(uint16_t* angle, long target, long max_turn);
	// BW1W120 0074d8b0 BW1M119 null
	static void DrawTextBox(long x, long y, char* text);
	// BW1W120 0074d950 BW1M119 null
	static int __cdecl CompareDescending(const void* a, const void* b);
	// BW1W120 0074d970 BW1M119 null
	static int __cdecl CompareAscending(const void* a, const void* b);
	// BW1W120 0074d990 BW1M119 null
	static void MakeRandomOrder(uint8_t count, uint8_t* order, bool32_t randomise);
	// BW1W120 0074da30 BW1M119 null
	static void GetLineSteps(const MapCoords& from, const MapCoords& to, long* step, uint8_t* count, uint8_t scale);
	// BW1W120 0074dab0 BW1M119 0159dfe0
	static uint8_t Log2Byte(uint8_t value);
	// BW1W120 0074db90 BW1M119 01576100
	static void CalculateNumeratorAndDenominator(unsigned long index, unsigned long& numerator,
	                                             unsigned long& denominator);
	// BW1W120 0074dca0 BW1M119 null
	static float ConvertGameDistanceTo3D(int distance);
	// BW1W120 0074dd10 BW1M119 null
	static Abode* FindClosestAbode(Villager* villager);
	// BW1W120 0074dd40 BW1M119 null
	static Abode* FindClosestAbodeWithRoom(Villager* villager);
	// BW1W120 0074e150 BW1M119 null
	static bool32_t IsInMap(const LHPoint& point);
	// BW1W120 0074e1b0 BW1M119 null
	static long MetersToMapX(float meters);
	// BW1W120 0074e1c0 BW1M119 null
	static long MetersToMapZ(float meters);
	// BW1W120 0074e230 BW1M119 null
	static float WholeToMetersX(long whole);
	// BW1W120 0074e250 BW1M119 null
	static float WholeToMetersZ(long whole);
	// BW1W120 0074e3f0 BW1M119 014d25d0
	static char* StripFileName(char* path);
	// BW1W120 0074eeb0 BW1M119 null
	static LHPoint GetPointOnArc(LHPoint centre, float radius, unsigned long index, unsigned long count, float arc,
	                             float start_angle);
	// BW1W120 0074ef20 BW1M119 null
	static unsigned long ProcessArc(LHPoint centre, float radius, unsigned long count, float arc, float start_angle,
	                                int (*callback)(LHPoint*));
	// BW1W120 0074ef80 BW1M119 null
	static MapCoords RotateAround(const MapCoords& centre, const MapCoords& pos, float angle);
	// BW1W120 0074f060 BW1M119 null
	static bool32_t DuplicateFile(char* from, char* to);
	// BW1W120 0074cca0 BW1M119 013d2a10
	static void SetupUtils();
	// BW1W120 0074ccb0 BW1M119 0104bfa0
	static long GetDistance(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074cce0 BW1M119 null
	static long GetDistance(const MapCoords* from, const MapCoords* to);
	// BW1W120 0074cd50 BW1M119 null
	static float GetDistanceInMetres(const MapCoords* from, const MapCoords* to);
	// BW1W120 0074cd70 BW1M119 0104bf00
	static float GetDistanceInMetres(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074cd90 BW1M119 null
	static float GetDistanceInMetres(const MapCoords& from, const JustMapXZ& to);
	// BW1W120 0074cde0 BW1M119 01036610
	static float GetDistance(const LHPoint& a, const LHPoint& b);
	// BW1W120 0074caf0 BW1M119 01076080
	static void __fastcall SetPointFromScreenPointAndDistance(LHCoord* coord, float distance, LHPoint* point);
	// BW1W120 0074cbd0 BW1M119 01024cd0
	static void __fastcall SetUnitDirectionVectorFromScreenPoint(const LHCoord& screen_point, LHPoint* direction);
	// BW1W120 0074d200 BW1M119 010516f0
	static long GetAngleFromDXDZ(long dx, long dz);
	// BW1W120 0074d240 BW1M119 01051760
	static long GetAngleFromXZ(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074d270 BW1M119 01013ec0
	static float Get3DAngleFromXZ(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074d580 BW1M119 01064310
	static MapCoords GetPosFromAngle(float angle, float radius);
	// BW1W120 0074d7e0 BW1M119 0104c490
	static const JustMapXZ* Spiral(long& x, long& z);
	// BW1W120 0074f3d0 BW1M119 01381db0
	static bool32_t CanISeeThisPoint(LHPoint* eye, float y_angle, float half_angle, LHPoint* point);
	// BW1W120 0074d810 BW1M119 01024840
	static void SpiralIncrement(MapCoords& pos, long& x, long& z, float step);
	// BW1W120 0074dbf0 BW1M119 01358130
	static int16_t Spread(unsigned long index, unsigned long range);
	// BW1W120 0074dc50 BW1M119 0104f6e0
	static float ConvertGameAngleTo3D(long angle);
	// BW1W120 0074dc80 BW1M119 0101b2e0
	static int ConvertDistance3DToGame(float distance);
	// BW1W120 0074dcc0 BW1M119 01034b90
	static float ConvertWholeDistanceToMeters(int distance);
	// BW1W120 0074dce0 BW1M119 01590e30
	static int ConvertMetersToWholeDistance(float meters);
	// BW1W120 0074e1d0 BW1M119 01105a50
	static long MetersToWholeX(float meters);
	// BW1W120 0074e200 BW1M119 015728d0
	static long MetersToWholeZ(float meters);
	// BW1W120 0074e270 BW1M119 015a1bf0
	static float ShapePosToMeters(float pos);
	// BW1W120 0074dd70 BW1M119 011a8630
	static Abode* FindClosestAbode(const MapCoords& pos, TRIBE_TYPE tribe_type, bool32_t need_room,
	                               bool32_t need_villagers, bool32_t need_built);
	// BW1W120 0074e290 BW1M119 015682c0
	static uint32_t ConvertScawenAngleToGameAngle(float angle);
	// BW1W120 0074e2b0 BW1M119 013e5570
	static float ConvertGameAngleToScawenAngle(uint16_t angle);
	// BW1W120 0074e2e0 BW1M119 015836b0
	static bool32_t FindNearestCoastalTo(const MapCoords& pos, MapCoords& coastal_pos, float max_dist);
	// BW1W120 0074e3a0 BW1M119 01180280
	static bool32_t FindNearestDrinkingWater(MapCoords& pos, MapCoords& water_pos, float max_dist);
	// BW1W120 0074f170 BW1M119 01069aa0
	static float SigmoidThreshold(float threshold, float value);
	// BW1W120 0074f210 BW1M119 01506a90
	static char* GetFilenameFromPath(char* path);
	// BW1W120 0074de90 BW1M119 null
	static char* GetFileNameFromDialog(bool32_t open, char* title, char* path, char* directory);
	// BW1W120 0074f250 BW1M119 012f8540
	static int GetPathFromPath(char* path, char* out);
	// BW1W120 0074f290 BW1M119 01069b80
	static float GetDistanceModifier(float distance, float max_distance);
	// BW1W120 0074f490 BW1M119 015079b0
	static uint32_t GetNumVillagersNear(const MapCoords& pos, unsigned long cells);
	// BW1W120 0074f520 BW1M119 010254b0
	static int GetMapCellSpiralSizeFromRadius(float radius);
	// BW1W120 0074f540 BW1M119 010027b0
	static int GetIncrementSpiralSizeFromRadius(float radius, float step);
	// BW1W120 0074d360 BW1M119 0151a5d0
	static float GetXByAngle(unsigned short angle, float distance);
	// BW1W120 0074d380 BW1M119 015962c0
	static float GetZByAngle(unsigned short angle, float distance);
	// BW1W120 0074d3a0 BW1M119 0107c130
	static long GetXByAngleBigDistance(unsigned short angle, long distance);
	// BW1W120 0074d3c0 BW1M119 0107c0d0
	static long GetZByAngleBigDistance(unsigned short angle, long distance);
	// BW1W120 0074d3e0 BW1M119 01590b30
	static long GetXByAngleHugeDistance(unsigned short angle, long distance);
	// BW1W120 0074d400 BW1M119 01590080
	static long GetZByAngleHugeDistance(unsigned short angle, long distance);
	// BW1W120 0074d420 BW1M119 011685f0
	static int GetXByAngleMetersDistance(unsigned short angle, float distance);
	// BW1W120 0074d450 BW1M119 0116fc20
	static int GetZByAngleMetersDistance(unsigned short angle, float distance);
	// BW1W120 0074ce10 BW1M119 012f8450
	static int FastDistance(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074ecc0 BW1M119 010f1390
	static MapCoords GetMidPoint(MapCoords& from, MapCoords& to, float distance);
	// BW1W120 0074dc30 BW1M119 015a09e0
	static uint32_t ConvertAngle3DToGame(float angle_3d);
	// BW1W120 0074cf30 BW1M119 013d2e80
	static long VeryFastDistance(long x1, long z1, long x2, long z2);
	// BW1W120 0074ced0 BW1M119 013d2f30
	static long VeryFastDistance(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074d090 BW1M119 01008420
	static long XZWholeMapDistance(const MapCoords& from, const MapCoords& to);
	// BW1W120 0074d220 BW1M119 01005370
	static long GetAngleFromXZ(long x1, long z1, long x2, long z2);
	// BW1W120 0074d6a0 BW1M119 0105a040
	static MapCoords GetPosFromAngle(uint16_t angle, float distance);
	// BW1W120 0074d650 BW1M119 01114f50
	static MapCoords GetPosFromAngle(unsigned short angle, long distance);
	// BW1W120 0074d620 BW1M119 01115460
	static LHPoint GetPointFromAngle(float angle, float radius);
	// BW1W120 0074dd00 BW1M119 010084d0
	static unsigned long Abs(long value);
	// BW1W120 0074d510 BW1M119 01115610
	static void AddDistanceFromAngle(MapCoords* pos, float angle, float distance);
	// BW1W120 0074ed60 BW1M119 0116ef20
	static MapCoords GetPosAlongLine(MapCoords& from, MapCoords& to, unsigned long numerator,
	                                 unsigned long denominator);
	// BW1W120 0074ee20 BW1M119 01112ee0
	static MapCoords GetPosAlongLine(MapCoords& from, MapCoords& to, float distance);
	// BW1W120 0074f2d0 BW1M119 01572a40
	static void ScareFish(LHPoint* position);
	// BW1W120 0074d6f0 BW1M119 01036480
	static long GetAngleSign(long from, long to);
	// BW1W120 0074d740 BW1M119 01051610
	static long GetAngleDifference(long from, long to);
	// BW1W120 0074f310 BW1M119 013cb4a0
	static MapCoords GetRandomPos(const MapCoords& centre, float radius);
};

#endif /* BW1_DECOMP_UTILS_INCLUDED_H */
