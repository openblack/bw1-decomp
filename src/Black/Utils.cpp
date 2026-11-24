#include "MapCellConstants.h" /* For MetresPerMapCell */

#include "GameTimeConstants.h"
#include "Utils.h"
#include "UtilsMath.h"

#include <math.h>    /* For cos, sin */
#include <string.h>  /* For strlen, strncpy */
#include <stdlib.h>  /* For abs */
#include <windows.h> /* For max */

#include <Lionhead/LH3DLib/development/Fish.h> /* For FishRush */
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h> /* For struct LH3DMesh */
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For class LHReleasedOSFile */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>          /* For LHSys::TheSystem */

#include "MapCoords.h"
#include "Abode.h"
#include "DebugRecord.h"
#include "Game.h"
#include "Landscape.h"
#include "MapCoordsMeters.h"
#include "Player.h"
#include "Town.h"
#include "TribeInfo.h"
#include "Villager.h"
#include "Object.h"
#include "Rand.h"
#include "Stream.h"

// BW1W120 00da58c0
extern LHPoint CircleCentre;
// BW1W120 00da58b0
extern MapCoords CircleMapCentre;

#define GAME_ANGLE_TO_3D_ANGLE (TWO_PI / GAME_ANGLE_FULL_TURN)
#define ANGLE_3D_TO_GAME_ANGLE (GAME_ANGLE_FULL_TURN / TWO_PI)

#define STEP_DISTANCE             0x100
#define COASTAL_SEARCH_MAX_STEPS  999999
#define ABODE_SEARCH_MAX_DISTANCE 1.0e12f
#define CIRCLE_MAX_SEGMENTS       50.0f
#define TEXT_BOX_EDGE_SHADE       0x1e
#define TEXT_BOX_FILL_SHADE       0xc0
#define TEXT_BOX_LIGHT_DIRECTION  3
#define TEXT_BOX_BEVEL            3

static const float Angle3DToGame = ANGLE_3D_TO_GAME_ANGLE;
static const float GameAngleTo3D = GAME_ANGLE_TO_3D_ANGLE;
static const float SigmoidScale = 20.5f;
extern const float InverseSinTableOne = 1.0f / LH_SIN_TABLE_ONE;

inline MapCoords::MapCoords(float meters_x, float meters_z)
{
	SetMetersX(meters_x);
	SetMetersZ(meters_z);
	SetAltitude(0.0f);
}

// BW1W120 0074e2d0 BW1M119 null
static long CellToWholeCentre(short cell);

static uint16_t ArcTanTable[257] = {
	0,   1,   2,   3,   5,   6,   7,   8,   10,  11,  12,  13,  15,  16,  17,  19,  20,  21,  22,  24,  25,  26,
	27,  29,  30,  31,  32,  34,  35,  36,  38,  39,  40,  41,  43,  44,  45,  46,  48,  49,  50,  51,  53,  54,
	55,  56,  57,  59,  60,  61,  62,  64,  65,  66,  67,  68,  70,  71,  72,  73,  75,  76,  77,  78,  79,  81,
	82,  83,  84,  85,  87,  88,  89,  90,  91,  92,  94,  95,  96,  97,  98,  99,  101, 102, 103, 104, 105, 106,
	107, 109, 110, 111, 112, 113, 114, 115, 116, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 129, 130, 131,
	132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 147, 148, 149, 150, 151, 152, 153, 154,
	155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 167, 168, 169, 170, 171, 172, 173, 174, 175,
	176, 177, 178, 179, 180, 181, 182, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 191, 192, 193, 194, 195,
	196, 197, 198, 198, 199, 200, 201, 202, 203, 203, 204, 205, 206, 207, 208, 208, 209, 210, 211, 212, 212, 213,
	214, 215, 216, 216, 217, 218, 219, 220, 220, 221, 222, 223, 223, 224, 225, 226, 226, 227, 228, 229, 229, 230,
	231, 232, 232, 233, 234, 235, 235, 236, 237, 237, 238, 239, 239, 240, 241, 242, 242, 243, 244, 244, 245, 246,
	246, 247, 248, 248, 249, 250, 250, 251, 252, 252, 253, 254, 254, 255, 256,
};

static bool32_t Log2TableNeedsInit = true;

static float SigmoidTable[41] = {
	0.0f,         3.6e-09f,     1e-08f,       2.8e-08f,     7.78e-08f,     2.163e-07f,    6.018e-07f,
	1.674e-06f,   4.6568e-06f,  1.29542e-05f, 3.60351e-05f, 0.0001002359f, 0.0002787865f, 0.0007751431f,
	0.002153319f, 0.005967208f, 0.016424945f, 0.04439174f,  0.11443728f,   0.26442435f,   0.5f,
	0.7355757f,   0.8855627f,   0.95560825f,  0.98357505f,  0.9940328f,    0.99784666f,   0.99922484f,
	0.9997212f,   0.99989974f,  0.99996394f,  0.99998707f,  0.99999535f,   0.99999833f,   0.9999994f,
	0.99999976f,  0.99999994f,  1.0f,         1.0f,         1.0f,          1.0f,
};

// BW1W120 0074cd10 BW1M119 null
long GetDistance(const MapCoords& from, const JustMapXZ& to);
// BW1W120 0074db00 BW1M119 null
unsigned long Log2(unsigned long value);
// BW1W120 0074f030 BW1M119 null
float GetMesh2DRadius(LH3DMesh* mesh, float scale);

JustMapXZ MapXZDirections[MAP_XZ_DIRECTION_COUNT] = {
	JustMapXZ(1, 0),
	JustMapXZ(0, 1),
	JustMapXZ(-1, 0),
	JustMapXZ(0, -1),
};

