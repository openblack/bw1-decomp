#include "LH3DSky.h"

#include <limits.h>
#include <math.h>
#include <string.h>
#include <time.h>

#include <re_common.h>

#include "Bitmap16B.h"
#include "LH3DArena.h"
#include "LH3DAtmos.h"
#include "LH3DColor.h"
#include "LH3DDivers.h"
#include "LH3DIsland.h"
#include "LH3DLevelOfDetail.h"
#include "LH3DMaterial.h"
#include "LH3DMath.h"
#include "LH3DMem.h"
#include "LH3DMesh.h"
#include "LH3DObject.h"
#include "LH3DRender.h"
#include "LH3DSubMesh.h"
#include "LH3DTech.h"
#include "LH3DTexture.h"
#include "LH3DWater.h"
#include "LHMatrix.h"
#include "LHPoint.h"
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>

// BW1W120 00869670 BW1M119 inlined
bool UseBlendedSkyTextures();

int           LH3DSky::LightningGlow;
bool32_t      g_b_pre_draw;
bool32_t      LH3DSky::g_b_we_are_inside_citadel;
bool32_t      LH3DSky::SunVisibilityPending;
float         LH3DSky::evil;
float         LH3DSky::overcast;
float         LH3DSky::moonsize;
LH3DMaterial* sky_material[SKY_ALIGNMENT_LAST];
LH3DTexture*  sky_texture[SKY_ALIGNMENT_LAST];
LH3DMesh*     LH3DSky::skymesh;
LH3DObject*   LH3DSky::sky;
LH3DMesh*     LH3DSky::moon;
LH3DObject*   LH3DSky::moonobj;
float         LH3DSky::moonphase;
LH3DMesh*     LH3DSky::sun;
LH3DObject*   LH3DSky::sunobj;
LHPoint       LH3DSky::g_sun_pos(LH3D_SKY_SUN_INITIAL_XZ, 0.0f, LH3D_SKY_SUN_INITIAL_XZ);
Bitmap16B*    LH3DSky::bitmaps[SKY_TYPE_LAST][SKY_ALIGNMENT_LAST];
LH3DColor     LH3DSky::lightcols[SKY_LIGHT_COLOUR_LAST];
float         LH3DSky::curtime;
float         LH3DSky::curst;
float         LH3DSky::newst;
int           LH3DSky::cury;
float         fog_red;
float         fog_green;
float         fog_blue;
uint32_t      fog_fade;
LH3DColor     LH3DSky::topcol;
float         LH3DSky::NIGHT_FULL_TIME;
float         LH3DSky::DUSK_START_TIME;
float         LH3DSky::DUSK_END_TIME;
float         LH3DSky::DAY_FULL_TIME;
static char   g_sky_texture_name[256];
uint8_t       multab0[LH3D_SKY_BLEND_TABLE_SIZE];
uint8_t       multab1[LH3D_SKY_BLEND_TABLE_SIZE];
int           xc_temp;

float    LH3DSky::g_alpha_sun = LH3D_SKY_ALPHA_MAX;
bool32_t g_jc_caca_first_init_sky = true;
float    LH3DSky::ONIGHT_FULL_TIME = LH3D_SKY_OLD_NIGHT_FULL_TIME;
float    LH3DSky::ODUSK_START_TIME = LH3D_SKY_OLD_DUSK_START_TIME;
float    LH3DSky::ODUSK_END_TIME = LH3D_SKY_OLD_DUSK_END_TIME;
float    LH3DSky::ODAY_FULL_TIME = LH3D_SKY_OLD_DAY_FULL_TIME;

// BW1W120 00869790 BW1M119 01038270 (LHCombined Release)
unsigned long BRIGHTENINTERP(unsigned long from, unsigned long to, unsigned long amount);

LH3DColor LH3DSky::Interpolate444Colour(uint16_t from, uint16_t to, int amount)
{
	union Colour444 {
		uint16_t Value;
		struct
		{
			uint16_t Blue : 4;
			uint16_t Green : 4;
			uint16_t Red : 4;
			uint16_t Unused : 4;
		} RGB;
	};
	Colour444 fromColour, toColour;
	fromColour.Value = from;
	toColour.Value = to;
	LH3DColor result;
	if (amount <= 0)
	{
		int red = fromColour.RGB.Red;
		int green = fromColour.RGB.Green;
		int blue = fromColour.RGB.Blue;
		int rgb = (((red << 8) + green) << 8) + blue;
		result = LH3DColor(rgb << 4);
	}
	else if (amount >= LH3D_SKY_COLOUR_BLEND_SCALE)
	{
		int red = toColour.RGB.Red;
		int green = toColour.RGB.Green;
		int blue = toColour.RGB.Blue;
		int rgb = (((red << 8) + green) << 8) + blue;
		result = LH3DColor(rgb << 4);
	}
	else
	{
		int red = fromColour.RGB.Red;
		int green = fromColour.RGB.Green;
		int blue = fromColour.RGB.Blue;
		red = ((toColour.RGB.Red - red) * amount + (red << 8)) >> 4;
		green = ((toColour.RGB.Green - green) * amount + (green << 8)) >> 4;
		blue = ((toColour.RGB.Blue - blue) * amount + (blue << 8)) >> 4;
		result.r = red;
		result.g = green;
		result.b = blue;
	}
	result.a = LH3D_COLOR_OPAQUE;
	return result;
}

