#include "MapCoordsMeters.h"
#include "SoundInfo.h"
#include "SoundMap.h"
#include "GameTimeConstants.h"

#include <math.h>

#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DSky.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>

#include "AtmosTypeInfo.h"
#include "Camera.h"
#include "Game.h"
#include "Global.h"
#include "Interface.h"
#include "TerrainMaterialInfo.h"
#include "Utils.h"

#include <chlasm/Enum.h>

#define SOUND_MAP_DEBUG_CATEGORY 1

#define ATMOS_MAP_NO_DISTANCE    65535.0f
#define WEATHER_PERCENTAGE_SCALE 100.0f
#define WIND_VOLUME_MIN_SPEED    15.0
#define WIND_VOLUME_SPEED_RANGE  30.0
#define WIND_VOLUME_SILENT       0.01f

// BW1W120 00c22270
static char* SurfaceTypeNames[SOUND_SURFACE_TYPE_LAST + 1] = {
	"SOUND SURFACE TYPE NONE",          //
	"SOUND SURFACE TYPE GRASS",         //
	"SOUND SURFACE TYPE GRAVEL",        //
	"SOUND SURFACE TYPE HARD",          //
	"SOUND SURFACE TYPE MUD",           //
	"SOUND SURFACE TYPE SNOW",          //
	"SOUND SURFACE TYPE DEEP WATER",    //
	"SOUND SURFACE TYPE SHALLOW WATER", //
	"SOUND SURFACE TYPE LOOSE FOLIAGE", //
	"SOUND SURFACE TYPE LAST",          //
};

void AtmosMapInfo::Clear()
{
	for (int i = 0; i < NUM_ATMOS_TYPES; i++)
	{
		Types[i].Count = 0;
		Types[i].Distance = ATMOS_MAP_NO_DISTANCE;
	}
}

void AtmosMapTypeInfo::Add(const MapCoords& receiver, const MapCoords& coords)
{
	float dz = receiver.MetersZ() - coords.MetersZ();
	float dx = receiver.MetersX() - coords.MetersX();
	float distance = dx * dx + dz * dz;
	if (distance < Distance)
	{
		Distance = distance;
		NearestX = coords.MetersX();
		NearestZ = coords.MetersZ();
	}
	Count++;
}

float GSoundMap::GetAtmosDistance(ATMOS_TYPE type)
{
	return sqrt(AtmosMap.GetInfo(type)->Distance);
}

void GSoundMap::GetAtmosPoint(ATMOS_TYPE type, LHPoint* point)
{
	AtmosMapTypeInfo* info = AtmosMap.GetInfo(type);
	point->Set(info->NearestX, 0.0f, info->NearestZ);
}

GSoundInfo GSoundInfo::Info;

void GSoundMap::Reset()
{
	AtmosMap.Clear();
	TotalCount = 0;
}

void GSoundMap::Update()
{
	CalculateRadiusPointAndDistance();
	UpdateFromMap(Coords);
	CalculateAtmosVolumes(Coords);
}

void GSoundMap::UpdateFromMap(const MapCoords& coords)
{
	MapCoords     low = coords;
	MapCoords     high = coords;
	MapCoords     cell;
	unsigned long distance = GUtils::ConvertDistance3DToGame(Radius);
	low -= distance;
	high += distance;
	Reset();
	for (int x = (int16_t)low.MapX(); x <= (int16_t)high.MapX(); x++)
	{
		for (int z = (int16_t)low.MapZ(); z <= (int16_t)high.MapZ(); z++)
		{
			ATMOS_TYPE type = Terrain::GetAtmosType(x, z);
			cell.SetupMapXZ(x, z);
			AddAtmosType(type, cell);
		}
	}
}

void GSoundMap::CalculateRadiusPointAndDistance()
{
	GCamera* camera = GGame::g_game->GetCamera();
	ReceiverPos = *LH3DTech::GetCameraPosition();
	LHPoint& pos = ReceiverPos;
	Coords.SetX(pos.x);
	Coords.SetZ(pos.z);
	Coords.SetAltitude(0.0f);
	ReceiverHeight = ReceiverPos.y;
	LHPoint receiver = GetReceiverPos();
	HeightAboveLand = ReceiverHeight - LH3DIsland::GetAltitude(receiver);
	Radius = GSoundInfo::Info.AtmosZeroVolumeDistance;
}