JustMapXZ MapXZDirections8[MAP_XZ_DIRECTION_8_COUNT] = {
	JustMapXZ(1, 0),   //
	JustMapXZ(1, 1),   //
	JustMapXZ(0, 1),   //
	JustMapXZ(-1, 1),  //
	JustMapXZ(-1, 0),  //
	JustMapXZ(-1, -1), //
	JustMapXZ(0, -1),  //
	JustMapXZ(1, -1),  //
	JustMapXZ(0, 0),   //
};

static uint8_t Log2Table[256];

void __fastcall GUtils::SetPointFromScreenPointAndDistance(LHCoord* coord, float distance, LHPoint* point)
{
	LHPoint camera(LH3DTech::g_camera.pos);
	LH3DTech::Get3DPointFromScreen(*coord, *point, 0.0f);
	point->Sub(camera);
	point->SetLength(distance);
	point->Add(camera);
}

void __fastcall GUtils::SetUnitDirectionVectorFromScreenPoint(const LHCoord& screen_point, LHPoint* direction)
{
	LHPoint camera(LH3DTech::g_camera.pos);
	LH3DTech::Get3DPointFromScreen(screen_point, *direction, 0.0f);
	direction->Sub(camera);
	direction->SetLength(1.0f);
}

void GUtils::SetupUtils()
{
	build_inv_sqrt_table();
}

long GUtils::GetDistance(const MapCoords& from, const MapCoords& to)
{
	return hypotenuse(to.WholeX() - from.WholeX(), to.WholeZ() - from.WholeZ());
}

long GUtils::GetDistance(const MapCoords* from, const MapCoords* to)
{
	return hypotenuse(to->WholeX() - from->WholeX(), to->WholeZ() - from->WholeZ());
}

long GetDistance(const MapCoords& from, const JustMapXZ& to)
{
	return hypotenuse(CellToWholeCentre(to.x) - from.WholeX(), CellToWholeCentre(to.z) - from.WholeZ());
}

float GUtils::GetDistanceInMetres(const MapCoords* from, const MapCoords* to)
{
	return ConvertWholeDistanceToMeters(GetDistance(from, to));
}

float GUtils::GetDistanceInMetres(const MapCoords& from, const MapCoords& to)
{
	return ConvertWholeDistanceToMeters(GetDistance(from, to));
}

float GUtils::GetDistanceInMetres(const MapCoords& from, const JustMapXZ& to)
{
	return ConvertWholeDistanceToMeters(::GetDistance(from, to));
}

float GUtils::GetCellDistanceInMetres(long cell_dx, long cell_dz)
{
	return (unsigned long)hypotenuse(cell_dx, cell_dz) * MetresPerMapCell;
}

float GUtils::GetDistance(const LHPoint& a, const LHPoint& b)
{
	float dx = b.x - a.x;
	float dz = b.z - a.z;
	return hypotenuse(dx, dz);
}

int GUtils::FastDistance(const MapCoords& from, const MapCoords& to)
{
	long dx = abs(to.WholeX() - from.WholeX());
	long dz = abs(to.WholeZ() - from.WholeZ());
	return dx < dz ? (dx >> 1) + dz : (dz >> 1) + dx;
}

int GUtils::FastDistance(long x1, long z1, long x2, long z2)
{
	long dx = abs(x2 - x1);
	long dz = abs(z2 - z1);
	return dx < dz ? (dx >> 1) + dz : (dz >> 1) + dx;
}

int GUtils::FastMapDistance(const MapCoords& from, const MapCoords& to)
{
	long dx = abs(to.CellX - from.CellX);
	long dz = abs(to.CellZ - from.CellZ);
	return dx < dz ? (dx >> 1) + dz : (dz >> 1) + dx;
}

long GUtils::VeryFastDistance(const MapCoords& from, const MapCoords& to)
{
	return max(Abs(from.WholeX() - to.WholeX()), Abs(from.WholeZ() - to.WholeZ()));
}

long GUtils::VeryFastDistance(long x1, long z1, long x2, long z2)
{
	return max(Abs(x2 - x1), Abs(z2 - z1));
}

long GUtils::VeryFastMapDistance(const MapCoords& from, const MapCoords& to)
{
	return max(Abs(from.MapX() - to.MapX()), Abs(from.MapZ() - to.MapZ()));
}

long GUtils::XZWholeMapDistance(long x1, long z1, long x2, long z2)
{
	return Abs(x2 - x1) + Abs(z2 - z1);
}

long GUtils::XZMapDistance(const MapCoords& from, const MapCoords& to)
{
	return Abs(from.MapX() - to.MapX()) + Abs(from.MapZ() - to.MapZ());
}

long GUtils::XZWholeMapDistance(const MapCoords& from, const MapCoords& to)
{
	return Abs(from.WholeX() - to.WholeX()) + Abs(from.WholeZ() - to.WholeZ());
}

