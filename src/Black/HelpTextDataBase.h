#ifndef BW1_DECOMP_HELP_TEXT_DATA_BASE_INCLUDED_H
#define BW1_DECOMP_HELP_TEXT_DATA_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT_NARRATOR */

struct HelpTextInfo
{
	uint32_t           Id; /* 0x0 */
	HELP_TEXT_NARRATOR Narrator;
	char16_t*          Text;

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
	// BW1W120 00d17ca8
	static HelpTextDataBase HelpTextDatabase;
	// BW1W120 00d17c98
	static HelpTextDataBase MultiplayerTextDatabase;

	HelpTextInfo* array; /* 0x0 */
	uint32_t      count;

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void Init(long num_entries);
	// BW1W120 inlined BW1M119 0135fc50
	void DeleteAll()
	{
		if (count != 0)
		{
			delete[] array;
			count = 0;
		}
	}
	// BW1W120 004707f0 BW1M119 01243920
	HelpTextInfo* GetData(unsigned long index) const
	{
		if (index >= count)
		{
			index = 0;
		}
		return index <= 0 ? array : &array[index];
	}
	// BW1W120 inlined BW1M119 010946e0
	wchar_t* GetHelpText(unsigned long index) const
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

#endif /* BW1_DECOMP_HELP_TEXT_DATA_BASE_INCLUDED_H */
