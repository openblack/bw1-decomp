#include "LH3DSky.h"

#include <string.h>
#include <math.h>
#include <time.h>
#include <windows.h>

#include "Bitmap16B.h"
#include "LH3DArena.h"
#include "LH3DAtmos.h"
#include "LH3DLevelOfDetail.h"
#include "LH3DIsland.h"
#include "LH3DMath.h"
#include "LH3DMaterial.h"
#include "LH3DMem.h"
#include "LH3DMesh.h"
#include "LH3DObject.h"
#include "LH3DPrimitive.h"
#include "LH3DZBuffer.h"
#include "LH3DRender.h"
#include "LH3DSubMesh.h"
#include "LH3DTech.h"
#include "LH3DTexture.h"
#include "LH3DWater.h"
#include "LH3DWideScreen.h"
#include "LHPoint.h"

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>

float    LH3DSky::g_alpha_sun = SKY_SUN_ALPHA_MAX;
bool32_t g_jc_caca_first_init_sky = true;
float    LH3DSky::ONIGHT_FULL_TIME = SKY_OLD_NIGHT_TIME;
float    LH3DSky::ODUSK_START_TIME = SKY_OLD_DUSK_START_TIME;
float    LH3DSky::ODUSK_END_TIME = SKY_OLD_DUSK_END_TIME;
float    LH3DSky::ODAY_FULL_TIME = SKY_OLD_DAY_TIME;

bool32_t             LH3DSky::g_b_we_are_inside_citadel;
bool32_t             g_b_pre_draw;
float                LH3DSky::evil;
float                LH3DSky::overcast;
float                LH3DSky::moonsize;
static LH3DMaterial* sky_material[SKY_ALIGNMENT_LAST];
static LH3DTexture*  sky_texture[SKY_ALIGNMENT_LAST];
LH3DMesh*            LH3DSky::skymesh;
LH3DObject*          LH3DSky::sky;
LH3DMesh*            LH3DSky::moon;
LH3DObject*          LH3DSky::moonobj;
float                LH3DSky::moonphase;
LH3DMesh*            LH3DSky::sun;
LH3DObject*          LH3DSky::sunobj;
LHPoint              LH3DSky::g_sun_pos(SKY_SUN_INITIAL_COORDINATE, 0.0f, SKY_SUN_INITIAL_COORDINATE);
Bitmap16B*           LH3DSky::bitmaps[SKY_TYPE_LAST][SKY_ALIGNMENT_LAST];
LH3DColor            LH3DSky::lightcols[SKY_LIGHT_COLOUR_LAST];
float                LH3DSky::curtime;
float                LH3DSky::curst;
float                LH3DSky::newst;
int                  LH3DSky::cury;
float                LH3DSky::fogr;
float                LH3DSky::fogg;
float                LH3DSky::fogb;
unsigned long        LH3DSky::foga;
LH3DColor            LH3DSky::topcol;
float                LH3DSky::NIGHT_FULL_TIME;
float                LH3DSky::DUSK_START_TIME;
float                LH3DSky::DUSK_END_TIME;
float                LH3DSky::DAY_FULL_TIME;
static char          g_sky_texture_name[SKY_TEXTURE_NAME_CAPACITY];
uint8_t              multab0[SKY_BLEND_TABLE_SIZE];
uint8_t              multab1[SKY_BLEND_TABLE_SIZE];
int                  xc_temp;

float LH3DSky::g_alpha_eclairage_publique = 0.0f;
int   LH3DSky::LightningGlow = 0;

// BW1W120 00822190 BW1M119 010a4860 (LHCombined Release)
Bitmap16B* LoadTextureCitadel(char* name, unsigned char* data);

// BW1W120 00869670 BW1M119 inlined
bool UseDayAndNight();

// BW1W120 00869770 BW1M119 inlined
uint32_t ClampSkyChannel(uint32_t value);
// BW1W120 00869790 BW1M119 01038270 (LHCombined Release)
unsigned long BRIGHTENINTERP(unsigned long from, unsigned long to, unsigned long amount);

#if defined(VERSION_BW1WCI)
// BW1W120 null BW1WCI inlined BW1M119 null
static inline uint16_t AverageSky555(uint16_t first, uint16_t second);
// BW1W120 null BW1WCI inlined BW1M119 null
static inline uint16_t AverageSky565(uint16_t first, uint16_t second);

static inline uint16_t AverageSky555(uint16_t first, uint16_t second)
{
	int red = (((first >> SKY_RGB555_RED_SHIFT) + (second >> SKY_RGB555_RED_SHIFT)) / 2) & SKY_RGB_CHANNEL_MASK;
	int green = ((((first >> SKY_RGB_CHANNEL_BITS) & SKY_RGB_CHANNEL_MASK) +
	              ((second >> SKY_RGB_CHANNEL_BITS) & SKY_RGB_CHANNEL_MASK)) /
	             2) &
	            SKY_RGB_CHANNEL_MASK;
	int blue = (((first & SKY_RGB_CHANNEL_MASK) + (second & SKY_RGB_CHANNEL_MASK)) / 2) & SKY_RGB_CHANNEL_MASK;
	return (((red << SKY_RGB_CHANNEL_BITS) | green) << SKY_RGB_CHANNEL_BITS) | blue;
}

