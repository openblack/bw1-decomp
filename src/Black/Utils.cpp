#include "Utils.h"

// MultiByteToWideChar is the only Win32 API these helpers need; declare it
// locally rather than pulling in <windows.h> (not part of the project's
// include set). __stdcall matches the import thunk at BW1W120 0x007AEC94.
extern "C" int __stdcall MultiByteToWideChar(unsigned int code_page, unsigned long flags,
                                             const char* multi_byte_str, int multi_byte_count,
                                             char16_t* wide_char_str, int wide_char_count);

// Shared wide-char conversion buffer returned by CHAR2WCHAR (BW1W120 .data).
char16_t word_ECBD08[2048]; // 0x00ECBD08
// THAI shaping state carried between calls to THAI_PROCESS.
int dword_ED92CC; // 0x00ED92CC
int dword_ED92D0; // 0x00ED92D0

char16_t* CHAR2WCHAR(const char* param_1)
{
    // CP_ACP (0), MB_PRECOMPOSED (1); -1 => process the NUL-terminated input,
    // and the returned count includes the terminator, so this NUL-terminates.
    word_ECBD08[MultiByteToWideChar(0, 1, param_1, -1, word_ECBD08, 2047)] = 0;
    return word_ECBD08;
}

void THAI_RESET()
{
    dword_ED92D0 = 0;
    dword_ED92CC = 0;
}

char16_t THAI_PROCESS(char16_t param_1)
{
    char16_t result = param_1;

    if (param_1 < 0xE00u || param_1 > 0xE50u)
    {
        dword_ED92D0 = 0;
        dword_ED92CC = 0;
        return result;
    }

    if (param_1 <= 0xE30u)
    {
        dword_ED92CC = param_1 == 0xE1B || param_1 == 0xE1D || param_1 == 0xE1F || param_1 == 0xE2C;
        return result;
    }

    if (param_1 <= 0xE47u)
    {
        if (param_1 == 0xE31 || param_1 == 0xE34 || param_1 == 0xE35 || param_1 == 0xE36 ||
            param_1 == 0xE37 || (dword_ED92D0 = 0, param_1 == 0xE47))
        {
            dword_ED92D0 = 1;
        }
        if (dword_ED92CC)
        {
            if (param_1 == 0xE31)
            {
                return 0xF710;
            }
            if (param_1 == 0xE47)
            {
                return 0xF712;
            }
            if (param_1 >= 0xE34u && param_1 < 0xE37u)
            {
                return param_1 + 59597;
            }
        }
        return result;
    }

    if (param_1 > 0xE4Cu)
    {
        dword_ED92D0 = 0;
        dword_ED92CC = 0;
        return result;
    }

    if (dword_ED92D0)
    {
        result = param_1 + 0xE8CB;
        dword_ED92CC = 0;
        dword_ED92D0 = 0;
    }
    else
    {
        if (dword_ED92CC)
        {
            result = param_1 + 59581;
        }
        dword_ED92CC = 0;
        dword_ED92D0 = 0;
    }
    return result;
}
