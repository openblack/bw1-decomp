#ifndef BW1_DECOMP_LH_LOGGER_INCLUDED_H
#define BW1_DECOMP_LH_LOGGER_INCLUDED_H

#ifdef LH_LOG_EXPORTS
#define LH_LOG_API __declspec(dllexport)
#else
#define LH_LOG_API __declspec(dllimport)
#endif

struct LHErrorCode
{
	unsigned long Code;
	char*         Text;
};

class LH_LOG_API LHLogger
{
public:
	static void          LogS(char* library, char* file, unsigned long line, char* format, ...);
	static unsigned long GetCode();
	static char*         GetText();
	static char*         GetFileName(char* path);
};

LH_LOG_API unsigned long _lhbeginthread(char* name, void(__cdecl* proc)(void*), unsigned int stack_size, void* argument,
                                        long priority);

#endif /* BW1_DECOMP_LH_LOGGER_INCLUDED_H */
