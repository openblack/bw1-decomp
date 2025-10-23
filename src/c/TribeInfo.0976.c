#include "TribeInfo.h"

char* __fastcall GetTribeTextArray__10GTribeInfoFv(struct GTribeInfo* this)
{
    asm("{disp32} mov       eax, dword ptr [ecx + 0x000001fc]");             // 0x00751aa0    8b81fc010000
    asm("{disp32} mov       eax, dword ptr [eax * 0x4 + 0x00c23508]");       // 0x00751aa6    8b04850835c200
    asm("ret");                                                              // 0x00751aad    c3
    __builtin_unreachable();
}