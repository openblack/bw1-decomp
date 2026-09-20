#ifndef BW1_DECOMP_LH_STRING_INCLUDED_H
#define BW1_DECOMP_LH_STRING_INCLUDED_H

#include <ctype.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>

// TODO: fabricated names and home; these live at BW1W120 007e6a80 / 007e6ae0
char*    LHWideToAnsi(const wchar_t* string);
wchar_t* LHAnsiToWide(const char* string);

// Character-width-generic wrappers around the CRT string functions, used by the
// LHScriptX<T> text script engine.
// TODO: header name fabricated; the original may have had more members (the
// binary also contains strchr/strrchr/strstr/strpbrk/strspn wrappers for both
// widths at 007e6e00..007e7160, not yet needed by any decompiled caller).
template <class T> class LHStringOps;

template <> class LHStringOps<char>
{
public:
	static char*        strcat(char* dst, const char* src) { return ::strcat(dst, src); }
	static char*        strcpy(char* dst, const char* src) { return ::strcpy(dst, src); }
	static unsigned int strlen(const char* str) { return ::strlen(str); }
	static int          strcmp(const char* string1, const char* string2) { return ::strcmp(string1, string2); }
	static int          isdigit(char c) { return ::isdigit(c); }
	static int          isspace(char c) { return ::isspace(c); }
	static float        atof(const char* str) { return (float)::atof(str); }
	static int          atoi(const char* str) { return ::atoi(str); }
	static long         atol(const char* str) { return ::atol(str); }
	static char*        itoa(int value, char* string, int radix) { return ::_itoa(value, string, radix); }
	static char*        makechar(char* string) { return string; }
	static char*        fromchar(char* string) { return string; }
};

template <> class LHStringOps<wchar_t>
{
public:
	static wchar_t*     strcat(wchar_t* dst, const wchar_t* src) { return ::wcscat(dst, src); }
	static wchar_t*     strcpy(wchar_t* dst, const wchar_t* src) { return ::wcscpy(dst, src); }
	static unsigned int strlen(const wchar_t* str) { return ::wcslen(str); }
	static int          strcmp(const wchar_t* string1, const wchar_t* string2) { return ::wcscmp(string1, string2); }
	static int          isdigit(wchar_t c) { return ::iswdigit(c); }
	static int          isspace(wchar_t c) { return ::iswspace(c); }
	static float        atof(const wchar_t* str) { return (float)::wcstod(str, NULL); }
	static int          atoi(const wchar_t* str) { return ::_wtoi(str); }
	static long         atol(const wchar_t* str) { return ::_wtol(str); }
	static wchar_t*     itoa(int value, wchar_t* string, int radix) { return ::_itow(value, string, radix); }
	static char*        makechar(wchar_t* string) { return LHWideToAnsi(string); }
	static wchar_t*     fromchar(char* string) { return LHAnsiToWide(string); }
};

#endif /* BW1_DECOMP_LH_STRING_INCLUDED_H */
