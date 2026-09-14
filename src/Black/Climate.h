#ifndef BW1_DECOMP_CLIMATE_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */
#include "MapCoords.h"
#include "Weather.h"
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>

// Forward Declares

class Base;
class GameOSFile;
class GClimateInfo;
class LHOSFile;

class GClimate : public GameThing
{
public:
	// BW1W120 00771be0 BW1M100 10050a00 GClimate::ProcessAll(void)
	static void ProcessAll();

	// Descriptive members recovered from construction and serialization in Weather.cpp.
	// Both allocating factories at 00771300 use exactly 0x88 bytes.
	MapCoords                Position;    /* 0x14 */
	float                    InnerRadius; /* 0x20 */
	float                    OuterRadius;
	int                      ClimateId;
	const GClimateInfo*      Info;        /* 0x2c */
	uint32_t                 field_0x30;  // Not initialized or serialized by the Weather.cpp constructors.
	RainInfo                 Rain;        /* 0x34 */
	TempInfo                 Temperature; /* 0x44 */
	WindInfo                 Wind;        /* 0x4c */
	uint32_t                 MaxStorms;   /* 0x58 */
	LHLinkedList<LH3DStorm*> Storms;      /* 0x5c */
	uint8_t                  Flags;       /* 0x64; bit 0 selects the default/world climate */
	uint8_t                  field_0x65[3];
	uint32_t                 field_0x68;
	float                    field_0x6c;
	float                    field_0x70;
	float                    field_0x74;
	float                    field_0x78;
	float                    field_0x7c;
	float                    field_0x80;
	uint8_t                  field_0x84;
	uint8_t                  field_0x85[3];

	// Original static member spellings are unrecovered; ownership follows Weather.cpp writers.
	static bool     StormCreationEnabled;  // 00c24758
	static bool     ClimateUpdatesEnabled; // 00c24759
	static int      NextClimateId;         // 00c2475c
	static int      LastUpdateTime;        // 00dcb8b8
	static uint32_t LastSeason;            // 00dcb8bc
	static uint32_t CurrentSeason;         // 00dcb8c0

	// BW1W120 0055de80 (GameOSFile factory constructor, distinct from GClimate(int))
	GClimate();
	// BW1W120 00771020; Mac __ct__8GClimateFl (Windows symbol uses int).
	GClimate(int param_1);
	// BW1W120 00771170; Mac __ct__8GClimateFRC9MapCoordsPC12GClimateInfofffl
	GClimate(const MapCoords& position, const GClimateInfo* info, float inner_radius, float outer_radius, float param_5,
	         int climate_id);
	// BW1W120 00771300; Mac Create__8GClimateFRC9MapCoordsPC12GClimateInfofffl
	static GClimate* Create(const MapCoords& position, const GClimateInfo* info, float inner_radius, float outer_radius,
	                        float param_5, int climate_id);

	// Windows callers clean the arguments and WeatherInfo returns in EDX:EAX.
	// BW1W120 00771490; Mac GetWeather__8GClimateFRC7LHPointb
	static WeatherInfo GetWeather(const LHPoint& point, bool smooth);
	// BW1W120 007714b0; Mac IsRaining__8GClimateFRC7LHPoint
	static bool IsRaining(const LHPoint& point);
	// BW1W120 007714f0; Mac IsSnowing__8GClimateFRC7LHPoint
	static bool IsSnowing(const LHPoint& point);
	// BW1W120 00771570; Mac GetRain__8GClimateFRC7LHPoint
	static float GetRain(const LHPoint& point);
	// BW1W120 007715b0; Mac GetSnow__8GClimateFRC7LHPoint
	static float GetSnow(const LHPoint& point);
	// BW1W120 00771600; Mac GetMaxRainingOrSnowing__8GClimateFRC7LHPoint
	static float GetMaxRainingOrSnowing(const LHPoint& point);
	// BW1W120 00771640; Mac ComputeWeather__8GClimateFRC7LHPointb
	static WeatherInfo ComputeWeather(const LHPoint& point, bool smooth);
	// BW1W120 00771a30; Mac MoveStormByWind__8GClimateFP9LH3DStormf
	static void MoveStormByWind(LH3DStorm* storm, float scale);
	// BW1W120 00771a80; Mac GetTemp__8GClimateFPC7LHPoint
	static float GetTemp(const LHPoint* point);
	// BW1W120 00771ab0; Mac GetWindX__8GClimateFPC7LHPoint
	static float GetWindX(const LHPoint* point);
	// BW1W120 00771ae0; Mac GetWindZ__8GClimateFPC7LHPoint
	static float GetWindZ(const LHPoint* point);
	// BW1W120 00771b10; Mac GetWindAtPoint__8GClimateFPC7LHPointb
	static LHPoint GetWindAtPoint(const LHPoint* point, bool smooth);
	// BW1W120 00772330; Mac Process__8GClimateFb
	void Process(bool update_time);
	// BW1W120 007727a0; Mac SaveClimate__8GClimateFR8LHOSFileRC9MapCoords
	// Windows explicitly tests origin for NULL: retain its nullable interface despite the Mac reference.
	void SaveClimate(LHOSFile& file, const MapCoords* origin);
	// BW1W120 00772b80; Mac SaveAllObjectTextFile__8GClimateFR8LHOSFileRC9MapCoords
	// Windows uses the same nullable origin as SaveClimate and returns a full-register integer.
	static uint32_t SaveAllObjectTextFile(LHOSFile& file, const MapCoords* origin);
	// BW1W120 00772be0; Mac FindWhereToCreateStorm__8GClimateFv
	// The sole Windows stack argument is a hidden MapCoords return buffer.
	MapCoords FindWhereToCreateStorm();
	// BW1W120 00772e00; Mac CreateStorm__8GClimateFv
	void CreateStorm();
	// BW1W120 007731b0; Mac GetClimateWithId__8GClimateFl
	static GClimate* GetClimateWithId(int climate_id);
	// BW1W120 00773200; Mac AttachRainInfo__8GClimateFR8RainInfol
	static void AttachRainInfo(RainInfo& rain, int climate_id);
	// BW1W120 00773290; Mac AttachTempInfo__8GClimateFR8TempInfol
	static void AttachTempInfo(TempInfo& temperature, int climate_id);
	// BW1W120 007732d0; Mac AttachWindInfo__8GClimateFR8WindInfol
	static void AttachWindInfo(WindInfo& wind, int climate_id);

	// Override methods

	// BW1W120 0055dee0 BW1M100 105a2870 GClimate::_dt(void)
	virtual ~GClimate();
	// BW1W120 007713e0 BW1M100 105a2620 GClimate::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055ded0 BW1M100 1059ef50 GClimate::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 007736e0 BW1M100 1059ef90 GClimate::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00773320 BW1M100 1059f860 GClimate::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dec0 BW1M100 1059ef10 GClimate::GetSaveType(void)
	virtual uint32_t GetSaveType();
};

static_assert(sizeof(GClimate) == 0x88, "GClimate size is incorrect");

#endif /* BW1_DECOMP_CLIMATE_INCLUDED_H */
