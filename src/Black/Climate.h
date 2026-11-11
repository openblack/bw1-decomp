#ifndef BW1_DECOMP_CLIMATE_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>         /* For class LHLinkedList */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GClimateInfo;
class GameOSFile;
class LHOSFile;
struct MapCoords;
class LH3DStorm;
struct LHPoint;
struct WeatherInfo;

struct RainInfo
{
	float   Rain;
	long    TurnsSinceRain;
	long    TurnsRaining;
	uint8_t Raining;

	// BW1W120 00773d10 BW1M119 015aa600
	RainInfo();
};

struct TempInfo
{
	float ActualTemp;
	float GoalTemp;

	// BW1W120 00773ec0 BW1M119 015aab40
	TempInfo();
};

struct WindInfo
{
	float X;
	float Z;
	float Angle;

	// BW1W120 00774a80 BW1M119 015ac240
	WindInfo();
};

enum CLIMATE_FLAGS
{
	CLIMATE_FLAG_DISABLED = 1 << 0,
};

class GClimate : public GameThing
{
public:
	// BW1W120 00771be0 BW1M119 01053390
	static void ProcessAll();
	// BW1W120 007714b0 BW1M119 01026110
	static bool IsRaining(const LHPoint& point);
	// BW1W120 00771600 BW1M119 015a9070
	static float GetMaxRainingOrSnowing(const LHPoint& point);
	// BW1W120 00771b10 BW1M119 015a8970
	static LHPoint GetWindAtPoint(const LHPoint* point, bool recalc);

	LH3DMapCoords            Pos;
	uint8_t                  field_0x20[0x14];
	RainInfo                 Rain;
	TempInfo                 Temp;
	WindInfo                 Wind;
	uint32_t                 field_0x58;
	LHLinkedList<LH3DStorm*> Storms;
	uint32_t                 Flags;
	uint8_t                  field_0x68[0x20];

	// Override methods

	// BW1W120 007713d0 BW1M119 015a9660
	virtual ~GClimate();
	// BW1W120 007713e0 BW1M119 015a9410
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055ded0 BW1M119 015a5f10
	virtual char* GetDebugText() { return "Climate:"; }
	// BW1W120 007736e0 BW1M119 015a5f50
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00773320 BW1M119 015a6820
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055dec0 BW1M119 015a5ed0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GCLIMATE; }

	// BW1W120 0055de80 BW1M119 inlined
	GClimate() {}
	// BW1W120 007715b0 BW1M119 010675f0
	static float GetSnow(const LHPoint& pos);
	// BW1W120 007714f0 BW1M119 010843b0
	static bool IsSnowing(const LHPoint& pos);
	// BW1W120 00771a80 BW1M119 01084450
	static float GetTemp(const LHPoint* pos);
	// BW1W120 00771570 BW1M119 0108e620
	static float GetRain(const LHPoint& pos);
	// BW1W120 00772e00 BW1M119 015a7540
	void CreateStorm();

	// BW1W120 00771300 BW1M119 015a96f0
	static GClimate* Create(const MapCoords& coords, const GClimateInfo* info, float inner_radius, float outer_radius,
	                        float rotation, long id);
	// BW1W120 00773200 BW1M119 015a7350
	static void AttachRainInfo(RainInfo& info, long id);
	// BW1W120 00773290 BW1M119 015a72a0
	static void AttachTempInfo(TempInfo& info, long id);
	// BW1W120 007732d0 BW1M119 015a71e0
	static void AttachWindInfo(WindInfo& info, long id);
	// BW1W120 007731b0 BW1M119 015a7480
	static GClimate* GetClimateWithId(long id);
	// BW1W120 00772b80 BW1M119 015a7f00
	static void SaveAllObjectTextFile(LHOSFile& file, const MapCoords& coords);
	// BW1W120 00771490 BW1M119 01033540
	static WeatherInfo GetWeather(const LHPoint& point, bool recalc);
	// BW1W120 00771640 BW1M119 010496b0
	static WeatherInfo ComputeWeather(const LHPoint& point, bool recalc);
	// BW1W120 00772be0 BW1M119 015a7b90
	MapCoords FindWhereToCreateStorm();
};

#endif /* BW1_DECOMP_CLIMATE_INCLUDED_H */
