#include <Lionhead/LHFile/ver3.0/LHParseFile.h>

#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// LHSyslog / LHLogger live in the LHLog DLL.
class __declspec(dllimport) LHLogger
{
public:
	void            ClearError();
	static uint32_t GetCode();
};
extern __declspec(dllimport) LHLogger LHSyslog;

struct LHEnumPair
{
	char* name;
	int   value;
};

// BW1W120 007be400 LHEnumPairCompare(char const **, char const **)
int LHEnumPairCompare(const char** a, const char** b) { return strcmp(*a, *b); }

// BW1W120 007be440 LHEnumPairCompareWithString(char const *, char const **)
int LHEnumPairCompareWithString(const char* a, const char** b) { return strcmp(a, *b); }

// BW1W120 007be480 LHParseFile::Open(void)
uint32_t LHParseFile::Open()
{
	Close();
	file = fopen(filename, "r");
	return file != 0;
}

// BW1W120 007be4b0 LHParseFile::Close(void)
uint32_t LHParseFile::Close()
{
	uint32_t result;
	uint32_t v4;

	if (file)
		result = fclose((FILE*)file) == 0;
	else
		result = v4;
	file = 0;
	line_length = 0;
	word_length = 0;
	field_0x2b8 = 0;
	line_number = 0;
	FreeEnumList();
	return result;
}

// BW1W120 007be510 LHParseFile::GetNextTokenIgnoreComments(int *)
uint32_t LHParseFile::GetNextTokenIgnoreComments(int* token_out)
{
	uint32_t result;

	do
		result = GetNextToken(token_out);
	while (result && token_out[0] == 1);
	return result;
}

// BW1W120 007be530 LHParseFile::FindEnumVal(void *, unsigned int *)
uint32_t LHParseFile::FindEnumVal(void* key, uint32_t* out_value)
{
	LHEnumPair* v3 = (LHEnumPair*)bsearch(key, enum_sorted, enum_count, 8,
	                                      (int(__cdecl*)(const void*, const void*))LHEnumPairCompareWithString);
	if (v3)
		*out_value = v3->value;
	return v3 != 0;
}

// BW1W120 007be570 LHParseFile::FindEnumValLinear(char const *, unsigned int *)
uint32_t LHParseFile::FindEnumValLinear(const char* key, uint32_t* out_value)
{
	int v3 = 0;
	int v4 = enum_count;
	if (!(uint16_t)v4)
		return 0;
	const char** pairs = (const char**)enum_pairs;
	const char** i;
	for (i = pairs; strcmp(*i, key); i += 2)
	{
		if (++v3 >= v4)
			return 0;
	}
	*out_value = *(uint32_t*)((char*)pairs + 8 * v3 + 4);
	return 1;
}

// BW1W120 007be5f0 LHParseFile::FreeEnumList(void)
void LHParseFile::FreeEnumList()
{
	unsigned int i;

	for (i = 0; i < enum_count; ++i)
		free(((LHEnumPair*)enum_pairs)[i].name);
	if (enum_pairs)
		free(enum_pairs);
	if (enum_sorted)
		free(enum_sorted);
	enum_name[0] = 0;
	enum_sorted = 0;
	enum_pairs = 0;
	enum_count = 0;
}

// BW1W120 007be670 LHParseFile::ParseEnumList(void)
uint32_t LHParseFile::ParseEnumList()
{
	LHSyslog.ClearError();
	uint32_t v2 = ParseEnumListInternal();
	if (v2 || LHLogger::GetCode() == 2)
		return v2;
	return 0;
}