void LH3DSky::CalculateColours()
{
	float time = (SKY_TYPE_NIGHT - Time2SkyType(curtime)) * (LH3D_SKY_HOURS_PER_HALF_DAY / SKY_TYPE_NIGHT);
	float alignment = evil;
	if (time > LH3D_SKY_HOURS_PER_HALF_DAY)
	{
		time = LH3D_SKY_HOURS_PER_DAY - time;
	}
	alignment = min(SKY_ALIGNMENT_EVIL, alignment);
	alignment *= (LH3D_ATMOS_COLOUR_SAMPLES - SKY_COLOUR_KEYS_PER_BLEND) / (float)SKY_ALIGNMENT_EVIL;
	time *= (LH3D_ATMOS_COLOUR_SAMPLES - SKY_COLOUR_KEYS_PER_BLEND) / LH3D_SKY_HOURS_PER_HALF_DAY;
	int   i;
	int   index = (int)time;
	int   alignedIndex = (int)alignment;
	float fraction = time - index;
	float alignedFraction = alignment - alignedIndex;
	for (i = 0; i < SKY_LIGHT_COLOUR_LAST; ++i)
	{
		int keyIndex = i * LH3D_ATMOS_COLOUR_SAMPLES + index;
		int amount = (int)(fraction * LH3D_SKY_COLOUR_BLEND_SCALE);
		lightcols[i] =
			LH3DColor(LH3D_BLEND_COLOR(LH3DAtmos::palette[keyIndex], LH3DAtmos::palette[keyIndex + 1], amount));
		if (i == SKY_LIGHT_COLOUR_EVIL)
		{
			index = alignedIndex;
			fraction = alignedFraction;
		}
	}
	uint32_t goodColour = lightcols[SKY_LIGHT_COLOUR_GOOD].GetColor();
	uint32_t neutralColour = lightcols[SKY_LIGHT_COLOUR_NEUTRAL].GetColor();
	uint32_t evilColour = lightcols[SKY_LIGHT_COLOUR_EVIL].GetColor();
	int      amount = (int)(evil * LH3D_SKY_ALPHA_MAX);
	if (evil < SKY_ALIGNMENT_NEUTRAL)
	{
		topcol = LH3DColor(LH3D_BLEND_COLOR(goodColour, neutralColour, amount));
	}
	else
	{
		int evilAmount = amount - LH3D_SKY_COLOUR_BLEND_SCALE;
		topcol = LH3DColor(LH3D_BLEND_COLOR(neutralColour, evilColour, evilAmount));
	}
	int maxChannel = (int)(LH3D_SKY_ALPHA_MAX - overcast * SKY_OVERCAST_COLOUR_LOSS);
	topcol.r = min(maxChannel, topcol.r);
	topcol.g = min(maxChannel, topcol.g);
	topcol.b = min(maxChannel, topcol.b);
	int darknessSplit = topcol.g * LAND_CELL_MIN_DARKNESS >> 8;
	for (i = 0; i < darknessSplit; ++i)
	{
		LandCell::g_darkness_to_color[i] =
			BRIGHTENINTERP(lightcols[SKY_LIGHT_COLOUR_DARK].GetColor(), topcol.GetColor(),
		                   i * LH3D_SKY_COLOUR_BLEND_SCALE / darknessSplit);
	}
	for (; i < LAND_CELL_MIN_DARKNESS; ++i)
	{
		LandCell::g_darkness_to_color[i] = BRIGHTENINTERP(
			topcol.GetColor(), lightcols[SKY_LIGHT_COLOUR_LIGHT].GetColor(),
			(i - darknessSplit) * LH3D_SKY_COLOUR_BLEND_SCALE / (LAND_CELL_MIN_DARKNESS - darknessSplit));
	}
	for (i = LAND_CELL_MIN_DARKNESS; i < (int)ARRAY_SIZE(LandCell::g_darkness_to_color); ++i)
	{
		LandCell::g_darkness_to_color[i] =
			BRIGHTENINTERP(lightcols[SKY_LIGHT_COLOUR_DARK].GetColor(), topcol.GetColor(), i);
	}
	if (LightningGlow)
	{
		for (i = 0; i < (int)ARRAY_SIZE(LandCell::g_darkness_to_color); ++i)
		{
			LandCell::g_darkness_to_color[i] =
				LH3D_BLEND_COLOR(LandCell::g_darkness_to_color[i], LH3D_COLOR_WHITE, LightningGlow);
		}
	}
	int fogOpacity =
		(topcol.r * SKY_FOG_RED_WEIGHT + topcol.g * SKY_FOG_GREEN_WEIGHT + topcol.b * SKY_FOG_BLUE_WEIGHT) /
			SKY_FOG_WEIGHT_SUM +
		SKY_FOG_ALPHA_OFFSET;
	fogOpacity = min(LH3D_SKY_ALPHA_MAX, fogOpacity);
	fog_red = topcol.r / SKY_FOG_COLOUR_DIVISOR;
	fog_green = topcol.g / SKY_FOG_COLOUR_DIVISOR;
	fog_blue = topcol.b / SKY_FOG_COLOUR_DIVISOR;
	fog_fade = fogOpacity;
	float nearDensity = 1.0f / SKY_FOG_DAY_NEAR;
	float farDensity = 1.0f / SKY_FOG_DAY_FAR;
	float dusk = newst;
	if (dusk > SKY_TYPE_DUSK)
	{
		dusk = SKY_TYPE_NIGHT - dusk;
	}
	dusk *= dusk;
	if (dusk > 0.0f)
	{
		nearDensity = dusk * (1.0f / SKY_FOG_DUSK_NEAR - nearDensity) + nearDensity;
		farDensity = dusk * (1.0f / SKY_FOG_DUSK_FAR - farDensity) + farDensity;
	}
	if (overcast > 0.0f)
	{
		overcast = min(1.0f, overcast);
		float overcastFogRed = topcol.r / SKY_FOG_OVERCAST_COLOUR_DIVISOR + SKY_FOG_OVERCAST_OFFSET;
		fog_red += overcast * (overcastFogRed - fog_red);
		float overcastFogGreen = topcol.g / SKY_FOG_OVERCAST_COLOUR_DIVISOR + SKY_FOG_OVERCAST_OFFSET;
		fog_green += overcast * (overcastFogGreen - fog_green);
		float overcastFogBlue = topcol.b / SKY_FOG_OVERCAST_COLOUR_DIVISOR + SKY_FOG_OVERCAST_OFFSET;
		fog_blue += overcast * (overcastFogBlue - fog_blue);
		fog_fade += (int)(overcast * (SKY_FOG_OVERCAST_ALPHA - fogOpacity));
		float overcastNearDistance = SKY_FOG_OVERCAST_NEAR;
		nearDensity += overcast * (1.0f / overcastNearDistance - nearDensity);
		farDensity += overcast * (1.0f / SKY_FOG_OVERCAST_FAR - farDensity);
	}
	if (LightningGlow)
	{
		fog_red += (LH3D_SKY_ALPHA_MAX - fog_red) * LightningGlow * SKY_BLEND_INVERSE_SCALE;
		fog_green += (LH3D_SKY_ALPHA_MAX - fog_green) * LightningGlow * SKY_BLEND_INVERSE_SCALE;
		fog_blue += (LH3D_SKY_ALPHA_MAX - fog_blue) * LightningGlow * SKY_BLEND_INVERSE_SCALE;
		fog_fade += (int)((LH3D_SKY_ALPHA_MAX - fog_fade) * LightningGlow * SKY_BLEND_INVERSE_SCALE);
	}
	LH3DIsland::SetFogMinMax(1.0f / nearDensity, 1.0f / farDensity);
	LH3DIsland::SetFogColor(fog_red, fog_green, fog_blue, fog_fade);
	LH3DWater::g_color_water = RGBA_TORGB(lightcols[SKY_LIGHT_COLOUR_WATER].GetColor());
	LH3DArena::ComputeLight();
}