static inline uint16_t AverageSky565(uint16_t first, uint16_t second)
{
	int red = ((first >> SKY_RGB565_RED_SHIFT) + (second >> SKY_RGB565_RED_SHIFT)) / 2;
	int green = ((((first >> SKY_RGB565_GREEN_BITS) & SKY_RGB_CHANNEL_MASK) +
	              ((second >> SKY_RGB565_GREEN_BITS) & SKY_RGB_CHANNEL_MASK)) /
	             2) &
	            SKY_RGB_CHANNEL_MASK;
	int blue = (((first & SKY_RGB_CHANNEL_MASK) + (second & SKY_RGB_CHANNEL_MASK)) / 2) & SKY_RGB_CHANNEL_MASK;
	return (((red << SKY_RGB_CHANNEL_BITS) | green) << SKY_RGB565_GREEN_BITS) | blue;
}
#endif

bool UseDayAndNight()
{
	return LH3DLevelOfDetail::g_b_use_day_and_night && !LH3DTexture::g_b_use_low_res;
}

#if !defined(VERSION_BW1W100)
LH3DColor LH3DSky::Interpolate444Colour(uint16_t from, uint16_t to, int amount)
{
	LH3DColor result;
	if (amount <= 0)
	{
		int red = (from >> SKY_444_RED_SHIFT) & SKY_444_CHANNEL_MASK;
		int green = (from >> SKY_444_CHANNEL_BITS) & SKY_444_CHANNEL_MASK;
		int blue = from & SKY_444_CHANNEL_MASK;
		int rgb = (((red << SKY_COLOUR_CHANNEL_BITS) + green) << SKY_COLOUR_CHANNEL_BITS) + blue;
		result = LH3DColor(rgb << SKY_444_CHANNEL_BITS);
	}
	else if (amount >= SKY_BLEND_SCALE)
	{
		int red = (to >> SKY_444_RED_SHIFT) & SKY_444_CHANNEL_MASK;
		int green = (to >> SKY_444_CHANNEL_BITS) & SKY_444_CHANNEL_MASK;
		int blue = to & SKY_444_CHANNEL_MASK;
		int rgb = (((red << SKY_COLOUR_CHANNEL_BITS) + green) << SKY_COLOUR_CHANNEL_BITS) + blue;
		result = LH3DColor(rgb << SKY_444_CHANNEL_BITS);
	}
	else
	{
		int red = (from >> SKY_444_RED_SHIFT) & SKY_444_CHANNEL_MASK;
		int green = (from >> SKY_444_CHANNEL_BITS) & SKY_444_CHANNEL_MASK;
		int blue = from & SKY_444_CHANNEL_MASK;
		red =
			((((to >> SKY_444_RED_SHIFT) & SKY_444_CHANNEL_MASK) - red) * amount + (red << SKY_BLEND_FRACTION_BITS)) >>
			SKY_444_CHANNEL_BITS;
		green = ((((to >> SKY_444_CHANNEL_BITS) & SKY_444_CHANNEL_MASK) - green) * amount +
		         (green << SKY_BLEND_FRACTION_BITS)) >>
		        SKY_444_CHANNEL_BITS;
		blue =
			(((to & SKY_444_CHANNEL_MASK) - blue) * amount + (blue << SKY_BLEND_FRACTION_BITS)) >> SKY_444_CHANNEL_BITS;
		result.r = red;
		result.g = green;
		result.b = blue;
	}
	result.a = SKY_COLOUR_ALPHA_MAX;
	return result;
}
#endif

uint32_t ClampSkyChannel(uint32_t value)
{
	if (value > SKY_COLOUR_ALPHA_MAX)
	{
		value = SKY_COLOUR_ALPHA_MAX;
	}
	return value;
}

