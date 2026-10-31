#include "LH3DWeather.h"

#include <d3dtypes.h> /* For RGBA_GETBLUE, RGBA_GETRED, RGBA_TORGB, RGB_MAKE */
#include <math.h>     /* For atan2, cos, sin, sqrt */

#include "DynamicLightAndShadow.h" /* For class DynamicLightAndShadow */
#include "LH3DAtmos.h"             /* For class LH3DAtmos */
#include "LH3DColor.h"             /* For struct LH3DColor */
#include "LH3DIsland.h"            /* For class LH3DIsland, struct LandBlock, struct LandCell */
#include "LH3DLevelOfDetail.h"     /* For struct LH3DLevelOfDetail */
#include "LH3DLightningSheet.h"    /* For class LH3DLightningSheet */
#include "LH3DMapCoords.h"         /* For struct LH3DMapCoords */
#include "LH3DMath.h"              /* For TWO_PI, PI_F, HALF_PI_F, QUARTER_PI_F, EIGHTH_PI_F */
#include "LH3DMaterial.h"          /* For struct LH3DMaterial */
#include "LH3DMesh.h"              /* For struct LH3DMesh */
#include "LH3DObject.h"            /* For class LH3DObject */
#include "LH3DRender.h"            /* For struct LH3DRender */
#include "LH3DSky.h"               /* For class LH3DSky */
#include "LH3DStorm.h"             /* For class LH3DStorm */
#include "LH3DTech.h"              /* For struct LH3DTech */
#include "LH3DTexture.h"           /* For struct LH3DTexture */
#include "LH3DZSorter.h"           /* For class LH3DZSorter */
#include "LHMatrix.h"              /* For struct LHMatrix */
#include "LHRandom.h"              /* For Random */
#include "SnowCover.h"             /* For class SnowCover */

#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHLoadData */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>  /* For struct LHSys */

#define LH3D_ATMOS_TEXTURE_PATH      "data\\textures\\atmos.raw"
#define LH3D_ATMOS_SNOW_TEXTURE_PATH "data\\Textures\\snow.raw"
#define LH3D_ATMOS_PALETTE_PATH      "Data\\WeatherSystem\\palette.raw"
#define LH3D_ATMOS_STORM_SHADOW_PATH "data\\textures\\sstorm.raw"
#define LH3D_ATMOS_WIND_ARROW_PATH   "data\\WeatherSystem\\arrow.l3d"
#define LH3D_ATMOS_GLOW_UV_MIN       (0.5f / LH3D_ATMOS_GLOW_TEXTURE_SIZE)
#define LH3D_ATMOS_GLOW_UV_MAX       ((LH3D_ATMOS_GLOW_SIZE - 0.5f) / LH3D_ATMOS_GLOW_TEXTURE_SIZE)
#define LH3D_ATMOS_COOLING_ALTITUDE  50.0f
#define LH3D_ATMOS_HIGH_ALTITUDE     200.0f
#define LH3D_ATMOS_LAPSE_RATE        0.075f
#define LH3D_ATMOS_CLOUD_HEIGHT      160.0f
#define LH3D_ATMOS_CLOUD_HEIGHT_MIN  40.0f
#define LH3D_ATMOS_CLOUD_HEIGHT_MAX  640.0f
#define LH3D_ATMOS_FALL_SPEED        1.0f
#define LH3D_ATMOS_FALL_SPEED_MIN    0.3f
#define LH3D_ATMOS_FALL_SPEED_MAX    5.0f
#define LH3D_ATMOS_BLEND_RATE        0.3f

int      LH3DLightningSheet::numsheets;
bool32_t wantglowdraw;
void(__stdcall* g_water_drop_cb)(LHPoint& pos, float size, unsigned long color);
bool          LH3DAtmos::insidestorm;
LH3DStorm*    LH3DAtmos::neareststorm;
LH3DMaterial* LH3DAtmos::snowmat;
LH3DTexture*  LH3DAtmos::snowtex;
int           LH3DAtmos::inited;
float         LH3DAtmos::alignment;
float         LH3DAtmos::superglow;
LHPoint       LH3DAtmos::moonpos;
long          LH3DAtmos::glowtab[LH3D_ATMOS_GLOW_SIZE * LH3D_ATMOS_GLOW_SIZE][4];
int           LH3DAtmos::glowlevel;
LH3DTexture*  LH3DAtmos::tex0;
LH3DTexture*  LH3DAtmos::tex1;
LH3DMaterial* LH3DAtmos::mat0;
LH3DMaterial* LH3DAtmos::mat1;
unsigned long LH3DAtmos::flags;
uint32_t*     LH3DAtmos::palette;
RainCell*     LH3DAtmos::rc;
SnowCell*     LH3DAtmos::sc;
WeatherInfo*  LH3DAtmos::amap;
WeatherInfo   LH3DAtmos::ambient;
SnowCover*    LH3DAtmos::scv;
int8_t        LH3DAtmos::amaptime;
static long   v_max[LH3D_ATMOS_BUFFER_COUNT];
LH3DColor*    LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_COUNT];
LHPoint*      LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_COUNT];
long*         LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_COUNT];
float*        LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_COUNT];
bool32_t      LH3DAtmos::needrainupdate;
bool32_t      LH3DAtmos::needsnowupdate;
float         LH3DAtmos::cloudheight = LH3D_ATMOS_CLOUD_HEIGHT;
float         LH3DAtmos::speed = LH3D_ATMOS_FALL_SPEED;

static const float    RAIN_FAR_DISTANCE = 400.0f;
static const float    RAIN_NEAR_DISTANCE = 100.0f;
static const float    SNOW_FAR_DISTANCE = 300.0f;
static const float    SNOW_NEAR_DISTANCE = 50.0f;
static const float    GLOW_DEPTH = 0.001f;
static const uint16_t GLOW_INDICES[6] = {0, 1, 3, 3, 2, 0};

void RainLine::Init()
{
	X = Random(-160.0f, 160.0f) * 0.5f;
	Z = Random(-160.0f, 160.0f) * 0.5f;
	DX = Random(-15.0f, 15.0f);
	DZ = Random(-15.0f, 15.0f);
	U = Random(0.0f, 1.0f);
	USpeed = Random(0.1f, 0.2f);
	Time = Random(0.0f, 1.0f);
}

void RainCell::Init()
{
	for (int i = 0; i < RAIN_CELL_LINES; i++)
	{
		Lines[i].Init();
	}
}

