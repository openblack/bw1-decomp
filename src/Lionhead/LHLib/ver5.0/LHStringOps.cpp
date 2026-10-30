#include <Lionhead/LHLib/ver5.0/LHString.h>

#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>

char* LHStringOps<char>::strcat(char* dst, const char* src)
{
	return ::strcat(dst, src);
}

char* LHStringOps<char>::strcpy(char* dst, const char* src)
{
	return ::strcpy(dst, src);
}

size_t LHStringOps<char>::strlen(const char* str)
{
	return ::strlen(str);
}

int LHStringOps<char>::strcmp(const char* string1, const char* string2)
{
	return ::strcmp(string1, string2);
}

#ifndef VERSION_BW1W100

const char* LHStringOps<char>::strchr(const char* str, int c)
{
	return ::strchr(str, c);
}

char* LHStringOps<char>::strchr(char* str, int c)
{
	return ::strchr(str, c);
}

const char* LHStringOps<char>::strrchr(const char* str, int c)
{
	return ::strrchr(str, c);
}

char* LHStringOps<char>::strrchr(char* str, int c)
{
	return ::strrchr(str, c);
}

const char* LHStringOps<char>::strstr(const char* str, const char* sub)
{
	return ::strstr(str, sub);
}

char* LHStringOps<char>::strstr(char* str, const char* sub)
{
	return ::strstr(str, sub);
}

const char* LHStringOps<char>::strpbrk(const char* str, const char* set)
{
	return ::strpbrk(str, set);
}

char* LHStringOps<char>::strpbrk(char* str, const char* set)
{
	return ::strpbrk(str, set);
}

size_t LHStringOps<char>::strspn(const char* str, const char* set)
{
	return ::strspn(str, set);
}

int LHStringOps<char>::isalpha(char c)
{
	return ::isalpha(c);
}

int LHStringOps<char>::isupper(char c)
{
	return ::isupper(c);
}

int LHStringOps<char>::islower(char c)
{
	return ::islower(c);
}

#endif // VERSION_BW1W100

int LHStringOps<char>::isdigit(char c)
{
	return ::isdigit(c);
}

int LHStringOps<char>::isspace(char c)
{
	return ::isspace(c);
}

float LHStringOps<char>::atof(const char* str)
{
	return (float)::atof(str);
}

int LHStringOps<char>::atoi(const char* str)
{
	return ::atoi(str);
}

long LHStringOps<char>::atol(const char* str)
{
	return ::atol(str);
}

#ifndef VERSION_BW1W100

wchar_t* LHStringOps<wchar_t>::strcat(wchar_t* dst, const wchar_t* src)
{
	return ::wcscat(dst, src);
}

#endif // VERSION_BW1W100

wchar_t* LHStringOps<wchar_t>::strcpy(wchar_t* dst, const wchar_t* src)
{
	return ::wcscpy(dst, src);
}

size_t LHStringOps<wchar_t>::strlen(const wchar_t* str)
{
	return ::wcslen(str);
}

int LHStringOps<wchar_t>::strcmp(const wchar_t* string1, const wchar_t* string2)
{
	return ::wcscmp(string1, string2);
}

#ifndef VERSION_BW1W100

const wchar_t* LHStringOps<wchar_t>::strchr(const wchar_t* str, wchar_t c)
{
	return ::wcschr(str, c);
}

wchar_t* LHStringOps<wchar_t>::strchr(wchar_t* str, wchar_t c)
{
	return ::wcschr(str, c);
}

const wchar_t* LHStringOps<wchar_t>::strrchr(const wchar_t* str, wchar_t c)
{
	return ::wcsrchr(str, c);
}

wchar_t* LHStringOps<wchar_t>::strrchr(wchar_t* str, wchar_t c)
{
	return ::wcsrchr(str, c);
}

const wchar_t* LHStringOps<wchar_t>::strstr(const wchar_t* str, const wchar_t* sub)
{
	return ::wcsstr(str, sub);
}

wchar_t* LHStringOps<wchar_t>::strstr(wchar_t* str, const wchar_t* sub)
{
	return ::wcsstr(str, sub);
}

const wchar_t* LHStringOps<wchar_t>::strpbrk(const wchar_t* str, const wchar_t* set)
{
	return ::wcspbrk(str, set);
}

wchar_t* LHStringOps<wchar_t>::strpbrk(wchar_t* str, const wchar_t* set)
{
	return ::wcspbrk(str, set);
}

size_t LHStringOps<wchar_t>::strspn(const wchar_t* str, const wchar_t* set)
{
	return ::wcsspn(str, set);
}

int LHStringOps<wchar_t>::isalpha(wchar_t c)
{
	return ::iswalpha(c);
}

int LHStringOps<wchar_t>::isupper(wchar_t c)
{
	return ::iswupper(c);
}

int LHStringOps<wchar_t>::islower(wchar_t c)
{
	return ::iswlower(c);
}

#endif // VERSION_BW1W100

int LHStringOps<wchar_t>::isdigit(wchar_t c)
{
	return ::iswdigit(c);
}

int LHStringOps<wchar_t>::isspace(wchar_t c)
{
	return ::iswspace(c);
}

float LHStringOps<wchar_t>::atof(const wchar_t* str)
{
	return (float)::atof(LHWCHAR2CHAR(str));
}

int LHStringOps<wchar_t>::atoi(const wchar_t* str)
{
	return ::atoi(LHWCHAR2CHAR(str));
}

long LHStringOps<wchar_t>::atol(const wchar_t* str)
{
	return ::atol(LHWCHAR2CHAR(str));
}

char* LHStringOps<wchar_t>::makechar(wchar_t* string)
{
	return LHWCHAR2CHAR(string);
}

char* LHStringOps<char>::makechar(char* string)
{
	return string;
}

#ifndef VERSION_BW1W100

wchar_t* LHStringOps<wchar_t>::fromchar(char* string)
{
	return LHCHAR2WCHAR(string);
}

char* LHStringOps<char>::fromchar(char* string)
{
	return string;
}

#endif // VERSION_BW1W100

char* LHStringOps<char>::itoa(int value, char* string, int radix)
{
	return ::_itoa(value, string, radix);
}

wchar_t* LHStringOps<wchar_t>::itoa(int value, wchar_t* string, int radix)
{
	return ::_itow(value, string, radix);
}
