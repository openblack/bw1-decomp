#include "Weather.h"

#include <math.h>
#include <stdio.h>
#include <string.h>

#include "Climate.h"
#include "ClimateInfo.h"
#include "Game.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "Rand.h"
#include "Setup.h"
#include "Utils.h"
#include "WeatherInfo.h"
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

static_assert(sizeof(GClimate) == 0x88, "GClimate size is incorrect");
static_assert(sizeof(StormInfo) == 0x50, "StormInfo size is incorrect");
static_assert(sizeof(LH3DStorm) == 0x3c0, "LH3DStorm size is incorrect");
static_assert(sizeof(GWeather) == 0x3c8, "GWeather size is incorrect");
static_assert(sizeof(GClimateInfo) == 0xa0, "GClimateInfo size is incorrect");

// TODO: Shared declarations/layouts are integrated; external symbol mappings and original-compiler
// verification remain pending. See RE/Weather-surface.md. Keep the unit NonMatching until a fresh
// object/relocation audit is complete.

// Descriptive names for original Weather.cpp storage; ownership is established by the
// constructors, ProcessAll, and Save/Load. The Mac member spellings are not recovered.
bool     GClimate::StormCreationEnabled = true;  // 00c24758
bool     GClimate::ClimateUpdatesEnabled = true; // 00c24759
int      GClimate::NextClimateId = 1;            // 00c2475c
int      GClimate::LastUpdateTime;               // 00dcb8b8
uint32_t GClimate::LastSeason;                   // 00dcb8bc
uint32_t GClimate::CurrentSeason;                // 00dcb8c0

// Both tables are constructed in this TU, despite the separate info-loader source files.
GWeatherInfo GWeatherInfo::Info[7]; // 00dcb5f8, stride 0x64
GClimateInfo GClimateInfo::Info[7]; // 00dcb198, stride 0xa0

GBaseInfo* GWeatherInfo::GetBaseInfo(uint32_t& count)
{
	count = 7;
	return Info;
}

GWeatherInfo::~GWeatherInfo() {}

GWeather::GWeather(StormInfo& info) : LH3DStorm(info)
{
	field_0x3c0 = 0;
}

GWeather::~GWeather() {}

GWeather* GWeather::CreateWeather(LHPoint point, float param_2, float param_3, float param_4, const GWeatherInfo* info)
{
	StormInfo stormInfo(point, param_2, param_3);
	// Preset words at 0x4c..0x60 contribute their low bytes to the atmosphere cell.
	// The table's remaining fields have not yet been named in its shared declaration.
	stormInfo.Weather.field_0x3 = info->field_0x10[0x48];
	stormInfo.Weather.field_0x0 = info->field_0x10[0x3c];
	stormInfo.Weather.field_0x1 = info->field_0x10[0x40];
	stormInfo.Weather.field_0x2 = info->field_0x10[0x44];
	stormInfo.Weather.WindX = info->field_0x10[0x4c];
	stormInfo.Weather.WindZ = info->field_0x10[0x50];
	stormInfo.field_0x28 = 500.0f;
	stormInfo.field_0x18 = param_4;
	return CreateWeather(stormInfo);
}

GWeather* GWeather::CreateWeather(StormInfo& info)
{
	GWeather* weather = new ("C:\\dev\\MP\\Black\\Weather.cpp", 63) GWeather(info);
	if (weather != NULL)
	{
		return weather;
	}
	return NULL;
}

GBaseInfo* GClimateInfo::GetBaseInfo(uint32_t& count)
{
	count = 7;
	return Info;
}

GClimateInfo::~GClimateInfo() {}

