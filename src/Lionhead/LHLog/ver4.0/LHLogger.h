#ifndef BW1_DECOMP_LH_LOGGER_INCLUDED_H
#define BW1_DECOMP_LH_LOGGER_INCLUDED_H

struct LHErrorCode
{
	unsigned long Code;
	char*         Text;
};

class __declspec(dllimport) LHLogger
{
public:
	static void          LogS(char* library, char* file, unsigned long line, char* format, ...);
	static unsigned long GetCode();
	static char*         GetText();
	static char*         GetFileName(char* path);
};

__declspec(dllimport) unsigned long _lhbeginthread(char* name, void(__cdecl* proc)(void*), unsigned int stack_size,
                                                   void* argument, long priority);

#endif /* BW1_DECOMP_LH_LOGGER_INCLUDED_H */
