#include <stdlib.h> /* For atol */
#include <string.h> /* For stricmp */

#define LH_AUDIO_REGISTRY_NAME_LENGTH  0x40
#define LH_AUDIO_REGISTRY_VALUE_LENGTH 0x80

#define LH_AUDIO_MAX_HEAP_SIZE_MB 128
#define LH_AUDIO_MEGABYTE         (1024 * 1024)
#define LH_AUDIO_MAX_SAMPLES      128

#define LH_AUDIO_LATENCY_20  20
#define LH_AUDIO_LATENCY_50  50
#define LH_AUDIO_LATENCY_100 100
#define LH_AUDIO_LATENCY_200 200

void LH_AudioSystem::LHRegistrySetOverrides()
{
	HKEY key;
	if (RegOpenKey(HKEY_CURRENT_USER, OverrideKey, &key) != ERROR_SUCCESS)
	{
		return;
	}

	char  name[LH_AUDIO_REGISTRY_NAME_LENGTH];
	char  value[LH_AUDIO_REGISTRY_VALUE_LENGTH];
	DWORD type;
	DWORD index = 0;
	DWORD nameSize = sizeof(name);
	DWORD valueSize = sizeof(value);
	while (RegEnumValue(key, index, name, &nameSize, NULL, &type, (LPBYTE)value, &valueSize) == ERROR_SUCCESS)
	{
		if (type == REG_SZ)
		{
			if (!_stricmp(name, "NoAudio") && !_stricmp(value, "TRUE"))
			{
				EnableWave = false;
				EnableMidi = false;
				EnableMusic = false;
				EnableRedbook = false;
			}
			if (!_stricmp(name, "Wave"))
			{
				if (!_stricmp(value, "DISABLED"))
				{
					EnableWave = false;
				}
				else if (!_stricmp(value, "ENABLED"))
				{
					EnableWave = true;
				}
			}
			if (!_stricmp(name, "Midi"))
			{
				if (!_stricmp(value, "DISABLED"))
				{
					EnableMidi = false;
				}
				else if (!_stricmp(value, "ENABLED"))
				{
					EnableMidi = true;
				}
			}
			if (!_stricmp(name, "Music"))
			{
				if (!_stricmp(value, "DISABLED"))
				{
					EnableMusic = false;
				}
				else if (!_stricmp(value, "ENABLED"))
				{
					EnableMusic = true;
				}
			}
			if (!_stricmp(name, "Redbook"))
			{
				if (!_stricmp(value, "DISABLED"))
				{
					EnableRedbook = false;
				}
				else if (!_stricmp(value, "ENABLED"))
				{
					EnableRedbook = true;
				}
			}
			if (!_stricmp(name, "Atmos"))
			{
				if (!_stricmp(value, "DISABLED"))
				{
					EnableAtmos = false;
				}
				else if (!_stricmp(value, "ENABLED"))
				{
					EnableAtmos = true;
				}
			}
			if (!_stricmp(name, "Sfx"))
			{
				if (!_stricmp(value, "DISABLED"))
				{
					DisableSfx = true;
				}
				else if (!_stricmp(value, "ENABLED"))
				{
					DisableSfx = false;
				}
			}
			if (!_stricmp(name, "3DSpatialisation"))
			{
				if (!_stricmp(value, "DISABLED"))
				{
					Disable3DSpatialisation = true;
				}
				else if (!_stricmp(value, "ENABLED"))
				{
					Disable3DSpatialisation = false;
				}
			}
			if (!_stricmp(name, "UseHardware"))
			{
				if (!_stricmp(value, "DISABLED"))
				{
					UseHardware = false;
				}
				if (!_stricmp(value, "ENABLED"))
				{
					UseHardware = true;
				}
			}
			if (!_stricmp(name, "SpeakerConfig"))
			{
				if (!_stricmp(value, "STEREO"))
				{
					SpeakerConfig = LH_AUDIO_SPEAKER_CONFIG_STEREO;
				}
				if (!_stricmp(value, "QUAD"))
				{
					SpeakerConfig = LH_AUDIO_SPEAKER_CONFIG_QUAD;
				}
			}
			if (!_stricmp(name, "HeapSize"))
			{
				unsigned long size = atol(value);
				if (size > 0 && size <= LH_AUDIO_MAX_HEAP_SIZE_MB)
				{
					HeapSize = size * LH_AUDIO_MEGABYTE;
				}
			}
			if (!_stricmp(name, "MaxSamp"))
			{
				unsigned long samples = atol(value);
				if (samples > 0 && samples <= LH_AUDIO_MAX_SAMPLES)
				{
					MaxSamples = samples;
				}
			}
			if (!_stricmp(name, "HWRate"))
			{
				unsigned long rate = atol(value);
				if (rate == LH_AUDIO_HW_RATE_11K || rate == LH_AUDIO_HW_RATE_22K || rate == LH_AUDIO_HW_RATE_44K)
				{
					HWRate = rate;
				}
			}
			if (!_stricmp(name, "Latency"))
			{
				unsigned long latency = atol(value);
				if (latency == LH_AUDIO_LATENCY_20 || latency == LH_AUDIO_LATENCY_50 ||
				    latency == LH_AUDIO_LATENCY_100 || latency == LH_AUDIO_LATENCY_200)
				{
					Latency = latency;
				}
			}
		}
		index++;
		nameSize = sizeof(name);
		valueSize = sizeof(value);
	}
	RegCloseKey(key);
}