GClimate::GClimate(int param_1)
{
	if (GGame::g_game->climate != NULL)
	{
		GGame::g_game->climate->ToBeDeleted(0);
		GGame::g_game->climate = NULL;
	}
	Info = GClimateInfo::Info;
	Rain.Init(Info->field_0x40[GGameInfo::Info.GetSeason()], Info->field_0x50[GGameInfo::Info.GetSeason()]);
	Temperature.Init(Info->field_0x60[GGameInfo::Info.GetSeason()], Info->field_0x70[GGameInfo::Info.GetSeason()]);
	Wind.Init();
	InnerRadius = 5120.0f;
	OuterRadius = 5120.0f;
	Position.x = 256 << 16;
	Position.z = 256 << 16;
	Position.altitude = 0.0f;
	ClimateId = 0;
	Flags |= 1;
	MaxStorms = 10;
	GGame::g_game->climate = this;
	field_0x80 = 60.0f;
	field_0x7c = 5.0f;
	field_0x78 = 60.0f;
	field_0x74 = 5.0f;
	field_0x70 = 1.0f;
	field_0x68 = 500;
	field_0x6c = Info->field_0x90[CurrentSeason] * (1.0 / 30.0) + 0.5;
	// The target leaves field_0x30 and field_0x84 untouched in this constructor.
}

GClimate::GClimate(const MapCoords& position, const GClimateInfo* info, float inner_radius, float outer_radius,
                   float param_5, int climate_id)
{
	Position = position;
	Info = info;
	InnerRadius = inner_radius;
	OuterRadius = outer_radius;
	if (inner_radius > outer_radius)
	{
		InnerRadius = outer_radius;
		OuterRadius = inner_radius;
	}
	Rain.Init(Info->field_0x40[GGameInfo::Info.GetSeason()], Info->field_0x50[GGameInfo::Info.GetSeason()]);
	Temperature.Init(Info->field_0x60[GGameInfo::Info.GetSeason()], Info->field_0x70[GGameInfo::Info.GetSeason()]);
	Wind.Init();
	Wind.field_0x8 = param_5;
	// This uses the argument, not the possibly swapped OuterRadius member.
	MaxStorms = (uint32_t)(outer_radius * 0.001f + 1.0f);
	Flags &= ~1;
	if (NextClimateId == climate_id)
	{
		ClimateId = NextClimateId++;
	}
	else
	{
		if (NextClimateId < climate_id)
		{
			NextClimateId = climate_id + 1;
		}
		ClimateId = climate_id;
	}
	field_0x7c = 5.0f;
	field_0x74 = 5.0f;
	field_0x70 = 1.0f;
	field_0x80 = 60.0f;
	field_0x78 = 60.0f;
	field_0x68 = 500;
	field_0x84 = 0;
	field_0x6c = Info->field_0x90[CurrentSeason] * (1.0 / 30.0) + 0.5;
}

GClimate* GClimate::Create(const MapCoords& position, const GClimateInfo* info, float inner_radius, float outer_radius,
                           float param_5, int climate_id)
{
	GClimate* climate;
	if (climate_id == 0)
	{
		climate = new ("C:\\dev\\MP\\Black\\Weather.cpp", 212) GClimate(0);
	}
	else
	{
		climate = new ("C:\\dev\\MP\\Black\\Weather.cpp", 216)
			GClimate(position, info, inner_radius, outer_radius, param_5, climate_id);
	}
	if (climate != NULL)
	{
		GGame::g_game->GameLists.climates.Add(climate);
	}
	return climate;
}

GClimate::~GClimate() {}

void GClimate::ToBeDeleted(int param_1)
{
	GGame::g_game->GameLists.climates.Remove(this);
	while (Storms.GetStart() != NULL)
	{
		LH3DStorm* storm = Storms.GetStart()->payload;
		Storms.Remove(storm);
		delete storm;
	}
	GameThing::ToBeDeleted(param_1);
}

WeatherInfo GClimate::GetWeather(const LHPoint& point, bool smooth)
{
	return ComputeWeather(point, smooth);
}

bool GClimate::IsRaining(const LHPoint& point)
{
	if (GGame::g_game->climate == NULL)
	{
		return false;
	}
	return (signed char)GetWeather(point, false).field_0x1 > 0;
}

