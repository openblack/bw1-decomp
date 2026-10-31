#include "LHInetWeather.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
#include <wininet.h>

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHLog/ver4.0/LHVersion.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHHttp.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_* */
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>

#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include "ColourConstants.h" /* For White */
#endif
#include "FrontEnd.h"
#include "Game.h"
#define GATHERING_INTERFACE_INCLUDE_NAME "gatheringinterface.h"
#include "gatheringinterface.h"
#include "HelpText.h"
#include "Landscape.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\LHInetWeather.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\LHInetWeather.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\LHInetWeather.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\LHInetWeather.cpp"
#endif

#define HELP_TEXT_WEATHER_INFO (HELP_TEXT_DIALOG_WEATHER_INFO - 8)

typedef BOOL(WINAPI* ISNETWORKALIVE)(LPDWORD flags);
typedef BOOL(WINAPI* INTERNETGETCONNECTEDSTATE)(LPDWORD flags, DWORD reserved);
typedef DWORD(WINAPI* RASENUMCONNECTIONS)(void* connections, LPDWORD size, LPDWORD count);

#define LH_INETWEATHER_DOCUMENT_PADDING    100
#define LH_INETWEATHER_STORM_LIFETIME      800000.0f
#define LH_INETWEATHER_STORM_RADIUS        1000.0f
#define LH_INETWEATHER_STORM_FADE_RADIUS   2000.0f
#define LH_INETWEATHER_MAX_WEATHER         100
#define LH_INETWEATHER_REGISTRY_KEY        "Software\\Lionhead Studios Ltd\\Black & White\\BWSetup"
#define LH_INETWEATHER_DEFAULT_SERVER_NAME "weather.bwgame.com"
#define LH_INETWEATHER_DEFAULT_SERVER_URL  "/query/"
#define LH_INETWEATHER_DATE_FORMAT         "dd'.'MM'.'yyyy'"
#define LH_INETWEATHER_STRING_PADDING      10
#define LH_INETWEATHER_PROFILE_SIZE        99
#define LH_INETWEATHER_QUERY_STATUS_OK     1
#define LH_INETWEATHER_RAS_SIZE            0x800

static const char LH_INETWEATHER_FILE_ID[] = "LHWD";
static const char LH_INETWEATHER_COUNTRY_FILE[] = ".\\scripts\\country.lhw";

// BW1W120 005e79e0 BW1M119 inlined
char GetWeatherBubbleIcon(int weather_type);

char GetWeatherBubbleIcon(int weather_type)
{
	enum LH_INETWEATHER_BUBBLE_ICON
	{
		LH_INETWEATHER_BUBBLE_ICON_SUNNY,
		LH_INETWEATHER_BUBBLE_ICON_PARTIALLY_CLOUDY,
		LH_INETWEATHER_BUBBLE_ICON_CLOUDY,
		LH_INETWEATHER_BUBBLE_ICON_SCATTERED_SHOWERS,
		LH_INETWEATHER_BUBBLE_ICON_SHOWERS,
		LH_INETWEATHER_BUBBLE_ICON_SCATTERED_FLURRIES,
		LH_INETWEATHER_BUBBLE_ICON_FLURRIES,
		LH_INETWEATHER_BUBBLE_ICON_HEAVY_FLURRIES,
		LH_INETWEATHER_BUBBLE_ICON_THUNDER_STORMS,
	};

	switch (weather_type)
	{
	case LH_INETWEATHER_WEATHERTYPES_0:
		return LH_INETWEATHER_BUBBLE_ICON_PARTIALLY_CLOUDY;
	case LH_INETWEATHER_WEATHERTYPES_1:
		return LH_INETWEATHER_BUBBLE_ICON_SUNNY;
	case LH_INETWEATHER_WEATHERTYPES_9:
		return LH_INETWEATHER_BUBBLE_ICON_SCATTERED_SHOWERS;
	case LH_INETWEATHER_WEATHERTYPES_2:
	case LH_INETWEATHER_WEATHERTYPES_6:
		return LH_INETWEATHER_BUBBLE_ICON_SHOWERS;
	case LH_INETWEATHER_WEATHERTYPES_3:
		return LH_INETWEATHER_BUBBLE_ICON_SCATTERED_FLURRIES;
	case LH_INETWEATHER_WEATHERTYPES_5:
	case LH_INETWEATHER_WEATHERTYPES_10:
		return LH_INETWEATHER_BUBBLE_ICON_THUNDER_STORMS;
	case LH_INETWEATHER_WEATHERTYPES_7:
		return LH_INETWEATHER_BUBBLE_ICON_HEAVY_FLURRIES;
	case LH_INETWEATHER_WEATHERTYPES_8:
	case LH_INETWEATHER_WEATHERTYPES_12:
		return LH_INETWEATHER_BUBBLE_ICON_CLOUDY;
	case LH_INETWEATHER_WEATHERTYPES_11:
		return LH_INETWEATHER_BUBBLE_ICON_FLURRIES;
	case LH_INETWEATHER_WEATHERTYPES_4:
	default:
		return LH_INETWEATHER_BUBBLE_ICON_PARTIALLY_CLOUDY;
	}
}

LHInetWeatherLocation::LHInetWeatherLocation()
{
	Temperature = -1;
	TemperatureMin = -1;
	CloudCover = -1;
	WindSpeed = -1;
	Day = -1;
	Month = -1;
	Year = -1;
	WeatherType = -1;
	Humidity = -1;
	memset(Country, 0, sizeof(Country));
	memset(Area, 0, sizeof(Area));
	memset(City, 0, sizeof(City));
}

