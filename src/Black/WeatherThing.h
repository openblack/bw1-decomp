#ifndef BW1_DECOMP_WEATHER_THING_INCLUDED_H
#define BW1_DECOMP_WEATHER_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h>                     /* For enum SCRIPT_OBJECT_TYPE */
#include <Lionhead/LH3DLib/development/LH3DStorm.h> /* For class LH3DStorm, struct StormInfo */
#include <Lionhead/LHLib/ver5.0/LHListNode.h>       /* For struct LHListNode */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GameOSFile;
struct LHPoint;
class GameThing;
struct MapCoords;

class WeatherThing : public GameThingWithPos
{
public:
	// BW1W120 007741a0 BW1M119 01085420
	static void ProcessWeatherThings();

	StormInfo                Info;
	LH3DStorm*               Storm;
	int                      AffectedByWind;
	LHListNode<WeatherThing> next;
	uint8_t                  field_0x84[0x4];

	// Override methods

	// BW1W120 00774130 BW1M119 015abd50
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055df50 BW1M119 015aad40
	virtual char* GetDebugText() { return "WeatherThing:"; }
	// BW1W120 007747e0 BW1M119 015aad80
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007745c0 BW1M119 015ab0a0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055df40 BW1M119 015aad00
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_WEATHER_THING; }
	// BW1W120 007742e0 BW1M119 015ab980
	virtual void SetPos(const MapCoords& param_1);
	// BW1W120 00774580 BW1M119 015ab420
	virtual void SetSpeedInMetres(float param_1, int param_2);
	// BW1W120 0055df10 BW1M119 015aac40
	virtual bool32_t IsWeather() const { return true; }
	// BW1W120 0055df30 BW1M119 015aacc0
	virtual const char* GetText() { return "Weather Thing"; }
	// BW1W120 00774360 BW1M119 015ab8e0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0055df20 BW1M119 015aac80
	virtual void SetAffectedByWind(int affected) { AffectedByWind = affected; }

	// BW1W120 inlined BW1M119 inlined
	WeatherThing() {}

	// Non-virtual methods

	// BW1W120 00774400 BW1M119 015ab6e0
	void SetProperties(float temperature, float rainfall, float snowfall, float overcast, float fall_speed);
	// BW1W120 00774460 BW1M119 015ab680
	void SetTimes(float time, float fade);
	// BW1W120 00774500 BW1M119 015ab550
	void SetClouds(float shade, int clouds, float height);
	// BW1W120 00774520 BW1M119 015ab4e0
	void SetLightning(float sheet_min, float sheet_max, float fork_min, float fork_max);
	// BW1W120 00774480 BW1M119 015ab5b0
	void SetMovement(const LHPoint& velocity);
	// BW1W120 00774550 BW1M119 015ab470
	void SetMoveTo(const LHPoint& point);
	// BW1W120 inlined BW1M119 014fd440
	bool32_t IsFinished() const { return Storm == NULL; }
};

#endif /* BW1_DECOMP_WEATHER_THING_INCLUDED_H */