void RainCell::PrepareForDraw(int colour)
{
	float*     uv = LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_RAIN];
	LH3DColor* col = LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_RAIN];
	LHPoint*   pnt = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_RAIN];
	RainLine*  line = Lines;
	for (int i = 0; i < RAIN_CELL_LINES; i++)
	{
		pnt[0] = LHPoint(line->X, -50.0f, line->Z);
		pnt[1] = LHPoint(line->X + line->DX, LH3DAtmos::cloudheight, line->Z + line->DZ);
		uv[0] = line->U;
		uv[2] = line->U + 1.0f;
		uv[1] = 129.0f / LH3D_ATMOS_TEXTURE_SIZE;
		uv[3] = 129.0f / LH3D_ATMOS_TEXTURE_SIZE;
		col[1] = LH3DColor(LH3D_COLOR_WHITE);
		col[0] = LH3DColor(LH3D_COLOR_WHITE);
		col += 2;
		uv += 4;
		pnt += 2;
		line++;
	}
}

void RainCell::Update(float time)
{
	float     elapsed = time * 2.4f;
	RainLine* line = Lines;
	for (int i = 0; i < RAIN_CELL_LINES; i++)
	{
		line->U += LH3DAtmos::speed * line->USpeed * time;
		if (line->U > 1.0f)
		{
			line->U -= (int)line->U;
		}
		line->Time += elapsed;
		if (line->Time > 1.0f)
		{
			line->Time -= (int)line->Time;
			line->DX = Random(-15.0f, 15.0f);
			line->DZ = Random(-15.0f, 15.0f);
			line->X = Random(-160.0f, 160.0f) * 0.5f;
			line->Z = Random(-160.0f, 160.0f) * 0.5f;
		}
		line++;
	}
}

void RainCell::Draw()
{
	float x = (float)(LH3DZSorter::UserData & 0xff) * 80.0f;
	float z = (float)((LH3DZSorter::UserData >> 8) & 0xff) * 80.0f;
	int   alpha = (LH3DZSorter::UserData >> 16) & 0xff;
	if (alpha > 5)
	{
		Draw2(x, z, 0.0f, RAIN_CELL_LINES, alpha);
	}
	if (alpha > 44)
	{
		int splashAlpha = alpha * 255 / 88;
		splashAlpha = splashAlpha > 0 ? min(splashAlpha, 255) : 0;
		unsigned long color = (splashAlpha << 24) + RGBA_TORGB(LandCell::g_darkness_to_color[200]);
		for (unsigned long i = 0; i < LH3DLevelOfDetail::g_num_rainsplash; i++)
		{
			LHPoint pos(Random(0.0f, 160.0f) + x - 80.0f, 0.0f, Random(0.0f, 160.0f) + z - 80.0f);
			pos.y = LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z));
			pos.y += 1.0f;
			if (g_water_drop_cb != NULL)
			{
				g_water_drop_cb(pos, Random(0.0f, 0.3f) + 0.5f, color);
			}
		}
	}
}

void SnowCell::Draw()
{
	float x = (float)(LH3DZSorter::UserData & 0xff) * 80.0f;
	float z = (float)((LH3DZSorter::UserData >> 8) & 0xff) * 80.0f;
	int   alpha = (LH3DZSorter::UserData >> 16) & 0xff;
	int   count = alpha * SNOW_CELL_FLAKES / 128;
	count = min(SNOW_CELL_FLAKES, count);
	if (count > 5)
	{
		Draw2(x, z, 0.0f, count, alpha);
	}
}

void RainCell::AddDrawing(float x, float z, float angle, int count, int alpha)
{
	if (alpha > 255)
	{
		alpha = 255;
	}
	else if (alpha < 0)
	{
		return;
	}
	float         dy = LH3DIsland::GetAltitude(LH3DMapCoords(x, z)) - LH3DTech::g_camera.pos.y;
	float         dz = z - LH3DTech::g_camera.pos.z;
	float         dx = x - LH3DTech::g_camera.pos.x;
	unsigned long data = (((alpha << 8) - (int)(z * -0.0125f)) << 8) - (int)(x * -0.0125f);
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&RainCell::Draw,
	                                  (dx * dx) + (dz * dz) + (dy * dy), data);
}

void SnowCell::AddDrawing(float x, float z, float angle, int count, int alpha)
{
	if (alpha > 255)
	{
		alpha = 255;
	}
	else if (alpha < 0)
	{
		return;
	}
	float         dy = LH3DIsland::GetAltitude(LH3DMapCoords(x, z)) - LH3DTech::g_camera.pos.y;
	float         dz = z - LH3DTech::g_camera.pos.z;
	float         dx = x - LH3DTech::g_camera.pos.x;
	unsigned long data = (((alpha << 8) - (int)(z * -0.0125f)) << 8) - (int)(x * -0.0125f);
	LH3DRender::g_zsorter->NewZObject(this, (LH3DZSorter::DrawCallback)&SnowCell::Draw,
	                                  (dx * dx) + (dz * dz) + (dy * dy), data);
}

void RainCell::Draw2(float x, float z, float angle, int count, int alpha)
{
	alpha = min(255, alpha);
	LHPoint camera = *LH3DTech::GetCameraPosition();
	float   dx = camera.x - x;
	float   dz = camera.z - z;
	float   dist = sqrt(dz * dz + dx * dx);
	if (dist > RAIN_FAR_DISTANCE)
	{
		return;
	}
	int lines;
	if (dist > RAIN_NEAR_DISTANCE)
	{
		float fade = 1.0f - (dist - RAIN_NEAR_DISTANCE) / (RAIN_FAR_DISTANCE - RAIN_NEAR_DISTANCE);
		alpha = (int)(alpha * fade);
		lines = (int)(count * fade);
	}
	else
	{
		lines = count;
	}
	if (lines <= 0)
	{
		return;
	}
	float scale = dist / RAIN_FAR_DISTANCE * 2.0f + 1.0f;
	float ground = LH3DIsland::GetAltitude(LH3DMapCoords(x, z));
	int   topAlpha = (int)(alpha / (scale * 5.0f));

	RainLine*  line = Lines;
	LH3DColor* col = LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_RAIN];
	for (int i = 0; i < lines; i++)
	{
		if (line->Time < 0.05f)
		{
			col[0].a = (int)(alpha * line->Time * 20.0f);
			col[1].a = (int)(topAlpha * line->Time * 20.0f);
		}
		else if (line->Time > 0.95f)
		{
			float fade = (1.0f - line->Time) * 20.0f;
			col[0].a = (int)(alpha * fade);
			col[1].a = (int)(topAlpha * fade);
		}
		else
		{
			col[0].a = alpha;
			col[1].a = topAlpha;
		}
		col += 2;
		line++;
	}

	LHMatrix matrix;
	matrix.SetRotationY(angle);
	matrix.m[9] = x;
	matrix.m[10] = ground;
	matrix.m[11] = z;
	matrix.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DTech::g_local_to_clipping = matrix;
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::ClipAndDrawLines(lines, LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_RAIN],
	                           (unsigned long*)LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_RAIN],
	                           LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_RAIN], LH3DAtmos::mat0);
}

