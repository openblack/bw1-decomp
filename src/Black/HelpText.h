#ifndef BW1_DECOMP_HELP_TEXT_INCLUDED_H
#define BW1_DECOMP_HELP_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHRegion.h>  /* For struct LHRegion */
#include <Lionhead/LHLib/ver5.0/LHWin.h>            /* For operator new(size_t, const char*, uint32_t) */

#include <re_common.h> /* For bool32_t */

#include "Base.h"             /* For struct Base */
#include "HelpTextDataBase.h" /* For struct HelpTextDataBase, struct HelpTextInfo */

#define HELP_TEXT_FILEPATH SOURCE_DIRECTORY "HelpText.h"
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
	// BW1W120 005cb010 BW1M119 0135f700
	void CloseDialogWindow();
};

struct HelpTextData
{
	// Static methods

	// BW1W120 inlined BW1M119 0110db70
	static char16_t* GetTextL(unsigned long index);
};

inline void HelpTextDataBase::Init(long num_entries)
{
	count = num_entries;
	array = new (HELP_TEXT_FILEPATH, HELP_TEXT_INIT_LINE) HelpTextInfo[count];
}

struct HelpTextDataPatch
{
	// BW1W120 inlined BW1M119 015c2470
	static char16_t* GetTextL(unsigned long index) { return HelpTextDataBase::PatchTextDatabase.GetHelpText(index); }
};

// BW1W120 inlined BW1M119 0110db70
inline char16_t* HelpTextData::GetTextL(unsigned long index)
{
	return HelpTextDataBase::HelpTextDatabase.GetData(index)->Text;
}

#endif /* BW1_DECOMP_HELP_TEXT_INCLUDED_H */