int GSoundMap::GetSurfaceType(const MapCoords& coords)
{
	uint16_t x = coords.MapX();
	uint16_t z = coords.MapZ();
	if (LH3DIsland::GetCell(x, z) == NULL)
	{
		return SOUND_SURFACE_TYPE_DEEP_WATER;
	}
	if (!coords.IsLand())
	{
		return SOUND_SURFACE_TYPE_SHALLOW_WATER;
	}
	int type = Terrain::GetMaterialInfo(x, z)->SoundSurfaceType;
	if (type <= SOUND_SURFACE_TYPE_NONE || type >= SOUND_SURFACE_TYPE_LAST)
	{
		type = SOUND_SURFACE_TYPE_HARD;
	}
	return type;
}

void GSoundMap::Dump()
{
	GGlobal::Global.debug.SetMessage(SOUND_MAP_DEBUG_CATEGORY, "Sound Map Calc Update X=%d Z=%d %s Count=%d",
	                                 Coords.MapX(), Coords.MapZ(), SurfaceTypeNames[GetSurfaceType(Coords)],
	                                 TotalCount);
	if (GGame::g_game != NULL && GGame::g_game->MyInterface() != NULL)
	{
		MapCoords& handPos = GGame::g_game->MyInterface()->GetHandRenderCollidePos();
		MapCoords  hand;
		hand.SetWholeX(handPos.WholeX());
		hand.SetWholeZ(handPos.WholeZ());
		hand.SetAltitude(handPos.Altitude());
		GGlobal::Global.debug.SetMessage(SOUND_MAP_DEBUG_CATEGORY, "Sound Map At Hand X=%d Z=%d %s Count=%d",
		                                 hand.MapX(), hand.MapZ(), SurfaceTypeNames[GetSurfaceType(hand)], TotalCount);
	}
	GGlobal::Global.debug.SetMessage(SOUND_MAP_DEBUG_CATEGORY,
	                                 "Sound Radius=%3.3f Distance=%3.3f DistanceAboveLand=%3.3f", Radius,
	                                 ReceiverHeight, HeightAboveLand);
}

float GSoundMap::GetVolumePercentageForHeight(const LHPoint& pos)
{
	float height = ReceiverPos.y - LH3DIsland::GetAltitude(pos);
	if (height < GSoundInfo::Info.LandFullVolumeHeight)
	{
		return 1.0f;
	}
	float volume;
	if (height <= GSoundInfo::Info.LandZeroVolumeHeight)
	{
		volume = 1.0f - (height - GSoundInfo::Info.LandFullVolumeHeight) /
		                    (GSoundInfo::Info.LandZeroVolumeHeight - GSoundInfo::Info.LandFullVolumeHeight);
		volume = max(0.0f, volume);
	}
	else
	{
		volume = 0.0f;
	}
	return volume;
}