unsigned long BRIGHTENINTERP(unsigned long from, unsigned long to, unsigned long amount)
{
	uint32_t divisor = (uint32_t)(SKY_COLOUR_BOOST_BASE - LH3DLevelOfDetail::g_colour_boost * SKY_COLOUR_BOOST_SCALE);
	unsigned long inverse = SKY_COLOUR_ALPHA_MAX - amount;
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
	float time = (SKY_TYPE_NIGHT - Time2SkyType(curtime)) * (SKY_NOON_TIME / SKY_TYPE_NIGHT);
	float alignment = evil;
	if (time > SKY_NOON_TIME)
	{
		time = HOURS_PER_DAY - time;
	}
	if (alignment > SKY_ALIGNMENT_EVIL)
	{
		alignment = SKY_ALIGNMENT_EVIL;
	}
	alignment *= (LH3D_ATMOS_COLOUR_SAMPLES - SKY_COLOUR_KEY_PAIRS) / (float)SKY_ALIGNMENT_EVIL;
	time *= (LH3D_ATMOS_COLOUR_SAMPLES - SKY_COLOUR_KEY_PAIRS) / SKY_NOON_TIME;
	int   index = (int)time;
	int   alignedIndex = (int)alignment;
	float fraction = time - index;
	float alignedFraction = alignment - alignedIndex;
	for (int i = 0; i < SKY_LIGHT_COLOUR_LAST; ++i)
	{
		int keyIndex = i * LH3D_ATMOS_COLOUR_SAMPLES + index;
		int amount = (int)(fraction * SKY_BLEND_SCALE);
		lightcols[i] = LH3DColor(LH3D_BLEND_COLOR(LH3DAtmos::scv[keyIndex], LH3DAtmos::scv[keyIndex + 1], amount));
		if (i == SKY_LIGHT_COLOUR_EVIL)
		{
			index = alignedIndex;
			fraction = alignedFraction;
		}
	}
	uint32_t goodColour = lightcols[SKY_LIGHT_COLOUR_GOOD].GetColor();
	uint32_t neutralColour = lightcols[SKY_LIGHT_COLOUR_NEUTRAL].GetColor();
	uint32_t evilColour = lightcols[SKY_LIGHT_COLOUR_EVIL].GetColor();
	int      amount = (int)(evil * SKY_COLOUR_ALPHA_MAX);
	if (evil < SKY_ALIGNMENT_NEUTRAL)
	{
		topcol = LH3DColor(LH3D_BLEND_COLOR(goodColour, neutralColour, amount));
	}
	else
	{
		int evilAmount = amount - SKY_BLEND_SCALE;
		topcol = LH3DColor(LH3D_BLEND_COLOR(neutralColour, evilColour, evilAmount));
	}
	int maximum = (int)(SKY_COLOUR_ALPHA_MAX - overcast * SKY_OVERCAST_COLOUR_LOSS);
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
	int middle = topcol.g * LAND_CELL_MIN_DARKNESS >> SKY_BLEND_FRACTION_BITS;
	for (i = 0; i < middle; ++i)
	{
		LandCell::g_darkness_to_color[i] = BRIGHTENINTERP(lightcols[SKY_LIGHT_COLOUR_DARK].GetColor(),
		                                                  topcol.GetColor(), i * SKY_BLEND_SCALE / middle);
	}
	for (; i < LAND_CELL_MIN_DARKNESS; ++i)
	{
		LandCell::g_darkness_to_color[i] =
			BRIGHTENINTERP(topcol.GetColor(), lightcols[SKY_LIGHT_COLOUR_LIGHT].GetColor(),
		                   (i - middle) * SKY_BLEND_SCALE / (LAND_CELL_MIN_DARKNESS - middle));
	}
	for (i = LAND_CELL_MIN_DARKNESS; i < LAND_CELL_MAX_DARKNESS + 1; ++i)
	{
		LandCell::g_darkness_to_color[i] =
			BRIGHTENINTERP(lightcols[SKY_LIGHT_COLOUR_DARK].GetColor(), topcol.GetColor(), i);
	}
	if (LightningGlow)
	{
		for (i = 0; i < LAND_CELL_MAX_DARKNESS + 1; ++i)
		{
			LandCell::g_darkness_to_color[i] =
				LH3D_BLEND_COLOR(LandCell::g_darkness_to_color[i], SKY_COLOUR_WHITE, LightningGlow);
		}
	}
	int fade = (topcol.r * SKY_FOG_RED_WEIGHT + topcol.g * SKY_FOG_GREEN_WEIGHT + topcol.b * SKY_FOG_BLUE_WEIGHT) /
	               SKY_FOG_WEIGHT_SUM +
	           SKY_FOG_ALPHA_OFFSET;
	if (fade > SKY_COLOUR_ALPHA_MAX)
	{
		fade = SKY_COLOUR_ALPHA_MAX;
	}
	fogr = topcol.r / SKY_FOG_COLOUR_DIVISOR;
	fogg = topcol.g / SKY_FOG_COLOUR_DIVISOR;
	fogb = topcol.b / SKY_FOG_COLOUR_DIVISOR;
	foga = fade;
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
		fogr += (((topcol.r >> SKY_FOG_OVERCAST_SHIFT) + SKY_FOG_OVERCAST_OFFSET) - fogr) * overcast;
		fogg += (((topcol.g >> SKY_FOG_OVERCAST_SHIFT) + SKY_FOG_OVERCAST_OFFSET) - fogg) * overcast;
		fogb += (((topcol.b >> SKY_FOG_OVERCAST_SHIFT) + SKY_FOG_OVERCAST_OFFSET) - fogb) * overcast;
		foga += (int)((SKY_FOG_OVERCAST_ALPHA - fade) * overcast);
		float overcastNear = SKY_FOG_OVERCAST_NEAR;
		nearDensity += (1.0f / overcastNear - nearDensity) * overcast;
		farDensity += (1.0f / SKY_FOG_OVERCAST_FAR - farDensity) * overcast;
	}
	if (LightningGlow)
	{
		fogr += (SKY_COLOUR_ALPHA_MAX - fogr) * LightningGlow * SKY_BLEND_INVERSE_SCALE;
		fogg += (SKY_COLOUR_ALPHA_MAX - fogg) * LightningGlow * SKY_BLEND_INVERSE_SCALE;
		fogb += (SKY_COLOUR_ALPHA_MAX - fogb) * LightningGlow * SKY_BLEND_INVERSE_SCALE;
		foga += (int)((SKY_COLOUR_ALPHA_MAX - foga) * LightningGlow * SKY_BLEND_INVERSE_SCALE);
	}
	LH3DIsland::SetFogMinMax(1.0f / nearDensity, 1.0f / farDensity);
	LH3DIsland::SetFogColor(fogr, fogg, fogb, foga);
	LH3DWater::g_color_water = lightcols[SKY_LIGHT_COLOUR_WATER].GetColor() & SKY_COLOUR_RGB_MASK;
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
	bool folded = false;
	if (time > SKY_NOON_TIME)
	{
		time = HOURS_PER_DAY - time;
		folded = true;
	}
	SKY_TIME_SEGMENT segment;
	float            fraction;
	if (time < from_night)
	{
		segment = SKY_TIME_SEGMENT_NIGHT;
		fraction = time / from_night;
	}
	else if (time < from_dusk_start)
	{
		segment = SKY_TIME_SEGMENT_DAWN;
		fraction = (time - from_night) / (from_dusk_start - from_night);
	}
	else if (time < from_dusk_end)
	{
		segment = SKY_TIME_SEGMENT_DUSK;
		fraction = (time - from_dusk_start) / (from_dusk_end - from_dusk_start);
	}
	else if (time < from_day)
	{
		segment = SKY_TIME_SEGMENT_SUNRISE;
		fraction = (time - from_dusk_end) / (from_day - from_dusk_end);
	}
	else
	{
		segment = SKY_TIME_SEGMENT_DAY;
		fraction = (time - from_day) / (SKY_NOON_TIME - from_day);
	}
	switch (segment)
	{
	case SKY_TIME_SEGMENT_NIGHT:
		time = fraction * to_night;
		break;
	case SKY_TIME_SEGMENT_DAWN:
		time = to_night + fraction * (to_dusk_start - to_night);
		break;
	case SKY_TIME_SEGMENT_DUSK:
		time = to_dusk_start + fraction * (to_dusk_end - to_dusk_start);
		break;
	case SKY_TIME_SEGMENT_SUNRISE:
		time = to_dusk_end + fraction * (to_day - to_dusk_end);
		break;
	case SKY_TIME_SEGMENT_DAY:
		time = to_day + fraction * (SKY_NOON_TIME - to_day);
		break;
	}
	if (folded)
	{
		time = HOURS_PER_DAY - time;
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
	if (time > SKY_NOON_TIME)
	{
		time = HOURS_PER_DAY - time;
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
		time += HOURS_PER_DAY;
	}
	while (time >= HOURS_PER_DAY)
	{
		time -= HOURS_PER_DAY;
	}
	curtime = time;
	newst = Time2SkyType(time);
}

