#include "LH3DSky.h"

#include <time.h>
#include <string.h>
#include <math.h>

#include <re_common.h>

#include "Bitmap16B.h"
#include "LH3DMem.h"
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>
#include "LH3DArena.h"
#include "LH3DWater.h"
#include "LH3DIsland.h"
#include "LH3DLevelOfDetail.h"
#include "LH3DDivers.h"
#include "LH3DMath.h"
#include "LH3DSubMesh.h"
#include "LH3DRender.h"
#include "LH3DAtmos.h"
#include "LH3DColor.h"
#include "LH3DMaterial.h"
#include "LH3DMesh.h"
#include "LH3DObject.h"
#include "LH3DTech.h"
#include "LH3DTexture.h"
#include "LHMatrix.h"
#include "LHPoint.h"

// BW1W120 00eb9954 BW1M119 011f24b4 (LHCombined Release)
extern LH3DTexture* g_weather_texture;
// BW1W120 00eb9958 BW1M119 011f24b0 (LHCombined Release)
extern LH3DTexture* g_sun_texture;
// BW1W120 00c386d8 BW1M119 011d0df0 (LHCombined Release)
extern bool32_t g_b_zbuffer_16b;

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

#if defined(VERSION_BW1WCI)
static inline uint16_t AverageSky555(uint16_t first, uint16_t second)
{
	int red = (((first >> 10) + (second >> 10)) / 2) & 0x1f;
	int green = ((((first >> 5) & 0x1f) + ((second >> 5) & 0x1f)) / 2) & 0x1f;
	int blue = (((first & 0x1f) + (second & 0x1f)) / 2) & 0x1f;
	return (((red << 5) | green) << 5) | blue;
}

static inline uint16_t AverageSky565(uint16_t first, uint16_t second)
{
	int red = ((first >> 11) + (second >> 11)) / 2;
	int green = ((((first >> 6) & 0x1f) + ((second >> 6) & 0x1f)) / 2) & 0x1f;
	int blue = (((first & 0x1f) + (second & 0x1f)) / 2) & 0x1f;
	return (((red << 5) | green) << 6) | blue;
}
#endif

// BW1W120 00869770 BW1M119 inlined
uint32_t ClampSkyChannel(uint32_t value);
// BW1W120 00869790 BW1M119 01038270 (LHCombined Release)
unsigned long BRIGHTENINTERP(unsigned long from, unsigned long to, unsigned long amount);

bool UseBlendedSkyTextures()
{
	return LH3DLevelOfDetail::g_b_use_day_and_night && !LH3DTexture::g_b_use_low_res;
}

LH3DColor LH3DSky::Interpolate444Colour(uint16_t from, uint16_t to, int amount)
{
	LH3DColor result;
	if (amount <= 0)
	{
		int red = (from >> 8) & 0xf;
		int green = (from >> 4) & 0xf;
		int blue = from & 0xf;
		int rgb = (((red << 8) + green) << 8) + blue;
		result = LH3DColor(rgb << 4);
	}
	else if (amount >= LH3D_SKY_COLOUR_BLEND_SCALE)
	{
		int red = (to >> 8) & 0xf;
		int green = (to >> 4) & 0xf;
		int blue = to & 0xf;
		int rgb = (((red << 8) + green) << 8) + blue;
		result = LH3DColor(rgb << 4);
	}
	else
	{
		int red = (from >> 8) & 0xf;
		int green = (from >> 4) & 0xf;
		int blue = from & 0xf;
		red = ((((to >> 8) & 0xf) - red) * amount + (red << 8)) >> 4;
		green = ((((to >> 4) & 0xf) - green) * amount + (green << 8)) >> 4;
		blue = (((to & 0xf) - blue) * amount + (blue << 8)) >> 4;
		result.r = red;
		result.g = green;
		result.b = blue;
	}
	result.a = LH3D_COLOR_OPAQUE;
	return result;
}

uint32_t ClampSkyChannel(uint32_t value)
{
	if (value > LH3D_SKY_ALPHA_MAX)
	{
		value = LH3D_SKY_ALPHA_MAX;
	}
	return value;
}