uint16_t __cdecl LHArcTan(long x, long z)
{
	uint16_t angle;

	__asm {
		neg   x
		mov   eax, z
		or    eax, eax
		jne   l_nonzero
		mov   ebx, x
		or    ebx, ebx
		jne   l_dispatch
		xor   ax, ax
		mov   angle, ax
		jmp   l_done
	l_nonzero:
		mov   ebx, x
	l_dispatch:
		or    eax, eax
		js    l_negative_z
		or    ebx, ebx
		js    l_negative_x
		cmp   eax, ebx
		jl    l_octant_1
		xchg  ebx, eax
		shl   eax, 8
		xor   edx, edx
		div   ebx
		mov   ax, word ptr ArcTanTable[eax*2]
		add   ax, GAME_ANGLE_QUARTER_TURN
		mov   angle, ax
		jmp   l_done
	l_octant_1:
		shl   eax, 8
		xor   edx, edx
		div   ebx
		mov   ax, word ptr ArcTanTable[eax*2]
		neg   ax
		add   ax, GAME_ANGLE_HALF_TURN
		mov   angle, ax
		jmp   l_done
	l_negative_x:
		neg   ebx
		cmp   eax, ebx
		jl    l_octant_2
		xchg  ebx, eax
		shl   eax, 8
		xor   edx, edx
		div   ebx
		mov   ax, word ptr ArcTanTable[eax*2]
		neg   ax
		add   ax, GAME_ANGLE_QUARTER_TURN
		mov   angle, ax
		jmp   l_done
	l_octant_2:
		shl   eax, 8
		xor   edx, edx
		div   ebx
		mov   ax, word ptr ArcTanTable[eax*2]
		mov   angle, ax
		jmp   l_done
	l_negative_z:
		neg   eax
		or    ebx, ebx
		js    l_negative_both
		cmp   eax, ebx
		jl    l_octant_3
		xchg  ebx, eax
		shl   eax, 8
		xor   edx, edx
		div   ebx
		mov   ax, word ptr ArcTanTable[eax*2]
		neg   ax
		add   ax, GAME_ANGLE_FULL_TURN - GAME_ANGLE_QUARTER_TURN
		mov   angle, ax
		jmp   l_done
	l_octant_3:
		shl   eax, 8
		xor   edx, edx
		div   ebx
		mov   ax, word ptr ArcTanTable[eax*2]
		add   ax, GAME_ANGLE_HALF_TURN
		mov   angle, ax
		jmp   l_done
	l_negative_both:
		neg   ebx
		cmp   eax, ebx
		jl    l_octant_4
		xchg  ebx, eax
		shl   eax, 8
		xor   edx, edx
		div   ebx
		mov   ax, word ptr ArcTanTable[eax*2]
		add   ax, GAME_ANGLE_FULL_TURN - GAME_ANGLE_QUARTER_TURN
		mov   angle, ax
		jmp   l_done
	l_octant_4:
		shl   eax, 8
		xor   edx, edx
		div   ebx
		mov   ax, word ptr ArcTanTable[eax*2]
		neg   ax
		add   ax, GAME_ANGLE_FULL_TURN
		mov   angle, ax
	l_done:
		and   angle, GAME_ANGLE_MASK
		mov   ax, angle
	}
}

long GUtils::GetAngleFromDXDZ(long dx, long dz)
{
	return LHArcTan(dx, dz);
}

long GUtils::GetAngleFromXZ(long x1, long z1, long x2, long z2)
{
	return GetAngleFromDXDZ(x2 - x1, z2 - z1);
}

long GUtils::GetAngleFromXZ(const MapCoords& from, const MapCoords& to)
{
	return GetAngleFromDXDZ(to.WholeX() - from.WholeX(), to.WholeZ() - from.WholeZ());
}

float GUtils::Get3DAngleFromXZ(const MapCoords& from, const MapCoords& to)
{
	return ConvertGameAngleTo3D(GetAngleFromDXDZ(to.WholeX() - from.WholeX(), to.WholeZ() - from.WholeZ()));
}

float GUtils::Get3DAngleFromXZ(const LHPoint& from, const LHPoint& to)
{
	if (from.GetDistanceSq(to) > 0.0001f)
	{
		LHPoint direction = to - from;
		return LH3DMath::GetYAngle(&direction);
	}
	return 0.0f;
}

long GUtils::GetXByAngle(unsigned short angle, long distance)
{
	return (LHSinTable[angle + LH_SIN_TABLE_COSINE_OFFSET] * distance) >> 16;
}

long GUtils::GetZByAngle(unsigned short angle, long distance)
{
	return (LHSinTable[angle] * distance) >> 16;
}

float GUtils::GetXByAngle(unsigned short angle, float distance)
{
	return LHSinTable[angle + LH_SIN_TABLE_COSINE_OFFSET] * distance / LH_SIN_TABLE_ONE;
}

float GUtils::GetZByAngle(unsigned short angle, float distance)
{
	return LHSinTable[angle] * distance / LH_SIN_TABLE_ONE;
}

long GUtils::GetXByAngleBigDistance(unsigned short angle, long distance)
{
	return (LHSinTable[angle + LH_SIN_TABLE_COSINE_OFFSET] * (distance >> 4)) >> 12;
}

long GUtils::GetZByAngleBigDistance(unsigned short angle, long distance)
{
	return (LHSinTable[angle] * (distance >> 4)) >> 12;
}

long GUtils::GetXByAngleHugeDistance(unsigned short angle, long distance)
{
	return (LHSinTable[angle + LH_SIN_TABLE_COSINE_OFFSET] * (distance >> 8)) >> 8;
}

long GUtils::GetZByAngleHugeDistance(unsigned short angle, long distance)
{
	return (LHSinTable[angle] * (distance >> 8)) >> 8;
}

int GUtils::GetXByAngleMetersDistance(unsigned short angle, float distance)
{
	return (int)(LHSinTable[angle + LH_SIN_TABLE_COSINE_OFFSET] * (distance / MetresPerMapCell));
}

int GUtils::GetZByAngleMetersDistance(unsigned short angle, float distance)
{
	return (int)(LHSinTable[angle] * (distance / MetresPerMapCell));
}