void LH3DSky::SetDayNightTimes(float night, float dusk_start, float dusk_end, float day)
{
	NIGHT_FULL_TIME = night;
	DUSK_START_TIME = dusk_start;
	DUSK_END_TIME = dusk_end;
	DAY_FULL_TIME = day;
}

float LH3DSky::ConvertTime(float time, float from_night, float from_dusk_start, float from_dusk_end, float from_day,
                           float to_night, float to_dusk_start, float to_dusk_end, float to_day)
{
	bool isAfternoon = false;
	if (time > LH3D_SKY_HOURS_PER_HALF_DAY)
	{
		time = LH3D_SKY_HOURS_PER_DAY - time;
		isAfternoon = true;
	}

	SKY_TIME_INTERVAL interval;
	float             fraction;
	if (time < from_night)
	{
		interval = SKY_TIME_INTERVAL_NIGHT;
		fraction = time / from_night;
	}
	else if (time < from_dusk_start)
	{
		interval = SKY_TIME_INTERVAL_NIGHT_TO_DUSK;
		fraction = (time - from_night) / (from_dusk_start - from_night);
	}
	else if (time < from_dusk_end)
	{
		interval = SKY_TIME_INTERVAL_DUSK;
		fraction = (time - from_dusk_start) / (from_dusk_end - from_dusk_start);
	}
	else if (time < from_day)
	{
		interval = SKY_TIME_INTERVAL_DUSK_TO_DAY;
		fraction = (time - from_dusk_end) / (from_day - from_dusk_end);
	}
	else
	{
		interval = SKY_TIME_INTERVAL_DAY;
		fraction = (time - from_day) / (LH3D_SKY_HOURS_PER_HALF_DAY - from_day);
	}

	switch (interval)
	{
	case SKY_TIME_INTERVAL_NIGHT:
		time = fraction * to_night;
		break;
	case SKY_TIME_INTERVAL_NIGHT_TO_DUSK:
		time = to_night + fraction * (to_dusk_start - to_night);
		break;
	case SKY_TIME_INTERVAL_DUSK:
		time = to_dusk_start + fraction * (to_dusk_end - to_dusk_start);
		break;
	case SKY_TIME_INTERVAL_DUSK_TO_DAY:
		time = to_dusk_end + fraction * (to_day - to_dusk_end);
		break;
	case SKY_TIME_INTERVAL_DAY:
		time = to_day + fraction * (LH3D_SKY_HOURS_PER_HALF_DAY - to_day);
		break;
	}

	if (isAfternoon)
	{
		time = LH3D_SKY_HOURS_PER_DAY - time;
	}
	return time;
}

float LH3DSky::OldSkoolTime2Time(float time)
{
	return ConvertTime(time, ONIGHT_FULL_TIME, ODUSK_START_TIME, ODUSK_END_TIME, ODAY_FULL_TIME, NIGHT_FULL_TIME,
	                   DUSK_START_TIME, DUSK_END_TIME, DAY_FULL_TIME);
}

float LH3DSky::Time2OldSkoolTime(float time)
{
	return ConvertTime(time, NIGHT_FULL_TIME, DUSK_START_TIME, DUSK_END_TIME, DAY_FULL_TIME, ONIGHT_FULL_TIME,
	                   ODUSK_START_TIME, ODUSK_END_TIME, ODAY_FULL_TIME);
}

