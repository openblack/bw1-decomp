#ifndef BW1_DECOMP_GENERATE_CREATURE_HTML_INCLUDED_H
#define BW1_DECOMP_GENERATE_CREATURE_HTML_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>     /* For enum LH_RETURN */

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
};
static_assert(sizeof(HTMLParser) == 0x8, "HTMLParser size is incorrect");

#endif /* BW1_DECOMP_GENERATE_CREATURE_HTML_INCLUDED_H */