void GUtils::StepXZByAngle(unsigned short angle, int16_t* x, int16_t* z)
{
	int16_t dx = (int16_t)GetXByAngle(angle, (long)STEP_DISTANCE);
	int16_t dz = (int16_t)GetZByAngle(angle, (long)STEP_DISTANCE);
	int     abs_dx = abs(dx);
	if (abs_dx < STEP_DISTANCE)
	{
		int abs_dz = abs(dz);
		if (abs_dz < STEP_DISTANCE)
		{
			int16_t difference = abs_dx - abs_dz;
			if (difference > 1)
				dx *= 2;
			else
			{
				if (difference >= -1)
					dx *= 2;
				dz *= 2;
			}
		}
	}
	*x += dx / STEP_DISTANCE;
	*z += dz / STEP_DISTANCE;
}

void GUtils::AddDistanceFromAngle(MapCoords* pos, float angle, float distance)
{
	pos->SetMetersX(cos(angle) * distance + pos->MetersX());
	pos->SetMetersZ(sin(angle) * distance + pos->MetersZ());
}

MapCoords GUtils::GetPosFromAngle(float angle, float radius)
{
	MapCoords pos;
	pos.SetMetersX(cos(angle) * radius);
	pos.SetMetersZ(sin(angle) * radius);
	MapCoords origin(0.0f, 0.0f);
	GetDistanceInMetres(origin, pos);
	return pos;
}

LHPoint GUtils::GetPointFromAngle(float angle, float radius)
{
	LHPoint point;
	point.Set(cos(angle) * radius, 0.0f, sin(angle) * radius);
	return point;
}

MapCoords GUtils::GetPosFromAngle(unsigned short angle, long distance)
{
	MapCoords pos;
	pos.SetWholeX(GetXByAngleBigDistance(angle, distance));
	pos.SetWholeZ(GetZByAngleBigDistance(angle, distance));
	return pos;
}

MapCoords GUtils::GetPosFromAngle(unsigned short angle, float distance)
{
	MapCoords pos;
	long      whole_distance = ConvertDistance3DToGame(distance);
	pos.SetWholeX(GetXByAngleBigDistance(angle, whole_distance));
	pos.SetWholeZ(GetZByAngleBigDistance(angle, whole_distance));
	return pos;
}

long GUtils::GetAngleSign(long from, long to)
{
	long difference = to - from;
	if (difference == 0)
		return 0;
	if ((unsigned long)abs(difference) > GAME_ANGLE_HALF_TURN)
	{
		if (difference < 0)
			difference += GAME_ANGLE_FULL_TURN;
		else
			difference -= GAME_ANGLE_FULL_TURN;
	}
	return difference >= 0 ? 1 : -1;
}

long GUtils::GetAngleDifference(long from, long to)
{
	unsigned long difference = abs(from - to);
	if (difference > GAME_ANGLE_HALF_TURN)
		return GAME_ANGLE_FULL_TURN - difference;
	return difference;
}

bool32_t GUtils::TurnTowardsAngle(uint16_t* angle, long target, long max_turn)
{
	long difference = GetAngleDifference(*angle, target);
	if (difference == 0)
		return true;
	long sign = GetAngleSign(*angle, target);
	long turn = max_turn;
	if (turn >= difference)
		turn = difference;
	if (sign < 0)
		turn = -turn;
	*angle = (*angle + turn) & GAME_ANGLE_MASK;
	return *angle == target;
}

const JustMapXZ* GUtils::Spiral(long& x, long& z)
{
	if (--z == 0)
	{
		x++;
		z = x / 2;
	}
	return &MapXZDirections[x & (MAP_XZ_DIRECTION_COUNT - 1)];
}

void GUtils::SpiralIncrement(MapCoords& pos, long& x, long& z, float step)
{
	if (--z == 0)
	{
		x++;
		z = x / 2;
	}
	pos.SetMetersX(pos.MetersX() + MapXZDirections[x & (MAP_XZ_DIRECTION_COUNT - 1)].x * step);
	pos.SetMetersZ(pos.MetersZ() + MapXZDirections[x & (MAP_XZ_DIRECTION_COUNT - 1)].z * step);
}

void GUtils::DrawTextBox(long x, long y, char* text)
{
	long      height = LHSys::TheSystem.text.StringHeight(text, NULL) + 2 * TEXT_BOX_BEVEL;
	long      width = LHSys::TheSystem.text.StringWidth(text, NULL) + 2 * TEXT_BOX_BEVEL;
	LHPixel16 edge;
	edge.Set(TEXT_BOX_EDGE_SHADE, TEXT_BOX_EDGE_SHADE, TEXT_BOX_EDGE_SHADE);
	LHPixel16 fill;
	fill.Set(TEXT_BOX_FILL_SHADE, TEXT_BOX_FILL_SHADE, TEXT_BOX_FILL_SHADE);
	LHSys::TheSystem.draw.EmbossedBox16(x, y - height, x + width, y, fill, edge, TEXT_BOX_LIGHT_DIRECTION,
	                                    TEXT_BOX_BEVEL, LH_DRAW_STYLE_BLEND);
	LHSys::TheSystem.text.Draw(x + TEXT_BOX_BEVEL, y - height + TEXT_BOX_BEVEL, text, 1);
}

int __cdecl GUtils::CompareDescending(const void* a, const void* b)
{
	return ((const SortEntry*)b)->Value - ((const SortEntry*)a)->Value;
}

int __cdecl GUtils::CompareAscending(const void* a, const void* b)
{
	return ((const SortEntry*)a)->Value - ((const SortEntry*)b)->Value;
}

void GUtils::MakeRandomOrder(uint8_t count, uint8_t* order, bool32_t randomise)
{
	for (uint32_t i = 0; i < count; i++)
		order[i] = i;
	if (randomise == true)
	{
		for (uint32_t swaps = GAME_RAND(899, count) + count; swaps != 0; swaps--)
		{
			uint8_t first = GAME_RAND(905, count);
			uint8_t second = GAME_RAND(906, count);
			uint8_t temp = order[first];
			order[first] = order[second];
			order[second] = temp;
		}
	}
}