void Snowflake::Create(const LHPoint& pos)
{
	Pos = pos;
	FallSpeed = Random(0.0f, 1.0f) + 7.0f;
	SwaySpeed = Random(0.0f, 10.0f) - 5.0f;
	Heading = Random(0.0f, TWO_PI);
	SwayAngle = Random(0.0f, PI_F);
	Rotation = LHPoint(Random(0.0f, TWO_PI), Random(0.0f, TWO_PI), Random(0.0f, TWO_PI));
	RotationSpeed = LHPoint(Random(0.0f, HALF_PI_F), Random(0.0f, HALF_PI_F), Random(0.0f, HALF_PI_F));
}

void Snowflake::Create()
{
	Create(LHPoint(Random(-80.0f, 80.0f) * 0.5f, Random(0.0f, LH3DAtmos::cloudheight), Random(-80.0f, 80.0f) * 0.5f));
}

void Snowflake::Update(float time)
{
	Pos.y -= LH3DAtmos::speed * FallSpeed * time;
	SwayAngle += LH3DAtmos::speed * SwaySpeed * time;
	if (SwayAngle > TWO_PI)
	{
		SwayAngle -= TWO_PI;
		Heading = Heading - EIGHTH_PI_F + Random(0.0f, QUARTER_PI_F);
		if (Heading > TWO_PI)
		{
			Heading -= TWO_PI;
		}
		if (Heading < 0.0f)
		{
			Heading += TWO_PI;
		}
	}
	float sway = time * 3.0f;
	float drift = (float)sin(SwayAngle) * sway;
	Pos.x += (float)sin(Heading) * drift;
	Pos.z += (float)cos(Heading) * drift;
	Pos.y -= (float)cos(SwayAngle) * sway * 0.5f;
	Rotation += RotationSpeed * time;
}

void SnowCell::Init()
{
	for (int i = 0; i < SNOW_CELL_FLAKES; i++)
	{
		Flakes[i].Create();
		Flakes[i].Pos.y = Random(-20.0f, 160.0f);
	}
}

void SnowCell::Update(float time)
{
	for (int i = 0; i < SNOW_CELL_FLAKES; i++)
	{
		if (Flakes[i].Pos.y <= -20.0f)
		{
			Flakes[i].Create();
		}
		Flakes[i].Update(time);
	}
}

void SnowCell::PrepareForDraw(int colour)
{
	LHPoint*   pnt = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SNOW];
	LH3DColor* col = LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SNOW];
	float*     uv = LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SNOW];
	long*      idx = LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SNOW];
	int        base = 0;
	Snowflake* flake = Flakes;
	for (int i = 0; i < SNOW_CELL_FLAKES; i++)
	{
		*idx++ = base;
		*idx++ = base + 1;
		*idx++ = base + 2;
		*idx++ = base + 2;
		*idx++ = base + 3;
		*idx++ = base;
		base += 4;
		uv[0] = 33.0f / LH3D_ATMOS_TEXTURE_SIZE;
		uv[1] = 1.0f / LH3D_ATMOS_TEXTURE_SIZE;
		uv[2] = 33.0f / LH3D_ATMOS_TEXTURE_SIZE;
		uv[3] = 31.0f / LH3D_ATMOS_TEXTURE_SIZE;
		uv[4] = 63.0f / LH3D_ATMOS_TEXTURE_SIZE;
		uv[5] = 31.0f / LH3D_ATMOS_TEXTURE_SIZE;
		uv[6] = 63.0f / LH3D_ATMOS_TEXTURE_SIZE;
		uv[7] = 1.0f / LH3D_ATMOS_TEXTURE_SIZE;
		uv += 8;
		col[0] = col[1] = col[2] = col[3] = LH3DColor(colour);
		col += 4;
		LHMatrix matrix;
		matrix.SetYXZMatrixOnly(flake->Rotation.x, flake->Rotation.y, flake->Rotation.z);
		LHPoint across(matrix.m[0], matrix.m[1], matrix.m[2]);
		LHPoint up(matrix.m[6], matrix.m[7], matrix.m[8]);
		up *= 0.3f;
		across *= 0.3f;
		pnt[0] = flake->Pos + across + up;
		pnt[1] = flake->Pos - up + across;
		pnt[2] = flake->Pos - up - across;
		pnt[3] = flake->Pos + up - across;
		pnt += 4;
		flake++;
	}
}

void SnowCell::Draw2(float x, float z, float angle, int count, int alpha)
{
	alpha = min(255, alpha);
	if (count <= 0)
	{
		return;
	}
	LHPoint camera = *LH3DTech::GetCameraPosition();
	float   dx = camera.x - x;
	float   dz = camera.z - z;
	float   dist = sqrt(dz * dz + dx * dx);
	if (dist > SNOW_FAR_DISTANCE)
	{
		return;
	}
	if (dist > SNOW_NEAR_DISTANCE)
	{
		alpha = (int)((1.0f - (dist - SNOW_NEAR_DISTANCE) / (SNOW_FAR_DISTANCE - SNOW_NEAR_DISTANCE)) * alpha);
	}
	if (alpha < 5)
	{
		return;
	}
	alpha = min(255, alpha);
	float ground = LH3DIsland::GetAltitude(LH3DMapCoords(x, z));

	LH3DColor* col = LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SNOW];
	for (int i = 0; i < count; i++)
	{
		col[0].a = alpha;
		col[1].a = alpha;
		col[2].a = alpha;
		col[3].a = alpha;
		col += 4;
	}

	LHMatrix matrix;
	matrix.SetRotationY(angle);
	matrix.m[9] = x;
	matrix.m[10] = ground;
	matrix.m[11] = z;
	matrix.PostMultiply(LH3DTech::g_world_to_clipping);
	LH3DTech::g_local_to_clipping = matrix;
	LH3DTech::g_current_matrix = &LH3DTech::g_local_to_clipping;
	LH3DTech::Draw3DWorldTriangle(count * 4, LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SNOW],
	                              LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SNOW], LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SNOW],
	                              count * 2, LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SNOW], LH3DAtmos::mat0, true);
}