void LH3DSky::Update()
{
	CalculateColours();
	int height = LH3DTexture::g_b_use_low_res ? SKY_TEXTURE_HEIGHT_LOW : SKY_TEXTURE_HEIGHT;
	if (cury >= height)
	{
		if (fabs(newst - curst) > SKY_TYPE_CHANGE_THRESHOLD)
		{
			curst = newst;
			cury = 0;
		}
		if (cury >= height)
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
	int typeCount = UseDayAndNight() ? SKY_TYPE_LAST : SKY_TYPE_DAY + 1;
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
			Bitmap16B* bitmap = LoadTextureCitadel(g_sky_texture_name, NULL);
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
		format.Type = TEXTURE_FORMAT_ADAPTIVE;
		sky_texture[i] = LH3DTexture::Create(NULL, SKY_TEXTURE_CREATE_FLAGS, 0, &format);
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
		for (int type = 0; type < SKY_TYPE_LAST; ++type)
		{
			if (bitmaps[type][SKY_ALIGNMENT_GOOD] == bitmaps[type][SKY_ALIGNMENT_NEUTRAL])
			{
				bitmaps[type][SKY_ALIGNMENT_GOOD] = NULL;
			}
			if (bitmaps[type][SKY_ALIGNMENT_EVIL] == bitmaps[type][SKY_ALIGNMENT_NEUTRAL])
			{
				bitmaps[type][SKY_ALIGNMENT_EVIL] = NULL;
			}
			if (bitmaps[type][alignment] != NULL)
			{
				bitmaps[type][alignment]->Release();
			}
		}
	}
}