bool GClimate::IsSnowing(const LHPoint& point)
{
	if (GGame::g_game->climate == NULL)
	{
		return false;
	}
	return (signed char)GetWeather(point, false).field_0x2 > 0;
}

float GClimate::GetRain(const LHPoint& point)
{
	if (GGame::g_game->climate == NULL)
	{
		return 0.0f;
	}
	return (signed char)GetWeather(point, false).field_0x1;
}

float GClimate::GetSnow(const LHPoint& point)
{
	if (GGame::g_game->climate == NULL)
	{
		return 0.0f;
	}
	// Snow cover (+6), unlike the falling snow test in IsSnowing (+2).
	return (signed char)GetWeather(point, false).field_0x6;
}

float GClimate::GetMaxRainingOrSnowing(const LHPoint& point)
{
	WeatherInfo weather = GetWeather(point, false);
	signed char rain = (signed char)weather.field_0x1;
	signed char snow = (signed char)weather.field_0x6;
	return snow > rain ? snow : rain;
}

// Descriptive helper for the inlined signed-byte saturation at 00771908..00771a2f.
static signed char ClampWeatherByte(int value)
{
	if (value < -128)
	{
		return -128;
	}
	if (value > 127)
	{
		return 127;
	}
	return (signed char)value;
}

WeatherInfo GClimate::ComputeWeather(const LHPoint& point, bool smooth)
{
	if (GGame::g_game->climate == NULL)
	{
		// TODO: The original default factory is called with a null reference address.
		// Use a real unused coordinate here; do not reproduce undefined C++ reference binding.
		MapCoords unused;
		GGame::g_game->climate = Create(unused, NULL, 0.0f, 0.0f, 0.0f, 0);
	}
	WeatherInfo atmosphere = smooth ? LH3DAtmos::GetWeatherSmooth(point, 1) : LH3DAtmos::GetWeather(point, 1);
	GClimate*   climate = GGame::g_game->climate;
	WeatherInfo weather = {0};
	weather.field_0x0 = (signed char)climate->Temperature.ActualTemp;
	weather.WindX += climate->Wind.WindX;
	weather.WindZ += climate->Wind.WindZ;
	climate = NULL;
	while ((climate = GGame::g_game->GameLists.climates.FindNext(climate)) != NULL)
	{
		LHPoint centre = climate->Position.GetLHPoint();
		if (centre.x - climate->OuterRadius <= point.x && centre.x + climate->OuterRadius >= point.x &&
		    centre.z - climate->OuterRadius <= point.z && centre.z + climate->OuterRadius >= point.z)
		{
			float dx = point.x - centre.x;
			float dz = point.z - centre.z;
			float distanceSq = dx * dx + dz * dz;
			if (distanceSq <= climate->OuterRadius * climate->OuterRadius)
			{
				float weight;
				if (distanceSq <= climate->InnerRadius * climate->InnerRadius)
				{
					weight = 1.0f;
				}
				else
				{
					weight = 1.0f -
					         (sqrt(distanceSq) - climate->InnerRadius) / (climate->OuterRadius - climate->InnerRadius);
				}
				signed char temperature = (signed char)climate->Temperature.ActualTemp;
				signed char windX = (signed char)climate->Wind.WindX;
				signed char windZ = (signed char)climate->Wind.WindZ;
				if (weight <= 0.0f)
				{
					weight = 0.0f;
				}
				else if (weight >= 1.0f)
				{
					weight = 1.0f;
				}
				// Each contribution is truncated back to a byte before the next climate.
				weather.field_0x0 = (signed char)((signed char)weather.field_0x0 + temperature * weight);
				weather.WindX += windX * weight;
				weather.WindZ += windZ * weight;
			}
		}
	}
	weather.field_0x0 = ClampWeatherByte((signed char)atmosphere.field_0x0 + (signed char)weather.field_0x0);
	weather.WindX = ClampWeatherByte(atmosphere.WindX + weather.WindX);
	weather.WindZ = ClampWeatherByte(atmosphere.WindZ + weather.WindZ);
	weather.field_0x6 = ClampWeatherByte((signed char)atmosphere.field_0x6 + (signed char)weather.field_0x6);
	weather.field_0x2 = ClampWeatherByte((signed char)atmosphere.field_0x2 + (signed char)weather.field_0x2);
	weather.field_0x1 = ClampWeatherByte((signed char)atmosphere.field_0x1 + (signed char)weather.field_0x1);
	weather.field_0x3 = ClampWeatherByte((signed char)atmosphere.field_0x3 + (signed char)weather.field_0x3);
	return weather;
}