int LH3DAtmos::GetSnowDepth(const LHPoint& point)
{
	if (scv != NULL)
	{
		return WeatherInfo::Clip((int)(scv->GetDepth((LHPoint&)point) * 0.5f));
	}
	return 0;
}

WeatherInfo LH3DAtmos::GetAmbientWeather()
{
	return ambient;
}

void LH3DAtmos::RecalcAtmos(WeatherInfo* info, int x, int z)
{
	if (info == NULL || info == &ambient)
	{
		return;
	}
	LHPoint     pos((float)(x * LH3D_ATMOS_CELL_SIZE), 0.0f, (float)(z * LH3D_ATMOS_CELL_SIZE));
	WeatherInfo weather = GetAmbientWeather();
	for (LH3DStorm* storm = LH3DStorm::first; storm != NULL; storm = storm->Next)
	{
		if (!storm->Killed)
		{
			storm->CalcAtmos(&pos, &weather);
		}
	}
	weather.Time = amaptime;
	weather.SnowDepth = GetSnowDepth(pos);
	*info = weather;
}

WeatherInfo* LH3DAtmos::FindAtmos(int x, int z)
{
	if (x < 0 || z < 0 || x >= LH3D_ATMOS_MAP_SIZE || z >= LH3D_ATMOS_MAP_SIZE)
	{
		ambient.Time = amaptime;
		return &ambient;
	}
	return &amap[z * LH3D_ATMOS_MAP_SIZE + x];
}

WeatherInfo* LH3DAtmos::FindAtmos(LHPoint& point)
{
	int x = (int)(point.x / LH3D_ATMOS_CELL_SIZE);
	int z = (int)(point.z / LH3D_ATMOS_CELL_SIZE);
	if (x < 0 || z < 0 || x >= LH3D_ATMOS_MAP_SIZE || z >= LH3D_ATMOS_MAP_SIZE)
	{
		ambient.Time = amaptime;
		return &ambient;
	}
	return &amap[z * LH3D_ATMOS_MAP_SIZE + x];
}

static inline void ApplyAltitude(WeatherInfo& weather, float altitude)
{
	if (altitude > LH3D_ATMOS_COOLING_ALTITUDE)
	{
		if (altitude > LH3D_ATMOS_HIGH_ALTITUDE)
		{
			weather.Temperature -=
				(int)((LH3D_ATMOS_HIGH_ALTITUDE - LH3D_ATMOS_COOLING_ALTITUDE) * LH3D_ATMOS_LAPSE_RATE);
		}
		else
		{
			weather.Temperature -= (int)((altitude - LH3D_ATMOS_COOLING_ALTITUDE) * LH3D_ATMOS_LAPSE_RATE);
		}
	}
}

WeatherInfo LH3DAtmos::GetWeather(const LHPoint& point, int recalc)
{
	int          x = (int)(point.x / LH3D_ATMOS_CELL_SIZE);
	int          z = (int)(point.z / LH3D_ATMOS_CELL_SIZE);
	WeatherInfo* info = FindAtmos(x, z);
	if (amaptime != info->Time && recalc)
	{
		RecalcAtmos(info, x, z);
	}
	WeatherInfo weather = *info;
	ApplyAltitude(weather, point.y);
	return weather;
}

float LH3DAtmos::GetWindSpeedAtPoint(const LHPoint& point, bool smooth)
{
	LHPoint wind = GetWindAtPoint(point, smooth);
	return sqrt(wind.x * wind.x + wind.z * wind.z);
}

int8_t LH3DAtmos::GetTemperatureAtPoint(const LHPoint& point, bool smooth)
{
	if (smooth)
	{
		return GetWeatherSmooth(point, true).Temperature;
	}
	return GetWeather(point, true).Temperature;
}

LHPoint LH3DAtmos::GetWindAtPoint(const LHPoint& point, bool smooth)
{
	return smooth ? GetWind(GetWeatherSmooth(point, true)) : GetWind(GetWeather(point, true));
}

WeatherInfo LH3DAtmos::GetWeatherSmooth(const LHPoint& point, int recalc)
{
	float        fx = point.x / LH3D_ATMOS_CELL_SIZE;
	float        fz = point.z / LH3D_ATMOS_CELL_SIZE;
	int          x = (int)fx;
	int          z = (int)fz;
	WeatherInfo* info00 = FindAtmos(x, z);
	WeatherInfo* info10 = FindAtmos(x + 1, z);
	WeatherInfo* info01 = FindAtmos(x, z + 1);
	WeatherInfo* info11 = FindAtmos(x + 1, z + 1);
	if (recalc)
	{
		if (amaptime != info00->Time)
		{
			RecalcAtmos(info00, x, z);
		}
		if (amaptime != info10->Time)
		{
			RecalcAtmos(info10, x + 1, z);
		}
		if (amaptime != info01->Time)
		{
			RecalcAtmos(info01, x, z + 1);
		}
		if (amaptime != info11->Time)
		{
			RecalcAtmos(info11, x + 1, z + 1);
		}
	}
	int         wx = (int)((fx - x) * 256.0f);
	int         wz = (int)((fz - z) * 256.0f);
	WeatherInfo top;
	top.Interpolate(*info00, *info10, wx);
	WeatherInfo bottom;
	bottom.Interpolate(*info01, *info11, wx);
	WeatherInfo weather;
	weather.Interpolate(top, bottom, wz);
	if (point.y > LH3D_ATMOS_HIGH_ALTITUDE)
	{
		int high = (int)((point.y - LH3D_ATMOS_HIGH_ALTITUDE) * 0.25f);
		high = min(256, high);
		top.Interpolate(weather, ambient, high);
		ApplyAltitude(top, point.y);
		return top;
	}
	ApplyAltitude(weather, point.y);
	return weather;
}

void LH3DAtmos::UpdateGame(float visual_time, float delta_time)
{
	if (inited)
	{
		float angle = LH3DSky::Time2OldSkoolTime(visual_time) * (PI_F / 12.0f);
		moonpos = LHPoint(4000.0f, (float)cos(angle) * 1100.0f - 150.0f, (float)sin(angle) * 800.0f);
		LH3DStorm::UpdateAll(delta_time);
		scv->Melt(delta_time);
		if (++amaptime == 0)
		{
			WeatherInfo* info = amap;
			for (int z = 0; z < LH3D_ATMOS_MAP_SIZE; z++)
			{
				for (int x = 0; x < LH3D_ATMOS_MAP_SIZE; x++)
				{
					info->Time = 0;
					info++;
				}
			}
			amaptime = 1;
		}
	}
}

