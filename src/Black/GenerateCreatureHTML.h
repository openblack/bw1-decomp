#ifndef BW1_DECOMP_GENERATE_CREATURE_HTML_INCLUDED_H
#define BW1_DECOMP_GENERATE_CREATURE_HTML_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>     /* For enum LH_RETURN */

#define CREATURE_INET_FILE_HEADER_SIZE    0x24
#define CREATURE_INET_FILE_VERSION        1
#define CREATURE_INET_FILE_SALT_RANGE     0x8000
#define CREATURE_INET_FILE_BUFFER_PADDING 10
#define CRYPT_BLOCK_SIZE                  8
#define TEA_DELTA                         0x9e3779b9
#define TEA_ROUNDS                        32

struct HTMLParserValue
{
	char Key[250];
	char Value[250];
};
static_assert(sizeof(HTMLParserValue) == 0x1f4, "HTMLParserValue size is incorrect");

class HTMLParser
{
public:
	LHLinkedList<HTMLParserValue*> Values;

	// BW1W120 00578500 BW1M119 010fbf60
	HTMLParser();
	// BW1W120 005784b0 BW1M119 010fc090
	~HTMLParser();

	// BW1W120 00578330 BW1M119 010fc2b0
	LH_RETURN WriteDataFile(char* name, char* path);
	// BW1W120 005780f0 BW1M119 010fc5d0
	LH_RETURN ParseTemplateFileTo(char* template_path, char* output_path);
	// BW1W120 00578060 BW1M119 010fc990
	LH_RETURN AddKeyValue(char* key, char* value);
	// BW1W120 00577ed0 BW1M119 010fcba0
	LH_RETURN LookUpForKey(char* key, HTMLParserValue** value);
	// BW1W120 00577f40 BW1M119 null
	LH_RETURN LookUpForValue(char* value, HTMLParserValue** found);
	// BW1W120 00577fc0 BW1M119 null
	LH_RETURN RemoveKey(char* key);
};
static_assert(sizeof(HTMLParser) == 0x8, "HTMLParser size is incorrect");

struct CreatureInetFileEntry
{
	char                   FileName[150];
	char                   Type[10];
	CreatureInetFileEntry* Next;
	int32_t                Size;
	char*                  Data;
};
static_assert(sizeof(CreatureInetFileEntry) == 0xac, "CreatureInetFileEntry size is incorrect");

class CreatureInetFile
{
public:
	char                   Signature[6];
	uint16_t               Version;
	char                   field_0x8[16];
	char                   Salt;
	char                   SaltHigh;
	char                   field_0x1a[10];
	CreatureInetFileEntry* Last;
	CreatureInetFileEntry* First;
	char*                  EncryptedBuffer;
	char*                  PlainBuffer;

	// BW1W120 005776e0 BW1M119 inlined
	CreatureInetFile();
	// BW1W120 00577750 BW1M119 010fd1a0
	~CreatureInetFile();

	// BW1W120 00577790 BW1M119 null
	CreatureInetFileEntry* GetNext(CreatureInetFileEntry* entry);
	// BW1W120 005777b0 BW1M119 null
	CreatureInetFileEntry* AddEntry(CreatureInetFileEntry* previous);
	// BW1W120 00577800 BW1M119 null
	char EncryptString(char* key, char* source, uint32_t length, char* destination);
	// BW1W120 00577850 BW1M119 null
	char DecryptString(char* key, char* source, uint32_t length, char* destination);
	// BW1W120 005778a0 BW1M119 010fd080
	char PackBuffer(char* type, char* data, long size, char* file_name);
	// BW1W120 00577960 BW1M119 null
	char LoadFile(char* path);
	// BW1W120 00577ba0 BW1M119 010fcdf0
	char SaveFile(char* path);
	// BW1W120 00577d10 BW1M119 010fcc90
	char PackFile(char* type, char* path, char* file_name);
	// BW1W120 00577da0 BW1M119 null
	char Unpack(char* type, char* directory);
};
static_assert(sizeof(CreatureInetFile) == 0x34, "CreatureInetFile size is incorrect");

#endif /* BW1_DECOMP_GENERATE_CREATURE_HTML_INCLUDED_H */