void GUtils::GetLineSteps(const MapCoords& from, const MapCoords& to, long* step, uint8_t* count, uint8_t scale)
{
	long dz = abs(from.WholeZ() - to.WholeZ());
	long dx = abs(from.WholeX() - to.WholeX());
	*count = (uint8_t)(dx > dz ? dx : dz) * scale;
	step[0] = from.WholeX() == to.WholeX() ? 0 : (from.WholeX() < to.WholeX() ? 1 : -1);
	step[1] = from.WholeZ() == to.WholeZ() ? 0 : (from.WholeZ() < to.WholeZ() ? 1 : -1);
}

uint8_t GUtils::Log2Byte(uint8_t value)
{
	if (Log2TableNeedsInit == true)
	{
		for (uint16_t i = 0; i < ARRAY_SIZE(Log2Table); i++)
		{
			uint8_t bits = (uint8_t)i;
			uint8_t log = 0;
			while (bits >>= 1)
				log++;
			Log2Table[i] = log;
		}
		Log2TableNeedsInit = false;
	}
	return Log2Table[value];
}

unsigned long Log2(unsigned long value)
{
	uint8_t log = GUtils::Log2Byte(value >> 24);
	if (log)
		return log + 24;
	log = GUtils::Log2Byte(value >> 16);
	if (log)
		return log + 16;
	log = GUtils::Log2Byte(value >> 8);
	if (log)
		return log + 8;
	return GUtils::Log2Byte(value);
}

void GUtils::CalculateNumeratorAndDenominator(unsigned long index, unsigned long& numerator, unsigned long& denominator)
{
	if (index == 0)
	{
		numerator = 0;
		denominator = 1;
		return;
	}
	numerator = (index - (1 << Log2(index))) * 2 + 1;
	denominator = 1 << (Log2(index) + 1);
}

int16_t GUtils::Spread(unsigned long index, unsigned long range)
{
	unsigned long numerator;
	unsigned long denominator;
	CalculateNumeratorAndDenominator(index >> 1, numerator, denominator);
	unsigned long result = (numerator * range >> 1) / denominator;
	if (index & 1)
		result += range >> 1;
	return result;
}

uint32_t GUtils::ConvertAngle3DToGame(float angle_3d)
{
	float angle = angle_3d;
	return (int)(angle * Angle3DToGame) & GAME_ANGLE_MASK;
}

float GUtils::ConvertGameAngleTo3D(long angle)
{
	return (uint32_t)(angle & GAME_ANGLE_MASK) * GameAngleTo3D;
}

int GUtils::ConvertDistance3DToGame(float distance)
{
	return (int)(distance / MetresPerMapCell * LH_SIN_TABLE_ONE);
}

float GUtils::ConvertGameDistanceTo3D(int distance)
{
	return distance * MetresPerMapCell / LH_SIN_TABLE_ONE;
}

float GUtils::ConvertWholeDistanceToMeters(int distance)
{
	return distance * (MetresPerMapCell / LH_SIN_TABLE_ONE);
}

int GUtils::ConvertMetersToWholeDistance(float meters)
{
	return (int)(meters / MetresPerMapCell * LH_SIN_TABLE_ONE);
}

unsigned long GUtils::Abs(long value)
{
	return abs(value);
}

Abode* GUtils::FindClosestAbode(Villager* villager)
{
	return FindClosestAbode(villager->Pos, villager->GetTribe()->type, false, false, true);
}

Abode* GUtils::FindClosestAbodeWithRoom(Villager* villager)
{
	return FindClosestAbode(villager->Pos, villager->GetTribe()->type, true, false, true);
}

Abode* GUtils::FindClosestAbode(const MapCoords& pos, TRIBE_TYPE tribe_type, bool32_t need_room,
                                bool32_t need_villagers, bool32_t need_built)
{
	Abode* closest = NULL;
	float  closest_distance = ABODE_SEARCH_MAX_DISTANCE;
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		for (Town* town = player->towns.head; town; town = town->next)
		{
			for (Abode* abode = town->AbodeList.head; abode; abode = abode->next)
			{
				float distance = abode->Pos.GetDistance(pos);
				if (distance < closest_distance &&
				    (abode->GetTribeType() == tribe_type || tribe_type == TRIBE_TYPE_NONE) &&
				    (!need_villagers || abode->villagers.head) && (!need_built || abode->IsBuilt()) &&
				    (!need_room || (abode->GetRoomLeftForAdults() > 0 && abode->IsBuilt())))
				{
					closest = abode;
					closest_distance = distance;
				}
			}
		}
	}
	return closest;
}

#ifndef VERSION_BW1W100
char* GUtils::GetFileNameFromDialog(bool32_t open, char* title, char* path, char* directory)
{
	OPENFILENAME ofn;
	char         current_directory[256];
	char*        filename = strrchr(path, '\\');
	if (filename)
		filename++;
	else
		filename = path;
	ofn.lStructSize = sizeof(OPENFILENAME);
	ofn.hwndOwner = LHSys::TheSystem.screen.MsWindowHandle;
	ofn.hInstance = NULL;
	ofn.lpstrFilter = NULL;
	ofn.lpstrCustomFilter = NULL;
	ofn.nMaxCustFilter = 0;
	ofn.nFilterIndex = 1;
	ofn.lpstrFile = filename;
	ofn.nMaxFile = sizeof(current_directory);
	ofn.lpstrFileTitle = NULL;
	ofn.nMaxFileTitle = sizeof(current_directory);
	ofn.lpstrInitialDir = directory;
	ofn.Flags = 0;
	ofn.nFileOffset = 0;
	ofn.nFileExtension = 0;
	ofn.lpstrDefExt = NULL;
	ofn.lCustData = 0;
	ofn.lpfnHook = NULL;
	ofn.lpTemplateName = NULL;
	GetCurrentDirectory(sizeof(current_directory) - 1, current_directory);
	ofn.lpstrTitle = "Black Game";
	if (title)
		ofn.lpstrTitle = title;
	switch (open)
	{
	case false:
		if (!GetSaveFileName(&ofn))
			return NULL;
		break;
	case true:
		if (!GetOpenFileName(&ofn))
			return NULL;
		break;
	}
	SetCurrentDirectory(current_directory);
	LHSys::TheSystem.mouse.Buttons &= ~(LH_MOUSE_BUTTON_LEFT_DOWN | LH_MOUSE_BUTTON_RIGHT_DOWN);
	return ofn.lpstrFile;
}
#endif