void GClimate::MoveStormByWind(LH3DStorm* storm, float scale)
{
	WeatherInfo weather = ComputeWeather(storm->Info.Position, false);
	storm->Info.Position.x += weather.WindX * scale;
	storm->Info.Position.z += weather.WindZ * scale;
}

float GClimate::GetTemp(const LHPoint* point)
{
	return (signed char)ComputeWeather(*point, false).field_0x0;
}

float GClimate::GetWindX(const LHPoint* point)
{
	return ComputeWeather(*point, false).WindX;
}

float GClimate::GetWindZ(const LHPoint* point)
{
	return ComputeWeather(*point, false).WindZ;
}

LHPoint GClimate::GetWindAtPoint(const LHPoint* point, bool smooth)
{
	WeatherInfo weather = GetWeather(*point, smooth);
	LHPoint     wind;
	wind.x = weather.WindX * 0.125f;
	wind.y = 0.0f;
	wind.z = weather.WindZ * 0.125f;
	return wind;
}

// TODO: ProcessAll (00771be0) and DrawCircles (00772670) still need their diagnostic
// and renderer dependencies. See the full unit inventory.

void GClimate::Process(bool update_time)
{
	if (GGame::g_game->climate == NULL)
	{
		MapCoords unused;
		GGame::g_game->climate = Create(unused, NULL, 0.0f, 0.0f, 0.0f, 0);
	}
	if (ClimateUpdatesEnabled)
	{
		Temperature.Process(Info->field_0x60[CurrentSeason], Info->field_0x70[CurrentSeason]);
	}
	LH3DStorm* storm = Storms.FindNext(NULL);
	while (storm != NULL)
	{
		if (!LH3DStorm::ValidateStormPointer(storm))
		{
			Storms.Remove(storm);
			if (Storms.count == 0)
			{
				Rain.Flags &= ~1;
			}
			else
			{
				storm = Storms.FindNext(NULL);
			}
		}
		else
		{
			WeatherInfo weather = LH3DAtmos::GetWeather(storm->Info.Position, 1);
			storm->Info.Position.x += weather.WindX * 0.01f;
			storm->Info.Position.z += weather.WindZ * 0.01f;
			if (update_time)
			{
				bool leaveClimate = false;
				if ((Flags & 1) == 0)
				{
					LHPoint centre;
					centre.x = (uint16_t)(Position.x >> 16) * 10.0f;
					centre.y = 0.0f;
					centre.z = (uint16_t)(Position.z >> 16) * 10.0f;
					leaveClimate = GUtils::GetDistance(centre, storm->Info.Position) > OuterRadius;
				}
				else
				{
					GClimate* climate = NULL;
					while ((climate = GGame::g_game->GameLists.climates.FindNext(climate)) != NULL)
					{
						LHPoint centre;
						centre.x = (uint16_t)(climate->Position.x >> 16) * 10.0f;
						centre.y = 0.0f;
						centre.z = (uint16_t)(climate->Position.z >> 16) * 10.0f;
						if (GUtils::GetDistance(centre, storm->Info.Position) < climate->OuterRadius &&
						    storm->Age < storm->Info.field_0x18 - 2.0f * storm->Info.field_0x14)
						{
							leaveClimate = true;
							break;
						}
					}
				}
				if (leaveClimate && storm->Age < storm->Info.field_0x18 - 2.0f * storm->Info.field_0x14)
				{
					storm->Age = storm->Info.field_0x18 - 2.0f * storm->Info.field_0x14;
					Rain.Desire = 1.0f;
				}
				if (Info->field_0x50[CurrentSeason] < Rain.RainingTurns * 0.01 &&
				    storm->Age < storm->Info.field_0x18 - 2.0f * storm->Info.field_0x14)
				{
					storm->Age = storm->Info.field_0x18 - 2.0f * storm->Info.field_0x14;
				}
			}
		}
		// Preserve the target's find-by-payload iteration, including its restart/advance
		// after invalidating a storm. A node iterator changes that behaviour.
		storm = Storms.FindNext(storm);
	}
	if (update_time && ClimateUpdatesEnabled)
	{
		Rain.Process(Info->field_0x40[CurrentSeason], Info->field_0x50[CurrentSeason]);
		Wind.Process(Info->field_0x80[CurrentSeason], Info->field_0x90[CurrentSeason], Rain.Desire);
		if (Rain.Desire == 1.0f && StormCreationEnabled)
		{
			CreateStorm();
		}
	}
}

