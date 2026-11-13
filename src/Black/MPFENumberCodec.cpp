#include "MPFENumberCodec.h"

#include <string.h> /* For memset, strcpy, strlen */

// BW1W120 00631760 BW1M119 inlined
static unsigned long CharToNumber(char c);
// BW1W120 00631780 BW1M119 inlined
static char NumberToChar(unsigned char number);

static char Alphabet[0x40] = {
	'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
	'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
	'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '[', ']',
};

MPFENumberCodec::MPFENumberCodec(char* string)
{
	Clear();
	String = new char[strlen(string) + 1];
	strcpy(String, string);
	for (int i = 0; i < (int)strlen(String); i++)
	{
		if (String[i] == '\0')
		{
			break;
		}
		Number |= CharToNumber(String[i]) << (i * 6);
	}
	Number = (Number >> 3) | (Number << 29);
}

MPFENumberCodec::MPFENumberCodec(unsigned long number)
{
	Clear();
	String = new char[9];
	memset(String, 0, 9);
	Number = (number >> 29) | (number << 3);
	String[0] = NumberToChar(Number & 0x3f);
	String[1] = NumberToChar((Number >> 6) & 0x3f);
	String[2] = NumberToChar((Number >> 12) & 0x3f);
	String[3] = NumberToChar((Number >> 18) & 0x3f);
	String[4] = NumberToChar((Number >> 24) & 0x3f);
	String[5] = NumberToChar((Number >> 30) & 0x3);
	String[6] = '\0';
	for (int i = strlen(String) - 1; i > 0; i--)
	{
		if (String[i] != 'a')
		{
			break;
		}
		if (i != 0)
		{
			String[i] = '\0';
		}
	}
}

MPFENumberCodec::~MPFENumberCodec()
{
	if (String != NULL)
	{
		delete[] String;
	}
}

void MPFENumberCodec::Clear()
{
	String = NULL;
	Number = 0;
}

static unsigned long CharToNumber(char c)
{
	for (unsigned long i = 0; i < sizeof(Alphabet); i++)
	{
		if (Alphabet[i] == c)
		{
			return i;
		}
	}
	return 0;
}

static char NumberToChar(unsigned char number)
{
	if (number >= sizeof(Alphabet))
	{
		return 'a';
	}
	return Alphabet[number];
}