float LH3DSky::Time2SkyType(float time)
{
	float skyType = SKY_TYPE_DAY;
	if (time > LH3D_SKY_HOURS_PER_HALF_DAY)
	{
		time = LH3D_SKY_HOURS_PER_DAY - time;
	}
	if (time < NIGHT_FULL_TIME)
	{
		skyType = SKY_TYPE_NIGHT;
	}
	else if (time < DUSK_START_TIME)
	{
		skyType = SKY_TYPE_NIGHT - (time - NIGHT_FULL_TIME) / (DUSK_START_TIME - NIGHT_FULL_TIME);
	}
	else if (time < DUSK_END_TIME)
	{
		skyType = SKY_TYPE_DUSK;
	}
	else if (time < DAY_FULL_TIME)
	{
		skyType = SKY_TYPE_DUSK - (time - DUSK_END_TIME) / (DAY_FULL_TIME - DUSK_END_TIME);
	}
	return skyType;
}

void LH3DSky::ForceTime(float time)
{
	SetTime(time);
	curst = newst;
	cury = 0;
	CalculateTextures(newst, 0, LH3DTexture::g_b_use_low_res ? SKY_TEXTURE_HEIGHT_LOW : SKY_TEXTURE_HEIGHT);
	CalculateColours();
}

void LH3DSky::SetTime(float time)
{
	while (time < 0.0f)
	{
		time += LH3D_SKY_HOURS_PER_DAY;
	}
	while (time >= LH3D_SKY_HOURS_PER_DAY)
	{
		time -= LH3D_SKY_HOURS_PER_DAY;
	}
	curtime = time;
	newst = Time2SkyType(time);
}

void LH3DSky::Update()
{
	CalculateColours();
	int textureHeight = LH3DTexture::g_b_use_low_res ? SKY_TEXTURE_HEIGHT_LOW : SKY_TEXTURE_HEIGHT;
	if (cury >= textureHeight)
	{
		if (fabs(newst - curst) > SKY_TYPE_CHANGE_THRESHOLD)
		{
			curst = newst;
			cury = 0;
		}
		if (cury >= textureHeight)
		{
			return;
		}
	}
	CalculateTextures(curst, cury, SKY_TEXTURE_UPDATE_LINES);
	cury += SKY_TEXTURE_UPDATE_LINES;
}

void LH3DSky::Close()
{
	g_jc_caca_first_init_sky = true;
	for (int alignment = 0; alignment < SKY_ALIGNMENT_LAST; ++alignment)
	{
		if (sky_material[alignment] != NULL)
		{
			sky_material[alignment]->texture = NULL;
		}
		if (sky_texture[alignment] != NULL)
		{
			sky_texture[alignment]->Release();
		}
		for (int skyType = 0; skyType < SKY_TYPE_LAST; ++skyType)
		{
			if (bitmaps[skyType][SKY_ALIGNMENT_GOOD] == bitmaps[skyType][SKY_ALIGNMENT_NEUTRAL])
			{
				bitmaps[skyType][SKY_ALIGNMENT_GOOD] = NULL;
			}
			if (bitmaps[skyType][SKY_ALIGNMENT_EVIL] == bitmaps[skyType][SKY_ALIGNMENT_NEUTRAL])
			{
				bitmaps[skyType][SKY_ALIGNMENT_EVIL] = NULL;
			}
			if (bitmaps[skyType][alignment] != NULL)
			{
				bitmaps[skyType][alignment]->Release();
			}
		}
	}
}

float LH3DSky::CalcMoonRot(bool32_t& changed)
{
	static time_t lastTime = 0;
	static int    lastTick = 0;
	int           tick = GetTickCount();
	if (tick - lastTick > LH3D_SKY_MOON_UPDATE_INTERVAL)
	{
		lastTime = 0;
		lastTick = tick;
	}
	if (lastTime == 0)
	{
		time(&lastTime);
		changed = true;
	}
	else
	{
		changed = false;
	}
	double cycle = (lastTime / LH3D_SKY_MOON_SECONDS_PER_DAY - LH3D_SKY_MOON_REFERENCE_DAY) / LH3D_SKY_LUNAR_MONTH_DAYS;
	return (1.0 - (cycle - (int)cycle)) * TWO_PI;
}

bool moonflip = false;

void LH3DSky::CalcMoonPhase()
{
	LHMatrix rotation;
	rotation.SetRotationY(moonphase);
	LH3DSubMesh*    submesh = moon->submeshes[0];
	LH3DPrimitive** primitives = submesh->primitives_;
	int             count = submesh->NumPrimitives;
	for (int i = 0; i < count; ++i)
	{
		LH3DVertex* vertex = primitives[i]->Vertices;
		int         vertices = primitives[i]->NumVertices;
		while (vertices--)
		{
			LHPoint point = vertex->position;
			rotation.TransformPoint(point);
			vertex->uv.Set(point.x / LH3D_SKY_MOON_UV_DIVISOR + LH3D_SKY_MOON_UV_OFFSET,
			               point.y / LH3D_SKY_MOON_UV_DIVISOR + LH3D_SKY_MOON_UV_OFFSET);
			++vertex;
		}
	}
}