void GClimate::SaveClimate(LHOSFile& file, const MapCoords* origin)
{
	// The Mac symbol says const MapCoords&, but Windows deliberately accepts a null
	// address for absolute coordinates. Retain that nullable Windows interface.
	MapCoords position;
	if (origin == NULL)
	{
		position = Position;
	}
	else
	{
		position = Position - *origin;
	}
	int infoIndex = -1;
	for (int i = 0; i < 7; ++i)
	{
		if (Info == &GClimateInfo::Info[i])
		{
			infoIndex = i;
			break;
		}
	}
	char buffer[256];
	char positionText[204];
	sprintf(buffer, GSetup::GetCommandAsText((SCRIPT_FEATURE_COMMANDS)0x3c), ClimateId, infoIndex,
	        position.ConvertToText(positionText), InnerRadius, OuterRadius);
	file.Write(buffer, strlen(buffer), NULL);
	sprintf(buffer, GSetup::GetCommandAsText((SCRIPT_FEATURE_COMMANDS)0x3d), ClimateId, Rain.Desire, Rain.field_0x4,
	        Rain.RainingTurns, (unsigned int)Rain.Flags);
	file.Write(buffer, strlen(buffer), NULL);
	sprintf(buffer, GSetup::GetCommandAsText((SCRIPT_FEATURE_COMMANDS)0x3e), ClimateId, Temperature.ActualTemp,
	        Temperature.GoalTemp);
	file.Write(buffer, strlen(buffer), NULL);
	sprintf(buffer, GSetup::GetCommandAsText((SCRIPT_FEATURE_COMMANDS)0x3f), ClimateId, Wind.WindX, Wind.WindZ,
	        Wind.field_0x8);
	file.Write(buffer, strlen(buffer), NULL);
	LH3DStorm* storm = NULL;
	while ((storm = Storms.FindNext(storm)) != NULL)
	{
		MapCoords stormPosition;
		stormPosition.x = (int)(storm->Info.Position.x * 6553.6f);
		stormPosition.z = (int)(storm->Info.Position.z * 6553.6f);
		stormPosition.altitude = 0.0f;
		MapCoords previousPosition;
		previousPosition.x = (int)(storm->PreviousPosition.x * 6553.6f);
		previousPosition.z = (int)(storm->PreviousPosition.z * 6553.6f);
		previousPosition.altitude = 0.0f;
		char stormText[256];
		char lightningText[256];
		char weatherText[256];
		char stormPositionText[100];
		char previousPositionText[100];
		sprintf(stormText, "\"%.02f,%.02f,%.02f,%.02f,%.02f,%.02f\"", storm->Info.field_0xc, storm->Info.field_0x10,
		        storm->Info.field_0x14, storm->Info.field_0x18, storm->Info.field_0x1c, storm->Info.field_0x2c);
		sprintf(lightningText, "\"%.02f,%.02f,%.02f,%.02f,%.02f,%.02f\"", storm->Info.field_0x24,
		        storm->Info.field_0x28, storm->Info.field_0x38, storm->Info.field_0x3c, storm->Info.field_0x30,
		        storm->Info.field_0x34);
		sprintf(weatherText, "\"%d,%d,%d,%d,%d,%d\"", (signed char)storm->Info.Weather.field_0x3,
		        (signed char)storm->Info.Weather.field_0x2, (signed char)storm->Info.Weather.field_0x0,
		        (signed char)storm->Info.Weather.field_0x1, storm->Info.Weather.WindX, storm->Info.Weather.WindZ);
		sprintf(buffer, GSetup::GetCommandAsText((SCRIPT_FEATURE_COMMANDS)0x40), ClimateId,
		        stormPosition.ConvertToText(stormPositionText), storm->Age, storm->Info.field_0x20, stormText,
		        lightningText, weatherText, storm->field_0x68, previousPosition.ConvertToText(previousPositionText));
		file.Write(buffer, strlen(buffer), NULL);
	}
}

