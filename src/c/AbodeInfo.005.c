#include "AbodeInfo.h"

const char* __fastcall GetDescription__10GAbodeInfoFv(struct GAbodeInfo* this)
{
    asm("{disp32} lea       eax, dword ptr [ecx + 0x00000128]");             // 0x00405a60    8d8128010000
    asm("ret");                                                              // 0x00405a66    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
int __cdecl GetInfoFromText__10GAbodeInfoFPc(const char* text)
{
    asm("sub                esp, 0x08");                                     // 0x00405a70    83ec08
    asm("push               ebx");                                           // 0x00405a73    53
    asm("push               ebp");                                           // 0x00405a74    55
    asm("push               esi");                                           // 0x00405a75    56
    asm("push               edi");                                           // 0x00405a76    57
    asm("{disp8} mov        dword ptr [esp + 0x14], 0x00000000");            // 0x00405a77    c744241400000000
    asm("{disp8} mov        dword ptr [esp + 0x10], OFFSET _AbodeInfos");    // 0x00405a7f    c744241090c6c300
    asm("mov                ebp, 0x00da57b8");                               // 0x00405a87    bdb857da00
    asm("_jmp_addr_0x00405a8c:");
    asm("{disp8} mov        eax, dword ptr [ebp + 0x00]");                   // 0x00405a8c    8b4500
    asm("{disp32} mov       edx, dword ptr [eax * 0x4 + 0x00c22fdc]");       // 0x00405a8f    8b1485dc2fc200
    asm("{disp8} mov        ebx, dword ptr [esp + 0x1c]");                   // 0x00405a96    8b5c241c
    asm("or                 ecx, 0xffffffff");                               // 0x00405a9a    83c9ff
    asm("xor.s              eax, eax");                                      // 0x00405a9d    33c0
    asm("mov.s              edi, edx");                                      // 0x00405a9f    8bfa
    asm("repne scasb");                                                      // 0x00405aa1    f2ae
    asm("not                ecx");                                           // 0x00405aa3    f7d1
    asm("dec                ecx");                                           // 0x00405aa5    49
    asm("mov.s              edi, ecx");                                      // 0x00405aa6    8bf9
    asm("push               edi");                                           // 0x00405aa8    57
    asm("push               edx");                                           // 0x00405aa9    52
    asm("push               ebx");                                           // 0x00405aaa    53
    asm("call               __strnicmp");                                    // 0x00405aab    e8604c3d00
    asm("add                esp, 0x0c");                                     // 0x00405ab0    83c40c
    asm("test               eax, eax");                                      // 0x00405ab3    85c0
    asm("{disp8} jne        _jmp_addr_0x00405ae8");                          // 0x00405ab5    7531
    asm("cmp                byte ptr [edi + ebx * 0x1], 0x5f");              // 0x00405ab7    803c1f5f
    asm("{disp8} jne        _jmp_addr_0x00405ae8");                          // 0x00405abb    752b
    asm("{disp8} lea        ebx, dword ptr [edi + ebx * 0x1 + 0x01]");       // 0x00405abd    8d5c1f01
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x00405ac1    8b7c2410
    asm("xor.s              esi, esi");                                      // 0x00405ac5    33f6
    asm("_jmp_addr_0x00405ac7:");
    asm("mov.s              ecx, edi");                                      // 0x00405ac7    8bcf
    asm("call               ?GetDescription@GAbodeInfo@@QAEPBDXZ");          // 0x00405ac9    e892ffffff
    asm("push               eax");                                           // 0x00405ace    50
    asm("push               ebx");                                           // 0x00405acf    53
    asm("call               __strcmpi");                                     // 0x00405ad0    e80b123c00
    asm("add                esp, 0x08");                                     // 0x00405ad5    83c408
    asm("test               eax, eax");                                      // 0x00405ad8    85c0
    asm("{disp8} je         _jmp_addr_0x00405b15");                          // 0x00405ada    7439
    asm("inc                esi");                                           // 0x00405adc    46
    asm("add                edi, 0x000001c8");                               // 0x00405add    81c7c8010000
    asm("cmp                esi, 0x10");                                     // 0x00405ae3    83fe10
    asm(".byte              0x72, 0xdf");// {disp8} jb _jmp_addr_0x00405ac7  // 0x00405ae6    72df
    asm("_jmp_addr_0x00405ae8:");
    asm("{disp8} mov        esi, dword ptr [esp + 0x14]");                   // 0x00405ae8    8b742414
    asm("{disp8} mov        ecx, dword ptr [esp + 0x10]");                   // 0x00405aec    8b4c2410
    asm("inc                esi");                                           // 0x00405af0    46
    asm("add                ebp, 0x1c");                                     // 0x00405af1    83c51c
    asm("add                ecx, 0x00001c80");                               // 0x00405af4    81c1801c0000
    asm("cmp                ebp, 0x00da58b4");                               // 0x00405afa    81fdb458da00
    asm("{disp8} mov        dword ptr [esp + 0x14], esi");                   // 0x00405b00    89742414
    asm("{disp8} mov        dword ptr [esp + 0x10], ecx");                   // 0x00405b04    894c2410
    asm(".byte              0x72, 0x82");// {disp8} jb _jmp_addr_0x00405a8c  // 0x00405b08    7282
    asm("pop                edi");                                           // 0x00405b0a    5f
    asm("pop                esi");                                           // 0x00405b0b    5e
    asm("pop                ebp");                                           // 0x00405b0c    5d
    asm("or                 eax, -0x1");                                     // 0x00405b0d    83c8ff
    asm("pop                ebx");                                           // 0x00405b10    5b
    asm("add                esp, 0x08");                                     // 0x00405b11    83c408
    asm("ret");                                                              // 0x00405b14    c3
    asm("_jmp_addr_0x00405b15:");
    asm("{disp8} mov        eax, dword ptr [esp + 0x14]");                   // 0x00405b15    8b442414
    asm("pop                edi");                                           // 0x00405b19    5f
    asm("shl                eax, 4");                                        // 0x00405b1a    c1e004
    asm("add.s              eax, esi");                                      // 0x00405b1d    03c6
    asm("pop                esi");                                           // 0x00405b1f    5e
    asm("pop                ebp");                                           // 0x00405b20    5d
    asm("pop                ebx");                                           // 0x00405b21    5b
    asm("add                esp, 0x08");                                     // 0x00405b22    83c408
    asm("ret");                                                              // 0x00405b25    c3
    __builtin_unreachable();
}

__attribute__((XOR32rr_REV))
struct GAbodeInfo* __cdecl Find__10GAbodeInfoF10TRIBE_TYPE12ABODE_NUMBER(enum TRIBE_TYPE tribe_type, enum ABODE_NUMBER abode_number)
{
    asm("push               esi");                                           // 0x00405b30    56
    asm("{disp8} mov        esi, dword ptr [esp + 0x08]");                   // 0x00405b31    8b742408
    asm("push               edi");                                           // 0x00405b35    57
    asm("{disp8} mov        edi, dword ptr [esp + 0x10]");                   // 0x00405b36    8b7c2410
    asm("mov                eax, OFFSET _AbodeInfos");                       // 0x00405b3a    b890c6c300
    asm("mov                ecx, 0x00c3c7e8");                               // 0x00405b3f    b9e8c7c300
    asm("_jmp_addr_0x00405b44:");
    asm("mov                edx, dword ptr [ecx]");                          // 0x00405b44    8b11
    asm("cmp.s              edx, esi");                                      // 0x00405b46    3bd6
    asm("{disp8} je         _jmp_addr_0x00405b4f");                          // 0x00405b48    7405
    asm("cmp                edx, -0x01");                                    // 0x00405b4a    83faff
    asm("{disp8} jne        _jmp_addr_0x00405b54");                          // 0x00405b4d    7505
    asm("_jmp_addr_0x00405b4f:");
    asm("cmp                dword ptr [ecx + -0x34], edi");                  // 0x00405b4f    3979cc
    asm("{disp8} je         _jmp_addr_0x00405b69");                          // 0x00405b52    7415
    asm("_jmp_addr_0x00405b54:");
    asm("add                ecx, 0x000001c8");                               // 0x00405b54    81c1c8010000
    asm("add                eax, 0x000001c8");                               // 0x00405b5a    05c8010000
    asm("cmp                ecx, 0x00c4cdc0");                               // 0x00405b5f    81f9c0cdc400
    asm(".byte              0x72, 0xdd");// {disp8} jb _jmp_addr_0x00405b44  // 0x00405b65    72dd
    asm("xor.s              eax, eax");                                      // 0x00405b67    33c0
    asm("_jmp_addr_0x00405b69:");
    asm("pop                edi");                                           // 0x00405b69    5f
    asm("pop                esi");                                           // 0x00405b6a    5e
    asm("ret");                                                              // 0x00405b6b    c3
    __builtin_unreachable();
}
