#include "SpookyVoices.h"

#include <ctype.h>

#include "ColourConstants.h" /* For White */
#include "SpookyVoiceInfo.h"

GSpookyVoiceInfo GSpookyVoiceInfo::Infos[NUM_SPOOKY_NAMES];

GBaseInfo* GSpookyVoiceInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = NUM_SPOOKY_NAMES;
	return Infos;
}

GSpookyVoices::~GSpookyVoices() {}

int GSpookyVoices::SoundExCode(wchar_t* text)
{
	if (!isalpha(*text))
	{
		return SOUNDEX_CODE_NONE;
	}
	switch (*text | SOUNDEX_CHARACTER_MASK)
	{
	case L'b':
	case L'f':
	case L'p':
	case L'v':
		return SOUNDEX_CODE_BFPV;
	case L'c':
	case L'g':
	case L'j':
	case L'k':
	case L'q':
	case L's':
	case L'x':
	case L'z':
		return SOUNDEX_CODE_CGJKQSXZ;
	case L'd':
	case L't':
		return SOUNDEX_CODE_DT;
	case L'l':
		return SOUNDEX_CODE_L;
	case L'm':
	case L'n':
		return SOUNDEX_CODE_MN;
	case L'r':
		return SOUNDEX_CODE_R;
	case L'a':
	case L'e':
	case L'i':
	case L'o':
	case L'u':
		return SOUNDEX_CODE_NONE;
	}
	return *text;
}

int GSpookyVoices::GetNextSoundexCode(wchar_t*& text)
{
	int code;
	do
	{
		if (*text == L'\0')
		{
			return SOUNDEX_CODE_NONE;
		}
		if (*text == L' ')
		{
			return SOUNDEX_CODE_NONE;
		}
		code = SoundExCode(text++);
	} while (code == SOUNDEX_CODE_NONE);
	while (SoundExCode(text) == code)
	{
		code++;
	}
	return code;
}

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