uint32_t GClimate::SaveAllObjectTextFile(LHOSFile& file, const MapCoords* origin)
{
	GClimate* climate = NULL;
	while ((climate = GGame::g_game->GameLists.climates.FindNext(climate)) != NULL)
	{
		climate->SaveClimate(file, origin);
	}
	return 1;
}

MapCoords GClimate::FindWhereToCreateStorm()
{
	MapCoords position;
	uint32_t  attempts = 0;
	for (;;)
	{
		bool outsideClimate = true;
		if ((Flags & 1) == 0)
		{
			float angle = GRand::GameFloatRand(6.2831855f, "C:\\dev\\MP\\Black\\Weather.cpp", 868);
			float radius = GRand::GameFloatRand(1.0f, "C:\\dev\\MP\\Black\\Weather.cpp", 870);
			radius = radius * radius * InnerRadius * 0.1f;
			position.x = (uint16_t)(int)((uint16_t)(Position.x >> 16) + cos(angle) * radius) << 16;
			position.z = (uint16_t)(int)((uint16_t)(Position.z >> 16) + sin(angle) * radius) << 16;
			position.altitude = 0.0f;
		}
		else
		{
			position.x = (uint16_t)GRand::GameRand(512, "C:\\dev\\MP\\Black\\Weather.cpp", 888) << 16;
			position.z = (uint16_t)GRand::GameRand(512, "C:\\dev\\MP\\Black\\Weather.cpp", 889) << 16;
			position.altitude = 0.0f;
			GClimate* climate = NULL;
			while ((climate = GGame::g_game->GameLists.climates.FindNext(climate)) != NULL)
			{
				LHPoint point = position.GetLHPoint();
				LHPoint centre = climate->Position.GetLHPoint();
				GUtils::GetDistance(point, centre);
				// The original compares against this climate's outer radius, not the iterated one.
				if (GUtils::GetDistance(point, centre) < OuterRadius)
				{
					outsideClimate = false;
					break;
				}
			}
		}
		++attempts;
		if (!outsideClimate || attempts >= 20 || position.IsWater() != 1)
		{
			return position;
		}
	}
}