void GSoundMap::CalculateAtmosWeightings(float* normal, float* atmosphere, float* sea)
{
	float heightAboveSea = ReceiverHeight;
	float heightAboveLand = HeightAboveLand;

	if (heightAboveLand < GSoundInfo::Info.LandFullVolumeHeight)
	{
		*normal = 1.0f;
	}
	else if (heightAboveLand > GSoundInfo::Info.LandZeroVolumeHeight)
	{
		*normal = 0.0f;
	}
	else
	{
		*normal = 1.0f - (heightAboveLand - GSoundInfo::Info.LandFullVolumeHeight) /
		                     (GSoundInfo::Info.LandZeroVolumeHeight - GSoundInfo::Info.LandFullVolumeHeight);
		*normal = max(0.0f, *normal);
	}

	if (heightAboveSea < GSoundInfo::Info.LandFullVolumeHeight)
	{
		*sea = 1.0f;
	}
	else if (heightAboveSea > GSoundInfo::Info.LandZeroVolumeHeight)
	{
		*sea = 0.0f;
	}
	else
	{
		*sea = 1.0f - (heightAboveSea - GSoundInfo::Info.LandFullVolumeHeight) /
		                  (GSoundInfo::Info.LandZeroVolumeHeight - GSoundInfo::Info.LandFullVolumeHeight);
		*sea = max(0.0f, *sea);
	}

	if (heightAboveLand < GSoundInfo::Info.AtmosphereStartHeight)
	{
		*atmosphere = 0.0f;
	}
	else if (heightAboveLand < GSoundInfo::Info.AtmosphereFullHeight)
	{
		*atmosphere = (heightAboveLand - GSoundInfo::Info.AtmosphereStartHeight) /
		              (GSoundInfo::Info.AtmosphereFullHeight - GSoundInfo::Info.AtmosphereStartHeight);
		*atmosphere = min(1.0f, *atmosphere);
	}
	else if (heightAboveLand < GSoundInfo::Info.AtmosphereEndHeight)
	{
		*atmosphere = 1.0f - (heightAboveLand - GSoundInfo::Info.AtmosphereFullHeight) /
		                         (GSoundInfo::Info.AtmosphereEndHeight - GSoundInfo::Info.AtmosphereFullHeight);
		*atmosphere = max(0.0f, *atmosphere);
	}
	else
	{
		*atmosphere = 0.0f;
	}
}