void LH3DSky::DrawMoonPost(LH3DColor& colour, LHMatrix& quad_matrix, LHMatrix& moon_matrix)
{

	long*& moonIndices = LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED];
	moonIndices[0] = SKY_MOON_VERTEX_LOWER_LEFT;
	moonIndices[1] = SKY_MOON_VERTEX_LOWER_RIGHT;
	moonIndices[2] = SKY_MOON_VERTEX_UPPER_RIGHT;
	moonIndices[3] = SKY_MOON_VERTEX_UPPER_RIGHT;
	moonIndices[4] = SKY_MOON_VERTEX_UPPER_LEFT;
	moonIndices[5] = SKY_MOON_VERTEX_LOWER_LEFT;

	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][0] = LH3D_SKY_MOON_GLOW_UV_MIN;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][1] = LH3D_SKY_MOON_GLOW_UV_MIN;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][2] = LH3D_SKY_MOON_GLOW_UV_MAX;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][3] = LH3D_SKY_MOON_GLOW_UV_MIN;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][4] = LH3D_SKY_MOON_GLOW_UV_MIN;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][5] = LH3D_SKY_MOON_GLOW_UV_MAX;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][6] = LH3D_SKY_MOON_GLOW_UV_MAX;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][7] = LH3D_SKY_MOON_GLOW_UV_MAX;

	LH3DColor glowColour = colour;
	glowColour.r /= LH3D_SKY_MOON_RED_DIVISOR;
	glowColour.g /= LH3D_SKY_MOON_GREEN_DIVISOR;
	glowColour.b /= LH3D_SKY_MOON_BLUE_DIVISOR;

	LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED][SKY_MOON_VERTEX_LOWER_LEFT] = glowColour;
	LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED][SKY_MOON_VERTEX_LOWER_RIGHT] = glowColour;
	LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED][SKY_MOON_VERTEX_UPPER_LEFT] = glowColour;
	LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED][SKY_MOON_VERTEX_UPPER_RIGHT] = glowColour;

	LHPoint  lowerLeft(-LH3D_SKY_MOON_QUAD_SIZE, -LH3D_SKY_MOON_QUAD_SIZE, 0.0f);
	LHPoint& lowerLeftOutput = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED][SKY_MOON_VERTEX_LOWER_LEFT];
	LHMATRIX_TRANSFORM_POINT(lowerLeftOutput, lowerLeft, quad_matrix);
	LHPoint  lowerRight(LH3D_SKY_MOON_QUAD_SIZE, -LH3D_SKY_MOON_QUAD_SIZE, 0.0f);
	LHPoint& lowerRightOutput = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED][SKY_MOON_VERTEX_LOWER_RIGHT];
	LHMATRIX_TRANSFORM_POINT(lowerRightOutput, lowerRight, quad_matrix);
	LHPoint  upperLeft(-LH3D_SKY_MOON_QUAD_SIZE, LH3D_SKY_MOON_QUAD_SIZE, 0.0f);
	LHPoint& upperLeftOutput = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED][SKY_MOON_VERTEX_UPPER_LEFT];
	LHMATRIX_TRANSFORM_POINT(upperLeftOutput, upperLeft, quad_matrix);
	LHPoint  upperRight(LH3D_SKY_MOON_QUAD_SIZE, LH3D_SKY_MOON_QUAD_SIZE, 0.0f);
	LHPoint& upperRightOutput = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED][SKY_MOON_VERTEX_UPPER_RIGHT];
	LHMATRIX_TRANSFORM_POINT(upperRightOutput, upperRight, quad_matrix);

	LH3DTech::Draw3DWorldTriangle(SKY_MOON_VERTEX_LAST, LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED],
	                              LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED], LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED],
	                              LH3D_SKY_MOON_TRIANGLE_COUNT, LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED],
	                              LH3DAtmos::mat1, false);

	moonobj->matrix.Set(moon_matrix);
	moonobj->SetColorSpecular(colour.GetColor(), LH3D_SKY_TRANSPARENT_BLACK);
	moonobj->SetDrawWithGlobalAlpha(true);
	if (!moonflip)
	{
		moonobj->Draw();
		moonobj->SetColorSpecular(colour.GetColor(), LH3D_SKY_TRANSPARENT_BLACK);
		moonobj->SetDrawWithGlobalAlpha(true);
		moonobj->DrawUnderWater();
	}
}

void LH3DSky::CalcMoonMat(LHPoint& pos, LHMatrix& matrix, LHMatrix& moon_matrix)
{
	LHPoint cameraPos;
	::TransformPoint(cameraPos, pos, LH3DTech::g_world_to_camera);
	LHPoint forward;
	forward = cameraPos;
	forward.Normalise();
	LHPoint right;
	LHPoint up(0.0f, 1.0f, 0.0f);
	right.CrossProduct(up, forward);
	right.Normalise();
	up.CrossProduct(forward, right);
	matrix.GetVectorX() = right;
	matrix.GetVectorY() = up;
	matrix.GetVectorZ() = forward;
	matrix.SetTranslateOnly(cameraPos);
	LHMatrix inverse;
	inverse.SetInverse(LH3DTech::g_world_to_camera);
	matrix.PostMultiply(inverse);
	matrix.ScaleMatrixOnly(moonsize);
	moon_matrix.Set(matrix);
	bool32_t changed = true;
	moonphase = CalcMoonRot(changed);
	if (changed)
	{
		CalcMoonPhase();
	}
	moon_matrix.RotateZ((moonflip ? -1 : 1) * LH3D_SKY_MOON_TILT_ANGLE);
	moon_matrix.RotateY(moonphase + PI_F);
	moon_matrix.ScaleMatrixOnly(LH3D_SKY_MOON_SHADING_SCALE);
}