LH_RETURN LHInetWeatherLocation::SetLocation(char* country, char* area, char* city)
{
	if (country == NULL && area == NULL && city == NULL)
	{
		return LH_ERROR;
	}
	if (country != NULL)
	{
		strcpy(Country, country);
	}
	if (area != NULL)
	{
		strcpy(Area, area);
	}
	if (city != NULL)
	{
		strcpy(City, city);
	}
	return LH_OK;
}

#ifndef VERSION_BW1W100
LH_RETURN LHInetWeatherLocation::GetLocation(char* country, char* area, char* city)
{
	if (country == NULL && area == NULL && city == NULL)
	{
		return LH_ERROR;
	}
	if (country != NULL)
	{
		strcpy(country, Country);
	}
	if (area != NULL)
	{
		strcpy(area, Area);
	}
	if (city != NULL)
	{
		strcpy(city, City);
	}
	return LH_OK;
}
#endif

LH_RETURN LHInetWeatherLocation::SetWeather(int weather_type, int16_t temperature, int16_t temperature_min,
                                            int16_t cloud_cover, int16_t wind_speed, uint8_t humidity)
{
	WeatherType = weather_type;
	Temperature = temperature;
	TemperatureMin = temperature_min;
	CloudCover = cloud_cover;
	WindSpeed = wind_speed;
	Humidity = humidity;
	return LH_OK;
}

LH_RETURN LHInetWeatherLocation::SetDate(int8_t day, int8_t month, int16_t year)
{
	Day = day;
	Month = month;
	Year = year;
	return LH_OK;
}

#ifndef VERSION_BW1W100
LH_RETURN LHInetWeatherLocation::GetDate(int8_t* day, int8_t* month, int16_t* year)
{
	if (Day == -1 || Month == -1 || Year == -1)
	{
		return LH_ERROR;
	}
	if (day != NULL)
	{
		*day = Day;
	}
	if (month != NULL)
	{
		*month = Month;
	}
	if (year != NULL)
	{
		*year = Year;
	}
	return LH_OK;
}
#endif

LHInetWeather::LHInetWeather()
{
	Storm = NULL;
	InitInetWeatherSystem();
	LHLoadCountryInformationFile((char*)LH_INETWEATHER_COUNTRY_FILE);
}

LHInetWeather::~LHInetWeather()
{
	CleanUp();
	if (Countries.count != 0)
	{
		Countries.DeleteAll();
	}
}

void LHInetWeather::CleanUp()
{
	if (Http != NULL)
	{
		delete Http;
		Http = NULL;
	}
	if (DataFilePath != NULL)
	{
		delete DataFilePath;
		DataFilePath = NULL;
	}
	if (ServerName != NULL)
	{
		delete ServerName;
		ServerName = NULL;
	}
	if (ServerURL != NULL)
	{
		delete ServerURL;
		ServerURL = NULL;
	}
	if (Document != NULL)
	{
		delete Document;
		Document = NULL;
	}
	Locations.DeleteAll();
}

