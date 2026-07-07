#ifndef BW1_DECOMP_LH_PARSE_FILE_INCLUDED_H
#define BW1_DECOMP_LH_PARSE_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

class LHParseFile
{
public:
    char line[0x100]; /* 0x0 */
    char word[0x80]; /* 0x100 */
    char token[0x80]; /* 0x180 */
    char enum_name[0x80]; /* 0x200 */
    uint32_t pushback_type; /* 0x280 */
    uint32_t pushback_value; /* 0x284 */
    char* pushback_text; /* 0x288 */
    void* enum_pairs; /* 0x28c */
    void* enum_sorted; /* 0x290 */
    uint16_t enum_count; /* 0x294 */
    uint16_t field_0x296;
    uint32_t field_0x298;
    uint32_t line_number; /* 0x29c */
    char* parse_ptr; /* 0x2a0 */
    char* scan_ptr; /* 0x2a4 */
    char* filename; /* 0x2a8 */
    void* file; /* 0x2ac */
    char* delimiters; /* 0x2b0 */
    uint16_t line_length; /* 0x2b4 */
    uint16_t word_length; /* 0x2b6 */
    uint32_t field_0x2b8;

    // BW1W120 007be480 LHParseFile::Open(void)
    uint32_t Open();
    // BW1W120 007be4b0 LHParseFile::Close(void)
    uint32_t Close();
    // BW1W120 007be510 LHParseFile::GetNextTokenIgnoreComments(int *)
    uint32_t GetNextTokenIgnoreComments(int* token_out);
    // BW1W120 007be530 LHParseFile::FindEnumVal(void *, unsigned int *)
    uint32_t FindEnumVal(void* key, uint32_t* out_value);
    // BW1W120 007be570 LHParseFile::FindEnumValLinear(char const *, unsigned int *)
    uint32_t FindEnumValLinear(const char* key, uint32_t* out_value);
    // BW1W120 007be5f0 LHParseFile::FreeEnumList(void)
    void FreeEnumList();
    // BW1W120 007be670 LHParseFile::ParseEnumList(void)
    uint32_t ParseEnumList();
    // BW1W120 007be6a0 LHParseFile::ParseEnumListInternal(void)
    uint32_t ParseEnumListInternal();
    // BW1W120 007bea70 LHParseFile::GetNextToken(int *)
    uint32_t GetNextToken(int* token_out);
    // BW1W120 007befb6 LHParseFile::GetNextLine(void)
    uint32_t GetNextLine();
    // BW1W120 007bf030 LHParseFile::GetNextWord(void)
    uint32_t GetNextWord();
};

// BW1W120 007be400 LHEnumPairCompare(char const **, char const **)
int LHEnumPairCompare(const char** a, const char** b);
// BW1W120 007be440 LHEnumPairCompareWithString(char const *, char const **)
int LHEnumPairCompareWithString(const char* a, const char** b);

#endif /* BW1_DECOMP_LH_PARSE_FILE_INCLUDED_H */
