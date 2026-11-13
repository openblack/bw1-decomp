#ifndef BW1_DECOMP_HELP_TEXT_DATA_BASE_INCLUDED_H
#define BW1_DECOMP_HELP_TEXT_DATA_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT_NARRATOR */

#include <re_common.h> /* For bool32_t */

struct HelpTextInfo
{
	HELP_TEXT_NARRATOR Narrator;
	bool32_t           ShouldBeDrawn;
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

	// BW1W120 005cad00 BW1M119 inlined
	void Set(bool32_t should_be_drawn, HELP_TEXT_NARRATOR narrator, wchar_t* name, wchar_t* text);
};

static_assert(sizeof(HelpTextInfo) == 0xc, "HelpTextInfo size is incorrect");

struct HelpTextData;
struct HelpTextDataPatch;
struct HelpTextDataMultiplayer;

struct HelpTextDataBase
{
	// BW1W120 00d17c78
	static int CurrentMultiplayerEntry;
	// BW1W120 00d17c80
	static int CurrentPatchEntry;
	// BW1W120 00d17c88
	static int CurrentEntry;
	// BW1W120 00d17ca0
	static HelpTextDataPatch PatchTextDatabase;
	// BW1W120 00d17ca8
	static HelpTextData HelpTextDatabase;
	// BW1W120 00d17c98
	static HelpTextDataMultiplayer MultiplayerTextDatabase;

	HelpTextInfo* array; /* 0x0 */
	uint32_t      count;

	// BW1W120 inlined BW1M119 0135fd60
	HelpTextDataBase() : array(NULL), count(0) {}

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
	// BW1W120 inlined BW1M119 0135cdc0
	HelpTextInfo* GetWriteableData(unsigned long index) { return index >= count ? array : &array[index]; }
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
	void SetData(bool32_t should_be_drawn, unsigned long index, HELP_TEXT_NARRATOR narrator, wchar_t* name,
	             wchar_t* text);
	// BW1W120 005ccfc0 BW1M119 null
	void Reload();
};

#endif /* BW1_DECOMP_HELP_TEXT_DATA_BASE_INCLUDED_H */