void LH3DSky::Draw()
{
	LHPoint moonPosition = LH3DAtmos::GetMoonPos();
	int     moonFog = (int)(moonPosition.y * LH3D_SKY_MOON_FOG_SCALE - LH3D_SKY_MOON_FOG_OFFSET);
	moonFog = min(LH3D_SKY_MOON_FOG_MAX, moonFog);
	if (overcast > 0.0f && LH3DIsland::g_b_use_fog)
	{
		moonFog = (int)(moonFog / (overcast * LH3D_SKY_FOG_SCALE + 1.0f));
	}
	if (moonFog > 0)
	{
		LHPoint cameraPos(LH3DTech::GetCameraPosition());
		moonPosition += cameraPos;
		moonobj->SetNeedClipping(true);
	}
	CLAMP(evil, SKY_ALIGNMENT_GOOD, SKY_ALIGNMENT_EVIL);
	int           alignmentAlpha;
	SKY_ALIGNMENT firstSky, secondSky;
	if (!(evil > SKY_ALIGNMENT_NEUTRAL))
	{
		alignmentAlpha = (int)(evil * LH3D_SKY_ALPHA_MAX);
		firstSky = SKY_ALIGNMENT_GOOD;
		secondSky = SKY_ALIGNMENT_NEUTRAL;
	}
	else
	{
		alignmentAlpha = (int)((evil - SKY_ALIGNMENT_NEUTRAL) * LH3D_SKY_ALPHA_MAX);
		firstSky = SKY_ALIGNMENT_NEUTRAL;
		secondSky = SKY_ALIGNMENT_EVIL;
	}
	int inverseAlpha = LH3D_SKY_ALPHA_MAX - alignmentAlpha;
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	int      fog = (int)(overcast * LH3D_SKY_ALPHA_MAX);
	uint32_t topColour = LH3D_COLOR_WHITE;
	if (!UseBlendedSkyTextures())
	{
		LH3DColor colour = topcol;
		float     scale = (SKY_TYPE_NIGHT - newst) * LH3D_SKY_TOP_SCALE;
		float     redScale = scale + scale + LH3D_SKY_TOP_OFFSET;
		redScale = min(1.0f, redScale);
		float greenScale = scale * LH3D_SKY_TOP_GREEN_SCALE + LH3D_SKY_TOP_OFFSET;
		greenScale = min(1.0f, greenScale);
		float blueScale = scale * LH3D_SKY_TOP_BLUE_SCALE + LH3D_SKY_TOP_OFFSET;
		blueScale = min(1.0f, blueScale);
		colour.r = (uint8_t)(colour.r * redScale);
		colour.g = (uint8_t)(colour.g * greenScale);
		colour.b = (uint8_t)(colour.b * blueScale);
		colour.a = LH3D_SKY_ALPHA_MAX;
		topColour = colour.GetColor();
	}
	uint32_t fogColour = RGBA_MAKE((int)fog_red, (int)fog_green, (int)fog_blue, LH3D_COLOR_OPAQUE);
	uint32_t diffuse;
	uint32_t specular;
	if (LH3DIsland::g_b_use_fog)
	{
		diffuse = LH3D_BLEND_COLOR(topColour, fogColour, fog);
	}
	else
	{
		diffuse = topColour;
	}
	specular = LH3DIsland::g_b_use_fog ? LH3D_BLEND_COLOR(LH3D_SKY_TRANSPARENT_BLACK, fogColour, fog)
	                                   : LH3D_SKY_TRANSPARENT_BLACK;
	if (LH3DAtmos::flags & LH3D_ATMOS_FLAGS_GLOW)
	{
		int fade = LH3DAtmos::glowlevel * LH3DAtmos::glowlevel / LH3D_ATMOS_ALIGNMENT_FADE;
		diffuse = LH3D_BLEND_COLOR(diffuse, LH3D_SKY_TRANSPARENT_BLACK, fade);
		specular = LH3D_BLEND_COLOR(specular, LH3D_SKY_TRANSPARENT_BLACK, fade);
	}
	if (LightningGlow)
	{
		diffuse = LH3D_BLEND_COLOR(diffuse, LH3D_COLOR_WHITE, LightningGlow);
		specular = LH3D_BLEND_COLOR(specular, LH3D_COLOR_WHITE, LightningGlow / LH3D_SKY_LIGHTNING_SPECULAR_DIVISOR);
	}
	if (inverseAlpha > 0)
	{
		DrawSky(firstSky, LH3D_SKY_ALPHA_MAX, diffuse, specular);
		if (alignmentAlpha > 0)
		{
			DrawSky(secondSky, alignmentAlpha, diffuse, specular);
		}
	}
	else
	{
		DrawSky(secondSky, LH3D_SKY_ALPHA_MAX, diffuse, specular);
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	DrawSun();
	if (moonFog > 0)
	{
		LH3DColor moonColour = lightcols[SKY_LIGHT_COLOUR_MOON];
		moonColour.a = moonFog;
		moonflip = false;
		LHMatrix matrix, moonMatrix;
		CalcMoonMat(moonPosition, matrix, moonMatrix);
		DrawMoonPost(moonColour, matrix, moonMatrix);
		moonPosition.y = -moonPosition.y;
		moonflip = true;
		CalcMoonMat(moonPosition, matrix, moonMatrix);
		DrawMoonPost(moonColour, matrix, moonMatrix);
	}
}

void LH3DSky::DrawSky(int alignment, int alpha, int colour, int specular)
{
	sky->SetColorSpecular(RGBA_TORGB(colour) + RGBA_MAKE(0, 0, 0, alpha), specular);
	LH3DSubMesh*    submesh = skymesh->submeshes[0];
	int             count = submesh->NumPrimitives;
	LH3DPrimitive** primitives = submesh->primitives_;
	for (int i = 0; i < count; ++i)
	{
		memcpy(&primitives[i]->Material, sky_material[alignment], sizeof(LH3DMaterial));
	}
	sky->SetNeedClipping(true);
	if (alpha != LH3D_SKY_ALPHA_MAX)
	{
		sky->SetDrawWithGlobalAlpha(true);
		if (g_b_any_voodoo)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_TEXTUREPERSPECTIVE, false);
		}
		sky->Draw();
		LH3DRender::SetRenderState(D3DRENDERSTATE_TEXTUREPERSPECTIVE, true);
	}
	else
	{
		sky->SetDrawWithGlobalAlpha(false);
		if (g_b_any_voodoo)
		{
			LH3DRender::SetRenderState(D3DRENDERSTATE_TEXTUREPERSPECTIVE, false);
		}
		sky->Draw();
		LH3DRender::SetRenderState(D3DRENDERSTATE_TEXTUREPERSPECTIVE, true);
	}
}

