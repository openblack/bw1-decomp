#ifndef BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H
#define BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LH3DStorm.h> /* For struct StormInfo, struct WeatherInfo */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>     /* For class LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>         /* For enum LH_RETURN */

class LHHttp2;

enum LH_INETWEATHER_WEATHERTYPES
{
	LH_INETWEATHER_WEATHERTYPES_NONE = -1,
	LH_INETWEATHER_WEATHERTYPES_0,
	LH_INETWEATHER_WEATHERTYPES_1,
	LH_INETWEATHER_WEATHERTYPES_2,
	LH_INETWEATHER_WEATHERTYPES_3,
	LH_INETWEATHER_WEATHERTYPES_4,
	LH_INETWEATHER_WEATHERTYPES_5,
	LH_INETWEATHER_WEATHERTYPES_6,
	LH_INETWEATHER_WEATHERTYPES_7,
	LH_INETWEATHER_WEATHERTYPES_8,
	LH_INETWEATHER_WEATHERTYPES_9,
	LH_INETWEATHER_WEATHERTYPES_10,
	LH_INETWEATHER_WEATHERTYPES_11,
	LH_INETWEATHER_WEATHERTYPES_12,
};

enum LH_INETWEATHER_OPERATION
{
	LH_INETWEATHER_OPERATION_SET,
	LH_INETWEATHER_OPERATION_ADD,
	LH_INETWEATHER_OPERATION_SUBTRACT,
};

enum LH_INETWEATHER_COMMAND
{
	LH_INETWEATHER_COMMAND_NONE,
	LH_INETWEATHER_COMMAND_PAUSE,
	LH_INETWEATHER_COMMAND_RESUME,
};

enum LH_INETWEATHER_STATUS
{
	LH_INETWEATHER_STATUS_DISABLED = 0,
	LH_INETWEATHER_STATUS_ENABLED = 1,
	LH_INETWEATHER_STATUS_DISABLING = 3,
};

struct LHCountryInfo
{
	char Tag[3];
	char Name[35];
};

static_assert(sizeof(LHCountryInfo) == 0x26, "LHCountryInfo size is incorrect");

struct LHInetWeatherData
{
	uint16_t Id;
	uint8_t  IsStorm;
	uint8_t  RainOperation;
	float    RainValue;
	uint8_t  SnowDepthOperation;
	float    SnowDepthValue;
	uint8_t  SnowOperation;
	float    SnowValue;
	uint8_t  WindXOperation;
	float    WindXValue;
	uint8_t  WindZOperation;
	float    WindZValue;
	uint8_t  FallSpeedOperation;
	float    FallSpeedValue;
	uint8_t  SheetLightningMinOperation;
	float    SheetLightningMinValue;
	uint8_t  SheetLightningMaxOperation;
	float    SheetLightningMaxValue;
	uint8_t  ForkLightningMinOperation;
	float    ForkLightningMinValue;
	uint8_t  ForkLightningMaxOperation;
	float    ForkLightningMaxValue;
	uint8_t  CloudOperation;
	float    CloudValue;
	uint8_t  ShadeOperation;
	float    ShadeValue;
	uint8_t  StormCloudsOperation;
	float    StormCloudsValue;
	uint8_t  HeightOperation;
	float    HeightValue;
};

static_assert(sizeof(LHInetWeatherData) == 0x70, "LHInetWeatherData size is incorrect");

class LHInetWeatherLocation
{
public:
	char    Country[3];
	char    Area[150];
	char    City[150];
	int16_t Temperature;
	int16_t TemperatureMin;
	int16_t CloudCover;
	int16_t WindSpeed;
	uint8_t Humidity;
	int8_t  Day;
	int8_t  Month;
	int16_t Year;
	int     WeatherType;

	// BW1W120 005e7a40 BW1M119 0143a1c0
	LHInetWeatherLocation();

	// BW1W120 inlined BW1M119 011c1610
	char* GetLocationCityPtr() { return City; }
	// BW1W120 inlined BW1M119 01359a60
	char* GetLocationAreaPtr() { return Area; }
	// BW1W120 inlined BW1M119 0135be50
	char* GetLocationCountryPtr() { return Country; }

	// BW1W120 005e7ab0 BW1M119 inlined
	LH_RETURN SetLocation(char* country, char* area, char* city);
	// BW1W120 005e7b50 BW1M119 inlined
	LH_RETURN GetLocation(char* country, char* area, char* city);
	// BW1W120 005e7c00 BW1M119 inlined
	LH_RETURN SetWeather(int weather_type, int16_t temperature, int16_t temperature_min, int16_t cloud_cover,
	                     int16_t wind_speed, uint8_t humidity);
	// BW1W120 005e7c50 BW1M119 inlined
	LH_RETURN SetDate(int8_t day, int8_t month, int16_t year);
	// BW1W120 005e7c80 BW1M119 inlined
	LH_RETURN GetDate(int8_t* day, int8_t* month, int16_t* year);
};

static_assert(sizeof(LHInetWeatherLocation) == 0x144, "LHInetWeatherLocation size is incorrect");

struct LHInetWeatherAmbient
{
	float WindX;
	float WindZ;
	float Rain;
	float SnowDepth;
	float Temperature;
	float Cloud;
	float Snow;
};