void GClimate::CreateStorm()
{
	if (!(Rain.RainingTurns * 0.01 < Info->field_0x50[CurrentSeason]))
	{
		Rain.Reset();
		return;
	}
	if (Storms.count >= MaxStorms)
	{
		return;
	}
	MapCoords position = FindWhereToCreateStorm();
	LHPoint   point = position.GetLHPoint();
	LHPoint   centre = Position.GetLHPoint();
	uint32_t  radius;
	if ((Flags & 1) == 0)
	{
		radius = (uint32_t)GUtils::GetDistance(point, centre);
	}
	else
	{
		radius = GRand::GameRand(1000, "C:\\dev\\MP\\Black\\Weather.cpp", 969);
	}
	if (radius < 160)
	{
		radius = 160;
	}
	else if (radius > 900)
	{
		radius = 900;
	}
	LHPoint stormPosition;
	stormPosition.x = (uint16_t)(position.x >> 16) * 10.0f;
	stormPosition.y = 300.0f;
	stormPosition.z = (uint16_t)(position.z >> 16) * 10.0f;
	StormInfo stormInfo(stormPosition, (float)radius, (float)(uint32_t)(radius * 1.1));
	stormInfo.field_0x14 = 10.0f;
	stormInfo.field_0x18 = Info->field_0x50[CurrentSeason] * 10.0f * 10.0f;
	if (Rain.RainingTurns * 0.01 <= Info->field_0x40[CurrentSeason])
	{
		stormInfo.field_0x18 = (Info->field_0x50[CurrentSeason] * 100.0 - Rain.RainingTurns) * 10.0f;
	}
	if (stormInfo.field_0x18 < 20.0f)
	{
		stormInfo.field_0x18 = 20.0f;
	}
	stormInfo.field_0x1c = 1.0f;
	signed char temperature = (signed char)Temperature.ActualTemp;
	stormInfo.Weather.field_0x0 = temperature;
	stormInfo.field_0x28 = (float)field_0x68;
	stormInfo.field_0x2c = field_0x6c;
	double heat = (temperature - 30.0) * (1.0 / 15.0);
	stormInfo.field_0x24 = exp(-(heat * heat));
	if (temperature > 30.0 || field_0x84 != 0)
	{
		stormInfo.field_0x30 = field_0x74;
		stormInfo.field_0x34 = field_0x78;
		stormInfo.field_0x3c = field_0x80;
		stormInfo.field_0x38 = field_0x7c;
		stormInfo.field_0x24 = (float)field_0x84;
	}
	stormInfo.Weather.field_0x3 = (signed char)(stormInfo.field_0x24 * 100.0);
	if (temperature < 0)
	{
		stormInfo.Weather.field_0x2 = 100;
		stormInfo.Weather.field_0x1 = 0;
	}
	else
	{
		double snow = temperature * 0.2;
		stormInfo.Weather.field_0x2 = (signed char)(exp(-(snow * snow)) * 100.0);
		stormInfo.Weather.field_0x1 = 100 - stormInfo.Weather.field_0x2;
	}
	stormInfo.Weather.WindX = (signed char)Wind.WindX;
	stormInfo.Weather.WindZ = (signed char)Wind.WindZ;
	if (stormInfo.field_0x18 > 0.0f)
	{
		if (stormInfo.field_0x18 < 8.0f)
		{
			stormInfo.field_0x18 = 20.0f;
		}
		Storms.Add(LH3DStorm::CreateStorm(stormInfo));
		Rain.Flags |= 1;
	}
	Rain.Reset();
}

GClimate* GClimate::GetClimateWithId(int climate_id)
{
	GClimate* climate = NULL;
	while ((climate = GGame::g_game->GameLists.climates.FindNext(climate)) != NULL)
	{
		if (climate->ClimateId == climate_id)
		{
			return climate;
		}
	}
	return NULL;
}

void GClimate::AttachRainInfo(RainInfo& rain, int climate_id)
{
	if (climate_id == 0)
	{
		if (GGame::g_game->climate == NULL)
		{
			MapCoords unused;
			GGame::g_game->climate = Create(unused, NULL, 0.0f, 0.0f, 0.0f, 0);
		}
		GGame::g_game->climate->Rain = rain;
	}
	else
	{
		GClimate* climate = GetClimateWithId(climate_id);
		if (climate != NULL)
		{
			climate->Rain = rain;
		}
	}
}

