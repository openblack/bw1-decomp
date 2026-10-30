#ifndef BW1_DECOMP_LH_STRING_INCLUDED_H
#define BW1_DECOMP_LH_STRING_INCLUDED_H

#include <stddef.h>

// BW1W120 007e6a80 BW1M119 0114fe10 (LHCombined Release)
char* LHWCHAR2CHAR(wchar_t* string);
// BW1W120 007e6ab0 BW1M119 0114fd80 (LHCombined Release)
char* LHWCHAR2CHAR(const wchar_t* string);
// BW1W120 007e6ae0 BW1M119 0114fd00 (LHCombined Release)
wchar_t* LHCHAR2WCHAR(char* string);
// BW1W120 007e6b10 BW1M119 0114fc80 (LHCombined Release)
wchar_t* LHCHAR2WCHAR(const char* string);

template <class T> class LHStringOps;

template <> class LHStringOps<char>
{
public:
	// BW1W120 007e6d30 BW1M119 inlined
	static char* strcat(char* dst, const char* src);
	// BW1W120 007e6d70 BW1M119 inlined
	static char* strcpy(char* dst, const char* src);
	// BW1W120 007e6da0 BW1M119 inlined
	static size_t strlen(const char* str);
	// BW1W120 007e6dc0 BW1M119 inlined
	static int strcmp(const char* string1, const char* string2);
	// BW1W120 007e6e00 BW1M119 inlined
	static const char* strchr(const char* str, int c);
	// BW1W120 007e6e20 BW1M119 inlined
	static char* strchr(char* str, int c);
	// BW1W120 007e6e40 BW1M119 inlined
	static const char* strrchr(const char* str, int c);
	// BW1W120 007e6e60 BW1M119 inlined
	static char* strrchr(char* str, int c);
	// BW1W120 007e6e80 BW1M119 inlined
	static const char* strstr(const char* str, const char* sub);
	// BW1W120 007e6ea0 BW1M119 inlined
	static char* strstr(char* str, const char* sub);
	// BW1W120 007e6ec0 BW1M119 inlined
	static const char* strpbrk(const char* str, const char* set);
	// BW1W120 007e6ee0 BW1M119 inlined
	static char* strpbrk(char* str, const char* set);
	// BW1W120 007e6f00 BW1M119 inlined
	static size_t strspn(const char* str, const char* set);
	// BW1W120 007e6f20 BW1M119 0114fbb0 (LHCombined Release)
	static int isalpha(char c);
	// BW1W120 007e6f30 BW1M119 0114fb60 (LHCombined Release)
	static int isupper(char c);
	// BW1W120 007e6f40 BW1M119 0114fb10 (LHCombined Release)
	static int islower(char c);
	// BW1W120 007e6f50 BW1M119 0114fac0 (LHCombined Release)
	static int isdigit(char c);
	// BW1W120 007e6f60 BW1M119 0114fa70 (LHCombined Release)
	static int isspace(char c);
	// BW1W120 007e6f70 BW1M119 0114fa10 (LHCombined Release)
	static float atof(const char* str);
	// BW1W120 007e6f80 BW1M119 0114f9b0 (LHCombined Release)
	static int atoi(const char* str);
	// BW1W120 007e6f90 BW1M119 0114f950 (LHCombined Release)
	static long atol(const char* str);
	// BW1W120 007e71f0 BW1M119 0114f4c0 (LHCombined Release)
	static char* makechar(char* string);
	// BW1W120 007e7210 BW1M119 0114f3f0 (LHCombined Release)
	static char* fromchar(char* string);
	// BW1W120 007e7220 BW1M119 0114f390 (LHCombined Release)
	static char* itoa(int value, char* string, int radix);
};

template <> class LHStringOps<wchar_t>
{
public:
	// BW1W120 007e6fa0 BW1M119 inlined
	static wchar_t* strcat(wchar_t* dst, const wchar_t* src);
	// BW1W120 007e6fc0 BW1M119 inlined
	static wchar_t* strcpy(wchar_t* dst, const wchar_t* src);
	// BW1W120 007e6fe0 BW1M119 inlined
	static size_t strlen(const wchar_t* str);
	// BW1W120 007e6ff0 BW1M119 inlined
	static int strcmp(const wchar_t* string1, const wchar_t* string2);
	// BW1W120 007e7010 BW1M119 inlined
	static const wchar_t* strchr(const wchar_t* str, wchar_t c);
	// BW1W120 007e7030 BW1M119 inlined
	static wchar_t* strchr(wchar_t* str, wchar_t c);
	// BW1W120 007e7050 BW1M119 inlined
	static const wchar_t* strrchr(const wchar_t* str, wchar_t c);
	// BW1W120 007e7070 BW1M119 inlined
	static wchar_t* strrchr(wchar_t* str, wchar_t c);
	// BW1W120 007e7090 BW1M119 inlined
	static const wchar_t* strstr(const wchar_t* str, const wchar_t* sub);
	// BW1W120 007e70b0 BW1M119 inlined
	static wchar_t* strstr(wchar_t* str, const wchar_t* sub);
	// BW1W120 007e70d0 BW1M119 inlined
	static const wchar_t* strpbrk(const wchar_t* str, const wchar_t* set);
	// BW1W120 007e70f0 BW1M119 inlined
	static wchar_t* strpbrk(wchar_t* str, const wchar_t* set);
	// BW1W120 007e7110 BW1M119 inlined
	static size_t strspn(const wchar_t* str, const wchar_t* set);
	// BW1W120 007e7130 BW1M119 0114f8f0 (LHCombined Release)
	static int isalpha(wchar_t c);
	// BW1W120 007e7140 BW1M119 0114f890 (LHCombined Release)
	static int isupper(wchar_t c);
	// BW1W120 007e7150 BW1M119 0114f830 (LHCombined Release)
	static int islower(wchar_t c);
	// BW1W120 007e7160 BW1M119 0114f7d0 (LHCombined Release)
	static int isdigit(wchar_t c);
	// BW1W120 007e7170 BW1M119 0114f770 (LHCombined Release)
	static int isspace(wchar_t c);
	// BW1W120 007e7180 BW1M119 0114f6d0 (LHCombined Release)
	static float atof(const wchar_t* str);
	// BW1W120 007e71a0 BW1M119 0114f630 (LHCombined Release)
	static int atoi(const wchar_t* str);
	// BW1W120 007e71c0 BW1M119 0114f590 (LHCombined Release)
	static long atol(const wchar_t* str);
	// BW1W120 007e71e0 BW1M119 0114f500 (LHCombined Release)
	static char* makechar(wchar_t* string);
	// BW1W120 007e7200 BW1M119 0114f430 (LHCombined Release)
	static wchar_t* fromchar(char* string);
	// BW1W120 007e7240 BW1M119 0114f330 (LHCombined Release)
	static wchar_t* itoa(int value, wchar_t* string, int radix);
};

#endif /* BW1_DECOMP_LH_STRING_INCLUDED_H */