LHLinkedList<DebugRecord*> DebugRecord::Records;

DebugRecord::DebugRecord(void* key, int value)
{
	Key = key;
	Value = value;
	Records.Add(this);
}

DebugRecord::~DebugRecord()
{
	Records.Remove(this);
}

void DebugRecord::Add(void* key, int value)
{
	Find(key, value);
	NEW(1215) DebugRecord(key, value);
}

void DebugRecord::Remove(void* key, int value)
{
	FindNode(key, value);
	for (LHLinkedNode<DebugRecord*>* node = Records.GetStart(); node; node = node->next.Get())
	{
		if (key == node->payload->Key)
		{
			delete node->payload;
			return;
		}
	}
}

LHLinkedNode<DebugRecord*>* DebugRecord::Find(void* key, int value)
{
	LHLinkedNode<DebugRecord*>* node;
	for (node = Records.GetStart(); node; node = node->next.Get())
	{
		if (key == node->payload->Key)
			break;
	}
	return node;
}

LHLinkedNode<DebugRecord*>* DebugRecord::FindNode(void* key, int value)
{
	LHLinkedNode<DebugRecord*>* node;
	for (node = Records.GetStart(); node; node = node->next.Get())
	{
		if (key == node->payload->Key)
			break;
	}
	return node;
}

bool32_t GUtils::IsInMap(const LHPoint& point)
{
	if (point.x < 0.0f || (long)GGame::g_game->map.CellExtentZx[1] * MetresPerMapCell < point.x)
		return false;
	if (point.z < 0.0f || (long)GGame::g_game->map.CellExtentZx[0] * MetresPerMapCell < point.z)
		return false;
	return true;
}

long GUtils::MetersToMapX(float meters)
{
	return (long)(meters / MetresPerMapCell);
}

long GUtils::MetersToMapZ(float meters)
{
	return (long)(meters / MetresPerMapCell);
}

long GUtils::MetersToWholeX(float meters)
{
	return (long)((long)meters / MetresPerMapCell * LH_SIN_TABLE_ONE);
}

long GUtils::MetersToWholeZ(float meters)
{
	return (long)((long)meters / MetresPerMapCell * LH_SIN_TABLE_ONE);
}

float GUtils::WholeToMetersX(long whole)
{
	return whole * MetresPerMapCell / LH_SIN_TABLE_ONE;
}

float GUtils::WholeToMetersZ(long whole)
{
	return whole * MetresPerMapCell / LH_SIN_TABLE_ONE;
}

float GUtils::ShapePosToMeters(float pos)
{
	float half = pos * 0.5f;
	return half * (1.0f / LH_SIN_TABLE_ONE);
}

uint32_t GUtils::ConvertScawenAngleToGameAngle(float angle)
{
	return ConvertAngle3DToGame(angle - HALF_PI_F);
}

float GUtils::ConvertGameAngleToScawenAngle(uint16_t angle)
{
	return (angle * 2) * (TWO_PI / (GAME_ANGLE_FULL_TURN * 2)) + HALF_PI_F;
}

static long CellToWholeCentre(short cell)
{
	return (cell << 16) + MAP_COORDS_FRACTION_CENTRE;
}

bool32_t GUtils::FindNearestCoastalTo(const MapCoords& pos, MapCoords& coastal_pos, float max_dist)
{
	MapCoords position(pos);
	long      remaining = COASTAL_SEARCH_MAX_STEPS;
	long      x = 1;
	long      z = 1;
	while (remaining)
	{
		if (GetDistanceInMetres(pos, position) > max_dist)
			break;
		if (position.InBounds() && position.IsCoastal())
		{
			coastal_pos = position;
			return true;
		}
		remaining--;
		position += *Spiral(x, z);
	}
	return false;
}

bool32_t GUtils::FindNearestDrinkingWater(MapCoords& pos, MapCoords& water_pos, float max_dist)
{
	if (GStream::FindNearestPosTo(pos, water_pos, max_dist))
	{
		FindNearestCoastalTo(pos, water_pos, pos.GetDistance(water_pos));
		return true;
	}
	return FindNearestCoastalTo(pos, water_pos, max_dist);
}

char* GUtils::StripFileName(char* path)
{
	if (path)
	{
		for (int i = strlen(path) - 1; i >= 0; i--)
		{
			if (path[i] == '\\')
				return path + i + 1;
		}
	}
	return NULL;
}

LHPoint   CircleCentre;
MapCoords CircleMapCentre;

LHPoint GUtils::Circle::ProcessPoint(float x, float z)
{
	LHPoint point(CircleCentre);
	point.x += x;
	point.z += z;
	return point;
}