void LH3DAtmos::Update3D(float time)
{
	if (!inited)
	{
		return;
	}
	LH3DStorm* storm;
	for (storm = LH3DStorm::first; storm != NULL; storm = storm->Next)
	{
		if (!storm->Killed)
		{
			storm->Sheet.Draw();
		}
	}
	neareststorm = NULL;
	insidestorm = false;
	float nearest = 0.0f;
	for (storm = LH3DStorm::first; storm != NULL; storm = storm->Next)
	{
		if (!storm->Killed)
		{
			LHPoint camera = *LH3DTech::GetCameraPosition();
			float   dx = storm->Info.Pos.x - camera.x;
			float   dz = storm->Info.Pos.z - camera.z;
			float   dist = dx * dx + dz * dz;
			if (neareststorm == NULL || dist < nearest)
			{
				nearest = dist;
				float radius = (storm->Info.OuterRadius + storm->Info.InnerRadius) * 0.5f;
				if (dist < radius * radius)
				{
					insidestorm = true;
				}
				neareststorm = storm;
			}
		}
	}
	LH3DSky::LightningGlow = 0;
	if (neareststorm != NULL)
	{
		cloudheight += (neareststorm->Info.Height - cloudheight) * LH3D_ATMOS_BLEND_RATE;
		speed += (neareststorm->Info.FallSpeed - speed) * LH3D_ATMOS_BLEND_RATE;
		if (insidestorm)
		{
			float glow = neareststorm->Sheet.Fade;
			CLAMP(glow, 0.0f, 1.0f);
			LH3DSky::LightningGlow = (int)(glow * 255.0f);
		}
	}
	else
	{
		cloudheight += (LH3D_ATMOS_CLOUD_HEIGHT - cloudheight) * LH3D_ATMOS_BLEND_RATE;
		speed += (LH3D_ATMOS_FALL_SPEED - speed) * LH3D_ATMOS_BLEND_RATE;
	}
	speed = speed > LH3D_ATMOS_FALL_SPEED_MIN ? min(speed, LH3D_ATMOS_FALL_SPEED_MAX) : LH3D_ATMOS_FALL_SPEED_MIN;
	cloudheight = cloudheight > LH3D_ATMOS_CLOUD_HEIGHT_MIN ? min(cloudheight, LH3D_ATMOS_CLOUD_HEIGHT_MAX)
	                                                        : LH3D_ATMOS_CLOUD_HEIGHT_MIN;
	if (superglow > 0.0f)
	{
		superglow -= time;
		if (superglow < 0.0f)
		{
			superglow = 0.0f;
		}
	}
	glowlevel = 0;
	if (superglow > 0.0f)
	{
		glowlevel = (int)(superglow * 255.0f);
	}
	if (alignment > 0.6f)
	{
		int level = (int)((alignment - 0.6f) * 225.0f);
		glowlevel = max(level, glowlevel);
	}
	glowlevel = glowlevel > 0 ? min(glowlevel, 90) : 0;
	if (rc != NULL && needrainupdate)
	{
		needrainupdate = false;
		rc->Update(time);
	}
	if (sc != NULL && needsnowupdate)
	{
		needsnowupdate = false;
		sc->Update(time);
	}
}

void LH3DAtmos::Init(unsigned long init_flags)
{
	if (inited)
	{
		return;
	}
	inited = 1;
	uint8_t depth = LHSys::TheSystem.screen.depth;
	if (depth != 16 && depth != 15 && depth != 32 && depth != 24)
	{
		init_flags &= ~LH3D_ATMOS_FLAGS_GLOW;
	}
	for (int i = 0; i < LH3D_ATMOS_BUFFER_COUNT; i++)
	{
		v_max[i] = LH3D_ATMOS_BUFFER_POINTS;
		v_pnt[i] = new LHPoint[v_max[i]];
		v_col[i] = new LH3DColor[v_max[i] * 2];
		v_uv[i] = new float[v_max[i] * 4];
		v_idx[i] = new long[v_max[i] * 2];
	}
	flags = init_flags;
	glowlevel = 0;
	superglow = 0.0f;
	alignment = 0.5f;
	moonpos = LHPoint(4000.0f, 0.0f, 0.0f);
	TextureFormat glowFormat;
	glowFormat.Type = LH3D_TEXTURE_FORMAT_32X32_4444;
	tex1 = LH3DTexture::Create(
		NULL, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY | LH3D_TEXTURE_FLAGS_ALPHA | LH3D_TEXTURE_FLAGS_ALLOC_VRAM,
		(unsigned long)-1, &glowFormat);
	TextureFormat atmosFormat;
	atmosFormat.Type =
		LH3DTexture::g_b_use_low_res ? LH3D_TEXTURE_FORMAT_ALWAYS_256X256_4444 : LH3D_TEXTURE_FORMAT_4444;
	tex0 = LH3DTexture::Create(LH3D_ATMOS_TEXTURE_PATH, LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0,
	                           &atmosFormat);
	mat0 = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, tex0);
	mat1 = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ, tex0);
	mat0->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	mat1->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	mat0->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	snowtex =
		LH3DTexture::Create(LH3D_ATMOS_SNOW_TEXTURE_PATH, LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
	snowmat = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA, snowtex);
	snowmat->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	snowmat->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	palette = new uint32_t[LH3D_ATMOS_PALETTE_SIZE];
	char     message[1024];
	uint32_t read;
	if (LHLoadData(LH3D_ATMOS_PALETTE_PATH, palette, LH3D_ATMOS_PALETTE_SIZE * sizeof(uint32_t), &read))
	{
		sprintf(message, "can't Load: %s.", LH3D_ATMOS_PALETTE_PATH);
	}
	for (int j = 0; j < LH3D_ATMOS_PALETTE_SIZE; j++)
	{
		uint32_t colour = palette[j];
		palette[j] = (RGBA_GETBLUE(colour) << 16) + RGBA_GETRED(colour) + (colour & 0xff00ff00);
	}
	InitGlow();
	if (init_flags & LH3D_ATMOS_FLAGS_SNOW)
	{
		sc = new SnowCell;
		sc->Init();
	}
	else
	{
		sc = NULL;
	}
	if (init_flags & LH3D_ATMOS_FLAGS_RAIN)
	{
		rc = new RainCell;
		rc->Init();
	}
	else
	{
		rc = NULL;
	}
	amap = new WeatherInfo[LH3D_ATMOS_MAP_SIZE * LH3D_ATMOS_MAP_SIZE];
	memset(amap, 0, LH3D_ATMOS_MAP_SIZE * LH3D_ATMOS_MAP_SIZE * sizeof(WeatherInfo));
	memset(&ambient, 0, sizeof(ambient));
	scv = new SnowCover;
	scv->Init();
	LHLoadData(LH3D_ATMOS_STORM_SHADOW_PATH, LH3DStorm::shadowtex, sizeof(LH3DStorm::shadowtex), NULL);
	amaptime = 1;
}