void LH3DSky::CalculateTextures(float sky_type, int start_y, int num_lines)
{
	LH3DSurfDesc surface;
	if (!UseBlendedSkyTextures())
	{
		if (!g_jc_caca_first_init_sky)
		{
			return;
		}
		g_jc_caca_first_init_sky = false;
		for (int i = 0; i < SKY_ALIGNMENT_LAST; ++i)
		{
			sky_texture[i]->Lock(&surface);
			if (surface.Surface != NULL)
			{
				memcpy(surface.Surface, bitmaps[SKY_TYPE_DAY][i]->Data,
				       surface.Height * surface.Width * sizeof(uint16_t));
			}
			sky_texture[i]->Unlock();
			if (sky_texture[i]->GetType() == LH3D_TEXTURE_TYPE_NAMED ||
			    sky_texture[i]->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
			{
				sky_texture[i]->ReloadPending = true;
			}
		}
		return;
	}

	SKY_TYPE first, second;
	int      amount;
	if (sky_type <= SKY_TYPE_DUSK)
	{
		amount = (int)(sky_type * LH3D_SKY_ALPHA_MAX);
		first = SKY_TYPE_DAY;
		second = SKY_TYPE_DUSK;
	}
	else
	{
		amount = (int)((sky_type - SKY_TYPE_DUSK) * LH3D_SKY_ALPHA_MAX);
		first = SKY_TYPE_DUSK;
		second = SKY_TYPE_NIGHT;
	}
	amount = LH3D_SKY_ALPHA_MAX - amount;
	for (int i = 0; i < SKY_ALIGNMENT_LAST; ++i)
	{
		sky_texture[i]->Lock(&surface);
		if (surface.Surface != NULL)
		{
			Interpolate555Texture((uint16_t*)surface.Surface, bitmaps[first][i]->Data, bitmaps[second][i]->Data, amount,
			                      surface.Pitch / (long)sizeof(uint16_t), start_y, num_lines, surface.Width);
		}
		sky_texture[i]->Unlock();
		if (start_y + num_lines >= surface.Height)
		{
			if (sky_texture[i]->GetType() == LH3D_TEXTURE_TYPE_NAMED ||
			    sky_texture[i]->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
			{
				sky_texture[i]->ReloadPending = true;
			}
		}
	}
}

union SkyPixel565 {
	uint32_t Value;
	struct
	{
		uint32_t Blue : 5;
		uint32_t Green : 6;
		uint32_t Red : 5;
	} RGB;

	static uint32_t Pack(uint8_t red, uint8_t green, uint8_t blue)
	{
		uint32_t pixel = (red << 11) + (green << 5);
		return pixel + blue;
	}
};

union SkyPixel555 {
	uint32_t Value;
	struct
	{
		uint32_t Blue : 5;
		uint32_t Green : 5;
		uint32_t Red : 5;
		uint32_t Unused : 1;
	} RGB;

	static uint32_t Pack(uint8_t red, uint8_t green, uint8_t blue)
	{
		uint32_t pixel = (red << 10) + (green << 5);
		return pixel + blue;
	}
};

template <class Pixel> struct SkyPixelRow
{
	static uint32_t Blend(const uint16_t* source1, const uint16_t* source2)
	{
		Pixel firstPixel, secondPixel;
		memcpy(&firstPixel.Value, source1, sizeof(firstPixel.Value));
		memcpy(&secondPixel.Value, source2, sizeof(secondPixel.Value));
		uint8_t red = multab0[firstPixel.RGB.Red];
		red += multab1[secondPixel.RGB.Red];
		uint8_t green = multab0[firstPixel.RGB.Green];
		green += multab1[secondPixel.RGB.Green];
		uint8_t blue = multab0[firstPixel.RGB.Blue];
		blue += multab1[secondPixel.RGB.Blue];
		return Pixel::Pack(red, green, blue);
	}

	static void Interpolate(uint16_t*& dest, uint16_t*& source1, uint16_t*& source2, int row_width)
	{
		int pixelsRemaining = (uint8_t)row_width;
		if (pixelsRemaining == 0)
		{
			pixelsRemaining = UCHAR_MAX + 1;
		}
		for (; pixelsRemaining > 0; --pixelsRemaining)
		{
			uint32_t blendedPixel = Blend(source1, source2);
			++source1;
			++source2;
			*dest++ = (uint16_t)blendedPixel;
		}
	}
};

void LH3DSky::Interpolate555Texture(uint16_t* dest, uint16_t* source1, uint16_t* source2, uint8_t amount,
                                    int source_pitch, int start_y, int num_lines, int row_width)
{
	if (dest == NULL || source1 == NULL || source2 == NULL || num_lines <= 0)
	{
		return;
	}
	source1 += source_pitch * start_y;
	source2 += source_pitch * start_y;
	dest += start_y * row_width;
	int weight = amount;
	int inverseWeight = LH3D_SKY_ALPHA_MAX - weight;
	xc_temp = row_width;
	int weightedChannel, channel;
	for (channel = 0, weightedChannel = 0; channel < LH3D_SKY_BLEND_TABLE_SIZE; ++channel, weightedChannel += weight)
	{
		multab0[channel] = weightedChannel >> 8;
	}
	for (channel = 0, weightedChannel = 0; channel < LH3D_SKY_BLEND_TABLE_SIZE;
	     ++channel, weightedChannel += inverseWeight)
	{
		multab1[channel] = weightedChannel >> 8;
	}
	int rowsRemaining = (uint8_t)num_lines;
	if (rowsRemaining == 0)
	{
		rowsRemaining = UCHAR_MAX + 1;
	}
	if (LH3DTexture::g_b_use_565)
	{
		for (; rowsRemaining > 0; --rowsRemaining)
		{
			SkyPixelRow<SkyPixel565>::Interpolate(dest, source1, source2, xc_temp);
		}
	}
	else
	{
		for (; rowsRemaining > 0; --rowsRemaining)
		{
			SkyPixelRow<SkyPixel555>::Interpolate(dest, source1, source2, xc_temp);
		}
	}
}

void LH3DSky::PostDrawSun()
{
	if (g_alpha_sun == 0.0f || !SunVisibilityPending || g_b_we_are_inside_citadel)
	{
		return;
	}
	SunVisibilityPending = false;
	static float visibility = 0.0f;
	float        newVisibility = GetSunVisibility();
	float        response = LH3DTech::GetGameTimeInc() / LH3D_SKY_SUN_RESPONSE_TIME;
	visibility += (newVisibility - visibility) * response;
	CLAMP(visibility, 0.0f, (float)LH3D_SKY_ALPHA_MAX);
	int alpha = (int)(visibility * g_alpha_sun * LH3D_SKY_SUN_ALPHA_SCALE);
	if (overcast > 0.0f && LH3DIsland::g_b_use_fog)
	{
		alpha = (int)(alpha / (overcast * LH3D_SKY_SUN_OVERCAST_SCALE + 1.0f));
	}
#if defined(VERSION_BW1WCI)
	alpha = (int)((1.0f - LH3DWideScreen::g_fvalue) * alpha);
#endif
	sunobj->SetColorSpecular(RGBA_SETALPHA(LH3D_SKY_SUN_GLOW_COLOUR, alpha), LH3D_SKY_TRANSPARENT_BLACK);
	sunobj->SetPosition(g_sun_pos, PI_F - QUARTER_PI_F, LH3D_SKY_SUN_GLOW_SCALE);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	sunobj->SetNeedClipping(true);
	sunobj->Draw();
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
}

float LH3DSky::GetSunAltitude()
{
	float time = Time2OldSkoolTime(curtime);
	float foldedTime = time;
	CLAMP(foldedTime, LH3D_SKY_SUNRISE_TIME, LH3D_SKY_SUNSET_TIME);
	if (foldedTime > LH3D_SKY_HOURS_PER_HALF_DAY)
	{
		foldedTime = LH3D_SKY_HOURS_PER_HALF_DAY - (foldedTime - LH3D_SKY_HOURS_PER_HALF_DAY);
	}
	float altitude = (foldedTime - LH3D_SKY_SUNRISE_TIME) * LH3D_SKY_SUN_ALTITUDE_SCALE;
	g_alpha_sun = LH3D_SKY_ALPHA_MAX;
	if (time < LH3D_SKY_SUNRISE_TIME)
	{
		if (time < LH3D_SKY_SUN_FADE_START)
		{
			g_alpha_sun = 0.0f;
		}
		else
		{
			g_alpha_sun = (time - LH3D_SKY_SUN_FADE_START) * LH3D_SKY_SUN_FADE_SCALE;
		}
	}
	if (time > LH3D_SKY_SUNSET_TIME)
	{
		if (time > LH3D_SKY_SUN_FADE_END)
		{
			g_alpha_sun = 0.0f;
		}
		else
		{
			g_alpha_sun = LH3D_SKY_ALPHA_MAX - (time - LH3D_SKY_SUNSET_TIME) * LH3D_SKY_SUN_FADE_SCALE;
		}
	}
	return altitude * LH3D_SKY_SUN_ALTITUDE_MAX;
}

void LH3DSky::DrawSun()
{
	if (g_b_we_are_inside_citadel)
	{
		return;
	}
	g_sun_pos.y = GetSunAltitude();
	if (g_alpha_sun == 0.0f)
	{
		return;
	}
	sunobj->SetPosition(g_sun_pos, PI_F - QUARTER_PI_F, 1.0f);
	sunobj->SetNeedClipping(true);
	int alpha = (int)g_alpha_sun;
	if (overcast > 0.0f && LH3DIsland::g_b_use_fog)
	{
		alpha = (int)(alpha / (overcast * LH3D_SKY_SUN_OVERCAST_SCALE + 1.0f));
	}
	sunobj->SetColorSpecular(RGBA_SETALPHA(LH3D_SKY_SUN_DISC_COLOUR, alpha), LH3D_SKY_TRANSPARENT_BLACK);
#if defined(VERSION_BW1WCI)
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
#endif
	sunobj->Draw();
#if defined(VERSION_BW1WCI)
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
#endif
	SunVisibilityPending = true;
}

float LH3DSky::ComputeAlphaEclairagePublique()
{
	static float eveningStart = LH3D_SKY_PUBLIC_LIGHTS_DUSK;
	static float morningEnd = LH3D_SKY_PUBLIC_LIGHTS_DAWN;
	static float fadeDuration = LH3D_SKY_PUBLIC_LIGHTS_FADE;
	float        time = Time2OldSkoolTime(curtime);
	if (time > eveningStart)
	{
		if (time > eveningStart + fadeDuration)
		{
			return LH3D_SKY_ALPHA_MAX;
		}
		return (time - eveningStart) * LH3D_SKY_ALPHA_MAX / fadeDuration;
	}
	if (time > morningEnd)
	{
		return 0.0f;
	}
	if (time < morningEnd - fadeDuration)
	{
		return LH3D_SKY_ALPHA_MAX;
	}
	return (morningEnd - time) * LH3D_SKY_ALPHA_MAX / fadeDuration;
}