void GUtils::Circle::Process(const LHPoint& centre, float radius, int (*callback)(const LHPoint&), float step,
                             bool32_t fill)
{
	long steps = (long)(radius / step);
	long i = 0;
	long j = steps;
	long decision = 3 - 2 * steps;
	CircleCentre = centre;
	float y = steps * step;
	float x = 0.0f;
	if (fill)
	{
		for (; i <= j; i++)
		{
			float u;
			for (u = -y; u < y; u += step)
			{
				callback(ProcessPoint(u, -x));
				callback(ProcessPoint(u, x));
			}
			for (u = -x; u <= x; u += step)
			{
				callback(ProcessPoint(u, -y));
				callback(ProcessPoint(u, y));
			}
			if (decision < 0)
				decision += 4 * i + 6;
			else
			{
				decision += 4 * (i - j) + 10;
				j--;
				y -= step;
			}
			x += step;
		}
	}
	else
	{
		for (; i <= j; i++)
		{
			callback(ProcessPoint(-x, -y));
			callback(ProcessPoint(x, -y));
			callback(ProcessPoint(-x, y));
			callback(ProcessPoint(x, y));
			callback(ProcessPoint(-y, -x));
			callback(ProcessPoint(y, -x));
			callback(ProcessPoint(-y, x));
			callback(ProcessPoint(y, x));
			if (decision < 0)
				decision += 4 * i + 6;
			else
			{
				decision += 4 * (i - j) + 10;
				j--;
				y -= step;
			}
			x += step;
		}
	}
}

MapCoords GUtils::Circle::ProcessMapPoint(float x, float z)
{
	MapCoords pos(CircleMapCentre);
	pos.SetMetersX(pos.MetersX() + x);
	pos.SetMetersZ(pos.MetersZ() + z);
	return pos;
}

void GUtils::Circle::Process(const MapCoords& centre, float radius, int (*callback)(const MapCoords&), float step,
                             bool32_t fill)
{
	long steps = (long)(radius / step);
	long i = 0;
	long j = steps;
	long decision = 3 - 2 * steps;
	CircleMapCentre = centre;
	float y = steps * step;
	float x = 0.0f;
	if (fill)
	{
		for (; i <= j; i++)
		{
			float u;
			for (u = -y; u < y; u += step)
			{
				callback(ProcessMapPoint(u, -x));
				callback(ProcessMapPoint(u, x));
			}
			for (u = -x; u <= x; u += step)
			{
				callback(ProcessMapPoint(u, -y));
				callback(ProcessMapPoint(u, y));
			}
			if (decision < 0)
				decision += 4 * i + 6;
			else
			{
				decision += 4 * (i - j) + 10;
				j--;
				y -= step;
			}
			x += step;
		}
	}
	else
	{
		for (; i <= j; i++)
		{
			callback(ProcessMapPoint(-x, -y));
			callback(ProcessMapPoint(x, -y));
			callback(ProcessMapPoint(-x, y));
			callback(ProcessMapPoint(x, y));
			callback(ProcessMapPoint(-y, -x));
			callback(ProcessMapPoint(y, -x));
			callback(ProcessMapPoint(-y, x));
			callback(ProcessMapPoint(y, x));
			if (decision < 0)
				decision += 4 * i + 6;
			else
			{
				decision += 4 * (i - j) + 10;
				j--;
				y -= step;
			}
			x += step;
		}
	}
}

void GUtils::Circle::DrawCircleOnMap(const MapCoords& centre, float radius, const LH3DColor& color, float height,
                                     int on_land)
{
	LHPoint centre_point;
	GLandscape::ConvertMapCoordToLandscapePoint(centre, centre_point);
	float segments = radius * radius;
	if (segments >= CIRCLE_MAX_SEGMENTS)
		segments = CIRCLE_MAX_SEGMENTS;
	float step = TWO_PI / segments;
	float next = step;
	for (float angle = 0.0f; angle <= TWO_PI; angle += step, next += step)
	{
		LHPoint from = centre_point + GetPointFromAngle(angle, radius);
		LHPoint to = centre_point + GetPointFromAngle(next, radius);
		if (on_land)
		{
			from.y = LH3DIsland::GetAltitude(LH3DMapCoords(from.x, from.z)) + height;
			to.y = LH3DIsland::GetAltitude(LH3DMapCoords(to.x, to.z)) + height;
		}
	}
}

MapCoords GUtils::GetMidPoint(MapCoords& from, MapCoords& to, float distance)
{
	MapCoords mid_point(from);
	float     length = GetDistanceInMetres(from, to);
	if (length != 0.0f)
	{
		float angle = Get3DAngleFromXZ(from, to);
		mid_point += GetPosFromAngle(angle, (length - distance) * 0.5f);
	}
	return mid_point;
}

MapCoords GUtils::GetPosAlongLine(MapCoords& from, MapCoords& to, unsigned long numerator, unsigned long denominator)
{
	MapCoords pos(from);
	float     length = GetDistanceInMetres(from, to);
	if (length != 0.0f)
	{
		float angle = Get3DAngleFromXZ(from, to);
		float distance = numerator * length;
		pos += GetPosFromAngle(angle, distance / denominator);
	}
	return pos;
}

MapCoords GUtils::GetPosAlongLine(MapCoords& from, MapCoords& to, float distance)
{
	MapCoords pos(from);
	if (GetDistanceInMetres(from, to) != 0.0f)
	{
		float angle = Get3DAngleFromXZ(from, to);
		pos += GetPosFromAngle(angle, distance);
	}
	return pos;
}

LHPoint GUtils::GetPointOnArc(LHPoint centre, float radius, unsigned long index, unsigned long count, float arc,
                              float start_angle)
{
	float fraction = (float)index / count;
	radius *= fraction;
	float   angle = fraction * arc + start_angle;
	LHPoint offset(sin(angle) * radius, 0.0f, cos(angle) * radius);
	return centre + offset;
}

