#ifndef BW1_DECOMP_LOADER_ANON_INCLUDED_H
#define BW1_DECOMP_LOADER_ANON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

// Forward Declares

class LHFile;

#define LOADER_ANON_LOAD_ID_SIZE 12

struct AnonInstance
{
	uint8_t       field_0x0[0x2e4];
	AnonInstance* Next;

	// BW1W120 0042fc40 BW1M119 0118c4d0
	~AnonInstance() { delete Next; }
};

struct AnonField
{
	uint8_t       field_0x0[0x11c];
	AnonInstance* Instances;
	AnonField*    Next;

	// BW1W120 0042fc70 BW1M119 inlined
	~AnonField()
	{
		delete Instances;
		delete Next;
	}
};

struct AnonGroup
{
	uint8_t    field_0x0[0x88];
	AnonField* Fields;
	AnonGroup* Next;

	// BW1W120 0042fcc0 BW1M119 0118c400
	~AnonGroup()
	{
		delete Fields;
		delete Next;
	}
};

struct LoaderAnon
{
	AnonGroup*     Groups;
	AnonGroup*     CurrentGroup;
	char           DetailPrefix[0x80];
	char           EnumPrefix[0x80];
	char           LoadId[LOADER_ANON_LOAD_ID_SIZE];
	bool32_t       UseLoadId;
	unsigned char  TextBuffer[0x2000];
	unsigned char* Cursor;
	uint32_t       ErrorCount;
	uint32_t       NumTruncatedStrings;

	// BW1W120 005f2af0 BW1M119 01109ea0
	LoaderAnon(char* detail_prefix, char* enum_prefix, char* load_id);
	// BW1W120 0042fbb0 BW1M119 inlined
	~LoaderAnon() { delete Groups; }

	// BW1W120 005f32f0 BW1M119 011090c0
	void ReadVariableFile(char* file_name);
	// BW1W120 005f3120 BW1M119 01109630
	unsigned long LoadData(char* info_str, unsigned long index, unsigned long* buffer);
};
static_assert(sizeof(LoaderAnon) == 0x2124, "Data type is of wrong size");

#endif /* BW1_DECOMP_LOADER_ANON_INCLUDED_H */