class LHInetWeather
{
public:
	StormInfo                            Info;
	LH3DStorm*                           Storm;
	LHInetWeatherAmbient                 SavedAmbient;
	float                                SavedStormIntensity;
	uint32_t                             field_0x74;
	LHInetWeatherAmbient                 OriginalAmbient;
	uint32_t                             field_0x94;
	bool                                 AmbientSaved;
	LHLinkedList<LHInetWeatherData*>     WeatherData;
	LHLinkedList<LHCountryInfo*>         Countries;
	int                                  InitialCommand;
	bool                                 RecalculateRequested;
	LHLinkedList<LHInetWeatherLocation*> Locations;
	char*                                DataFilePath;
	char*                                ServerName;
	uint16_t                             ServerPort;
	char*                                ServerURL;
	bool                                 Offline;
	int8_t                               Command;
	bool                                 Paused;
	uint8_t                              Status;
	LHHttp2*                             Http;
	uint32_t                             UpdateIntervalMinutes;
	uint32_t                             LastUpdateTime;
	char*                                Document;
	uint32_t                             RetryCount;
	unsigned long                        DocumentSize;
	uint32_t                             LastRetryTime;

	// BW1W120 00d01600
	static LHInetWeather Weather;
	// BW1W120 00d016f0
	static LHInetWeatherLocation CurrentLocation;

	// BW1W120 005e7ce0 BW1M119 010cc540
	LHInetWeather();
	// BW1W120 005e7d30 BW1M119 01114ac0
	~LHInetWeather();

	// BW1W120 005e9ca0 BW1M119 01016210
	void ProcessWeather();
	// BW1W120 005e98b0 BW1M119 011cde90
	void InitForGame();
	// BW1W120 005e7db0 BW1M119 013faf50
	void CleanUp();
	// BW1W120 005e7ea0 BW1M119 013c57f0
	LH_RETURN URIEncode(char* text, char* encoded);
	// BW1W120 005e7f20 BW1M119 01339940
	LH_RETURN InitInetWeatherSystem();
	// BW1W120 005e7fb0 BW1M119 inlined
	LH_RETURN SetServer(char* name, uint16_t port, char* url);
	// BW1W120 005e8080 BW1M119 inlined
	LH_RETURN SetDataFilePath(char* path);
	// BW1W120 005e80f0 BW1M119 inlined
	uint16_t GetLocationCount();
	// BW1W120 005e8100 BW1M119 null
	LH_RETURN CheckInternetConnection();
	// BW1W120 005e8240 BW1M119 0153dad0
	LH_RETURN DecodeUserLocation(LHInetWeatherLocation& location);
	// BW1W120 005e83e0 BW1M119 null
	LH_RETURN GetDocument(char* request, unsigned long* size, char** document);
	// BW1W120 005e83f0 BW1M119 null
	LH_RETURN SendRequest(char* request, unsigned long* size, char** document);
	// BW1W120 005e8410 BW1M119 0116ff30
	LH_RETURN GetLocationDataForUser(char* user_name, char* password, LHInetWeatherLocation& location);
	// BW1W120 005e8660 BW1M119 null
	LH_RETURN QueryWeatherByLocation(LHInetWeatherLocation& location);
	// BW1W120 005e88b0 BW1M119 012ad870
	LH_RETURN QueryWeather(LHInetWeatherLocation& location);
	// BW1W120 005e8c60 BW1M119 010e1d60
	LH_RETURN DecodeWeatherData(LHInetWeatherLocation& location);
	// BW1W120 005e9130 BW1M119 010da260
	LH_RETURN SaveWeatherData();
	// BW1W120 005e91c0 BW1M119 null
	LH_RETURN LoadWeatherData();
	// BW1W120 005e9350 BW1M119 0135a5c0
	bool ReadWeatherInfoDataFile(char* path);
	// BW1W120 005e93f0 BW1M119 01480e70
	LHInetWeatherData* GetWeatherData(int16_t id);
	// BW1W120 005e9430 BW1M119 inlined
	void ApplyOperation(int8_t operation, float value, float* target);
	// BW1W120 005e9470 BW1M119 01343c20
	LH_RETURN CalculateWeatherPreset(LH_INETWEATHER_WEATHERTYPES type, WeatherInfo& weather, StormInfo& storm,
	                                 bool& is_storm);
	// BW1W120 005e96d0 BW1M119 015a86b0
	char* LHGetCountryForTag(char* tag);
	// BW1W120 005e9740 BW1M119 0153a460
	void LHLoadCountryInformationFile(char* path);
	// BW1W120 005ea3f0 BW1M119 0149d040
	LHInetWeatherLocation* GetWeather(uint8_t index);
	// BW1W120 005ea430 BW1M119 null
	LHInetWeatherLocation* FindLocationByDate(int8_t day, int8_t month, int16_t year);
	// BW1W120 inlined BW1M119 013817f0
	bool IsPaused() { return Paused; }
};

static_assert(sizeof(LHInetWeather) == 0xec, "LHInetWeather size is incorrect");
static_assert(offsetof(LHInetWeather, Storm) == 0x50, "LHInetWeather::Storm offset is incorrect");
static_assert(offsetof(LHInetWeather, OriginalAmbient) == 0x78, "LHInetWeather::OriginalAmbient offset is incorrect");
static_assert(offsetof(LHInetWeather, Countries) == 0xa4, "LHInetWeather::Countries offset is incorrect");
static_assert(offsetof(LHInetWeather, Locations) == 0xb4, "LHInetWeather::Locations offset is incorrect");
static_assert(offsetof(LHInetWeather, Offline) == 0xcc, "LHInetWeather::Offline offset is incorrect");
static_assert(offsetof(LHInetWeather, Http) == 0xd0, "LHInetWeather::Http offset is incorrect");

#endif /* BW1_DECOMP_LH_INET_WEATHER_INCLUDED_H */