unsigned long BRIGHTENINTERP(unsigned long from, unsigned long to, unsigned long amount)
{
	uint32_t divisor = (uint32_t)(SKY_COLOUR_BOOST_BASE - LH3DLevelOfDetail::g_colour_boost * SKY_COLOUR_BOOST_SCALE);
	unsigned long inverse = LH3D_SKY_ALPHA_MAX - amount;
	LH3DColor     fromColour(from);
	LH3DColor     toColour(to);
	LH3DColor     result;
	result.r = ClampSkyChannel((fromColour.r * inverse + toColour.r * amount) / divisor);
	result.g = ClampSkyChannel((fromColour.g * inverse + toColour.g * amount) / divisor);
	result.b = ClampSkyChannel((fromColour.b * inverse + toColour.b * amount) / divisor);
	result.a = fromColour.a;
	return result.GetColor();
}

void LH3DSky::CalculateColours()
{
	float time = (SKY_TYPE_NIGHT - Time2SkyType(curtime)) * (LH3D_SKY_HOURS_PER_HALF_DAY / SKY_TYPE_NIGHT);
	float alignment = evil;
	if (time > LH3D_SKY_HOURS_PER_HALF_DAY)
	{
		time = LH3D_SKY_HOURS_PER_DAY - time;
	}
	if (alignment > SKY_ALIGNMENT_EVIL)
	{
		alignment = SKY_ALIGNMENT_EVIL;
	}
	alignment *= (LH3D_ATMOS_COLOUR_SAMPLES - SKY_COLOUR_KEY_PAIRS) / (float)SKY_ALIGNMENT_EVIL;
	time *= (LH3D_ATMOS_COLOUR_SAMPLES - SKY_COLOUR_KEY_PAIRS) / LH3D_SKY_HOURS_PER_HALF_DAY;
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
	int maximum = (int)(LH3D_SKY_ALPHA_MAX - overcast * SKY_OVERCAST_COLOUR_LOSS);
	if (topcol.r > maximum)
	{
		topcol.r = maximum;
	}
	if (topcol.g > maximum)
	{
		topcol.g = maximum;
	}
	if (topcol.b > maximum)
	{
		topcol.b = maximum;
	}
	int middle = topcol.g * LAND_CELL_MIN_DARKNESS >> 8;
	for (i = 0; i < middle; ++i)
	{
		LandCell::g_darkness_to_color[i] = BRIGHTENINTERP(lightcols[SKY_LIGHT_COLOUR_DARK].GetColor(),
		                                                  topcol.GetColor(), i * LH3D_SKY_COLOUR_BLEND_SCALE / middle);
	}
	for (; i < LAND_CELL_MIN_DARKNESS; ++i)
	{
		LandCell::g_darkness_to_color[i] =
			BRIGHTENINTERP(topcol.GetColor(), lightcols[SKY_LIGHT_COLOUR_LIGHT].GetColor(),
		                   (i - middle) * LH3D_SKY_COLOUR_BLEND_SCALE / (LAND_CELL_MIN_DARKNESS - middle));
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
	int fade = (topcol.r * SKY_FOG_RED_WEIGHT + topcol.g * SKY_FOG_GREEN_WEIGHT + topcol.b * SKY_FOG_BLUE_WEIGHT) /
	               SKY_FOG_WEIGHT_SUM +
	           SKY_FOG_ALPHA_OFFSET;
	if (fade > LH3D_SKY_ALPHA_MAX)
	{
		fade = LH3D_SKY_ALPHA_MAX;
	}
	fog_red = topcol.r / SKY_FOG_COLOUR_DIVISOR;
	fog_green = topcol.g / SKY_FOG_COLOUR_DIVISOR;
	fog_blue = topcol.b / SKY_FOG_COLOUR_DIVISOR;
	fog_fade = fade;
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
		if (overcast > 1.0f)
		{
			overcast = 1.0f;
		}
		fog_red += (((topcol.r / SKY_FOG_OVERCAST_COLOUR_DIVISOR) + SKY_FOG_OVERCAST_OFFSET) - fog_red) * overcast;
		fog_green += (((topcol.g / SKY_FOG_OVERCAST_COLOUR_DIVISOR) + SKY_FOG_OVERCAST_OFFSET) - fog_green) * overcast;
		fog_blue += (((topcol.b / SKY_FOG_OVERCAST_COLOUR_DIVISOR) + SKY_FOG_OVERCAST_OFFSET) - fog_blue) * overcast;
		fog_fade += (int)((SKY_FOG_OVERCAST_ALPHA - fade) * overcast);
		float overcastNear = SKY_FOG_OVERCAST_NEAR;
		nearDensity += (1.0f / overcastNear - nearDensity) * overcast;
		farDensity += (1.0f / SKY_FOG_OVERCAST_FAR - farDensity) * overcast;
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

void LH3DSky::Init(float time, float alignment)
{
	g_jc_caca_first_init_sky = true;
	moonsize = SKY_DEFAULT_MOON_SIZE;
	SetDayNightTimes(SKY_DEFAULT_NIGHT_TIME, SKY_DEFAULT_DUSK_START, SKY_DEFAULT_DUSK_END, SKY_DEFAULT_DAY_TIME);
	moonsize = SKY_MOON_SIZE;
	memset(bitmaps, 0, sizeof(bitmaps));
	int typeCount = UseBlendedSkyTextures() ? SKY_TYPE_LAST : SKY_TYPE_DUSK;
	for (int type = SKY_TYPE_DAY; type < typeCount; ++type)
	{
		for (int side = SKY_ALIGNMENT_GOOD; side < SKY_ALIGNMENT_LAST; ++side)
		{
			strcpy(g_sky_texture_name, "Data\\WeatherSystem\\sky_");
			if (side == SKY_ALIGNMENT_GOOD)
			{
				strcat(g_sky_texture_name, "good");
			}
			else if (side == SKY_ALIGNMENT_NEUTRAL)
			{
				strcat(g_sky_texture_name, "ntrl");
			}
			else
			{
				strcat(g_sky_texture_name, "evil");
			}
			if (type == SKY_TYPE_DAY)
			{
				strcat(g_sky_texture_name, "_day.555");
			}
			else if (type == SKY_TYPE_DUSK)
			{
				strcat(g_sky_texture_name, "_dusk.555");
			}
			else
			{
				strcat(g_sky_texture_name, "_night.555");
			}
			Bitmap16B* bitmap = Bitmap16B::CreateFromHD(g_sky_texture_name, false);
			bitmaps[type][side] = bitmap;
#if defined(VERSION_BW1WCI)
			int       width = bitmap->Width;
			int       halfHeight = bitmap->Height / 2;
			uint16_t* data = bitmap->Data;
			if (!LH3DTexture::g_b_use_565)
			{
				for (int row = 0; row < halfHeight; ++row)
				{
					uint16_t* firstLeft = data + row * width;
					uint16_t* secondRight = data + (row + halfHeight + 1) * width - 1;
					uint16_t* secondLeft = data + (row + halfHeight) * width;
					uint16_t* firstRight = data + (row + 1) * width - 1;
					for (int column = 0; column < width; ++column)
					{
						*firstLeft = *secondRight = AverageSky555(*secondRight, *firstLeft);
						*firstRight = *secondLeft = AverageSky555(*secondLeft, *firstRight);
					}
				}
			}
			else
			{
				for (int row = 0; row < halfHeight; ++row)
				{
					uint16_t* firstLeft = data + row * width;
					uint16_t* secondRight = data + (row + halfHeight + 1) * width - 1;
					uint16_t* secondLeft = data + (row + halfHeight) * width;
					uint16_t* firstRight = data + (row + 1) * width - 1;
					for (int column = 0; column < width; ++column)
					{
						uint16_t firstPixel = *firstLeft;
						uint16_t secondPixel = *secondRight;
						*firstLeft = *secondRight = AverageSky565(firstPixel, secondPixel);
						firstPixel = *firstRight;
						secondPixel = *secondLeft;
						*firstRight = *secondLeft = AverageSky565(firstPixel, secondPixel);
					}
				}
			}
#endif
		}
		if (bitmaps[type][SKY_ALIGNMENT_GOOD] == NULL)
		{
			bitmaps[type][SKY_ALIGNMENT_GOOD] = bitmaps[type][SKY_ALIGNMENT_NEUTRAL];
		}
		if (bitmaps[type][SKY_ALIGNMENT_EVIL] == NULL)
		{
			bitmaps[type][SKY_ALIGNMENT_EVIL] = bitmaps[type][SKY_ALIGNMENT_NEUTRAL];
		}
	}
	int i;
	for (i = 0; i < SKY_ALIGNMENT_LAST; ++i)
	{
		TextureFormat format;
		format.Type = LH3D_TEXTURE_FORMAT_MESH_SKIN;
		sky_texture[i] = LH3DTexture::Create(
			NULL, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY | LH3D_TEXTURE_FLAGS_HIGH_COLOUR_REQUEST, SKY_TEXTURE_ID, &format);
		sky_material[i] = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED, sky_texture[i]);
	}
	int height = LH3DTexture::g_b_use_low_res ? SKY_TEXTURE_HEIGHT_LOW : SKY_TEXTURE_HEIGHT;
	CalculateTextures(Time2SkyType(time), 0, height);
	cury = height;
	newst = 0.0f;
	evil = alignment * SKY_ALIGNMENT_EVIL;
	curst = 0.0f;
	SetTime(time);
	LH3DSky::overcast = 0.0f;
	CalculateColours();
	uint32_t fileLength;
	LHFileLength("data\\weathersystem\\sky.l3d", &fileLength);
	void* data = LH3DMem::Alloc(fileLength);
	LHLoadData("data\\weathersystem\\sky.l3d", data, fileLength, NULL);
	skymesh = LH3DMesh::Create(data, false);
	LH3DMem::Free(data);
	sky = LH3DObject::Create(LH3DObject::STATIC);
	sky->SetMesh(skymesh, NULL, NULL);
	sky->SetDynamicLighting(false);
	sky->SetPosition(LHPoint(SKY_POSITION, 0.0f, SKY_POSITION), 0.0f, SKY_SCALE);
	int j;
	moon = LH3DMesh::CreateFromHD("Data\\WeatherSystem\\moon.l3d", true);
	for (i = 0; i < moon->SubmeshCount; ++i)
	{
		LH3DSubMesh* submesh = moon->submeshes[i];
		for (j = 0; j < submesh->NumPrimitives; ++j)
		{
			submesh->primitives_[j]->Material.texture = g_weather_texture;
		}
	}
	sun = LH3DMesh::CreateFromHD("Data\\WeatherSystem\\sun.l3d", true);
	for (i = 0; i < sun->SubmeshCount; ++i)
	{
		LH3DSubMesh* submesh = sun->submeshes[i];
		for (j = 0; j < submesh->NumPrimitives; ++j)
		{
			LH3DPrimitive* primitive = submesh->primitives_[j];
			primitive->Material.render_mode = LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ;
			primitive->Material.texture = g_sun_texture;
			primitive->Material.Flags = primitive->Material.Flags | LH3DMaterial::FLAG_DOUBLE_SIDED;
		}
	}
	moonobj = LH3DObject::Create(LH3DObject::STATIC);
	moonobj->SetMesh(moon, NULL, NULL);
	moonobj->SetDynamicLighting(false);
	sunobj = LH3DObject::Create(LH3DObject::STATIC);
	sunobj->SetMesh(sun, NULL, NULL);
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
	enum MOON_VERTEX
	{
		MOON_VERTEX_LOWER_LEFT = 0,
		MOON_VERTEX_LOWER_RIGHT = 1,
		MOON_VERTEX_UPPER_LEFT = 2,
		MOON_VERTEX_UPPER_RIGHT = 3
	};

	enum MOON_TRIANGLE
	{
		MOON_TRIANGLE_LOWER = 0,
		MOON_TRIANGLE_UPPER = 1
	};
	enum MOON_TRIANGLE_CORNER
	{
		MOON_TRIANGLE_CORNER_FIRST = 0,
		MOON_TRIANGLE_CORNER_SECOND = 1,
		MOON_TRIANGLE_CORNER_THIRD = 2
	};

	LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED]
					[LH3D_SKY_MOON_TRIANGLE_INDEX(MOON_TRIANGLE_LOWER, MOON_TRIANGLE_CORNER_FIRST)] =
						MOON_VERTEX_LOWER_LEFT;
	LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED]
					[LH3D_SKY_MOON_TRIANGLE_INDEX(MOON_TRIANGLE_LOWER, MOON_TRIANGLE_CORNER_SECOND)] =
						MOON_VERTEX_LOWER_RIGHT;
	LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED]
					[LH3D_SKY_MOON_TRIANGLE_INDEX(MOON_TRIANGLE_LOWER, MOON_TRIANGLE_CORNER_THIRD)] =
						MOON_VERTEX_UPPER_RIGHT;
	LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED]
					[LH3D_SKY_MOON_TRIANGLE_INDEX(MOON_TRIANGLE_UPPER, MOON_TRIANGLE_CORNER_FIRST)] =
						MOON_VERTEX_UPPER_RIGHT;
	LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED]
					[LH3D_SKY_MOON_TRIANGLE_INDEX(MOON_TRIANGLE_UPPER, MOON_TRIANGLE_CORNER_SECOND)] =
						MOON_VERTEX_UPPER_LEFT;
	LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED]
					[LH3D_SKY_MOON_TRIANGLE_INDEX(MOON_TRIANGLE_UPPER, MOON_TRIANGLE_CORNER_THIRD)] =
						MOON_VERTEX_LOWER_LEFT;

	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][LH3D_SKY_MOON_UV_U(MOON_VERTEX_LOWER_LEFT)] = LH3D_SKY_MOON_UV_MIN;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][LH3D_SKY_MOON_UV_V(MOON_VERTEX_LOWER_LEFT)] = LH3D_SKY_MOON_UV_MIN;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][LH3D_SKY_MOON_UV_U(MOON_VERTEX_LOWER_RIGHT)] = LH3D_SKY_MOON_UV_MAX;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][LH3D_SKY_MOON_UV_V(MOON_VERTEX_LOWER_RIGHT)] = LH3D_SKY_MOON_UV_MIN;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][LH3D_SKY_MOON_UV_U(MOON_VERTEX_UPPER_LEFT)] = LH3D_SKY_MOON_UV_MIN;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][LH3D_SKY_MOON_UV_V(MOON_VERTEX_UPPER_LEFT)] = LH3D_SKY_MOON_UV_MAX;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][LH3D_SKY_MOON_UV_U(MOON_VERTEX_UPPER_RIGHT)] = LH3D_SKY_MOON_UV_MAX;
	LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED][LH3D_SKY_MOON_UV_V(MOON_VERTEX_UPPER_RIGHT)] = LH3D_SKY_MOON_UV_MAX;

	LH3DColor glowColour = colour;
	glowColour.r = (uint8_t)((int)glowColour.r / LH3D_SKY_MOON_RED_DIVISOR);
	glowColour.g = (uint8_t)((int)glowColour.g / LH3D_SKY_MOON_GREEN_DIVISOR);
	glowColour.b = (uint8_t)((int)glowColour.b / LH3D_SKY_MOON_BLUE_DIVISOR);

	LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED][MOON_VERTEX_LOWER_LEFT] = glowColour;
	LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED][MOON_VERTEX_LOWER_RIGHT] = glowColour;
	LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED][MOON_VERTEX_UPPER_LEFT] = glowColour;
	LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED][MOON_VERTEX_UPPER_RIGHT] = glowColour;

	LHPoint  lowerLeft(-LH3D_SKY_MOON_QUAD_SIZE, -LH3D_SKY_MOON_QUAD_SIZE, 0.0f);
	LHPoint& lowerLeftOutput = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED][MOON_VERTEX_LOWER_LEFT];
	LHMATRIX_TRANSFORM_POINT(lowerLeftOutput, lowerLeft, quad_matrix);
	LHPoint  lowerRight(LH3D_SKY_MOON_QUAD_SIZE, -LH3D_SKY_MOON_QUAD_SIZE, 0.0f);
	LHPoint& lowerRightOutput = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED][MOON_VERTEX_LOWER_RIGHT];
	LHMATRIX_TRANSFORM_POINT(lowerRightOutput, lowerRight, quad_matrix);
	LHPoint  upperLeft(-LH3D_SKY_MOON_QUAD_SIZE, LH3D_SKY_MOON_QUAD_SIZE, 0.0f);
	LHPoint& upperLeftOutput = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED][MOON_VERTEX_UPPER_LEFT];
	LHMATRIX_TRANSFORM_POINT(upperLeftOutput, upperLeft, quad_matrix);
	LHPoint  upperRight(LH3D_SKY_MOON_QUAD_SIZE, LH3D_SKY_MOON_QUAD_SIZE, 0.0f);
	LHPoint& upperRightOutput = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED][MOON_VERTEX_UPPER_RIGHT];
	LHMATRIX_TRANSFORM_POINT(upperRightOutput, upperRight, quad_matrix);

	LH3DTech::Draw3DWorldTriangle(LH3D_SKY_MOON_VERTEX_COUNT, LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED],
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
	cameraPos = LH3DTech::g_world_to_camera * pos;
	LHPoint forward;
	forward = cameraPos;
	forward.Normalise();
	LHPoint right;
	LHPoint up(0.0f, 1.0f, 0.0f);
	right.CrossProduct(up, forward);
	right.Normalise();
	up.CrossProduct(forward, right);
	matrix._11 = right.x;
	matrix._12 = right.y;
	matrix._13 = right.z;
	matrix._21 = up.x;
	matrix._22 = up.y;
	matrix._23 = up.z;
	matrix._31 = forward.x;
	matrix._32 = forward.y;
	matrix._33 = forward.z;
	matrix._41 = cameraPos.x;
	matrix._42 = cameraPos.y;
	matrix._43 = cameraPos.z;
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
	if (moonFog > LH3D_SKY_MOON_FOG_MAX)
	{
		moonFog = LH3D_SKY_MOON_FOG_MAX;
	}
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
	if (evil < SKY_ALIGNMENT_GOOD)
	{
		evil = SKY_ALIGNMENT_GOOD;
	}
	else if (evil > SKY_ALIGNMENT_EVIL)
	{
		evil = SKY_ALIGNMENT_EVIL;
	}
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
		if (redScale > 1.0f)
		{
			redScale = 1.0f;
		}
		float greenScale = scale * LH3D_SKY_TOP_GREEN_SCALE + LH3D_SKY_TOP_OFFSET;
		if (greenScale > 1.0f)
		{
			greenScale = 1.0f;
		}
		float blueScale = scale * LH3D_SKY_TOP_BLUE_SCALE + LH3D_SKY_TOP_OFFSET;
		if (blueScale > 1.0f)
		{
			blueScale = 1.0f;
		}
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
	int value, i;
	for (i = 0, value = 0; i < LH3D_SKY_BLEND_TABLE_SIZE; ++i, value += weight)
	{
		multab0[i] = value >> 8;
	}
	for (i = 0, value = 0; i < LH3D_SKY_BLEND_TABLE_SIZE; ++i, value += inverseWeight)
	{
		multab1[i] = value >> 8;
	}
	if (LH3DTexture::g_b_use_565)
	{
		__asm
		{
			mov ch, byte ptr num_lines
			push ebp
			mov esi, source1
			mov edi, dest
			mov ebp, source2
		rgb565Row:
			mov cl, byte ptr xc_temp
		rgb565Pixel:
			mov ebx, [esi]
			mov edx, [ebp]
			shr ebx, 11
			shr edx, 11
			and ebx, 0x1f
			and edx, 0x1f
			mov al, multab0[ebx]
			mov ebx, [esi]
			add al, multab1[edx]
			mov edx, [ebp]
			shr ebx, 5
			shr edx, 5
			shl eax, 6
			and ebx, 0x3f
			and edx, 0x3f
			add al, multab0[ebx]
			mov ebx, [esi]
			add al, multab1[edx]
			mov edx, [ebp]
			shl eax, 5
			and ebx, 0x1f
			and edx, 0x1f
			add al, multab0[ebx]
			add esi, 2
			add ebp, 2
			add al, multab1[edx]
			mov [edi], ax
			add edi, 2
			dec cl
			jnz rgb565Pixel
			dec ch
			jnz rgb565Row
			pop ebp
		}
		return;
	}
	__asm
	{
			mov ch, byte ptr num_lines
			push ebp
			mov esi, source1
			mov edi, dest
			mov ebp, source2
		rgb555Row:
			mov cl, byte ptr xc_temp
		rgb555Pixel:
			mov ebx, [esi]
			mov edx, [ebp]
			shr ebx, 10
			shr edx, 10
			and ebx, 0x1f
			and edx, 0x1f
			mov al, multab0[ebx]
			mov ebx, [esi]
			add al, multab1[edx]
			mov edx, [ebp]
			shr ebx, 5
			shr edx, 5
			shl eax, 5
			and ebx, 0x1f
			and edx, 0x1f
			add al, multab0[ebx]
			mov ebx, [esi]
			add al, multab1[edx]
			mov edx, [ebp]
			shl eax, 5
			and ebx, 0x1f
			and edx, 0x1f
			add al, multab0[ebx]
			add esi, 2
			add ebp, 2
			add al, multab1[edx]
			mov [edi], ax
			add edi, 2
			dec cl
			jnz rgb555Pixel
			dec ch
			jnz rgb555Row
			pop ebp
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
	if (visibility > (float)LH3D_SKY_ALPHA_MAX)
	{
		visibility = (float)LH3D_SKY_ALPHA_MAX;
	}
	else if (visibility < 0.0f)
	{
		visibility = 0.0f;
	}
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

float LH3DSky::GetSunVisibility()
{
	static float sampleOffset = SKY_SUN_SAMPLE_OFFSET;
	LHPoint      samples[] = {
		LHPoint(0.0f, 0.0f, 0.0f),
		LHPoint(-sampleOffset, -sampleOffset, 0.0f),
		LHPoint(-sampleOffset, sampleOffset, 0.0f),
		LHPoint(sampleOffset, -sampleOffset, 0.0f),
		LHPoint(sampleOffset, sampleOffset, 0.0f),
	};
	LHPoint direction = g_sun_pos;
	direction -= LH3DTech::g_camera.pos;
	direction.SetSize(LH3DTech::g_info_transform.NearClip);
	HRESULT        lockResult = S_FALSE;
	bool32_t       readDepth = g_b_zbuffer_16b;
	DDSURFACEDESC2 surface;
	if (LH3DLevelOfDetail::g_detail_idx != SKY_DEPTH_DETAIL_PRESET_3 &&
	    LH3DLevelOfDetail::g_detail_idx != SKY_DEPTH_DETAIL_PRESET_4 &&
	    LH3DLevelOfDetail::g_detail_idx != SKY_DEPTH_DETAIL_PRESET_6)
	{
		readDepth = false;
	}
	if (readDepth)
	{
		memset(&surface, 0, sizeof(surface));
		surface.dwSize = sizeof(surface);
		lockResult =
			LH3DRender::ZBufferSurface->Lock(NULL, &surface, DDLOCK_WAIT | DDLOCK_READONLY | DDLOCK_NOSYSLOCK, NULL);
	}
	float occludedSamples = 0.0f;
	for (int i = 0; i < ARRAY_SIZE(samples); ++i)
	{
		samples[i] += g_sun_pos;
		samples[i] += direction;
		if (samples[i].y < SKY_SUN_MIN_HEIGHT)
		{
			samples[i].y = SKY_SUN_MIN_HEIGHT;
		}
		float    hitX, hitZ;
		bool32_t occluded = LH3DIsland::RayCast(LH3DTech::g_camera.pos, samples[i], &hitX, &hitZ);
		if (!occluded && lockResult == DD_OK && readDepth)
		{
			int x, y;
			if (LH3DTech::ProjectPoint(&samples[i], &x, &y) == LH3D_PROJECT_ON_SCREEN)
			{
				if (x < 0)
				{
					x = 0;
				}
				if (y < 0)
				{
					y = 0;
				}
				if (x >= surface.dwWidth)
				{
					x = surface.dwWidth - 1;
				}
				if (y >= surface.dwHeight)
				{
					y = surface.dwHeight - 1;
				}
				uint16_t* depth = (uint16_t*)surface.lpSurface;
				if (depth[x + surface.lPitch * y / (int)sizeof(*depth)] < SKY_SUN_DEPTH_THRESHOLD)
				{
					occluded = true;
				}
			}
		}
		occludedSamples += (occluded != false);
	}
	if (readDepth)
	{
		LH3DRender::ZBufferSurface->Unlock(NULL);
	}
	return (1.0f - occludedSamples / ARRAY_SIZE(samples)) * LH3D_SKY_ALPHA_MAX;
}

float LH3DSky::GetSunAltitude()
{
	float time = Time2OldSkoolTime(curtime);
	float foldedTime = time;
	if (foldedTime > LH3D_SKY_SUNSET_TIME)
	{
		foldedTime = LH3D_SKY_SUNSET_TIME;
	}
	else if (foldedTime < LH3D_SKY_SUNRISE_TIME)
	{
		foldedTime = LH3D_SKY_SUNRISE_TIME;
	}
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
