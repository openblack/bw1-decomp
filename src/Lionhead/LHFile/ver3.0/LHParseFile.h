#ifndef BW1_DECOMP_LH_PARSE_FILE_INCLUDED_H
#define BW1_DECOMP_LH_PARSE_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint16_t, uint32_t */

struct LHEnumPair
{
	char* name;
	int   value;
};

struct LHToken
{
	LHToken()
	{
		Type = 0;
		Value = 0;
		Text = NULL;
	}

	uint32_t Type;
	uint32_t Value;
	char*    Text;
};

class LHParseFile
{
public:
	char     line[0x100];
	char     word[0x80];
	char     token[0x80];
	char     EnumName[0x80];
	LHToken  Pushback;
	void*    EnumPairs;
	void*    EnumSorted;
	uint16_t EnumCount;
	uint16_t field_0x296;
	uint32_t field_0x298;
	uint32_t line_number;
	char*    ParsePtr;
	char*    ScanPtr;
	char*    filename;
	void*    file;
	char*    delimiters;
	uint16_t LineLength;
	uint16_t WordLength;
	uint32_t Unused;

	// Inlined everywhere: BW1W120 00585590 and 00585cd0 build it in place.
	LHParseFile(char* path, const char* delimiter_set)
	{
		filename = path;
		file = NULL;
		LineLength = 0;
		WordLength = 0;
		delimiters = (char*)delimiter_set;
		Unused = 0;
		line_number = 0;
		EnumName[0] = '\0';
		EnumPairs = NULL;
		EnumSorted = NULL;
		EnumCount = 0;
	}
	// BW1W120 007bea60 BW1M119 01166cc0 (LHCombined Release)
	~LHParseFile();

	// BW1W120 007be480 BW1M119 01167750 (LHCombined Release)
	uint32_t Open();
	// BW1W120 007be4b0 BW1M119 01167640 (LHCombined Release)
	uint32_t Close();
	// BW1W120 007be510 BW1M119 011675a0 (LHCombined Release)
	uint32_t GetNextTokenIgnoreComments(int* token_out);
	// BW1W120 007be530 BW1M119 01167500 (LHCombined Release)
	uint32_t FindEnumVal(char* key, long* out_value);
	// BW1W120 007be570 BW1M119 01167430 (LHCombined Release)
	uint32_t FindEnumValLinear(const char* key, uint32_t* out_value);
	// BW1W120 007be5f0 BW1M119 01167350 (LHCombined Release)
	void FreeEnumList();
	// BW1W120 007be670 BW1M119 011672b0 (LHCombined Release)
	uint32_t ParseEnumList();
	// BW1W120 007be6a0
	uint32_t ParseEnumListInternal();
	// BW1W120 007bea70 BW1M119 011664a0 (LHCombined Release)
	uint32_t GetNextToken(int* token_out);
	// BW1W120 007bf030 BW1M119 01166340 (LHCombined Release)
	uint32_t GetNextLine();
	// BW1W120 007bf0d0 BW1M119 01166130 (LHCombined Release)
	uint32_t GetNextWord();
};

// BW1W120 007be400 BW1M119 01167850 (LHCombined Release)
int LHEnumPairCompare(const char** a, const char** b);
// BW1W120 007be440 BW1M119 011677f0 (LHCombined Release)
int LHEnumPairCompareWithString(const char* a, const char** b);

#endif /* BW1_DECOMP_LH_PARSE_FILE_INCLUDED_H */