void LH3DAtmos::Close()
{
	if (--inited != 0)
	{
		return;
	}
	mat0->texture = NULL;
	tex0->Release();
	tex1->Release();
	snowmat->texture = NULL;
	snowtex->Release();
	delete[] palette;
	for (int i = 0; i < LH3D_ATMOS_BUFFER_COUNT; i++)
	{
		delete[] v_col[i];
		delete[] v_pnt[i];
		delete[] v_idx[i];
		delete[] v_uv[i];
	}
	delete rc;
	delete sc;
	scv->Close();
	delete scv;
	sc = NULL;
	rc = NULL;
	scv = NULL;
	palette = NULL;
	tex0 = NULL;
	tex1 = NULL;
	mat0 = NULL;
}

bool LH3DAtmos::IsAreaVisible(float x, float z, float size)
{
	float   ground = LH3DIsland::GetAltitude(LHPoint(x, 0.0f, z));
	float   top = cloudheight + ground;
	LHPoint corners[LH3D_ATMOS_AREA_CORNERS];
	corners[0] = LHPoint(x - size, ground, z - size);
	corners[1] = LHPoint(x + size, ground, z - size);
	corners[2] = LHPoint(x - size, top, z - size);
	corners[3] = LHPoint(x + size, top, z - size);
	corners[4] = LHPoint(x - size, ground, z + size);
	corners[5] = LHPoint(x + size, ground, z + size);
	corners[6] = LHPoint(x - size, top, z + size);
	corners[7] = LHPoint(x + size, top, z + size);
	int offX = 0;
	int offY = 0;
	int behind = 0;
	int width = LHSys::TheSystem.screen.width;
	int height = LHSys::TheSystem.screen.height;
	LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
	for (int i = 0; i < LH3D_ATMOS_AREA_CORNERS; i++)
	{
		LHPoint point;
		point = corners[i];
		int      screenX;
		int      screenY;
		uint32_t result = LH3DTech::ProjectPoint(&point, &screenX, &screenY);
		if (result == 0)
		{
			behind++;
		}
		else if (result == 1)
		{
			if (screenX < 0)
			{
				offX--;
			}
			else if (screenX >= width)
			{
				offX++;
			}
			if (screenY < 0)
			{
				offY--;
			}
			else if (screenY >= height)
			{
				offY++;
			}
		}
	}
	if (behind == LH3D_ATMOS_AREA_CORNERS || offX == LH3D_ATMOS_AREA_CORNERS || offY == LH3D_ATMOS_AREA_CORNERS ||
	    offX == -LH3D_ATMOS_AREA_CORNERS || offY == -LH3D_ATMOS_AREA_CORNERS)
	{
		return false;
	}
	return true;
}

void LH3DAtmos::Render3DFinal()
{
	if (inited)
	{
		if ((flags & LH3D_ATMOS_FLAGS_GLOW) && glowlevel > 0 && wantglowdraw)
		{
			RenderGlow(0xff000000 + (glowlevel << 16) + (glowlevel << 8) + glowlevel);
		}
		wantglowdraw = false;
	}
}

void LH3DAtmos::Render3D()
{
	wantglowdraw = true;
	if (rc == NULL && sc == NULL)
	{
		return;
	}
	needrainupdate = false;
	needsnowupdate = false;
	bool32_t      rainPrepared = rc == NULL;
	bool32_t      snowPrepared = sc == NULL;
	unsigned long colour = ((LH3DSky::topcol.GetColor() >> 1) & 0x7f7f7f) + RGB_MAKE(0x7f, 0x7f, 0x7f);
	LandBlock*    block;
	for (block = LandBlock::g_first_sorting; block != NULL; block = block->Next)
	{
		if (RAIN_FAR_DISTANCE + 160.0f <= block->Distance)
		{
			break;
		}
		float       x = block->X + 80.0f;
		float       z = block->Z + 80.0f;
		WeatherInfo weather0 = GetWeather(LHPoint(x - LH3D_ATMOS_CELL_SIZE, 0.0f, z - LH3D_ATMOS_CELL_SIZE), true);
		WeatherInfo weather1 = GetWeather(LHPoint(x - LH3D_ATMOS_CELL_SIZE, 0.0f, z + LH3D_ATMOS_CELL_SIZE), true);
		WeatherInfo weather2 = GetWeather(LHPoint(x + LH3D_ATMOS_CELL_SIZE, 0.0f, z - LH3D_ATMOS_CELL_SIZE), true);
		WeatherInfo weather3 = GetWeather(LHPoint(x + LH3D_ATMOS_CELL_SIZE, 0.0f, z + LH3D_ATMOS_CELL_SIZE), true);
		int         rain = max(max(weather0.Rain, weather1.Rain), max(weather2.Rain, weather3.Rain));
		if (rain > 5)
		{
			if (!rainPrepared)
			{
				rc->PrepareForDraw(colour);
				rainPrepared = true;
				needrainupdate = true;
			}
			if (rc != NULL)
			{
				rc->AddDrawing(x, z, 0.0f, RAIN_CELL_LINES, rain * 88 / 100);
			}
		}
	}
	for (block = LandBlock::g_first_sorting; block != NULL; block = block->Next)
	{
		if (RAIN_FAR_DISTANCE + 160.0f <= block->Distance)
		{
			break;
		}
		for (int i = 0; i < 2; i++)
		{
			for (int j = 0; j < 2; j++)
			{
				float       x = (i + 0.5f) * 80.0f + block->X;
				float       z = (j + 0.5f) * 80.0f + block->Z;
				WeatherInfo weather0 =
					GetWeather(LHPoint(x - LH3D_ATMOS_CELL_SIZE, 0.0f, z - LH3D_ATMOS_CELL_SIZE), true);
				WeatherInfo weather1 =
					GetWeather(LHPoint(x - LH3D_ATMOS_CELL_SIZE, 0.0f, z + LH3D_ATMOS_CELL_SIZE), true);
				WeatherInfo weather2 =
					GetWeather(LHPoint(x + LH3D_ATMOS_CELL_SIZE, 0.0f, z - LH3D_ATMOS_CELL_SIZE), true);
				WeatherInfo weather3 =
					GetWeather(LHPoint(x + LH3D_ATMOS_CELL_SIZE, 0.0f, z + LH3D_ATMOS_CELL_SIZE), true);
				int snow = max(max(weather0.Snow, weather1.Snow), max(weather2.Snow, weather3.Snow));
				if (snow > 5)
				{
					if (!snowPrepared)
					{
						sc->PrepareForDraw(LH3DSky::topcol.GetColor());
						snowPrepared = true;
						needsnowupdate = true;
					}
					if (sc != NULL)
					{
						sc->AddDrawing(x, z, 0.0f, SNOW_CELL_FLAKES, snow * 256 / 100);
					}
				}
			}
		}
	}
}

