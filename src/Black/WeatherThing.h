#ifndef BW1_DECOMP_WEATHER_THING_INCLUDED_H
#define BW1_DECOMP_WEATHER_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/ScriptEnums.h> /* For enum SCRIPT_OBJECT_TYPE */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
struct MapCoords;

class WeatherThing : public GameThingWithPos
{
public:
	// BW1W120 007741a0 BW1M119 01085420
	static void ProcessWeatherThings();

	uint8_t field_0x28[0x60];

	// Override methods

	// BW1W120 0055df60 BW1M119 015aaba0
	virtual ~WeatherThing();
	// BW1W120 00774130 BW1M119 015abd50
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055df50 BW1M119 015aad40
	virtual char* GetDebugText();
	// BW1W120 007747e0 BW1M119 015aad80
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007745c0 BW1M119 015ab0a0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055df40 BW1M119 015aad00
	virtual uint32_t GetSaveType();
	// BW1W120 007742e0 BW1M119 015ab980
	virtual void SetPos(const MapCoords& param_1);
	// BW1W120 00774580 BW1M119 015ab420
	virtual void SetSpeedInMetres(float param_1, int param_2);
	// BW1W120 0055df10 BW1M119 015aac40
	virtual uint32_t IsWeather() const;
	// BW1W120 0055df30 BW1M119 015aacc0
	virtual const char* GetText();
	// BW1W120 00774360 BW1M119 015ab8e0
	virtual SCRIPT_OBJECT_TYPE GetScriptObjectType();
	// BW1W120 0055df20 BW1M119 015aac80
	virtual void SetAffectedByWind(int param_1);
};

#endif /* BW1_DECOMP_WEATHER_THING_INCLUDED_H */