// BW1W120 007be6a0 LHParseFile::ParseEnumListInternal(void)
uint32_t LHParseFile::ParseEnumListInternal()
{
	int         v1;
	int         v3;
	int         v5;
	int         v6;
	int         v7;
	int         v19;
	int         v20;
	int         v21;
	int         v22;
	const char* v23;

	v1 = 0;
	v21 = 0;
	v22 = 0;
	v23 = 0;
	FreeEnumList();
	if (!GetNextTokenIgnoreComments(&v21))
		return 0;
	while (1)
	{
		if (v21 == 6)
		{
			if (!GetNextTokenIgnoreComments(&v21))
				return 0;
			v3 = v21;
			if (v21 != 9)
				break;
			strcpy(enum_name, v23);
			if (!GetNextTokenIgnoreComments(&v21))
				return 0;
			v3 = v21;
			if (v21 != 7)
				break;
		}
		if (!GetNextTokenIgnoreComments(&v21))
			return 0;
	}
	if (v3 != 3)
		return 0;
	v5 = -1;
	while (1)
	{
		if (!(v1 % 200))
			enum_pairs = realloc(enum_pairs, 1600 * (v1 / 200 + 1));
		if (!GetNextTokenIgnoreComments(&v21))
			return 0;
		if (v21 != 9)
			return 0;
		v6 = v5 + 1;
		((LHEnumPair*)enum_pairs)[v1].name = (char*)malloc(strlen(v23) + 1);
		((LHEnumPair*)enum_pairs)[v1].value = v6;
		v19 = v6;
		strcpy(((LHEnumPair*)enum_pairs)[v1].name, v23);
		if (!GetNextTokenIgnoreComments(&v21))
			return 0;
		v7 = v21;
		switch (v21)
		{
		case 2:
		LABEL_33:
			if (!GetNextTokenIgnoreComments(&v21))
				return 0;
			v7 = v21;
			if (v21 != 4)
			{
				pushback_type = v21;
				pushback_value = v22;
				pushback_text = (char*)v23;
			}
			break;
		case 4:
			if (!v1)
				return 0;
			break;
		case 5:
			((LHEnumPair*)enum_pairs)[v1].value = 0;
			while (1)
			{
				if (!GetNextTokenIgnoreComments(&v21))
					return 0;
				if (v21 != 8)
					break;
				((LHEnumPair*)enum_pairs)[v1].value += v22;
				v19 = ((LHEnumPair*)enum_pairs)[v1].value;
				if (v21 == 9)
					goto LABEL_26;
			LABEL_28:
				if (!GetNextTokenIgnoreComments(&v21))
					return 0;
				if (v21 != 10)
				{
					pushback_type = v21;
					pushback_value = v22;
					pushback_text = (char*)v23;
					if (!GetNextTokenIgnoreComments(&v21))
						return 0;
					v7 = v21;
					if (v21 == 4)
						goto LABEL_36;
					if (v21 != 2)
						return 0;
					goto LABEL_33;
				}
			}
			if (v21 != 9)
				return 0;
		LABEL_26:
			if (!FindEnumValLinear(v23, (uint32_t*)&v20))
				return 0;
			((LHEnumPair*)enum_pairs)[v1].value += v20;
			v19 = ((LHEnumPair*)enum_pairs)[v1].value;
			goto LABEL_28;
		default:
			return 0;
		}
	LABEL_36:
		++enum_count;
		if (v7 == 4)
			break;
		v5 = v19;
		++v1;
	}
	enum_sorted = malloc(8 * enum_count);
	memcpy(enum_sorted, enum_pairs, 8 * enum_count);
	qsort(enum_sorted, enum_count, 8, (int(__cdecl*)(const void*, const void*))LHEnumPairCompare);
	v20 = 0;
	int v17 = enum_count - 1;
	if (v17 <= 0)
		return 1;
	const char** i;
	for (i = (const char**)enum_sorted; strcmp(*i, i[2]); i += 2)
	{
		if (++v20 >= v17)
			return 1;
	}
	return 0;
}

