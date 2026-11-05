#ifndef BW1_DECOMP_HELP_TEXT_INCLUDED_H
#define BW1_DECOMP_HELP_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHRegion.h>  /* For struct LHRegion */
#include <Lionhead/LHLib/ver5.0/LHWin.h>            /* For operator new(size_t, const char*, uint32_t) */

#include <re_common.h> /* For bool32_t */

#include "Base.h" /* For struct Base */

#if defined(VERSION_BW1W130)
#define HELP_TEXT_FILEPATH "D:\\Work\\Games\\dd\\Black\\HelpText.h"
#elif defined(VERSION_BW1W120)
#define HELP_TEXT_FILEPATH "C:\\dev\\MP\\Black\\HelpText.h"
#elif defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define HELP_TEXT_FILEPATH "C:\\dev\\black\\HelpText.h"
#else
#define HELP_TEXT_FILEPATH "C:\\dev\\Black\\HelpText.h"
#endif
#ifdef VERSION_BW1W100
#define HELP_TEXT_INIT_LINE 92
#else
#define HELP_TEXT_INIT_LINE 93
#endif

class HelpSystem;

class HelpText : public Base
{
public:
	const char16_t* str; /* 0x8 */
	uint32_t        field_0xc;
	uint32_t        field_0x10;
	uint32_t        field_0x14;
	uint32_t        field_0x18;
	LH3DColor       field_0x1c;
	LH3DColor       field_0x20;
	LHRegion        field_0x24;
	uint32_t        field_0x34[0x4][0x6];
	uint32_t        field_0x94;
	uint32_t        field_0x98;
	float           field_0x9c;
	float           field_0xa0;
	uint32_t        field_0xa4;
	uint32_t        field_0xa8;
	uint32_t        field_0xac;
	bool32_t        SingleLine;
	uint32_t        field_0xb4;
	uint32_t        field_0xb8;

	// Override methods

	// BW1W120 005cad90 BW1M119 0135f5d0
	virtual ~HelpText();

	// Constructors

	// BW1W120 005cad40 BW1M119 0135f9e0
	HelpText(const LHRegion& region);

	// BW1W120 005cb090 BW1M119 0135f510
	static HelpText* Create(const LHRegion& region, HelpSystem* help_system);
	// BW1W120 005cb020 BW1M119 0135f670
	void Reset(bool full);
};

struct HelpTextData
{
	// Static methods

	// BW1W120 inlined BW1M119 0110db70
	static char16_t* GetTextL(unsigned long index);
};

struct HelpTextInfo
{
	uint32_t  field_0x0;
	uint32_t  field_0x4;
	char16_t* Text;

	// BW1W120 inlined BW1M119 0150f7f0
	HelpTextInfo() : Text(NULL) {}
	// BW1W120 inlined BW1M119 0135cc50
	~HelpTextInfo()
	{
		if (Text != NULL)
		{
			delete Text;
		}
	}
};

static_assert(sizeof(HelpTextInfo) == 0xc, "HelpTextInfo size is incorrect");

struct HelpTextDataBase
{
	// BW1W120 00d17c78
	static int CurrentMultiplayerEntry;
	// BW1W120 00d17c80
	static int CurrentPatchEntry;
	// BW1W120 00d17c88
	static int CurrentEntry;
	// BW1W120 00d17ca0
	static HelpTextDataBase PatchTextDatabase;
	// TODO: Original global name unknown.
	// BW1W120 00d17ca8
	static HelpTextDataBase HelpTextDatabase;
	// Descriptive name; filled from InfoScriptMultiplayer2.txt.
	// BW1W120 00d17c98
	static HelpTextDataBase MultiplayerTextDatabase;

	HelpTextInfo* array; /* 0x0 */
	uint32_t      count;

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void Init(long num_entries)
	{
		count = num_entries;
		array = new (HELP_TEXT_FILEPATH, HELP_TEXT_INIT_LINE) HelpTextInfo[count];
	}
	// BW1W120 inlined BW1M119 010946e0
	char16_t* GetHelpText(unsigned long index) const
	{
		if (index >= count)
		{
			index = 0;
		}
		return (index <= 0 ? array : &array[index])->Text;
	}

	// BW1W120 005ccf80 BW1M119 0135cce0
	void SetData(int index, unsigned long id, HELP_TEXT_NARRATOR narrator, wchar_t* text, wchar_t* speech);
};

// BW1W120 inlined BW1M119 0110db70
inline char16_t* HelpTextData::GetTextL(unsigned long index)
{
	return HelpTextDataBase::HelpTextDatabase.GetHelpText(index);
}

#endif /* BW1_DECOMP_HELP_TEXT_INCLUDED_H */