void LH3DAtmos::Render2D()
{
	if (inited && (flags & LH3D_ATMOS_FLAGS_GLOW) && glowlevel > 0)
	{
		UpdateGlow();
	}
}

void LH3DAtmos::DrawWindArrow(LHPoint pos, LHPoint dir)
{
	static LH3DObject* arrow;
	static LH3DMesh*   arrowMesh;
	if (arrow == NULL)
	{
		arrowMesh = LH3DMesh::CreateFromHD(LH3D_ATMOS_WIND_ARROW_PATH, false);
		arrow = LH3DObject::Create(LH3DObject::STATIC);
		arrow->SetMesh(arrowMesh, NULL, NULL);
		arrow->SetDynamicLighting(false);
	}
	float length = sqrt(dir * dir);
	if (length > 0.5f)
	{
		arrow->SetPosition(pos, atan2(dir.z, dir.x), length * 0.04f);
		arrow->SetNeedClipping(true);
		arrow->Draw();
	}
}

void LH3DAtmos::DrawWindField()
{
	if (!inited)
	{
		return;
	}
	LHPoint camera = *LH3DTech::GetCameraPosition();
	float   centreX = (float)((int)(camera.x / 80.0f + 0.5f) * 80);
	float   centreZ = (float)((int)(camera.z / 80.0f + 0.5f) * 80);
	for (float x = centreX - 500.0f; x < centreX + 500.0f; x += 80.0f)
	{
		for (float z = centreZ - 500.0f; z < centreZ + 500.0f; z += 80.0f)
		{
			LHPoint pos(x, 0.0f, z);
			pos.y = LH3DIsland::GetAltitude(pos);
			pos.y += 5.0f;
			LHPoint wind = GetWindAtPoint(pos, false);
			if (sqrt(wind.x * wind.x + wind.y * wind.y + wind.z * wind.z) > 0.5)
			{
				DrawWindArrow(pos, wind);
				pos.y += 5.0f;
			}
		}
	}
}

void LH3DAtmos::UpdateGlow()
{
	int stepX = LHSys::TheSystem.screen.width >> 4;
	int height = LHSys::TheSystem.screen.height;
	int offsetX = stepX / 2;
	int offsetY = height / LH3D_ATMOS_GLOW_SIZE / 2;
	int shiftR = LHSys::TheSystem.screen.redScale - LHSys::TheSystem.screen.RedShift + 12;
	int shiftG = LHSys::TheSystem.screen.GreenScale - LHSys::TheSystem.screen.GreenShift + 12;
	int shiftB = LHSys::TheSystem.screen.BlueScale - LHSys::TheSystem.screen.BlueShift + 12;
	if (LHSys::TheSystem.screen.Lock(0))
	{
		return;
	}
	LH3DSurfDesc desc;
	tex1->Lock(&desc);
	if (desc.Surface != NULL)
	{
		int           skip = desc.Pitch / 2 - LH3D_ATMOS_GLOW_SIZE;
		uint16_t*     dest = (uint16_t*)desc.Surface;
		unsigned long pitch = LHSys::TheSystem.screen.backPitchBytes;
		pitch >>= 1;
		long* glow = glowtab[0];
		if (LHSys::TheSystem.screen.depth <= 16)
		{
			for (int y = 0; y < LH3D_ATMOS_GLOW_SIZE; y++)
			{
				uint16_t* src = (uint16_t*)LHSys::TheSystem.screen.backAddress +
				                (y * height / LH3D_ATMOS_GLOW_SIZE + offsetY) * pitch + offsetX;
				for (int x = 0; x < LH3D_ATMOS_GLOW_SIZE; x++)
				{
					long green = (*src << shiftG) & 0xff000;
					long red = (*src << shiftR) & 0xff000;
					long blue = (*src << shiftB) & 0xff000;
					glow[0] += (blue - glow[0]) / 8;
					glow[1] += (green - glow[1]) / 8;
					glow[2] += (red - glow[2]) / 8;
					glow[0] = glow[0] > 0 ? min(glow[0], 0xf7000) : 0;
					glow[1] = glow[1] > 0 ? min(glow[1], 0xf7000) : 0;
					glow[2] = glow[2] > 0 ? min(glow[2], 0xf7000) : 0;
					*dest++ = 0xf000 | (((glow[2] + 0x80) >> 8) & 0xff00) | (((glow[1] + 0x800) >> 12) & 0xf0) |
					          ((glow[0] + 0x8000) >> 16);
					src += stepX;
					glow += 4;
				}
				dest += skip;
			}
		}
		else
		{
			int bytes = LHSys::TheSystem.screen.depth >> 3;
			pitch = LHSys::TheSystem.screen.backPitchBytes;
			int stepBytes = bytes * stepX;
			int offsetBytes = bytes * offsetX;
			for (int y = 0; y < LH3D_ATMOS_GLOW_SIZE; y++)
			{
				uint8_t* src = (uint8_t*)LHSys::TheSystem.screen.backAddress +
				               (y * height / LH3D_ATMOS_GLOW_SIZE + offsetY) * pitch + offsetBytes;
				for (int x = 0; x < LH3D_ATMOS_GLOW_SIZE; x++)
				{
					long blue =
						(shiftB > 0 ? *(unsigned long*)src << shiftB : *(unsigned long*)src >> -shiftB) & 0xff000;
					long green =
						(shiftG > 0 ? *(unsigned long*)src << shiftG : *(unsigned long*)src >> -shiftG) & 0xff000;
					long red =
						(shiftR > 0 ? *(unsigned long*)src << shiftR : *(unsigned long*)src >> -shiftR) & 0xff000;
					glow[0] += (blue - glow[0]) / 8;
					glow[1] += (green - glow[1]) / 8;
					glow[2] += (red - glow[2]) / 8;
					glow[0] = glow[0] > 0 ? min(glow[0], 0xf7000) : 0;
					glow[1] = glow[1] > 0 ? min(glow[1], 0xf7000) : 0;
					glow[2] = glow[2] > 0 ? min(glow[2], 0xf7000) : 0;
					*dest++ = 0xf000 | (((glow[2] + 0x80) >> 8) & 0xff00) | (((glow[1] + 0x800) >> 12) & 0xf0) |
					          ((glow[0] + 0x8000) >> 16);
					src += stepBytes;
					glow += 4;
				}
				dest += skip;
			}
		}
	}
	tex1->Unlock();
	LHSys::TheSystem.screen.Unlock();
}

