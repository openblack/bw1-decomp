#include "SpookyVoices.h"

#include "ColourConstants.h" /* For White */
#include "SpookyVoiceInfo.h"

GSpookyVoiceInfo GSpookyVoiceInfo::Infos[NUM_SPOOKY_NAMES];

GBaseInfo* GSpookyVoiceInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = NUM_SPOOKY_NAMES;
	return Infos;
}

GSpookyVoices::~GSpookyVoices() {}

bool GSpookyVoices::PerformSoundexComparison(wchar_t* first, wchar_t* second)
{
	if (*first != *second)
	{
		return false;
	}
	if (*first == L'\0')
	{
		return false;
	}
	first++;
	second++;
	if (GetNextSoundexCode(first) != GetNextSoundexCode(second))
	{
		return false;
	}
	if (GetNextSoundexCode(first) != GetNextSoundexCode(second))
	{
		return false;
	}
	if (GetNextSoundexCode(first) != GetNextSoundexCode(second))
	{
		return false;
	}
	return true;
}

bool GSpookyVoices::SoundexOverlap(wchar_t* name, wchar_t* words)
{
	while (*words != L'\0')
	{
		if (PerformSoundexComparison(name, words))
		{
			return true;
		}
		while (*words != L'\0' && *words != L' ')
		{
			words++;
		}
		if (*words != L'\0')
		{
			words++;
		}
	}
	return false;
}