// BW1W120 007bea70 LHParseFile::GetNextToken(int *)
uint32_t LHParseFile::GetNextToken(int* token_out)
{
	char*          v4;
	char           v6;
	char           v8;
	int            v9;
	unsigned short v10;
	unsigned short v24;
	unsigned short v25;
	char           v17;
	char           v18;
	char           v19;
	char           v21;
	char           v33;
	char           v38;
	char*          v39;

	uint32_t* v3 = &pushback_type;
	v4 = scan_ptr;
	if (v3[0])
	{
		token_out[0] = v3[0];
		token_out[1] = v3[1];
		token_out[2] = v3[2];
		v3[0] = 0;
		v3[1] = 0;
		v3[2] = 0;
		return 1;
	}
	if (!word_length || (unsigned short)(v4 - line - 256) >= word_length)
	{
		if (!GetNextWord())
			return 0;
		v4 = word;
		word_length = strlen(word);
		scan_ptr = word;
	}
	v6 = *scan_ptr;
	if (isalpha((unsigned char)v6) || v6 == '_')
	{
		do
		{
			do
			{
				scan_ptr = scan_ptr + 1;
				v8 = *scan_ptr;
				v9 = isalnum((unsigned char)v8);
			} while (v9);
		} while (v8 == '_');
		v10 = (unsigned short)scan_ptr - (unsigned short)v4;
		if (v10)
		{
			char* src = v4;
			char* dst = token;
			int   n = v10;
			do
			{
				*dst++ = *src++;
				--n;
			} while (n);
		}
		token[v10] = 0;
		token_out[2] = (int)token;
		token_out[1] = 0;
		if (!strcmp("enum", token))
			token_out[0] = 6;
		else
			token_out[0] = 9;
		return 1;
	}

	char v15 = *scan_ptr;
	if (isdigit((unsigned char)v15) || v15 == '-')
	{
		char v17_hex = 0;
		if (*scan_ptr == '0' && ((v18 = scan_ptr[1], v18 == 'x') || v18 == 'X') &&
		    (isdigit((unsigned char)scan_ptr[2]) || (v19 = scan_ptr[2], v19 == 'a') || v19 == 'b' || v19 == 'c' ||
		     v19 == 'd' || v19 == 'e' || v19 == 'f' || v19 == 'A' || v19 == 'B' || v19 == 'C' || v19 == 'D' ||
		     v19 == 'E' || v19 == 'F'))
		{
			v17_hex = 1;
			scan_ptr += 2;
			do
			{
				do
				{
					scan_ptr = scan_ptr + 1;
				} while (isdigit((unsigned char)*scan_ptr));
				v21 = *scan_ptr;
			} while (v21 == 'a' || v21 == 'b' || v21 == 'c' || v21 == 'd' || v21 == 'e' || v21 == 'f' || v21 == 'A' ||
			         v21 == 'B' || v21 == 'C' || v21 == 'D' || v21 == 'E' || v21 == 'F');
		}
		else
		{
			scan_ptr = scan_ptr + 1;
			if (isdigit((unsigned char)*scan_ptr))
			{
				do
				{
					scan_ptr = scan_ptr + 1;
				} while (isdigit((unsigned char)*scan_ptr));
			}
		}
		v24 = 0;
		v25 = (unsigned short)scan_ptr - (unsigned short)v4;
		if (v25)
		{
			char* src = v4;
			v24 = v25;
			char* dst = token;
			int   n = v25;
			do
			{
				*dst++ = *src++;
				--n;
			} while (n);
		}
		char* v30 = token;
		v30[v24] = 0;
		long v31 = strtol(v30, &v39, v17_hex != 0 ? 16 : 10);
		token_out[2] = (int)v30;
		token_out[1] = v31;
		token_out[0] = 8;
		return 1;
	}

	char* v32 = scan_ptr;
	v33 = *v32;
	if (*v32 == '/')
	{
		if (v32[1] == '/')
		{
			token_out[0] = 1;
			token_out[1] = 0;
			token_out[2] = 0;
			parse_ptr = &line[line_length];
			scan_ptr = &line[word_length + 256];
			return 1;
		}
		if (v32[1] == '*')
		{
			token_out[0] = 1;
			token_out[1] = 0;
			token_out[2] = 0;
			scan_ptr = scan_ptr + 2;
			scan_ptr = strstr(scan_ptr, "*/");
			if (!scan_ptr)
			{
				while (GetNextWord())
				{
					word_length = strlen(word);
					scan_ptr = word;
					scan_ptr = strstr(word, "*/");
					if (scan_ptr)
						goto LABEL_65;
				}
				return 0;
			}
		LABEL_65:
			scan_ptr += 2;
			token_out[0] = 1;
			token_out[1] = 0;
			token_out[2] = 0;
			return 1;
		}
	}

	scan_ptr = v32 + 1;
	switch (v33)
	{
	case '+':
		token_out[1] = 0;
		token_out[2] = 0;
		token_out[0] = 10;
		return 1;
	case ',':
		token_out[1] = 0;
		token_out[2] = 0;
		token_out[0] = 2;
		return 1;
	case ';':
		token_out[1] = 0;
		token_out[2] = 0;
		token_out[0] = 7;
		return 1;
	case '=':
		token_out[1] = 0;
		token_out[2] = 0;
		token_out[0] = 5;
		return 1;
	case '{':
		token_out[1] = 0;
		token_out[2] = 0;
		token_out[0] = 3;
		return 1;
	case '}':
		token_out[1] = 0;
		token_out[2] = 0;
		token_out[0] = 4;
		return 1;
	default:
		v38 = *v4;
		token[1] = 0;
		token[0] = v38;
		token_out[1] = 0;
		token_out[2] = (int)token;
		token_out[0] = 9;
		return 1;
	}
}

// BW1W120 007befb6 LHParseFile::GetNextLine(void)
uint32_t LHParseFile::GetNextLine()
{
	unsigned int v2;

	line_length = 0;
	while (1)
	{
		++line_number;
		if (!fgets(line, 256, (FILE*)file) || strlen(line) >= 0xFF)
			break;
		if (line[strlen(line) - 1] == '\n')
			line[strlen(line) - 1] = 0;
		v2 = strlen(line);
		parse_ptr = line;
		line_length = v2;
		if ((unsigned short)v2)
			return 1;
	}
	return 0;
}

// BW1W120 007bf030 LHParseFile::GetNextWord(void)
uint32_t LHParseFile::GetNextWord()
{
	char*          v3;
	const char*    v4;
	unsigned int   v5;
	unsigned short v6;

	if (!file)
		return 0;
	if ((!line_length || parse_ptr - line >= line_length) && !GetNextLine())
		return 0;
	v3 = strtok(parse_ptr, delimiters);
	parse_ptr = v3;
	if (!v3)
	{
		while (GetNextLine())
		{
			v3 = strtok(parse_ptr, delimiters);
			parse_ptr = v3;
			if (v3)
				goto LABEL_10;
		}
		return 0;
	}
LABEL_10:
	v4 = parse_ptr;
	v5 = strlen(v4) + 1;
	v6 = 0;
	parse_ptr = (char*)&v4[v5];
	if ((unsigned short)(v5 + (unsigned short)(unsigned int)v4) != (unsigned short)(unsigned int)v3)
	{
		char* dst = word;
		int   n = (unsigned short)(v5 + (unsigned int)v4 - (unsigned int)v3);
		v6 = v5 + (unsigned int)v4 - (unsigned int)v3;
		do
		{
			*dst++ = *v3++;
			--n;
		} while (n);
	}
	word[v6] = 0;
	return 1;
}