unsigned long GUtils::ProcessArc(LHPoint centre, float radius, unsigned long count, float arc, float start_angle,
                                 int (*callback)(LHPoint*))
{
	unsigned long i;
	for (i = 0; i < count; i++)
	{
		LHPoint point = GetPointOnArc(centre, radius, i, count, arc, start_angle);
		if (!callback(&point))
			break;
	}
	return i;
}

MapCoords GUtils::RotateAround(const MapCoords& centre, const MapCoords& pos, float angle)
{
	MapCoords offset = pos - centre;
	float     x = offset.MetersX();
	float     z = offset.MetersZ();
	float     cos_angle = cos(angle);
	float     sin_angle = sin(angle);
	offset.SetMetersX(sin_angle * z + cos_angle * x);
	offset.SetMetersZ(sin_angle * x - cos_angle * z);
	offset += centre;
	return offset;
}

float GetMesh2DRadius(LH3DMesh* mesh, float scale)
{
	return max(mesh->BoundingBox.size.x, mesh->BoundingBox.size.z) * scale;
}

bool32_t GUtils::DuplicateFile(char* from, char* to)
{
	bool32_t         result = false;
	LHReleasedOSFile source;
	LHReleasedOSFile destination;
	if (source.Open(from, LH_FILE_READ_ONLY) == LH_FILE_RESULT_OK)
	{
		if (destination.Open(to, LH_FILE_NEW) == LH_FILE_RESULT_OK)
		{
			char         buffer[1000];
			unsigned int bytes;
			result = true;
			while (source.Read(buffer, sizeof(buffer), &bytes) == LH_FILE_RESULT_OK)
			{
				if (bytes > 0)
					destination.Write(buffer, bytes, NULL);
				if (bytes < sizeof(buffer))
					break;
			}
			destination.Close();
		}
		source.Close();
	}
	return result;
}

float GUtils::SigmoidThreshold(float threshold, float value)
{
	if (threshold == 1.0f)
		return 0.0f;
	if (value < -1.0f)
		value = -1.0f;
	else if (value > 1.0f)
		value = 1.0f;
	value -= threshold;
	if (value < -1.0f)
		value = -1.0f;
	else if (value > 1.0f)
		value = 1.0f;
	uint32_t index = (int)((value + 1.0f) * SigmoidScale);
	if (index > ARRAY_SIZE(SigmoidTable) - 1)
		index = ARRAY_SIZE(SigmoidTable) - 1;
	return SigmoidTable[index];
}

char* GUtils::GetFilenameFromPath(char* path)
{
	int i = strlen(path);
	if (path)
	{
		while (path[i] != '\\')
		{
			if (i == 0)
				break;
			i--;
		}
		if (i != 0 || path[0] == '\\')
			return path + i + 1;
		return path;
	}
	return NULL;
}

int GUtils::GetPathFromPath(char* path, char* out)
{
	char* filename = GetFilenameFromPath(path);
	if (filename)
	{
		int length = filename - path;
		strncpy(out, path, length);
		out[length] = '\0';
		return true;
	}
	return false;
}

float GUtils::GetDistanceModifier(float distance, float max_distance)
{
	float value = distance < max_distance ? distance : max_distance;
	return SigmoidThreshold(0.5f, 1.0f - value / max_distance);
}

void GUtils::ScareFish(LHPoint* position)
{
	FishRush::g_b_er_valid = true;
	LHPoint emergency(position);
	FishRush::g_emergency = emergency;
}

MapCoords GUtils::GetRandomPos(const MapCoords& centre, float radius)
{
	MapCoords pos(centre);
	float     half = radius * 0.5f;
	float     dx = half - GAME_FLOAT_RAND(1879, radius);
	float     dz = half - GAME_FLOAT_RAND(1880, radius);
	pos.SetMetersX(pos.MetersX() + dx);
	pos.SetMetersZ(pos.MetersZ() + dz);
	return pos;
}

bool32_t GUtils::CanISeeThisPoint(LHPoint* eye, float y_angle, float half_angle, LHPoint* point)
{
	LHPoint  point_copy(point);
	LHPoint  eye_copy(eye);
	Point2D  delta(point_copy.x - eye_copy.x, point_copy.z - eye_copy.z);
	LHMatrix matrix;
	matrix.SetRotationY(y_angle - half_angle);
	LHPoint direction(1.0f, 0.0f, 0.0f);
	matrix.TransformVector(direction);
	if (direction.x * delta.y - direction.z * delta.x < 0.0f)
		return false;
	matrix.SetRotationY(y_angle + half_angle);
	direction = LHPoint(1.0f, 0.0f, 0.0f);
	matrix.TransformVector(direction);
	if (direction.x * delta.y - direction.z * delta.x > 0.0f)
		return false;
	return true;
}

uint32_t GUtils::GetNumVillagersNear(const MapCoords& pos, unsigned long cells)
{
	MapCoords position(pos);
	long      x = 1;
	long      z = 1;
	uint32_t  count = 0;
	if (cells)
	{
		for (unsigned long i = cells; i != 0; i--)
		{
			Object* object = position.FindType(OBJECT_TYPE_VILLAGER, NULL);
			while (object)
			{
				count++;
				object = position.FindType(OBJECT_TYPE_VILLAGER, object);
			}
			position += *Spiral(x, z);
		}
	}
	return count;
}

int GUtils::GetMapCellSpiralSizeFromRadius(float radius)
{
	unsigned long cells = (long)(radius / (MAP_COORDS_METRES_PER_CELL / 2));
	if (cells < 1)
		cells = 1;
	return cells * cells;
}

int GUtils::GetIncrementSpiralSizeFromRadius(float radius, float step)
{
	int increment = 1 - (int)(radius * -2.0f / step);
	return increment * increment;
}