void LH3DAtmos::RenderGlow(unsigned long color)
{
	int          width = LHSys::TheSystem.screen.width;
	int          height = LHSys::TheSystem.screen.height;
	LH3DTexture* texture = tex1;
	if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		texture->ReloadPending = true;
	}
	Vertex3D vertices[4];
	vertices[0].x = 0.0f;
	vertices[0].y = 0.0f;
	vertices[0].z = GLOW_DEPTH;
	vertices[0].rhw = GLOW_DEPTH;
	vertices[0].color = color;
	vertices[0].specular = 0;
	vertices[0].uv.x = LH3D_ATMOS_GLOW_UV_MIN;
	vertices[0].uv.y = LH3D_ATMOS_GLOW_UV_MIN;
	vertices[1].x = (float)width;
	vertices[1].y = 0.0f;
	vertices[1].z = GLOW_DEPTH;
	vertices[1].rhw = GLOW_DEPTH;
	vertices[1].color = color;
	vertices[1].specular = 0;
	vertices[1].uv.x = LH3D_ATMOS_GLOW_UV_MAX;
	vertices[1].uv.y = LH3D_ATMOS_GLOW_UV_MIN;
	vertices[2].x = 0.0f;
	vertices[2].y = (float)height;
	vertices[2].z = GLOW_DEPTH;
	vertices[2].rhw = GLOW_DEPTH;
	vertices[2].color = color;
	vertices[2].specular = 0;
	vertices[2].uv.x = LH3D_ATMOS_GLOW_UV_MIN;
	vertices[2].uv.y = LH3D_ATMOS_GLOW_UV_MAX;
	vertices[3].x = (float)width;
	vertices[3].y = (float)height;
	vertices[3].z = GLOW_DEPTH;
	vertices[3].rhw = GLOW_DEPTH;
	vertices[3].color = color;
	vertices[3].specular = 0;
	vertices[3].uv.x = LH3D_ATMOS_GLOW_UV_MAX;
	vertices[3].uv.y = LH3D_ATMOS_GLOW_UV_MAX;
	texture->Activate(0);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, FALSE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	LH3DRender::SetTextureStageState(0, D3DTSS_MAGFILTER, D3DTFG_LINEAR);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHABLENDENABLE, TRUE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_SRCBLEND, D3DBLEND_ONE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_DESTBLEND, D3DBLEND_ONE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ALPHATESTENABLE, FALSE);
	DrawAndClip2D(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX | D3DFVF_SPECULAR, vertices, 4, (uint16_t*)GLOW_INDICES, 6);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, TRUE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
}

void LH3DAtmos::InitGlow()
{
	memset(glowtab, 0, sizeof(glowtab));
}

LH3DLightningSheet::LH3DLightningSheet()
{
	Scale = 1.0f;
	if (numsheets == 0)
	{
		bmappitch = LIGHTNING_SHEET_BMAP_SIZE;
		for (int j = 0; j < LIGHTNING_SHEET_BMAP_SIZE; j++)
		{
			int y = j - LIGHTNING_SHEET_BMAP_SIZE / 2;
			for (int i = 0; i < LIGHTNING_SHEET_BMAP_SIZE; i++)
			{
				int   x = i - LIGHTNING_SHEET_BMAP_SIZE / 2;
				float dist = sqrt((float)(x * x + y * y));
				if (dist >= 32.0f)
				{
					bmap[i][j][0] = 0;
					bmap[i][j][1] = 0;
					bmap[i][j][2] = 0;
				}
				else
				{
					int value = (int)((32.0f - dist) * 9.0f);
					value = min(255, value);
					bmap[i][j][0] = value;
					bmap[i][j][1] = value;
					bmap[i][j][2] = value;
				}
			}
		}
	}
	numsheets++;
	State = LIGHTNING_SHEET_STATE_IDLE;
	Time = 0.0f;
}

LH3DLightningSheet::~LH3DLightningSheet()
{
	numsheets--;
}

void LH3DLightningSheet::Draw()
{
	if (State != LIGHTNING_SHEET_STATE_IDLE)
	{
		Fade = 1.0f - Time;
		Brightness = Fade * Fade * Fade;
		if (Time < 0.5f && Time > 0.2f)
		{
			Fade = Brightness = 0.1f;
		}
		Brightness *= Scale;
		Fade *= Scale;
		DynamicLightAndShadow::AddLight(&Pos, (uint8_t*)bmap, bmappitch, true, Brightness,
		                                DynamicLightAndShadow::LIGHT_TYPE_LIGHT, false);
	}
	else
	{
		Brightness = Fade = 0.0f;
	}
}

void LH3DLightningSheet::Trigger(LHPoint& pos, float intensity, float scale)
{
	Scale = scale;
	State = LIGHTNING_SHEET_STATE_FLASH;
	Time = 0.0f;
	Fade = 0.0f;
	Brightness = 0.0f;
	Pos = pos;
	Intensity = intensity;
}

void LH3DLightningSheet::UpdateGame(float time)
{
	Time += time;
	switch (State)
	{
	case LIGHTNING_SHEET_STATE_FLASH:
		if (Time > 0.8f)
		{
			State = LIGHTNING_SHEET_STATE_IDLE;
		}
		break;
	}
}

uint8_t LH3DLightningSheet::bmap[LIGHTNING_SHEET_BMAP_SIZE][LIGHTNING_SHEET_BMAP_SIZE][LIGHTNING_SHEET_BMAP_CHANNELS];
long    LH3DLightningSheet::bmappitch;