float LH3DSky::CalcMoonRot(bool32_t& changed)
{
	static time_t lastTime = 0;
	static int    lastTick = 0;
	int           tick = GetTickCount();
	if (tick - lastTick > SKY_MOON_UPDATE_INTERVAL)
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
	double cycle = (lastTime / SKY_MOON_SECONDS_PER_DAY - SKY_MOON_REFERENCE_DAY) / SKY_MOON_CYCLE_DAYS;
	return (1.0 - (cycle - (int)cycle)) * TWO_PI;
}

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
			vertex->uv.Set(point.x / SKY_MOON_UV_DIVISOR + SKY_MOON_UV_OFFSET,
			               point.y / SKY_MOON_UV_DIVISOR + SKY_MOON_UV_OFFSET);
			++vertex;
		}
	}
}

bool moonflip = false;

void LH3DSky::DrawMoonPost(LH3DColor& colour, LHMatrix& matrix, LHMatrix& moon_matrix)
{
	LH3DAtmos::v_idx[0][0] = SKY_MOON_CORNER_LOWER_LEFT;
	LH3DAtmos::v_idx[0][1] = SKY_MOON_CORNER_LOWER_RIGHT;
	LH3DAtmos::v_idx[0][2] = SKY_MOON_CORNER_UPPER_RIGHT;
	LH3DAtmos::v_idx[0][3] = SKY_MOON_CORNER_UPPER_RIGHT;
	LH3DAtmos::v_idx[0][4] = SKY_MOON_CORNER_UPPER_LEFT;
	LH3DAtmos::v_idx[0][5] = SKY_MOON_CORNER_LOWER_LEFT;
	LH3DAtmos::v_uv[0][0] = SKY_MOON_UV_MIN;
	LH3DAtmos::v_uv[0][1] = SKY_MOON_UV_MIN;
	LH3DAtmos::v_uv[0][2] = SKY_MOON_UV_MAX;
	LH3DAtmos::v_uv[0][3] = SKY_MOON_UV_MIN;
	LH3DAtmos::v_uv[0][4] = SKY_MOON_UV_MIN;
	LH3DAtmos::v_uv[0][5] = SKY_MOON_UV_MAX;
	LH3DAtmos::v_uv[0][6] = SKY_MOON_UV_MAX;
	LH3DAtmos::v_uv[0][7] = SKY_MOON_UV_MAX;
	LH3DColor moonColour = colour;
	moonColour.r = (int)moonColour.r / SKY_MOON_RED_DIVISOR;
	moonColour.g = (int)moonColour.g / SKY_MOON_GREEN_DIVISOR;
	moonColour.b /= (1 << SKY_MOON_BLUE_SHIFT);
	LH3DAtmos::v_col[0][SKY_MOON_CORNER_LOWER_LEFT] = moonColour;
	LH3DAtmos::v_col[0][SKY_MOON_CORNER_LOWER_RIGHT] = moonColour;
	LH3DAtmos::v_col[0][SKY_MOON_CORNER_UPPER_LEFT] = moonColour;
	LH3DAtmos::v_col[0][SKY_MOON_CORNER_UPPER_RIGHT] = moonColour;
	LHPoint  lowerLeft(-SKY_MOON_QUAD_SIZE, -SKY_MOON_QUAD_SIZE, 0.0f);
	LHPoint* vertex = LH3DAtmos::v_pnt[0] + SKY_MOON_CORNER_LOWER_LEFT;
	LHMATRIX_TRANSFORM_POINT(*vertex, lowerLeft, matrix);
	LHPoint lowerRight(SKY_MOON_QUAD_SIZE, -SKY_MOON_QUAD_SIZE, 0.0f);
	vertex = LH3DAtmos::v_pnt[0] + SKY_MOON_CORNER_LOWER_RIGHT;
	LHMATRIX_TRANSFORM_POINT(*vertex, lowerRight, matrix);
	LHPoint upperLeft(-SKY_MOON_QUAD_SIZE, SKY_MOON_QUAD_SIZE, 0.0f);
	vertex = LH3DAtmos::v_pnt[0] + SKY_MOON_CORNER_UPPER_LEFT;
	LHMATRIX_TRANSFORM_POINT(*vertex, upperLeft, matrix);
	LHPoint upperRight(SKY_MOON_QUAD_SIZE, SKY_MOON_QUAD_SIZE, 0.0f);
	vertex = LH3DAtmos::v_pnt[0] + SKY_MOON_CORNER_UPPER_RIGHT;
	LHMATRIX_TRANSFORM_POINT(*vertex, upperRight, matrix);
	LH3DTech::Draw3DWorldTriangle(SKY_MOON_CORNER_LAST, LH3DAtmos::v_pnt[0], LH3DAtmos::v_col[0], LH3DAtmos::v_uv[0],
	                              SKY_MOON_TRIANGLE_COUNT, LH3DAtmos::v_idx[0], LH3DAtmos::mat1, false);
	moonobj->matrix.Set(moon_matrix);
	moonobj->SetColorSpecular(colour.GetColor(), 0);
	moonobj->SetDrawWithGlobalAlpha(true);
	if (!moonflip)
	{
		moonobj->Draw();
		moonobj->SetColorSpecular(colour.GetColor(), 0);
		moonobj->SetDrawWithGlobalAlpha(true);
		moonobj->DrawUnderWater();
	}
}