void GSoundMap::CalculateAtmosVolumes(const MapCoords& coords)
{
	float normal;
	float atmosphere;
	float sea;
	CalculateAtmosWeightings(&normal, &atmosphere, &sea);
	GGlobal::Global.debug.SetMessage(
		SOUND_MAP_DEBUG_CATEGORY, "Dist from Atmosphere =%2.2f Distance above sea=%2.2f Dist above land =%2.2f",
		GSoundInfo::Info.AtmosphereStartHeight - ReceiverHeight, ReceiverHeight, HeightAboveLand);
	GGlobal::Global.debug.SetMessage(SOUND_MAP_DEBUG_CATEGORY,
	                                 "Normal Atmos Vol %%%1.2f Atmos Atmos %%%1.2f Sea Atmos Volume%%%1.2f", normal,
	                                 atmosphere, sea);

	float night = LH3DSky::newst - 1.0f;
	if (night < 0.0f)
	{
		night = 0.0f;
	}

	float        weather = 1.0f;
	WeatherInfo* weatherInfo = &GGame::g_game->GetCamera()->Weather;
	if (weatherInfo->Snow > 0)
	{
		weather = 1.0f - weatherInfo->Snow / WEATHER_PERCENTAGE_SCALE;
	}
	weather -= weatherInfo->Rain / WEATHER_PERCENTAGE_SCALE;
	if (weather < 0.0f)
	{
		weather = 0.0f;
	}
	float silence = GSoundInfo::Info.WeatherSilencePercentage / WEATHER_PERCENTAGE_SCALE;
	float bad = 1.0f - weather;
	if (bad < silence)
	{
		weather = 1.0f - bad / silence;
	}
	else
	{
		weather = 0.0f;
	}

	float wind = (sqrt(weatherInfo->WindX * weatherInfo->WindX + weatherInfo->WindZ * weatherInfo->WindZ) -
	              WIND_VOLUME_MIN_SPEED) /
	             WIND_VOLUME_SPEED_RANGE;
	if (wind > 1.0f)
	{
		wind = 1.0f;
	}
	else if (wind < WIND_VOLUME_SILENT)
	{
		wind = 0.0f;
	}

	Volumes[ATMOS_TYPE_STRATOSPHERE] = atmosphere;
	Volumes[ATMOS_TYPE_NONE] = 0.0f;

	float volume;
	for (uint32_t i = ATMOS_TYPE_SEA; i <= ATMOS_TYPE_RUNNING_WATER; i++)
	{
		if (AtmosMap.GetInfo((ATMOS_TYPE)i)->GetCount() != 0)
		{
			float distance = GetAtmosDistance((ATMOS_TYPE)i);
			if (distance <= GSoundInfo::Info.AtmosFullVolumeDistance)
			{
				volume = 1.0f;
			}
			else
			{
				volume = max(0.0f, 1.0f - (distance - GSoundInfo::Info.AtmosFullVolumeDistance) /
				                              (GSoundInfo::Info.AtmosZeroVolumeDistance -
				                               GSoundInfo::Info.AtmosFullVolumeDistance));
			}
			if (AtmosTypeInfo::Types[i].ScaleVolume)
			{
				volume *= weather;
				volume *= 1.0f - night;
			}
			LHPoint point;
			GetAtmosPoint((ATMOS_TYPE)i, &point);
			Volumes[i] = GetVolumePercentageForHeight(point) * volume;
		}
		else
		{
			Volumes[i] = 0.0f;
		}
	}

	float coastal;
	if (AtmosMap.GetInfo(ATMOS_TYPE_COASTAL)->GetCount() != 0)
	{
		float distance = GetAtmosDistance(ATMOS_TYPE_COASTAL);
		if (distance <= GSoundInfo::Info.AtmosFullVolumeDistance)
		{
			coastal = 1.0f;
		}
		else
		{
			coastal = max(
				0.0f, 1.0f - (distance - GSoundInfo::Info.AtmosFullVolumeDistance) /
								 (GSoundInfo::Info.AtmosZeroVolumeDistance - GSoundInfo::Info.AtmosFullVolumeDistance));
		}
		LHPoint point;
		GetAtmosPoint(ATMOS_TYPE_COASTAL, &point);
		Volumes[ATMOS_TYPE_COASTAL] = GetVolumePercentageForHeight(point) * coastal;
	}
	else
	{
		Volumes[ATMOS_TYPE_COASTAL] = 0.0f;
		coastal = 0.0f;
	}

	if (AtmosMap.GetInfo(ATMOS_TYPE_SEA)->GetCount() != 0)
	{
		float distance = GetAtmosDistance(ATMOS_TYPE_SEA);
		float seaVolume;
		if (distance <= GSoundInfo::Info.AtmosFullVolumeDistance)
		{
			seaVolume = 1.0f;
		}
		else
		{
			seaVolume = max(
				0.0f, 1.0f - (distance - GSoundInfo::Info.AtmosFullVolumeDistance) /
								 (GSoundInfo::Info.AtmosZeroVolumeDistance - GSoundInfo::Info.AtmosFullVolumeDistance));
		}
		seaVolume = min(seaVolume, 1.0f - coastal);
		LHPoint point;
		GetAtmosPoint(ATMOS_TYPE_SEA, &point);
		Volumes[ATMOS_TYPE_SEA] = GetVolumePercentageForHeight(point) * seaVolume;
	}
	else
	{
		Volumes[ATMOS_TYPE_SEA] = 0.0f;
	}

	float land = 1.0f - GetPercentage(ATMOS_TYPE_SEA);
	float height = GetVolumePercentageForHeight(ReceiverPos);
	Volumes[ATMOS_TYPE_NIGHT] = height * land * weather * night;

	float rain = weatherInfo->Rain;
	if (rain >= GSoundInfo::Info.RainFullVolume)
	{
		Volumes[ATMOS_TYPE_RAIN] = 1.0f;
	}
	else
	{
		Volumes[ATMOS_TYPE_RAIN] = rain / GSoundInfo::Info.RainFullVolume;
	}

	if (wind >= 1.0f)
	{
		Volumes[ATMOS_TYPE_WIND] = 1.0f;
	}
	else
	{
		Volumes[ATMOS_TYPE_WIND] = (float)(wind / 1.0);
	}
}

float GSoundMap::GetPercentage(ATMOS_TYPE type)
{
	if (TotalCount > 0)
	{
		float count = AtmosMap.GetInfo(type)->GetCount();
		float total = TotalCount;
		return count / total;
	}
	return 0.0f;
}

void GSoundMap::AddAtmosType(ATMOS_TYPE type, const MapCoords& coords)
{
	AtmosMap.GetInfo(type)->Add(Coords, coords);
	if (type != ATMOS_TYPE_NONE)
	{
		TotalCount++;
	}
}