void GClimate::AttachTempInfo(TempInfo& temperature, int climate_id)
{
	if (climate_id == 0)
	{
		GGame::g_game->climate->Temperature = temperature;
	}
	else
	{
		GClimate* climate = GetClimateWithId(climate_id);
		if (climate != NULL)
		{
			climate->Temperature = temperature;
		}
	}
}

void GClimate::AttachWindInfo(WindInfo& wind, int climate_id)
{
	if (climate_id == 0)
	{
		GGame::g_game->climate->Wind = wind;
	}
	else
	{
		GClimate* climate = GetClimateWithId(climate_id);
		if (climate != NULL)
		{
			climate->Wind = wind;
		}
	}
}

uint32_t GClimate::Save(GameOSFile& file)
{
	if (!GameThing::Save(file))
	{
		return 0;
	}
	file.WriteIt(Position);
	file.WriteIt(InnerRadius);
	file.WriteIt(OuterRadius);
	file.WriteIt(ClimateId);
	file.WriteIt(NextClimateId);
	file.WriteInfo(Info);
	file.WriteIt(LastUpdateTime);
	file.WriteIt(CurrentSeason);
	file.WriteIt(LastSeason);
	file.WriteIt(Rain);
	file.WriteIt(Temperature);
	file.WriteIt(Wind);
	file.WriteIt(MaxStorms);
	file.WriteIt(Flags);
	uint32_t   count = 0;
	LH3DStorm* storm = NULL;
	while ((storm = Storms.FindNext(storm)) != NULL)
	{
		++count;
	}
	file.WriteIt(count);
	storm = NULL;
	while ((storm = Storms.FindNext(storm)) != NULL)
	{
		// Position is intentionally written both separately and inside the 0x50-byte descriptor.
		file.WriteIt(storm->Info.Position);
		file.WriteIt(storm->Info);
		file.WriteIt(storm->Age);
		file.WriteIt(storm->field_0x68);
		file.WriteIt(storm->PreviousPosition);
	}
	file.WriteIt(field_0x68);
	file.WriteIt(field_0x6c);
	file.WriteIt(field_0x70);
	file.WriteIt(field_0x74);
	file.WriteIt(field_0x78);
	file.WriteIt(field_0x7c);
	file.WriteIt(field_0x80);
	file.WriteIt(field_0x84);
	return 1;
}

uint32_t GClimate::Load(GameOSFile& file)
{
	if (!GameThing::Load(file))
	{
		return 0;
	}
	file.ReadIt(Position);
	file.ReadIt(InnerRadius);
	file.ReadIt(OuterRadius);
	file.ReadIt(ClimateId);
	file.ReadIt(NextClimateId);
	file.ReadInfo((const GBaseInfo**)&Info);
	file.ReadIt(LastUpdateTime);
	file.ReadIt(CurrentSeason);
	file.ReadIt(LastSeason);
	file.ReadIt(Rain);
	file.ReadIt(Temperature);
	file.ReadIt(Wind);
	file.ReadIt(MaxStorms);
	file.ReadIt(Flags);
	uint32_t count = 0;
	file.ReadIt(count);
	for (uint32_t i = 0; i < count; ++i)
	{
		LHPoint position;
		file.ReadIt(position);
		StormInfo stormInfo(position, 0.0f, 0.0f);
		file.ReadIt(stormInfo);
		LH3DStorm* storm = LH3DStorm::CreateStorm(stormInfo);
		file.ReadIt(storm->Age);
		file.ReadIt(storm->field_0x68);
		file.ReadIt(storm->PreviousPosition);
		Storms.Add(storm);
	}
	file.ReadIt(field_0x68);
	file.ReadIt(field_0x6c);
	file.ReadIt(field_0x70);
	file.ReadIt(field_0x74);
	file.ReadIt(field_0x78);
	file.ReadIt(field_0x7c);
	file.ReadIt(field_0x80);
	file.ReadIt(field_0x84);
	return 1;
}