void LH3DSky::CalcMoonMat(LHPoint& pos, LHMatrix& matrix, LHMatrix& moon_matrix)
{
	LHPoint cameraPos = LH3DTech::g_world_to_camera * pos;
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
	moon_matrix.RotateZ((moonflip ? -1 : 1) * SKY_MOON_TILT_ANGLE);
	moon_matrix.RotateY(moonphase + PI_F);
	moon_matrix.ScaleMatrixOnly(SKY_MOON_SHADING_SCALE);
}

void LH3DSky::Draw()
{
	LHPoint moonPosition = LH3DAtmos::GetMoonPos();
	int     moonFog = (int)(moonPosition.y * SKY_MOON_FOG_SCALE - SKY_MOON_FOG_OFFSET);
	if (moonFog > SKY_MOON_FOG_MAX)
	{
		moonFog = SKY_MOON_FOG_MAX;
	}
	if (overcast > 0.0f && LH3DIsland::g_b_use_fog)
	{
		moonFog = (int)(moonFog / (overcast * SKY_SUN_OVERCAST_SCALE + 1.0f));
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
	int alignmentAlpha;
	int firstSky, secondSky;
	if (!(evil > SKY_ALIGNMENT_NEUTRAL))
	{
		alignmentAlpha = (int)(evil * SKY_COLOUR_ALPHA_MAX);
		firstSky = SKY_ALIGNMENT_GOOD;
		secondSky = SKY_ALIGNMENT_NEUTRAL;
	}
	else
	{
		alignmentAlpha = (int)((evil - SKY_ALIGNMENT_NEUTRAL) * SKY_COLOUR_ALPHA_MAX);
		firstSky = SKY_ALIGNMENT_NEUTRAL;
		secondSky = SKY_ALIGNMENT_EVIL;
	}
	int inverseAlpha = SKY_COLOUR_ALPHA_MAX - alignmentAlpha;
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	int      fog = (int)(overcast * SKY_COLOUR_ALPHA_MAX);
	uint32_t topColour = SKY_COLOUR_WHITE;
	if (!UseDayAndNight())
	{
		LH3DColor colour = topcol;
		float     scale = (SKY_TYPE_NIGHT - newst) * SKY_TOP_SCALE;
		float     redScale = scale + scale + SKY_TOP_OFFSET;
		if (redScale > 1.0f)
		{
			redScale = 1.0f;
		}
		float greenScale = scale * SKY_TOP_GREEN_SCALE + SKY_TOP_OFFSET;
		if (greenScale > 1.0f)
		{
			greenScale = 1.0f;
		}
		float blueScale = scale * SKY_TOP_BLUE_SCALE + SKY_TOP_OFFSET;
		if (blueScale > 1.0f)
		{
			blueScale = 1.0f;
		}
		colour.r = (uint8_t)(colour.r * redScale);
		colour.g = (uint8_t)(colour.g * greenScale);
		colour.b = (uint8_t)(colour.b * blueScale);
		colour.a = SKY_COLOUR_ALPHA_MAX;
		topColour = colour.GetColor();
	}
	uint32_t fogColour = (int)fogr | (SKY_COLOUR_WHITE ^ SKY_COLOUR_ALPHA_MAX);
	fogColour <<= SKY_COLOUR_CHANNEL_BITS;
	fogColour |= (int)fogg;
	fogColour <<= SKY_COLOUR_CHANNEL_BITS;
	fogColour |= (int)fogb;
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
	specular = LH3DIsland::g_b_use_fog ? LH3D_BLEND_COLOR(0, fogColour, fog) : 0;
	if (LH3DAtmos::flags & LH3D_ATMOS_ALIGNMENT_TRANSITION)
	{
		int fade = LH3DAtmos::glowlevel * LH3DAtmos::glowlevel / LH3D_ATMOS_ALIGNMENT_FADE_DIVISOR;
		diffuse = LH3D_BLEND_COLOR(diffuse, 0, fade);
		specular = LH3D_BLEND_COLOR(specular, 0, fade);
	}
	if (LightningGlow)
	{
		diffuse = LH3D_BLEND_COLOR(diffuse, SKY_COLOUR_WHITE, LightningGlow);
		specular = LH3D_BLEND_COLOR(specular, SKY_COLOUR_WHITE, LightningGlow / SKY_LIGHTNING_SPECULAR_DIVISOR);
	}
	if (inverseAlpha > 0)
	{
		DrawSky(firstSky, SKY_COLOUR_ALPHA_MAX, diffuse, specular);
		if (alignmentAlpha > 0)
		{
			DrawSky(secondSky, alignmentAlpha, diffuse, specular);
		}
	}
	else
	{
		DrawSky(secondSky, SKY_COLOUR_ALPHA_MAX, diffuse, specular);
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

void LH3DSky::DrawSky(int index, int alpha, int colour, int specular)
{
	sky->SetColorSpecular((colour & SKY_COLOUR_RGB_MASK) + (alpha << SKY_COLOUR_ALPHA_SHIFT), specular);
	LH3DSubMesh*    submesh = skymesh->submeshes[0];
	int             count = submesh->NumPrimitives;
	LH3DPrimitive** primitives = submesh->primitives_;
	for (int i = 0; i < count; ++i)
	{
		memcpy(&primitives[i]->Material, sky_material[index], sizeof(LH3DMaterial));
	}
	sky->SetNeedClipping(true);
	if (alpha != SKY_COLOUR_ALPHA_MAX)
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
	if (!UseDayAndNight())
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
		amount = (int)(sky_type * SKY_BLEND_AMOUNT_MAX);
		first = SKY_TYPE_DAY;
		second = SKY_TYPE_DUSK;
	}
	else
	{
		amount = (int)((sky_type - SKY_TYPE_DUSK) * SKY_BLEND_AMOUNT_MAX);
		first = SKY_TYPE_DUSK;
		second = SKY_TYPE_NIGHT;
	}
	amount = SKY_BLEND_AMOUNT_MAX - amount;
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

void LH3DSky::Interpolate555Texture(uint16_t* dest, uint16_t* source1, uint16_t* source2, uint8_t amount, int width,
                                    int start_y, int num_lines, int pitch)
{
	if (dest == NULL || source1 == NULL || source2 == NULL || num_lines <= 0)
	{
		return;
	}

	source1 += width * start_y;
	source2 += width * start_y;
	dest += start_y * pitch;
	int weight = amount;
	int inverseWeight = SKY_BLEND_AMOUNT_MAX - weight;
	xc_temp = pitch;

	int value, i;
	for (i = 0, value = 0; i < SKY_BLEND_TABLE_SIZE; ++i, value += weight)
	{
		multab0[i] = value >> SKY_BLEND_FRACTION_BITS;
	}
	for (i = 0, value = 0; i < SKY_BLEND_TABLE_SIZE; ++i, value += inverseWeight)
	{
		multab1[i] = value >> SKY_BLEND_FRACTION_BITS;
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
		rgb565Rows:
			mov cl, byte ptr xc_temp
		rgb565Pixels:
			mov ebx, [esi]
			mov edx, [ebp]
			shr ebx, SKY_RGB565_RED_SHIFT
			shr edx, SKY_RGB565_RED_SHIFT
			and ebx, SKY_RGB_CHANNEL_MASK
			and edx, SKY_RGB_CHANNEL_MASK
			mov al, multab0[ebx]
			mov ebx, [esi]
			add al, multab1[edx]
			mov edx, [ebp]
			shr ebx, SKY_RGB_CHANNEL_BITS
			shr edx, SKY_RGB_CHANNEL_BITS
			shl eax, SKY_RGB565_GREEN_BITS
			and ebx, SKY_RGB565_GREEN_MASK
			and edx, SKY_RGB565_GREEN_MASK
			add al, multab0[ebx]
			mov ebx, [esi]
			add al, multab1[edx]
			mov edx, [ebp]
			shl eax, SKY_RGB_CHANNEL_BITS
			and ebx, SKY_RGB_CHANNEL_MASK
			and edx, SKY_RGB_CHANNEL_MASK
			add al, multab0[ebx]
			add esi, TYPE uint16_t
			add ebp, TYPE uint16_t
			add al, multab1[edx]
			mov [edi], ax
			add edi, TYPE uint16_t
			dec cl
			jnz rgb565Pixels
			dec ch
			jnz rgb565Rows
			pop ebp
		}
	}
	else
	{
		__asm
		{
			mov ch, byte ptr num_lines
			push ebp
			mov esi, source1
			mov edi, dest
			mov ebp, source2
		rgb555Rows:
			mov cl, byte ptr xc_temp
		rgb555Pixels:
			mov ebx, [esi]
			mov edx, [ebp]
			shr ebx, SKY_RGB555_RED_SHIFT
			shr edx, SKY_RGB555_RED_SHIFT
			and ebx, SKY_RGB_CHANNEL_MASK
			and edx, SKY_RGB_CHANNEL_MASK
			mov al, multab0[ebx]
			mov ebx, [esi]
			add al, multab1[edx]
			mov edx, [ebp]
			shr ebx, SKY_RGB_CHANNEL_BITS
			shr edx, SKY_RGB_CHANNEL_BITS
			shl eax, SKY_RGB_CHANNEL_BITS
			and ebx, SKY_RGB_CHANNEL_MASK
			and edx, SKY_RGB_CHANNEL_MASK
			add al, multab0[ebx]
			mov ebx, [esi]
			add al, multab1[edx]
			mov edx, [ebp]
			shl eax, SKY_RGB_CHANNEL_BITS
			and ebx, SKY_RGB_CHANNEL_MASK
			and edx, SKY_RGB_CHANNEL_MASK
			add al, multab0[ebx]
			add esi, TYPE uint16_t
			add ebp, TYPE uint16_t
			add al, multab1[edx]
			mov [edi], ax
			add edi, TYPE uint16_t
			dec cl
			jnz rgb555Pixels
			dec ch
			jnz rgb555Rows
			pop ebp
		}
	}
}

void LH3DSky::PostDrawSun()
{
	if (g_alpha_sun == 0.0f || !g_b_pre_draw || g_b_we_are_inside_citadel)
	{
		return;
	}
	g_b_pre_draw = false;
	static float visibility = 0.0f;
	float        newVisibility = GetSunVisibility();
	float        response = LH3DTech::GetGameTimeInc() / SKY_SUN_RESPONSE_TIME;
	visibility += (newVisibility - visibility) * response;
	if (visibility > SKY_SUN_ALPHA_MAX)
	{
		visibility = SKY_SUN_ALPHA_MAX;
	}
	else if (visibility < 0.0f)
	{
		visibility = 0.0f;
	}
	int alpha = (int)(visibility * g_alpha_sun * SKY_SUN_ALPHA_SCALE);
	if (overcast > 0.0f && LH3DIsland::g_b_use_fog)
	{
		alpha = (int)(alpha / (overcast * SKY_SUN_OVERCAST_SCALE + 1.0f));
	}
#if defined(VERSION_BW1WCI)
	alpha = (int)((1.0f - LH3DWideScreen::g_fvalue) * alpha);
#endif
	sunobj->SetColorSpecular((alpha << SKY_COLOUR_ALPHA_SHIFT) | SKY_SUN_COLOUR, 0);
	sunobj->SetPosition(g_sun_pos, PI_F - QUARTER_PI_F, SKY_SUN_SCALE);
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
	if (LH3DLevelOfDetail::g_detail_idx != LH3DLevelOfDetail::DETAIL_PRESET_CONFIG_3 &&
	    LH3DLevelOfDetail::g_detail_idx != LH3DLevelOfDetail::DETAIL_PRESET_CONFIG_4 &&
	    LH3DLevelOfDetail::g_detail_idx != LH3DLevelOfDetail::DETAIL_PRESET_CONFIG_6)
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
	return (1.0f - occludedSamples / ARRAY_SIZE(samples)) * SKY_SUN_ALPHA_MAX;
}

float LH3DSky::GetSunAltitude()
{
	float time = Time2OldSkoolTime(curtime);
	float foldedTime = time;
	if (foldedTime > SKY_SUNSET_TIME)
	{
		foldedTime = SKY_SUNSET_TIME;
	}
	else if (foldedTime < SKY_SUNRISE_TIME)
	{
		foldedTime = SKY_SUNRISE_TIME;
	}
	if (foldedTime > SKY_NOON_TIME)
	{
		foldedTime = SKY_NOON_TIME - (foldedTime - SKY_NOON_TIME);
	}
	float altitude = (foldedTime - SKY_SUNRISE_TIME) * SKY_SUN_ALTITUDE_SCALE;
	g_alpha_sun = SKY_SUN_ALPHA_MAX;
	if (time < SKY_SUNRISE_TIME)
	{
		if (time < SKY_SUN_FADE_START)
		{
			g_alpha_sun = 0.0f;
		}
		else
		{
			g_alpha_sun = (time - SKY_SUN_FADE_START) * SKY_SUN_FADE_SCALE;
		}
	}
	if (time > SKY_SUNSET_TIME)
	{
		if (time > SKY_SUN_FADE_END)
		{
			g_alpha_sun = 0.0f;
		}
		else
		{
			g_alpha_sun = SKY_SUN_ALPHA_MAX - (time - SKY_SUNSET_TIME) * SKY_SUN_FADE_SCALE;
		}
	}
	return altitude * SKY_SUN_ALTITUDE_MAX;
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
		alpha = (int)(alpha / (overcast * SKY_SUN_OVERCAST_SCALE + 1.0f));
	}
	sunobj->SetColorSpecular((alpha << SKY_COLOUR_ALPHA_SHIFT) | SKY_SUN_DISC_COLOUR, 0);
#if defined(VERSION_BW1WCI)
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
#endif
	sunobj->Draw();
#if defined(VERSION_BW1WCI)
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
#endif
	g_b_pre_draw = true;
}

float LH3DSky::ComputeAlphaEclairagePublique()
{
	static float eveningStart = SKY_PUBLIC_LIGHTS_DUSK;
	static float morningEnd = SKY_PUBLIC_LIGHTS_DAWN;
	static float fadeDuration = SKY_PUBLIC_LIGHTS_FADE;
	float        time = Time2OldSkoolTime(curtime);
	if (time > eveningStart)
	{
		if (time > eveningStart + fadeDuration)
		{
			return SKY_SUN_ALPHA_MAX;
		}
		return (time - eveningStart) * SKY_SUN_ALPHA_MAX / fadeDuration;
	}
	if (time > morningEnd)
	{
		return 0.0f;
	}
	if (time < morningEnd - fadeDuration)
	{
		return SKY_SUN_ALPHA_MAX;
	}
	return (morningEnd - time) * SKY_SUN_ALPHA_MAX / fadeDuration;
}
