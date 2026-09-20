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

	// BW1W120 0055de80 GClimate::GClimate(void)
	GClimate();
	// BW1W120 00771020 BW1M100 105a2f20 GClimate::GClimate(long)
	GClimate(int param_1);
	// BW1W120 00771170 BW1M100 105a2b80 GClimate::GClimate(const MapCoords&, const GClimateInfo*, float, float, float, long)
	GClimate(const MapCoords& position, const GClimateInfo* info, float inner_radius, float outer_radius, float param_5,
	         int climate_id);
	// BW1W120 00771300 BW1M100 105a2900 GClimate::Create(const MapCoords&, const GClimateInfo*, float, float, float, long)
	static GClimate* Create(const MapCoords& position, const GClimateInfo* info, float inner_radius, float outer_radius,
	                        float param_5, int climate_id);

	// Windows callers clean the arguments and WeatherInfo returns in EDX:EAX.
	// BW1W120 00771490 BW1M100 10030bc0 GClimate::GetWeather(const LHPoint&, bool)
	static WeatherInfo GetWeather(const LHPoint& point, bool smooth);
	// BW1W120 007714b0 BW1M100 10023580 GClimate::IsRaining(const LHPoint&)
	static bool IsRaining(const LHPoint& point);
	// BW1W120 007714f0 BW1M100 10081fc0 GClimate::IsSnowing(const LHPoint&)
	static bool IsSnowing(const LHPoint& point);
	// BW1W120 00771570 BW1M100 1008c2e0 GClimate::GetRain(const LHPoint&)
	static float GetRain(const LHPoint& point);
	// BW1W120 007715b0 BW1M100 10064e30 GClimate::GetSnow(const LHPoint&)
	static float GetSnow(const LHPoint& point);
	// BW1W120 00771600 BW1M100 105a2250 GClimate::GetMaxRainingOrSnowing(const LHPoint&)
	static float GetMaxRainingOrSnowing(const LHPoint& point);
	// BW1W120 00771640 BW1M100 10046c70 GClimate::ComputeWeather(const LHPoint&, bool)
	static WeatherInfo ComputeWeather(const LHPoint& point, bool smooth);
	// BW1W120 00771a30 BW1M100 105a1f80 GClimate::MoveStormByWind(LH3DStorm*, float)
	static void MoveStormByWind(LH3DStorm* storm, float scale);
	// BW1W120 00771a80 BW1M100 10082060 GClimate::GetTemp(const LHPoint*)
	static float GetTemp(const LHPoint* point);
	// BW1W120 00771ab0 BW1M100 10082100 GClimate::GetWindX(const LHPoint*)
	static float GetWindX(const LHPoint* point);
	// BW1W120 00771ae0 BW1M100 100821a0 GClimate::GetWindZ(const LHPoint*)
	static float GetWindZ(const LHPoint* point);
	// BW1W120 00771b10 BW1M100 105a19f0 GClimate::GetWindAtPoint(const LHPoint*, bool)
	static LHPoint GetWindAtPoint(const LHPoint* point, bool smooth);
	// BW1W120 00772330 BW1M100 10078470 GClimate::Process(bool)
	void Process(bool update_time);
	// BW1W120 007727a0 BW1M100 105a10f0 GClimate::SaveClimate(LHOSFile&, const MapCoords&)
	void SaveClimate(LHOSFile& file, const MapCoords* origin);
	// BW1W120 00772b80 BW1M100 105a1010 GClimate::SaveAllObjectTextFile(LHOSFile&, const MapCoords&)
	static uint32_t SaveAllObjectTextFile(LHOSFile& file, const MapCoords* origin);
	// BW1W120 00772be0 BW1M100 105a0c80 GClimate::FindWhereToCreateStorm(void)
	MapCoords FindWhereToCreateStorm();
	// BW1W120 00772e00 BW1M100 105a0630 GClimate::CreateStorm(void)
	void CreateStorm();
	// BW1W120 007731b0 BW1M100 105a0570 GClimate::GetClimateWithId(long)
	static GClimate* GetClimateWithId(int climate_id);
	// BW1W120 00773200 BW1M100 105a0390 GClimate::AttachRainInfo(RainInfo&, long)
	static void AttachRainInfo(RainInfo& rain, int climate_id);
	// BW1W120 00773290 BW1M100 105a02e0 GClimate::AttachTempInfo(TempInfo&, long)
	static void AttachTempInfo(TempInfo& temperature, int climate_id);
	// BW1W120 007732d0 BW1M100 105a0220 GClimate::AttachWindInfo(WindInfo&, long)
	static void AttachWindInfo(WindInfo& wind, int climate_id);

	// Override methods

	// BW1W120 007713d0 BW1M100 105a2870 GClimate::~GClimate(void)
	virtual ~GClimate();
	// BW1W120 007713e0 BW1M100 105a2620 GClimate::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055ded0 BW1M100 1059ef50 GClimate::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 007736e0 BW1M100 1059ef90 GClimate::Load(GameOSFile&)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00773320 BW1M100 1059f860 GClimate::Save(GameOSFile&)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dec0 BW1M100 1059ef10 GClimate::GetSaveType(void)
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_CLIMATE_INCLUDED_H */