LH_RETURN LHInetWeather::URIEncode(char* text, char* encoded)
{
	while (*text != '\0')
	{
		char c = *text;
		if ((c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z'))
		{
			*encoded = c;
		}
		else
		{
			char escaped[4];
			sprintf(escaped, "%c%X", '%', c);
			char* escape = escaped;
			while (*escape)
			{
				*encoded = *escape;
				escape++;
				encoded++;
			}
			encoded--;
		}
		text++;
		encoded++;
	}
	*encoded = '\0';
	return LH_OK;
}

LH_RETURN LHInetWeather::InitInetWeatherSystem()
{
	Storm = NULL;
	Http = NULL;
	DataFilePath = NULL;
	ServerName = NULL;
	ServerURL = NULL;
	Paused = true;
	Command = LH_INETWEATHER_COMMAND_NONE;
	ServerPort = -1;
	DocumentSize = -1;
	LastRetryTime = 0;
	Document = NULL;
	UpdateIntervalMinutes = 15;
	LastUpdateTime = 0;
	InitialCommand = LH_INETWEATHER_COMMAND_NONE;
	AmbientSaved = false;
	RetryCount = 0;
	RecalculateRequested = false;
	if (!GGame::InternetAvailable)
	{
		Offline = true;
	}
	else
	{
		Offline = false;
	}
	return LH_OK;
}

LH_RETURN LHInetWeather::SetServer(char* name, uint16_t port, char* url)
{
	if (name == NULL && url == NULL)
	{
		return LH_ERROR;
	}
	size_t length = strlen(name) + LH_INETWEATHER_STRING_PADDING;
	ServerName = new (FILEPATH, 511) char[length];
	strcpy(ServerName, name);
	length = strlen(url) + LH_INETWEATHER_STRING_PADDING;
	ServerURL = new (FILEPATH, 514) char[length];
	strcpy(ServerURL, url);
	ServerPort = port;
	return LH_OK;
}

LH_RETURN LHInetWeather::SetDataFilePath(char* path)
{
	if (path == NULL)
	{
		return LH_FAIL;
	}
	size_t length = strlen(path) + LH_INETWEATHER_STRING_PADDING;
	DataFilePath = new (FILEPATH, 526) char[length];
	strcpy(DataFilePath, path);
	return LH_OK;
}

uint16_t LHInetWeather::GetLocationCount()
{
	return Locations.count;
}

#ifndef VERSION_BW1W100
LH_RETURN LHInetWeather::CheckInternetConnection()
{
	short         connected;
	unsigned long rasSize;
	char          version[40];
	unsigned long versionSize = sizeof(version);
	char          rasConnections[0x2000];

	LH_REG_KEY_TYPE previousKey = LHRegistryGetCurrentKey();
	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_USER);
	RegistryRetrieveString("Software\\Windows\\CurrentVersion", "Version", version, &versionSize);
	LHRegistrySetCurrentKey(previousKey);

	HMODULE wininet = LoadLibraryA("wininet.dll");
	if (wininet != NULL)
	{
		HMODULE sensapi = LoadLibraryA("sensapi.dll");
		if (sensapi != NULL)
		{
			ISNETWORKALIVE isNetworkAlive = (ISNETWORKALIVE)GetProcAddress(sensapi, "IsNetworkAlive");
			if (isNetworkAlive != NULL && isNetworkAlive((LPDWORD)&connected) == TRUE)
			{
				printf("[INET]: Connection scanned using IE 5.x (IsNetworkAlive)\n");
				return LH_OK;
			}
			INTERNETGETCONNECTEDSTATE internetGetConnectedState =
				(INTERNETGETCONNECTEDSTATE)GetProcAddress(wininet, "InternetGetConnectedState");
			if (internetGetConnectedState != NULL && internetGetConnectedState((LPDWORD)&connected, 0) == TRUE &&
			    (connected & (INTERNET_CONNECTION_MODEM | INTERNET_CONNECTION_LAN | INTERNET_CONNECTION_PROXY)) != 0)
			{
				printf("[INET]: Connection scanned using IE 4.x (InternetGetConnectedState)\n");
				return LH_OK;
			}
		}
	}
	HMODULE rasapi = LoadLibraryA("rasapi32.dll");
	if (rasapi != NULL)
	{
		rasSize = LH_INETWEATHER_RAS_SIZE;
		RASENUMCONNECTIONS rasEnumConnections = (RASENUMCONNECTIONS)GetProcAddress(rasapi, "RasEnumConnections");
		if (rasEnumConnections != NULL)
		{
			rasEnumConnections(rasConnections, &rasSize, (LPDWORD)&connected);
			if (connected > 0)
			{
				printf("[INET]: Connection scanned using RAS (Rasenumconn)\n");
				return LH_OK;
			}
		}
	}
	return LH_FAIL;
}
#endif

LH_RETURN LHInetWeather::DecodeUserLocation(LHInetWeatherLocation& location)
{
	short status = 0;
	char  buffer[0x400];
	char* line;
	if (Document == NULL)
	{
		return LH_ERROR;
	}
	sscanf(Document, "%d", &status);
	line = Document;
	if (status != LH_INETWEATHER_QUERY_STATUS_OK)
	{
		delete Document;
		Document = NULL;
		DocumentSize = 0;
		return LH_ERROR;
	}
	while (*line != '\n' && *line != '\0')
	{
		line++;
	}
	if (*line != '\0')
	{
		line++;
	}
	int i = 0;
	while (*line != '\n' && *line != '\0')
	{
		buffer[i] = *line++;
		i++;
	}
	buffer[i] = '\0';
	strcpy(location.Country, buffer);
	if (*line != '\0')
	{
		line++;
	}
	i = 0;
	while (*line != '\n' && *line != '\0')
	{
		buffer[i] = *line++;
		i++;
	}
	buffer[i] = '\0';
	strcpy(location.Area, buffer);
	if (*line != '\0')
	{
		line++;
	}
	i = 0;
	while (*line != '\n' && *line != '\0')
	{
		buffer[i] = *line++;
		i++;
	}
	buffer[i] = '\0';
	strcpy(location.City, buffer);
	delete Document;
	Document = NULL;
	DocumentSize = 0;
	return LH_OK;
}

#ifndef VERSION_BW1W100
LH_RETURN LHInetWeather::GetDocument(char* request, unsigned long* size, char** document)
{
	return LH_FAIL;
}

LH_RETURN LHInetWeather::SendRequest(char* request, unsigned long* size, char** document)
{
	return Offline == true ? LH_OK : LH_FAIL;
}
#endif

LH_RETURN LHInetWeather::GetLocationDataForUser(char* user_name, char* password, LHInetWeatherLocation& location)
{
	if (Offline == true)
	{
		return LH_OK;
	}
	LH_RETURN result = LH_ERROR;
	char      date[40];
	char      encodedDate[50];
	char      encodedName[200];
	char      encodedPassword[200];
	DocumentSize = 0;
	URIEncode(user_name, encodedName);
	URIEncode(password, encodedPassword);
	GetDateFormatA(0, 0, NULL, LH_INETWEATHER_DATE_FORMAT, date, sizeof(date));
	URIEncode(date, encodedDate);
	LHHttpHeaderStatus status;
	if (Http != NULL)
	{
		delete Http;
		Http = NULL;
	}
	Http = new (FILEPATH, 858) LHHttp2;
	if (Http->Open(ServerName, ServerPort) == LH_OK)
	{
		if (Http->PrepareRequest(HTTP_REQUEST_TYPE_GET,
		                         LHSPrintf("%s?action=queryuserdata&username=%s&userpassword=%s&date=%s", ServerURL,
		                                   encodedName, encodedPassword, encodedDate),
		                         NULL, NULL, 0) == LH_HTTP_STATUS_REQUEST_PREPARED)
		{
			if (Http->HelperGetDocument(false) == LH_HTTP_STATUS_RECEIVED)
			{
				DocumentSize = Http->GetDocumentSize();
				Document = new (FILEPATH, 867) char[DocumentSize + LH_INETWEATHER_DOCUMENT_PADDING];
				memset(Document, 0, DocumentSize + LH_INETWEATHER_DOCUMENT_PADDING);
				Http->GetDocument(Document);
				Document[DocumentSize] = '\0';
				result = DecodeUserLocation(location);
			}
		}
	}
	Http->Close();
	Http->Reset();
	if (Http != NULL)
	{
		delete Http;
	}
	Http = NULL;
	return result;
}

#ifndef VERSION_BW1W100
LH_RETURN LHInetWeather::QueryWeatherByLocation(LHInetWeatherLocation& location)
{
	if (Offline == true)
	{
		return LH_ERROR;
	}
	char date[40];
	char encoded[500];
	char encodedDate[250];
	char request[3048];
	memset(encodedDate, 0, sizeof(encodedDate));
	GetDateFormatA(0, 0, NULL, LH_INETWEATHER_DATE_FORMAT, date, sizeof(date));
	URIEncode(date, encodedDate);
	strcpy(request, "action=queryweather");
	URIEncode(location.GetLocationCountryPtr(), encoded);
	strcat(request, LHSPrintf("&country=%s", encoded));
	URIEncode(location.GetLocationAreaPtr(), encoded);
	strcat(request, LHSPrintf("&area=%s", encoded));
	URIEncode(location.GetLocationCityPtr(), encoded);
	strcat(request, LHSPrintf("&city=%s", encoded));
	strcat(request, LHSPrintf("&date=%s", encodedDate));
	LH_RETURN result = GetDocument(request, &DocumentSize, &Document);
	if (result != LH_OK)
	{
		return result;
	}
	if (Document == NULL)
	{
		return LH_ERROR;
	}
	return DecodeWeatherData(location);
}
#endif

LH_RETURN LHInetWeather::QueryWeather(LHInetWeatherLocation& location)
{
	if (Offline == true)
	{
		return LH_ERROR;
	}
	LH_RETURN          result = LH_ERROR;
	LHHttpHeaderStatus status;
	char               date[40];
	char               encodedDate[50];
	char               encoded[500];
	char               request[2048];
	DocumentSize = 0;
	GetDateFormatA(0, 0, NULL, LH_INETWEATHER_DATE_FORMAT, date, sizeof(date));
	URIEncode(date, encodedDate);
	strcpy(request, "action=queryweather");
	URIEncode(location.GetLocationCountryPtr(), encoded);
	strcat(request, LHSPrintf("&country=%s", encoded));
	URIEncode(location.GetLocationAreaPtr(), encoded);
	strcat(request, LHSPrintf("&area=%s", encoded));
	URIEncode(location.GetLocationCityPtr(), encoded);
	strcat(request, LHSPrintf("&city=%s", encoded));
	strcat(request, LHSPrintf("&date=%s", encodedDate));
	if (Http != NULL)
	{
		delete Http;
		Http = NULL;
	}
	Http = new (FILEPATH, 965) LHHttp2;
	if (Http->Open(ServerName, ServerPort) == LH_OK)
	{
		if (Http->PrepareRequest(HTTP_REQUEST_TYPE_GET, LHSPrintf("%s?%s", ServerURL, request), NULL, NULL, 0) ==
		    LH_HTTP_STATUS_REQUEST_PREPARED)
		{
			if (Http->HelperGetDocument(false) == LH_HTTP_STATUS_RECEIVED)
			{
				DocumentSize = Http->GetDocumentSize();
				Document = new (FILEPATH, 974) char[DocumentSize + LH_INETWEATHER_DOCUMENT_PADDING];
				memset(Document, 0, DocumentSize + LH_INETWEATHER_DOCUMENT_PADDING);
				Http->GetDocument(Document);
				Document[DocumentSize] = '\0';
				result = DecodeWeatherData(location);
			}
		}
	}
	Http->Close();
	delete Http;
	Http = NULL;
	return result;
}

#define READ_WEATHER_TOKEN(token)                                                                                      \
	{                                                                                                                  \
		int i = 0;                                                                                                     \
		while (*line != '\0' && *line != ':' && *line != '\n')                                                         \
		{                                                                                                              \
			token[i] = *line++;                                                                                        \
			i++;                                                                                                       \
		}                                                                                                              \
		token[i] = '\0';                                                                                               \
		if (token[0] == '\0')                                                                                          \
		{                                                                                                              \
			strcpy(token, "-1");                                                                                       \
		}                                                                                                              \
		if (*line != '\0')                                                                                             \
		{                                                                                                              \
			line++;                                                                                                    \
		}                                                                                                              \
	}

LH_RETURN LHInetWeather::DecodeWeatherData(LHInetWeatherLocation& location)
{
	char  day[20];
	char  humidity[20];
	char  cloudCover[20];
	char  month[20];
	char  temperatureMin[20];
	char  windSpeed[20];
	char  temperature[20];
	char  year[20];
	char  weatherType[20];
	char* line = Document;
	if (line == NULL)
	{
		return LH_ERROR;
	}
	do
	{
		READ_WEATHER_TOKEN(day)
		READ_WEATHER_TOKEN(month)
		READ_WEATHER_TOKEN(year)
		READ_WEATHER_TOKEN(temperatureMin)
		READ_WEATHER_TOKEN(humidity)
		READ_WEATHER_TOKEN(temperature)
		READ_WEATHER_TOKEN(cloudCover)
		READ_WEATHER_TOKEN(weatherType)
		READ_WEATHER_TOKEN(windSpeed)
		while (*line != '\0' && *line != '\n')
		{
			line++;
		}
		if (*line == '\n')
		{
			line++;
		}
		if (strcmp(day, "-1") != 0)
		{
			LHInetWeatherLocation* entry = new (FILEPATH, 1177) LHInetWeatherLocation();
			entry->SetLocation(location.GetLocationCountryPtr(), location.GetLocationAreaPtr(),
			                   location.GetLocationCityPtr());
			entry->SetDate(atoi(day), atoi(month), atoi(year));
			entry->SetWeather(atoi(weatherType), atoi(temperature), atoi(temperatureMin), atoi(cloudCover),
			                  atoi(windSpeed), atoi(humidity));
			Locations.Add(entry);
		}
	} while (*line != '\0');
	if (DataFilePath != NULL)
	{
		SaveWeatherData();
	}
	return LH_OK;
}

#undef READ_WEATHER_TOKEN

LH_RETURN LHInetWeather::SaveWeatherData()
{
	FILE* file = fopen(DataFilePath, "wb");
	if (file == NULL)
	{
		return LH_ERROR;
	}
	fwrite(LH_INETWEATHER_FILE_ID, strlen(LH_INETWEATHER_FILE_ID), 1, file);
	fwrite(&Locations.count, sizeof(Locations.count), 1, file);
	for (LHLinkedNode<LHInetWeatherLocation*>* node = Locations.head.Get(); node != NULL; node = node->next.Get())
	{
		if (node->payload != NULL)
		{
			fwrite(node->payload, sizeof(LHInetWeatherLocation), 1, file);
		}
	}
	fclose(file);
	return LH_OK;
}

#ifndef VERSION_BW1W100
LH_RETURN LHInetWeather::LoadWeatherData()
{
	FILE* file = fopen(DataFilePath, "rb");
	if (file == NULL)
	{
		return LH_ERROR;
	}
	fseek(file, strlen(LH_INETWEATHER_FILE_ID), SEEK_SET);
	unsigned long count;
	fread(&count, sizeof(count), 1, file);
	fseek(file, -(long)sizeof(LHInetWeatherLocation), SEEK_END);
	long position = ftell(file);
	if (WeatherData.count > 0)
	{
		WeatherData.DeleteAll();
	}
	for (unsigned long i = 0; i < count; i++)
	{
		LHInetWeatherLocation* entry = new (FILEPATH, 1234) LHInetWeatherLocation();
		if (entry != NULL && fread(entry, sizeof(LHInetWeatherLocation), 1, file) == 1)
		{
			Locations.Add(entry);
			position -= sizeof(LHInetWeatherLocation);
			fseek(file, position, SEEK_SET);
		}
	}
	fclose(file);
	return LH_OK;
}
#endif

bool LHInetWeather::ReadWeatherInfoDataFile(char* path)
{
	FILE* file = fopen(path, "rb");
	if (file != NULL)
	{
		while (!feof(file))
		{
			LHInetWeatherData* data = new (FILEPATH, 1259) LHInetWeatherData;
			if (fread(data, sizeof(LHInetWeatherData), 1, file) == 1)
			{
				WeatherData.Add(data);
			}
			else
			{
				delete data;
			}
		}
		fclose(file);
		return true;
	}
	return false;
}

LHInetWeatherData* LHInetWeather::GetWeatherData(int16_t id)
{
	if (id == -1)
	{
		return NULL;
	}
	for (LHLinkedNode<LHInetWeatherData*>* node = WeatherData.head.Get(); node != NULL; node = node->next.Get())
	{
		LHInetWeatherData* data = node->payload;
		if (data != NULL && data->Id == id)
		{
			return data;
		}
	}
	return NULL;
}

void LHInetWeather::ApplyOperation(int8_t operation, float value, float* target)
{
	switch (operation)
	{
	case LH_INETWEATHER_OPERATION_ADD:
		*target = value + *target;
		break;
	case LH_INETWEATHER_OPERATION_SUBTRACT:
		*target = *target - value;
		break;
	default:
		*target = value;
		break;
	}
}

LH_RETURN LHInetWeather::CalculateWeatherPreset(LH_INETWEATHER_WEATHERTYPES type, WeatherInfo& weather,
                                                StormInfo& storm, bool& is_storm)
{
	LHInetWeatherData* data = GetWeatherData(type);
	float              value = 0.0f;
	if (data != NULL)
	{
		if (data->IsStorm == 1)
		{
			is_storm = true;
			ApplyOperation(data->ShadeOperation, data->ShadeValue, &storm.Shade);
			if (storm.Shade > 1.0f)
			{
				storm.Shade = 1.0f;
			}
			ApplyOperation(data->HeightOperation, data->HeightValue, &storm.Height);
			ApplyOperation(data->ForkLightningMaxOperation, data->ForkLightningMaxValue, &storm.ForkLightningMax);
			ApplyOperation(data->ForkLightningMinOperation, data->ForkLightningMinValue, &storm.ForkLightningMin);
			ApplyOperation(data->SheetLightningMaxOperation, data->SheetLightningMaxValue, &storm.SheetLightningMax);
			ApplyOperation(data->SheetLightningMinOperation, data->SheetLightningMinValue, &storm.SheetLightningMin);
			ApplyOperation(data->StormCloudsOperation, data->StormCloudsValue, &value);
			int8_t clouds = (int8_t)value;
			storm.Clouds = clouds > LH_INETWEATHER_MAX_WEATHER ? LH_INETWEATHER_MAX_WEATHER : clouds;
			ApplyOperation(data->FallSpeedOperation, data->FallSpeedValue, &storm.FallSpeed);
		}
		else
		{
			is_storm = false;
		}
		ApplyOperation(data->CloudOperation, data->CloudValue, &value);
		int8_t cloud = (int8_t)value;
		weather.Cloud = cloud > LH_INETWEATHER_MAX_WEATHER ? LH_INETWEATHER_MAX_WEATHER : cloud;
		ApplyOperation(data->SnowDepthOperation, data->SnowDepthValue, &value);
		int8_t snowDepth = (int8_t)value;
		weather.SnowDepth = snowDepth > LH_INETWEATHER_MAX_WEATHER ? LH_INETWEATHER_MAX_WEATHER : snowDepth;
		ApplyOperation(data->SnowOperation, data->SnowValue, &value);
		int8_t snow = (int8_t)value;
		weather.Snow = snow > LH_INETWEATHER_MAX_WEATHER ? LH_INETWEATHER_MAX_WEATHER : snow;
		ApplyOperation(data->RainOperation, data->RainValue, &value);
		int8_t rain = (int8_t)value;
		weather.Rain = rain > LH_INETWEATHER_MAX_WEATHER ? LH_INETWEATHER_MAX_WEATHER : rain;
		ApplyOperation(data->WindXOperation, data->WindXValue, &value);
		int8_t windX = (int8_t)value;
		weather.WindX = windX > LH_INETWEATHER_MAX_WEATHER ? LH_INETWEATHER_MAX_WEATHER : windX;
		ApplyOperation(data->WindZOperation, data->WindZValue, &value);
		int8_t windZ = (int8_t)value;
		weather.WindZ = windZ > LH_INETWEATHER_MAX_WEATHER ? LH_INETWEATHER_MAX_WEATHER : windZ;
		return LH_OK;
	}
	return LH_FAIL;
}

char* LHInetWeather::LHGetCountryForTag(char* tag)
{
	for (LHLinkedNode<LHCountryInfo*>* node = Countries.head.Get(); node != NULL; node = node->next.Get())
	{
		LHCountryInfo* country = node->payload;
		if (country != NULL && strcmp(country->Tag, tag) == 0)
		{
			return country->Name;
		}
	}
	return NULL;
}

void LHInetWeather::LHLoadCountryInformationFile(char* path)
{
	if (Countries.count != 0)
	{
		Countries.DeleteAll();
	}
	FILE* file = fopen(path, "rt");
	if (file != NULL)
	{
		char line[0x800];
		while (!feof(file))
		{
			if (fgets(line, sizeof(line), file) != NULL)
			{
				LHCountryInfo* info = new (FILEPATH, 1389) LHCountryInfo;
				if (info != NULL)
				{
					int i = 0;
					while (line[i] != '\0' && line[i] != '\n' && line[i] != '=')
					{
						info->Tag[i] = line[i];
						i++;
					}
					if (line[i] != '\0')
					{
						info->Tag[i] = '\0';
						i++;
					}
					int j = 0;
					while (line[i] != '\0' && line[i] != '\n')
					{
						info->Name[j++] = line[i++];
					}
					info->Name[j] = '\0';
					Countries.Add(info);
				}
			}
		}
	}
}

void LHInetWeather::InitForGame()
{
	Storm = NULL;
	if (!GGame::g_game->IsMultiplayerGame())
	{
		unsigned long profileSize = LH_INETWEATHER_PROFILE_SIZE;
		char          serverName[200] = LH_INETWEATHER_DEFAULT_SERVER_NAME;
		unsigned long size = sizeof(serverName);
		unsigned long port = LH_HTTP_DEFAULT_PORT;
		unsigned long useWeather = 1;
		char          serverUrl[200] = LH_INETWEATHER_DEFAULT_SERVER_URL;
		uint8_t       password[200];
		char16_t      loginName[100];
		char          passwordText[250];
		char          userText[250];
		char          path[256];
		if (ReadWeatherInfoDataFile(".\\scripts\\weatherinfo.lhw") == true)
		{
			if (RegistryRetrieveULong(LH_INETWEATHER_REGISTRY_KEY, "UseInternetWeatherSystem", &useWeather) == LH_FAIL)
			{
				RegistrySetULong(LH_INETWEATHER_REGISTRY_KEY, "UseInternetWeatherSystem", useWeather);
				RegistrySetULong(LH_INETWEATHER_REGISTRY_KEY, "WeatherSystemServerPort", (uint16_t)port);
				RegistrySetString(LH_INETWEATHER_REGISTRY_KEY, "WeatherSystemServerURL", serverUrl);
				RegistrySetString(LH_INETWEATHER_REGISTRY_KEY, "WeatherSystemServerName", serverName);
			}
			RegistryRetrieveULong(LH_INETWEATHER_REGISTRY_KEY, "WeatherSystemServerPort", &port);
			RegistryRetrieveString(LH_INETWEATHER_REGISTRY_KEY, "WeatherSystemServerName", serverName, &size);
			size = sizeof(serverUrl);
			RegistryRetrieveString(LH_INETWEATHER_REGISTRY_KEY, "WeatherSystemServerURL", serverUrl, &size);
			memset(loginName, 0, sizeof(loginName));
			memset(password, 0, sizeof(password));
			LHNetUseProfile(LHNetGetCurrentProfileNameFromRegistry());
			LHNetGetCurrentProfileWString("login name", loginName, &profileSize);
			profileSize = LH_INETWEATHER_PROFILE_SIZE;
			LHNetGetCurrentProfileData("login password", password, &profileSize);
			LHVersion::DecryptBlock(password, wcslen((wchar_t*)password) * sizeof(char16_t) + sizeof(char16_t));
			strcpy(userText, WCHAR2CHAR(loginName));
			strcpy(passwordText, WCHAR2CHAR((char16_t*)password));
			if (loginName[0] != 0 && useWeather == 0)
			{
				Offline = !GGame::InternetAvailable;
				GGame::g_game->path_creator.GetCurrentUserPath(path);
				SetServer(serverName, port, serverUrl);
				SetDataFilePath(LHSPrintf("%s\\weather.dat", path));
				if (Locations.count != 0)
				{
					Locations.DeleteAll();
				}
				if (GetLocationDataForUser(userText, passwordText, CurrentLocation) == LH_OK &&
				    QueryWeather(CurrentLocation) == LH_OK && GetLocationCount() > 0)
				{
					LHInetWeatherLocation* location = GetWeather(GetLocationCount() - 1);
					if (location != NULL)
					{
						CurrentLocation = *location;
						Command = LH_INETWEATHER_COMMAND_RESUME;
						Paused = true;
						Status = LH_INETWEATHER_STATUS_ENABLED;
					}
				}
			}
		}
	}
}

void LHInetWeather::ProcessWeather()
{
	if (Status == LH_INETWEATHER_STATUS_DISABLED)
	{
		return;
	}
	if (GGame::g_game->IsMultiplayerGame())
	{
		return;
	}
	if (InitialCommand == LH_INETWEATHER_COMMAND_NONE && Command != LH_INETWEATHER_COMMAND_NONE)
	{
		Command = LH_INETWEATHER_COMMAND_RESUME;
		InitialCommand = LH_INETWEATHER_COMMAND_RESUME;
	}
	if (!AmbientSaved)
	{
		AmbientSaved = true;
		OriginalAmbient.Cloud = LH3DAtmos::ambient.Cloud;
		OriginalAmbient.SnowDepth = LH3DAtmos::ambient.SnowDepth;
		OriginalAmbient.Snow = LH3DAtmos::ambient.Snow;
		OriginalAmbient.Temperature = LH3DAtmos::ambient.Temperature;
		OriginalAmbient.Rain = LH3DAtmos::ambient.Rain;
		OriginalAmbient.WindX = LH3DAtmos::ambient.WindX;
		OriginalAmbient.WindZ = LH3DAtmos::ambient.WindZ;
	}
	if (Storm != NULL && !LH3DStorm::ValidateStormPointer(Storm))
	{
		Storm = NULL;
	}
	if (Command != LH_INETWEATHER_COMMAND_NONE && CurrentLocation.WeatherType != LH_INETWEATHER_WEATHERTYPES_NONE &&
	    GetLocationCount() > 0)
	{
		LHPoint centre;
		GLandscape::GetIslandCentre(centre);
		StormInfo info(centre, LH_INETWEATHER_STORM_RADIUS, LH_INETWEATHER_STORM_FADE_RADIUS);
		switch (Command)
		{
		case LH_INETWEATHER_COMMAND_PAUSE:
			if (Status == LH_INETWEATHER_STATUS_DISABLING)
			{
				Status = LH_INETWEATHER_STATUS_DISABLED;
			}
			if (Paused != true)
			{
				SavedAmbient.Cloud = LH3DAtmos::ambient.Cloud;
				SavedAmbient.SnowDepth = LH3DAtmos::ambient.SnowDepth;
				SavedAmbient.Snow = LH3DAtmos::ambient.Snow;
				SavedAmbient.Temperature = LH3DAtmos::ambient.Temperature;
				SavedAmbient.Rain = LH3DAtmos::ambient.Rain;
				SavedAmbient.WindX = LH3DAtmos::ambient.WindX;
				SavedAmbient.WindZ = LH3DAtmos::ambient.WindZ;
				if (Storm != NULL)
				{
					SavedStormIntensity = Storm->Info.Intensity;
					Info = Storm->Info;
					Storm->Info.Intensity = 0.0f;
					Storm->Killed = 0;
					if (LH3DStorm::ValidateStormPointer(Storm))
					{
						LH3DStorm::KillStorm(Storm);
					}
					else
					{
						Storm = NULL;
					}
				}
				if (AmbientSaved == true)
				{
					LH3DAtmos::ambient.Cloud = OriginalAmbient.Cloud;
					LH3DAtmos::ambient.SnowDepth = OriginalAmbient.SnowDepth;
					LH3DAtmos::ambient.Snow = OriginalAmbient.Snow;
					LH3DAtmos::ambient.Temperature = OriginalAmbient.Temperature;
					LH3DAtmos::ambient.Rain = OriginalAmbient.Rain;
					LH3DAtmos::ambient.WindX = OriginalAmbient.WindX;
					LH3DAtmos::ambient.WindZ = OriginalAmbient.WindZ;
				}
				Paused = true;
			}
			Command = LH_INETWEATHER_COMMAND_NONE;
			break;
		case LH_INETWEATHER_COMMAND_RESUME:
			if (Paused)
			{
				bool isStorm;
				LH3DAtmos::ambient.Temperature = CurrentLocation.Temperature;
				LH3DAtmos::ambient.Cloud = CurrentLocation.CloudCover;
				CalculateWeatherPreset((LH_INETWEATHER_WEATHERTYPES)CurrentLocation.WeatherType, LH3DAtmos::ambient,
				                       info, isStorm);
				if (isStorm)
				{
					info.Weather.Rain = LH3DAtmos::ambient.Rain;
					info.Weather.SnowDepth = LH3DAtmos::ambient.SnowDepth;
					info.Weather.Snow = LH3DAtmos::ambient.Snow;
					info.Weather.Cloud = LH3DAtmos::ambient.Cloud;
					info.Weather.WindX = LH3DAtmos::ambient.WindX;
					info.Weather.WindZ = LH3DAtmos::ambient.WindZ;
					info.Weather.Temperature = LH3DAtmos::ambient.Temperature;
					info.Time = LH_INETWEATHER_STORM_LIFETIME;
					info.Fade = 1.0f;
					Storm = LH3DStorm::CreateStorm(info);
				}
				Paused = false;
				Command = LH_INETWEATHER_COMMAND_NONE;
				char16_t* helpText = HelpTextData::GetTextL(HELP_TEXT_WEATHER_INFO);
				char      text[300];
				char*     area = CurrentLocation.GetLocationAreaPtr();
				if (area != NULL && strcmp(area, "") != 0 && strcmp(area, "(null)") != 0)
				{
					sprintf(text, "%s (%s,%s)", CurrentLocation.GetLocationCityPtr(), area,
					        LHGetCountryForTag(CurrentLocation.GetLocationCountryPtr()));
				}
				else
				{
					sprintf(text, "%s (%s)", CurrentLocation.GetLocationCityPtr(),
					        LHGetCountryForTag(CurrentLocation.GetLocationCountryPtr()));
				}
				IncomingBubbleInfo* bubble =
					AddIncomingText(INCOMINGTEXTTYPE_WEATHER, LHSPrintfW(L"%s %s", helpText, CHAR2WCHAR(text)));
				if (bubble != NULL)
				{
					bubble->Weather = GetWeatherBubbleIcon(CurrentLocation.WeatherType);
				}
			}
			else
			{
				Command = LH_INETWEATHER_COMMAND_NONE;
			}
			break;
		}
	}
	if (RecalculateRequested == true)
	{
		bool    isStorm;
		LHPoint centre;
		GLandscape::GetIslandCentre(centre);
		StormInfo info(centre, LH_INETWEATHER_STORM_RADIUS, LH_INETWEATHER_STORM_FADE_RADIUS);
		ReadWeatherInfoDataFile(".\\scripts\\weatherinfo.lhw");
		if (Storm == NULL)
		{
			CalculateWeatherPreset((LH_INETWEATHER_WEATHERTYPES)CurrentLocation.WeatherType, LH3DAtmos::ambient, info,
			                       isStorm);
		}
		else
		{
			CalculateWeatherPreset((LH_INETWEATHER_WEATHERTYPES)CurrentLocation.WeatherType, LH3DAtmos::ambient,
			                       Storm->Info, isStorm);
			if (isStorm)
			{
				Storm->Info.Weather.Rain = LH3DAtmos::ambient.Rain;
				Storm->Info.Weather.SnowDepth = LH3DAtmos::ambient.SnowDepth;
				Storm->Info.Weather.Snow = LH3DAtmos::ambient.Snow;
				Storm->Info.Weather.Cloud = LH3DAtmos::ambient.Cloud;
				Storm->Info.Weather.WindX = LH3DAtmos::ambient.WindX;
				Storm->Info.Weather.WindZ = LH3DAtmos::ambient.WindZ;
				Storm->Info.Weather.Temperature = LH3DAtmos::ambient.Temperature;
				Storm->Info.Time = LH_INETWEATHER_STORM_LIFETIME;
				Storm->Info.Fade = 1.0f;
				Storm->Info.Intensity = 1.0f;
			}
			else
			{
				Storm->Info.Intensity = 0.0f;
			}
		}
		if (Storm == NULL && isStorm)
		{
			info.Weather.Rain = LH3DAtmos::ambient.Rain;
			info.Weather.Snow = LH3DAtmos::ambient.Snow;
			info.Weather.Cloud = LH3DAtmos::ambient.Cloud;
			info.Weather.WindX = LH3DAtmos::ambient.WindX;
			info.Weather.WindZ = LH3DAtmos::ambient.WindZ;
			info.Weather.Temperature = LH3DAtmos::ambient.Temperature;
			info.Time = LH_INETWEATHER_STORM_LIFETIME;
			info.Fade = 1.0f;
			Storm = LH3DStorm::CreateStorm(info);
		}
		RecalculateRequested = false;
	}
}

LHInetWeatherLocation* LHInetWeather::GetWeather(uint8_t index)
{
	return Locations.GetAtPosition(index);
}

#ifndef VERSION_BW1W100
LHInetWeatherLocation* LHInetWeather::FindLocationByDate(int8_t day, int8_t month, int16_t year)
{
	for (LHLinkedNode<LHInetWeatherLocation*>* node = Locations.head.Get(); node != NULL; node = node->next.Get())
	{
		LHInetWeatherLocation* location = node->payload;
		int8_t                 locationDay;
		int8_t                 locationMonth;
		int16_t                locationYear;
		location->GetDate(&locationDay, &locationMonth, &locationYear);
		if (locationDay == day && locationMonth == month && locationYear == year)
		{
			return location;
		}
	}
	return NULL;
}
#endif
